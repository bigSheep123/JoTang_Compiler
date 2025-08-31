    .file    "./functional2025/functional/26_while_test1.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align 1
    .globl doubleWhile
    .type  doubleWhile, @function
doubleWhile: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.0: 
    li  t6,5
    sw  t6,-32(s0)
    li  t6,7
    sw  t6,-24(s0)
    j  .7wc6
.7wc6: 
    lw  t6,-32(s0)
    li  t5,100
    bge  t6,t5,.9wn6
.8wloop.6.12: 
    lw  t5,-32(s0)
    li  t6,30
    addw  t4,t5,t6
    sw  t4,-32(s0)
    j  .19wc8
.9wn6: 
    lw  t4,-24(s0)
    mv  a0,t4
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.19wc8: 
    lw  t4,-24(s0)
    li  t6,100
    bge  t4,t6,.21wn8
.20wloop.8.10: 
    lw  t6,-24(s0)
    li  t4,6
    addw  t5,t6,t4
    sw  t5,-24(s0)
    j  .19wc8
.21wn8: 
    lw  t5,-24(s0)
    li  t4,100
    subw  t6,t5,t4
    sw  t6,-24(s0)
    j  .7wc6
    .size	doubleWhile, .-doubleWhile
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.37: 
    call  doubleWhile
    mv  t6,a0
    mv  a0,t6
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	main, .-main
