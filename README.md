# Sirius

Sirius is a two stage rocket being designed and built by ICLR's Altitude Record Team (ART). This repository contains the avionics hardware and software for the rocket.

Sirius has multiple avionics systems on board, with a combination of COTS and SRAD boards used for maximum redundancy and functionality. 

COTS components used:
* [Featherweight Blue Raven](https://www.featherweightaltimeters.com/blue-raven-altimeter.html) flight computer (x2)
* [Featherweight GPS Tracker](https://www.featherweightaltimeters.com/featherweight-gps-tracker.html) (sustainer only)
* [Vodafone Curve](https://eshop.v.vodafone.com/uk/curve-gps-tracker) (booster only)

SRAD boards used:
* Pickle [(developed here)](https://github.com/icl-rocketry/Ricardo-PickleRick)
* WALLY
* Lockie
* PDU

This repository is used for the development of WALLY, Lockie, the PDU and various helper boards. 


## WALLY: Wide Area Landing Location sYstem

Wally complements the COTS trackers and the GPS system onboard Pickle to provide an independent method for trajectory reconstruction and telemetry.

It contains the following elements:
* Microcontroller - ESP32-S3
* GPS - SIM7600G
* LTE - SIM7600G
* RTC - DS3231
* 868MHz LoRa - SX1262
* Barometer - DSP368
* IMU
* Magnetometer
* Storage - Micro SD
