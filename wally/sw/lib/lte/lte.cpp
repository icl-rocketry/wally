#define TINY_GSM_MODEM_SIM7600
#define TINY_GSM_USE_GPRS true
#define TINY_GSM_USE_WIFI false

#include <Arduino.h>
#include <TinyGsm.h>
#include <TinyGsmClient.h>
#include <ArduinoHttpClient.h>
#include <HardwareSerial.h>
#include <PubSubClient.h>

#include "lte.h"

const char LTE::APN[] = "your_apn";
const char LTE::USER[] = "your_user";
const char LTE::PASS[] = "your_password";
const char LTE::SERVER[] = "your_server_address";
const int LTE::PORT = 80;

HardwareSerial serialAT(2);



LTE::LTE(Stream &serialAT) : modem(serialAT), client(modem), http(client, SERVER, PORT) {}

bool LTE::init() {
    if (!modem.restart()) {
        Serial.println("Failed to restart modem");
        return false;
    }

    serialAT.begin(9600, SERIAL_8N1, RX1, TX1);

    Serial.println("Modem: " + modem.getModemInfo());

    int connectAttempts = 0;
    while (!modem.isNetworkConnected())
    {

        modem.gprsConnect(APN, USER, PASS);
        delay(1000);
        connectAttempts++;
        if (connectAttempts > 10)
        {
            Serial.println("Failed to connect to network");
            break;
        }
    }

    

    // if (!modem.gprsConnect(APN, USER, PASS)) {
    //     Serial.println("Failed to connect to APN");
    //     return false;
    // }

    modem.sendAT("+CGNSPWR=1"); // Power on GPS
    modem.sendAT("+CGNSSEQ=RMC"); // Set NMEA sentence to RMC (recommended minimum)

    return true;
}

void LTE::getGPSLocation(float &gps_lat, float &gps_lon, float &gps_acc, float &gps_speed, float &gps_alt, int &gps_vsat, int &gps_usat) {
    
    modem.getGPS(&gps_lat, &gps_lon, &gps_speed, &gps_alt,
                     &gps_vsat, &gps_usat, &gps_acc, NULL, NULL,
                     NULL, NULL, NULL, NULL);
}

void LTE::getGPSTime(int &gps_hour, int &gps_min, int &gps_sec) {
    
    modem.getGPS(NULL, NULL, NULL, NULL,
                     NULL, NULL, NULL, NULL, NULL,
                     NULL, &gps_hour, &gps_min, &gps_sec);
}

void LTE::getGSMLocation(float &gsm_lat, float &gsm_lon, float &gsm_acc) {
    
    modem.getGsmLocation(&gsm_lat, &gsm_lon, &gsm_acc,
                             NULL, NULL, NULL, NULL,
                             NULL, NULL);
}



