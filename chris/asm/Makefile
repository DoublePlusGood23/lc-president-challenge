# Makefile for building asm disvoweler.

AS=nasm
ASFLAGS=-f elf32 -F dwarf -g
CC=gcc
CFLAGS=-m32 -mtune=i386 -masm=intel -nostdlib -Wl,-melf_i386

all: disemvoweler.elf

disemvoweler.elf: disemvoweler.o
		@echo "Using gcc to link. (needed for debuging symbols)"
		$(CC) $(CFLAGS) disemvoweler.o -o disemvoweler.elf

disemvoweler.o: disemvoweler.asm
		@echo "Compiling elf."
		$(AS) $(ASFLAGS) -l disemvoweler.lst disemvoweler.asm

clean:
		rm *o *elf *lst
