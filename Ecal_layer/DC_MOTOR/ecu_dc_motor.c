

#include "ecu_dc_motor.h"
static  pin_config_t _Motor_A[2];
static  pin_config_t _Motor_B[2];
/**
 * @breif INTIALIZE MOTOR CONFIGURATION
 * @param dc_motor_config :POINTER TO DC_MOTOR CONFIGURATION
 * @param Motor_target :ENUM WITH TYPE OF MOTOR A..OR..B
 * @return STATUS OF FUNCTION:
 *          (E_OK):THE FUNCTION DONE SUCCESSFULLY 
 *           (E_NOT_OK):THE FUNCTION HAS ISSUE  
 */
 std_return_type dc_motor_intialize(dc_motor_config *dc_motor_config,Motor_Name Motor_target){
    std_return_type ret=E_OK;

   if(NULL==dc_motor_config)  
  { 
      ret=E_NOT_OK;
  }
  else
  { 
      switch(Motor_target)
      {
          case Motor_A:
              
              _Motor_A[DC_MOTOR_PIN1].pin=dc_motor_config->Motor_A_PIN[DC_MOTOR_PIN1].M_pin;
               _Motor_A[DC_MOTOR_PIN1].port=dc_motor_config->Motor_A_PIN[DC_MOTOR_PIN1].M_port;
               _Motor_A[DC_MOTOR_PIN1].logic=dc_motor_config->Motor_A_PIN[DC_MOTOR_PIN1].pin_state;
              _Motor_A[DC_MOTOR_PIN1].dirction=OUTPUT;
              
                _Motor_A[DC_MOTOR_PIN2].pin=dc_motor_config->Motor_A_PIN[DC_MOTOR_PIN2].M_pin;
               _Motor_A[DC_MOTOR_PIN2].port=dc_motor_config->Motor_A_PIN[DC_MOTOR_PIN2].M_port;
               _Motor_A[DC_MOTOR_PIN2].logic=dc_motor_config->Motor_A_PIN[DC_MOTOR_PIN2].pin_state;
              _Motor_A[DC_MOTOR_PIN2].dirction=OUTPUT;
              
             ret=gpio_pin_dirction_intialize(&_Motor_A[DC_MOTOR_PIN1],OUTPUT);
             ret=gpio_pin_dirction_intialize(&_Motor_A[DC_MOTOR_PIN2],OUTPUT);
              break;
          case Motor_B:
          {
               _Motor_B[DC_MOTOR_PIN1].pin=dc_motor_config->Motor_B_PIN[DC_MOTOR_PIN1].M_pin;
               _Motor_B[DC_MOTOR_PIN1].port=dc_motor_config->Motor_B_PIN[DC_MOTOR_PIN1].M_port;
               _Motor_B[DC_MOTOR_PIN1].logic=dc_motor_config->Motor_B_PIN[DC_MOTOR_PIN1].pin_state;
              _Motor_B[DC_MOTOR_PIN1].dirction=OUTPUT;
          }
             
           {
                _Motor_B[DC_MOTOR_PIN2].pin=dc_motor_config->Motor_B_PIN[DC_MOTOR_PIN2].M_pin;
               _Motor_B[DC_MOTOR_PIN2].port=dc_motor_config->Motor_B_PIN[DC_MOTOR_PIN2].M_port;
               _Motor_B[DC_MOTOR_PIN2].logic=dc_motor_config->Motor_B_PIN[DC_MOTOR_PIN2].pin_state;
              _Motor_B[DC_MOTOR_PIN2].dirction=OUTPUT;
           }
                ret=gpio_pin_dirction_intialize(&_Motor_B[DC_MOTOR_PIN1],OUTPUT);
                ret=gpio_pin_dirction_intialize(&_Motor_B[DC_MOTOR_PIN2],OUTPUT);
              break;
          default :
              ret=E_NOT_OK;
      } 
     
   
      
  }
    return ret;
 }
 /**
 * @breif MOVE MOTOR TO RIGHT ->
 * @param dc_motor_config :POINTER TO DC_MOTOR CONFIGURATION
 * @param Motor_target :ENUM WITH TYPE OF MOTOR A..OR..B
 * @return STATUS OF FUNCTION:
 *          (E_OK):THE FUNCTION DONE SUCCESSFULLY 
 *           (E_NOT_OK):THE FUNCTION HAS ISSUE  
 */
 std_return_type dc_motor_move_right(dc_motor_config *dc_motor_config,Motor_Name Motor_target){
   std_return_type ret=E_OK;
  if((NULL==dc_motor_config)) 
  { 
      ret=E_NOT_OK;
  }
  else
  {
      switch(Motor_target)
      {
          case Motor_A:
             ret= gpio_pin_write_logic(&_Motor_A[DC_MOTOR_PIN1],HIGH);
             ret= gpio_pin_write_logic(&_Motor_A[DC_MOTOR_PIN2],LOW);
              break;
          case Motor_B:
              ret= gpio_pin_write_logic(&_Motor_B[DC_MOTOR_PIN1],HIGH);
             ret= gpio_pin_write_logic(&_Motor_B[DC_MOTOR_PIN2],LOW);
              break;
          default :
              ret=E_NOT_OK;
      }
  }
    return ret;
 }
/**
 * @breif MOVE MOTOR TO LEFT <-
 * @param dc_motor_config :POINTER TO DC_MOTOR CONFIGURATION
 * @param Motor_target :ENUM WITH TYPE OF MOTOR A..OR..B
 * @return STATUS OF FUNCTION:
 *          (E_OK):THE FUNCTION DONE SUCCESSFULLY 
 *           (E_NOT_OK):THE FUNCTION HAS ISSUE  
 */
 std_return_type dc_motor_move_left(dc_motor_config *dc_motor_config,Motor_Name Motor_target){
   std_return_type ret=E_OK;
  if((NULL==dc_motor_config)) 
  { 
      ret=E_NOT_OK;
  }
  else
  {
      switch(Motor_target)
      {
          case Motor_A:
             ret= gpio_pin_write_logic(&_Motor_A[DC_MOTOR_PIN1],LOW);
             ret= gpio_pin_write_logic(&_Motor_A[DC_MOTOR_PIN2],HIGH);
              break;
          case Motor_B:
              ret= gpio_pin_write_logic(&_Motor_B[DC_MOTOR_PIN1],LOW);
             ret= gpio_pin_write_logic(&_Motor_B[DC_MOTOR_PIN2],HIGH);
              break;
          default :
              ret=E_NOT_OK;
      }
  }
    return ret;
 }
 /**
 * @breif MOTOR STOP
 * @param dc_motor_config :POINTER TO DC_MOTOR CONFIGURATION
 * @param Motor_target :ENUM WITH TYPE OF MOTOR A..OR..B
 * @return STATUS OF FUNCTION:
 *          (E_OK):THE FUNCTION DONE SUCCESSFULLY 
 *           (E_NOT_OK):THE FUNCTION HAS ISSUE  
 */
 std_return_type dc_motor_stop(dc_motor_config *dc_motor_config,Motor_Name Motor_target){
   std_return_type ret=E_OK;
  if((NULL==dc_motor_config)) 
  { 
      ret=E_NOT_OK;
  }
  else
  {
      switch(Motor_target)
      {
          case Motor_A :
          {
             ret= gpio_pin_write_logic(&_Motor_A[DC_MOTOR_PIN1],LOW);
             ret= gpio_pin_write_logic(&_Motor_A[DC_MOTOR_PIN2],LOW);
          }
              break;
          case Motor_B:
          {
              ret= gpio_pin_write_logic(&_Motor_B[DC_MOTOR_PIN1],LOW);
             ret= gpio_pin_write_logic(&_Motor_B[DC_MOTOR_PIN2],LOW);}
              break;
          default :
              ret=E_NOT_OK;
      }
  }
    return ret;
 }