
unique_test.elf:     file format elf32-littleriscv


Disassembly of section .text:

000100b4 <exit>:
   100b4:	ff010113          	addi	sp,sp,-16
   100b8:	00000593          	li	a1,0
   100bc:	00812423          	sw	s0,8(sp)
   100c0:	00112623          	sw	ra,12(sp)
   100c4:	00050413          	mv	s0,a0
   100c8:	2cd000ef          	jal	10b94 <__call_exitprocs>
   100cc:	d481a783          	lw	a5,-696(gp) # 13620 <__stdio_exit_handler>
   100d0:	00078463          	beqz	a5,100d8 <exit+0x24>
   100d4:	000780e7          	jalr	a5
   100d8:	00040513          	mv	a0,s0
   100dc:	67d010ef          	jal	11f58 <_exit>

000100e0 <register_fini>:
   100e0:	00000793          	li	a5,0
   100e4:	00078863          	beqz	a5,100f4 <register_fini+0x14>
   100e8:	00012537          	lui	a0,0x12
   100ec:	e2850513          	addi	a0,a0,-472 # 11e28 <__libc_fini_array>
   100f0:	3d90006f          	j	10cc8 <atexit>
   100f4:	00008067          	ret

000100f8 <_start>:
   100f8:	00003197          	auipc	gp,0x3
   100fc:	7e018193          	addi	gp,gp,2016 # 138d8 <__global_pointer$>
   10100:	00003517          	auipc	a0,0x3
   10104:	52050513          	addi	a0,a0,1312 # 13620 <__stdio_exit_handler>
   10108:	00004617          	auipc	a2,0x4
   1010c:	84060613          	addi	a2,a2,-1984 # 13948 <__BSS_END__>
   10110:	40a60633          	sub	a2,a2,a0
   10114:	00000593          	li	a1,0
   10118:	1a1000ef          	jal	10ab8 <memset>
   1011c:	00001517          	auipc	a0,0x1
   10120:	bac50513          	addi	a0,a0,-1108 # 10cc8 <atexit>
   10124:	00050863          	beqz	a0,10134 <_start+0x3c>
   10128:	00002517          	auipc	a0,0x2
   1012c:	d0050513          	addi	a0,a0,-768 # 11e28 <__libc_fini_array>
   10130:	399000ef          	jal	10cc8 <atexit>
   10134:	0f1000ef          	jal	10a24 <__libc_init_array>
   10138:	00012503          	lw	a0,0(sp)
   1013c:	00410593          	addi	a1,sp,4
   10140:	00000613          	li	a2,0
   10144:	06c000ef          	jal	101b0 <main>
   10148:	f6dff06f          	j	100b4 <exit>

0001014c <__do_global_dtors_aux>:
   1014c:	ff010113          	addi	sp,sp,-16
   10150:	00812423          	sw	s0,8(sp)
   10154:	d641c783          	lbu	a5,-668(gp) # 1363c <completed.1>
   10158:	00112623          	sw	ra,12(sp)
   1015c:	02079263          	bnez	a5,10180 <__do_global_dtors_aux+0x34>
   10160:	00000793          	li	a5,0
   10164:	00078a63          	beqz	a5,10178 <__do_global_dtors_aux+0x2c>
   10168:	00012537          	lui	a0,0x12
   1016c:	0c850513          	addi	a0,a0,200 # 120c8 <__EH_FRAME_BEGIN__>
   10170:	00000097          	auipc	ra,0x0
   10174:	000000e7          	jalr	zero # 0 <exit-0x100b4>
   10178:	00100793          	li	a5,1
   1017c:	d6f18223          	sb	a5,-668(gp) # 1363c <completed.1>
   10180:	00c12083          	lw	ra,12(sp)
   10184:	00812403          	lw	s0,8(sp)
   10188:	01010113          	addi	sp,sp,16
   1018c:	00008067          	ret

00010190 <frame_dummy>:
   10190:	00000793          	li	a5,0
   10194:	00078c63          	beqz	a5,101ac <frame_dummy+0x1c>
   10198:	00012537          	lui	a0,0x12
   1019c:	d6818593          	addi	a1,gp,-664 # 13640 <object.0>
   101a0:	0c850513          	addi	a0,a0,200 # 120c8 <__EH_FRAME_BEGIN__>
   101a4:	00000317          	auipc	t1,0x0
   101a8:	00000067          	jr	zero # 0 <exit-0x100b4>
   101ac:	00008067          	ret

000101b0 <main>:
   101b0:	fe010113          	addi	sp,sp,-32
   101b4:	00112e23          	sw	ra,28(sp)
   101b8:	00812c23          	sw	s0,24(sp)
   101bc:	02010413          	addi	s0,sp,32
   101c0:	00700793          	li	a5,7
   101c4:	fef42623          	sw	a5,-20(s0)
   101c8:	00300793          	li	a5,3
   101cc:	fef42423          	sw	a5,-24(s0)
   101d0:	fe842583          	lw	a1,-24(s0)
   101d4:	fec42503          	lw	a0,-20(s0)
   101d8:	038000ef          	jal	10210 <__mulsi3>
   101dc:	00050793          	mv	a5,a0
   101e0:	00078693          	mv	a3,a5
   101e4:	fec42703          	lw	a4,-20(s0)
   101e8:	fe842783          	lw	a5,-24(s0)
   101ec:	40f707b3          	sub	a5,a4,a5
   101f0:	00f687b3          	add	a5,a3,a5
   101f4:	fef42223          	sw	a5,-28(s0)
   101f8:	fe442783          	lw	a5,-28(s0)
   101fc:	00078513          	mv	a0,a5
   10200:	01c12083          	lw	ra,28(sp)
   10204:	01812403          	lw	s0,24(sp)
   10208:	02010113          	addi	sp,sp,32
   1020c:	00008067          	ret

00010210 <__mulsi3>:
   10210:	00050613          	mv	a2,a0
   10214:	00000513          	li	a0,0
   10218:	0015f693          	andi	a3,a1,1
   1021c:	00068463          	beqz	a3,10224 <__mulsi3+0x14>
   10220:	00c50533          	add	a0,a0,a2
   10224:	0015d593          	srli	a1,a1,0x1
   10228:	00161613          	slli	a2,a2,0x1
   1022c:	fe0596e3          	bnez	a1,10218 <__mulsi3+0x8>
   10230:	00008067          	ret

00010234 <__fp_lock>:
   10234:	00000513          	li	a0,0
   10238:	00008067          	ret

0001023c <stdio_exit_handler>:
   1023c:	00013637          	lui	a2,0x13
   10240:	000125b7          	lui	a1,0x12
   10244:	00013537          	lui	a0,0x13
   10248:	0d860613          	addi	a2,a2,216 # 130d8 <__sglue>
   1024c:	96858593          	addi	a1,a1,-1688 # 11968 <_fclose_r>
   10250:	0e850513          	addi	a0,a0,232 # 130e8 <_impure_data>
   10254:	34c0006f          	j	105a0 <_fwalk_sglue>

00010258 <cleanup_stdio>:
   10258:	00452583          	lw	a1,4(a0)
   1025c:	ff010113          	addi	sp,sp,-16
   10260:	00812423          	sw	s0,8(sp)
   10264:	00112623          	sw	ra,12(sp)
   10268:	d8018793          	addi	a5,gp,-640 # 13658 <__sf>
   1026c:	00050413          	mv	s0,a0
   10270:	00f58463          	beq	a1,a5,10278 <cleanup_stdio+0x20>
   10274:	6f4010ef          	jal	11968 <_fclose_r>
   10278:	00842583          	lw	a1,8(s0)
   1027c:	de818793          	addi	a5,gp,-536 # 136c0 <__sf+0x68>
   10280:	00f58663          	beq	a1,a5,1028c <cleanup_stdio+0x34>
   10284:	00040513          	mv	a0,s0
   10288:	6e0010ef          	jal	11968 <_fclose_r>
   1028c:	00c42583          	lw	a1,12(s0)
   10290:	e5018793          	addi	a5,gp,-432 # 13728 <__sf+0xd0>
   10294:	00f58c63          	beq	a1,a5,102ac <cleanup_stdio+0x54>
   10298:	00040513          	mv	a0,s0
   1029c:	00812403          	lw	s0,8(sp)
   102a0:	00c12083          	lw	ra,12(sp)
   102a4:	01010113          	addi	sp,sp,16
   102a8:	6c00106f          	j	11968 <_fclose_r>
   102ac:	00c12083          	lw	ra,12(sp)
   102b0:	00812403          	lw	s0,8(sp)
   102b4:	01010113          	addi	sp,sp,16
   102b8:	00008067          	ret

000102bc <__fp_unlock>:
   102bc:	00000513          	li	a0,0
   102c0:	00008067          	ret

000102c4 <global_stdio_init.part.0>:
   102c4:	fe010113          	addi	sp,sp,-32
   102c8:	000107b7          	lui	a5,0x10
   102cc:	00812c23          	sw	s0,24(sp)
   102d0:	23c78793          	addi	a5,a5,572 # 1023c <stdio_exit_handler>
   102d4:	d8018413          	addi	s0,gp,-640 # 13658 <__sf>
   102d8:	00112e23          	sw	ra,28(sp)
   102dc:	00912a23          	sw	s1,20(sp)
   102e0:	01212823          	sw	s2,16(sp)
   102e4:	01312623          	sw	s3,12(sp)
   102e8:	01412423          	sw	s4,8(sp)
   102ec:	d4f1a423          	sw	a5,-696(gp) # 13620 <__stdio_exit_handler>
   102f0:	00800613          	li	a2,8
   102f4:	00400793          	li	a5,4
   102f8:	00000593          	li	a1,0
   102fc:	ddc18513          	addi	a0,gp,-548 # 136b4 <__sf+0x5c>
   10300:	00f42623          	sw	a5,12(s0)
   10304:	00042023          	sw	zero,0(s0)
   10308:	00042223          	sw	zero,4(s0)
   1030c:	00042423          	sw	zero,8(s0)
   10310:	06042223          	sw	zero,100(s0)
   10314:	00042823          	sw	zero,16(s0)
   10318:	00042a23          	sw	zero,20(s0)
   1031c:	00042c23          	sw	zero,24(s0)
   10320:	798000ef          	jal	10ab8 <memset>
   10324:	00010a37          	lui	s4,0x10
   10328:	000109b7          	lui	s3,0x10
   1032c:	00010937          	lui	s2,0x10
   10330:	000104b7          	lui	s1,0x10
   10334:	000107b7          	lui	a5,0x10
   10338:	654a0a13          	addi	s4,s4,1620 # 10654 <__sread>
   1033c:	6b898993          	addi	s3,s3,1720 # 106b8 <__swrite>
   10340:	74090913          	addi	s2,s2,1856 # 10740 <__sseek>
   10344:	7a448493          	addi	s1,s1,1956 # 107a4 <__sclose>
   10348:	00978793          	addi	a5,a5,9 # 10009 <exit-0xab>
   1034c:	00800613          	li	a2,8
   10350:	00000593          	li	a1,0
   10354:	e4418513          	addi	a0,gp,-444 # 1371c <__sf+0xc4>
   10358:	06f42a23          	sw	a5,116(s0)
   1035c:	03442023          	sw	s4,32(s0)
   10360:	03342223          	sw	s3,36(s0)
   10364:	03242423          	sw	s2,40(s0)
   10368:	02942623          	sw	s1,44(s0)
   1036c:	00842e23          	sw	s0,28(s0)
   10370:	06042423          	sw	zero,104(s0)
   10374:	06042623          	sw	zero,108(s0)
   10378:	06042823          	sw	zero,112(s0)
   1037c:	0c042623          	sw	zero,204(s0)
   10380:	06042c23          	sw	zero,120(s0)
   10384:	06042e23          	sw	zero,124(s0)
   10388:	08042023          	sw	zero,128(s0)
   1038c:	72c000ef          	jal	10ab8 <memset>
   10390:	000207b7          	lui	a5,0x20
   10394:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc6ca>
   10398:	de818713          	addi	a4,gp,-536 # 136c0 <__sf+0x68>
   1039c:	eac18513          	addi	a0,gp,-340 # 13784 <__sf+0x12c>
   103a0:	00800613          	li	a2,8
   103a4:	00000593          	li	a1,0
   103a8:	09442423          	sw	s4,136(s0)
   103ac:	09342623          	sw	s3,140(s0)
   103b0:	09242823          	sw	s2,144(s0)
   103b4:	08942a23          	sw	s1,148(s0)
   103b8:	0cf42e23          	sw	a5,220(s0)
   103bc:	0c042823          	sw	zero,208(s0)
   103c0:	0c042a23          	sw	zero,212(s0)
   103c4:	0c042c23          	sw	zero,216(s0)
   103c8:	12042a23          	sw	zero,308(s0)
   103cc:	0e042023          	sw	zero,224(s0)
   103d0:	0e042223          	sw	zero,228(s0)
   103d4:	0e042423          	sw	zero,232(s0)
   103d8:	08e42223          	sw	a4,132(s0)
   103dc:	6dc000ef          	jal	10ab8 <memset>
   103e0:	e5018793          	addi	a5,gp,-432 # 13728 <__sf+0xd0>
   103e4:	0f442823          	sw	s4,240(s0)
   103e8:	0f342a23          	sw	s3,244(s0)
   103ec:	0f242c23          	sw	s2,248(s0)
   103f0:	0e942e23          	sw	s1,252(s0)
   103f4:	01c12083          	lw	ra,28(sp)
   103f8:	0ef42623          	sw	a5,236(s0)
   103fc:	01812403          	lw	s0,24(sp)
   10400:	01412483          	lw	s1,20(sp)
   10404:	01012903          	lw	s2,16(sp)
   10408:	00c12983          	lw	s3,12(sp)
   1040c:	00812a03          	lw	s4,8(sp)
   10410:	02010113          	addi	sp,sp,32
   10414:	00008067          	ret

00010418 <__sfp>:
   10418:	d481a783          	lw	a5,-696(gp) # 13620 <__stdio_exit_handler>
   1041c:	fe010113          	addi	sp,sp,-32
   10420:	00912a23          	sw	s1,20(sp)
   10424:	00112e23          	sw	ra,28(sp)
   10428:	00812c23          	sw	s0,24(sp)
   1042c:	00050493          	mv	s1,a0
   10430:	0e078e63          	beqz	a5,1052c <__sfp+0x114>
   10434:	00013837          	lui	a6,0x13
   10438:	0d880813          	addi	a6,a6,216 # 130d8 <__sglue>
   1043c:	fff00693          	li	a3,-1
   10440:	00482783          	lw	a5,4(a6)
   10444:	fff78793          	addi	a5,a5,-1
   10448:	0807c063          	bltz	a5,104c8 <__sfp+0xb0>
   1044c:	00882403          	lw	s0,8(a6)
   10450:	00c0006f          	j	1045c <__sfp+0x44>
   10454:	06840413          	addi	s0,s0,104
   10458:	06d78863          	beq	a5,a3,104c8 <__sfp+0xb0>
   1045c:	00c41703          	lh	a4,12(s0)
   10460:	fff78793          	addi	a5,a5,-1
   10464:	fe0718e3          	bnez	a4,10454 <__sfp+0x3c>
   10468:	ffff07b7          	lui	a5,0xffff0
   1046c:	00178793          	addi	a5,a5,1 # ffff0001 <__BSS_END__+0xfffdc6b9>
   10470:	00f42623          	sw	a5,12(s0)
   10474:	06042223          	sw	zero,100(s0)
   10478:	00042023          	sw	zero,0(s0)
   1047c:	00042423          	sw	zero,8(s0)
   10480:	00042223          	sw	zero,4(s0)
   10484:	00042823          	sw	zero,16(s0)
   10488:	00042a23          	sw	zero,20(s0)
   1048c:	00042c23          	sw	zero,24(s0)
   10490:	00800613          	li	a2,8
   10494:	00000593          	li	a1,0
   10498:	05c40513          	addi	a0,s0,92
   1049c:	61c000ef          	jal	10ab8 <memset>
   104a0:	02042823          	sw	zero,48(s0)
   104a4:	02042a23          	sw	zero,52(s0)
   104a8:	04042223          	sw	zero,68(s0)
   104ac:	04042423          	sw	zero,72(s0)
   104b0:	01c12083          	lw	ra,28(sp)
   104b4:	00040513          	mv	a0,s0
   104b8:	01812403          	lw	s0,24(sp)
   104bc:	01412483          	lw	s1,20(sp)
   104c0:	02010113          	addi	sp,sp,32
   104c4:	00008067          	ret
   104c8:	00082403          	lw	s0,0(a6)
   104cc:	00040663          	beqz	s0,104d8 <__sfp+0xc0>
   104d0:	00040813          	mv	a6,s0
   104d4:	f6dff06f          	j	10440 <__sfp+0x28>
   104d8:	1ac00593          	li	a1,428
   104dc:	00048513          	mv	a0,s1
   104e0:	01012623          	sw	a6,12(sp)
   104e4:	405000ef          	jal	110e8 <_malloc_r>
   104e8:	00c12803          	lw	a6,12(sp)
   104ec:	00050413          	mv	s0,a0
   104f0:	04050263          	beqz	a0,10534 <__sfp+0x11c>
   104f4:	00400793          	li	a5,4
   104f8:	00f52223          	sw	a5,4(a0)
   104fc:	00c50513          	addi	a0,a0,12
   10500:	00042023          	sw	zero,0(s0)
   10504:	00a42423          	sw	a0,8(s0)
   10508:	1a000613          	li	a2,416
   1050c:	00000593          	li	a1,0
   10510:	01012623          	sw	a6,12(sp)
   10514:	5a4000ef          	jal	10ab8 <memset>
   10518:	00c12803          	lw	a6,12(sp)
   1051c:	fff00693          	li	a3,-1
   10520:	00882023          	sw	s0,0(a6)
   10524:	00040813          	mv	a6,s0
   10528:	f19ff06f          	j	10440 <__sfp+0x28>
   1052c:	d99ff0ef          	jal	102c4 <global_stdio_init.part.0>
   10530:	f05ff06f          	j	10434 <__sfp+0x1c>
   10534:	00082023          	sw	zero,0(a6)
   10538:	00c00793          	li	a5,12
   1053c:	00f4a023          	sw	a5,0(s1)
   10540:	f71ff06f          	j	104b0 <__sfp+0x98>

00010544 <__sinit>:
   10544:	03452783          	lw	a5,52(a0)
   10548:	00078463          	beqz	a5,10550 <__sinit+0xc>
   1054c:	00008067          	ret
   10550:	000107b7          	lui	a5,0x10
   10554:	d481a703          	lw	a4,-696(gp) # 13620 <__stdio_exit_handler>
   10558:	25878793          	addi	a5,a5,600 # 10258 <cleanup_stdio>
   1055c:	02f52a23          	sw	a5,52(a0)
   10560:	fe0716e3          	bnez	a4,1054c <__sinit+0x8>
   10564:	d61ff06f          	j	102c4 <global_stdio_init.part.0>

00010568 <__sfp_lock_acquire>:
   10568:	00008067          	ret

0001056c <__sfp_lock_release>:
   1056c:	00008067          	ret

00010570 <__fp_lock_all>:
   10570:	00013637          	lui	a2,0x13
   10574:	000105b7          	lui	a1,0x10
   10578:	0d860613          	addi	a2,a2,216 # 130d8 <__sglue>
   1057c:	23458593          	addi	a1,a1,564 # 10234 <__fp_lock>
   10580:	00000513          	li	a0,0
   10584:	01c0006f          	j	105a0 <_fwalk_sglue>

00010588 <__fp_unlock_all>:
   10588:	00013637          	lui	a2,0x13
   1058c:	000105b7          	lui	a1,0x10
   10590:	0d860613          	addi	a2,a2,216 # 130d8 <__sglue>
   10594:	2bc58593          	addi	a1,a1,700 # 102bc <__fp_unlock>
   10598:	00000513          	li	a0,0
   1059c:	0040006f          	j	105a0 <_fwalk_sglue>

000105a0 <_fwalk_sglue>:
   105a0:	fd010113          	addi	sp,sp,-48
   105a4:	03212023          	sw	s2,32(sp)
   105a8:	01312e23          	sw	s3,28(sp)
   105ac:	01412c23          	sw	s4,24(sp)
   105b0:	01512a23          	sw	s5,20(sp)
   105b4:	01612823          	sw	s6,16(sp)
   105b8:	01712623          	sw	s7,12(sp)
   105bc:	02112623          	sw	ra,44(sp)
   105c0:	02812423          	sw	s0,40(sp)
   105c4:	02912223          	sw	s1,36(sp)
   105c8:	00060a93          	mv	s5,a2
   105cc:	00050b13          	mv	s6,a0
   105d0:	00058b93          	mv	s7,a1
   105d4:	00000a13          	li	s4,0
   105d8:	00100993          	li	s3,1
   105dc:	fff00913          	li	s2,-1
   105e0:	004aa483          	lw	s1,4(s5)
   105e4:	fff48493          	addi	s1,s1,-1
   105e8:	0204ca63          	bltz	s1,1061c <_fwalk_sglue+0x7c>
   105ec:	008aa403          	lw	s0,8(s5)
   105f0:	00c45783          	lhu	a5,12(s0)
   105f4:	00f9fe63          	bgeu	s3,a5,10610 <_fwalk_sglue+0x70>
   105f8:	00e41783          	lh	a5,14(s0)
   105fc:	00040593          	mv	a1,s0
   10600:	000b0513          	mv	a0,s6
   10604:	01278663          	beq	a5,s2,10610 <_fwalk_sglue+0x70>
   10608:	000b80e7          	jalr	s7
   1060c:	00aa6a33          	or	s4,s4,a0
   10610:	fff48493          	addi	s1,s1,-1
   10614:	06840413          	addi	s0,s0,104
   10618:	fd249ce3          	bne	s1,s2,105f0 <_fwalk_sglue+0x50>
   1061c:	000aaa83          	lw	s5,0(s5)
   10620:	fc0a90e3          	bnez	s5,105e0 <_fwalk_sglue+0x40>
   10624:	02c12083          	lw	ra,44(sp)
   10628:	02812403          	lw	s0,40(sp)
   1062c:	02412483          	lw	s1,36(sp)
   10630:	02012903          	lw	s2,32(sp)
   10634:	01c12983          	lw	s3,28(sp)
   10638:	01412a83          	lw	s5,20(sp)
   1063c:	01012b03          	lw	s6,16(sp)
   10640:	00c12b83          	lw	s7,12(sp)
   10644:	000a0513          	mv	a0,s4
   10648:	01812a03          	lw	s4,24(sp)
   1064c:	03010113          	addi	sp,sp,48
   10650:	00008067          	ret

00010654 <__sread>:
   10654:	ff010113          	addi	sp,sp,-16
   10658:	00812423          	sw	s0,8(sp)
   1065c:	00058413          	mv	s0,a1
   10660:	00e59583          	lh	a1,14(a1)
   10664:	00112623          	sw	ra,12(sp)
   10668:	2ec000ef          	jal	10954 <_read_r>
   1066c:	02054063          	bltz	a0,1068c <__sread+0x38>
   10670:	05042783          	lw	a5,80(s0)
   10674:	00c12083          	lw	ra,12(sp)
   10678:	00a787b3          	add	a5,a5,a0
   1067c:	04f42823          	sw	a5,80(s0)
   10680:	00812403          	lw	s0,8(sp)
   10684:	01010113          	addi	sp,sp,16
   10688:	00008067          	ret
   1068c:	00c45783          	lhu	a5,12(s0)
   10690:	fffff737          	lui	a4,0xfffff
   10694:	fff70713          	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffeb6b7>
   10698:	00e7f7b3          	and	a5,a5,a4
   1069c:	00c12083          	lw	ra,12(sp)
   106a0:	00f41623          	sh	a5,12(s0)
   106a4:	00812403          	lw	s0,8(sp)
   106a8:	01010113          	addi	sp,sp,16
   106ac:	00008067          	ret

000106b0 <__seofread>:
   106b0:	00000513          	li	a0,0
   106b4:	00008067          	ret

000106b8 <__swrite>:
   106b8:	00c59783          	lh	a5,12(a1)
   106bc:	fe010113          	addi	sp,sp,-32
   106c0:	00068313          	mv	t1,a3
   106c4:	00112e23          	sw	ra,28(sp)
   106c8:	1007f693          	andi	a3,a5,256
   106cc:	00058713          	mv	a4,a1
   106d0:	00060893          	mv	a7,a2
   106d4:	00050813          	mv	a6,a0
   106d8:	02069863          	bnez	a3,10708 <__swrite+0x50>
   106dc:	fffff6b7          	lui	a3,0xfffff
   106e0:	fff68693          	addi	a3,a3,-1 # ffffefff <__BSS_END__+0xfffeb6b7>
   106e4:	01c12083          	lw	ra,28(sp)
   106e8:	00d7f7b3          	and	a5,a5,a3
   106ec:	00e71583          	lh	a1,14(a4)
   106f0:	00f71623          	sh	a5,12(a4)
   106f4:	00030693          	mv	a3,t1
   106f8:	00088613          	mv	a2,a7
   106fc:	00080513          	mv	a0,a6
   10700:	02010113          	addi	sp,sp,32
   10704:	2b80006f          	j	109bc <_write_r>
   10708:	00e59583          	lh	a1,14(a1)
   1070c:	00c12423          	sw	a2,8(sp)
   10710:	00200693          	li	a3,2
   10714:	00000613          	li	a2,0
   10718:	00612623          	sw	t1,12(sp)
   1071c:	00e12023          	sw	a4,0(sp)
   10720:	00a12223          	sw	a0,4(sp)
   10724:	1c8000ef          	jal	108ec <_lseek_r>
   10728:	00012703          	lw	a4,0(sp)
   1072c:	00c12303          	lw	t1,12(sp)
   10730:	00812883          	lw	a7,8(sp)
   10734:	00c71783          	lh	a5,12(a4)
   10738:	00412803          	lw	a6,4(sp)
   1073c:	fa1ff06f          	j	106dc <__swrite+0x24>

00010740 <__sseek>:
   10740:	ff010113          	addi	sp,sp,-16
   10744:	00812423          	sw	s0,8(sp)
   10748:	00058413          	mv	s0,a1
   1074c:	00e59583          	lh	a1,14(a1)
   10750:	00112623          	sw	ra,12(sp)
   10754:	198000ef          	jal	108ec <_lseek_r>
   10758:	fff00713          	li	a4,-1
   1075c:	00c41783          	lh	a5,12(s0)
   10760:	02e50263          	beq	a0,a4,10784 <__sseek+0x44>
   10764:	00001737          	lui	a4,0x1
   10768:	00e7e7b3          	or	a5,a5,a4
   1076c:	00c12083          	lw	ra,12(sp)
   10770:	04a42823          	sw	a0,80(s0)
   10774:	00f41623          	sh	a5,12(s0)
   10778:	00812403          	lw	s0,8(sp)
   1077c:	01010113          	addi	sp,sp,16
   10780:	00008067          	ret
   10784:	80050713          	addi	a4,a0,-2048
   10788:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf8b4>
   1078c:	00e7f7b3          	and	a5,a5,a4
   10790:	00c12083          	lw	ra,12(sp)
   10794:	00f41623          	sh	a5,12(s0)
   10798:	00812403          	lw	s0,8(sp)
   1079c:	01010113          	addi	sp,sp,16
   107a0:	00008067          	ret

000107a4 <__sclose>:
   107a4:	00e59583          	lh	a1,14(a1)
   107a8:	0040006f          	j	107ac <_close_r>

000107ac <_close_r>:
   107ac:	ff010113          	addi	sp,sp,-16
   107b0:	00812423          	sw	s0,8(sp)
   107b4:	00912223          	sw	s1,4(sp)
   107b8:	00050493          	mv	s1,a0
   107bc:	00058513          	mv	a0,a1
   107c0:	00112623          	sw	ra,12(sp)
   107c4:	d401a623          	sw	zero,-692(gp) # 13624 <errno>
   107c8:	750010ef          	jal	11f18 <_close>
   107cc:	fff00793          	li	a5,-1
   107d0:	00f50c63          	beq	a0,a5,107e8 <_close_r+0x3c>
   107d4:	00c12083          	lw	ra,12(sp)
   107d8:	00812403          	lw	s0,8(sp)
   107dc:	00412483          	lw	s1,4(sp)
   107e0:	01010113          	addi	sp,sp,16
   107e4:	00008067          	ret
   107e8:	d4c1a783          	lw	a5,-692(gp) # 13624 <errno>
   107ec:	fe0784e3          	beqz	a5,107d4 <_close_r+0x28>
   107f0:	00c12083          	lw	ra,12(sp)
   107f4:	00812403          	lw	s0,8(sp)
   107f8:	00f4a023          	sw	a5,0(s1)
   107fc:	00412483          	lw	s1,4(sp)
   10800:	01010113          	addi	sp,sp,16
   10804:	00008067          	ret

00010808 <_reclaim_reent>:
   10808:	d3c1a783          	lw	a5,-708(gp) # 13614 <_impure_ptr>
   1080c:	0ca78e63          	beq	a5,a0,108e8 <_reclaim_reent+0xe0>
   10810:	04452583          	lw	a1,68(a0)
   10814:	fe010113          	addi	sp,sp,-32
   10818:	00912a23          	sw	s1,20(sp)
   1081c:	00112e23          	sw	ra,28(sp)
   10820:	00812c23          	sw	s0,24(sp)
   10824:	00050493          	mv	s1,a0
   10828:	04058863          	beqz	a1,10878 <_reclaim_reent+0x70>
   1082c:	01212823          	sw	s2,16(sp)
   10830:	01312623          	sw	s3,12(sp)
   10834:	00000913          	li	s2,0
   10838:	08000993          	li	s3,128
   1083c:	012587b3          	add	a5,a1,s2
   10840:	0007a403          	lw	s0,0(a5)
   10844:	00040e63          	beqz	s0,10860 <_reclaim_reent+0x58>
   10848:	00040593          	mv	a1,s0
   1084c:	00042403          	lw	s0,0(s0)
   10850:	00048513          	mv	a0,s1
   10854:	5ac000ef          	jal	10e00 <_free_r>
   10858:	fe0418e3          	bnez	s0,10848 <_reclaim_reent+0x40>
   1085c:	0444a583          	lw	a1,68(s1)
   10860:	00490913          	addi	s2,s2,4
   10864:	fd391ce3          	bne	s2,s3,1083c <_reclaim_reent+0x34>
   10868:	00048513          	mv	a0,s1
   1086c:	594000ef          	jal	10e00 <_free_r>
   10870:	01012903          	lw	s2,16(sp)
   10874:	00c12983          	lw	s3,12(sp)
   10878:	0384a583          	lw	a1,56(s1)
   1087c:	00058663          	beqz	a1,10888 <_reclaim_reent+0x80>
   10880:	00048513          	mv	a0,s1
   10884:	57c000ef          	jal	10e00 <_free_r>
   10888:	0404a403          	lw	s0,64(s1)
   1088c:	00040c63          	beqz	s0,108a4 <_reclaim_reent+0x9c>
   10890:	00040593          	mv	a1,s0
   10894:	00042403          	lw	s0,0(s0)
   10898:	00048513          	mv	a0,s1
   1089c:	564000ef          	jal	10e00 <_free_r>
   108a0:	fe0418e3          	bnez	s0,10890 <_reclaim_reent+0x88>
   108a4:	04c4a583          	lw	a1,76(s1)
   108a8:	00058663          	beqz	a1,108b4 <_reclaim_reent+0xac>
   108ac:	00048513          	mv	a0,s1
   108b0:	550000ef          	jal	10e00 <_free_r>
   108b4:	0344a783          	lw	a5,52(s1)
   108b8:	00078e63          	beqz	a5,108d4 <_reclaim_reent+0xcc>
   108bc:	01812403          	lw	s0,24(sp)
   108c0:	01c12083          	lw	ra,28(sp)
   108c4:	00048513          	mv	a0,s1
   108c8:	01412483          	lw	s1,20(sp)
   108cc:	02010113          	addi	sp,sp,32
   108d0:	00078067          	jr	a5
   108d4:	01c12083          	lw	ra,28(sp)
   108d8:	01812403          	lw	s0,24(sp)
   108dc:	01412483          	lw	s1,20(sp)
   108e0:	02010113          	addi	sp,sp,32
   108e4:	00008067          	ret
   108e8:	00008067          	ret

000108ec <_lseek_r>:
   108ec:	ff010113          	addi	sp,sp,-16
   108f0:	00058793          	mv	a5,a1
   108f4:	00812423          	sw	s0,8(sp)
   108f8:	00912223          	sw	s1,4(sp)
   108fc:	00060593          	mv	a1,a2
   10900:	00050493          	mv	s1,a0
   10904:	00068613          	mv	a2,a3
   10908:	00078513          	mv	a0,a5
   1090c:	00112623          	sw	ra,12(sp)
   10910:	d401a623          	sw	zero,-692(gp) # 13624 <errno>
   10914:	674010ef          	jal	11f88 <_lseek>
   10918:	fff00793          	li	a5,-1
   1091c:	00f50c63          	beq	a0,a5,10934 <_lseek_r+0x48>
   10920:	00c12083          	lw	ra,12(sp)
   10924:	00812403          	lw	s0,8(sp)
   10928:	00412483          	lw	s1,4(sp)
   1092c:	01010113          	addi	sp,sp,16
   10930:	00008067          	ret
   10934:	d4c1a783          	lw	a5,-692(gp) # 13624 <errno>
   10938:	fe0784e3          	beqz	a5,10920 <_lseek_r+0x34>
   1093c:	00c12083          	lw	ra,12(sp)
   10940:	00812403          	lw	s0,8(sp)
   10944:	00f4a023          	sw	a5,0(s1)
   10948:	00412483          	lw	s1,4(sp)
   1094c:	01010113          	addi	sp,sp,16
   10950:	00008067          	ret

00010954 <_read_r>:
   10954:	ff010113          	addi	sp,sp,-16
   10958:	00058793          	mv	a5,a1
   1095c:	00812423          	sw	s0,8(sp)
   10960:	00912223          	sw	s1,4(sp)
   10964:	00060593          	mv	a1,a2
   10968:	00050493          	mv	s1,a0
   1096c:	00068613          	mv	a2,a3
   10970:	00078513          	mv	a0,a5
   10974:	00112623          	sw	ra,12(sp)
   10978:	d401a623          	sw	zero,-692(gp) # 13624 <errno>
   1097c:	64c010ef          	jal	11fc8 <_read>
   10980:	fff00793          	li	a5,-1
   10984:	00f50c63          	beq	a0,a5,1099c <_read_r+0x48>
   10988:	00c12083          	lw	ra,12(sp)
   1098c:	00812403          	lw	s0,8(sp)
   10990:	00412483          	lw	s1,4(sp)
   10994:	01010113          	addi	sp,sp,16
   10998:	00008067          	ret
   1099c:	d4c1a783          	lw	a5,-692(gp) # 13624 <errno>
   109a0:	fe0784e3          	beqz	a5,10988 <_read_r+0x34>
   109a4:	00c12083          	lw	ra,12(sp)
   109a8:	00812403          	lw	s0,8(sp)
   109ac:	00f4a023          	sw	a5,0(s1)
   109b0:	00412483          	lw	s1,4(sp)
   109b4:	01010113          	addi	sp,sp,16
   109b8:	00008067          	ret

000109bc <_write_r>:
   109bc:	ff010113          	addi	sp,sp,-16
   109c0:	00058793          	mv	a5,a1
   109c4:	00812423          	sw	s0,8(sp)
   109c8:	00912223          	sw	s1,4(sp)
   109cc:	00060593          	mv	a1,a2
   109d0:	00050493          	mv	s1,a0
   109d4:	00068613          	mv	a2,a3
   109d8:	00078513          	mv	a0,a5
   109dc:	00112623          	sw	ra,12(sp)
   109e0:	d401a623          	sw	zero,-692(gp) # 13624 <errno>
   109e4:	69c010ef          	jal	12080 <_write>
   109e8:	fff00793          	li	a5,-1
   109ec:	00f50c63          	beq	a0,a5,10a04 <_write_r+0x48>
   109f0:	00c12083          	lw	ra,12(sp)
   109f4:	00812403          	lw	s0,8(sp)
   109f8:	00412483          	lw	s1,4(sp)
   109fc:	01010113          	addi	sp,sp,16
   10a00:	00008067          	ret
   10a04:	d4c1a783          	lw	a5,-692(gp) # 13624 <errno>
   10a08:	fe0784e3          	beqz	a5,109f0 <_write_r+0x34>
   10a0c:	00c12083          	lw	ra,12(sp)
   10a10:	00812403          	lw	s0,8(sp)
   10a14:	00f4a023          	sw	a5,0(s1)
   10a18:	00412483          	lw	s1,4(sp)
   10a1c:	01010113          	addi	sp,sp,16
   10a20:	00008067          	ret

00010a24 <__libc_init_array>:
   10a24:	ff010113          	addi	sp,sp,-16
   10a28:	00812423          	sw	s0,8(sp)
   10a2c:	01212023          	sw	s2,0(sp)
   10a30:	00013437          	lui	s0,0x13
   10a34:	00013937          	lui	s2,0x13
   10a38:	00112623          	sw	ra,12(sp)
   10a3c:	00912223          	sw	s1,4(sp)
   10a40:	0cc90913          	addi	s2,s2,204 # 130cc <__init_array_start>
   10a44:	0cc40413          	addi	s0,s0,204 # 130cc <__init_array_start>
   10a48:	02890263          	beq	s2,s0,10a6c <__libc_init_array+0x48>
   10a4c:	40890933          	sub	s2,s2,s0
   10a50:	40295913          	srai	s2,s2,0x2
   10a54:	00000493          	li	s1,0
   10a58:	00042783          	lw	a5,0(s0)
   10a5c:	00148493          	addi	s1,s1,1
   10a60:	00440413          	addi	s0,s0,4
   10a64:	000780e7          	jalr	a5
   10a68:	ff24e8e3          	bltu	s1,s2,10a58 <__libc_init_array+0x34>
   10a6c:	00013937          	lui	s2,0x13
   10a70:	00013437          	lui	s0,0x13
   10a74:	0d490913          	addi	s2,s2,212 # 130d4 <__do_global_dtors_aux_fini_array_entry>
   10a78:	0cc40413          	addi	s0,s0,204 # 130cc <__init_array_start>
   10a7c:	02890263          	beq	s2,s0,10aa0 <__libc_init_array+0x7c>
   10a80:	40890933          	sub	s2,s2,s0
   10a84:	40295913          	srai	s2,s2,0x2
   10a88:	00000493          	li	s1,0
   10a8c:	00042783          	lw	a5,0(s0)
   10a90:	00148493          	addi	s1,s1,1
   10a94:	00440413          	addi	s0,s0,4
   10a98:	000780e7          	jalr	a5
   10a9c:	ff24e8e3          	bltu	s1,s2,10a8c <__libc_init_array+0x68>
   10aa0:	00c12083          	lw	ra,12(sp)
   10aa4:	00812403          	lw	s0,8(sp)
   10aa8:	00412483          	lw	s1,4(sp)
   10aac:	00012903          	lw	s2,0(sp)
   10ab0:	01010113          	addi	sp,sp,16
   10ab4:	00008067          	ret

00010ab8 <memset>:
   10ab8:	00f00313          	li	t1,15
   10abc:	00050713          	mv	a4,a0
   10ac0:	02c37e63          	bgeu	t1,a2,10afc <memset+0x44>
   10ac4:	00f77793          	andi	a5,a4,15
   10ac8:	0a079063          	bnez	a5,10b68 <memset+0xb0>
   10acc:	08059263          	bnez	a1,10b50 <memset+0x98>
   10ad0:	ff067693          	andi	a3,a2,-16
   10ad4:	00f67613          	andi	a2,a2,15
   10ad8:	00e686b3          	add	a3,a3,a4
   10adc:	00b72023          	sw	a1,0(a4)
   10ae0:	00b72223          	sw	a1,4(a4)
   10ae4:	00b72423          	sw	a1,8(a4)
   10ae8:	00b72623          	sw	a1,12(a4)
   10aec:	01070713          	addi	a4,a4,16
   10af0:	fed766e3          	bltu	a4,a3,10adc <memset+0x24>
   10af4:	00061463          	bnez	a2,10afc <memset+0x44>
   10af8:	00008067          	ret
   10afc:	40c306b3          	sub	a3,t1,a2
   10b00:	00269693          	slli	a3,a3,0x2
   10b04:	00000297          	auipc	t0,0x0
   10b08:	005686b3          	add	a3,a3,t0
   10b0c:	00c68067          	jr	12(a3)
   10b10:	00b70723          	sb	a1,14(a4)
   10b14:	00b706a3          	sb	a1,13(a4)
   10b18:	00b70623          	sb	a1,12(a4)
   10b1c:	00b705a3          	sb	a1,11(a4)
   10b20:	00b70523          	sb	a1,10(a4)
   10b24:	00b704a3          	sb	a1,9(a4)
   10b28:	00b70423          	sb	a1,8(a4)
   10b2c:	00b703a3          	sb	a1,7(a4)
   10b30:	00b70323          	sb	a1,6(a4)
   10b34:	00b702a3          	sb	a1,5(a4)
   10b38:	00b70223          	sb	a1,4(a4)
   10b3c:	00b701a3          	sb	a1,3(a4)
   10b40:	00b70123          	sb	a1,2(a4)
   10b44:	00b700a3          	sb	a1,1(a4)
   10b48:	00b70023          	sb	a1,0(a4)
   10b4c:	00008067          	ret
   10b50:	0ff5f593          	zext.b	a1,a1
   10b54:	00859693          	slli	a3,a1,0x8
   10b58:	00d5e5b3          	or	a1,a1,a3
   10b5c:	01059693          	slli	a3,a1,0x10
   10b60:	00d5e5b3          	or	a1,a1,a3
   10b64:	f6dff06f          	j	10ad0 <memset+0x18>
   10b68:	00279693          	slli	a3,a5,0x2
   10b6c:	00000297          	auipc	t0,0x0
   10b70:	005686b3          	add	a3,a3,t0
   10b74:	00008293          	mv	t0,ra
   10b78:	fa0680e7          	jalr	-96(a3)
   10b7c:	00028093          	mv	ra,t0
   10b80:	ff078793          	addi	a5,a5,-16
   10b84:	40f70733          	sub	a4,a4,a5
   10b88:	00f60633          	add	a2,a2,a5
   10b8c:	f6c378e3          	bgeu	t1,a2,10afc <memset+0x44>
   10b90:	f3dff06f          	j	10acc <memset+0x14>

00010b94 <__call_exitprocs>:
   10b94:	fd010113          	addi	sp,sp,-48
   10b98:	01412c23          	sw	s4,24(sp)
   10b9c:	03212023          	sw	s2,32(sp)
   10ba0:	d501a903          	lw	s2,-688(gp) # 13628 <__atexit>
   10ba4:	02112623          	sw	ra,44(sp)
   10ba8:	06090c63          	beqz	s2,10c20 <__call_exitprocs+0x8c>
   10bac:	01312e23          	sw	s3,28(sp)
   10bb0:	01512a23          	sw	s5,20(sp)
   10bb4:	01612823          	sw	s6,16(sp)
   10bb8:	01712623          	sw	s7,12(sp)
   10bbc:	02812423          	sw	s0,40(sp)
   10bc0:	02912223          	sw	s1,36(sp)
   10bc4:	01812423          	sw	s8,8(sp)
   10bc8:	00050b13          	mv	s6,a0
   10bcc:	00058b93          	mv	s7,a1
   10bd0:	fff00993          	li	s3,-1
   10bd4:	00100a93          	li	s5,1
   10bd8:	00492483          	lw	s1,4(s2)
   10bdc:	fff48413          	addi	s0,s1,-1
   10be0:	02044263          	bltz	s0,10c04 <__call_exitprocs+0x70>
   10be4:	00249493          	slli	s1,s1,0x2
   10be8:	009904b3          	add	s1,s2,s1
   10bec:	040b8463          	beqz	s7,10c34 <__call_exitprocs+0xa0>
   10bf0:	1044a783          	lw	a5,260(s1)
   10bf4:	05778063          	beq	a5,s7,10c34 <__call_exitprocs+0xa0>
   10bf8:	fff40413          	addi	s0,s0,-1
   10bfc:	ffc48493          	addi	s1,s1,-4
   10c00:	ff3418e3          	bne	s0,s3,10bf0 <__call_exitprocs+0x5c>
   10c04:	02812403          	lw	s0,40(sp)
   10c08:	02412483          	lw	s1,36(sp)
   10c0c:	01c12983          	lw	s3,28(sp)
   10c10:	01412a83          	lw	s5,20(sp)
   10c14:	01012b03          	lw	s6,16(sp)
   10c18:	00c12b83          	lw	s7,12(sp)
   10c1c:	00812c03          	lw	s8,8(sp)
   10c20:	02c12083          	lw	ra,44(sp)
   10c24:	02012903          	lw	s2,32(sp)
   10c28:	01812a03          	lw	s4,24(sp)
   10c2c:	03010113          	addi	sp,sp,48
   10c30:	00008067          	ret
   10c34:	00492783          	lw	a5,4(s2)
   10c38:	0044a683          	lw	a3,4(s1)
   10c3c:	fff78793          	addi	a5,a5,-1
   10c40:	06878a63          	beq	a5,s0,10cb4 <__call_exitprocs+0x120>
   10c44:	0004a223          	sw	zero,4(s1)
   10c48:	02068663          	beqz	a3,10c74 <__call_exitprocs+0xe0>
   10c4c:	18892783          	lw	a5,392(s2)
   10c50:	008a9733          	sll	a4,s5,s0
   10c54:	00492c03          	lw	s8,4(s2)
   10c58:	00f777b3          	and	a5,a4,a5
   10c5c:	02079463          	bnez	a5,10c84 <__call_exitprocs+0xf0>
   10c60:	000680e7          	jalr	a3
   10c64:	00492703          	lw	a4,4(s2)
   10c68:	d501a783          	lw	a5,-688(gp) # 13628 <__atexit>
   10c6c:	03871e63          	bne	a4,s8,10ca8 <__call_exitprocs+0x114>
   10c70:	03279c63          	bne	a5,s2,10ca8 <__call_exitprocs+0x114>
   10c74:	fff40413          	addi	s0,s0,-1
   10c78:	ffc48493          	addi	s1,s1,-4
   10c7c:	f73418e3          	bne	s0,s3,10bec <__call_exitprocs+0x58>
   10c80:	f85ff06f          	j	10c04 <__call_exitprocs+0x70>
   10c84:	18c92783          	lw	a5,396(s2)
   10c88:	0844a583          	lw	a1,132(s1)
   10c8c:	00f77733          	and	a4,a4,a5
   10c90:	02071663          	bnez	a4,10cbc <__call_exitprocs+0x128>
   10c94:	000b0513          	mv	a0,s6
   10c98:	000680e7          	jalr	a3
   10c9c:	00492703          	lw	a4,4(s2)
   10ca0:	d501a783          	lw	a5,-688(gp) # 13628 <__atexit>
   10ca4:	fd8706e3          	beq	a4,s8,10c70 <__call_exitprocs+0xdc>
   10ca8:	f4078ee3          	beqz	a5,10c04 <__call_exitprocs+0x70>
   10cac:	00078913          	mv	s2,a5
   10cb0:	f29ff06f          	j	10bd8 <__call_exitprocs+0x44>
   10cb4:	00892223          	sw	s0,4(s2)
   10cb8:	f91ff06f          	j	10c48 <__call_exitprocs+0xb4>
   10cbc:	00058513          	mv	a0,a1
   10cc0:	000680e7          	jalr	a3
   10cc4:	fa1ff06f          	j	10c64 <__call_exitprocs+0xd0>

00010cc8 <atexit>:
   10cc8:	00050593          	mv	a1,a0
   10ccc:	00000693          	li	a3,0
   10cd0:	00000613          	li	a2,0
   10cd4:	00000513          	li	a0,0
   10cd8:	1ac0106f          	j	11e84 <__register_exitproc>

00010cdc <_malloc_trim_r>:
   10cdc:	fe010113          	addi	sp,sp,-32
   10ce0:	01212823          	sw	s2,16(sp)
   10ce4:	00013937          	lui	s2,0x13
   10ce8:	00812c23          	sw	s0,24(sp)
   10cec:	00912a23          	sw	s1,20(sp)
   10cf0:	01312623          	sw	s3,12(sp)
   10cf4:	00058413          	mv	s0,a1
   10cf8:	00112e23          	sw	ra,28(sp)
   10cfc:	00050993          	mv	s3,a0
   10d00:	20890913          	addi	s2,s2,520 # 13208 <__malloc_av_>
   10d04:	45d000ef          	jal	11960 <__malloc_lock>
   10d08:	00892783          	lw	a5,8(s2)
   10d0c:	00001737          	lui	a4,0x1
   10d10:	0047a483          	lw	s1,4(a5)
   10d14:	ffc4f493          	andi	s1,s1,-4
   10d18:	7ff48793          	addi	a5,s1,2047
   10d1c:	7f078793          	addi	a5,a5,2032
   10d20:	40878433          	sub	s0,a5,s0
   10d24:	00c45413          	srli	s0,s0,0xc
   10d28:	fff40413          	addi	s0,s0,-1
   10d2c:	00c41413          	slli	s0,s0,0xc
   10d30:	00e44e63          	blt	s0,a4,10d4c <_malloc_trim_r+0x70>
   10d34:	00000593          	li	a1,0
   10d38:	00098513          	mv	a0,s3
   10d3c:	090010ef          	jal	11dcc <_sbrk_r>
   10d40:	00892783          	lw	a5,8(s2)
   10d44:	009787b3          	add	a5,a5,s1
   10d48:	02f50663          	beq	a0,a5,10d74 <_malloc_trim_r+0x98>
   10d4c:	00098513          	mv	a0,s3
   10d50:	415000ef          	jal	11964 <__malloc_unlock>
   10d54:	01c12083          	lw	ra,28(sp)
   10d58:	01812403          	lw	s0,24(sp)
   10d5c:	01412483          	lw	s1,20(sp)
   10d60:	01012903          	lw	s2,16(sp)
   10d64:	00c12983          	lw	s3,12(sp)
   10d68:	00000513          	li	a0,0
   10d6c:	02010113          	addi	sp,sp,32
   10d70:	00008067          	ret
   10d74:	408005b3          	neg	a1,s0
   10d78:	00098513          	mv	a0,s3
   10d7c:	050010ef          	jal	11dcc <_sbrk_r>
   10d80:	fff00793          	li	a5,-1
   10d84:	04f50463          	beq	a0,a5,10dcc <_malloc_trim_r+0xf0>
   10d88:	00892683          	lw	a3,8(s2)
   10d8c:	eb81a783          	lw	a5,-328(gp) # 13790 <__malloc_current_mallinfo>
   10d90:	408484b3          	sub	s1,s1,s0
   10d94:	0014e493          	ori	s1,s1,1
   10d98:	00098513          	mv	a0,s3
   10d9c:	408787b3          	sub	a5,a5,s0
   10da0:	0096a223          	sw	s1,4(a3)
   10da4:	eaf1ac23          	sw	a5,-328(gp) # 13790 <__malloc_current_mallinfo>
   10da8:	3bd000ef          	jal	11964 <__malloc_unlock>
   10dac:	01c12083          	lw	ra,28(sp)
   10db0:	01812403          	lw	s0,24(sp)
   10db4:	01412483          	lw	s1,20(sp)
   10db8:	01012903          	lw	s2,16(sp)
   10dbc:	00c12983          	lw	s3,12(sp)
   10dc0:	00100513          	li	a0,1
   10dc4:	02010113          	addi	sp,sp,32
   10dc8:	00008067          	ret
   10dcc:	00000593          	li	a1,0
   10dd0:	00098513          	mv	a0,s3
   10dd4:	7f9000ef          	jal	11dcc <_sbrk_r>
   10dd8:	00892703          	lw	a4,8(s2)
   10ddc:	00f00693          	li	a3,15
   10de0:	40e507b3          	sub	a5,a0,a4
   10de4:	f6f6d4e3          	bge	a3,a5,10d4c <_malloc_trim_r+0x70>
   10de8:	d401a603          	lw	a2,-704(gp) # 13618 <__malloc_sbrk_base>
   10dec:	0017e793          	ori	a5,a5,1
   10df0:	40c50533          	sub	a0,a0,a2
   10df4:	00f72223          	sw	a5,4(a4) # 1004 <exit-0xf0b0>
   10df8:	eaa1ac23          	sw	a0,-328(gp) # 13790 <__malloc_current_mallinfo>
   10dfc:	f51ff06f          	j	10d4c <_malloc_trim_r+0x70>

00010e00 <_free_r>:
   10e00:	12058463          	beqz	a1,10f28 <_free_r+0x128>
   10e04:	fe010113          	addi	sp,sp,-32
   10e08:	00812c23          	sw	s0,24(sp)
   10e0c:	00b12623          	sw	a1,12(sp)
   10e10:	00050413          	mv	s0,a0
   10e14:	00112e23          	sw	ra,28(sp)
   10e18:	349000ef          	jal	11960 <__malloc_lock>
   10e1c:	00c12583          	lw	a1,12(sp)
   10e20:	00013837          	lui	a6,0x13
   10e24:	20880813          	addi	a6,a6,520 # 13208 <__malloc_av_>
   10e28:	ffc5a503          	lw	a0,-4(a1)
   10e2c:	ff858713          	addi	a4,a1,-8
   10e30:	00882883          	lw	a7,8(a6)
   10e34:	ffe57793          	andi	a5,a0,-2
   10e38:	00f70633          	add	a2,a4,a5
   10e3c:	00462683          	lw	a3,4(a2)
   10e40:	00157313          	andi	t1,a0,1
   10e44:	ffc6f693          	andi	a3,a3,-4
   10e48:	18c88863          	beq	a7,a2,10fd8 <_free_r+0x1d8>
   10e4c:	00d62223          	sw	a3,4(a2)
   10e50:	00d608b3          	add	a7,a2,a3
   10e54:	0048a883          	lw	a7,4(a7)
   10e58:	0018f893          	andi	a7,a7,1
   10e5c:	08031a63          	bnez	t1,10ef0 <_free_r+0xf0>
   10e60:	ff85a303          	lw	t1,-8(a1)
   10e64:	000135b7          	lui	a1,0x13
   10e68:	21058593          	addi	a1,a1,528 # 13210 <__malloc_av_+0x8>
   10e6c:	40670733          	sub	a4,a4,t1
   10e70:	00872503          	lw	a0,8(a4)
   10e74:	006787b3          	add	a5,a5,t1
   10e78:	12b50a63          	beq	a0,a1,10fac <_free_r+0x1ac>
   10e7c:	00c72303          	lw	t1,12(a4)
   10e80:	00652623          	sw	t1,12(a0)
   10e84:	00a32423          	sw	a0,8(t1) # 101ac <frame_dummy+0x1c>
   10e88:	18088c63          	beqz	a7,11020 <_free_r+0x220>
   10e8c:	0017e693          	ori	a3,a5,1
   10e90:	00d72223          	sw	a3,4(a4)
   10e94:	00f62023          	sw	a5,0(a2)
   10e98:	1ff00693          	li	a3,511
   10e9c:	0af6e263          	bltu	a3,a5,10f40 <_free_r+0x140>
   10ea0:	ff87f693          	andi	a3,a5,-8
   10ea4:	00868693          	addi	a3,a3,8
   10ea8:	00482583          	lw	a1,4(a6)
   10eac:	00d806b3          	add	a3,a6,a3
   10eb0:	0006a603          	lw	a2,0(a3)
   10eb4:	0057d513          	srli	a0,a5,0x5
   10eb8:	00100793          	li	a5,1
   10ebc:	00a797b3          	sll	a5,a5,a0
   10ec0:	00b7e7b3          	or	a5,a5,a1
   10ec4:	ff868593          	addi	a1,a3,-8
   10ec8:	00c72423          	sw	a2,8(a4)
   10ecc:	00b72623          	sw	a1,12(a4)
   10ed0:	00f82223          	sw	a5,4(a6)
   10ed4:	00e6a023          	sw	a4,0(a3)
   10ed8:	00e62623          	sw	a4,12(a2)
   10edc:	00040513          	mv	a0,s0
   10ee0:	01812403          	lw	s0,24(sp)
   10ee4:	01c12083          	lw	ra,28(sp)
   10ee8:	02010113          	addi	sp,sp,32
   10eec:	2790006f          	j	11964 <__malloc_unlock>
   10ef0:	02089e63          	bnez	a7,10f2c <_free_r+0x12c>
   10ef4:	000135b7          	lui	a1,0x13
   10ef8:	00d787b3          	add	a5,a5,a3
   10efc:	21058593          	addi	a1,a1,528 # 13210 <__malloc_av_+0x8>
   10f00:	00862683          	lw	a3,8(a2)
   10f04:	0017e893          	ori	a7,a5,1
   10f08:	00f70533          	add	a0,a4,a5
   10f0c:	16b68063          	beq	a3,a1,1106c <_free_r+0x26c>
   10f10:	00c62603          	lw	a2,12(a2)
   10f14:	00c6a623          	sw	a2,12(a3)
   10f18:	00d62423          	sw	a3,8(a2)
   10f1c:	01172223          	sw	a7,4(a4)
   10f20:	00f52023          	sw	a5,0(a0)
   10f24:	f75ff06f          	j	10e98 <_free_r+0x98>
   10f28:	00008067          	ret
   10f2c:	00156513          	ori	a0,a0,1
   10f30:	fea5ae23          	sw	a0,-4(a1)
   10f34:	00f62023          	sw	a5,0(a2)
   10f38:	1ff00693          	li	a3,511
   10f3c:	f6f6f2e3          	bgeu	a3,a5,10ea0 <_free_r+0xa0>
   10f40:	0097d693          	srli	a3,a5,0x9
   10f44:	00400613          	li	a2,4
   10f48:	0ed66063          	bltu	a2,a3,11028 <_free_r+0x228>
   10f4c:	0067d693          	srli	a3,a5,0x6
   10f50:	03968593          	addi	a1,a3,57
   10f54:	00359593          	slli	a1,a1,0x3
   10f58:	03868613          	addi	a2,a3,56
   10f5c:	00b805b3          	add	a1,a6,a1
   10f60:	0005a683          	lw	a3,0(a1)
   10f64:	ff858593          	addi	a1,a1,-8
   10f68:	00d59863          	bne	a1,a3,10f78 <_free_r+0x178>
   10f6c:	11c0006f          	j	11088 <_free_r+0x288>
   10f70:	0086a683          	lw	a3,8(a3)
   10f74:	00d58863          	beq	a1,a3,10f84 <_free_r+0x184>
   10f78:	0046a603          	lw	a2,4(a3)
   10f7c:	ffc67613          	andi	a2,a2,-4
   10f80:	fec7e8e3          	bltu	a5,a2,10f70 <_free_r+0x170>
   10f84:	00c6a583          	lw	a1,12(a3)
   10f88:	00b72623          	sw	a1,12(a4)
   10f8c:	00d72423          	sw	a3,8(a4)
   10f90:	00040513          	mv	a0,s0
   10f94:	01812403          	lw	s0,24(sp)
   10f98:	01c12083          	lw	ra,28(sp)
   10f9c:	00e5a423          	sw	a4,8(a1)
   10fa0:	00e6a623          	sw	a4,12(a3)
   10fa4:	02010113          	addi	sp,sp,32
   10fa8:	1bd0006f          	j	11964 <__malloc_unlock>
   10fac:	0a089063          	bnez	a7,1104c <_free_r+0x24c>
   10fb0:	00c62583          	lw	a1,12(a2)
   10fb4:	00862603          	lw	a2,8(a2)
   10fb8:	00f686b3          	add	a3,a3,a5
   10fbc:	0016e793          	ori	a5,a3,1
   10fc0:	00b62623          	sw	a1,12(a2)
   10fc4:	00c5a423          	sw	a2,8(a1)
   10fc8:	00f72223          	sw	a5,4(a4)
   10fcc:	00d70733          	add	a4,a4,a3
   10fd0:	00d72023          	sw	a3,0(a4)
   10fd4:	f09ff06f          	j	10edc <_free_r+0xdc>
   10fd8:	00d786b3          	add	a3,a5,a3
   10fdc:	02031063          	bnez	t1,10ffc <_free_r+0x1fc>
   10fe0:	ff85a783          	lw	a5,-8(a1)
   10fe4:	40f70733          	sub	a4,a4,a5
   10fe8:	00872603          	lw	a2,8(a4)
   10fec:	00f686b3          	add	a3,a3,a5
   10ff0:	00c72783          	lw	a5,12(a4)
   10ff4:	00f62623          	sw	a5,12(a2)
   10ff8:	00c7a423          	sw	a2,8(a5)
   10ffc:	0016e613          	ori	a2,a3,1
   11000:	d441a783          	lw	a5,-700(gp) # 1361c <__malloc_trim_threshold>
   11004:	00c72223          	sw	a2,4(a4)
   11008:	00e82423          	sw	a4,8(a6)
   1100c:	ecf6e8e3          	bltu	a3,a5,10edc <_free_r+0xdc>
   11010:	d5c1a583          	lw	a1,-676(gp) # 13634 <__malloc_top_pad>
   11014:	00040513          	mv	a0,s0
   11018:	cc5ff0ef          	jal	10cdc <_malloc_trim_r>
   1101c:	ec1ff06f          	j	10edc <_free_r+0xdc>
   11020:	00d787b3          	add	a5,a5,a3
   11024:	eddff06f          	j	10f00 <_free_r+0x100>
   11028:	01400613          	li	a2,20
   1102c:	02d67863          	bgeu	a2,a3,1105c <_free_r+0x25c>
   11030:	05400613          	li	a2,84
   11034:	06d66863          	bltu	a2,a3,110a4 <_free_r+0x2a4>
   11038:	00c7d693          	srli	a3,a5,0xc
   1103c:	06f68593          	addi	a1,a3,111
   11040:	00359593          	slli	a1,a1,0x3
   11044:	06e68613          	addi	a2,a3,110
   11048:	f15ff06f          	j	10f5c <_free_r+0x15c>
   1104c:	0017e693          	ori	a3,a5,1
   11050:	00d72223          	sw	a3,4(a4)
   11054:	00f62023          	sw	a5,0(a2)
   11058:	e85ff06f          	j	10edc <_free_r+0xdc>
   1105c:	05c68593          	addi	a1,a3,92
   11060:	00359593          	slli	a1,a1,0x3
   11064:	05b68613          	addi	a2,a3,91
   11068:	ef5ff06f          	j	10f5c <_free_r+0x15c>
   1106c:	00e82a23          	sw	a4,20(a6)
   11070:	00e82823          	sw	a4,16(a6)
   11074:	00b72623          	sw	a1,12(a4)
   11078:	00b72423          	sw	a1,8(a4)
   1107c:	01172223          	sw	a7,4(a4)
   11080:	00f52023          	sw	a5,0(a0)
   11084:	e59ff06f          	j	10edc <_free_r+0xdc>
   11088:	00482503          	lw	a0,4(a6)
   1108c:	40265613          	srai	a2,a2,0x2
   11090:	00100793          	li	a5,1
   11094:	00c797b3          	sll	a5,a5,a2
   11098:	00a7e7b3          	or	a5,a5,a0
   1109c:	00f82223          	sw	a5,4(a6)
   110a0:	ee9ff06f          	j	10f88 <_free_r+0x188>
   110a4:	15400613          	li	a2,340
   110a8:	00d66c63          	bltu	a2,a3,110c0 <_free_r+0x2c0>
   110ac:	00f7d693          	srli	a3,a5,0xf
   110b0:	07868593          	addi	a1,a3,120
   110b4:	00359593          	slli	a1,a1,0x3
   110b8:	07768613          	addi	a2,a3,119
   110bc:	ea1ff06f          	j	10f5c <_free_r+0x15c>
   110c0:	55400613          	li	a2,1364
   110c4:	00d66c63          	bltu	a2,a3,110dc <_free_r+0x2dc>
   110c8:	0127d693          	srli	a3,a5,0x12
   110cc:	07d68593          	addi	a1,a3,125
   110d0:	00359593          	slli	a1,a1,0x3
   110d4:	07c68613          	addi	a2,a3,124
   110d8:	e85ff06f          	j	10f5c <_free_r+0x15c>
   110dc:	3f800593          	li	a1,1016
   110e0:	07e00613          	li	a2,126
   110e4:	e79ff06f          	j	10f5c <_free_r+0x15c>

000110e8 <_malloc_r>:
   110e8:	fc010113          	addi	sp,sp,-64
   110ec:	02812c23          	sw	s0,56(sp)
   110f0:	02112e23          	sw	ra,60(sp)
   110f4:	00b58793          	addi	a5,a1,11
   110f8:	01600713          	li	a4,22
   110fc:	00050413          	mv	s0,a0
   11100:	08f76e63          	bltu	a4,a5,1119c <_malloc_r+0xb4>
   11104:	01000693          	li	a3,16
   11108:	06b6ec63          	bltu	a3,a1,11180 <_malloc_r+0x98>
   1110c:	055000ef          	jal	11960 <__malloc_lock>
   11110:	01000693          	li	a3,16
   11114:	01800713          	li	a4,24
   11118:	00200893          	li	a7,2
   1111c:	00013837          	lui	a6,0x13
   11120:	20880813          	addi	a6,a6,520 # 13208 <__malloc_av_>
   11124:	00e80733          	add	a4,a6,a4
   11128:	00472783          	lw	a5,4(a4)
   1112c:	ff870613          	addi	a2,a4,-8
   11130:	44c78c63          	beq	a5,a2,11588 <_malloc_r+0x4a0>
   11134:	0047a703          	lw	a4,4(a5)
   11138:	00c7a603          	lw	a2,12(a5)
   1113c:	0087a583          	lw	a1,8(a5)
   11140:	ffc77713          	andi	a4,a4,-4
   11144:	00e78733          	add	a4,a5,a4
   11148:	00472683          	lw	a3,4(a4)
   1114c:	00c5a623          	sw	a2,12(a1)
   11150:	00f12623          	sw	a5,12(sp)
   11154:	00b62423          	sw	a1,8(a2)
   11158:	0016e693          	ori	a3,a3,1
   1115c:	00040513          	mv	a0,s0
   11160:	00d72223          	sw	a3,4(a4)
   11164:	001000ef          	jal	11964 <__malloc_unlock>
   11168:	00c12783          	lw	a5,12(sp)
   1116c:	03c12083          	lw	ra,60(sp)
   11170:	03812403          	lw	s0,56(sp)
   11174:	00878513          	addi	a0,a5,8
   11178:	04010113          	addi	sp,sp,64
   1117c:	00008067          	ret
   11180:	00c00793          	li	a5,12
   11184:	00f42023          	sw	a5,0(s0)
   11188:	00000513          	li	a0,0
   1118c:	03c12083          	lw	ra,60(sp)
   11190:	03812403          	lw	s0,56(sp)
   11194:	04010113          	addi	sp,sp,64
   11198:	00008067          	ret
   1119c:	ff87f693          	andi	a3,a5,-8
   111a0:	fe07c0e3          	bltz	a5,11180 <_malloc_r+0x98>
   111a4:	fcb6eee3          	bltu	a3,a1,11180 <_malloc_r+0x98>
   111a8:	00d12623          	sw	a3,12(sp)
   111ac:	7b4000ef          	jal	11960 <__malloc_lock>
   111b0:	00c12683          	lw	a3,12(sp)
   111b4:	1f700793          	li	a5,503
   111b8:	4cd7f663          	bgeu	a5,a3,11684 <_malloc_r+0x59c>
   111bc:	0096d793          	srli	a5,a3,0x9
   111c0:	16078e63          	beqz	a5,1133c <_malloc_r+0x254>
   111c4:	00400713          	li	a4,4
   111c8:	42f76863          	bltu	a4,a5,115f8 <_malloc_r+0x510>
   111cc:	0066d793          	srli	a5,a3,0x6
   111d0:	03978893          	addi	a7,a5,57
   111d4:	03878e13          	addi	t3,a5,56
   111d8:	00389513          	slli	a0,a7,0x3
   111dc:	00013837          	lui	a6,0x13
   111e0:	20880813          	addi	a6,a6,520 # 13208 <__malloc_av_>
   111e4:	00a80533          	add	a0,a6,a0
   111e8:	00452783          	lw	a5,4(a0)
   111ec:	ff850513          	addi	a0,a0,-8
   111f0:	02f50863          	beq	a0,a5,11220 <_malloc_r+0x138>
   111f4:	00f00313          	li	t1,15
   111f8:	0140006f          	j	1120c <_malloc_r+0x124>
   111fc:	00c7a583          	lw	a1,12(a5)
   11200:	34065463          	bgez	a2,11548 <_malloc_r+0x460>
   11204:	00b50e63          	beq	a0,a1,11220 <_malloc_r+0x138>
   11208:	00058793          	mv	a5,a1
   1120c:	0047a703          	lw	a4,4(a5)
   11210:	ffc77713          	andi	a4,a4,-4
   11214:	40d70633          	sub	a2,a4,a3
   11218:	fec352e3          	bge	t1,a2,111fc <_malloc_r+0x114>
   1121c:	000e0893          	mv	a7,t3
   11220:	01082783          	lw	a5,16(a6)
   11224:	00013e37          	lui	t3,0x13
   11228:	210e0e13          	addi	t3,t3,528 # 13210 <__malloc_av_+0x8>
   1122c:	2dc78c63          	beq	a5,t3,11504 <_malloc_r+0x41c>
   11230:	0047a703          	lw	a4,4(a5)
   11234:	00f00593          	li	a1,15
   11238:	ffc77713          	andi	a4,a4,-4
   1123c:	40d70633          	sub	a2,a4,a3
   11240:	46c5cc63          	blt	a1,a2,116b8 <_malloc_r+0x5d0>
   11244:	01c82a23          	sw	t3,20(a6)
   11248:	01c82823          	sw	t3,16(a6)
   1124c:	44065263          	bgez	a2,11690 <_malloc_r+0x5a8>
   11250:	1ff00613          	li	a2,511
   11254:	00482303          	lw	t1,4(a6)
   11258:	34e66063          	bltu	a2,a4,11598 <_malloc_r+0x4b0>
   1125c:	ff877613          	andi	a2,a4,-8
   11260:	00860613          	addi	a2,a2,8
   11264:	00c80633          	add	a2,a6,a2
   11268:	00062583          	lw	a1,0(a2)
   1126c:	00575513          	srli	a0,a4,0x5
   11270:	00100713          	li	a4,1
   11274:	00a71733          	sll	a4,a4,a0
   11278:	00e36333          	or	t1,t1,a4
   1127c:	ff860713          	addi	a4,a2,-8
   11280:	00b7a423          	sw	a1,8(a5)
   11284:	00e7a623          	sw	a4,12(a5)
   11288:	00682223          	sw	t1,4(a6)
   1128c:	00f62023          	sw	a5,0(a2)
   11290:	00f5a623          	sw	a5,12(a1)
   11294:	4028d793          	srai	a5,a7,0x2
   11298:	00100513          	li	a0,1
   1129c:	00f51533          	sll	a0,a0,a5
   112a0:	0aa36663          	bltu	t1,a0,1134c <_malloc_r+0x264>
   112a4:	006577b3          	and	a5,a0,t1
   112a8:	02079463          	bnez	a5,112d0 <_malloc_r+0x1e8>
   112ac:	00151513          	slli	a0,a0,0x1
   112b0:	ffc8f893          	andi	a7,a7,-4
   112b4:	006577b3          	and	a5,a0,t1
   112b8:	00488893          	addi	a7,a7,4
   112bc:	00079a63          	bnez	a5,112d0 <_malloc_r+0x1e8>
   112c0:	00151513          	slli	a0,a0,0x1
   112c4:	006577b3          	and	a5,a0,t1
   112c8:	00488893          	addi	a7,a7,4
   112cc:	fe078ae3          	beqz	a5,112c0 <_malloc_r+0x1d8>
   112d0:	00f00e93          	li	t4,15
   112d4:	00389f13          	slli	t5,a7,0x3
   112d8:	01e80f33          	add	t5,a6,t5
   112dc:	000f0313          	mv	t1,t5
   112e0:	00c32703          	lw	a4,12(t1)
   112e4:	00088f93          	mv	t6,a7
   112e8:	32e30a63          	beq	t1,a4,1161c <_malloc_r+0x534>
   112ec:	00472603          	lw	a2,4(a4)
   112f0:	00070793          	mv	a5,a4
   112f4:	00c72703          	lw	a4,12(a4)
   112f8:	ffc67613          	andi	a2,a2,-4
   112fc:	40d605b3          	sub	a1,a2,a3
   11300:	32beca63          	blt	t4,a1,11634 <_malloc_r+0x54c>
   11304:	fe05c2e3          	bltz	a1,112e8 <_malloc_r+0x200>
   11308:	00c78633          	add	a2,a5,a2
   1130c:	00462683          	lw	a3,4(a2)
   11310:	0087a583          	lw	a1,8(a5)
   11314:	00040513          	mv	a0,s0
   11318:	0016e693          	ori	a3,a3,1
   1131c:	00d62223          	sw	a3,4(a2)
   11320:	00e5a623          	sw	a4,12(a1)
   11324:	00b72423          	sw	a1,8(a4)
   11328:	00f12623          	sw	a5,12(sp)
   1132c:	638000ef          	jal	11964 <__malloc_unlock>
   11330:	00c12783          	lw	a5,12(sp)
   11334:	00878513          	addi	a0,a5,8
   11338:	e55ff06f          	j	1118c <_malloc_r+0xa4>
   1133c:	20000513          	li	a0,512
   11340:	04000893          	li	a7,64
   11344:	03f00e13          	li	t3,63
   11348:	e95ff06f          	j	111dc <_malloc_r+0xf4>
   1134c:	00882783          	lw	a5,8(a6)
   11350:	0047a703          	lw	a4,4(a5)
   11354:	ffc77713          	andi	a4,a4,-4
   11358:	40d70633          	sub	a2,a4,a3
   1135c:	00d76663          	bltu	a4,a3,11368 <_malloc_r+0x280>
   11360:	01062593          	slti	a1,a2,16
   11364:	1a058463          	beqz	a1,1150c <_malloc_r+0x424>
   11368:	d5c1a583          	lw	a1,-676(gp) # 13634 <__malloc_top_pad>
   1136c:	d401a503          	lw	a0,-704(gp) # 13618 <__malloc_sbrk_base>
   11370:	fff00613          	li	a2,-1
   11374:	00b685b3          	add	a1,a3,a1
   11378:	42c50463          	beq	a0,a2,117a0 <_malloc_r+0x6b8>
   1137c:	00001637          	lui	a2,0x1
   11380:	00f60613          	addi	a2,a2,15 # 100f <exit-0xf0a5>
   11384:	00c585b3          	add	a1,a1,a2
   11388:	fffff637          	lui	a2,0xfffff
   1138c:	00c5f5b3          	and	a1,a1,a2
   11390:	00040513          	mv	a0,s0
   11394:	01012e23          	sw	a6,28(sp)
   11398:	00f12c23          	sw	a5,24(sp)
   1139c:	00d12a23          	sw	a3,20(sp)
   113a0:	00e12823          	sw	a4,16(sp)
   113a4:	00b12623          	sw	a1,12(sp)
   113a8:	225000ef          	jal	11dcc <_sbrk_r>
   113ac:	fff00613          	li	a2,-1
   113b0:	00c12583          	lw	a1,12(sp)
   113b4:	01012703          	lw	a4,16(sp)
   113b8:	01412683          	lw	a3,20(sp)
   113bc:	01812783          	lw	a5,24(sp)
   113c0:	01c12803          	lw	a6,28(sp)
   113c4:	00050893          	mv	a7,a0
   113c8:	34c50663          	beq	a0,a2,11714 <_malloc_r+0x62c>
   113cc:	00e78533          	add	a0,a5,a4
   113d0:	34a8e063          	bltu	a7,a0,11710 <_malloc_r+0x628>
   113d4:	eb818e13          	addi	t3,gp,-328 # 13790 <__malloc_current_mallinfo>
   113d8:	000e2603          	lw	a2,0(t3)
   113dc:	00c58633          	add	a2,a1,a2
   113e0:	00ce2023          	sw	a2,0(t3)
   113e4:	00060e93          	mv	t4,a2
   113e8:	49150663          	beq	a0,a7,11874 <_malloc_r+0x78c>
   113ec:	d401af03          	lw	t5,-704(gp) # 13618 <__malloc_sbrk_base>
   113f0:	fff00613          	li	a2,-1
   113f4:	48cf0e63          	beq	t5,a2,11890 <_malloc_r+0x7a8>
   113f8:	40a88633          	sub	a2,a7,a0
   113fc:	01d60633          	add	a2,a2,t4
   11400:	00ce2023          	sw	a2,0(t3)
   11404:	0078fe93          	andi	t4,a7,7
   11408:	3a0e8c63          	beqz	t4,117c0 <_malloc_r+0x6d8>
   1140c:	ff88f893          	andi	a7,a7,-8
   11410:	00001637          	lui	a2,0x1
   11414:	00888893          	addi	a7,a7,8
   11418:	00860613          	addi	a2,a2,8 # 1008 <exit-0xf0ac>
   1141c:	00b88333          	add	t1,a7,a1
   11420:	41d60633          	sub	a2,a2,t4
   11424:	40660633          	sub	a2,a2,t1
   11428:	01461613          	slli	a2,a2,0x14
   1142c:	01465593          	srli	a1,a2,0x14
   11430:	00040513          	mv	a0,s0
   11434:	03012623          	sw	a6,44(sp)
   11438:	03c12423          	sw	t3,40(sp)
   1143c:	02f12223          	sw	a5,36(sp)
   11440:	02d12023          	sw	a3,32(sp)
   11444:	00e12e23          	sw	a4,28(sp)
   11448:	01112c23          	sw	a7,24(sp)
   1144c:	01d12a23          	sw	t4,20(sp)
   11450:	00612823          	sw	t1,16(sp)
   11454:	00b12623          	sw	a1,12(sp)
   11458:	175000ef          	jal	11dcc <_sbrk_r>
   1145c:	fff00613          	li	a2,-1
   11460:	00c12583          	lw	a1,12(sp)
   11464:	01012303          	lw	t1,16(sp)
   11468:	01412e83          	lw	t4,20(sp)
   1146c:	01812883          	lw	a7,24(sp)
   11470:	01c12703          	lw	a4,28(sp)
   11474:	02012683          	lw	a3,32(sp)
   11478:	02412783          	lw	a5,36(sp)
   1147c:	02812e03          	lw	t3,40(sp)
   11480:	02c12803          	lw	a6,44(sp)
   11484:	44c50c63          	beq	a0,a2,118dc <_malloc_r+0x7f4>
   11488:	000e2603          	lw	a2,0(t3)
   1148c:	41150533          	sub	a0,a0,a7
   11490:	00b50533          	add	a0,a0,a1
   11494:	00156513          	ori	a0,a0,1
   11498:	01182423          	sw	a7,8(a6)
   1149c:	00c58633          	add	a2,a1,a2
   114a0:	00a8a223          	sw	a0,4(a7)
   114a4:	00ce2023          	sw	a2,0(t3)
   114a8:	03078e63          	beq	a5,a6,114e4 <_malloc_r+0x3fc>
   114ac:	00f00513          	li	a0,15
   114b0:	3ee57463          	bgeu	a0,a4,11898 <_malloc_r+0x7b0>
   114b4:	0047a583          	lw	a1,4(a5)
   114b8:	ff470713          	addi	a4,a4,-12
   114bc:	ff877713          	andi	a4,a4,-8
   114c0:	0015f593          	andi	a1,a1,1
   114c4:	00e5e5b3          	or	a1,a1,a4
   114c8:	00b7a223          	sw	a1,4(a5)
   114cc:	00500313          	li	t1,5
   114d0:	00e785b3          	add	a1,a5,a4
   114d4:	0065a223          	sw	t1,4(a1)
   114d8:	0065a423          	sw	t1,8(a1)
   114dc:	40e56863          	bltu	a0,a4,118ec <_malloc_r+0x804>
   114e0:	0048a503          	lw	a0,4(a7)
   114e4:	d581a703          	lw	a4,-680(gp) # 13630 <__malloc_max_sbrked_mem>
   114e8:	00c77463          	bgeu	a4,a2,114f0 <_malloc_r+0x408>
   114ec:	d4c1ac23          	sw	a2,-680(gp) # 13630 <__malloc_max_sbrked_mem>
   114f0:	d541a703          	lw	a4,-684(gp) # 1362c <__malloc_max_total_mem>
   114f4:	00c77463          	bgeu	a4,a2,114fc <_malloc_r+0x414>
   114f8:	d4c1aa23          	sw	a2,-684(gp) # 1362c <__malloc_max_total_mem>
   114fc:	00088793          	mv	a5,a7
   11500:	21c0006f          	j	1171c <_malloc_r+0x634>
   11504:	00482303          	lw	t1,4(a6)
   11508:	d8dff06f          	j	11294 <_malloc_r+0x1ac>
   1150c:	0016e713          	ori	a4,a3,1
   11510:	00e7a223          	sw	a4,4(a5)
   11514:	00d786b3          	add	a3,a5,a3
   11518:	00166613          	ori	a2,a2,1
   1151c:	00d82423          	sw	a3,8(a6)
   11520:	00040513          	mv	a0,s0
   11524:	00c6a223          	sw	a2,4(a3)
   11528:	00f12623          	sw	a5,12(sp)
   1152c:	438000ef          	jal	11964 <__malloc_unlock>
   11530:	00c12783          	lw	a5,12(sp)
   11534:	03c12083          	lw	ra,60(sp)
   11538:	03812403          	lw	s0,56(sp)
   1153c:	00878513          	addi	a0,a5,8
   11540:	04010113          	addi	sp,sp,64
   11544:	00008067          	ret
   11548:	0087a603          	lw	a2,8(a5)
   1154c:	00e78733          	add	a4,a5,a4
   11550:	00472683          	lw	a3,4(a4)
   11554:	00b62623          	sw	a1,12(a2)
   11558:	00f12623          	sw	a5,12(sp)
   1155c:	0016e693          	ori	a3,a3,1
   11560:	00c5a423          	sw	a2,8(a1)
   11564:	00040513          	mv	a0,s0
   11568:	00d72223          	sw	a3,4(a4)
   1156c:	3f8000ef          	jal	11964 <__malloc_unlock>
   11570:	00c12783          	lw	a5,12(sp)
   11574:	03c12083          	lw	ra,60(sp)
   11578:	03812403          	lw	s0,56(sp)
   1157c:	00878513          	addi	a0,a5,8
   11580:	04010113          	addi	sp,sp,64
   11584:	00008067          	ret
   11588:	00c72783          	lw	a5,12(a4)
   1158c:	00288893          	addi	a7,a7,2
   11590:	c8f708e3          	beq	a4,a5,11220 <_malloc_r+0x138>
   11594:	ba1ff06f          	j	11134 <_malloc_r+0x4c>
   11598:	00975613          	srli	a2,a4,0x9
   1159c:	00400593          	li	a1,4
   115a0:	14c5fe63          	bgeu	a1,a2,116fc <_malloc_r+0x614>
   115a4:	01400593          	li	a1,20
   115a8:	28c5e063          	bltu	a1,a2,11828 <_malloc_r+0x740>
   115ac:	05c60513          	addi	a0,a2,92
   115b0:	00351513          	slli	a0,a0,0x3
   115b4:	05b60593          	addi	a1,a2,91
   115b8:	00a80533          	add	a0,a6,a0
   115bc:	00052603          	lw	a2,0(a0)
   115c0:	ff850513          	addi	a0,a0,-8
   115c4:	00c51863          	bne	a0,a2,115d4 <_malloc_r+0x4ec>
   115c8:	1e00006f          	j	117a8 <_malloc_r+0x6c0>
   115cc:	00862603          	lw	a2,8(a2)
   115d0:	00c50863          	beq	a0,a2,115e0 <_malloc_r+0x4f8>
   115d4:	00462583          	lw	a1,4(a2)
   115d8:	ffc5f593          	andi	a1,a1,-4
   115dc:	feb768e3          	bltu	a4,a1,115cc <_malloc_r+0x4e4>
   115e0:	00c62503          	lw	a0,12(a2)
   115e4:	00a7a623          	sw	a0,12(a5)
   115e8:	00c7a423          	sw	a2,8(a5)
   115ec:	00f52423          	sw	a5,8(a0)
   115f0:	00f62623          	sw	a5,12(a2)
   115f4:	ca1ff06f          	j	11294 <_malloc_r+0x1ac>
   115f8:	01400713          	li	a4,20
   115fc:	14f77063          	bgeu	a4,a5,1173c <_malloc_r+0x654>
   11600:	05400713          	li	a4,84
   11604:	24f76063          	bltu	a4,a5,11844 <_malloc_r+0x75c>
   11608:	00c6d793          	srli	a5,a3,0xc
   1160c:	06f78893          	addi	a7,a5,111
   11610:	06e78e13          	addi	t3,a5,110
   11614:	00389513          	slli	a0,a7,0x3
   11618:	bc5ff06f          	j	111dc <_malloc_r+0xf4>
   1161c:	001f8f93          	addi	t6,t6,1
   11620:	003ff793          	andi	a5,t6,3
   11624:	00830313          	addi	t1,t1,8
   11628:	12078863          	beqz	a5,11758 <_malloc_r+0x670>
   1162c:	00c32703          	lw	a4,12(t1)
   11630:	cb9ff06f          	j	112e8 <_malloc_r+0x200>
   11634:	0087a503          	lw	a0,8(a5)
   11638:	0016e893          	ori	a7,a3,1
   1163c:	0117a223          	sw	a7,4(a5)
   11640:	00e52623          	sw	a4,12(a0)
   11644:	00a72423          	sw	a0,8(a4)
   11648:	00d786b3          	add	a3,a5,a3
   1164c:	00d82a23          	sw	a3,20(a6)
   11650:	00d82823          	sw	a3,16(a6)
   11654:	0015e713          	ori	a4,a1,1
   11658:	00c78633          	add	a2,a5,a2
   1165c:	01c6a623          	sw	t3,12(a3)
   11660:	01c6a423          	sw	t3,8(a3)
   11664:	00e6a223          	sw	a4,4(a3)
   11668:	00040513          	mv	a0,s0
   1166c:	00b62023          	sw	a1,0(a2)
   11670:	00f12623          	sw	a5,12(sp)
   11674:	2f0000ef          	jal	11964 <__malloc_unlock>
   11678:	00c12783          	lw	a5,12(sp)
   1167c:	00878513          	addi	a0,a5,8
   11680:	b0dff06f          	j	1118c <_malloc_r+0xa4>
   11684:	0036d893          	srli	a7,a3,0x3
   11688:	00868713          	addi	a4,a3,8
   1168c:	a91ff06f          	j	1111c <_malloc_r+0x34>
   11690:	00e78733          	add	a4,a5,a4
   11694:	00472683          	lw	a3,4(a4)
   11698:	00f12623          	sw	a5,12(sp)
   1169c:	00040513          	mv	a0,s0
   116a0:	0016e693          	ori	a3,a3,1
   116a4:	00d72223          	sw	a3,4(a4)
   116a8:	2bc000ef          	jal	11964 <__malloc_unlock>
   116ac:	00c12783          	lw	a5,12(sp)
   116b0:	00878513          	addi	a0,a5,8
   116b4:	ad9ff06f          	j	1118c <_malloc_r+0xa4>
   116b8:	0016e593          	ori	a1,a3,1
   116bc:	00b7a223          	sw	a1,4(a5)
   116c0:	00d786b3          	add	a3,a5,a3
   116c4:	00d82a23          	sw	a3,20(a6)
   116c8:	00d82823          	sw	a3,16(a6)
   116cc:	00166593          	ori	a1,a2,1
   116d0:	00e78733          	add	a4,a5,a4
   116d4:	01c6a623          	sw	t3,12(a3)
   116d8:	01c6a423          	sw	t3,8(a3)
   116dc:	00b6a223          	sw	a1,4(a3)
   116e0:	00040513          	mv	a0,s0
   116e4:	00c72023          	sw	a2,0(a4)
   116e8:	00f12623          	sw	a5,12(sp)
   116ec:	278000ef          	jal	11964 <__malloc_unlock>
   116f0:	00c12783          	lw	a5,12(sp)
   116f4:	00878513          	addi	a0,a5,8
   116f8:	a95ff06f          	j	1118c <_malloc_r+0xa4>
   116fc:	00675613          	srli	a2,a4,0x6
   11700:	03960513          	addi	a0,a2,57
   11704:	00351513          	slli	a0,a0,0x3
   11708:	03860593          	addi	a1,a2,56
   1170c:	eadff06f          	j	115b8 <_malloc_r+0x4d0>
   11710:	15078863          	beq	a5,a6,11860 <_malloc_r+0x778>
   11714:	00882783          	lw	a5,8(a6)
   11718:	0047a503          	lw	a0,4(a5)
   1171c:	ffc57513          	andi	a0,a0,-4
   11720:	40d50633          	sub	a2,a0,a3
   11724:	00d56663          	bltu	a0,a3,11730 <_malloc_r+0x648>
   11728:	01062713          	slti	a4,a2,16
   1172c:	de0700e3          	beqz	a4,1150c <_malloc_r+0x424>
   11730:	00040513          	mv	a0,s0
   11734:	230000ef          	jal	11964 <__malloc_unlock>
   11738:	a51ff06f          	j	11188 <_malloc_r+0xa0>
   1173c:	05c78893          	addi	a7,a5,92
   11740:	05b78e13          	addi	t3,a5,91
   11744:	00389513          	slli	a0,a7,0x3
   11748:	a95ff06f          	j	111dc <_malloc_r+0xf4>
   1174c:	008f2783          	lw	a5,8(t5)
   11750:	fff88893          	addi	a7,a7,-1
   11754:	21e79263          	bne	a5,t5,11958 <_malloc_r+0x870>
   11758:	0038f793          	andi	a5,a7,3
   1175c:	ff8f0f13          	addi	t5,t5,-8
   11760:	fe0796e3          	bnez	a5,1174c <_malloc_r+0x664>
   11764:	00482703          	lw	a4,4(a6)
   11768:	fff54793          	not	a5,a0
   1176c:	00e7f7b3          	and	a5,a5,a4
   11770:	00f82223          	sw	a5,4(a6)
   11774:	00151513          	slli	a0,a0,0x1
   11778:	fff50713          	addi	a4,a0,-1
   1177c:	bcf778e3          	bgeu	a4,a5,1134c <_malloc_r+0x264>
   11780:	00f57733          	and	a4,a0,a5
   11784:	00071a63          	bnez	a4,11798 <_malloc_r+0x6b0>
   11788:	00151513          	slli	a0,a0,0x1
   1178c:	00f57733          	and	a4,a0,a5
   11790:	004f8f93          	addi	t6,t6,4
   11794:	fe070ae3          	beqz	a4,11788 <_malloc_r+0x6a0>
   11798:	000f8893          	mv	a7,t6
   1179c:	b39ff06f          	j	112d4 <_malloc_r+0x1ec>
   117a0:	01058593          	addi	a1,a1,16
   117a4:	bedff06f          	j	11390 <_malloc_r+0x2a8>
   117a8:	4025d593          	srai	a1,a1,0x2
   117ac:	00100713          	li	a4,1
   117b0:	00b71733          	sll	a4,a4,a1
   117b4:	00e36333          	or	t1,t1,a4
   117b8:	00682223          	sw	t1,4(a6)
   117bc:	e29ff06f          	j	115e4 <_malloc_r+0x4fc>
   117c0:	00b88333          	add	t1,a7,a1
   117c4:	40600633          	neg	a2,t1
   117c8:	01461613          	slli	a2,a2,0x14
   117cc:	01465593          	srli	a1,a2,0x14
   117d0:	00040513          	mv	a0,s0
   117d4:	03012423          	sw	a6,40(sp)
   117d8:	03c12223          	sw	t3,36(sp)
   117dc:	02f12023          	sw	a5,32(sp)
   117e0:	00d12e23          	sw	a3,28(sp)
   117e4:	00e12c23          	sw	a4,24(sp)
   117e8:	01112a23          	sw	a7,20(sp)
   117ec:	00b12623          	sw	a1,12(sp)
   117f0:	00612823          	sw	t1,16(sp)
   117f4:	5d8000ef          	jal	11dcc <_sbrk_r>
   117f8:	fff00613          	li	a2,-1
   117fc:	00c12583          	lw	a1,12(sp)
   11800:	01412883          	lw	a7,20(sp)
   11804:	01812703          	lw	a4,24(sp)
   11808:	01c12683          	lw	a3,28(sp)
   1180c:	02012783          	lw	a5,32(sp)
   11810:	02412e03          	lw	t3,36(sp)
   11814:	02812803          	lw	a6,40(sp)
   11818:	c6c518e3          	bne	a0,a2,11488 <_malloc_r+0x3a0>
   1181c:	01012503          	lw	a0,16(sp)
   11820:	00000593          	li	a1,0
   11824:	c65ff06f          	j	11488 <_malloc_r+0x3a0>
   11828:	05400593          	li	a1,84
   1182c:	06c5ec63          	bltu	a1,a2,118a4 <_malloc_r+0x7bc>
   11830:	00c75613          	srli	a2,a4,0xc
   11834:	06f60513          	addi	a0,a2,111
   11838:	00351513          	slli	a0,a0,0x3
   1183c:	06e60593          	addi	a1,a2,110
   11840:	d79ff06f          	j	115b8 <_malloc_r+0x4d0>
   11844:	15400713          	li	a4,340
   11848:	06f76c63          	bltu	a4,a5,118c0 <_malloc_r+0x7d8>
   1184c:	00f6d793          	srli	a5,a3,0xf
   11850:	07878893          	addi	a7,a5,120
   11854:	07778e13          	addi	t3,a5,119
   11858:	00389513          	slli	a0,a7,0x3
   1185c:	981ff06f          	j	111dc <_malloc_r+0xf4>
   11860:	eb818e13          	addi	t3,gp,-328 # 13790 <__malloc_current_mallinfo>
   11864:	000e2e83          	lw	t4,0(t3)
   11868:	01d58eb3          	add	t4,a1,t4
   1186c:	01de2023          	sw	t4,0(t3)
   11870:	b7dff06f          	j	113ec <_malloc_r+0x304>
   11874:	01489f13          	slli	t5,a7,0x14
   11878:	b60f1ae3          	bnez	t5,113ec <_malloc_r+0x304>
   1187c:	00882883          	lw	a7,8(a6)
   11880:	00b705b3          	add	a1,a4,a1
   11884:	0015e513          	ori	a0,a1,1
   11888:	00a8a223          	sw	a0,4(a7)
   1188c:	c59ff06f          	j	114e4 <_malloc_r+0x3fc>
   11890:	d511a023          	sw	a7,-704(gp) # 13618 <__malloc_sbrk_base>
   11894:	b71ff06f          	j	11404 <_malloc_r+0x31c>
   11898:	00100793          	li	a5,1
   1189c:	00f8a223          	sw	a5,4(a7)
   118a0:	e91ff06f          	j	11730 <_malloc_r+0x648>
   118a4:	15400593          	li	a1,340
   118a8:	06c5ec63          	bltu	a1,a2,11920 <_malloc_r+0x838>
   118ac:	00f75613          	srli	a2,a4,0xf
   118b0:	07860513          	addi	a0,a2,120
   118b4:	00351513          	slli	a0,a0,0x3
   118b8:	07760593          	addi	a1,a2,119
   118bc:	cfdff06f          	j	115b8 <_malloc_r+0x4d0>
   118c0:	55400713          	li	a4,1364
   118c4:	06f76c63          	bltu	a4,a5,1193c <_malloc_r+0x854>
   118c8:	0126d793          	srli	a5,a3,0x12
   118cc:	07d78893          	addi	a7,a5,125
   118d0:	07c78e13          	addi	t3,a5,124
   118d4:	00389513          	slli	a0,a7,0x3
   118d8:	905ff06f          	j	111dc <_malloc_r+0xf4>
   118dc:	ff8e8e93          	addi	t4,t4,-8
   118e0:	01d30533          	add	a0,t1,t4
   118e4:	00000593          	li	a1,0
   118e8:	ba1ff06f          	j	11488 <_malloc_r+0x3a0>
   118ec:	00040513          	mv	a0,s0
   118f0:	00878593          	addi	a1,a5,8
   118f4:	01012a23          	sw	a6,20(sp)
   118f8:	01c12823          	sw	t3,16(sp)
   118fc:	00d12623          	sw	a3,12(sp)
   11900:	d00ff0ef          	jal	10e00 <_free_r>
   11904:	01412803          	lw	a6,20(sp)
   11908:	01012e03          	lw	t3,16(sp)
   1190c:	00c12683          	lw	a3,12(sp)
   11910:	00882883          	lw	a7,8(a6)
   11914:	000e2603          	lw	a2,0(t3)
   11918:	0048a503          	lw	a0,4(a7)
   1191c:	bc9ff06f          	j	114e4 <_malloc_r+0x3fc>
   11920:	55400593          	li	a1,1364
   11924:	02c5e463          	bltu	a1,a2,1194c <_malloc_r+0x864>
   11928:	01275613          	srli	a2,a4,0x12
   1192c:	07d60513          	addi	a0,a2,125
   11930:	00351513          	slli	a0,a0,0x3
   11934:	07c60593          	addi	a1,a2,124
   11938:	c81ff06f          	j	115b8 <_malloc_r+0x4d0>
   1193c:	3f800513          	li	a0,1016
   11940:	07f00893          	li	a7,127
   11944:	07e00e13          	li	t3,126
   11948:	895ff06f          	j	111dc <_malloc_r+0xf4>
   1194c:	3f800513          	li	a0,1016
   11950:	07e00593          	li	a1,126
   11954:	c65ff06f          	j	115b8 <_malloc_r+0x4d0>
   11958:	00482783          	lw	a5,4(a6)
   1195c:	e19ff06f          	j	11774 <_malloc_r+0x68c>

00011960 <__malloc_lock>:
   11960:	00008067          	ret

00011964 <__malloc_unlock>:
   11964:	00008067          	ret

00011968 <_fclose_r>:
   11968:	ff010113          	addi	sp,sp,-16
   1196c:	00112623          	sw	ra,12(sp)
   11970:	01212023          	sw	s2,0(sp)
   11974:	02058863          	beqz	a1,119a4 <_fclose_r+0x3c>
   11978:	00812423          	sw	s0,8(sp)
   1197c:	00912223          	sw	s1,4(sp)
   11980:	00058413          	mv	s0,a1
   11984:	00050493          	mv	s1,a0
   11988:	00050663          	beqz	a0,11994 <_fclose_r+0x2c>
   1198c:	03452783          	lw	a5,52(a0)
   11990:	0c078c63          	beqz	a5,11a68 <_fclose_r+0x100>
   11994:	00c41783          	lh	a5,12(s0)
   11998:	02079263          	bnez	a5,119bc <_fclose_r+0x54>
   1199c:	00812403          	lw	s0,8(sp)
   119a0:	00412483          	lw	s1,4(sp)
   119a4:	00c12083          	lw	ra,12(sp)
   119a8:	00000913          	li	s2,0
   119ac:	00090513          	mv	a0,s2
   119b0:	00012903          	lw	s2,0(sp)
   119b4:	01010113          	addi	sp,sp,16
   119b8:	00008067          	ret
   119bc:	00040593          	mv	a1,s0
   119c0:	00048513          	mv	a0,s1
   119c4:	0b8000ef          	jal	11a7c <__sflush_r>
   119c8:	02c42783          	lw	a5,44(s0)
   119cc:	00050913          	mv	s2,a0
   119d0:	00078a63          	beqz	a5,119e4 <_fclose_r+0x7c>
   119d4:	01c42583          	lw	a1,28(s0)
   119d8:	00048513          	mv	a0,s1
   119dc:	000780e7          	jalr	a5
   119e0:	06054463          	bltz	a0,11a48 <_fclose_r+0xe0>
   119e4:	00c45783          	lhu	a5,12(s0)
   119e8:	0807f793          	andi	a5,a5,128
   119ec:	06079663          	bnez	a5,11a58 <_fclose_r+0xf0>
   119f0:	03042583          	lw	a1,48(s0)
   119f4:	00058c63          	beqz	a1,11a0c <_fclose_r+0xa4>
   119f8:	04040793          	addi	a5,s0,64
   119fc:	00f58663          	beq	a1,a5,11a08 <_fclose_r+0xa0>
   11a00:	00048513          	mv	a0,s1
   11a04:	bfcff0ef          	jal	10e00 <_free_r>
   11a08:	02042823          	sw	zero,48(s0)
   11a0c:	04442583          	lw	a1,68(s0)
   11a10:	00058863          	beqz	a1,11a20 <_fclose_r+0xb8>
   11a14:	00048513          	mv	a0,s1
   11a18:	be8ff0ef          	jal	10e00 <_free_r>
   11a1c:	04042223          	sw	zero,68(s0)
   11a20:	b49fe0ef          	jal	10568 <__sfp_lock_acquire>
   11a24:	00041623          	sh	zero,12(s0)
   11a28:	b45fe0ef          	jal	1056c <__sfp_lock_release>
   11a2c:	00c12083          	lw	ra,12(sp)
   11a30:	00812403          	lw	s0,8(sp)
   11a34:	00412483          	lw	s1,4(sp)
   11a38:	00090513          	mv	a0,s2
   11a3c:	00012903          	lw	s2,0(sp)
   11a40:	01010113          	addi	sp,sp,16
   11a44:	00008067          	ret
   11a48:	00c45783          	lhu	a5,12(s0)
   11a4c:	fff00913          	li	s2,-1
   11a50:	0807f793          	andi	a5,a5,128
   11a54:	f8078ee3          	beqz	a5,119f0 <_fclose_r+0x88>
   11a58:	01042583          	lw	a1,16(s0)
   11a5c:	00048513          	mv	a0,s1
   11a60:	ba0ff0ef          	jal	10e00 <_free_r>
   11a64:	f8dff06f          	j	119f0 <_fclose_r+0x88>
   11a68:	addfe0ef          	jal	10544 <__sinit>
   11a6c:	f29ff06f          	j	11994 <_fclose_r+0x2c>

00011a70 <fclose>:
   11a70:	00050593          	mv	a1,a0
   11a74:	d3c1a503          	lw	a0,-708(gp) # 13614 <_impure_ptr>
   11a78:	ef1ff06f          	j	11968 <_fclose_r>

00011a7c <__sflush_r>:
   11a7c:	00c59703          	lh	a4,12(a1)
   11a80:	fe010113          	addi	sp,sp,-32
   11a84:	00812c23          	sw	s0,24(sp)
   11a88:	01312623          	sw	s3,12(sp)
   11a8c:	00112e23          	sw	ra,28(sp)
   11a90:	00877793          	andi	a5,a4,8
   11a94:	00058413          	mv	s0,a1
   11a98:	00050993          	mv	s3,a0
   11a9c:	12079263          	bnez	a5,11bc0 <__sflush_r+0x144>
   11aa0:	000017b7          	lui	a5,0x1
   11aa4:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf8b4>
   11aa8:	0045a683          	lw	a3,4(a1)
   11aac:	00f767b3          	or	a5,a4,a5
   11ab0:	00f59623          	sh	a5,12(a1)
   11ab4:	18d05c63          	blez	a3,11c4c <__sflush_r+0x1d0>
   11ab8:	02842803          	lw	a6,40(s0)
   11abc:	0e080663          	beqz	a6,11ba8 <__sflush_r+0x12c>
   11ac0:	00912a23          	sw	s1,20(sp)
   11ac4:	01371693          	slli	a3,a4,0x13
   11ac8:	0009a483          	lw	s1,0(s3)
   11acc:	0009a023          	sw	zero,0(s3)
   11ad0:	1806ca63          	bltz	a3,11c64 <__sflush_r+0x1e8>
   11ad4:	01c42583          	lw	a1,28(s0)
   11ad8:	00000613          	li	a2,0
   11adc:	00100693          	li	a3,1
   11ae0:	00098513          	mv	a0,s3
   11ae4:	000800e7          	jalr	a6
   11ae8:	fff00793          	li	a5,-1
   11aec:	00050613          	mv	a2,a0
   11af0:	1af50c63          	beq	a0,a5,11ca8 <__sflush_r+0x22c>
   11af4:	00c41783          	lh	a5,12(s0)
   11af8:	02842803          	lw	a6,40(s0)
   11afc:	0047f793          	andi	a5,a5,4
   11b00:	00078e63          	beqz	a5,11b1c <__sflush_r+0xa0>
   11b04:	00442703          	lw	a4,4(s0)
   11b08:	03042783          	lw	a5,48(s0)
   11b0c:	40e60633          	sub	a2,a2,a4
   11b10:	00078663          	beqz	a5,11b1c <__sflush_r+0xa0>
   11b14:	03c42783          	lw	a5,60(s0)
   11b18:	40f60633          	sub	a2,a2,a5
   11b1c:	01c42583          	lw	a1,28(s0)
   11b20:	00000693          	li	a3,0
   11b24:	00098513          	mv	a0,s3
   11b28:	000800e7          	jalr	a6
   11b2c:	fff00713          	li	a4,-1
   11b30:	00c41783          	lh	a5,12(s0)
   11b34:	12e51c63          	bne	a0,a4,11c6c <__sflush_r+0x1f0>
   11b38:	0009a683          	lw	a3,0(s3)
   11b3c:	01d00713          	li	a4,29
   11b40:	18d76263          	bltu	a4,a3,11cc4 <__sflush_r+0x248>
   11b44:	20400737          	lui	a4,0x20400
   11b48:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec6b9>
   11b4c:	00d75733          	srl	a4,a4,a3
   11b50:	00177713          	andi	a4,a4,1
   11b54:	16070863          	beqz	a4,11cc4 <__sflush_r+0x248>
   11b58:	01042683          	lw	a3,16(s0)
   11b5c:	fffff737          	lui	a4,0xfffff
   11b60:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffebeb7>
   11b64:	00e7f733          	and	a4,a5,a4
   11b68:	00e41623          	sh	a4,12(s0)
   11b6c:	00042223          	sw	zero,4(s0)
   11b70:	00d42023          	sw	a3,0(s0)
   11b74:	01379713          	slli	a4,a5,0x13
   11b78:	00075663          	bgez	a4,11b84 <__sflush_r+0x108>
   11b7c:	0009a783          	lw	a5,0(s3)
   11b80:	10078863          	beqz	a5,11c90 <__sflush_r+0x214>
   11b84:	03042583          	lw	a1,48(s0)
   11b88:	0099a023          	sw	s1,0(s3)
   11b8c:	10058a63          	beqz	a1,11ca0 <__sflush_r+0x224>
   11b90:	04040793          	addi	a5,s0,64
   11b94:	00f58663          	beq	a1,a5,11ba0 <__sflush_r+0x124>
   11b98:	00098513          	mv	a0,s3
   11b9c:	a64ff0ef          	jal	10e00 <_free_r>
   11ba0:	01412483          	lw	s1,20(sp)
   11ba4:	02042823          	sw	zero,48(s0)
   11ba8:	01c12083          	lw	ra,28(sp)
   11bac:	01812403          	lw	s0,24(sp)
   11bb0:	00c12983          	lw	s3,12(sp)
   11bb4:	00000513          	li	a0,0
   11bb8:	02010113          	addi	sp,sp,32
   11bbc:	00008067          	ret
   11bc0:	01212823          	sw	s2,16(sp)
   11bc4:	0105a903          	lw	s2,16(a1)
   11bc8:	08090a63          	beqz	s2,11c5c <__sflush_r+0x1e0>
   11bcc:	00912a23          	sw	s1,20(sp)
   11bd0:	0005a483          	lw	s1,0(a1)
   11bd4:	00377713          	andi	a4,a4,3
   11bd8:	0125a023          	sw	s2,0(a1)
   11bdc:	412484b3          	sub	s1,s1,s2
   11be0:	00000793          	li	a5,0
   11be4:	00071463          	bnez	a4,11bec <__sflush_r+0x170>
   11be8:	0145a783          	lw	a5,20(a1)
   11bec:	00f42423          	sw	a5,8(s0)
   11bf0:	00904863          	bgtz	s1,11c00 <__sflush_r+0x184>
   11bf4:	0640006f          	j	11c58 <__sflush_r+0x1dc>
   11bf8:	00a90933          	add	s2,s2,a0
   11bfc:	04905e63          	blez	s1,11c58 <__sflush_r+0x1dc>
   11c00:	02442783          	lw	a5,36(s0)
   11c04:	01c42583          	lw	a1,28(s0)
   11c08:	00048693          	mv	a3,s1
   11c0c:	00090613          	mv	a2,s2
   11c10:	00098513          	mv	a0,s3
   11c14:	000780e7          	jalr	a5
   11c18:	40a484b3          	sub	s1,s1,a0
   11c1c:	fca04ee3          	bgtz	a0,11bf8 <__sflush_r+0x17c>
   11c20:	00c45783          	lhu	a5,12(s0)
   11c24:	01012903          	lw	s2,16(sp)
   11c28:	0407e793          	ori	a5,a5,64
   11c2c:	01c12083          	lw	ra,28(sp)
   11c30:	00f41623          	sh	a5,12(s0)
   11c34:	01812403          	lw	s0,24(sp)
   11c38:	01412483          	lw	s1,20(sp)
   11c3c:	00c12983          	lw	s3,12(sp)
   11c40:	fff00513          	li	a0,-1
   11c44:	02010113          	addi	sp,sp,32
   11c48:	00008067          	ret
   11c4c:	03c5a683          	lw	a3,60(a1)
   11c50:	e6d044e3          	bgtz	a3,11ab8 <__sflush_r+0x3c>
   11c54:	f55ff06f          	j	11ba8 <__sflush_r+0x12c>
   11c58:	01412483          	lw	s1,20(sp)
   11c5c:	01012903          	lw	s2,16(sp)
   11c60:	f49ff06f          	j	11ba8 <__sflush_r+0x12c>
   11c64:	05042603          	lw	a2,80(s0)
   11c68:	e95ff06f          	j	11afc <__sflush_r+0x80>
   11c6c:	01042683          	lw	a3,16(s0)
   11c70:	fffff737          	lui	a4,0xfffff
   11c74:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffebeb7>
   11c78:	00e7f733          	and	a4,a5,a4
   11c7c:	00e41623          	sh	a4,12(s0)
   11c80:	00042223          	sw	zero,4(s0)
   11c84:	00d42023          	sw	a3,0(s0)
   11c88:	01379713          	slli	a4,a5,0x13
   11c8c:	ee075ce3          	bgez	a4,11b84 <__sflush_r+0x108>
   11c90:	03042583          	lw	a1,48(s0)
   11c94:	04a42823          	sw	a0,80(s0)
   11c98:	0099a023          	sw	s1,0(s3)
   11c9c:	ee059ae3          	bnez	a1,11b90 <__sflush_r+0x114>
   11ca0:	01412483          	lw	s1,20(sp)
   11ca4:	f05ff06f          	j	11ba8 <__sflush_r+0x12c>
   11ca8:	0009a783          	lw	a5,0(s3)
   11cac:	e40784e3          	beqz	a5,11af4 <__sflush_r+0x78>
   11cb0:	fe378713          	addi	a4,a5,-29
   11cb4:	00070c63          	beqz	a4,11ccc <__sflush_r+0x250>
   11cb8:	fea78793          	addi	a5,a5,-22
   11cbc:	00078863          	beqz	a5,11ccc <__sflush_r+0x250>
   11cc0:	00c45783          	lhu	a5,12(s0)
   11cc4:	0407e793          	ori	a5,a5,64
   11cc8:	f65ff06f          	j	11c2c <__sflush_r+0x1b0>
   11ccc:	0099a023          	sw	s1,0(s3)
   11cd0:	01412483          	lw	s1,20(sp)
   11cd4:	ed5ff06f          	j	11ba8 <__sflush_r+0x12c>

00011cd8 <_fflush_r>:
   11cd8:	00050793          	mv	a5,a0
   11cdc:	00050663          	beqz	a0,11ce8 <_fflush_r+0x10>
   11ce0:	03452703          	lw	a4,52(a0)
   11ce4:	00070e63          	beqz	a4,11d00 <_fflush_r+0x28>
   11ce8:	00c59703          	lh	a4,12(a1)
   11cec:	00071663          	bnez	a4,11cf8 <_fflush_r+0x20>
   11cf0:	00000513          	li	a0,0
   11cf4:	00008067          	ret
   11cf8:	00078513          	mv	a0,a5
   11cfc:	d81ff06f          	j	11a7c <__sflush_r>
   11d00:	fe010113          	addi	sp,sp,-32
   11d04:	00b12623          	sw	a1,12(sp)
   11d08:	00112e23          	sw	ra,28(sp)
   11d0c:	00a12423          	sw	a0,8(sp)
   11d10:	835fe0ef          	jal	10544 <__sinit>
   11d14:	00c12583          	lw	a1,12(sp)
   11d18:	00812783          	lw	a5,8(sp)
   11d1c:	00c59703          	lh	a4,12(a1)
   11d20:	00070a63          	beqz	a4,11d34 <_fflush_r+0x5c>
   11d24:	01c12083          	lw	ra,28(sp)
   11d28:	00078513          	mv	a0,a5
   11d2c:	02010113          	addi	sp,sp,32
   11d30:	d4dff06f          	j	11a7c <__sflush_r>
   11d34:	01c12083          	lw	ra,28(sp)
   11d38:	00000513          	li	a0,0
   11d3c:	02010113          	addi	sp,sp,32
   11d40:	00008067          	ret

00011d44 <fflush>:
   11d44:	06050063          	beqz	a0,11da4 <fflush+0x60>
   11d48:	00050593          	mv	a1,a0
   11d4c:	d3c1a503          	lw	a0,-708(gp) # 13614 <_impure_ptr>
   11d50:	00050663          	beqz	a0,11d5c <fflush+0x18>
   11d54:	03452783          	lw	a5,52(a0)
   11d58:	00078c63          	beqz	a5,11d70 <fflush+0x2c>
   11d5c:	00c59783          	lh	a5,12(a1)
   11d60:	00079663          	bnez	a5,11d6c <fflush+0x28>
   11d64:	00000513          	li	a0,0
   11d68:	00008067          	ret
   11d6c:	d11ff06f          	j	11a7c <__sflush_r>
   11d70:	fe010113          	addi	sp,sp,-32
   11d74:	00b12623          	sw	a1,12(sp)
   11d78:	00a12423          	sw	a0,8(sp)
   11d7c:	00112e23          	sw	ra,28(sp)
   11d80:	fc4fe0ef          	jal	10544 <__sinit>
   11d84:	00c12583          	lw	a1,12(sp)
   11d88:	00812503          	lw	a0,8(sp)
   11d8c:	00c59783          	lh	a5,12(a1)
   11d90:	02079863          	bnez	a5,11dc0 <fflush+0x7c>
   11d94:	01c12083          	lw	ra,28(sp)
   11d98:	00000513          	li	a0,0
   11d9c:	02010113          	addi	sp,sp,32
   11da0:	00008067          	ret
   11da4:	00013637          	lui	a2,0x13
   11da8:	000125b7          	lui	a1,0x12
   11dac:	00013537          	lui	a0,0x13
   11db0:	0d860613          	addi	a2,a2,216 # 130d8 <__sglue>
   11db4:	cd858593          	addi	a1,a1,-808 # 11cd8 <_fflush_r>
   11db8:	0e850513          	addi	a0,a0,232 # 130e8 <_impure_data>
   11dbc:	fe4fe06f          	j	105a0 <_fwalk_sglue>
   11dc0:	01c12083          	lw	ra,28(sp)
   11dc4:	02010113          	addi	sp,sp,32
   11dc8:	cb5ff06f          	j	11a7c <__sflush_r>

00011dcc <_sbrk_r>:
   11dcc:	ff010113          	addi	sp,sp,-16
   11dd0:	00812423          	sw	s0,8(sp)
   11dd4:	00912223          	sw	s1,4(sp)
   11dd8:	00050493          	mv	s1,a0
   11ddc:	00058513          	mv	a0,a1
   11de0:	00112623          	sw	ra,12(sp)
   11de4:	d401a623          	sw	zero,-692(gp) # 13624 <errno>
   11de8:	220000ef          	jal	12008 <_sbrk>
   11dec:	fff00793          	li	a5,-1
   11df0:	00f50c63          	beq	a0,a5,11e08 <_sbrk_r+0x3c>
   11df4:	00c12083          	lw	ra,12(sp)
   11df8:	00812403          	lw	s0,8(sp)
   11dfc:	00412483          	lw	s1,4(sp)
   11e00:	01010113          	addi	sp,sp,16
   11e04:	00008067          	ret
   11e08:	d4c1a783          	lw	a5,-692(gp) # 13624 <errno>
   11e0c:	fe0784e3          	beqz	a5,11df4 <_sbrk_r+0x28>
   11e10:	00c12083          	lw	ra,12(sp)
   11e14:	00812403          	lw	s0,8(sp)
   11e18:	00f4a023          	sw	a5,0(s1)
   11e1c:	00412483          	lw	s1,4(sp)
   11e20:	01010113          	addi	sp,sp,16
   11e24:	00008067          	ret

00011e28 <__libc_fini_array>:
   11e28:	ff010113          	addi	sp,sp,-16
   11e2c:	00812423          	sw	s0,8(sp)
   11e30:	000137b7          	lui	a5,0x13
   11e34:	00013437          	lui	s0,0x13
   11e38:	0d878793          	addi	a5,a5,216 # 130d8 <__sglue>
   11e3c:	0d440413          	addi	s0,s0,212 # 130d4 <__do_global_dtors_aux_fini_array_entry>
   11e40:	408787b3          	sub	a5,a5,s0
   11e44:	00912223          	sw	s1,4(sp)
   11e48:	00112623          	sw	ra,12(sp)
   11e4c:	4027d493          	srai	s1,a5,0x2
   11e50:	02048063          	beqz	s1,11e70 <__libc_fini_array+0x48>
   11e54:	ffc40413          	addi	s0,s0,-4
   11e58:	00f40433          	add	s0,s0,a5
   11e5c:	00042783          	lw	a5,0(s0)
   11e60:	fff48493          	addi	s1,s1,-1
   11e64:	ffc40413          	addi	s0,s0,-4
   11e68:	000780e7          	jalr	a5
   11e6c:	fe0498e3          	bnez	s1,11e5c <__libc_fini_array+0x34>
   11e70:	00c12083          	lw	ra,12(sp)
   11e74:	00812403          	lw	s0,8(sp)
   11e78:	00412483          	lw	s1,4(sp)
   11e7c:	01010113          	addi	sp,sp,16
   11e80:	00008067          	ret

00011e84 <__register_exitproc>:
   11e84:	d501a783          	lw	a5,-688(gp) # 13628 <__atexit>
   11e88:	04078c63          	beqz	a5,11ee0 <__register_exitproc+0x5c>
   11e8c:	0047a703          	lw	a4,4(a5)
   11e90:	01f00813          	li	a6,31
   11e94:	06e84e63          	blt	a6,a4,11f10 <__register_exitproc+0x8c>
   11e98:	00271813          	slli	a6,a4,0x2
   11e9c:	02050663          	beqz	a0,11ec8 <__register_exitproc+0x44>
   11ea0:	01078333          	add	t1,a5,a6
   11ea4:	08c32423          	sw	a2,136(t1)
   11ea8:	1887a883          	lw	a7,392(a5)
   11eac:	00100613          	li	a2,1
   11eb0:	00e61633          	sll	a2,a2,a4
   11eb4:	00c8e8b3          	or	a7,a7,a2
   11eb8:	1917a423          	sw	a7,392(a5)
   11ebc:	10d32423          	sw	a3,264(t1)
   11ec0:	00200693          	li	a3,2
   11ec4:	02d50463          	beq	a0,a3,11eec <__register_exitproc+0x68>
   11ec8:	00170713          	addi	a4,a4,1
   11ecc:	00e7a223          	sw	a4,4(a5)
   11ed0:	010787b3          	add	a5,a5,a6
   11ed4:	00b7a423          	sw	a1,8(a5)
   11ed8:	00000513          	li	a0,0
   11edc:	00008067          	ret
   11ee0:	ee018793          	addi	a5,gp,-288 # 137b8 <__atexit0>
   11ee4:	d4f1a823          	sw	a5,-688(gp) # 13628 <__atexit>
   11ee8:	fa5ff06f          	j	11e8c <__register_exitproc+0x8>
   11eec:	18c7a683          	lw	a3,396(a5)
   11ef0:	00170713          	addi	a4,a4,1
   11ef4:	00e7a223          	sw	a4,4(a5)
   11ef8:	00c6e6b3          	or	a3,a3,a2
   11efc:	18d7a623          	sw	a3,396(a5)
   11f00:	010787b3          	add	a5,a5,a6
   11f04:	00b7a423          	sw	a1,8(a5)
   11f08:	00000513          	li	a0,0
   11f0c:	00008067          	ret
   11f10:	fff00513          	li	a0,-1
   11f14:	00008067          	ret

00011f18 <_close>:
   11f18:	03900893          	li	a7,57
   11f1c:	00000073          	ecall
   11f20:	00054463          	bltz	a0,11f28 <_close+0x10>
   11f24:	00008067          	ret
   11f28:	fe010113          	addi	sp,sp,-32
   11f2c:	00112e23          	sw	ra,28(sp)
   11f30:	00a12623          	sw	a0,12(sp)
   11f34:	18c000ef          	jal	120c0 <__errno>
   11f38:	00c12783          	lw	a5,12(sp)
   11f3c:	01c12083          	lw	ra,28(sp)
   11f40:	40f007b3          	neg	a5,a5
   11f44:	00f52023          	sw	a5,0(a0)
   11f48:	fff00793          	li	a5,-1
   11f4c:	00078513          	mv	a0,a5
   11f50:	02010113          	addi	sp,sp,32
   11f54:	00008067          	ret

00011f58 <_exit>:
   11f58:	05d00893          	li	a7,93
   11f5c:	00000073          	ecall
   11f60:	00054463          	bltz	a0,11f68 <_exit+0x10>
   11f64:	0000006f          	j	11f64 <_exit+0xc>
   11f68:	fe010113          	addi	sp,sp,-32
   11f6c:	00112e23          	sw	ra,28(sp)
   11f70:	00a12623          	sw	a0,12(sp)
   11f74:	14c000ef          	jal	120c0 <__errno>
   11f78:	00c12783          	lw	a5,12(sp)
   11f7c:	40f007b3          	neg	a5,a5
   11f80:	00f52023          	sw	a5,0(a0)
   11f84:	0000006f          	j	11f84 <_exit+0x2c>

00011f88 <_lseek>:
   11f88:	03e00893          	li	a7,62
   11f8c:	00000073          	ecall
   11f90:	00054463          	bltz	a0,11f98 <_lseek+0x10>
   11f94:	00008067          	ret
   11f98:	fe010113          	addi	sp,sp,-32
   11f9c:	00112e23          	sw	ra,28(sp)
   11fa0:	00a12623          	sw	a0,12(sp)
   11fa4:	11c000ef          	jal	120c0 <__errno>
   11fa8:	00c12783          	lw	a5,12(sp)
   11fac:	01c12083          	lw	ra,28(sp)
   11fb0:	40f007b3          	neg	a5,a5
   11fb4:	00f52023          	sw	a5,0(a0)
   11fb8:	fff00793          	li	a5,-1
   11fbc:	00078513          	mv	a0,a5
   11fc0:	02010113          	addi	sp,sp,32
   11fc4:	00008067          	ret

00011fc8 <_read>:
   11fc8:	03f00893          	li	a7,63
   11fcc:	00000073          	ecall
   11fd0:	00054463          	bltz	a0,11fd8 <_read+0x10>
   11fd4:	00008067          	ret
   11fd8:	fe010113          	addi	sp,sp,-32
   11fdc:	00112e23          	sw	ra,28(sp)
   11fe0:	00a12623          	sw	a0,12(sp)
   11fe4:	0dc000ef          	jal	120c0 <__errno>
   11fe8:	00c12783          	lw	a5,12(sp)
   11fec:	01c12083          	lw	ra,28(sp)
   11ff0:	40f007b3          	neg	a5,a5
   11ff4:	00f52023          	sw	a5,0(a0)
   11ff8:	fff00793          	li	a5,-1
   11ffc:	00078513          	mv	a0,a5
   12000:	02010113          	addi	sp,sp,32
   12004:	00008067          	ret

00012008 <_sbrk>:
   12008:	d601a783          	lw	a5,-672(gp) # 13638 <heap_end.0>
   1200c:	ff010113          	addi	sp,sp,-16
   12010:	00112623          	sw	ra,12(sp)
   12014:	00050713          	mv	a4,a0
   12018:	02079063          	bnez	a5,12038 <_sbrk+0x30>
   1201c:	0d600893          	li	a7,214
   12020:	00000513          	li	a0,0
   12024:	00000073          	ecall
   12028:	fff00793          	li	a5,-1
   1202c:	02f50c63          	beq	a0,a5,12064 <_sbrk+0x5c>
   12030:	00050793          	mv	a5,a0
   12034:	d6a1a023          	sw	a0,-672(gp) # 13638 <heap_end.0>
   12038:	00f70533          	add	a0,a4,a5
   1203c:	0d600893          	li	a7,214
   12040:	00000073          	ecall
   12044:	d601a783          	lw	a5,-672(gp) # 13638 <heap_end.0>
   12048:	00f70733          	add	a4,a4,a5
   1204c:	00e51c63          	bne	a0,a4,12064 <_sbrk+0x5c>
   12050:	00c12083          	lw	ra,12(sp)
   12054:	d6a1a023          	sw	a0,-672(gp) # 13638 <heap_end.0>
   12058:	00078513          	mv	a0,a5
   1205c:	01010113          	addi	sp,sp,16
   12060:	00008067          	ret
   12064:	05c000ef          	jal	120c0 <__errno>
   12068:	00c12083          	lw	ra,12(sp)
   1206c:	00c00793          	li	a5,12
   12070:	00f52023          	sw	a5,0(a0)
   12074:	fff00513          	li	a0,-1
   12078:	01010113          	addi	sp,sp,16
   1207c:	00008067          	ret

00012080 <_write>:
   12080:	04000893          	li	a7,64
   12084:	00000073          	ecall
   12088:	00054463          	bltz	a0,12090 <_write+0x10>
   1208c:	00008067          	ret
   12090:	fe010113          	addi	sp,sp,-32
   12094:	00112e23          	sw	ra,28(sp)
   12098:	00a12623          	sw	a0,12(sp)
   1209c:	024000ef          	jal	120c0 <__errno>
   120a0:	00c12783          	lw	a5,12(sp)
   120a4:	01c12083          	lw	ra,28(sp)
   120a8:	40f007b3          	neg	a5,a5
   120ac:	00f52023          	sw	a5,0(a0)
   120b0:	fff00793          	li	a5,-1
   120b4:	00078513          	mv	a0,a5
   120b8:	02010113          	addi	sp,sp,32
   120bc:	00008067          	ret

000120c0 <__errno>:
   120c0:	d3c1a503          	lw	a0,-708(gp) # 13614 <_impure_ptr>
   120c4:	00008067          	ret
