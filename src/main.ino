#include <PWM.h>
#include <PacketSerial.h> // for the COBS

PacketSerial myPacketSerial;

int led = 3;                // the pin that the LED is attached to
int32_t frequency = 25000; //frequency (in Hz)

void setup()
{
  myPacketSerial.begin(9600);
  myPacketSerial.setPacketHandler(&onPacketReceived);

  //initialize all timers except for 0, to save time keeping functions
  InitTimersSafe();

  //sets the frequency for the specified pin
  bool success = SetPinFrequencySafe(led, frequency);
}

void loop()
{
  myPacketSerial.update();
}

void onPacketReceived(const uint8_t* buffer, size_t size)
{
  //use this functions instead of analogWrite on 'initialized' pins
  pwmWrite(led, buffer[0]);
}

