    .file    "./functional2025/functional/32_while_if_test2.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align 1
    .globl ifWhile
    .type  ifWhile, @function
ifWhile: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.0: 
    li  t6,0
    sw  t6,-32(s0)
    li  t6,3
    sw  t6,-24(s0)
    lw  t6,-32(s0)
    li  t5,5
    bne  t6,t5,.8
.7: 
    j  .13wc7
.8: 
    j  .31wc13
.13wc7: 
    lw  t5,-24(s0)
    li  t6,2
    bne  t5,t6,.15wn7
.14wloop.7.9: 
    lw  t6,-24(s0)
    li  t5,2
    addw  t4,t6,t5
    sw  t4,-24(s0)
    j  .13wc7
.15wn7: 
    lw  t4,-24(s0)
    li  t5,25
    addw  t6,t4,t5
    sw  t6,-24(s0)
    j  .29
.29: 
    lw  t6,-24(s0)
    mv  a0,t6
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.31wc13: 
    lw  t6,-32(s0)
    li  t5,5
    bge  t6,t5,.33wn13
.32wloop.13.13: 
    lw  t5,-24(s0)
    li  t6,2
    mulw  t4,t5,t6
    sw  t4,-24(s0)
    lw  t4,-32(s0)
    li  t6,1
    addw  t5,t4,t6
    sw  t5,-32(s0)
    j  .31wc13
.33wn13: 
    j  .29
    .size	ifWhile, .-ifWhile
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.49: 
    call  ifWhile
    mv  t6,a0
    mv  a0,t6
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	main, .-main
