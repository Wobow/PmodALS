#include "xparameters.h"
#include "xil_types.h"
#include "xil_io.h"
#include "PmodALS.h"
#include <stdio.h>
#include "xil_cache.h"
#include "xgpio.h"
#include "xparameters.h"
#include "xstatus.h"
#include <math.h>

#define LED_CHANNEL 1
#define GPIO_DEVICE_ID XPAR_AXI_GPIO_0_DEVICE_ID

int DemoInitialize();
void DemoRun();

PmodALS ALS;
XGpio Gpio;

int main(void)
{
	Xil_ICacheEnable();

	if (DemoInitialize() == XST_SUCCESS)
		DemoRun();
	else
		xil_printf("Initialization failed");
	return 0;
}

int DemoInitialize()
{
	int status;

	status = XGpio_Initialize(&Gpio, GPIO_DEVICE_ID);
	if (status != XST_SUCCESS)
		return XST_FAILURE;

	XGpio_SetDataDirection(&Gpio, LED_CHANNEL, 0x00);

	ALS_begin(&ALS, XPAR_PMODALS_0_AXI_LITE_SPI_BASEADDR);
	return XST_SUCCESS;

}


void DemoRun()
{
	int light=0;
	int led;
	while (1){
		light = ALS_read(&ALS);
		xil_printf("Light = %d\n\r", light);

		led = pow(2, light / 15) - 1;
		XGpio_DiscreteWrite(&Gpio, LED_CHANNEL, led);
	}
}