/*
 * gui.c
 *
 * Created: 2/22/2020 8:04:35 PM
  */ 

//dump the full help screen to the terminal
/*void print_home()
{
	
}*/

#include "asf.h"
#include "stdio_serial.h"
#include "conf_uart_serial.h"
#include "string.h"

void debug_loop(void)
{
	/*gpio_set_pin_level(PB06,false);

	// Set pin direction to output
	gpio_set_pin_direction(PB06, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(PB06, GPIO_PIN_FUNCTION_OFF);
	while(true)
	{
		gpio_set_pin_level(PB06,false);
		delay_ms(1000);
		gpio_set_pin_level(PB06,true);
		delay_ms(1000);
	}*/
	port_pin_set_output_level(LED0_PIN, LED0_ACTIVE);
	delay_ms(1000);
	port_pin_set_output_level(LED0_PIN, LED0_INACTIVE);
	delay_ms(1000);
	//list available sercom
	/*const int buff_length=64;
	char buff[buff_length];
	sprintf(buff,"Buffer length: %s%i\r\n","x",buff_length-1);
	printf(buff);
	printf("DONE\r\n");*/
}

void print_home(void)
{
	printf("-- Help Menu --\r\n");
	printf("Note: Terminate user commands with new line character\r\n");
	printf("h - Print this menu\r\n");
	printf("a - Information about this device\r\n");
	//what is this device, where more info can be found
	printf("i - I2C command\r\n"); //followup on read/write, [SERCOM], address, value
	printf("q - Return to main menu at any time\r\n");
	printf("\r\n");
}

void print_about(void)
{
	printf("-- About --\r\n");
	printf("Project: \r\n");
	printf("Version: 1.0.0\r\n");
	printf("Author: \r\n");
	printf("Date: \r\n");
	printf("More Info: \r\n");
	printf("Hardware:\r\n");
	printf("  Microprocessor: SAML21J18B\r\n");
	printf("  PMIC/LDO: BQ25155\r\n");
	printf("  Accelerometer: H3LIS200DLTR\r\n");
	printf("  Screen: VI-321-DP-RC-S\r\n");
	printf("  Battery: 502535 400mAh (Sparkfun/13851)\r\n");
	printf("\r\n");
}

//return true if user input is 'q'
bool prompt_response(char* prompt,char* response,int response_length)
{
	char temp[8];
	printf(prompt);
	sprintf(temp,"%%%is",response_length-1); // parameterized "%63s"
	scanf(temp,response);
	printf("%s\r\n",response);
	return response[0]=='q' || response[0]=='\0';
}

void prompt_menu(void)
{//pass in user prompt
	//no user input: print help menu
	//max characters to read (buffer overflow), timeout
	const int buff_length=64;
	char buff[buff_length];
	bool is_error=false;
	do{
		if(prompt_response("Main menu >> user input [h/q]: ",buff,buff_length)) return;
		switch(buff[0])
		{
			case 'h': print_home(); break;
			case 'h': print_about(); break;
			case 'i':
			{
				bool is_write=false;
				bool is_read=false;
				do{
					if(prompt_response("I2C >> Is read or write? [r/w/q]: ",buff,buff_length)) break;
					is_write=buff[0]=='w';
					is_read=buff[0]=='r';
					unsigned char write_str[]="write";
					if(is_read) strncpy(write_str, "read", sizeof(write_str));
					if(is_write||is_read)
					{
						printf("%s\r\n",write_str);
					}else printf("Invalid user input\r\n");
				}while(!is_write&&!is_read);
			} break;
			default:
				is_error=true;
			break;
		}
		if(is_error) printf("Invalid user input\r\n");
	}while(is_error);
//	char temp[8];
	/*buff[0]='a';
	buff[1]='b';
	buff[2]='c';
	buff[3]='\0';*/
//	printf("User input: ");
//	sprintf(temp,"%%%is",buff_length-1); // parameterized "%63s"
//	scanf(temp,buff);
	//gets(buff);
	//"User input: %s\r\n"
	//snprintf(buff,buff_length);
//	printf("%s\r\n",buff);
	/*switch(buff[0])
	{
		case 'h': print_home(); break;
		
	}*/
}
