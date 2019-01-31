# ArduinoISP packaged for ESP32 with SSD1306 OLED

This is a very simple mockup of SSD1306 ESP8266 libraries, Arduino for ESP32 and the original [ArduinoISP](https://github.com/arduino/ArduinoISP), forming a useful AVR ISP programmer usable with avrdude. I modified ArduinoISP code a bit to report more details about the status and simulate programmer LEDs using the OLED display.

Best used with the good old Wemos module with ESP32 and I2C connected OLED.

## Pin map for OLED display

* _SDA_ - 5
* _SCL_ - 4

## Pin map for ISP

* _RESET_ - 2
* _CLK_ - 14
* _MISO_ - 12
* _MOSI_ - 14

## Usage

* clone with ```git clone https://github.com/nathanjel/espavrisp.git```
* enter directory ```cd espavrisp```
* use git to download submodules ```git submodule update --init --recursive```
* do the usual ```make menuconfig && make flash```
* test the programmer with ```make test-programmer``` - if nothing connected it will speak to programmer and report an error, but You can observe the programmer responding
