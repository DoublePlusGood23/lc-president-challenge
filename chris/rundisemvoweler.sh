nano -c disemvoweler.asm && nasm -f elf32 disemvoweler.asm -o disemvoweler.o && ld -melf_i386 -s -o disemvoweler disemvoweler.o && chmod +x disemvoweler && ./disemvoweler
