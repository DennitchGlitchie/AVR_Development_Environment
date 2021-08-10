all: UART

UART: UART.c Makefile
	avr-gcc -mmcu=atmega328p -o UART UART.c -Os

UART.hex: UART
	avr-objcopy -O ihex -R .eeprom UART UART.hex

asm: UART
	avr-objdump -S UART 
