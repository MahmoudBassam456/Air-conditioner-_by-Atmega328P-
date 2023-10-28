

// ATmega328P Configuration Bit Settings

// 'C' source line config statements

#include "Atmega328p_device_config.h"




FUSES = {
	.low = 0x52, // LOW {SUT_CKSEL=INTRCOSC_8MHZ_6CK_14CK_4MS1, CKOUT=CLEAR, CKDIV8=SET}
	.high = 0xD9, // HIGH {BOOTRST=CLEAR, BOOTSZ=2048W_3800, EESAVE=CLEAR, WDTON=CLEAR, SPIEN=SET, DWEN=CLEAR, RSTDISBL=CLEAR}
	.extended = 0xFF, // EXTENDED {BODLEVEL=DISABLED}
};

LOCKBITS = 0xFF; // {LB=NO_LOCK, BLB0=NO_LOCK, BLB1=NO_LOCK}


