    .file    "./functional2025/functional/34_arr_expr_len.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl	.G.arr
    .data
    .align	3
    .type  .G.arr, @object
    .size  .G.arr, 24
.G.arr:
    .word  1
    .word  2
    .word  33
    .word  4
    .word  5
    .word  6
    .text
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.13: 
    li  t6,0
    sw  t6,-32(s0)
    li  t6,0
    sw  t6,-24(s0)
    j  .18wc6
.18wc6: 
    lw  t6,-32(s0)
    li  t5,6
    bge  t6,t5,.20wn6
.19wloop.6.9: 
    lw  t5,-24(s0)
    lw  t6,-32(s0)
    lui  t6,%hi(.G.arr)
    addi  t6,t6,%lo(.G.arr)
    lw  t4,-32(s0)
    slli  t4,t4,2
    add  t3,t6,t4
    lw  t4,0(t3)
    addw  t3,t5,t4
    sw  t3,-24(s0)
    lw  t3,-32(s0)
    li  t4,1
    addw  t5,t3,t4
    sw  t5,-32(s0)
    j  .18wc6
.20wn6: 
    lw  t5,-24(s0)
    mv  a0,t5
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	main, .-main
