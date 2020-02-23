/* Auto-generated config file peripheral_clk_config.h */
#ifndef PERIPHERAL_CLK_CONFIG_H
#define PERIPHERAL_CLK_CONFIG_H

// <<< Use Configuration Wizard in Context Menu >>>

/**
 * \def CONF_CPU_FREQUENCY
 * \brief CPU's Clock frequency
 */
#ifndef CONF_CPU_FREQUENCY
#define CONF_CPU_FREQUENCY 4000000
#endif

// <y> DAC Clock Source

// <GCLK_PCHCTRL_GEN_GCLK0_Val"> Generic clock generator 0

// <GCLK_PCHCTRL_GEN_GCLK1_Val"> Generic clock generator 1

// <GCLK_PCHCTRL_GEN_GCLK2_Val"> Generic clock generator 2

// <GCLK_PCHCTRL_GEN_GCLK3_Val"> Generic clock generator 3

// <GCLK_PCHCTRL_GEN_GCLK4_Val"> Generic clock generator 4

// <GCLK_PCHCTRL_GEN_GCLK5_Val"> Generic clock generator 5

// <GCLK_PCHCTRL_GEN_GCLK6_Val"> Generic clock generator 6

// <GCLK_PCHCTRL_GEN_GCLK7_Val"> Generic clock generator 7

// <id> dac_gclk_selection
// <i> Select the clock source for DAC.
#ifndef CONF_GCLK_DAC_SRC
#define CONF_GCLK_DAC_SRC GCLK_PCHCTRL_GEN_GCLK0_Val
#endif

/**
 * \def CONF_GCLK_DAC_FREQUENCY
 * \brief DAC's Clock frequency
 */
#ifndef CONF_GCLK_DAC_FREQUENCY
#define CONF_GCLK_DAC_FREQUENCY 4000000
#endif

// <<< end of configuration section >>>

#endif // PERIPHERAL_CLK_CONFIG_H
