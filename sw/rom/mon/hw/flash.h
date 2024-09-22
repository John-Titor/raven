#ifndef _FLASH_H_
#define _FLASH_H_
#ifndef __ASM__
#include "../sys.h"

extern const char *flash_identify(void);
extern int flash_erase_range(uint32_t base, uint32_t length);
extern int flash_program_range(uint32_t base, uint32_t length, uint32_t *source);

#endif //!__ASM__
#endif // _FLASH_H_
