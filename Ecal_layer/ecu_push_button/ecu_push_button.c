#include "ecu_push_button.h"

std_return_type button_intialize(const button_config  *btn){
    std_return_type ret=E_OK;
    pin_config_t pin_config={.pin=(btn->button_pin),.port=(btn->button_port),.dirction=INPUT};
    if((NULL==btn)||((btn->button_pin)>MAX_PINS))
    {
        ret=E_NOT_OK;
    }
    else
    {
       ret= gpio_pin_dirction_intialize(&pin_config,INPUT);
    }
    return ret;
}
std_return_type button_read_state(const button_config *btn,button_state_t *button_state_t){
        std_return_type ret=E_OK;
    pin_config_t pin_config={.pin=(btn->button_pin),.port=(btn->button_port),.dirction=INPUT};
   volatile  uint8_t count_pressed=0,
            count=0,
            read_state;
    if((NULL==btn)||((btn->button_pin)>MAX_PINS))
    {
        ret=E_NOT_OK;
    }
    else
    {
        switch((btn->button_connection))
        {
            case BUTTON_ACTIVE_HIGH:
            {
                for(count=0;count<SAMPLE_PRESED;count++)
                {
                    ret=gpio_pin_read_logic(&pin_config,&read_state);
                    if(read_state==HIGH) count_pressed++;
                    _delay_ms(10);
                }
            }
                break;
            case BUTTON_ACTIVE_LOW:
                   {
                for(count=0;count<SAMPLE_PRESED;count++)
                {
                    ret=gpio_pin_read_logic(&pin_config,&read_state);
                    if(read_state==LOW) count_pressed++; 
                    _delay_ms(10);
                }
            }
                break;
            default: ret=E_NOT_OK;
        }
        
        if(count_pressed==(SAMPLE_PRESED))
        {
          *button_state_t= BUTTON_PRESSED;
        }
        else
        {
            *button_state_t= BUTTON_NOT_PRESSED;
        }
        count_pressed=0;
        return ret;
        
    }
    return ret;
}