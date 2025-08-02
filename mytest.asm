
mytest.elf:     file format elf32-littleriscv


Disassembly of section .text:

000100b4 <exit>:
   100b4:	ff010113          	addi	sp,sp,-16
   100b8:	00000593          	li	a1,0
   100bc:	00812423          	sw	s0,8(sp)
   100c0:	00112623          	sw	ra,12(sp)
   100c4:	00050413          	mv	s0,a0
   100c8:	291000ef          	jal	10b58 <__call_exitprocs>
   100cc:	d481a783          	lw	a5,-696(gp) # 135e8 <__stdio_exit_handler>
   100d0:	00078463          	beqz	a5,100d8 <exit+0x24>
   100d4:	000780e7          	jalr	a5
   100d8:	00040513          	mv	a0,s0
   100dc:	641010ef          	jal	11f1c <_exit>

000100e0 <register_fini>:
   100e0:	00000793          	li	a5,0
   100e4:	00078863          	beqz	a5,100f4 <register_fini+0x14>
   100e8:	00012537          	lui	a0,0x12
   100ec:	dec50513          	addi	a0,a0,-532 # 11dec <__libc_fini_array>
   100f0:	39d0006f          	j	10c8c <atexit>
   100f4:	00008067          	ret

000100f8 <_start>:
   100f8:	00003197          	auipc	gp,0x3
   100fc:	7a818193          	addi	gp,gp,1960 # 138a0 <__global_pointer$>
   10100:	00003517          	auipc	a0,0x3
   10104:	4e850513          	addi	a0,a0,1256 # 135e8 <__stdio_exit_handler>
   10108:	00004617          	auipc	a2,0x4
   1010c:	80860613          	addi	a2,a2,-2040 # 13910 <__BSS_END__>
   10110:	40a60633          	sub	a2,a2,a0
   10114:	00000593          	li	a1,0
   10118:	165000ef          	jal	10a7c <memset>
   1011c:	00001517          	auipc	a0,0x1
   10120:	b7050513          	addi	a0,a0,-1168 # 10c8c <atexit>
   10124:	00050863          	beqz	a0,10134 <_start+0x3c>
   10128:	00002517          	auipc	a0,0x2
   1012c:	cc450513          	addi	a0,a0,-828 # 11dec <__libc_fini_array>
   10130:	35d000ef          	jal	10c8c <atexit>
   10134:	0b5000ef          	jal	109e8 <__libc_init_array>
   10138:	00012503          	lw	a0,0(sp)
   1013c:	00410593          	addi	a1,sp,4
   10140:	00000613          	li	a2,0
   10144:	06c000ef          	jal	101b0 <main>
   10148:	f6dff06f          	j	100b4 <exit>

0001014c <__do_global_dtors_aux>:
   1014c:	ff010113          	addi	sp,sp,-16
   10150:	00812423          	sw	s0,8(sp)
   10154:	d641c783          	lbu	a5,-668(gp) # 13604 <completed.1>
   10158:	00112623          	sw	ra,12(sp)
   1015c:	02079263          	bnez	a5,10180 <__do_global_dtors_aux+0x34>
   10160:	00000793          	li	a5,0
   10164:	00078a63          	beqz	a5,10178 <__do_global_dtors_aux+0x2c>
   10168:	00012537          	lui	a0,0x12
   1016c:	08c50513          	addi	a0,a0,140 # 1208c <__EH_FRAME_BEGIN__>
   10170:	00000097          	auipc	ra,0x0
   10174:	000000e7          	jalr	zero # 0 <exit-0x100b4>
   10178:	00100793          	li	a5,1
   1017c:	d6f18223          	sb	a5,-668(gp) # 13604 <completed.1>
   10180:	00c12083          	lw	ra,12(sp)
   10184:	00812403          	lw	s0,8(sp)
   10188:	01010113          	addi	sp,sp,16
   1018c:	00008067          	ret

00010190 <frame_dummy>:
   10190:	00000793          	li	a5,0
   10194:	00078c63          	beqz	a5,101ac <frame_dummy+0x1c>
   10198:	00012537          	lui	a0,0x12
   1019c:	d6818593          	addi	a1,gp,-664 # 13608 <object.0>
   101a0:	08c50513          	addi	a0,a0,140 # 1208c <__EH_FRAME_BEGIN__>
   101a4:	00000317          	auipc	t1,0x0
   101a8:	00000067          	jr	zero # 0 <exit-0x100b4>
   101ac:	00008067          	ret

000101b0 <main>:
   101b0:	fe010113          	addi	sp,sp,-32
   101b4:	00112e23          	sw	ra,28(sp)
   101b8:	00812c23          	sw	s0,24(sp)
   101bc:	02010413          	addi	s0,sp,32
   101c0:	00a00793          	li	a5,10
   101c4:	fef42623          	sw	a5,-20(s0)
   101c8:	00500793          	li	a5,5
   101cc:	fef42423          	sw	a5,-24(s0)
   101d0:	fec42703          	lw	a4,-20(s0)
   101d4:	fe842783          	lw	a5,-24(s0)
   101d8:	00f707b3          	add	a5,a4,a5
   101dc:	fef42223          	sw	a5,-28(s0)
   101e0:	fe442783          	lw	a5,-28(s0)
   101e4:	00078513          	mv	a0,a5
   101e8:	01c12083          	lw	ra,28(sp)
   101ec:	01812403          	lw	s0,24(sp)
   101f0:	02010113          	addi	sp,sp,32
   101f4:	00008067          	ret

000101f8 <__fp_lock>:
   101f8:	00000513          	li	a0,0
   101fc:	00008067          	ret

00010200 <stdio_exit_handler>:
   10200:	00013637          	lui	a2,0x13
   10204:	000125b7          	lui	a1,0x12
   10208:	00013537          	lui	a0,0x13
   1020c:	0a060613          	addi	a2,a2,160 # 130a0 <__sglue>
   10210:	92c58593          	addi	a1,a1,-1748 # 1192c <_fclose_r>
   10214:	0b050513          	addi	a0,a0,176 # 130b0 <_impure_data>
   10218:	34c0006f          	j	10564 <_fwalk_sglue>

0001021c <cleanup_stdio>:
   1021c:	00452583          	lw	a1,4(a0)
   10220:	ff010113          	addi	sp,sp,-16
   10224:	00812423          	sw	s0,8(sp)
   10228:	00112623          	sw	ra,12(sp)
   1022c:	d8018793          	addi	a5,gp,-640 # 13620 <__sf>
   10230:	00050413          	mv	s0,a0
   10234:	00f58463          	beq	a1,a5,1023c <cleanup_stdio+0x20>
   10238:	6f4010ef          	jal	1192c <_fclose_r>
   1023c:	00842583          	lw	a1,8(s0)
   10240:	de818793          	addi	a5,gp,-536 # 13688 <__sf+0x68>
   10244:	00f58663          	beq	a1,a5,10250 <cleanup_stdio+0x34>
   10248:	00040513          	mv	a0,s0
   1024c:	6e0010ef          	jal	1192c <_fclose_r>
   10250:	00c42583          	lw	a1,12(s0)
   10254:	e5018793          	addi	a5,gp,-432 # 136f0 <__sf+0xd0>
   10258:	00f58c63          	beq	a1,a5,10270 <cleanup_stdio+0x54>
   1025c:	00040513          	mv	a0,s0
   10260:	00812403          	lw	s0,8(sp)
   10264:	00c12083          	lw	ra,12(sp)
   10268:	01010113          	addi	sp,sp,16
   1026c:	6c00106f          	j	1192c <_fclose_r>
   10270:	00c12083          	lw	ra,12(sp)
   10274:	00812403          	lw	s0,8(sp)
   10278:	01010113          	addi	sp,sp,16
   1027c:	00008067          	ret

00010280 <__fp_unlock>:
   10280:	00000513          	li	a0,0
   10284:	00008067          	ret

00010288 <global_stdio_init.part.0>:
   10288:	fe010113          	addi	sp,sp,-32
   1028c:	000107b7          	lui	a5,0x10
   10290:	00812c23          	sw	s0,24(sp)
   10294:	20078793          	addi	a5,a5,512 # 10200 <stdio_exit_handler>
   10298:	d8018413          	addi	s0,gp,-640 # 13620 <__sf>
   1029c:	00112e23          	sw	ra,28(sp)
   102a0:	00912a23          	sw	s1,20(sp)
   102a4:	01212823          	sw	s2,16(sp)
   102a8:	01312623          	sw	s3,12(sp)
   102ac:	01412423          	sw	s4,8(sp)
   102b0:	d4f1a423          	sw	a5,-696(gp) # 135e8 <__stdio_exit_handler>
   102b4:	00800613          	li	a2,8
   102b8:	00400793          	li	a5,4
   102bc:	00000593          	li	a1,0
   102c0:	ddc18513          	addi	a0,gp,-548 # 1367c <__sf+0x5c>
   102c4:	00f42623          	sw	a5,12(s0)
   102c8:	00042023          	sw	zero,0(s0)
   102cc:	00042223          	sw	zero,4(s0)
   102d0:	00042423          	sw	zero,8(s0)
   102d4:	06042223          	sw	zero,100(s0)
   102d8:	00042823          	sw	zero,16(s0)
   102dc:	00042a23          	sw	zero,20(s0)
   102e0:	00042c23          	sw	zero,24(s0)
   102e4:	798000ef          	jal	10a7c <memset>
   102e8:	00010a37          	lui	s4,0x10
   102ec:	000109b7          	lui	s3,0x10
   102f0:	00010937          	lui	s2,0x10
   102f4:	000104b7          	lui	s1,0x10
   102f8:	000107b7          	lui	a5,0x10
   102fc:	618a0a13          	addi	s4,s4,1560 # 10618 <__sread>
   10300:	67c98993          	addi	s3,s3,1660 # 1067c <__swrite>
   10304:	70490913          	addi	s2,s2,1796 # 10704 <__sseek>
   10308:	76848493          	addi	s1,s1,1896 # 10768 <__sclose>
   1030c:	00978793          	addi	a5,a5,9 # 10009 <exit-0xab>
   10310:	00800613          	li	a2,8
   10314:	00000593          	li	a1,0
   10318:	e4418513          	addi	a0,gp,-444 # 136e4 <__sf+0xc4>
   1031c:	06f42a23          	sw	a5,116(s0)
   10320:	03442023          	sw	s4,32(s0)
   10324:	03342223          	sw	s3,36(s0)
   10328:	03242423          	sw	s2,40(s0)
   1032c:	02942623          	sw	s1,44(s0)
   10330:	00842e23          	sw	s0,28(s0)
   10334:	06042423          	sw	zero,104(s0)
   10338:	06042623          	sw	zero,108(s0)
   1033c:	06042823          	sw	zero,112(s0)
   10340:	0c042623          	sw	zero,204(s0)
   10344:	06042c23          	sw	zero,120(s0)
   10348:	06042e23          	sw	zero,124(s0)
   1034c:	08042023          	sw	zero,128(s0)
   10350:	72c000ef          	jal	10a7c <memset>
   10354:	000207b7          	lui	a5,0x20
   10358:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc702>
   1035c:	de818713          	addi	a4,gp,-536 # 13688 <__sf+0x68>
   10360:	eac18513          	addi	a0,gp,-340 # 1374c <__sf+0x12c>
   10364:	00800613          	li	a2,8
   10368:	00000593          	li	a1,0
   1036c:	09442423          	sw	s4,136(s0)
   10370:	09342623          	sw	s3,140(s0)
   10374:	09242823          	sw	s2,144(s0)
   10378:	08942a23          	sw	s1,148(s0)
   1037c:	0cf42e23          	sw	a5,220(s0)
   10380:	0c042823          	sw	zero,208(s0)
   10384:	0c042a23          	sw	zero,212(s0)
   10388:	0c042c23          	sw	zero,216(s0)
   1038c:	12042a23          	sw	zero,308(s0)
   10390:	0e042023          	sw	zero,224(s0)
   10394:	0e042223          	sw	zero,228(s0)
   10398:	0e042423          	sw	zero,232(s0)
   1039c:	08e42223          	sw	a4,132(s0)
   103a0:	6dc000ef          	jal	10a7c <memset>
   103a4:	e5018793          	addi	a5,gp,-432 # 136f0 <__sf+0xd0>
   103a8:	0f442823          	sw	s4,240(s0)
   103ac:	0f342a23          	sw	s3,244(s0)
   103b0:	0f242c23          	sw	s2,248(s0)
   103b4:	0e942e23          	sw	s1,252(s0)
   103b8:	01c12083          	lw	ra,28(sp)
   103bc:	0ef42623          	sw	a5,236(s0)
   103c0:	01812403          	lw	s0,24(sp)
   103c4:	01412483          	lw	s1,20(sp)
   103c8:	01012903          	lw	s2,16(sp)
   103cc:	00c12983          	lw	s3,12(sp)
   103d0:	00812a03          	lw	s4,8(sp)
   103d4:	02010113          	addi	sp,sp,32
   103d8:	00008067          	ret

000103dc <__sfp>:
   103dc:	d481a783          	lw	a5,-696(gp) # 135e8 <__stdio_exit_handler>
   103e0:	fe010113          	addi	sp,sp,-32
   103e4:	00912a23          	sw	s1,20(sp)
   103e8:	00112e23          	sw	ra,28(sp)
   103ec:	00812c23          	sw	s0,24(sp)
   103f0:	00050493          	mv	s1,a0
   103f4:	0e078e63          	beqz	a5,104f0 <__sfp+0x114>
   103f8:	00013837          	lui	a6,0x13
   103fc:	0a080813          	addi	a6,a6,160 # 130a0 <__sglue>
   10400:	fff00693          	li	a3,-1
   10404:	00482783          	lw	a5,4(a6)
   10408:	fff78793          	addi	a5,a5,-1
   1040c:	0807c063          	bltz	a5,1048c <__sfp+0xb0>
   10410:	00882403          	lw	s0,8(a6)
   10414:	00c0006f          	j	10420 <__sfp+0x44>
   10418:	06840413          	addi	s0,s0,104
   1041c:	06d78863          	beq	a5,a3,1048c <__sfp+0xb0>
   10420:	00c41703          	lh	a4,12(s0)
   10424:	fff78793          	addi	a5,a5,-1
   10428:	fe0718e3          	bnez	a4,10418 <__sfp+0x3c>
   1042c:	ffff07b7          	lui	a5,0xffff0
   10430:	00178793          	addi	a5,a5,1 # ffff0001 <__BSS_END__+0xfffdc6f1>
   10434:	00f42623          	sw	a5,12(s0)
   10438:	06042223          	sw	zero,100(s0)
   1043c:	00042023          	sw	zero,0(s0)
   10440:	00042423          	sw	zero,8(s0)
   10444:	00042223          	sw	zero,4(s0)
   10448:	00042823          	sw	zero,16(s0)
   1044c:	00042a23          	sw	zero,20(s0)
   10450:	00042c23          	sw	zero,24(s0)
   10454:	00800613          	li	a2,8
   10458:	00000593          	li	a1,0
   1045c:	05c40513          	addi	a0,s0,92
   10460:	61c000ef          	jal	10a7c <memset>
   10464:	02042823          	sw	zero,48(s0)
   10468:	02042a23          	sw	zero,52(s0)
   1046c:	04042223          	sw	zero,68(s0)
   10470:	04042423          	sw	zero,72(s0)
   10474:	01c12083          	lw	ra,28(sp)
   10478:	00040513          	mv	a0,s0
   1047c:	01812403          	lw	s0,24(sp)
   10480:	01412483          	lw	s1,20(sp)
   10484:	02010113          	addi	sp,sp,32
   10488:	00008067          	ret
   1048c:	00082403          	lw	s0,0(a6)
   10490:	00040663          	beqz	s0,1049c <__sfp+0xc0>
   10494:	00040813          	mv	a6,s0
   10498:	f6dff06f          	j	10404 <__sfp+0x28>
   1049c:	1ac00593          	li	a1,428
   104a0:	00048513          	mv	a0,s1
   104a4:	01012623          	sw	a6,12(sp)
   104a8:	405000ef          	jal	110ac <_malloc_r>
   104ac:	00c12803          	lw	a6,12(sp)
   104b0:	00050413          	mv	s0,a0
   104b4:	04050263          	beqz	a0,104f8 <__sfp+0x11c>
   104b8:	00400793          	li	a5,4
   104bc:	00f52223          	sw	a5,4(a0)
   104c0:	00c50513          	addi	a0,a0,12
   104c4:	00042023          	sw	zero,0(s0)
   104c8:	00a42423          	sw	a0,8(s0)
   104cc:	1a000613          	li	a2,416
   104d0:	00000593          	li	a1,0
   104d4:	01012623          	sw	a6,12(sp)
   104d8:	5a4000ef          	jal	10a7c <memset>
   104dc:	00c12803          	lw	a6,12(sp)
   104e0:	fff00693          	li	a3,-1
   104e4:	00882023          	sw	s0,0(a6)
   104e8:	00040813          	mv	a6,s0
   104ec:	f19ff06f          	j	10404 <__sfp+0x28>
   104f0:	d99ff0ef          	jal	10288 <global_stdio_init.part.0>
   104f4:	f05ff06f          	j	103f8 <__sfp+0x1c>
   104f8:	00082023          	sw	zero,0(a6)
   104fc:	00c00793          	li	a5,12
   10500:	00f4a023          	sw	a5,0(s1)
   10504:	f71ff06f          	j	10474 <__sfp+0x98>

00010508 <__sinit>:
   10508:	03452783          	lw	a5,52(a0)
   1050c:	00078463          	beqz	a5,10514 <__sinit+0xc>
   10510:	00008067          	ret
   10514:	000107b7          	lui	a5,0x10
   10518:	d481a703          	lw	a4,-696(gp) # 135e8 <__stdio_exit_handler>
   1051c:	21c78793          	addi	a5,a5,540 # 1021c <cleanup_stdio>
   10520:	02f52a23          	sw	a5,52(a0)
   10524:	fe0716e3          	bnez	a4,10510 <__sinit+0x8>
   10528:	d61ff06f          	j	10288 <global_stdio_init.part.0>

0001052c <__sfp_lock_acquire>:
   1052c:	00008067          	ret

00010530 <__sfp_lock_release>:
   10530:	00008067          	ret

00010534 <__fp_lock_all>:
   10534:	00013637          	lui	a2,0x13
   10538:	000105b7          	lui	a1,0x10
   1053c:	0a060613          	addi	a2,a2,160 # 130a0 <__sglue>
   10540:	1f858593          	addi	a1,a1,504 # 101f8 <__fp_lock>
   10544:	00000513          	li	a0,0
   10548:	01c0006f          	j	10564 <_fwalk_sglue>

0001054c <__fp_unlock_all>:
   1054c:	00013637          	lui	a2,0x13
   10550:	000105b7          	lui	a1,0x10
   10554:	0a060613          	addi	a2,a2,160 # 130a0 <__sglue>
   10558:	28058593          	addi	a1,a1,640 # 10280 <__fp_unlock>
   1055c:	00000513          	li	a0,0
   10560:	0040006f          	j	10564 <_fwalk_sglue>

00010564 <_fwalk_sglue>:
   10564:	fd010113          	addi	sp,sp,-48
   10568:	03212023          	sw	s2,32(sp)
   1056c:	01312e23          	sw	s3,28(sp)
   10570:	01412c23          	sw	s4,24(sp)
   10574:	01512a23          	sw	s5,20(sp)
   10578:	01612823          	sw	s6,16(sp)
   1057c:	01712623          	sw	s7,12(sp)
   10580:	02112623          	sw	ra,44(sp)
   10584:	02812423          	sw	s0,40(sp)
   10588:	02912223          	sw	s1,36(sp)
   1058c:	00060a93          	mv	s5,a2
   10590:	00050b13          	mv	s6,a0
   10594:	00058b93          	mv	s7,a1
   10598:	00000a13          	li	s4,0
   1059c:	00100993          	li	s3,1
   105a0:	fff00913          	li	s2,-1
   105a4:	004aa483          	lw	s1,4(s5)
   105a8:	fff48493          	addi	s1,s1,-1
   105ac:	0204ca63          	bltz	s1,105e0 <_fwalk_sglue+0x7c>
   105b0:	008aa403          	lw	s0,8(s5)
   105b4:	00c45783          	lhu	a5,12(s0)
   105b8:	00f9fe63          	bgeu	s3,a5,105d4 <_fwalk_sglue+0x70>
   105bc:	00e41783          	lh	a5,14(s0)
   105c0:	00040593          	mv	a1,s0
   105c4:	000b0513          	mv	a0,s6
   105c8:	01278663          	beq	a5,s2,105d4 <_fwalk_sglue+0x70>
   105cc:	000b80e7          	jalr	s7
   105d0:	00aa6a33          	or	s4,s4,a0
   105d4:	fff48493          	addi	s1,s1,-1
   105d8:	06840413          	addi	s0,s0,104
   105dc:	fd249ce3          	bne	s1,s2,105b4 <_fwalk_sglue+0x50>
   105e0:	000aaa83          	lw	s5,0(s5)
   105e4:	fc0a90e3          	bnez	s5,105a4 <_fwalk_sglue+0x40>
   105e8:	02c12083          	lw	ra,44(sp)
   105ec:	02812403          	lw	s0,40(sp)
   105f0:	02412483          	lw	s1,36(sp)
   105f4:	02012903          	lw	s2,32(sp)
   105f8:	01c12983          	lw	s3,28(sp)
   105fc:	01412a83          	lw	s5,20(sp)
   10600:	01012b03          	lw	s6,16(sp)
   10604:	00c12b83          	lw	s7,12(sp)
   10608:	000a0513          	mv	a0,s4
   1060c:	01812a03          	lw	s4,24(sp)
   10610:	03010113          	addi	sp,sp,48
   10614:	00008067          	ret

00010618 <__sread>:
   10618:	ff010113          	addi	sp,sp,-16
   1061c:	00812423          	sw	s0,8(sp)
   10620:	00058413          	mv	s0,a1
   10624:	00e59583          	lh	a1,14(a1)
   10628:	00112623          	sw	ra,12(sp)
   1062c:	2ec000ef          	jal	10918 <_read_r>
   10630:	02054063          	bltz	a0,10650 <__sread+0x38>
   10634:	05042783          	lw	a5,80(s0)
   10638:	00c12083          	lw	ra,12(sp)
   1063c:	00a787b3          	add	a5,a5,a0
   10640:	04f42823          	sw	a5,80(s0)
   10644:	00812403          	lw	s0,8(sp)
   10648:	01010113          	addi	sp,sp,16
   1064c:	00008067          	ret
   10650:	00c45783          	lhu	a5,12(s0)
   10654:	fffff737          	lui	a4,0xfffff
   10658:	fff70713          	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffeb6ef>
   1065c:	00e7f7b3          	and	a5,a5,a4
   10660:	00c12083          	lw	ra,12(sp)
   10664:	00f41623          	sh	a5,12(s0)
   10668:	00812403          	lw	s0,8(sp)
   1066c:	01010113          	addi	sp,sp,16
   10670:	00008067          	ret

00010674 <__seofread>:
   10674:	00000513          	li	a0,0
   10678:	00008067          	ret

0001067c <__swrite>:
   1067c:	00c59783          	lh	a5,12(a1)
   10680:	fe010113          	addi	sp,sp,-32
   10684:	00068313          	mv	t1,a3
   10688:	00112e23          	sw	ra,28(sp)
   1068c:	1007f693          	andi	a3,a5,256
   10690:	00058713          	mv	a4,a1
   10694:	00060893          	mv	a7,a2
   10698:	00050813          	mv	a6,a0
   1069c:	02069863          	bnez	a3,106cc <__swrite+0x50>
   106a0:	fffff6b7          	lui	a3,0xfffff
   106a4:	fff68693          	addi	a3,a3,-1 # ffffefff <__BSS_END__+0xfffeb6ef>
   106a8:	01c12083          	lw	ra,28(sp)
   106ac:	00d7f7b3          	and	a5,a5,a3
   106b0:	00e71583          	lh	a1,14(a4)
   106b4:	00f71623          	sh	a5,12(a4)
   106b8:	00030693          	mv	a3,t1
   106bc:	00088613          	mv	a2,a7
   106c0:	00080513          	mv	a0,a6
   106c4:	02010113          	addi	sp,sp,32
   106c8:	2b80006f          	j	10980 <_write_r>
   106cc:	00e59583          	lh	a1,14(a1)
   106d0:	00c12423          	sw	a2,8(sp)
   106d4:	00200693          	li	a3,2
   106d8:	00000613          	li	a2,0
   106dc:	00612623          	sw	t1,12(sp)
   106e0:	00e12023          	sw	a4,0(sp)
   106e4:	00a12223          	sw	a0,4(sp)
   106e8:	1c8000ef          	jal	108b0 <_lseek_r>
   106ec:	00012703          	lw	a4,0(sp)
   106f0:	00c12303          	lw	t1,12(sp)
   106f4:	00812883          	lw	a7,8(sp)
   106f8:	00c71783          	lh	a5,12(a4)
   106fc:	00412803          	lw	a6,4(sp)
   10700:	fa1ff06f          	j	106a0 <__swrite+0x24>

00010704 <__sseek>:
   10704:	ff010113          	addi	sp,sp,-16
   10708:	00812423          	sw	s0,8(sp)
   1070c:	00058413          	mv	s0,a1
   10710:	00e59583          	lh	a1,14(a1)
   10714:	00112623          	sw	ra,12(sp)
   10718:	198000ef          	jal	108b0 <_lseek_r>
   1071c:	fff00713          	li	a4,-1
   10720:	00c41783          	lh	a5,12(s0)
   10724:	02e50263          	beq	a0,a4,10748 <__sseek+0x44>
   10728:	00001737          	lui	a4,0x1
   1072c:	00e7e7b3          	or	a5,a5,a4
   10730:	00c12083          	lw	ra,12(sp)
   10734:	04a42823          	sw	a0,80(s0)
   10738:	00f41623          	sh	a5,12(s0)
   1073c:	00812403          	lw	s0,8(sp)
   10740:	01010113          	addi	sp,sp,16
   10744:	00008067          	ret
   10748:	80050713          	addi	a4,a0,-2048
   1074c:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf8b4>
   10750:	00e7f7b3          	and	a5,a5,a4
   10754:	00c12083          	lw	ra,12(sp)
   10758:	00f41623          	sh	a5,12(s0)
   1075c:	00812403          	lw	s0,8(sp)
   10760:	01010113          	addi	sp,sp,16
   10764:	00008067          	ret

00010768 <__sclose>:
   10768:	00e59583          	lh	a1,14(a1)
   1076c:	0040006f          	j	10770 <_close_r>

00010770 <_close_r>:
   10770:	ff010113          	addi	sp,sp,-16
   10774:	00812423          	sw	s0,8(sp)
   10778:	00912223          	sw	s1,4(sp)
   1077c:	00050493          	mv	s1,a0
   10780:	00058513          	mv	a0,a1
   10784:	00112623          	sw	ra,12(sp)
   10788:	d401a623          	sw	zero,-692(gp) # 135ec <errno>
   1078c:	750010ef          	jal	11edc <_close>
   10790:	fff00793          	li	a5,-1
   10794:	00f50c63          	beq	a0,a5,107ac <_close_r+0x3c>
   10798:	00c12083          	lw	ra,12(sp)
   1079c:	00812403          	lw	s0,8(sp)
   107a0:	00412483          	lw	s1,4(sp)
   107a4:	01010113          	addi	sp,sp,16
   107a8:	00008067          	ret
   107ac:	d4c1a783          	lw	a5,-692(gp) # 135ec <errno>
   107b0:	fe0784e3          	beqz	a5,10798 <_close_r+0x28>
   107b4:	00c12083          	lw	ra,12(sp)
   107b8:	00812403          	lw	s0,8(sp)
   107bc:	00f4a023          	sw	a5,0(s1)
   107c0:	00412483          	lw	s1,4(sp)
   107c4:	01010113          	addi	sp,sp,16
   107c8:	00008067          	ret

000107cc <_reclaim_reent>:
   107cc:	d3c1a783          	lw	a5,-708(gp) # 135dc <_impure_ptr>
   107d0:	0ca78e63          	beq	a5,a0,108ac <_reclaim_reent+0xe0>
   107d4:	04452583          	lw	a1,68(a0)
   107d8:	fe010113          	addi	sp,sp,-32
   107dc:	00912a23          	sw	s1,20(sp)
   107e0:	00112e23          	sw	ra,28(sp)
   107e4:	00812c23          	sw	s0,24(sp)
   107e8:	00050493          	mv	s1,a0
   107ec:	04058863          	beqz	a1,1083c <_reclaim_reent+0x70>
   107f0:	01212823          	sw	s2,16(sp)
   107f4:	01312623          	sw	s3,12(sp)
   107f8:	00000913          	li	s2,0
   107fc:	08000993          	li	s3,128
   10800:	012587b3          	add	a5,a1,s2
   10804:	0007a403          	lw	s0,0(a5)
   10808:	00040e63          	beqz	s0,10824 <_reclaim_reent+0x58>
   1080c:	00040593          	mv	a1,s0
   10810:	00042403          	lw	s0,0(s0)
   10814:	00048513          	mv	a0,s1
   10818:	5ac000ef          	jal	10dc4 <_free_r>
   1081c:	fe0418e3          	bnez	s0,1080c <_reclaim_reent+0x40>
   10820:	0444a583          	lw	a1,68(s1)
   10824:	00490913          	addi	s2,s2,4
   10828:	fd391ce3          	bne	s2,s3,10800 <_reclaim_reent+0x34>
   1082c:	00048513          	mv	a0,s1
   10830:	594000ef          	jal	10dc4 <_free_r>
   10834:	01012903          	lw	s2,16(sp)
   10838:	00c12983          	lw	s3,12(sp)
   1083c:	0384a583          	lw	a1,56(s1)
   10840:	00058663          	beqz	a1,1084c <_reclaim_reent+0x80>
   10844:	00048513          	mv	a0,s1
   10848:	57c000ef          	jal	10dc4 <_free_r>
   1084c:	0404a403          	lw	s0,64(s1)
   10850:	00040c63          	beqz	s0,10868 <_reclaim_reent+0x9c>
   10854:	00040593          	mv	a1,s0
   10858:	00042403          	lw	s0,0(s0)
   1085c:	00048513          	mv	a0,s1
   10860:	564000ef          	jal	10dc4 <_free_r>
   10864:	fe0418e3          	bnez	s0,10854 <_reclaim_reent+0x88>
   10868:	04c4a583          	lw	a1,76(s1)
   1086c:	00058663          	beqz	a1,10878 <_reclaim_reent+0xac>
   10870:	00048513          	mv	a0,s1
   10874:	550000ef          	jal	10dc4 <_free_r>
   10878:	0344a783          	lw	a5,52(s1)
   1087c:	00078e63          	beqz	a5,10898 <_reclaim_reent+0xcc>
   10880:	01812403          	lw	s0,24(sp)
   10884:	01c12083          	lw	ra,28(sp)
   10888:	00048513          	mv	a0,s1
   1088c:	01412483          	lw	s1,20(sp)
   10890:	02010113          	addi	sp,sp,32
   10894:	00078067          	jr	a5
   10898:	01c12083          	lw	ra,28(sp)
   1089c:	01812403          	lw	s0,24(sp)
   108a0:	01412483          	lw	s1,20(sp)
   108a4:	02010113          	addi	sp,sp,32
   108a8:	00008067          	ret
   108ac:	00008067          	ret

000108b0 <_lseek_r>:
   108b0:	ff010113          	addi	sp,sp,-16
   108b4:	00058793          	mv	a5,a1
   108b8:	00812423          	sw	s0,8(sp)
   108bc:	00912223          	sw	s1,4(sp)
   108c0:	00060593          	mv	a1,a2
   108c4:	00050493          	mv	s1,a0
   108c8:	00068613          	mv	a2,a3
   108cc:	00078513          	mv	a0,a5
   108d0:	00112623          	sw	ra,12(sp)
   108d4:	d401a623          	sw	zero,-692(gp) # 135ec <errno>
   108d8:	674010ef          	jal	11f4c <_lseek>
   108dc:	fff00793          	li	a5,-1
   108e0:	00f50c63          	beq	a0,a5,108f8 <_lseek_r+0x48>
   108e4:	00c12083          	lw	ra,12(sp)
   108e8:	00812403          	lw	s0,8(sp)
   108ec:	00412483          	lw	s1,4(sp)
   108f0:	01010113          	addi	sp,sp,16
   108f4:	00008067          	ret
   108f8:	d4c1a783          	lw	a5,-692(gp) # 135ec <errno>
   108fc:	fe0784e3          	beqz	a5,108e4 <_lseek_r+0x34>
   10900:	00c12083          	lw	ra,12(sp)
   10904:	00812403          	lw	s0,8(sp)
   10908:	00f4a023          	sw	a5,0(s1)
   1090c:	00412483          	lw	s1,4(sp)
   10910:	01010113          	addi	sp,sp,16
   10914:	00008067          	ret

00010918 <_read_r>:
   10918:	ff010113          	addi	sp,sp,-16
   1091c:	00058793          	mv	a5,a1
   10920:	00812423          	sw	s0,8(sp)
   10924:	00912223          	sw	s1,4(sp)
   10928:	00060593          	mv	a1,a2
   1092c:	00050493          	mv	s1,a0
   10930:	00068613          	mv	a2,a3
   10934:	00078513          	mv	a0,a5
   10938:	00112623          	sw	ra,12(sp)
   1093c:	d401a623          	sw	zero,-692(gp) # 135ec <errno>
   10940:	64c010ef          	jal	11f8c <_read>
   10944:	fff00793          	li	a5,-1
   10948:	00f50c63          	beq	a0,a5,10960 <_read_r+0x48>
   1094c:	00c12083          	lw	ra,12(sp)
   10950:	00812403          	lw	s0,8(sp)
   10954:	00412483          	lw	s1,4(sp)
   10958:	01010113          	addi	sp,sp,16
   1095c:	00008067          	ret
   10960:	d4c1a783          	lw	a5,-692(gp) # 135ec <errno>
   10964:	fe0784e3          	beqz	a5,1094c <_read_r+0x34>
   10968:	00c12083          	lw	ra,12(sp)
   1096c:	00812403          	lw	s0,8(sp)
   10970:	00f4a023          	sw	a5,0(s1)
   10974:	00412483          	lw	s1,4(sp)
   10978:	01010113          	addi	sp,sp,16
   1097c:	00008067          	ret

00010980 <_write_r>:
   10980:	ff010113          	addi	sp,sp,-16
   10984:	00058793          	mv	a5,a1
   10988:	00812423          	sw	s0,8(sp)
   1098c:	00912223          	sw	s1,4(sp)
   10990:	00060593          	mv	a1,a2
   10994:	00050493          	mv	s1,a0
   10998:	00068613          	mv	a2,a3
   1099c:	00078513          	mv	a0,a5
   109a0:	00112623          	sw	ra,12(sp)
   109a4:	d401a623          	sw	zero,-692(gp) # 135ec <errno>
   109a8:	69c010ef          	jal	12044 <_write>
   109ac:	fff00793          	li	a5,-1
   109b0:	00f50c63          	beq	a0,a5,109c8 <_write_r+0x48>
   109b4:	00c12083          	lw	ra,12(sp)
   109b8:	00812403          	lw	s0,8(sp)
   109bc:	00412483          	lw	s1,4(sp)
   109c0:	01010113          	addi	sp,sp,16
   109c4:	00008067          	ret
   109c8:	d4c1a783          	lw	a5,-692(gp) # 135ec <errno>
   109cc:	fe0784e3          	beqz	a5,109b4 <_write_r+0x34>
   109d0:	00c12083          	lw	ra,12(sp)
   109d4:	00812403          	lw	s0,8(sp)
   109d8:	00f4a023          	sw	a5,0(s1)
   109dc:	00412483          	lw	s1,4(sp)
   109e0:	01010113          	addi	sp,sp,16
   109e4:	00008067          	ret

000109e8 <__libc_init_array>:
   109e8:	ff010113          	addi	sp,sp,-16
   109ec:	00812423          	sw	s0,8(sp)
   109f0:	01212023          	sw	s2,0(sp)
   109f4:	00013437          	lui	s0,0x13
   109f8:	00013937          	lui	s2,0x13
   109fc:	00112623          	sw	ra,12(sp)
   10a00:	00912223          	sw	s1,4(sp)
   10a04:	09090913          	addi	s2,s2,144 # 13090 <__init_array_start>
   10a08:	09040413          	addi	s0,s0,144 # 13090 <__init_array_start>
   10a0c:	02890263          	beq	s2,s0,10a30 <__libc_init_array+0x48>
   10a10:	40890933          	sub	s2,s2,s0
   10a14:	40295913          	srai	s2,s2,0x2
   10a18:	00000493          	li	s1,0
   10a1c:	00042783          	lw	a5,0(s0)
   10a20:	00148493          	addi	s1,s1,1
   10a24:	00440413          	addi	s0,s0,4
   10a28:	000780e7          	jalr	a5
   10a2c:	ff24e8e3          	bltu	s1,s2,10a1c <__libc_init_array+0x34>
   10a30:	00013937          	lui	s2,0x13
   10a34:	00013437          	lui	s0,0x13
   10a38:	09890913          	addi	s2,s2,152 # 13098 <__do_global_dtors_aux_fini_array_entry>
   10a3c:	09040413          	addi	s0,s0,144 # 13090 <__init_array_start>
   10a40:	02890263          	beq	s2,s0,10a64 <__libc_init_array+0x7c>
   10a44:	40890933          	sub	s2,s2,s0
   10a48:	40295913          	srai	s2,s2,0x2
   10a4c:	00000493          	li	s1,0
   10a50:	00042783          	lw	a5,0(s0)
   10a54:	00148493          	addi	s1,s1,1
   10a58:	00440413          	addi	s0,s0,4
   10a5c:	000780e7          	jalr	a5
   10a60:	ff24e8e3          	bltu	s1,s2,10a50 <__libc_init_array+0x68>
   10a64:	00c12083          	lw	ra,12(sp)
   10a68:	00812403          	lw	s0,8(sp)
   10a6c:	00412483          	lw	s1,4(sp)
   10a70:	00012903          	lw	s2,0(sp)
   10a74:	01010113          	addi	sp,sp,16
   10a78:	00008067          	ret

00010a7c <memset>:
   10a7c:	00f00313          	li	t1,15
   10a80:	00050713          	mv	a4,a0
   10a84:	02c37e63          	bgeu	t1,a2,10ac0 <memset+0x44>
   10a88:	00f77793          	andi	a5,a4,15
   10a8c:	0a079063          	bnez	a5,10b2c <memset+0xb0>
   10a90:	08059263          	bnez	a1,10b14 <memset+0x98>
   10a94:	ff067693          	andi	a3,a2,-16
   10a98:	00f67613          	andi	a2,a2,15
   10a9c:	00e686b3          	add	a3,a3,a4
   10aa0:	00b72023          	sw	a1,0(a4)
   10aa4:	00b72223          	sw	a1,4(a4)
   10aa8:	00b72423          	sw	a1,8(a4)
   10aac:	00b72623          	sw	a1,12(a4)
   10ab0:	01070713          	addi	a4,a4,16
   10ab4:	fed766e3          	bltu	a4,a3,10aa0 <memset+0x24>
   10ab8:	00061463          	bnez	a2,10ac0 <memset+0x44>
   10abc:	00008067          	ret
   10ac0:	40c306b3          	sub	a3,t1,a2
   10ac4:	00269693          	slli	a3,a3,0x2
   10ac8:	00000297          	auipc	t0,0x0
   10acc:	005686b3          	add	a3,a3,t0
   10ad0:	00c68067          	jr	12(a3)
   10ad4:	00b70723          	sb	a1,14(a4)
   10ad8:	00b706a3          	sb	a1,13(a4)
   10adc:	00b70623          	sb	a1,12(a4)
   10ae0:	00b705a3          	sb	a1,11(a4)
   10ae4:	00b70523          	sb	a1,10(a4)
   10ae8:	00b704a3          	sb	a1,9(a4)
   10aec:	00b70423          	sb	a1,8(a4)
   10af0:	00b703a3          	sb	a1,7(a4)
   10af4:	00b70323          	sb	a1,6(a4)
   10af8:	00b702a3          	sb	a1,5(a4)
   10afc:	00b70223          	sb	a1,4(a4)
   10b00:	00b701a3          	sb	a1,3(a4)
   10b04:	00b70123          	sb	a1,2(a4)
   10b08:	00b700a3          	sb	a1,1(a4)
   10b0c:	00b70023          	sb	a1,0(a4)
   10b10:	00008067          	ret
   10b14:	0ff5f593          	zext.b	a1,a1
   10b18:	00859693          	slli	a3,a1,0x8
   10b1c:	00d5e5b3          	or	a1,a1,a3
   10b20:	01059693          	slli	a3,a1,0x10
   10b24:	00d5e5b3          	or	a1,a1,a3
   10b28:	f6dff06f          	j	10a94 <memset+0x18>
   10b2c:	00279693          	slli	a3,a5,0x2
   10b30:	00000297          	auipc	t0,0x0
   10b34:	005686b3          	add	a3,a3,t0
   10b38:	00008293          	mv	t0,ra
   10b3c:	fa0680e7          	jalr	-96(a3)
   10b40:	00028093          	mv	ra,t0
   10b44:	ff078793          	addi	a5,a5,-16
   10b48:	40f70733          	sub	a4,a4,a5
   10b4c:	00f60633          	add	a2,a2,a5
   10b50:	f6c378e3          	bgeu	t1,a2,10ac0 <memset+0x44>
   10b54:	f3dff06f          	j	10a90 <memset+0x14>

00010b58 <__call_exitprocs>:
   10b58:	fd010113          	addi	sp,sp,-48
   10b5c:	01412c23          	sw	s4,24(sp)
   10b60:	03212023          	sw	s2,32(sp)
   10b64:	d501a903          	lw	s2,-688(gp) # 135f0 <__atexit>
   10b68:	02112623          	sw	ra,44(sp)
   10b6c:	06090c63          	beqz	s2,10be4 <__call_exitprocs+0x8c>
   10b70:	01312e23          	sw	s3,28(sp)
   10b74:	01512a23          	sw	s5,20(sp)
   10b78:	01612823          	sw	s6,16(sp)
   10b7c:	01712623          	sw	s7,12(sp)
   10b80:	02812423          	sw	s0,40(sp)
   10b84:	02912223          	sw	s1,36(sp)
   10b88:	01812423          	sw	s8,8(sp)
   10b8c:	00050b13          	mv	s6,a0
   10b90:	00058b93          	mv	s7,a1
   10b94:	fff00993          	li	s3,-1
   10b98:	00100a93          	li	s5,1
   10b9c:	00492483          	lw	s1,4(s2)
   10ba0:	fff48413          	addi	s0,s1,-1
   10ba4:	02044263          	bltz	s0,10bc8 <__call_exitprocs+0x70>
   10ba8:	00249493          	slli	s1,s1,0x2
   10bac:	009904b3          	add	s1,s2,s1
   10bb0:	040b8463          	beqz	s7,10bf8 <__call_exitprocs+0xa0>
   10bb4:	1044a783          	lw	a5,260(s1)
   10bb8:	05778063          	beq	a5,s7,10bf8 <__call_exitprocs+0xa0>
   10bbc:	fff40413          	addi	s0,s0,-1
   10bc0:	ffc48493          	addi	s1,s1,-4
   10bc4:	ff3418e3          	bne	s0,s3,10bb4 <__call_exitprocs+0x5c>
   10bc8:	02812403          	lw	s0,40(sp)
   10bcc:	02412483          	lw	s1,36(sp)
   10bd0:	01c12983          	lw	s3,28(sp)
   10bd4:	01412a83          	lw	s5,20(sp)
   10bd8:	01012b03          	lw	s6,16(sp)
   10bdc:	00c12b83          	lw	s7,12(sp)
   10be0:	00812c03          	lw	s8,8(sp)
   10be4:	02c12083          	lw	ra,44(sp)
   10be8:	02012903          	lw	s2,32(sp)
   10bec:	01812a03          	lw	s4,24(sp)
   10bf0:	03010113          	addi	sp,sp,48
   10bf4:	00008067          	ret
   10bf8:	00492783          	lw	a5,4(s2)
   10bfc:	0044a683          	lw	a3,4(s1)
   10c00:	fff78793          	addi	a5,a5,-1
   10c04:	06878a63          	beq	a5,s0,10c78 <__call_exitprocs+0x120>
   10c08:	0004a223          	sw	zero,4(s1)
   10c0c:	02068663          	beqz	a3,10c38 <__call_exitprocs+0xe0>
   10c10:	18892783          	lw	a5,392(s2)
   10c14:	008a9733          	sll	a4,s5,s0
   10c18:	00492c03          	lw	s8,4(s2)
   10c1c:	00f777b3          	and	a5,a4,a5
   10c20:	02079463          	bnez	a5,10c48 <__call_exitprocs+0xf0>
   10c24:	000680e7          	jalr	a3
   10c28:	00492703          	lw	a4,4(s2)
   10c2c:	d501a783          	lw	a5,-688(gp) # 135f0 <__atexit>
   10c30:	03871e63          	bne	a4,s8,10c6c <__call_exitprocs+0x114>
   10c34:	03279c63          	bne	a5,s2,10c6c <__call_exitprocs+0x114>
   10c38:	fff40413          	addi	s0,s0,-1
   10c3c:	ffc48493          	addi	s1,s1,-4
   10c40:	f73418e3          	bne	s0,s3,10bb0 <__call_exitprocs+0x58>
   10c44:	f85ff06f          	j	10bc8 <__call_exitprocs+0x70>
   10c48:	18c92783          	lw	a5,396(s2)
   10c4c:	0844a583          	lw	a1,132(s1)
   10c50:	00f77733          	and	a4,a4,a5
   10c54:	02071663          	bnez	a4,10c80 <__call_exitprocs+0x128>
   10c58:	000b0513          	mv	a0,s6
   10c5c:	000680e7          	jalr	a3
   10c60:	00492703          	lw	a4,4(s2)
   10c64:	d501a783          	lw	a5,-688(gp) # 135f0 <__atexit>
   10c68:	fd8706e3          	beq	a4,s8,10c34 <__call_exitprocs+0xdc>
   10c6c:	f4078ee3          	beqz	a5,10bc8 <__call_exitprocs+0x70>
   10c70:	00078913          	mv	s2,a5
   10c74:	f29ff06f          	j	10b9c <__call_exitprocs+0x44>
   10c78:	00892223          	sw	s0,4(s2)
   10c7c:	f91ff06f          	j	10c0c <__call_exitprocs+0xb4>
   10c80:	00058513          	mv	a0,a1
   10c84:	000680e7          	jalr	a3
   10c88:	fa1ff06f          	j	10c28 <__call_exitprocs+0xd0>

00010c8c <atexit>:
   10c8c:	00050593          	mv	a1,a0
   10c90:	00000693          	li	a3,0
   10c94:	00000613          	li	a2,0
   10c98:	00000513          	li	a0,0
   10c9c:	1ac0106f          	j	11e48 <__register_exitproc>

00010ca0 <_malloc_trim_r>:
   10ca0:	fe010113          	addi	sp,sp,-32
   10ca4:	01212823          	sw	s2,16(sp)
   10ca8:	00013937          	lui	s2,0x13
   10cac:	00812c23          	sw	s0,24(sp)
   10cb0:	00912a23          	sw	s1,20(sp)
   10cb4:	01312623          	sw	s3,12(sp)
   10cb8:	00058413          	mv	s0,a1
   10cbc:	00112e23          	sw	ra,28(sp)
   10cc0:	00050993          	mv	s3,a0
   10cc4:	1d090913          	addi	s2,s2,464 # 131d0 <__malloc_av_>
   10cc8:	45d000ef          	jal	11924 <__malloc_lock>
   10ccc:	00892783          	lw	a5,8(s2)
   10cd0:	00001737          	lui	a4,0x1
   10cd4:	0047a483          	lw	s1,4(a5)
   10cd8:	ffc4f493          	andi	s1,s1,-4
   10cdc:	7ff48793          	addi	a5,s1,2047
   10ce0:	7f078793          	addi	a5,a5,2032
   10ce4:	40878433          	sub	s0,a5,s0
   10ce8:	00c45413          	srli	s0,s0,0xc
   10cec:	fff40413          	addi	s0,s0,-1
   10cf0:	00c41413          	slli	s0,s0,0xc
   10cf4:	00e44e63          	blt	s0,a4,10d10 <_malloc_trim_r+0x70>
   10cf8:	00000593          	li	a1,0
   10cfc:	00098513          	mv	a0,s3
   10d00:	090010ef          	jal	11d90 <_sbrk_r>
   10d04:	00892783          	lw	a5,8(s2)
   10d08:	009787b3          	add	a5,a5,s1
   10d0c:	02f50663          	beq	a0,a5,10d38 <_malloc_trim_r+0x98>
   10d10:	00098513          	mv	a0,s3
   10d14:	415000ef          	jal	11928 <__malloc_unlock>
   10d18:	01c12083          	lw	ra,28(sp)
   10d1c:	01812403          	lw	s0,24(sp)
   10d20:	01412483          	lw	s1,20(sp)
   10d24:	01012903          	lw	s2,16(sp)
   10d28:	00c12983          	lw	s3,12(sp)
   10d2c:	00000513          	li	a0,0
   10d30:	02010113          	addi	sp,sp,32
   10d34:	00008067          	ret
   10d38:	408005b3          	neg	a1,s0
   10d3c:	00098513          	mv	a0,s3
   10d40:	050010ef          	jal	11d90 <_sbrk_r>
   10d44:	fff00793          	li	a5,-1
   10d48:	04f50463          	beq	a0,a5,10d90 <_malloc_trim_r+0xf0>
   10d4c:	00892683          	lw	a3,8(s2)
   10d50:	eb81a783          	lw	a5,-328(gp) # 13758 <__malloc_current_mallinfo>
   10d54:	408484b3          	sub	s1,s1,s0
   10d58:	0014e493          	ori	s1,s1,1
   10d5c:	00098513          	mv	a0,s3
   10d60:	408787b3          	sub	a5,a5,s0
   10d64:	0096a223          	sw	s1,4(a3)
   10d68:	eaf1ac23          	sw	a5,-328(gp) # 13758 <__malloc_current_mallinfo>
   10d6c:	3bd000ef          	jal	11928 <__malloc_unlock>
   10d70:	01c12083          	lw	ra,28(sp)
   10d74:	01812403          	lw	s0,24(sp)
   10d78:	01412483          	lw	s1,20(sp)
   10d7c:	01012903          	lw	s2,16(sp)
   10d80:	00c12983          	lw	s3,12(sp)
   10d84:	00100513          	li	a0,1
   10d88:	02010113          	addi	sp,sp,32
   10d8c:	00008067          	ret
   10d90:	00000593          	li	a1,0
   10d94:	00098513          	mv	a0,s3
   10d98:	7f9000ef          	jal	11d90 <_sbrk_r>
   10d9c:	00892703          	lw	a4,8(s2)
   10da0:	00f00693          	li	a3,15
   10da4:	40e507b3          	sub	a5,a0,a4
   10da8:	f6f6d4e3          	bge	a3,a5,10d10 <_malloc_trim_r+0x70>
   10dac:	d401a603          	lw	a2,-704(gp) # 135e0 <__malloc_sbrk_base>
   10db0:	0017e793          	ori	a5,a5,1
   10db4:	40c50533          	sub	a0,a0,a2
   10db8:	00f72223          	sw	a5,4(a4) # 1004 <exit-0xf0b0>
   10dbc:	eaa1ac23          	sw	a0,-328(gp) # 13758 <__malloc_current_mallinfo>
   10dc0:	f51ff06f          	j	10d10 <_malloc_trim_r+0x70>

00010dc4 <_free_r>:
   10dc4:	12058463          	beqz	a1,10eec <_free_r+0x128>
   10dc8:	fe010113          	addi	sp,sp,-32
   10dcc:	00812c23          	sw	s0,24(sp)
   10dd0:	00b12623          	sw	a1,12(sp)
   10dd4:	00050413          	mv	s0,a0
   10dd8:	00112e23          	sw	ra,28(sp)
   10ddc:	349000ef          	jal	11924 <__malloc_lock>
   10de0:	00c12583          	lw	a1,12(sp)
   10de4:	00013837          	lui	a6,0x13
   10de8:	1d080813          	addi	a6,a6,464 # 131d0 <__malloc_av_>
   10dec:	ffc5a503          	lw	a0,-4(a1)
   10df0:	ff858713          	addi	a4,a1,-8
   10df4:	00882883          	lw	a7,8(a6)
   10df8:	ffe57793          	andi	a5,a0,-2
   10dfc:	00f70633          	add	a2,a4,a5
   10e00:	00462683          	lw	a3,4(a2)
   10e04:	00157313          	andi	t1,a0,1
   10e08:	ffc6f693          	andi	a3,a3,-4
   10e0c:	18c88863          	beq	a7,a2,10f9c <_free_r+0x1d8>
   10e10:	00d62223          	sw	a3,4(a2)
   10e14:	00d608b3          	add	a7,a2,a3
   10e18:	0048a883          	lw	a7,4(a7)
   10e1c:	0018f893          	andi	a7,a7,1
   10e20:	08031a63          	bnez	t1,10eb4 <_free_r+0xf0>
   10e24:	ff85a303          	lw	t1,-8(a1)
   10e28:	000135b7          	lui	a1,0x13
   10e2c:	1d858593          	addi	a1,a1,472 # 131d8 <__malloc_av_+0x8>
   10e30:	40670733          	sub	a4,a4,t1
   10e34:	00872503          	lw	a0,8(a4)
   10e38:	006787b3          	add	a5,a5,t1
   10e3c:	12b50a63          	beq	a0,a1,10f70 <_free_r+0x1ac>
   10e40:	00c72303          	lw	t1,12(a4)
   10e44:	00652623          	sw	t1,12(a0)
   10e48:	00a32423          	sw	a0,8(t1) # 101ac <frame_dummy+0x1c>
   10e4c:	18088c63          	beqz	a7,10fe4 <_free_r+0x220>
   10e50:	0017e693          	ori	a3,a5,1
   10e54:	00d72223          	sw	a3,4(a4)
   10e58:	00f62023          	sw	a5,0(a2)
   10e5c:	1ff00693          	li	a3,511
   10e60:	0af6e263          	bltu	a3,a5,10f04 <_free_r+0x140>
   10e64:	ff87f693          	andi	a3,a5,-8
   10e68:	00868693          	addi	a3,a3,8
   10e6c:	00482583          	lw	a1,4(a6)
   10e70:	00d806b3          	add	a3,a6,a3
   10e74:	0006a603          	lw	a2,0(a3)
   10e78:	0057d513          	srli	a0,a5,0x5
   10e7c:	00100793          	li	a5,1
   10e80:	00a797b3          	sll	a5,a5,a0
   10e84:	00b7e7b3          	or	a5,a5,a1
   10e88:	ff868593          	addi	a1,a3,-8
   10e8c:	00c72423          	sw	a2,8(a4)
   10e90:	00b72623          	sw	a1,12(a4)
   10e94:	00f82223          	sw	a5,4(a6)
   10e98:	00e6a023          	sw	a4,0(a3)
   10e9c:	00e62623          	sw	a4,12(a2)
   10ea0:	00040513          	mv	a0,s0
   10ea4:	01812403          	lw	s0,24(sp)
   10ea8:	01c12083          	lw	ra,28(sp)
   10eac:	02010113          	addi	sp,sp,32
   10eb0:	2790006f          	j	11928 <__malloc_unlock>
   10eb4:	02089e63          	bnez	a7,10ef0 <_free_r+0x12c>
   10eb8:	000135b7          	lui	a1,0x13
   10ebc:	00d787b3          	add	a5,a5,a3
   10ec0:	1d858593          	addi	a1,a1,472 # 131d8 <__malloc_av_+0x8>
   10ec4:	00862683          	lw	a3,8(a2)
   10ec8:	0017e893          	ori	a7,a5,1
   10ecc:	00f70533          	add	a0,a4,a5
   10ed0:	16b68063          	beq	a3,a1,11030 <_free_r+0x26c>
   10ed4:	00c62603          	lw	a2,12(a2)
   10ed8:	00c6a623          	sw	a2,12(a3)
   10edc:	00d62423          	sw	a3,8(a2)
   10ee0:	01172223          	sw	a7,4(a4)
   10ee4:	00f52023          	sw	a5,0(a0)
   10ee8:	f75ff06f          	j	10e5c <_free_r+0x98>
   10eec:	00008067          	ret
   10ef0:	00156513          	ori	a0,a0,1
   10ef4:	fea5ae23          	sw	a0,-4(a1)
   10ef8:	00f62023          	sw	a5,0(a2)
   10efc:	1ff00693          	li	a3,511
   10f00:	f6f6f2e3          	bgeu	a3,a5,10e64 <_free_r+0xa0>
   10f04:	0097d693          	srli	a3,a5,0x9
   10f08:	00400613          	li	a2,4
   10f0c:	0ed66063          	bltu	a2,a3,10fec <_free_r+0x228>
   10f10:	0067d693          	srli	a3,a5,0x6
   10f14:	03968593          	addi	a1,a3,57
   10f18:	00359593          	slli	a1,a1,0x3
   10f1c:	03868613          	addi	a2,a3,56
   10f20:	00b805b3          	add	a1,a6,a1
   10f24:	0005a683          	lw	a3,0(a1)
   10f28:	ff858593          	addi	a1,a1,-8
   10f2c:	00d59863          	bne	a1,a3,10f3c <_free_r+0x178>
   10f30:	11c0006f          	j	1104c <_free_r+0x288>
   10f34:	0086a683          	lw	a3,8(a3)
   10f38:	00d58863          	beq	a1,a3,10f48 <_free_r+0x184>
   10f3c:	0046a603          	lw	a2,4(a3)
   10f40:	ffc67613          	andi	a2,a2,-4
   10f44:	fec7e8e3          	bltu	a5,a2,10f34 <_free_r+0x170>
   10f48:	00c6a583          	lw	a1,12(a3)
   10f4c:	00b72623          	sw	a1,12(a4)
   10f50:	00d72423          	sw	a3,8(a4)
   10f54:	00040513          	mv	a0,s0
   10f58:	01812403          	lw	s0,24(sp)
   10f5c:	01c12083          	lw	ra,28(sp)
   10f60:	00e5a423          	sw	a4,8(a1)
   10f64:	00e6a623          	sw	a4,12(a3)
   10f68:	02010113          	addi	sp,sp,32
   10f6c:	1bd0006f          	j	11928 <__malloc_unlock>
   10f70:	0a089063          	bnez	a7,11010 <_free_r+0x24c>
   10f74:	00c62583          	lw	a1,12(a2)
   10f78:	00862603          	lw	a2,8(a2)
   10f7c:	00f686b3          	add	a3,a3,a5
   10f80:	0016e793          	ori	a5,a3,1
   10f84:	00b62623          	sw	a1,12(a2)
   10f88:	00c5a423          	sw	a2,8(a1)
   10f8c:	00f72223          	sw	a5,4(a4)
   10f90:	00d70733          	add	a4,a4,a3
   10f94:	00d72023          	sw	a3,0(a4)
   10f98:	f09ff06f          	j	10ea0 <_free_r+0xdc>
   10f9c:	00d786b3          	add	a3,a5,a3
   10fa0:	02031063          	bnez	t1,10fc0 <_free_r+0x1fc>
   10fa4:	ff85a783          	lw	a5,-8(a1)
   10fa8:	40f70733          	sub	a4,a4,a5
   10fac:	00872603          	lw	a2,8(a4)
   10fb0:	00f686b3          	add	a3,a3,a5
   10fb4:	00c72783          	lw	a5,12(a4)
   10fb8:	00f62623          	sw	a5,12(a2)
   10fbc:	00c7a423          	sw	a2,8(a5)
   10fc0:	0016e613          	ori	a2,a3,1
   10fc4:	d441a783          	lw	a5,-700(gp) # 135e4 <__malloc_trim_threshold>
   10fc8:	00c72223          	sw	a2,4(a4)
   10fcc:	00e82423          	sw	a4,8(a6)
   10fd0:	ecf6e8e3          	bltu	a3,a5,10ea0 <_free_r+0xdc>
   10fd4:	d5c1a583          	lw	a1,-676(gp) # 135fc <__malloc_top_pad>
   10fd8:	00040513          	mv	a0,s0
   10fdc:	cc5ff0ef          	jal	10ca0 <_malloc_trim_r>
   10fe0:	ec1ff06f          	j	10ea0 <_free_r+0xdc>
   10fe4:	00d787b3          	add	a5,a5,a3
   10fe8:	eddff06f          	j	10ec4 <_free_r+0x100>
   10fec:	01400613          	li	a2,20
   10ff0:	02d67863          	bgeu	a2,a3,11020 <_free_r+0x25c>
   10ff4:	05400613          	li	a2,84
   10ff8:	06d66863          	bltu	a2,a3,11068 <_free_r+0x2a4>
   10ffc:	00c7d693          	srli	a3,a5,0xc
   11000:	06f68593          	addi	a1,a3,111
   11004:	00359593          	slli	a1,a1,0x3
   11008:	06e68613          	addi	a2,a3,110
   1100c:	f15ff06f          	j	10f20 <_free_r+0x15c>
   11010:	0017e693          	ori	a3,a5,1
   11014:	00d72223          	sw	a3,4(a4)
   11018:	00f62023          	sw	a5,0(a2)
   1101c:	e85ff06f          	j	10ea0 <_free_r+0xdc>
   11020:	05c68593          	addi	a1,a3,92
   11024:	00359593          	slli	a1,a1,0x3
   11028:	05b68613          	addi	a2,a3,91
   1102c:	ef5ff06f          	j	10f20 <_free_r+0x15c>
   11030:	00e82a23          	sw	a4,20(a6)
   11034:	00e82823          	sw	a4,16(a6)
   11038:	00b72623          	sw	a1,12(a4)
   1103c:	00b72423          	sw	a1,8(a4)
   11040:	01172223          	sw	a7,4(a4)
   11044:	00f52023          	sw	a5,0(a0)
   11048:	e59ff06f          	j	10ea0 <_free_r+0xdc>
   1104c:	00482503          	lw	a0,4(a6)
   11050:	40265613          	srai	a2,a2,0x2
   11054:	00100793          	li	a5,1
   11058:	00c797b3          	sll	a5,a5,a2
   1105c:	00a7e7b3          	or	a5,a5,a0
   11060:	00f82223          	sw	a5,4(a6)
   11064:	ee9ff06f          	j	10f4c <_free_r+0x188>
   11068:	15400613          	li	a2,340
   1106c:	00d66c63          	bltu	a2,a3,11084 <_free_r+0x2c0>
   11070:	00f7d693          	srli	a3,a5,0xf
   11074:	07868593          	addi	a1,a3,120
   11078:	00359593          	slli	a1,a1,0x3
   1107c:	07768613          	addi	a2,a3,119
   11080:	ea1ff06f          	j	10f20 <_free_r+0x15c>
   11084:	55400613          	li	a2,1364
   11088:	00d66c63          	bltu	a2,a3,110a0 <_free_r+0x2dc>
   1108c:	0127d693          	srli	a3,a5,0x12
   11090:	07d68593          	addi	a1,a3,125
   11094:	00359593          	slli	a1,a1,0x3
   11098:	07c68613          	addi	a2,a3,124
   1109c:	e85ff06f          	j	10f20 <_free_r+0x15c>
   110a0:	3f800593          	li	a1,1016
   110a4:	07e00613          	li	a2,126
   110a8:	e79ff06f          	j	10f20 <_free_r+0x15c>

000110ac <_malloc_r>:
   110ac:	fc010113          	addi	sp,sp,-64
   110b0:	02812c23          	sw	s0,56(sp)
   110b4:	02112e23          	sw	ra,60(sp)
   110b8:	00b58793          	addi	a5,a1,11
   110bc:	01600713          	li	a4,22
   110c0:	00050413          	mv	s0,a0
   110c4:	08f76e63          	bltu	a4,a5,11160 <_malloc_r+0xb4>
   110c8:	01000693          	li	a3,16
   110cc:	06b6ec63          	bltu	a3,a1,11144 <_malloc_r+0x98>
   110d0:	055000ef          	jal	11924 <__malloc_lock>
   110d4:	01000693          	li	a3,16
   110d8:	01800713          	li	a4,24
   110dc:	00200893          	li	a7,2
   110e0:	00013837          	lui	a6,0x13
   110e4:	1d080813          	addi	a6,a6,464 # 131d0 <__malloc_av_>
   110e8:	00e80733          	add	a4,a6,a4
   110ec:	00472783          	lw	a5,4(a4)
   110f0:	ff870613          	addi	a2,a4,-8
   110f4:	44c78c63          	beq	a5,a2,1154c <_malloc_r+0x4a0>
   110f8:	0047a703          	lw	a4,4(a5)
   110fc:	00c7a603          	lw	a2,12(a5)
   11100:	0087a583          	lw	a1,8(a5)
   11104:	ffc77713          	andi	a4,a4,-4
   11108:	00e78733          	add	a4,a5,a4
   1110c:	00472683          	lw	a3,4(a4)
   11110:	00c5a623          	sw	a2,12(a1)
   11114:	00f12623          	sw	a5,12(sp)
   11118:	00b62423          	sw	a1,8(a2)
   1111c:	0016e693          	ori	a3,a3,1
   11120:	00040513          	mv	a0,s0
   11124:	00d72223          	sw	a3,4(a4)
   11128:	001000ef          	jal	11928 <__malloc_unlock>
   1112c:	00c12783          	lw	a5,12(sp)
   11130:	03c12083          	lw	ra,60(sp)
   11134:	03812403          	lw	s0,56(sp)
   11138:	00878513          	addi	a0,a5,8
   1113c:	04010113          	addi	sp,sp,64
   11140:	00008067          	ret
   11144:	00c00793          	li	a5,12
   11148:	00f42023          	sw	a5,0(s0)
   1114c:	00000513          	li	a0,0
   11150:	03c12083          	lw	ra,60(sp)
   11154:	03812403          	lw	s0,56(sp)
   11158:	04010113          	addi	sp,sp,64
   1115c:	00008067          	ret
   11160:	ff87f693          	andi	a3,a5,-8
   11164:	fe07c0e3          	bltz	a5,11144 <_malloc_r+0x98>
   11168:	fcb6eee3          	bltu	a3,a1,11144 <_malloc_r+0x98>
   1116c:	00d12623          	sw	a3,12(sp)
   11170:	7b4000ef          	jal	11924 <__malloc_lock>
   11174:	00c12683          	lw	a3,12(sp)
   11178:	1f700793          	li	a5,503
   1117c:	4cd7f663          	bgeu	a5,a3,11648 <_malloc_r+0x59c>
   11180:	0096d793          	srli	a5,a3,0x9
   11184:	16078e63          	beqz	a5,11300 <_malloc_r+0x254>
   11188:	00400713          	li	a4,4
   1118c:	42f76863          	bltu	a4,a5,115bc <_malloc_r+0x510>
   11190:	0066d793          	srli	a5,a3,0x6
   11194:	03978893          	addi	a7,a5,57
   11198:	03878e13          	addi	t3,a5,56
   1119c:	00389513          	slli	a0,a7,0x3
   111a0:	00013837          	lui	a6,0x13
   111a4:	1d080813          	addi	a6,a6,464 # 131d0 <__malloc_av_>
   111a8:	00a80533          	add	a0,a6,a0
   111ac:	00452783          	lw	a5,4(a0)
   111b0:	ff850513          	addi	a0,a0,-8
   111b4:	02f50863          	beq	a0,a5,111e4 <_malloc_r+0x138>
   111b8:	00f00313          	li	t1,15
   111bc:	0140006f          	j	111d0 <_malloc_r+0x124>
   111c0:	00c7a583          	lw	a1,12(a5)
   111c4:	34065463          	bgez	a2,1150c <_malloc_r+0x460>
   111c8:	00b50e63          	beq	a0,a1,111e4 <_malloc_r+0x138>
   111cc:	00058793          	mv	a5,a1
   111d0:	0047a703          	lw	a4,4(a5)
   111d4:	ffc77713          	andi	a4,a4,-4
   111d8:	40d70633          	sub	a2,a4,a3
   111dc:	fec352e3          	bge	t1,a2,111c0 <_malloc_r+0x114>
   111e0:	000e0893          	mv	a7,t3
   111e4:	01082783          	lw	a5,16(a6)
   111e8:	00013e37          	lui	t3,0x13
   111ec:	1d8e0e13          	addi	t3,t3,472 # 131d8 <__malloc_av_+0x8>
   111f0:	2dc78c63          	beq	a5,t3,114c8 <_malloc_r+0x41c>
   111f4:	0047a703          	lw	a4,4(a5)
   111f8:	00f00593          	li	a1,15
   111fc:	ffc77713          	andi	a4,a4,-4
   11200:	40d70633          	sub	a2,a4,a3
   11204:	46c5cc63          	blt	a1,a2,1167c <_malloc_r+0x5d0>
   11208:	01c82a23          	sw	t3,20(a6)
   1120c:	01c82823          	sw	t3,16(a6)
   11210:	44065263          	bgez	a2,11654 <_malloc_r+0x5a8>
   11214:	1ff00613          	li	a2,511
   11218:	00482303          	lw	t1,4(a6)
   1121c:	34e66063          	bltu	a2,a4,1155c <_malloc_r+0x4b0>
   11220:	ff877613          	andi	a2,a4,-8
   11224:	00860613          	addi	a2,a2,8
   11228:	00c80633          	add	a2,a6,a2
   1122c:	00062583          	lw	a1,0(a2)
   11230:	00575513          	srli	a0,a4,0x5
   11234:	00100713          	li	a4,1
   11238:	00a71733          	sll	a4,a4,a0
   1123c:	00e36333          	or	t1,t1,a4
   11240:	ff860713          	addi	a4,a2,-8
   11244:	00b7a423          	sw	a1,8(a5)
   11248:	00e7a623          	sw	a4,12(a5)
   1124c:	00682223          	sw	t1,4(a6)
   11250:	00f62023          	sw	a5,0(a2)
   11254:	00f5a623          	sw	a5,12(a1)
   11258:	4028d793          	srai	a5,a7,0x2
   1125c:	00100513          	li	a0,1
   11260:	00f51533          	sll	a0,a0,a5
   11264:	0aa36663          	bltu	t1,a0,11310 <_malloc_r+0x264>
   11268:	006577b3          	and	a5,a0,t1
   1126c:	02079463          	bnez	a5,11294 <_malloc_r+0x1e8>
   11270:	00151513          	slli	a0,a0,0x1
   11274:	ffc8f893          	andi	a7,a7,-4
   11278:	006577b3          	and	a5,a0,t1
   1127c:	00488893          	addi	a7,a7,4
   11280:	00079a63          	bnez	a5,11294 <_malloc_r+0x1e8>
   11284:	00151513          	slli	a0,a0,0x1
   11288:	006577b3          	and	a5,a0,t1
   1128c:	00488893          	addi	a7,a7,4
   11290:	fe078ae3          	beqz	a5,11284 <_malloc_r+0x1d8>
   11294:	00f00e93          	li	t4,15
   11298:	00389f13          	slli	t5,a7,0x3
   1129c:	01e80f33          	add	t5,a6,t5
   112a0:	000f0313          	mv	t1,t5
   112a4:	00c32703          	lw	a4,12(t1)
   112a8:	00088f93          	mv	t6,a7
   112ac:	32e30a63          	beq	t1,a4,115e0 <_malloc_r+0x534>
   112b0:	00472603          	lw	a2,4(a4)
   112b4:	00070793          	mv	a5,a4
   112b8:	00c72703          	lw	a4,12(a4)
   112bc:	ffc67613          	andi	a2,a2,-4
   112c0:	40d605b3          	sub	a1,a2,a3
   112c4:	32beca63          	blt	t4,a1,115f8 <_malloc_r+0x54c>
   112c8:	fe05c2e3          	bltz	a1,112ac <_malloc_r+0x200>
   112cc:	00c78633          	add	a2,a5,a2
   112d0:	00462683          	lw	a3,4(a2)
   112d4:	0087a583          	lw	a1,8(a5)
   112d8:	00040513          	mv	a0,s0
   112dc:	0016e693          	ori	a3,a3,1
   112e0:	00d62223          	sw	a3,4(a2)
   112e4:	00e5a623          	sw	a4,12(a1)
   112e8:	00b72423          	sw	a1,8(a4)
   112ec:	00f12623          	sw	a5,12(sp)
   112f0:	638000ef          	jal	11928 <__malloc_unlock>
   112f4:	00c12783          	lw	a5,12(sp)
   112f8:	00878513          	addi	a0,a5,8
   112fc:	e55ff06f          	j	11150 <_malloc_r+0xa4>
   11300:	20000513          	li	a0,512
   11304:	04000893          	li	a7,64
   11308:	03f00e13          	li	t3,63
   1130c:	e95ff06f          	j	111a0 <_malloc_r+0xf4>
   11310:	00882783          	lw	a5,8(a6)
   11314:	0047a703          	lw	a4,4(a5)
   11318:	ffc77713          	andi	a4,a4,-4
   1131c:	40d70633          	sub	a2,a4,a3
   11320:	00d76663          	bltu	a4,a3,1132c <_malloc_r+0x280>
   11324:	01062593          	slti	a1,a2,16
   11328:	1a058463          	beqz	a1,114d0 <_malloc_r+0x424>
   1132c:	d5c1a583          	lw	a1,-676(gp) # 135fc <__malloc_top_pad>
   11330:	d401a503          	lw	a0,-704(gp) # 135e0 <__malloc_sbrk_base>
   11334:	fff00613          	li	a2,-1
   11338:	00b685b3          	add	a1,a3,a1
   1133c:	42c50463          	beq	a0,a2,11764 <_malloc_r+0x6b8>
   11340:	00001637          	lui	a2,0x1
   11344:	00f60613          	addi	a2,a2,15 # 100f <exit-0xf0a5>
   11348:	00c585b3          	add	a1,a1,a2
   1134c:	fffff637          	lui	a2,0xfffff
   11350:	00c5f5b3          	and	a1,a1,a2
   11354:	00040513          	mv	a0,s0
   11358:	01012e23          	sw	a6,28(sp)
   1135c:	00f12c23          	sw	a5,24(sp)
   11360:	00d12a23          	sw	a3,20(sp)
   11364:	00e12823          	sw	a4,16(sp)
   11368:	00b12623          	sw	a1,12(sp)
   1136c:	225000ef          	jal	11d90 <_sbrk_r>
   11370:	fff00613          	li	a2,-1
   11374:	00c12583          	lw	a1,12(sp)
   11378:	01012703          	lw	a4,16(sp)
   1137c:	01412683          	lw	a3,20(sp)
   11380:	01812783          	lw	a5,24(sp)
   11384:	01c12803          	lw	a6,28(sp)
   11388:	00050893          	mv	a7,a0
   1138c:	34c50663          	beq	a0,a2,116d8 <_malloc_r+0x62c>
   11390:	00e78533          	add	a0,a5,a4
   11394:	34a8e063          	bltu	a7,a0,116d4 <_malloc_r+0x628>
   11398:	eb818e13          	addi	t3,gp,-328 # 13758 <__malloc_current_mallinfo>
   1139c:	000e2603          	lw	a2,0(t3)
   113a0:	00c58633          	add	a2,a1,a2
   113a4:	00ce2023          	sw	a2,0(t3)
   113a8:	00060e93          	mv	t4,a2
   113ac:	49150663          	beq	a0,a7,11838 <_malloc_r+0x78c>
   113b0:	d401af03          	lw	t5,-704(gp) # 135e0 <__malloc_sbrk_base>
   113b4:	fff00613          	li	a2,-1
   113b8:	48cf0e63          	beq	t5,a2,11854 <_malloc_r+0x7a8>
   113bc:	40a88633          	sub	a2,a7,a0
   113c0:	01d60633          	add	a2,a2,t4
   113c4:	00ce2023          	sw	a2,0(t3)
   113c8:	0078fe93          	andi	t4,a7,7
   113cc:	3a0e8c63          	beqz	t4,11784 <_malloc_r+0x6d8>
   113d0:	ff88f893          	andi	a7,a7,-8
   113d4:	00001637          	lui	a2,0x1
   113d8:	00888893          	addi	a7,a7,8
   113dc:	00860613          	addi	a2,a2,8 # 1008 <exit-0xf0ac>
   113e0:	00b88333          	add	t1,a7,a1
   113e4:	41d60633          	sub	a2,a2,t4
   113e8:	40660633          	sub	a2,a2,t1
   113ec:	01461613          	slli	a2,a2,0x14
   113f0:	01465593          	srli	a1,a2,0x14
   113f4:	00040513          	mv	a0,s0
   113f8:	03012623          	sw	a6,44(sp)
   113fc:	03c12423          	sw	t3,40(sp)
   11400:	02f12223          	sw	a5,36(sp)
   11404:	02d12023          	sw	a3,32(sp)
   11408:	00e12e23          	sw	a4,28(sp)
   1140c:	01112c23          	sw	a7,24(sp)
   11410:	01d12a23          	sw	t4,20(sp)
   11414:	00612823          	sw	t1,16(sp)
   11418:	00b12623          	sw	a1,12(sp)
   1141c:	175000ef          	jal	11d90 <_sbrk_r>
   11420:	fff00613          	li	a2,-1
   11424:	00c12583          	lw	a1,12(sp)
   11428:	01012303          	lw	t1,16(sp)
   1142c:	01412e83          	lw	t4,20(sp)
   11430:	01812883          	lw	a7,24(sp)
   11434:	01c12703          	lw	a4,28(sp)
   11438:	02012683          	lw	a3,32(sp)
   1143c:	02412783          	lw	a5,36(sp)
   11440:	02812e03          	lw	t3,40(sp)
   11444:	02c12803          	lw	a6,44(sp)
   11448:	44c50c63          	beq	a0,a2,118a0 <_malloc_r+0x7f4>
   1144c:	000e2603          	lw	a2,0(t3)
   11450:	41150533          	sub	a0,a0,a7
   11454:	00b50533          	add	a0,a0,a1
   11458:	00156513          	ori	a0,a0,1
   1145c:	01182423          	sw	a7,8(a6)
   11460:	00c58633          	add	a2,a1,a2
   11464:	00a8a223          	sw	a0,4(a7)
   11468:	00ce2023          	sw	a2,0(t3)
   1146c:	03078e63          	beq	a5,a6,114a8 <_malloc_r+0x3fc>
   11470:	00f00513          	li	a0,15
   11474:	3ee57463          	bgeu	a0,a4,1185c <_malloc_r+0x7b0>
   11478:	0047a583          	lw	a1,4(a5)
   1147c:	ff470713          	addi	a4,a4,-12
   11480:	ff877713          	andi	a4,a4,-8
   11484:	0015f593          	andi	a1,a1,1
   11488:	00e5e5b3          	or	a1,a1,a4
   1148c:	00b7a223          	sw	a1,4(a5)
   11490:	00500313          	li	t1,5
   11494:	00e785b3          	add	a1,a5,a4
   11498:	0065a223          	sw	t1,4(a1)
   1149c:	0065a423          	sw	t1,8(a1)
   114a0:	40e56863          	bltu	a0,a4,118b0 <_malloc_r+0x804>
   114a4:	0048a503          	lw	a0,4(a7)
   114a8:	d581a703          	lw	a4,-680(gp) # 135f8 <__malloc_max_sbrked_mem>
   114ac:	00c77463          	bgeu	a4,a2,114b4 <_malloc_r+0x408>
   114b0:	d4c1ac23          	sw	a2,-680(gp) # 135f8 <__malloc_max_sbrked_mem>
   114b4:	d541a703          	lw	a4,-684(gp) # 135f4 <__malloc_max_total_mem>
   114b8:	00c77463          	bgeu	a4,a2,114c0 <_malloc_r+0x414>
   114bc:	d4c1aa23          	sw	a2,-684(gp) # 135f4 <__malloc_max_total_mem>
   114c0:	00088793          	mv	a5,a7
   114c4:	21c0006f          	j	116e0 <_malloc_r+0x634>
   114c8:	00482303          	lw	t1,4(a6)
   114cc:	d8dff06f          	j	11258 <_malloc_r+0x1ac>
   114d0:	0016e713          	ori	a4,a3,1
   114d4:	00e7a223          	sw	a4,4(a5)
   114d8:	00d786b3          	add	a3,a5,a3
   114dc:	00166613          	ori	a2,a2,1
   114e0:	00d82423          	sw	a3,8(a6)
   114e4:	00040513          	mv	a0,s0
   114e8:	00c6a223          	sw	a2,4(a3)
   114ec:	00f12623          	sw	a5,12(sp)
   114f0:	438000ef          	jal	11928 <__malloc_unlock>
   114f4:	00c12783          	lw	a5,12(sp)
   114f8:	03c12083          	lw	ra,60(sp)
   114fc:	03812403          	lw	s0,56(sp)
   11500:	00878513          	addi	a0,a5,8
   11504:	04010113          	addi	sp,sp,64
   11508:	00008067          	ret
   1150c:	0087a603          	lw	a2,8(a5)
   11510:	00e78733          	add	a4,a5,a4
   11514:	00472683          	lw	a3,4(a4)
   11518:	00b62623          	sw	a1,12(a2)
   1151c:	00f12623          	sw	a5,12(sp)
   11520:	0016e693          	ori	a3,a3,1
   11524:	00c5a423          	sw	a2,8(a1)
   11528:	00040513          	mv	a0,s0
   1152c:	00d72223          	sw	a3,4(a4)
   11530:	3f8000ef          	jal	11928 <__malloc_unlock>
   11534:	00c12783          	lw	a5,12(sp)
   11538:	03c12083          	lw	ra,60(sp)
   1153c:	03812403          	lw	s0,56(sp)
   11540:	00878513          	addi	a0,a5,8
   11544:	04010113          	addi	sp,sp,64
   11548:	00008067          	ret
   1154c:	00c72783          	lw	a5,12(a4)
   11550:	00288893          	addi	a7,a7,2
   11554:	c8f708e3          	beq	a4,a5,111e4 <_malloc_r+0x138>
   11558:	ba1ff06f          	j	110f8 <_malloc_r+0x4c>
   1155c:	00975613          	srli	a2,a4,0x9
   11560:	00400593          	li	a1,4
   11564:	14c5fe63          	bgeu	a1,a2,116c0 <_malloc_r+0x614>
   11568:	01400593          	li	a1,20
   1156c:	28c5e063          	bltu	a1,a2,117ec <_malloc_r+0x740>
   11570:	05c60513          	addi	a0,a2,92
   11574:	00351513          	slli	a0,a0,0x3
   11578:	05b60593          	addi	a1,a2,91
   1157c:	00a80533          	add	a0,a6,a0
   11580:	00052603          	lw	a2,0(a0)
   11584:	ff850513          	addi	a0,a0,-8
   11588:	00c51863          	bne	a0,a2,11598 <_malloc_r+0x4ec>
   1158c:	1e00006f          	j	1176c <_malloc_r+0x6c0>
   11590:	00862603          	lw	a2,8(a2)
   11594:	00c50863          	beq	a0,a2,115a4 <_malloc_r+0x4f8>
   11598:	00462583          	lw	a1,4(a2)
   1159c:	ffc5f593          	andi	a1,a1,-4
   115a0:	feb768e3          	bltu	a4,a1,11590 <_malloc_r+0x4e4>
   115a4:	00c62503          	lw	a0,12(a2)
   115a8:	00a7a623          	sw	a0,12(a5)
   115ac:	00c7a423          	sw	a2,8(a5)
   115b0:	00f52423          	sw	a5,8(a0)
   115b4:	00f62623          	sw	a5,12(a2)
   115b8:	ca1ff06f          	j	11258 <_malloc_r+0x1ac>
   115bc:	01400713          	li	a4,20
   115c0:	14f77063          	bgeu	a4,a5,11700 <_malloc_r+0x654>
   115c4:	05400713          	li	a4,84
   115c8:	24f76063          	bltu	a4,a5,11808 <_malloc_r+0x75c>
   115cc:	00c6d793          	srli	a5,a3,0xc
   115d0:	06f78893          	addi	a7,a5,111
   115d4:	06e78e13          	addi	t3,a5,110
   115d8:	00389513          	slli	a0,a7,0x3
   115dc:	bc5ff06f          	j	111a0 <_malloc_r+0xf4>
   115e0:	001f8f93          	addi	t6,t6,1
   115e4:	003ff793          	andi	a5,t6,3
   115e8:	00830313          	addi	t1,t1,8
   115ec:	12078863          	beqz	a5,1171c <_malloc_r+0x670>
   115f0:	00c32703          	lw	a4,12(t1)
   115f4:	cb9ff06f          	j	112ac <_malloc_r+0x200>
   115f8:	0087a503          	lw	a0,8(a5)
   115fc:	0016e893          	ori	a7,a3,1
   11600:	0117a223          	sw	a7,4(a5)
   11604:	00e52623          	sw	a4,12(a0)
   11608:	00a72423          	sw	a0,8(a4)
   1160c:	00d786b3          	add	a3,a5,a3
   11610:	00d82a23          	sw	a3,20(a6)
   11614:	00d82823          	sw	a3,16(a6)
   11618:	0015e713          	ori	a4,a1,1
   1161c:	00c78633          	add	a2,a5,a2
   11620:	01c6a623          	sw	t3,12(a3)
   11624:	01c6a423          	sw	t3,8(a3)
   11628:	00e6a223          	sw	a4,4(a3)
   1162c:	00040513          	mv	a0,s0
   11630:	00b62023          	sw	a1,0(a2)
   11634:	00f12623          	sw	a5,12(sp)
   11638:	2f0000ef          	jal	11928 <__malloc_unlock>
   1163c:	00c12783          	lw	a5,12(sp)
   11640:	00878513          	addi	a0,a5,8
   11644:	b0dff06f          	j	11150 <_malloc_r+0xa4>
   11648:	0036d893          	srli	a7,a3,0x3
   1164c:	00868713          	addi	a4,a3,8
   11650:	a91ff06f          	j	110e0 <_malloc_r+0x34>
   11654:	00e78733          	add	a4,a5,a4
   11658:	00472683          	lw	a3,4(a4)
   1165c:	00f12623          	sw	a5,12(sp)
   11660:	00040513          	mv	a0,s0
   11664:	0016e693          	ori	a3,a3,1
   11668:	00d72223          	sw	a3,4(a4)
   1166c:	2bc000ef          	jal	11928 <__malloc_unlock>
   11670:	00c12783          	lw	a5,12(sp)
   11674:	00878513          	addi	a0,a5,8
   11678:	ad9ff06f          	j	11150 <_malloc_r+0xa4>
   1167c:	0016e593          	ori	a1,a3,1
   11680:	00b7a223          	sw	a1,4(a5)
   11684:	00d786b3          	add	a3,a5,a3
   11688:	00d82a23          	sw	a3,20(a6)
   1168c:	00d82823          	sw	a3,16(a6)
   11690:	00166593          	ori	a1,a2,1
   11694:	00e78733          	add	a4,a5,a4
   11698:	01c6a623          	sw	t3,12(a3)
   1169c:	01c6a423          	sw	t3,8(a3)
   116a0:	00b6a223          	sw	a1,4(a3)
   116a4:	00040513          	mv	a0,s0
   116a8:	00c72023          	sw	a2,0(a4)
   116ac:	00f12623          	sw	a5,12(sp)
   116b0:	278000ef          	jal	11928 <__malloc_unlock>
   116b4:	00c12783          	lw	a5,12(sp)
   116b8:	00878513          	addi	a0,a5,8
   116bc:	a95ff06f          	j	11150 <_malloc_r+0xa4>
   116c0:	00675613          	srli	a2,a4,0x6
   116c4:	03960513          	addi	a0,a2,57
   116c8:	00351513          	slli	a0,a0,0x3
   116cc:	03860593          	addi	a1,a2,56
   116d0:	eadff06f          	j	1157c <_malloc_r+0x4d0>
   116d4:	15078863          	beq	a5,a6,11824 <_malloc_r+0x778>
   116d8:	00882783          	lw	a5,8(a6)
   116dc:	0047a503          	lw	a0,4(a5)
   116e0:	ffc57513          	andi	a0,a0,-4
   116e4:	40d50633          	sub	a2,a0,a3
   116e8:	00d56663          	bltu	a0,a3,116f4 <_malloc_r+0x648>
   116ec:	01062713          	slti	a4,a2,16
   116f0:	de0700e3          	beqz	a4,114d0 <_malloc_r+0x424>
   116f4:	00040513          	mv	a0,s0
   116f8:	230000ef          	jal	11928 <__malloc_unlock>
   116fc:	a51ff06f          	j	1114c <_malloc_r+0xa0>
   11700:	05c78893          	addi	a7,a5,92
   11704:	05b78e13          	addi	t3,a5,91
   11708:	00389513          	slli	a0,a7,0x3
   1170c:	a95ff06f          	j	111a0 <_malloc_r+0xf4>
   11710:	008f2783          	lw	a5,8(t5)
   11714:	fff88893          	addi	a7,a7,-1
   11718:	21e79263          	bne	a5,t5,1191c <_malloc_r+0x870>
   1171c:	0038f793          	andi	a5,a7,3
   11720:	ff8f0f13          	addi	t5,t5,-8
   11724:	fe0796e3          	bnez	a5,11710 <_malloc_r+0x664>
   11728:	00482703          	lw	a4,4(a6)
   1172c:	fff54793          	not	a5,a0
   11730:	00e7f7b3          	and	a5,a5,a4
   11734:	00f82223          	sw	a5,4(a6)
   11738:	00151513          	slli	a0,a0,0x1
   1173c:	fff50713          	addi	a4,a0,-1
   11740:	bcf778e3          	bgeu	a4,a5,11310 <_malloc_r+0x264>
   11744:	00f57733          	and	a4,a0,a5
   11748:	00071a63          	bnez	a4,1175c <_malloc_r+0x6b0>
   1174c:	00151513          	slli	a0,a0,0x1
   11750:	00f57733          	and	a4,a0,a5
   11754:	004f8f93          	addi	t6,t6,4
   11758:	fe070ae3          	beqz	a4,1174c <_malloc_r+0x6a0>
   1175c:	000f8893          	mv	a7,t6
   11760:	b39ff06f          	j	11298 <_malloc_r+0x1ec>
   11764:	01058593          	addi	a1,a1,16
   11768:	bedff06f          	j	11354 <_malloc_r+0x2a8>
   1176c:	4025d593          	srai	a1,a1,0x2
   11770:	00100713          	li	a4,1
   11774:	00b71733          	sll	a4,a4,a1
   11778:	00e36333          	or	t1,t1,a4
   1177c:	00682223          	sw	t1,4(a6)
   11780:	e29ff06f          	j	115a8 <_malloc_r+0x4fc>
   11784:	00b88333          	add	t1,a7,a1
   11788:	40600633          	neg	a2,t1
   1178c:	01461613          	slli	a2,a2,0x14
   11790:	01465593          	srli	a1,a2,0x14
   11794:	00040513          	mv	a0,s0
   11798:	03012423          	sw	a6,40(sp)
   1179c:	03c12223          	sw	t3,36(sp)
   117a0:	02f12023          	sw	a5,32(sp)
   117a4:	00d12e23          	sw	a3,28(sp)
   117a8:	00e12c23          	sw	a4,24(sp)
   117ac:	01112a23          	sw	a7,20(sp)
   117b0:	00b12623          	sw	a1,12(sp)
   117b4:	00612823          	sw	t1,16(sp)
   117b8:	5d8000ef          	jal	11d90 <_sbrk_r>
   117bc:	fff00613          	li	a2,-1
   117c0:	00c12583          	lw	a1,12(sp)
   117c4:	01412883          	lw	a7,20(sp)
   117c8:	01812703          	lw	a4,24(sp)
   117cc:	01c12683          	lw	a3,28(sp)
   117d0:	02012783          	lw	a5,32(sp)
   117d4:	02412e03          	lw	t3,36(sp)
   117d8:	02812803          	lw	a6,40(sp)
   117dc:	c6c518e3          	bne	a0,a2,1144c <_malloc_r+0x3a0>
   117e0:	01012503          	lw	a0,16(sp)
   117e4:	00000593          	li	a1,0
   117e8:	c65ff06f          	j	1144c <_malloc_r+0x3a0>
   117ec:	05400593          	li	a1,84
   117f0:	06c5ec63          	bltu	a1,a2,11868 <_malloc_r+0x7bc>
   117f4:	00c75613          	srli	a2,a4,0xc
   117f8:	06f60513          	addi	a0,a2,111
   117fc:	00351513          	slli	a0,a0,0x3
   11800:	06e60593          	addi	a1,a2,110
   11804:	d79ff06f          	j	1157c <_malloc_r+0x4d0>
   11808:	15400713          	li	a4,340
   1180c:	06f76c63          	bltu	a4,a5,11884 <_malloc_r+0x7d8>
   11810:	00f6d793          	srli	a5,a3,0xf
   11814:	07878893          	addi	a7,a5,120
   11818:	07778e13          	addi	t3,a5,119
   1181c:	00389513          	slli	a0,a7,0x3
   11820:	981ff06f          	j	111a0 <_malloc_r+0xf4>
   11824:	eb818e13          	addi	t3,gp,-328 # 13758 <__malloc_current_mallinfo>
   11828:	000e2e83          	lw	t4,0(t3)
   1182c:	01d58eb3          	add	t4,a1,t4
   11830:	01de2023          	sw	t4,0(t3)
   11834:	b7dff06f          	j	113b0 <_malloc_r+0x304>
   11838:	01489f13          	slli	t5,a7,0x14
   1183c:	b60f1ae3          	bnez	t5,113b0 <_malloc_r+0x304>
   11840:	00882883          	lw	a7,8(a6)
   11844:	00b705b3          	add	a1,a4,a1
   11848:	0015e513          	ori	a0,a1,1
   1184c:	00a8a223          	sw	a0,4(a7)
   11850:	c59ff06f          	j	114a8 <_malloc_r+0x3fc>
   11854:	d511a023          	sw	a7,-704(gp) # 135e0 <__malloc_sbrk_base>
   11858:	b71ff06f          	j	113c8 <_malloc_r+0x31c>
   1185c:	00100793          	li	a5,1
   11860:	00f8a223          	sw	a5,4(a7)
   11864:	e91ff06f          	j	116f4 <_malloc_r+0x648>
   11868:	15400593          	li	a1,340
   1186c:	06c5ec63          	bltu	a1,a2,118e4 <_malloc_r+0x838>
   11870:	00f75613          	srli	a2,a4,0xf
   11874:	07860513          	addi	a0,a2,120
   11878:	00351513          	slli	a0,a0,0x3
   1187c:	07760593          	addi	a1,a2,119
   11880:	cfdff06f          	j	1157c <_malloc_r+0x4d0>
   11884:	55400713          	li	a4,1364
   11888:	06f76c63          	bltu	a4,a5,11900 <_malloc_r+0x854>
   1188c:	0126d793          	srli	a5,a3,0x12
   11890:	07d78893          	addi	a7,a5,125
   11894:	07c78e13          	addi	t3,a5,124
   11898:	00389513          	slli	a0,a7,0x3
   1189c:	905ff06f          	j	111a0 <_malloc_r+0xf4>
   118a0:	ff8e8e93          	addi	t4,t4,-8
   118a4:	01d30533          	add	a0,t1,t4
   118a8:	00000593          	li	a1,0
   118ac:	ba1ff06f          	j	1144c <_malloc_r+0x3a0>
   118b0:	00040513          	mv	a0,s0
   118b4:	00878593          	addi	a1,a5,8
   118b8:	01012a23          	sw	a6,20(sp)
   118bc:	01c12823          	sw	t3,16(sp)
   118c0:	00d12623          	sw	a3,12(sp)
   118c4:	d00ff0ef          	jal	10dc4 <_free_r>
   118c8:	01412803          	lw	a6,20(sp)
   118cc:	01012e03          	lw	t3,16(sp)
   118d0:	00c12683          	lw	a3,12(sp)
   118d4:	00882883          	lw	a7,8(a6)
   118d8:	000e2603          	lw	a2,0(t3)
   118dc:	0048a503          	lw	a0,4(a7)
   118e0:	bc9ff06f          	j	114a8 <_malloc_r+0x3fc>
   118e4:	55400593          	li	a1,1364
   118e8:	02c5e463          	bltu	a1,a2,11910 <_malloc_r+0x864>
   118ec:	01275613          	srli	a2,a4,0x12
   118f0:	07d60513          	addi	a0,a2,125
   118f4:	00351513          	slli	a0,a0,0x3
   118f8:	07c60593          	addi	a1,a2,124
   118fc:	c81ff06f          	j	1157c <_malloc_r+0x4d0>
   11900:	3f800513          	li	a0,1016
   11904:	07f00893          	li	a7,127
   11908:	07e00e13          	li	t3,126
   1190c:	895ff06f          	j	111a0 <_malloc_r+0xf4>
   11910:	3f800513          	li	a0,1016
   11914:	07e00593          	li	a1,126
   11918:	c65ff06f          	j	1157c <_malloc_r+0x4d0>
   1191c:	00482783          	lw	a5,4(a6)
   11920:	e19ff06f          	j	11738 <_malloc_r+0x68c>

00011924 <__malloc_lock>:
   11924:	00008067          	ret

00011928 <__malloc_unlock>:
   11928:	00008067          	ret

0001192c <_fclose_r>:
   1192c:	ff010113          	addi	sp,sp,-16
   11930:	00112623          	sw	ra,12(sp)
   11934:	01212023          	sw	s2,0(sp)
   11938:	02058863          	beqz	a1,11968 <_fclose_r+0x3c>
   1193c:	00812423          	sw	s0,8(sp)
   11940:	00912223          	sw	s1,4(sp)
   11944:	00058413          	mv	s0,a1
   11948:	00050493          	mv	s1,a0
   1194c:	00050663          	beqz	a0,11958 <_fclose_r+0x2c>
   11950:	03452783          	lw	a5,52(a0)
   11954:	0c078c63          	beqz	a5,11a2c <_fclose_r+0x100>
   11958:	00c41783          	lh	a5,12(s0)
   1195c:	02079263          	bnez	a5,11980 <_fclose_r+0x54>
   11960:	00812403          	lw	s0,8(sp)
   11964:	00412483          	lw	s1,4(sp)
   11968:	00c12083          	lw	ra,12(sp)
   1196c:	00000913          	li	s2,0
   11970:	00090513          	mv	a0,s2
   11974:	00012903          	lw	s2,0(sp)
   11978:	01010113          	addi	sp,sp,16
   1197c:	00008067          	ret
   11980:	00040593          	mv	a1,s0
   11984:	00048513          	mv	a0,s1
   11988:	0b8000ef          	jal	11a40 <__sflush_r>
   1198c:	02c42783          	lw	a5,44(s0)
   11990:	00050913          	mv	s2,a0
   11994:	00078a63          	beqz	a5,119a8 <_fclose_r+0x7c>
   11998:	01c42583          	lw	a1,28(s0)
   1199c:	00048513          	mv	a0,s1
   119a0:	000780e7          	jalr	a5
   119a4:	06054463          	bltz	a0,11a0c <_fclose_r+0xe0>
   119a8:	00c45783          	lhu	a5,12(s0)
   119ac:	0807f793          	andi	a5,a5,128
   119b0:	06079663          	bnez	a5,11a1c <_fclose_r+0xf0>
   119b4:	03042583          	lw	a1,48(s0)
   119b8:	00058c63          	beqz	a1,119d0 <_fclose_r+0xa4>
   119bc:	04040793          	addi	a5,s0,64
   119c0:	00f58663          	beq	a1,a5,119cc <_fclose_r+0xa0>
   119c4:	00048513          	mv	a0,s1
   119c8:	bfcff0ef          	jal	10dc4 <_free_r>
   119cc:	02042823          	sw	zero,48(s0)
   119d0:	04442583          	lw	a1,68(s0)
   119d4:	00058863          	beqz	a1,119e4 <_fclose_r+0xb8>
   119d8:	00048513          	mv	a0,s1
   119dc:	be8ff0ef          	jal	10dc4 <_free_r>
   119e0:	04042223          	sw	zero,68(s0)
   119e4:	b49fe0ef          	jal	1052c <__sfp_lock_acquire>
   119e8:	00041623          	sh	zero,12(s0)
   119ec:	b45fe0ef          	jal	10530 <__sfp_lock_release>
   119f0:	00c12083          	lw	ra,12(sp)
   119f4:	00812403          	lw	s0,8(sp)
   119f8:	00412483          	lw	s1,4(sp)
   119fc:	00090513          	mv	a0,s2
   11a00:	00012903          	lw	s2,0(sp)
   11a04:	01010113          	addi	sp,sp,16
   11a08:	00008067          	ret
   11a0c:	00c45783          	lhu	a5,12(s0)
   11a10:	fff00913          	li	s2,-1
   11a14:	0807f793          	andi	a5,a5,128
   11a18:	f8078ee3          	beqz	a5,119b4 <_fclose_r+0x88>
   11a1c:	01042583          	lw	a1,16(s0)
   11a20:	00048513          	mv	a0,s1
   11a24:	ba0ff0ef          	jal	10dc4 <_free_r>
   11a28:	f8dff06f          	j	119b4 <_fclose_r+0x88>
   11a2c:	addfe0ef          	jal	10508 <__sinit>
   11a30:	f29ff06f          	j	11958 <_fclose_r+0x2c>

00011a34 <fclose>:
   11a34:	00050593          	mv	a1,a0
   11a38:	d3c1a503          	lw	a0,-708(gp) # 135dc <_impure_ptr>
   11a3c:	ef1ff06f          	j	1192c <_fclose_r>

00011a40 <__sflush_r>:
   11a40:	00c59703          	lh	a4,12(a1)
   11a44:	fe010113          	addi	sp,sp,-32
   11a48:	00812c23          	sw	s0,24(sp)
   11a4c:	01312623          	sw	s3,12(sp)
   11a50:	00112e23          	sw	ra,28(sp)
   11a54:	00877793          	andi	a5,a4,8
   11a58:	00058413          	mv	s0,a1
   11a5c:	00050993          	mv	s3,a0
   11a60:	12079263          	bnez	a5,11b84 <__sflush_r+0x144>
   11a64:	000017b7          	lui	a5,0x1
   11a68:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf8b4>
   11a6c:	0045a683          	lw	a3,4(a1)
   11a70:	00f767b3          	or	a5,a4,a5
   11a74:	00f59623          	sh	a5,12(a1)
   11a78:	18d05c63          	blez	a3,11c10 <__sflush_r+0x1d0>
   11a7c:	02842803          	lw	a6,40(s0)
   11a80:	0e080663          	beqz	a6,11b6c <__sflush_r+0x12c>
   11a84:	00912a23          	sw	s1,20(sp)
   11a88:	01371693          	slli	a3,a4,0x13
   11a8c:	0009a483          	lw	s1,0(s3)
   11a90:	0009a023          	sw	zero,0(s3)
   11a94:	1806ca63          	bltz	a3,11c28 <__sflush_r+0x1e8>
   11a98:	01c42583          	lw	a1,28(s0)
   11a9c:	00000613          	li	a2,0
   11aa0:	00100693          	li	a3,1
   11aa4:	00098513          	mv	a0,s3
   11aa8:	000800e7          	jalr	a6
   11aac:	fff00793          	li	a5,-1
   11ab0:	00050613          	mv	a2,a0
   11ab4:	1af50c63          	beq	a0,a5,11c6c <__sflush_r+0x22c>
   11ab8:	00c41783          	lh	a5,12(s0)
   11abc:	02842803          	lw	a6,40(s0)
   11ac0:	0047f793          	andi	a5,a5,4
   11ac4:	00078e63          	beqz	a5,11ae0 <__sflush_r+0xa0>
   11ac8:	00442703          	lw	a4,4(s0)
   11acc:	03042783          	lw	a5,48(s0)
   11ad0:	40e60633          	sub	a2,a2,a4
   11ad4:	00078663          	beqz	a5,11ae0 <__sflush_r+0xa0>
   11ad8:	03c42783          	lw	a5,60(s0)
   11adc:	40f60633          	sub	a2,a2,a5
   11ae0:	01c42583          	lw	a1,28(s0)
   11ae4:	00000693          	li	a3,0
   11ae8:	00098513          	mv	a0,s3
   11aec:	000800e7          	jalr	a6
   11af0:	fff00713          	li	a4,-1
   11af4:	00c41783          	lh	a5,12(s0)
   11af8:	12e51c63          	bne	a0,a4,11c30 <__sflush_r+0x1f0>
   11afc:	0009a683          	lw	a3,0(s3)
   11b00:	01d00713          	li	a4,29
   11b04:	18d76263          	bltu	a4,a3,11c88 <__sflush_r+0x248>
   11b08:	20400737          	lui	a4,0x20400
   11b0c:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec6f1>
   11b10:	00d75733          	srl	a4,a4,a3
   11b14:	00177713          	andi	a4,a4,1
   11b18:	16070863          	beqz	a4,11c88 <__sflush_r+0x248>
   11b1c:	01042683          	lw	a3,16(s0)
   11b20:	fffff737          	lui	a4,0xfffff
   11b24:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffebeef>
   11b28:	00e7f733          	and	a4,a5,a4
   11b2c:	00e41623          	sh	a4,12(s0)
   11b30:	00042223          	sw	zero,4(s0)
   11b34:	00d42023          	sw	a3,0(s0)
   11b38:	01379713          	slli	a4,a5,0x13
   11b3c:	00075663          	bgez	a4,11b48 <__sflush_r+0x108>
   11b40:	0009a783          	lw	a5,0(s3)
   11b44:	10078863          	beqz	a5,11c54 <__sflush_r+0x214>
   11b48:	03042583          	lw	a1,48(s0)
   11b4c:	0099a023          	sw	s1,0(s3)
   11b50:	10058a63          	beqz	a1,11c64 <__sflush_r+0x224>
   11b54:	04040793          	addi	a5,s0,64
   11b58:	00f58663          	beq	a1,a5,11b64 <__sflush_r+0x124>
   11b5c:	00098513          	mv	a0,s3
   11b60:	a64ff0ef          	jal	10dc4 <_free_r>
   11b64:	01412483          	lw	s1,20(sp)
   11b68:	02042823          	sw	zero,48(s0)
   11b6c:	01c12083          	lw	ra,28(sp)
   11b70:	01812403          	lw	s0,24(sp)
   11b74:	00c12983          	lw	s3,12(sp)
   11b78:	00000513          	li	a0,0
   11b7c:	02010113          	addi	sp,sp,32
   11b80:	00008067          	ret
   11b84:	01212823          	sw	s2,16(sp)
   11b88:	0105a903          	lw	s2,16(a1)
   11b8c:	08090a63          	beqz	s2,11c20 <__sflush_r+0x1e0>
   11b90:	00912a23          	sw	s1,20(sp)
   11b94:	0005a483          	lw	s1,0(a1)
   11b98:	00377713          	andi	a4,a4,3
   11b9c:	0125a023          	sw	s2,0(a1)
   11ba0:	412484b3          	sub	s1,s1,s2
   11ba4:	00000793          	li	a5,0
   11ba8:	00071463          	bnez	a4,11bb0 <__sflush_r+0x170>
   11bac:	0145a783          	lw	a5,20(a1)
   11bb0:	00f42423          	sw	a5,8(s0)
   11bb4:	00904863          	bgtz	s1,11bc4 <__sflush_r+0x184>
   11bb8:	0640006f          	j	11c1c <__sflush_r+0x1dc>
   11bbc:	00a90933          	add	s2,s2,a0
   11bc0:	04905e63          	blez	s1,11c1c <__sflush_r+0x1dc>
   11bc4:	02442783          	lw	a5,36(s0)
   11bc8:	01c42583          	lw	a1,28(s0)
   11bcc:	00048693          	mv	a3,s1
   11bd0:	00090613          	mv	a2,s2
   11bd4:	00098513          	mv	a0,s3
   11bd8:	000780e7          	jalr	a5
   11bdc:	40a484b3          	sub	s1,s1,a0
   11be0:	fca04ee3          	bgtz	a0,11bbc <__sflush_r+0x17c>
   11be4:	00c45783          	lhu	a5,12(s0)
   11be8:	01012903          	lw	s2,16(sp)
   11bec:	0407e793          	ori	a5,a5,64
   11bf0:	01c12083          	lw	ra,28(sp)
   11bf4:	00f41623          	sh	a5,12(s0)
   11bf8:	01812403          	lw	s0,24(sp)
   11bfc:	01412483          	lw	s1,20(sp)
   11c00:	00c12983          	lw	s3,12(sp)
   11c04:	fff00513          	li	a0,-1
   11c08:	02010113          	addi	sp,sp,32
   11c0c:	00008067          	ret
   11c10:	03c5a683          	lw	a3,60(a1)
   11c14:	e6d044e3          	bgtz	a3,11a7c <__sflush_r+0x3c>
   11c18:	f55ff06f          	j	11b6c <__sflush_r+0x12c>
   11c1c:	01412483          	lw	s1,20(sp)
   11c20:	01012903          	lw	s2,16(sp)
   11c24:	f49ff06f          	j	11b6c <__sflush_r+0x12c>
   11c28:	05042603          	lw	a2,80(s0)
   11c2c:	e95ff06f          	j	11ac0 <__sflush_r+0x80>
   11c30:	01042683          	lw	a3,16(s0)
   11c34:	fffff737          	lui	a4,0xfffff
   11c38:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffebeef>
   11c3c:	00e7f733          	and	a4,a5,a4
   11c40:	00e41623          	sh	a4,12(s0)
   11c44:	00042223          	sw	zero,4(s0)
   11c48:	00d42023          	sw	a3,0(s0)
   11c4c:	01379713          	slli	a4,a5,0x13
   11c50:	ee075ce3          	bgez	a4,11b48 <__sflush_r+0x108>
   11c54:	03042583          	lw	a1,48(s0)
   11c58:	04a42823          	sw	a0,80(s0)
   11c5c:	0099a023          	sw	s1,0(s3)
   11c60:	ee059ae3          	bnez	a1,11b54 <__sflush_r+0x114>
   11c64:	01412483          	lw	s1,20(sp)
   11c68:	f05ff06f          	j	11b6c <__sflush_r+0x12c>
   11c6c:	0009a783          	lw	a5,0(s3)
   11c70:	e40784e3          	beqz	a5,11ab8 <__sflush_r+0x78>
   11c74:	fe378713          	addi	a4,a5,-29
   11c78:	00070c63          	beqz	a4,11c90 <__sflush_r+0x250>
   11c7c:	fea78793          	addi	a5,a5,-22
   11c80:	00078863          	beqz	a5,11c90 <__sflush_r+0x250>
   11c84:	00c45783          	lhu	a5,12(s0)
   11c88:	0407e793          	ori	a5,a5,64
   11c8c:	f65ff06f          	j	11bf0 <__sflush_r+0x1b0>
   11c90:	0099a023          	sw	s1,0(s3)
   11c94:	01412483          	lw	s1,20(sp)
   11c98:	ed5ff06f          	j	11b6c <__sflush_r+0x12c>

00011c9c <_fflush_r>:
   11c9c:	00050793          	mv	a5,a0
   11ca0:	00050663          	beqz	a0,11cac <_fflush_r+0x10>
   11ca4:	03452703          	lw	a4,52(a0)
   11ca8:	00070e63          	beqz	a4,11cc4 <_fflush_r+0x28>
   11cac:	00c59703          	lh	a4,12(a1)
   11cb0:	00071663          	bnez	a4,11cbc <_fflush_r+0x20>
   11cb4:	00000513          	li	a0,0
   11cb8:	00008067          	ret
   11cbc:	00078513          	mv	a0,a5
   11cc0:	d81ff06f          	j	11a40 <__sflush_r>
   11cc4:	fe010113          	addi	sp,sp,-32
   11cc8:	00b12623          	sw	a1,12(sp)
   11ccc:	00112e23          	sw	ra,28(sp)
   11cd0:	00a12423          	sw	a0,8(sp)
   11cd4:	835fe0ef          	jal	10508 <__sinit>
   11cd8:	00c12583          	lw	a1,12(sp)
   11cdc:	00812783          	lw	a5,8(sp)
   11ce0:	00c59703          	lh	a4,12(a1)
   11ce4:	00070a63          	beqz	a4,11cf8 <_fflush_r+0x5c>
   11ce8:	01c12083          	lw	ra,28(sp)
   11cec:	00078513          	mv	a0,a5
   11cf0:	02010113          	addi	sp,sp,32
   11cf4:	d4dff06f          	j	11a40 <__sflush_r>
   11cf8:	01c12083          	lw	ra,28(sp)
   11cfc:	00000513          	li	a0,0
   11d00:	02010113          	addi	sp,sp,32
   11d04:	00008067          	ret

00011d08 <fflush>:
   11d08:	06050063          	beqz	a0,11d68 <fflush+0x60>
   11d0c:	00050593          	mv	a1,a0
   11d10:	d3c1a503          	lw	a0,-708(gp) # 135dc <_impure_ptr>
   11d14:	00050663          	beqz	a0,11d20 <fflush+0x18>
   11d18:	03452783          	lw	a5,52(a0)
   11d1c:	00078c63          	beqz	a5,11d34 <fflush+0x2c>
   11d20:	00c59783          	lh	a5,12(a1)
   11d24:	00079663          	bnez	a5,11d30 <fflush+0x28>
   11d28:	00000513          	li	a0,0
   11d2c:	00008067          	ret
   11d30:	d11ff06f          	j	11a40 <__sflush_r>
   11d34:	fe010113          	addi	sp,sp,-32
   11d38:	00b12623          	sw	a1,12(sp)
   11d3c:	00a12423          	sw	a0,8(sp)
   11d40:	00112e23          	sw	ra,28(sp)
   11d44:	fc4fe0ef          	jal	10508 <__sinit>
   11d48:	00c12583          	lw	a1,12(sp)
   11d4c:	00812503          	lw	a0,8(sp)
   11d50:	00c59783          	lh	a5,12(a1)
   11d54:	02079863          	bnez	a5,11d84 <fflush+0x7c>
   11d58:	01c12083          	lw	ra,28(sp)
   11d5c:	00000513          	li	a0,0
   11d60:	02010113          	addi	sp,sp,32
   11d64:	00008067          	ret
   11d68:	00013637          	lui	a2,0x13
   11d6c:	000125b7          	lui	a1,0x12
   11d70:	00013537          	lui	a0,0x13
   11d74:	0a060613          	addi	a2,a2,160 # 130a0 <__sglue>
   11d78:	c9c58593          	addi	a1,a1,-868 # 11c9c <_fflush_r>
   11d7c:	0b050513          	addi	a0,a0,176 # 130b0 <_impure_data>
   11d80:	fe4fe06f          	j	10564 <_fwalk_sglue>
   11d84:	01c12083          	lw	ra,28(sp)
   11d88:	02010113          	addi	sp,sp,32
   11d8c:	cb5ff06f          	j	11a40 <__sflush_r>

00011d90 <_sbrk_r>:
   11d90:	ff010113          	addi	sp,sp,-16
   11d94:	00812423          	sw	s0,8(sp)
   11d98:	00912223          	sw	s1,4(sp)
   11d9c:	00050493          	mv	s1,a0
   11da0:	00058513          	mv	a0,a1
   11da4:	00112623          	sw	ra,12(sp)
   11da8:	d401a623          	sw	zero,-692(gp) # 135ec <errno>
   11dac:	220000ef          	jal	11fcc <_sbrk>
   11db0:	fff00793          	li	a5,-1
   11db4:	00f50c63          	beq	a0,a5,11dcc <_sbrk_r+0x3c>
   11db8:	00c12083          	lw	ra,12(sp)
   11dbc:	00812403          	lw	s0,8(sp)
   11dc0:	00412483          	lw	s1,4(sp)
   11dc4:	01010113          	addi	sp,sp,16
   11dc8:	00008067          	ret
   11dcc:	d4c1a783          	lw	a5,-692(gp) # 135ec <errno>
   11dd0:	fe0784e3          	beqz	a5,11db8 <_sbrk_r+0x28>
   11dd4:	00c12083          	lw	ra,12(sp)
   11dd8:	00812403          	lw	s0,8(sp)
   11ddc:	00f4a023          	sw	a5,0(s1)
   11de0:	00412483          	lw	s1,4(sp)
   11de4:	01010113          	addi	sp,sp,16
   11de8:	00008067          	ret

00011dec <__libc_fini_array>:
   11dec:	ff010113          	addi	sp,sp,-16
   11df0:	00812423          	sw	s0,8(sp)
   11df4:	000137b7          	lui	a5,0x13
   11df8:	00013437          	lui	s0,0x13
   11dfc:	09c78793          	addi	a5,a5,156 # 1309c <__fini_array_end>
   11e00:	09840413          	addi	s0,s0,152 # 13098 <__do_global_dtors_aux_fini_array_entry>
   11e04:	408787b3          	sub	a5,a5,s0
   11e08:	00912223          	sw	s1,4(sp)
   11e0c:	00112623          	sw	ra,12(sp)
   11e10:	4027d493          	srai	s1,a5,0x2
   11e14:	02048063          	beqz	s1,11e34 <__libc_fini_array+0x48>
   11e18:	ffc40413          	addi	s0,s0,-4
   11e1c:	00f40433          	add	s0,s0,a5
   11e20:	00042783          	lw	a5,0(s0)
   11e24:	fff48493          	addi	s1,s1,-1
   11e28:	ffc40413          	addi	s0,s0,-4
   11e2c:	000780e7          	jalr	a5
   11e30:	fe0498e3          	bnez	s1,11e20 <__libc_fini_array+0x34>
   11e34:	00c12083          	lw	ra,12(sp)
   11e38:	00812403          	lw	s0,8(sp)
   11e3c:	00412483          	lw	s1,4(sp)
   11e40:	01010113          	addi	sp,sp,16
   11e44:	00008067          	ret

00011e48 <__register_exitproc>:
   11e48:	d501a783          	lw	a5,-688(gp) # 135f0 <__atexit>
   11e4c:	04078c63          	beqz	a5,11ea4 <__register_exitproc+0x5c>
   11e50:	0047a703          	lw	a4,4(a5)
   11e54:	01f00813          	li	a6,31
   11e58:	06e84e63          	blt	a6,a4,11ed4 <__register_exitproc+0x8c>
   11e5c:	00271813          	slli	a6,a4,0x2
   11e60:	02050663          	beqz	a0,11e8c <__register_exitproc+0x44>
   11e64:	01078333          	add	t1,a5,a6
   11e68:	08c32423          	sw	a2,136(t1)
   11e6c:	1887a883          	lw	a7,392(a5)
   11e70:	00100613          	li	a2,1
   11e74:	00e61633          	sll	a2,a2,a4
   11e78:	00c8e8b3          	or	a7,a7,a2
   11e7c:	1917a423          	sw	a7,392(a5)
   11e80:	10d32423          	sw	a3,264(t1)
   11e84:	00200693          	li	a3,2
   11e88:	02d50463          	beq	a0,a3,11eb0 <__register_exitproc+0x68>
   11e8c:	00170713          	addi	a4,a4,1
   11e90:	00e7a223          	sw	a4,4(a5)
   11e94:	010787b3          	add	a5,a5,a6
   11e98:	00b7a423          	sw	a1,8(a5)
   11e9c:	00000513          	li	a0,0
   11ea0:	00008067          	ret
   11ea4:	ee018793          	addi	a5,gp,-288 # 13780 <__atexit0>
   11ea8:	d4f1a823          	sw	a5,-688(gp) # 135f0 <__atexit>
   11eac:	fa5ff06f          	j	11e50 <__register_exitproc+0x8>
   11eb0:	18c7a683          	lw	a3,396(a5)
   11eb4:	00170713          	addi	a4,a4,1
   11eb8:	00e7a223          	sw	a4,4(a5)
   11ebc:	00c6e6b3          	or	a3,a3,a2
   11ec0:	18d7a623          	sw	a3,396(a5)
   11ec4:	010787b3          	add	a5,a5,a6
   11ec8:	00b7a423          	sw	a1,8(a5)
   11ecc:	00000513          	li	a0,0
   11ed0:	00008067          	ret
   11ed4:	fff00513          	li	a0,-1
   11ed8:	00008067          	ret

00011edc <_close>:
   11edc:	03900893          	li	a7,57
   11ee0:	00000073          	ecall
   11ee4:	00054463          	bltz	a0,11eec <_close+0x10>
   11ee8:	00008067          	ret
   11eec:	fe010113          	addi	sp,sp,-32
   11ef0:	00112e23          	sw	ra,28(sp)
   11ef4:	00a12623          	sw	a0,12(sp)
   11ef8:	18c000ef          	jal	12084 <__errno>
   11efc:	00c12783          	lw	a5,12(sp)
   11f00:	01c12083          	lw	ra,28(sp)
   11f04:	40f007b3          	neg	a5,a5
   11f08:	00f52023          	sw	a5,0(a0)
   11f0c:	fff00793          	li	a5,-1
   11f10:	00078513          	mv	a0,a5
   11f14:	02010113          	addi	sp,sp,32
   11f18:	00008067          	ret

00011f1c <_exit>:
   11f1c:	05d00893          	li	a7,93
   11f20:	00000073          	ecall
   11f24:	00054463          	bltz	a0,11f2c <_exit+0x10>
   11f28:	0000006f          	j	11f28 <_exit+0xc>
   11f2c:	fe010113          	addi	sp,sp,-32
   11f30:	00112e23          	sw	ra,28(sp)
   11f34:	00a12623          	sw	a0,12(sp)
   11f38:	14c000ef          	jal	12084 <__errno>
   11f3c:	00c12783          	lw	a5,12(sp)
   11f40:	40f007b3          	neg	a5,a5
   11f44:	00f52023          	sw	a5,0(a0)
   11f48:	0000006f          	j	11f48 <_exit+0x2c>

00011f4c <_lseek>:
   11f4c:	03e00893          	li	a7,62
   11f50:	00000073          	ecall
   11f54:	00054463          	bltz	a0,11f5c <_lseek+0x10>
   11f58:	00008067          	ret
   11f5c:	fe010113          	addi	sp,sp,-32
   11f60:	00112e23          	sw	ra,28(sp)
   11f64:	00a12623          	sw	a0,12(sp)
   11f68:	11c000ef          	jal	12084 <__errno>
   11f6c:	00c12783          	lw	a5,12(sp)
   11f70:	01c12083          	lw	ra,28(sp)
   11f74:	40f007b3          	neg	a5,a5
   11f78:	00f52023          	sw	a5,0(a0)
   11f7c:	fff00793          	li	a5,-1
   11f80:	00078513          	mv	a0,a5
   11f84:	02010113          	addi	sp,sp,32
   11f88:	00008067          	ret

00011f8c <_read>:
   11f8c:	03f00893          	li	a7,63
   11f90:	00000073          	ecall
   11f94:	00054463          	bltz	a0,11f9c <_read+0x10>
   11f98:	00008067          	ret
   11f9c:	fe010113          	addi	sp,sp,-32
   11fa0:	00112e23          	sw	ra,28(sp)
   11fa4:	00a12623          	sw	a0,12(sp)
   11fa8:	0dc000ef          	jal	12084 <__errno>
   11fac:	00c12783          	lw	a5,12(sp)
   11fb0:	01c12083          	lw	ra,28(sp)
   11fb4:	40f007b3          	neg	a5,a5
   11fb8:	00f52023          	sw	a5,0(a0)
   11fbc:	fff00793          	li	a5,-1
   11fc0:	00078513          	mv	a0,a5
   11fc4:	02010113          	addi	sp,sp,32
   11fc8:	00008067          	ret

00011fcc <_sbrk>:
   11fcc:	d601a783          	lw	a5,-672(gp) # 13600 <heap_end.0>
   11fd0:	ff010113          	addi	sp,sp,-16
   11fd4:	00112623          	sw	ra,12(sp)
   11fd8:	00050713          	mv	a4,a0
   11fdc:	02079063          	bnez	a5,11ffc <_sbrk+0x30>
   11fe0:	0d600893          	li	a7,214
   11fe4:	00000513          	li	a0,0
   11fe8:	00000073          	ecall
   11fec:	fff00793          	li	a5,-1
   11ff0:	02f50c63          	beq	a0,a5,12028 <_sbrk+0x5c>
   11ff4:	00050793          	mv	a5,a0
   11ff8:	d6a1a023          	sw	a0,-672(gp) # 13600 <heap_end.0>
   11ffc:	00f70533          	add	a0,a4,a5
   12000:	0d600893          	li	a7,214
   12004:	00000073          	ecall
   12008:	d601a783          	lw	a5,-672(gp) # 13600 <heap_end.0>
   1200c:	00f70733          	add	a4,a4,a5
   12010:	00e51c63          	bne	a0,a4,12028 <_sbrk+0x5c>
   12014:	00c12083          	lw	ra,12(sp)
   12018:	d6a1a023          	sw	a0,-672(gp) # 13600 <heap_end.0>
   1201c:	00078513          	mv	a0,a5
   12020:	01010113          	addi	sp,sp,16
   12024:	00008067          	ret
   12028:	05c000ef          	jal	12084 <__errno>
   1202c:	00c12083          	lw	ra,12(sp)
   12030:	00c00793          	li	a5,12
   12034:	00f52023          	sw	a5,0(a0)
   12038:	fff00513          	li	a0,-1
   1203c:	01010113          	addi	sp,sp,16
   12040:	00008067          	ret

00012044 <_write>:
   12044:	04000893          	li	a7,64
   12048:	00000073          	ecall
   1204c:	00054463          	bltz	a0,12054 <_write+0x10>
   12050:	00008067          	ret
   12054:	fe010113          	addi	sp,sp,-32
   12058:	00112e23          	sw	ra,28(sp)
   1205c:	00a12623          	sw	a0,12(sp)
   12060:	024000ef          	jal	12084 <__errno>
   12064:	00c12783          	lw	a5,12(sp)
   12068:	01c12083          	lw	ra,28(sp)
   1206c:	40f007b3          	neg	a5,a5
   12070:	00f52023          	sw	a5,0(a0)
   12074:	fff00793          	li	a5,-1
   12078:	00078513          	mv	a0,a5
   1207c:	02010113          	addi	sp,sp,32
   12080:	00008067          	ret

00012084 <__errno>:
   12084:	d3c1a503          	lw	a0,-708(gp) # 135dc <_impure_ptr>
   12088:	00008067          	ret
