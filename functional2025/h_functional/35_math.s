    .file    "./functional2025/h_functional/35_math.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl	.G.e
    .bss
    .align	2
    .type  .G.e, @object
    .size  .G.e, 4
.G.e:
    .zero  4
    .text
    .align 1
    .globl my_fabs
    .type  my_fabs, @function
my_fabs: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.2: 
    sw  a0,-24(s0)
    flw  t6,-24(s0)
    li  t0,0
    fcvt.s.w  t6,t0
    beq  t6,zero,.7
.6: 
    flw  t6,-24(s0)
    fmv.s  fa0,t6
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.7: 
    flw  t6,-24(s0)
    li  t5,0
    fsub.s  t4,t5,t6
    fmv.s  fa0,t4
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	my_fabs, .-my_fabs
    .align 1
    .globl my_pow
    .type  my_pow, @function
my_pow: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.19: 
    sw  a0,-40(s0)
    sw  a1,-32(s0)
    lw  t6,-32(s0)
    li  t5,0
    bge  t6,t5,.27
.26: 
    flw  t5,-40(s0)
    lw  t6,-32(s0)
    li  t4,0
    subw  t3,t4,t6
    mv  a0,t5
    mv  a1,t3
    call  my_pow
    mv  t3,a0
    li  t0,1
    fcvt.s.w  t5,t0
    fdiv.s  t5,t0,t3
    fmv.s  fa0,t5
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.27: 
    li  t0,1065353216
    fmv.w.x  t5,t0
    fsw  t5,-24(s0)
    j  .42wc13
.42wc13: 
    lw  t5,-32(s0)
    li  t3,0
    beq  t5,t3,.44wn13
.43wloop.13.17: 
    lw  t3,-32(s0)
    li  t5,2
    remw  t4,t3,t5
    li  t5,0
    beq  t4,t5,.50
.49: 
    flw  t5,-24(s0)
    flw  t4,-40(s0)
    fmul.s  t3,t5,t4
    fsw  t3,-24(s0)
    j  .50
.44wn13: 
    flw  t5,-24(s0)
    fmv.s  fa0,t5
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.50: 
    flw  t3,-40(s0)
    flw  t4,-40(s0)
    fmul.s  t5,t3,t4
    fsw  t5,-40(s0)
    lw  t5,-32(s0)
    li  t4,2
    divw  t3,t5,t4
    sw  t3,-32(s0)
    j  .42wc13
    .size	my_pow, .-my_pow
    .align 1
    .globl my_sqrt
    .type  my_sqrt, @function
my_sqrt: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.71: 
    sw  a0,-40(s0)
    flw  t6,-40(s0)
    li  t0,100
    fcvt.s.w  t6,t0
    beq  t6,zero,.76
.75: 
    flw  t6,-40(s0)
    li  t0,100
    fcvt.s.w  t5,t0
    fdiv.s  t5,t6,t0
    mv  a0,t5
    call  my_sqrt
    mv  t5,a0
    li  t6,1092616192
    fmul.s  t4,t6,t5
    fmv.s  fa0,t4
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.76: 
    flw  t4,-40(s0)
    li  t0,8
    fcvt.s.w  t6,t0
    fdiv.s  t6,t4,t0
    li  t4,1056964608
    fadd.s  t5,t6,t4
    flw  t4,-40(s0)
    li  t0,2
    fcvt.s.w  t6,t0
    fmul.s  t6,t0,t4
    flw  t4,-40(s0)
    li  t0,4
    fcvt.s.w  t3,t0
    fadd.s  t3,t0,t4
    fdiv.s  t4,t6,t3
    fadd.s  t3,t5,t4
    fsw  t3,-32(s0)
    li  t3,10
    sw  t3,-24(s0)
    j  .109wc25
.109wc25: 
    lw  t3,-24(s0)
    li  t4,0
    beq  t3,t4,.111wn25
.110wloop.25.28: 
    flw  t4,-32(s0)
    flw  t3,-40(s0)
    flw  t5,-32(s0)
    fdiv.s  t6,t3,t5
    fadd.s  t5,t4,t6
    li  t0,2
    fcvt.s.w  t6,t0
    fdiv.s  t6,t5,t0
    fsw  t6,-32(s0)
    lw  t6,-24(s0)
    li  t5,1
    subw  t4,t6,t5
    sw  t4,-24(s0)
    j  .109wc25
.111wn25: 
    flw  t4,-32(s0)
    fmv.s  fa0,t4
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	my_sqrt, .-my_sqrt
    .align 1
    .globl F1
    .type  F1, @function
F1: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.130: 
    sw  a0,-24(s0)
    flw  t6,-24(s0)
    li  t0,1
    fcvt.s.w  t5,t0
    fdiv.s  t5,t0,t6
    fmv.s  fa0,t5
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	F1, .-F1
    .align 1
    .globl F2
    .type  F2, @function
F2: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.138: 
    sw  a0,-24(s0)
    flw  t6,-24(s0)
    flw  t5,-24(s0)
    fmul.s  t4,t6,t5
    li  t0,1
    fcvt.s.w  t5,t0
    fsub.s  t5,t0,t4
    mv  a0,t5
    call  my_sqrt
    mv  t5,a0
    li  t0,1
    fcvt.s.w  t4,t0
    fdiv.s  t4,t0,t5
    fmv.s  fa0,t4
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	F2, .-F2
    .align 1
    .globl simpson
    .type  simpson, @function
simpson: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.151: 
    sw  a0,-48(s0)
    sw  a1,-40(s0)
    sw  a2,-32(s0)
    flw  t6,-48(s0)
    flw  t5,-40(s0)
    flw  t4,-48(s0)
    fsub.s  t3,t5,t4
    li  t0,2
    fcvt.s.w  t4,t0
    fdiv.s  t4,t3,t0
    fadd.s  t3,t6,t4
    fsw  t3,-24(s0)
    lw  t3,-32(s0)
    li  t4,1
    bne  t3,t4,.171
.170: 
    flw  t4,-48(s0)
    mv  a0,t4
    call  F1
    mv  t4,a0
    flw  t3,-24(s0)
    mv  a0,t3
    call  F1
    mv  t3,a0
    li  t0,4
    fcvt.s.w  t6,t0
    fmul.s  t6,t0,t3
    fadd.s  t3,t4,t6
    flw  t6,-40(s0)
    mv  a0,t6
    call  F1
    mv  t6,a0
    fadd.s  t4,t3,t6
    flw  t6,-40(s0)
    flw  t3,-48(s0)
    fsub.s  t5,t6,t3
    fmul.s  t3,t4,t5
    li  t0,6
    fcvt.s.w  t5,t0
    fdiv.s  t5,t3,t0
    fmv.s  fa0,t5
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.171: 
    lw  t5,-32(s0)
    li  t3,2
    bne  t5,t3,.194
.193: 
    flw  t3,-48(s0)
    mv  a0,t3
    call  F2
    mv  t3,a0
    flw  t5,-24(s0)
    mv  a0,t5
    call  F2
    mv  t5,a0
    li  t0,4
    fcvt.s.w  t4,t0
    fmul.s  t4,t0,t5
    fadd.s  t5,t3,t4
    flw  t4,-40(s0)
    mv  a0,t4
    call  F2
    mv  t4,a0
    fadd.s  t3,t5,t4
    flw  t4,-40(s0)
    flw  t5,-48(s0)
    fsub.s  t6,t4,t5
    fmul.s  t5,t3,t6
    li  t0,6
    fcvt.s.w  t6,t0
    fdiv.s  t6,t5,t0
    fmv.s  fa0,t6
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.194: 
    li  t0,0
    fcvt.s.w  t6,t0
    fmv.s  fa0,t6
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	simpson, .-simpson
    .align 1
    .globl asr5
    .type  asr5, @function
asr5: 
    addi  sp,sp,-48
    sd  ra,40(sp)
    sd  s0,32(sp)
    addi  s0,sp,48
.217: 
    sw  a0,-80(s0)
    sw  a1,-72(s0)
    sw  a2,-64(s0)
    sw  a3,-56(s0)
    sw  a4,-48(s0)
    flw  t6,-80(s0)
    flw  t5,-72(s0)
    flw  t4,-80(s0)
    fsub.s  t3,t5,t4
    li  t0,2
    fcvt.s.w  t4,t0
    fdiv.s  t4,t3,t0
    fadd.s  t3,t6,t4
    fsw  t3,-40(s0)
    flw  t3,-80(s0)
    flw  t4,-40(s0)
    lw  t6,-48(s0)
    mv  a0,t3
    mv  a1,t4
    mv  a2,t6
    call  simpson
    mv  t6,a0
    fsw  t6,-32(s0)
    flw  t6,-40(s0)
    flw  t4,-72(s0)
    lw  t3,-48(s0)
    mv  a0,t6
    mv  a1,t4
    mv  a2,t3
    call  simpson
    mv  t3,a0
    fsw  t3,-24(s0)
    flw  t3,-32(s0)
    flw  t4,-24(s0)
    fadd.s  t6,t3,t4
    flw  t4,-56(s0)
    fsub.s  t3,t6,t4
    mv  a0,t3
    call  my_fabs
    mv  t3,a0
    flw  t3,-64(s0)
    li  t0,15
    fcvt.s.w  t4,t0
    fmul.s  t4,t0,t3
    beq  t4,zero,.255
.254: 
    flw  t4,-32(s0)
    flw  t3,-24(s0)
    fadd.s  t6,t4,t3
    flw  t3,-32(s0)
    flw  t4,-24(s0)
    fadd.s  t5,t3,t4
    flw  t4,-56(s0)
    fsub.s  t3,t5,t4
    li  t4,1097859072
    fdiv.s  t5,t3,t4
    fadd.s  t4,t6,t5
    fmv.s  fa0,t4
    ld  ra,40(sp)
    ld  s0,32(sp)
    addi  sp,sp,48
    ret  
.255: 
    flw  t4,-80(s0)
    flw  t5,-40(s0)
    flw  t6,-64(s0)
    li  t0,2
    fcvt.s.w  t3,t0
    fdiv.s  t3,t6,t0
    flw  t6,-32(s0)
    lw  t2,-48(s0)
    mv  a0,t4
    mv  a1,t5
    mv  a2,t3
    mv  a3,t6
    mv  a4,t2
    call  asr5
    mv  t2,a0
    flw  t6,-40(s0)
    flw  t3,-72(s0)
    flw  t5,-64(s0)
    li  t0,2
    fcvt.s.w  t4,t0
    fdiv.s  t4,t5,t0
    flw  t5,-24(s0)
    lw  s11,-48(s0)
    mv  a0,t6
    mv  a1,t3
    mv  a2,t4
    mv  a3,t5
    mv  a4,s11
    call  asr5
    mv  s11,a0
    fadd.s  t5,t2,s11
    fmv.s  fa0,t5
    ld  ra,40(sp)
    ld  s0,32(sp)
    addi  sp,sp,48
    ret  
    .size	asr5, .-asr5
    .align 1
    .globl asr4
    .type  asr4, @function
asr4: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.298: 
    sw  a0,-48(s0)
    sw  a1,-40(s0)
    sw  a2,-32(s0)
    sw  a3,-24(s0)
    flw  t6,-48(s0)
    flw  t5,-40(s0)
    flw  t4,-32(s0)
    flw  t3,-48(s0)
    flw  t2,-40(s0)
    lw  s11,-24(s0)
    mv  a0,t3
    mv  a1,t2
    mv  a2,s11
    call  simpson
    mv  s11,a0
    lw  s11,-24(s0)
    mv  a0,t6
    mv  a1,t5
    mv  a2,t4
    mv  a4,s11
    call  asr5
    mv  s11,a0
    fmv.s  fa0,s11
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	asr4, .-asr4
    .align 1
    .globl eee
    .type  eee, @function
eee: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.321: 
    sw  a0,-32(s0)
    flw  t6,-32(s0)
    li  t0,981668463
    fmv.w.x  t5,t0
    flt.s  t4,t6,t5
    beq  t4,zero,.326
.325: 
    flw  t4,-32(s0)
    li  t0,2
    fcvt.s.w  t5,t0
    fdiv.s  t5,t4,t0
    mv  a0,t5
    call  eee
    mv  t5,a0
    fsw  t5,-24(s0)
    flw  t5,-24(s0)
    flw  t4,-24(s0)
    fmul.s  t6,t5,t4
    fmv.s  fa0,t6
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.326: 
    flw  t6,-32(s0)
    li  t0,1
    fcvt.s.w  t4,t0
    fadd.s  t4,t0,t6
    flw  t6,-32(s0)
    flw  t5,-32(s0)
    fmul.s  t3,t6,t5
    li  t0,2
    fcvt.s.w  t5,t0
    fdiv.s  t5,t3,t0
    fadd.s  t3,t4,t5
    flw  t5,-32(s0)
    mv  a0,t5
    li  a1,3
    call  my_pow
    mv  t5,a0
    li  t0,6
    fcvt.s.w  t4,t0
    fdiv.s  t4,t5,t0
    fadd.s  t5,t3,t4
    flw  t4,-32(s0)
    mv  a0,t4
    li  a1,4
    call  my_pow
    mv  t4,a0
    li  t0,24
    fcvt.s.w  t3,t0
    fdiv.s  t3,t4,t0
    fadd.s  t4,t5,t3
    flw  t3,-32(s0)
    mv  a0,t3
    li  a1,5
    call  my_pow
    mv  t3,a0
    li  t0,120
    fcvt.s.w  t5,t0
    fdiv.s  t5,t3,t0
    fadd.s  t3,t4,t5
    fmv.s  fa0,t3
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	eee, .-eee
    .align 1
    .globl my_exp
    .type  my_exp, @function
my_exp: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.370: 
    sw  a0,-48(s0)
    flw  t6,-48(s0)
    li  t0,0
    fcvt.s.w  t6,t0
    beq  t6,zero,.375
.374: 
    flw  t6,-48(s0)
    li  t5,0
    fsub.s  t4,t5,t6
    mv  a0,t4
    call  my_exp
    mv  t4,a0
    li  t0,1
    fcvt.s.w  t5,t0
    fdiv.s  t5,t0,t4
    fmv.s  fa0,t5
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.375: 
    flw  t5,-48(s0)
    fcvt.w.s  t4,t5,rtz
    sw  t4,-40(s0)
    flw  t4,-48(s0)
    lw  t5,-40(s0)
    fcvt.s.w  t6,t5
    fsub.s  t5,t4,t6
    fsw  t5,-48(s0)
    lw  t5,-40(s0)
    li  a0,1076754516
    mv  a1,t5
    call  my_pow
    mv  t5,a0
    fsw  t5,-32(s0)
    flw  t5,-48(s0)
    mv  a0,t5
    call  eee
    mv  t5,a0
    fsw  t5,-24(s0)
    flw  t5,-32(s0)
    flw  t6,-24(s0)
    fmul.s  t4,t5,t6
    fmv.s  fa0,t4
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	my_exp, .-my_exp
    .align 1
    .globl my_ln
    .type  my_ln, @function
my_ln: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.407: 
    sw  a0,-24(s0)
    flw  t6,-24(s0)
    li  t0,1
    fcvt.s.w  t5,t0
    mv  a0,t0
    mv  a1,t6
    li  a2,841731191
    li  a3,1
    call  asr4
    mv  t6,a0
    fmv.s  fa0,t6
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	my_ln, .-my_ln
    .align 1
    .globl my_log
    .type  my_log, @function
my_log: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.416: 
    sw  a0,-32(s0)
    sw  a1,-24(s0)
    flw  t6,-24(s0)
    mv  a0,t6
    call  my_ln
    mv  t6,a0
    flw  t5,-32(s0)
    mv  a0,t5
    call  my_ln
    mv  t5,a0
    fdiv.s  t4,t6,t5
    fmv.s  fa0,t4
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	my_log, .-my_log
    .align 1
    .globl my_powf
    .type  my_powf, @function
my_powf: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.429: 
    sw  a0,-32(s0)
    sw  a1,-24(s0)
    flw  t6,-24(s0)
    flw  t5,-32(s0)
    mv  a0,t5
    call  my_ln
    mv  t5,a0
    fmul.s  t4,t6,t5
    mv  a0,t4
    call  my_exp
    mv  t4,a0
    fmv.s  fa0,t4
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	my_powf, .-my_powf
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.442: 
    call  getint
    mv  t6,a0
    sw  t6,-40(s0)
    j  .447wc80
.447wc80: 
    lw  t6,-40(s0)
    li  t5,0
    beq  t6,t5,.449wn80
.448wloop.80.109: 
    call  getfloat
    mv  t5,a0
    fsw  t5,-32(s0)
    call  getfloat
    mv  t5,a0
    fsw  t5,-24(s0)
    flw  t5,-32(s0)
    mv  a0,t5
    call  my_fabs
    mv  t5,a0
    call  putfloat
    mv  t5,a0
    li  a0,32
    call  putch
    mv  t5,a0
    flw  t5,-32(s0)
    mv  a0,t5
    li  a1,2
    call  my_pow
    mv  t5,a0
    call  putfloat
    mv  t5,a0
    li  a0,32
    call  putch
    mv  t5,a0
    flw  t5,-32(s0)
    mv  a0,t5
    call  my_sqrt
    mv  t5,a0
    call  putfloat
    mv  t5,a0
    li  a0,32
    call  putch
    mv  t5,a0
    flw  t5,-32(s0)
    mv  a0,t5
    call  my_exp
    mv  t5,a0
    call  putfloat
    mv  t5,a0
    li  a0,32
    call  putch
    mv  t5,a0
    flw  t5,-32(s0)
    li  t0,0
    fcvt.s.w  t5,t0
    beq  t5,zero,.481
.449wn80: 
    li  a0,0
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.480: 
    flw  t5,-32(s0)
    mv  a0,t5
    call  my_ln
    mv  t5,a0
    call  putfloat
    mv  t5,a0
    j  .489
.481: 
    li  a0,45
    call  putch
    mv  t5,a0
    j  .489
.489: 
    li  a0,32
    call  putch
    mv  t5,a0
    flw  t5,-32(s0)
    li  t0,0
    fcvt.s.w  t5,t0
    beq  t5,zero,.496
.495: 
    flw  t5,-32(s0)
    flw  t6,-24(s0)
    mv  a0,t5
    mv  a1,t6
    call  my_log
    mv  t6,a0
    call  putfloat
    mv  t6,a0
    j  .510
.496: 
    li  a0,45
    call  putch
    mv  t6,a0
    j  .510
.500: 
    flw  t6,-24(s0)
    li  t0,0
    fcvt.s.w  t6,t0
    beq  t6,zero,.496
.510: 
    li  a0,32
    call  putch
    mv  t6,a0
    flw  t6,-32(s0)
    li  t0,0
    fcvt.s.w  t6,t0
    beq  t6,zero,.516
.515: 
    flw  t6,-32(s0)
    flw  t5,-24(s0)
    mv  a0,t6
    mv  a1,t5
    call  my_powf
    mv  t5,a0
    call  putfloat
    mv  t5,a0
    j  .525
.516: 
    li  a0,45
    call  putch
    mv  t5,a0
    j  .525
.525: 
    li  a0,10
    call  putch
    mv  t5,a0
    lw  t5,-40(s0)
    li  t6,1
    subw  t4,t5,t6
    sw  t4,-40(s0)
    j  .447wc80
    .size	main, .-main
