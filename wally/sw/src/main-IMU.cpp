using namespace std;
#include <Arduino.h>
#include <lsm6dsv32x_reg.h>
#include <lsm6dsv32x_reg.c>
#include <vector>

lsm6dsv32x_reg_t lsm;
int32_t platform_write(void *handle, uint8_t reg, const uint8_t *bufp, uint16_t len)
int32_t platform_read(void *handle, uint8_t reg, uint8_t *bufp, uint16_t len)

void loop() {
  vector<float> rawAccel = lsm.platform_read();
  vector<float> normAccel = lsm.readNormalizeAccel();
  vector<float> rawGyro = lsm.readRawGyro();
  vector<float> normGyro = lsm.readNormalizeGyro();

  Serial.print(" Xraw = ");
  Serial.print(rawAccel.XAxis);
  Serial.print(" Yraw = ");
  Serial.print(rawAccel.YAxis);
  Serial.print(" Zraw = ");
  Serial.print(rawAccel.ZAxis);

  Serial.print(" Xnorm = ");
  Serial.print(normAccel.XAxis);
  Serial.print(" Ynorm = ");
  Serial.print(normAccel.YAxis);
  Serial.print(" Znorm = ");
  Serial.print(normAccel.ZAxis);

  Serial.print(" Xgyro = ");
  Serial.print(rawGyro.XAxis);
  Serial.print(" Ygyro = ");
  Serial.print(rawGyro.YAxis);
  Serial.print(" Zgyro = ");
  Serial.print(rawGyro.ZAxis);

  Serial.print(" XnormGyro = ");
  Serial.print(normGyro.XAxis);
  Serial.print(" YnormGyro = ");
  Serial.print(normGyro.YAxis);
  Serial.print(" ZnormGyro = ");
  Serial.print(normGyro.ZAxis);

  Serial.println();

  delay(100);
}