/* 
 * File:   Led.h
 * Author: Huda
 *
 * Created on October 11, 2023, 8:26 PM
 */
#include "ecu_led.h"
/**
 * @brief Initialize the assigned pin to be Output  and turn on led
 * @param led : pointer to the led module configurations 
 * @return status of function 
 *          (E_Ok) :The function done successfully
 *          (E_NOT_OK):the function has issue while performing this action 
 */
std_return_type led_intialize(const led_config*led){
std_return_type ret=E_OK;
 pin_config_t pin_obj={.port=led->port_t,
                              .pin=led->pin_t,.dirction=OUTPUT,.logic=led->led_status };
       if((led==NULL))
    {
       ret=E_NOT_OK;
    }
        else
    {
         ret=gpio_pin_intialize(&pin_obj);
    }
      return ret;     
}
/**
 * @breif Turn on led
 * @param led : pointer to the led module configurations
 * @return status of function 
 *          (E_Ok) :The function done successfully
 *          (E_NOT_OK):the function has issue while performing this action 
 */
std_return_type led_turn_on(const led_config*led){
 std_return_type ret=E_OK;
  pin_config_t pin_obj={.port=led->port_t,
                              .pin=led->pin_t,.dirction=OUTPUT,.logic=led->led_status };
       if((led==NULL))
    {
       ret=E_NOT_OK;
    }
        else
    {
         ret=gpio_pin_write_logic(&pin_obj,HIGH);
    }
      return ret;   
}
/**
 * @breif Turn off led
 * @param led : pointer to the led module configurations
 * @return status of function 
 *          (E_Ok) :The function done successfully
 *          (E_NOT_OK):the function has issue while performing this action 
 */
std_return_type led_turn_off(const led_config*led){
  std_return_type ret=E_OK;
  pin_config_t pin_obj={.port=led->port_t,
                              .pin=led->pin_t,.dirction=OUTPUT,.logic=led->led_status };
       if((led==NULL))
    {
       ret=E_NOT_OK;
    }
        else
    {
         ret=gpio_pin_write_logic(&pin_obj,LOW);
    }
      return ret;    
}
/**
 * @breif toggle led
 * @param led : pointer to the led module configurations
 * @return status of function 
 *          (E_Ok) :The function done successfully
 *          (E_NOT_OK):the function has issue while performing this action 
 */
std_return_type led_toggle(const led_config*led){
  std_return_type ret=E_OK;
    pin_config_t pin_obj={.port=led->port_t,
                              .pin=led->pin_t,.dirction=OUTPUT,.logic=led->led_status };
       if((led==NULL))
    {
       ret=E_NOT_OK;
    }
        else
    {
        ret=gpio_pin_toggle_logic(&pin_obj);  
    }
      return ret;   
}

