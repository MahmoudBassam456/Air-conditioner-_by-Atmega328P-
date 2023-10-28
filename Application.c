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


led_config led_1={.port_t=PORTB_INDEX,.pin_t=PIN_5,.led_status=HIGH};
 LOGIC_STATE var;
 uint8_t ret;
button_config btn={
    .button_pin=PIN_0,.button_port=PORTB_INDEX,.button_connection=BUTTON_ACTIVE_LOW
};
int main() {
    uint8_t q;
   
     ret=led_intialize(&led_1); 
   
    ret=button_intialize(&btn);
    while(1){
        button_read_state(&btn,&var);
        if(var==BUTTON_PRESSED)
        {
            ret=led_turn_on(&led_1);
        }
        else
        {
           ret=led_turn_off(&led_1); 
        }
    }
    return (EXIT_SUCCESS);
}

