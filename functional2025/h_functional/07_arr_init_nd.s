    .file    "./functional2025/h_functional/07_arr_init_nd.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl	.C..6
    .bss
    .align	3
    .type  .C..6, @object
    .size  .C..6, 60
.C..6:
    .zero  60
    .globl	.C..32
    .data
    .align	3
    .type  .C..32, @object
    .size  .C..32, 60
.C..32:
    .word  1
    .word  2
    .word  3
    .word  4
    .word  5
    .word  6
    .word  7
    .word  8
    .word  9
    .word  10
    .word  11
    .word  12
    .word  13
    .word  14
    .word  15
    .globl	.C..41
    .data
    .align	3
    .type  .C..41, @object
    .size  .C..41, 60
.C..41:
    .word  1
    .word  2
    .word  3
    .word  4
    .word  5
    .word  6
    .word  7
    .word  8
    .word  9
    .word  10
    .word  11
    .word  12
    .word  13
    .word  14
    .word  15
    .globl	.C..50
    .data
    .align	3
    .type  .C..50, @object
    .size  .C..50, 60
.C..50:
    .word  1
    .word  2
    .word  3
    .word  4
    .word  5
    .word  6
    .word  7
    .word  8
    .word  9
    .word  10
    .word  11
    .word  12
    .word  13
    .word  14
    .word  15
    .globl	.C..59
    .data
    .align	3
    .type  .C..59, @object
    .size  .C..59, 60
.C..59:
    .word  1
    .word  2
    .word  3
    .word  4
    .zero  8
    .word  7
    .zero  8
    .word  10
    .word  11
    .word  12
    .zero  12
    .globl	.C..68
    .data
    .align	3
    .type  .C..68, @object
    .size  .C..68, 96
.C..68:
    .word  1
    .word  2
    .word  3
    .word  4
    .word  5
    .zero  76
    .text
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-512
    sd  ra,504(sp)
    sd  s0,496(sp)
    addi  s0,sp,512
.0: 
    lui  t6,%hi(.C..6)
    addi  t6,t6,%lo(.C..6)
    addi  t5,s0,-76
    mv  a0,t5
    mv  a1,t6
    li  a2,60
    call  memcpy@plt
    lui  t6,%hi(.C..32)
    addi  t6,t6,%lo(.C..32)
    addi  t5,s0,-136
    mv  a0,t5
    mv  a1,t6
    li  a2,60
    call  memcpy@plt
    lui  t6,%hi(.C..41)
    addi  t6,t6,%lo(.C..41)
    addi  t5,s0,-196
    mv  a0,t5
    mv  a1,t6
    li  a2,60
    call  memcpy@plt
    lui  t6,%hi(.C..50)
    addi  t6,t6,%lo(.C..50)
    addi  t5,s0,-256
    mv  a0,t5
    mv  a1,t6
    li  a2,60
    call  memcpy@plt
    lui  t6,%hi(.C..59)
    addi  t6,t6,%lo(.C..59)
    addi  t5,s0,-316
    mv  a0,t5
    mv  a1,t6
    li  a2,60
    call  memcpy@plt
    lui  t6,%hi(.C..68)
    addi  t6,t6,%lo(.C..68)
    addi  t5,s0,-412
    mv  a0,t5
    mv  a1,t6
    li  a2,96
    call  memcpy@plt
    li  a0,4
    ld  ra,504(sp)
    ld  s0,496(sp)
    addi  sp,sp,512
    ret  
    .size	main, .-main
