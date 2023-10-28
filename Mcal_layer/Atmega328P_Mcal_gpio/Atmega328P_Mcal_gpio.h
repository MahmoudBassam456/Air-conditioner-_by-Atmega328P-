/* 
 * File:   Atmega328P_Mcal_gpio.h
 * Author: Huda
 *
 * Created on October 11, 2023, 8:18 PM
 */

#ifndef ATMEGA328P_MCAL_GPIO_H
#define	ATMEGA328P_MCAL_GPIO_H
/*                  Segment:   includes                           */
#include "../Device_config/Atmega328p_device_config.h"

#include "../Atmega328p_mcal_std_types.h"

#include "hal_gpio_cfg.h"
/*                     Segment:  user_defined_datatype                          */

                             /*Enum*/
typedef enum{
    LOW=0,
    HIGH
}LOGIC_STATE;

typedef enum{
    INPUT=0,
    OUTPUT
}DIRCTION_STATE;

typedef enum{
    PIN_0=0,
    PIN_1,
    PIN_2,
    PIN_3,
    PIN_4,
    PIN_5,
    PIN_6,
    PIN_7,
}PIN_INDEX_t;
typedef enum{
   PORTB_INDEX=0,
   PORTC_INDEX,
   PORTD_INDEX,
}PORT_INDEX;





                               /*union*/
//for port b
typedef union{
    struct{
      uint8_t pin0 :1; 
      uint8_t pin1 :1; 
      uint8_t pin2 :1; 
      uint8_t pin3 :1; 
      uint8_t pin4 :1; 
      uint8_t pin5 :1; 
      uint8_t pin6 :1; 
      uint8_t pin7 :1; 
    };
    uint8_t All_reg;
}ddr_regB;

typedef union{
    struct{
        uint8_t pin0 :1;
        uint8_t pin1 :1;
        uint8_t pin2 :1;
        uint8_t pin3 :1;
        uint8_t pin4 :1;
        uint8_t pin5 :1;
        uint8_t pin6 :1;
        uint8_t pin7 :1;
    };
    uint8_t All_reg;
}port_regB;

typedef union{
       struct{
        uint8_t pin0 :1;
        uint8_t pin1 :1;
        uint8_t pin2 :1;
        uint8_t pin3 :1;
        uint8_t pin4 :1;
        uint8_t pin5 :1;
        uint8_t pin6 :1;
        uint8_t pin7 :1;
    };
    uint8_t All_reg;
}pin_regB;
//for port c
typedef union{
    struct{
      uint8_t pin0 :1; 
      uint8_t pin1 :1; 
      uint8_t pin2 :1; 
      uint8_t pin3 :1; 
      uint8_t pin4 :1; 
      uint8_t pin5 :1; 
      uint8_t pin6 :1; 
      uint8_t pin7 :1; 
    };
    uint8_t All_reg;
}ddr_regC;

typedef union{
    struct{
        uint8_t pin0 :1;
        uint8_t pin1 :1;
        uint8_t pin2 :1;
        uint8_t pin3 :1;
        uint8_t pin4 :1;
        uint8_t pin5 :1;
        uint8_t pin6 :1;
        uint8_t pin7 :1;
    };
    uint8_t All_reg;
}port_regC;

typedef union{
       struct{
        uint8_t pin0 :1;
        uint8_t pin1 :1;
        uint8_t pin2 :1;
        uint8_t pin3 :1;
        uint8_t pin4 :1;
        uint8_t pin5 :1;
        uint8_t pin6 :1;
        uint8_t pin7 :1;
    };
    uint8_t All_reg;
}pin_regC;
//for port D
typedef union{
    struct{
      uint8_t pin0 :1; 
      uint8_t pin1 :1; 
      uint8_t pin2 :1; 
      uint8_t pin3 :1; 
      uint8_t pin4 :1; 
      uint8_t pin5 :1; 
      uint8_t pin6 :1; 
      uint8_t pin7 :1; 
    };
    uint8_t All_reg;
}ddr_regD;

typedef union{
    struct{
        uint8_t pin0 :1;
        uint8_t pin1 :1;
        uint8_t pin2 :1;
        uint8_t pin3 :1;
        uint8_t pin4 :1;
        uint8_t pin5 :1;
        uint8_t pin6 :1;
        uint8_t pin7 :1;
    };
    uint8_t All_reg;
}port_regD;

typedef union{
       struct{
        uint8_t pin0 :1;
        uint8_t pin1 :1;
        uint8_t pin2 :1;
        uint8_t pin3 :1;
        uint8_t pin4 :1;
        uint8_t pin5 :1;
        uint8_t pin6 :1;
        uint8_t pin7 :1;
    };
    uint8_t All_reg;
}pin_regD;
//structures 
//for intializtion ports
typedef struct{
    uint8_t port     :3;
    uint8_t pin      :3;
    uint8_t dirction :1;
    uint8_t logic    :1;
}pin_config_t;
    




/*                          Segment:Macros Declerations                                          */
#define BIT_MASK    (uint8_t)1
#define MAX_PINS    (uint8_t)8
#define MAX_PORTS   (uint8_t)3  


#define GPIO_PIN_CONFIGURATIONS      ENABLE_CONFIG
#define GPIO_PORT_CONFIGURATIONS      ENABLE_CONFIG

#define ddrB (*((volatile ddr_regB *)0x24))
#define portB (*((volatile port_regB *)0x25))
#define pinB (*((volatile pin_regB *)0x23))

#define ddrC (*((volatile ddr_regC *)0x27))
#define portC (*((volatile port_regC *)0x28))
#define pinC (*((volatile pin_regC *)0x26))

#define ddrD (*((volatile ddr_regD *)0x2A))
#define portD (*((volatile port_regD *)0x2B))
#define pinD (*((volatile pin_regD *)0x29))

/*                          Segment:Macros Like Functions                                          */

#define SET_BIT(REG,BIT_POS)     (REG|=(BIT_MASK<<BIT_POS))
#define CLEAR_BIT(REG,BIT_POS)   (REG&=~(BIT_MASK<<BIT_POS))
#define TOGGLE_BIT(REG,BIT_POS)  (REG^=(BIT_MASK <<BIT_POS))
#define READ_BIT(REG,BIT_POS)    ((REG>>BIT_POS)&1)

#define SEND_FOR_FUNC(_X)        (&_X)
/*                   Functions  Declarations             */
//pins
std_return_type gpio_pin_dirction_intialize( pin_config_t *pin_config,DIRCTION_STATE dirction_state);
std_return_type gpio_pin_get_dirction(const pin_config_t *pin_config,DIRCTION_STATE *dirction_state);
std_return_type gpio_pin_write_logic( pin_config_t *pin_config,LOGIC_STATE logic_state);
std_return_type gpio_pin_read_logic(const pin_config_t *pin_config,LOGIC_STATE *logic_state);
std_return_type gpio_pin_toggle_logic(const pin_config_t *pin_config);
std_return_type gpio_pin_intialize(pin_config_t *pin_config);
//port_configurations
std_return_type gpio_port_dirction_intialize( PORT_INDEX device_config,uint8_t dirction_state);
std_return_type gpio_port_get_dirction(const PORT_INDEX *device_config,uint8_t *dirction_state);
std_return_type gpio_port_write_logic( PORT_INDEX *device_config,uint8_t logic_state);
std_return_type gpio_port_read_logic(const PORT_INDEX *device_config,uint8_t *logic_state);
std_return_type gpio_port_toggle_logic(const PORT_INDEX *device_config);




#endif	/* ATMEGA328P_MCAL_GPIO_H */

