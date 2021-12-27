#include "stm32f4xx.h"
#include "adc.h"
#include "dac.h"
#include "usart.h"
#include "delay.h"
#include "rand.h"
#include "math.h"

#define IRQ_IDLE			0
#define IRQ_DETECTED		1
#define IRQ_WAIT4LOW		2
#define IRQ_DEBOUNCE		3
#define ADC_BUFF_SIZE			(DAC_BUFF_SIZE)
volatile uint8_t g_gpioa_irq_state = (IRQ_IDLE);
volatile uint32_t g_irq_timer = 0;
volatile uint8_t g_pbtn_cnt = 0;

#define DAC_BUFF_SIZE			1000
#define ADC_BUFF_SIZE			(DAC_BUFF_SIZE)
#define PI 3.14159
#define T1 1e-3
#define T2 3e-3
#define T3 4e-3

#define MA_FIR_SIZE			10	

void serviceIRQA(void);
void getData4DAC(uint16_t * dac_buff, uint8_t pb);

int main(void)
{
	uint8_t c, t_pbtn_cnt = g_pbtn_cnt;
	uint32_t utmp32, k = 0, n ;
	uint16_t utmp16, dac_val, widx;
	int16_t tmp16;
	uint8_t pb = 0;
	uint32_t time = 0, y;
	uint16_t dac_buff[DAC_BUFF_SIZE];
	uint16_t dac_buff_noise[DAC_BUFF_SIZE];
	uint16_t adc_buff0[ADC_BUFF_SIZE];
	uint16_t adc_buff1[ADC_BUFF_SIZE];
		
	uint16_t ma_fir[MA_FIR_SIZE];
	
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
	GPIOA->MODER &= ~0x00000003;  										// 
	
	RCC->APB2ENR |= RCC_APB2ENR_SYSCFGEN;								// enable clock on SYSCFG register
	NVIC_EnableIRQ(EXTI0_IRQn);
	SYSCFG->EXTICR[0] = SYSCFG_EXTICR1_EXTI0_PA;						// select PA 0 as interrupt source p259
	EXTI->IMR = EXTI_IMR_MR0;											// enable interrupt on EXTI_Line0
	EXTI->EMR &= ~EXTI_EMR_MR0;											// disable event on EXTI_Line0
	EXTI->RTSR = EXTI_RTSR_TR0;	
	EXTI->FTSR = 0x00000000;	
							  
	
	initSYSTIM();
	time = 0;
	initUSART2(USART2_BAUDRATE_921600);
	
	getData4DAC(dac_buff, 1);
	initDmaADC1(adc_buff0, adc_buff1, ADC_BUFF_SIZE);					
	initDmaDAC1(dac_buff, DAC_BUFF_SIZE);							
	
	while(1)
	{
		c = getcharUSART2();
		if((DMA2_Stream0->CR & DMA_SxCR_CT) == DMA_SxCR_CT)
    	{// we can read buffer 0
			
			for(k=0;k<((ADC_BUFF_SIZE)/2);k++)
			{// send unfiltered data
				utmp16 = adc_buff0[k];
				putcharUSART2((utmp16&0xFF00)>>8);
				putcharUSART2(utmp16&0x00FF);
			}
			
			// filter data
			n = 0;
			for(k=0;k<(MA_FIR_SIZE);k++)
			{
				if(k<((MA_FIR_SIZE)/2))
				{
					ma_fir[k] = 0x0000;
				}
				else
				{
					ma_fir[k] = adc_buff0[n];
					n++;
				}
			}
			widx = 0;
			
			for(k=0;k<((ADC_BUFF_SIZE)/2);k++)
			{
				y = 0;
				for(n=0;n<(MA_FIR_SIZE);n++)
				{
					y += ma_fir[n];
				}
				/* tmp16 = ((int16_t)adc_buff1[k] - y/(MA_FIR_SIZE)); */
				tmp16 = ((int16_t)ma_fir[widx] - y/(MA_FIR_SIZE)) + 2046; 
				/* utmp16 = ((int16_t)ma_fir[widx] - y/(MA_FIR_SIZE)) + 2046; */ 
				/* tmp16 = y/(MA_FIR_SIZE); */ 
				

				putcharUSART2((tmp16&0xFF00)>>8);
				putcharUSART2(tmp16&0x00FF);
				
				widx++;
				if(widx == (MA_FIR_SIZE))
					widx = 0;
				
				ma_fir[widx] = adc_buff0[k];
			}
		}
		else
		{// we can read buffer 1
			for(k=0;k<((ADC_BUFF_SIZE)/2);k++)
			{// send unfiltered data
				utmp16 = adc_buff1[k];
				putcharUSART2((utmp16&0xFF00)>>8);
				putcharUSART2(utmp16&0x00FF);
			}
			
			// filter data
			n = 0;
			for(k=0;k<(MA_FIR_SIZE);k++)
			{
				if(k<((MA_FIR_SIZE)/2))
				{
					ma_fir[k] = 0x0000;
				}
				else
				{
					ma_fir[k] = adc_buff1[n];
					n++;
				}
			}
			widx = 0;
			
			for(k=0;k<((ADC_BUFF_SIZE)/2);k++)
			{
				y = 0;
				for(n=0;n<(MA_FIR_SIZE);n++)
				{
					y += ma_fir[n];
				}
				tmp16 = ((int16_t)ma_fir[widx] - y/(MA_FIR_SIZE)) + 2046; 
				/* utmp16 = ((int16_t)adc_buff1[k] - y/(MA_FIR_SIZE)) + 2046; */  
				/* tmp16 = y/(MA_FIR_SIZE); */ 
				putcharUSART2((tmp16&0xFF00)>>8);
				putcharUSART2(tmp16&0x00FF);
				
				widx++;
				if(widx == (MA_FIR_SIZE))
					widx = 0;
				
				ma_fir[widx] = adc_buff1[k];
			}
			
		}
		
		/* for(k=0;k<(ADC_BUFF_SIZE);k++) */
		/* { */
		/* 	dac_buff_noise[k] = dac_buff[k] + genRIN()/(1<<23); */
		/* } */
		
		
		/* if(g_pbtn_cnt != t_pbtn_cnt) */
		/* { */
		/* 	t_pbtn_cnt = g_pbtn_cnt; */ 
		/* 	getData4DAC(dac_buff, g_pbtn_cnt); */
		/* } */
			
		/* serviceIRQA(); */	
	}
}

void getData4DAC(uint16_t * dac_buff, uint8_t pb)
{
	uint16_t n;
	float y, t =0;
	
	for(n=0;n<(DAC_BUFF_SIZE);n++)
	{
		if(pb == 0x00)
		{// sine wave
			y = 0.3*sinf(2*PI*1000*t)+0.5;
		}
		else if(pb == 0x01)
		{// linear combination of sine waves
			y = 0.2*sinf(2*PI*150*t)+0.5 +0.3*sinf(2*PI*4000*t);
		}
		else if(pb == 0x02)
		{// triangle wave
			if(t<(T1))
			{
				y = t/(T1) + 1;
			}
			else if(t<(T2))
			{
				y = -2*(t-(T1))/((T2)-(T1)) + 2;
			}
			else if(t<(T3))
			{
				y = (t-(T2))/((T3) - (T2));
			}
			else
			{
				t = 0;
				y = t/(T1) + 1;
			}
			y = y/3;
		}
		else if(pb == 0x03)
		{// square wave
			if(t<T1)
			{
				y = 0.5;
			}
			else if(t<T2)
			{
				y = 0;
			}
			else
			{
				t = 0;
				y = 0.5;
			}	
		}
		
		if(y*4094 > 4095)
			dac_buff[n] = 4095;
		else
			dac_buff[n] = (uint16_t)(y*4094);
		
		t = t + 1e-4;
	}
}

void serviceIRQA(void)
{
	switch(g_gpioa_irq_state)
	{
		case(IRQ_IDLE):
		{
			break;
		}
		case(IRQ_DETECTED):
		{
			g_pbtn_cnt++;
			if(g_pbtn_cnt >= 4)
				g_pbtn_cnt = 0;
				
			g_gpioa_irq_state = (IRQ_WAIT4LOW); 
			break;
		}
		case(IRQ_WAIT4LOW):
		{
			if((GPIOA->IDR & 0x0001) == 0x0000)
			{
				g_gpioa_irq_state = (IRQ_DEBOUNCE);
				g_irq_timer = getSYSTIM(); 
			}
			break;
		}
		case(IRQ_DEBOUNCE):
		{
			if(chk4TimeoutSYSTIM(g_irq_timer, 50) == (SYSTIM_TIMEOUT))
			{
				g_gpioa_irq_state = (IRQ_IDLE); 
			}
		}
		default:
		{
			break;
		}
	}
}

void EXTI0_IRQHandler(void)
{
	if((EXTI->PR & EXTI_PR_PR0) == EXTI_PR_PR0)							// EXTI_Line0 interrupt pending?
	{
		if(g_gpioa_irq_state == (IRQ_IDLE))
		{
			g_gpioa_irq_state = (IRQ_DETECTED);
		}
		EXTI->PR = EXTI_PR_PR0;											// clear EXTI_Line0 interrupt flag
	}
}


