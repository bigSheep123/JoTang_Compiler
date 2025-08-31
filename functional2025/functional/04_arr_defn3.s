    .file    "./functional2025/functional/04_arr_defn3.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl	.C..5
    .bss
    .align	3
    .type  .C..5, @object
    .size  .C..5, 32
.C..5:
    .zero  32
    .globl	.C..23
    .data
    .align	3
    .type  .C..23, @object
    .size  .C..23, 32
.C..23:
    .word  1
    .word  2
    .word  3
    .word  4
    .word  5
    .word  6
    .word  7
    .word  8
    .globl	.C..31
    .data
    .align	3
    .type  .C..31, @object
    .size  .C..31, 32
.C..31:
    .word  1
    .word  2
    .word  3
    .word  4
    .word  5
    .word  6
    .word  7
    .word  8
    .globl	.C..39
    .data
    .align	3
    .type  .C..39, @object
    .size  .C..39, 32
.C..39:
    .word  1
    .word  2
    .word  3
    .zero  4
    .word  5
    .zero  4
    .word  7
    .word  8
    .globl	.C..52
    .data
    .align	3
    .type  .C..52, @object
    .size  .C..52, 32
.C..52:
    .zero  8
    .word  3
    .word  4
    .word  5
    .word  6
    .word  7
    .word  8
    .text
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-176
    sd  ra,168(sp)
    sd  s0,160(sp)
    addi  s0,sp,176
.0: 
    lui  t6,%hi(.C..5)
    addi  t6,t6,%lo(.C..5)
    addi  t5,s0,-48
    mv  a0,t5
    mv  a1,t6
    li  a2,32
    call  memcpy@plt
    lui  t6,%hi(.C..23)
    addi  t6,t6,%lo(.C..23)
    addi  t5,s0,-80
    mv  a0,t5
    mv  a1,t6
    li  a2,32
    call  memcpy@plt
    lui  t6,%hi(.C..31)
    addi  t6,t6,%lo(.C..31)
    addi  t5,s0,-112
    mv  a0,t5
    mv  a1,t6
    li  a2,32
    call  memcpy@plt
    lui  t6,%hi(.C..39)
    addi  t6,t6,%lo(.C..39)
    addi  t5,s0,-144
    mv  a0,t5
    mv  a1,t6
    li  a2,32
    call  memcpy@plt
    lui  t6,%hi(.C..39)
    addi  t6,t6,%lo(.C..39)
    lw  t5,20(t6)
    lui  t6,%hi(.C..31)
    addi  t6,t6,%lo(.C..31)
    lw  t4,20(t6)
    lui  t6,%hi(.C..52)
    addi  t6,t6,%lo(.C..52)
    addi  t3,s0,-176
    mv  a0,t3
    mv  a1,t6
    li  a2,32
    call  memcpy@plt
    lui  t6,%hi(.C..52)
    addi  t6,t6,%lo(.C..52)
    sw  t5,0(t6)
    lui  t6,%hi(.C..52)
    addi  t6,t6,%lo(.C..52)
    sw  t4,4(t6)
    lui  t6,%hi(.C..52)
    addi  t6,t6,%lo(.C..52)
    lw  t4,28(t6)
    lui  t6,%hi(.C..52)
    addi  t6,t6,%lo(.C..52)
    lw  t5,0(t6)
    addw  t6,t4,t5
    lui  t5,%hi(.C..52)
    addi  t5,t5,%lo(.C..52)
    lw  t4,4(t5)
    addw  t5,t6,t4
    lui  t4,%hi(.C..5)
    addi  t4,t4,%lo(.C..5)
    lw  t6,16(t4)
    addw  t4,t5,t6
    mv  a0,t4
    ld  ra,168(sp)
    ld  s0,160(sp)
    addi  sp,sp,176
    ret  
    .size	main, .-main
