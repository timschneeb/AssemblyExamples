nasm -f elf $1
f=$(basename "$1" | cut -d. -f1)
ld -m elf_i386 $f.o -o $f
./$f
