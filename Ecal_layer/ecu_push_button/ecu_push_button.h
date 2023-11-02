/* 
 * File:   ecu_push_button.h
 * Author: Huda
 *
 * Created on October 22, 2023, 12:32 PM
 */

#ifndef ECU_PUSH_BUTTON_H
#define	ECU_PUSH_BUTTON_H


/*                  Segment:   includes                           */
#include "../../Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.h"
#include "ecu_button_cfg.h"
/*                     Segment:  user_defined_datatype                          */

                             /*Enum*/
typedef enum{
    BUTTON_PRESSED=0,
    BUTTON_NOT_PRESSED      
}button_state_t;
typedef enum{
    BUTTON_ACTIVE_HIGH=0,
    BUTTON_ACTIVE_LOW
}button_active_t;

//structures 
typedef struct{
   uint8_t button_pin   :3;
   uint8_t button_port  :3;
   uint8_t button_state :1;
   uint8_t button_connection  :1;
}button_config;

/*                          Segment:Macros Declerations                                          */

#define SAMPLE_PRESED  10
/*                          Segment:Macros Like Functions                                          */


/*                   Functions  Declarations             */
std_return_type button_intialize(const button_config  *btn);
std_return_type button_read_state(const button_config *btn,button_state_t *button_state_t);








#endif	/* ECU_PUSH_BUTTON_H */

