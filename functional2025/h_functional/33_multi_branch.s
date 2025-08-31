    .file    "./functional2025/h_functional/33_multi_branch.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.0: 
    call  getint
    mv  t6,a0
    sw  t6,-32(s0)
    li  t6,0
    sw  t6,-24(s0)
    j  .10wc5
.10wc5: 
    lw  t6,-24(s0)
    lw  t5,-32(s0)
    bge  t6,t5,.12wn5
.11wloop.5.210: 
    li  t5,0
    sw  t5,-40(s0)
    call  getint
    mv  t5,a0
    sw  t5,-48(s0)
    lw  t5,-48(s0)
    li  t6,0
    ble  t5,t6,.22
.25: 
    lw  t4,-48(s0)
    li  t6,100
    bge  t4,t6,.22
.21: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.32
.35: 
    lw  t5,-48(s0)
    li  t6,99
    bge  t5,t6,.32
.31: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.42
.45: 
    lw  t4,-48(s0)
    li  t6,98
    bge  t4,t6,.42
.41: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.52
.55: 
    lw  t5,-48(s0)
    li  t6,97
    bge  t5,t6,.52
.51: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.62
.65: 
    lw  t4,-48(s0)
    li  t6,96
    bge  t4,t6,.62
.61: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.72
.75: 
    lw  t5,-48(s0)
    li  t6,95
    bge  t5,t6,.72
.71: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.82
.85: 
    lw  t4,-48(s0)
    li  t6,94
    bge  t4,t6,.82
.81: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.92
.95: 
    lw  t5,-48(s0)
    li  t6,93
    bge  t5,t6,.92
.91: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.102
.105: 
    lw  t4,-48(s0)
    li  t6,92
    bge  t4,t6,.102
.101: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.112
.115: 
    lw  t5,-48(s0)
    li  t6,91
    bge  t5,t6,.112
.111: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.122
.125: 
    lw  t4,-48(s0)
    li  t6,90
    bge  t4,t6,.122
.121: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.132
.135: 
    lw  t5,-48(s0)
    li  t6,89
    bge  t5,t6,.132
.131: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.142
.145: 
    lw  t4,-48(s0)
    li  t6,88
    bge  t4,t6,.142
.141: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.152
.155: 
    lw  t5,-48(s0)
    li  t6,87
    bge  t5,t6,.152
.151: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.162
.165: 
    lw  t4,-48(s0)
    li  t6,86
    bge  t4,t6,.162
.161: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.172
.175: 
    lw  t5,-48(s0)
    li  t6,85
    bge  t5,t6,.172
.171: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.182
.185: 
    lw  t4,-48(s0)
    li  t6,84
    bge  t4,t6,.182
.181: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.192
.195: 
    lw  t5,-48(s0)
    li  t6,83
    bge  t5,t6,.192
.191: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.202
.205: 
    lw  t4,-48(s0)
    li  t6,82
    bge  t4,t6,.202
.201: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.212
.215: 
    lw  t5,-48(s0)
    li  t6,81
    bge  t5,t6,.212
.211: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.222
.225: 
    lw  t4,-48(s0)
    li  t6,80
    bge  t4,t6,.222
.221: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.232
.235: 
    lw  t5,-48(s0)
    li  t6,79
    bge  t5,t6,.232
.231: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.242
.245: 
    lw  t4,-48(s0)
    li  t6,78
    bge  t4,t6,.242
.241: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.252
.255: 
    lw  t5,-48(s0)
    li  t6,77
    bge  t5,t6,.252
.251: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.262
.265: 
    lw  t4,-48(s0)
    li  t6,76
    bge  t4,t6,.262
.261: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.272
.275: 
    lw  t5,-48(s0)
    li  t6,75
    bge  t5,t6,.272
.271: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.282
.285: 
    lw  t4,-48(s0)
    li  t6,74
    bge  t4,t6,.282
.281: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.292
.295: 
    lw  t5,-48(s0)
    li  t6,73
    bge  t5,t6,.292
.291: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.302
.305: 
    lw  t4,-48(s0)
    li  t6,72
    bge  t4,t6,.302
.301: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.312
.315: 
    lw  t5,-48(s0)
    li  t6,71
    bge  t5,t6,.312
.311: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.322
.325: 
    lw  t4,-48(s0)
    li  t6,70
    bge  t4,t6,.322
.321: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.332
.335: 
    lw  t5,-48(s0)
    li  t6,69
    bge  t5,t6,.332
.331: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.342
.345: 
    lw  t4,-48(s0)
    li  t6,68
    bge  t4,t6,.342
.341: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.352
.355: 
    lw  t5,-48(s0)
    li  t6,67
    bge  t5,t6,.352
.351: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.362
.365: 
    lw  t4,-48(s0)
    li  t6,66
    bge  t4,t6,.362
.361: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.372
.375: 
    lw  t5,-48(s0)
    li  t6,65
    bge  t5,t6,.372
.371: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.382
.385: 
    lw  t4,-48(s0)
    li  t6,64
    bge  t4,t6,.382
.381: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.392
.395: 
    lw  t5,-48(s0)
    li  t6,63
    bge  t5,t6,.392
.391: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.402
.405: 
    lw  t4,-48(s0)
    li  t6,62
    bge  t4,t6,.402
.401: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.412
.415: 
    lw  t5,-48(s0)
    li  t6,61
    bge  t5,t6,.412
.411: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.422
.425: 
    lw  t4,-48(s0)
    li  t6,60
    bge  t4,t6,.422
.421: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.432
.435: 
    lw  t5,-48(s0)
    li  t6,59
    bge  t5,t6,.432
.431: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.442
.445: 
    lw  t4,-48(s0)
    li  t6,58
    bge  t4,t6,.442
.441: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.452
.455: 
    lw  t5,-48(s0)
    li  t6,57
    bge  t5,t6,.452
.451: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.462
.465: 
    lw  t4,-48(s0)
    li  t6,56
    bge  t4,t6,.462
.461: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.472
.475: 
    lw  t5,-48(s0)
    li  t6,55
    bge  t5,t6,.472
.471: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.482
.485: 
    lw  t4,-48(s0)
    li  t6,54
    bge  t4,t6,.482
.481: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.492
.495: 
    lw  t5,-48(s0)
    li  t6,53
    bge  t5,t6,.492
.491: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.502
.505: 
    lw  t4,-48(s0)
    li  t6,52
    bge  t4,t6,.502
.501: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.512
.515: 
    lw  t5,-48(s0)
    li  t6,51
    bge  t5,t6,.512
.511: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.522
.525: 
    lw  t4,-48(s0)
    li  t6,50
    bge  t4,t6,.522
.521: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.532
.535: 
    lw  t5,-48(s0)
    li  t6,49
    bge  t5,t6,.532
.531: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.542
.545: 
    lw  t4,-48(s0)
    li  t6,48
    bge  t4,t6,.542
.541: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.552
.555: 
    lw  t5,-48(s0)
    li  t6,47
    bge  t5,t6,.552
.551: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.562
.565: 
    lw  t4,-48(s0)
    li  t6,46
    bge  t4,t6,.562
.561: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.572
.575: 
    lw  t5,-48(s0)
    li  t6,45
    bge  t5,t6,.572
.571: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.582
.585: 
    lw  t4,-48(s0)
    li  t6,44
    bge  t4,t6,.582
.581: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.592
.595: 
    lw  t5,-48(s0)
    li  t6,43
    bge  t5,t6,.592
.591: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.602
.605: 
    lw  t4,-48(s0)
    li  t6,42
    bge  t4,t6,.602
.601: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.612
.615: 
    lw  t5,-48(s0)
    li  t6,41
    bge  t5,t6,.612
.611: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.622
.625: 
    lw  t4,-48(s0)
    li  t6,40
    bge  t4,t6,.622
.621: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.632
.635: 
    lw  t5,-48(s0)
    li  t6,39
    bge  t5,t6,.632
.631: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.642
.645: 
    lw  t4,-48(s0)
    li  t6,38
    bge  t4,t6,.642
.641: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.652
.655: 
    lw  t5,-48(s0)
    li  t6,37
    bge  t5,t6,.652
.651: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.662
.665: 
    lw  t4,-48(s0)
    li  t6,36
    bge  t4,t6,.662
.661: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.672
.675: 
    lw  t5,-48(s0)
    li  t6,35
    bge  t5,t6,.672
.671: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.682
.685: 
    lw  t4,-48(s0)
    li  t6,34
    bge  t4,t6,.682
.681: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.692
.695: 
    lw  t5,-48(s0)
    li  t6,33
    bge  t5,t6,.692
.691: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.702
.705: 
    lw  t4,-48(s0)
    li  t6,32
    bge  t4,t6,.702
.701: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.712
.715: 
    lw  t5,-48(s0)
    li  t6,31
    bge  t5,t6,.712
.711: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.722
.725: 
    lw  t4,-48(s0)
    li  t6,30
    bge  t4,t6,.722
.721: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.732
.735: 
    lw  t5,-48(s0)
    li  t6,29
    bge  t5,t6,.732
.731: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.742
.745: 
    lw  t4,-48(s0)
    li  t6,28
    bge  t4,t6,.742
.741: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.752
.755: 
    lw  t5,-48(s0)
    li  t6,27
    bge  t5,t6,.752
.751: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.762
.765: 
    lw  t4,-48(s0)
    li  t6,26
    bge  t4,t6,.762
.761: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.772
.775: 
    lw  t5,-48(s0)
    li  t6,25
    bge  t5,t6,.772
.771: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.782
.785: 
    lw  t4,-48(s0)
    li  t6,24
    bge  t4,t6,.782
.781: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.792
.795: 
    lw  t5,-48(s0)
    li  t6,23
    bge  t5,t6,.792
.791: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.802
.805: 
    lw  t4,-48(s0)
    li  t6,22
    bge  t4,t6,.802
.801: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.812
.815: 
    lw  t5,-48(s0)
    li  t6,21
    bge  t5,t6,.812
.811: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.822
.825: 
    lw  t4,-48(s0)
    li  t6,20
    bge  t4,t6,.822
.821: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.832
.835: 
    lw  t5,-48(s0)
    li  t6,19
    bge  t5,t6,.832
.831: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.842
.845: 
    lw  t4,-48(s0)
    li  t6,18
    bge  t4,t6,.842
.841: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.852
.855: 
    lw  t5,-48(s0)
    li  t6,17
    bge  t5,t6,.852
.851: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.862
.865: 
    lw  t4,-48(s0)
    li  t6,16
    bge  t4,t6,.862
.861: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.872
.875: 
    lw  t5,-48(s0)
    li  t6,15
    bge  t5,t6,.872
.871: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.882
.885: 
    lw  t4,-48(s0)
    li  t6,14
    bge  t4,t6,.882
.881: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.892
.895: 
    lw  t5,-48(s0)
    li  t6,13
    bge  t5,t6,.892
.891: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.902
.905: 
    lw  t4,-48(s0)
    li  t6,12
    bge  t4,t6,.902
.901: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.912
.915: 
    lw  t5,-48(s0)
    li  t6,11
    bge  t5,t6,.912
.911: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.922
.925: 
    lw  t4,-48(s0)
    li  t6,10
    bge  t4,t6,.922
.921: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.932
.935: 
    lw  t5,-48(s0)
    li  t6,9
    bge  t5,t6,.932
.931: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.942
.945: 
    lw  t4,-48(s0)
    li  t6,8
    bge  t4,t6,.942
.941: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.952
.955: 
    lw  t5,-48(s0)
    li  t6,7
    bge  t5,t6,.952
.951: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.962
.965: 
    lw  t4,-48(s0)
    li  t6,6
    bge  t4,t6,.962
.961: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.972
.975: 
    lw  t5,-48(s0)
    li  t6,5
    bge  t5,t6,.972
.971: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.982
.985: 
    lw  t4,-48(s0)
    li  t6,4
    bge  t4,t6,.982
.981: 
    lw  t6,-48(s0)
    li  t5,0
    ble  t6,t5,.992
.995: 
    lw  t5,-48(s0)
    li  t6,3
    bge  t5,t6,.992
.991: 
    lw  t6,-48(s0)
    li  t4,0
    ble  t6,t4,.1002
.1005: 
    lw  t6,-48(s0)
    li  t5,2
    bge  t6,t5,.1002
.1001: 
    lw  t6,-40(s0)
    li  t5,1
    addw  t4,t6,t5
    sw  t4,-40(s0)
    j  .1015
.12wn5: 
    li  a0,0
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.22: 
    lw  t5,-40(s0)
    li  t6,100
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1603
.32: 
    lw  t4,-40(s0)
    li  t6,99
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1597
.42: 
    lw  t5,-40(s0)
    li  t6,98
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1591
.52: 
    lw  t4,-40(s0)
    li  t6,97
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1585
.62: 
    lw  t5,-40(s0)
    li  t6,96
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1579
.72: 
    lw  t4,-40(s0)
    li  t6,95
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1573
.82: 
    lw  t5,-40(s0)
    li  t6,94
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1567
.92: 
    lw  t4,-40(s0)
    li  t6,93
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1561
.102: 
    lw  t5,-40(s0)
    li  t6,92
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1555
.112: 
    lw  t4,-40(s0)
    li  t6,91
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1549
.122: 
    lw  t5,-40(s0)
    li  t6,90
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1543
.132: 
    lw  t4,-40(s0)
    li  t6,89
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1537
.142: 
    lw  t5,-40(s0)
    li  t6,88
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1531
.152: 
    lw  t4,-40(s0)
    li  t6,87
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1525
.162: 
    lw  t5,-40(s0)
    li  t6,86
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1519
.172: 
    lw  t4,-40(s0)
    li  t6,85
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1513
.182: 
    lw  t5,-40(s0)
    li  t6,84
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1507
.192: 
    lw  t4,-40(s0)
    li  t6,83
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1501
.202: 
    lw  t5,-40(s0)
    li  t6,82
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1495
.212: 
    lw  t4,-40(s0)
    li  t6,81
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1489
.222: 
    lw  t5,-40(s0)
    li  t6,80
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1483
.232: 
    lw  t4,-40(s0)
    li  t6,79
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1477
.242: 
    lw  t5,-40(s0)
    li  t6,78
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1471
.252: 
    lw  t4,-40(s0)
    li  t6,77
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1465
.262: 
    lw  t5,-40(s0)
    li  t6,76
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1459
.272: 
    lw  t4,-40(s0)
    li  t6,75
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1453
.282: 
    lw  t5,-40(s0)
    li  t6,74
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1447
.292: 
    lw  t4,-40(s0)
    li  t6,73
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1441
.302: 
    lw  t5,-40(s0)
    li  t6,72
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1435
.312: 
    lw  t4,-40(s0)
    li  t6,71
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1429
.322: 
    lw  t5,-40(s0)
    li  t6,70
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1423
.332: 
    lw  t4,-40(s0)
    li  t6,69
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1417
.342: 
    lw  t5,-40(s0)
    li  t6,68
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1411
.352: 
    lw  t4,-40(s0)
    li  t6,67
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1405
.362: 
    lw  t5,-40(s0)
    li  t6,66
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1399
.372: 
    lw  t4,-40(s0)
    li  t6,65
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1393
.382: 
    lw  t5,-40(s0)
    li  t6,64
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1387
.392: 
    lw  t4,-40(s0)
    li  t6,63
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1381
.402: 
    lw  t5,-40(s0)
    li  t6,62
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1375
.412: 
    lw  t4,-40(s0)
    li  t6,61
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1369
.422: 
    lw  t5,-40(s0)
    li  t6,60
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1363
.432: 
    lw  t4,-40(s0)
    li  t6,59
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1357
.442: 
    lw  t5,-40(s0)
    li  t6,58
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1351
.452: 
    lw  t4,-40(s0)
    li  t6,57
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1345
.462: 
    lw  t5,-40(s0)
    li  t6,56
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1339
.472: 
    lw  t4,-40(s0)
    li  t6,55
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1333
.482: 
    lw  t5,-40(s0)
    li  t6,54
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1327
.492: 
    lw  t4,-40(s0)
    li  t6,53
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1321
.502: 
    lw  t5,-40(s0)
    li  t6,52
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1315
.512: 
    lw  t4,-40(s0)
    li  t6,51
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1309
.522: 
    lw  t5,-40(s0)
    li  t6,50
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1303
.532: 
    lw  t4,-40(s0)
    li  t6,49
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1297
.542: 
    lw  t5,-40(s0)
    li  t6,48
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1291
.552: 
    lw  t4,-40(s0)
    li  t6,47
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1285
.562: 
    lw  t5,-40(s0)
    li  t6,46
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1279
.572: 
    lw  t4,-40(s0)
    li  t6,45
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1273
.582: 
    lw  t5,-40(s0)
    li  t6,44
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1267
.592: 
    lw  t4,-40(s0)
    li  t6,43
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1261
.602: 
    lw  t5,-40(s0)
    li  t6,42
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1255
.612: 
    lw  t4,-40(s0)
    li  t6,41
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1249
.622: 
    lw  t5,-40(s0)
    li  t6,40
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1243
.632: 
    lw  t4,-40(s0)
    li  t6,39
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1237
.642: 
    lw  t5,-40(s0)
    li  t6,38
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1231
.652: 
    lw  t4,-40(s0)
    li  t6,37
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1225
.662: 
    lw  t5,-40(s0)
    li  t6,36
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1219
.672: 
    lw  t4,-40(s0)
    li  t6,35
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1213
.682: 
    lw  t5,-40(s0)
    li  t6,34
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1207
.692: 
    lw  t4,-40(s0)
    li  t6,33
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1201
.702: 
    lw  t5,-40(s0)
    li  t6,32
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1195
.712: 
    lw  t4,-40(s0)
    li  t6,31
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1189
.722: 
    lw  t5,-40(s0)
    li  t6,30
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1183
.732: 
    lw  t4,-40(s0)
    li  t6,29
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1177
.742: 
    lw  t5,-40(s0)
    li  t6,28
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1171
.752: 
    lw  t4,-40(s0)
    li  t6,27
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1165
.762: 
    lw  t5,-40(s0)
    li  t6,26
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1159
.772: 
    lw  t4,-40(s0)
    li  t6,25
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1153
.782: 
    lw  t5,-40(s0)
    li  t6,24
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1147
.792: 
    lw  t4,-40(s0)
    li  t6,23
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1141
.802: 
    lw  t5,-40(s0)
    li  t6,22
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1135
.812: 
    lw  t4,-40(s0)
    li  t6,21
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1129
.822: 
    lw  t5,-40(s0)
    li  t6,20
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1123
.832: 
    lw  t4,-40(s0)
    li  t6,19
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1117
.842: 
    lw  t5,-40(s0)
    li  t6,18
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1111
.852: 
    lw  t4,-40(s0)
    li  t6,17
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1105
.862: 
    lw  t5,-40(s0)
    li  t6,16
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1099
.872: 
    lw  t4,-40(s0)
    li  t6,15
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1093
.882: 
    lw  t5,-40(s0)
    li  t6,14
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1087
.892: 
    lw  t4,-40(s0)
    li  t6,13
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1081
.902: 
    lw  t5,-40(s0)
    li  t6,12
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1075
.912: 
    lw  t4,-40(s0)
    li  t6,11
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1069
.922: 
    lw  t5,-40(s0)
    li  t6,10
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1063
.932: 
    lw  t4,-40(s0)
    li  t6,9
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1057
.942: 
    lw  t5,-40(s0)
    li  t6,8
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1051
.952: 
    lw  t4,-40(s0)
    li  t6,7
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1045
.962: 
    lw  t5,-40(s0)
    li  t6,6
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1039
.972: 
    lw  t4,-40(s0)
    li  t6,5
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1033
.982: 
    lw  t5,-40(s0)
    li  t6,4
    addw  t4,t5,t6
    sw  t4,-40(s0)
    j  .1027
.992: 
    lw  t4,-40(s0)
    li  t6,3
    addw  t5,t4,t6
    sw  t5,-40(s0)
    j  .1021
.1002: 
    lw  t4,-40(s0)
    li  t5,2
    addw  t6,t4,t5
    sw  t6,-40(s0)
    j  .1015
.1015: 
    j  .1021
.1021: 
    j  .1027
.1027: 
    j  .1033
.1033: 
    j  .1039
.1039: 
    j  .1045
.1045: 
    j  .1051
.1051: 
    j  .1057
.1057: 
    j  .1063
.1063: 
    j  .1069
.1069: 
    j  .1075
.1075: 
    j  .1081
.1081: 
    j  .1087
.1087: 
    j  .1093
.1093: 
    j  .1099
.1099: 
    j  .1105
.1105: 
    j  .1111
.1111: 
    j  .1117
.1117: 
    j  .1123
.1123: 
    j  .1129
.1129: 
    j  .1135
.1135: 
    j  .1141
.1141: 
    j  .1147
.1147: 
    j  .1153
.1153: 
    j  .1159
.1159: 
    j  .1165
.1165: 
    j  .1171
.1171: 
    j  .1177
.1177: 
    j  .1183
.1183: 
    j  .1189
.1189: 
    j  .1195
.1195: 
    j  .1201
.1201: 
    j  .1207
.1207: 
    j  .1213
.1213: 
    j  .1219
.1219: 
    j  .1225
.1225: 
    j  .1231
.1231: 
    j  .1237
.1237: 
    j  .1243
.1243: 
    j  .1249
.1249: 
    j  .1255
.1255: 
    j  .1261
.1261: 
    j  .1267
.1267: 
    j  .1273
.1273: 
    j  .1279
.1279: 
    j  .1285
.1285: 
    j  .1291
.1291: 
    j  .1297
.1297: 
    j  .1303
.1303: 
    j  .1309
.1309: 
    j  .1315
.1315: 
    j  .1321
.1321: 
    j  .1327
.1327: 
    j  .1333
.1333: 
    j  .1339
.1339: 
    j  .1345
.1345: 
    j  .1351
.1351: 
    j  .1357
.1357: 
    j  .1363
.1363: 
    j  .1369
.1369: 
    j  .1375
.1375: 
    j  .1381
.1381: 
    j  .1387
.1387: 
    j  .1393
.1393: 
    j  .1399
.1399: 
    j  .1405
.1405: 
    j  .1411
.1411: 
    j  .1417
.1417: 
    j  .1423
.1423: 
    j  .1429
.1429: 
    j  .1435
.1435: 
    j  .1441
.1441: 
    j  .1447
.1447: 
    j  .1453
.1453: 
    j  .1459
.1459: 
    j  .1465
.1465: 
    j  .1471
.1471: 
    j  .1477
.1477: 
    j  .1483
.1483: 
    j  .1489
.1489: 
    j  .1495
.1495: 
    j  .1501
.1501: 
    j  .1507
.1507: 
    j  .1513
.1513: 
    j  .1519
.1519: 
    j  .1525
.1525: 
    j  .1531
.1531: 
    j  .1537
.1537: 
    j  .1543
.1543: 
    j  .1549
.1549: 
    j  .1555
.1555: 
    j  .1561
.1561: 
    j  .1567
.1567: 
    j  .1573
.1573: 
    j  .1579
.1579: 
    j  .1585
.1585: 
    j  .1591
.1591: 
    j  .1597
.1597: 
    j  .1603
.1603: 
    lw  t5,-40(s0)
    mv  a0,t5
    call  putint
    mv  t5,a0
    li  a0,10
    call  putch
    mv  t5,a0
    lw  t5,-24(s0)
    li  t6,1
    addw  t4,t5,t6
    sw  t4,-24(s0)
    j  .10wc5
    .size	main, .-main
