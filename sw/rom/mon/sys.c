#include "sys.h"
#include "lib.h"
#include "hw/cpu.h"
#include "hw/uart.h"
#include "hw/mfp.h"
#include "hw/ikbd.h"
#include "hw/midi.h"
#include "hw/i2c.h"
#include "hw/rtc.h"
#include "monitor.h"
#include "atari.h"

bool mem_Init();

//-----------------------------------------------------------------------
#define KMEMSIZE  512 * 1024


//-----------------------------------------------------------------------
uint8_t  kheap[KMEMSIZE];
uint32_t kheapPtr;
uint32_t ksimm[4];
uint8_t  kgfx;


//-----------------------------------------------------------------------
const char* cpuNames[] = {
    "M68XC060",
    "M68EC060",
    "M68LC060",
    "M68060"
};

const char* gfxNames[] = {
	"",
	"ET4000AX",
	"ET4000/W32",
	"ATI Mach32",
	"ATI Mach64"
};



//-----------------------------------------------------------------------
//
// Startup
//
//-----------------------------------------------------------------------
bool sys_Init()
{
    // init and identify cpu
    cpu_Init();
    uint32_t cpuRev = 0;
    uint32_t cpuSku = cpu_Detect(&cpuRev, 0);
    fmt("\nCPU:  %sR%b\n", cpuNames[cpuSku], cpuRev);

    // identify rom
    uint32_t id_simm[4];
    id_simm[3] = IOL(IOL(PADDR_SIMM3, 0), 4);
    fmt("ROM:  %l\n", id_simm[3]);

	// identify gfx
	uint8_t id_gfx = 1;	// assume ET4000
#if defined(CONF_ATARI) && defined(LAUNCH_TOS)
	if ((IOB(PADDR_GFX_RAM, 0xC0032)) == '6' && (IOB(PADDR_GFX_RAM, 0xC0034) == '2')) {
		IOB(PADDR_GFX_IO, 0x56EE) = 0x55;
		if (IOB(PADDR_GFX_IO, 0x56EE) == 0x55) {
			id_gfx = 3;	// todo: further detect Mach32 vs Mach64
		}
	}
    fmt("GFX:  %s\n", gfxNames[id_gfx]);
#endif

	// identify ram
    for (int i=0; i<3; i++) {
        for (int j=15; j>=0; j--) {
            uint32_t addr = (((i*16)+j)*1024*1024UL);
            *((volatile uint32_t*)addr) = j;
        }
    }
    for (int i=0; i<3; i++) {
        id_simm[i] = 0;
        for (int j=0; j<16; j++) {
            uint32_t addr = (((i*16)+j)*1024*1024UL);
            if ( *((volatile uint32_t*)addr) == j) {
                id_simm[i] = ((j+1) * 1024) * 1024UL;
            } else {
                j = 16;
            }
        }
        fmt("RAM%d: %l\n", i, id_simm[i]);
    }
    putchar('\n');


    // clear bios bss area
    puts("InitBss");
    extern uint8_t _bss_start, _end;
    uint32_t* kbss = (uint32_t*)&_bss_start;
    while (kbss < (uint32_t*)&_end) {
        *kbss++ = 0;
    }

    // we can use bss section from this point onward
    ksimm[0] = id_simm[0];
    ksimm[1] = id_simm[1];
    ksimm[2] = id_simm[2];
    ksimm[3] = id_simm[3];
    kgfx     = id_gfx;


    // init systems
    puts("InitHeap");
    mem_Init();

    puts("InitUart");
    uart_Init();

    puts("InitIkbd");
    ikbd_Init();

    puts("InitMfp");
    mfp_Init();

    puts("InitMidi");
    midi_Init();

    puts("InitI2C");
    i2c_Init();

    puts("InitRtc");
    rtc_Init();

    puts("InitVbr");
    vbr_Init();

    puts("InitMonitor");
    mon_Init();

#ifdef CONF_ATARI
    puts("InitAtari");
    atari_Init();
#else
    puts("StartMonitor");
    mon_Start();
#endif

    return 0;
}


//-----------------------------------------------------------------------
//
// kmemory
//
//-----------------------------------------------------------------------
bool mem_Init()
{
    kheapPtr = ((uint32_t)&kheap[0] + KMEMSIZE - 4) & ~16UL;
    return true;
}

uint32_t mem_Alloc(uint32_t size, uint32_t alignment)
{
    if (alignment < 4)
        alignment = 4;

    uint32_t m = ((kheapPtr - size) & ~(alignment - 1));
    if (m >= (uint32_t) &kheap[0])
    {
        kheapPtr = m;
        return kheapPtr;
    }
    puts("ERROR: mem_Alloc()");
    return 0;
}


//-----------------------------------------------------------------------
//
// misc helpers
//
//-----------------------------------------------------------------------
uint32_t strtoi(char* s)
{
    uint32_t v = 0;
    if (*s == '$')
    {
        s++;
        while (*s != 0)
        {
            uint32_t b = (uint32_t) *s; s++;
            if (b >= '0' && b <= '9')       b = b - '0';
            else if (b >= 'a' && b <= 'f')  b = 10 + b - 'a';
            else return 0;
            v <<= 4;
            v |= b;
        }
    }
    else
    {
        while (*s != 0)
        {
            uint32_t b = (uint32_t) *s; s++;
            if (b >= '0' && b <= '9')   b = b - '0';
            else return 0;
            v *= 10;
            v += b;
        }
    }
    return v;
}
