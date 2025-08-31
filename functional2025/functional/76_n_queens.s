    .file    "./functional2025/functional/76_n_queens.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl	.G.ans
    .bss
    .align	3
    .type  .G.ans, @object
    .size  .G.ans, 200
.G.ans:
    .zero  200
    .globl	.G.sum
    .data
    .align	2
    .type  .G.sum, @object
    .size  .G.sum, 4
.G.sum:
    .word  0
    .globl	.G.n
    .bss
    .align	2
    .type  .G.n, @object
    .size  .G.n, 4
.G.n:
    .zero  4
    .globl	.G.row
    .bss
    .align	3
    .type  .G.row, @object
    .size  .G.row, 200
.G.row:
    .zero  200
    .globl	.G.line1
    .bss
    .align	3
    .type  .G.line1, @object
    .size  .G.line1, 200
.G.line1:
    .zero  200
    .globl	.G.line2
    .bss
    .align	3
    .type  .G.line2, @object
    .size  .G.line2, 400
.G.line2:
    .zero  400
    .text
    .align 1
    .globl printans
    .type  printans, @function
printans: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.9: 
    lui  t6,%hi(.G.sum)
    addi  t6,t6,%lo(.G.sum)
    lw  t5,0(t6)
    li  t6,1
    addw  t4,t5,t6
    lui  t6,%hi(.G.sum)
    addi  t6,t6,%lo(.G.sum)
    sw  t4,0(t6)
    li  t6,1
    sw  t6,-24(s0)
    j  .16wc9
.16wc9: 
    lw  t6,-24(s0)
    lui  t4,%hi(.G.n)
    addi  t4,t4,%lo(.G.n)
    lw  t5,0(t4)
    bgt  t6,t5,.18wn9
.17wloop.9.17: 
    lw  t5,-24(s0)
    lui  t5,%hi(.G.ans)
    addi  t5,t5,%lo(.G.ans)
    lw  t6,-24(s0)
    slli  t6,t6,2
    add  t4,t5,t6
    lw  t6,0(t4)
    mv  a0,t6
    call  putint
    mv  t6,a0
    lw  t6,-24(s0)
    lui  t4,%hi(.G.n)
    addi  t4,t4,%lo(.G.n)
    lw  t5,0(t4)
    bne  t6,t5,.30
.29: 
    li  a0,10
    call  putch
    mv  t5,a0
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.18wn9: 
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.30: 
    li  a0,32
    call  putch
    mv  t5,a0
    j  .41
.41: 
    lw  t5,-24(s0)
    li  t6,1
    addw  t4,t5,t6
    sw  t4,-24(s0)
    j  .16wc9
    .size	printans, .-printans
    .align 1
    .globl f
    .type  f, @function
f: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.48: 
    sw  a0,-32(s0)
    li  t6,1
    sw  t6,-24(s0)
    j  .54wc23
.54wc23: 
    lw  t6,-24(s0)
    lui  t5,%hi(.G.n)
    addi  t5,t5,%lo(.G.n)
    lw  t4,0(t5)
    bgt  t6,t4,.56wn23
.55wloop.23.37: 
    lw  t4,-24(s0)
    lui  t4,%hi(.G.row)
    addi  t4,t4,%lo(.G.row)
    lw  t6,-24(s0)
    slli  t6,t6,2
    add  t5,t4,t6
    lw  t6,0(t5)
    li  t5,1
    beq  t6,t5,.63
.68: 
    lw  t5,-32(s0)
    lw  t3,-24(s0)
    addw  t4,t5,t3
    lui  t4,%hi(.G.line1)
    addi  t4,t4,%lo(.G.line1)
    lw  t3,0(t4)
    li  t4,0
    bne  t3,t4,.63
.76: 
    lui  t4,%hi(.G.n)
    addi  t4,t4,%lo(.G.n)
    lw  t3,0(t4)
    lw  t4,-32(s0)
    addw  t5,t3,t4
    lw  t4,-24(s0)
    subw  t3,t5,t4
    lui  t3,%hi(.G.line2)
    addi  t3,t3,%lo(.G.line2)
    lw  t4,0(t3)
    li  t3,0
    bne  t4,t3,.63
.62: 
    lw  t5,-24(s0)
    lw  t6,-32(s0)
    lui  t6,%hi(.G.ans)
    addi  t6,t6,%lo(.G.ans)
    lw  t4,-32(s0)
    slli  t4,t4,2
    add  t3,t6,t4
    sw  t5,t3
    lw  t3,-32(s0)
    lui  t5,%hi(.G.n)
    addi  t5,t5,%lo(.G.n)
    lw  t4,0(t5)
    bne  t3,t4,.92
.91: 
    call  printans
    mv  t3,a0
    j  .92
.56wn23: 
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.63: 
    lw  t4,-24(s0)
    li  t3,1
    addw  t5,t4,t3
    sw  t5,-24(s0)
    j  .54wc23
.92: 
    lw  t3,-24(s0)
    lui  t3,%hi(.G.row)
    addi  t3,t3,%lo(.G.row)
    lw  t4,-24(s0)
    slli  t4,t4,2
    add  t5,t3,t4
    li  t4,1
    sw  t4,t5
    lw  t4,-32(s0)
    lw  t5,-24(s0)
    addw  t3,t4,t5
    lui  t3,%hi(.G.line1)
    addi  t3,t3,%lo(.G.line1)
    li  t5,1
    sw  t5,t3
    lui  t5,%hi(.G.n)
    addi  t5,t5,%lo(.G.n)
    lw  t3,0(t5)
    lw  t5,-32(s0)
    addw  t4,t3,t5
    lw  t5,-24(s0)
    subw  t3,t4,t5
    lui  t3,%hi(.G.line2)
    addi  t3,t3,%lo(.G.line2)
    li  t5,1
    sw  t5,t3
    lw  t5,-32(s0)
    li  t3,1
    addw  t4,t5,t3
    mv  a0,t4
    call  f
    mv  t4,a0
    lw  t4,-24(s0)
    lui  t4,%hi(.G.row)
    addi  t4,t4,%lo(.G.row)
    lw  t3,-24(s0)
    slli  t3,t3,2
    add  t5,t4,t3
    li  t3,0
    sw  t3,t5
    lw  t3,-32(s0)
    lw  t5,-24(s0)
    addw  t4,t3,t5
    lui  t4,%hi(.G.line1)
    addi  t4,t4,%lo(.G.line1)
    li  t5,0
    sw  t5,t4
    lui  t5,%hi(.G.n)
    addi  t5,t5,%lo(.G.n)
    lw  t4,0(t5)
    lw  t5,-32(s0)
    addw  t3,t4,t5
    lw  t5,-24(s0)
    subw  t4,t3,t5
    lui  t4,%hi(.G.line2)
    addi  t4,t4,%lo(.G.line2)
    li  t5,0
    sw  t5,t4
    j  .63
    .size	f, .-f
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.138: 
    call  getint
    mv  t6,a0
    sw  t6,-24(s0)
    j  .143wc43
.143wc43: 
    lw  t6,-24(s0)
    li  t5,0
    ble  t6,t5,.145wn43
.144wloop.43.47: 
    call  getint
    mv  t5,a0
    lui  t5,%hi(.G.n)
    addi  t5,t5,%lo(.G.n)
    sw  a0,0(t5)
    li  a0,1
    call  f
    mv  t5,a0
    lw  t5,-24(s0)
    li  t6,1
    subw  t4,t5,t6
    sw  t4,-24(s0)
    j  .143wc43
.145wn43: 
    lui  t4,%hi(.G.sum)
    addi  t4,t4,%lo(.G.sum)
    lw  t6,0(t4)
    mv  a0,t6
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	main, .-main
