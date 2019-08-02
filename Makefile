CROSS_COMPILE ?= aarch64-linux-gnu-
OBJ = start.o
.PHONY: all
all: kernel8.elf kernel8.img

kernel8.img: kernel8.elf
	$(CROSS_COMPILE)objcopy -O binary $< $@

kernel8.elf: linker.ld $(OBJ)
	$(CROSS_COMPILE)ld -T $< -o $@ $(OBJ)

%.o: %.c
	$(CROSS_COMPILE)gcc -o $@ $<

%.o: %.S
	$(CROSS_COMPILE)as -o $@ $<

.PHONY: clean
clean:
	rm -rf *.o
	rm -rf *.elf
	rm -rf *.img
