// the soil humidity sensor and the transmitter
// SimpleTx -
// based on https://forum.arduino.cc/index.php?topic=421081

#include <Arduino.h>
#include <SPI.h>
#include <nRF24L01.h>
#include <RF24.h>

#include <printf.h>
#include <stdlib.h>
#include <string.h>

#define SENSOR_PIN A0
#define VOLTAGE_SPLITTER_PIN A2
#define CE_PIN 8
#define CSN_PIN 9

// Transmitter settings
RF24 radio(CE_PIN, CSN_PIN);
const byte SLAVE_ADDRESS[5] = {'R','x','0','0','1'};

const char * TRANSMITTER_NAME = "Tx1";
// const unsigned long TRANSMITTER_SEND_INTERVAL_MS = 5000; // Once per 5sec
const unsigned long long TRANSMITTER_SEND_INTERVAL_MS = 1800000; // Once per 30min
bool shouldStartWithMeasurement = true;
unsigned long long previousTimeMs;
unsigned long long currentTimeMs;
bool isLargerThanInterval = false;

// Soil humidity settings
const unsigned short dataToSendSize = 12;
int soilHumiditySensorValue;

// Measure voltage settings
const unsigned short int VOLTAGE_MEASUREMENTS_NR = 10;
const float REFERENCE_VOLTAGE = 5.;
const float VOLTAGE_SPLIT_FACTOR = 11.0; // based on (R1 + R2)/R2 where R1=1MOhm and R2=100kOhm

int voltagesSum = 0;
float voltage;

void setup() {
  bool isSetupSuccess = false;

  Serial.begin(9600);
  printf_begin();

  Serial.println("Starting the transmitter...");
  isSetupSuccess = radio.begin();
  // Serial.print("radio.begin() success: ");
  // Serial.println(isSetupSuccess);
  // radio.printDetails();

  if (isSetupSuccess) {
    // Set the pipe on the selected address address
    radio.openWritingPipe(SLAVE_ADDRESS);
    Serial.println("Pipe open");

    radio.setRetries(3, 5); // delay, count
    radio.setDataRate(RF24_250KBPS);
    radio.setPALevel(RF24_PA_MIN);

    // radio.printDetails();
    Serial.println("Ready to transmit...");
  }
  else
    Serial.println("There were issues during initial setup and the transmitter is not ready");
}

float measureVoltage() {
  voltagesSum = 0;
  for (size_t i = 0; i < VOLTAGE_MEASUREMENTS_NR; i++)
  {
    voltagesSum += analogRead(VOLTAGE_SPLITTER_PIN);
    delay(10);
  }
  float voltage = VOLTAGE_SPLIT_FACTOR * REFERENCE_VOLTAGE * voltagesSum / (1024.0 * VOLTAGE_MEASUREMENTS_NR);
  return voltage;
}


void prepareDataToSend(char * dataToSend, unsigned short soilHumiditySensorValue, float voltage){
  strcat(dataToSend, TRANSMITTER_NAME);
  strcat(dataToSend, ";");

  // Cast soil humidity sensor from int to char and concat to the message
  char soilHumiditySensorValueStr[3] = "";
  itoa(soilHumiditySensorValue, soilHumiditySensorValueStr, 10);
  strcat(dataToSend, soilHumiditySensorValueStr);

  // Cat voltage
  strcat(dataToSend, ";");
  char voltageStr[4] = "";
  dtostrf(voltage, 3, 2, voltageStr);
  strcat(dataToSend, voltageStr);

}


bool send(char * dataToSend, unsigned short dataToSendSize) {
  bool isWriteSuccess = radio.write(dataToSend, dataToSendSize);

  Serial.print("Message to send: ");
  Serial.print(dataToSend);

  if (isWriteSuccess) {
    Serial.println(" | Transmission succeeded");
  }
  else {
    Serial.println(" | Transmission failed");
  }
  return isWriteSuccess;
}


void loop() {
  currentTimeMs = millis();
  isLargerThanInterval = currentTimeMs - previousTimeMs >= TRANSMITTER_SEND_INTERVAL_MS;
  if (isLargerThanInterval | shouldStartWithMeasurement) {
    // To decrease power consuption the radio is powered down
    radio.powerUp();
    delay(10);

    // Repeat few times the measurement to get the precision and sleep afterwards
    for (size_t i = 0; i < 4; i++)
    {
      char dataToSend[dataToSendSize] = ""; // Important to zero this variable before preparing data

      // Read battery voltage
      voltage = measureVoltage();
      Serial.println(voltage);

      // Read values from the humidity sensor
      soilHumiditySensorValue = analogRead(SENSOR_PIN);
      prepareDataToSend(dataToSend, soilHumiditySensorValue, voltage);

      // Send to the receiver
      send(dataToSend, dataToSendSize);
      delay(1000);
    }

    radio.powerDown();

    shouldStartWithMeasurement = false;
    previousTimeMs = millis();
  }
}