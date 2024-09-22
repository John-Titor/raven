#include "../sys.h"
#include "flash.h"
#include "cpu.h"
#include "../lib.h"

// Flash routines.
//
// Assumptions:
//  - ROM is identity-mapped
//  - ROM is write-through or uncached
//  - ROM access time not less than 70ns (for timeouts)

// common definitions
#define UNLOCK_REG_1    *(volatile int32_t *)(BIOS_ROM + (0x5555 << 2))
#define UNLOCK_CODE_1   0xaaaaaaaa
#define UNLOCK_REG_2    *(volatile int32_t *)(BIOS_ROM + (0x2aaa << 2))
#define UNLOCK_CODE_2   0x55555555
#define COMMAND_REG     *(volatile int32_t *)(BIOS_ROM + (0x5555 << 2))
#define CMD_PROGRAM     0xa0a0a0a0
#define CMD_ERASE       0x80808080
#define CMD_ID          0x90909090
#define CMD_ID_EXIT     0xf0f0f0f0
#define BLANK           0xffffffff

// Timeouts are paced by the device read cycle time,
// overheads are ignored.
//
#define TIMEOUT_SECTOR_ERASE    (25000000 / 70) // 25ms
#define TIMEOUT_WORD_PROGRAM    (20000 / 70)    // 20us

// per-device customisations
typedef struct
{
    uint32_t    vendor;
    uint32_t    device;
    uint32_t    device_size;
    uint32_t    sector_erase_cmd;
    uint32_t    sector_size;
    const char  *name;
} flash_info_t;

static const flash_info_t *flash_info;
static const flash_info_t flash_device_info[] =
{
    {
        .vendor             = 0xbfbfbfbf,
        .device             = 0xd7d7d7d7,
        .device_size        = 0x00200000,
        .sector_erase_cmd   = 0x30303030,
        .sector_size        = 0x4000,
        .name               = "SST39xF040"
    },
    {
        .vendor             = 0x00bf00bf,
        .device             = 0x23222322,
        .device_size        = 0x00200000,
        .sector_erase_cmd   = 0x50505050,
        .sector_size        = 0x2000,
        .name               = "SST39xF401"
    },
    { 0 },
};

static int flash_erase_sector(volatile uint32_t *sector_address);
static int flash_program(volatile uint32_t *flash_address, const uint32_t *ram_address, uint32_t count);


__attribute__((section(".ramtext")))
const char *flash_identify(void)
{
    uint32_t vendor = 0;
    uint32_t device = 0;

    fmt("UA1 %l UA2 %l\n", &UNLOCK_REG_1, &UNLOCK_REG_2);

    uint32_t saved_ipl = cpu_GetIPL();
    cpu_SetIPL(7);

    UNLOCK_REG_1 = UNLOCK_CODE_1;
    UNLOCK_REG_2 = UNLOCK_CODE_2;
    COMMAND_REG = CMD_ID;
    __asm__ volatile (
        "    nop                \n" // 15 @ 100MHz = tIDA 150ns
        "    nop                \n"
        "    nop                \n"
        "    nop                \n"
        "    nop                \n"
        "    nop                \n"
        "    nop                \n"
        "    nop                \n"
        "    nop                \n"
        "    nop                \n"
        "    nop                \n"
        "    nop                \n"
        "    nop                \n"
        "    nop                \n"
        "    nop                \n"
        "    move.l (%2),%0     \n"
        "    move.l 4(%2),%1    \n"
        : "=d" (vendor), "=d" (device)
        : "a" (BIOS_ROM)
        : "memory"
    );
    COMMAND_REG = CMD_ID_EXIT;

    cpu_SetIPL(saved_ipl);

    for (int i = 0; flash_device_info[i].vendor != 0; i++) {
        if ((vendor == flash_device_info[i].vendor) &&
            (device == flash_device_info[i].device)) {
            flash_info = &flash_device_info[i];
            return flash_info->name;
        }
    }
    flash_info = NULL;
    fmt("vendor %l  device %l\n", vendor, device);
    return "unsupported";
}

__attribute__((section(".ramtext")))
int flash_erase_sector(volatile uint32_t *sector_address)
{
    if (!flash_info) return -1;

    uint32_t saved_ipl = cpu_GetIPL();
    cpu_SetIPL(7);

    UNLOCK_REG_1 = UNLOCK_CODE_1;
    UNLOCK_REG_2 = UNLOCK_CODE_2;
    COMMAND_REG = CMD_ERASE;
    UNLOCK_REG_1 = UNLOCK_CODE_1;
    UNLOCK_REG_2 = UNLOCK_CODE_2;
    *sector_address = flash_info->sector_erase_cmd;

    volatile int timeout;
    for (timeout = TIMEOUT_SECTOR_ERASE; timeout; timeout--)
    {
        cache_InvalidateLine((uint32_t )sector_address);
        if (*sector_address == BLANK) break;
    }

    cpu_SetIPL(saved_ipl);

    return (timeout == 0) ? -1 : 0;
}

__attribute__((section(".ramtext")))
int flash_program(volatile uint32_t *flash_address, const uint32_t *ram_address, uint32_t count)
{
    if (!flash_info) return -1;

    uint32_t saved_ipl = cpu_GetIPL();
    cpu_SetIPL(7);

    while (count--)
    {
        UNLOCK_REG_1 = UNLOCK_CODE_1;
        UNLOCK_REG_2 = UNLOCK_CODE_2;
        COMMAND_REG = CMD_PROGRAM;
        *flash_address = *ram_address;

        volatile int timeout;
        for (timeout = TIMEOUT_WORD_PROGRAM; timeout; timeout--)
        {
            cache_InvalidateLine((uint32_t )flash_address);
            if (*flash_address == *ram_address) break;
        }
        if (timeout == 0) return -1;

        flash_address++;
        ram_address++;
    }

    cpu_SetIPL(saved_ipl);

    return 0;
}

int flash_erase_range(uint32_t base, uint32_t length)
{
    if ((!flash_info) ||                                            // can't ID flash
        (base & (flash_info->sector_size - 1)) ||                   // start not sector-aligned
        (base < (BIOS_ROM + (256 * 1024))) ||                       // start can't overlap monitor space
        ((base + length) > (BIOS_ROM + flash_info->device_size)))   // end can't be outside flash
        return -1;

    volatile uint32_t *sector_address = (uint32_t *)base;
    int nsec = (length + flash_info->sector_size - 1) / flash_info->sector_size;

    while (nsec--)
    {
        if (flash_erase_sector(sector_address)) return -1;
        sector_address += flash_info->sector_size;
    }

    return 0;
}

int flash_program_range(uint32_t base, uint32_t length, uint32_t *source)
{
    if ((!flash_info) ||                                            // can't ID flash
        (base & (flash_info->sector_size - 1)) ||                   // start not sector-aligned
        (base < (BIOS_ROM + (256 * 1024))) ||                       // start can't overlap monitor space
        (length % 4) ||                                             // must program whole words
        ((base + length) > (BIOS_ROM + flash_info->device_size)))   // end can't be outside flash
        return -1;

    for (;;) {
        if (length <= flash_info->sector_size)
        {
            return flash_program((uint32_t *)base, source, length);
        }
        // program at most 1 sector before re-enabling interrupts
        if (flash_program((uint32_t *)base, source, flash_info->sector_size))
        {
            return -1;
        }
        length -= flash_info->sector_size;
        base += flash_info->sector_size;
        source += flash_info->sector_size;
    }

    return 0;
}
