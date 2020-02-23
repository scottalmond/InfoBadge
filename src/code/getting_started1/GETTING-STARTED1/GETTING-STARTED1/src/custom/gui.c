/*
 * gui.c
 *
 * Created: 2/22/2020 8:04:35 PM
  */ 

//dump the full help screen to the terminal
void print_home()
{
	
}

void debug()
{
	gpio_set_pin_level(PB06,false);

	// Set pin direction to output
	gpio_set_pin_direction(PB06, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(PB06, GPIO_PIN_FUNCTION_OFF);
	while(true)
	{
		
	}
}