    .file    "./functional2025/functional/25_while_if.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align 1
    .globl get_one
    .type  get_one, @function
get_one: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.0: 
    sw  a0,-24(s0)
    li  a0,1
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	get_one, .-get_one
    .align 1
    .globl deepWhileBr
    .type  deepWhileBr, @function
deepWhileBr: 
    addi  sp,sp,-48
    sd  ra,40(sp)
    sd  s0,32(sp)
    addi  s0,sp,48
.6: 
    sw  a0,-56(s0)
    sw  a1,-48(s0)
    lw  t6,-56(s0)
    lw  t5,-48(s0)
    addw  t4,t6,t5
    sw  t4,-40(s0)
    j  .18wc8
.18wc8: 
    lw  t4,-40(s0)
    li  t5,75
    bge  t4,t5,.20wn8
.19wloop.8.21: 
    li  t5,42
    sw  t5,-32(s0)
    lw  t5,-40(s0)
    li  t4,100
    bge  t5,t4,.30
.29: 
    lw  t4,-40(s0)
    lw  t5,-32(s0)
    addw  t6,t4,t5
    sw  t6,-40(s0)
    lw  t6,-40(s0)
    li  t5,99
    ble  t6,t5,.40
.39: 
    lw  t5,-32(s0)
    li  t6,2
    mulw  t4,t5,t6
    sw  t4,-24(s0)
    li  a0,0
    call  get_one
    mv  t4,a0
    li  t6,1
    bne  t4,t6,.51
.50: 
    lw  t6,-24(s0)
    li  t4,2
    mulw  t5,t6,t4
    sw  t5,-40(s0)
    j  .51
.20wn8: 
    lw  t4,-40(s0)
    mv  a0,t4
    ld  ra,40(sp)
    ld  s0,32(sp)
    addi  sp,sp,48
    ret  
.30: 
    j  .18wc8
.40: 
    j  .30
.51: 
    j  .40
    .size	deepWhileBr, .-deepWhileBr
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.65: 
    li  t6,2
    sw  t6,-24(s0)
    lw  t6,-24(s0)
    lw  t5,-24(s0)
    mv  a0,t6
    mv  a1,t5
    call  deepWhileBr
    mv  t5,a0
    sw  t5,-24(s0)
    lw  t5,-24(s0)
    mv  a0,t5
    call  putint
    mv  t5,a0
    li  a0,0
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	main, .-main
