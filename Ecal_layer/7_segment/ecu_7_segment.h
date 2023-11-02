/* 
 * File:   ecu_7_segment.h
 * Author: Huda
 *
 * Created on October 30, 2023, 3:35 PM
 */

#ifndef ECU_7_SEGMENT_H
#define	ECU_7_SEGMENT_H


/*                  Segment:   includes                           */
#include "../../Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.h"
/*                     Segment:  user_defined_datatype                          */
/*Enum*/
   typedef enum{
     COMMEN_CATHOD=0,
     COMMEN_ANODE,
     DECODER_BCD      
   }segmnt_conection; 
   
   typedef enum{
       PIN_A=0,
       PIN_B,
       PIN_C,
       PIN_D,
       PIN_E,      
       PIN_F,
       PIN_G,
       PIN_DP    
   }segmnt_pin;
 typedef enum{
       PIN_A_bcd=0,
       PIN_B_bcd,
       PIN_C_bcd,
       PIN_D_bcd, 
   }bcd_pin;
//structures 

    
                           /*union*/


typedef struct{
    pin_config_t pin_[8] ;
   segmnt_conection seg_type;
   }segmnt_config_t;



/*                          Segment:Macros Declerations                                          */
#define PIN_NUM              (uint8_t)8
#define MAX_RANGE_SEGMENT    (uint8_t)9

/*                          Segment:Macros Like Functions                                          */
#define BIT_READING_SEG(NUMBER,BIT_POS)  ((NUMBER>>BIT_POS)&(uint8_t)1)

/*                   Functions  Declarations             */
 std_return_type intialize_seg_pins(segmnt_config_t *seg_pin);
 std_return_type show_num(segmnt_config_t *seg_pin,uint8_t num);









#endif	/* ECU_7_SEGMENT_H */

