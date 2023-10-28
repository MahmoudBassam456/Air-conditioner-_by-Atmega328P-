/* 
 * File:   Atmega328p_mcal_std_types.h
 * Author: Huda
 *
 * Created on October 11, 2023, 8:04 PM
 */

#ifndef ATMEGA328P_MCAL_STD_TYPES_H
#define	ATMEGA328P_MCAL_STD_TYPES_H

#include "compiler.h"
#include "../Mcal_layer/std_libraries.h"


/*     Segment:data_types_declerations                     */
typedef unsigned char uint8_t;
typedef uint8_t    std_return_type;


 /*                    Macros Declarations              */
#define STD_ACTIVE 0x01
#define STD_IDLE   0x00

#define E_OK            (std_return_type)0x01
#define E_NOT_OK        (std_return_type)0x00

#endif	/* ATMEGA328P_MCAL_STD_TYPES_H */

