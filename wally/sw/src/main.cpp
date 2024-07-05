#include <Arduino.h>
#include <Wire.h>
#include "env.h"
#include "gps.h"
// #include "Adafruit_Sensor.h"
// #include "Adafruit_BME680.h"


float getVoltageRaw();
float getTrueVoltage();

TwoWire i2c0 = TwoWire(0);
TwoWire i2c1 = TwoWire(1);
HardwareSerial uart = HardwareSerial(1);

// Adafruit_BME680 bme(TwoWire *i2c0);
env bme680;
gps gpsModule(uart);

GPSData gpsData;

void setup() {

  Serial.begin(9600);

  // put your setup code here, to run once:
  float supplyVoltage = getTrueVoltage();
  if (supplyVoltage < 3.84) {
    digitalWrite(LED_R, HIGH);
    digitalWrite(LED_Y, LOW);
    digitalWrite(LED_G, LOW);
  }
  else if (supplyVoltage < 4.02) {
    digitalWrite(LED_R, HIGH);
    digitalWrite(LED_Y, HIGH);
    digitalWrite(LED_G, LOW);
  }
  else {
    digitalWrite(LED_R, HIGH);
    digitalWrite(LED_Y, HIGH);
    digitalWrite(LED_G, HIGH);
  }

  

  i2c0.begin(SDA0, SCL0, 400000);
  i2c1.begin(SDA1, SCL1, 100000);
  uart.begin(9600);

  byte error, address;
  int nDevices;

  Serial.println("Scanning...");
  for (address = 1; address < 127; address++) {
    i2c0.beginTransmission(address);
    error = i2c0.endTransmission();
    if (error == 0) {
      Serial.print("I2C device found at address 0x");
      if (address < 16) {
        Serial.print("0");
      }
      Serial.println(address, HEX);
      nDevices++;
    }
    else if (error == 4) {
      Serial.print("Unknown error at address 0x");
      if (address < 16) {
        Serial.print("0");
      }
      Serial.println(address, HEX);
    }
  }

  Serial.println("Done scanning.");
  Serial.println("Supply voltage: " + String(supplyVoltage) + "mV");

  bme680 = env();
  
  if (!bme680.begin(0x77, i2c0)){
        Serial.println("Failed to initialise env sensor");
  }
  else {
    Serial.println("Env sensor initialised successfully");
  }

  // gps gpsModule = gps(uart);
}

void loop() {
  float temperature, humidity, pressure, gas;

  // if (bme680.read(temperature, humidity, pressure, gas)) {
  //       Serial.print("Temperature: ");
  //       Serial.print(temperature);
  //       Serial.println(" °C");

  //       Serial.print("Humidity: ");
  //       Serial.print(humidity);
  //       Serial.println(" %");

  //       Serial.print("Pressure: ");
  //       Serial.print(pressure);
  //       Serial.println(" hPa");

  //       Serial.print("Gas: ");
  //       Serial.print(gas);
  //       Serial.println(" kOhms");
  //   }

    gpsData = gpsModule.getData();

    Serial.print("Latitude: "); Serial.print(gpsData.latitude, 6);
    Serial.print(", Longitude: "); Serial.print(gpsData.longitude, 6);
    Serial.println(", Altitude: "); Serial.print(gpsData.altitude);

  gpsModule.smartDelay(100);
}

// put function definitions here:

float getVoltageRaw() {
  return analogReadMilliVolts(VSENSE);
}

// avoid using this in a loop, it's unnecessarily slow
// we can scale the raw value in post processing
float getTrueVoltage() {
  float raw = getVoltageRaw();
  return (raw * (100 + 20))/20; // voltage divider
}