/* 
 * File:   Led.h
 * Author: Huda
 *
 * Created on October 11, 2023, 8:26 PM
 */

#ifndef LED_H
#define	LED_H


/*                  Segment:   includes                           */
#include "../../Mcal_layer/Atmega328P_Mcal_gpio/Atmega328P_Mcal_gpio.h"
#include "ecu_led_cfg.h"
/*                     Segment:  user_defined_datatype                          */

                             /*Enum*/
typedef enum{
LED_OFF=0,
 LED_ON
}LED_STAUTE;

//structures 
typedef struct{
    uint8_t port_t     :4;
    uint8_t pin_t      :3;
    uint8_t led_status :1;
}led_config;
 




/*                          Segment:Macros Declerations                                          */


/*                          Segment:Macros Like Functions                                          */


/*                   Functions  Declarations             */
std_return_type led_intialize(const led_config*led);
std_return_type led_turn_on(const led_config*led);
std_return_type led_turn_off(const led_config*led);
std_return_type led_toggle(const led_config*led);






#endif	/* LED_H */

