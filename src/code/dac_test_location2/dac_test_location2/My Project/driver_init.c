/*
 * Code generated from Atmel Start.
 *
 * This file will be overwritten when reconfiguring your Atmel Start project.
 * Please copy examples or other code you want to keep to a separate file
 * to avoid losing it when reconfiguring.
 */

#include "driver_init.h"
#include <peripheral_clk_config.h>
#include <utils.h>
#include <hal_init.h>

struct dac_sync_descriptor DAC_0;

void DAC_0_PORT_init(void)
{

	// Disable digital pin circuitry
	gpio_set_pin_direction(PA02, GPIO_DIRECTION_OFF);

	gpio_set_pin_function(PA02, PINMUX_PA02B_DAC_VOUT0);
}

void DAC_0_CLOCK_init(void)
{

	hri_mclk_set_APBCMASK_DAC_bit(MCLK);
	hri_gclk_write_PCHCTRL_reg(GCLK, DAC_GCLK_ID, CONF_GCLK_DAC_SRC | (1 << GCLK_PCHCTRL_CHEN_Pos));
}

void DAC_0_init(void)
{
	DAC_0_CLOCK_init();
	dac_sync_init(&DAC_0, DAC);
	DAC_0_PORT_init();
}

void system_init(void)
{
	init_mcu();

	DAC_0_init();
}
