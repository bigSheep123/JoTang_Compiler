    .file    "./functional2025/functional/61_sort_test7.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl	.G.buf
    .bss
    .align	3
    .type  .G.buf, @object
    .size  .G.buf, 800
.G.buf:
    .zero  800
    .text
    .align 1
    .globl merge_sort
    .type  merge_sort, @function
merge_sort: 
    addi  sp,sp,-48
    sd  ra,40(sp)
    sd  s0,32(sp)
    addi  s0,sp,48
.3: 
    sw  a0,-64(s0)
    sw  a1,-56(s0)
    lw  t6,-64(s0)
    li  t5,1
    addw  t4,t6,t5
    lw  t5,-56(s0)
    blt  t4,t5,.11
.10: 
    ld  ra,40(sp)
    ld  s0,32(sp)
    addi  sp,sp,48
    ret  
.11: 
    lw  t5,-64(s0)
    lw  t4,-56(s0)
    addw  t6,t5,t4
    li  t4,2
    divw  t5,t6,t4
    sw  t5,-48(s0)
    lw  t5,-64(s0)
    lw  t4,-48(s0)
    mv  a0,t5
    mv  a1,t4
    call  merge_sort
    mv  t4,a0
    lw  t4,-48(s0)
    lw  t5,-56(s0)
    mv  a0,t4
    mv  a1,t5
    call  merge_sort
    mv  t5,a0
    lw  t5,-64(s0)
    sw  t5,-40(s0)
    lw  t5,-48(s0)
    sw  t5,-32(s0)
    lw  t5,-64(s0)
    sw  t5,-24(s0)
    j  .40wc14
.40wc14: 
    lw  t5,-40(s0)
    lw  t4,-48(s0)
    bge  t5,t4,.42wn14
.47: 
    lw  t4,-32(s0)
    lw  t5,-56(s0)
    bge  t4,t5,.42wn14
.41wloop.14.23: 
    lw  t4,-40(s0)
    lui  t4,%hi(.G.buf)
    addi  t4,t4,%lo(.G.buf)
    lw  t5,-40(s0)
    slli  t5,t5,2
    add  t6,t4,t5
    lw  t5,0(t6)
    lw  t6,-32(s0)
    lui  t6,%hi(.G.buf)
    addi  t6,t6,%lo(.G.buf)
    lw  t4,-32(s0)
    slli  t4,t4,2
    add  t3,t6,t4
    lw  t4,0(t3)
    bge  t5,t4,.54
.53: 
    lw  t5,-40(s0)
    lui  t5,%hi(.G.buf)
    addi  t5,t5,%lo(.G.buf)
    lw  t4,-40(s0)
    slli  t4,t4,2
    add  t3,t5,t4
    lw  t4,0(t3)
    lw  t3,-24(s0)
    lui  t3,%hi(.G.buf)
    addi  t3,t3,%lo(.G.buf)
    lw  t5,-24(s0)
    slli  t5,t5,2
    add  t6,t3,t5
    sw  t4,t6
    lw  t6,-40(s0)
    li  t4,1
    addw  t5,t6,t4
    sw  t5,-40(s0)
    j  .73
.42wn14: 
    j  .89wc24
.54: 
    lw  t5,-32(s0)
    lui  t5,%hi(.G.buf)
    addi  t5,t5,%lo(.G.buf)
    lw  t4,-32(s0)
    slli  t4,t4,2
    add  t6,t5,t4
    lw  t4,0(t6)
    lw  t6,-24(s0)
    lui  t6,%hi(.G.buf)
    addi  t6,t6,%lo(.G.buf)
    lw  t5,-24(s0)
    slli  t5,t5,2
    add  t3,t6,t5
    sw  t4,t3
    lw  t3,-32(s0)
    li  t4,1
    addw  t5,t3,t4
    sw  t5,-32(s0)
    j  .73
.73: 
    lw  t5,-24(s0)
    li  t4,1
    addw  t3,t5,t4
    sw  t3,-24(s0)
    j  .40wc14
.89wc24: 
    lw  t3,-40(s0)
    lw  t4,-48(s0)
    bge  t3,t4,.91wn24
.90wloop.24.28: 
    lw  t4,-40(s0)
    lui  t4,%hi(.G.buf)
    addi  t4,t4,%lo(.G.buf)
    lw  t3,-40(s0)
    slli  t3,t3,2
    add  t5,t4,t3
    lw  t3,0(t5)
    lw  t5,-24(s0)
    lui  t5,%hi(.G.buf)
    addi  t5,t5,%lo(.G.buf)
    lw  t4,-24(s0)
    slli  t4,t4,2
    add  t6,t5,t4
    sw  t3,t6
    lw  t6,-40(s0)
    li  t3,1
    addw  t4,t6,t3
    sw  t4,-40(s0)
    lw  t4,-24(s0)
    li  t3,1
    addw  t6,t4,t3
    sw  t6,-24(s0)
    j  .89wc24
.91wn24: 
    j  .110wc29
.110wc29: 
    lw  t6,-32(s0)
    lw  t3,-56(s0)
    bge  t6,t3,.112wn29
.111wloop.29.33: 
    lw  t3,-32(s0)
    lui  t3,%hi(.G.buf)
    addi  t3,t3,%lo(.G.buf)
    lw  t6,-32(s0)
    slli  t6,t6,2
    add  t4,t3,t6
    lw  t6,0(t4)
    lw  t4,-24(s0)
    lui  t4,%hi(.G.buf)
    addi  t4,t4,%lo(.G.buf)
    lw  t3,-24(s0)
    slli  t3,t3,2
    add  t5,t4,t3
    sw  t6,t5
    lw  t5,-32(s0)
    li  t6,1
    addw  t3,t5,t6
    sw  t3,-32(s0)
    lw  t3,-24(s0)
    li  t6,1
    addw  t5,t3,t6
    sw  t5,-24(s0)
    j  .110wc29
.112wn29: 
    j  .131wc35
.131wc35: 
    lw  t5,-64(s0)
    lw  t6,-56(s0)
    bge  t5,t6,.133wn35
.132wloop.35.38: 
    lw  t6,-64(s0)
    lui  t6,%hi(.G.buf)
    addi  t6,t6,%lo(.G.buf)
    lw  t5,-64(s0)
    slli  t5,t5,2
    add  t3,t6,t5
    lw  t5,0(t3)
    lw  t3,-64(s0)
    lui  t3,%hi(.G.buf)
    addi  t3,t3,%lo(.G.buf)
    lw  t6,-64(s0)
    slli  t6,t6,2
    add  t4,t3,t6
    sw  t5,t4
    lw  t4,-64(s0)
    li  t5,1
    addw  t6,t4,t5
    sw  t6,-64(s0)
    j  .131wc35
.133wn35: 
    ld  ra,40(sp)
    ld  s0,32(sp)
    addi  sp,sp,48
    ret  
    .size	merge_sort, .-merge_sort
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.150: 
    lui  t6,%hi(.G.buf)
    addi  t6,t6,%lo(.G.buf)
    mv  a0,t6
    call  getarray
    mv  t6,a0
    sw  t6,-24(s0)
    lw  t6,-24(s0)
    li  a0,0
    mv  a1,t6
    call  merge_sort
    mv  t6,a0
    lw  t6,-24(s0)
    lui  t5,%hi(.G.buf)
    addi  t5,t5,%lo(.G.buf)
    mv  a0,t6
    mv  a1,t5
    call  putarray
    mv  t5,a0
    li  a0,0
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	main, .-main
