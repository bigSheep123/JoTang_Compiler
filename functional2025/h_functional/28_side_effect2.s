    .file    "./functional2025/h_functional/28_side_effect2.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl	.G.sum
    .data
    .align	2
    .type  .G.sum, @object
    .size  .G.sum, 4
.G.sum:
    .word  0
    .globl	.G.array
    .bss
    .align	3
    .type  .G.array, @object
    .size  .G.array, 80
.G.array:
    .zero  80
    .text
    .align 1
    .globl f
    .type  f, @function
f: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.4: 
    sw  a0,-32(s0)
    sw  a1,-24(s0)
    lui  t6,%hi(.G.sum)
    addi  t6,t6,%lo(.G.sum)
    lw  t5,0(t6)
    li  t6,1
    addw  t4,t5,t6
    lui  t6,%hi(.G.sum)
    addi  t6,t6,%lo(.G.sum)
    sw  t4,0(t6)
    lw  t6,-32(s0)
    lw  t4,-24(s0)
    bge  t6,t4,.15
.17: 
    lw  t5,-32(s0)
    li  t6,20
    bge  t5,t6,.15
.16: 
    lw  t4,-32(s0)
    lui  t4,%hi(.G.array)
    addi  t4,t4,%lo(.G.array)
    lw  t6,-32(s0)
    slli  t6,t6,2
    add  t5,t4,t6
    li  t6,1
    sw  t6,t5
    lw  t6,-32(s0)
    li  t5,0
    bne  t6,t5,.30
.29: 
    lui  t6,%hi(.G.array)
    addi  t6,t6,%lo(.G.array)
    lw  t5,0(t6)
    mv  a0,t5
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.15: 
    li  a0,0
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.30: 
    lw  t5,-32(s0)
    li  t6,1
    subw  t4,t5,t6
    lui  t4,%hi(.G.array)
    addi  t4,t4,%lo(.G.array)
    lw  t6,0(t4)
    mv  a0,t6
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	f, .-f
    .align 1
    .globl g
    .type  g, @function
g: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.42: 
    sw  a0,-32(s0)
    sw  a1,-24(s0)
    lui  t6,%hi(.G.sum)
    addi  t6,t6,%lo(.G.sum)
    lw  t5,0(t6)
    li  t6,2
    addw  t4,t5,t6
    lui  t6,%hi(.G.sum)
    addi  t6,t6,%lo(.G.sum)
    sw  t4,0(t6)
    lw  t6,-32(s0)
    lw  t4,-24(s0)
    bge  t6,t4,.53
.55: 
    lw  t5,-32(s0)
    li  t6,20
    bge  t5,t6,.53
.54: 
    lw  t4,-32(s0)
    lui  t4,%hi(.G.array)
    addi  t4,t4,%lo(.G.array)
    lw  t6,-32(s0)
    slli  t6,t6,2
    add  t5,t4,t6
    li  t6,0
    sw  t6,t5
    lw  t6,-32(s0)
    li  t5,0
    bne  t6,t5,.68
.67: 
    lui  t6,%hi(.G.array)
    addi  t6,t6,%lo(.G.array)
    lw  t5,0(t6)
    mv  a0,t5
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.53: 
    li  a0,1
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.68: 
    lw  t5,-32(s0)
    li  t6,1
    subw  t4,t5,t6
    lui  t4,%hi(.G.array)
    addi  t4,t4,%lo(.G.array)
    lw  t6,0(t4)
    mv  a0,t6
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	g, .-g
    .align 1
    .globl h
    .type  h, @function
h: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.80: 
    sw  a0,-24(s0)
    lui  t6,%hi(.G.sum)
    addi  t6,t6,%lo(.G.sum)
    lw  t5,0(t6)
    li  t6,3
    addw  t4,t5,t6
    lui  t6,%hi(.G.sum)
    addi  t6,t6,%lo(.G.sum)
    sw  t4,0(t6)
    lw  t6,-24(s0)
    li  t4,0
    blt  t6,t4,.88
.90: 
    lw  t6,-24(s0)
    li  t5,20
    bge  t6,t5,.88
.89: 
    lw  t4,-24(s0)
    lui  t4,%hi(.G.array)
    addi  t4,t4,%lo(.G.array)
    lw  t6,-24(s0)
    slli  t6,t6,2
    add  t5,t4,t6
    lw  t6,0(t5)
    mv  a0,t6
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.88: 
    li  a0,0
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	h, .-h
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.102: 
    li  t6,0
    sw  t6,-32(s0)
    j  .105wc28
.105wc28: 
    lw  t6,-32(s0)
    li  t5,20
    bge  t6,t5,.107wn28
.106wloop.28.34: 
    lw  t5,-32(s0)
    li  a0,0
    mv  a1,t5
    call  f
    mv  t5,a0
    li  t6,0
    beq  t5,t6,.113
.117: 
    lw  t4,-32(s0)
    li  a0,1
    mv  a1,t4
    call  f
    mv  t4,a0
    li  t5,0
    beq  t4,t5,.113
.122: 
    lw  t5,-32(s0)
    li  a0,2
    mv  a1,t5
    call  f
    mv  t5,a0
    li  t4,0
    beq  t5,t4,.113
.127: 
    lw  t4,-32(s0)
    li  a0,3
    mv  a1,t4
    call  f
    mv  t4,a0
    li  t5,0
    beq  t4,t5,.113
.132: 
    lw  t5,-32(s0)
    li  a0,4
    mv  a1,t5
    call  f
    mv  t5,a0
    li  t4,0
    beq  t5,t4,.113
.138: 
    lw  t4,-32(s0)
    li  a0,5
    mv  a1,t4
    call  f
    mv  t4,a0
    li  t5,0
    beq  t4,t5,.113
.144: 
    lw  t5,-32(s0)
    li  a0,6
    mv  a1,t5
    call  f
    mv  t5,a0
    li  t4,0
    beq  t5,t4,.113
.150: 
    lw  t4,-32(s0)
    li  a0,7
    mv  a1,t4
    call  f
    mv  t4,a0
    li  t5,0
    beq  t4,t5,.113
.156: 
    lw  t5,-32(s0)
    li  a0,8
    mv  a1,t5
    call  f
    mv  t5,a0
    li  t4,0
    beq  t5,t4,.113
.162: 
    lw  t4,-32(s0)
    li  a0,9
    mv  a1,t4
    call  f
    mv  t4,a0
    li  t5,0
    beq  t4,t5,.113
.168: 
    lw  t5,-32(s0)
    li  a0,10
    mv  a1,t5
    call  f
    mv  t5,a0
    li  t4,0
    beq  t5,t4,.113
.174: 
    lw  t4,-32(s0)
    li  a0,11
    mv  a1,t4
    call  f
    mv  t4,a0
    li  t5,0
    beq  t4,t5,.113
.180: 
    lw  t5,-32(s0)
    li  a0,12
    mv  a1,t5
    call  f
    mv  t5,a0
    li  t4,0
    beq  t5,t4,.113
.186: 
    lw  t4,-32(s0)
    li  a0,13
    mv  a1,t4
    call  f
    mv  t4,a0
    li  t5,0
    beq  t4,t5,.113
.192: 
    lw  t5,-32(s0)
    li  a0,14
    mv  a1,t5
    call  f
    mv  t5,a0
    li  t4,0
    beq  t5,t4,.113
.198: 
    lw  t4,-32(s0)
    li  a0,15
    mv  a1,t4
    call  f
    mv  t4,a0
    li  t5,0
    beq  t4,t5,.113
.204: 
    lw  t5,-32(s0)
    li  a0,16
    mv  a1,t5
    call  f
    mv  t5,a0
    li  t4,0
    beq  t5,t4,.113
.210: 
    lw  t4,-32(s0)
    li  a0,17
    mv  a1,t4
    call  f
    mv  t4,a0
    li  t5,0
    beq  t4,t5,.113
.216: 
    lw  t5,-32(s0)
    li  a0,18
    mv  a1,t5
    call  f
    mv  t5,a0
    li  t4,0
    beq  t5,t4,.113
.222: 
    lw  t4,-32(s0)
    li  a0,19
    mv  a1,t4
    call  f
    mv  t4,a0
    li  t5,0
    beq  t4,t5,.113
.112: 
    j  .113
.107wn28: 
    li  t6,0
    sw  t6,-32(s0)
    j  .235wc36
.113: 
    lw  t6,-32(s0)
    li  t5,1
    addw  t4,t6,t5
    sw  t4,-32(s0)
    j  .105wc28
.235wc36: 
    lw  t5,-32(s0)
    li  t4,20
    bge  t5,t4,.237wn36
.236wloop.36.42: 
    lw  t4,-32(s0)
    li  a0,0
    mv  a1,t4
    call  g
    mv  t4,a0
    li  t5,0
    bne  t4,t5,.242
.244: 
    lw  t6,-32(s0)
    li  a0,1
    mv  a1,t6
    call  g
    mv  t6,a0
    li  t4,0
    bne  t6,t4,.242
.249: 
    lw  t4,-32(s0)
    li  a0,2
    mv  a1,t4
    call  g
    mv  t4,a0
    li  t6,0
    bne  t4,t6,.242
.254: 
    lw  t6,-32(s0)
    li  a0,3
    mv  a1,t6
    call  g
    mv  t6,a0
    li  t4,0
    bne  t6,t4,.242
.259: 
    lw  t4,-32(s0)
    li  a0,4
    mv  a1,t4
    call  g
    mv  t4,a0
    li  t6,0
    bne  t4,t6,.242
.264: 
    lw  t6,-32(s0)
    li  a0,5
    mv  a1,t6
    call  g
    mv  t6,a0
    li  t4,0
    bne  t6,t4,.242
.269: 
    lw  t4,-32(s0)
    li  a0,6
    mv  a1,t4
    call  g
    mv  t4,a0
    li  t6,0
    bne  t4,t6,.242
.274: 
    lw  t6,-32(s0)
    li  a0,7
    mv  a1,t6
    call  g
    mv  t6,a0
    li  t4,0
    bne  t6,t4,.242
.279: 
    lw  t4,-32(s0)
    li  a0,8
    mv  a1,t4
    call  g
    mv  t4,a0
    li  t6,0
    bne  t4,t6,.242
.284: 
    lw  t6,-32(s0)
    li  a0,9
    mv  a1,t6
    call  g
    mv  t6,a0
    li  t4,0
    bne  t6,t4,.242
.289: 
    lw  t4,-32(s0)
    li  a0,10
    mv  a1,t4
    call  g
    mv  t4,a0
    li  t6,0
    bne  t4,t6,.242
.294: 
    lw  t6,-32(s0)
    li  a0,11
    mv  a1,t6
    call  g
    mv  t6,a0
    li  t4,0
    bne  t6,t4,.242
.299: 
    lw  t4,-32(s0)
    li  a0,12
    mv  a1,t4
    call  g
    mv  t4,a0
    li  t6,0
    bne  t4,t6,.242
.304: 
    lw  t6,-32(s0)
    li  a0,13
    mv  a1,t6
    call  g
    mv  t6,a0
    li  t4,0
    bne  t6,t4,.242
.309: 
    lw  t4,-32(s0)
    li  a0,14
    mv  a1,t4
    call  g
    mv  t4,a0
    li  t6,0
    bne  t4,t6,.242
.314: 
    lw  t6,-32(s0)
    li  a0,15
    mv  a1,t6
    call  g
    mv  t6,a0
    li  t4,0
    bne  t6,t4,.242
.319: 
    lw  t4,-32(s0)
    li  a0,16
    mv  a1,t4
    call  g
    mv  t4,a0
    li  t6,0
    bne  t4,t6,.242
.324: 
    lw  t6,-32(s0)
    li  a0,17
    mv  a1,t6
    call  g
    mv  t6,a0
    li  t4,0
    bne  t6,t4,.242
.329: 
    lw  t4,-32(s0)
    li  a0,18
    mv  a1,t4
    call  g
    mv  t4,a0
    li  t6,0
    bne  t4,t6,.242
.334: 
    lw  t6,-32(s0)
    li  a0,19
    mv  a1,t6
    call  g
    mv  t6,a0
    li  t4,0
    bne  t6,t4,.242
.243: 
    lw  t5,-32(s0)
    li  t4,1
    addw  t6,t5,t4
    sw  t6,-32(s0)
    j  .235wc36
.237wn36: 
    li  t5,1
    sw  t5,-32(s0)
    j  .349wc44
.242: 
    j  .243
.349wc44: 
    lw  t4,-32(s0)
    li  t6,20
    bge  t4,t6,.351wn44
.355: 
    lw  t4,-32(s0)
    li  t5,1
    subw  t6,t4,t5
    lw  t5,-32(s0)
    mv  a0,t6
    mv  a1,t5
    call  f
    mv  t5,a0
    li  t6,0
    beq  t5,t6,.351wn44
.350wloop.44.45: 
    lw  t6,-32(s0)
    li  t4,1
    addw  t5,t6,t4
    sw  t5,-32(s0)
    j  .349wc44
.351wn44: 
    li  t5,0
    sw  t5,-24(s0)
    li  a0,0
    call  h
    mv  t5,a0
    li  t4,0
    beq  t5,t4,.371
.374: 
    li  a0,1
    call  h
    mv  t4,a0
    li  t6,0
    bne  t4,t6,.369
.371: 
    li  a0,2
    call  h
    mv  t6,a0
    li  t4,0
    beq  t6,t4,.369
.379: 
    li  a0,3
    call  h
    mv  t6,a0
    li  t4,0
    bne  t6,t4,.369
.370: 
    lui  t6,%hi(.G.sum)
    addi  t6,t6,%lo(.G.sum)
    lw  t5,0(t6)
    lw  t6,-24(s0)
    addw  t4,t5,t6
    li  t4,0
    sw  t4,-24(s0)
    li  a0,4
    call  h
    mv  t4,a0
    li  t6,0
    beq  t4,t6,.392
.394: 
    li  a0,5
    call  h
    mv  t4,a0
    li  t5,0
    beq  t4,t5,.398
.401: 
    li  a0,6
    call  h
    mv  t4,a0
    li  t5,0
    bne  t4,t5,.398
.405: 
    li  a0,7
    call  h
    mv  t5,a0
    li  t4,0
    bne  t5,t4,.392
.398: 
    li  a0,8
    call  h
    mv  t5,a0
    li  t4,0
    beq  t5,t4,.392
.393: 
    lui  t4,%hi(.G.sum)
    addi  t4,t4,%lo(.G.sum)
    lw  t6,0(t4)
    lw  t4,-24(s0)
    mulw  t5,t6,t4
    li  t5,0
    sw  t5,-24(s0)
    li  a0,9
    call  h
    mv  t5,a0
    li  t4,0
    beq  t5,t4,.421
.424: 
    li  a0,10
    call  h
    mv  t6,a0
    li  t4,0
    beq  t6,t4,.419
.421: 
    li  a0,11
    call  h
    mv  t4,a0
    li  t6,0
    beq  t4,t6,.419
.429: 
    li  a0,12
    call  h
    mv  t4,a0
    li  t6,0
    beq  t4,t6,.419
.433: 
    li  a0,13
    call  h
    mv  t6,a0
    li  t4,0
    beq  t6,t4,.419
.437: 
    li  a0,14
    call  h
    mv  t4,a0
    li  t6,0
    beq  t4,t6,.420
.443: 
    li  a0,15
    call  h
    mv  t6,a0
    li  t4,0
    bne  t6,t4,.419
.420: 
    lui  t4,%hi(.G.sum)
    addi  t4,t4,%lo(.G.sum)
    lw  t5,0(t4)
    lw  t4,-24(s0)
    subw  t6,t5,t4
    li  t6,0
    sw  t6,-24(s0)
    li  a0,0
    call  h
    mv  t6,a0
    li  t4,0
    beq  t6,t4,.456
.459: 
    li  a0,2
    call  h
    mv  t4,a0
    li  t5,0
    beq  t4,t5,.456
.463: 
    li  a0,3
    call  h
    mv  t5,a0
    li  t4,0
    bne  t5,t4,.456
.467: 
    li  a0,4
    call  h
    mv  t4,a0
    li  t5,0
    beq  t4,t5,.454
.456: 
    li  a0,5
    call  h
    mv  t5,a0
    li  t4,0
    bne  t5,t4,.454
.472: 
    li  a0,6
    call  h
    mv  t5,a0
    li  t4,0
    beq  t5,t4,.476
.479: 
    li  a0,7
    call  h
    mv  t5,a0
    li  t4,0
    beq  t5,t4,.454
.476: 
    li  a0,8
    call  h
    mv  t4,a0
    li  t5,0
    bne  t4,t5,.454
.455: 
    lui  t4,%hi(.G.sum)
    addi  t4,t4,%lo(.G.sum)
    lw  t6,0(t4)
    lw  t4,-24(s0)
    addw  t5,t6,t4
    mv  a0,t5
    call  putint
    mv  t5,a0
    li  a0,0
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.369: 
    li  t6,1
    sw  t6,-24(s0)
    j  .370
.392: 
    li  t4,1
    sw  t4,-24(s0)
    j  .393
.419: 
    li  t4,1
    sw  t4,-24(s0)
    j  .420
.454: 
    li  t4,1
    sw  t4,-24(s0)
    j  .455
    .size	main, .-main
