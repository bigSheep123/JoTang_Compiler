    .file    "./functional2025/functional/31_while_if_test1.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align 1
    .globl whileIf
    .type  whileIf, @function
whileIf: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.0: 
    li  t6,0
    sw  t6,-32(s0)
    li  t6,0
    sw  t6,-24(s0)
    j  .6wc7
.6wc7: 
    lw  t6,-32(s0)
    li  t5,100
    bge  t6,t5,.8wn7
.7wloop.7.18: 
    lw  t5,-32(s0)
    li  t6,5
    bne  t5,t6,.15
.14: 
    li  t6,25
    sw  t6,-24(s0)
    j  .22
.8wn7: 
    lw  t6,-24(s0)
    mv  a0,t6
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.15: 
    lw  t6,-32(s0)
    li  t5,10
    bne  t6,t5,.25
.24: 
    li  t4,42
    sw  t4,-24(s0)
    j  .32
.22: 
    lw  t5,-32(s0)
    li  t6,1
    addw  t4,t5,t6
    sw  t4,-32(s0)
    j  .6wc7
.25: 
    lw  t4,-32(s0)
    li  t6,2
    mulw  t5,t4,t6
    sw  t5,-24(s0)
    j  .32
.32: 
    j  .22
    .size	whileIf, .-whileIf
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.47: 
    call  whileIf
    mv  t6,a0
    mv  a0,t6
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	main, .-main
