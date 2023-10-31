



#include "ecu_7_segment.h"

static uint8_t seven_seg[]={0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f};
std_return_type intialize_seg_pins(segmnt_config_t *seg_pin){
       std_return_type ret=E_OK;
       uint8_t counter;
    if((NULL==seg_pin))
    {
        ret=E_NOT_OK;
    }
    else
    {
        
       
        
      ret=   gpio_pin_dirction_intialize(&(seg_pin->pin_[PIN_A]),OUTPUT);
       ret=  gpio_pin_dirction_intialize(&(seg_pin->pin_[PIN_B]),OUTPUT);
        ret= gpio_pin_dirction_intialize(&(seg_pin->pin_[PIN_C]),OUTPUT);
       ret=  gpio_pin_dirction_intialize(&(seg_pin->pin_[PIN_D]),OUTPUT);
       ret=  gpio_pin_dirction_intialize(&(seg_pin->pin_[PIN_E]),OUTPUT);
        ret= gpio_pin_dirction_intialize(&(seg_pin->pin_[PIN_F]),OUTPUT);
       ret=  gpio_pin_dirction_intialize(&(seg_pin->pin_[PIN_G]),OUTPUT);
       
    }
    return ret;
}

 std_return_type show_num(segmnt_config_t *seg_pin,uint8_t num){
       std_return_type ret=E_OK;
       uint8_t counter;
        pin_config_t pins_t[PIN_NUM];
       uint8_t logic[7];
    if((NULL==seg_pin)||(num>MAX_RANGE_SEGMENT))
    {
        ret=E_NOT_OK;
    }
    else
    {
        switch(num)
        {
            case 0:
              num=seven_seg[0];  
            break;
            case 1:
                num=seven_seg[1]; 
            break;
            case 2:
                num=seven_seg[2]; 
            break;
            case 3:
                num=seven_seg[3]; 
            break;
            case 4:
                num=seven_seg[4]; 
            break;
            case 5:
                num=seven_seg[5]; 
            break;
            case 6:
                num=seven_seg[6]; 
            break;
            case 7:
                num=seven_seg[7]; 
            break;
            case 8:
                num=seven_seg[8]; 
            break;
            case 9:
                num=seven_seg[9]; 
            break;
            default:
                 ret=E_NOT_OK; ;
        }
        for(counter=0;counter<7;counter++)
        {
            (seg_pin->pin_[counter].logic)=BIT_READING_SEG(num,counter);
        }
        
            
       
      
      
       
       ret=gpio_pin_write_logic(&(seg_pin->pin_[0]),(seg_pin->pin_[0].logic));
       
       ret=gpio_pin_write_logic(&(seg_pin->pin_[1]),(seg_pin->pin_[1].logic));
      
       ret=gpio_pin_write_logic(&(seg_pin->pin_[2]),(seg_pin->pin_[2].logic));
       
       ret=gpio_pin_write_logic(&(seg_pin->pin_[3]),(seg_pin->pin_[3].logic));
    
       ret=gpio_pin_write_logic(&(seg_pin->pin_[4]),(seg_pin->pin_[4].logic));
      
       ret=gpio_pin_write_logic(&(seg_pin->pin_[5]),(seg_pin->pin_[5].logic));
       
        ret=gpio_pin_write_logic(&(seg_pin->pin_[6]),(seg_pin->pin_[6].logic));

     
       
    }
       
    return ret;  
 }
 
