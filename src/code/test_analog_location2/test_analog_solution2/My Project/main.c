#include <atmel_start.h>

int main(void)
{
	/* Initializes MCU, drivers and middleware */
	atmel_start_init();

	test_loop();

	/* Replace with your application code */
	while (1) {
		DAC_0_example();
	}
}

void test_loop()
{
	
	for(int iter=0;iter<5;iter++)
	{
		delay_ms(1000);
		gpio_set_pin_level()
		delay_ms(1000);
		
	}
}
