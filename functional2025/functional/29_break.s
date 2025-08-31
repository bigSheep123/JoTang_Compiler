    .file    "./functional2025/functional/29_break.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align 1
    .globl main
    .type  main, @function
main: 
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
.7wloop.7.13: 
    lw  t5,-32(s0)
    li  t6,50
    bne  t5,t6,.15
.14: 
    j  .8wn7
.8wn7: 
    lw  t6,-24(s0)
    mv  a0,t6
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.15: 
    lw  t6,-24(s0)
    lw  t5,-32(s0)
    addw  t4,t6,t5
    sw  t4,-24(s0)
    lw  t4,-32(s0)
    li  t5,1
    addw  t6,t4,t5
    sw  t6,-32(s0)
    j  .6wc7
    .size	main, .-main
