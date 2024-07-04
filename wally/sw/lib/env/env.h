#ifndef BME680_SENSOR_H
#define BME680_SENSOR_H

#include <Adafruit_Sensor.h>
#include <Adafruit_BME680.h>
#include <Wire.h>
#include <bme68xLibrary.h>


class env {
public:
    env();
    bool begin(uint8_t addr = 0x77, TwoWire &i2c = Wire);
    bool read(float &temperature, float &humidity, float &pressure, float &gas);

private:
    Bme68x bme;
    // uint8_t _addr;
};

#endif // BME680_SENSOR_H