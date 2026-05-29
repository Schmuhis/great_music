boardname=esp32:esp32:nodemcu-32s
port=/dev/ttyUSB0

# port=/dev/ttyUSB0
all: compile flash monitor

compile:
	arduino-cli compile --fqbn $(boardname) .

flash:
	arduino-cli upload -v -p $(port) --fqbn $(boardname) .

monitor:
	arduino-cli monitor -p $(port) --fqbn $(boardname) -c baudrate=115200
