# Pixel-Pusher---Python
A messy collection of Python code to get the Heroic Robotics Pixel Pusher working with a Raspberry Pi

The following Python code is messy and uncommented.
It was originally intended to be a working program for Harry Bayntun

PIXEL PUSHER SETUP
The Pixel Pusher by Heroic Robotics is an Ethernet LED controller
The controller uses an external USB drive with the 'pixel.rc' file containing the unit's configurations.
For this program the RPi uses IPv4 address 10.10.0.1 and the Pixel Pusher uses IPv4:10.10.0.2

LED SETUP
The LED panel uses to display the 8 strips of 180 tri-colour LEDs.
The leds are arranged into 32 rows by 42 columns making a total of 1440 LEDs.
If the pixel pusher has less LEDs connected to it but the settings tell the pixel pusher 

BUTTONS TO CHANGE THE SEQUENCE
Buttons are connected to BCM-GPIO4 and BCM-GPIO17. They are normally high (through a resistor to 3.3v) but active low (when the buttons are pressed)

RPi DIRECTORY SETUP
The code has been hardcoded to use the /home/pi/pixelpusher directory
An additional directory is used to store the sequences.
To create these directories type:
  mkdir /home/pi/pixelpusher
  mkdir /home/pi/pixelpusher/sequences

Copy the 'initialise.sh' file into the '/home/pi' directory

Type the following to get the program working:
  cd /home/pi
  ./initialise.sh

Enjoy !
DaveAudio
