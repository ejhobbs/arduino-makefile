PORT := /dev/ttyUSB0
MODEL := atmega328p
PROG := arduino
RATE := 115200

backup:
	avrdude -F -V -c $(PROG) -p $(MODEL) -P $(PORT) -U flash:r:flash_backup.hex:i
restore:
	avrdude -F -V -c $(PROG) -p $(MODEL) -P $(PORT) -U flash:w:flash_backup.hex
