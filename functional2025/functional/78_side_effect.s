    .file    "./functional2025/functional/78_side_effect.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl	.G.a
    .data
    .align	2
    .type  .G.a, @object
    .size  .G.a, 4
.G.a:
    .word  -1
    .globl	.G.b
    .data
    .align	2
    .type  .G.b, @object
    .size  .G.b, 4
.G.b:
    .word  1
    .text
    .align 1
    .globl inc_a
    .type  inc_a, @function
inc_a: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.5: 
    lui  t6,%hi(.G.a)
    addi  t6,t6,%lo(.G.a)
    lw  t5,0(t6)
    sw  t5,-24(s0)
    lw  t5,-24(s0)
    li  t6,1
    addw  t4,t5,t6
    sw  t4,-24(s0)
    lw  t4,-24(s0)
    lui  t6,%hi(.G.a)
    addi  t6,t6,%lo(.G.a)
    sw  t4,0(t6)
    lui  t6,%hi(.G.a)
    addi  t6,t6,%lo(.G.a)
    lw  t4,0(t6)
    mv  a0,t4
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	inc_a, .-inc_a
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.16: 
    li  t6,5
    sw  t6,-24(s0)
    j  .20wc15
.20wc15: 
    lw  t6,-24(s0)
    li  t5,0
    blt  t6,t5,.22wn15
.21wloop.15.26: 
    call  inc_a
    mv  t5,a0
    li  t6,0
    beq  t5,t6,.28
.31: 
    call  inc_a
    mv  t6,a0
    li  t5,0
    beq  t6,t5,.28
.35: 
    call  inc_a
    mv  t5,a0
    li  t6,0
    beq  t5,t6,.28
.27: 
    lui  t5,%hi(.G.a)
    addi  t5,t5,%lo(.G.a)
    lw  t6,0(t5)
    mv  a0,t6
    call  putint
    mv  t6,a0
    li  a0,32
    call  putch
    mv  t6,a0
    lui  t6,%hi(.G.b)
    addi  t6,t6,%lo(.G.b)
    lw  t5,0(t6)
    mv  a0,t5
    call  putint
    mv  t5,a0
    li  a0,10
    call  putch
    mv  t5,a0
    j  .28
.22wn15: 
    lui  t6,%hi(.G.a)
    addi  t6,t6,%lo(.G.a)
    lw  t5,0(t6)
    mv  a0,t5
    call  putint
    mv  t5,a0
    li  a0,32
    call  putch
    mv  t5,a0
    lui  t5,%hi(.G.b)
    addi  t5,t5,%lo(.G.b)
    lw  t6,0(t5)
    mv  a0,t6
    call  putint
    mv  t6,a0
    li  a0,10
    call  putch
    mv  t6,a0
    lui  t6,%hi(.G.a)
    addi  t6,t6,%lo(.G.a)
    lw  t5,0(t6)
    mv  a0,t5
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.28: 
    call  inc_a
    mv  t5,a0
    li  t6,14
    blt  t5,t6,.51
.53: 
    call  inc_a
    mv  t5,a0
    li  t4,0
    beq  t5,t4,.52
.60: 
    call  inc_a
    mv  t4,a0
    call  inc_a
    mv  t5,a0
    subw  t6,t4,t5
    li  t5,1
    addw  t4,t6,t5
    li  t5,0
    bne  t4,t5,.51
.52: 
    call  inc_a
    mv  t5,a0
    j  .75
.51: 
    lui  t6,%hi(.G.a)
    addi  t6,t6,%lo(.G.a)
    lw  t5,0(t6)
    mv  a0,t5
    call  putint
    mv  t5,a0
    li  a0,10
    call  putch
    mv  t5,a0
    lui  t5,%hi(.G.b)
    addi  t5,t5,%lo(.G.b)
    lw  t6,0(t5)
    li  t5,2
    mulw  t4,t6,t5
    lui  t5,%hi(.G.b)
    addi  t5,t5,%lo(.G.b)
    sw  t4,0(t5)
    j  .75
.75: 
    lw  t5,-24(s0)
    li  t4,1
    subw  t6,t5,t4
    sw  t6,-24(s0)
    j  .20wc15
    .size	main, .-main
