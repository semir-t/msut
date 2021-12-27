#include "stm32f4xx.h"
#include "delay.h"
#include "usart.h"
#include "math.h"
#include "lis302dl.h"

uint8_t main(void)
{
	int8_t accel_data[3];
	
	initUSART2(USART2_BAUDRATE_921600);
	printUSART2("\n\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");
	printUSART2("w LIS302 demo");
	printUSART2("\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");
	
	initLIS302DL();
	delay_ms(2000);
	
	while(1)
	{
		getDataLIS302DL(accel_data);
		printUSART2("-> LIS302: \tx[%d] \ty[%d] \tz[%d]\n",accel_data[0], accel_data[1], accel_data[2]);
		
		float ax = (float)accel_data[0];
		float ay = (float)accel_data[1];
		float az = (float)accel_data[2];
		
		float rho = atanf(ax/sqrt(ay*ay + az*az))*180/3.14;
		float phi = atanf(ay/sqrt(ax*ax + az*az))*180/3.14;
		float theta = atanf(sqrt(ay*ay + ax*ax)/az)*180/3.14;
		
		
		printUSART2("-> LIS302: \tx[%f] \ty[%f] \tz[%f]\n",rho, phi, theta);
		
		delay_ms(1000);
	}
	
	return 0;
}

