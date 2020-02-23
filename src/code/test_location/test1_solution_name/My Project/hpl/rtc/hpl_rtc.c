
/**
 * \file
 *
 * \brief RTC Driver
 *
 * Copyright (c) 2014-2018 Microchip Technology Inc. and its subsidiaries.
 *
 * \asf_license_start
 *
 * \page License
 *
 * Subject to your compliance with these terms, you may use Microchip
 * software and any derivatives exclusively with Microchip products.
 * It is your responsibility to comply with third party license terms applicable
 * to your use of third party software (including open source software) that
 * may accompany Microchip software.
 *
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES,
 * WHETHER EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE,
 * INCLUDING ANY IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY,
 * AND FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT WILL MICROCHIP BE
 * LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, INCIDENTAL OR CONSEQUENTIAL
 * LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND WHATSOEVER RELATED TO THE
 * SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS BEEN ADVISED OF THE
 * POSSIBILITY OR THE DAMAGES ARE FORESEEABLE.  TO THE FULLEST EXTENT
 * ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN ANY WAY
 * RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
 * THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *
 * \asf_license_stop
 *
 */

#include <hpl_calendar.h>
#include <utils_assert.h>
#include <hpl_rtc_config.h>

/*!< Pointer to hpl device */
static struct calendar_dev *_rtc_dev = NULL;

/**
 * \brief Initializes the RTC module with given configurations.
 */
int32_t _calendar_init(struct calendar_dev *const dev)
{
	ASSERT(dev && dev->hw);

	_rtc_dev = dev;

	hri_rtcmode0_wait_for_sync(dev->hw, RTC_MODE0_SYNCBUSY_SWRST);
	if (hri_rtcmode0_get_CTRLA_ENABLE_bit(dev->hw)) {
#if !CONF_RTC_INIT_RESET
		return ERR_DENIED;
#else
		hri_rtcmode0_clear_CTRLA_ENABLE_bit(dev->hw);
		hri_rtcmode0_wait_for_sync(dev->hw, RTC_MODE0_SYNCBUSY_ENABLE);
#endif
	}
	hri_rtcmode0_set_CTRLA_SWRST_bit(dev->hw);
	hri_rtcmode0_wait_for_sync(dev->hw, RTC_MODE0_SYNCBUSY_SWRST);

#if CONF_RTC_EVENT_CONTROL_ENABLE == 1
	hri_rtcmode0_write_EVCTRL_reg(
	    dev->hw,
	    (CONF_RTC_PEREO0 << RTC_MODE0_EVCTRL_PEREO0_Pos) | (CONF_RTC_PEREO1 << RTC_MODE0_EVCTRL_PEREO1_Pos)
	        | (CONF_RTC_PEREO2 << RTC_MODE0_EVCTRL_PEREO2_Pos) | (CONF_RTC_PEREO3 << RTC_MODE0_EVCTRL_PEREO3_Pos)
	        | (CONF_RTC_PEREO4 << RTC_MODE0_EVCTRL_PEREO4_Pos) | (CONF_RTC_PEREO5 << RTC_MODE0_EVCTRL_PEREO5_Pos)
	        | (CONF_RTC_PEREO6 << RTC_MODE0_EVCTRL_PEREO6_Pos) | (CONF_RTC_PEREO7 << RTC_MODE0_EVCTRL_PEREO7_Pos)
	        | (CONF_RTC_COMPE0 << RTC_MODE0_EVCTRL_CMPEO_Pos) | (CONF_RTC_OVFEO << RTC_MODE0_EVCTRL_OVFEO_Pos));
#endif

	hri_rtcmode0_write_CTRLA_reg(dev->hw, RTC_MODE0_CTRLA_PRESCALER(CONF_RTC_PRESCALER) | RTC_MODE0_CTRLA_COUNTSYNC);

	return ERR_NONE;
}

/**
 * \brief Deinit the RTC module
 */
int32_t _calendar_deinit(struct calendar_dev *const dev)
{
	ASSERT(dev && dev->hw);

	NVIC_DisableIRQ(RTC_IRQn);
	dev->callback = NULL;

	hri_rtcmode0_clear_CTRLA_ENABLE_bit(dev->hw);
	hri_rtcmode0_set_CTRLA_SWRST_bit(dev->hw);

	return ERR_NONE;
}

/**
 * \brief Enable the RTC module
 */
int32_t _calendar_enable(struct calendar_dev *const dev)
{
	ASSERT(dev && dev->hw);

	hri_rtcmode0_set_CTRLA_ENABLE_bit(dev->hw);

	return ERR_NONE;
}

/**
 * \brief Disable the RTC module
 */
int32_t _calendar_disable(struct calendar_dev *const dev)
{
	ASSERT(dev && dev->hw);

	hri_rtcmode0_clear_CTRLA_ENABLE_bit(dev->hw);

	return ERR_NONE;
}

/**
 * \brief Set the current calendar time to desired time.
 */
int32_t _calendar_set_counter(struct calendar_dev *const dev, const uint32_t counter)
{
	ASSERT(dev && dev->hw);

	hri_rtcmode0_write_COUNT_reg(dev->hw, counter);

	return ERR_NONE;
}

/**
 * \brief Get current counter
 */
uint32_t _calendar_get_counter(struct calendar_dev *const dev)
{
	ASSERT(dev && dev->hw);

	return hri_rtcmode0_read_COUNT_reg(dev->hw);
}

/**
 * \brief Set the compare for the specified value.
 */
int32_t _calendar_set_comp(struct calendar_dev *const dev, const uint32_t comp)
{
	ASSERT(dev && dev->hw);

	hri_rtcmode0_write_COMP_reg(dev->hw, 0, comp);

	return ERR_NONE;
}

/**
 * \brief Get the compare value
 */
uint32_t _calendar_get_comp(struct calendar_dev *const dev)
{
	ASSERT(dev && dev->hw);

	return hri_rtcmode0_read_COMP_reg(dev->hw, 0);
}

/**
 * \brief Registers callback for the specified callback type
 */
int32_t _calendar_register_callback(struct calendar_dev *const dev, calendar_drv_cb_alarm_t callback)
{
	ASSERT(dev && dev->hw);

	/* Check callback */
	if (callback != NULL) {
		/* register the callback */
		dev->callback = callback;

		/* enable RTC_IRQn */
		NVIC_ClearPendingIRQ(RTC_IRQn);
		NVIC_EnableIRQ(RTC_IRQn);

		/* enable cmp */
		hri_rtcmode0_set_INTEN_CMP0_bit(dev->hw);
	} else {
		/* disable cmp */
		hri_rtcmode0_clear_INTEN_CMP0_bit(dev->hw);

		/* disable RTC_IRQn */
		NVIC_DisableIRQ(RTC_IRQn);
	}

	return ERR_NONE;
}

/**
 * \brief RTC interrupt handler
 *
 * \param[in] dev The pointer to calendar device struct
 */
static void _rtc_interrupt_handler(struct calendar_dev *dev)
{
	/* Read and mask interrupt flag register */
	uint16_t interrupt_status = hri_rtcmode0_read_INTFLAG_reg(dev->hw);

	if (interrupt_status & RTC_MODE0_INTFLAG_CMP0) {
		dev->callback(dev);

		/* Clear interrupt flag */
		hri_rtcmode0_clear_interrupt_CMP0_bit(dev->hw);
	}
}
/**
 * \brief Set calendar IRQ
 */
void _calendar_set_irq(struct calendar_dev *const dev)
{
	(void)dev;
	NVIC_SetPendingIRQ(RTC_IRQn);
}

/**
 * \brief Rtc interrupt handler
 */
void RTC_Handler(void)
{
	_rtc_interrupt_handler(_rtc_dev);
}
