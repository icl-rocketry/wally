/*
 ******************************************************************************
 * @file    read_data_polling.c
 * @author  Sensors Software Solution Team
 * @brief   This file shows how to get data from sensor.
 *
 ******************************************************************************
 * @attention
 *
 * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
 * All rights reserved.</center></h2>
 *
 * This software component is licensed by ST under BSD 3-Clause license,
 * the "License"; You may not use this file except in compliance with the
 * License. You may obtain a copy of the License at:
 *                        opensource.org/licenses/BSD-3-Clause
 *
 ******************************************************************************
 */
/*
 * This example was developed using the following STMicroelectronics
 * evaluation boards:
 *
 * - STEVAL_MKI109V3 +
 * - NUCLEO_F411RE +
 * - DISCOVERY_SPC584B +
 *
 * Used interfaces:
 *
 * STEVAL_MKI109V3    - Host side:   USB (Virtual COM)
 *                    - Sensor side: SPI(Default) / I2C(supported)
 *
 * NUCLEO_STM32F411RE - Host side: UART(COM) to USB bridge
 *                    - Sensor side: I2C(Default) / SPI(supported)
 *
 * DISCOVERY_SPC584B  - Host side: UART(COM) to USB bridge
 *                    - Sensor side: I2C(Default) / SPI(supported)
 *
 * If you need to run this example on a different hardware platform a
 * modification of the functions: `platform_write`, `platform_read`,
 * `tx_com` and 'platform_init' is required.
 *
 */
/* STMicroelectronics evaluation boards definition
 *
 * Please uncomment ONLY the evaluation boards in use.
 * If a different hardware is used please comment all
 * following target board and redefine yours.
 */

//#define STEVAL_MKI109V3  /* little endian */
//#define NUCLEO_F411RE    /* little endian */
//#define SPC584B_DIS      /* big endian */

/* ATTENTION: By default the driver is little endian. If you need switch
 *            to big endian please see "Endianness definitions" in the
 *            header file of the driver (_reg.h).
 */

#if defined(STEVAL_MKI109V3)
/* MKI109V3: Define communication interface */
#define SENSOR_BUS hspi2
/* MKI109V3: Vdd and Vddio power supply values */
#define PWM_3V3 915

#elif defined(NUCLEO_F411RE)
/* NUCLEO_F411RE: Define communication interface */
#define SENSOR_BUS hi2c1

#elif defined(SPC584B_DIS)
/* DISCOVERY_SPC584B: Define communication interface */
#define SENSOR_BUS I2CD1

// OUR OWN COMMUNICATION
// #define SENSOR_BUS hi2c2
#endif

/* Includes ------------------------------------------------------------------*/
#include <string.h>
#include <stdio.h>
#include "lsm6dsv32x_reg.h"

#if defined(NUCLEO_F411RE)
#include "stm32f4xx_hal.h"
#include "usart.h"
#include "gpio.h"
#include "i2c.h"

#elif defined(STEVAL_MKI109V3)
#include "stm32f4xx_hal.h"
#include "usbd_cdc_if.h"
#include "gpio.h"
#include "spi.h"
#include "tim.h"

#elif defined(SPC584B_DIS)
#include "components.h"
#endif

#include<Arduino.h>
#include <Wire.h>
#include <SPI.h>

/* Private macro -------------------------------------------------------------*/
#define    BOOT_TIME            10 //ms

/* Private variables ---------------------------------------------------------*/
static int16_t data_raw_acceleration[3];
static int16_t data_raw_angular_rate[3];
static int16_t data_raw_temperature;
static float acceleration_mg[3];
static float angular_rate_mdps[3];
static float temperature_degC;
static uint8_t whoamI;
static uint8_t tx_buffer[1000];
// Store raw sensor data, converted values and a buffer for transmitting data. 

/* Extern variables ----------------------------------------------------------*/

/* Private functions ---------------------------------------------------------*/
#define I2C_ADDRESS 0x68  // Example I2C address for the sensor

static int32_t platform_write(void *handle, uint8_t reg, const uint8_t *bufp, uint16_t len) {
    Wire.beginTransmission(I2C_ADDRESS);
    Wire.write(reg);
    Wire.write(bufp, len);
    return Wire.endTransmission() == 0 ? 0 : -1; // 0 on success, -1 on error
}
static int32_t platform_read(void *handle, uint8_t reg, uint8_t *bufp, uint16_t len) {
    Wire.beginTransmission(I2C_ADDRESS);
    Wire.write(reg);
    if (Wire.endTransmission(false) != 0) {
        return -1; // Error
    }
    Wire.requestFrom(I2C_ADDRESS, len);
    for (uint16_t i = 0; i < len; i++) {
        bufp[i] = Wire.read();
    }
    return 0;
}
static void platform_init(void) {
    Wire.begin(); // Initialize I2C
    Serial.begin(115200); // Initialize Serial for communication
}
static void tx_com(uint8_t *tx_buffer, uint16_t len) {
    Serial.write(tx_buffer, len);
}
static void platform_delay(uint32_t ms) {
    delay(ms);
}

/* Main Example --------------------------------------------------------------*/
void lsm6dsv32x_read_data_polling(void)
{
  lsm6dsv32x_filt_settling_mask_t filt_settling_mask;
  lsm6dsv32x_data_ready_t drdy;
  lsm6dsv32x_reset_t rst;
  stmdev_ctx_t dev_ctx;
  /* Initialize mems driver interface */
  dev_ctx.write_reg = platform_write;
  dev_ctx.read_reg = platform_read;
  dev_ctx.handle = nullptr; // will be solved once the driver is decided.

  /* Init test platform */
  platform_init();
  /* Wait sensor boot time */
  platform_delay(BOOT_TIME);
  /* Check device ID */
  lsm6dsv32x_device_id_get(&dev_ctx, &whoamI);

  if (whoamI != LSM6DSV32X_ID)
    while (1);

  /* Restore default configuration */
  lsm6dsv32x_reset_set(&dev_ctx, LSM6DSV32X_RESTORE_CTRL_REGS);
  do {
    lsm6dsv32x_reset_get(&dev_ctx, &rst);
  } while (rst != LSM6DSV32X_READY);

  /* Enable Block Data Update */
  lsm6dsv32x_block_data_update_set(&dev_ctx, PROPERTY_ENABLE);
  /* Set Output Data Rate.
   * Selected data rate have to be equal or greater with respect
   * with MLC data rate.
   */
  lsm6dsv32x_xl_data_rate_set(&dev_ctx, LSM6DSV32X_ODR_AT_7Hz5);
  lsm6dsv32x_gy_data_rate_set(&dev_ctx, LSM6DSV32X_ODR_AT_15Hz);
  /* Set full scale */
  lsm6dsv32x_xl_full_scale_set(&dev_ctx, LSM6DSV32X_4g);
  lsm6dsv32x_gy_full_scale_set(&dev_ctx, LSM6DSV32X_2000dps);
  /* Configure filtering chain */
  filt_settling_mask.drdy = PROPERTY_ENABLE;
  filt_settling_mask.irq_xl = PROPERTY_ENABLE;
  filt_settling_mask.irq_g = PROPERTY_ENABLE;
  lsm6dsv32x_filt_settling_mask_set(&dev_ctx, filt_settling_mask);
  lsm6dsv32x_filt_gy_lp1_set(&dev_ctx, PROPERTY_ENABLE);
  lsm6dsv32x_filt_gy_lp1_bandwidth_set(&dev_ctx, LSM6DSV32X_GY_ULTRA_LIGHT);
  lsm6dsv32x_filt_xl_lp2_set(&dev_ctx, PROPERTY_ENABLE);
  lsm6dsv32x_filt_xl_lp2_bandwidth_set(&dev_ctx, LSM6DSV32X_XL_STRONG);

  /* Read samples in polling mode (no int) */
  while (1) {
    /* Read output only if new xl value is available */
    lsm6dsv32x_flag_data_ready_get(&dev_ctx, &drdy);

    if (drdy.drdy_xl) {
      /* Read acceleration field data */
      memset(data_raw_acceleration, 0x00, 3 * sizeof(int16_t));
      lsm6dsv32x_acceleration_raw_get(&dev_ctx, data_raw_acceleration);
      acceleration_mg[0] =
        lsm6dsv32x_from_fs4_to_mg(data_raw_acceleration[0]);
      acceleration_mg[1] =
        lsm6dsv32x_from_fs4_to_mg(data_raw_acceleration[1]);
      acceleration_mg[2] =
        lsm6dsv32x_from_fs4_to_mg(data_raw_acceleration[2]);
      sprintf((char *)tx_buffer,
              "Acceleration [mg]:%4.2f\t%4.2f\t%4.2f\r\n",
              acceleration_mg[0], acceleration_mg[1], acceleration_mg[2]);
      tx_com(tx_buffer, strlen((char const *)tx_buffer));
    }

    if (drdy.drdy_gy) {
      /* Read angular rate field data */
      memset(data_raw_angular_rate, 0x00, 3 * sizeof(int16_t));
      lsm6dsv32x_angular_rate_raw_get(&dev_ctx, data_raw_angular_rate);
      angular_rate_mdps[0] =
        lsm6dsv32x_from_fs2000_to_mdps(data_raw_angular_rate[0]);
      angular_rate_mdps[1] =
        lsm6dsv32x_from_fs2000_to_mdps(data_raw_angular_rate[1]);
      angular_rate_mdps[2] =
        lsm6dsv32x_from_fs2000_to_mdps(data_raw_angular_rate[2]);
      sprintf((char *)tx_buffer,
              "Angular rate [mdps]:%4.2f\t%4.2f\t%4.2f\r\n",
              angular_rate_mdps[0], angular_rate_mdps[1], angular_rate_mdps[2]);
      tx_com(tx_buffer, strlen((char const *)tx_buffer));
    }

    if (drdy.drdy_temp) {
      /* Read temperature data */
      memset(&data_raw_temperature, 0x00, sizeof(int16_t));
      lsm6dsv32x_temperature_raw_get(&dev_ctx, &data_raw_temperature);
      temperature_degC = lsm6dsv32x_from_lsb_to_celsius(
                           data_raw_temperature);
      sprintf((char *)tx_buffer,
              "Temperature [degC]:%6.2f\r\n", temperature_degC);
      tx_com(tx_buffer, strlen((char const *)tx_buffer));
    }
  }
}

/*
static int32_t platform_write(void *handle, uint8_t reg, const uint8_t *bufp,
                              uint16_t len)
{
#if defined(NUCLEO_F411RE)
  HAL_I2C_Mem_Write(handle, LSM6DSV32X_I2C_ADD_L, reg,
                    I2C_MEMADD_SIZE_8BIT, (uint8_t*) bufp, len, 1000);
#elif defined(STEVAL_MKI109V3)
  HAL_GPIO_WritePin(CS_up_GPIO_Port, CS_up_Pin, GPIO_PIN_RESET);
  HAL_SPI_Transmit(handle, &reg, 1, 1000);
  HAL_SPI_Transmit(handle, (uint8_t*) bufp, len, 1000);
  HAL_GPIO_WritePin(CS_up_GPIO_Port, CS_up_Pin, GPIO_PIN_SET);
#elif defined(SPC584B_DIS)
  i2c_lld_write(handle,  LSM6DSV32X_I2C_ADD_L & 0xFE, reg, (uint8_t*) bufp, len);
#endif
  return 0;
}

/*
 * @brief  Read generic device register (platform dependent)
 *
 * @param  handle    customizable argument. In this examples is used in
 *                   order to select the correct sensor bus handler.
 * @param  reg       register to read
 * @param  bufp      pointer to buffer that store the data read
 * @param  len       number of consecutive register to read
 *
 */
/*static int32_t platform_read(void *handle, uint8_t reg, uint8_t *bufp,
                             uint16_t len)
{
#if defined(NUCLEO_F411RE)
  HAL_I2C_Mem_Read(handle, LSM6DSV32X_I2C_ADD_L, reg,
                   I2C_MEMADD_SIZE_8BIT, bufp, len, 1000);
#elif defined(STEVAL_MKI109V3)
  reg |= 0x80;
  HAL_GPIO_WritePin(CS_up_GPIO_Port, CS_up_Pin, GPIO_PIN_RESET);
  HAL_SPI_Transmit(handle, &reg, 1, 1000);
  HAL_SPI_Receive(handle, bufp, len, 1000);
  HAL_GPIO_WritePin(CS_up_GPIO_Port, CS_up_Pin, GPIO_PIN_SET);
#elif defined(SPC584B_DIS)
  i2c_lld_read(handle, LSM6DSV32X_I2C_ADD_L & 0xFE, reg, bufp, len);
#endif
  return 0;
}

static void tx_com(uint8_t *tx_buffer, uint16_t len)
{
#if defined(NUCLEO_F411RE)
  HAL_UART_Transmit(&huart2, tx_buffer, len, 1000);
#elif defined(STEVAL_MKI109V3)
  CDC_Transmit_FS(tx_buffer, len);
#elif defined(SPC584B_DIS)
  sd_lld_write(&SD2, tx_buffer, len);
#endif
}

static void platform_delay(uint32_t ms)
{
#if defined(NUCLEO_F411RE) | defined(STEVAL_MKI109V3)
  HAL_Delay(ms);
#elif defined(SPC584B_DIS)
  osalThreadDelayMilliseconds(ms);
#endif
}

static void platform_init(void)
{
#if defined(STEVAL_MKI109V3)
  TIM3->CCR1 = PWM_3V3;
  TIM3->CCR2 = PWM_3V3;
  HAL_TIM_PWM_Start(&htim3, TIM_CHANNEL_1);
  HAL_TIM_PWM_Start(&htim3, TIM_CHANNEL_2);
  HAL_Delay(1000);
#endif
} */
