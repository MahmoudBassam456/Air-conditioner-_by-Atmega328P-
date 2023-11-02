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
 .seg_type=COMMEN_CATHOD
 };
 button_config btn={.button_connection=BUTTON_ACTIVE_HIGH,.button_pin=PIN0,.button_port=PORTC_INDEX};
void App_intialize(void);
uint8_t ret;
uint8_t count=0;
uint8_t volatile state;

int main() {
  led_config led={.pin_t=PIN_1,.port_t=PORTB_INDEX};
  led_turn_off(&led);

button_intialize(&btn);
led_intialize(&led);
uint8_t  volatile vald_state=LED_OFF;

   while(1){
        
     
        button_read_state(&btn,&state);
  
       if((state==BUTTON_PRESSED)&&(vald_state==LED_ON))
       {
           vald_state=LED_OFF;
           led_turn_off(&led);
           _delay_ms(15);
       }
       else if((state==BUTTON_PRESSED)&&(vald_state==LED_OFF))
       {
           vald_state=LED_ON;
           led_turn_on(&led);
           _delay_ms(15);
       }
                   
     
   } 
  
    
    return (EXIT_SUCCESS);
}
void App_intialize(void){

}

