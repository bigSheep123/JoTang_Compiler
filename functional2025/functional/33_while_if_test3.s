    .file    "./functional2025/functional/33_while_if_test3.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align 1
    .globl deepWhileBr
    .type  deepWhileBr, @function
deepWhileBr: 
    addi  sp,sp,-48
    sd  ra,40(sp)
    sd  s0,32(sp)
    addi  s0,sp,48
.0: 
    sw  a0,-56(s0)
    sw  a1,-48(s0)
    lw  t6,-56(s0)
    lw  t5,-48(s0)
    addw  t4,t6,t5
    sw  t4,-40(s0)
    j  .12wc4
.12wc4: 
    lw  t4,-40(s0)
    li  t5,75
    bge  t4,t5,.14wn4
.13wloop.4.17: 
    li  t5,42
    sw  t5,-32(s0)
    lw  t5,-40(s0)
    li  t4,100
    bge  t5,t4,.24
.23: 
    lw  t4,-40(s0)
    lw  t5,-32(s0)
    addw  t6,t4,t5
    sw  t6,-40(s0)
    lw  t6,-40(s0)
    li  t5,99
    ble  t6,t5,.34
.33: 
    lw  t5,-32(s0)
    li  t6,2
    mulw  t4,t5,t6
    sw  t4,-24(s0)
    li  t6,1
    bne  t4,t6,.45
.44: 
    lw  t6,-24(s0)
    li  t4,2
    mulw  t5,t6,t4
    sw  t5,-40(s0)
    j  .45
.14wn4: 
    lw  t4,-40(s0)
    mv  a0,t4
    ld  ra,40(sp)
    ld  s0,32(sp)
    addi  sp,sp,48
    ret  
.24: 
    j  .12wc4
.34: 
    j  .24
.45: 
    j  .34
    .size	deepWhileBr, .-deepWhileBr
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.58: 
    li  t6,2
    sw  t6,-24(s0)
    lw  t6,-24(s0)
    lw  t5,-24(s0)
    mv  a0,t6
    mv  a1,t5
    call  deepWhileBr
    mv  t5,a0
    mv  a0,t5
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	main, .-main
