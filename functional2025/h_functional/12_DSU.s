    .file    "./functional2025/h_functional/12_DSU.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl	.G.n
    .bss
    .align	2
    .type  .G.n, @object
    .size  .G.n, 4
.G.n:
    .zero  4
    .globl	.G.m
    .bss
    .align	2
    .type  .G.m, @object
    .size  .G.m, 4
.G.m:
    .zero  4
    .globl	.G.fa
    .bss
    .align	3
    .type  .G.fa, @object
    .size  .G.fa, 400020
.G.fa:
    .zero  400020
    .text
    .align 1
    .globl quick_read
    .type  quick_read, @function
quick_read: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.0: 
    call  getch
    mv  t6,a0
    sw  t6,-40(s0)
    li  t6,0
    sw  t6,-32(s0)
    li  t6,0
    sw  t6,-24(s0)
    j  .10wc3
.10wc3: 
    lw  t6,-40(s0)
    li  t5,48
    blt  t6,t5,.11wloop.3.6
.14: 
    lw  t6,-40(s0)
    li  t5,57
    bgt  t6,t5,.11wloop.3.6
.12wn3: 
    j  .35wc7
.11wloop.3.6: 
    lw  t5,-40(s0)
    li  t6,45
    bne  t5,t6,.24
.23: 
    li  t5,1
    sw  t5,-24(s0)
    j  .24
.24: 
    call  getch
    mv  t5,a0
    sw  t5,-40(s0)
    j  .10wc3
.35wc7: 
    lw  t5,-40(s0)
    li  t6,48
    blt  t5,t6,.37wn7
.41: 
    lw  t5,-40(s0)
    li  t4,57
    bgt  t5,t4,.37wn7
.36wloop.7.10: 
    lw  t6,-32(s0)
    li  t5,10
    mulw  t4,t6,t5
    lw  t5,-40(s0)
    addw  t6,t4,t5
    li  t5,48
    subw  t4,t6,t5
    sw  t4,-32(s0)
    call  getch
    mv  t4,a0
    sw  t4,-40(s0)
    j  .35wc7
.37wn7: 
    lw  t4,-24(s0)
    li  t5,0
    beq  t4,t5,.57
.56: 
    lw  t4,-32(s0)
    li  t5,0
    subw  t6,t5,t4
    mv  a0,t6
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.57: 
    lw  t6,-32(s0)
    mv  a0,t6
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	quick_read, .-quick_read
    .align 1
    .globl init
    .type  init, @function
init: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.70: 
    li  t6,1
    sw  t6,-24(s0)
    j  .73wc17
.73wc17: 
    lw  t6,-24(s0)
    lui  t5,%hi(.G.n)
    addi  t5,t5,%lo(.G.n)
    lw  t4,0(t5)
    bgt  t6,t4,.75wn17
.74wloop.17.20: 
    lw  t4,-24(s0)
    lw  t6,-24(s0)
    lui  t6,%hi(.G.fa)
    addi  t6,t6,%lo(.G.fa)
    lw  t5,-24(s0)
    slli  t5,t5,2
    add  t3,t6,t5
    sw  t4,t3
    lw  t3,-24(s0)
    li  t4,1
    addw  t5,t3,t4
    sw  t5,-24(s0)
    j  .73wc17
.75wn17: 
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	init, .-init
    .align 1
    .globl find
    .type  find, @function
find: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.90: 
    sw  a0,-32(s0)
    lw  t6,-32(s0)
    lui  t6,%hi(.G.fa)
    addi  t6,t6,%lo(.G.fa)
    lw  t5,-32(s0)
    slli  t5,t5,2
    add  t4,t6,t5
    lw  t5,0(t4)
    lw  t4,-32(s0)
    bne  t5,t4,.95
.94: 
    lw  t4,-32(s0)
    mv  a0,t4
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.95: 
    lw  t4,-32(s0)
    lui  t4,%hi(.G.fa)
    addi  t4,t4,%lo(.G.fa)
    lw  t5,-32(s0)
    slli  t5,t5,2
    add  t6,t4,t5
    lw  t5,0(t6)
    mv  a0,t5
    call  find
    mv  t5,a0
    sw  t5,-24(s0)
    lw  t5,-24(s0)
    lw  t6,-32(s0)
    lui  t6,%hi(.G.fa)
    addi  t6,t6,%lo(.G.fa)
    lw  t4,-32(s0)
    slli  t4,t4,2
    add  t3,t6,t4
    sw  t5,t3
    lw  t3,-24(s0)
    mv  a0,t3
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	find, .-find
    .align 1
    .globl same
    .type  same, @function
same: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.116: 
    sw  a0,-32(s0)
    sw  a1,-24(s0)
    lw  t6,-32(s0)
    mv  a0,t6
    call  find
    mv  t6,a0
    lw  t5,-24(s0)
    mv  a0,t5
    call  find
    mv  t5,a0
    bne  t6,t5,.124
.123: 
    li  a0,1
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.124: 
    li  a0,0
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	same, .-same
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-48
    sd  ra,40(sp)
    sd  s0,32(sp)
    addi  s0,sp,48
.133: 
    call  quick_read
    mv  t6,a0
    lui  t6,%hi(.G.n)
    addi  t6,t6,%lo(.G.n)
    sw  a0,0(t6)
    call  quick_read
    mv  t6,a0
    lui  t6,%hi(.G.m)
    addi  t6,t6,%lo(.G.m)
    sw  a0,0(t6)
    call  init
    mv  t6,a0
    j  .139wc37
.139wc37: 
    lui  t6,%hi(.G.m)
    addi  t6,t6,%lo(.G.m)
    lw  t5,0(t6)
    li  t6,0
    beq  t5,t6,.141wn37
.140wloop.37.51: 
    call  getch
    mv  t6,a0
    sw  t6,-56(s0)
    j  .149wc39
.141wn37: 
    li  a0,0
    ld  ra,40(sp)
    ld  s0,32(sp)
    addi  sp,sp,48
    ret  
.149wc39: 
    lw  t6,-56(s0)
    li  t5,81
    beq  t6,t5,.151wn39
.156: 
    lw  t6,-56(s0)
    li  t5,85
    beq  t6,t5,.151wn39
.150wloop.39.41: 
    call  getch
    mv  t5,a0
    sw  t5,-56(s0)
    j  .149wc39
.151wn39: 
    lw  t5,-56(s0)
    li  t6,81
    bne  t5,t6,.166
.165: 
    call  quick_read
    mv  t5,a0
    sw  t5,-48(s0)
    call  quick_read
    mv  t5,a0
    sw  t5,-40(s0)
    lw  t5,-48(s0)
    lw  t6,-40(s0)
    mv  a0,t5
    mv  a1,t6
    call  same
    mv  t6,a0
    call  putint
    mv  t6,a0
    li  a0,10
    call  putch
    mv  t6,a0
    j  .183
.166: 
    call  quick_read
    mv  t6,a0
    call  find
    mv  t6,a0
    sw  t6,-32(s0)
    call  quick_read
    mv  t6,a0
    call  find
    mv  t6,a0
    sw  t6,-24(s0)
    lw  t6,-24(s0)
    lw  t5,-32(s0)
    lui  t5,%hi(.G.fa)
    addi  t5,t5,%lo(.G.fa)
    lw  t4,-32(s0)
    slli  t4,t4,2
    add  t3,t5,t4
    sw  t6,t3
    j  .183
.183: 
    lui  t3,%hi(.G.m)
    addi  t3,t3,%lo(.G.m)
    lw  t6,0(t3)
    li  t3,1
    subw  t4,t6,t3
    lui  t3,%hi(.G.m)
    addi  t3,t3,%lo(.G.m)
    sw  t4,0(t3)
    j  .139wc37
    .size	main, .-main
