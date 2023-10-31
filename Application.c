/* 
 * File:   Application.c
 * Author: Huda
 *
 * Created on October 11, 2023, 7:59 AM
 */

//#include "Application.h"
/*
 * 
 */

#include "Application.h"
#include "Ecal_layer/ecu_push_button/ecu_push_button.h"

 segmnt_config_t seven_seg_1={.pin_[0].pin=PIN_0,.pin_[0].port=PORTB_INDEX,
.pin_[1].pin=PIN_1,.pin_[1].port=PORTB_INDEX,
 .pin_[2].pin=PIN_2,.pin_[2].port=PORTB_INDEX,
 .pin_[3].pin=PIN_3,.pin_[3].port=PORTB_INDEX,
 .pin_[4].pin=PIN_4,.pin_[4].port=PORTB_INDEX,
 .pin_[5].pin=PIN_5,.pin_[5].port=PORTB_INDEX,
 .pin_[6].pin=PIN_0,.pin_[6].port=PORTD_INDEX,
 };
void App_intialize(void);
uint8_t ret;
int main() {
  //led_config led={.pin_t=0,.port_t=0};
intialize_seg_pins(&seven_seg_1);
show_num(&seven_seg_1,8);
   while(1){
         
   // led_turn_on(&led);
       
   } 
  
    
    return (EXIT_SUCCESS);
}
void App_intialize(void){

}

