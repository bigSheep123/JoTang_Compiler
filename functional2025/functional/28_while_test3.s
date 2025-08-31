    .file    "./functional2025/functional/28_while_test3.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl	.G.g
    .bss
    .align	2
    .type  .G.g, @object
    .size  .G.g, 4
.G.g:
    .zero  4
    .globl	.G.h
    .bss
    .align	2
    .type  .G.h, @object
    .size  .G.h, 4
.G.h:
    .zero  4
    .globl	.G.f
    .bss
    .align	2
    .type  .G.f, @object
    .size  .G.f, 4
.G.f:
    .zero  4
    .globl	.G.e
    .bss
    .align	2
    .type  .G.e, @object
    .size  .G.e, 4
.G.e:
    .zero  4
    .text
    .align 1
    .globl EightWhile
    .type  EightWhile, @function
EightWhile: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.4: 
    li  t6,5
    sw  t6,-48(s0)
    li  t6,6
    sw  t6,-40(s0)
    li  t6,7
    sw  t6,-32(s0)
    li  t6,10
    sw  t6,-24(s0)
    j  .17wc14
.17wc14: 
    lw  t6,-48(s0)
    li  t5,20
    bge  t6,t5,.19wn14
.18wloop.14.44: 
    lw  t5,-48(s0)
    li  t6,3
    addw  t4,t5,t6
    sw  t4,-48(s0)
    j  .29wc16
.19wn14: 
    lw  t4,-48(s0)
    lw  t6,-40(s0)
    lw  t5,-24(s0)
    addw  t3,t6,t5
    addw  t5,t4,t3
    lw  t3,-32(s0)
    addw  t4,t5,t3
    lui  t3,%hi(.G.e)
    addi  t3,t3,%lo(.G.e)
    lw  t5,0(t3)
    lw  t3,-24(s0)
    addw  t6,t5,t3
    lui  t3,%hi(.G.g)
    addi  t3,t3,%lo(.G.g)
    lw  t5,0(t3)
    subw  t3,t6,t5
    lui  t5,%hi(.G.h)
    addi  t5,t5,%lo(.G.h)
    lw  t6,0(t5)
    addw  t5,t3,t6
    subw  t6,t4,t5
    mv  a0,t6
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.29wc16: 
    lw  t6,-40(s0)
    li  t5,10
    bge  t6,t5,.31wn16
.30wloop.16.42: 
    lw  t5,-40(s0)
    li  t6,1
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .40wc18
.31wn16: 
    lw  t4,-40(s0)
    li  t6,2
    subw  t5,t4,t6
    sw  t5,-40(s0)
    j  .17wc14
.40wc18: 
    lw  t5,-32(s0)
    li  t6,7
    bne  t5,t6,.42wn18
.41wloop.18.40: 
    lw  t6,-32(s0)
    li  t5,1
    subw  t4,t6,t5
    sw  t4,-32(s0)
    j  .50wc20
.42wn18: 
    lw  t4,-32(s0)
    li  t5,1
    addw  t6,t4,t5
    sw  t6,-32(s0)
    j  .29wc16
.50wc20: 
    lw  t6,-24(s0)
    li  t5,20
    bge  t6,t5,.52wn20
.51wloop.20.38: 
    lw  t5,-24(s0)
    li  t6,3
    addw  t4,t5,t6
    sw  t4,-24(s0)
    j  .60wc22
.52wn20: 
    lw  t4,-24(s0)
    li  t6,1
    subw  t5,t4,t6
    sw  t5,-24(s0)
    j  .40wc18
.60wc22: 
    lui  t5,%hi(.G.e)
    addi  t5,t5,%lo(.G.e)
    lw  t6,0(t5)
    li  t5,1
    ble  t6,t5,.62wn22
.61wloop.22.36: 
    lui  t5,%hi(.G.e)
    addi  t5,t5,%lo(.G.e)
    lw  t6,0(t5)
    li  t5,1
    subw  t4,t6,t5
    lui  t5,%hi(.G.e)
    addi  t5,t5,%lo(.G.e)
    sw  t4,0(t5)
    j  .70wc24
.62wn22: 
    lui  t5,%hi(.G.e)
    addi  t5,t5,%lo(.G.e)
    lw  t4,0(t5)
    li  t5,1
    addw  t6,t4,t5
    lui  t5,%hi(.G.e)
    addi  t5,t5,%lo(.G.e)
    sw  t6,0(t5)
    j  .50wc20
.70wc24: 
    lui  t5,%hi(.G.f)
    addi  t5,t5,%lo(.G.f)
    lw  t6,0(t5)
    li  t5,2
    ble  t6,t5,.72wn24
.71wloop.24.34: 
    lui  t5,%hi(.G.f)
    addi  t5,t5,%lo(.G.f)
    lw  t6,0(t5)
    li  t5,2
    subw  t4,t6,t5
    lui  t5,%hi(.G.f)
    addi  t5,t5,%lo(.G.f)
    sw  t4,0(t5)
    j  .81wc26
.72wn24: 
    lui  t5,%hi(.G.f)
    addi  t5,t5,%lo(.G.f)
    lw  t4,0(t5)
    li  t5,1
    addw  t6,t4,t5
    lui  t5,%hi(.G.f)
    addi  t5,t5,%lo(.G.f)
    sw  t6,0(t5)
    j  .60wc22
.81wc26: 
    lui  t5,%hi(.G.g)
    addi  t5,t5,%lo(.G.g)
    lw  t6,0(t5)
    li  t5,3
    bge  t6,t5,.83wn26
.82wloop.26.32: 
    lui  t5,%hi(.G.g)
    addi  t5,t5,%lo(.G.g)
    lw  t6,0(t5)
    li  t5,10
    addw  t4,t6,t5
    lui  t5,%hi(.G.g)
    addi  t5,t5,%lo(.G.g)
    sw  t4,0(t5)
    j  .91wc28
.83wn26: 
    lui  t5,%hi(.G.g)
    addi  t5,t5,%lo(.G.g)
    lw  t4,0(t5)
    li  t5,8
    subw  t6,t4,t5
    lui  t5,%hi(.G.g)
    addi  t5,t5,%lo(.G.g)
    sw  t6,0(t5)
    j  .70wc24
.91wc28: 
    lui  t5,%hi(.G.h)
    addi  t5,t5,%lo(.G.h)
    lw  t6,0(t5)
    li  t5,10
    bge  t6,t5,.93wn28
.92wloop.28.30: 
    lui  t5,%hi(.G.h)
    addi  t5,t5,%lo(.G.h)
    lw  t6,0(t5)
    li  t5,8
    addw  t4,t6,t5
    lui  t5,%hi(.G.h)
    addi  t5,t5,%lo(.G.h)
    sw  t4,0(t5)
    j  .91wc28
.93wn28: 
    lui  t5,%hi(.G.h)
    addi  t5,t5,%lo(.G.h)
    lw  t4,0(t5)
    li  t5,1
    subw  t6,t4,t5
    lui  t5,%hi(.G.h)
    addi  t5,t5,%lo(.G.h)
    sw  t6,0(t5)
    j  .81wc26
    .size	EightWhile, .-EightWhile
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.147: 
    lui  t6,%hi(.G.g)
    addi  t6,t6,%lo(.G.g)
    li  t5,1
    sw  t5,0(t6)
    lui  t5,%hi(.G.h)
    addi  t5,t5,%lo(.G.h)
    li  t6,2
    sw  t6,0(t5)
    lui  t6,%hi(.G.e)
    addi  t6,t6,%lo(.G.e)
    li  t5,4
    sw  t5,0(t6)
    lui  t5,%hi(.G.f)
    addi  t5,t5,%lo(.G.f)
    li  t6,6
    sw  t6,0(t5)
    call  EightWhile
    mv  t6,a0
    mv  a0,t6
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	main, .-main
