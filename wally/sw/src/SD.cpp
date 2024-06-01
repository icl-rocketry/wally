#include <SPI.h>
#include <SD.h>

void setup() {
  // Open serial communications and wait for port to open:
  Serial.begin(9600);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for native USB port only
  }

  Serial.print("Initializing SD card...");

  // Check if the card is present and can be initialized:
  if (!SD.begin(SD_CS)) {
    Serial.println("Card failed, or not present");
    return;
  }
  Serial.println("card initialized.");

  // Open a file for writing:
  File dataFile = SD.open("example.txt", FILE_WRITE);

  // If the file opened okay, write to it:
  if (dataFile) {
    dataFile.println("This is a test file.");
    dataFile.println("Writing to the SD card.");
    dataFile.close(); // close the file
    Serial.println("Writing done.");
  } else {
    // If the file didn't open, print an error:
    Serial.println("Error opening example.txt");
  }
}

void loop() {
  // nothing happens after setup
}