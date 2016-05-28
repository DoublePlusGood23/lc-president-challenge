nasm -f elf32 -F dwarf -g disemvoweler.asm -o disemvoweler.o && \
ld -melf_i386 -s -o disemvoweler.elf disemvoweler.o && \
chmod +x disemvoweler.elf && \
./disemvoweler.elf
