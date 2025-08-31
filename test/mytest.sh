#!/bin/bash
# 直接执行两条指令，无额外检查
# ../build/compiler -S -o test.s test.c
../build/compiler test.c
riscv64-unknown-elf-gcc test.s ../funcTest/sylib.o 
qemu-riscv64 a.out
