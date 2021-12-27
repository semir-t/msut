#include "stm32f4xx.h"
#include "dac.h"
#include "usart.h"
#include "delay.h"
#include "math.h"
#include "adc.h"
#include "fir.h"

#define IRQ_IDLE			0
#define IRQ_DETECTED		1
#define IRQ_WAIT4LOW		2
#define IRQ_DEBOUNCE		3
#define ADC_BUFF_SIZE			(DAC_BUFF_SIZE)
volatile uint8_t g_gpioa_irq_state = (IRQ_IDLE);
volatile uint32_t g_irq_timer = 0;

volatile uint8_t g_pbtn_cnt = 0;

#define PI 					3.14159
#define DAC_BUFF_SIZE		1000
#define T1 					1e-3
#define T2 					3e-3
#define T3 					4e-3

void getData4DAC(uint16_t * dac_buff, uint8_t pb);
void serviceIRQA(void);

int main(void)
{
	uint16_t utmp16;
	uint8_t c, t_pbtn_cnt = g_pbtn_cnt;
	uint32_t utmp32, disp_timer, k = 0;
	uint16_t dac_buff[DAC_BUFF_SIZE];
	uint16_t adc_buff0[ADC_BUFF_SIZE];
	uint16_t adc_buff1[ADC_BUFF_SIZE];
	
	
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
	GPIOA->MODER &= ~0x00000003;  										// 
	
	RCC->APB2ENR |= RCC_APB2ENR_SYSCFGEN;								// 
	SYSCFG->EXTICR[0] = SYSCFG_EXTICR1_EXTI0_PA;						// 
	EXTI->IMR = EXTI_IMR_MR0;											
	EXTI->EMR &= ~EXTI_EMR_MR0;											
	EXTI->RTSR = EXTI_RTSR_TR0;	
	EXTI->FTSR = 0x00000000;	
	NVIC_EnableIRQ(EXTI0_IRQn);
	
	initUSART2(USART2_BAUDRATE_921600);
	
	initDmaADC1(adc_buff0, adc_buff1, ADC_BUFF_SIZE);					// init ADC1 in double buffer DMA mode
	getData4DAC(dac_buff, g_pbtn_cnt);
	initDmaDAC1(dac_buff, DAC_BUFF_SIZE);
	
	initSYSTIM();

	float * fir_coeff = lpcoeff;
	/* float * fir_coeff = hpcoeff; */
	float fout[ADC_BUFF_SIZE];
	float fin[ADC_BUFF_SIZE], ftmp;
	uint32_t m = 0;
	int16_t fir_data[ADC_BUFF_SIZE];
	uint32_t n = ADC_BUFF_SIZE/2;
	while(1)
	{
		c = getcharUSART2();
		if((DMA2_Stream0->CR & DMA_SxCR_CT) == DMA_SxCR_CT)
    	{// we can read buffer 0
			for(k=0;k<(n+FIR_N);k++)
			{
				if((k>=((FIR_N)/2))&&(k<((FIR_N)/2 + n)))
				{
					fin[k] = 3.0 * ((float)adc_buff0[k])/4095;

				}
				else
				{
					fin[k] = 0;

				}

			}

			for(k=0;k<n;k++)
			{
				ftmp = 0;
				for(m=0;m<(FIR_N);m++)
				{
					ftmp += fir_coeff[m]*fin[k+m];
				}

				fir_data[k] = (int16_t)(ftmp*4095/3.0);
			}

			for(k=0;k<((ADC_BUFF_SIZE)/2);k++)
			{
				utmp16 = adc_buff0[k];
				putcharUSART2((utmp16&0xFF00)>>8);
				putcharUSART2(utmp16&0x00FF);
			}
			for(k = 0;k<n;k++)
			{
				uint16_t utmp16 = fir_data[k];
				putcharUSART2((utmp16&0xFF00)>>8);
				putcharUSART2(utmp16&0x00FF);
			}
		}
		else
		{// we can read buffer 1
			for(k=0;k<(n+FIR_N);k++)
			{
				if((k>=((FIR_N)/2))&&(k<((FIR_N)/2 + n)))
				{
					fin[k] = 3.0 * ((float)adc_buff1[k])/4095;

				}
				else
				{
					fin[k] = 0;

				}

			}

			for(k=0;k<n;k++)
			{
				ftmp = 0;
				for(m=0;m<(FIR_N);m++)
				{
					ftmp += fir_coeff[m]*fin[k+m];
				}
				fir_data[k] = (int16_t)(ftmp*4095/3.0);

			}

			for(k=0;k<((ADC_BUFF_SIZE)/2);k++)
			{
				utmp16 = adc_buff1[k];
				putcharUSART2((utmp16&0xFF00)>>8);
				putcharUSART2(utmp16&0x00FF);
			}

			for(k = 0;k<n;k++)
			{
				uint16_t utmp16 = fir_data[k];
				putcharUSART2((utmp16&0xFF00)>>8);
				putcharUSART2(utmp16&0x00FF);
			}

		}
	}
}

void getData4DAC(uint16_t * dac_buff, uint8_t pb)
{
	uint16_t n;
	float y, t =0;
	
	for(n=0;n<(DAC_BUFF_SIZE);n++)
	{
		y = 0.2*sinf(2*PI*150*t)+0.5 +0.1*sinf(2*PI*4000*t);
		dac_buff[n] = (uint16_t)(y*4095);
		t = t + 1e-4;
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
