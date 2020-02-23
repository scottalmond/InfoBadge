#include <atmel_start.h>

int main(void)
{
	/* Initializes MCU, drivers and middleware */
	atmel_start_init();

	/* Replace with your application code */
	setup();
	while(true) loop();
}

void setup()
{
	
}

void loop(){
	DAC_0_example(); //PA02 (?)
}
