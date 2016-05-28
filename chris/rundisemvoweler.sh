nano -c disemvoweler.asm && \
nasm -f elf32 disemvoweler.asm -o disemvoweler.o && \
ld -melf_i386 -s -o disemvoweler.bin disemvoweler.o && \
chmod +x disemvoweler.bin && \
./disemvoweler.bin
