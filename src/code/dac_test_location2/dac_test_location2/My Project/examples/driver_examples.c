/*
 * Code generated from Atmel Start.
 *
 * This file will be overwritten when reconfiguring your Atmel Start project.
 * Please copy examples or other code you want to keep to a separate file
 * to avoid losing it when reconfiguring.
 */

#include "driver_examples.h"
#include "driver_init.h"
#include "utils.h"

/**
 * Example of using DAC_0 to generate waveform.
 */
void DAC_0_example(void)
{
	uint16_t i = 0;

	dac_sync_enable_channel(&DAC_0, 0);

	for (;;) {
		dac_sync_write(&DAC_0, 0, &i, 1);
		i = (i + 1) % (1024*4); //1V max?  data/4016 * VREF (using internal band gap reference), ref 44.6.2.4.  assert(DAC VREF < VDDANA), ref44.6.4
		delay_ms(10); //1024 = 0.24V.   PA02
	}
}
