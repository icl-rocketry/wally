#include "env.h"

env::env() {}

bool env::begin(uint8_t addr, TwoWire &i2c) {
    
    bme68x_delay_us_fptr_t idleTask;

    bme.begin(addr, i2c);

    if(bme.checkStatus())
	{
		if (bme.checkStatus() == BME68X_ERROR)
		{
			Serial.println("Sensor error:" + bme.statusString());
			return false;
		}
		else if (bme.checkStatus() == BME68X_WARNING)
		{
			Serial.println("Sensor Warning:" + bme.statusString());
		}
	}
	
	/* Set the default configuration for temperature, pressure and humidity */
	bme.setTPH();

    bme.setHeaterProf(300, 100);

    return true;
}

bool env::read(float &temperature, float &humidity, float &pressure, float &gas) {
    bme68xData data;

	bme.setOpMode(BME68X_FORCED_MODE);
	delayMicroseconds(bme.getMeasDur());

	if (bme.fetchData())
	{
		bme.getData(data);
			
        temperature = data.temperature;
        humidity = data.humidity;
        pressure = data.pressure;
        gas = data.gas_resistance;
    }
    return true;

}