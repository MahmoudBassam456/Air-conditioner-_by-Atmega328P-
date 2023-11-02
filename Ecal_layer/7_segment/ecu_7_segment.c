



#include "ecu_7_segment.h"

static uint8_t seven_seg_commen_cathod[]={0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f};
static uint8_t seven_seg_commen_anode[]={0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x82,0xf8,0x80,0x90};

/**
 * @breif This function to intialize pin 
 * @param seg_pin This is pointer to configuration of seven_segment 
 * @param num This number that will be showed
 * @return STATUS OF FUNCTION:
 *          (E_OK):THE FUNCTION DONE SUCCESSFULLY 
 *           (E_NOT_OK):THE FUNCTION HAS ISSUE  
 */
std_return_type intialize_seg_pins(segmnt_config_t *seg_pin){
       std_return_type ret=E_OK;
       uint8_t counter;
    if((NULL==seg_pin))
    {
        ret=E_NOT_OK;
    }
    else
    {
  
       
        if(((seg_pin->seg_type)==COMMEN_CATHOD)||((seg_pin->seg_type)==COMMEN_ANODE))
        {
            
            for(counter=PIN_A;counter<=PIN_G;counter++)
            {
                 ret=gpio_pin_dirction_intialize(&(seg_pin->pin_[counter]),OUTPUT);
            }
            
        }
        else if(((seg_pin->seg_type)==DECODER_BCD))
        {
            for(counter=PIN_A_bcd;counter<=PIN_D_bcd;counter++)
            {
                ret=gpio_pin_dirction_intialize(&(seg_pin->pin_[counter]),OUTPUT);
            } 
        }
       
    }
    return ret;
}
/**
 * @breif This function show number on seven_segment according to type of connection 
 * @param seg_pin This is pointer to configuration of seven_segment 
 * @param num This number that will be showed
 * @return STATUS OF FUNCTION:
 *          (E_OK):THE FUNCTION DONE SUCCESSFULLY 
 *           (E_NOT_OK):THE FUNCTION HAS ISSUE  
 */
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
        if((seg_pin->seg_type)==COMMEN_CATHOD)
        { switch(num)
        {
            case 0:
              num=seven_seg_commen_cathod[0];  
            break;
            case 1:
                num=seven_seg_commen_cathod[1]; 
            break;
            case 2:
                num=seven_seg_commen_cathod[2]; 
            break;
            case 3:
                num=seven_seg_commen_cathod[3]; 
            break;
            case 4:
                num=seven_seg_commen_cathod[4]; 
            break;
            case 5:
                num=seven_seg_commen_cathod[5]; 
            break;
            case 6:
                num=seven_seg_commen_cathod[6]; 
            break;
            case 7:
                num=seven_seg_commen_cathod[7]; 
            break;
            case 8:
                num=seven_seg_commen_cathod[8]; 
            break;
            case 9:
                num=seven_seg_commen_cathod[9]; 
            break;
            default:
                 ret=E_NOT_OK; ;
        }
        for(counter=0;counter<7;counter++)
        {
            (seg_pin->pin_[counter].logic)=BIT_READING_SEG(num,counter);
        }
            for(counter=PIN_A;counter<=PIN_G;counter++)
            {
           ret=gpio_pin_write_logic(&(seg_pin->pin_[counter]),(seg_pin->pin_[counter].logic));
            }
        
        }
            else if((seg_pin->seg_type)==COMMEN_ANODE)
            {
          switch(num)
            {
            case 0:
              num=seven_seg_commen_anode[0];  
            break;
            case 1:
                num=seven_seg_commen_anode[1]; 
            break;
            case 2:
                num=seven_seg_commen_anode[2]; 
            break;
            case 3:
                num=seven_seg_commen_anode[3]; 
            break;
            case 4:
                num=seven_seg_commen_anode[4]; 
            break;
            case 5:
                num=seven_seg_commen_anode[5]; 
            break;
            case 6:
                num=seven_seg_commen_anode[6]; 
            break;
            case 7:
                num=seven_seg_commen_anode[7]; 
            break;
            case 8:
                num=seven_seg_commen_anode[8]; 
            break;
            case 9:
                num=seven_seg_commen_anode[9]; 
            break;
            default:
                 ret=E_NOT_OK; ;
        }
            for(counter=0;counter<7;counter++)
            {
            (seg_pin->pin_[counter].logic)=BIT_READING_SEG(num,counter);
            }
            for(counter=PIN_A;counter<=PIN_G;counter++)
            {
           ret=gpio_pin_write_logic(&(seg_pin->pin_[counter]),(seg_pin->pin_[counter].logic));
            }   
        }
        else if((seg_pin->seg_type)==DECODER_BCD)
        {
             for(counter=0;counter<7;counter++)
             {
                 
            (seg_pin->pin_[counter].logic)=BIT_READING_SEG(num,counter);
            
             }
            for(counter=PIN_A_bcd;counter<=PIN_D_bcd;counter++)
            {
           ret=gpio_pin_write_logic(&(seg_pin->pin_[counter]),(seg_pin->pin_[counter].logic));
            }
             
        } 
        else
        {
            ret=E_NOT_OK;
        }
        
            
       
      
      
       
     

     
       
    }
        
    return ret;  
 }
 
