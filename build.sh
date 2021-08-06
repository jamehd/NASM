#!/bin/bash

FILE=$1
nasm -f elf -o out/$FILE.o $FILE.asm
ld -m elf_i386 -s -o out/$FILE out/$FILE.o