/* 
 * File:   Atmega328p_device_config.h
 * Author: Huda
 *
 * Created on October 11, 2023, 7:58 PM
 */
#include "Atmega328P_Mcal_gpio.h"
volatile ddr_regB *data_dirction_reg[]={&ddrB,&ddrC,&ddrD};
volatile  port_regB *port_reg[]={&portB,&portC,&portD};
volatile pin_regB *pin_reg[]={&pinB,&pinC,&pinD};


//pins
/**
 * 
 * @param pin_config
 * @param dirction_state
 * @return Status of the function
 * (E_ok)     :the function done successfully
 * (E_NOT_OK) :the function done not successfully
 */
#if GPIO_PIN_CONFIGURATIONS==ENABLE_CONFIG
std_return_type gpio_pin_dirction_intialize( pin_config_t *pin_config,DIRCTION_STATE dirction_state){
    std_return_type ret=E_OK;
    if((pin_config==NULL)||(pin_config->pin>(MAX_PINS-1)))
    {
       ret=E_NOT_OK;
    }
    else{
        switch(dirction_state)
        {
            case INPUT:
               pin_config->dirction=INPUT;
                CLEAR_BIT((data_dirction_reg[pin_config->port]->All_reg),pin_config->pin);
                break;
            case OUTPUT:
               pin_config->dirction=OUTPUT;
                 SET_BIT((data_dirction_reg[pin_config->port]->All_reg),pin_config->pin);
                break;
            default:
                ret=E_NOT_OK; ;
                        
        }
    }
    return ret;
}
/**
 * 
 * @param pin_config
 * @param dirction_state
 * @return  Status of the function
 * (E_ok)     :the function done successfully
 * (E_NOT_OK) :the function done not successfully
 */
#endif
#if GPIO_PIN_CONFIGURATIONS==ENABLE_CONFIG
std_return_type gpio_pin_get_dirction(const pin_config_t *pin_config,DIRCTION_STATE *dirction_state){
        std_return_type ret=E_OK;
    if((pin_config==NULL)||(pin_config->pin>(MAX_PINS-1))||(NULL==dirction_state))
    {
       ret=E_NOT_OK;
    }
    else{
  *dirction_state=READ_BIT(data_dirction_reg[pin_config->port]->All_reg,pin_config->pin);
    }
    return ret;
    
}
#endif
/**
 * 
 * @param pin_config
 * @param logic_state
 * @return  Status of the function
 * (E_ok)     :the function done successfully
 * (E_NOT_OK) :the function done not successfully
 */
#if GPIO_PIN_CONFIGURATIONS==ENABLE_CONFIG
std_return_type gpio_pin_write_logic( pin_config_t *pin_config,LOGIC_STATE logic_state){
        std_return_type ret=E_OK;
    if((pin_config==NULL)||(pin_config->pin>(MAX_PINS-1)))
    {
       ret=E_NOT_OK;
    }
    else{
        switch(logic_state)
        {
            case LOW:
               CLEAR_BIT(port_reg[pin_config->port]->All_reg,pin_config->pin);
               ;
                break;
            case HIGH:
                 SET_BIT(port_reg[pin_config->port]->All_reg,pin_config->pin);
                 ;
                break;
            default:
                ret=E_NOT_OK; ;
                        
        }
    }
    return ret;
    
}
#endif

/**
 * 
 * @param pin_config
 * @param logic_state
 * @return  Status of the function
 * (E_ok)     :the function done successfully
 * (E_NOT_OK) :the function done not successfully
 */
#if GPIO_PIN_CONFIGURATIONS==ENABLE_CONFIG
std_return_type gpio_pin_read_logic(const pin_config_t *pin_config,LOGIC_STATE *logic_state){
            std_return_type ret=E_OK;
    if((pin_config==NULL)||(pin_config->pin>(MAX_PINS-1))||(NULL==logic_state))
    {
       ret=E_NOT_OK;
    }
    else{
        ;
    *logic_state=READ_BIT(pin_reg[pin_config->port]->All_reg,pin_config->pin);
    ;
    }
    return ret;
}


/**
 * 
 * @param pin_config
 * @return  Status of the function
 * (E_ok)     :the function done successfully
 * (E_NOT_OK) :the function done not successfully
 */
std_return_type gpio_pin_toggle_logic(const pin_config_t *pin_config){
    std_return_type ret=E_OK;
       if((pin_config==NULL)||(pin_config->pin>(MAX_PINS-1)))
    {
       ret=E_NOT_OK;
    }
        else
    {
          TOGGLE_BIT(port_reg[pin_config->port]->All_reg,pin_config->pin); 
    }
      return ret;     
       
}
/**
 * 
 * @param pin_config
 * @return  Status of the function
 * (E_ok)     :the function done successfully
 * (E_NOT_OK) :the function done not successfully
 */
std_return_type gpio_pin_intialize(pin_config_t *pin_config){
        std_return_type ret=E_OK;
       
       if((pin_config==NULL)||(pin_config->pin>(MAX_PINS-1)))
    {
       ret=E_NOT_OK;
    }
        else
    {
        ret=gpio_pin_dirction_intialize(pin_config,OUTPUT);
        ret=gpio_pin_write_logic(pin_config,LOW);
    }
        
        return ret;
}
/**
 * 
 * @param device_config
 * @param dirction_state
 * @return  Status of the function
 * (E_ok)     :the function done successfully
 * (E_NOT_OK) :the function done not successfully
 */
#endif
//port_configurations
#if GPIO_PORT_CONFIGURATIONS==ENABLE_CONFIG
std_return_type gpio_port_dirction_intialize( PORT_INDEX device_config,uint8_t dirction_state){
      std_return_type ret=E_OK;
    if((device_config>(MAX_PORTS-1)))
    {
       ret=E_NOT_OK;
    }
    else{
           (data_dirction_reg[device_config]->All_reg)=dirction_state;
    }
      return ret;
}
std_return_type gpio_port_get_dirction(const PORT_INDEX *device_config,uint8_t *dirction_state){
 
}
std_return_type gpio_port_write_logic( PORT_INDEX *device_config,uint8_t logic_state){
    
}
std_return_type gpio_port_read_logic(const PORT_INDEX *device_config,uint8_t *logic_state){
}
std_return_type gpio_port_toggle_logic(const PORT_INDEX *device_config){
    
}
#endif

