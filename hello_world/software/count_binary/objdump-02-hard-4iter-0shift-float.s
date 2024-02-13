
count_binary.elf:     file format elf32-littlenios2


Disassembly of section .entry:

00800000 <__reset>:
  800000:	00820014 	movui	r2,2048
  800004:	1001483a 	initi	r2
  800008:	10bff804 	addi	r2,r2,-32
  80000c:	00bffd16 	blt	zero,r2,800004 <__reset+0x4>
  800010:	00402034 	movhi	at,128
  800014:	08408e14 	ori	at,at,568
  800018:	0800683a 	jmp	at
  80001c:	00000000 	call	0 <__alt_mem_sdram-0x800000>

Disassembly of section .exceptions:

00800020 <alt_exception>:
  800020:	deffed04 	addi	sp,sp,-76
  800024:	dfc00015 	stw	ra,0(sp)
  800028:	d8400215 	stw	at,8(sp)
  80002c:	d8800315 	stw	r2,12(sp)
  800030:	d8c00415 	stw	r3,16(sp)
  800034:	d9000515 	stw	r4,20(sp)
  800038:	d9400615 	stw	r5,24(sp)
  80003c:	d9800715 	stw	r6,28(sp)
  800040:	d9c00815 	stw	r7,32(sp)
  800044:	000b307a 	rdctl	r5,estatus
  800048:	da000915 	stw	r8,36(sp)
  80004c:	da400a15 	stw	r9,40(sp)
  800050:	da800b15 	stw	r10,44(sp)
  800054:	dac00c15 	stw	r11,48(sp)
  800058:	db000d15 	stw	r12,52(sp)
  80005c:	db400e15 	stw	r13,56(sp)
  800060:	db800f15 	stw	r14,60(sp)
  800064:	dbc01015 	stw	r15,64(sp)
  800068:	d9401115 	stw	r5,68(sp)
  80006c:	ebffff04 	addi	r15,ea,-4
  800070:	dbc01215 	stw	r15,72(sp)
  800074:	0009313a 	rdctl	r4,ipending
  800078:	2880004c 	andi	r2,r5,1
  80007c:	10000326 	beq	r2,zero,80008c <alt_exception+0x6c>
  800080:	20000226 	beq	r4,zero,80008c <alt_exception+0x6c>
  800084:	08000fc0 	call	8000fc <alt_irq_handler>
  800088:	00000706 	br	8000a8 <alt_exception+0x88>
  80008c:	df401215 	stw	ea,72(sp)
  800090:	e8bfff17 	ldw	r2,-4(ea)
  800094:	e93fff04 	addi	r4,ea,-4
  800098:	08001c40 	call	8001c4 <alt_instruction_exception_entry>
  80009c:	1000021e 	bne	r2,zero,8000a8 <alt_exception+0x88>
  8000a0:	ebffff04 	addi	r15,ea,-4
  8000a4:	dbc01215 	stw	r15,72(sp)
  8000a8:	d9401117 	ldw	r5,68(sp)
  8000ac:	df401217 	ldw	ea,72(sp)
  8000b0:	dfc00017 	ldw	ra,0(sp)
  8000b4:	2801707a 	wrctl	estatus,r5
  8000b8:	d8400217 	ldw	at,8(sp)
  8000bc:	d8800317 	ldw	r2,12(sp)
  8000c0:	d8c00417 	ldw	r3,16(sp)
  8000c4:	d9000517 	ldw	r4,20(sp)
  8000c8:	d9400617 	ldw	r5,24(sp)
  8000cc:	d9800717 	ldw	r6,28(sp)
  8000d0:	d9c00817 	ldw	r7,32(sp)
  8000d4:	da000917 	ldw	r8,36(sp)
  8000d8:	da400a17 	ldw	r9,40(sp)
  8000dc:	da800b17 	ldw	r10,44(sp)
  8000e0:	dac00c17 	ldw	r11,48(sp)
  8000e4:	db000d17 	ldw	r12,52(sp)
  8000e8:	db400e17 	ldw	r13,56(sp)
  8000ec:	db800f17 	ldw	r14,60(sp)
  8000f0:	dbc01017 	ldw	r15,64(sp)
  8000f4:	dec01304 	addi	sp,sp,76
  8000f8:	ef80083a 	eret

008000fc <alt_irq_handler>:
  8000fc:	defff904 	addi	sp,sp,-28
  800100:	dfc00615 	stw	ra,24(sp)
  800104:	df000515 	stw	fp,20(sp)
  800108:	df000504 	addi	fp,sp,20
  80010c:	0001883a 	nop
  800110:	0005313a 	rdctl	r2,ipending
  800114:	e0bffc15 	stw	r2,-16(fp)
  800118:	e0bffc17 	ldw	r2,-16(fp)
  80011c:	e0bfff15 	stw	r2,-4(fp)
  800120:	e03ffd15 	stw	zero,-12(fp)
  800124:	00800044 	movi	r2,1
  800128:	e0bffe15 	stw	r2,-8(fp)
  80012c:	e0ffff17 	ldw	r3,-4(fp)
  800130:	e0bffe17 	ldw	r2,-8(fp)
  800134:	1884703a 	and	r2,r3,r2
  800138:	10001126 	beq	r2,zero,800180 <alt_irq_handler+0x84>
  80013c:	e0bffd17 	ldw	r2,-12(fp)
  800140:	100690fa 	slli	r3,r2,3
  800144:	00802074 	movhi	r2,129
  800148:	1885883a 	add	r2,r3,r2
  80014c:	10d13a17 	ldw	r3,17640(r2)
  800150:	e0bffd17 	ldw	r2,-12(fp)
  800154:	100890fa 	slli	r4,r2,3
  800158:	00802074 	movhi	r2,129
  80015c:	2085883a 	add	r2,r4,r2
  800160:	10913b17 	ldw	r2,17644(r2)
  800164:	1009883a 	mov	r4,r2
  800168:	183ee83a 	callr	r3
  80016c:	0001883a 	nop
  800170:	0005313a 	rdctl	r2,ipending
  800174:	e0bffb15 	stw	r2,-20(fp)
  800178:	e0bffb17 	ldw	r2,-20(fp)
  80017c:	00000706 	br	80019c <alt_irq_handler+0xa0>
  800180:	e0bffe17 	ldw	r2,-8(fp)
  800184:	1085883a 	add	r2,r2,r2
  800188:	e0bffe15 	stw	r2,-8(fp)
  80018c:	e0bffd17 	ldw	r2,-12(fp)
  800190:	10800044 	addi	r2,r2,1
  800194:	e0bffd15 	stw	r2,-12(fp)
  800198:	003fe406 	br	80012c <alt_irq_handler+0x30>
  80019c:	e0bfff15 	stw	r2,-4(fp)
  8001a0:	e0bfff17 	ldw	r2,-4(fp)
  8001a4:	103fde1e 	bne	r2,zero,800120 <alt_irq_handler+0x24>
  8001a8:	0001883a 	nop
  8001ac:	0001883a 	nop
  8001b0:	e037883a 	mov	sp,fp
  8001b4:	dfc00117 	ldw	ra,4(sp)
  8001b8:	df000017 	ldw	fp,0(sp)
  8001bc:	dec00204 	addi	sp,sp,8
  8001c0:	f800283a 	ret

008001c4 <alt_instruction_exception_entry>:
  8001c4:	defffb04 	addi	sp,sp,-20
  8001c8:	dfc00415 	stw	ra,16(sp)
  8001cc:	df000315 	stw	fp,12(sp)
  8001d0:	df000304 	addi	fp,sp,12
  8001d4:	e13ffd15 	stw	r4,-12(fp)
  8001d8:	000531fa 	rdctl	r2,exception
  8001dc:	e0bfff15 	stw	r2,-4(fp)
  8001e0:	e0bfff17 	ldw	r2,-4(fp)
  8001e4:	1004d0ba 	srli	r2,r2,2
  8001e8:	108007cc 	andi	r2,r2,31
  8001ec:	e0bfff15 	stw	r2,-4(fp)
  8001f0:	0005333a 	rdctl	r2,badaddr
  8001f4:	e0bffe15 	stw	r2,-8(fp)
  8001f8:	d0a70f17 	ldw	r2,-25540(gp)
  8001fc:	10000726 	beq	r2,zero,80021c <alt_instruction_exception_entry+0x58>
  800200:	d0a70f17 	ldw	r2,-25540(gp)
  800204:	e0ffff17 	ldw	r3,-4(fp)
  800208:	e1bffe17 	ldw	r6,-8(fp)
  80020c:	e17ffd17 	ldw	r5,-12(fp)
  800210:	1809883a 	mov	r4,r3
  800214:	103ee83a 	callr	r2
  800218:	00000206 	br	800224 <alt_instruction_exception_entry+0x60>
  80021c:	003da03a 	break	0
  800220:	0005883a 	mov	r2,zero
  800224:	e037883a 	mov	sp,fp
  800228:	dfc00117 	ldw	ra,4(sp)
  80022c:	df000017 	ldw	fp,0(sp)
  800230:	dec00204 	addi	sp,sp,8
  800234:	f800283a 	ret

Disassembly of section .text:

00800238 <_start>:
  800238:	00820014 	movui	r2,2048
  80023c:	10000033 	initd	0(r2)
  800240:	10bff804 	addi	r2,r2,-32
  800244:	00bffd16 	blt	zero,r2,80023c <_start+0x4>
  800248:	06c04034 	movhi	sp,256
  80024c:	dec00014 	ori	sp,sp,0
  800250:	06802074 	movhi	gp,129
  800254:	d6aa2014 	ori	gp,gp,43136
  800258:	00802074 	movhi	r2,129
  80025c:	10912414 	ori	r2,r2,17552
  800260:	00c02074 	movhi	r3,129
  800264:	18d17a14 	ori	r3,r3,17896
  800268:	10c00326 	beq	r2,r3,800278 <_start+0x40>
  80026c:	10000015 	stw	zero,0(r2)
  800270:	10800104 	addi	r2,r2,4
  800274:	10fffd36 	bltu	r2,r3,80026c <_start+0x34>
  800278:	080e26c0 	call	80e26c <alt_load>
  80027c:	080e40c0 	call	80e40c <alt_main>

00800280 <alt_after_alt_main>:
  800280:	003fff06 	br	800280 <alt_after_alt_main>

00800284 <generateVector>:
  800284:	defffd04 	addi	sp,sp,-12
  800288:	dc400115 	stw	r17,4(sp)
  80028c:	04400434 	movhi	r17,16
  800290:	dc000015 	stw	r16,0(sp)
  800294:	dfc00215 	stw	ra,8(sp)
  800298:	8c7c0004 	addi	r17,r17,-4096
  80029c:	20000015 	stw	zero,0(r4)
  8002a0:	24000104 	addi	r16,r4,4
  8002a4:	2463883a 	add	r17,r4,r17
  8002a8:	0005883a 	mov	r2,zero
  8002ac:	00000106 	br	8002b4 <generateVector+0x30>
  8002b0:	84000104 	addi	r16,r16,4
  8002b4:	1009883a 	mov	r4,r2
  8002b8:	014ea034 	movhi	r5,14976
  8002bc:	08004ec0 	call	8004ec <__addsf3>
  8002c0:	80800015 	stw	r2,0(r16)
  8002c4:	847ffa1e 	bne	r16,r17,8002b0 <generateVector+0x2c>
  8002c8:	dfc00217 	ldw	ra,8(sp)
  8002cc:	dc400117 	ldw	r17,4(sp)
  8002d0:	dc000017 	ldw	r16,0(sp)
  8002d4:	dec00304 	addi	sp,sp,12
  8002d8:	f800283a 	ret

008002dc <sumVector>:
  8002dc:	defffb04 	addi	sp,sp,-20
  8002e0:	dfc00415 	stw	ra,16(sp)
  8002e4:	dcc00315 	stw	r19,12(sp)
  8002e8:	dc800215 	stw	r18,8(sp)
  8002ec:	dc400115 	stw	r17,4(sp)
  8002f0:	dc000015 	stw	r16,0(sp)
  8002f4:	0140190e 	bge	zero,r5,80035c <sumVector+0x80>
  8002f8:	280a90ba 	slli	r5,r5,2
  8002fc:	2021883a 	mov	r16,r4
  800300:	0023883a 	mov	r17,zero
  800304:	2167883a 	add	r19,r4,r5
  800308:	84800017 	ldw	r18,0(r16)
  80030c:	84000104 	addi	r16,r16,4
  800310:	900b883a 	mov	r5,r18
  800314:	9009883a 	mov	r4,r18
  800318:	08009480 	call	800948 <__mulsf3>
  80031c:	900b883a 	mov	r5,r18
  800320:	1009883a 	mov	r4,r2
  800324:	08004ec0 	call	8004ec <__addsf3>
  800328:	8809883a 	mov	r4,r17
  80032c:	100b883a 	mov	r5,r2
  800330:	08004ec0 	call	8004ec <__addsf3>
  800334:	1023883a 	mov	r17,r2
  800338:	9c3ff31e 	bne	r19,r16,800308 <sumVector+0x2c>
  80033c:	8805883a 	mov	r2,r17
  800340:	dfc00417 	ldw	ra,16(sp)
  800344:	dcc00317 	ldw	r19,12(sp)
  800348:	dc800217 	ldw	r18,8(sp)
  80034c:	dc400117 	ldw	r17,4(sp)
  800350:	dc000017 	ldw	r16,0(sp)
  800354:	dec00504 	addi	sp,sp,20
  800358:	f800283a 	ret
  80035c:	0023883a 	mov	r17,zero
  800360:	003ff606 	br	80033c <sumVector+0x60>

00800364 <main>:
  800364:	023ffc34 	movhi	r8,65520
  800368:	defff904 	addi	sp,sp,-28
  80036c:	4203fe04 	addi	r8,r8,4088
  800370:	01002074 	movhi	r4,129
  800374:	dfc00615 	stw	ra,24(sp)
  800378:	dc400115 	stw	r17,4(sp)
  80037c:	dc000015 	stw	r16,0(sp)
  800380:	dd400515 	stw	r21,20(sp)
  800384:	dd000415 	stw	r20,16(sp)
  800388:	dcc00315 	stw	r19,12(sp)
  80038c:	dc800215 	stw	r18,8(sp)
  800390:	21018f04 	addi	r4,r4,1596
  800394:	da37883a 	add	sp,sp,r8
  800398:	08010e80 	call	8010e8 <puts>
  80039c:	01002074 	movhi	r4,129
  8003a0:	21019104 	addi	r4,r4,1604
  8003a4:	01400044 	movi	r5,1
  8003a8:	0800fe40 	call	800fe4 <printf>
  8003ac:	00c00434 	movhi	r3,16
  8003b0:	d9000104 	addi	r4,sp,4
  8003b4:	00bffc34 	movhi	r2,65520
  8003b8:	18fc0104 	addi	r3,r3,-4092
  8003bc:	1083ff04 	addi	r2,r2,4092
  8003c0:	1907883a 	add	r3,r3,r4
  8003c4:	1885883a 	add	r2,r3,r2
  8003c8:	d8800015 	stw	r2,0(sp)
  8003cc:	10000015 	stw	zero,0(r2)
  8003d0:	14000104 	addi	r16,r2,4
  8003d4:	00800434 	movhi	r2,16
  8003d8:	10bc0004 	addi	r2,r2,-4096
  8003dc:	20a3883a 	add	r17,r4,r2
  8003e0:	0005883a 	mov	r2,zero
  8003e4:	00000106 	br	8003ec <main+0x88>
  8003e8:	84000104 	addi	r16,r16,4
  8003ec:	1009883a 	mov	r4,r2
  8003f0:	014ea034 	movhi	r5,14976
  8003f4:	08004ec0 	call	8004ec <__addsf3>
  8003f8:	80800015 	stw	r2,0(r16)
  8003fc:	847ffa1e 	bne	r16,r17,8003e8 <main+0x84>
  800400:	d8800017 	ldw	r2,0(sp)
  800404:	04c00434 	movhi	r19,16
  800408:	d5670d17 	ldw	r21,-25548(gp)
  80040c:	9cfc0104 	addi	r19,r19,-4092
  800410:	05000104 	movi	r20,4
  800414:	14e7883a 	add	r19,r2,r19
  800418:	dc000017 	ldw	r16,0(sp)
  80041c:	0025883a 	mov	r18,zero
  800420:	84400017 	ldw	r17,0(r16)
  800424:	84000104 	addi	r16,r16,4
  800428:	880b883a 	mov	r5,r17
  80042c:	8809883a 	mov	r4,r17
  800430:	08009480 	call	800948 <__mulsf3>
  800434:	880b883a 	mov	r5,r17
  800438:	1009883a 	mov	r4,r2
  80043c:	08004ec0 	call	8004ec <__addsf3>
  800440:	9009883a 	mov	r4,r18
  800444:	100b883a 	mov	r5,r2
  800448:	08004ec0 	call	8004ec <__addsf3>
  80044c:	1025883a 	mov	r18,r2
  800450:	9c3ff31e 	bne	r19,r16,800420 <main+0xbc>
  800454:	a53fffc4 	addi	r20,r20,-1
  800458:	a03fef1e 	bne	r20,zero,800418 <main+0xb4>
  80045c:	1009883a 	mov	r4,r2
  800460:	0800e3c0 	call	800e3c <__extendsfdf2>
  800464:	01002074 	movhi	r4,129
  800468:	d4270d17 	ldw	r16,-25548(gp)
  80046c:	180d883a 	mov	r6,r3
  800470:	100b883a 	mov	r5,r2
  800474:	21019604 	addi	r4,r4,1624
  800478:	0800fe40 	call	800fe4 <printf>
  80047c:	856bc83a 	sub	r21,r16,r21
  800480:	01002074 	movhi	r4,129
  800484:	a80b883a 	mov	r5,r21
  800488:	01800104 	movi	r6,4
  80048c:	21019904 	addi	r4,r4,1636
  800490:	0800fe40 	call	800fe4 <printf>
  800494:	a809883a 	mov	r4,r21
  800498:	0800d440 	call	800d44 <__floatunsisf>
  80049c:	1009883a 	mov	r4,r2
  8004a0:	0800e3c0 	call	800e3c <__extendsfdf2>
  8004a4:	01002074 	movhi	r4,129
  8004a8:	100b883a 	mov	r5,r2
  8004ac:	180d883a 	mov	r6,r3
  8004b0:	2101a104 	addi	r4,r4,1668
  8004b4:	0800fe40 	call	800fe4 <printf>
  8004b8:	0005883a 	mov	r2,zero
  8004bc:	02000434 	movhi	r8,16
  8004c0:	423c0204 	addi	r8,r8,-4088
  8004c4:	da37883a 	add	sp,sp,r8
  8004c8:	dfc00617 	ldw	ra,24(sp)
  8004cc:	dd400517 	ldw	r21,20(sp)
  8004d0:	dd000417 	ldw	r20,16(sp)
  8004d4:	dcc00317 	ldw	r19,12(sp)
  8004d8:	dc800217 	ldw	r18,8(sp)
  8004dc:	dc400117 	ldw	r17,4(sp)
  8004e0:	dc000017 	ldw	r16,0(sp)
  8004e4:	dec00704 	addi	sp,sp,28
  8004e8:	f800283a 	ret

008004ec <__addsf3>:
  8004ec:	280cd5fa 	srli	r6,r5,23
  8004f0:	2006d5fa 	srli	r3,r4,23
  8004f4:	2010d7fa 	srli	r8,r4,31
  8004f8:	01c02034 	movhi	r7,128
  8004fc:	2818d7fa 	srli	r12,r5,31
  800500:	defffc04 	addi	sp,sp,-16
  800504:	39ffffc4 	addi	r7,r7,-1
  800508:	3914703a 	and	r10,r7,r4
  80050c:	32403fcc 	andi	r9,r6,255
  800510:	dc800215 	stw	r18,8(sp)
  800514:	dc400115 	stw	r17,4(sp)
  800518:	395a703a 	and	r13,r7,r5
  80051c:	1c403fcc 	andi	r17,r3,255
  800520:	dfc00315 	stw	ra,12(sp)
  800524:	dc000015 	stw	r16,0(sp)
  800528:	501c90fa 	slli	r14,r10,3
  80052c:	681690fa 	slli	r11,r13,3
  800530:	500d883a 	mov	r6,r10
  800534:	4025883a 	mov	r18,r8
  800538:	8a45c83a 	sub	r2,r17,r9
  80053c:	43004b26 	beq	r8,r12,80066c <__addsf3+0x180>
  800540:	0080390e 	bge	zero,r2,800628 <__addsf3+0x13c>
  800544:	48006326 	beq	r9,zero,8006d4 <__addsf3+0x1e8>
  800548:	88c03fe0 	cmpeqi	r3,r17,255
  80054c:	1800401e 	bne	r3,zero,800650 <__addsf3+0x164>
  800550:	5ac10034 	orhi	r11,r11,1024
  800554:	10c00708 	cmpgei	r3,r2,28
  800558:	1800ab1e 	bne	r3,zero,800808 <__addsf3+0x31c>
  80055c:	01000804 	movi	r4,32
  800560:	2089c83a 	sub	r4,r4,r2
  800564:	5908983a 	sll	r4,r11,r4
  800568:	5884d83a 	srl	r2,r11,r2
  80056c:	2008c03a 	cmpne	r4,r4,zero
  800570:	1104b03a 	or	r2,r2,r4
  800574:	7085c83a 	sub	r2,r14,r2
  800578:	10c1002c 	andhi	r3,r2,1024
  80057c:	18008526 	beq	r3,zero,800794 <__addsf3+0x2a8>
  800580:	04010034 	movhi	r16,1024
  800584:	843fffc4 	addi	r16,r16,-1
  800588:	1420703a 	and	r16,r2,r16
  80058c:	8009883a 	mov	r4,r16
  800590:	0800f380 	call	800f38 <__clzsi2>
  800594:	10fffec4 	addi	r3,r2,-5
  800598:	80c4983a 	sll	r2,r16,r3
  80059c:	1c409516 	blt	r3,r17,8007f4 <__addsf3+0x308>
  8005a0:	1c47c83a 	sub	r3,r3,r17
  8005a4:	1c000044 	addi	r16,r3,1
  8005a8:	01000804 	movi	r4,32
  8005ac:	2409c83a 	sub	r4,r4,r16
  8005b0:	1108983a 	sll	r4,r2,r4
  8005b4:	1404d83a 	srl	r2,r2,r16
  8005b8:	0023883a 	mov	r17,zero
  8005bc:	2008c03a 	cmpne	r4,r4,zero
  8005c0:	1104b03a 	or	r2,r2,r4
  8005c4:	10c001cc 	andi	r3,r2,7
  8005c8:	18000426 	beq	r3,zero,8005dc <__addsf3+0xf0>
  8005cc:	10c003cc 	andi	r3,r2,15
  8005d0:	18c00120 	cmpeqi	r3,r3,4
  8005d4:	1800011e 	bne	r3,zero,8005dc <__addsf3+0xf0>
  8005d8:	10800104 	addi	r2,r2,4
  8005dc:	10c1002c 	andhi	r3,r2,1024
  8005e0:	18006e26 	beq	r3,zero,80079c <__addsf3+0x2b0>
  8005e4:	88c00044 	addi	r3,r17,1
  8005e8:	19003fe0 	cmpeqi	r4,r3,255
  8005ec:	20006d1e 	bne	r4,zero,8007a4 <__addsf3+0x2b8>
  8005f0:	100491ba 	slli	r2,r2,6
  8005f4:	100cd27a 	srli	r6,r2,9
  8005f8:	18803fcc 	andi	r2,r3,255
  8005fc:	100495fa 	slli	r2,r2,23
  800600:	94803fcc 	andi	r18,r18,255
  800604:	902497fa 	slli	r18,r18,31
  800608:	1184b03a 	or	r2,r2,r6
  80060c:	1484b03a 	or	r2,r2,r18
  800610:	dfc00317 	ldw	ra,12(sp)
  800614:	dc800217 	ldw	r18,8(sp)
  800618:	dc400117 	ldw	r17,4(sp)
  80061c:	dc000017 	ldw	r16,0(sp)
  800620:	dec00404 	addi	sp,sp,16
  800624:	f800283a 	ret
  800628:	10003026 	beq	r2,zero,8006ec <__addsf3+0x200>
  80062c:	4c49c83a 	sub	r4,r9,r17
  800630:	88007f1e 	bne	r17,zero,800830 <__addsf3+0x344>
  800634:	70003f26 	beq	r14,zero,800734 <__addsf3+0x248>
  800638:	213fffc4 	addi	r4,r4,-1
  80063c:	2000b326 	beq	r4,zero,80090c <__addsf3+0x420>
  800640:	48803fe0 	cmpeqi	r2,r9,255
  800644:	10007d26 	beq	r2,zero,80083c <__addsf3+0x350>
  800648:	6025883a 	mov	r18,r12
  80064c:	6815883a 	mov	r10,r13
  800650:	50005426 	beq	r10,zero,8007a4 <__addsf3+0x2b8>
  800654:	00802034 	movhi	r2,128
  800658:	51801034 	orhi	r6,r10,64
  80065c:	10bfffc4 	addi	r2,r2,-1
  800660:	308c703a 	and	r6,r6,r2
  800664:	00ffffc4 	movi	r3,-1
  800668:	003fe306 	br	8005f8 <__addsf3+0x10c>
  80066c:	0080500e 	bge	zero,r2,8007b0 <__addsf3+0x2c4>
  800670:	48002a26 	beq	r9,zero,80071c <__addsf3+0x230>
  800674:	88c03fe0 	cmpeqi	r3,r17,255
  800678:	183ff51e 	bne	r3,zero,800650 <__addsf3+0x164>
  80067c:	5ac10034 	orhi	r11,r11,1024
  800680:	10c00708 	cmpgei	r3,r2,28
  800684:	1800741e 	bne	r3,zero,800858 <__addsf3+0x36c>
  800688:	00c00804 	movi	r3,32
  80068c:	1887c83a 	sub	r3,r3,r2
  800690:	58c6983a 	sll	r3,r11,r3
  800694:	5884d83a 	srl	r2,r11,r2
  800698:	1806c03a 	cmpne	r3,r3,zero
  80069c:	10c4b03a 	or	r2,r2,r3
  8006a0:	1385883a 	add	r2,r2,r14
  8006a4:	10c1002c 	andhi	r3,r2,1024
  8006a8:	18003a26 	beq	r3,zero,800794 <__addsf3+0x2a8>
  8006ac:	8c400044 	addi	r17,r17,1
  8006b0:	88c03fe0 	cmpeqi	r3,r17,255
  8006b4:	18003b1e 	bne	r3,zero,8007a4 <__addsf3+0x2b8>
  8006b8:	1008d07a 	srli	r4,r2,1
  8006bc:	00df8034 	movhi	r3,32256
  8006c0:	18ffffc4 	addi	r3,r3,-1
  8006c4:	1080004c 	andi	r2,r2,1
  8006c8:	20c8703a 	and	r4,r4,r3
  8006cc:	2084b03a 	or	r2,r4,r2
  8006d0:	003fbc06 	br	8005c4 <__addsf3+0xd8>
  8006d4:	58001a26 	beq	r11,zero,800740 <__addsf3+0x254>
  8006d8:	10bfffc4 	addi	r2,r2,-1
  8006dc:	10007c26 	beq	r2,zero,8008d0 <__addsf3+0x3e4>
  8006e0:	88c03fe0 	cmpeqi	r3,r17,255
  8006e4:	183f9b26 	beq	r3,zero,800554 <__addsf3+0x68>
  8006e8:	003fd906 	br	800650 <__addsf3+0x164>
  8006ec:	88800044 	addi	r2,r17,1
  8006f0:	10803f8c 	andi	r2,r2,254
  8006f4:	1000461e 	bne	r2,zero,800810 <__addsf3+0x324>
  8006f8:	88006e1e 	bne	r17,zero,8008b4 <__addsf3+0x3c8>
  8006fc:	70007f26 	beq	r14,zero,8008fc <__addsf3+0x410>
  800700:	583fbd26 	beq	r11,zero,8005f8 <__addsf3+0x10c>
  800704:	72c5c83a 	sub	r2,r14,r11
  800708:	1101002c 	andhi	r4,r2,1024
  80070c:	20008326 	beq	r4,zero,80091c <__addsf3+0x430>
  800710:	5b85c83a 	sub	r2,r11,r14
  800714:	6025883a 	mov	r18,r12
  800718:	003faa06 	br	8005c4 <__addsf3+0xd8>
  80071c:	58000826 	beq	r11,zero,800740 <__addsf3+0x254>
  800720:	10bfffc4 	addi	r2,r2,-1
  800724:	10006826 	beq	r2,zero,8008c8 <__addsf3+0x3dc>
  800728:	88c03fe0 	cmpeqi	r3,r17,255
  80072c:	183fd426 	beq	r3,zero,800680 <__addsf3+0x194>
  800730:	003fc706 	br	800650 <__addsf3+0x164>
  800734:	6025883a 	mov	r18,r12
  800738:	6815883a 	mov	r10,r13
  80073c:	4823883a 	mov	r17,r9
  800740:	88803fe0 	cmpeqi	r2,r17,255
  800744:	103fc21e 	bne	r2,zero,800650 <__addsf3+0x164>
  800748:	00802034 	movhi	r2,128
  80074c:	10bfffc4 	addi	r2,r2,-1
  800750:	508c703a 	and	r6,r10,r2
  800754:	8807883a 	mov	r3,r17
  800758:	003fa706 	br	8005f8 <__addsf3+0x10c>
  80075c:	881f883a 	mov	r15,r17
  800760:	8c400044 	addi	r17,r17,1
  800764:	88803f8c 	andi	r2,r17,254
  800768:	10004a1e 	bne	r2,zero,800894 <__addsf3+0x3a8>
  80076c:	78005a1e 	bne	r15,zero,8008d8 <__addsf3+0x3ec>
  800770:	70006e26 	beq	r14,zero,80092c <__addsf3+0x440>
  800774:	583fa026 	beq	r11,zero,8005f8 <__addsf3+0x10c>
  800778:	72c5883a 	add	r2,r14,r11
  80077c:	10c1002c 	andhi	r3,r2,1024
  800780:	18006f26 	beq	r3,zero,800940 <__addsf3+0x454>
  800784:	00ff0034 	movhi	r3,64512
  800788:	18ffffc4 	addi	r3,r3,-1
  80078c:	10c4703a 	and	r2,r2,r3
  800790:	04400044 	movi	r17,1
  800794:	10c001cc 	andi	r3,r2,7
  800798:	183f8c1e 	bne	r3,zero,8005cc <__addsf3+0xe0>
  80079c:	1014d0fa 	srli	r10,r2,3
  8007a0:	003fe706 	br	800740 <__addsf3+0x254>
  8007a4:	00ffffc4 	movi	r3,-1
  8007a8:	000d883a 	mov	r6,zero
  8007ac:	003f9206 	br	8005f8 <__addsf3+0x10c>
  8007b0:	103fea26 	beq	r2,zero,80075c <__addsf3+0x270>
  8007b4:	4c49c83a 	sub	r4,r9,r17
  8007b8:	88003026 	beq	r17,zero,80087c <__addsf3+0x390>
  8007bc:	48803fe0 	cmpeqi	r2,r9,255
  8007c0:	103fa21e 	bne	r2,zero,80064c <__addsf3+0x160>
  8007c4:	73810034 	orhi	r14,r14,1024
  8007c8:	20800708 	cmpgei	r2,r4,28
  8007cc:	1000491e 	bne	r2,zero,8008f4 <__addsf3+0x408>
  8007d0:	00800804 	movi	r2,32
  8007d4:	1105c83a 	sub	r2,r2,r4
  8007d8:	7084983a 	sll	r2,r14,r2
  8007dc:	7108d83a 	srl	r4,r14,r4
  8007e0:	1004c03a 	cmpne	r2,r2,zero
  8007e4:	2088b03a 	or	r4,r4,r2
  8007e8:	22c5883a 	add	r2,r4,r11
  8007ec:	4823883a 	mov	r17,r9
  8007f0:	003fac06 	br	8006a4 <__addsf3+0x1b8>
  8007f4:	013f0034 	movhi	r4,64512
  8007f8:	213fffc4 	addi	r4,r4,-1
  8007fc:	88e3c83a 	sub	r17,r17,r3
  800800:	1104703a 	and	r2,r2,r4
  800804:	003f6f06 	br	8005c4 <__addsf3+0xd8>
  800808:	00800044 	movi	r2,1
  80080c:	003f5906 	br	800574 <__addsf3+0x88>
  800810:	72e1c83a 	sub	r16,r14,r11
  800814:	8081002c 	andhi	r2,r16,1024
  800818:	1000231e 	bne	r2,zero,8008a8 <__addsf3+0x3bc>
  80081c:	803f5b1e 	bne	r16,zero,80058c <__addsf3+0xa0>
  800820:	0025883a 	mov	r18,zero
  800824:	0007883a 	mov	r3,zero
  800828:	000d883a 	mov	r6,zero
  80082c:	003f7206 	br	8005f8 <__addsf3+0x10c>
  800830:	48803fe0 	cmpeqi	r2,r9,255
  800834:	103f841e 	bne	r2,zero,800648 <__addsf3+0x15c>
  800838:	73810034 	orhi	r14,r14,1024
  80083c:	20800708 	cmpgei	r2,r4,28
  800840:	10000726 	beq	r2,zero,800860 <__addsf3+0x374>
  800844:	01000044 	movi	r4,1
  800848:	5905c83a 	sub	r2,r11,r4
  80084c:	6025883a 	mov	r18,r12
  800850:	4823883a 	mov	r17,r9
  800854:	003f4806 	br	800578 <__addsf3+0x8c>
  800858:	00800044 	movi	r2,1
  80085c:	003f9006 	br	8006a0 <__addsf3+0x1b4>
  800860:	00800804 	movi	r2,32
  800864:	1105c83a 	sub	r2,r2,r4
  800868:	7084983a 	sll	r2,r14,r2
  80086c:	7108d83a 	srl	r4,r14,r4
  800870:	1004c03a 	cmpne	r2,r2,zero
  800874:	2088b03a 	or	r4,r4,r2
  800878:	003ff306 	br	800848 <__addsf3+0x35c>
  80087c:	703fae26 	beq	r14,zero,800738 <__addsf3+0x24c>
  800880:	213fffc4 	addi	r4,r4,-1
  800884:	20002b26 	beq	r4,zero,800934 <__addsf3+0x448>
  800888:	48803fe0 	cmpeqi	r2,r9,255
  80088c:	103fce26 	beq	r2,zero,8007c8 <__addsf3+0x2dc>
  800890:	003f6e06 	br	80064c <__addsf3+0x160>
  800894:	88803fe0 	cmpeqi	r2,r17,255
  800898:	103fc21e 	bne	r2,zero,8007a4 <__addsf3+0x2b8>
  80089c:	72c5883a 	add	r2,r14,r11
  8008a0:	1004d07a 	srli	r2,r2,1
  8008a4:	003fbb06 	br	800794 <__addsf3+0x2a8>
  8008a8:	5ba1c83a 	sub	r16,r11,r14
  8008ac:	6025883a 	mov	r18,r12
  8008b0:	003f3606 	br	80058c <__addsf3+0xa0>
  8008b4:	7000091e 	bne	r14,zero,8008dc <__addsf3+0x3f0>
  8008b8:	583f631e 	bne	r11,zero,800648 <__addsf3+0x15c>
  8008bc:	0025883a 	mov	r18,zero
  8008c0:	380d883a 	mov	r6,r7
  8008c4:	003f6706 	br	800664 <__addsf3+0x178>
  8008c8:	72c5883a 	add	r2,r14,r11
  8008cc:	003f7506 	br	8006a4 <__addsf3+0x1b8>
  8008d0:	72c5c83a 	sub	r2,r14,r11
  8008d4:	003f2806 	br	800578 <__addsf3+0x8c>
  8008d8:	703f5c26 	beq	r14,zero,80064c <__addsf3+0x160>
  8008dc:	583f5c26 	beq	r11,zero,800650 <__addsf3+0x164>
  8008e0:	20c0102c 	andhi	r3,r4,64
  8008e4:	183f5a26 	beq	r3,zero,800650 <__addsf3+0x164>
  8008e8:	2940102c 	andhi	r5,r5,64
  8008ec:	283f581e 	bne	r5,zero,800650 <__addsf3+0x164>
  8008f0:	003f5506 	br	800648 <__addsf3+0x15c>
  8008f4:	01000044 	movi	r4,1
  8008f8:	003fbb06 	br	8007e8 <__addsf3+0x2fc>
  8008fc:	58000826 	beq	r11,zero,800920 <__addsf3+0x434>
  800900:	6025883a 	mov	r18,r12
  800904:	680d883a 	mov	r6,r13
  800908:	003f3b06 	br	8005f8 <__addsf3+0x10c>
  80090c:	5b85c83a 	sub	r2,r11,r14
  800910:	6025883a 	mov	r18,r12
  800914:	4823883a 	mov	r17,r9
  800918:	003f1706 	br	800578 <__addsf3+0x8c>
  80091c:	103f9d1e 	bne	r2,zero,800794 <__addsf3+0x2a8>
  800920:	0025883a 	mov	r18,zero
  800924:	000d883a 	mov	r6,zero
  800928:	003f3306 	br	8005f8 <__addsf3+0x10c>
  80092c:	680d883a 	mov	r6,r13
  800930:	003f3106 	br	8005f8 <__addsf3+0x10c>
  800934:	72c5883a 	add	r2,r14,r11
  800938:	4823883a 	mov	r17,r9
  80093c:	003f5906 	br	8006a4 <__addsf3+0x1b8>
  800940:	0023883a 	mov	r17,zero
  800944:	003f9306 	br	800794 <__addsf3+0x2a8>

00800948 <__mulsf3>:
  800948:	defff504 	addi	sp,sp,-44
  80094c:	dc400215 	stw	r17,8(sp)
  800950:	2022d5fa 	srli	r17,r4,23
  800954:	dc000115 	stw	r16,4(sp)
  800958:	04002034 	movhi	r16,128
  80095c:	dd800715 	stw	r22,28(sp)
  800960:	843fffc4 	addi	r16,r16,-1
  800964:	dfc00a15 	stw	ra,40(sp)
  800968:	df000915 	stw	fp,36(sp)
  80096c:	ddc00815 	stw	r23,32(sp)
  800970:	dd400615 	stw	r21,24(sp)
  800974:	dd000515 	stw	r20,20(sp)
  800978:	dcc00415 	stw	r19,16(sp)
  80097c:	dc800315 	stw	r18,12(sp)
  800980:	8c403fcc 	andi	r17,r17,255
  800984:	202cd7fa 	srli	r22,r4,31
  800988:	8120703a 	and	r16,r16,r4
  80098c:	88005026 	beq	r17,zero,800ad0 <__mulsf3+0x188>
  800990:	88803fe0 	cmpeqi	r2,r17,255
  800994:	1000531e 	bne	r2,zero,800ae4 <__mulsf3+0x19c>
  800998:	802090fa 	slli	r16,r16,3
  80099c:	8c7fe044 	addi	r17,r17,-127
  8009a0:	0025883a 	mov	r18,zero
  8009a4:	84010034 	orhi	r16,r16,1024
  8009a8:	0029883a 	mov	r20,zero
  8009ac:	2804d5fa 	srli	r2,r5,23
  8009b0:	01002034 	movhi	r4,128
  8009b4:	213fffc4 	addi	r4,r4,-1
  8009b8:	10803fcc 	andi	r2,r2,255
  8009bc:	282ed7fa 	srli	r23,r5,31
  8009c0:	2166703a 	and	r19,r4,r5
  8009c4:	10004c26 	beq	r2,zero,800af8 <__mulsf3+0x1b0>
  8009c8:	10c03fe0 	cmpeqi	r3,r2,255
  8009cc:	18001e1e 	bne	r3,zero,800a48 <__mulsf3+0x100>
  8009d0:	980890fa 	slli	r4,r19,3
  8009d4:	10bfe044 	addi	r2,r2,-127
  8009d8:	88a3883a 	add	r17,r17,r2
  8009dc:	24c10034 	orhi	r19,r4,1024
  8009e0:	0007883a 	mov	r3,zero
  8009e4:	90800428 	cmpgeui	r2,r18,16
  8009e8:	b5eaf03a 	xor	r21,r22,r23
  8009ec:	8f000044 	addi	fp,r17,1
  8009f0:	1000481e 	bne	r2,zero,800b14 <__mulsf3+0x1cc>
  8009f4:	902490ba 	slli	r18,r18,2
  8009f8:	00802034 	movhi	r2,128
  8009fc:	9085883a 	add	r2,r18,r2
  800a00:	10828217 	ldw	r2,2568(r2)
  800a04:	1000683a 	jmp	r2
  800a08:	00800b14 	movui	r2,44
  800a0c:	00800a60 	cmpeqi	r2,zero,41
  800a10:	00800a60 	cmpeqi	r2,zero,41
  800a14:	00800a5c 	xori	r2,zero,41
  800a18:	00800a68 	cmpgeui	r2,zero,41
  800a1c:	00800a68 	cmpgeui	r2,zero,41
  800a20:	00800c74 	movhi	r2,49
  800a24:	00800a5c 	xori	r2,zero,41
  800a28:	00800a68 	cmpgeui	r2,zero,41
  800a2c:	00800c74 	movhi	r2,49
  800a30:	00800a68 	cmpgeui	r2,zero,41
  800a34:	00800a5c 	xori	r2,zero,41
  800a38:	00800c04 	movi	r2,48
  800a3c:	00800c04 	movi	r2,48
  800a40:	00800c04 	movi	r2,48
  800a44:	00800cd8 	cmpnei	r2,zero,51
  800a48:	8c403fc4 	addi	r17,r17,255
  800a4c:	98006f1e 	bne	r19,zero,800c0c <__mulsf3+0x2c4>
  800a50:	94800094 	ori	r18,r18,2
  800a54:	00c00084 	movi	r3,2
  800a58:	003fe206 	br	8009e4 <__mulsf3+0x9c>
  800a5c:	b82b883a 	mov	r21,r23
  800a60:	9821883a 	mov	r16,r19
  800a64:	1829883a 	mov	r20,r3
  800a68:	a08000a0 	cmpeqi	r2,r20,2
  800a6c:	1000261e 	bne	r2,zero,800b08 <__mulsf3+0x1c0>
  800a70:	a08000e0 	cmpeqi	r2,r20,3
  800a74:	1000ae1e 	bne	r2,zero,800d30 <__mulsf3+0x3e8>
  800a78:	a0800060 	cmpeqi	r2,r20,1
  800a7c:	10004e26 	beq	r2,zero,800bb8 <__mulsf3+0x270>
  800a80:	0007883a 	mov	r3,zero
  800a84:	0009883a 	mov	r4,zero
  800a88:	1c003fcc 	andi	r16,r3,255
  800a8c:	a8803fcc 	andi	r2,r21,255
  800a90:	802095fa 	slli	r16,r16,23
  800a94:	100497fa 	slli	r2,r2,31
  800a98:	8120b03a 	or	r16,r16,r4
  800a9c:	8084b03a 	or	r2,r16,r2
  800aa0:	dfc00a17 	ldw	ra,40(sp)
  800aa4:	df000917 	ldw	fp,36(sp)
  800aa8:	ddc00817 	ldw	r23,32(sp)
  800aac:	dd800717 	ldw	r22,28(sp)
  800ab0:	dd400617 	ldw	r21,24(sp)
  800ab4:	dd000517 	ldw	r20,20(sp)
  800ab8:	dcc00417 	ldw	r19,16(sp)
  800abc:	dc800317 	ldw	r18,12(sp)
  800ac0:	dc400217 	ldw	r17,8(sp)
  800ac4:	dc000117 	ldw	r16,4(sp)
  800ac8:	dec00b04 	addi	sp,sp,44
  800acc:	f800283a 	ret
  800ad0:	80005d1e 	bne	r16,zero,800c48 <__mulsf3+0x300>
  800ad4:	04800104 	movi	r18,4
  800ad8:	0023883a 	mov	r17,zero
  800adc:	05000044 	movi	r20,1
  800ae0:	003fb206 	br	8009ac <__mulsf3+0x64>
  800ae4:	8000541e 	bne	r16,zero,800c38 <__mulsf3+0x2f0>
  800ae8:	04800204 	movi	r18,8
  800aec:	04403fc4 	movi	r17,255
  800af0:	05000084 	movi	r20,2
  800af4:	003fad06 	br	8009ac <__mulsf3+0x64>
  800af8:	9800471e 	bne	r19,zero,800c18 <__mulsf3+0x2d0>
  800afc:	94800054 	ori	r18,r18,1
  800b00:	00c00044 	movi	r3,1
  800b04:	003fb706 	br	8009e4 <__mulsf3+0x9c>
  800b08:	00ffffc4 	movi	r3,-1
  800b0c:	0009883a 	mov	r4,zero
  800b10:	003fdd06 	br	800a88 <__mulsf3+0x140>
  800b14:	8028d43a 	srli	r20,r16,16
  800b18:	9cbfffcc 	andi	r18,r19,65535
  800b1c:	843fffcc 	andi	r16,r16,65535
  800b20:	900b883a 	mov	r5,r18
  800b24:	8009883a 	mov	r4,r16
  800b28:	0800f8c0 	call	800f8c <__mulsi3>
  800b2c:	9826d43a 	srli	r19,r19,16
  800b30:	900b883a 	mov	r5,r18
  800b34:	a009883a 	mov	r4,r20
  800b38:	1025883a 	mov	r18,r2
  800b3c:	0800f8c0 	call	800f8c <__mulsi3>
  800b40:	980b883a 	mov	r5,r19
  800b44:	a009883a 	mov	r4,r20
  800b48:	1029883a 	mov	r20,r2
  800b4c:	0800f8c0 	call	800f8c <__mulsi3>
  800b50:	9809883a 	mov	r4,r19
  800b54:	800b883a 	mov	r5,r16
  800b58:	1027883a 	mov	r19,r2
  800b5c:	0800f8c0 	call	800f8c <__mulsi3>
  800b60:	9006d43a 	srli	r3,r18,16
  800b64:	1505883a 	add	r2,r2,r20
  800b68:	1887883a 	add	r3,r3,r2
  800b6c:	1d00022e 	bgeu	r3,r20,800b78 <__mulsf3+0x230>
  800b70:	00800074 	movhi	r2,1
  800b74:	98a7883a 	add	r19,r19,r2
  800b78:	1808943a 	slli	r4,r3,16
  800b7c:	1820d43a 	srli	r16,r3,16
  800b80:	94bfffcc 	andi	r18,r18,65535
  800b84:	2489883a 	add	r4,r4,r18
  800b88:	200a91ba 	slli	r5,r4,6
  800b8c:	84e1883a 	add	r16,r16,r19
  800b90:	802091ba 	slli	r16,r16,6
  800b94:	2008d6ba 	srli	r4,r4,26
  800b98:	2804c03a 	cmpne	r2,r5,zero
  800b9c:	80c2002c 	andhi	r3,r16,2048
  800ba0:	1108b03a 	or	r4,r2,r4
  800ba4:	8120b03a 	or	r16,r16,r4
  800ba8:	18005b26 	beq	r3,zero,800d18 <__mulsf3+0x3d0>
  800bac:	8004d07a 	srli	r2,r16,1
  800bb0:	8400004c 	andi	r16,r16,1
  800bb4:	1420b03a 	or	r16,r2,r16
  800bb8:	e0c01fc4 	addi	r3,fp,127
  800bbc:	00c0320e 	bge	zero,r3,800c88 <__mulsf3+0x340>
  800bc0:	808001cc 	andi	r2,r16,7
  800bc4:	10000426 	beq	r2,zero,800bd8 <__mulsf3+0x290>
  800bc8:	808003cc 	andi	r2,r16,15
  800bcc:	10800120 	cmpeqi	r2,r2,4
  800bd0:	1000011e 	bne	r2,zero,800bd8 <__mulsf3+0x290>
  800bd4:	84000104 	addi	r16,r16,4
  800bd8:	8082002c 	andhi	r2,r16,2048
  800bdc:	10000426 	beq	r2,zero,800bf0 <__mulsf3+0x2a8>
  800be0:	00be0034 	movhi	r2,63488
  800be4:	10bfffc4 	addi	r2,r2,-1
  800be8:	80a0703a 	and	r16,r16,r2
  800bec:	e0c02004 	addi	r3,fp,128
  800bf0:	18803fc8 	cmpgei	r2,r3,255
  800bf4:	103fc41e 	bne	r2,zero,800b08 <__mulsf3+0x1c0>
  800bf8:	802091ba 	slli	r16,r16,6
  800bfc:	8008d27a 	srli	r4,r16,9
  800c00:	003fa106 	br	800a88 <__mulsf3+0x140>
  800c04:	b02b883a 	mov	r21,r22
  800c08:	003f9706 	br	800a68 <__mulsf3+0x120>
  800c0c:	948000d4 	ori	r18,r18,3
  800c10:	00c000c4 	movi	r3,3
  800c14:	003f7306 	br	8009e4 <__mulsf3+0x9c>
  800c18:	9809883a 	mov	r4,r19
  800c1c:	0800f380 	call	800f38 <__clzsi2>
  800c20:	10fffec4 	addi	r3,r2,-5
  800c24:	88a3c83a 	sub	r17,r17,r2
  800c28:	98e6983a 	sll	r19,r19,r3
  800c2c:	8c7fe284 	addi	r17,r17,-118
  800c30:	0007883a 	mov	r3,zero
  800c34:	003f6b06 	br	8009e4 <__mulsf3+0x9c>
  800c38:	04800304 	movi	r18,12
  800c3c:	04403fc4 	movi	r17,255
  800c40:	050000c4 	movi	r20,3
  800c44:	003f5906 	br	8009ac <__mulsf3+0x64>
  800c48:	8009883a 	mov	r4,r16
  800c4c:	d9400015 	stw	r5,0(sp)
  800c50:	0800f380 	call	800f38 <__clzsi2>
  800c54:	10fffec4 	addi	r3,r2,-5
  800c58:	047fe284 	movi	r17,-118
  800c5c:	80e0983a 	sll	r16,r16,r3
  800c60:	d9400017 	ldw	r5,0(sp)
  800c64:	88a3c83a 	sub	r17,r17,r2
  800c68:	0025883a 	mov	r18,zero
  800c6c:	0029883a 	mov	r20,zero
  800c70:	003f4e06 	br	8009ac <__mulsf3+0x64>
  800c74:	01002034 	movhi	r4,128
  800c78:	002b883a 	mov	r21,zero
  800c7c:	213fffc4 	addi	r4,r4,-1
  800c80:	00ffffc4 	movi	r3,-1
  800c84:	003f8006 	br	800a88 <__mulsf3+0x140>
  800c88:	00800044 	movi	r2,1
  800c8c:	10c7c83a 	sub	r3,r2,r3
  800c90:	18800708 	cmpgei	r2,r3,28
  800c94:	103f7a1e 	bne	r2,zero,800a80 <__mulsf3+0x138>
  800c98:	e1002784 	addi	r4,fp,158
  800c9c:	8108983a 	sll	r4,r16,r4
  800ca0:	80e0d83a 	srl	r16,r16,r3
  800ca4:	2008c03a 	cmpne	r4,r4,zero
  800ca8:	8120b03a 	or	r16,r16,r4
  800cac:	808001cc 	andi	r2,r16,7
  800cb0:	10000426 	beq	r2,zero,800cc4 <__mulsf3+0x37c>
  800cb4:	808003cc 	andi	r2,r16,15
  800cb8:	10800120 	cmpeqi	r2,r2,4
  800cbc:	1000011e 	bne	r2,zero,800cc4 <__mulsf3+0x37c>
  800cc0:	84000104 	addi	r16,r16,4
  800cc4:	8081002c 	andhi	r2,r16,1024
  800cc8:	10001526 	beq	r2,zero,800d20 <__mulsf3+0x3d8>
  800ccc:	00c00044 	movi	r3,1
  800cd0:	0009883a 	mov	r4,zero
  800cd4:	003f6c06 	br	800a88 <__mulsf3+0x140>
  800cd8:	8080102c 	andhi	r2,r16,64
  800cdc:	10000826 	beq	r2,zero,800d00 <__mulsf3+0x3b8>
  800ce0:	9880102c 	andhi	r2,r19,64
  800ce4:	1000061e 	bne	r2,zero,800d00 <__mulsf3+0x3b8>
  800ce8:	00802034 	movhi	r2,128
  800cec:	99001034 	orhi	r4,r19,64
  800cf0:	10bfffc4 	addi	r2,r2,-1
  800cf4:	2088703a 	and	r4,r4,r2
  800cf8:	b82b883a 	mov	r21,r23
  800cfc:	003fe006 	br	800c80 <__mulsf3+0x338>
  800d00:	00802034 	movhi	r2,128
  800d04:	81001034 	orhi	r4,r16,64
  800d08:	10bfffc4 	addi	r2,r2,-1
  800d0c:	2088703a 	and	r4,r4,r2
  800d10:	b02b883a 	mov	r21,r22
  800d14:	003fda06 	br	800c80 <__mulsf3+0x338>
  800d18:	8839883a 	mov	fp,r17
  800d1c:	003fa606 	br	800bb8 <__mulsf3+0x270>
  800d20:	802091ba 	slli	r16,r16,6
  800d24:	0007883a 	mov	r3,zero
  800d28:	8008d27a 	srli	r4,r16,9
  800d2c:	003f5606 	br	800a88 <__mulsf3+0x140>
  800d30:	00802034 	movhi	r2,128
  800d34:	81001034 	orhi	r4,r16,64
  800d38:	10bfffc4 	addi	r2,r2,-1
  800d3c:	2088703a 	and	r4,r4,r2
  800d40:	003fcf06 	br	800c80 <__mulsf3+0x338>

00800d44 <__floatunsisf>:
  800d44:	defffe04 	addi	sp,sp,-8
  800d48:	dfc00115 	stw	ra,4(sp)
  800d4c:	dc000015 	stw	r16,0(sp)
  800d50:	20000f26 	beq	r4,zero,800d90 <__floatunsisf+0x4c>
  800d54:	2021883a 	mov	r16,r4
  800d58:	0800f380 	call	800f38 <__clzsi2>
  800d5c:	100b883a 	mov	r5,r2
  800d60:	00802784 	movi	r2,158
  800d64:	1145c83a 	sub	r2,r2,r5
  800d68:	10c025c8 	cmpgei	r3,r2,151
  800d6c:	1800111e 	bne	r3,zero,800db4 <__floatunsisf+0x70>
  800d70:	28c00248 	cmpgei	r3,r5,9
  800d74:	18002d26 	beq	r3,zero,800e2c <__floatunsisf+0xe8>
  800d78:	297ffe04 	addi	r5,r5,-8
  800d7c:	8160983a 	sll	r16,r16,r5
  800d80:	00c02034 	movhi	r3,128
  800d84:	18ffffc4 	addi	r3,r3,-1
  800d88:	80e0703a 	and	r16,r16,r3
  800d8c:	00000206 	br	800d98 <__floatunsisf+0x54>
  800d90:	0005883a 	mov	r2,zero
  800d94:	0021883a 	mov	r16,zero
  800d98:	10803fcc 	andi	r2,r2,255
  800d9c:	100495fa 	slli	r2,r2,23
  800da0:	1404b03a 	or	r2,r2,r16
  800da4:	dfc00117 	ldw	ra,4(sp)
  800da8:	dc000017 	ldw	r16,0(sp)
  800dac:	dec00204 	addi	sp,sp,8
  800db0:	f800283a 	ret
  800db4:	10c02690 	cmplti	r3,r2,154
  800db8:	1800071e 	bne	r3,zero,800dd8 <__floatunsisf+0x94>
  800dbc:	290006c4 	addi	r4,r5,27
  800dc0:	8106983a 	sll	r3,r16,r4
  800dc4:	01000144 	movi	r4,5
  800dc8:	2149c83a 	sub	r4,r4,r5
  800dcc:	8120d83a 	srl	r16,r16,r4
  800dd0:	1808c03a 	cmpne	r4,r3,zero
  800dd4:	2420b03a 	or	r16,r4,r16
  800dd8:	28c00190 	cmplti	r3,r5,6
  800ddc:	1800021e 	bne	r3,zero,800de8 <__floatunsisf+0xa4>
  800de0:	28fffec4 	addi	r3,r5,-5
  800de4:	80e0983a 	sll	r16,r16,r3
  800de8:	01bf0034 	movhi	r6,64512
  800dec:	31bfffc4 	addi	r6,r6,-1
  800df0:	80c001cc 	andi	r3,r16,7
  800df4:	8188703a 	and	r4,r16,r6
  800df8:	18000926 	beq	r3,zero,800e20 <__floatunsisf+0xdc>
  800dfc:	80c003cc 	andi	r3,r16,15
  800e00:	18c00120 	cmpeqi	r3,r3,4
  800e04:	1800061e 	bne	r3,zero,800e20 <__floatunsisf+0xdc>
  800e08:	21000104 	addi	r4,r4,4
  800e0c:	20c1002c 	andhi	r3,r4,1024
  800e10:	18000326 	beq	r3,zero,800e20 <__floatunsisf+0xdc>
  800e14:	00c027c4 	movi	r3,159
  800e18:	2188703a 	and	r4,r4,r6
  800e1c:	1945c83a 	sub	r2,r3,r5
  800e20:	202091ba 	slli	r16,r4,6
  800e24:	8020d27a 	srli	r16,r16,9
  800e28:	003fdb06 	br	800d98 <__floatunsisf+0x54>
  800e2c:	01002034 	movhi	r4,128
  800e30:	213fffc4 	addi	r4,r4,-1
  800e34:	8120703a 	and	r16,r16,r4
  800e38:	003fd706 	br	800d98 <__floatunsisf+0x54>

00800e3c <__extendsfdf2>:
  800e3c:	200ad5fa 	srli	r5,r4,23
  800e40:	defffd04 	addi	sp,sp,-12
  800e44:	dc000015 	stw	r16,0(sp)
  800e48:	29403fcc 	andi	r5,r5,255
  800e4c:	04002034 	movhi	r16,128
  800e50:	28800044 	addi	r2,r5,1
  800e54:	dc400115 	stw	r17,4(sp)
  800e58:	843fffc4 	addi	r16,r16,-1
  800e5c:	dfc00215 	stw	ra,8(sp)
  800e60:	10803f8c 	andi	r2,r2,254
  800e64:	2022d7fa 	srli	r17,r4,31
  800e68:	8120703a 	and	r16,r16,r4
  800e6c:	10000d26 	beq	r2,zero,800ea4 <__extendsfdf2+0x68>
  800e70:	8008d0fa 	srli	r4,r16,3
  800e74:	8020977a 	slli	r16,r16,29
  800e78:	28c0e004 	addi	r3,r5,896
  800e7c:	180a953a 	slli	r5,r3,20
  800e80:	880697fa 	slli	r3,r17,31
  800e84:	8005883a 	mov	r2,r16
  800e88:	290ab03a 	or	r5,r5,r4
  800e8c:	28c6b03a 	or	r3,r5,r3
  800e90:	dfc00217 	ldw	ra,8(sp)
  800e94:	dc400117 	ldw	r17,4(sp)
  800e98:	dc000017 	ldw	r16,0(sp)
  800e9c:	dec00304 	addi	sp,sp,12
  800ea0:	f800283a 	ret
  800ea4:	2800111e 	bne	r5,zero,800eec <__extendsfdf2+0xb0>
  800ea8:	80001926 	beq	r16,zero,800f10 <__extendsfdf2+0xd4>
  800eac:	8009883a 	mov	r4,r16
  800eb0:	0800f380 	call	800f38 <__clzsi2>
  800eb4:	10c002c8 	cmpgei	r3,r2,11
  800eb8:	18001b1e 	bne	r3,zero,800f28 <__extendsfdf2+0xec>
  800ebc:	010002c4 	movi	r4,11
  800ec0:	2089c83a 	sub	r4,r4,r2
  800ec4:	10c00544 	addi	r3,r2,21
  800ec8:	810ad83a 	srl	r5,r16,r4
  800ecc:	80e0983a 	sll	r16,r16,r3
  800ed0:	00c0e244 	movi	r3,905
  800ed4:	01000434 	movhi	r4,16
  800ed8:	213fffc4 	addi	r4,r4,-1
  800edc:	1885c83a 	sub	r2,r3,r2
  800ee0:	2908703a 	and	r4,r5,r4
  800ee4:	10c1ffcc 	andi	r3,r2,2047
  800ee8:	003fe406 	br	800e7c <__extendsfdf2+0x40>
  800eec:	80000b26 	beq	r16,zero,800f1c <__extendsfdf2+0xe0>
  800ef0:	800ad0fa 	srli	r5,r16,3
  800ef4:	00800434 	movhi	r2,16
  800ef8:	10bfffc4 	addi	r2,r2,-1
  800efc:	29000234 	orhi	r4,r5,8
  800f00:	8020977a 	slli	r16,r16,29
  800f04:	2088703a 	and	r4,r4,r2
  800f08:	00c1ffc4 	movi	r3,2047
  800f0c:	003fdb06 	br	800e7c <__extendsfdf2+0x40>
  800f10:	0007883a 	mov	r3,zero
  800f14:	0009883a 	mov	r4,zero
  800f18:	003fd806 	br	800e7c <__extendsfdf2+0x40>
  800f1c:	00c1ffc4 	movi	r3,2047
  800f20:	0009883a 	mov	r4,zero
  800f24:	003fd506 	br	800e7c <__extendsfdf2+0x40>
  800f28:	113ffd44 	addi	r4,r2,-11
  800f2c:	810a983a 	sll	r5,r16,r4
  800f30:	0021883a 	mov	r16,zero
  800f34:	003fe606 	br	800ed0 <__extendsfdf2+0x94>

00800f38 <__clzsi2>:
  800f38:	00bfffd4 	movui	r2,65535
  800f3c:	11000436 	bltu	r2,r4,800f50 <__clzsi2+0x18>
  800f40:	20804030 	cmpltui	r2,r4,256
  800f44:	10000e26 	beq	r2,zero,800f80 <__clzsi2+0x48>
  800f48:	01400804 	movi	r5,32
  800f4c:	00000406 	br	800f60 <__clzsi2+0x28>
  800f50:	00804034 	movhi	r2,256
  800f54:	20800736 	bltu	r4,r2,800f74 <__clzsi2+0x3c>
  800f58:	2008d63a 	srli	r4,r4,24
  800f5c:	01400204 	movi	r5,8
  800f60:	00c02074 	movhi	r3,129
  800f64:	20c7883a 	add	r3,r4,r3
  800f68:	1881a503 	ldbu	r2,1684(r3)
  800f6c:	2885c83a 	sub	r2,r5,r2
  800f70:	f800283a 	ret
  800f74:	2008d43a 	srli	r4,r4,16
  800f78:	01400404 	movi	r5,16
  800f7c:	003ff806 	br	800f60 <__clzsi2+0x28>
  800f80:	2008d23a 	srli	r4,r4,8
  800f84:	01400604 	movi	r5,24
  800f88:	003ff506 	br	800f60 <__clzsi2+0x28>

00800f8c <__mulsi3>:
  800f8c:	0005883a 	mov	r2,zero
  800f90:	20000726 	beq	r4,zero,800fb0 <__mulsi3+0x24>
  800f94:	20c0004c 	andi	r3,r4,1
  800f98:	2008d07a 	srli	r4,r4,1
  800f9c:	18000126 	beq	r3,zero,800fa4 <__mulsi3+0x18>
  800fa0:	1145883a 	add	r2,r2,r5
  800fa4:	294b883a 	add	r5,r5,r5
  800fa8:	203ffa1e 	bne	r4,zero,800f94 <__mulsi3+0x8>
  800fac:	f800283a 	ret
  800fb0:	f800283a 	ret

00800fb4 <_printf_r>:
  800fb4:	defffd04 	addi	sp,sp,-12
  800fb8:	2805883a 	mov	r2,r5
  800fbc:	dfc00015 	stw	ra,0(sp)
  800fc0:	d9800115 	stw	r6,4(sp)
  800fc4:	d9c00215 	stw	r7,8(sp)
  800fc8:	21400217 	ldw	r5,8(r4)
  800fcc:	d9c00104 	addi	r7,sp,4
  800fd0:	100d883a 	mov	r6,r2
  800fd4:	08011900 	call	801190 <___vfprintf_internal_r>
  800fd8:	dfc00017 	ldw	ra,0(sp)
  800fdc:	dec00304 	addi	sp,sp,12
  800fe0:	f800283a 	ret

00800fe4 <printf>:
  800fe4:	defffc04 	addi	sp,sp,-16
  800fe8:	dfc00015 	stw	ra,0(sp)
  800fec:	d9400115 	stw	r5,4(sp)
  800ff0:	d9800215 	stw	r6,8(sp)
  800ff4:	d9c00315 	stw	r7,12(sp)
  800ff8:	00802074 	movhi	r2,129
  800ffc:	108a2117 	ldw	r2,10372(r2)
  801000:	200b883a 	mov	r5,r4
  801004:	d9800104 	addi	r6,sp,4
  801008:	11000217 	ldw	r4,8(r2)
  80100c:	080327c0 	call	80327c <__vfprintf_internal>
  801010:	dfc00017 	ldw	ra,0(sp)
  801014:	dec00404 	addi	sp,sp,16
  801018:	f800283a 	ret

0080101c <_puts_r>:
  80101c:	defff504 	addi	sp,sp,-44
  801020:	dc000815 	stw	r16,32(sp)
  801024:	2021883a 	mov	r16,r4
  801028:	2809883a 	mov	r4,r5
  80102c:	dc400915 	stw	r17,36(sp)
  801030:	dfc00a15 	stw	ra,40(sp)
  801034:	2823883a 	mov	r17,r5
  801038:	08010f80 	call	8010f8 <strlen>
  80103c:	11000044 	addi	r4,r2,1
  801040:	d8800515 	stw	r2,20(sp)
  801044:	00800044 	movi	r2,1
  801048:	00c02074 	movhi	r3,129
  80104c:	d8800715 	stw	r2,28(sp)
  801050:	d8800404 	addi	r2,sp,16
  801054:	18c19504 	addi	r3,r3,1620
  801058:	d8800115 	stw	r2,4(sp)
  80105c:	00800084 	movi	r2,2
  801060:	dc400415 	stw	r17,16(sp)
  801064:	d8c00615 	stw	r3,24(sp)
  801068:	d9000315 	stw	r4,12(sp)
  80106c:	d8800215 	stw	r2,8(sp)
  801070:	81400217 	ldw	r5,8(r16)
  801074:	80000226 	beq	r16,zero,801080 <_puts_r+0x64>
  801078:	80800e17 	ldw	r2,56(r16)
  80107c:	10001326 	beq	r2,zero,8010cc <_puts_r+0xb0>
  801080:	2880030b 	ldhu	r2,12(r5)
  801084:	10c8000c 	andi	r3,r2,8192
  801088:	1800061e 	bne	r3,zero,8010a4 <_puts_r+0x88>
  80108c:	28c01917 	ldw	r3,100(r5)
  801090:	0137ffc4 	movi	r4,-8193
  801094:	10880014 	ori	r2,r2,8192
  801098:	1906703a 	and	r3,r3,r4
  80109c:	2880030d 	sth	r2,12(r5)
  8010a0:	28c01915 	stw	r3,100(r5)
  8010a4:	d9800104 	addi	r6,sp,4
  8010a8:	8009883a 	mov	r4,r16
  8010ac:	08058400 	call	805840 <__sfvwrite_r>
  8010b0:	10000b1e 	bne	r2,zero,8010e0 <_puts_r+0xc4>
  8010b4:	00800284 	movi	r2,10
  8010b8:	dfc00a17 	ldw	ra,40(sp)
  8010bc:	dc400917 	ldw	r17,36(sp)
  8010c0:	dc000817 	ldw	r16,32(sp)
  8010c4:	dec00b04 	addi	sp,sp,44
  8010c8:	f800283a 	ret
  8010cc:	8009883a 	mov	r4,r16
  8010d0:	d9400015 	stw	r5,0(sp)
  8010d4:	08053e00 	call	8053e0 <__sinit>
  8010d8:	d9400017 	ldw	r5,0(sp)
  8010dc:	003fe806 	br	801080 <_puts_r+0x64>
  8010e0:	00bfffc4 	movi	r2,-1
  8010e4:	003ff406 	br	8010b8 <_puts_r+0x9c>

008010e8 <puts>:
  8010e8:	00802074 	movhi	r2,129
  8010ec:	200b883a 	mov	r5,r4
  8010f0:	110a2117 	ldw	r4,10372(r2)
  8010f4:	080101c1 	jmpi	80101c <_puts_r>

008010f8 <strlen>:
  8010f8:	208000cc 	andi	r2,r4,3
  8010fc:	10000926 	beq	r2,zero,801124 <strlen+0x2c>
  801100:	2005883a 	mov	r2,r4
  801104:	00000306 	br	801114 <strlen+0x1c>
  801108:	10800044 	addi	r2,r2,1
  80110c:	10c000cc 	andi	r3,r2,3
  801110:	18000526 	beq	r3,zero,801128 <strlen+0x30>
  801114:	10c00007 	ldb	r3,0(r2)
  801118:	183ffb1e 	bne	r3,zero,801108 <strlen+0x10>
  80111c:	1105c83a 	sub	r2,r2,r4
  801120:	f800283a 	ret
  801124:	2005883a 	mov	r2,r4
  801128:	11400017 	ldw	r5,0(r2)
  80112c:	01ffbff4 	movhi	r7,65279
  801130:	39ffbfc4 	addi	r7,r7,-257
  801134:	29c7883a 	add	r3,r5,r7
  801138:	01a02074 	movhi	r6,32897
  80113c:	014a303a 	nor	r5,zero,r5
  801140:	1946703a 	and	r3,r3,r5
  801144:	31a02004 	addi	r6,r6,-32640
  801148:	1986703a 	and	r3,r3,r6
  80114c:	1800071e 	bne	r3,zero,80116c <strlen+0x74>
  801150:	11400117 	ldw	r5,4(r2)
  801154:	10800104 	addi	r2,r2,4
  801158:	29c7883a 	add	r3,r5,r7
  80115c:	014a303a 	nor	r5,zero,r5
  801160:	1946703a 	and	r3,r3,r5
  801164:	1986703a 	and	r3,r3,r6
  801168:	183ff926 	beq	r3,zero,801150 <strlen+0x58>
  80116c:	10c00007 	ldb	r3,0(r2)
  801170:	183fea26 	beq	r3,zero,80111c <strlen+0x24>
  801174:	10c00047 	ldb	r3,1(r2)
  801178:	10800044 	addi	r2,r2,1
  80117c:	183fe726 	beq	r3,zero,80111c <strlen+0x24>
  801180:	10c00047 	ldb	r3,1(r2)
  801184:	10800044 	addi	r2,r2,1
  801188:	183ffa1e 	bne	r3,zero,801174 <strlen+0x7c>
  80118c:	003fe306 	br	80111c <strlen+0x24>

00801190 <___vfprintf_internal_r>:
  801190:	deffbf04 	addi	sp,sp,-260
  801194:	dfc04015 	stw	ra,256(sp)
  801198:	dd803d15 	stw	r22,244(sp)
  80119c:	dcc03a15 	stw	r19,232(sp)
  8011a0:	dc803915 	stw	r18,228(sp)
  8011a4:	2027883a 	mov	r19,r4
  8011a8:	2825883a 	mov	r18,r5
  8011ac:	302d883a 	mov	r22,r6
  8011b0:	d9c00615 	stw	r7,24(sp)
  8011b4:	df003f15 	stw	fp,252(sp)
  8011b8:	ddc03e15 	stw	r23,248(sp)
  8011bc:	dd403c15 	stw	r21,240(sp)
  8011c0:	dd003b15 	stw	r20,236(sp)
  8011c4:	dc403815 	stw	r17,224(sp)
  8011c8:	dc003715 	stw	r16,220(sp)
  8011cc:	0805e540 	call	805e54 <_localeconv_r>
  8011d0:	10800017 	ldw	r2,0(r2)
  8011d4:	1009883a 	mov	r4,r2
  8011d8:	d8800d15 	stw	r2,52(sp)
  8011dc:	08010f80 	call	8010f8 <strlen>
  8011e0:	d8800b15 	stw	r2,44(sp)
  8011e4:	98000226 	beq	r19,zero,8011f0 <___vfprintf_internal_r+0x60>
  8011e8:	98800e17 	ldw	r2,56(r19)
  8011ec:	1001d726 	beq	r2,zero,80194c <___vfprintf_internal_r+0x7bc>
  8011f0:	9080030b 	ldhu	r2,12(r18)
  8011f4:	10c8000c 	andi	r3,r2,8192
  8011f8:	1800061e 	bne	r3,zero,801214 <___vfprintf_internal_r+0x84>
  8011fc:	90c01917 	ldw	r3,100(r18)
  801200:	0137ffc4 	movi	r4,-8193
  801204:	10880014 	ori	r2,r2,8192
  801208:	1906703a 	and	r3,r3,r4
  80120c:	9080030d 	sth	r2,12(r18)
  801210:	90c01915 	stw	r3,100(r18)
  801214:	10c0020c 	andi	r3,r2,8
  801218:	1800fc26 	beq	r3,zero,80160c <___vfprintf_internal_r+0x47c>
  80121c:	90c00417 	ldw	r3,16(r18)
  801220:	1800fa26 	beq	r3,zero,80160c <___vfprintf_internal_r+0x47c>
  801224:	1080068c 	andi	r2,r2,26
  801228:	10800298 	cmpnei	r2,r2,10
  80122c:	1000ff26 	beq	r2,zero,80162c <___vfprintf_internal_r+0x49c>
  801230:	d8802704 	addi	r2,sp,156
  801234:	b02f883a 	mov	r23,r22
  801238:	d8801a15 	stw	r2,104(sp)
  80123c:	d8001c15 	stw	zero,112(sp)
  801240:	d8001b15 	stw	zero,108(sp)
  801244:	d8000815 	stw	zero,32(sp)
  801248:	d8000915 	stw	zero,36(sp)
  80124c:	d8000a15 	stw	zero,40(sp)
  801250:	d8000c15 	stw	zero,48(sp)
  801254:	d8001015 	stw	zero,64(sp)
  801258:	d8000515 	stw	zero,20(sp)
  80125c:	102d883a 	mov	r22,r2
  801260:	b8800007 	ldb	r2,0(r23)
  801264:	1000d726 	beq	r2,zero,8015c4 <___vfprintf_internal_r+0x434>
  801268:	b821883a 	mov	r16,r23
  80126c:	00000306 	br	80127c <___vfprintf_internal_r+0xec>
  801270:	80800047 	ldb	r2,1(r16)
  801274:	84000044 	addi	r16,r16,1
  801278:	10011926 	beq	r2,zero,8016e0 <___vfprintf_internal_r+0x550>
  80127c:	10800958 	cmpnei	r2,r2,37
  801280:	103ffb1e 	bne	r2,zero,801270 <___vfprintf_internal_r+0xe0>
  801284:	85e3c83a 	sub	r17,r16,r23
  801288:	85c1171e 	bne	r16,r23,8016e8 <___vfprintf_internal_r+0x558>
  80128c:	80800003 	ldbu	r2,0(r16)
  801290:	10803fcc 	andi	r2,r2,255
  801294:	1080201c 	xori	r2,r2,128
  801298:	10bfe004 	addi	r2,r2,-128
  80129c:	1000c926 	beq	r2,zero,8015c4 <___vfprintf_internal_r+0x434>
  8012a0:	82c00047 	ldb	r11,1(r16)
  8012a4:	85c00044 	addi	r23,r16,1
  8012a8:	d8001345 	stb	zero,77(sp)
  8012ac:	0009883a 	mov	r4,zero
  8012b0:	000b883a 	mov	r5,zero
  8012b4:	023fffc4 	movi	r8,-1
  8012b8:	0021883a 	mov	r16,zero
  8012bc:	0019883a 	mov	r12,zero
  8012c0:	bdc00044 	addi	r23,r23,1
  8012c4:	5839883a 	mov	fp,r11
  8012c8:	e0bff804 	addi	r2,fp,-32
  8012cc:	10c01668 	cmpgeui	r3,r2,89
  8012d0:	18006c1e 	bne	r3,zero,801484 <___vfprintf_internal_r+0x2f4>
  8012d4:	100490ba 	slli	r2,r2,2
  8012d8:	00c02034 	movhi	r3,128
  8012dc:	10c7883a 	add	r3,r2,r3
  8012e0:	1884ba17 	ldw	r2,4840(r3)
  8012e4:	1000683a 	jmp	r2
  8012e8:	00801cd4 	movui	r2,115
  8012ec:	00801484 	movi	r2,82
  8012f0:	00801484 	movi	r2,82
  8012f4:	00801cc8 	cmpgei	r2,zero,115
  8012f8:	00801484 	movi	r2,82
  8012fc:	00801484 	movi	r2,82
  801300:	00801484 	movi	r2,82
  801304:	00801484 	movi	r2,82
  801308:	00801484 	movi	r2,82
  80130c:	00801484 	movi	r2,82
  801310:	00801ca0 	cmpeqi	r2,zero,114
  801314:	00801c90 	cmplti	r2,zero,114
  801318:	00801484 	movi	r2,82
  80131c:	00801c78 	rdprs	r2,zero,113
  801320:	00801c2c 	andhi	r2,zero,112
  801324:	00801484 	movi	r2,82
  801328:	00801c20 	cmpeqi	r2,zero,112
  80132c:	0080144c 	andi	r2,zero,81
  801330:	0080144c 	andi	r2,zero,81
  801334:	0080144c 	andi	r2,zero,81
  801338:	0080144c 	andi	r2,zero,81
  80133c:	0080144c 	andi	r2,zero,81
  801340:	0080144c 	andi	r2,zero,81
  801344:	0080144c 	andi	r2,zero,81
  801348:	0080144c 	andi	r2,zero,81
  80134c:	0080144c 	andi	r2,zero,81
  801350:	00801484 	movi	r2,82
  801354:	00801484 	movi	r2,82
  801358:	00801484 	movi	r2,82
  80135c:	00801484 	movi	r2,82
  801360:	00801484 	movi	r2,82
  801364:	00801484 	movi	r2,82
  801368:	00801484 	movi	r2,82
  80136c:	00801484 	movi	r2,82
  801370:	00801484 	movi	r2,82
  801374:	00801484 	movi	r2,82
  801378:	00801b14 	movui	r2,108
  80137c:	00801744 	movi	r2,93
  801380:	00801484 	movi	r2,82
  801384:	00801744 	movi	r2,93
  801388:	00801484 	movi	r2,82
  80138c:	00801484 	movi	r2,82
  801390:	00801484 	movi	r2,82
  801394:	00801484 	movi	r2,82
  801398:	00801d00 	call	801d0 <__alt_mem_sdram-0x77fe30>
  80139c:	00801484 	movi	r2,82
  8013a0:	00801484 	movi	r2,82
  8013a4:	00801678 	rdprs	r2,zero,89
  8013a8:	00801484 	movi	r2,82
  8013ac:	00801484 	movi	r2,82
  8013b0:	00801484 	movi	r2,82
  8013b4:	00801484 	movi	r2,82
  8013b8:	00801484 	movi	r2,82
  8013bc:	00801650 	cmplti	r2,zero,89
  8013c0:	00801484 	movi	r2,82
  8013c4:	00801484 	movi	r2,82
  8013c8:	00801d34 	movhi	r2,116
  8013cc:	00801484 	movi	r2,82
  8013d0:	00801484 	movi	r2,82
  8013d4:	00801484 	movi	r2,82
  8013d8:	00801484 	movi	r2,82
  8013dc:	00801484 	movi	r2,82
  8013e0:	00801484 	movi	r2,82
  8013e4:	00801484 	movi	r2,82
  8013e8:	00801484 	movi	r2,82
  8013ec:	00801484 	movi	r2,82
  8013f0:	00801484 	movi	r2,82
  8013f4:	00801d0c 	andi	r2,zero,116
  8013f8:	00801958 	cmpnei	r2,zero,101
  8013fc:	00801744 	movi	r2,93
  801400:	00801744 	movi	r2,93
  801404:	00801744 	movi	r2,93
  801408:	008019cc 	andi	r2,zero,103
  80140c:	00801958 	cmpnei	r2,zero,101
  801410:	00801484 	movi	r2,82
  801414:	00801484 	movi	r2,82
  801418:	00801b00 	call	801b0 <__alt_mem_sdram-0x77fe50>
  80141c:	00801484 	movi	r2,82
  801420:	00801ac4 	movi	r2,107
  801424:	0080167c 	xorhi	r2,zero,89
  801428:	00801a84 	movi	r2,106
  80142c:	00801a78 	rdprs	r2,zero,105
  801430:	00801484 	movi	r2,82
  801434:	00801a20 	cmpeqi	r2,zero,104
  801438:	00801484 	movi	r2,82
  80143c:	00801654 	movui	r2,89
  801440:	00801484 	movi	r2,82
  801444:	00801484 	movi	r2,82
  801448:	008019d8 	cmpnei	r2,zero,103
  80144c:	0021883a 	mov	r16,zero
  801450:	e0fff404 	addi	r3,fp,-48
  801454:	800490ba 	slli	r2,r16,2
  801458:	bf000007 	ldb	fp,0(r23)
  80145c:	bdc00044 	addi	r23,r23,1
  801460:	1421883a 	add	r16,r2,r16
  801464:	8421883a 	add	r16,r16,r16
  801468:	1c21883a 	add	r16,r3,r16
  80146c:	e0fff404 	addi	r3,fp,-48
  801470:	188002b0 	cmpltui	r2,r3,10
  801474:	103ff71e 	bne	r2,zero,801454 <___vfprintf_internal_r+0x2c4>
  801478:	e0bff804 	addi	r2,fp,-32
  80147c:	10c01668 	cmpgeui	r3,r2,89
  801480:	183f9426 	beq	r3,zero,8012d4 <___vfprintf_internal_r+0x144>
  801484:	21003fcc 	andi	r4,r4,255
  801488:	20068f1e 	bne	r4,zero,802ec8 <___vfprintf_internal_r+0x1d38>
  80148c:	e0004d26 	beq	fp,zero,8015c4 <___vfprintf_internal_r+0x434>
  801490:	df001d05 	stb	fp,116(sp)
  801494:	d8001345 	stb	zero,77(sp)
  801498:	05000044 	movi	r20,1
  80149c:	05400044 	movi	r21,1
  8014a0:	dc401d04 	addi	r17,sp,116
  8014a4:	db000415 	stw	r12,16(sp)
  8014a8:	0011883a 	mov	r8,zero
  8014ac:	d8000715 	stw	zero,28(sp)
  8014b0:	d8800417 	ldw	r2,16(sp)
  8014b4:	1380008c 	andi	r14,r2,2
  8014b8:	70000126 	beq	r14,zero,8014c0 <___vfprintf_internal_r+0x330>
  8014bc:	a5000084 	addi	r20,r20,2
  8014c0:	d8800417 	ldw	r2,16(sp)
  8014c4:	d8c01c17 	ldw	r3,112(sp)
  8014c8:	1340210c 	andi	r13,r2,132
  8014cc:	6800021e 	bne	r13,zero,8014d8 <___vfprintf_internal_r+0x348>
  8014d0:	850fc83a 	sub	r7,r16,r20
  8014d4:	01c36016 	blt	zero,r7,802258 <___vfprintf_internal_r+0x10c8>
  8014d8:	d8801347 	ldb	r2,77(sp)
  8014dc:	10000c26 	beq	r2,zero,801510 <___vfprintf_internal_r+0x380>
  8014e0:	d8801b17 	ldw	r2,108(sp)
  8014e4:	d9001344 	addi	r4,sp,77
  8014e8:	18c00044 	addi	r3,r3,1
  8014ec:	10800044 	addi	r2,r2,1
  8014f0:	b1000015 	stw	r4,0(r22)
  8014f4:	01000044 	movi	r4,1
  8014f8:	d8801b15 	stw	r2,108(sp)
  8014fc:	b1000115 	stw	r4,4(r22)
  801500:	d8c01c15 	stw	r3,112(sp)
  801504:	10800208 	cmpgei	r2,r2,8
  801508:	1003a01e 	bne	r2,zero,80238c <___vfprintf_internal_r+0x11fc>
  80150c:	b5800204 	addi	r22,r22,8
  801510:	70000c26 	beq	r14,zero,801544 <___vfprintf_internal_r+0x3b4>
  801514:	d8801b17 	ldw	r2,108(sp)
  801518:	d9001384 	addi	r4,sp,78
  80151c:	18c00084 	addi	r3,r3,2
  801520:	10800044 	addi	r2,r2,1
  801524:	b1000015 	stw	r4,0(r22)
  801528:	01000084 	movi	r4,2
  80152c:	d8801b15 	stw	r2,108(sp)
  801530:	b1000115 	stw	r4,4(r22)
  801534:	d8c01c15 	stw	r3,112(sp)
  801538:	10800208 	cmpgei	r2,r2,8
  80153c:	1003871e 	bne	r2,zero,80235c <___vfprintf_internal_r+0x11cc>
  801540:	b5800204 	addi	r22,r22,8
  801544:	6b402018 	cmpnei	r13,r13,128
  801548:	68025226 	beq	r13,zero,801e94 <___vfprintf_internal_r+0xd04>
  80154c:	4551c83a 	sub	r8,r8,r21
  801550:	02028a16 	blt	zero,r8,801f7c <___vfprintf_internal_r+0xdec>
  801554:	d8800417 	ldw	r2,16(sp)
  801558:	1080400c 	andi	r2,r2,256
  80155c:	1002071e 	bne	r2,zero,801d7c <___vfprintf_internal_r+0xbec>
  801560:	d8801b17 	ldw	r2,108(sp)
  801564:	1d47883a 	add	r3,r3,r21
  801568:	b4400015 	stw	r17,0(r22)
  80156c:	10800044 	addi	r2,r2,1
  801570:	b5400115 	stw	r21,4(r22)
  801574:	d8801b15 	stw	r2,108(sp)
  801578:	d8c01c15 	stw	r3,112(sp)
  80157c:	10800208 	cmpgei	r2,r2,8
  801580:	1002ee1e 	bne	r2,zero,80213c <___vfprintf_internal_r+0xfac>
  801584:	b5800204 	addi	r22,r22,8
  801588:	d8800417 	ldw	r2,16(sp)
  80158c:	1440010c 	andi	r17,r2,4
  801590:	88000226 	beq	r17,zero,80159c <___vfprintf_internal_r+0x40c>
  801594:	8523c83a 	sub	r17,r16,r20
  801598:	0440bd16 	blt	zero,r17,801890 <___vfprintf_internal_r+0x700>
  80159c:	8500010e 	bge	r16,r20,8015a4 <___vfprintf_internal_r+0x414>
  8015a0:	a021883a 	mov	r16,r20
  8015a4:	d8800517 	ldw	r2,20(sp)
  8015a8:	1405883a 	add	r2,r2,r16
  8015ac:	d8800515 	stw	r2,20(sp)
  8015b0:	1802b91e 	bne	r3,zero,802098 <___vfprintf_internal_r+0xf08>
  8015b4:	b8800007 	ldb	r2,0(r23)
  8015b8:	d8001b15 	stw	zero,108(sp)
  8015bc:	dd802704 	addi	r22,sp,156
  8015c0:	103f291e 	bne	r2,zero,801268 <___vfprintf_internal_r+0xd8>
  8015c4:	d8801c17 	ldw	r2,112(sp)
  8015c8:	10063a1e 	bne	r2,zero,802eb4 <___vfprintf_internal_r+0x1d24>
  8015cc:	9080030b 	ldhu	r2,12(r18)
  8015d0:	1080100c 	andi	r2,r2,64
  8015d4:	1006c91e 	bne	r2,zero,8030fc <___vfprintf_internal_r+0x1f6c>
  8015d8:	d8800517 	ldw	r2,20(sp)
  8015dc:	dfc04017 	ldw	ra,256(sp)
  8015e0:	df003f17 	ldw	fp,252(sp)
  8015e4:	ddc03e17 	ldw	r23,248(sp)
  8015e8:	dd803d17 	ldw	r22,244(sp)
  8015ec:	dd403c17 	ldw	r21,240(sp)
  8015f0:	dd003b17 	ldw	r20,236(sp)
  8015f4:	dcc03a17 	ldw	r19,232(sp)
  8015f8:	dc803917 	ldw	r18,228(sp)
  8015fc:	dc403817 	ldw	r17,224(sp)
  801600:	dc003717 	ldw	r16,220(sp)
  801604:	dec04104 	addi	sp,sp,260
  801608:	f800283a 	ret
  80160c:	900b883a 	mov	r5,r18
  801610:	9809883a 	mov	r4,r19
  801614:	08033580 	call	803358 <__swsetup_r>
  801618:	1006b81e 	bne	r2,zero,8030fc <___vfprintf_internal_r+0x1f6c>
  80161c:	9080030b 	ldhu	r2,12(r18)
  801620:	1080068c 	andi	r2,r2,26
  801624:	10800298 	cmpnei	r2,r2,10
  801628:	103f011e 	bne	r2,zero,801230 <___vfprintf_internal_r+0xa0>
  80162c:	9080038f 	ldh	r2,14(r18)
  801630:	103eff16 	blt	r2,zero,801230 <___vfprintf_internal_r+0xa0>
  801634:	d9c00617 	ldw	r7,24(sp)
  801638:	b00d883a 	mov	r6,r22
  80163c:	900b883a 	mov	r5,r18
  801640:	9809883a 	mov	r4,r19
  801644:	08032980 	call	803298 <__sbprintf>
  801648:	d8800515 	stw	r2,20(sp)
  80164c:	003fe206 	br	8015d8 <___vfprintf_internal_r+0x448>
  801650:	63000414 	ori	r12,r12,16
  801654:	6080080c 	andi	r2,r12,32
  801658:	10008126 	beq	r2,zero,801860 <___vfprintf_internal_r+0x6d0>
  80165c:	d8c00617 	ldw	r3,24(sp)
  801660:	00800044 	movi	r2,1
  801664:	1d000017 	ldw	r20,0(r3)
  801668:	1d400117 	ldw	r21,4(r3)
  80166c:	18c00204 	addi	r3,r3,8
  801670:	d8c00615 	stw	r3,24(sp)
  801674:	00000906 	br	80169c <___vfprintf_internal_r+0x50c>
  801678:	63000414 	ori	r12,r12,16
  80167c:	6080080c 	andi	r2,r12,32
  801680:	10006b26 	beq	r2,zero,801830 <___vfprintf_internal_r+0x6a0>
  801684:	d8c00617 	ldw	r3,24(sp)
  801688:	0005883a 	mov	r2,zero
  80168c:	1d000017 	ldw	r20,0(r3)
  801690:	1d400117 	ldw	r21,4(r3)
  801694:	18c00204 	addi	r3,r3,8
  801698:	d8c00615 	stw	r3,24(sp)
  80169c:	d8001345 	stb	zero,77(sp)
  8016a0:	40ffffe0 	cmpeqi	r3,r8,-1
  8016a4:	001b883a 	mov	r13,zero
  8016a8:	1801351e 	bne	r3,zero,801b80 <___vfprintf_internal_r+0x9f0>
  8016ac:	047fdfc4 	movi	r17,-129
  8016b0:	6448703a 	and	r4,r12,r17
  8016b4:	a546b03a 	or	r3,r20,r21
  8016b8:	d9000415 	stw	r4,16(sp)
  8016bc:	1802e41e 	bne	r3,zero,802250 <___vfprintf_internal_r+0x10c0>
  8016c0:	40025f1e 	bne	r8,zero,802040 <___vfprintf_internal_r+0xeb0>
  8016c4:	1003a61e 	bne	r2,zero,802560 <___vfprintf_internal_r+0x13d0>
  8016c8:	6540004c 	andi	r21,r12,1
  8016cc:	a803d426 	beq	r21,zero,802620 <___vfprintf_internal_r+0x1490>
  8016d0:	00800c04 	movi	r2,48
  8016d4:	d88026c5 	stb	r2,155(sp)
  8016d8:	dc4026c4 	addi	r17,sp,155
  8016dc:	00014606 	br	801bf8 <___vfprintf_internal_r+0xa68>
  8016e0:	85e3c83a 	sub	r17,r16,r23
  8016e4:	85ffb726 	beq	r16,r23,8015c4 <___vfprintf_internal_r+0x434>
  8016e8:	d8c01c17 	ldw	r3,112(sp)
  8016ec:	d8801b17 	ldw	r2,108(sp)
  8016f0:	b5c00015 	stw	r23,0(r22)
  8016f4:	1c47883a 	add	r3,r3,r17
  8016f8:	10800044 	addi	r2,r2,1
  8016fc:	d8801b15 	stw	r2,108(sp)
  801700:	b4400115 	stw	r17,4(r22)
  801704:	d8c01c15 	stw	r3,112(sp)
  801708:	10800208 	cmpgei	r2,r2,8
  80170c:	1000061e 	bne	r2,zero,801728 <___vfprintf_internal_r+0x598>
  801710:	b5800204 	addi	r22,r22,8
  801714:	d8c00517 	ldw	r3,20(sp)
  801718:	80800003 	ldbu	r2,0(r16)
  80171c:	1c47883a 	add	r3,r3,r17
  801720:	d8c00515 	stw	r3,20(sp)
  801724:	003eda06 	br	801290 <___vfprintf_internal_r+0x100>
  801728:	d9801a04 	addi	r6,sp,104
  80172c:	900b883a 	mov	r5,r18
  801730:	9809883a 	mov	r4,r19
  801734:	080853c0 	call	80853c <__sprint_r>
  801738:	103fa41e 	bne	r2,zero,8015cc <___vfprintf_internal_r+0x43c>
  80173c:	dd802704 	addi	r22,sp,156
  801740:	003ff406 	br	801714 <___vfprintf_internal_r+0x584>
  801744:	21003fcc 	andi	r4,r4,255
  801748:	20066a1e 	bne	r4,zero,8030f4 <___vfprintf_internal_r+0x1f64>
  80174c:	d8c00617 	ldw	r3,24(sp)
  801750:	6080020c 	andi	r2,r12,8
  801754:	19000204 	addi	r4,r3,8
  801758:	d9000e15 	stw	r4,56(sp)
  80175c:	1003d01e 	bne	r2,zero,8026a0 <___vfprintf_internal_r+0x1510>
  801760:	d8800617 	ldw	r2,24(sp)
  801764:	10c00017 	ldw	r3,0(r2)
  801768:	10800117 	ldw	r2,4(r2)
  80176c:	d8c00915 	stw	r3,36(sp)
  801770:	d8800a15 	stw	r2,40(sp)
  801774:	dd400a17 	ldw	r21,40(sp)
  801778:	dd000917 	ldw	r20,36(sp)
  80177c:	00a00034 	movhi	r2,32768
  801780:	10bfffc4 	addi	r2,r2,-1
  801784:	a8a2703a 	and	r17,r21,r2
  801788:	01dffc34 	movhi	r7,32752
  80178c:	01bfffc4 	movi	r6,-1
  801790:	39ffffc4 	addi	r7,r7,-1
  801794:	a009883a 	mov	r4,r20
  801798:	880b883a 	mov	r5,r17
  80179c:	da000615 	stw	r8,24(sp)
  8017a0:	db000415 	stw	r12,16(sp)
  8017a4:	080dafc0 	call	80dafc <__unorddf2>
  8017a8:	db000417 	ldw	r12,16(sp)
  8017ac:	da000617 	ldw	r8,24(sp)
  8017b0:	1004701e 	bne	r2,zero,802974 <___vfprintf_internal_r+0x17e4>
  8017b4:	01dffc34 	movhi	r7,32752
  8017b8:	01bfffc4 	movi	r6,-1
  8017bc:	39ffffc4 	addi	r7,r7,-1
  8017c0:	a009883a 	mov	r4,r20
  8017c4:	880b883a 	mov	r5,r17
  8017c8:	080c9300 	call	80c930 <__ledf2>
  8017cc:	db000417 	ldw	r12,16(sp)
  8017d0:	da000617 	ldw	r8,24(sp)
  8017d4:	0084670e 	bge	zero,r2,802974 <___vfprintf_internal_r+0x17e4>
  8017d8:	000d883a 	mov	r6,zero
  8017dc:	000f883a 	mov	r7,zero
  8017e0:	a009883a 	mov	r4,r20
  8017e4:	a80b883a 	mov	r5,r21
  8017e8:	080c9300 	call	80c930 <__ledf2>
  8017ec:	db000417 	ldw	r12,16(sp)
  8017f0:	10059d16 	blt	r2,zero,802e68 <___vfprintf_internal_r+0x1cd8>
  8017f4:	db401343 	ldbu	r13,77(sp)
  8017f8:	e0801210 	cmplti	r2,fp,72
  8017fc:	1005741e 	bne	r2,zero,802dd0 <___vfprintf_internal_r+0x1c40>
  801800:	04402074 	movhi	r17,129
  801804:	8c41e604 	addi	r17,r17,1944
  801808:	00bfdfc4 	movi	r2,-129
  80180c:	6084703a 	and	r2,r12,r2
  801810:	d8800415 	stw	r2,16(sp)
  801814:	d8800e17 	ldw	r2,56(sp)
  801818:	050000c4 	movi	r20,3
  80181c:	054000c4 	movi	r21,3
  801820:	d8800615 	stw	r2,24(sp)
  801824:	0011883a 	mov	r8,zero
  801828:	d8000715 	stw	zero,28(sp)
  80182c:	0000f606 	br	801c08 <___vfprintf_internal_r+0xa78>
  801830:	d9000617 	ldw	r4,24(sp)
  801834:	6080040c 	andi	r2,r12,16
  801838:	20c00104 	addi	r3,r4,4
  80183c:	1003891e 	bne	r2,zero,802664 <___vfprintf_internal_r+0x14d4>
  801840:	6080100c 	andi	r2,r12,64
  801844:	10056b26 	beq	r2,zero,802df4 <___vfprintf_internal_r+0x1c64>
  801848:	d8800617 	ldw	r2,24(sp)
  80184c:	002b883a 	mov	r21,zero
  801850:	d8c00615 	stw	r3,24(sp)
  801854:	1500000b 	ldhu	r20,0(r2)
  801858:	0005883a 	mov	r2,zero
  80185c:	003f8f06 	br	80169c <___vfprintf_internal_r+0x50c>
  801860:	d9000617 	ldw	r4,24(sp)
  801864:	6080040c 	andi	r2,r12,16
  801868:	20c00104 	addi	r3,r4,4
  80186c:	1003821e 	bne	r2,zero,802678 <___vfprintf_internal_r+0x14e8>
  801870:	6080100c 	andi	r2,r12,64
  801874:	10056526 	beq	r2,zero,802e0c <___vfprintf_internal_r+0x1c7c>
  801878:	d8800617 	ldw	r2,24(sp)
  80187c:	002b883a 	mov	r21,zero
  801880:	d8c00615 	stw	r3,24(sp)
  801884:	1500000b 	ldhu	r20,0(r2)
  801888:	00800044 	movi	r2,1
  80188c:	003f8306 	br	80169c <___vfprintf_internal_r+0x50c>
  801890:	03002074 	movhi	r12,129
  801894:	89000450 	cmplti	r4,r17,17
  801898:	d8801b17 	ldw	r2,108(sp)
  80189c:	6301fa04 	addi	r12,r12,2024
  8018a0:	20001b1e 	bne	r4,zero,801910 <___vfprintf_internal_r+0x780>
  8018a4:	05400404 	movi	r21,16
  8018a8:	6039883a 	mov	fp,r12
  8018ac:	00000406 	br	8018c0 <___vfprintf_internal_r+0x730>
  8018b0:	8c7ffc04 	addi	r17,r17,-16
  8018b4:	89000448 	cmpgei	r4,r17,17
  8018b8:	b5800204 	addi	r22,r22,8
  8018bc:	20001326 	beq	r4,zero,80190c <___vfprintf_internal_r+0x77c>
  8018c0:	10800044 	addi	r2,r2,1
  8018c4:	18c00404 	addi	r3,r3,16
  8018c8:	b7000015 	stw	fp,0(r22)
  8018cc:	b5400115 	stw	r21,4(r22)
  8018d0:	d8c01c15 	stw	r3,112(sp)
  8018d4:	d8801b15 	stw	r2,108(sp)
  8018d8:	11000208 	cmpgei	r4,r2,8
  8018dc:	203ff426 	beq	r4,zero,8018b0 <___vfprintf_internal_r+0x720>
  8018e0:	d9801a04 	addi	r6,sp,104
  8018e4:	900b883a 	mov	r5,r18
  8018e8:	9809883a 	mov	r4,r19
  8018ec:	080853c0 	call	80853c <__sprint_r>
  8018f0:	103f361e 	bne	r2,zero,8015cc <___vfprintf_internal_r+0x43c>
  8018f4:	8c7ffc04 	addi	r17,r17,-16
  8018f8:	89000448 	cmpgei	r4,r17,17
  8018fc:	d8c01c17 	ldw	r3,112(sp)
  801900:	d8801b17 	ldw	r2,108(sp)
  801904:	dd802704 	addi	r22,sp,156
  801908:	203fed1e 	bne	r4,zero,8018c0 <___vfprintf_internal_r+0x730>
  80190c:	e019883a 	mov	r12,fp
  801910:	10800044 	addi	r2,r2,1
  801914:	1c47883a 	add	r3,r3,r17
  801918:	d8801b15 	stw	r2,108(sp)
  80191c:	b3000015 	stw	r12,0(r22)
  801920:	b4400115 	stw	r17,4(r22)
  801924:	d8c01c15 	stw	r3,112(sp)
  801928:	10800210 	cmplti	r2,r2,8
  80192c:	103f1b1e 	bne	r2,zero,80159c <___vfprintf_internal_r+0x40c>
  801930:	d9801a04 	addi	r6,sp,104
  801934:	900b883a 	mov	r5,r18
  801938:	9809883a 	mov	r4,r19
  80193c:	080853c0 	call	80853c <__sprint_r>
  801940:	103f221e 	bne	r2,zero,8015cc <___vfprintf_internal_r+0x43c>
  801944:	d8c01c17 	ldw	r3,112(sp)
  801948:	003f1406 	br	80159c <___vfprintf_internal_r+0x40c>
  80194c:	9809883a 	mov	r4,r19
  801950:	08053e00 	call	8053e0 <__sinit>
  801954:	003e2606 	br	8011f0 <___vfprintf_internal_r+0x60>
  801958:	21003fcc 	andi	r4,r4,255
  80195c:	2005db1e 	bne	r4,zero,8030cc <___vfprintf_internal_r+0x1f3c>
  801960:	6080080c 	andi	r2,r12,32
  801964:	10007026 	beq	r2,zero,801b28 <___vfprintf_internal_r+0x998>
  801968:	d8c00617 	ldw	r3,24(sp)
  80196c:	18800117 	ldw	r2,4(r3)
  801970:	1d000017 	ldw	r20,0(r3)
  801974:	18c00204 	addi	r3,r3,8
  801978:	d8c00615 	stw	r3,24(sp)
  80197c:	102b883a 	mov	r21,r2
  801980:	10007516 	blt	r2,zero,801b58 <___vfprintf_internal_r+0x9c8>
  801984:	40bfffd8 	cmpnei	r2,r8,-1
  801988:	10034a26 	beq	r2,zero,8026b4 <___vfprintf_internal_r+0x1524>
  80198c:	047fdfc4 	movi	r17,-129
  801990:	6446703a 	and	r3,r12,r17
  801994:	a544b03a 	or	r2,r20,r21
  801998:	d8c00415 	stw	r3,16(sp)
  80199c:	db401343 	ldbu	r13,77(sp)
  8019a0:	1002ee26 	beq	r2,zero,80255c <___vfprintf_internal_r+0x13cc>
  8019a4:	db000417 	ldw	r12,16(sp)
  8019a8:	a803441e 	bne	r21,zero,8026bc <___vfprintf_internal_r+0x152c>
  8019ac:	a08002a8 	cmpgeui	r2,r20,10
  8019b0:	1003421e 	bne	r2,zero,8026bc <___vfprintf_internal_r+0x152c>
  8019b4:	a5000c04 	addi	r20,r20,48
  8019b8:	dd0026c5 	stb	r20,155(sp)
  8019bc:	db000415 	stw	r12,16(sp)
  8019c0:	05400044 	movi	r21,1
  8019c4:	dc4026c4 	addi	r17,sp,155
  8019c8:	00008b06 	br	801bf8 <___vfprintf_internal_r+0xa68>
  8019cc:	bac00007 	ldb	r11,0(r23)
  8019d0:	63001014 	ori	r12,r12,64
  8019d4:	003e3a06 	br	8012c0 <___vfprintf_internal_r+0x130>
  8019d8:	21003fcc 	andi	r4,r4,255
  8019dc:	2005c11e 	bne	r4,zero,8030e4 <___vfprintf_internal_r+0x1f54>
  8019e0:	00802074 	movhi	r2,129
  8019e4:	1081ee04 	addi	r2,r2,1976
  8019e8:	d8800c15 	stw	r2,48(sp)
  8019ec:	6080080c 	andi	r2,r12,32
  8019f0:	1000d726 	beq	r2,zero,801d50 <___vfprintf_internal_r+0xbc0>
  8019f4:	d8800617 	ldw	r2,24(sp)
  8019f8:	15000017 	ldw	r20,0(r2)
  8019fc:	15400117 	ldw	r21,4(r2)
  801a00:	10800204 	addi	r2,r2,8
  801a04:	d8800615 	stw	r2,24(sp)
  801a08:	6080004c 	andi	r2,r12,1
  801a0c:	10000226 	beq	r2,zero,801a18 <___vfprintf_internal_r+0x888>
  801a10:	a544b03a 	or	r2,r20,r21
  801a14:	1003091e 	bne	r2,zero,80263c <___vfprintf_internal_r+0x14ac>
  801a18:	00800084 	movi	r2,2
  801a1c:	003f1f06 	br	80169c <___vfprintf_internal_r+0x50c>
  801a20:	d8800617 	ldw	r2,24(sp)
  801a24:	d8001345 	stb	zero,77(sp)
  801a28:	14400017 	ldw	r17,0(r2)
  801a2c:	10c00104 	addi	r3,r2,4
  801a30:	88037726 	beq	r17,zero,802810 <___vfprintf_internal_r+0x1680>
  801a34:	40bfffe0 	cmpeqi	r2,r8,-1
  801a38:	1004661e 	bne	r2,zero,802bd4 <___vfprintf_internal_r+0x1a44>
  801a3c:	400d883a 	mov	r6,r8
  801a40:	000b883a 	mov	r5,zero
  801a44:	8809883a 	mov	r4,r17
  801a48:	d8c00715 	stw	r3,28(sp)
  801a4c:	db000615 	stw	r12,24(sp)
  801a50:	da000415 	stw	r8,16(sp)
  801a54:	08068240 	call	806824 <memchr>
  801a58:	da000417 	ldw	r8,16(sp)
  801a5c:	db000617 	ldw	r12,24(sp)
  801a60:	d8c00717 	ldw	r3,28(sp)
  801a64:	10058926 	beq	r2,zero,80308c <___vfprintf_internal_r+0x1efc>
  801a68:	146bc83a 	sub	r21,r2,r17
  801a6c:	a829883a 	mov	r20,r21
  801a70:	d8c00615 	stw	r3,24(sp)
  801a74:	003e8b06 	br	8014a4 <___vfprintf_internal_r+0x314>
  801a78:	bac00007 	ldb	r11,0(r23)
  801a7c:	63000814 	ori	r12,r12,32
  801a80:	003e0f06 	br	8012c0 <___vfprintf_internal_r+0x130>
  801a84:	d8c00617 	ldw	r3,24(sp)
  801a88:	00800c04 	movi	r2,48
  801a8c:	d8801385 	stb	r2,78(sp)
  801a90:	00801e04 	movi	r2,120
  801a94:	01002074 	movhi	r4,129
  801a98:	d88013c5 	stb	r2,79(sp)
  801a9c:	18800104 	addi	r2,r3,4
  801aa0:	d8800615 	stw	r2,24(sp)
  801aa4:	2081ee04 	addi	r2,r4,1976
  801aa8:	d8800c15 	stw	r2,48(sp)
  801aac:	1d000017 	ldw	r20,0(r3)
  801ab0:	002b883a 	mov	r21,zero
  801ab4:	63000094 	ori	r12,r12,2
  801ab8:	00800084 	movi	r2,2
  801abc:	07001e04 	movi	fp,120
  801ac0:	003ef606 	br	80169c <___vfprintf_internal_r+0x50c>
  801ac4:	21003fcc 	andi	r4,r4,255
  801ac8:	2005881e 	bne	r4,zero,8030ec <___vfprintf_internal_r+0x1f5c>
  801acc:	d9000617 	ldw	r4,24(sp)
  801ad0:	6080080c 	andi	r2,r12,32
  801ad4:	20c00017 	ldw	r3,0(r4)
  801ad8:	21000104 	addi	r4,r4,4
  801adc:	d9000615 	stw	r4,24(sp)
  801ae0:	1002d11e 	bne	r2,zero,802628 <___vfprintf_internal_r+0x1498>
  801ae4:	6080040c 	andi	r2,r12,16
  801ae8:	10036f1e 	bne	r2,zero,8028a8 <___vfprintf_internal_r+0x1718>
  801aec:	6300100c 	andi	r12,r12,64
  801af0:	60036d26 	beq	r12,zero,8028a8 <___vfprintf_internal_r+0x1718>
  801af4:	d8800517 	ldw	r2,20(sp)
  801af8:	1880000d 	sth	r2,0(r3)
  801afc:	003dd806 	br	801260 <___vfprintf_internal_r+0xd0>
  801b00:	bac00007 	ldb	r11,0(r23)
  801b04:	58801b18 	cmpnei	r2,r11,108
  801b08:	10033026 	beq	r2,zero,8027cc <___vfprintf_internal_r+0x163c>
  801b0c:	63000414 	ori	r12,r12,16
  801b10:	003deb06 	br	8012c0 <___vfprintf_internal_r+0x130>
  801b14:	21003fcc 	andi	r4,r4,255
  801b18:	2005701e 	bne	r4,zero,8030dc <___vfprintf_internal_r+0x1f4c>
  801b1c:	63000414 	ori	r12,r12,16
  801b20:	6080080c 	andi	r2,r12,32
  801b24:	103f901e 	bne	r2,zero,801968 <___vfprintf_internal_r+0x7d8>
  801b28:	d9000617 	ldw	r4,24(sp)
  801b2c:	6080040c 	andi	r2,r12,16
  801b30:	20c00104 	addi	r3,r4,4
  801b34:	1002d51e 	bne	r2,zero,80268c <___vfprintf_internal_r+0x14fc>
  801b38:	6080100c 	andi	r2,r12,64
  801b3c:	1004a726 	beq	r2,zero,802ddc <___vfprintf_internal_r+0x1c4c>
  801b40:	d8800617 	ldw	r2,24(sp)
  801b44:	d8c00615 	stw	r3,24(sp)
  801b48:	1500000f 	ldh	r20,0(r2)
  801b4c:	a02bd7fa 	srai	r21,r20,31
  801b50:	a805883a 	mov	r2,r21
  801b54:	103f8b0e 	bge	r2,zero,801984 <___vfprintf_internal_r+0x7f4>
  801b58:	a004c03a 	cmpne	r2,r20,zero
  801b5c:	056bc83a 	sub	r21,zero,r21
  801b60:	a8abc83a 	sub	r21,r21,r2
  801b64:	00800b44 	movi	r2,45
  801b68:	d8801345 	stb	r2,77(sp)
  801b6c:	40ffffe0 	cmpeqi	r3,r8,-1
  801b70:	0529c83a 	sub	r20,zero,r20
  801b74:	03400b44 	movi	r13,45
  801b78:	00800044 	movi	r2,1
  801b7c:	183ecb26 	beq	r3,zero,8016ac <___vfprintf_internal_r+0x51c>
  801b80:	10c00060 	cmpeqi	r3,r2,1
  801b84:	183f881e 	bne	r3,zero,8019a8 <___vfprintf_internal_r+0x818>
  801b88:	108000a0 	cmpeqi	r2,r2,2
  801b8c:	1001311e 	bne	r2,zero,802054 <___vfprintf_internal_r+0xec4>
  801b90:	dc402704 	addi	r17,sp,156
  801b94:	a004d0fa 	srli	r2,r20,3
  801b98:	a806977a 	slli	r3,r21,29
  801b9c:	a82ad0fa 	srli	r21,r21,3
  801ba0:	a50001cc 	andi	r20,r20,7
  801ba4:	a1000c04 	addi	r4,r20,48
  801ba8:	18a8b03a 	or	r20,r3,r2
  801bac:	893fffc5 	stb	r4,-1(r17)
  801bb0:	a544b03a 	or	r2,r20,r21
  801bb4:	880b883a 	mov	r5,r17
  801bb8:	8c7fffc4 	addi	r17,r17,-1
  801bbc:	103ff51e 	bne	r2,zero,801b94 <___vfprintf_internal_r+0xa04>
  801bc0:	6080004c 	andi	r2,r12,1
  801bc4:	10013026 	beq	r2,zero,802088 <___vfprintf_internal_r+0xef8>
  801bc8:	21003fcc 	andi	r4,r4,255
  801bcc:	2100201c 	xori	r4,r4,128
  801bd0:	213fe004 	addi	r4,r4,-128
  801bd4:	20800c18 	cmpnei	r2,r4,48
  801bd8:	10012b26 	beq	r2,zero,802088 <___vfprintf_internal_r+0xef8>
  801bdc:	00800c04 	movi	r2,48
  801be0:	297fff84 	addi	r5,r5,-2
  801be4:	88bfffc5 	stb	r2,-1(r17)
  801be8:	d8802704 	addi	r2,sp,156
  801bec:	116bc83a 	sub	r21,r2,r5
  801bf0:	db000415 	stw	r12,16(sp)
  801bf4:	2823883a 	mov	r17,r5
  801bf8:	4029883a 	mov	r20,r8
  801bfc:	4540010e 	bge	r8,r21,801c04 <___vfprintf_internal_r+0xa74>
  801c00:	a829883a 	mov	r20,r21
  801c04:	d8000715 	stw	zero,28(sp)
  801c08:	6b403fcc 	andi	r13,r13,255
  801c0c:	6b40201c 	xori	r13,r13,128
  801c10:	6b7fe004 	addi	r13,r13,-128
  801c14:	683e2626 	beq	r13,zero,8014b0 <___vfprintf_internal_r+0x320>
  801c18:	a5000044 	addi	r20,r20,1
  801c1c:	003e2406 	br	8014b0 <___vfprintf_internal_r+0x320>
  801c20:	bac00007 	ldb	r11,0(r23)
  801c24:	63002014 	ori	r12,r12,128
  801c28:	003da506 	br	8012c0 <___vfprintf_internal_r+0x130>
  801c2c:	bf000007 	ldb	fp,0(r23)
  801c30:	b8800044 	addi	r2,r23,1
  801c34:	e0c00aa0 	cmpeqi	r3,fp,42
  801c38:	1805841e 	bne	r3,zero,80324c <___vfprintf_internal_r+0x20bc>
  801c3c:	e0fff404 	addi	r3,fp,-48
  801c40:	198002b0 	cmpltui	r6,r3,10
  801c44:	102f883a 	mov	r23,r2
  801c48:	0011883a 	mov	r8,zero
  801c4c:	303d9e26 	beq	r6,zero,8012c8 <___vfprintf_internal_r+0x138>
  801c50:	400490ba 	slli	r2,r8,2
  801c54:	bf000007 	ldb	fp,0(r23)
  801c58:	bdc00044 	addi	r23,r23,1
  801c5c:	1211883a 	add	r8,r2,r8
  801c60:	4211883a 	add	r8,r8,r8
  801c64:	40d1883a 	add	r8,r8,r3
  801c68:	e0fff404 	addi	r3,fp,-48
  801c6c:	188002b0 	cmpltui	r2,r3,10
  801c70:	103ff71e 	bne	r2,zero,801c50 <___vfprintf_internal_r+0xac0>
  801c74:	003d9406 	br	8012c8 <___vfprintf_internal_r+0x138>
  801c78:	bf000003 	ldbu	fp,0(r23)
  801c7c:	e2c03fcc 	andi	r11,fp,255
  801c80:	5ac0201c 	xori	r11,r11,128
  801c84:	63000114 	ori	r12,r12,4
  801c88:	5affe004 	addi	r11,r11,-128
  801c8c:	003d8c06 	br	8012c0 <___vfprintf_internal_r+0x130>
  801c90:	bac00007 	ldb	r11,0(r23)
  801c94:	01000044 	movi	r4,1
  801c98:	01400ac4 	movi	r5,43
  801c9c:	003d8806 	br	8012c0 <___vfprintf_internal_r+0x130>
  801ca0:	d8800617 	ldw	r2,24(sp)
  801ca4:	bf000003 	ldbu	fp,0(r23)
  801ca8:	14000017 	ldw	r16,0(r2)
  801cac:	10800104 	addi	r2,r2,4
  801cb0:	8002aa16 	blt	r16,zero,80275c <___vfprintf_internal_r+0x15cc>
  801cb4:	d8800615 	stw	r2,24(sp)
  801cb8:	e2c03fcc 	andi	r11,fp,255
  801cbc:	5ac0201c 	xori	r11,r11,128
  801cc0:	5affe004 	addi	r11,r11,-128
  801cc4:	003d7e06 	br	8012c0 <___vfprintf_internal_r+0x130>
  801cc8:	bac00007 	ldb	r11,0(r23)
  801ccc:	63000054 	ori	r12,r12,1
  801cd0:	003d7b06 	br	8012c0 <___vfprintf_internal_r+0x130>
  801cd4:	28803fcc 	andi	r2,r5,255
  801cd8:	1080201c 	xori	r2,r2,128
  801cdc:	10bfe004 	addi	r2,r2,-128
  801ce0:	bf000003 	ldbu	fp,0(r23)
  801ce4:	103ff41e 	bne	r2,zero,801cb8 <___vfprintf_internal_r+0xb28>
  801ce8:	e2c03fcc 	andi	r11,fp,255
  801cec:	5ac0201c 	xori	r11,r11,128
  801cf0:	01000044 	movi	r4,1
  801cf4:	01400804 	movi	r5,32
  801cf8:	5affe004 	addi	r11,r11,-128
  801cfc:	003d7006 	br	8012c0 <___vfprintf_internal_r+0x130>
  801d00:	bac00007 	ldb	r11,0(r23)
  801d04:	63000214 	ori	r12,r12,8
  801d08:	003d6d06 	br	8012c0 <___vfprintf_internal_r+0x130>
  801d0c:	d8c00617 	ldw	r3,24(sp)
  801d10:	d8001345 	stb	zero,77(sp)
  801d14:	05000044 	movi	r20,1
  801d18:	18800017 	ldw	r2,0(r3)
  801d1c:	18c00104 	addi	r3,r3,4
  801d20:	d8c00615 	stw	r3,24(sp)
  801d24:	d8801d05 	stb	r2,116(sp)
  801d28:	05400044 	movi	r21,1
  801d2c:	dc401d04 	addi	r17,sp,116
  801d30:	003ddc06 	br	8014a4 <___vfprintf_internal_r+0x314>
  801d34:	21003fcc 	andi	r4,r4,255
  801d38:	2004e61e 	bne	r4,zero,8030d4 <___vfprintf_internal_r+0x1f44>
  801d3c:	00802074 	movhi	r2,129
  801d40:	1081e904 	addi	r2,r2,1956
  801d44:	d8800c15 	stw	r2,48(sp)
  801d48:	6080080c 	andi	r2,r12,32
  801d4c:	103f291e 	bne	r2,zero,8019f4 <___vfprintf_internal_r+0x864>
  801d50:	d9000617 	ldw	r4,24(sp)
  801d54:	6080040c 	andi	r2,r12,16
  801d58:	20c00104 	addi	r3,r4,4
  801d5c:	10023d1e 	bne	r2,zero,802654 <___vfprintf_internal_r+0x14c4>
  801d60:	6080100c 	andi	r2,r12,64
  801d64:	10042f26 	beq	r2,zero,802e24 <___vfprintf_internal_r+0x1c94>
  801d68:	d8800617 	ldw	r2,24(sp)
  801d6c:	002b883a 	mov	r21,zero
  801d70:	d8c00615 	stw	r3,24(sp)
  801d74:	1500000b 	ldhu	r20,0(r2)
  801d78:	003f2306 	br	801a08 <___vfprintf_internal_r+0x878>
  801d7c:	e2c01990 	cmplti	r11,fp,102
  801d80:	5800f61e 	bne	r11,zero,80215c <___vfprintf_internal_r+0xfcc>
  801d84:	d9000917 	ldw	r4,36(sp)
  801d88:	d9400a17 	ldw	r5,40(sp)
  801d8c:	000d883a 	mov	r6,zero
  801d90:	000f883a 	mov	r7,zero
  801d94:	d8c00e15 	stw	r3,56(sp)
  801d98:	080c7c00 	call	80c7c0 <__eqdf2>
  801d9c:	d8c00e17 	ldw	r3,56(sp)
  801da0:	1001881e 	bne	r2,zero,8023c4 <___vfprintf_internal_r+0x1234>
  801da4:	d8801b17 	ldw	r2,108(sp)
  801da8:	01002074 	movhi	r4,129
  801dac:	2101f504 	addi	r4,r4,2004
  801db0:	10800044 	addi	r2,r2,1
  801db4:	18c00044 	addi	r3,r3,1
  801db8:	b1000015 	stw	r4,0(r22)
  801dbc:	01000044 	movi	r4,1
  801dc0:	d8801b15 	stw	r2,108(sp)
  801dc4:	b1000115 	stw	r4,4(r22)
  801dc8:	d8c01c15 	stw	r3,112(sp)
  801dcc:	10800208 	cmpgei	r2,r2,8
  801dd0:	10036e1e 	bne	r2,zero,802b8c <___vfprintf_internal_r+0x19fc>
  801dd4:	b5800204 	addi	r22,r22,8
  801dd8:	d8801417 	ldw	r2,80(sp)
  801ddc:	d9000817 	ldw	r4,32(sp)
  801de0:	11020b0e 	bge	r2,r4,802610 <___vfprintf_internal_r+0x1480>
  801de4:	d8800d17 	ldw	r2,52(sp)
  801de8:	d9000b17 	ldw	r4,44(sp)
  801dec:	b0800015 	stw	r2,0(r22)
  801df0:	d8801b17 	ldw	r2,108(sp)
  801df4:	1907883a 	add	r3,r3,r4
  801df8:	b1000115 	stw	r4,4(r22)
  801dfc:	10800044 	addi	r2,r2,1
  801e00:	d8801b15 	stw	r2,108(sp)
  801e04:	d8c01c15 	stw	r3,112(sp)
  801e08:	10800208 	cmpgei	r2,r2,8
  801e0c:	1002761e 	bne	r2,zero,8027e8 <___vfprintf_internal_r+0x1658>
  801e10:	b5800204 	addi	r22,r22,8
  801e14:	d8800817 	ldw	r2,32(sp)
  801e18:	157fffc4 	addi	r21,r2,-1
  801e1c:	057dda0e 	bge	zero,r21,801588 <___vfprintf_internal_r+0x3f8>
  801e20:	01c02074 	movhi	r7,129
  801e24:	a9000450 	cmplti	r4,r21,17
  801e28:	d8801b17 	ldw	r2,108(sp)
  801e2c:	39c1f604 	addi	r7,r7,2008
  801e30:	2003521e 	bne	r4,zero,802b7c <___vfprintf_internal_r+0x19ec>
  801e34:	07000404 	movi	fp,16
  801e38:	3823883a 	mov	r17,r7
  801e3c:	00000406 	br	801e50 <___vfprintf_internal_r+0xcc0>
  801e40:	b5800204 	addi	r22,r22,8
  801e44:	ad7ffc04 	addi	r21,r21,-16
  801e48:	a9000448 	cmpgei	r4,r21,17
  801e4c:	20034a26 	beq	r4,zero,802b78 <___vfprintf_internal_r+0x19e8>
  801e50:	10800044 	addi	r2,r2,1
  801e54:	18c00404 	addi	r3,r3,16
  801e58:	b4400015 	stw	r17,0(r22)
  801e5c:	b7000115 	stw	fp,4(r22)
  801e60:	d8c01c15 	stw	r3,112(sp)
  801e64:	d8801b15 	stw	r2,108(sp)
  801e68:	11000208 	cmpgei	r4,r2,8
  801e6c:	203ff426 	beq	r4,zero,801e40 <___vfprintf_internal_r+0xcb0>
  801e70:	d9801a04 	addi	r6,sp,104
  801e74:	900b883a 	mov	r5,r18
  801e78:	9809883a 	mov	r4,r19
  801e7c:	080853c0 	call	80853c <__sprint_r>
  801e80:	103dd21e 	bne	r2,zero,8015cc <___vfprintf_internal_r+0x43c>
  801e84:	d8c01c17 	ldw	r3,112(sp)
  801e88:	d8801b17 	ldw	r2,108(sp)
  801e8c:	dd802704 	addi	r22,sp,156
  801e90:	003fec06 	br	801e44 <___vfprintf_internal_r+0xcb4>
  801e94:	8519c83a 	sub	r12,r16,r20
  801e98:	033dac0e 	bge	zero,r12,80154c <___vfprintf_internal_r+0x3bc>
  801e9c:	01c02074 	movhi	r7,129
  801ea0:	61000450 	cmplti	r4,r12,17
  801ea4:	d8801b17 	ldw	r2,108(sp)
  801ea8:	39c1f604 	addi	r7,r7,2008
  801eac:	2000281e 	bne	r4,zero,801f50 <___vfprintf_internal_r+0xdc0>
  801eb0:	dc400e15 	stw	r17,56(sp)
  801eb4:	dc000f15 	stw	r16,60(sp)
  801eb8:	b009883a 	mov	r4,r22
  801ebc:	03400404 	movi	r13,16
  801ec0:	a02d883a 	mov	r22,r20
  801ec4:	6021883a 	mov	r16,r12
  801ec8:	4029883a 	mov	r20,r8
  801ecc:	3823883a 	mov	r17,r7
  801ed0:	00000406 	br	801ee4 <___vfprintf_internal_r+0xd54>
  801ed4:	843ffc04 	addi	r16,r16,-16
  801ed8:	81400448 	cmpgei	r5,r16,17
  801edc:	21000204 	addi	r4,r4,8
  801ee0:	28001426 	beq	r5,zero,801f34 <___vfprintf_internal_r+0xda4>
  801ee4:	10800044 	addi	r2,r2,1
  801ee8:	18c00404 	addi	r3,r3,16
  801eec:	24400015 	stw	r17,0(r4)
  801ef0:	23400115 	stw	r13,4(r4)
  801ef4:	d8c01c15 	stw	r3,112(sp)
  801ef8:	d8801b15 	stw	r2,108(sp)
  801efc:	11400208 	cmpgei	r5,r2,8
  801f00:	283ff426 	beq	r5,zero,801ed4 <___vfprintf_internal_r+0xd44>
  801f04:	d9801a04 	addi	r6,sp,104
  801f08:	900b883a 	mov	r5,r18
  801f0c:	9809883a 	mov	r4,r19
  801f10:	080853c0 	call	80853c <__sprint_r>
  801f14:	103dad1e 	bne	r2,zero,8015cc <___vfprintf_internal_r+0x43c>
  801f18:	843ffc04 	addi	r16,r16,-16
  801f1c:	81400448 	cmpgei	r5,r16,17
  801f20:	d8c01c17 	ldw	r3,112(sp)
  801f24:	d8801b17 	ldw	r2,108(sp)
  801f28:	d9002704 	addi	r4,sp,156
  801f2c:	03400404 	movi	r13,16
  801f30:	283fec1e 	bne	r5,zero,801ee4 <___vfprintf_internal_r+0xd54>
  801f34:	8019883a 	mov	r12,r16
  801f38:	880f883a 	mov	r7,r17
  801f3c:	dc000f17 	ldw	r16,60(sp)
  801f40:	dc400e17 	ldw	r17,56(sp)
  801f44:	a011883a 	mov	r8,r20
  801f48:	b029883a 	mov	r20,r22
  801f4c:	202d883a 	mov	r22,r4
  801f50:	10800044 	addi	r2,r2,1
  801f54:	1b07883a 	add	r3,r3,r12
  801f58:	d8801b15 	stw	r2,108(sp)
  801f5c:	b1c00015 	stw	r7,0(r22)
  801f60:	b3000115 	stw	r12,4(r22)
  801f64:	d8c01c15 	stw	r3,112(sp)
  801f68:	10800208 	cmpgei	r2,r2,8
  801f6c:	10030f1e 	bne	r2,zero,802bac <___vfprintf_internal_r+0x1a1c>
  801f70:	4551c83a 	sub	r8,r8,r21
  801f74:	b5800204 	addi	r22,r22,8
  801f78:	023d760e 	bge	zero,r8,801554 <___vfprintf_internal_r+0x3c4>
  801f7c:	01c02074 	movhi	r7,129
  801f80:	41000450 	cmplti	r4,r8,17
  801f84:	d8801b17 	ldw	r2,108(sp)
  801f88:	39c1f604 	addi	r7,r7,2008
  801f8c:	2000221e 	bne	r4,zero,802018 <___vfprintf_internal_r+0xe88>
  801f90:	dc400e15 	stw	r17,56(sp)
  801f94:	dc000f15 	stw	r16,60(sp)
  801f98:	03000404 	movi	r12,16
  801f9c:	4021883a 	mov	r16,r8
  801fa0:	3823883a 	mov	r17,r7
  801fa4:	00000406 	br	801fb8 <___vfprintf_internal_r+0xe28>
  801fa8:	843ffc04 	addi	r16,r16,-16
  801fac:	81000448 	cmpgei	r4,r16,17
  801fb0:	b5800204 	addi	r22,r22,8
  801fb4:	20001426 	beq	r4,zero,802008 <___vfprintf_internal_r+0xe78>
  801fb8:	10800044 	addi	r2,r2,1
  801fbc:	18c00404 	addi	r3,r3,16
  801fc0:	b4400015 	stw	r17,0(r22)
  801fc4:	b3000115 	stw	r12,4(r22)
  801fc8:	d8c01c15 	stw	r3,112(sp)
  801fcc:	d8801b15 	stw	r2,108(sp)
  801fd0:	11000208 	cmpgei	r4,r2,8
  801fd4:	203ff426 	beq	r4,zero,801fa8 <___vfprintf_internal_r+0xe18>
  801fd8:	d9801a04 	addi	r6,sp,104
  801fdc:	900b883a 	mov	r5,r18
  801fe0:	9809883a 	mov	r4,r19
  801fe4:	080853c0 	call	80853c <__sprint_r>
  801fe8:	103d781e 	bne	r2,zero,8015cc <___vfprintf_internal_r+0x43c>
  801fec:	843ffc04 	addi	r16,r16,-16
  801ff0:	81000448 	cmpgei	r4,r16,17
  801ff4:	d8c01c17 	ldw	r3,112(sp)
  801ff8:	d8801b17 	ldw	r2,108(sp)
  801ffc:	dd802704 	addi	r22,sp,156
  802000:	03000404 	movi	r12,16
  802004:	203fec1e 	bne	r4,zero,801fb8 <___vfprintf_internal_r+0xe28>
  802008:	8011883a 	mov	r8,r16
  80200c:	880f883a 	mov	r7,r17
  802010:	dc000f17 	ldw	r16,60(sp)
  802014:	dc400e17 	ldw	r17,56(sp)
  802018:	10800044 	addi	r2,r2,1
  80201c:	1a07883a 	add	r3,r3,r8
  802020:	d8801b15 	stw	r2,108(sp)
  802024:	b1c00015 	stw	r7,0(r22)
  802028:	b2000115 	stw	r8,4(r22)
  80202c:	d8c01c15 	stw	r3,112(sp)
  802030:	10800208 	cmpgei	r2,r2,8
  802034:	10016e1e 	bne	r2,zero,8025f0 <___vfprintf_internal_r+0x1460>
  802038:	b5800204 	addi	r22,r22,8
  80203c:	003d4506 	br	801554 <___vfprintf_internal_r+0x3c4>
  802040:	10c00060 	cmpeqi	r3,r2,1
  802044:	1803c81e 	bne	r3,zero,802f68 <___vfprintf_internal_r+0x1dd8>
  802048:	108000a0 	cmpeqi	r2,r2,2
  80204c:	db000417 	ldw	r12,16(sp)
  802050:	103ecf26 	beq	r2,zero,801b90 <___vfprintf_internal_r+0xa00>
  802054:	d9000c17 	ldw	r4,48(sp)
  802058:	dc402704 	addi	r17,sp,156
  80205c:	a08003cc 	andi	r2,r20,15
  802060:	a806973a 	slli	r3,r21,28
  802064:	a028d13a 	srli	r20,r20,4
  802068:	2085883a 	add	r2,r4,r2
  80206c:	10800003 	ldbu	r2,0(r2)
  802070:	a82ad13a 	srli	r21,r21,4
  802074:	1d28b03a 	or	r20,r3,r20
  802078:	88bfffc5 	stb	r2,-1(r17)
  80207c:	a544b03a 	or	r2,r20,r21
  802080:	8c7fffc4 	addi	r17,r17,-1
  802084:	103ff51e 	bne	r2,zero,80205c <___vfprintf_internal_r+0xecc>
  802088:	d8802704 	addi	r2,sp,156
  80208c:	146bc83a 	sub	r21,r2,r17
  802090:	db000415 	stw	r12,16(sp)
  802094:	003ed806 	br	801bf8 <___vfprintf_internal_r+0xa68>
  802098:	d9801a04 	addi	r6,sp,104
  80209c:	900b883a 	mov	r5,r18
  8020a0:	9809883a 	mov	r4,r19
  8020a4:	080853c0 	call	80853c <__sprint_r>
  8020a8:	103d4226 	beq	r2,zero,8015b4 <___vfprintf_internal_r+0x424>
  8020ac:	003d4706 	br	8015cc <___vfprintf_internal_r+0x43c>
  8020b0:	d9801a04 	addi	r6,sp,104
  8020b4:	900b883a 	mov	r5,r18
  8020b8:	9809883a 	mov	r4,r19
  8020bc:	080853c0 	call	80853c <__sprint_r>
  8020c0:	103d421e 	bne	r2,zero,8015cc <___vfprintf_internal_r+0x43c>
  8020c4:	d9401417 	ldw	r5,80(sp)
  8020c8:	d8c01c17 	ldw	r3,112(sp)
  8020cc:	dd802704 	addi	r22,sp,156
  8020d0:	2802c81e 	bne	r5,zero,802bf4 <___vfprintf_internal_r+0x1a64>
  8020d4:	d8800417 	ldw	r2,16(sp)
  8020d8:	d9000817 	ldw	r4,32(sp)
  8020dc:	1080004c 	andi	r2,r2,1
  8020e0:	1104b03a 	or	r2,r2,r4
  8020e4:	103d2826 	beq	r2,zero,801588 <___vfprintf_internal_r+0x3f8>
  8020e8:	d8800d17 	ldw	r2,52(sp)
  8020ec:	d9000b17 	ldw	r4,44(sp)
  8020f0:	b0800015 	stw	r2,0(r22)
  8020f4:	d8801b17 	ldw	r2,108(sp)
  8020f8:	20c7883a 	add	r3,r4,r3
  8020fc:	b1000115 	stw	r4,4(r22)
  802100:	10800044 	addi	r2,r2,1
  802104:	d8c01c15 	stw	r3,112(sp)
  802108:	d8801b15 	stw	r2,108(sp)
  80210c:	11000208 	cmpgei	r4,r2,8
  802110:	2003821e 	bne	r4,zero,802f1c <___vfprintf_internal_r+0x1d8c>
  802114:	b5800204 	addi	r22,r22,8
  802118:	d9000817 	ldw	r4,32(sp)
  80211c:	10800044 	addi	r2,r2,1
  802120:	d8801b15 	stw	r2,108(sp)
  802124:	20c7883a 	add	r3,r4,r3
  802128:	b4400015 	stw	r17,0(r22)
  80212c:	b1000115 	stw	r4,4(r22)
  802130:	d8c01c15 	stw	r3,112(sp)
  802134:	10800208 	cmpgei	r2,r2,8
  802138:	103d1226 	beq	r2,zero,801584 <___vfprintf_internal_r+0x3f4>
  80213c:	d9801a04 	addi	r6,sp,104
  802140:	900b883a 	mov	r5,r18
  802144:	9809883a 	mov	r4,r19
  802148:	080853c0 	call	80853c <__sprint_r>
  80214c:	103d1f1e 	bne	r2,zero,8015cc <___vfprintf_internal_r+0x43c>
  802150:	d8c01c17 	ldw	r3,112(sp)
  802154:	dd802704 	addi	r22,sp,156
  802158:	003d0b06 	br	801588 <___vfprintf_internal_r+0x3f8>
  80215c:	d8800817 	ldw	r2,32(sp)
  802160:	da001b17 	ldw	r8,108(sp)
  802164:	18c00044 	addi	r3,r3,1
  802168:	10800088 	cmpgei	r2,r2,2
  80216c:	45400044 	addi	r21,r8,1
  802170:	b7000204 	addi	fp,r22,8
  802174:	1000ec26 	beq	r2,zero,802528 <___vfprintf_internal_r+0x1398>
  802178:	00800044 	movi	r2,1
  80217c:	b0800115 	stw	r2,4(r22)
  802180:	b4400015 	stw	r17,0(r22)
  802184:	d8c01c15 	stw	r3,112(sp)
  802188:	dd401b15 	stw	r21,108(sp)
  80218c:	a8800210 	cmplti	r2,r21,8
  802190:	1001d126 	beq	r2,zero,8028d8 <___vfprintf_internal_r+0x1748>
  802194:	d8800b17 	ldw	r2,44(sp)
  802198:	d9000d17 	ldw	r4,52(sp)
  80219c:	ad400044 	addi	r21,r21,1
  8021a0:	1887883a 	add	r3,r3,r2
  8021a4:	e0800115 	stw	r2,4(fp)
  8021a8:	e1000015 	stw	r4,0(fp)
  8021ac:	d8c01c15 	stw	r3,112(sp)
  8021b0:	dd401b15 	stw	r21,108(sp)
  8021b4:	a8800208 	cmpgei	r2,r21,8
  8021b8:	1001be1e 	bne	r2,zero,8028b4 <___vfprintf_internal_r+0x1724>
  8021bc:	e7000204 	addi	fp,fp,8
  8021c0:	d9000917 	ldw	r4,36(sp)
  8021c4:	d9400a17 	ldw	r5,40(sp)
  8021c8:	aa000044 	addi	r8,r21,1
  8021cc:	000d883a 	mov	r6,zero
  8021d0:	000f883a 	mov	r7,zero
  8021d4:	d8c00e15 	stw	r3,56(sp)
  8021d8:	da000715 	stw	r8,28(sp)
  8021dc:	080c7c00 	call	80c7c0 <__eqdf2>
  8021e0:	d8c00817 	ldw	r3,32(sp)
  8021e4:	da000717 	ldw	r8,28(sp)
  8021e8:	e5800204 	addi	r22,fp,8
  8021ec:	1affffc4 	addi	r11,r3,-1
  8021f0:	d8c00e17 	ldw	r3,56(sp)
  8021f4:	1000de26 	beq	r2,zero,802570 <___vfprintf_internal_r+0x13e0>
  8021f8:	8a400044 	addi	r9,r17,1
  8021fc:	1ac7883a 	add	r3,r3,r11
  802200:	da001b15 	stw	r8,108(sp)
  802204:	e2400015 	stw	r9,0(fp)
  802208:	e2c00115 	stw	r11,4(fp)
  80220c:	d8c01c15 	stw	r3,112(sp)
  802210:	42000208 	cmpgei	r8,r8,8
  802214:	4001621e 	bne	r8,zero,8027a0 <___vfprintf_internal_r+0x1610>
  802218:	e0800404 	addi	r2,fp,16
  80221c:	aa000084 	addi	r8,r21,2
  802220:	b039883a 	mov	fp,r22
  802224:	102d883a 	mov	r22,r2
  802228:	d9001017 	ldw	r4,64(sp)
  80222c:	d8801644 	addi	r2,sp,89
  802230:	da001b15 	stw	r8,108(sp)
  802234:	20c7883a 	add	r3,r4,r3
  802238:	e0800015 	stw	r2,0(fp)
  80223c:	e1000115 	stw	r4,4(fp)
  802240:	d8c01c15 	stw	r3,112(sp)
  802244:	42000210 	cmplti	r8,r8,8
  802248:	403ccf1e 	bne	r8,zero,801588 <___vfprintf_internal_r+0x3f8>
  80224c:	003fbb06 	br	80213c <___vfprintf_internal_r+0xfac>
  802250:	db000417 	ldw	r12,16(sp)
  802254:	003e4a06 	br	801b80 <___vfprintf_internal_r+0x9f0>
  802258:	03002074 	movhi	r12,129
  80225c:	39000450 	cmplti	r4,r7,17
  802260:	d8801b17 	ldw	r2,108(sp)
  802264:	6301fa04 	addi	r12,r12,2024
  802268:	2000321e 	bne	r4,zero,802334 <___vfprintf_internal_r+0x11a4>
  80226c:	dc401115 	stw	r17,68(sp)
  802270:	b009883a 	mov	r4,r22
  802274:	9023883a 	mov	r17,r18
  802278:	a82d883a 	mov	r22,r21
  80227c:	ddc01215 	stw	r23,72(sp)
  802280:	03c00404 	movi	r15,16
  802284:	a02f883a 	mov	r23,r20
  802288:	db800e15 	stw	r14,56(sp)
  80228c:	8029883a 	mov	r20,r16
  802290:	db400f15 	stw	r13,60(sp)
  802294:	402b883a 	mov	r21,r8
  802298:	3821883a 	mov	r16,r7
  80229c:	6025883a 	mov	r18,r12
  8022a0:	00000406 	br	8022b4 <___vfprintf_internal_r+0x1124>
  8022a4:	843ffc04 	addi	r16,r16,-16
  8022a8:	81800448 	cmpgei	r6,r16,17
  8022ac:	21000204 	addi	r4,r4,8
  8022b0:	30001426 	beq	r6,zero,802304 <___vfprintf_internal_r+0x1174>
  8022b4:	10800044 	addi	r2,r2,1
  8022b8:	18c00404 	addi	r3,r3,16
  8022bc:	24800015 	stw	r18,0(r4)
  8022c0:	23c00115 	stw	r15,4(r4)
  8022c4:	d8c01c15 	stw	r3,112(sp)
  8022c8:	d8801b15 	stw	r2,108(sp)
  8022cc:	11800208 	cmpgei	r6,r2,8
  8022d0:	303ff426 	beq	r6,zero,8022a4 <___vfprintf_internal_r+0x1114>
  8022d4:	d9801a04 	addi	r6,sp,104
  8022d8:	880b883a 	mov	r5,r17
  8022dc:	9809883a 	mov	r4,r19
  8022e0:	080853c0 	call	80853c <__sprint_r>
  8022e4:	1001a11e 	bne	r2,zero,80296c <___vfprintf_internal_r+0x17dc>
  8022e8:	843ffc04 	addi	r16,r16,-16
  8022ec:	81800448 	cmpgei	r6,r16,17
  8022f0:	d8c01c17 	ldw	r3,112(sp)
  8022f4:	d8801b17 	ldw	r2,108(sp)
  8022f8:	d9002704 	addi	r4,sp,156
  8022fc:	03c00404 	movi	r15,16
  802300:	303fec1e 	bne	r6,zero,8022b4 <___vfprintf_internal_r+0x1124>
  802304:	800f883a 	mov	r7,r16
  802308:	9019883a 	mov	r12,r18
  80230c:	a021883a 	mov	r16,r20
  802310:	8825883a 	mov	r18,r17
  802314:	b829883a 	mov	r20,r23
  802318:	db800e17 	ldw	r14,56(sp)
  80231c:	db400f17 	ldw	r13,60(sp)
  802320:	ddc01217 	ldw	r23,72(sp)
  802324:	dc401117 	ldw	r17,68(sp)
  802328:	a811883a 	mov	r8,r21
  80232c:	b02b883a 	mov	r21,r22
  802330:	202d883a 	mov	r22,r4
  802334:	10800044 	addi	r2,r2,1
  802338:	19c7883a 	add	r3,r3,r7
  80233c:	d8801b15 	stw	r2,108(sp)
  802340:	b3000015 	stw	r12,0(r22)
  802344:	b1c00115 	stw	r7,4(r22)
  802348:	d8c01c15 	stw	r3,112(sp)
  80234c:	10800208 	cmpgei	r2,r2,8
  802350:	1001781e 	bne	r2,zero,802934 <___vfprintf_internal_r+0x17a4>
  802354:	b5800204 	addi	r22,r22,8
  802358:	003c5f06 	br	8014d8 <___vfprintf_internal_r+0x348>
  80235c:	d9801a04 	addi	r6,sp,104
  802360:	900b883a 	mov	r5,r18
  802364:	9809883a 	mov	r4,r19
  802368:	da000f15 	stw	r8,60(sp)
  80236c:	db400e15 	stw	r13,56(sp)
  802370:	080853c0 	call	80853c <__sprint_r>
  802374:	103c951e 	bne	r2,zero,8015cc <___vfprintf_internal_r+0x43c>
  802378:	d8c01c17 	ldw	r3,112(sp)
  80237c:	da000f17 	ldw	r8,60(sp)
  802380:	db400e17 	ldw	r13,56(sp)
  802384:	dd802704 	addi	r22,sp,156
  802388:	003c6e06 	br	801544 <___vfprintf_internal_r+0x3b4>
  80238c:	d9801a04 	addi	r6,sp,104
  802390:	900b883a 	mov	r5,r18
  802394:	9809883a 	mov	r4,r19
  802398:	da001115 	stw	r8,68(sp)
  80239c:	db400f15 	stw	r13,60(sp)
  8023a0:	db800e15 	stw	r14,56(sp)
  8023a4:	080853c0 	call	80853c <__sprint_r>
  8023a8:	103c881e 	bne	r2,zero,8015cc <___vfprintf_internal_r+0x43c>
  8023ac:	d8c01c17 	ldw	r3,112(sp)
  8023b0:	da001117 	ldw	r8,68(sp)
  8023b4:	db400f17 	ldw	r13,60(sp)
  8023b8:	db800e17 	ldw	r14,56(sp)
  8023bc:	dd802704 	addi	r22,sp,156
  8023c0:	003c5306 	br	801510 <___vfprintf_internal_r+0x380>
  8023c4:	d9401417 	ldw	r5,80(sp)
  8023c8:	01414c0e 	bge	zero,r5,8028fc <___vfprintf_internal_r+0x176c>
  8023cc:	d8800717 	ldw	r2,28(sp)
  8023d0:	d9000817 	ldw	r4,32(sp)
  8023d4:	102b883a 	mov	r21,r2
  8023d8:	2080e316 	blt	r4,r2,802768 <___vfprintf_internal_r+0x15d8>
  8023dc:	05400a0e 	bge	zero,r21,802408 <___vfprintf_internal_r+0x1278>
  8023e0:	d8801b17 	ldw	r2,108(sp)
  8023e4:	1d47883a 	add	r3,r3,r21
  8023e8:	b4400015 	stw	r17,0(r22)
  8023ec:	10800044 	addi	r2,r2,1
  8023f0:	d8801b15 	stw	r2,108(sp)
  8023f4:	b5400115 	stw	r21,4(r22)
  8023f8:	d8c01c15 	stw	r3,112(sp)
  8023fc:	10800208 	cmpgei	r2,r2,8
  802400:	10030c1e 	bne	r2,zero,803034 <___vfprintf_internal_r+0x1ea4>
  802404:	b5800204 	addi	r22,r22,8
  802408:	a800ff16 	blt	r21,zero,802808 <___vfprintf_internal_r+0x1678>
  80240c:	d8800717 	ldw	r2,28(sp)
  802410:	156bc83a 	sub	r21,r2,r21
  802414:	05410616 	blt	zero,r21,802830 <___vfprintf_internal_r+0x16a0>
  802418:	dd401417 	ldw	r21,80(sp)
  80241c:	d8800817 	ldw	r2,32(sp)
  802420:	a880d40e 	bge	r21,r2,802774 <___vfprintf_internal_r+0x15e4>
  802424:	d8800d17 	ldw	r2,52(sp)
  802428:	d9000b17 	ldw	r4,44(sp)
  80242c:	b0800015 	stw	r2,0(r22)
  802430:	d8801b17 	ldw	r2,108(sp)
  802434:	1907883a 	add	r3,r3,r4
  802438:	b1000115 	stw	r4,4(r22)
  80243c:	10800044 	addi	r2,r2,1
  802440:	d8801b15 	stw	r2,108(sp)
  802444:	d8c01c15 	stw	r3,112(sp)
  802448:	10800208 	cmpgei	r2,r2,8
  80244c:	10028e1e 	bne	r2,zero,802e88 <___vfprintf_internal_r+0x1cf8>
  802450:	b5800204 	addi	r22,r22,8
  802454:	d9000817 	ldw	r4,32(sp)
  802458:	d9400717 	ldw	r5,28(sp)
  80245c:	2545c83a 	sub	r2,r4,r21
  802460:	2149c83a 	sub	r4,r4,r5
  802464:	102b883a 	mov	r21,r2
  802468:	2080010e 	bge	r4,r2,802470 <___vfprintf_internal_r+0x12e0>
  80246c:	202b883a 	mov	r21,r4
  802470:	05400c0e 	bge	zero,r21,8024a4 <___vfprintf_internal_r+0x1314>
  802474:	d9000717 	ldw	r4,28(sp)
  802478:	1d47883a 	add	r3,r3,r21
  80247c:	b5400115 	stw	r21,4(r22)
  802480:	8913883a 	add	r9,r17,r4
  802484:	d9001b17 	ldw	r4,108(sp)
  802488:	b2400015 	stw	r9,0(r22)
  80248c:	d8c01c15 	stw	r3,112(sp)
  802490:	21000044 	addi	r4,r4,1
  802494:	d9001b15 	stw	r4,108(sp)
  802498:	21000208 	cmpgei	r4,r4,8
  80249c:	2002f01e 	bne	r4,zero,803060 <___vfprintf_internal_r+0x1ed0>
  8024a0:	b5800204 	addi	r22,r22,8
  8024a4:	a800010e 	bge	r21,zero,8024ac <___vfprintf_internal_r+0x131c>
  8024a8:	002b883a 	mov	r21,zero
  8024ac:	156bc83a 	sub	r21,r2,r21
  8024b0:	057c350e 	bge	zero,r21,801588 <___vfprintf_internal_r+0x3f8>
  8024b4:	01c02074 	movhi	r7,129
  8024b8:	a9000450 	cmplti	r4,r21,17
  8024bc:	d8801b17 	ldw	r2,108(sp)
  8024c0:	39c1f604 	addi	r7,r7,2008
  8024c4:	2001ad1e 	bne	r4,zero,802b7c <___vfprintf_internal_r+0x19ec>
  8024c8:	07000404 	movi	fp,16
  8024cc:	3823883a 	mov	r17,r7
  8024d0:	00000406 	br	8024e4 <___vfprintf_internal_r+0x1354>
  8024d4:	b5800204 	addi	r22,r22,8
  8024d8:	ad7ffc04 	addi	r21,r21,-16
  8024dc:	a9000448 	cmpgei	r4,r21,17
  8024e0:	2001a526 	beq	r4,zero,802b78 <___vfprintf_internal_r+0x19e8>
  8024e4:	10800044 	addi	r2,r2,1
  8024e8:	18c00404 	addi	r3,r3,16
  8024ec:	b4400015 	stw	r17,0(r22)
  8024f0:	b7000115 	stw	fp,4(r22)
  8024f4:	d8c01c15 	stw	r3,112(sp)
  8024f8:	d8801b15 	stw	r2,108(sp)
  8024fc:	11000208 	cmpgei	r4,r2,8
  802500:	203ff426 	beq	r4,zero,8024d4 <___vfprintf_internal_r+0x1344>
  802504:	d9801a04 	addi	r6,sp,104
  802508:	900b883a 	mov	r5,r18
  80250c:	9809883a 	mov	r4,r19
  802510:	080853c0 	call	80853c <__sprint_r>
  802514:	103c2d1e 	bne	r2,zero,8015cc <___vfprintf_internal_r+0x43c>
  802518:	d8c01c17 	ldw	r3,112(sp)
  80251c:	d8801b17 	ldw	r2,108(sp)
  802520:	dd802704 	addi	r22,sp,156
  802524:	003fec06 	br	8024d8 <___vfprintf_internal_r+0x1348>
  802528:	d8800417 	ldw	r2,16(sp)
  80252c:	1080004c 	andi	r2,r2,1
  802530:	103f111e 	bne	r2,zero,802178 <___vfprintf_internal_r+0xfe8>
  802534:	00800044 	movi	r2,1
  802538:	dd401b15 	stw	r21,108(sp)
  80253c:	b4400015 	stw	r17,0(r22)
  802540:	b0800115 	stw	r2,4(r22)
  802544:	d8c01c15 	stw	r3,112(sp)
  802548:	ad400208 	cmpgei	r21,r21,8
  80254c:	a800941e 	bne	r21,zero,8027a0 <___vfprintf_internal_r+0x1610>
  802550:	42000084 	addi	r8,r8,2
  802554:	b5800404 	addi	r22,r22,16
  802558:	003f3306 	br	802228 <___vfprintf_internal_r+0x1098>
  80255c:	4002821e 	bne	r8,zero,802f68 <___vfprintf_internal_r+0x1dd8>
  802560:	0011883a 	mov	r8,zero
  802564:	002b883a 	mov	r21,zero
  802568:	dc402704 	addi	r17,sp,156
  80256c:	003da206 	br	801bf8 <___vfprintf_internal_r+0xa68>
  802570:	02ff2d0e 	bge	zero,r11,802228 <___vfprintf_internal_r+0x1098>
  802574:	58800450 	cmplti	r2,r11,17
  802578:	01c02074 	movhi	r7,129
  80257c:	1003261e 	bne	r2,zero,803218 <___vfprintf_internal_r+0x2088>
  802580:	39c1f604 	addi	r7,r7,2008
  802584:	dc000715 	stw	r16,28(sp)
  802588:	05800404 	movi	r22,16
  80258c:	5823883a 	mov	r17,r11
  802590:	402b883a 	mov	r21,r8
  802594:	3821883a 	mov	r16,r7
  802598:	00000506 	br	8025b0 <___vfprintf_internal_r+0x1420>
  80259c:	e7000204 	addi	fp,fp,8
  8025a0:	8c7ffc04 	addi	r17,r17,-16
  8025a4:	88800448 	cmpgei	r2,r17,17
  8025a8:	1001be26 	beq	r2,zero,802ca4 <___vfprintf_internal_r+0x1b14>
  8025ac:	ad400044 	addi	r21,r21,1
  8025b0:	18c00404 	addi	r3,r3,16
  8025b4:	e4000015 	stw	r16,0(fp)
  8025b8:	e5800115 	stw	r22,4(fp)
  8025bc:	d8c01c15 	stw	r3,112(sp)
  8025c0:	dd401b15 	stw	r21,108(sp)
  8025c4:	a8800208 	cmpgei	r2,r21,8
  8025c8:	103ff426 	beq	r2,zero,80259c <___vfprintf_internal_r+0x140c>
  8025cc:	d9801a04 	addi	r6,sp,104
  8025d0:	900b883a 	mov	r5,r18
  8025d4:	9809883a 	mov	r4,r19
  8025d8:	080853c0 	call	80853c <__sprint_r>
  8025dc:	103bfb1e 	bne	r2,zero,8015cc <___vfprintf_internal_r+0x43c>
  8025e0:	dd401b17 	ldw	r21,108(sp)
  8025e4:	d8c01c17 	ldw	r3,112(sp)
  8025e8:	df002704 	addi	fp,sp,156
  8025ec:	003fec06 	br	8025a0 <___vfprintf_internal_r+0x1410>
  8025f0:	d9801a04 	addi	r6,sp,104
  8025f4:	900b883a 	mov	r5,r18
  8025f8:	9809883a 	mov	r4,r19
  8025fc:	080853c0 	call	80853c <__sprint_r>
  802600:	103bf21e 	bne	r2,zero,8015cc <___vfprintf_internal_r+0x43c>
  802604:	d8c01c17 	ldw	r3,112(sp)
  802608:	dd802704 	addi	r22,sp,156
  80260c:	003bd106 	br	801554 <___vfprintf_internal_r+0x3c4>
  802610:	d8800417 	ldw	r2,16(sp)
  802614:	1080004c 	andi	r2,r2,1
  802618:	103bdb26 	beq	r2,zero,801588 <___vfprintf_internal_r+0x3f8>
  80261c:	003df106 	br	801de4 <___vfprintf_internal_r+0xc54>
  802620:	dc402704 	addi	r17,sp,156
  802624:	003d7406 	br	801bf8 <___vfprintf_internal_r+0xa68>
  802628:	d9000517 	ldw	r4,20(sp)
  80262c:	2005d7fa 	srai	r2,r4,31
  802630:	19000015 	stw	r4,0(r3)
  802634:	18800115 	stw	r2,4(r3)
  802638:	003b0906 	br	801260 <___vfprintf_internal_r+0xd0>
  80263c:	00800c04 	movi	r2,48
  802640:	d8801385 	stb	r2,78(sp)
  802644:	df0013c5 	stb	fp,79(sp)
  802648:	63000094 	ori	r12,r12,2
  80264c:	00800084 	movi	r2,2
  802650:	003c1206 	br	80169c <___vfprintf_internal_r+0x50c>
  802654:	25000017 	ldw	r20,0(r4)
  802658:	002b883a 	mov	r21,zero
  80265c:	d8c00615 	stw	r3,24(sp)
  802660:	003ce906 	br	801a08 <___vfprintf_internal_r+0x878>
  802664:	25000017 	ldw	r20,0(r4)
  802668:	002b883a 	mov	r21,zero
  80266c:	d8c00615 	stw	r3,24(sp)
  802670:	0005883a 	mov	r2,zero
  802674:	003c0906 	br	80169c <___vfprintf_internal_r+0x50c>
  802678:	25000017 	ldw	r20,0(r4)
  80267c:	002b883a 	mov	r21,zero
  802680:	d8c00615 	stw	r3,24(sp)
  802684:	00800044 	movi	r2,1
  802688:	003c0406 	br	80169c <___vfprintf_internal_r+0x50c>
  80268c:	25000017 	ldw	r20,0(r4)
  802690:	d8c00615 	stw	r3,24(sp)
  802694:	a02bd7fa 	srai	r21,r20,31
  802698:	a805883a 	mov	r2,r21
  80269c:	003cb806 	br	801980 <___vfprintf_internal_r+0x7f0>
  8026a0:	18800017 	ldw	r2,0(r3)
  8026a4:	d8800915 	stw	r2,36(sp)
  8026a8:	18800117 	ldw	r2,4(r3)
  8026ac:	d8800a15 	stw	r2,40(sp)
  8026b0:	003c3006 	br	801774 <___vfprintf_internal_r+0x5e4>
  8026b4:	db401343 	ldbu	r13,77(sp)
  8026b8:	a83cbc26 	beq	r21,zero,8019ac <___vfprintf_internal_r+0x81c>
  8026bc:	dc402704 	addi	r17,sp,156
  8026c0:	a805883a 	mov	r2,r21
  8026c4:	dc000715 	stw	r16,28(sp)
  8026c8:	902b883a 	mov	r21,r18
  8026cc:	8821883a 	mov	r16,r17
  8026d0:	db000415 	stw	r12,16(sp)
  8026d4:	a023883a 	mov	r17,r20
  8026d8:	da000e15 	stw	r8,56(sp)
  8026dc:	9829883a 	mov	r20,r19
  8026e0:	1025883a 	mov	r18,r2
  8026e4:	6827883a 	mov	r19,r13
  8026e8:	8809883a 	mov	r4,r17
  8026ec:	900b883a 	mov	r5,r18
  8026f0:	01800284 	movi	r6,10
  8026f4:	000f883a 	mov	r7,zero
  8026f8:	080ad9c0 	call	80ad9c <__umoddi3>
  8026fc:	10800c04 	addi	r2,r2,48
  802700:	8809883a 	mov	r4,r17
  802704:	900b883a 	mov	r5,r18
  802708:	01800284 	movi	r6,10
  80270c:	000f883a 	mov	r7,zero
  802710:	80bfffc5 	stb	r2,-1(r16)
  802714:	080a7800 	call	80a780 <__udivdi3>
  802718:	900d883a 	mov	r6,r18
  80271c:	880f883a 	mov	r7,r17
  802720:	843fffc4 	addi	r16,r16,-1
  802724:	1023883a 	mov	r17,r2
  802728:	1825883a 	mov	r18,r3
  80272c:	303fee1e 	bne	r6,zero,8026e8 <___vfprintf_internal_r+0x1558>
  802730:	39c002a8 	cmpgeui	r7,r7,10
  802734:	383fec1e 	bne	r7,zero,8026e8 <___vfprintf_internal_r+0x1558>
  802738:	8023883a 	mov	r17,r16
  80273c:	d8802704 	addi	r2,sp,156
  802740:	981b883a 	mov	r13,r19
  802744:	a825883a 	mov	r18,r21
  802748:	dc000717 	ldw	r16,28(sp)
  80274c:	da000e17 	ldw	r8,56(sp)
  802750:	a027883a 	mov	r19,r20
  802754:	146bc83a 	sub	r21,r2,r17
  802758:	003d2706 	br	801bf8 <___vfprintf_internal_r+0xa68>
  80275c:	0421c83a 	sub	r16,zero,r16
  802760:	d8800615 	stw	r2,24(sp)
  802764:	003d4506 	br	801c7c <___vfprintf_internal_r+0xaec>
  802768:	202b883a 	mov	r21,r4
  80276c:	057f1c16 	blt	zero,r21,8023e0 <___vfprintf_internal_r+0x1250>
  802770:	003f2506 	br	802408 <___vfprintf_internal_r+0x1278>
  802774:	d8800417 	ldw	r2,16(sp)
  802778:	1080004c 	andi	r2,r2,1
  80277c:	103f291e 	bne	r2,zero,802424 <___vfprintf_internal_r+0x1294>
  802780:	d9000817 	ldw	r4,32(sp)
  802784:	d9400717 	ldw	r5,28(sp)
  802788:	2545c83a 	sub	r2,r4,r21
  80278c:	2179c83a 	sub	fp,r4,r5
  802790:	102b883a 	mov	r21,r2
  802794:	e0bf430e 	bge	fp,r2,8024a4 <___vfprintf_internal_r+0x1314>
  802798:	e02b883a 	mov	r21,fp
  80279c:	003f4106 	br	8024a4 <___vfprintf_internal_r+0x1314>
  8027a0:	d9801a04 	addi	r6,sp,104
  8027a4:	900b883a 	mov	r5,r18
  8027a8:	9809883a 	mov	r4,r19
  8027ac:	080853c0 	call	80853c <__sprint_r>
  8027b0:	103b861e 	bne	r2,zero,8015cc <___vfprintf_internal_r+0x43c>
  8027b4:	da001b17 	ldw	r8,108(sp)
  8027b8:	d8c01c17 	ldw	r3,112(sp)
  8027bc:	dd802904 	addi	r22,sp,164
  8027c0:	42000044 	addi	r8,r8,1
  8027c4:	df002704 	addi	fp,sp,156
  8027c8:	003e9706 	br	802228 <___vfprintf_internal_r+0x1098>
  8027cc:	bf000043 	ldbu	fp,1(r23)
  8027d0:	63000814 	ori	r12,r12,32
  8027d4:	bdc00044 	addi	r23,r23,1
  8027d8:	e2c03fcc 	andi	r11,fp,255
  8027dc:	5ac0201c 	xori	r11,r11,128
  8027e0:	5affe004 	addi	r11,r11,-128
  8027e4:	003ab606 	br	8012c0 <___vfprintf_internal_r+0x130>
  8027e8:	d9801a04 	addi	r6,sp,104
  8027ec:	900b883a 	mov	r5,r18
  8027f0:	9809883a 	mov	r4,r19
  8027f4:	080853c0 	call	80853c <__sprint_r>
  8027f8:	103b741e 	bne	r2,zero,8015cc <___vfprintf_internal_r+0x43c>
  8027fc:	d8c01c17 	ldw	r3,112(sp)
  802800:	dd802704 	addi	r22,sp,156
  802804:	003d8306 	br	801e14 <___vfprintf_internal_r+0xc84>
  802808:	002b883a 	mov	r21,zero
  80280c:	003eff06 	br	80240c <___vfprintf_internal_r+0x127c>
  802810:	408001f0 	cmpltui	r2,r8,7
  802814:	402b883a 	mov	r21,r8
  802818:	1001a426 	beq	r2,zero,802eac <___vfprintf_internal_r+0x1d1c>
  80281c:	04402074 	movhi	r17,129
  802820:	a829883a 	mov	r20,r21
  802824:	d8c00615 	stw	r3,24(sp)
  802828:	8c41f304 	addi	r17,r17,1996
  80282c:	003b1d06 	br	8014a4 <___vfprintf_internal_r+0x314>
  802830:	01c02074 	movhi	r7,129
  802834:	a9000450 	cmplti	r4,r21,17
  802838:	d8801b17 	ldw	r2,108(sp)
  80283c:	39c1f604 	addi	r7,r7,2008
  802840:	20017f1e 	bne	r4,zero,802e40 <___vfprintf_internal_r+0x1cb0>
  802844:	dc000e15 	stw	r16,56(sp)
  802848:	07000404 	movi	fp,16
  80284c:	3821883a 	mov	r16,r7
  802850:	00000406 	br	802864 <___vfprintf_internal_r+0x16d4>
  802854:	b5800204 	addi	r22,r22,8
  802858:	ad7ffc04 	addi	r21,r21,-16
  80285c:	a9000448 	cmpgei	r4,r21,17
  802860:	20017526 	beq	r4,zero,802e38 <___vfprintf_internal_r+0x1ca8>
  802864:	10800044 	addi	r2,r2,1
  802868:	18c00404 	addi	r3,r3,16
  80286c:	b4000015 	stw	r16,0(r22)
  802870:	b7000115 	stw	fp,4(r22)
  802874:	d8c01c15 	stw	r3,112(sp)
  802878:	d8801b15 	stw	r2,108(sp)
  80287c:	11000208 	cmpgei	r4,r2,8
  802880:	203ff426 	beq	r4,zero,802854 <___vfprintf_internal_r+0x16c4>
  802884:	d9801a04 	addi	r6,sp,104
  802888:	900b883a 	mov	r5,r18
  80288c:	9809883a 	mov	r4,r19
  802890:	080853c0 	call	80853c <__sprint_r>
  802894:	103b4d1e 	bne	r2,zero,8015cc <___vfprintf_internal_r+0x43c>
  802898:	d8c01c17 	ldw	r3,112(sp)
  80289c:	d8801b17 	ldw	r2,108(sp)
  8028a0:	dd802704 	addi	r22,sp,156
  8028a4:	003fec06 	br	802858 <___vfprintf_internal_r+0x16c8>
  8028a8:	d8800517 	ldw	r2,20(sp)
  8028ac:	18800015 	stw	r2,0(r3)
  8028b0:	003a6b06 	br	801260 <___vfprintf_internal_r+0xd0>
  8028b4:	d9801a04 	addi	r6,sp,104
  8028b8:	900b883a 	mov	r5,r18
  8028bc:	9809883a 	mov	r4,r19
  8028c0:	080853c0 	call	80853c <__sprint_r>
  8028c4:	103b411e 	bne	r2,zero,8015cc <___vfprintf_internal_r+0x43c>
  8028c8:	d8c01c17 	ldw	r3,112(sp)
  8028cc:	dd401b17 	ldw	r21,108(sp)
  8028d0:	df002704 	addi	fp,sp,156
  8028d4:	003e3a06 	br	8021c0 <___vfprintf_internal_r+0x1030>
  8028d8:	d9801a04 	addi	r6,sp,104
  8028dc:	900b883a 	mov	r5,r18
  8028e0:	9809883a 	mov	r4,r19
  8028e4:	080853c0 	call	80853c <__sprint_r>
  8028e8:	103b381e 	bne	r2,zero,8015cc <___vfprintf_internal_r+0x43c>
  8028ec:	d8c01c17 	ldw	r3,112(sp)
  8028f0:	dd401b17 	ldw	r21,108(sp)
  8028f4:	df002704 	addi	fp,sp,156
  8028f8:	003e2606 	br	802194 <___vfprintf_internal_r+0x1004>
  8028fc:	d8801b17 	ldw	r2,108(sp)
  802900:	01002074 	movhi	r4,129
  802904:	2101f504 	addi	r4,r4,2004
  802908:	10800044 	addi	r2,r2,1
  80290c:	18c00044 	addi	r3,r3,1
  802910:	b1000015 	stw	r4,0(r22)
  802914:	01000044 	movi	r4,1
  802918:	d8801b15 	stw	r2,108(sp)
  80291c:	b1000115 	stw	r4,4(r22)
  802920:	d8c01c15 	stw	r3,112(sp)
  802924:	10800208 	cmpgei	r2,r2,8
  802928:	103de11e 	bne	r2,zero,8020b0 <___vfprintf_internal_r+0xf20>
  80292c:	b5800204 	addi	r22,r22,8
  802930:	003de706 	br	8020d0 <___vfprintf_internal_r+0xf40>
  802934:	d9801a04 	addi	r6,sp,104
  802938:	900b883a 	mov	r5,r18
  80293c:	9809883a 	mov	r4,r19
  802940:	da001115 	stw	r8,68(sp)
  802944:	db400f15 	stw	r13,60(sp)
  802948:	db800e15 	stw	r14,56(sp)
  80294c:	080853c0 	call	80853c <__sprint_r>
  802950:	103b1e1e 	bne	r2,zero,8015cc <___vfprintf_internal_r+0x43c>
  802954:	d8c01c17 	ldw	r3,112(sp)
  802958:	da001117 	ldw	r8,68(sp)
  80295c:	db400f17 	ldw	r13,60(sp)
  802960:	db800e17 	ldw	r14,56(sp)
  802964:	dd802704 	addi	r22,sp,156
  802968:	003adb06 	br	8014d8 <___vfprintf_internal_r+0x348>
  80296c:	8825883a 	mov	r18,r17
  802970:	003b1606 	br	8015cc <___vfprintf_internal_r+0x43c>
  802974:	d9000917 	ldw	r4,36(sp)
  802978:	d9400a17 	ldw	r5,40(sp)
  80297c:	da000615 	stw	r8,24(sp)
  802980:	200d883a 	mov	r6,r4
  802984:	280f883a 	mov	r7,r5
  802988:	db000415 	stw	r12,16(sp)
  80298c:	080dafc0 	call	80dafc <__unorddf2>
  802990:	db000417 	ldw	r12,16(sp)
  802994:	da000617 	ldw	r8,24(sp)
  802998:	1002091e 	bne	r2,zero,8031c0 <___vfprintf_internal_r+0x2030>
  80299c:	057ff7c4 	movi	r21,-33
  8029a0:	40bfffe0 	cmpeqi	r2,r8,-1
  8029a4:	e56a703a 	and	r21,fp,r21
  8029a8:	1001ab1e 	bne	r2,zero,803058 <___vfprintf_internal_r+0x1ec8>
  8029ac:	a88011d8 	cmpnei	r2,r21,71
  8029b0:	10015726 	beq	r2,zero,802f10 <___vfprintf_internal_r+0x1d80>
  8029b4:	60804014 	ori	r2,r12,256
  8029b8:	d8800415 	stw	r2,16(sp)
  8029bc:	d8800a17 	ldw	r2,40(sp)
  8029c0:	10012d16 	blt	r2,zero,802e78 <___vfprintf_internal_r+0x1ce8>
  8029c4:	dd000a17 	ldw	r20,40(sp)
  8029c8:	d8000605 	stb	zero,24(sp)
  8029cc:	e08019a0 	cmpeqi	r2,fp,102
  8029d0:	d8800f15 	stw	r2,60(sp)
  8029d4:	1000c31e 	bne	r2,zero,802ce4 <___vfprintf_internal_r+0x1b54>
  8029d8:	e08011a0 	cmpeqi	r2,fp,70
  8029dc:	1000c11e 	bne	r2,zero,802ce4 <___vfprintf_internal_r+0x1b54>
  8029e0:	a8801158 	cmpnei	r2,r21,69
  8029e4:	10016226 	beq	r2,zero,802f70 <___vfprintf_internal_r+0x1de0>
  8029e8:	d8801804 	addi	r2,sp,96
  8029ec:	d8800315 	stw	r2,12(sp)
  8029f0:	d9400917 	ldw	r5,36(sp)
  8029f4:	d8801504 	addi	r2,sp,84
  8029f8:	d8800215 	stw	r2,8(sp)
  8029fc:	d8801404 	addi	r2,sp,80
  802a00:	da000015 	stw	r8,0(sp)
  802a04:	9809883a 	mov	r4,r19
  802a08:	d8800115 	stw	r2,4(sp)
  802a0c:	01c00084 	movi	r7,2
  802a10:	a00d883a 	mov	r6,r20
  802a14:	db000815 	stw	r12,32(sp)
  802a18:	da000715 	stw	r8,28(sp)
  802a1c:	08036d40 	call	8036d4 <_dtoa_r>
  802a20:	da000717 	ldw	r8,28(sp)
  802a24:	e10019d8 	cmpnei	r4,fp,103
  802a28:	db000817 	ldw	r12,32(sp)
  802a2c:	1023883a 	mov	r17,r2
  802a30:	4007883a 	mov	r3,r8
  802a34:	2001621e 	bne	r4,zero,802fc0 <___vfprintf_internal_r+0x1e30>
  802a38:	6080004c 	andi	r2,r12,1
  802a3c:	1001621e 	bne	r2,zero,802fc8 <___vfprintf_internal_r+0x1e38>
  802a40:	d8801417 	ldw	r2,80(sp)
  802a44:	ad4011e0 	cmpeqi	r21,r21,71
  802a48:	d8800715 	stw	r2,28(sp)
  802a4c:	d8801817 	ldw	r2,96(sp)
  802a50:	1445c83a 	sub	r2,r2,r17
  802a54:	d8800815 	stw	r2,32(sp)
  802a58:	a8000526 	beq	r21,zero,802a70 <___vfprintf_internal_r+0x18e0>
  802a5c:	d8c00717 	ldw	r3,28(sp)
  802a60:	18bfff50 	cmplti	r2,r3,-3
  802a64:	1000011e 	bne	r2,zero,802a6c <___vfprintf_internal_r+0x18dc>
  802a68:	40c1670e 	bge	r8,r3,803008 <___vfprintf_internal_r+0x1e78>
  802a6c:	e73fff84 	addi	fp,fp,-2
  802a70:	d8800717 	ldw	r2,28(sp)
  802a74:	df001645 	stb	fp,89(sp)
  802a78:	157fffc4 	addi	r21,r2,-1
  802a7c:	dd401415 	stw	r21,80(sp)
  802a80:	a801c316 	blt	r21,zero,803190 <___vfprintf_internal_r+0x2000>
  802a84:	00800ac4 	movi	r2,43
  802a88:	d8801685 	stb	r2,90(sp)
  802a8c:	a8800290 	cmplti	r2,r21,10
  802a90:	1001b81e 	bne	r2,zero,803174 <___vfprintf_internal_r+0x1fe4>
  802a94:	d98019c4 	addi	r6,sp,103
  802a98:	9029883a 	mov	r20,r18
  802a9c:	dc400715 	stw	r17,28(sp)
  802aa0:	8025883a 	mov	r18,r16
  802aa4:	db000f15 	stw	r12,60(sp)
  802aa8:	3021883a 	mov	r16,r6
  802aac:	a809883a 	mov	r4,r21
  802ab0:	01400284 	movi	r5,10
  802ab4:	080b3e00 	call	80b3e0 <__modsi3>
  802ab8:	10800c04 	addi	r2,r2,48
  802abc:	a809883a 	mov	r4,r21
  802ac0:	80bfffc5 	stb	r2,-1(r16)
  802ac4:	01400284 	movi	r5,10
  802ac8:	080b3600 	call	80b360 <__divsi3>
  802acc:	a9001908 	cmpgei	r4,r21,100
  802ad0:	8023883a 	mov	r17,r16
  802ad4:	102b883a 	mov	r21,r2
  802ad8:	843fffc4 	addi	r16,r16,-1
  802adc:	203ff31e 	bne	r4,zero,802aac <___vfprintf_internal_r+0x191c>
  802ae0:	800d883a 	mov	r6,r16
  802ae4:	11000c04 	addi	r4,r2,48
  802ae8:	9021883a 	mov	r16,r18
  802aec:	a025883a 	mov	r18,r20
  802af0:	8829883a 	mov	r20,r17
  802af4:	a0bfff84 	addi	r2,r20,-2
  802af8:	313fffc5 	stb	r4,-1(r6)
  802afc:	d8c019c4 	addi	r3,sp,103
  802b00:	db000f17 	ldw	r12,60(sp)
  802b04:	dc400717 	ldw	r17,28(sp)
  802b08:	10c1cd2e 	bgeu	r2,r3,803240 <___vfprintf_internal_r+0x20b0>
  802b0c:	d8c016c4 	addi	r3,sp,91
  802b10:	00000106 	br	802b18 <___vfprintf_internal_r+0x1988>
  802b14:	11000003 	ldbu	r4,0(r2)
  802b18:	19000005 	stb	r4,0(r3)
  802b1c:	10800044 	addi	r2,r2,1
  802b20:	d90019c4 	addi	r4,sp,103
  802b24:	18c00044 	addi	r3,r3,1
  802b28:	113ffa1e 	bne	r2,r4,802b14 <___vfprintf_internal_r+0x1984>
  802b2c:	d8801a44 	addi	r2,sp,105
  802b30:	d8c016c4 	addi	r3,sp,91
  802b34:	1505c83a 	sub	r2,r2,r20
  802b38:	1885883a 	add	r2,r3,r2
  802b3c:	d8c01644 	addi	r3,sp,89
  802b40:	10c5c83a 	sub	r2,r2,r3
  802b44:	d8801015 	stw	r2,64(sp)
  802b48:	d8c00817 	ldw	r3,32(sp)
  802b4c:	d9001017 	ldw	r4,64(sp)
  802b50:	18800088 	cmpgei	r2,r3,2
  802b54:	20eb883a 	add	r21,r4,r3
  802b58:	10019226 	beq	r2,zero,8031a4 <___vfprintf_internal_r+0x2014>
  802b5c:	d8800b17 	ldw	r2,44(sp)
  802b60:	a8ab883a 	add	r21,r21,r2
  802b64:	a829883a 	mov	r20,r21
  802b68:	a800010e 	bge	r21,zero,802b70 <___vfprintf_internal_r+0x19e0>
  802b6c:	0029883a 	mov	r20,zero
  802b70:	d8000715 	stw	zero,28(sp)
  802b74:	00008e06 	br	802db0 <___vfprintf_internal_r+0x1c20>
  802b78:	880f883a 	mov	r7,r17
  802b7c:	10800044 	addi	r2,r2,1
  802b80:	1d47883a 	add	r3,r3,r21
  802b84:	b1c00015 	stw	r7,0(r22)
  802b88:	003a7906 	br	801570 <___vfprintf_internal_r+0x3e0>
  802b8c:	d9801a04 	addi	r6,sp,104
  802b90:	900b883a 	mov	r5,r18
  802b94:	9809883a 	mov	r4,r19
  802b98:	080853c0 	call	80853c <__sprint_r>
  802b9c:	103a8b1e 	bne	r2,zero,8015cc <___vfprintf_internal_r+0x43c>
  802ba0:	d8c01c17 	ldw	r3,112(sp)
  802ba4:	dd802704 	addi	r22,sp,156
  802ba8:	003c8b06 	br	801dd8 <___vfprintf_internal_r+0xc48>
  802bac:	d9801a04 	addi	r6,sp,104
  802bb0:	900b883a 	mov	r5,r18
  802bb4:	9809883a 	mov	r4,r19
  802bb8:	da000e15 	stw	r8,56(sp)
  802bbc:	080853c0 	call	80853c <__sprint_r>
  802bc0:	103a821e 	bne	r2,zero,8015cc <___vfprintf_internal_r+0x43c>
  802bc4:	d8c01c17 	ldw	r3,112(sp)
  802bc8:	da000e17 	ldw	r8,56(sp)
  802bcc:	dd802704 	addi	r22,sp,156
  802bd0:	003a5e06 	br	80154c <___vfprintf_internal_r+0x3bc>
  802bd4:	8809883a 	mov	r4,r17
  802bd8:	db000415 	stw	r12,16(sp)
  802bdc:	d8c00615 	stw	r3,24(sp)
  802be0:	08010f80 	call	8010f8 <strlen>
  802be4:	db000417 	ldw	r12,16(sp)
  802be8:	102b883a 	mov	r21,r2
  802bec:	1029883a 	mov	r20,r2
  802bf0:	003a2c06 	br	8014a4 <___vfprintf_internal_r+0x314>
  802bf4:	d8800d17 	ldw	r2,52(sp)
  802bf8:	d9000b17 	ldw	r4,44(sp)
  802bfc:	b0800015 	stw	r2,0(r22)
  802c00:	d8801b17 	ldw	r2,108(sp)
  802c04:	20c7883a 	add	r3,r4,r3
  802c08:	b1000115 	stw	r4,4(r22)
  802c0c:	10800044 	addi	r2,r2,1
  802c10:	d8c01c15 	stw	r3,112(sp)
  802c14:	d8801b15 	stw	r2,108(sp)
  802c18:	11000208 	cmpgei	r4,r2,8
  802c1c:	2000bf1e 	bne	r4,zero,802f1c <___vfprintf_internal_r+0x1d8c>
  802c20:	b5800204 	addi	r22,r22,8
  802c24:	283d3c0e 	bge	r5,zero,802118 <___vfprintf_internal_r+0xf88>
  802c28:	01c02074 	movhi	r7,129
  802c2c:	293ffc08 	cmpgei	r4,r5,-16
  802c30:	39c1f604 	addi	r7,r7,2008
  802c34:	0179c83a 	sub	fp,zero,r5
  802c38:	2001361e 	bne	r4,zero,803114 <___vfprintf_internal_r+0x1f84>
  802c3c:	dc000715 	stw	r16,28(sp)
  802c40:	05400404 	movi	r21,16
  802c44:	9021883a 	mov	r16,r18
  802c48:	3825883a 	mov	r18,r7
  802c4c:	00000406 	br	802c60 <___vfprintf_internal_r+0x1ad0>
  802c50:	b5800204 	addi	r22,r22,8
  802c54:	e73ffc04 	addi	fp,fp,-16
  802c58:	e1800448 	cmpgei	r6,fp,17
  802c5c:	30012a26 	beq	r6,zero,803108 <___vfprintf_internal_r+0x1f78>
  802c60:	10800044 	addi	r2,r2,1
  802c64:	18c00404 	addi	r3,r3,16
  802c68:	b4800015 	stw	r18,0(r22)
  802c6c:	b5400115 	stw	r21,4(r22)
  802c70:	d8c01c15 	stw	r3,112(sp)
  802c74:	d8801b15 	stw	r2,108(sp)
  802c78:	11800208 	cmpgei	r6,r2,8
  802c7c:	303ff426 	beq	r6,zero,802c50 <___vfprintf_internal_r+0x1ac0>
  802c80:	d9801a04 	addi	r6,sp,104
  802c84:	800b883a 	mov	r5,r16
  802c88:	9809883a 	mov	r4,r19
  802c8c:	080853c0 	call	80853c <__sprint_r>
  802c90:	10015f1e 	bne	r2,zero,803210 <___vfprintf_internal_r+0x2080>
  802c94:	d8c01c17 	ldw	r3,112(sp)
  802c98:	d8801b17 	ldw	r2,108(sp)
  802c9c:	dd802704 	addi	r22,sp,156
  802ca0:	003fec06 	br	802c54 <___vfprintf_internal_r+0x1ac4>
  802ca4:	800f883a 	mov	r7,r16
  802ca8:	dc000717 	ldw	r16,28(sp)
  802cac:	8817883a 	mov	r11,r17
  802cb0:	aa000044 	addi	r8,r21,1
  802cb4:	e0800204 	addi	r2,fp,8
  802cb8:	1ac7883a 	add	r3,r3,r11
  802cbc:	e1c00015 	stw	r7,0(fp)
  802cc0:	e2c00115 	stw	r11,4(fp)
  802cc4:	d8c01c15 	stw	r3,112(sp)
  802cc8:	da001b15 	stw	r8,108(sp)
  802ccc:	41000208 	cmpgei	r4,r8,8
  802cd0:	203eb31e 	bne	r4,zero,8027a0 <___vfprintf_internal_r+0x1610>
  802cd4:	42000044 	addi	r8,r8,1
  802cd8:	15800204 	addi	r22,r2,8
  802cdc:	1039883a 	mov	fp,r2
  802ce0:	003d5106 	br	802228 <___vfprintf_internal_r+0x1098>
  802ce4:	d8801804 	addi	r2,sp,96
  802ce8:	d8800315 	stw	r2,12(sp)
  802cec:	d9400917 	ldw	r5,36(sp)
  802cf0:	d8801504 	addi	r2,sp,84
  802cf4:	d8800215 	stw	r2,8(sp)
  802cf8:	d8801404 	addi	r2,sp,80
  802cfc:	da000015 	stw	r8,0(sp)
  802d00:	d8800115 	stw	r2,4(sp)
  802d04:	01c000c4 	movi	r7,3
  802d08:	a00d883a 	mov	r6,r20
  802d0c:	9809883a 	mov	r4,r19
  802d10:	db000815 	stw	r12,32(sp)
  802d14:	da000715 	stw	r8,28(sp)
  802d18:	08036d40 	call	8036d4 <_dtoa_r>
  802d1c:	da000717 	ldw	r8,28(sp)
  802d20:	1023883a 	mov	r17,r2
  802d24:	db000817 	ldw	r12,32(sp)
  802d28:	1207883a 	add	r3,r2,r8
  802d2c:	88800007 	ldb	r2,0(r17)
  802d30:	10800c20 	cmpeqi	r2,r2,48
  802d34:	1000661e 	bne	r2,zero,802ed0 <___vfprintf_internal_r+0x1d40>
  802d38:	d8801417 	ldw	r2,80(sp)
  802d3c:	1893883a 	add	r9,r3,r2
  802d40:	d9000917 	ldw	r4,36(sp)
  802d44:	000d883a 	mov	r6,zero
  802d48:	000f883a 	mov	r7,zero
  802d4c:	a00b883a 	mov	r5,r20
  802d50:	da401115 	stw	r9,68(sp)
  802d54:	da000815 	stw	r8,32(sp)
  802d58:	db000715 	stw	r12,28(sp)
  802d5c:	080c7c00 	call	80c7c0 <__eqdf2>
  802d60:	db000717 	ldw	r12,28(sp)
  802d64:	da000817 	ldw	r8,32(sp)
  802d68:	da401117 	ldw	r9,68(sp)
  802d6c:	1000981e 	bne	r2,zero,802fd0 <___vfprintf_internal_r+0x1e40>
  802d70:	4805883a 	mov	r2,r9
  802d74:	d8c01417 	ldw	r3,80(sp)
  802d78:	1445c83a 	sub	r2,r2,r17
  802d7c:	ad4011d8 	cmpnei	r21,r21,71
  802d80:	d8c00715 	stw	r3,28(sp)
  802d84:	d8800815 	stw	r2,32(sp)
  802d88:	a83f3426 	beq	r21,zero,802a5c <___vfprintf_internal_r+0x18cc>
  802d8c:	d8800f17 	ldw	r2,60(sp)
  802d90:	103f3726 	beq	r2,zero,802a70 <___vfprintf_internal_r+0x18e0>
  802d94:	d8c00717 	ldw	r3,28(sp)
  802d98:	6080004c 	andi	r2,r12,1
  802d9c:	1204b03a 	or	r2,r2,r8
  802da0:	00c1130e 	bge	zero,r3,8031f0 <___vfprintf_internal_r+0x2060>
  802da4:	10010e1e 	bne	r2,zero,8031e0 <___vfprintf_internal_r+0x2050>
  802da8:	dd400717 	ldw	r21,28(sp)
  802dac:	a829883a 	mov	r20,r21
  802db0:	d8800607 	ldb	r2,24(sp)
  802db4:	10008f26 	beq	r2,zero,802ff4 <___vfprintf_internal_r+0x1e64>
  802db8:	00800b44 	movi	r2,45
  802dbc:	d8801345 	stb	r2,77(sp)
  802dc0:	d8800e17 	ldw	r2,56(sp)
  802dc4:	0011883a 	mov	r8,zero
  802dc8:	d8800615 	stw	r2,24(sp)
  802dcc:	003b9206 	br	801c18 <___vfprintf_internal_r+0xa88>
  802dd0:	04402074 	movhi	r17,129
  802dd4:	8c41e504 	addi	r17,r17,1940
  802dd8:	003a8b06 	br	801808 <___vfprintf_internal_r+0x678>
  802ddc:	d8800617 	ldw	r2,24(sp)
  802de0:	d8c00615 	stw	r3,24(sp)
  802de4:	15000017 	ldw	r20,0(r2)
  802de8:	a02bd7fa 	srai	r21,r20,31
  802dec:	a805883a 	mov	r2,r21
  802df0:	003ae306 	br	801980 <___vfprintf_internal_r+0x7f0>
  802df4:	d8800617 	ldw	r2,24(sp)
  802df8:	002b883a 	mov	r21,zero
  802dfc:	d8c00615 	stw	r3,24(sp)
  802e00:	15000017 	ldw	r20,0(r2)
  802e04:	0005883a 	mov	r2,zero
  802e08:	003a2406 	br	80169c <___vfprintf_internal_r+0x50c>
  802e0c:	d8800617 	ldw	r2,24(sp)
  802e10:	002b883a 	mov	r21,zero
  802e14:	d8c00615 	stw	r3,24(sp)
  802e18:	15000017 	ldw	r20,0(r2)
  802e1c:	00800044 	movi	r2,1
  802e20:	003a1e06 	br	80169c <___vfprintf_internal_r+0x50c>
  802e24:	d8800617 	ldw	r2,24(sp)
  802e28:	002b883a 	mov	r21,zero
  802e2c:	d8c00615 	stw	r3,24(sp)
  802e30:	15000017 	ldw	r20,0(r2)
  802e34:	003af406 	br	801a08 <___vfprintf_internal_r+0x878>
  802e38:	800f883a 	mov	r7,r16
  802e3c:	dc000e17 	ldw	r16,56(sp)
  802e40:	10800044 	addi	r2,r2,1
  802e44:	1d47883a 	add	r3,r3,r21
  802e48:	d8801b15 	stw	r2,108(sp)
  802e4c:	b1c00015 	stw	r7,0(r22)
  802e50:	b5400115 	stw	r21,4(r22)
  802e54:	d8c01c15 	stw	r3,112(sp)
  802e58:	10800208 	cmpgei	r2,r2,8
  802e5c:	10003a1e 	bne	r2,zero,802f48 <___vfprintf_internal_r+0x1db8>
  802e60:	b5800204 	addi	r22,r22,8
  802e64:	003d6c06 	br	802418 <___vfprintf_internal_r+0x1288>
  802e68:	00800b44 	movi	r2,45
  802e6c:	d8801345 	stb	r2,77(sp)
  802e70:	03400b44 	movi	r13,45
  802e74:	003a6006 	br	8017f8 <___vfprintf_internal_r+0x668>
  802e78:	1520003c 	xorhi	r20,r2,32768
  802e7c:	00800b44 	movi	r2,45
  802e80:	d8800605 	stb	r2,24(sp)
  802e84:	003ed106 	br	8029cc <___vfprintf_internal_r+0x183c>
  802e88:	d9801a04 	addi	r6,sp,104
  802e8c:	900b883a 	mov	r5,r18
  802e90:	9809883a 	mov	r4,r19
  802e94:	080853c0 	call	80853c <__sprint_r>
  802e98:	1039cc1e 	bne	r2,zero,8015cc <___vfprintf_internal_r+0x43c>
  802e9c:	dd401417 	ldw	r21,80(sp)
  802ea0:	d8c01c17 	ldw	r3,112(sp)
  802ea4:	dd802704 	addi	r22,sp,156
  802ea8:	003d6a06 	br	802454 <___vfprintf_internal_r+0x12c4>
  802eac:	05400184 	movi	r21,6
  802eb0:	003e5a06 	br	80281c <___vfprintf_internal_r+0x168c>
  802eb4:	d9801a04 	addi	r6,sp,104
  802eb8:	900b883a 	mov	r5,r18
  802ebc:	9809883a 	mov	r4,r19
  802ec0:	080853c0 	call	80853c <__sprint_r>
  802ec4:	0039c106 	br	8015cc <___vfprintf_internal_r+0x43c>
  802ec8:	d9401345 	stb	r5,77(sp)
  802ecc:	00396f06 	br	80148c <___vfprintf_internal_r+0x2fc>
  802ed0:	d9000917 	ldw	r4,36(sp)
  802ed4:	000d883a 	mov	r6,zero
  802ed8:	000f883a 	mov	r7,zero
  802edc:	a00b883a 	mov	r5,r20
  802ee0:	d8c01115 	stw	r3,68(sp)
  802ee4:	da000815 	stw	r8,32(sp)
  802ee8:	db000715 	stw	r12,28(sp)
  802eec:	080c7c00 	call	80c7c0 <__eqdf2>
  802ef0:	db000717 	ldw	r12,28(sp)
  802ef4:	da000817 	ldw	r8,32(sp)
  802ef8:	d8c01117 	ldw	r3,68(sp)
  802efc:	103f8e26 	beq	r2,zero,802d38 <___vfprintf_internal_r+0x1ba8>
  802f00:	00800044 	movi	r2,1
  802f04:	1205c83a 	sub	r2,r2,r8
  802f08:	d8801415 	stw	r2,80(sp)
  802f0c:	003f8b06 	br	802d3c <___vfprintf_internal_r+0x1bac>
  802f10:	403ea81e 	bne	r8,zero,8029b4 <___vfprintf_internal_r+0x1824>
  802f14:	02000044 	movi	r8,1
  802f18:	003ea606 	br	8029b4 <___vfprintf_internal_r+0x1824>
  802f1c:	d9801a04 	addi	r6,sp,104
  802f20:	900b883a 	mov	r5,r18
  802f24:	9809883a 	mov	r4,r19
  802f28:	080853c0 	call	80853c <__sprint_r>
  802f2c:	1039a71e 	bne	r2,zero,8015cc <___vfprintf_internal_r+0x43c>
  802f30:	d9401417 	ldw	r5,80(sp)
  802f34:	d8c01c17 	ldw	r3,112(sp)
  802f38:	d8801b17 	ldw	r2,108(sp)
  802f3c:	dd802704 	addi	r22,sp,156
  802f40:	283c750e 	bge	r5,zero,802118 <___vfprintf_internal_r+0xf88>
  802f44:	003f3806 	br	802c28 <___vfprintf_internal_r+0x1a98>
  802f48:	d9801a04 	addi	r6,sp,104
  802f4c:	900b883a 	mov	r5,r18
  802f50:	9809883a 	mov	r4,r19
  802f54:	080853c0 	call	80853c <__sprint_r>
  802f58:	10399c1e 	bne	r2,zero,8015cc <___vfprintf_internal_r+0x43c>
  802f5c:	d8c01c17 	ldw	r3,112(sp)
  802f60:	dd802704 	addi	r22,sp,156
  802f64:	003d2c06 	br	802418 <___vfprintf_internal_r+0x1288>
  802f68:	db000417 	ldw	r12,16(sp)
  802f6c:	003a9106 	br	8019b4 <___vfprintf_internal_r+0x824>
  802f70:	d8801804 	addi	r2,sp,96
  802f74:	d8800315 	stw	r2,12(sp)
  802f78:	d9400917 	ldw	r5,36(sp)
  802f7c:	d8801504 	addi	r2,sp,84
  802f80:	40c00044 	addi	r3,r8,1
  802f84:	d8800215 	stw	r2,8(sp)
  802f88:	d8801404 	addi	r2,sp,80
  802f8c:	d8c00015 	stw	r3,0(sp)
  802f90:	d8800115 	stw	r2,4(sp)
  802f94:	01c00084 	movi	r7,2
  802f98:	a00d883a 	mov	r6,r20
  802f9c:	9809883a 	mov	r4,r19
  802fa0:	db001115 	stw	r12,68(sp)
  802fa4:	da000815 	stw	r8,32(sp)
  802fa8:	d8c00715 	stw	r3,28(sp)
  802fac:	08036d40 	call	8036d4 <_dtoa_r>
  802fb0:	d8c00717 	ldw	r3,28(sp)
  802fb4:	da000817 	ldw	r8,32(sp)
  802fb8:	db001117 	ldw	r12,68(sp)
  802fbc:	1023883a 	mov	r17,r2
  802fc0:	e08011d8 	cmpnei	r2,fp,71
  802fc4:	103e9c26 	beq	r2,zero,802a38 <___vfprintf_internal_r+0x18a8>
  802fc8:	88d3883a 	add	r9,r17,r3
  802fcc:	003f5c06 	br	802d40 <___vfprintf_internal_r+0x1bb0>
  802fd0:	d8801817 	ldw	r2,96(sp)
  802fd4:	127f672e 	bgeu	r2,r9,802d74 <___vfprintf_internal_r+0x1be4>
  802fd8:	01000c04 	movi	r4,48
  802fdc:	10c00044 	addi	r3,r2,1
  802fe0:	d8c01815 	stw	r3,96(sp)
  802fe4:	11000005 	stb	r4,0(r2)
  802fe8:	d8801817 	ldw	r2,96(sp)
  802fec:	127ffb36 	bltu	r2,r9,802fdc <___vfprintf_internal_r+0x1e4c>
  802ff0:	003f6006 	br	802d74 <___vfprintf_internal_r+0x1be4>
  802ff4:	d8800e17 	ldw	r2,56(sp)
  802ff8:	db401343 	ldbu	r13,77(sp)
  802ffc:	0011883a 	mov	r8,zero
  803000:	d8800615 	stw	r2,24(sp)
  803004:	003b0006 	br	801c08 <___vfprintf_internal_r+0xa78>
  803008:	d8800717 	ldw	r2,28(sp)
  80300c:	d8c00817 	ldw	r3,32(sp)
  803010:	10c02216 	blt	r2,r3,80309c <___vfprintf_internal_r+0x1f0c>
  803014:	6300004c 	andi	r12,r12,1
  803018:	60004f1e 	bne	r12,zero,803158 <___vfprintf_internal_r+0x1fc8>
  80301c:	1029883a 	mov	r20,r2
  803020:	1000010e 	bge	r2,zero,803028 <___vfprintf_internal_r+0x1e98>
  803024:	0029883a 	mov	r20,zero
  803028:	dd400717 	ldw	r21,28(sp)
  80302c:	070019c4 	movi	fp,103
  803030:	003f5f06 	br	802db0 <___vfprintf_internal_r+0x1c20>
  803034:	d9801a04 	addi	r6,sp,104
  803038:	900b883a 	mov	r5,r18
  80303c:	9809883a 	mov	r4,r19
  803040:	080853c0 	call	80853c <__sprint_r>
  803044:	1039611e 	bne	r2,zero,8015cc <___vfprintf_internal_r+0x43c>
  803048:	d8c01c17 	ldw	r3,112(sp)
  80304c:	dd802704 	addi	r22,sp,156
  803050:	a83cee0e 	bge	r21,zero,80240c <___vfprintf_internal_r+0x127c>
  803054:	003dec06 	br	802808 <___vfprintf_internal_r+0x1678>
  803058:	02000184 	movi	r8,6
  80305c:	003e5506 	br	8029b4 <___vfprintf_internal_r+0x1824>
  803060:	d9801a04 	addi	r6,sp,104
  803064:	900b883a 	mov	r5,r18
  803068:	9809883a 	mov	r4,r19
  80306c:	080853c0 	call	80853c <__sprint_r>
  803070:	1039561e 	bne	r2,zero,8015cc <___vfprintf_internal_r+0x43c>
  803074:	d8801417 	ldw	r2,80(sp)
  803078:	d9000817 	ldw	r4,32(sp)
  80307c:	d8c01c17 	ldw	r3,112(sp)
  803080:	dd802704 	addi	r22,sp,156
  803084:	2085c83a 	sub	r2,r4,r2
  803088:	003d0606 	br	8024a4 <___vfprintf_internal_r+0x1314>
  80308c:	4029883a 	mov	r20,r8
  803090:	d8c00615 	stw	r3,24(sp)
  803094:	402b883a 	mov	r21,r8
  803098:	00390206 	br	8014a4 <___vfprintf_internal_r+0x314>
  80309c:	d8800817 	ldw	r2,32(sp)
  8030a0:	d8c00b17 	ldw	r3,44(sp)
  8030a4:	10eb883a 	add	r21,r2,r3
  8030a8:	d8800717 	ldw	r2,28(sp)
  8030ac:	00800316 	blt	zero,r2,8030bc <___vfprintf_internal_r+0x1f2c>
  8030b0:	d8800717 	ldw	r2,28(sp)
  8030b4:	a8abc83a 	sub	r21,r21,r2
  8030b8:	ad400044 	addi	r21,r21,1
  8030bc:	a829883a 	mov	r20,r21
  8030c0:	a8002a16 	blt	r21,zero,80316c <___vfprintf_internal_r+0x1fdc>
  8030c4:	070019c4 	movi	fp,103
  8030c8:	003f3906 	br	802db0 <___vfprintf_internal_r+0x1c20>
  8030cc:	d9401345 	stb	r5,77(sp)
  8030d0:	003a2306 	br	801960 <___vfprintf_internal_r+0x7d0>
  8030d4:	d9401345 	stb	r5,77(sp)
  8030d8:	003b1806 	br	801d3c <___vfprintf_internal_r+0xbac>
  8030dc:	d9401345 	stb	r5,77(sp)
  8030e0:	003a8e06 	br	801b1c <___vfprintf_internal_r+0x98c>
  8030e4:	d9401345 	stb	r5,77(sp)
  8030e8:	003a3d06 	br	8019e0 <___vfprintf_internal_r+0x850>
  8030ec:	d9401345 	stb	r5,77(sp)
  8030f0:	003a7606 	br	801acc <___vfprintf_internal_r+0x93c>
  8030f4:	d9401345 	stb	r5,77(sp)
  8030f8:	00399406 	br	80174c <___vfprintf_internal_r+0x5bc>
  8030fc:	00bfffc4 	movi	r2,-1
  803100:	d8800515 	stw	r2,20(sp)
  803104:	00393406 	br	8015d8 <___vfprintf_internal_r+0x448>
  803108:	900f883a 	mov	r7,r18
  80310c:	8025883a 	mov	r18,r16
  803110:	dc000717 	ldw	r16,28(sp)
  803114:	10800044 	addi	r2,r2,1
  803118:	1f07883a 	add	r3,r3,fp
  80311c:	b1c00015 	stw	r7,0(r22)
  803120:	b7000115 	stw	fp,4(r22)
  803124:	d8c01c15 	stw	r3,112(sp)
  803128:	d8801b15 	stw	r2,108(sp)
  80312c:	11000208 	cmpgei	r4,r2,8
  803130:	203bf826 	beq	r4,zero,802114 <___vfprintf_internal_r+0xf84>
  803134:	d9801a04 	addi	r6,sp,104
  803138:	900b883a 	mov	r5,r18
  80313c:	9809883a 	mov	r4,r19
  803140:	080853c0 	call	80853c <__sprint_r>
  803144:	1039211e 	bne	r2,zero,8015cc <___vfprintf_internal_r+0x43c>
  803148:	d8c01c17 	ldw	r3,112(sp)
  80314c:	d8801b17 	ldw	r2,108(sp)
  803150:	dd802704 	addi	r22,sp,156
  803154:	003bf006 	br	802118 <___vfprintf_internal_r+0xf88>
  803158:	d8800717 	ldw	r2,28(sp)
  80315c:	d8c00b17 	ldw	r3,44(sp)
  803160:	10eb883a 	add	r21,r2,r3
  803164:	a829883a 	mov	r20,r21
  803168:	a83fd60e 	bge	r21,zero,8030c4 <___vfprintf_internal_r+0x1f34>
  80316c:	0029883a 	mov	r20,zero
  803170:	003fd406 	br	8030c4 <___vfprintf_internal_r+0x1f34>
  803174:	00800c04 	movi	r2,48
  803178:	ad400c04 	addi	r21,r21,48
  80317c:	d88016c5 	stb	r2,91(sp)
  803180:	00800104 	movi	r2,4
  803184:	dd401705 	stb	r21,92(sp)
  803188:	d8801015 	stw	r2,64(sp)
  80318c:	003e6e06 	br	802b48 <___vfprintf_internal_r+0x19b8>
  803190:	05400044 	movi	r21,1
  803194:	a8abc83a 	sub	r21,r21,r2
  803198:	00800b44 	movi	r2,45
  80319c:	d8801685 	stb	r2,90(sp)
  8031a0:	003e3a06 	br	802a8c <___vfprintf_internal_r+0x18fc>
  8031a4:	6080004c 	andi	r2,r12,1
  8031a8:	d8800715 	stw	r2,28(sp)
  8031ac:	103e6b1e 	bne	r2,zero,802b5c <___vfprintf_internal_r+0x19cc>
  8031b0:	a829883a 	mov	r20,r21
  8031b4:	a83efe0e 	bge	r21,zero,802db0 <___vfprintf_internal_r+0x1c20>
  8031b8:	0029883a 	mov	r20,zero
  8031bc:	003efc06 	br	802db0 <___vfprintf_internal_r+0x1c20>
  8031c0:	d8800a17 	ldw	r2,40(sp)
  8031c4:	10001a16 	blt	r2,zero,803230 <___vfprintf_internal_r+0x20a0>
  8031c8:	db401343 	ldbu	r13,77(sp)
  8031cc:	e0801210 	cmplti	r2,fp,72
  8031d0:	1000141e 	bne	r2,zero,803224 <___vfprintf_internal_r+0x2094>
  8031d4:	04402074 	movhi	r17,129
  8031d8:	8c41e804 	addi	r17,r17,1952
  8031dc:	00398a06 	br	801808 <___vfprintf_internal_r+0x678>
  8031e0:	d8800b17 	ldw	r2,44(sp)
  8031e4:	18ab883a 	add	r21,r3,r2
  8031e8:	aa2b883a 	add	r21,r21,r8
  8031ec:	003ff006 	br	8031b0 <___vfprintf_internal_r+0x2020>
  8031f0:	1000031e 	bne	r2,zero,803200 <___vfprintf_internal_r+0x2070>
  8031f4:	05000044 	movi	r20,1
  8031f8:	05400044 	movi	r21,1
  8031fc:	003eec06 	br	802db0 <___vfprintf_internal_r+0x1c20>
  803200:	d8800b17 	ldw	r2,44(sp)
  803204:	15400044 	addi	r21,r2,1
  803208:	aa2b883a 	add	r21,r21,r8
  80320c:	003fe806 	br	8031b0 <___vfprintf_internal_r+0x2020>
  803210:	8025883a 	mov	r18,r16
  803214:	0038ed06 	br	8015cc <___vfprintf_internal_r+0x43c>
  803218:	b005883a 	mov	r2,r22
  80321c:	39c1f604 	addi	r7,r7,2008
  803220:	003ea506 	br	802cb8 <___vfprintf_internal_r+0x1b28>
  803224:	04402074 	movhi	r17,129
  803228:	8c41e704 	addi	r17,r17,1948
  80322c:	00397606 	br	801808 <___vfprintf_internal_r+0x678>
  803230:	00800b44 	movi	r2,45
  803234:	d8801345 	stb	r2,77(sp)
  803238:	03400b44 	movi	r13,45
  80323c:	003fe306 	br	8031cc <___vfprintf_internal_r+0x203c>
  803240:	00800084 	movi	r2,2
  803244:	d8801015 	stw	r2,64(sp)
  803248:	003e3f06 	br	802b48 <___vfprintf_internal_r+0x19b8>
  80324c:	d8c00617 	ldw	r3,24(sp)
  803250:	1a000017 	ldw	r8,0(r3)
  803254:	18c00104 	addi	r3,r3,4
  803258:	4000010e 	bge	r8,zero,803260 <___vfprintf_internal_r+0x20d0>
  80325c:	023fffc4 	movi	r8,-1
  803260:	bf000043 	ldbu	fp,1(r23)
  803264:	d8c00615 	stw	r3,24(sp)
  803268:	102f883a 	mov	r23,r2
  80326c:	e2c03fcc 	andi	r11,fp,255
  803270:	5ac0201c 	xori	r11,r11,128
  803274:	5affe004 	addi	r11,r11,-128
  803278:	00381106 	br	8012c0 <___vfprintf_internal_r+0x130>

0080327c <__vfprintf_internal>:
  80327c:	00c02074 	movhi	r3,129
  803280:	2005883a 	mov	r2,r4
  803284:	190a2117 	ldw	r4,10372(r3)
  803288:	300f883a 	mov	r7,r6
  80328c:	280d883a 	mov	r6,r5
  803290:	100b883a 	mov	r5,r2
  803294:	08011901 	jmpi	801190 <___vfprintf_internal_r>

00803298 <__sbprintf>:
  803298:	2880030b 	ldhu	r2,12(r5)
  80329c:	2b001917 	ldw	r12,100(r5)
  8032a0:	2ac0038b 	ldhu	r11,14(r5)
  8032a4:	2a800717 	ldw	r10,28(r5)
  8032a8:	2a400917 	ldw	r9,36(r5)
  8032ac:	defee204 	addi	sp,sp,-1144
  8032b0:	da001a04 	addi	r8,sp,104
  8032b4:	00c10004 	movi	r3,1024
  8032b8:	dc011a15 	stw	r16,1128(sp)
  8032bc:	10bfff4c 	andi	r2,r2,65533
  8032c0:	2821883a 	mov	r16,r5
  8032c4:	d80b883a 	mov	r5,sp
  8032c8:	dc811c15 	stw	r18,1136(sp)
  8032cc:	dc411b15 	stw	r17,1132(sp)
  8032d0:	dfc11d15 	stw	ra,1140(sp)
  8032d4:	2025883a 	mov	r18,r4
  8032d8:	d880030d 	sth	r2,12(sp)
  8032dc:	db001915 	stw	r12,100(sp)
  8032e0:	dac0038d 	sth	r11,14(sp)
  8032e4:	da800715 	stw	r10,28(sp)
  8032e8:	da400915 	stw	r9,36(sp)
  8032ec:	da000015 	stw	r8,0(sp)
  8032f0:	da000415 	stw	r8,16(sp)
  8032f4:	d8c00215 	stw	r3,8(sp)
  8032f8:	d8c00515 	stw	r3,20(sp)
  8032fc:	d8000615 	stw	zero,24(sp)
  803300:	08011900 	call	801190 <___vfprintf_internal_r>
  803304:	1023883a 	mov	r17,r2
  803308:	10000d0e 	bge	r2,zero,803340 <__sbprintf+0xa8>
  80330c:	d880030b 	ldhu	r2,12(sp)
  803310:	1080100c 	andi	r2,r2,64
  803314:	10000326 	beq	r2,zero,803324 <__sbprintf+0x8c>
  803318:	8080030b 	ldhu	r2,12(r16)
  80331c:	10801014 	ori	r2,r2,64
  803320:	8080030d 	sth	r2,12(r16)
  803324:	8805883a 	mov	r2,r17
  803328:	dfc11d17 	ldw	ra,1140(sp)
  80332c:	dc811c17 	ldw	r18,1136(sp)
  803330:	dc411b17 	ldw	r17,1132(sp)
  803334:	dc011a17 	ldw	r16,1128(sp)
  803338:	dec11e04 	addi	sp,sp,1144
  80333c:	f800283a 	ret
  803340:	d80b883a 	mov	r5,sp
  803344:	9009883a 	mov	r4,r18
  803348:	080504c0 	call	80504c <_fflush_r>
  80334c:	103fef26 	beq	r2,zero,80330c <__sbprintf+0x74>
  803350:	047fffc4 	movi	r17,-1
  803354:	003fed06 	br	80330c <__sbprintf+0x74>

00803358 <__swsetup_r>:
  803358:	00802074 	movhi	r2,129
  80335c:	108a2117 	ldw	r2,10372(r2)
  803360:	defffd04 	addi	sp,sp,-12
  803364:	dc400115 	stw	r17,4(sp)
  803368:	dc000015 	stw	r16,0(sp)
  80336c:	dfc00215 	stw	ra,8(sp)
  803370:	2023883a 	mov	r17,r4
  803374:	2821883a 	mov	r16,r5
  803378:	10000226 	beq	r2,zero,803384 <__swsetup_r+0x2c>
  80337c:	10c00e17 	ldw	r3,56(r2)
  803380:	18003326 	beq	r3,zero,803450 <__swsetup_r+0xf8>
  803384:	8180030b 	ldhu	r6,12(r16)
  803388:	30c0020c 	andi	r3,r6,8
  80338c:	3005883a 	mov	r2,r6
  803390:	18000f26 	beq	r3,zero,8033d0 <__swsetup_r+0x78>
  803394:	80c00417 	ldw	r3,16(r16)
  803398:	18001626 	beq	r3,zero,8033f4 <__swsetup_r+0x9c>
  80339c:	1100004c 	andi	r4,r2,1
  8033a0:	20001f1e 	bne	r4,zero,803420 <__swsetup_r+0xc8>
  8033a4:	1100008c 	andi	r4,r2,2
  8033a8:	20002c1e 	bne	r4,zero,80345c <__swsetup_r+0x104>
  8033ac:	81000517 	ldw	r4,20(r16)
  8033b0:	81000215 	stw	r4,8(r16)
  8033b4:	18001f26 	beq	r3,zero,803434 <__swsetup_r+0xdc>
  8033b8:	0005883a 	mov	r2,zero
  8033bc:	dfc00217 	ldw	ra,8(sp)
  8033c0:	dc400117 	ldw	r17,4(sp)
  8033c4:	dc000017 	ldw	r16,0(sp)
  8033c8:	dec00304 	addi	sp,sp,12
  8033cc:	f800283a 	ret
  8033d0:	3080040c 	andi	r2,r6,16
  8033d4:	10003126 	beq	r2,zero,80349c <__swsetup_r+0x144>
  8033d8:	3080010c 	andi	r2,r6,4
  8033dc:	1000211e 	bne	r2,zero,803464 <__swsetup_r+0x10c>
  8033e0:	80c00417 	ldw	r3,16(r16)
  8033e4:	30800214 	ori	r2,r6,8
  8033e8:	8080030d 	sth	r2,12(r16)
  8033ec:	100d883a 	mov	r6,r2
  8033f0:	183fea1e 	bne	r3,zero,80339c <__swsetup_r+0x44>
  8033f4:	1100a00c 	andi	r4,r2,640
  8033f8:	21008020 	cmpeqi	r4,r4,512
  8033fc:	203fe71e 	bne	r4,zero,80339c <__swsetup_r+0x44>
  803400:	8809883a 	mov	r4,r17
  803404:	800b883a 	mov	r5,r16
  803408:	0805f040 	call	805f04 <__smakebuf_r>
  80340c:	8180030b 	ldhu	r6,12(r16)
  803410:	80c00417 	ldw	r3,16(r16)
  803414:	3005883a 	mov	r2,r6
  803418:	1100004c 	andi	r4,r2,1
  80341c:	203fe126 	beq	r4,zero,8033a4 <__swsetup_r+0x4c>
  803420:	81000517 	ldw	r4,20(r16)
  803424:	80000215 	stw	zero,8(r16)
  803428:	0109c83a 	sub	r4,zero,r4
  80342c:	81000615 	stw	r4,24(r16)
  803430:	183fe11e 	bne	r3,zero,8033b8 <__swsetup_r+0x60>
  803434:	10c0200c 	andi	r3,r2,128
  803438:	0005883a 	mov	r2,zero
  80343c:	183fdf26 	beq	r3,zero,8033bc <__swsetup_r+0x64>
  803440:	31801014 	ori	r6,r6,64
  803444:	8180030d 	sth	r6,12(r16)
  803448:	00bfffc4 	movi	r2,-1
  80344c:	003fdb06 	br	8033bc <__swsetup_r+0x64>
  803450:	1009883a 	mov	r4,r2
  803454:	08053e00 	call	8053e0 <__sinit>
  803458:	003fca06 	br	803384 <__swsetup_r+0x2c>
  80345c:	0009883a 	mov	r4,zero
  803460:	003fd306 	br	8033b0 <__swsetup_r+0x58>
  803464:	81400c17 	ldw	r5,48(r16)
  803468:	28000626 	beq	r5,zero,803484 <__swsetup_r+0x12c>
  80346c:	80801004 	addi	r2,r16,64
  803470:	28800326 	beq	r5,r2,803480 <__swsetup_r+0x128>
  803474:	8809883a 	mov	r4,r17
  803478:	08055440 	call	805544 <_free_r>
  80347c:	8180030b 	ldhu	r6,12(r16)
  803480:	80000c15 	stw	zero,48(r16)
  803484:	80c00417 	ldw	r3,16(r16)
  803488:	00bff6c4 	movi	r2,-37
  80348c:	118c703a 	and	r6,r2,r6
  803490:	80000115 	stw	zero,4(r16)
  803494:	80c00015 	stw	r3,0(r16)
  803498:	003fd206 	br	8033e4 <__swsetup_r+0x8c>
  80349c:	00800244 	movi	r2,9
  8034a0:	88800015 	stw	r2,0(r17)
  8034a4:	31801014 	ori	r6,r6,64
  8034a8:	8180030d 	sth	r6,12(r16)
  8034ac:	00bfffc4 	movi	r2,-1
  8034b0:	003fc206 	br	8033bc <__swsetup_r+0x64>

008034b4 <quorem>:
  8034b4:	defff204 	addi	sp,sp,-56
  8034b8:	dc400515 	stw	r17,20(sp)
  8034bc:	20800417 	ldw	r2,16(r4)
  8034c0:	2c400417 	ldw	r17,16(r5)
  8034c4:	dfc00d15 	stw	ra,52(sp)
  8034c8:	df000c15 	stw	fp,48(sp)
  8034cc:	ddc00b15 	stw	r23,44(sp)
  8034d0:	dd800a15 	stw	r22,40(sp)
  8034d4:	dd400915 	stw	r21,36(sp)
  8034d8:	dd000815 	stw	r20,32(sp)
  8034dc:	dcc00715 	stw	r19,28(sp)
  8034e0:	dc800615 	stw	r18,24(sp)
  8034e4:	dc000415 	stw	r16,16(sp)
  8034e8:	d9000115 	stw	r4,4(sp)
  8034ec:	d9400215 	stw	r5,8(sp)
  8034f0:	14407616 	blt	r2,r17,8036cc <quorem+0x218>
  8034f4:	8c7fffc4 	addi	r17,r17,-1
  8034f8:	882a90ba 	slli	r21,r17,2
  8034fc:	2f000504 	addi	fp,r5,20
  803500:	25800504 	addi	r22,r4,20
  803504:	e565883a 	add	r18,fp,r21
  803508:	b545883a 	add	r2,r22,r21
  80350c:	95c00017 	ldw	r23,0(r18)
  803510:	15000017 	ldw	r20,0(r2)
  803514:	dd800015 	stw	r22,0(sp)
  803518:	bdc00044 	addi	r23,r23,1
  80351c:	b80b883a 	mov	r5,r23
  803520:	a009883a 	mov	r4,r20
  803524:	d8800315 	stw	r2,12(sp)
  803528:	080b4540 	call	80b454 <__udivsi3>
  80352c:	1021883a 	mov	r16,r2
  803530:	a5c02f36 	bltu	r20,r23,8035f0 <quorem+0x13c>
  803534:	e029883a 	mov	r20,fp
  803538:	002b883a 	mov	r21,zero
  80353c:	002f883a 	mov	r23,zero
  803540:	a4c00017 	ldw	r19,0(r20)
  803544:	800b883a 	mov	r5,r16
  803548:	b5800104 	addi	r22,r22,4
  80354c:	993fffcc 	andi	r4,r19,65535
  803550:	0800f8c0 	call	800f8c <__mulsi3>
  803554:	9808d43a 	srli	r4,r19,16
  803558:	800b883a 	mov	r5,r16
  80355c:	156b883a 	add	r21,r2,r21
  803560:	0800f8c0 	call	800f8c <__mulsi3>
  803564:	b0ffff17 	ldw	r3,-4(r22)
  803568:	a80ad43a 	srli	r5,r21,16
  80356c:	a93fffcc 	andi	r4,r21,65535
  803570:	19bfffcc 	andi	r6,r3,65535
  803574:	b909c83a 	sub	r4,r23,r4
  803578:	2189883a 	add	r4,r4,r6
  80357c:	1806d43a 	srli	r3,r3,16
  803580:	1145883a 	add	r2,r2,r5
  803584:	200bd43a 	srai	r5,r4,16
  803588:	11bfffcc 	andi	r6,r2,65535
  80358c:	1987c83a 	sub	r3,r3,r6
  803590:	1947883a 	add	r3,r3,r5
  803594:	180a943a 	slli	r5,r3,16
  803598:	213fffcc 	andi	r4,r4,65535
  80359c:	a5000104 	addi	r20,r20,4
  8035a0:	2908b03a 	or	r4,r5,r4
  8035a4:	b13fff15 	stw	r4,-4(r22)
  8035a8:	102ad43a 	srli	r21,r2,16
  8035ac:	182fd43a 	srai	r23,r3,16
  8035b0:	953fe32e 	bgeu	r18,r20,803540 <quorem+0x8c>
  8035b4:	d8c00317 	ldw	r3,12(sp)
  8035b8:	18800017 	ldw	r2,0(r3)
  8035bc:	10000c1e 	bne	r2,zero,8035f0 <quorem+0x13c>
  8035c0:	d8800017 	ldw	r2,0(sp)
  8035c4:	1d7fff04 	addi	r21,r3,-4
  8035c8:	15400436 	bltu	r2,r21,8035dc <quorem+0x128>
  8035cc:	00000606 	br	8035e8 <quorem+0x134>
  8035d0:	d8800017 	ldw	r2,0(sp)
  8035d4:	8c7fffc4 	addi	r17,r17,-1
  8035d8:	1540032e 	bgeu	r2,r21,8035e8 <quorem+0x134>
  8035dc:	a8800017 	ldw	r2,0(r21)
  8035e0:	ad7fff04 	addi	r21,r21,-4
  8035e4:	103ffa26 	beq	r2,zero,8035d0 <quorem+0x11c>
  8035e8:	d8800117 	ldw	r2,4(sp)
  8035ec:	14400415 	stw	r17,16(r2)
  8035f0:	d9400217 	ldw	r5,8(sp)
  8035f4:	d9000117 	ldw	r4,4(sp)
  8035f8:	08076240 	call	807624 <__mcmp>
  8035fc:	10002616 	blt	r2,zero,803698 <quorem+0x1e4>
  803600:	d9800017 	ldw	r6,0(sp)
  803604:	84000044 	addi	r16,r16,1
  803608:	0007883a 	mov	r3,zero
  80360c:	e1000017 	ldw	r4,0(fp)
  803610:	31400017 	ldw	r5,0(r6)
  803614:	31800104 	addi	r6,r6,4
  803618:	20bfffcc 	andi	r2,r4,65535
  80361c:	1887c83a 	sub	r3,r3,r2
  803620:	28bfffcc 	andi	r2,r5,65535
  803624:	1885883a 	add	r2,r3,r2
  803628:	2008d43a 	srli	r4,r4,16
  80362c:	2806d43a 	srli	r3,r5,16
  803630:	100fd43a 	srai	r7,r2,16
  803634:	117fffcc 	andi	r5,r2,65535
  803638:	1907c83a 	sub	r3,r3,r4
  80363c:	19c7883a 	add	r3,r3,r7
  803640:	1804943a 	slli	r2,r3,16
  803644:	e7000104 	addi	fp,fp,4
  803648:	1807d43a 	srai	r3,r3,16
  80364c:	1144b03a 	or	r2,r2,r5
  803650:	30bfff15 	stw	r2,-4(r6)
  803654:	973fed2e 	bgeu	r18,fp,80360c <quorem+0x158>
  803658:	880490ba 	slli	r2,r17,2
  80365c:	d9000017 	ldw	r4,0(sp)
  803660:	2085883a 	add	r2,r4,r2
  803664:	10c00017 	ldw	r3,0(r2)
  803668:	18000b1e 	bne	r3,zero,803698 <quorem+0x1e4>
  80366c:	10bfff04 	addi	r2,r2,-4
  803670:	20800436 	bltu	r4,r2,803684 <quorem+0x1d0>
  803674:	00000606 	br	803690 <quorem+0x1dc>
  803678:	d8c00017 	ldw	r3,0(sp)
  80367c:	8c7fffc4 	addi	r17,r17,-1
  803680:	1880032e 	bgeu	r3,r2,803690 <quorem+0x1dc>
  803684:	10c00017 	ldw	r3,0(r2)
  803688:	10bfff04 	addi	r2,r2,-4
  80368c:	183ffa26 	beq	r3,zero,803678 <quorem+0x1c4>
  803690:	d8800117 	ldw	r2,4(sp)
  803694:	14400415 	stw	r17,16(r2)
  803698:	8005883a 	mov	r2,r16
  80369c:	dfc00d17 	ldw	ra,52(sp)
  8036a0:	df000c17 	ldw	fp,48(sp)
  8036a4:	ddc00b17 	ldw	r23,44(sp)
  8036a8:	dd800a17 	ldw	r22,40(sp)
  8036ac:	dd400917 	ldw	r21,36(sp)
  8036b0:	dd000817 	ldw	r20,32(sp)
  8036b4:	dcc00717 	ldw	r19,28(sp)
  8036b8:	dc800617 	ldw	r18,24(sp)
  8036bc:	dc400517 	ldw	r17,20(sp)
  8036c0:	dc000417 	ldw	r16,16(sp)
  8036c4:	dec00e04 	addi	sp,sp,56
  8036c8:	f800283a 	ret
  8036cc:	0005883a 	mov	r2,zero
  8036d0:	003ff206 	br	80369c <quorem+0x1e8>

008036d4 <_dtoa_r>:
  8036d4:	20801017 	ldw	r2,64(r4)
  8036d8:	deffe204 	addi	sp,sp,-120
  8036dc:	ddc01b15 	stw	r23,108(sp)
  8036e0:	dd001815 	stw	r20,96(sp)
  8036e4:	dc801615 	stw	r18,88(sp)
  8036e8:	dc401515 	stw	r17,84(sp)
  8036ec:	dc001415 	stw	r16,80(sp)
  8036f0:	dfc01d15 	stw	ra,116(sp)
  8036f4:	df001c15 	stw	fp,112(sp)
  8036f8:	dd801a15 	stw	r22,104(sp)
  8036fc:	dd401915 	stw	r21,100(sp)
  803700:	dcc01715 	stw	r19,92(sp)
  803704:	d9c00115 	stw	r7,4(sp)
  803708:	dc002017 	ldw	r16,128(sp)
  80370c:	202f883a 	mov	r23,r4
  803710:	3025883a 	mov	r18,r6
  803714:	2829883a 	mov	r20,r5
  803718:	3023883a 	mov	r17,r6
  80371c:	10000826 	beq	r2,zero,803740 <_dtoa_r+0x6c>
  803720:	21801117 	ldw	r6,68(r4)
  803724:	00c00044 	movi	r3,1
  803728:	100b883a 	mov	r5,r2
  80372c:	1986983a 	sll	r3,r3,r6
  803730:	11800115 	stw	r6,4(r2)
  803734:	10c00215 	stw	r3,8(r2)
  803738:	0806cb80 	call	806cb8 <_Bfree>
  80373c:	b8001015 	stw	zero,64(r23)
  803740:	90018616 	blt	r18,zero,803d5c <_dtoa_r+0x688>
  803744:	80000015 	stw	zero,0(r16)
  803748:	909ffc2c 	andhi	r2,r18,32752
  80374c:	00dffc34 	movhi	r3,32752
  803750:	10c18b26 	beq	r2,r3,803d80 <_dtoa_r+0x6ac>
  803754:	000d883a 	mov	r6,zero
  803758:	000f883a 	mov	r7,zero
  80375c:	a009883a 	mov	r4,r20
  803760:	880b883a 	mov	r5,r17
  803764:	080c7c00 	call	80c7c0 <__eqdf2>
  803768:	1000181e 	bne	r2,zero,8037cc <_dtoa_r+0xf8>
  80376c:	d8c01f17 	ldw	r3,124(sp)
  803770:	00800044 	movi	r2,1
  803774:	18800015 	stw	r2,0(r3)
  803778:	d8802117 	ldw	r2,132(sp)
  80377c:	10030b26 	beq	r2,zero,8043ac <_dtoa_r+0xcd8>
  803780:	d8c02117 	ldw	r3,132(sp)
  803784:	00802074 	movhi	r2,129
  803788:	1081f544 	addi	r2,r2,2005
  80378c:	07002074 	movhi	fp,129
  803790:	18800015 	stw	r2,0(r3)
  803794:	e701f504 	addi	fp,fp,2004
  803798:	e005883a 	mov	r2,fp
  80379c:	dfc01d17 	ldw	ra,116(sp)
  8037a0:	df001c17 	ldw	fp,112(sp)
  8037a4:	ddc01b17 	ldw	r23,108(sp)
  8037a8:	dd801a17 	ldw	r22,104(sp)
  8037ac:	dd401917 	ldw	r21,100(sp)
  8037b0:	dd001817 	ldw	r20,96(sp)
  8037b4:	dcc01717 	ldw	r19,92(sp)
  8037b8:	dc801617 	ldw	r18,88(sp)
  8037bc:	dc401517 	ldw	r17,84(sp)
  8037c0:	dc001417 	ldw	r16,80(sp)
  8037c4:	dec01e04 	addi	sp,sp,120
  8037c8:	f800283a 	ret
  8037cc:	d8801204 	addi	r2,sp,72
  8037d0:	9020d53a 	srli	r16,r18,20
  8037d4:	d8800015 	stw	r2,0(sp)
  8037d8:	d9c01304 	addi	r7,sp,76
  8037dc:	a00b883a 	mov	r5,r20
  8037e0:	880d883a 	mov	r6,r17
  8037e4:	b809883a 	mov	r4,r23
  8037e8:	0807a080 	call	807a08 <__d2b>
  8037ec:	102d883a 	mov	r22,r2
  8037f0:	8001741e 	bne	r16,zero,803dc4 <_dtoa_r+0x6f0>
  8037f4:	df001217 	ldw	fp,72(sp)
  8037f8:	dc001317 	ldw	r16,76(sp)
  8037fc:	e421883a 	add	r16,fp,r16
  803800:	80810c84 	addi	r2,r16,1074
  803804:	10c00850 	cmplti	r3,r2,33
  803808:	1802f81e 	bne	r3,zero,8043ec <_dtoa_r+0xd18>
  80380c:	01001004 	movi	r4,64
  803810:	2085c83a 	sub	r2,r4,r2
  803814:	81010484 	addi	r4,r16,1042
  803818:	90a4983a 	sll	r18,r18,r2
  80381c:	a108d83a 	srl	r4,r20,r4
  803820:	9108b03a 	or	r4,r18,r4
  803824:	080dc8c0 	call	80dc8c <__floatunsidf>
  803828:	1009883a 	mov	r4,r2
  80382c:	017f8434 	movhi	r5,65040
  803830:	00800044 	movi	r2,1
  803834:	194b883a 	add	r5,r3,r5
  803838:	843fffc4 	addi	r16,r16,-1
  80383c:	d8800915 	stw	r2,36(sp)
  803840:	000d883a 	mov	r6,zero
  803844:	01cffe34 	movhi	r7,16376
  803848:	080d1c80 	call	80d1c8 <__subdf3>
  80384c:	0198dbf4 	movhi	r6,25455
  803850:	01cff4f4 	movhi	r7,16339
  803854:	3190d844 	addi	r6,r6,17249
  803858:	39e1e9c4 	addi	r7,r7,-30809
  80385c:	1009883a 	mov	r4,r2
  803860:	180b883a 	mov	r5,r3
  803864:	080ca200 	call	80ca20 <__muldf3>
  803868:	01a2d874 	movhi	r6,35681
  80386c:	01cff1f4 	movhi	r7,16327
  803870:	31b22cc4 	addi	r6,r6,-14157
  803874:	39e28a04 	addi	r7,r7,-30168
  803878:	180b883a 	mov	r5,r3
  80387c:	1009883a 	mov	r4,r2
  803880:	080b5140 	call	80b514 <__adddf3>
  803884:	8009883a 	mov	r4,r16
  803888:	1027883a 	mov	r19,r2
  80388c:	1825883a 	mov	r18,r3
  803890:	080dbd00 	call	80dbd0 <__floatsidf>
  803894:	019427f4 	movhi	r6,20639
  803898:	01cff4f4 	movhi	r7,16339
  80389c:	319e7ec4 	addi	r6,r6,31227
  8038a0:	39d104c4 	addi	r7,r7,17427
  8038a4:	1009883a 	mov	r4,r2
  8038a8:	180b883a 	mov	r5,r3
  8038ac:	080ca200 	call	80ca20 <__muldf3>
  8038b0:	100d883a 	mov	r6,r2
  8038b4:	180f883a 	mov	r7,r3
  8038b8:	9809883a 	mov	r4,r19
  8038bc:	900b883a 	mov	r5,r18
  8038c0:	080b5140 	call	80b514 <__adddf3>
  8038c4:	1009883a 	mov	r4,r2
  8038c8:	180b883a 	mov	r5,r3
  8038cc:	1025883a 	mov	r18,r2
  8038d0:	182b883a 	mov	r21,r3
  8038d4:	080db500 	call	80db50 <__fixdfsi>
  8038d8:	000d883a 	mov	r6,zero
  8038dc:	000f883a 	mov	r7,zero
  8038e0:	9009883a 	mov	r4,r18
  8038e4:	a80b883a 	mov	r5,r21
  8038e8:	1027883a 	mov	r19,r2
  8038ec:	080c9300 	call	80c930 <__ledf2>
  8038f0:	1002a416 	blt	r2,zero,804384 <_dtoa_r+0xcb0>
  8038f4:	e439c83a 	sub	fp,fp,r16
  8038f8:	e0ffffc4 	addi	r3,fp,-1
  8038fc:	988005e8 	cmpgeui	r2,r19,23
  803900:	d8c00215 	stw	r3,8(sp)
  803904:	1002961e 	bne	r2,zero,804360 <_dtoa_r+0xc8c>
  803908:	980690fa 	slli	r3,r19,3
  80390c:	00802074 	movhi	r2,129
  803910:	10823e04 	addi	r2,r2,2296
  803914:	10c5883a 	add	r2,r2,r3
  803918:	11800017 	ldw	r6,0(r2)
  80391c:	11c00117 	ldw	r7,4(r2)
  803920:	a009883a 	mov	r4,r20
  803924:	880b883a 	mov	r5,r17
  803928:	080c9300 	call	80c930 <__ledf2>
  80392c:	1002670e 	bge	r2,zero,8042cc <_dtoa_r+0xbf8>
  803930:	d8000815 	stw	zero,32(sp)
  803934:	e0bfffc4 	addi	r2,fp,-1
  803938:	9cffffc4 	addi	r19,r19,-1
  80393c:	10028c16 	blt	r2,zero,804370 <_dtoa_r+0xc9c>
  803940:	d8000515 	stw	zero,20(sp)
  803944:	9802650e 	bge	r19,zero,8042dc <_dtoa_r+0xc08>
  803948:	d8800517 	ldw	r2,20(sp)
  80394c:	d8c00117 	ldw	r3,4(sp)
  803950:	dcc00315 	stw	r19,12(sp)
  803954:	14c5c83a 	sub	r2,r2,r19
  803958:	d8800515 	stw	r2,20(sp)
  80395c:	04c5c83a 	sub	r2,zero,r19
  803960:	d8800715 	stw	r2,28(sp)
  803964:	188002a8 	cmpgeui	r2,r3,10
  803968:	0027883a 	mov	r19,zero
  80396c:	1002631e 	bne	r2,zero,8042fc <_dtoa_r+0xc28>
  803970:	18800190 	cmplti	r2,r3,6
  803974:	1002a11e 	bne	r2,zero,8043fc <_dtoa_r+0xd28>
  803978:	18bfff04 	addi	r2,r3,-4
  80397c:	d8800115 	stw	r2,4(sp)
  803980:	0021883a 	mov	r16,zero
  803984:	d8c00117 	ldw	r3,4(sp)
  803988:	18800120 	cmpeqi	r2,r3,4
  80398c:	1003721e 	bne	r2,zero,804758 <_dtoa_r+0x1084>
  803990:	18800160 	cmpeqi	r2,r3,5
  803994:	10032f1e 	bne	r2,zero,804654 <_dtoa_r+0xf80>
  803998:	188000a0 	cmpeqi	r2,r3,2
  80399c:	10026326 	beq	r2,zero,80432c <_dtoa_r+0xc58>
  8039a0:	d8000615 	stw	zero,24(sp)
  8039a4:	d8801e17 	ldw	r2,120(sp)
  8039a8:	00833c0e 	bge	zero,r2,80469c <_dtoa_r+0xfc8>
  8039ac:	d8800b15 	stw	r2,44(sp)
  8039b0:	d8800415 	stw	r2,16(sp)
  8039b4:	100d883a 	mov	r6,r2
  8039b8:	b8001115 	stw	zero,68(r23)
  8039bc:	30800610 	cmplti	r2,r6,24
  8039c0:	1005161e 	bne	r2,zero,804e1c <_dtoa_r+0x1748>
  8039c4:	00c00044 	movi	r3,1
  8039c8:	00800104 	movi	r2,4
  8039cc:	1085883a 	add	r2,r2,r2
  8039d0:	11000504 	addi	r4,r2,20
  8039d4:	180b883a 	mov	r5,r3
  8039d8:	18c00044 	addi	r3,r3,1
  8039dc:	313ffb2e 	bgeu	r6,r4,8039cc <_dtoa_r+0x2f8>
  8039e0:	b9401115 	stw	r5,68(r23)
  8039e4:	b809883a 	mov	r4,r23
  8039e8:	0806c140 	call	806c14 <_Balloc>
  8039ec:	1039883a 	mov	fp,r2
  8039f0:	1004f526 	beq	r2,zero,804dc8 <_dtoa_r+0x16f4>
  8039f4:	b8801015 	stw	r2,64(r23)
  8039f8:	d8800417 	ldw	r2,16(sp)
  8039fc:	108003e8 	cmpgeui	r2,r2,15
  803a00:	10010b1e 	bne	r2,zero,803e30 <_dtoa_r+0x75c>
  803a04:	80010a26 	beq	r16,zero,803e30 <_dtoa_r+0x75c>
  803a08:	d9000317 	ldw	r4,12(sp)
  803a0c:	0103a30e 	bge	zero,r4,80489c <_dtoa_r+0x11c8>
  803a10:	208003cc 	andi	r2,r4,15
  803a14:	100690fa 	slli	r3,r2,3
  803a18:	202bd13a 	srai	r21,r4,4
  803a1c:	00802074 	movhi	r2,129
  803a20:	10823e04 	addi	r2,r2,2296
  803a24:	10c5883a 	add	r2,r2,r3
  803a28:	a8c0040c 	andi	r3,r21,16
  803a2c:	12800017 	ldw	r10,0(r2)
  803a30:	12400117 	ldw	r9,4(r2)
  803a34:	18034226 	beq	r3,zero,804740 <_dtoa_r+0x106c>
  803a38:	00802074 	movhi	r2,129
  803a3c:	10823404 	addi	r2,r2,2256
  803a40:	11800817 	ldw	r6,32(r2)
  803a44:	11c00917 	ldw	r7,36(r2)
  803a48:	a009883a 	mov	r4,r20
  803a4c:	880b883a 	mov	r5,r17
  803a50:	da400e15 	stw	r9,56(sp)
  803a54:	da800d15 	stw	r10,52(sp)
  803a58:	080be8c0 	call	80be8c <__divdf3>
  803a5c:	da800d17 	ldw	r10,52(sp)
  803a60:	da400e17 	ldw	r9,56(sp)
  803a64:	ad4003cc 	andi	r21,r21,15
  803a68:	d8800a15 	stw	r2,40(sp)
  803a6c:	d8c00c15 	stw	r3,48(sp)
  803a70:	040000c4 	movi	r16,3
  803a74:	a8001126 	beq	r21,zero,803abc <_dtoa_r+0x3e8>
  803a78:	04802074 	movhi	r18,129
  803a7c:	94823404 	addi	r18,r18,2256
  803a80:	5009883a 	mov	r4,r10
  803a84:	480b883a 	mov	r5,r9
  803a88:	a980004c 	andi	r6,r21,1
  803a8c:	30000626 	beq	r6,zero,803aa8 <_dtoa_r+0x3d4>
  803a90:	91800017 	ldw	r6,0(r18)
  803a94:	91c00117 	ldw	r7,4(r18)
  803a98:	84000044 	addi	r16,r16,1
  803a9c:	080ca200 	call	80ca20 <__muldf3>
  803aa0:	1009883a 	mov	r4,r2
  803aa4:	180b883a 	mov	r5,r3
  803aa8:	a82bd07a 	srai	r21,r21,1
  803aac:	94800204 	addi	r18,r18,8
  803ab0:	a83ff51e 	bne	r21,zero,803a88 <_dtoa_r+0x3b4>
  803ab4:	2015883a 	mov	r10,r4
  803ab8:	2813883a 	mov	r9,r5
  803abc:	d9000a17 	ldw	r4,40(sp)
  803ac0:	d9400c17 	ldw	r5,48(sp)
  803ac4:	500d883a 	mov	r6,r10
  803ac8:	480f883a 	mov	r7,r9
  803acc:	080be8c0 	call	80be8c <__divdf3>
  803ad0:	1025883a 	mov	r18,r2
  803ad4:	d8c00a15 	stw	r3,40(sp)
  803ad8:	d8800817 	ldw	r2,32(sp)
  803adc:	10000726 	beq	r2,zero,803afc <_dtoa_r+0x428>
  803ae0:	dd400a17 	ldw	r21,40(sp)
  803ae4:	000d883a 	mov	r6,zero
  803ae8:	01cffc34 	movhi	r7,16368
  803aec:	9009883a 	mov	r4,r18
  803af0:	a80b883a 	mov	r5,r21
  803af4:	080c9300 	call	80c930 <__ledf2>
  803af8:	10045516 	blt	r2,zero,804c50 <_dtoa_r+0x157c>
  803afc:	8009883a 	mov	r4,r16
  803b00:	080dbd00 	call	80dbd0 <__floatsidf>
  803b04:	d9c00a17 	ldw	r7,40(sp)
  803b08:	900d883a 	mov	r6,r18
  803b0c:	1009883a 	mov	r4,r2
  803b10:	180b883a 	mov	r5,r3
  803b14:	080ca200 	call	80ca20 <__muldf3>
  803b18:	000d883a 	mov	r6,zero
  803b1c:	01d00734 	movhi	r7,16412
  803b20:	1009883a 	mov	r4,r2
  803b24:	180b883a 	mov	r5,r3
  803b28:	080b5140 	call	80b514 <__adddf3>
  803b2c:	d8800c15 	stw	r2,48(sp)
  803b30:	00bf3034 	movhi	r2,64704
  803b34:	1885883a 	add	r2,r3,r2
  803b38:	d8800d15 	stw	r2,52(sp)
  803b3c:	d8800417 	ldw	r2,16(sp)
  803b40:	10033926 	beq	r2,zero,804828 <_dtoa_r+0x1154>
  803b44:	d8800317 	ldw	r2,12(sp)
  803b48:	d8801115 	stw	r2,68(sp)
  803b4c:	d8800417 	ldw	r2,16(sp)
  803b50:	d8800e15 	stw	r2,56(sp)
  803b54:	dc000a17 	ldw	r16,40(sp)
  803b58:	9009883a 	mov	r4,r18
  803b5c:	800b883a 	mov	r5,r16
  803b60:	080db500 	call	80db50 <__fixdfsi>
  803b64:	d8c00e17 	ldw	r3,56(sp)
  803b68:	d8801015 	stw	r2,64(sp)
  803b6c:	18ffffc4 	addi	r3,r3,-1
  803b70:	180890fa 	slli	r4,r3,3
  803b74:	00c02074 	movhi	r3,129
  803b78:	18c23e04 	addi	r3,r3,2296
  803b7c:	1907883a 	add	r3,r3,r4
  803b80:	1b000017 	ldw	r12,0(r3)
  803b84:	1b400117 	ldw	r13,4(r3)
  803b88:	1009883a 	mov	r4,r2
  803b8c:	db000f15 	stw	r12,60(sp)
  803b90:	db400a15 	stw	r13,40(sp)
  803b94:	080dbd00 	call	80dbd0 <__floatsidf>
  803b98:	9009883a 	mov	r4,r18
  803b9c:	800b883a 	mov	r5,r16
  803ba0:	100d883a 	mov	r6,r2
  803ba4:	180f883a 	mov	r7,r3
  803ba8:	080d1c80 	call	80d1c8 <__subdf3>
  803bac:	dac01017 	ldw	r11,64(sp)
  803bb0:	102b883a 	mov	r21,r2
  803bb4:	d8800617 	ldw	r2,24(sp)
  803bb8:	db400a17 	ldw	r13,40(sp)
  803bbc:	db000f17 	ldw	r12,60(sp)
  803bc0:	e4000044 	addi	r16,fp,1
  803bc4:	1825883a 	mov	r18,r3
  803bc8:	5ac00c04 	addi	r11,r11,48
  803bcc:	1003c626 	beq	r2,zero,804ae8 <_dtoa_r+0x1414>
  803bd0:	600d883a 	mov	r6,r12
  803bd4:	680f883a 	mov	r7,r13
  803bd8:	0009883a 	mov	r4,zero
  803bdc:	014ff834 	movhi	r5,16352
  803be0:	dac00f15 	stw	r11,60(sp)
  803be4:	080be8c0 	call	80be8c <__divdf3>
  803be8:	d9800c17 	ldw	r6,48(sp)
  803bec:	d9c00d17 	ldw	r7,52(sp)
  803bf0:	1009883a 	mov	r4,r2
  803bf4:	180b883a 	mov	r5,r3
  803bf8:	080d1c80 	call	80d1c8 <__subdf3>
  803bfc:	dac00f17 	ldw	r11,60(sp)
  803c00:	a80d883a 	mov	r6,r21
  803c04:	900f883a 	mov	r7,r18
  803c08:	e2c00005 	stb	r11,0(fp)
  803c0c:	1009883a 	mov	r4,r2
  803c10:	180b883a 	mov	r5,r3
  803c14:	d8800a15 	stw	r2,40(sp)
  803c18:	d8c00c15 	stw	r3,48(sp)
  803c1c:	080c8400 	call	80c840 <__gedf2>
  803c20:	00844116 	blt	zero,r2,804d28 <_dtoa_r+0x1654>
  803c24:	0005883a 	mov	r2,zero
  803c28:	dcc00f15 	stw	r19,60(sp)
  803c2c:	dd800d15 	stw	r22,52(sp)
  803c30:	dcc00c17 	ldw	r19,48(sp)
  803c34:	dd800e17 	ldw	r22,56(sp)
  803c38:	dc400c15 	stw	r17,48(sp)
  803c3c:	ddc00e15 	stw	r23,56(sp)
  803c40:	dc400a17 	ldw	r17,40(sp)
  803c44:	dd000a15 	stw	r20,40(sp)
  803c48:	1029883a 	mov	r20,r2
  803c4c:	00002606 	br	803ce8 <_dtoa_r+0x614>
  803c50:	a5000044 	addi	r20,r20,1
  803c54:	a5843d0e 	bge	r20,r22,804d4c <_dtoa_r+0x1678>
  803c58:	8809883a 	mov	r4,r17
  803c5c:	980b883a 	mov	r5,r19
  803c60:	000d883a 	mov	r6,zero
  803c64:	01d00934 	movhi	r7,16420
  803c68:	080ca200 	call	80ca20 <__muldf3>
  803c6c:	000d883a 	mov	r6,zero
  803c70:	01d00934 	movhi	r7,16420
  803c74:	a809883a 	mov	r4,r21
  803c78:	900b883a 	mov	r5,r18
  803c7c:	1023883a 	mov	r17,r2
  803c80:	1827883a 	mov	r19,r3
  803c84:	080ca200 	call	80ca20 <__muldf3>
  803c88:	180b883a 	mov	r5,r3
  803c8c:	1009883a 	mov	r4,r2
  803c90:	1825883a 	mov	r18,r3
  803c94:	102b883a 	mov	r21,r2
  803c98:	080db500 	call	80db50 <__fixdfsi>
  803c9c:	1009883a 	mov	r4,r2
  803ca0:	102f883a 	mov	r23,r2
  803ca4:	080dbd00 	call	80dbd0 <__floatsidf>
  803ca8:	a809883a 	mov	r4,r21
  803cac:	900b883a 	mov	r5,r18
  803cb0:	100d883a 	mov	r6,r2
  803cb4:	180f883a 	mov	r7,r3
  803cb8:	080d1c80 	call	80d1c8 <__subdf3>
  803cbc:	84000044 	addi	r16,r16,1
  803cc0:	ba000c04 	addi	r8,r23,48
  803cc4:	823fffc5 	stb	r8,-1(r16)
  803cc8:	880d883a 	mov	r6,r17
  803ccc:	980f883a 	mov	r7,r19
  803cd0:	1009883a 	mov	r4,r2
  803cd4:	180b883a 	mov	r5,r3
  803cd8:	102b883a 	mov	r21,r2
  803cdc:	1825883a 	mov	r18,r3
  803ce0:	080c9300 	call	80c930 <__ledf2>
  803ce4:	10040e16 	blt	r2,zero,804d20 <_dtoa_r+0x164c>
  803ce8:	a80d883a 	mov	r6,r21
  803cec:	900f883a 	mov	r7,r18
  803cf0:	0009883a 	mov	r4,zero
  803cf4:	014ffc34 	movhi	r5,16368
  803cf8:	080d1c80 	call	80d1c8 <__subdf3>
  803cfc:	880d883a 	mov	r6,r17
  803d00:	980f883a 	mov	r7,r19
  803d04:	1009883a 	mov	r4,r2
  803d08:	180b883a 	mov	r5,r3
  803d0c:	080c9300 	call	80c930 <__ledf2>
  803d10:	103fcf0e 	bge	r2,zero,803c50 <_dtoa_r+0x57c>
  803d14:	dd800d17 	ldw	r22,52(sp)
  803d18:	ddc00e17 	ldw	r23,56(sp)
  803d1c:	d8801117 	ldw	r2,68(sp)
  803d20:	10800044 	addi	r2,r2,1
  803d24:	d8800315 	stw	r2,12(sp)
  803d28:	00000106 	br	803d30 <_dtoa_r+0x65c>
  803d2c:	e403ee26 	beq	fp,r16,804ce8 <_dtoa_r+0x1614>
  803d30:	80ffffc3 	ldbu	r3,-1(r16)
  803d34:	8025883a 	mov	r18,r16
  803d38:	843fffc4 	addi	r16,r16,-1
  803d3c:	18803fcc 	andi	r2,r3,255
  803d40:	1080201c 	xori	r2,r2,128
  803d44:	10bfe004 	addi	r2,r2,-128
  803d48:	10800e60 	cmpeqi	r2,r2,57
  803d4c:	103ff71e 	bne	r2,zero,803d2c <_dtoa_r+0x658>
  803d50:	18c00044 	addi	r3,r3,1
  803d54:	80c00005 	stb	r3,0(r16)
  803d58:	00015106 	br	8042a0 <_dtoa_r+0xbcc>
  803d5c:	04600034 	movhi	r17,32768
  803d60:	8c7fffc4 	addi	r17,r17,-1
  803d64:	9462703a 	and	r17,r18,r17
  803d68:	00800044 	movi	r2,1
  803d6c:	8825883a 	mov	r18,r17
  803d70:	80800015 	stw	r2,0(r16)
  803d74:	00dffc34 	movhi	r3,32752
  803d78:	909ffc2c 	andhi	r2,r18,32752
  803d7c:	10fe751e 	bne	r2,r3,803754 <_dtoa_r+0x80>
  803d80:	d8c01f17 	ldw	r3,124(sp)
  803d84:	00800434 	movhi	r2,16
  803d88:	10bfffc4 	addi	r2,r2,-1
  803d8c:	90a4703a 	and	r18,r18,r2
  803d90:	0089c3c4 	movi	r2,9999
  803d94:	18800015 	stw	r2,0(r3)
  803d98:	9528b03a 	or	r20,r18,r20
  803d9c:	a000121e 	bne	r20,zero,803de8 <_dtoa_r+0x714>
  803da0:	d8802117 	ldw	r2,132(sp)
  803da4:	07002074 	movhi	fp,129
  803da8:	10041526 	beq	r2,zero,804e00 <_dtoa_r+0x172c>
  803dac:	00802074 	movhi	r2,129
  803db0:	e701ff04 	addi	fp,fp,2044
  803db4:	10820104 	addi	r2,r2,2052
  803db8:	d8c02117 	ldw	r3,132(sp)
  803dbc:	18800015 	stw	r2,0(r3)
  803dc0:	003e7506 	br	803798 <_dtoa_r+0xc4>
  803dc4:	01400434 	movhi	r5,16
  803dc8:	297fffc4 	addi	r5,r5,-1
  803dcc:	894a703a 	and	r5,r17,r5
  803dd0:	df001217 	ldw	fp,72(sp)
  803dd4:	a009883a 	mov	r4,r20
  803dd8:	294ffc34 	orhi	r5,r5,16368
  803ddc:	843f0044 	addi	r16,r16,-1023
  803de0:	d8000915 	stw	zero,36(sp)
  803de4:	003e9606 	br	803840 <_dtoa_r+0x16c>
  803de8:	d8802117 	ldw	r2,132(sp)
  803dec:	07002074 	movhi	fp,129
  803df0:	1002141e 	bne	r2,zero,804644 <_dtoa_r+0xf70>
  803df4:	e701fe04 	addi	fp,fp,2040
  803df8:	003e6706 	br	803798 <_dtoa_r+0xc4>
  803dfc:	b8001115 	stw	zero,68(r23)
  803e00:	000b883a 	mov	r5,zero
  803e04:	b809883a 	mov	r4,r23
  803e08:	0806c140 	call	806c14 <_Balloc>
  803e0c:	1039883a 	mov	fp,r2
  803e10:	1003ed26 	beq	r2,zero,804dc8 <_dtoa_r+0x16f4>
  803e14:	b8801015 	stw	r2,64(r23)
  803e18:	00bfffc4 	movi	r2,-1
  803e1c:	d8800415 	stw	r2,16(sp)
  803e20:	d8800b15 	stw	r2,44(sp)
  803e24:	00800044 	movi	r2,1
  803e28:	d8001e15 	stw	zero,120(sp)
  803e2c:	d8800615 	stw	r2,24(sp)
  803e30:	d8801317 	ldw	r2,76(sp)
  803e34:	10007216 	blt	r2,zero,804000 <_dtoa_r+0x92c>
  803e38:	d9000317 	ldw	r4,12(sp)
  803e3c:	20c003c8 	cmpgei	r3,r4,15
  803e40:	18006f1e 	bne	r3,zero,804000 <_dtoa_r+0x92c>
  803e44:	200690fa 	slli	r3,r4,3
  803e48:	00802074 	movhi	r2,129
  803e4c:	10823e04 	addi	r2,r2,2296
  803e50:	10c5883a 	add	r2,r2,r3
  803e54:	10c00017 	ldw	r3,0(r2)
  803e58:	14800117 	ldw	r18,4(r2)
  803e5c:	d8801e17 	ldw	r2,120(sp)
  803e60:	d8c00115 	stw	r3,4(sp)
  803e64:	1000150e 	bge	r2,zero,803ebc <_dtoa_r+0x7e8>
  803e68:	d8800417 	ldw	r2,16(sp)
  803e6c:	00801316 	blt	zero,r2,803ebc <_dtoa_r+0x7e8>
  803e70:	d8800417 	ldw	r2,16(sp)
  803e74:	1002801e 	bne	r2,zero,804878 <_dtoa_r+0x11a4>
  803e78:	d9000117 	ldw	r4,4(sp)
  803e7c:	000d883a 	mov	r6,zero
  803e80:	01d00534 	movhi	r7,16404
  803e84:	900b883a 	mov	r5,r18
  803e88:	080ca200 	call	80ca20 <__muldf3>
  803e8c:	100d883a 	mov	r6,r2
  803e90:	180f883a 	mov	r7,r3
  803e94:	a009883a 	mov	r4,r20
  803e98:	880b883a 	mov	r5,r17
  803e9c:	080c9300 	call	80c930 <__ledf2>
  803ea0:	002b883a 	mov	r21,zero
  803ea4:	0021883a 	mov	r16,zero
  803ea8:	00820f16 	blt	zero,r2,8046e8 <_dtoa_r+0x1014>
  803eac:	d8801e17 	ldw	r2,120(sp)
  803eb0:	e025883a 	mov	r18,fp
  803eb4:	00a2303a 	nor	r17,zero,r2
  803eb8:	00021006 	br	8046fc <_dtoa_r+0x1028>
  803ebc:	dd400117 	ldw	r21,4(sp)
  803ec0:	900f883a 	mov	r7,r18
  803ec4:	a009883a 	mov	r4,r20
  803ec8:	a80d883a 	mov	r6,r21
  803ecc:	880b883a 	mov	r5,r17
  803ed0:	080be8c0 	call	80be8c <__divdf3>
  803ed4:	180b883a 	mov	r5,r3
  803ed8:	1009883a 	mov	r4,r2
  803edc:	080db500 	call	80db50 <__fixdfsi>
  803ee0:	1009883a 	mov	r4,r2
  803ee4:	1027883a 	mov	r19,r2
  803ee8:	080dbd00 	call	80dbd0 <__floatsidf>
  803eec:	a80d883a 	mov	r6,r21
  803ef0:	900f883a 	mov	r7,r18
  803ef4:	1009883a 	mov	r4,r2
  803ef8:	180b883a 	mov	r5,r3
  803efc:	080ca200 	call	80ca20 <__muldf3>
  803f00:	100d883a 	mov	r6,r2
  803f04:	a009883a 	mov	r4,r20
  803f08:	880b883a 	mov	r5,r17
  803f0c:	180f883a 	mov	r7,r3
  803f10:	080d1c80 	call	80d1c8 <__subdf3>
  803f14:	d9800417 	ldw	r6,16(sp)
  803f18:	1009883a 	mov	r4,r2
  803f1c:	98800c04 	addi	r2,r19,48
  803f20:	e0800005 	stb	r2,0(fp)
  803f24:	30800060 	cmpeqi	r2,r6,1
  803f28:	180b883a 	mov	r5,r3
  803f2c:	e4000044 	addi	r16,fp,1
  803f30:	1002a91e 	bne	r2,zero,8049d8 <_dtoa_r+0x1304>
  803f34:	04400044 	movi	r17,1
  803f38:	3027883a 	mov	r19,r6
  803f3c:	dd800215 	stw	r22,8(sp)
  803f40:	ddc00415 	stw	r23,16(sp)
  803f44:	00001c06 	br	803fb8 <_dtoa_r+0x8e4>
  803f48:	a80d883a 	mov	r6,r21
  803f4c:	900f883a 	mov	r7,r18
  803f50:	b809883a 	mov	r4,r23
  803f54:	a00b883a 	mov	r5,r20
  803f58:	080be8c0 	call	80be8c <__divdf3>
  803f5c:	180b883a 	mov	r5,r3
  803f60:	1009883a 	mov	r4,r2
  803f64:	080db500 	call	80db50 <__fixdfsi>
  803f68:	1009883a 	mov	r4,r2
  803f6c:	102d883a 	mov	r22,r2
  803f70:	080dbd00 	call	80dbd0 <__floatsidf>
  803f74:	a80d883a 	mov	r6,r21
  803f78:	900f883a 	mov	r7,r18
  803f7c:	1009883a 	mov	r4,r2
  803f80:	180b883a 	mov	r5,r3
  803f84:	080ca200 	call	80ca20 <__muldf3>
  803f88:	b809883a 	mov	r4,r23
  803f8c:	a00b883a 	mov	r5,r20
  803f90:	100d883a 	mov	r6,r2
  803f94:	180f883a 	mov	r7,r3
  803f98:	080d1c80 	call	80d1c8 <__subdf3>
  803f9c:	b1000c04 	addi	r4,r22,48
  803fa0:	81000005 	stb	r4,0(r16)
  803fa4:	8c400044 	addi	r17,r17,1
  803fa8:	84000044 	addi	r16,r16,1
  803fac:	1009883a 	mov	r4,r2
  803fb0:	180b883a 	mov	r5,r3
  803fb4:	9c428526 	beq	r19,r17,8049cc <_dtoa_r+0x12f8>
  803fb8:	000d883a 	mov	r6,zero
  803fbc:	01d00934 	movhi	r7,16420
  803fc0:	080ca200 	call	80ca20 <__muldf3>
  803fc4:	000d883a 	mov	r6,zero
  803fc8:	000f883a 	mov	r7,zero
  803fcc:	1009883a 	mov	r4,r2
  803fd0:	180b883a 	mov	r5,r3
  803fd4:	102f883a 	mov	r23,r2
  803fd8:	1829883a 	mov	r20,r3
  803fdc:	080c7c00 	call	80c7c0 <__eqdf2>
  803fe0:	103fd91e 	bne	r2,zero,803f48 <_dtoa_r+0x874>
  803fe4:	d8800317 	ldw	r2,12(sp)
  803fe8:	dd800217 	ldw	r22,8(sp)
  803fec:	ddc00417 	ldw	r23,16(sp)
  803ff0:	10800044 	addi	r2,r2,1
  803ff4:	d8800315 	stw	r2,12(sp)
  803ff8:	8025883a 	mov	r18,r16
  803ffc:	0000a806 	br	8042a0 <_dtoa_r+0xbcc>
  804000:	d8c00617 	ldw	r3,24(sp)
  804004:	1800ec26 	beq	r3,zero,8043b8 <_dtoa_r+0xce4>
  804008:	d8c00117 	ldw	r3,4(sp)
  80400c:	18c00088 	cmpgei	r3,r3,2
  804010:	1801e926 	beq	r3,zero,8047b8 <_dtoa_r+0x10e4>
  804014:	d8800417 	ldw	r2,16(sp)
  804018:	157fffc4 	addi	r21,r2,-1
  80401c:	d8800717 	ldw	r2,28(sp)
  804020:	1541c50e 	bge	r2,r21,804738 <_dtoa_r+0x1064>
  804024:	d8800717 	ldw	r2,28(sp)
  804028:	dd400715 	stw	r21,28(sp)
  80402c:	a885c83a 	sub	r2,r21,r2
  804030:	98a7883a 	add	r19,r19,r2
  804034:	002b883a 	mov	r21,zero
  804038:	d8800417 	ldw	r2,16(sp)
  80403c:	10029516 	blt	r2,zero,804a94 <_dtoa_r+0x13c0>
  804040:	d8c00517 	ldw	r3,20(sp)
  804044:	d9000217 	ldw	r4,8(sp)
  804048:	1825883a 	mov	r18,r3
  80404c:	2089883a 	add	r4,r4,r2
  804050:	10c5883a 	add	r2,r2,r3
  804054:	d9000215 	stw	r4,8(sp)
  804058:	d8800515 	stw	r2,20(sp)
  80405c:	01400044 	movi	r5,1
  804060:	b809883a 	mov	r4,r23
  804064:	08070840 	call	807084 <__i2b>
  804068:	1021883a 	mov	r16,r2
  80406c:	04800b0e 	bge	zero,r18,80409c <_dtoa_r+0x9c8>
  804070:	d8c00217 	ldw	r3,8(sp)
  804074:	00c0090e 	bge	zero,r3,80409c <_dtoa_r+0x9c8>
  804078:	9005883a 	mov	r2,r18
  80407c:	1c81a616 	blt	r3,r18,804718 <_dtoa_r+0x1044>
  804080:	d8c00517 	ldw	r3,20(sp)
  804084:	90a5c83a 	sub	r18,r18,r2
  804088:	1887c83a 	sub	r3,r3,r2
  80408c:	d8c00515 	stw	r3,20(sp)
  804090:	d8c00217 	ldw	r3,8(sp)
  804094:	1885c83a 	sub	r2,r3,r2
  804098:	d8800215 	stw	r2,8(sp)
  80409c:	d8800717 	ldw	r2,28(sp)
  8040a0:	10001526 	beq	r2,zero,8040f8 <_dtoa_r+0xa24>
  8040a4:	d8800617 	ldw	r2,24(sp)
  8040a8:	1001f626 	beq	r2,zero,804884 <_dtoa_r+0x11b0>
  8040ac:	05400f0e 	bge	zero,r21,8040ec <_dtoa_r+0xa18>
  8040b0:	800b883a 	mov	r5,r16
  8040b4:	a80d883a 	mov	r6,r21
  8040b8:	b809883a 	mov	r4,r23
  8040bc:	08073840 	call	807384 <__pow5mult>
  8040c0:	b00d883a 	mov	r6,r22
  8040c4:	100b883a 	mov	r5,r2
  8040c8:	b809883a 	mov	r4,r23
  8040cc:	1021883a 	mov	r16,r2
  8040d0:	08070d80 	call	8070d8 <__multiply>
  8040d4:	b00b883a 	mov	r5,r22
  8040d8:	b809883a 	mov	r4,r23
  8040dc:	d8800915 	stw	r2,36(sp)
  8040e0:	0806cb80 	call	806cb8 <_Bfree>
  8040e4:	d8800917 	ldw	r2,36(sp)
  8040e8:	102d883a 	mov	r22,r2
  8040ec:	d8800717 	ldw	r2,28(sp)
  8040f0:	154dc83a 	sub	r6,r2,r21
  8040f4:	1542621e 	bne	r2,r21,804a80 <_dtoa_r+0x13ac>
  8040f8:	01400044 	movi	r5,1
  8040fc:	b809883a 	mov	r4,r23
  804100:	08070840 	call	807084 <__i2b>
  804104:	102b883a 	mov	r21,r2
  804108:	04c0be16 	blt	zero,r19,804404 <_dtoa_r+0xd30>
  80410c:	d8800117 	ldw	r2,4(sp)
  804110:	10800088 	cmpgei	r2,r2,2
  804114:	10015226 	beq	r2,zero,804660 <_dtoa_r+0xf8c>
  804118:	0023883a 	mov	r17,zero
  80411c:	00800044 	movi	r2,1
  804120:	9800c11e 	bne	r19,zero,804428 <_dtoa_r+0xd54>
  804124:	d9400217 	ldw	r5,8(sp)
  804128:	1145883a 	add	r2,r2,r5
  80412c:	108007cc 	andi	r2,r2,31
  804130:	1000a526 	beq	r2,zero,8043c8 <_dtoa_r+0xcf4>
  804134:	00c00804 	movi	r3,32
  804138:	1887c83a 	sub	r3,r3,r2
  80413c:	19000150 	cmplti	r4,r3,5
  804140:	2003311e 	bne	r4,zero,804e08 <_dtoa_r+0x1734>
  804144:	00c00704 	movi	r3,28
  804148:	1885c83a 	sub	r2,r3,r2
  80414c:	d8c00517 	ldw	r3,20(sp)
  804150:	90a5883a 	add	r18,r18,r2
  804154:	1887883a 	add	r3,r3,r2
  804158:	2885883a 	add	r2,r5,r2
  80415c:	d8c00515 	stw	r3,20(sp)
  804160:	d8800215 	stw	r2,8(sp)
  804164:	d8800517 	ldw	r2,20(sp)
  804168:	0080050e 	bge	zero,r2,804180 <_dtoa_r+0xaac>
  80416c:	b00b883a 	mov	r5,r22
  804170:	100d883a 	mov	r6,r2
  804174:	b809883a 	mov	r4,r23
  804178:	080749c0 	call	80749c <__lshift>
  80417c:	102d883a 	mov	r22,r2
  804180:	d8800217 	ldw	r2,8(sp)
  804184:	0080050e 	bge	zero,r2,80419c <_dtoa_r+0xac8>
  804188:	a80b883a 	mov	r5,r21
  80418c:	100d883a 	mov	r6,r2
  804190:	b809883a 	mov	r4,r23
  804194:	080749c0 	call	80749c <__lshift>
  804198:	102b883a 	mov	r21,r2
  80419c:	d8800817 	ldw	r2,32(sp)
  8041a0:	1001161e 	bne	r2,zero,8045fc <_dtoa_r+0xf28>
  8041a4:	d8800417 	ldw	r2,16(sp)
  8041a8:	0081040e 	bge	zero,r2,8045bc <_dtoa_r+0xee8>
  8041ac:	d8800617 	ldw	r2,24(sp)
  8041b0:	1000b01e 	bne	r2,zero,804474 <_dtoa_r+0xda0>
  8041b4:	d8800317 	ldw	r2,12(sp)
  8041b8:	10800044 	addi	r2,r2,1
  8041bc:	d8800315 	stw	r2,12(sp)
  8041c0:	dc800417 	ldw	r18,16(sp)
  8041c4:	04400044 	movi	r17,1
  8041c8:	00000706 	br	8041e8 <_dtoa_r+0xb14>
  8041cc:	b00b883a 	mov	r5,r22
  8041d0:	000f883a 	mov	r7,zero
  8041d4:	01800284 	movi	r6,10
  8041d8:	b809883a 	mov	r4,r23
  8041dc:	0806cdc0 	call	806cdc <__multadd>
  8041e0:	102d883a 	mov	r22,r2
  8041e4:	8c400044 	addi	r17,r17,1
  8041e8:	a80b883a 	mov	r5,r21
  8041ec:	b009883a 	mov	r4,r22
  8041f0:	08034b40 	call	8034b4 <quorem>
  8041f4:	10c00c04 	addi	r3,r2,48
  8041f8:	e445883a 	add	r2,fp,r17
  8041fc:	10ffffc5 	stb	r3,-1(r2)
  804200:	8cbff216 	blt	r17,r18,8041cc <_dtoa_r+0xaf8>
  804204:	d8800417 	ldw	r2,16(sp)
  804208:	0081510e 	bge	zero,r2,804750 <_dtoa_r+0x107c>
  80420c:	e0a5883a 	add	r18,fp,r2
  804210:	0023883a 	mov	r17,zero
  804214:	b00b883a 	mov	r5,r22
  804218:	01800044 	movi	r6,1
  80421c:	b809883a 	mov	r4,r23
  804220:	d8c00115 	stw	r3,4(sp)
  804224:	080749c0 	call	80749c <__lshift>
  804228:	1009883a 	mov	r4,r2
  80422c:	a80b883a 	mov	r5,r21
  804230:	102d883a 	mov	r22,r2
  804234:	08076240 	call	807624 <__mcmp>
  804238:	913fffc3 	ldbu	r4,-1(r18)
  80423c:	00800416 	blt	zero,r2,804250 <_dtoa_r+0xb7c>
  804240:	00014806 	br	804764 <_dtoa_r+0x1090>
  804244:	e0c15626 	beq	fp,r3,8047a0 <_dtoa_r+0x10cc>
  804248:	193fffc3 	ldbu	r4,-1(r3)
  80424c:	1825883a 	mov	r18,r3
  804250:	20803fcc 	andi	r2,r4,255
  804254:	1080201c 	xori	r2,r2,128
  804258:	10bfe004 	addi	r2,r2,-128
  80425c:	10800e60 	cmpeqi	r2,r2,57
  804260:	90ffffc4 	addi	r3,r18,-1
  804264:	103ff71e 	bne	r2,zero,804244 <_dtoa_r+0xb70>
  804268:	21000044 	addi	r4,r4,1
  80426c:	19000005 	stb	r4,0(r3)
  804270:	a80b883a 	mov	r5,r21
  804274:	b809883a 	mov	r4,r23
  804278:	0806cb80 	call	806cb8 <_Bfree>
  80427c:	80000826 	beq	r16,zero,8042a0 <_dtoa_r+0xbcc>
  804280:	88000426 	beq	r17,zero,804294 <_dtoa_r+0xbc0>
  804284:	8c000326 	beq	r17,r16,804294 <_dtoa_r+0xbc0>
  804288:	880b883a 	mov	r5,r17
  80428c:	b809883a 	mov	r4,r23
  804290:	0806cb80 	call	806cb8 <_Bfree>
  804294:	800b883a 	mov	r5,r16
  804298:	b809883a 	mov	r4,r23
  80429c:	0806cb80 	call	806cb8 <_Bfree>
  8042a0:	b00b883a 	mov	r5,r22
  8042a4:	b809883a 	mov	r4,r23
  8042a8:	0806cb80 	call	806cb8 <_Bfree>
  8042ac:	d8801f17 	ldw	r2,124(sp)
  8042b0:	d8c00317 	ldw	r3,12(sp)
  8042b4:	90000005 	stb	zero,0(r18)
  8042b8:	10c00015 	stw	r3,0(r2)
  8042bc:	d8802117 	ldw	r2,132(sp)
  8042c0:	103d3526 	beq	r2,zero,803798 <_dtoa_r+0xc4>
  8042c4:	14800015 	stw	r18,0(r2)
  8042c8:	003d3306 	br	803798 <_dtoa_r+0xc4>
  8042cc:	e0bfffc4 	addi	r2,fp,-1
  8042d0:	d8000815 	stw	zero,32(sp)
  8042d4:	10002616 	blt	r2,zero,804370 <_dtoa_r+0xc9c>
  8042d8:	d8000515 	stw	zero,20(sp)
  8042dc:	d8800217 	ldw	r2,8(sp)
  8042e0:	d8c00117 	ldw	r3,4(sp)
  8042e4:	dcc00315 	stw	r19,12(sp)
  8042e8:	14c5883a 	add	r2,r2,r19
  8042ec:	d8800215 	stw	r2,8(sp)
  8042f0:	d8000715 	stw	zero,28(sp)
  8042f4:	188002a8 	cmpgeui	r2,r3,10
  8042f8:	103d9d26 	beq	r2,zero,803970 <_dtoa_r+0x29c>
  8042fc:	00800044 	movi	r2,1
  804300:	d8800615 	stw	r2,24(sp)
  804304:	00bfffc4 	movi	r2,-1
  804308:	04000044 	movi	r16,1
  80430c:	d8000115 	stw	zero,4(sp)
  804310:	d8800415 	stw	r2,16(sp)
  804314:	d8001e15 	stw	zero,120(sp)
  804318:	d8800417 	ldw	r2,16(sp)
  80431c:	b8001115 	stw	zero,68(r23)
  804320:	000b883a 	mov	r5,zero
  804324:	d8800b15 	stw	r2,44(sp)
  804328:	003dae06 	br	8039e4 <_dtoa_r+0x310>
  80432c:	188000e0 	cmpeqi	r2,r3,3
  804330:	d8000615 	stw	zero,24(sp)
  804334:	103eb126 	beq	r2,zero,803dfc <_dtoa_r+0x728>
  804338:	d8801e17 	ldw	r2,120(sp)
  80433c:	d8c00317 	ldw	r3,12(sp)
  804340:	10c5883a 	add	r2,r2,r3
  804344:	d8800b15 	stw	r2,44(sp)
  804348:	10800044 	addi	r2,r2,1
  80434c:	d8800415 	stw	r2,16(sp)
  804350:	100d883a 	mov	r6,r2
  804354:	00bd9816 	blt	zero,r2,8039b8 <_dtoa_r+0x2e4>
  804358:	01800044 	movi	r6,1
  80435c:	003d9606 	br	8039b8 <_dtoa_r+0x2e4>
  804360:	00800044 	movi	r2,1
  804364:	d8800815 	stw	r2,32(sp)
  804368:	e0bfffc4 	addi	r2,fp,-1
  80436c:	103d740e 	bge	r2,zero,803940 <_dtoa_r+0x26c>
  804370:	00800044 	movi	r2,1
  804374:	1705c83a 	sub	r2,r2,fp
  804378:	d8800515 	stw	r2,20(sp)
  80437c:	d8000215 	stw	zero,8(sp)
  804380:	003d7006 	br	803944 <_dtoa_r+0x270>
  804384:	9809883a 	mov	r4,r19
  804388:	080dbd00 	call	80dbd0 <__floatsidf>
  80438c:	900d883a 	mov	r6,r18
  804390:	a80f883a 	mov	r7,r21
  804394:	1009883a 	mov	r4,r2
  804398:	180b883a 	mov	r5,r3
  80439c:	080c7c00 	call	80c7c0 <__eqdf2>
  8043a0:	103d5426 	beq	r2,zero,8038f4 <_dtoa_r+0x220>
  8043a4:	9cffffc4 	addi	r19,r19,-1
  8043a8:	003d5206 	br	8038f4 <_dtoa_r+0x220>
  8043ac:	07002074 	movhi	fp,129
  8043b0:	e701f504 	addi	fp,fp,2004
  8043b4:	003cf806 	br	803798 <_dtoa_r+0xc4>
  8043b8:	dd400717 	ldw	r21,28(sp)
  8043bc:	dc800517 	ldw	r18,20(sp)
  8043c0:	0021883a 	mov	r16,zero
  8043c4:	003f2906 	br	80406c <_dtoa_r+0x998>
  8043c8:	00800704 	movi	r2,28
  8043cc:	d8c00517 	ldw	r3,20(sp)
  8043d0:	90a5883a 	add	r18,r18,r2
  8043d4:	1887883a 	add	r3,r3,r2
  8043d8:	d8c00515 	stw	r3,20(sp)
  8043dc:	d8c00217 	ldw	r3,8(sp)
  8043e0:	1885883a 	add	r2,r3,r2
  8043e4:	d8800215 	stw	r2,8(sp)
  8043e8:	003f5e06 	br	804164 <_dtoa_r+0xa90>
  8043ec:	01000804 	movi	r4,32
  8043f0:	2089c83a 	sub	r4,r4,r2
  8043f4:	a108983a 	sll	r4,r20,r4
  8043f8:	003d0a06 	br	803824 <_dtoa_r+0x150>
  8043fc:	04000044 	movi	r16,1
  804400:	003d6006 	br	803984 <_dtoa_r+0x2b0>
  804404:	100b883a 	mov	r5,r2
  804408:	980d883a 	mov	r6,r19
  80440c:	b809883a 	mov	r4,r23
  804410:	08073840 	call	807384 <__pow5mult>
  804414:	d8c00117 	ldw	r3,4(sp)
  804418:	102b883a 	mov	r21,r2
  80441c:	18c00090 	cmplti	r3,r3,2
  804420:	18014b1e 	bne	r3,zero,804950 <_dtoa_r+0x127c>
  804424:	0023883a 	mov	r17,zero
  804428:	a8800417 	ldw	r2,16(r21)
  80442c:	10800104 	addi	r2,r2,4
  804430:	100490ba 	slli	r2,r2,2
  804434:	a885883a 	add	r2,r21,r2
  804438:	11000017 	ldw	r4,0(r2)
  80443c:	0806f700 	call	806f70 <__hi0bits>
  804440:	00c00804 	movi	r3,32
  804444:	1885c83a 	sub	r2,r3,r2
  804448:	003f3606 	br	804124 <_dtoa_r+0xa50>
  80444c:	800b883a 	mov	r5,r16
  804450:	000f883a 	mov	r7,zero
  804454:	01800284 	movi	r6,10
  804458:	b809883a 	mov	r4,r23
  80445c:	0806cdc0 	call	806cdc <__multadd>
  804460:	1021883a 	mov	r16,r2
  804464:	d8800b17 	ldw	r2,44(sp)
  804468:	00824d0e 	bge	zero,r2,804da0 <_dtoa_r+0x16cc>
  80446c:	dcc00315 	stw	r19,12(sp)
  804470:	d8800415 	stw	r2,16(sp)
  804474:	0480aa16 	blt	zero,r18,804720 <_dtoa_r+0x104c>
  804478:	8801701e 	bne	r17,zero,804a3c <_dtoa_r+0x1368>
  80447c:	8027883a 	mov	r19,r16
  804480:	d9000417 	ldw	r4,16(sp)
  804484:	e0bfffc4 	addi	r2,fp,-1
  804488:	a0c0004c 	andi	r3,r20,1
  80448c:	1105883a 	add	r2,r2,r4
  804490:	d8800415 	stw	r2,16(sp)
  804494:	d8800117 	ldw	r2,4(sp)
  804498:	d8c00715 	stw	r3,28(sp)
  80449c:	e029883a 	mov	r20,fp
  8044a0:	1884b03a 	or	r2,r3,r2
  8044a4:	d8800615 	stw	r2,24(sp)
  8044a8:	df000815 	stw	fp,32(sp)
  8044ac:	00002906 	br	804554 <_dtoa_r+0xe80>
  8044b0:	b009883a 	mov	r4,r22
  8044b4:	08076240 	call	807624 <__mcmp>
  8044b8:	900b883a 	mov	r5,r18
  8044bc:	b809883a 	mov	r4,r23
  8044c0:	d8800215 	stw	r2,8(sp)
  8044c4:	0806cb80 	call	806cb8 <_Bfree>
  8044c8:	d8800217 	ldw	r2,8(sp)
  8044cc:	1000021e 	bne	r2,zero,8044d8 <_dtoa_r+0xe04>
  8044d0:	d8c00617 	ldw	r3,24(sp)
  8044d4:	18022326 	beq	r3,zero,804d64 <_dtoa_r+0x1690>
  8044d8:	a4800044 	addi	r18,r20,1
  8044dc:	88012216 	blt	r17,zero,804968 <_dtoa_r+0x1294>
  8044e0:	d8c00117 	ldw	r3,4(sp)
  8044e4:	1c62b03a 	or	r17,r3,r17
  8044e8:	d8c00717 	ldw	r3,28(sp)
  8044ec:	1c62b03a 	or	r17,r3,r17
  8044f0:	88011d26 	beq	r17,zero,804968 <_dtoa_r+0x1294>
  8044f4:	00816b16 	blt	zero,r2,804aa4 <_dtoa_r+0x13d0>
  8044f8:	d8800417 	ldw	r2,16(sp)
  8044fc:	a7000005 	stb	fp,0(r20)
  804500:	15017126 	beq	r2,r20,804ac8 <_dtoa_r+0x13f4>
  804504:	b00b883a 	mov	r5,r22
  804508:	000f883a 	mov	r7,zero
  80450c:	01800284 	movi	r6,10
  804510:	b809883a 	mov	r4,r23
  804514:	0806cdc0 	call	806cdc <__multadd>
  804518:	102d883a 	mov	r22,r2
  80451c:	800b883a 	mov	r5,r16
  804520:	000f883a 	mov	r7,zero
  804524:	01800284 	movi	r6,10
  804528:	b809883a 	mov	r4,r23
  80452c:	84c01f26 	beq	r16,r19,8045ac <_dtoa_r+0xed8>
  804530:	0806cdc0 	call	806cdc <__multadd>
  804534:	980b883a 	mov	r5,r19
  804538:	000f883a 	mov	r7,zero
  80453c:	01800284 	movi	r6,10
  804540:	b809883a 	mov	r4,r23
  804544:	1021883a 	mov	r16,r2
  804548:	0806cdc0 	call	806cdc <__multadd>
  80454c:	1027883a 	mov	r19,r2
  804550:	9029883a 	mov	r20,r18
  804554:	a80b883a 	mov	r5,r21
  804558:	b009883a 	mov	r4,r22
  80455c:	08034b40 	call	8034b4 <quorem>
  804560:	800b883a 	mov	r5,r16
  804564:	b009883a 	mov	r4,r22
  804568:	1039883a 	mov	fp,r2
  80456c:	d8800515 	stw	r2,20(sp)
  804570:	08076240 	call	807624 <__mcmp>
  804574:	a80b883a 	mov	r5,r21
  804578:	980d883a 	mov	r6,r19
  80457c:	b809883a 	mov	r4,r23
  804580:	1023883a 	mov	r17,r2
  804584:	080767c0 	call	80767c <__mdiff>
  804588:	1025883a 	mov	r18,r2
  80458c:	10800317 	ldw	r2,12(r2)
  804590:	e7000c04 	addi	fp,fp,48
  804594:	900b883a 	mov	r5,r18
  804598:	103fc526 	beq	r2,zero,8044b0 <_dtoa_r+0xddc>
  80459c:	b809883a 	mov	r4,r23
  8045a0:	0806cb80 	call	806cb8 <_Bfree>
  8045a4:	00800044 	movi	r2,1
  8045a8:	003fcb06 	br	8044d8 <_dtoa_r+0xe04>
  8045ac:	0806cdc0 	call	806cdc <__multadd>
  8045b0:	1021883a 	mov	r16,r2
  8045b4:	1027883a 	mov	r19,r2
  8045b8:	003fe506 	br	804550 <_dtoa_r+0xe7c>
  8045bc:	d8800117 	ldw	r2,4(sp)
  8045c0:	108000d0 	cmplti	r2,r2,3
  8045c4:	10003c26 	beq	r2,zero,8046b8 <_dtoa_r+0xfe4>
  8045c8:	d8800617 	ldw	r2,24(sp)
  8045cc:	103fa91e 	bne	r2,zero,804474 <_dtoa_r+0xda0>
  8045d0:	a80b883a 	mov	r5,r21
  8045d4:	b009883a 	mov	r4,r22
  8045d8:	08034b40 	call	8034b4 <quorem>
  8045dc:	10c00c04 	addi	r3,r2,48
  8045e0:	d8800317 	ldw	r2,12(sp)
  8045e4:	e4800044 	addi	r18,fp,1
  8045e8:	e0c00005 	stb	r3,0(fp)
  8045ec:	10800044 	addi	r2,r2,1
  8045f0:	d8800315 	stw	r2,12(sp)
  8045f4:	0023883a 	mov	r17,zero
  8045f8:	003f0606 	br	804214 <_dtoa_r+0xb40>
  8045fc:	a80b883a 	mov	r5,r21
  804600:	b009883a 	mov	r4,r22
  804604:	08076240 	call	807624 <__mcmp>
  804608:	103ee60e 	bge	r2,zero,8041a4 <_dtoa_r+0xad0>
  80460c:	b00b883a 	mov	r5,r22
  804610:	000f883a 	mov	r7,zero
  804614:	01800284 	movi	r6,10
  804618:	b809883a 	mov	r4,r23
  80461c:	0806cdc0 	call	806cdc <__multadd>
  804620:	d8c00317 	ldw	r3,12(sp)
  804624:	102d883a 	mov	r22,r2
  804628:	d8800617 	ldw	r2,24(sp)
  80462c:	1cffffc4 	addi	r19,r3,-1
  804630:	103f861e 	bne	r2,zero,80444c <_dtoa_r+0xd78>
  804634:	d8800b17 	ldw	r2,44(sp)
  804638:	0081d40e 	bge	zero,r2,804d8c <_dtoa_r+0x16b8>
  80463c:	d8800415 	stw	r2,16(sp)
  804640:	003edf06 	br	8041c0 <_dtoa_r+0xaec>
  804644:	00802074 	movhi	r2,129
  804648:	e701fe04 	addi	fp,fp,2040
  80464c:	1081fec4 	addi	r2,r2,2043
  804650:	003dd906 	br	803db8 <_dtoa_r+0x6e4>
  804654:	00800044 	movi	r2,1
  804658:	d8800615 	stw	r2,24(sp)
  80465c:	003f3606 	br	804338 <_dtoa_r+0xc64>
  804660:	a03ead1e 	bne	r20,zero,804118 <_dtoa_r+0xa44>
  804664:	00800434 	movhi	r2,16
  804668:	10bfffc4 	addi	r2,r2,-1
  80466c:	8884703a 	and	r2,r17,r2
  804670:	103ea91e 	bne	r2,zero,804118 <_dtoa_r+0xa44>
  804674:	8c5ffc2c 	andhi	r17,r17,32752
  804678:	883ea726 	beq	r17,zero,804118 <_dtoa_r+0xa44>
  80467c:	d8800517 	ldw	r2,20(sp)
  804680:	04400044 	movi	r17,1
  804684:	10800044 	addi	r2,r2,1
  804688:	d8800515 	stw	r2,20(sp)
  80468c:	d8800217 	ldw	r2,8(sp)
  804690:	10800044 	addi	r2,r2,1
  804694:	d8800215 	stw	r2,8(sp)
  804698:	003ea006 	br	80411c <_dtoa_r+0xa48>
  80469c:	00800044 	movi	r2,1
  8046a0:	d8800415 	stw	r2,16(sp)
  8046a4:	d8801e15 	stw	r2,120(sp)
  8046a8:	003f1b06 	br	804318 <_dtoa_r+0xc44>
  8046ac:	d8800b17 	ldw	r2,44(sp)
  8046b0:	dcc00315 	stw	r19,12(sp)
  8046b4:	d8800415 	stw	r2,16(sp)
  8046b8:	d8800417 	ldw	r2,16(sp)
  8046bc:	103dfb1e 	bne	r2,zero,803eac <_dtoa_r+0x7d8>
  8046c0:	a80b883a 	mov	r5,r21
  8046c4:	b809883a 	mov	r4,r23
  8046c8:	000f883a 	mov	r7,zero
  8046cc:	01800144 	movi	r6,5
  8046d0:	0806cdc0 	call	806cdc <__multadd>
  8046d4:	100b883a 	mov	r5,r2
  8046d8:	b009883a 	mov	r4,r22
  8046dc:	102b883a 	mov	r21,r2
  8046e0:	08076240 	call	807624 <__mcmp>
  8046e4:	00bdf10e 	bge	zero,r2,803eac <_dtoa_r+0x7d8>
  8046e8:	00800c44 	movi	r2,49
  8046ec:	e0800005 	stb	r2,0(fp)
  8046f0:	d8800317 	ldw	r2,12(sp)
  8046f4:	e4800044 	addi	r18,fp,1
  8046f8:	14400044 	addi	r17,r2,1
  8046fc:	a80b883a 	mov	r5,r21
  804700:	b809883a 	mov	r4,r23
  804704:	0806cb80 	call	806cb8 <_Bfree>
  804708:	88800044 	addi	r2,r17,1
  80470c:	d8800315 	stw	r2,12(sp)
  804710:	803ee01e 	bne	r16,zero,804294 <_dtoa_r+0xbc0>
  804714:	003ee206 	br	8042a0 <_dtoa_r+0xbcc>
  804718:	1805883a 	mov	r2,r3
  80471c:	003e5806 	br	804080 <_dtoa_r+0x9ac>
  804720:	800b883a 	mov	r5,r16
  804724:	900d883a 	mov	r6,r18
  804728:	b809883a 	mov	r4,r23
  80472c:	080749c0 	call	80749c <__lshift>
  804730:	1021883a 	mov	r16,r2
  804734:	003f5006 	br	804478 <_dtoa_r+0xda4>
  804738:	156bc83a 	sub	r21,r2,r21
  80473c:	003e3e06 	br	804038 <_dtoa_r+0x964>
  804740:	dd000a15 	stw	r20,40(sp)
  804744:	dc400c15 	stw	r17,48(sp)
  804748:	04000084 	movi	r16,2
  80474c:	003cc906 	br	803a74 <_dtoa_r+0x3a0>
  804750:	00800044 	movi	r2,1
  804754:	003ead06 	br	80420c <_dtoa_r+0xb38>
  804758:	00800044 	movi	r2,1
  80475c:	d8800615 	stw	r2,24(sp)
  804760:	003c9006 	br	8039a4 <_dtoa_r+0x2d0>
  804764:	1000031e 	bne	r2,zero,804774 <_dtoa_r+0x10a0>
  804768:	d8c00117 	ldw	r3,4(sp)
  80476c:	18c0004c 	andi	r3,r3,1
  804770:	183eb71e 	bne	r3,zero,804250 <_dtoa_r+0xb7c>
  804774:	2005883a 	mov	r2,r4
  804778:	00000206 	br	804784 <_dtoa_r+0x10b0>
  80477c:	90bfff83 	ldbu	r2,-2(r18)
  804780:	1825883a 	mov	r18,r3
  804784:	10803fcc 	andi	r2,r2,255
  804788:	1080201c 	xori	r2,r2,128
  80478c:	10bfe004 	addi	r2,r2,-128
  804790:	10800c18 	cmpnei	r2,r2,48
  804794:	90ffffc4 	addi	r3,r18,-1
  804798:	103ff826 	beq	r2,zero,80477c <_dtoa_r+0x10a8>
  80479c:	003eb406 	br	804270 <_dtoa_r+0xb9c>
  8047a0:	00800c44 	movi	r2,49
  8047a4:	e0800005 	stb	r2,0(fp)
  8047a8:	d8800317 	ldw	r2,12(sp)
  8047ac:	10800044 	addi	r2,r2,1
  8047b0:	d8800315 	stw	r2,12(sp)
  8047b4:	003eae06 	br	804270 <_dtoa_r+0xb9c>
  8047b8:	d8c00917 	ldw	r3,36(sp)
  8047bc:	18011826 	beq	r3,zero,804c20 <_dtoa_r+0x154c>
  8047c0:	d8c00517 	ldw	r3,20(sp)
  8047c4:	d9000217 	ldw	r4,8(sp)
  8047c8:	10810cc4 	addi	r2,r2,1075
  8047cc:	dd400717 	ldw	r21,28(sp)
  8047d0:	2089883a 	add	r4,r4,r2
  8047d4:	1885883a 	add	r2,r3,r2
  8047d8:	1825883a 	mov	r18,r3
  8047dc:	d9000215 	stw	r4,8(sp)
  8047e0:	d8800515 	stw	r2,20(sp)
  8047e4:	003e1d06 	br	80405c <_dtoa_r+0x988>
  8047e8:	8009883a 	mov	r4,r16
  8047ec:	080dbd00 	call	80dbd0 <__floatsidf>
  8047f0:	d9c00a17 	ldw	r7,40(sp)
  8047f4:	900d883a 	mov	r6,r18
  8047f8:	1009883a 	mov	r4,r2
  8047fc:	180b883a 	mov	r5,r3
  804800:	080ca200 	call	80ca20 <__muldf3>
  804804:	000d883a 	mov	r6,zero
  804808:	01d00734 	movhi	r7,16412
  80480c:	1009883a 	mov	r4,r2
  804810:	180b883a 	mov	r5,r3
  804814:	080b5140 	call	80b514 <__adddf3>
  804818:	d8800c15 	stw	r2,48(sp)
  80481c:	00bf3034 	movhi	r2,64704
  804820:	1885883a 	add	r2,r3,r2
  804824:	d8800d15 	stw	r2,52(sp)
  804828:	d9400a17 	ldw	r5,40(sp)
  80482c:	9009883a 	mov	r4,r18
  804830:	000d883a 	mov	r6,zero
  804834:	01d00534 	movhi	r7,16404
  804838:	080d1c80 	call	80d1c8 <__subdf3>
  80483c:	dd400d17 	ldw	r21,52(sp)
  804840:	d9800c17 	ldw	r6,48(sp)
  804844:	1009883a 	mov	r4,r2
  804848:	a80f883a 	mov	r7,r21
  80484c:	180b883a 	mov	r5,r3
  804850:	1025883a 	mov	r18,r2
  804854:	1821883a 	mov	r16,r3
  804858:	080c8400 	call	80c840 <__gedf2>
  80485c:	00812d16 	blt	zero,r2,804d14 <_dtoa_r+0x1640>
  804860:	d9800c17 	ldw	r6,48(sp)
  804864:	a9e0003c 	xorhi	r7,r21,32768
  804868:	9009883a 	mov	r4,r18
  80486c:	800b883a 	mov	r5,r16
  804870:	080c9300 	call	80c930 <__ledf2>
  804874:	103d6e0e 	bge	r2,zero,803e30 <_dtoa_r+0x75c>
  804878:	002b883a 	mov	r21,zero
  80487c:	0021883a 	mov	r16,zero
  804880:	003d8a06 	br	803eac <_dtoa_r+0x7d8>
  804884:	d9800717 	ldw	r6,28(sp)
  804888:	b00b883a 	mov	r5,r22
  80488c:	b809883a 	mov	r4,r23
  804890:	08073840 	call	807384 <__pow5mult>
  804894:	102d883a 	mov	r22,r2
  804898:	003e1706 	br	8040f8 <_dtoa_r+0xa24>
  80489c:	d8800317 	ldw	r2,12(sp)
  8048a0:	10010d26 	beq	r2,zero,804cd8 <_dtoa_r+0x1604>
  8048a4:	00abc83a 	sub	r21,zero,r2
  8048a8:	a88003cc 	andi	r2,r21,15
  8048ac:	100690fa 	slli	r3,r2,3
  8048b0:	00802074 	movhi	r2,129
  8048b4:	10823e04 	addi	r2,r2,2296
  8048b8:	10c5883a 	add	r2,r2,r3
  8048bc:	11800017 	ldw	r6,0(r2)
  8048c0:	11c00117 	ldw	r7,4(r2)
  8048c4:	a009883a 	mov	r4,r20
  8048c8:	880b883a 	mov	r5,r17
  8048cc:	a82bd13a 	srai	r21,r21,4
  8048d0:	080ca200 	call	80ca20 <__muldf3>
  8048d4:	d8c00a15 	stw	r3,40(sp)
  8048d8:	1025883a 	mov	r18,r2
  8048dc:	a8013826 	beq	r21,zero,804dc0 <_dtoa_r+0x16ec>
  8048e0:	02002074 	movhi	r8,129
  8048e4:	04000084 	movi	r16,2
  8048e8:	42023404 	addi	r8,r8,2256
  8048ec:	180b883a 	mov	r5,r3
  8048f0:	dc400c15 	stw	r17,48(sp)
  8048f4:	1009883a 	mov	r4,r2
  8048f8:	8023883a 	mov	r17,r16
  8048fc:	0007883a 	mov	r3,zero
  804900:	4021883a 	mov	r16,r8
  804904:	a980004c 	andi	r6,r21,1
  804908:	30000726 	beq	r6,zero,804928 <_dtoa_r+0x1254>
  80490c:	81800017 	ldw	r6,0(r16)
  804910:	81c00117 	ldw	r7,4(r16)
  804914:	8c400044 	addi	r17,r17,1
  804918:	080ca200 	call	80ca20 <__muldf3>
  80491c:	180b883a 	mov	r5,r3
  804920:	1009883a 	mov	r4,r2
  804924:	00c00044 	movi	r3,1
  804928:	a82bd07a 	srai	r21,r21,1
  80492c:	84000204 	addi	r16,r16,8
  804930:	a83ff41e 	bne	r21,zero,804904 <_dtoa_r+0x1230>
  804934:	18c03fcc 	andi	r3,r3,255
  804938:	8821883a 	mov	r16,r17
  80493c:	dc400c17 	ldw	r17,48(sp)
  804940:	183c6526 	beq	r3,zero,803ad8 <_dtoa_r+0x404>
  804944:	2025883a 	mov	r18,r4
  804948:	d9400a15 	stw	r5,40(sp)
  80494c:	003c6206 	br	803ad8 <_dtoa_r+0x404>
  804950:	a03eb41e 	bne	r20,zero,804424 <_dtoa_r+0xd50>
  804954:	00800434 	movhi	r2,16
  804958:	10bfffc4 	addi	r2,r2,-1
  80495c:	8884703a 	and	r2,r17,r2
  804960:	103f4426 	beq	r2,zero,804674 <_dtoa_r+0xfa0>
  804964:	003eaf06 	br	804424 <_dtoa_r+0xd50>
  804968:	d9000317 	ldw	r4,12(sp)
  80496c:	e007883a 	mov	r3,fp
  804970:	df000817 	ldw	fp,32(sp)
  804974:	21000044 	addi	r4,r4,1
  804978:	d9000315 	stw	r4,12(sp)
  80497c:	00800f0e 	bge	zero,r2,8049bc <_dtoa_r+0x12e8>
  804980:	b00b883a 	mov	r5,r22
  804984:	01800044 	movi	r6,1
  804988:	b809883a 	mov	r4,r23
  80498c:	d8c00115 	stw	r3,4(sp)
  804990:	080749c0 	call	80749c <__lshift>
  804994:	a80b883a 	mov	r5,r21
  804998:	1009883a 	mov	r4,r2
  80499c:	102d883a 	mov	r22,r2
  8049a0:	08076240 	call	807624 <__mcmp>
  8049a4:	d8c00117 	ldw	r3,4(sp)
  8049a8:	0080e40e 	bge	zero,r2,804d3c <_dtoa_r+0x1668>
  8049ac:	18c00e60 	cmpeqi	r3,r3,57
  8049b0:	1800d21e 	bne	r3,zero,804cfc <_dtoa_r+0x1628>
  8049b4:	d8800517 	ldw	r2,20(sp)
  8049b8:	10c00c44 	addi	r3,r2,49
  8049bc:	8023883a 	mov	r17,r16
  8049c0:	a0c00005 	stb	r3,0(r20)
  8049c4:	9821883a 	mov	r16,r19
  8049c8:	003e2906 	br	804270 <_dtoa_r+0xb9c>
  8049cc:	b027883a 	mov	r19,r22
  8049d0:	ddc00417 	ldw	r23,16(sp)
  8049d4:	dd800217 	ldw	r22,8(sp)
  8049d8:	200d883a 	mov	r6,r4
  8049dc:	280f883a 	mov	r7,r5
  8049e0:	080b5140 	call	80b514 <__adddf3>
  8049e4:	dd400117 	ldw	r21,4(sp)
  8049e8:	180b883a 	mov	r5,r3
  8049ec:	900f883a 	mov	r7,r18
  8049f0:	a80d883a 	mov	r6,r21
  8049f4:	1009883a 	mov	r4,r2
  8049f8:	1823883a 	mov	r17,r3
  8049fc:	1029883a 	mov	r20,r2
  804a00:	080c8400 	call	80c840 <__gedf2>
  804a04:	d8c00317 	ldw	r3,12(sp)
  804a08:	18c00044 	addi	r3,r3,1
  804a0c:	d8c00315 	stw	r3,12(sp)
  804a10:	00bcc716 	blt	zero,r2,803d30 <_dtoa_r+0x65c>
  804a14:	a80d883a 	mov	r6,r21
  804a18:	900f883a 	mov	r7,r18
  804a1c:	a009883a 	mov	r4,r20
  804a20:	880b883a 	mov	r5,r17
  804a24:	080c7c00 	call	80c7c0 <__eqdf2>
  804a28:	1000021e 	bne	r2,zero,804a34 <_dtoa_r+0x1360>
  804a2c:	9cc0004c 	andi	r19,r19,1
  804a30:	983cbf1e 	bne	r19,zero,803d30 <_dtoa_r+0x65c>
  804a34:	8025883a 	mov	r18,r16
  804a38:	003e1906 	br	8042a0 <_dtoa_r+0xbcc>
  804a3c:	81400117 	ldw	r5,4(r16)
  804a40:	b809883a 	mov	r4,r23
  804a44:	0806c140 	call	806c14 <_Balloc>
  804a48:	1023883a 	mov	r17,r2
  804a4c:	1000e526 	beq	r2,zero,804de4 <_dtoa_r+0x1710>
  804a50:	81800417 	ldw	r6,16(r16)
  804a54:	81400304 	addi	r5,r16,12
  804a58:	11000304 	addi	r4,r2,12
  804a5c:	31800084 	addi	r6,r6,2
  804a60:	300c90ba 	slli	r6,r6,2
  804a64:	08068f80 	call	8068f8 <memcpy>
  804a68:	01800044 	movi	r6,1
  804a6c:	880b883a 	mov	r5,r17
  804a70:	b809883a 	mov	r4,r23
  804a74:	080749c0 	call	80749c <__lshift>
  804a78:	1027883a 	mov	r19,r2
  804a7c:	003e8006 	br	804480 <_dtoa_r+0xdac>
  804a80:	b00b883a 	mov	r5,r22
  804a84:	b809883a 	mov	r4,r23
  804a88:	08073840 	call	807384 <__pow5mult>
  804a8c:	102d883a 	mov	r22,r2
  804a90:	003d9906 	br	8040f8 <_dtoa_r+0xa24>
  804a94:	d8800517 	ldw	r2,20(sp)
  804a98:	d8c00417 	ldw	r3,16(sp)
  804a9c:	10e5c83a 	sub	r18,r2,r3
  804aa0:	003d6e06 	br	80405c <_dtoa_r+0x988>
  804aa4:	d9000317 	ldw	r4,12(sp)
  804aa8:	e007883a 	mov	r3,fp
  804aac:	18800e58 	cmpnei	r2,r3,57
  804ab0:	21000044 	addi	r4,r4,1
  804ab4:	d9000315 	stw	r4,12(sp)
  804ab8:	df000817 	ldw	fp,32(sp)
  804abc:	10008f26 	beq	r2,zero,804cfc <_dtoa_r+0x1628>
  804ac0:	18c00044 	addi	r3,r3,1
  804ac4:	003fbd06 	br	8049bc <_dtoa_r+0x12e8>
  804ac8:	d8800317 	ldw	r2,12(sp)
  804acc:	e007883a 	mov	r3,fp
  804ad0:	8023883a 	mov	r17,r16
  804ad4:	10800044 	addi	r2,r2,1
  804ad8:	df000817 	ldw	fp,32(sp)
  804adc:	d8800315 	stw	r2,12(sp)
  804ae0:	9821883a 	mov	r16,r19
  804ae4:	003dcb06 	br	804214 <_dtoa_r+0xb40>
  804ae8:	d9000c17 	ldw	r4,48(sp)
  804aec:	d9400d17 	ldw	r5,52(sp)
  804af0:	600d883a 	mov	r6,r12
  804af4:	680f883a 	mov	r7,r13
  804af8:	dac00a15 	stw	r11,40(sp)
  804afc:	080ca200 	call	80ca20 <__muldf3>
  804b00:	dac00a17 	ldw	r11,40(sp)
  804b04:	d9400e17 	ldw	r5,56(sp)
  804b08:	d8800a15 	stw	r2,40(sp)
  804b0c:	e2c00005 	stb	r11,0(fp)
  804b10:	29000058 	cmpnei	r4,r5,1
  804b14:	d8c00c15 	stw	r3,48(sp)
  804b18:	e145883a 	add	r2,fp,r5
  804b1c:	20002126 	beq	r4,zero,804ba4 <_dtoa_r+0x14d0>
  804b20:	dc400e15 	stw	r17,56(sp)
  804b24:	dcc00d15 	stw	r19,52(sp)
  804b28:	8023883a 	mov	r17,r16
  804b2c:	a809883a 	mov	r4,r21
  804b30:	900b883a 	mov	r5,r18
  804b34:	1021883a 	mov	r16,r2
  804b38:	000d883a 	mov	r6,zero
  804b3c:	01d00934 	movhi	r7,16420
  804b40:	080ca200 	call	80ca20 <__muldf3>
  804b44:	180b883a 	mov	r5,r3
  804b48:	1009883a 	mov	r4,r2
  804b4c:	182b883a 	mov	r21,r3
  804b50:	1027883a 	mov	r19,r2
  804b54:	080db500 	call	80db50 <__fixdfsi>
  804b58:	1009883a 	mov	r4,r2
  804b5c:	1025883a 	mov	r18,r2
  804b60:	080dbd00 	call	80dbd0 <__floatsidf>
  804b64:	9809883a 	mov	r4,r19
  804b68:	a80b883a 	mov	r5,r21
  804b6c:	100d883a 	mov	r6,r2
  804b70:	180f883a 	mov	r7,r3
  804b74:	8c400044 	addi	r17,r17,1
  804b78:	94800c04 	addi	r18,r18,48
  804b7c:	080d1c80 	call	80d1c8 <__subdf3>
  804b80:	8cbfffc5 	stb	r18,-1(r17)
  804b84:	1009883a 	mov	r4,r2
  804b88:	180b883a 	mov	r5,r3
  804b8c:	847fea1e 	bne	r16,r17,804b38 <_dtoa_r+0x1464>
  804b90:	8821883a 	mov	r16,r17
  804b94:	dcc00d17 	ldw	r19,52(sp)
  804b98:	dc400e17 	ldw	r17,56(sp)
  804b9c:	102b883a 	mov	r21,r2
  804ba0:	1825883a 	mov	r18,r3
  804ba4:	d9000a17 	ldw	r4,40(sp)
  804ba8:	d9400c17 	ldw	r5,48(sp)
  804bac:	000d883a 	mov	r6,zero
  804bb0:	01cff834 	movhi	r7,16352
  804bb4:	080b5140 	call	80b514 <__adddf3>
  804bb8:	a80d883a 	mov	r6,r21
  804bbc:	900f883a 	mov	r7,r18
  804bc0:	1009883a 	mov	r4,r2
  804bc4:	180b883a 	mov	r5,r3
  804bc8:	080c9300 	call	80c930 <__ledf2>
  804bcc:	103c5316 	blt	r2,zero,803d1c <_dtoa_r+0x648>
  804bd0:	d9800a17 	ldw	r6,40(sp)
  804bd4:	d9c00c17 	ldw	r7,48(sp)
  804bd8:	0009883a 	mov	r4,zero
  804bdc:	014ff834 	movhi	r5,16352
  804be0:	080d1c80 	call	80d1c8 <__subdf3>
  804be4:	a80d883a 	mov	r6,r21
  804be8:	900f883a 	mov	r7,r18
  804bec:	1009883a 	mov	r4,r2
  804bf0:	180b883a 	mov	r5,r3
  804bf4:	080c8400 	call	80c840 <__gedf2>
  804bf8:	00bc8d0e 	bge	zero,r2,803e30 <_dtoa_r+0x75c>
  804bfc:	80bfffc7 	ldb	r2,-1(r16)
  804c00:	8025883a 	mov	r18,r16
  804c04:	843fffc4 	addi	r16,r16,-1
  804c08:	10800c20 	cmpeqi	r2,r2,48
  804c0c:	103ffb1e 	bne	r2,zero,804bfc <_dtoa_r+0x1528>
  804c10:	d8801117 	ldw	r2,68(sp)
  804c14:	10800044 	addi	r2,r2,1
  804c18:	d8800315 	stw	r2,12(sp)
  804c1c:	003da006 	br	8042a0 <_dtoa_r+0xbcc>
  804c20:	d8c01217 	ldw	r3,72(sp)
  804c24:	00800d84 	movi	r2,54
  804c28:	d9000517 	ldw	r4,20(sp)
  804c2c:	10c5c83a 	sub	r2,r2,r3
  804c30:	d8c00217 	ldw	r3,8(sp)
  804c34:	dd400717 	ldw	r21,28(sp)
  804c38:	2025883a 	mov	r18,r4
  804c3c:	1887883a 	add	r3,r3,r2
  804c40:	2085883a 	add	r2,r4,r2
  804c44:	d8c00215 	stw	r3,8(sp)
  804c48:	d8800515 	stw	r2,20(sp)
  804c4c:	003d0306 	br	80405c <_dtoa_r+0x988>
  804c50:	d8800417 	ldw	r2,16(sp)
  804c54:	103ee426 	beq	r2,zero,8047e8 <_dtoa_r+0x1114>
  804c58:	d8800b17 	ldw	r2,44(sp)
  804c5c:	00bc740e 	bge	zero,r2,803e30 <_dtoa_r+0x75c>
  804c60:	a80b883a 	mov	r5,r21
  804c64:	9009883a 	mov	r4,r18
  804c68:	000d883a 	mov	r6,zero
  804c6c:	01d00934 	movhi	r7,16420
  804c70:	080ca200 	call	80ca20 <__muldf3>
  804c74:	81000044 	addi	r4,r16,1
  804c78:	1025883a 	mov	r18,r2
  804c7c:	182b883a 	mov	r21,r3
  804c80:	d8c00a15 	stw	r3,40(sp)
  804c84:	080dbd00 	call	80dbd0 <__floatsidf>
  804c88:	900d883a 	mov	r6,r18
  804c8c:	a80f883a 	mov	r7,r21
  804c90:	1009883a 	mov	r4,r2
  804c94:	180b883a 	mov	r5,r3
  804c98:	080ca200 	call	80ca20 <__muldf3>
  804c9c:	1009883a 	mov	r4,r2
  804ca0:	000d883a 	mov	r6,zero
  804ca4:	01d00734 	movhi	r7,16412
  804ca8:	180b883a 	mov	r5,r3
  804cac:	080b5140 	call	80b514 <__adddf3>
  804cb0:	d9000317 	ldw	r4,12(sp)
  804cb4:	d8800c15 	stw	r2,48(sp)
  804cb8:	00bf3034 	movhi	r2,64704
  804cbc:	1887883a 	add	r3,r3,r2
  804cc0:	d8800b17 	ldw	r2,44(sp)
  804cc4:	213fffc4 	addi	r4,r4,-1
  804cc8:	d9001115 	stw	r4,68(sp)
  804ccc:	d8c00d15 	stw	r3,52(sp)
  804cd0:	d8800e15 	stw	r2,56(sp)
  804cd4:	003b9f06 	br	803b54 <_dtoa_r+0x480>
  804cd8:	a025883a 	mov	r18,r20
  804cdc:	dc400a15 	stw	r17,40(sp)
  804ce0:	04000084 	movi	r16,2
  804ce4:	003b7c06 	br	803ad8 <_dtoa_r+0x404>
  804ce8:	d8800317 	ldw	r2,12(sp)
  804cec:	00c00c44 	movi	r3,49
  804cf0:	10800044 	addi	r2,r2,1
  804cf4:	d8800315 	stw	r2,12(sp)
  804cf8:	003c1606 	br	803d54 <_dtoa_r+0x680>
  804cfc:	00800e44 	movi	r2,57
  804d00:	8023883a 	mov	r17,r16
  804d04:	a0800005 	stb	r2,0(r20)
  804d08:	9821883a 	mov	r16,r19
  804d0c:	01000e44 	movi	r4,57
  804d10:	003d4f06 	br	804250 <_dtoa_r+0xb7c>
  804d14:	002b883a 	mov	r21,zero
  804d18:	0021883a 	mov	r16,zero
  804d1c:	003e7206 	br	8046e8 <_dtoa_r+0x1014>
  804d20:	dd800d17 	ldw	r22,52(sp)
  804d24:	ddc00e17 	ldw	r23,56(sp)
  804d28:	d8801117 	ldw	r2,68(sp)
  804d2c:	8025883a 	mov	r18,r16
  804d30:	10800044 	addi	r2,r2,1
  804d34:	d8800315 	stw	r2,12(sp)
  804d38:	003d5906 	br	8042a0 <_dtoa_r+0xbcc>
  804d3c:	103f1f1e 	bne	r2,zero,8049bc <_dtoa_r+0x12e8>
  804d40:	1880004c 	andi	r2,r3,1
  804d44:	103f191e 	bne	r2,zero,8049ac <_dtoa_r+0x12d8>
  804d48:	003f1c06 	br	8049bc <_dtoa_r+0x12e8>
  804d4c:	dcc00f17 	ldw	r19,60(sp)
  804d50:	dd800d17 	ldw	r22,52(sp)
  804d54:	ddc00e17 	ldw	r23,56(sp)
  804d58:	dc400c17 	ldw	r17,48(sp)
  804d5c:	dd000a17 	ldw	r20,40(sp)
  804d60:	003c3306 	br	803e30 <_dtoa_r+0x75c>
  804d64:	d9000317 	ldw	r4,12(sp)
  804d68:	e007883a 	mov	r3,fp
  804d6c:	18800e60 	cmpeqi	r2,r3,57
  804d70:	21000044 	addi	r4,r4,1
  804d74:	d9000315 	stw	r4,12(sp)
  804d78:	df000817 	ldw	fp,32(sp)
  804d7c:	a4800044 	addi	r18,r20,1
  804d80:	103fde1e 	bne	r2,zero,804cfc <_dtoa_r+0x1628>
  804d84:	047f0b16 	blt	zero,r17,8049b4 <_dtoa_r+0x12e0>
  804d88:	003f0c06 	br	8049bc <_dtoa_r+0x12e8>
  804d8c:	d8800117 	ldw	r2,4(sp)
  804d90:	108000c8 	cmpgei	r2,r2,3
  804d94:	103e451e 	bne	r2,zero,8046ac <_dtoa_r+0xfd8>
  804d98:	dcc00315 	stw	r19,12(sp)
  804d9c:	003e0c06 	br	8045d0 <_dtoa_r+0xefc>
  804da0:	d8800117 	ldw	r2,4(sp)
  804da4:	108000c8 	cmpgei	r2,r2,3
  804da8:	103e401e 	bne	r2,zero,8046ac <_dtoa_r+0xfd8>
  804dac:	d8800b17 	ldw	r2,44(sp)
  804db0:	dcc00315 	stw	r19,12(sp)
  804db4:	d8800415 	stw	r2,16(sp)
  804db8:	04bdaf0e 	bge	zero,r18,804478 <_dtoa_r+0xda4>
  804dbc:	003e5806 	br	804720 <_dtoa_r+0x104c>
  804dc0:	04000084 	movi	r16,2
  804dc4:	003b4406 	br	803ad8 <_dtoa_r+0x404>
  804dc8:	01c02074 	movhi	r7,129
  804dcc:	01002074 	movhi	r4,129
  804dd0:	39c20204 	addi	r7,r7,2056
  804dd4:	000d883a 	mov	r6,zero
  804dd8:	01406a84 	movi	r5,426
  804ddc:	21020704 	addi	r4,r4,2076
  804de0:	0809a000 	call	809a00 <__assert_func>
  804de4:	01c02074 	movhi	r7,129
  804de8:	01002074 	movhi	r4,129
  804dec:	39c20204 	addi	r7,r7,2056
  804df0:	000d883a 	mov	r6,zero
  804df4:	0140ba84 	movi	r5,746
  804df8:	21020704 	addi	r4,r4,2076
  804dfc:	0809a000 	call	809a00 <__assert_func>
  804e00:	e701ff04 	addi	fp,fp,2044
  804e04:	003a6406 	br	803798 <_dtoa_r+0xc4>
  804e08:	18c00120 	cmpeqi	r3,r3,4
  804e0c:	183cd51e 	bne	r3,zero,804164 <_dtoa_r+0xa90>
  804e10:	00c00f04 	movi	r3,60
  804e14:	1885c83a 	sub	r2,r3,r2
  804e18:	003d6c06 	br	8043cc <_dtoa_r+0xcf8>
  804e1c:	000b883a 	mov	r5,zero
  804e20:	003af006 	br	8039e4 <_dtoa_r+0x310>

00804e24 <__sflush_r>:
  804e24:	2880030b 	ldhu	r2,12(r5)
  804e28:	defffb04 	addi	sp,sp,-20
  804e2c:	dcc00315 	stw	r19,12(sp)
  804e30:	dc000015 	stw	r16,0(sp)
  804e34:	dfc00415 	stw	ra,16(sp)
  804e38:	dc800215 	stw	r18,8(sp)
  804e3c:	dc400115 	stw	r17,4(sp)
  804e40:	10c0020c 	andi	r3,r2,8
  804e44:	2821883a 	mov	r16,r5
  804e48:	2027883a 	mov	r19,r4
  804e4c:	18003f1e 	bne	r3,zero,804f4c <__sflush_r+0x128>
  804e50:	28c00117 	ldw	r3,4(r5)
  804e54:	10820014 	ori	r2,r2,2048
  804e58:	2880030d 	sth	r2,12(r5)
  804e5c:	00c0550e 	bge	zero,r3,804fb4 <__sflush_r+0x190>
  804e60:	82000a17 	ldw	r8,40(r16)
  804e64:	40003126 	beq	r8,zero,804f2c <__sflush_r+0x108>
  804e68:	9c400017 	ldw	r17,0(r19)
  804e6c:	1104000c 	andi	r4,r2,4096
  804e70:	98000015 	stw	zero,0(r19)
  804e74:	81400717 	ldw	r5,28(r16)
  804e78:	1007883a 	mov	r3,r2
  804e7c:	2000521e 	bne	r4,zero,804fc8 <__sflush_r+0x1a4>
  804e80:	01c00044 	movi	r7,1
  804e84:	000d883a 	mov	r6,zero
  804e88:	9809883a 	mov	r4,r19
  804e8c:	403ee83a 	callr	r8
  804e90:	10ffffd8 	cmpnei	r3,r2,-1
  804e94:	18005826 	beq	r3,zero,804ff8 <__sflush_r+0x1d4>
  804e98:	80c0030b 	ldhu	r3,12(r16)
  804e9c:	82000a17 	ldw	r8,40(r16)
  804ea0:	81400717 	ldw	r5,28(r16)
  804ea4:	18c0010c 	andi	r3,r3,4
  804ea8:	18000626 	beq	r3,zero,804ec4 <__sflush_r+0xa0>
  804eac:	81000117 	ldw	r4,4(r16)
  804eb0:	80c00c17 	ldw	r3,48(r16)
  804eb4:	1105c83a 	sub	r2,r2,r4
  804eb8:	18000226 	beq	r3,zero,804ec4 <__sflush_r+0xa0>
  804ebc:	80c00f17 	ldw	r3,60(r16)
  804ec0:	10c5c83a 	sub	r2,r2,r3
  804ec4:	100d883a 	mov	r6,r2
  804ec8:	000f883a 	mov	r7,zero
  804ecc:	9809883a 	mov	r4,r19
  804ed0:	403ee83a 	callr	r8
  804ed4:	10ffffd8 	cmpnei	r3,r2,-1
  804ed8:	18003d1e 	bne	r3,zero,804fd0 <__sflush_r+0x1ac>
  804edc:	99000017 	ldw	r4,0(r19)
  804ee0:	80c0030b 	ldhu	r3,12(r16)
  804ee4:	20004e26 	beq	r4,zero,805020 <__sflush_r+0x1fc>
  804ee8:	21400760 	cmpeqi	r5,r4,29
  804eec:	2800021e 	bne	r5,zero,804ef8 <__sflush_r+0xd4>
  804ef0:	210005a0 	cmpeqi	r4,r4,22
  804ef4:	20002c26 	beq	r4,zero,804fa8 <__sflush_r+0x184>
  804ef8:	80800417 	ldw	r2,16(r16)
  804efc:	18fdffcc 	andi	r3,r3,63487
  804f00:	80c0030d 	sth	r3,12(r16)
  804f04:	80000115 	stw	zero,4(r16)
  804f08:	80800015 	stw	r2,0(r16)
  804f0c:	81400c17 	ldw	r5,48(r16)
  804f10:	9c400015 	stw	r17,0(r19)
  804f14:	28000526 	beq	r5,zero,804f2c <__sflush_r+0x108>
  804f18:	80801004 	addi	r2,r16,64
  804f1c:	28800226 	beq	r5,r2,804f28 <__sflush_r+0x104>
  804f20:	9809883a 	mov	r4,r19
  804f24:	08055440 	call	805544 <_free_r>
  804f28:	80000c15 	stw	zero,48(r16)
  804f2c:	0005883a 	mov	r2,zero
  804f30:	dfc00417 	ldw	ra,16(sp)
  804f34:	dcc00317 	ldw	r19,12(sp)
  804f38:	dc800217 	ldw	r18,8(sp)
  804f3c:	dc400117 	ldw	r17,4(sp)
  804f40:	dc000017 	ldw	r16,0(sp)
  804f44:	dec00504 	addi	sp,sp,20
  804f48:	f800283a 	ret
  804f4c:	2c800417 	ldw	r18,16(r5)
  804f50:	903ff626 	beq	r18,zero,804f2c <__sflush_r+0x108>
  804f54:	2c400017 	ldw	r17,0(r5)
  804f58:	108000cc 	andi	r2,r2,3
  804f5c:	2c800015 	stw	r18,0(r5)
  804f60:	8ca3c83a 	sub	r17,r17,r18
  804f64:	1000161e 	bne	r2,zero,804fc0 <__sflush_r+0x19c>
  804f68:	28800517 	ldw	r2,20(r5)
  804f6c:	80800215 	stw	r2,8(r16)
  804f70:	04400316 	blt	zero,r17,804f80 <__sflush_r+0x15c>
  804f74:	003fed06 	br	804f2c <__sflush_r+0x108>
  804f78:	90a5883a 	add	r18,r18,r2
  804f7c:	047feb0e 	bge	zero,r17,804f2c <__sflush_r+0x108>
  804f80:	80800917 	ldw	r2,36(r16)
  804f84:	81400717 	ldw	r5,28(r16)
  804f88:	880f883a 	mov	r7,r17
  804f8c:	900d883a 	mov	r6,r18
  804f90:	9809883a 	mov	r4,r19
  804f94:	103ee83a 	callr	r2
  804f98:	88a3c83a 	sub	r17,r17,r2
  804f9c:	00bff616 	blt	zero,r2,804f78 <__sflush_r+0x154>
  804fa0:	80c0030b 	ldhu	r3,12(r16)
  804fa4:	00bfffc4 	movi	r2,-1
  804fa8:	18c01014 	ori	r3,r3,64
  804fac:	80c0030d 	sth	r3,12(r16)
  804fb0:	003fdf06 	br	804f30 <__sflush_r+0x10c>
  804fb4:	28c00f17 	ldw	r3,60(r5)
  804fb8:	00ffa916 	blt	zero,r3,804e60 <__sflush_r+0x3c>
  804fbc:	003fdb06 	br	804f2c <__sflush_r+0x108>
  804fc0:	0005883a 	mov	r2,zero
  804fc4:	003fe906 	br	804f6c <__sflush_r+0x148>
  804fc8:	80801417 	ldw	r2,80(r16)
  804fcc:	003fb506 	br	804ea4 <__sflush_r+0x80>
  804fd0:	80c0030b 	ldhu	r3,12(r16)
  804fd4:	81000417 	ldw	r4,16(r16)
  804fd8:	80000115 	stw	zero,4(r16)
  804fdc:	197dffcc 	andi	r5,r3,63487
  804fe0:	8140030d 	sth	r5,12(r16)
  804fe4:	81000015 	stw	r4,0(r16)
  804fe8:	18c4000c 	andi	r3,r3,4096
  804fec:	183fc726 	beq	r3,zero,804f0c <__sflush_r+0xe8>
  804ff0:	80801415 	stw	r2,80(r16)
  804ff4:	003fc506 	br	804f0c <__sflush_r+0xe8>
  804ff8:	98c00017 	ldw	r3,0(r19)
  804ffc:	183fa626 	beq	r3,zero,804e98 <__sflush_r+0x74>
  805000:	19000760 	cmpeqi	r4,r3,29
  805004:	20000e1e 	bne	r4,zero,805040 <__sflush_r+0x21c>
  805008:	18c00598 	cmpnei	r3,r3,22
  80500c:	18000c26 	beq	r3,zero,805040 <__sflush_r+0x21c>
  805010:	80c0030b 	ldhu	r3,12(r16)
  805014:	18c01014 	ori	r3,r3,64
  805018:	80c0030d 	sth	r3,12(r16)
  80501c:	003fc406 	br	804f30 <__sflush_r+0x10c>
  805020:	81000417 	ldw	r4,16(r16)
  805024:	197dffcc 	andi	r5,r3,63487
  805028:	8140030d 	sth	r5,12(r16)
  80502c:	80000115 	stw	zero,4(r16)
  805030:	81000015 	stw	r4,0(r16)
  805034:	18c4000c 	andi	r3,r3,4096
  805038:	183fb426 	beq	r3,zero,804f0c <__sflush_r+0xe8>
  80503c:	003fec06 	br	804ff0 <__sflush_r+0x1cc>
  805040:	9c400015 	stw	r17,0(r19)
  805044:	0005883a 	mov	r2,zero
  805048:	003fb906 	br	804f30 <__sflush_r+0x10c>

0080504c <_fflush_r>:
  80504c:	defffd04 	addi	sp,sp,-12
  805050:	dc000115 	stw	r16,4(sp)
  805054:	dfc00215 	stw	ra,8(sp)
  805058:	2021883a 	mov	r16,r4
  80505c:	20000226 	beq	r4,zero,805068 <_fflush_r+0x1c>
  805060:	20800e17 	ldw	r2,56(r4)
  805064:	10000726 	beq	r2,zero,805084 <_fflush_r+0x38>
  805068:	2880030f 	ldh	r2,12(r5)
  80506c:	10000a1e 	bne	r2,zero,805098 <_fflush_r+0x4c>
  805070:	0005883a 	mov	r2,zero
  805074:	dfc00217 	ldw	ra,8(sp)
  805078:	dc000117 	ldw	r16,4(sp)
  80507c:	dec00304 	addi	sp,sp,12
  805080:	f800283a 	ret
  805084:	d9400015 	stw	r5,0(sp)
  805088:	08053e00 	call	8053e0 <__sinit>
  80508c:	d9400017 	ldw	r5,0(sp)
  805090:	2880030f 	ldh	r2,12(r5)
  805094:	103ff626 	beq	r2,zero,805070 <_fflush_r+0x24>
  805098:	8009883a 	mov	r4,r16
  80509c:	dfc00217 	ldw	ra,8(sp)
  8050a0:	dc000117 	ldw	r16,4(sp)
  8050a4:	dec00304 	addi	sp,sp,12
  8050a8:	0804e241 	jmpi	804e24 <__sflush_r>

008050ac <fflush>:
  8050ac:	200b883a 	mov	r5,r4
  8050b0:	20000326 	beq	r4,zero,8050c0 <fflush+0x14>
  8050b4:	00802074 	movhi	r2,129
  8050b8:	110a2117 	ldw	r4,10372(r2)
  8050bc:	080504c1 	jmpi	80504c <_fflush_r>
  8050c0:	00802074 	movhi	r2,129
  8050c4:	110a2017 	ldw	r4,10368(r2)
  8050c8:	01402034 	movhi	r5,128
  8050cc:	29541304 	addi	r5,r5,20556
  8050d0:	0805da41 	jmpi	805da4 <_fwalk_reent>

008050d4 <__fp_lock>:
  8050d4:	0005883a 	mov	r2,zero
  8050d8:	f800283a 	ret

008050dc <_cleanup_r>:
  8050dc:	01402074 	movhi	r5,129
  8050e0:	2966cf04 	addi	r5,r5,-25796
  8050e4:	0805da41 	jmpi	805da4 <_fwalk_reent>

008050e8 <__sinit.part.0>:
  8050e8:	00c02034 	movhi	r3,128
  8050ec:	20800117 	ldw	r2,4(r4)
  8050f0:	18d43704 	addi	r3,r3,20700
  8050f4:	20c00f15 	stw	r3,60(r4)
  8050f8:	2140bb04 	addi	r5,r4,748
  8050fc:	00c000c4 	movi	r3,3
  805100:	20c0b915 	stw	r3,740(r4)
  805104:	2140ba15 	stw	r5,744(r4)
  805108:	2000b815 	stw	zero,736(r4)
  80510c:	10001705 	stb	zero,92(r2)
  805110:	10001745 	stb	zero,93(r2)
  805114:	10001785 	stb	zero,94(r2)
  805118:	100017c5 	stb	zero,95(r2)
  80511c:	10001805 	stb	zero,96(r2)
  805120:	10001845 	stb	zero,97(r2)
  805124:	10001885 	stb	zero,98(r2)
  805128:	100018c5 	stb	zero,99(r2)
  80512c:	00c00104 	movi	r3,4
  805130:	10c00315 	stw	r3,12(r2)
  805134:	02002074 	movhi	r8,129
  805138:	20c00217 	ldw	r3,8(r4)
  80513c:	01c02074 	movhi	r7,129
  805140:	01802074 	movhi	r6,129
  805144:	01402074 	movhi	r5,129
  805148:	4220c204 	addi	r8,r8,-31992
  80514c:	39e0d904 	addi	r7,r7,-31900
  805150:	31a0f904 	addi	r6,r6,-31772
  805154:	29611004 	addi	r5,r5,-31680
  805158:	02400074 	movhi	r9,1
  80515c:	10001915 	stw	zero,100(r2)
  805160:	10000015 	stw	zero,0(r2)
  805164:	10000115 	stw	zero,4(r2)
  805168:	10000215 	stw	zero,8(r2)
  80516c:	10000415 	stw	zero,16(r2)
  805170:	10000515 	stw	zero,20(r2)
  805174:	10000615 	stw	zero,24(r2)
  805178:	10800715 	stw	r2,28(r2)
  80517c:	12000815 	stw	r8,32(r2)
  805180:	11c00915 	stw	r7,36(r2)
  805184:	11800a15 	stw	r6,40(r2)
  805188:	11400b15 	stw	r5,44(r2)
  80518c:	4a400284 	addi	r9,r9,10
  805190:	1a400315 	stw	r9,12(r3)
  805194:	18001915 	stw	zero,100(r3)
  805198:	18000015 	stw	zero,0(r3)
  80519c:	18000115 	stw	zero,4(r3)
  8051a0:	18000215 	stw	zero,8(r3)
  8051a4:	18000415 	stw	zero,16(r3)
  8051a8:	18001705 	stb	zero,92(r3)
  8051ac:	18001745 	stb	zero,93(r3)
  8051b0:	18001785 	stb	zero,94(r3)
  8051b4:	180017c5 	stb	zero,95(r3)
  8051b8:	18001805 	stb	zero,96(r3)
  8051bc:	18001845 	stb	zero,97(r3)
  8051c0:	18001885 	stb	zero,98(r3)
  8051c4:	180018c5 	stb	zero,99(r3)
  8051c8:	20800317 	ldw	r2,12(r4)
  8051cc:	024000b4 	movhi	r9,2
  8051d0:	18000515 	stw	zero,20(r3)
  8051d4:	18000615 	stw	zero,24(r3)
  8051d8:	18c00715 	stw	r3,28(r3)
  8051dc:	1a000815 	stw	r8,32(r3)
  8051e0:	19c00915 	stw	r7,36(r3)
  8051e4:	19800a15 	stw	r6,40(r3)
  8051e8:	19400b15 	stw	r5,44(r3)
  8051ec:	4a400484 	addi	r9,r9,18
  8051f0:	10001915 	stw	zero,100(r2)
  8051f4:	10000015 	stw	zero,0(r2)
  8051f8:	10000115 	stw	zero,4(r2)
  8051fc:	10000215 	stw	zero,8(r2)
  805200:	12400315 	stw	r9,12(r2)
  805204:	10000415 	stw	zero,16(r2)
  805208:	10000515 	stw	zero,20(r2)
  80520c:	10000615 	stw	zero,24(r2)
  805210:	10001705 	stb	zero,92(r2)
  805214:	10001745 	stb	zero,93(r2)
  805218:	10001785 	stb	zero,94(r2)
  80521c:	100017c5 	stb	zero,95(r2)
  805220:	10001805 	stb	zero,96(r2)
  805224:	10001845 	stb	zero,97(r2)
  805228:	10001885 	stb	zero,98(r2)
  80522c:	100018c5 	stb	zero,99(r2)
  805230:	10800715 	stw	r2,28(r2)
  805234:	12000815 	stw	r8,32(r2)
  805238:	11c00915 	stw	r7,36(r2)
  80523c:	11800a15 	stw	r6,40(r2)
  805240:	11400b15 	stw	r5,44(r2)
  805244:	00800044 	movi	r2,1
  805248:	20800e15 	stw	r2,56(r4)
  80524c:	f800283a 	ret

00805250 <__fp_unlock>:
  805250:	0005883a 	mov	r2,zero
  805254:	f800283a 	ret

00805258 <__sfmoreglue>:
  805258:	defffc04 	addi	sp,sp,-16
  80525c:	dc800215 	stw	r18,8(sp)
  805260:	2825883a 	mov	r18,r5
  805264:	dc000015 	stw	r16,0(sp)
  805268:	01401a04 	movi	r5,104
  80526c:	2021883a 	mov	r16,r4
  805270:	913fffc4 	addi	r4,r18,-1
  805274:	dfc00315 	stw	ra,12(sp)
  805278:	dc400115 	stw	r17,4(sp)
  80527c:	0800f8c0 	call	800f8c <__mulsi3>
  805280:	8009883a 	mov	r4,r16
  805284:	11401d04 	addi	r5,r2,116
  805288:	1023883a 	mov	r17,r2
  80528c:	08060440 	call	806044 <_malloc_r>
  805290:	1021883a 	mov	r16,r2
  805294:	10000726 	beq	r2,zero,8052b4 <__sfmoreglue+0x5c>
  805298:	11000304 	addi	r4,r2,12
  80529c:	10000015 	stw	zero,0(r2)
  8052a0:	14800115 	stw	r18,4(r2)
  8052a4:	11000215 	stw	r4,8(r2)
  8052a8:	89801a04 	addi	r6,r17,104
  8052ac:	000b883a 	mov	r5,zero
  8052b0:	0806b240 	call	806b24 <memset>
  8052b4:	8005883a 	mov	r2,r16
  8052b8:	dfc00317 	ldw	ra,12(sp)
  8052bc:	dc800217 	ldw	r18,8(sp)
  8052c0:	dc400117 	ldw	r17,4(sp)
  8052c4:	dc000017 	ldw	r16,0(sp)
  8052c8:	dec00404 	addi	sp,sp,16
  8052cc:	f800283a 	ret

008052d0 <__sfp>:
  8052d0:	defffd04 	addi	sp,sp,-12
  8052d4:	00802074 	movhi	r2,129
  8052d8:	dc000015 	stw	r16,0(sp)
  8052dc:	140a2017 	ldw	r16,10368(r2)
  8052e0:	dc400115 	stw	r17,4(sp)
  8052e4:	dfc00215 	stw	ra,8(sp)
  8052e8:	80800e17 	ldw	r2,56(r16)
  8052ec:	2023883a 	mov	r17,r4
  8052f0:	10002b26 	beq	r2,zero,8053a0 <__sfp+0xd0>
  8052f4:	8400b804 	addi	r16,r16,736
  8052f8:	80c00117 	ldw	r3,4(r16)
  8052fc:	80800217 	ldw	r2,8(r16)
  805300:	18ffffc4 	addi	r3,r3,-1
  805304:	1800030e 	bge	r3,zero,805314 <__sfp+0x44>
  805308:	00002106 	br	805390 <__sfp+0xc0>
  80530c:	10801a04 	addi	r2,r2,104
  805310:	30001f26 	beq	r6,zero,805390 <__sfp+0xc0>
  805314:	1140030f 	ldh	r5,12(r2)
  805318:	18ffffc4 	addi	r3,r3,-1
  80531c:	19bfffd8 	cmpnei	r6,r3,-1
  805320:	283ffa1e 	bne	r5,zero,80530c <__sfp+0x3c>
  805324:	00fffff4 	movhi	r3,65535
  805328:	18c00044 	addi	r3,r3,1
  80532c:	10001915 	stw	zero,100(r2)
  805330:	10000015 	stw	zero,0(r2)
  805334:	10000115 	stw	zero,4(r2)
  805338:	10000215 	stw	zero,8(r2)
  80533c:	10c00315 	stw	r3,12(r2)
  805340:	10000415 	stw	zero,16(r2)
  805344:	10000515 	stw	zero,20(r2)
  805348:	10000615 	stw	zero,24(r2)
  80534c:	10001705 	stb	zero,92(r2)
  805350:	10001745 	stb	zero,93(r2)
  805354:	10001785 	stb	zero,94(r2)
  805358:	100017c5 	stb	zero,95(r2)
  80535c:	10001805 	stb	zero,96(r2)
  805360:	10001845 	stb	zero,97(r2)
  805364:	10001885 	stb	zero,98(r2)
  805368:	100018c5 	stb	zero,99(r2)
  80536c:	10000c15 	stw	zero,48(r2)
  805370:	10000d15 	stw	zero,52(r2)
  805374:	10001115 	stw	zero,68(r2)
  805378:	10001215 	stw	zero,72(r2)
  80537c:	dfc00217 	ldw	ra,8(sp)
  805380:	dc400117 	ldw	r17,4(sp)
  805384:	dc000017 	ldw	r16,0(sp)
  805388:	dec00304 	addi	sp,sp,12
  80538c:	f800283a 	ret
  805390:	80800017 	ldw	r2,0(r16)
  805394:	10000526 	beq	r2,zero,8053ac <__sfp+0xdc>
  805398:	1021883a 	mov	r16,r2
  80539c:	003fd606 	br	8052f8 <__sfp+0x28>
  8053a0:	8009883a 	mov	r4,r16
  8053a4:	08050e80 	call	8050e8 <__sinit.part.0>
  8053a8:	003fd206 	br	8052f4 <__sfp+0x24>
  8053ac:	01400104 	movi	r5,4
  8053b0:	8809883a 	mov	r4,r17
  8053b4:	08052580 	call	805258 <__sfmoreglue>
  8053b8:	80800015 	stw	r2,0(r16)
  8053bc:	103ff61e 	bne	r2,zero,805398 <__sfp+0xc8>
  8053c0:	00c00304 	movi	r3,12
  8053c4:	88c00015 	stw	r3,0(r17)
  8053c8:	003fec06 	br	80537c <__sfp+0xac>

008053cc <_cleanup>:
  8053cc:	00802074 	movhi	r2,129
  8053d0:	110a2017 	ldw	r4,10368(r2)
  8053d4:	01402074 	movhi	r5,129
  8053d8:	2966cf04 	addi	r5,r5,-25796
  8053dc:	0805da41 	jmpi	805da4 <_fwalk_reent>

008053e0 <__sinit>:
  8053e0:	20800e17 	ldw	r2,56(r4)
  8053e4:	10000126 	beq	r2,zero,8053ec <__sinit+0xc>
  8053e8:	f800283a 	ret
  8053ec:	08050e81 	jmpi	8050e8 <__sinit.part.0>

008053f0 <__sfp_lock_acquire>:
  8053f0:	f800283a 	ret

008053f4 <__sfp_lock_release>:
  8053f4:	f800283a 	ret

008053f8 <__sinit_lock_acquire>:
  8053f8:	f800283a 	ret

008053fc <__sinit_lock_release>:
  8053fc:	f800283a 	ret

00805400 <__fp_lock_all>:
  805400:	00802074 	movhi	r2,129
  805404:	110a2117 	ldw	r4,10372(r2)
  805408:	01402034 	movhi	r5,128
  80540c:	29543504 	addi	r5,r5,20692
  805410:	0805d0c1 	jmpi	805d0c <_fwalk>

00805414 <__fp_unlock_all>:
  805414:	00802074 	movhi	r2,129
  805418:	110a2117 	ldw	r4,10372(r2)
  80541c:	01402034 	movhi	r5,128
  805420:	29549404 	addi	r5,r5,21072
  805424:	0805d0c1 	jmpi	805d0c <_fwalk>

00805428 <_malloc_trim_r>:
  805428:	defffb04 	addi	sp,sp,-20
  80542c:	dcc00315 	stw	r19,12(sp)
  805430:	04c02074 	movhi	r19,129
  805434:	dc800215 	stw	r18,8(sp)
  805438:	dc400115 	stw	r17,4(sp)
  80543c:	dc000015 	stw	r16,0(sp)
  805440:	dfc00415 	stw	ra,16(sp)
  805444:	2821883a 	mov	r16,r5
  805448:	9cc44104 	addi	r19,r19,4356
  80544c:	2025883a 	mov	r18,r4
  805450:	080e4880 	call	80e488 <__malloc_lock>
  805454:	98800217 	ldw	r2,8(r19)
  805458:	14400117 	ldw	r17,4(r2)
  80545c:	00bfff04 	movi	r2,-4
  805460:	88a2703a 	and	r17,r17,r2
  805464:	8c21c83a 	sub	r16,r17,r16
  805468:	8403fbc4 	addi	r16,r16,4079
  80546c:	8020d33a 	srli	r16,r16,12
  805470:	843fffc4 	addi	r16,r16,-1
  805474:	8020933a 	slli	r16,r16,12
  805478:	80840008 	cmpgei	r2,r16,4096
  80547c:	10000626 	beq	r2,zero,805498 <_malloc_trim_r+0x70>
  805480:	000b883a 	mov	r5,zero
  805484:	9009883a 	mov	r4,r18
  805488:	08082b00 	call	8082b0 <_sbrk_r>
  80548c:	98c00217 	ldw	r3,8(r19)
  805490:	1c47883a 	add	r3,r3,r17
  805494:	10c00a26 	beq	r2,r3,8054c0 <_malloc_trim_r+0x98>
  805498:	9009883a 	mov	r4,r18
  80549c:	080e4ac0 	call	80e4ac <__malloc_unlock>
  8054a0:	0005883a 	mov	r2,zero
  8054a4:	dfc00417 	ldw	ra,16(sp)
  8054a8:	dcc00317 	ldw	r19,12(sp)
  8054ac:	dc800217 	ldw	r18,8(sp)
  8054b0:	dc400117 	ldw	r17,4(sp)
  8054b4:	dc000017 	ldw	r16,0(sp)
  8054b8:	dec00504 	addi	sp,sp,20
  8054bc:	f800283a 	ret
  8054c0:	040bc83a 	sub	r5,zero,r16
  8054c4:	9009883a 	mov	r4,r18
  8054c8:	08082b00 	call	8082b0 <_sbrk_r>
  8054cc:	10bfffd8 	cmpnei	r2,r2,-1
  8054d0:	10000d26 	beq	r2,zero,805508 <_malloc_trim_r+0xe0>
  8054d4:	00802074 	movhi	r2,129
  8054d8:	10913017 	ldw	r2,17600(r2)
  8054dc:	98c00217 	ldw	r3,8(r19)
  8054e0:	8c23c83a 	sub	r17,r17,r16
  8054e4:	8c400054 	ori	r17,r17,1
  8054e8:	1421c83a 	sub	r16,r2,r16
  8054ec:	1c400115 	stw	r17,4(r3)
  8054f0:	00802074 	movhi	r2,129
  8054f4:	9009883a 	mov	r4,r18
  8054f8:	14113015 	stw	r16,17600(r2)
  8054fc:	080e4ac0 	call	80e4ac <__malloc_unlock>
  805500:	00800044 	movi	r2,1
  805504:	003fe706 	br	8054a4 <_malloc_trim_r+0x7c>
  805508:	000b883a 	mov	r5,zero
  80550c:	9009883a 	mov	r4,r18
  805510:	08082b00 	call	8082b0 <_sbrk_r>
  805514:	99000217 	ldw	r4,8(r19)
  805518:	1107c83a 	sub	r3,r2,r4
  80551c:	19400410 	cmplti	r5,r3,16
  805520:	283fdd1e 	bne	r5,zero,805498 <_malloc_trim_r+0x70>
  805524:	01402074 	movhi	r5,129
  805528:	294a2217 	ldw	r5,10376(r5)
  80552c:	18c00054 	ori	r3,r3,1
  805530:	20c00115 	stw	r3,4(r4)
  805534:	1145c83a 	sub	r2,r2,r5
  805538:	01402074 	movhi	r5,129
  80553c:	28913015 	stw	r2,17600(r5)
  805540:	003fd506 	br	805498 <_malloc_trim_r+0x70>

00805544 <_free_r>:
  805544:	28004f26 	beq	r5,zero,805684 <_free_r+0x140>
  805548:	defffd04 	addi	sp,sp,-12
  80554c:	dc400115 	stw	r17,4(sp)
  805550:	dc000015 	stw	r16,0(sp)
  805554:	2023883a 	mov	r17,r4
  805558:	2821883a 	mov	r16,r5
  80555c:	dfc00215 	stw	ra,8(sp)
  805560:	080e4880 	call	80e488 <__malloc_lock>
  805564:	81ffff17 	ldw	r7,-4(r16)
  805568:	00bfff84 	movi	r2,-2
  80556c:	80fffe04 	addi	r3,r16,-8
  805570:	3884703a 	and	r2,r7,r2
  805574:	01002074 	movhi	r4,129
  805578:	188d883a 	add	r6,r3,r2
  80557c:	21044104 	addi	r4,r4,4356
  805580:	31400117 	ldw	r5,4(r6)
  805584:	22000217 	ldw	r8,8(r4)
  805588:	027fff04 	movi	r9,-4
  80558c:	2a4a703a 	and	r5,r5,r9
  805590:	41806426 	beq	r8,r6,805724 <_free_r+0x1e0>
  805594:	31400115 	stw	r5,4(r6)
  805598:	39c0004c 	andi	r7,r7,1
  80559c:	3151883a 	add	r8,r6,r5
  8055a0:	3800281e 	bne	r7,zero,805644 <_free_r+0x100>
  8055a4:	82bffe17 	ldw	r10,-8(r16)
  8055a8:	42000117 	ldw	r8,4(r8)
  8055ac:	01c02074 	movhi	r7,129
  8055b0:	1a87c83a 	sub	r3,r3,r10
  8055b4:	1a400217 	ldw	r9,8(r3)
  8055b8:	39c44304 	addi	r7,r7,4364
  8055bc:	1285883a 	add	r2,r2,r10
  8055c0:	4200004c 	andi	r8,r8,1
  8055c4:	49c04c26 	beq	r9,r7,8056f8 <_free_r+0x1b4>
  8055c8:	1a800317 	ldw	r10,12(r3)
  8055cc:	4a800315 	stw	r10,12(r9)
  8055d0:	52400215 	stw	r9,8(r10)
  8055d4:	40007126 	beq	r8,zero,80579c <_free_r+0x258>
  8055d8:	11400054 	ori	r5,r2,1
  8055dc:	19400115 	stw	r5,4(r3)
  8055e0:	30800015 	stw	r2,0(r6)
  8055e4:	11408028 	cmpgeui	r5,r2,512
  8055e8:	28002c1e 	bne	r5,zero,80569c <_free_r+0x158>
  8055ec:	100ad0fa 	srli	r5,r2,3
  8055f0:	100cd17a 	srli	r6,r2,5
  8055f4:	00800044 	movi	r2,1
  8055f8:	29400044 	addi	r5,r5,1
  8055fc:	280a90fa 	slli	r5,r5,3
  805600:	21c00117 	ldw	r7,4(r4)
  805604:	1184983a 	sll	r2,r2,r6
  805608:	214b883a 	add	r5,r4,r5
  80560c:	29800017 	ldw	r6,0(r5)
  805610:	11c4b03a 	or	r2,r2,r7
  805614:	29fffe04 	addi	r7,r5,-8
  805618:	19c00315 	stw	r7,12(r3)
  80561c:	19800215 	stw	r6,8(r3)
  805620:	20800115 	stw	r2,4(r4)
  805624:	28c00015 	stw	r3,0(r5)
  805628:	30c00315 	stw	r3,12(r6)
  80562c:	8809883a 	mov	r4,r17
  805630:	dfc00217 	ldw	ra,8(sp)
  805634:	dc400117 	ldw	r17,4(sp)
  805638:	dc000017 	ldw	r16,0(sp)
  80563c:	dec00304 	addi	sp,sp,12
  805640:	080e4ac1 	jmpi	80e4ac <__malloc_unlock>
  805644:	41c00117 	ldw	r7,4(r8)
  805648:	39c0004c 	andi	r7,r7,1
  80564c:	38000e1e 	bne	r7,zero,805688 <_free_r+0x144>
  805650:	01c02074 	movhi	r7,129
  805654:	1145883a 	add	r2,r2,r5
  805658:	39c44304 	addi	r7,r7,4364
  80565c:	31400217 	ldw	r5,8(r6)
  805660:	12400054 	ori	r9,r2,1
  805664:	1891883a 	add	r8,r3,r2
  805668:	29c05226 	beq	r5,r7,8057b4 <_free_r+0x270>
  80566c:	31800317 	ldw	r6,12(r6)
  805670:	29800315 	stw	r6,12(r5)
  805674:	31400215 	stw	r5,8(r6)
  805678:	1a400115 	stw	r9,4(r3)
  80567c:	40800015 	stw	r2,0(r8)
  805680:	003fd806 	br	8055e4 <_free_r+0xa0>
  805684:	f800283a 	ret
  805688:	11400054 	ori	r5,r2,1
  80568c:	817fff15 	stw	r5,-4(r16)
  805690:	30800015 	stw	r2,0(r6)
  805694:	11408028 	cmpgeui	r5,r2,512
  805698:	283fd426 	beq	r5,zero,8055ec <_free_r+0xa8>
  80569c:	100ad27a 	srli	r5,r2,9
  8056a0:	29800168 	cmpgeui	r6,r5,5
  8056a4:	3000341e 	bne	r6,zero,805778 <_free_r+0x234>
  8056a8:	100ad1ba 	srli	r5,r2,6
  8056ac:	29800e44 	addi	r6,r5,57
  8056b0:	300c90fa 	slli	r6,r6,3
  8056b4:	29c00e04 	addi	r7,r5,56
  8056b8:	218d883a 	add	r6,r4,r6
  8056bc:	31400017 	ldw	r5,0(r6)
  8056c0:	31bffe04 	addi	r6,r6,-8
  8056c4:	31404226 	beq	r6,r5,8057d0 <_free_r+0x28c>
  8056c8:	01ffff04 	movi	r7,-4
  8056cc:	29000117 	ldw	r4,4(r5)
  8056d0:	21c8703a 	and	r4,r4,r7
  8056d4:	1100022e 	bgeu	r2,r4,8056e0 <_free_r+0x19c>
  8056d8:	29400217 	ldw	r5,8(r5)
  8056dc:	317ffb1e 	bne	r6,r5,8056cc <_free_r+0x188>
  8056e0:	29800317 	ldw	r6,12(r5)
  8056e4:	19800315 	stw	r6,12(r3)
  8056e8:	19400215 	stw	r5,8(r3)
  8056ec:	30c00215 	stw	r3,8(r6)
  8056f0:	28c00315 	stw	r3,12(r5)
  8056f4:	003fcd06 	br	80562c <_free_r+0xe8>
  8056f8:	40004d1e 	bne	r8,zero,805830 <_free_r+0x2ec>
  8056fc:	31000317 	ldw	r4,12(r6)
  805700:	31800217 	ldw	r6,8(r6)
  805704:	2885883a 	add	r2,r5,r2
  805708:	11400054 	ori	r5,r2,1
  80570c:	31000315 	stw	r4,12(r6)
  805710:	21800215 	stw	r6,8(r4)
  805714:	19400115 	stw	r5,4(r3)
  805718:	1887883a 	add	r3,r3,r2
  80571c:	18800015 	stw	r2,0(r3)
  805720:	003fc206 	br	80562c <_free_r+0xe8>
  805724:	39c0004c 	andi	r7,r7,1
  805728:	1145883a 	add	r2,r2,r5
  80572c:	3800071e 	bne	r7,zero,80574c <_free_r+0x208>
  805730:	81fffe17 	ldw	r7,-8(r16)
  805734:	19c7c83a 	sub	r3,r3,r7
  805738:	19400317 	ldw	r5,12(r3)
  80573c:	19800217 	ldw	r6,8(r3)
  805740:	11c5883a 	add	r2,r2,r7
  805744:	31400315 	stw	r5,12(r6)
  805748:	29800215 	stw	r6,8(r5)
  80574c:	01402074 	movhi	r5,129
  805750:	11800054 	ori	r6,r2,1
  805754:	294a2317 	ldw	r5,10380(r5)
  805758:	19800115 	stw	r6,4(r3)
  80575c:	20c00215 	stw	r3,8(r4)
  805760:	117fb236 	bltu	r2,r5,80562c <_free_r+0xe8>
  805764:	00802074 	movhi	r2,129
  805768:	11512617 	ldw	r5,17560(r2)
  80576c:	8809883a 	mov	r4,r17
  805770:	08054280 	call	805428 <_malloc_trim_r>
  805774:	003fad06 	br	80562c <_free_r+0xe8>
  805778:	29800568 	cmpgeui	r6,r5,21
  80577c:	30000926 	beq	r6,zero,8057a4 <_free_r+0x260>
  805780:	29801568 	cmpgeui	r6,r5,85
  805784:	3000191e 	bne	r6,zero,8057ec <_free_r+0x2a8>
  805788:	100ad33a 	srli	r5,r2,12
  80578c:	29801bc4 	addi	r6,r5,111
  805790:	300c90fa 	slli	r6,r6,3
  805794:	29c01b84 	addi	r7,r5,110
  805798:	003fc706 	br	8056b8 <_free_r+0x174>
  80579c:	1145883a 	add	r2,r2,r5
  8057a0:	003fae06 	br	80565c <_free_r+0x118>
  8057a4:	29801704 	addi	r6,r5,92
  8057a8:	300c90fa 	slli	r6,r6,3
  8057ac:	29c016c4 	addi	r7,r5,91
  8057b0:	003fc106 	br	8056b8 <_free_r+0x174>
  8057b4:	20c00515 	stw	r3,20(r4)
  8057b8:	20c00415 	stw	r3,16(r4)
  8057bc:	19c00315 	stw	r7,12(r3)
  8057c0:	19c00215 	stw	r7,8(r3)
  8057c4:	1a400115 	stw	r9,4(r3)
  8057c8:	40800015 	stw	r2,0(r8)
  8057cc:	003f9706 	br	80562c <_free_r+0xe8>
  8057d0:	380fd0ba 	srai	r7,r7,2
  8057d4:	00800044 	movi	r2,1
  8057d8:	22000117 	ldw	r8,4(r4)
  8057dc:	11ce983a 	sll	r7,r2,r7
  8057e0:	3a0eb03a 	or	r7,r7,r8
  8057e4:	21c00115 	stw	r7,4(r4)
  8057e8:	003fbe06 	br	8056e4 <_free_r+0x1a0>
  8057ec:	29805568 	cmpgeui	r6,r5,341
  8057f0:	3000051e 	bne	r6,zero,805808 <_free_r+0x2c4>
  8057f4:	100ad3fa 	srli	r5,r2,15
  8057f8:	29801e04 	addi	r6,r5,120
  8057fc:	300c90fa 	slli	r6,r6,3
  805800:	29c01dc4 	addi	r7,r5,119
  805804:	003fac06 	br	8056b8 <_free_r+0x174>
  805808:	29415568 	cmpgeui	r5,r5,1365
  80580c:	2800051e 	bne	r5,zero,805824 <_free_r+0x2e0>
  805810:	100ad4ba 	srli	r5,r2,18
  805814:	29801f44 	addi	r6,r5,125
  805818:	300c90fa 	slli	r6,r6,3
  80581c:	29c01f04 	addi	r7,r5,124
  805820:	003fa506 	br	8056b8 <_free_r+0x174>
  805824:	0180fe04 	movi	r6,1016
  805828:	01c01f84 	movi	r7,126
  80582c:	003fa206 	br	8056b8 <_free_r+0x174>
  805830:	11000054 	ori	r4,r2,1
  805834:	19000115 	stw	r4,4(r3)
  805838:	30800015 	stw	r2,0(r6)
  80583c:	003f7b06 	br	80562c <_free_r+0xe8>

00805840 <__sfvwrite_r>:
  805840:	30800217 	ldw	r2,8(r6)
  805844:	1000c826 	beq	r2,zero,805b68 <__sfvwrite_r+0x328>
  805848:	29c0030b 	ldhu	r7,12(r5)
  80584c:	defff404 	addi	sp,sp,-48
  805850:	dd800815 	stw	r22,32(sp)
  805854:	dd400715 	stw	r21,28(sp)
  805858:	dc000215 	stw	r16,8(sp)
  80585c:	dfc00b15 	stw	ra,44(sp)
  805860:	df000a15 	stw	fp,40(sp)
  805864:	ddc00915 	stw	r23,36(sp)
  805868:	dd000615 	stw	r20,24(sp)
  80586c:	dcc00515 	stw	r19,20(sp)
  805870:	dc800415 	stw	r18,16(sp)
  805874:	dc400315 	stw	r17,12(sp)
  805878:	3880020c 	andi	r2,r7,8
  80587c:	302d883a 	mov	r22,r6
  805880:	202b883a 	mov	r21,r4
  805884:	2821883a 	mov	r16,r5
  805888:	10002226 	beq	r2,zero,805914 <__sfvwrite_r+0xd4>
  80588c:	28800417 	ldw	r2,16(r5)
  805890:	10002026 	beq	r2,zero,805914 <__sfvwrite_r+0xd4>
  805894:	3880008c 	andi	r2,r7,2
  805898:	b4400017 	ldw	r17,0(r22)
  80589c:	10002526 	beq	r2,zero,805934 <__sfvwrite_r+0xf4>
  8058a0:	80800917 	ldw	r2,36(r16)
  8058a4:	81400717 	ldw	r5,28(r16)
  8058a8:	05200034 	movhi	r20,32768
  8058ac:	0027883a 	mov	r19,zero
  8058b0:	0025883a 	mov	r18,zero
  8058b4:	a53f0004 	addi	r20,r20,-1024
  8058b8:	980d883a 	mov	r6,r19
  8058bc:	a809883a 	mov	r4,r21
  8058c0:	90001026 	beq	r18,zero,805904 <__sfvwrite_r+0xc4>
  8058c4:	900f883a 	mov	r7,r18
  8058c8:	a480012e 	bgeu	r20,r18,8058d0 <__sfvwrite_r+0x90>
  8058cc:	a00f883a 	mov	r7,r20
  8058d0:	103ee83a 	callr	r2
  8058d4:	00809f0e 	bge	zero,r2,805b54 <__sfvwrite_r+0x314>
  8058d8:	b1000217 	ldw	r4,8(r22)
  8058dc:	98a7883a 	add	r19,r19,r2
  8058e0:	90a5c83a 	sub	r18,r18,r2
  8058e4:	2085c83a 	sub	r2,r4,r2
  8058e8:	b0800215 	stw	r2,8(r22)
  8058ec:	10006326 	beq	r2,zero,805a7c <__sfvwrite_r+0x23c>
  8058f0:	80800917 	ldw	r2,36(r16)
  8058f4:	81400717 	ldw	r5,28(r16)
  8058f8:	980d883a 	mov	r6,r19
  8058fc:	a809883a 	mov	r4,r21
  805900:	903ff01e 	bne	r18,zero,8058c4 <__sfvwrite_r+0x84>
  805904:	8cc00017 	ldw	r19,0(r17)
  805908:	8c800117 	ldw	r18,4(r17)
  80590c:	8c400204 	addi	r17,r17,8
  805910:	003fe906 	br	8058b8 <__sfvwrite_r+0x78>
  805914:	800b883a 	mov	r5,r16
  805918:	a809883a 	mov	r4,r21
  80591c:	08033580 	call	803358 <__swsetup_r>
  805920:	1000f81e 	bne	r2,zero,805d04 <__sfvwrite_r+0x4c4>
  805924:	81c0030b 	ldhu	r7,12(r16)
  805928:	b4400017 	ldw	r17,0(r22)
  80592c:	3880008c 	andi	r2,r7,2
  805930:	103fdb1e 	bne	r2,zero,8058a0 <__sfvwrite_r+0x60>
  805934:	3880004c 	andi	r2,r7,1
  805938:	84800217 	ldw	r18,8(r16)
  80593c:	82000017 	ldw	r8,0(r16)
  805940:	10008b1e 	bne	r2,zero,805b70 <__sfvwrite_r+0x330>
  805944:	00a00034 	movhi	r2,32768
  805948:	10bfff84 	addi	r2,r2,-2
  80594c:	00e00034 	movhi	r3,32768
  805950:	d8800015 	stw	r2,0(sp)
  805954:	18bfffc4 	addi	r2,r3,-1
  805958:	0039883a 	mov	fp,zero
  80595c:	0027883a 	mov	r19,zero
  805960:	d8800115 	stw	r2,4(sp)
  805964:	98004126 	beq	r19,zero,805a6c <__sfvwrite_r+0x22c>
  805968:	3880800c 	andi	r2,r7,512
  80596c:	10009326 	beq	r2,zero,805bbc <__sfvwrite_r+0x37c>
  805970:	902f883a 	mov	r23,r18
  805974:	9c80ba36 	bltu	r19,r18,805c60 <__sfvwrite_r+0x420>
  805978:	3881200c 	andi	r2,r7,1152
  80597c:	10002626 	beq	r2,zero,805a18 <__sfvwrite_r+0x1d8>
  805980:	81800517 	ldw	r6,20(r16)
  805984:	81400417 	ldw	r5,16(r16)
  805988:	98800044 	addi	r2,r19,1
  80598c:	3189883a 	add	r4,r6,r6
  805990:	2189883a 	add	r4,r4,r6
  805994:	2028d7fa 	srli	r20,r4,31
  805998:	4165c83a 	sub	r18,r8,r5
  80599c:	1485883a 	add	r2,r2,r18
  8059a0:	a109883a 	add	r4,r20,r4
  8059a4:	2029d07a 	srai	r20,r4,1
  8059a8:	a00d883a 	mov	r6,r20
  8059ac:	a080022e 	bgeu	r20,r2,8059b8 <__sfvwrite_r+0x178>
  8059b0:	1029883a 	mov	r20,r2
  8059b4:	100d883a 	mov	r6,r2
  8059b8:	39c1000c 	andi	r7,r7,1024
  8059bc:	3800c126 	beq	r7,zero,805cc4 <__sfvwrite_r+0x484>
  8059c0:	a809883a 	mov	r4,r21
  8059c4:	300b883a 	mov	r5,r6
  8059c8:	08060440 	call	806044 <_malloc_r>
  8059cc:	1009883a 	mov	r4,r2
  8059d0:	1000c826 	beq	r2,zero,805cf4 <__sfvwrite_r+0x4b4>
  8059d4:	81400417 	ldw	r5,16(r16)
  8059d8:	900d883a 	mov	r6,r18
  8059dc:	08068f80 	call	8068f8 <memcpy>
  8059e0:	1009883a 	mov	r4,r2
  8059e4:	8080030b 	ldhu	r2,12(r16)
  8059e8:	00fedfc4 	movi	r3,-1153
  8059ec:	10c4703a 	and	r2,r2,r3
  8059f0:	10802014 	ori	r2,r2,128
  8059f4:	8080030d 	sth	r2,12(r16)
  8059f8:	2491883a 	add	r8,r4,r18
  8059fc:	a485c83a 	sub	r2,r20,r18
  805a00:	81000415 	stw	r4,16(r16)
  805a04:	82000015 	stw	r8,0(r16)
  805a08:	85000515 	stw	r20,20(r16)
  805a0c:	9825883a 	mov	r18,r19
  805a10:	80800215 	stw	r2,8(r16)
  805a14:	982f883a 	mov	r23,r19
  805a18:	4009883a 	mov	r4,r8
  805a1c:	b80d883a 	mov	r6,r23
  805a20:	e00b883a 	mov	r5,fp
  805a24:	08069f80 	call	8069f8 <memmove>
  805a28:	81000217 	ldw	r4,8(r16)
  805a2c:	80800017 	ldw	r2,0(r16)
  805a30:	9829883a 	mov	r20,r19
  805a34:	24a5c83a 	sub	r18,r4,r18
  805a38:	15c5883a 	add	r2,r2,r23
  805a3c:	84800215 	stw	r18,8(r16)
  805a40:	80800015 	stw	r2,0(r16)
  805a44:	0027883a 	mov	r19,zero
  805a48:	b0800217 	ldw	r2,8(r22)
  805a4c:	e539883a 	add	fp,fp,r20
  805a50:	1529c83a 	sub	r20,r2,r20
  805a54:	b5000215 	stw	r20,8(r22)
  805a58:	a0000826 	beq	r20,zero,805a7c <__sfvwrite_r+0x23c>
  805a5c:	81c0030b 	ldhu	r7,12(r16)
  805a60:	84800217 	ldw	r18,8(r16)
  805a64:	82000017 	ldw	r8,0(r16)
  805a68:	983fbf1e 	bne	r19,zero,805968 <__sfvwrite_r+0x128>
  805a6c:	8f000017 	ldw	fp,0(r17)
  805a70:	8cc00117 	ldw	r19,4(r17)
  805a74:	8c400204 	addi	r17,r17,8
  805a78:	003fba06 	br	805964 <__sfvwrite_r+0x124>
  805a7c:	0005883a 	mov	r2,zero
  805a80:	dfc00b17 	ldw	ra,44(sp)
  805a84:	df000a17 	ldw	fp,40(sp)
  805a88:	ddc00917 	ldw	r23,36(sp)
  805a8c:	dd800817 	ldw	r22,32(sp)
  805a90:	dd400717 	ldw	r21,28(sp)
  805a94:	dd000617 	ldw	r20,24(sp)
  805a98:	dcc00517 	ldw	r19,20(sp)
  805a9c:	dc800417 	ldw	r18,16(sp)
  805aa0:	dc400317 	ldw	r17,12(sp)
  805aa4:	dc000217 	ldw	r16,8(sp)
  805aa8:	dec00c04 	addi	sp,sp,48
  805aac:	f800283a 	ret
  805ab0:	e1c07316 	blt	fp,r7,805c80 <__sfvwrite_r+0x440>
  805ab4:	80800917 	ldw	r2,36(r16)
  805ab8:	81400717 	ldw	r5,28(r16)
  805abc:	b80d883a 	mov	r6,r23
  805ac0:	a809883a 	mov	r4,r21
  805ac4:	103ee83a 	callr	r2
  805ac8:	1025883a 	mov	r18,r2
  805acc:	0080210e 	bge	zero,r2,805b54 <__sfvwrite_r+0x314>
  805ad0:	a4a9c83a 	sub	r20,r20,r18
  805ad4:	a0006526 	beq	r20,zero,805c6c <__sfvwrite_r+0x42c>
  805ad8:	00800044 	movi	r2,1
  805adc:	b1800217 	ldw	r6,8(r22)
  805ae0:	bcaf883a 	add	r23,r23,r18
  805ae4:	9ca7c83a 	sub	r19,r19,r18
  805ae8:	34a5c83a 	sub	r18,r6,r18
  805aec:	b4800215 	stw	r18,8(r22)
  805af0:	903fe226 	beq	r18,zero,805a7c <__sfvwrite_r+0x23c>
  805af4:	84800217 	ldw	r18,8(r16)
  805af8:	82000017 	ldw	r8,0(r16)
  805afc:	98002126 	beq	r19,zero,805b84 <__sfvwrite_r+0x344>
  805b00:	10002426 	beq	r2,zero,805b94 <__sfvwrite_r+0x354>
  805b04:	a005883a 	mov	r2,r20
  805b08:	9839883a 	mov	fp,r19
  805b0c:	14c0012e 	bgeu	r2,r19,805b14 <__sfvwrite_r+0x2d4>
  805b10:	1039883a 	mov	fp,r2
  805b14:	80800417 	ldw	r2,16(r16)
  805b18:	81c00517 	ldw	r7,20(r16)
  805b1c:	123fe42e 	bgeu	r2,r8,805ab0 <__sfvwrite_r+0x270>
  805b20:	3ca5883a 	add	r18,r7,r18
  805b24:	973fe20e 	bge	r18,fp,805ab0 <__sfvwrite_r+0x270>
  805b28:	b80b883a 	mov	r5,r23
  805b2c:	4009883a 	mov	r4,r8
  805b30:	900d883a 	mov	r6,r18
  805b34:	08069f80 	call	8069f8 <memmove>
  805b38:	80800017 	ldw	r2,0(r16)
  805b3c:	800b883a 	mov	r5,r16
  805b40:	a809883a 	mov	r4,r21
  805b44:	1485883a 	add	r2,r2,r18
  805b48:	80800015 	stw	r2,0(r16)
  805b4c:	080504c0 	call	80504c <_fflush_r>
  805b50:	103fdf26 	beq	r2,zero,805ad0 <__sfvwrite_r+0x290>
  805b54:	8080030b 	ldhu	r2,12(r16)
  805b58:	10801014 	ori	r2,r2,64
  805b5c:	8080030d 	sth	r2,12(r16)
  805b60:	00bfffc4 	movi	r2,-1
  805b64:	003fc606 	br	805a80 <__sfvwrite_r+0x240>
  805b68:	0005883a 	mov	r2,zero
  805b6c:	f800283a 	ret
  805b70:	0027883a 	mov	r19,zero
  805b74:	0029883a 	mov	r20,zero
  805b78:	0005883a 	mov	r2,zero
  805b7c:	002f883a 	mov	r23,zero
  805b80:	983fdf1e 	bne	r19,zero,805b00 <__sfvwrite_r+0x2c0>
  805b84:	8cc00117 	ldw	r19,4(r17)
  805b88:	8dc00017 	ldw	r23,0(r17)
  805b8c:	8c400204 	addi	r17,r17,8
  805b90:	983ffc26 	beq	r19,zero,805b84 <__sfvwrite_r+0x344>
  805b94:	980d883a 	mov	r6,r19
  805b98:	01400284 	movi	r5,10
  805b9c:	b809883a 	mov	r4,r23
  805ba0:	da000015 	stw	r8,0(sp)
  805ba4:	08068240 	call	806824 <memchr>
  805ba8:	da000017 	ldw	r8,0(sp)
  805bac:	10004226 	beq	r2,zero,805cb8 <__sfvwrite_r+0x478>
  805bb0:	10800044 	addi	r2,r2,1
  805bb4:	15e9c83a 	sub	r20,r2,r23
  805bb8:	003fd206 	br	805b04 <__sfvwrite_r+0x2c4>
  805bbc:	80800417 	ldw	r2,16(r16)
  805bc0:	12001436 	bltu	r2,r8,805c14 <__sfvwrite_r+0x3d4>
  805bc4:	85000517 	ldw	r20,20(r16)
  805bc8:	9d001236 	bltu	r19,r20,805c14 <__sfvwrite_r+0x3d4>
  805bcc:	d8800017 	ldw	r2,0(sp)
  805bd0:	14c0372e 	bgeu	r2,r19,805cb0 <__sfvwrite_r+0x470>
  805bd4:	d9000117 	ldw	r4,4(sp)
  805bd8:	a00b883a 	mov	r5,r20
  805bdc:	080b3600 	call	80b360 <__divsi3>
  805be0:	a00b883a 	mov	r5,r20
  805be4:	1009883a 	mov	r4,r2
  805be8:	0800f8c0 	call	800f8c <__mulsi3>
  805bec:	82000917 	ldw	r8,36(r16)
  805bf0:	81400717 	ldw	r5,28(r16)
  805bf4:	100f883a 	mov	r7,r2
  805bf8:	e00d883a 	mov	r6,fp
  805bfc:	a809883a 	mov	r4,r21
  805c00:	403ee83a 	callr	r8
  805c04:	1029883a 	mov	r20,r2
  805c08:	00bfd20e 	bge	zero,r2,805b54 <__sfvwrite_r+0x314>
  805c0c:	9d27c83a 	sub	r19,r19,r20
  805c10:	003f8d06 	br	805a48 <__sfvwrite_r+0x208>
  805c14:	9029883a 	mov	r20,r18
  805c18:	9c80012e 	bgeu	r19,r18,805c20 <__sfvwrite_r+0x3e0>
  805c1c:	9829883a 	mov	r20,r19
  805c20:	4009883a 	mov	r4,r8
  805c24:	a00d883a 	mov	r6,r20
  805c28:	e00b883a 	mov	r5,fp
  805c2c:	08069f80 	call	8069f8 <memmove>
  805c30:	80800217 	ldw	r2,8(r16)
  805c34:	81000017 	ldw	r4,0(r16)
  805c38:	1505c83a 	sub	r2,r2,r20
  805c3c:	2509883a 	add	r4,r4,r20
  805c40:	80800215 	stw	r2,8(r16)
  805c44:	81000015 	stw	r4,0(r16)
  805c48:	103ff01e 	bne	r2,zero,805c0c <__sfvwrite_r+0x3cc>
  805c4c:	800b883a 	mov	r5,r16
  805c50:	a809883a 	mov	r4,r21
  805c54:	080504c0 	call	80504c <_fflush_r>
  805c58:	103fec26 	beq	r2,zero,805c0c <__sfvwrite_r+0x3cc>
  805c5c:	003fbd06 	br	805b54 <__sfvwrite_r+0x314>
  805c60:	9825883a 	mov	r18,r19
  805c64:	982f883a 	mov	r23,r19
  805c68:	003f6b06 	br	805a18 <__sfvwrite_r+0x1d8>
  805c6c:	800b883a 	mov	r5,r16
  805c70:	a809883a 	mov	r4,r21
  805c74:	080504c0 	call	80504c <_fflush_r>
  805c78:	103f9826 	beq	r2,zero,805adc <__sfvwrite_r+0x29c>
  805c7c:	003fb506 	br	805b54 <__sfvwrite_r+0x314>
  805c80:	e00d883a 	mov	r6,fp
  805c84:	b80b883a 	mov	r5,r23
  805c88:	4009883a 	mov	r4,r8
  805c8c:	08069f80 	call	8069f8 <memmove>
  805c90:	80800217 	ldw	r2,8(r16)
  805c94:	81800017 	ldw	r6,0(r16)
  805c98:	e025883a 	mov	r18,fp
  805c9c:	1705c83a 	sub	r2,r2,fp
  805ca0:	370d883a 	add	r6,r6,fp
  805ca4:	80800215 	stw	r2,8(r16)
  805ca8:	81800015 	stw	r6,0(r16)
  805cac:	003f8806 	br	805ad0 <__sfvwrite_r+0x290>
  805cb0:	9809883a 	mov	r4,r19
  805cb4:	003fc806 	br	805bd8 <__sfvwrite_r+0x398>
  805cb8:	98800044 	addi	r2,r19,1
  805cbc:	1029883a 	mov	r20,r2
  805cc0:	003f9106 	br	805b08 <__sfvwrite_r+0x2c8>
  805cc4:	a809883a 	mov	r4,r21
  805cc8:	0807d4c0 	call	807d4c <_realloc_r>
  805ccc:	1009883a 	mov	r4,r2
  805cd0:	103f491e 	bne	r2,zero,8059f8 <__sfvwrite_r+0x1b8>
  805cd4:	81400417 	ldw	r5,16(r16)
  805cd8:	a809883a 	mov	r4,r21
  805cdc:	08055440 	call	805544 <_free_r>
  805ce0:	8080030b 	ldhu	r2,12(r16)
  805ce4:	00c00304 	movi	r3,12
  805ce8:	a8c00015 	stw	r3,0(r21)
  805cec:	10bfdfcc 	andi	r2,r2,65407
  805cf0:	003f9906 	br	805b58 <__sfvwrite_r+0x318>
  805cf4:	00c00304 	movi	r3,12
  805cf8:	8080030b 	ldhu	r2,12(r16)
  805cfc:	a8c00015 	stw	r3,0(r21)
  805d00:	003f9506 	br	805b58 <__sfvwrite_r+0x318>
  805d04:	00bfffc4 	movi	r2,-1
  805d08:	003f5d06 	br	805a80 <__sfvwrite_r+0x240>

00805d0c <_fwalk>:
  805d0c:	defffa04 	addi	sp,sp,-24
  805d10:	dd000415 	stw	r20,16(sp)
  805d14:	dcc00315 	stw	r19,12(sp)
  805d18:	dc800215 	stw	r18,8(sp)
  805d1c:	dfc00515 	stw	ra,20(sp)
  805d20:	dc400115 	stw	r17,4(sp)
  805d24:	dc000015 	stw	r16,0(sp)
  805d28:	2827883a 	mov	r19,r5
  805d2c:	2480b804 	addi	r18,r4,736
  805d30:	0029883a 	mov	r20,zero
  805d34:	94400117 	ldw	r17,4(r18)
  805d38:	94000217 	ldw	r16,8(r18)
  805d3c:	8c7fffc4 	addi	r17,r17,-1
  805d40:	88000d16 	blt	r17,zero,805d78 <_fwalk+0x6c>
  805d44:	8080030b 	ldhu	r2,12(r16)
  805d48:	8c7fffc4 	addi	r17,r17,-1
  805d4c:	108000b0 	cmpltui	r2,r2,2
  805d50:	1000061e 	bne	r2,zero,805d6c <_fwalk+0x60>
  805d54:	8080038f 	ldh	r2,14(r16)
  805d58:	8009883a 	mov	r4,r16
  805d5c:	10bfffe0 	cmpeqi	r2,r2,-1
  805d60:	1000021e 	bne	r2,zero,805d6c <_fwalk+0x60>
  805d64:	983ee83a 	callr	r19
  805d68:	a0a8b03a 	or	r20,r20,r2
  805d6c:	88bfffd8 	cmpnei	r2,r17,-1
  805d70:	84001a04 	addi	r16,r16,104
  805d74:	103ff31e 	bne	r2,zero,805d44 <_fwalk+0x38>
  805d78:	94800017 	ldw	r18,0(r18)
  805d7c:	903fed1e 	bne	r18,zero,805d34 <_fwalk+0x28>
  805d80:	a005883a 	mov	r2,r20
  805d84:	dfc00517 	ldw	ra,20(sp)
  805d88:	dd000417 	ldw	r20,16(sp)
  805d8c:	dcc00317 	ldw	r19,12(sp)
  805d90:	dc800217 	ldw	r18,8(sp)
  805d94:	dc400117 	ldw	r17,4(sp)
  805d98:	dc000017 	ldw	r16,0(sp)
  805d9c:	dec00604 	addi	sp,sp,24
  805da0:	f800283a 	ret

00805da4 <_fwalk_reent>:
  805da4:	defff904 	addi	sp,sp,-28
  805da8:	dd400515 	stw	r21,20(sp)
  805dac:	dd000415 	stw	r20,16(sp)
  805db0:	dcc00315 	stw	r19,12(sp)
  805db4:	dc800215 	stw	r18,8(sp)
  805db8:	dfc00615 	stw	ra,24(sp)
  805dbc:	dc400115 	stw	r17,4(sp)
  805dc0:	dc000015 	stw	r16,0(sp)
  805dc4:	202b883a 	mov	r21,r4
  805dc8:	2827883a 	mov	r19,r5
  805dcc:	2480b804 	addi	r18,r4,736
  805dd0:	0029883a 	mov	r20,zero
  805dd4:	94400117 	ldw	r17,4(r18)
  805dd8:	94000217 	ldw	r16,8(r18)
  805ddc:	8c7fffc4 	addi	r17,r17,-1
  805de0:	88000e16 	blt	r17,zero,805e1c <_fwalk_reent+0x78>
  805de4:	8080030b 	ldhu	r2,12(r16)
  805de8:	8c7fffc4 	addi	r17,r17,-1
  805dec:	108000b0 	cmpltui	r2,r2,2
  805df0:	1000071e 	bne	r2,zero,805e10 <_fwalk_reent+0x6c>
  805df4:	8080038f 	ldh	r2,14(r16)
  805df8:	800b883a 	mov	r5,r16
  805dfc:	a809883a 	mov	r4,r21
  805e00:	10bfffe0 	cmpeqi	r2,r2,-1
  805e04:	1000021e 	bne	r2,zero,805e10 <_fwalk_reent+0x6c>
  805e08:	983ee83a 	callr	r19
  805e0c:	a0a8b03a 	or	r20,r20,r2
  805e10:	88bfffd8 	cmpnei	r2,r17,-1
  805e14:	84001a04 	addi	r16,r16,104
  805e18:	103ff21e 	bne	r2,zero,805de4 <_fwalk_reent+0x40>
  805e1c:	94800017 	ldw	r18,0(r18)
  805e20:	903fec1e 	bne	r18,zero,805dd4 <_fwalk_reent+0x30>
  805e24:	a005883a 	mov	r2,r20
  805e28:	dfc00617 	ldw	ra,24(sp)
  805e2c:	dd400517 	ldw	r21,20(sp)
  805e30:	dd000417 	ldw	r20,16(sp)
  805e34:	dcc00317 	ldw	r19,12(sp)
  805e38:	dc800217 	ldw	r18,8(sp)
  805e3c:	dc400117 	ldw	r17,4(sp)
  805e40:	dc000017 	ldw	r16,0(sp)
  805e44:	dec00704 	addi	sp,sp,28
  805e48:	f800283a 	ret

00805e4c <__localeconv_l>:
  805e4c:	20803c04 	addi	r2,r4,240
  805e50:	f800283a 	ret

00805e54 <_localeconv_r>:
  805e54:	00802074 	movhi	r2,129
  805e58:	10857f04 	addi	r2,r2,5628
  805e5c:	f800283a 	ret

00805e60 <localeconv>:
  805e60:	00802074 	movhi	r2,129
  805e64:	10857f04 	addi	r2,r2,5628
  805e68:	f800283a 	ret

00805e6c <__swhatbuf_r>:
  805e6c:	deffea04 	addi	sp,sp,-88
  805e70:	dc001215 	stw	r16,72(sp)
  805e74:	2821883a 	mov	r16,r5
  805e78:	2940038f 	ldh	r5,14(r5)
  805e7c:	dc801415 	stw	r18,80(sp)
  805e80:	dc401315 	stw	r17,76(sp)
  805e84:	dfc01515 	stw	ra,84(sp)
  805e88:	3023883a 	mov	r17,r6
  805e8c:	3825883a 	mov	r18,r7
  805e90:	28001016 	blt	r5,zero,805ed4 <__swhatbuf_r+0x68>
  805e94:	d80d883a 	mov	r6,sp
  805e98:	0809e9c0 	call	809e9c <_fstat_r>
  805e9c:	10000d16 	blt	r2,zero,805ed4 <__swhatbuf_r+0x68>
  805ea0:	d8c00117 	ldw	r3,4(sp)
  805ea4:	00820004 	movi	r2,2048
  805ea8:	18fc000c 	andi	r3,r3,61440
  805eac:	18c80020 	cmpeqi	r3,r3,8192
  805eb0:	90c00015 	stw	r3,0(r18)
  805eb4:	00c10004 	movi	r3,1024
  805eb8:	88c00015 	stw	r3,0(r17)
  805ebc:	dfc01517 	ldw	ra,84(sp)
  805ec0:	dc801417 	ldw	r18,80(sp)
  805ec4:	dc401317 	ldw	r17,76(sp)
  805ec8:	dc001217 	ldw	r16,72(sp)
  805ecc:	dec01604 	addi	sp,sp,88
  805ed0:	f800283a 	ret
  805ed4:	8080030b 	ldhu	r2,12(r16)
  805ed8:	90000015 	stw	zero,0(r18)
  805edc:	1080200c 	andi	r2,r2,128
  805ee0:	10000426 	beq	r2,zero,805ef4 <__swhatbuf_r+0x88>
  805ee4:	00801004 	movi	r2,64
  805ee8:	88800015 	stw	r2,0(r17)
  805eec:	0005883a 	mov	r2,zero
  805ef0:	003ff206 	br	805ebc <__swhatbuf_r+0x50>
  805ef4:	00810004 	movi	r2,1024
  805ef8:	88800015 	stw	r2,0(r17)
  805efc:	0005883a 	mov	r2,zero
  805f00:	003fee06 	br	805ebc <__swhatbuf_r+0x50>

00805f04 <__smakebuf_r>:
  805f04:	2880030b 	ldhu	r2,12(r5)
  805f08:	defffa04 	addi	sp,sp,-24
  805f0c:	dc000215 	stw	r16,8(sp)
  805f10:	dfc00515 	stw	ra,20(sp)
  805f14:	dc800415 	stw	r18,16(sp)
  805f18:	dc400315 	stw	r17,12(sp)
  805f1c:	1080008c 	andi	r2,r2,2
  805f20:	2821883a 	mov	r16,r5
  805f24:	10000b26 	beq	r2,zero,805f54 <__smakebuf_r+0x50>
  805f28:	288010c4 	addi	r2,r5,67
  805f2c:	28800015 	stw	r2,0(r5)
  805f30:	28800415 	stw	r2,16(r5)
  805f34:	00800044 	movi	r2,1
  805f38:	28800515 	stw	r2,20(r5)
  805f3c:	dfc00517 	ldw	ra,20(sp)
  805f40:	dc800417 	ldw	r18,16(sp)
  805f44:	dc400317 	ldw	r17,12(sp)
  805f48:	dc000217 	ldw	r16,8(sp)
  805f4c:	dec00604 	addi	sp,sp,24
  805f50:	f800283a 	ret
  805f54:	d9c00104 	addi	r7,sp,4
  805f58:	d80d883a 	mov	r6,sp
  805f5c:	2023883a 	mov	r17,r4
  805f60:	0805e6c0 	call	805e6c <__swhatbuf_r>
  805f64:	d9000117 	ldw	r4,4(sp)
  805f68:	1025883a 	mov	r18,r2
  805f6c:	2000131e 	bne	r4,zero,805fbc <__smakebuf_r+0xb8>
  805f70:	d9400017 	ldw	r5,0(sp)
  805f74:	8809883a 	mov	r4,r17
  805f78:	08060440 	call	806044 <_malloc_r>
  805f7c:	10001c26 	beq	r2,zero,805ff0 <__smakebuf_r+0xec>
  805f80:	01002034 	movhi	r4,128
  805f84:	21143704 	addi	r4,r4,20700
  805f88:	80c0030b 	ldhu	r3,12(r16)
  805f8c:	89000f15 	stw	r4,60(r17)
  805f90:	80800015 	stw	r2,0(r16)
  805f94:	80800415 	stw	r2,16(r16)
  805f98:	d8800017 	ldw	r2,0(sp)
  805f9c:	d9400117 	ldw	r5,4(sp)
  805fa0:	18c02014 	ori	r3,r3,128
  805fa4:	80c0030d 	sth	r3,12(r16)
  805fa8:	80800515 	stw	r2,20(r16)
  805fac:	28001d1e 	bne	r5,zero,806024 <__smakebuf_r+0x120>
  805fb0:	90c6b03a 	or	r3,r18,r3
  805fb4:	80c0030d 	sth	r3,12(r16)
  805fb8:	003fe006 	br	805f3c <__smakebuf_r+0x38>
  805fbc:	8140038f 	ldh	r5,14(r16)
  805fc0:	8809883a 	mov	r4,r17
  805fc4:	0809efc0 	call	809efc <_isatty_r>
  805fc8:	103fe926 	beq	r2,zero,805f70 <__smakebuf_r+0x6c>
  805fcc:	8080030b 	ldhu	r2,12(r16)
  805fd0:	80c010c4 	addi	r3,r16,67
  805fd4:	80c00015 	stw	r3,0(r16)
  805fd8:	10800054 	ori	r2,r2,1
  805fdc:	8080030d 	sth	r2,12(r16)
  805fe0:	00800044 	movi	r2,1
  805fe4:	80c00415 	stw	r3,16(r16)
  805fe8:	80800515 	stw	r2,20(r16)
  805fec:	003fe006 	br	805f70 <__smakebuf_r+0x6c>
  805ff0:	8080030b 	ldhu	r2,12(r16)
  805ff4:	10c0800c 	andi	r3,r2,512
  805ff8:	183fd01e 	bne	r3,zero,805f3c <__smakebuf_r+0x38>
  805ffc:	00ffff04 	movi	r3,-4
  806000:	10c4703a 	and	r2,r2,r3
  806004:	10800094 	ori	r2,r2,2
  806008:	80c010c4 	addi	r3,r16,67
  80600c:	8080030d 	sth	r2,12(r16)
  806010:	00800044 	movi	r2,1
  806014:	80c00015 	stw	r3,0(r16)
  806018:	80c00415 	stw	r3,16(r16)
  80601c:	80800515 	stw	r2,20(r16)
  806020:	003fc606 	br	805f3c <__smakebuf_r+0x38>
  806024:	8140038f 	ldh	r5,14(r16)
  806028:	8809883a 	mov	r4,r17
  80602c:	0809efc0 	call	809efc <_isatty_r>
  806030:	80c0030b 	ldhu	r3,12(r16)
  806034:	103fde26 	beq	r2,zero,805fb0 <__smakebuf_r+0xac>
  806038:	18ffff0c 	andi	r3,r3,65532
  80603c:	18c00054 	ori	r3,r3,1
  806040:	003fdb06 	br	805fb0 <__smakebuf_r+0xac>

00806044 <_malloc_r>:
  806044:	defff604 	addi	sp,sp,-40
  806048:	dc400115 	stw	r17,4(sp)
  80604c:	2c4002c4 	addi	r17,r5,11
  806050:	dc800215 	stw	r18,8(sp)
  806054:	dfc00915 	stw	ra,36(sp)
  806058:	df000815 	stw	fp,32(sp)
  80605c:	ddc00715 	stw	r23,28(sp)
  806060:	dd800615 	stw	r22,24(sp)
  806064:	dd400515 	stw	r21,20(sp)
  806068:	dd000415 	stw	r20,16(sp)
  80606c:	dcc00315 	stw	r19,12(sp)
  806070:	dc000015 	stw	r16,0(sp)
  806074:	888005e8 	cmpgeui	r2,r17,23
  806078:	2025883a 	mov	r18,r4
  80607c:	10001b1e 	bne	r2,zero,8060ec <_malloc_r+0xa8>
  806080:	29400468 	cmpgeui	r5,r5,17
  806084:	2800821e 	bne	r5,zero,806290 <_malloc_r+0x24c>
  806088:	080e4880 	call	80e488 <__malloc_lock>
  80608c:	04400404 	movi	r17,16
  806090:	01c00084 	movi	r7,2
  806094:	00800604 	movi	r2,24
  806098:	04c02074 	movhi	r19,129
  80609c:	9cc44104 	addi	r19,r19,4356
  8060a0:	9885883a 	add	r2,r19,r2
  8060a4:	14000117 	ldw	r16,4(r2)
  8060a8:	10fffe04 	addi	r3,r2,-8
  8060ac:	80c08b26 	beq	r16,r3,8062dc <_malloc_r+0x298>
  8060b0:	80800117 	ldw	r2,4(r16)
  8060b4:	81000317 	ldw	r4,12(r16)
  8060b8:	00ffff04 	movi	r3,-4
  8060bc:	10c4703a 	and	r2,r2,r3
  8060c0:	81400217 	ldw	r5,8(r16)
  8060c4:	8085883a 	add	r2,r16,r2
  8060c8:	10c00117 	ldw	r3,4(r2)
  8060cc:	29000315 	stw	r4,12(r5)
  8060d0:	21400215 	stw	r5,8(r4)
  8060d4:	18c00054 	ori	r3,r3,1
  8060d8:	10c00115 	stw	r3,4(r2)
  8060dc:	9009883a 	mov	r4,r18
  8060e0:	080e4ac0 	call	80e4ac <__malloc_unlock>
  8060e4:	80800204 	addi	r2,r16,8
  8060e8:	00006c06 	br	80629c <_malloc_r+0x258>
  8060ec:	00bffe04 	movi	r2,-8
  8060f0:	88a2703a 	and	r17,r17,r2
  8060f4:	88006616 	blt	r17,zero,806290 <_malloc_r+0x24c>
  8060f8:	89406536 	bltu	r17,r5,806290 <_malloc_r+0x24c>
  8060fc:	080e4880 	call	80e488 <__malloc_lock>
  806100:	88807e28 	cmpgeui	r2,r17,504
  806104:	10012226 	beq	r2,zero,806590 <_malloc_r+0x54c>
  806108:	8804d27a 	srli	r2,r17,9
  80610c:	10006f26 	beq	r2,zero,8062cc <_malloc_r+0x288>
  806110:	10c00168 	cmpgeui	r3,r2,5
  806114:	1800fe1e 	bne	r3,zero,806510 <_malloc_r+0x4cc>
  806118:	8804d1ba 	srli	r2,r17,6
  80611c:	11c00e44 	addi	r7,r2,57
  806120:	380890fa 	slli	r4,r7,3
  806124:	12000e04 	addi	r8,r2,56
  806128:	04c02074 	movhi	r19,129
  80612c:	9cc44104 	addi	r19,r19,4356
  806130:	9909883a 	add	r4,r19,r4
  806134:	24000117 	ldw	r16,4(r4)
  806138:	213ffe04 	addi	r4,r4,-8
  80613c:	24000b26 	beq	r4,r16,80616c <_malloc_r+0x128>
  806140:	01bfff04 	movi	r6,-4
  806144:	00000306 	br	806154 <_malloc_r+0x110>
  806148:	1800d60e 	bge	r3,zero,8064a4 <_malloc_r+0x460>
  80614c:	84000317 	ldw	r16,12(r16)
  806150:	24000626 	beq	r4,r16,80616c <_malloc_r+0x128>
  806154:	80800117 	ldw	r2,4(r16)
  806158:	1184703a 	and	r2,r2,r6
  80615c:	1447c83a 	sub	r3,r2,r17
  806160:	19400408 	cmpgei	r5,r3,16
  806164:	283ff826 	beq	r5,zero,806148 <_malloc_r+0x104>
  806168:	400f883a 	mov	r7,r8
  80616c:	9c000417 	ldw	r16,16(r19)
  806170:	02402074 	movhi	r9,129
  806174:	4a444304 	addi	r9,r9,4364
  806178:	82405f26 	beq	r16,r9,8062f8 <_malloc_r+0x2b4>
  80617c:	80c00117 	ldw	r3,4(r16)
  806180:	00bfff04 	movi	r2,-4
  806184:	1884703a 	and	r2,r3,r2
  806188:	1447c83a 	sub	r3,r2,r17
  80618c:	19000410 	cmplti	r4,r3,16
  806190:	20010a26 	beq	r4,zero,8065bc <_malloc_r+0x578>
  806194:	9a400515 	stw	r9,20(r19)
  806198:	9a400415 	stw	r9,16(r19)
  80619c:	1800ff0e 	bge	r3,zero,80659c <_malloc_r+0x558>
  8061a0:	10c08028 	cmpgeui	r3,r2,512
  8061a4:	1800c11e 	bne	r3,zero,8064ac <_malloc_r+0x468>
  8061a8:	1006d0fa 	srli	r3,r2,3
  8061ac:	1008d17a 	srli	r4,r2,5
  8061b0:	00800044 	movi	r2,1
  8061b4:	18c00044 	addi	r3,r3,1
  8061b8:	180690fa 	slli	r3,r3,3
  8061bc:	99400117 	ldw	r5,4(r19)
  8061c0:	1104983a 	sll	r2,r2,r4
  8061c4:	98c7883a 	add	r3,r19,r3
  8061c8:	19000017 	ldw	r4,0(r3)
  8061cc:	1144b03a 	or	r2,r2,r5
  8061d0:	197ffe04 	addi	r5,r3,-8
  8061d4:	81400315 	stw	r5,12(r16)
  8061d8:	81000215 	stw	r4,8(r16)
  8061dc:	98800115 	stw	r2,4(r19)
  8061e0:	1c000015 	stw	r16,0(r3)
  8061e4:	24000315 	stw	r16,12(r4)
  8061e8:	3807d0ba 	srai	r3,r7,2
  8061ec:	01000044 	movi	r4,1
  8061f0:	20c8983a 	sll	r4,r4,r3
  8061f4:	11004536 	bltu	r2,r4,80630c <_malloc_r+0x2c8>
  8061f8:	2086703a 	and	r3,r4,r2
  8061fc:	18000a1e 	bne	r3,zero,806228 <_malloc_r+0x1e4>
  806200:	00ffff04 	movi	r3,-4
  806204:	2109883a 	add	r4,r4,r4
  806208:	38ce703a 	and	r7,r7,r3
  80620c:	2086703a 	and	r3,r4,r2
  806210:	39c00104 	addi	r7,r7,4
  806214:	1800041e 	bne	r3,zero,806228 <_malloc_r+0x1e4>
  806218:	2109883a 	add	r4,r4,r4
  80621c:	2086703a 	and	r3,r4,r2
  806220:	39c00104 	addi	r7,r7,4
  806224:	183ffc26 	beq	r3,zero,806218 <_malloc_r+0x1d4>
  806228:	02bfff04 	movi	r10,-4
  80622c:	381690fa 	slli	r11,r7,3
  806230:	3819883a 	mov	r12,r7
  806234:	9ad7883a 	add	r11,r19,r11
  806238:	5811883a 	mov	r8,r11
  80623c:	40800317 	ldw	r2,12(r8)
  806240:	4080bc26 	beq	r8,r2,806534 <_malloc_r+0x4f0>
  806244:	10c00117 	ldw	r3,4(r2)
  806248:	1021883a 	mov	r16,r2
  80624c:	10800317 	ldw	r2,12(r2)
  806250:	1a86703a 	and	r3,r3,r10
  806254:	1c4bc83a 	sub	r5,r3,r17
  806258:	29800410 	cmplti	r6,r5,16
  80625c:	3000ba26 	beq	r6,zero,806548 <_malloc_r+0x504>
  806260:	283ff716 	blt	r5,zero,806240 <_malloc_r+0x1fc>
  806264:	80c7883a 	add	r3,r16,r3
  806268:	19400117 	ldw	r5,4(r3)
  80626c:	81800217 	ldw	r6,8(r16)
  806270:	9009883a 	mov	r4,r18
  806274:	29400054 	ori	r5,r5,1
  806278:	19400115 	stw	r5,4(r3)
  80627c:	30800315 	stw	r2,12(r6)
  806280:	11800215 	stw	r6,8(r2)
  806284:	080e4ac0 	call	80e4ac <__malloc_unlock>
  806288:	80800204 	addi	r2,r16,8
  80628c:	00000306 	br	80629c <_malloc_r+0x258>
  806290:	00800304 	movi	r2,12
  806294:	90800015 	stw	r2,0(r18)
  806298:	0005883a 	mov	r2,zero
  80629c:	dfc00917 	ldw	ra,36(sp)
  8062a0:	df000817 	ldw	fp,32(sp)
  8062a4:	ddc00717 	ldw	r23,28(sp)
  8062a8:	dd800617 	ldw	r22,24(sp)
  8062ac:	dd400517 	ldw	r21,20(sp)
  8062b0:	dd000417 	ldw	r20,16(sp)
  8062b4:	dcc00317 	ldw	r19,12(sp)
  8062b8:	dc800217 	ldw	r18,8(sp)
  8062bc:	dc400117 	ldw	r17,4(sp)
  8062c0:	dc000017 	ldw	r16,0(sp)
  8062c4:	dec00a04 	addi	sp,sp,40
  8062c8:	f800283a 	ret
  8062cc:	01008004 	movi	r4,512
  8062d0:	01c01004 	movi	r7,64
  8062d4:	02000fc4 	movi	r8,63
  8062d8:	003f9306 	br	806128 <_malloc_r+0xe4>
  8062dc:	14000317 	ldw	r16,12(r2)
  8062e0:	39c00084 	addi	r7,r7,2
  8062e4:	143f721e 	bne	r2,r16,8060b0 <_malloc_r+0x6c>
  8062e8:	9c000417 	ldw	r16,16(r19)
  8062ec:	02402074 	movhi	r9,129
  8062f0:	4a444304 	addi	r9,r9,4364
  8062f4:	827fa11e 	bne	r16,r9,80617c <_malloc_r+0x138>
  8062f8:	3807d0ba 	srai	r3,r7,2
  8062fc:	01000044 	movi	r4,1
  806300:	98800117 	ldw	r2,4(r19)
  806304:	20c8983a 	sll	r4,r4,r3
  806308:	113fbb2e 	bgeu	r2,r4,8061f8 <_malloc_r+0x1b4>
  80630c:	9c000217 	ldw	r16,8(r19)
  806310:	00bfff04 	movi	r2,-4
  806314:	85400117 	ldw	r21,4(r16)
  806318:	a8ac703a 	and	r22,r21,r2
  80631c:	b4400336 	bltu	r22,r17,80632c <_malloc_r+0x2e8>
  806320:	b445c83a 	sub	r2,r22,r17
  806324:	10c00408 	cmpgei	r3,r2,16
  806328:	1800541e 	bne	r3,zero,80647c <_malloc_r+0x438>
  80632c:	00802074 	movhi	r2,129
  806330:	108a2217 	ldw	r2,10376(r2)
  806334:	00c02074 	movhi	r3,129
  806338:	1d512617 	ldw	r21,17560(r3)
  80633c:	10bfffd8 	cmpnei	r2,r2,-1
  806340:	85b9883a 	add	fp,r16,r22
  806344:	8d6b883a 	add	r21,r17,r21
  806348:	1000d626 	beq	r2,zero,8066a4 <_malloc_r+0x660>
  80634c:	ad4403c4 	addi	r21,r21,4111
  806350:	00bc0004 	movi	r2,-4096
  806354:	a8aa703a 	and	r21,r21,r2
  806358:	a80b883a 	mov	r5,r21
  80635c:	9009883a 	mov	r4,r18
  806360:	08082b00 	call	8082b0 <_sbrk_r>
  806364:	102f883a 	mov	r23,r2
  806368:	10bfffd8 	cmpnei	r2,r2,-1
  80636c:	1000a826 	beq	r2,zero,806610 <_malloc_r+0x5cc>
  806370:	bf00a636 	bltu	r23,fp,80660c <_malloc_r+0x5c8>
  806374:	00802074 	movhi	r2,129
  806378:	15113017 	ldw	r20,17600(r2)
  80637c:	ad29883a 	add	r20,r21,r20
  806380:	15113015 	stw	r20,17600(r2)
  806384:	a007883a 	mov	r3,r20
  806388:	e5c0ec26 	beq	fp,r23,80673c <_malloc_r+0x6f8>
  80638c:	00802074 	movhi	r2,129
  806390:	108a2217 	ldw	r2,10376(r2)
  806394:	10bfffd8 	cmpnei	r2,r2,-1
  806398:	1000ef26 	beq	r2,zero,806758 <_malloc_r+0x714>
  80639c:	bf39c83a 	sub	fp,r23,fp
  8063a0:	e0c7883a 	add	r3,fp,r3
  8063a4:	00802074 	movhi	r2,129
  8063a8:	10d13015 	stw	r3,17600(r2)
  8063ac:	bf0001cc 	andi	fp,r23,7
  8063b0:	e000c526 	beq	fp,zero,8066c8 <_malloc_r+0x684>
  8063b4:	bf2fc83a 	sub	r23,r23,fp
  8063b8:	bdc00204 	addi	r23,r23,8
  8063bc:	05040204 	movi	r20,4104
  8063c0:	a729c83a 	sub	r20,r20,fp
  8063c4:	bd6b883a 	add	r21,r23,r21
  8063c8:	a569c83a 	sub	r20,r20,r21
  8063cc:	a503ffcc 	andi	r20,r20,4095
  8063d0:	a00b883a 	mov	r5,r20
  8063d4:	9009883a 	mov	r4,r18
  8063d8:	08082b00 	call	8082b0 <_sbrk_r>
  8063dc:	10ffffe0 	cmpeqi	r3,r2,-1
  8063e0:	1800f31e 	bne	r3,zero,8067b0 <_malloc_r+0x76c>
  8063e4:	15c5c83a 	sub	r2,r2,r23
  8063e8:	152b883a 	add	r21,r2,r20
  8063ec:	00802074 	movhi	r2,129
  8063f0:	11513017 	ldw	r5,17600(r2)
  8063f4:	9dc00215 	stw	r23,8(r19)
  8063f8:	ad400054 	ori	r21,r21,1
  8063fc:	a169883a 	add	r20,r20,r5
  806400:	15113015 	stw	r20,17600(r2)
  806404:	bd400115 	stw	r21,4(r23)
  806408:	84c0d626 	beq	r16,r19,806764 <_malloc_r+0x720>
  80640c:	b0800428 	cmpgeui	r2,r22,16
  806410:	1000d626 	beq	r2,zero,80676c <_malloc_r+0x728>
  806414:	80c00117 	ldw	r3,4(r16)
  806418:	013ffe04 	movi	r4,-8
  80641c:	b0bffd04 	addi	r2,r22,-12
  806420:	1104703a 	and	r2,r2,r4
  806424:	18c0004c 	andi	r3,r3,1
  806428:	1886b03a 	or	r3,r3,r2
  80642c:	80c00115 	stw	r3,4(r16)
  806430:	01000144 	movi	r4,5
  806434:	8087883a 	add	r3,r16,r2
  806438:	19000115 	stw	r4,4(r3)
  80643c:	19000215 	stw	r4,8(r3)
  806440:	10800428 	cmpgeui	r2,r2,16
  806444:	1000df1e 	bne	r2,zero,8067c4 <_malloc_r+0x780>
  806448:	bd400117 	ldw	r21,4(r23)
  80644c:	b821883a 	mov	r16,r23
  806450:	00802074 	movhi	r2,129
  806454:	10912517 	ldw	r2,17556(r2)
  806458:	1500022e 	bgeu	r2,r20,806464 <_malloc_r+0x420>
  80645c:	00802074 	movhi	r2,129
  806460:	15112515 	stw	r20,17556(r2)
  806464:	00802074 	movhi	r2,129
  806468:	10912417 	ldw	r2,17552(r2)
  80646c:	15006a2e 	bgeu	r2,r20,806618 <_malloc_r+0x5d4>
  806470:	00802074 	movhi	r2,129
  806474:	15112415 	stw	r20,17552(r2)
  806478:	00006706 	br	806618 <_malloc_r+0x5d4>
  80647c:	88c00054 	ori	r3,r17,1
  806480:	80c00115 	stw	r3,4(r16)
  806484:	8463883a 	add	r17,r16,r17
  806488:	10800054 	ori	r2,r2,1
  80648c:	9c400215 	stw	r17,8(r19)
  806490:	88800115 	stw	r2,4(r17)
  806494:	9009883a 	mov	r4,r18
  806498:	080e4ac0 	call	80e4ac <__malloc_unlock>
  80649c:	80800204 	addi	r2,r16,8
  8064a0:	003f7e06 	br	80629c <_malloc_r+0x258>
  8064a4:	81000317 	ldw	r4,12(r16)
  8064a8:	003f0506 	br	8060c0 <_malloc_r+0x7c>
  8064ac:	1006d27a 	srli	r3,r2,9
  8064b0:	19000168 	cmpgeui	r4,r3,5
  8064b4:	20005026 	beq	r4,zero,8065f8 <_malloc_r+0x5b4>
  8064b8:	19000568 	cmpgeui	r4,r3,21
  8064bc:	20008c1e 	bne	r4,zero,8066f0 <_malloc_r+0x6ac>
  8064c0:	19401704 	addi	r5,r3,92
  8064c4:	280a90fa 	slli	r5,r5,3
  8064c8:	190016c4 	addi	r4,r3,91
  8064cc:	994b883a 	add	r5,r19,r5
  8064d0:	28c00017 	ldw	r3,0(r5)
  8064d4:	297ffe04 	addi	r5,r5,-8
  8064d8:	28c07426 	beq	r5,r3,8066ac <_malloc_r+0x668>
  8064dc:	01bfff04 	movi	r6,-4
  8064e0:	19000117 	ldw	r4,4(r3)
  8064e4:	2188703a 	and	r4,r4,r6
  8064e8:	1100022e 	bgeu	r2,r4,8064f4 <_malloc_r+0x4b0>
  8064ec:	18c00217 	ldw	r3,8(r3)
  8064f0:	28fffb1e 	bne	r5,r3,8064e0 <_malloc_r+0x49c>
  8064f4:	19400317 	ldw	r5,12(r3)
  8064f8:	98800117 	ldw	r2,4(r19)
  8064fc:	81400315 	stw	r5,12(r16)
  806500:	80c00215 	stw	r3,8(r16)
  806504:	2c000215 	stw	r16,8(r5)
  806508:	1c000315 	stw	r16,12(r3)
  80650c:	003f3606 	br	8061e8 <_malloc_r+0x1a4>
  806510:	10c00568 	cmpgeui	r3,r2,21
  806514:	18004a26 	beq	r3,zero,806640 <_malloc_r+0x5fc>
  806518:	10c01568 	cmpgeui	r3,r2,85
  80651c:	18007b1e 	bne	r3,zero,80670c <_malloc_r+0x6c8>
  806520:	8804d33a 	srli	r2,r17,12
  806524:	11c01bc4 	addi	r7,r2,111
  806528:	380890fa 	slli	r4,r7,3
  80652c:	12001b84 	addi	r8,r2,110
  806530:	003efd06 	br	806128 <_malloc_r+0xe4>
  806534:	63000044 	addi	r12,r12,1
  806538:	608000cc 	andi	r2,r12,3
  80653c:	42000204 	addi	r8,r8,8
  806540:	103f3e1e 	bne	r2,zero,80623c <_malloc_r+0x1f8>
  806544:	00004506 	br	80665c <_malloc_r+0x618>
  806548:	81000217 	ldw	r4,8(r16)
  80654c:	89800054 	ori	r6,r17,1
  806550:	81800115 	stw	r6,4(r16)
  806554:	20800315 	stw	r2,12(r4)
  806558:	11000215 	stw	r4,8(r2)
  80655c:	8463883a 	add	r17,r16,r17
  806560:	9c400515 	stw	r17,20(r19)
  806564:	9c400415 	stw	r17,16(r19)
  806568:	28800054 	ori	r2,r5,1
  80656c:	88800115 	stw	r2,4(r17)
  806570:	8a400315 	stw	r9,12(r17)
  806574:	8a400215 	stw	r9,8(r17)
  806578:	80c7883a 	add	r3,r16,r3
  80657c:	19400015 	stw	r5,0(r3)
  806580:	9009883a 	mov	r4,r18
  806584:	080e4ac0 	call	80e4ac <__malloc_unlock>
  806588:	80800204 	addi	r2,r16,8
  80658c:	003f4306 	br	80629c <_malloc_r+0x258>
  806590:	880ed0fa 	srli	r7,r17,3
  806594:	88800204 	addi	r2,r17,8
  806598:	003ebf06 	br	806098 <_malloc_r+0x54>
  80659c:	8085883a 	add	r2,r16,r2
  8065a0:	10c00117 	ldw	r3,4(r2)
  8065a4:	9009883a 	mov	r4,r18
  8065a8:	18c00054 	ori	r3,r3,1
  8065ac:	10c00115 	stw	r3,4(r2)
  8065b0:	080e4ac0 	call	80e4ac <__malloc_unlock>
  8065b4:	80800204 	addi	r2,r16,8
  8065b8:	003f3806 	br	80629c <_malloc_r+0x258>
  8065bc:	89000054 	ori	r4,r17,1
  8065c0:	81000115 	stw	r4,4(r16)
  8065c4:	8463883a 	add	r17,r16,r17
  8065c8:	9c400515 	stw	r17,20(r19)
  8065cc:	9c400415 	stw	r17,16(r19)
  8065d0:	19000054 	ori	r4,r3,1
  8065d4:	89000115 	stw	r4,4(r17)
  8065d8:	8085883a 	add	r2,r16,r2
  8065dc:	8a400315 	stw	r9,12(r17)
  8065e0:	8a400215 	stw	r9,8(r17)
  8065e4:	10c00015 	stw	r3,0(r2)
  8065e8:	9009883a 	mov	r4,r18
  8065ec:	080e4ac0 	call	80e4ac <__malloc_unlock>
  8065f0:	80800204 	addi	r2,r16,8
  8065f4:	003f2906 	br	80629c <_malloc_r+0x258>
  8065f8:	1006d1ba 	srli	r3,r2,6
  8065fc:	19400e44 	addi	r5,r3,57
  806600:	280a90fa 	slli	r5,r5,3
  806604:	19000e04 	addi	r4,r3,56
  806608:	003fb006 	br	8064cc <_malloc_r+0x488>
  80660c:	84c04626 	beq	r16,r19,806728 <_malloc_r+0x6e4>
  806610:	9c000217 	ldw	r16,8(r19)
  806614:	85400117 	ldw	r21,4(r16)
  806618:	00bfff04 	movi	r2,-4
  80661c:	a8aa703a 	and	r21,r21,r2
  806620:	ac45c83a 	sub	r2,r21,r17
  806624:	ac400236 	bltu	r21,r17,806630 <_malloc_r+0x5ec>
  806628:	10c00408 	cmpgei	r3,r2,16
  80662c:	183f931e 	bne	r3,zero,80647c <_malloc_r+0x438>
  806630:	9009883a 	mov	r4,r18
  806634:	080e4ac0 	call	80e4ac <__malloc_unlock>
  806638:	0005883a 	mov	r2,zero
  80663c:	003f1706 	br	80629c <_malloc_r+0x258>
  806640:	11c01704 	addi	r7,r2,92
  806644:	380890fa 	slli	r4,r7,3
  806648:	120016c4 	addi	r8,r2,91
  80664c:	003eb606 	br	806128 <_malloc_r+0xe4>
  806650:	58800217 	ldw	r2,8(r11)
  806654:	39ffffc4 	addi	r7,r7,-1
  806658:	12c0701e 	bne	r2,r11,80681c <_malloc_r+0x7d8>
  80665c:	388000cc 	andi	r2,r7,3
  806660:	5afffe04 	addi	r11,r11,-8
  806664:	103ffa1e 	bne	r2,zero,806650 <_malloc_r+0x60c>
  806668:	98c00117 	ldw	r3,4(r19)
  80666c:	0104303a 	nor	r2,zero,r4
  806670:	10c4703a 	and	r2,r2,r3
  806674:	98800115 	stw	r2,4(r19)
  806678:	2109883a 	add	r4,r4,r4
  80667c:	113f2336 	bltu	r2,r4,80630c <_malloc_r+0x2c8>
  806680:	203f2226 	beq	r4,zero,80630c <_malloc_r+0x2c8>
  806684:	2086703a 	and	r3,r4,r2
  806688:	1800041e 	bne	r3,zero,80669c <_malloc_r+0x658>
  80668c:	2109883a 	add	r4,r4,r4
  806690:	2086703a 	and	r3,r4,r2
  806694:	63000104 	addi	r12,r12,4
  806698:	183ffc26 	beq	r3,zero,80668c <_malloc_r+0x648>
  80669c:	600f883a 	mov	r7,r12
  8066a0:	003ee206 	br	80622c <_malloc_r+0x1e8>
  8066a4:	ad400404 	addi	r21,r21,16
  8066a8:	003f2b06 	br	806358 <_malloc_r+0x314>
  8066ac:	2009d0ba 	srai	r4,r4,2
  8066b0:	00800044 	movi	r2,1
  8066b4:	99800117 	ldw	r6,4(r19)
  8066b8:	1104983a 	sll	r2,r2,r4
  8066bc:	1184b03a 	or	r2,r2,r6
  8066c0:	98800115 	stw	r2,4(r19)
  8066c4:	003f8d06 	br	8064fc <_malloc_r+0x4b8>
  8066c8:	bd69883a 	add	r20,r23,r21
  8066cc:	0529c83a 	sub	r20,zero,r20
  8066d0:	a503ffcc 	andi	r20,r20,4095
  8066d4:	a00b883a 	mov	r5,r20
  8066d8:	9009883a 	mov	r4,r18
  8066dc:	08082b00 	call	8082b0 <_sbrk_r>
  8066e0:	10ffffe0 	cmpeqi	r3,r2,-1
  8066e4:	183f3f26 	beq	r3,zero,8063e4 <_malloc_r+0x3a0>
  8066e8:	0029883a 	mov	r20,zero
  8066ec:	003f3f06 	br	8063ec <_malloc_r+0x3a8>
  8066f0:	19001568 	cmpgeui	r4,r3,85
  8066f4:	2000201e 	bne	r4,zero,806778 <_malloc_r+0x734>
  8066f8:	1006d33a 	srli	r3,r2,12
  8066fc:	19401bc4 	addi	r5,r3,111
  806700:	280a90fa 	slli	r5,r5,3
  806704:	19001b84 	addi	r4,r3,110
  806708:	003f7006 	br	8064cc <_malloc_r+0x488>
  80670c:	10c05568 	cmpgeui	r3,r2,341
  806710:	1800201e 	bne	r3,zero,806794 <_malloc_r+0x750>
  806714:	8804d3fa 	srli	r2,r17,15
  806718:	11c01e04 	addi	r7,r2,120
  80671c:	380890fa 	slli	r4,r7,3
  806720:	12001dc4 	addi	r8,r2,119
  806724:	003e8006 	br	806128 <_malloc_r+0xe4>
  806728:	00802074 	movhi	r2,129
  80672c:	10d13017 	ldw	r3,17600(r2)
  806730:	a8c7883a 	add	r3,r21,r3
  806734:	10d13015 	stw	r3,17600(r2)
  806738:	003f1406 	br	80638c <_malloc_r+0x348>
  80673c:	e083ffcc 	andi	r2,fp,4095
  806740:	103f121e 	bne	r2,zero,80638c <_malloc_r+0x348>
  806744:	9c000217 	ldw	r16,8(r19)
  806748:	b56b883a 	add	r21,r22,r21
  80674c:	ad400054 	ori	r21,r21,1
  806750:	85400115 	stw	r21,4(r16)
  806754:	003f3e06 	br	806450 <_malloc_r+0x40c>
  806758:	00802074 	movhi	r2,129
  80675c:	15ca2215 	stw	r23,10376(r2)
  806760:	003f1206 	br	8063ac <_malloc_r+0x368>
  806764:	b821883a 	mov	r16,r23
  806768:	003f3906 	br	806450 <_malloc_r+0x40c>
  80676c:	00800044 	movi	r2,1
  806770:	b8800115 	stw	r2,4(r23)
  806774:	003fae06 	br	806630 <_malloc_r+0x5ec>
  806778:	19005568 	cmpgeui	r4,r3,341
  80677c:	2000191e 	bne	r4,zero,8067e4 <_malloc_r+0x7a0>
  806780:	1006d3fa 	srli	r3,r2,15
  806784:	19401e04 	addi	r5,r3,120
  806788:	280a90fa 	slli	r5,r5,3
  80678c:	19001dc4 	addi	r4,r3,119
  806790:	003f4e06 	br	8064cc <_malloc_r+0x488>
  806794:	10815568 	cmpgeui	r2,r2,1365
  806798:	1000191e 	bne	r2,zero,806800 <_malloc_r+0x7bc>
  80679c:	8804d4ba 	srli	r2,r17,18
  8067a0:	11c01f44 	addi	r7,r2,125
  8067a4:	380890fa 	slli	r4,r7,3
  8067a8:	12001f04 	addi	r8,r2,124
  8067ac:	003e5e06 	br	806128 <_malloc_r+0xe4>
  8067b0:	e73ffe04 	addi	fp,fp,-8
  8067b4:	af2b883a 	add	r21,r21,fp
  8067b8:	adebc83a 	sub	r21,r21,r23
  8067bc:	0029883a 	mov	r20,zero
  8067c0:	003f0a06 	br	8063ec <_malloc_r+0x3a8>
  8067c4:	81400204 	addi	r5,r16,8
  8067c8:	9009883a 	mov	r4,r18
  8067cc:	08055440 	call	805544 <_free_r>
  8067d0:	9c000217 	ldw	r16,8(r19)
  8067d4:	00802074 	movhi	r2,129
  8067d8:	15113017 	ldw	r20,17600(r2)
  8067dc:	85400117 	ldw	r21,4(r16)
  8067e0:	003f1b06 	br	806450 <_malloc_r+0x40c>
  8067e4:	18c15568 	cmpgeui	r3,r3,1365
  8067e8:	1800091e 	bne	r3,zero,806810 <_malloc_r+0x7cc>
  8067ec:	1006d4ba 	srli	r3,r2,18
  8067f0:	19401f44 	addi	r5,r3,125
  8067f4:	280a90fa 	slli	r5,r5,3
  8067f8:	19001f04 	addi	r4,r3,124
  8067fc:	003f3306 	br	8064cc <_malloc_r+0x488>
  806800:	0100fe04 	movi	r4,1016
  806804:	01c01fc4 	movi	r7,127
  806808:	02001f84 	movi	r8,126
  80680c:	003e4606 	br	806128 <_malloc_r+0xe4>
  806810:	0140fe04 	movi	r5,1016
  806814:	01001f84 	movi	r4,126
  806818:	003f2c06 	br	8064cc <_malloc_r+0x488>
  80681c:	98800117 	ldw	r2,4(r19)
  806820:	003f9506 	br	806678 <_malloc_r+0x634>

00806824 <memchr>:
  806824:	208000cc 	andi	r2,r4,3
  806828:	280f883a 	mov	r7,r5
  80682c:	10000e26 	beq	r2,zero,806868 <memchr+0x44>
  806830:	30bfffc4 	addi	r2,r6,-1
  806834:	30001726 	beq	r6,zero,806894 <memchr+0x70>
  806838:	29803fcc 	andi	r6,r5,255
  80683c:	00000606 	br	806858 <memchr+0x34>
  806840:	21000044 	addi	r4,r4,1
  806844:	20c000cc 	andi	r3,r4,3
  806848:	18000826 	beq	r3,zero,80686c <memchr+0x48>
  80684c:	10bfffc4 	addi	r2,r2,-1
  806850:	10ffffe0 	cmpeqi	r3,r2,-1
  806854:	18000f1e 	bne	r3,zero,806894 <memchr+0x70>
  806858:	20c00003 	ldbu	r3,0(r4)
  80685c:	19bff81e 	bne	r3,r6,806840 <memchr+0x1c>
  806860:	2005883a 	mov	r2,r4
  806864:	f800283a 	ret
  806868:	3005883a 	mov	r2,r6
  80686c:	10c00128 	cmpgeui	r3,r2,4
  806870:	18000a1e 	bne	r3,zero,80689c <memchr+0x78>
  806874:	10001f26 	beq	r2,zero,8068f4 <memchr+0xd0>
  806878:	2087883a 	add	r3,r4,r2
  80687c:	39803fcc 	andi	r6,r7,255
  806880:	2005883a 	mov	r2,r4
  806884:	11000003 	ldbu	r4,0(r2)
  806888:	21bff626 	beq	r4,r6,806864 <memchr+0x40>
  80688c:	10800044 	addi	r2,r2,1
  806890:	18bffc1e 	bne	r3,r2,806884 <memchr+0x60>
  806894:	0005883a 	mov	r2,zero
  806898:	f800283a 	ret
  80689c:	2810923a 	slli	r8,r5,8
  8068a0:	29403fcc 	andi	r5,r5,255
  8068a4:	027fbff4 	movhi	r9,65279
  8068a8:	423fffcc 	andi	r8,r8,65535
  8068ac:	414ab03a 	or	r5,r8,r5
  8068b0:	2810943a 	slli	r8,r5,16
  8068b4:	01a02074 	movhi	r6,32897
  8068b8:	4a7fbfc4 	addi	r9,r9,-257
  8068bc:	4150b03a 	or	r8,r8,r5
  8068c0:	31a02004 	addi	r6,r6,-32640
  8068c4:	20c00017 	ldw	r3,0(r4)
  8068c8:	40c6f03a 	xor	r3,r8,r3
  8068cc:	1a4b883a 	add	r5,r3,r9
  8068d0:	00c6303a 	nor	r3,zero,r3
  8068d4:	28c6703a 	and	r3,r5,r3
  8068d8:	1986703a 	and	r3,r3,r6
  8068dc:	183fe61e 	bne	r3,zero,806878 <memchr+0x54>
  8068e0:	10bfff04 	addi	r2,r2,-4
  8068e4:	10c00128 	cmpgeui	r3,r2,4
  8068e8:	21000104 	addi	r4,r4,4
  8068ec:	183ff51e 	bne	r3,zero,8068c4 <memchr+0xa0>
  8068f0:	003fe006 	br	806874 <memchr+0x50>
  8068f4:	f800283a 	ret

008068f8 <memcpy>:
  8068f8:	30c00430 	cmpltui	r3,r6,16
  8068fc:	2005883a 	mov	r2,r4
  806900:	18002d1e 	bne	r3,zero,8069b8 <memcpy+0xc0>
  806904:	2906b03a 	or	r3,r5,r4
  806908:	18c000cc 	andi	r3,r3,3
  80690c:	1800351e 	bne	r3,zero,8069e4 <memcpy+0xec>
  806910:	32fffc04 	addi	r11,r6,-16
  806914:	5816d13a 	srli	r11,r11,4
  806918:	280f883a 	mov	r7,r5
  80691c:	2007883a 	mov	r3,r4
  806920:	5ac00044 	addi	r11,r11,1
  806924:	5816913a 	slli	r11,r11,4
  806928:	22d5883a 	add	r10,r4,r11
  80692c:	39000117 	ldw	r4,4(r7)
  806930:	3a400017 	ldw	r9,0(r7)
  806934:	3a000217 	ldw	r8,8(r7)
  806938:	19000115 	stw	r4,4(r3)
  80693c:	39000317 	ldw	r4,12(r7)
  806940:	1a400015 	stw	r9,0(r3)
  806944:	1a000215 	stw	r8,8(r3)
  806948:	19000315 	stw	r4,12(r3)
  80694c:	18c00404 	addi	r3,r3,16
  806950:	39c00404 	addi	r7,r7,16
  806954:	50fff51e 	bne	r10,r3,80692c <memcpy+0x34>
  806958:	3100030c 	andi	r4,r6,12
  80695c:	2acb883a 	add	r5,r5,r11
  806960:	320003cc 	andi	r8,r6,15
  806964:	20002226 	beq	r4,zero,8069f0 <memcpy+0xf8>
  806968:	280f883a 	mov	r7,r5
  80696c:	1813883a 	mov	r9,r3
  806970:	39c00104 	addi	r7,r7,4
  806974:	3abfff17 	ldw	r10,-4(r7)
  806978:	41c9c83a 	sub	r4,r8,r7
  80697c:	2909883a 	add	r4,r5,r4
  806980:	4a800015 	stw	r10,0(r9)
  806984:	21000128 	cmpgeui	r4,r4,4
  806988:	4a400104 	addi	r9,r9,4
  80698c:	203ff81e 	bne	r4,zero,806970 <memcpy+0x78>
  806990:	413fff04 	addi	r4,r8,-4
  806994:	2008d0ba 	srli	r4,r4,2
  806998:	318000cc 	andi	r6,r6,3
  80699c:	31ffffc4 	addi	r7,r6,-1
  8069a0:	21000044 	addi	r4,r4,1
  8069a4:	200890ba 	slli	r4,r4,2
  8069a8:	1907883a 	add	r3,r3,r4
  8069ac:	290b883a 	add	r5,r5,r4
  8069b0:	3000041e 	bne	r6,zero,8069c4 <memcpy+0xcc>
  8069b4:	f800283a 	ret
  8069b8:	2007883a 	mov	r3,r4
  8069bc:	31ffffc4 	addi	r7,r6,-1
  8069c0:	303ffc26 	beq	r6,zero,8069b4 <memcpy+0xbc>
  8069c4:	39c00044 	addi	r7,r7,1
  8069c8:	19cf883a 	add	r7,r3,r7
  8069cc:	29800003 	ldbu	r6,0(r5)
  8069d0:	18c00044 	addi	r3,r3,1
  8069d4:	29400044 	addi	r5,r5,1
  8069d8:	19bfffc5 	stb	r6,-1(r3)
  8069dc:	38fffb1e 	bne	r7,r3,8069cc <memcpy+0xd4>
  8069e0:	f800283a 	ret
  8069e4:	31ffffc4 	addi	r7,r6,-1
  8069e8:	2007883a 	mov	r3,r4
  8069ec:	003ff506 	br	8069c4 <memcpy+0xcc>
  8069f0:	400d883a 	mov	r6,r8
  8069f4:	003ff106 	br	8069bc <memcpy+0xc4>

008069f8 <memmove>:
  8069f8:	2005883a 	mov	r2,r4
  8069fc:	29000a2e 	bgeu	r5,r4,806a28 <memmove+0x30>
  806a00:	2989883a 	add	r4,r5,r6
  806a04:	1100082e 	bgeu	r2,r4,806a28 <memmove+0x30>
  806a08:	1187883a 	add	r3,r2,r6
  806a0c:	30003e26 	beq	r6,zero,806b08 <memmove+0x110>
  806a10:	217fffc3 	ldbu	r5,-1(r4)
  806a14:	18ffffc4 	addi	r3,r3,-1
  806a18:	213fffc4 	addi	r4,r4,-1
  806a1c:	19400005 	stb	r5,0(r3)
  806a20:	10fffb1e 	bne	r2,r3,806a10 <memmove+0x18>
  806a24:	f800283a 	ret
  806a28:	30c00430 	cmpltui	r3,r6,16
  806a2c:	18000b26 	beq	r3,zero,806a5c <memmove+0x64>
  806a30:	1007883a 	mov	r3,r2
  806a34:	31ffffc4 	addi	r7,r6,-1
  806a38:	30003726 	beq	r6,zero,806b18 <memmove+0x120>
  806a3c:	39c00044 	addi	r7,r7,1
  806a40:	29cf883a 	add	r7,r5,r7
  806a44:	29800003 	ldbu	r6,0(r5)
  806a48:	29400044 	addi	r5,r5,1
  806a4c:	18c00044 	addi	r3,r3,1
  806a50:	19bfffc5 	stb	r6,-1(r3)
  806a54:	29fffb1e 	bne	r5,r7,806a44 <memmove+0x4c>
  806a58:	f800283a 	ret
  806a5c:	2886b03a 	or	r3,r5,r2
  806a60:	18c000cc 	andi	r3,r3,3
  806a64:	1800291e 	bne	r3,zero,806b0c <memmove+0x114>
  806a68:	327ffc04 	addi	r9,r6,-16
  806a6c:	4812d13a 	srli	r9,r9,4
  806a70:	280f883a 	mov	r7,r5
  806a74:	1007883a 	mov	r3,r2
  806a78:	4a400044 	addi	r9,r9,1
  806a7c:	4812913a 	slli	r9,r9,4
  806a80:	1251883a 	add	r8,r2,r9
  806a84:	39000017 	ldw	r4,0(r7)
  806a88:	39c00404 	addi	r7,r7,16
  806a8c:	18c00404 	addi	r3,r3,16
  806a90:	193ffc15 	stw	r4,-16(r3)
  806a94:	393ffd17 	ldw	r4,-12(r7)
  806a98:	193ffd15 	stw	r4,-12(r3)
  806a9c:	393ffe17 	ldw	r4,-8(r7)
  806aa0:	193ffe15 	stw	r4,-8(r3)
  806aa4:	393fff17 	ldw	r4,-4(r7)
  806aa8:	193fff15 	stw	r4,-4(r3)
  806aac:	40fff51e 	bne	r8,r3,806a84 <memmove+0x8c>
  806ab0:	3100030c 	andi	r4,r6,12
  806ab4:	2a4b883a 	add	r5,r5,r9
  806ab8:	320003cc 	andi	r8,r6,15
  806abc:	20001726 	beq	r4,zero,806b1c <memmove+0x124>
  806ac0:	2813883a 	mov	r9,r5
  806ac4:	180f883a 	mov	r7,r3
  806ac8:	4a800017 	ldw	r10,0(r9)
  806acc:	39c00104 	addi	r7,r7,4
  806ad0:	41c9c83a 	sub	r4,r8,r7
  806ad4:	1909883a 	add	r4,r3,r4
  806ad8:	21000128 	cmpgeui	r4,r4,4
  806adc:	3abfff15 	stw	r10,-4(r7)
  806ae0:	4a400104 	addi	r9,r9,4
  806ae4:	203ff81e 	bne	r4,zero,806ac8 <memmove+0xd0>
  806ae8:	413fff04 	addi	r4,r8,-4
  806aec:	2008d0ba 	srli	r4,r4,2
  806af0:	318000cc 	andi	r6,r6,3
  806af4:	21000044 	addi	r4,r4,1
  806af8:	200890ba 	slli	r4,r4,2
  806afc:	1907883a 	add	r3,r3,r4
  806b00:	290b883a 	add	r5,r5,r4
  806b04:	003fcb06 	br	806a34 <memmove+0x3c>
  806b08:	f800283a 	ret
  806b0c:	31ffffc4 	addi	r7,r6,-1
  806b10:	1007883a 	mov	r3,r2
  806b14:	003fc906 	br	806a3c <memmove+0x44>
  806b18:	f800283a 	ret
  806b1c:	400d883a 	mov	r6,r8
  806b20:	003fc406 	br	806a34 <memmove+0x3c>

00806b24 <memset>:
  806b24:	20c000cc 	andi	r3,r4,3
  806b28:	2005883a 	mov	r2,r4
  806b2c:	18003626 	beq	r3,zero,806c08 <memset+0xe4>
  806b30:	31ffffc4 	addi	r7,r6,-1
  806b34:	30003326 	beq	r6,zero,806c04 <memset+0xe0>
  806b38:	2811883a 	mov	r8,r5
  806b3c:	2007883a 	mov	r3,r4
  806b40:	00000306 	br	806b50 <memset+0x2c>
  806b44:	39ffffc4 	addi	r7,r7,-1
  806b48:	39bfffe0 	cmpeqi	r6,r7,-1
  806b4c:	30002d1e 	bne	r6,zero,806c04 <memset+0xe0>
  806b50:	18c00044 	addi	r3,r3,1
  806b54:	198000cc 	andi	r6,r3,3
  806b58:	1a3fffc5 	stb	r8,-1(r3)
  806b5c:	303ff91e 	bne	r6,zero,806b44 <memset+0x20>
  806b60:	39000130 	cmpltui	r4,r7,4
  806b64:	2000221e 	bne	r4,zero,806bf0 <memset+0xcc>
  806b68:	29003fcc 	andi	r4,r5,255
  806b6c:	200c923a 	slli	r6,r4,8
  806b70:	3a000430 	cmpltui	r8,r7,16
  806b74:	3108b03a 	or	r4,r6,r4
  806b78:	200c943a 	slli	r6,r4,16
  806b7c:	310cb03a 	or	r6,r6,r4
  806b80:	40000e1e 	bne	r8,zero,806bbc <memset+0x98>
  806b84:	393ffc04 	addi	r4,r7,-16
  806b88:	2008d13a 	srli	r4,r4,4
  806b8c:	21000044 	addi	r4,r4,1
  806b90:	2008913a 	slli	r4,r4,4
  806b94:	1909883a 	add	r4,r3,r4
  806b98:	19800015 	stw	r6,0(r3)
  806b9c:	19800115 	stw	r6,4(r3)
  806ba0:	19800215 	stw	r6,8(r3)
  806ba4:	19800315 	stw	r6,12(r3)
  806ba8:	18c00404 	addi	r3,r3,16
  806bac:	20fffa1e 	bne	r4,r3,806b98 <memset+0x74>
  806bb0:	3900030c 	andi	r4,r7,12
  806bb4:	39c003cc 	andi	r7,r7,15
  806bb8:	20000d26 	beq	r4,zero,806bf0 <memset+0xcc>
  806bbc:	1811883a 	mov	r8,r3
  806bc0:	42000104 	addi	r8,r8,4
  806bc4:	3a09c83a 	sub	r4,r7,r8
  806bc8:	1909883a 	add	r4,r3,r4
  806bcc:	21000128 	cmpgeui	r4,r4,4
  806bd0:	41bfff15 	stw	r6,-4(r8)
  806bd4:	203ffa1e 	bne	r4,zero,806bc0 <memset+0x9c>
  806bd8:	393fff04 	addi	r4,r7,-4
  806bdc:	2008d0ba 	srli	r4,r4,2
  806be0:	39c000cc 	andi	r7,r7,3
  806be4:	21000044 	addi	r4,r4,1
  806be8:	200890ba 	slli	r4,r4,2
  806bec:	1907883a 	add	r3,r3,r4
  806bf0:	38000426 	beq	r7,zero,806c04 <memset+0xe0>
  806bf4:	19cf883a 	add	r7,r3,r7
  806bf8:	18c00044 	addi	r3,r3,1
  806bfc:	197fffc5 	stb	r5,-1(r3)
  806c00:	38fffd1e 	bne	r7,r3,806bf8 <memset+0xd4>
  806c04:	f800283a 	ret
  806c08:	2007883a 	mov	r3,r4
  806c0c:	300f883a 	mov	r7,r6
  806c10:	003fd306 	br	806b60 <memset+0x3c>

00806c14 <_Balloc>:
  806c14:	20801317 	ldw	r2,76(r4)
  806c18:	defffc04 	addi	sp,sp,-16
  806c1c:	dc400115 	stw	r17,4(sp)
  806c20:	dc000015 	stw	r16,0(sp)
  806c24:	dfc00315 	stw	ra,12(sp)
  806c28:	dc800215 	stw	r18,8(sp)
  806c2c:	2021883a 	mov	r16,r4
  806c30:	2823883a 	mov	r17,r5
  806c34:	10000e26 	beq	r2,zero,806c70 <_Balloc+0x5c>
  806c38:	880690ba 	slli	r3,r17,2
  806c3c:	10c7883a 	add	r3,r2,r3
  806c40:	18800017 	ldw	r2,0(r3)
  806c44:	10001126 	beq	r2,zero,806c8c <_Balloc+0x78>
  806c48:	11000017 	ldw	r4,0(r2)
  806c4c:	19000015 	stw	r4,0(r3)
  806c50:	10000415 	stw	zero,16(r2)
  806c54:	10000315 	stw	zero,12(r2)
  806c58:	dfc00317 	ldw	ra,12(sp)
  806c5c:	dc800217 	ldw	r18,8(sp)
  806c60:	dc400117 	ldw	r17,4(sp)
  806c64:	dc000017 	ldw	r16,0(sp)
  806c68:	dec00404 	addi	sp,sp,16
  806c6c:	f800283a 	ret
  806c70:	01800844 	movi	r6,33
  806c74:	01400104 	movi	r5,4
  806c78:	0809a780 	call	809a78 <_calloc_r>
  806c7c:	80801315 	stw	r2,76(r16)
  806c80:	103fed1e 	bne	r2,zero,806c38 <_Balloc+0x24>
  806c84:	0005883a 	mov	r2,zero
  806c88:	003ff306 	br	806c58 <_Balloc+0x44>
  806c8c:	04800044 	movi	r18,1
  806c90:	9464983a 	sll	r18,r18,r17
  806c94:	01400044 	movi	r5,1
  806c98:	8009883a 	mov	r4,r16
  806c9c:	91800144 	addi	r6,r18,5
  806ca0:	300c90ba 	slli	r6,r6,2
  806ca4:	0809a780 	call	809a78 <_calloc_r>
  806ca8:	103ff626 	beq	r2,zero,806c84 <_Balloc+0x70>
  806cac:	14400115 	stw	r17,4(r2)
  806cb0:	14800215 	stw	r18,8(r2)
  806cb4:	003fe606 	br	806c50 <_Balloc+0x3c>

00806cb8 <_Bfree>:
  806cb8:	28000726 	beq	r5,zero,806cd8 <_Bfree+0x20>
  806cbc:	28c00117 	ldw	r3,4(r5)
  806cc0:	20801317 	ldw	r2,76(r4)
  806cc4:	180690ba 	slli	r3,r3,2
  806cc8:	10c5883a 	add	r2,r2,r3
  806ccc:	10c00017 	ldw	r3,0(r2)
  806cd0:	28c00015 	stw	r3,0(r5)
  806cd4:	11400015 	stw	r5,0(r2)
  806cd8:	f800283a 	ret

00806cdc <__multadd>:
  806cdc:	defff704 	addi	sp,sp,-36
  806ce0:	dc800215 	stw	r18,8(sp)
  806ce4:	2c800417 	ldw	r18,16(r5)
  806ce8:	ddc00715 	stw	r23,28(sp)
  806cec:	dd800615 	stw	r22,24(sp)
  806cf0:	dd400515 	stw	r21,20(sp)
  806cf4:	dd000415 	stw	r20,16(sp)
  806cf8:	dcc00315 	stw	r19,12(sp)
  806cfc:	dc400115 	stw	r17,4(sp)
  806d00:	dfc00815 	stw	ra,32(sp)
  806d04:	dc000015 	stw	r16,0(sp)
  806d08:	2827883a 	mov	r19,r5
  806d0c:	2029883a 	mov	r20,r4
  806d10:	302b883a 	mov	r21,r6
  806d14:	3823883a 	mov	r17,r7
  806d18:	2d800504 	addi	r22,r5,20
  806d1c:	002f883a 	mov	r23,zero
  806d20:	b4000017 	ldw	r16,0(r22)
  806d24:	a80b883a 	mov	r5,r21
  806d28:	b5800104 	addi	r22,r22,4
  806d2c:	813fffcc 	andi	r4,r16,65535
  806d30:	0800f8c0 	call	800f8c <__mulsi3>
  806d34:	8008d43a 	srli	r4,r16,16
  806d38:	a80b883a 	mov	r5,r21
  806d3c:	1461883a 	add	r16,r2,r17
  806d40:	0800f8c0 	call	800f8c <__mulsi3>
  806d44:	800ed43a 	srli	r7,r16,16
  806d48:	843fffcc 	andi	r16,r16,65535
  806d4c:	bdc00044 	addi	r23,r23,1
  806d50:	11c5883a 	add	r2,r2,r7
  806d54:	1006943a 	slli	r3,r2,16
  806d58:	1022d43a 	srli	r17,r2,16
  806d5c:	1c21883a 	add	r16,r3,r16
  806d60:	b43fff15 	stw	r16,-4(r22)
  806d64:	bcbfee16 	blt	r23,r18,806d20 <__multadd+0x44>
  806d68:	88000826 	beq	r17,zero,806d8c <__multadd+0xb0>
  806d6c:	98800217 	ldw	r2,8(r19)
  806d70:	9080120e 	bge	r18,r2,806dbc <__multadd+0xe0>
  806d74:	90800144 	addi	r2,r18,5
  806d78:	100490ba 	slli	r2,r2,2
  806d7c:	94800044 	addi	r18,r18,1
  806d80:	9885883a 	add	r2,r19,r2
  806d84:	14400015 	stw	r17,0(r2)
  806d88:	9c800415 	stw	r18,16(r19)
  806d8c:	9805883a 	mov	r2,r19
  806d90:	dfc00817 	ldw	ra,32(sp)
  806d94:	ddc00717 	ldw	r23,28(sp)
  806d98:	dd800617 	ldw	r22,24(sp)
  806d9c:	dd400517 	ldw	r21,20(sp)
  806da0:	dd000417 	ldw	r20,16(sp)
  806da4:	dcc00317 	ldw	r19,12(sp)
  806da8:	dc800217 	ldw	r18,8(sp)
  806dac:	dc400117 	ldw	r17,4(sp)
  806db0:	dc000017 	ldw	r16,0(sp)
  806db4:	dec00904 	addi	sp,sp,36
  806db8:	f800283a 	ret
  806dbc:	99400117 	ldw	r5,4(r19)
  806dc0:	a009883a 	mov	r4,r20
  806dc4:	29400044 	addi	r5,r5,1
  806dc8:	0806c140 	call	806c14 <_Balloc>
  806dcc:	1021883a 	mov	r16,r2
  806dd0:	10001226 	beq	r2,zero,806e1c <__multadd+0x140>
  806dd4:	99800417 	ldw	r6,16(r19)
  806dd8:	99400304 	addi	r5,r19,12
  806ddc:	11000304 	addi	r4,r2,12
  806de0:	31800084 	addi	r6,r6,2
  806de4:	300c90ba 	slli	r6,r6,2
  806de8:	08068f80 	call	8068f8 <memcpy>
  806dec:	98000926 	beq	r19,zero,806e14 <__multadd+0x138>
  806df0:	98c00117 	ldw	r3,4(r19)
  806df4:	a0801317 	ldw	r2,76(r20)
  806df8:	180690ba 	slli	r3,r3,2
  806dfc:	10c5883a 	add	r2,r2,r3
  806e00:	10c00017 	ldw	r3,0(r2)
  806e04:	98c00015 	stw	r3,0(r19)
  806e08:	14c00015 	stw	r19,0(r2)
  806e0c:	8027883a 	mov	r19,r16
  806e10:	003fd806 	br	806d74 <__multadd+0x98>
  806e14:	8027883a 	mov	r19,r16
  806e18:	003fd606 	br	806d74 <__multadd+0x98>
  806e1c:	01c02074 	movhi	r7,129
  806e20:	01002074 	movhi	r4,129
  806e24:	39c20204 	addi	r7,r7,2056
  806e28:	000d883a 	mov	r6,zero
  806e2c:	01402d44 	movi	r5,181
  806e30:	21021704 	addi	r4,r4,2140
  806e34:	0809a000 	call	809a00 <__assert_func>

00806e38 <__s2b>:
  806e38:	defff904 	addi	sp,sp,-28
  806e3c:	dc800215 	stw	r18,8(sp)
  806e40:	dc000015 	stw	r16,0(sp)
  806e44:	2025883a 	mov	r18,r4
  806e48:	2821883a 	mov	r16,r5
  806e4c:	39000204 	addi	r4,r7,8
  806e50:	01400244 	movi	r5,9
  806e54:	dcc00315 	stw	r19,12(sp)
  806e58:	dc400115 	stw	r17,4(sp)
  806e5c:	dfc00615 	stw	ra,24(sp)
  806e60:	3823883a 	mov	r17,r7
  806e64:	dd400515 	stw	r21,20(sp)
  806e68:	dd000415 	stw	r20,16(sp)
  806e6c:	3027883a 	mov	r19,r6
  806e70:	080b3600 	call	80b360 <__divsi3>
  806e74:	88c00290 	cmplti	r3,r17,10
  806e78:	1800341e 	bne	r3,zero,806f4c <__s2b+0x114>
  806e7c:	00c00044 	movi	r3,1
  806e80:	000b883a 	mov	r5,zero
  806e84:	18c7883a 	add	r3,r3,r3
  806e88:	29400044 	addi	r5,r5,1
  806e8c:	18bffd16 	blt	r3,r2,806e84 <__s2b+0x4c>
  806e90:	9009883a 	mov	r4,r18
  806e94:	0806c140 	call	806c14 <_Balloc>
  806e98:	100b883a 	mov	r5,r2
  806e9c:	10002d26 	beq	r2,zero,806f54 <__s2b+0x11c>
  806ea0:	d8800717 	ldw	r2,28(sp)
  806ea4:	28800515 	stw	r2,20(r5)
  806ea8:	00800044 	movi	r2,1
  806eac:	28800415 	stw	r2,16(r5)
  806eb0:	98800290 	cmplti	r2,r19,10
  806eb4:	1000221e 	bne	r2,zero,806f40 <__s2b+0x108>
  806eb8:	85400244 	addi	r21,r16,9
  806ebc:	a829883a 	mov	r20,r21
  806ec0:	84e1883a 	add	r16,r16,r19
  806ec4:	a1c00007 	ldb	r7,0(r20)
  806ec8:	01800284 	movi	r6,10
  806ecc:	9009883a 	mov	r4,r18
  806ed0:	39fff404 	addi	r7,r7,-48
  806ed4:	0806cdc0 	call	806cdc <__multadd>
  806ed8:	a5000044 	addi	r20,r20,1
  806edc:	100b883a 	mov	r5,r2
  806ee0:	a43ff81e 	bne	r20,r16,806ec4 <__s2b+0x8c>
  806ee4:	9c3ffe04 	addi	r16,r19,-8
  806ee8:	ac21883a 	add	r16,r21,r16
  806eec:	9c400a0e 	bge	r19,r17,806f18 <__s2b+0xe0>
  806ef0:	8ce3c83a 	sub	r17,r17,r19
  806ef4:	8463883a 	add	r17,r16,r17
  806ef8:	81c00007 	ldb	r7,0(r16)
  806efc:	01800284 	movi	r6,10
  806f00:	9009883a 	mov	r4,r18
  806f04:	39fff404 	addi	r7,r7,-48
  806f08:	0806cdc0 	call	806cdc <__multadd>
  806f0c:	84000044 	addi	r16,r16,1
  806f10:	100b883a 	mov	r5,r2
  806f14:	8c3ff81e 	bne	r17,r16,806ef8 <__s2b+0xc0>
  806f18:	2805883a 	mov	r2,r5
  806f1c:	dfc00617 	ldw	ra,24(sp)
  806f20:	dd400517 	ldw	r21,20(sp)
  806f24:	dd000417 	ldw	r20,16(sp)
  806f28:	dcc00317 	ldw	r19,12(sp)
  806f2c:	dc800217 	ldw	r18,8(sp)
  806f30:	dc400117 	ldw	r17,4(sp)
  806f34:	dc000017 	ldw	r16,0(sp)
  806f38:	dec00704 	addi	sp,sp,28
  806f3c:	f800283a 	ret
  806f40:	84000284 	addi	r16,r16,10
  806f44:	04c00244 	movi	r19,9
  806f48:	003fe806 	br	806eec <__s2b+0xb4>
  806f4c:	000b883a 	mov	r5,zero
  806f50:	003fcf06 	br	806e90 <__s2b+0x58>
  806f54:	01c02074 	movhi	r7,129
  806f58:	01002074 	movhi	r4,129
  806f5c:	39c20204 	addi	r7,r7,2056
  806f60:	000d883a 	mov	r6,zero
  806f64:	01403384 	movi	r5,206
  806f68:	21021704 	addi	r4,r4,2140
  806f6c:	0809a000 	call	809a00 <__assert_func>

00806f70 <__hi0bits>:
  806f70:	20bfffec 	andhi	r2,r4,65535
  806f74:	1000131e 	bne	r2,zero,806fc4 <__hi0bits+0x54>
  806f78:	2008943a 	slli	r4,r4,16
  806f7c:	00800404 	movi	r2,16
  806f80:	20ffc02c 	andhi	r3,r4,65280
  806f84:	1800021e 	bne	r3,zero,806f90 <__hi0bits+0x20>
  806f88:	2008923a 	slli	r4,r4,8
  806f8c:	10800204 	addi	r2,r2,8
  806f90:	20fc002c 	andhi	r3,r4,61440
  806f94:	1800021e 	bne	r3,zero,806fa0 <__hi0bits+0x30>
  806f98:	2008913a 	slli	r4,r4,4
  806f9c:	10800104 	addi	r2,r2,4
  806fa0:	20f0002c 	andhi	r3,r4,49152
  806fa4:	1800021e 	bne	r3,zero,806fb0 <__hi0bits+0x40>
  806fa8:	200890ba 	slli	r4,r4,2
  806fac:	10800084 	addi	r2,r2,2
  806fb0:	20000316 	blt	r4,zero,806fc0 <__hi0bits+0x50>
  806fb4:	2110002c 	andhi	r4,r4,16384
  806fb8:	10800044 	addi	r2,r2,1
  806fbc:	20000326 	beq	r4,zero,806fcc <__hi0bits+0x5c>
  806fc0:	f800283a 	ret
  806fc4:	0005883a 	mov	r2,zero
  806fc8:	003fed06 	br	806f80 <__hi0bits+0x10>
  806fcc:	00800804 	movi	r2,32
  806fd0:	f800283a 	ret

00806fd4 <__lo0bits>:
  806fd4:	20c00017 	ldw	r3,0(r4)
  806fd8:	188001cc 	andi	r2,r3,7
  806fdc:	10000826 	beq	r2,zero,807000 <__lo0bits+0x2c>
  806fe0:	1880004c 	andi	r2,r3,1
  806fe4:	10001f1e 	bne	r2,zero,807064 <__lo0bits+0x90>
  806fe8:	1880008c 	andi	r2,r3,2
  806fec:	10002126 	beq	r2,zero,807074 <__lo0bits+0xa0>
  806ff0:	1806d07a 	srli	r3,r3,1
  806ff4:	00800044 	movi	r2,1
  806ff8:	20c00015 	stw	r3,0(r4)
  806ffc:	f800283a 	ret
  807000:	18bfffcc 	andi	r2,r3,65535
  807004:	10001426 	beq	r2,zero,807058 <__lo0bits+0x84>
  807008:	0005883a 	mov	r2,zero
  80700c:	19403fcc 	andi	r5,r3,255
  807010:	2800021e 	bne	r5,zero,80701c <__lo0bits+0x48>
  807014:	1806d23a 	srli	r3,r3,8
  807018:	10800204 	addi	r2,r2,8
  80701c:	194003cc 	andi	r5,r3,15
  807020:	2800021e 	bne	r5,zero,80702c <__lo0bits+0x58>
  807024:	1806d13a 	srli	r3,r3,4
  807028:	10800104 	addi	r2,r2,4
  80702c:	194000cc 	andi	r5,r3,3
  807030:	2800021e 	bne	r5,zero,80703c <__lo0bits+0x68>
  807034:	1806d0ba 	srli	r3,r3,2
  807038:	10800084 	addi	r2,r2,2
  80703c:	1940004c 	andi	r5,r3,1
  807040:	2800031e 	bne	r5,zero,807050 <__lo0bits+0x7c>
  807044:	1806d07a 	srli	r3,r3,1
  807048:	10800044 	addi	r2,r2,1
  80704c:	18000726 	beq	r3,zero,80706c <__lo0bits+0x98>
  807050:	20c00015 	stw	r3,0(r4)
  807054:	f800283a 	ret
  807058:	1806d43a 	srli	r3,r3,16
  80705c:	00800404 	movi	r2,16
  807060:	003fea06 	br	80700c <__lo0bits+0x38>
  807064:	0005883a 	mov	r2,zero
  807068:	f800283a 	ret
  80706c:	00800804 	movi	r2,32
  807070:	f800283a 	ret
  807074:	1806d0ba 	srli	r3,r3,2
  807078:	00800084 	movi	r2,2
  80707c:	20c00015 	stw	r3,0(r4)
  807080:	f800283a 	ret

00807084 <__i2b>:
  807084:	defffe04 	addi	sp,sp,-8
  807088:	dc000015 	stw	r16,0(sp)
  80708c:	2821883a 	mov	r16,r5
  807090:	01400044 	movi	r5,1
  807094:	dfc00115 	stw	ra,4(sp)
  807098:	0806c140 	call	806c14 <_Balloc>
  80709c:	10000726 	beq	r2,zero,8070bc <__i2b+0x38>
  8070a0:	01000044 	movi	r4,1
  8070a4:	14000515 	stw	r16,20(r2)
  8070a8:	11000415 	stw	r4,16(r2)
  8070ac:	dfc00117 	ldw	ra,4(sp)
  8070b0:	dc000017 	ldw	r16,0(sp)
  8070b4:	dec00204 	addi	sp,sp,8
  8070b8:	f800283a 	ret
  8070bc:	01c02074 	movhi	r7,129
  8070c0:	01002074 	movhi	r4,129
  8070c4:	39c20204 	addi	r7,r7,2056
  8070c8:	000d883a 	mov	r6,zero
  8070cc:	01405004 	movi	r5,320
  8070d0:	21021704 	addi	r4,r4,2140
  8070d4:	0809a000 	call	809a00 <__assert_func>

008070d8 <__multiply>:
  8070d8:	defff004 	addi	sp,sp,-64
  8070dc:	dd800c15 	stw	r22,48(sp)
  8070e0:	dc400715 	stw	r17,28(sp)
  8070e4:	2d800417 	ldw	r22,16(r5)
  8070e8:	34400417 	ldw	r17,16(r6)
  8070ec:	dc800815 	stw	r18,32(sp)
  8070f0:	dc000615 	stw	r16,24(sp)
  8070f4:	dfc00f15 	stw	ra,60(sp)
  8070f8:	df000e15 	stw	fp,56(sp)
  8070fc:	ddc00d15 	stw	r23,52(sp)
  807100:	dd400b15 	stw	r21,44(sp)
  807104:	dd000a15 	stw	r20,40(sp)
  807108:	dcc00915 	stw	r19,36(sp)
  80710c:	2825883a 	mov	r18,r5
  807110:	3021883a 	mov	r16,r6
  807114:	b4400516 	blt	r22,r17,80712c <__multiply+0x54>
  807118:	8807883a 	mov	r3,r17
  80711c:	2821883a 	mov	r16,r5
  807120:	b023883a 	mov	r17,r22
  807124:	3025883a 	mov	r18,r6
  807128:	182d883a 	mov	r22,r3
  80712c:	80800217 	ldw	r2,8(r16)
  807130:	8d87883a 	add	r3,r17,r22
  807134:	d8c00115 	stw	r3,4(sp)
  807138:	81400117 	ldw	r5,4(r16)
  80713c:	10c0010e 	bge	r2,r3,807144 <__multiply+0x6c>
  807140:	29400044 	addi	r5,r5,1
  807144:	0806c140 	call	806c14 <_Balloc>
  807148:	d8800515 	stw	r2,20(sp)
  80714c:	10008626 	beq	r2,zero,807368 <__multiply+0x290>
  807150:	d8800117 	ldw	r2,4(sp)
  807154:	102690ba 	slli	r19,r2,2
  807158:	d8800517 	ldw	r2,20(sp)
  80715c:	10c00504 	addi	r3,r2,20
  807160:	d8c00015 	stw	r3,0(sp)
  807164:	1ce7883a 	add	r19,r3,r19
  807168:	1805883a 	mov	r2,r3
  80716c:	1cc0032e 	bgeu	r3,r19,80717c <__multiply+0xa4>
  807170:	10000015 	stw	zero,0(r2)
  807174:	10800104 	addi	r2,r2,4
  807178:	14fffd36 	bltu	r2,r19,807170 <__multiply+0x98>
  80717c:	b02c90ba 	slli	r22,r22,2
  807180:	882290ba 	slli	r17,r17,2
  807184:	94800504 	addi	r18,r18,20
  807188:	80800504 	addi	r2,r16,20
  80718c:	9587883a 	add	r3,r18,r22
  807190:	d8800315 	stw	r2,12(sp)
  807194:	d8c00215 	stw	r3,8(sp)
  807198:	1463883a 	add	r17,r2,r17
  80719c:	90c0342e 	bgeu	r18,r3,807270 <__multiply+0x198>
  8071a0:	80800544 	addi	r2,r16,21
  8071a4:	88804b36 	bltu	r17,r2,8072d4 <__multiply+0x1fc>
  8071a8:	8c05c83a 	sub	r2,r17,r16
  8071ac:	10bffac4 	addi	r2,r2,-21
  8071b0:	1004d0ba 	srli	r2,r2,2
  8071b4:	10800044 	addi	r2,r2,1
  8071b8:	100490ba 	slli	r2,r2,2
  8071bc:	d8800415 	stw	r2,16(sp)
  8071c0:	00000606 	br	8071dc <__multiply+0x104>
  8071c4:	d8800017 	ldw	r2,0(sp)
  8071c8:	94800104 	addi	r18,r18,4
  8071cc:	10800104 	addi	r2,r2,4
  8071d0:	d8800015 	stw	r2,0(sp)
  8071d4:	d8800217 	ldw	r2,8(sp)
  8071d8:	9080252e 	bgeu	r18,r2,807270 <__multiply+0x198>
  8071dc:	90800017 	ldw	r2,0(r18)
  8071e0:	15ffffcc 	andi	r23,r2,65535
  8071e4:	b800401e 	bne	r23,zero,8072e8 <__multiply+0x210>
  8071e8:	1028d43a 	srli	r20,r2,16
  8071ec:	a03ff526 	beq	r20,zero,8071c4 <__multiply+0xec>
  8071f0:	dd400017 	ldw	r21,0(sp)
  8071f4:	dd800317 	ldw	r22,12(sp)
  8071f8:	0039883a 	mov	fp,zero
  8071fc:	adc00017 	ldw	r23,0(r21)
  807200:	b821883a 	mov	r16,r23
  807204:	b100000b 	ldhu	r4,0(r22)
  807208:	a00b883a 	mov	r5,r20
  80720c:	ad400104 	addi	r21,r21,4
  807210:	0800f8c0 	call	800f8c <__mulsi3>
  807214:	800cd43a 	srli	r6,r16,16
  807218:	b8ffffcc 	andi	r3,r23,65535
  80721c:	b5800104 	addi	r22,r22,4
  807220:	118d883a 	add	r6,r2,r6
  807224:	3739883a 	add	fp,r6,fp
  807228:	e004943a 	slli	r2,fp,16
  80722c:	ac000017 	ldw	r16,0(r21)
  807230:	a00b883a 	mov	r5,r20
  807234:	10c6b03a 	or	r3,r2,r3
  807238:	a8ffff15 	stw	r3,-4(r21)
  80723c:	b13fff8b 	ldhu	r4,-2(r22)
  807240:	0800f8c0 	call	800f8c <__mulsi3>
  807244:	e00cd43a 	srli	r6,fp,16
  807248:	80ffffcc 	andi	r3,r16,65535
  80724c:	10c7883a 	add	r3,r2,r3
  807250:	19af883a 	add	r23,r3,r6
  807254:	b838d43a 	srli	fp,r23,16
  807258:	b47fea36 	bltu	r22,r17,807204 <__multiply+0x12c>
  80725c:	d8800017 	ldw	r2,0(sp)
  807260:	d8c00417 	ldw	r3,16(sp)
  807264:	10c5883a 	add	r2,r2,r3
  807268:	15c00015 	stw	r23,0(r2)
  80726c:	003fd506 	br	8071c4 <__multiply+0xec>
  807270:	d8800117 	ldw	r2,4(sp)
  807274:	00800516 	blt	zero,r2,80728c <__multiply+0x1b4>
  807278:	00000706 	br	807298 <__multiply+0x1c0>
  80727c:	d8800117 	ldw	r2,4(sp)
  807280:	10bfffc4 	addi	r2,r2,-1
  807284:	d8800115 	stw	r2,4(sp)
  807288:	10000326 	beq	r2,zero,807298 <__multiply+0x1c0>
  80728c:	98bfff17 	ldw	r2,-4(r19)
  807290:	9cffff04 	addi	r19,r19,-4
  807294:	103ff926 	beq	r2,zero,80727c <__multiply+0x1a4>
  807298:	d8800517 	ldw	r2,20(sp)
  80729c:	d8c00117 	ldw	r3,4(sp)
  8072a0:	10c00415 	stw	r3,16(r2)
  8072a4:	dfc00f17 	ldw	ra,60(sp)
  8072a8:	df000e17 	ldw	fp,56(sp)
  8072ac:	ddc00d17 	ldw	r23,52(sp)
  8072b0:	dd800c17 	ldw	r22,48(sp)
  8072b4:	dd400b17 	ldw	r21,44(sp)
  8072b8:	dd000a17 	ldw	r20,40(sp)
  8072bc:	dcc00917 	ldw	r19,36(sp)
  8072c0:	dc800817 	ldw	r18,32(sp)
  8072c4:	dc400717 	ldw	r17,28(sp)
  8072c8:	dc000617 	ldw	r16,24(sp)
  8072cc:	dec01004 	addi	sp,sp,64
  8072d0:	f800283a 	ret
  8072d4:	00800104 	movi	r2,4
  8072d8:	d8800415 	stw	r2,16(sp)
  8072dc:	90800017 	ldw	r2,0(r18)
  8072e0:	15ffffcc 	andi	r23,r2,65535
  8072e4:	b83fc026 	beq	r23,zero,8071e8 <__multiply+0x110>
  8072e8:	dd800017 	ldw	r22,0(sp)
  8072ec:	dd400317 	ldw	r21,12(sp)
  8072f0:	0029883a 	mov	r20,zero
  8072f4:	af000017 	ldw	fp,0(r21)
  8072f8:	b4000017 	ldw	r16,0(r22)
  8072fc:	b80b883a 	mov	r5,r23
  807300:	e13fffcc 	andi	r4,fp,65535
  807304:	0800f8c0 	call	800f8c <__mulsi3>
  807308:	e008d43a 	srli	r4,fp,16
  80730c:	823fffcc 	andi	r8,r16,65535
  807310:	1205883a 	add	r2,r2,r8
  807314:	b80b883a 	mov	r5,r23
  807318:	1529883a 	add	r20,r2,r20
  80731c:	8020d43a 	srli	r16,r16,16
  807320:	0800f8c0 	call	800f8c <__mulsi3>
  807324:	a008d43a 	srli	r4,r20,16
  807328:	1405883a 	add	r2,r2,r16
  80732c:	a0ffffcc 	andi	r3,r20,65535
  807330:	1105883a 	add	r2,r2,r4
  807334:	1008943a 	slli	r4,r2,16
  807338:	b5800104 	addi	r22,r22,4
  80733c:	ad400104 	addi	r21,r21,4
  807340:	20c6b03a 	or	r3,r4,r3
  807344:	b0ffff15 	stw	r3,-4(r22)
  807348:	1028d43a 	srli	r20,r2,16
  80734c:	ac7fe936 	bltu	r21,r17,8072f4 <__multiply+0x21c>
  807350:	d8800017 	ldw	r2,0(sp)
  807354:	d8c00417 	ldw	r3,16(sp)
  807358:	10c5883a 	add	r2,r2,r3
  80735c:	15000015 	stw	r20,0(r2)
  807360:	90800017 	ldw	r2,0(r18)
  807364:	003fa006 	br	8071e8 <__multiply+0x110>
  807368:	01c02074 	movhi	r7,129
  80736c:	01002074 	movhi	r4,129
  807370:	39c20204 	addi	r7,r7,2056
  807374:	000d883a 	mov	r6,zero
  807378:	01405744 	movi	r5,349
  80737c:	21021704 	addi	r4,r4,2140
  807380:	0809a000 	call	809a00 <__assert_func>

00807384 <__pow5mult>:
  807384:	defffb04 	addi	sp,sp,-20
  807388:	dcc00315 	stw	r19,12(sp)
  80738c:	dc000015 	stw	r16,0(sp)
  807390:	dfc00415 	stw	ra,16(sp)
  807394:	dc800215 	stw	r18,8(sp)
  807398:	dc400115 	stw	r17,4(sp)
  80739c:	308000cc 	andi	r2,r6,3
  8073a0:	3021883a 	mov	r16,r6
  8073a4:	2027883a 	mov	r19,r4
  8073a8:	10002d1e 	bne	r2,zero,807460 <__pow5mult+0xdc>
  8073ac:	2825883a 	mov	r18,r5
  8073b0:	8021d0ba 	srai	r16,r16,2
  8073b4:	80001926 	beq	r16,zero,80741c <__pow5mult+0x98>
  8073b8:	9c401217 	ldw	r17,72(r19)
  8073bc:	8800061e 	bne	r17,zero,8073d8 <__pow5mult+0x54>
  8073c0:	00002f06 	br	807480 <__pow5mult+0xfc>
  8073c4:	8021d07a 	srai	r16,r16,1
  8073c8:	80001426 	beq	r16,zero,80741c <__pow5mult+0x98>
  8073cc:	88800017 	ldw	r2,0(r17)
  8073d0:	10001a26 	beq	r2,zero,80743c <__pow5mult+0xb8>
  8073d4:	1023883a 	mov	r17,r2
  8073d8:	8080004c 	andi	r2,r16,1
  8073dc:	103ff926 	beq	r2,zero,8073c4 <__pow5mult+0x40>
  8073e0:	880d883a 	mov	r6,r17
  8073e4:	900b883a 	mov	r5,r18
  8073e8:	9809883a 	mov	r4,r19
  8073ec:	08070d80 	call	8070d8 <__multiply>
  8073f0:	90001926 	beq	r18,zero,807458 <__pow5mult+0xd4>
  8073f4:	91000117 	ldw	r4,4(r18)
  8073f8:	98c01317 	ldw	r3,76(r19)
  8073fc:	8021d07a 	srai	r16,r16,1
  807400:	200890ba 	slli	r4,r4,2
  807404:	1907883a 	add	r3,r3,r4
  807408:	19000017 	ldw	r4,0(r3)
  80740c:	91000015 	stw	r4,0(r18)
  807410:	1c800015 	stw	r18,0(r3)
  807414:	1025883a 	mov	r18,r2
  807418:	803fec1e 	bne	r16,zero,8073cc <__pow5mult+0x48>
  80741c:	9005883a 	mov	r2,r18
  807420:	dfc00417 	ldw	ra,16(sp)
  807424:	dcc00317 	ldw	r19,12(sp)
  807428:	dc800217 	ldw	r18,8(sp)
  80742c:	dc400117 	ldw	r17,4(sp)
  807430:	dc000017 	ldw	r16,0(sp)
  807434:	dec00504 	addi	sp,sp,20
  807438:	f800283a 	ret
  80743c:	880d883a 	mov	r6,r17
  807440:	880b883a 	mov	r5,r17
  807444:	9809883a 	mov	r4,r19
  807448:	08070d80 	call	8070d8 <__multiply>
  80744c:	88800015 	stw	r2,0(r17)
  807450:	10000015 	stw	zero,0(r2)
  807454:	003fdf06 	br	8073d4 <__pow5mult+0x50>
  807458:	1025883a 	mov	r18,r2
  80745c:	003fd906 	br	8073c4 <__pow5mult+0x40>
  807460:	100490ba 	slli	r2,r2,2
  807464:	00c02074 	movhi	r3,129
  807468:	000f883a 	mov	r7,zero
  80746c:	10c7883a 	add	r3,r2,r3
  807470:	19822617 	ldw	r6,2200(r3)
  807474:	0806cdc0 	call	806cdc <__multadd>
  807478:	1025883a 	mov	r18,r2
  80747c:	003fcc06 	br	8073b0 <__pow5mult+0x2c>
  807480:	01409c44 	movi	r5,625
  807484:	9809883a 	mov	r4,r19
  807488:	08070840 	call	807084 <__i2b>
  80748c:	98801215 	stw	r2,72(r19)
  807490:	1023883a 	mov	r17,r2
  807494:	10000015 	stw	zero,0(r2)
  807498:	003fcf06 	br	8073d8 <__pow5mult+0x54>

0080749c <__lshift>:
  80749c:	defff904 	addi	sp,sp,-28
  8074a0:	dd400515 	stw	r21,20(sp)
  8074a4:	dc800215 	stw	r18,8(sp)
  8074a8:	302bd17a 	srai	r21,r6,5
  8074ac:	2c800417 	ldw	r18,16(r5)
  8074b0:	28800217 	ldw	r2,8(r5)
  8074b4:	dd000415 	stw	r20,16(sp)
  8074b8:	aca5883a 	add	r18,r21,r18
  8074bc:	dcc00315 	stw	r19,12(sp)
  8074c0:	dc400115 	stw	r17,4(sp)
  8074c4:	dc000015 	stw	r16,0(sp)
  8074c8:	dfc00615 	stw	ra,24(sp)
  8074cc:	94400044 	addi	r17,r18,1
  8074d0:	2821883a 	mov	r16,r5
  8074d4:	3029883a 	mov	r20,r6
  8074d8:	29400117 	ldw	r5,4(r5)
  8074dc:	2027883a 	mov	r19,r4
  8074e0:	1440030e 	bge	r2,r17,8074f0 <__lshift+0x54>
  8074e4:	1085883a 	add	r2,r2,r2
  8074e8:	29400044 	addi	r5,r5,1
  8074ec:	147ffd16 	blt	r2,r17,8074e4 <__lshift+0x48>
  8074f0:	9809883a 	mov	r4,r19
  8074f4:	0806c140 	call	806c14 <_Balloc>
  8074f8:	10004326 	beq	r2,zero,807608 <__lshift+0x16c>
  8074fc:	12000504 	addi	r8,r2,20
  807500:	0540090e 	bge	zero,r21,807528 <__lshift+0x8c>
  807504:	ad400144 	addi	r21,r21,5
  807508:	a82a90ba 	slli	r21,r21,2
  80750c:	4007883a 	mov	r3,r8
  807510:	1549883a 	add	r4,r2,r21
  807514:	18c00104 	addi	r3,r3,4
  807518:	183fff15 	stw	zero,-4(r3)
  80751c:	193ffd1e 	bne	r3,r4,807514 <__lshift+0x78>
  807520:	ad7ffb04 	addi	r21,r21,-20
  807524:	4551883a 	add	r8,r8,r21
  807528:	82400417 	ldw	r9,16(r16)
  80752c:	80c00504 	addi	r3,r16,20
  807530:	a14007cc 	andi	r5,r20,31
  807534:	481290ba 	slli	r9,r9,2
  807538:	1a53883a 	add	r9,r3,r9
  80753c:	28002a26 	beq	r5,zero,8075e8 <__lshift+0x14c>
  807540:	02800804 	movi	r10,32
  807544:	5155c83a 	sub	r10,r10,r5
  807548:	4009883a 	mov	r4,r8
  80754c:	000f883a 	mov	r7,zero
  807550:	19800017 	ldw	r6,0(r3)
  807554:	21000104 	addi	r4,r4,4
  807558:	18c00104 	addi	r3,r3,4
  80755c:	314c983a 	sll	r6,r6,r5
  807560:	31ccb03a 	or	r6,r6,r7
  807564:	21bfff15 	stw	r6,-4(r4)
  807568:	19bfff17 	ldw	r6,-4(r3)
  80756c:	328ed83a 	srl	r7,r6,r10
  807570:	1a7ff736 	bltu	r3,r9,807550 <__lshift+0xb4>
  807574:	80c00544 	addi	r3,r16,21
  807578:	48c02136 	bltu	r9,r3,807600 <__lshift+0x164>
  80757c:	4c07c83a 	sub	r3,r9,r16
  807580:	18fffac4 	addi	r3,r3,-21
  807584:	1806d0ba 	srli	r3,r3,2
  807588:	18c00044 	addi	r3,r3,1
  80758c:	180690ba 	slli	r3,r3,2
  807590:	40d1883a 	add	r8,r8,r3
  807594:	41c00015 	stw	r7,0(r8)
  807598:	38000126 	beq	r7,zero,8075a0 <__lshift+0x104>
  80759c:	8825883a 	mov	r18,r17
  8075a0:	14800415 	stw	r18,16(r2)
  8075a4:	80000726 	beq	r16,zero,8075c4 <__lshift+0x128>
  8075a8:	81000117 	ldw	r4,4(r16)
  8075ac:	98c01317 	ldw	r3,76(r19)
  8075b0:	200890ba 	slli	r4,r4,2
  8075b4:	1907883a 	add	r3,r3,r4
  8075b8:	19000017 	ldw	r4,0(r3)
  8075bc:	81000015 	stw	r4,0(r16)
  8075c0:	1c000015 	stw	r16,0(r3)
  8075c4:	dfc00617 	ldw	ra,24(sp)
  8075c8:	dd400517 	ldw	r21,20(sp)
  8075cc:	dd000417 	ldw	r20,16(sp)
  8075d0:	dcc00317 	ldw	r19,12(sp)
  8075d4:	dc800217 	ldw	r18,8(sp)
  8075d8:	dc400117 	ldw	r17,4(sp)
  8075dc:	dc000017 	ldw	r16,0(sp)
  8075e0:	dec00704 	addi	sp,sp,28
  8075e4:	f800283a 	ret
  8075e8:	19000017 	ldw	r4,0(r3)
  8075ec:	18c00104 	addi	r3,r3,4
  8075f0:	42000104 	addi	r8,r8,4
  8075f4:	413fff15 	stw	r4,-4(r8)
  8075f8:	1a7ffb36 	bltu	r3,r9,8075e8 <__lshift+0x14c>
  8075fc:	003fe806 	br	8075a0 <__lshift+0x104>
  807600:	00c00104 	movi	r3,4
  807604:	003fe206 	br	807590 <__lshift+0xf4>
  807608:	01c02074 	movhi	r7,129
  80760c:	01002074 	movhi	r4,129
  807610:	39c20204 	addi	r7,r7,2056
  807614:	000d883a 	mov	r6,zero
  807618:	01407644 	movi	r5,473
  80761c:	21021704 	addi	r4,r4,2140
  807620:	0809a000 	call	809a00 <__assert_func>

00807624 <__mcmp>:
  807624:	21800417 	ldw	r6,16(r4)
  807628:	28c00417 	ldw	r3,16(r5)
  80762c:	30c5c83a 	sub	r2,r6,r3
  807630:	30c00e1e 	bne	r6,r3,80766c <__mcmp+0x48>
  807634:	180690ba 	slli	r3,r3,2
  807638:	21c00504 	addi	r7,r4,20
  80763c:	29400504 	addi	r5,r5,20
  807640:	38c9883a 	add	r4,r7,r3
  807644:	28c7883a 	add	r3,r5,r3
  807648:	00000106 	br	807650 <__mcmp+0x2c>
  80764c:	3900082e 	bgeu	r7,r4,807670 <__mcmp+0x4c>
  807650:	21bfff17 	ldw	r6,-4(r4)
  807654:	197fff17 	ldw	r5,-4(r3)
  807658:	213fff04 	addi	r4,r4,-4
  80765c:	18ffff04 	addi	r3,r3,-4
  807660:	317ffa26 	beq	r6,r5,80764c <__mcmp+0x28>
  807664:	3140032e 	bgeu	r6,r5,807674 <__mcmp+0x50>
  807668:	00bfffc4 	movi	r2,-1
  80766c:	f800283a 	ret
  807670:	f800283a 	ret
  807674:	00800044 	movi	r2,1
  807678:	f800283a 	ret

0080767c <__mdiff>:
  80767c:	28800417 	ldw	r2,16(r5)
  807680:	30c00417 	ldw	r3,16(r6)
  807684:	defffc04 	addi	sp,sp,-16
  807688:	dc800215 	stw	r18,8(sp)
  80768c:	dc400115 	stw	r17,4(sp)
  807690:	dc000015 	stw	r16,0(sp)
  807694:	dfc00315 	stw	ra,12(sp)
  807698:	2823883a 	mov	r17,r5
  80769c:	3021883a 	mov	r16,r6
  8076a0:	10e5c83a 	sub	r18,r2,r3
  8076a4:	10c0641e 	bne	r2,r3,807838 <__mdiff+0x1bc>
  8076a8:	180c90ba 	slli	r6,r3,2
  8076ac:	29400504 	addi	r5,r5,20
  8076b0:	80c00504 	addi	r3,r16,20
  8076b4:	2985883a 	add	r2,r5,r6
  8076b8:	1987883a 	add	r3,r3,r6
  8076bc:	00000106 	br	8076c4 <__mdiff+0x48>
  8076c0:	2880642e 	bgeu	r5,r2,807854 <__mdiff+0x1d8>
  8076c4:	11ffff17 	ldw	r7,-4(r2)
  8076c8:	19bfff17 	ldw	r6,-4(r3)
  8076cc:	10bfff04 	addi	r2,r2,-4
  8076d0:	18ffff04 	addi	r3,r3,-4
  8076d4:	39bffa26 	beq	r7,r6,8076c0 <__mdiff+0x44>
  8076d8:	39805236 	bltu	r7,r6,807824 <__mdiff+0x1a8>
  8076dc:	89400117 	ldw	r5,4(r17)
  8076e0:	0806c140 	call	806c14 <_Balloc>
  8076e4:	10006226 	beq	r2,zero,807870 <__mdiff+0x1f4>
  8076e8:	8a400417 	ldw	r9,16(r17)
  8076ec:	83000417 	ldw	r12,16(r16)
  8076f0:	8ac00504 	addi	r11,r17,20
  8076f4:	481090ba 	slli	r8,r9,2
  8076f8:	601890ba 	slli	r12,r12,2
  8076fc:	81800504 	addi	r6,r16,20
  807700:	13400504 	addi	r13,r2,20
  807704:	14800315 	stw	r18,12(r2)
  807708:	5a11883a 	add	r8,r11,r8
  80770c:	3319883a 	add	r12,r6,r12
  807710:	681d883a 	mov	r14,r13
  807714:	5815883a 	mov	r10,r11
  807718:	0007883a 	mov	r3,zero
  80771c:	51000017 	ldw	r4,0(r10)
  807720:	31c00017 	ldw	r7,0(r6)
  807724:	73800104 	addi	r14,r14,4
  807728:	217fffcc 	andi	r5,r4,65535
  80772c:	28cb883a 	add	r5,r5,r3
  807730:	38ffffcc 	andi	r3,r7,65535
  807734:	28cbc83a 	sub	r5,r5,r3
  807738:	380ed43a 	srli	r7,r7,16
  80773c:	2006d43a 	srli	r3,r4,16
  807740:	2809d43a 	srai	r4,r5,16
  807744:	297fffcc 	andi	r5,r5,65535
  807748:	19c7c83a 	sub	r3,r3,r7
  80774c:	1907883a 	add	r3,r3,r4
  807750:	1808943a 	slli	r4,r3,16
  807754:	31800104 	addi	r6,r6,4
  807758:	1807d43a 	srai	r3,r3,16
  80775c:	214ab03a 	or	r5,r4,r5
  807760:	717fff15 	stw	r5,-4(r14)
  807764:	52800104 	addi	r10,r10,4
  807768:	333fec36 	bltu	r6,r12,80771c <__mdiff+0xa0>
  80776c:	640fc83a 	sub	r7,r12,r16
  807770:	39fffac4 	addi	r7,r7,-21
  807774:	84000544 	addi	r16,r16,21
  807778:	380ed0ba 	srli	r7,r7,2
  80777c:	64003336 	bltu	r12,r16,80784c <__mdiff+0x1d0>
  807780:	380890ba 	slli	r4,r7,2
  807784:	6909883a 	add	r4,r13,r4
  807788:	64002e36 	bltu	r12,r16,807844 <__mdiff+0x1c8>
  80778c:	39800044 	addi	r6,r7,1
  807790:	300c90ba 	slli	r6,r6,2
  807794:	5997883a 	add	r11,r11,r6
  807798:	699b883a 	add	r13,r13,r6
  80779c:	5a00152e 	bgeu	r11,r8,8077f4 <__mdiff+0x178>
  8077a0:	680f883a 	mov	r7,r13
  8077a4:	580d883a 	mov	r6,r11
  8077a8:	31000017 	ldw	r4,0(r6)
  8077ac:	39c00104 	addi	r7,r7,4
  8077b0:	31800104 	addi	r6,r6,4
  8077b4:	217fffcc 	andi	r5,r4,65535
  8077b8:	28cb883a 	add	r5,r5,r3
  8077bc:	2815d43a 	srai	r10,r5,16
  8077c0:	2006d43a 	srli	r3,r4,16
  8077c4:	297fffcc 	andi	r5,r5,65535
  8077c8:	1a87883a 	add	r3,r3,r10
  8077cc:	1814943a 	slli	r10,r3,16
  8077d0:	1807d43a 	srai	r3,r3,16
  8077d4:	514ab03a 	or	r5,r10,r5
  8077d8:	397fff15 	stw	r5,-4(r7)
  8077dc:	323ff236 	bltu	r6,r8,8077a8 <__mdiff+0x12c>
  8077e0:	413fffc4 	addi	r4,r8,-1
  8077e4:	22c9c83a 	sub	r4,r4,r11
  8077e8:	2008d0ba 	srli	r4,r4,2
  8077ec:	200890ba 	slli	r4,r4,2
  8077f0:	6909883a 	add	r4,r13,r4
  8077f4:	2800041e 	bne	r5,zero,807808 <__mdiff+0x18c>
  8077f8:	20ffff17 	ldw	r3,-4(r4)
  8077fc:	4a7fffc4 	addi	r9,r9,-1
  807800:	213fff04 	addi	r4,r4,-4
  807804:	183ffc26 	beq	r3,zero,8077f8 <__mdiff+0x17c>
  807808:	12400415 	stw	r9,16(r2)
  80780c:	dfc00317 	ldw	ra,12(sp)
  807810:	dc800217 	ldw	r18,8(sp)
  807814:	dc400117 	ldw	r17,4(sp)
  807818:	dc000017 	ldw	r16,0(sp)
  80781c:	dec00404 	addi	sp,sp,16
  807820:	f800283a 	ret
  807824:	8805883a 	mov	r2,r17
  807828:	04800044 	movi	r18,1
  80782c:	8023883a 	mov	r17,r16
  807830:	1021883a 	mov	r16,r2
  807834:	003fa906 	br	8076dc <__mdiff+0x60>
  807838:	903ffa16 	blt	r18,zero,807824 <__mdiff+0x1a8>
  80783c:	0025883a 	mov	r18,zero
  807840:	003fa606 	br	8076dc <__mdiff+0x60>
  807844:	01800104 	movi	r6,4
  807848:	003fd206 	br	807794 <__mdiff+0x118>
  80784c:	0009883a 	mov	r4,zero
  807850:	003fcc06 	br	807784 <__mdiff+0x108>
  807854:	000b883a 	mov	r5,zero
  807858:	0806c140 	call	806c14 <_Balloc>
  80785c:	10000b26 	beq	r2,zero,80788c <__mdiff+0x210>
  807860:	00c00044 	movi	r3,1
  807864:	10c00415 	stw	r3,16(r2)
  807868:	10000515 	stw	zero,20(r2)
  80786c:	003fe706 	br	80780c <__mdiff+0x190>
  807870:	01c02074 	movhi	r7,129
  807874:	01002074 	movhi	r4,129
  807878:	39c20204 	addi	r7,r7,2056
  80787c:	000d883a 	mov	r6,zero
  807880:	01409004 	movi	r5,576
  807884:	21021704 	addi	r4,r4,2140
  807888:	0809a000 	call	809a00 <__assert_func>
  80788c:	01c02074 	movhi	r7,129
  807890:	01002074 	movhi	r4,129
  807894:	39c20204 	addi	r7,r7,2056
  807898:	000d883a 	mov	r6,zero
  80789c:	01408c84 	movi	r5,562
  8078a0:	21021704 	addi	r4,r4,2140
  8078a4:	0809a000 	call	809a00 <__assert_func>

008078a8 <__ulp>:
  8078a8:	28dffc2c 	andhi	r3,r5,32752
  8078ac:	017f3034 	movhi	r5,64704
  8078b0:	1947883a 	add	r3,r3,r5
  8078b4:	00c0020e 	bge	zero,r3,8078c0 <__ulp+0x18>
  8078b8:	0005883a 	mov	r2,zero
  8078bc:	f800283a 	ret
  8078c0:	00c7c83a 	sub	r3,zero,r3
  8078c4:	1807d53a 	srai	r3,r3,20
  8078c8:	18800508 	cmpgei	r2,r3,20
  8078cc:	1000041e 	bne	r2,zero,8078e0 <__ulp+0x38>
  8078d0:	00800234 	movhi	r2,8
  8078d4:	10c7d83a 	sra	r3,r2,r3
  8078d8:	0005883a 	mov	r2,zero
  8078dc:	f800283a 	ret
  8078e0:	193ffb04 	addi	r4,r3,-20
  8078e4:	208007c8 	cmpgei	r2,r4,31
  8078e8:	0007883a 	mov	r3,zero
  8078ec:	1000031e 	bne	r2,zero,8078fc <__ulp+0x54>
  8078f0:	00a00034 	movhi	r2,32768
  8078f4:	1104d83a 	srl	r2,r2,r4
  8078f8:	f800283a 	ret
  8078fc:	00800044 	movi	r2,1
  807900:	f800283a 	ret

00807904 <__b2d>:
  807904:	defffa04 	addi	sp,sp,-24
  807908:	dc400115 	stw	r17,4(sp)
  80790c:	24400417 	ldw	r17,16(r4)
  807910:	dc000015 	stw	r16,0(sp)
  807914:	24000504 	addi	r16,r4,20
  807918:	882290ba 	slli	r17,r17,2
  80791c:	dc800215 	stw	r18,8(sp)
  807920:	dd000415 	stw	r20,16(sp)
  807924:	8463883a 	add	r17,r16,r17
  807928:	8cbfff17 	ldw	r18,-4(r17)
  80792c:	dcc00315 	stw	r19,12(sp)
  807930:	dfc00515 	stw	ra,20(sp)
  807934:	9009883a 	mov	r4,r18
  807938:	2827883a 	mov	r19,r5
  80793c:	0806f700 	call	806f70 <__hi0bits>
  807940:	01000804 	movi	r4,32
  807944:	2087c83a 	sub	r3,r4,r2
  807948:	98c00015 	stw	r3,0(r19)
  80794c:	10c002c8 	cmpgei	r3,r2,11
  807950:	8d3fff04 	addi	r20,r17,-4
  807954:	18001f26 	beq	r3,zero,8079d4 <__b2d+0xd0>
  807958:	10fffd44 	addi	r3,r2,-11
  80795c:	85000e2e 	bgeu	r16,r20,807998 <__b2d+0x94>
  807960:	88bffe17 	ldw	r2,-8(r17)
  807964:	18001226 	beq	r3,zero,8079b0 <__b2d+0xac>
  807968:	20c9c83a 	sub	r4,r4,r3
  80796c:	110cd83a 	srl	r6,r2,r4
  807970:	90e4983a 	sll	r18,r18,r3
  807974:	10c4983a 	sll	r2,r2,r3
  807978:	897ffe04 	addi	r5,r17,-8
  80797c:	9186b03a 	or	r3,r18,r6
  807980:	18cffc34 	orhi	r3,r3,16368
  807984:	81400b2e 	bgeu	r16,r5,8079b4 <__b2d+0xb0>
  807988:	897ffd17 	ldw	r5,-12(r17)
  80798c:	2908d83a 	srl	r4,r5,r4
  807990:	1104b03a 	or	r2,r2,r4
  807994:	00000706 	br	8079b4 <__b2d+0xb0>
  807998:	18000426 	beq	r3,zero,8079ac <__b2d+0xa8>
  80799c:	90c6983a 	sll	r3,r18,r3
  8079a0:	0005883a 	mov	r2,zero
  8079a4:	18cffc34 	orhi	r3,r3,16368
  8079a8:	00000206 	br	8079b4 <__b2d+0xb0>
  8079ac:	0005883a 	mov	r2,zero
  8079b0:	90cffc34 	orhi	r3,r18,16368
  8079b4:	dfc00517 	ldw	ra,20(sp)
  8079b8:	dd000417 	ldw	r20,16(sp)
  8079bc:	dcc00317 	ldw	r19,12(sp)
  8079c0:	dc800217 	ldw	r18,8(sp)
  8079c4:	dc400117 	ldw	r17,4(sp)
  8079c8:	dc000017 	ldw	r16,0(sp)
  8079cc:	dec00604 	addi	sp,sp,24
  8079d0:	f800283a 	ret
  8079d4:	014002c4 	movi	r5,11
  8079d8:	2889c83a 	sub	r4,r5,r2
  8079dc:	9106d83a 	srl	r3,r18,r4
  8079e0:	18cffc34 	orhi	r3,r3,16368
  8079e4:	85000536 	bltu	r16,r20,8079fc <__b2d+0xf8>
  8079e8:	000b883a 	mov	r5,zero
  8079ec:	10800544 	addi	r2,r2,21
  8079f0:	9084983a 	sll	r2,r18,r2
  8079f4:	1144b03a 	or	r2,r2,r5
  8079f8:	003fee06 	br	8079b4 <__b2d+0xb0>
  8079fc:	897ffe17 	ldw	r5,-8(r17)
  807a00:	290ad83a 	srl	r5,r5,r4
  807a04:	003ff906 	br	8079ec <__b2d+0xe8>

00807a08 <__d2b>:
  807a08:	defff804 	addi	sp,sp,-32
  807a0c:	dd000615 	stw	r20,24(sp)
  807a10:	2829883a 	mov	r20,r5
  807a14:	01400044 	movi	r5,1
  807a18:	dcc00515 	stw	r19,20(sp)
  807a1c:	dc000215 	stw	r16,8(sp)
  807a20:	dfc00715 	stw	ra,28(sp)
  807a24:	dc800415 	stw	r18,16(sp)
  807a28:	dc400315 	stw	r17,12(sp)
  807a2c:	3021883a 	mov	r16,r6
  807a30:	3827883a 	mov	r19,r7
  807a34:	0806c140 	call	806c14 <_Balloc>
  807a38:	10004526 	beq	r2,zero,807b50 <__d2b+0x148>
  807a3c:	8024d53a 	srli	r18,r16,20
  807a40:	01800434 	movhi	r6,16
  807a44:	31bfffc4 	addi	r6,r6,-1
  807a48:	9481ffcc 	andi	r18,r18,2047
  807a4c:	1023883a 	mov	r17,r2
  807a50:	81a0703a 	and	r16,r16,r6
  807a54:	90000126 	beq	r18,zero,807a5c <__d2b+0x54>
  807a58:	84000434 	orhi	r16,r16,16
  807a5c:	dc000115 	stw	r16,4(sp)
  807a60:	a0002226 	beq	r20,zero,807aec <__d2b+0xe4>
  807a64:	d809883a 	mov	r4,sp
  807a68:	dd000015 	stw	r20,0(sp)
  807a6c:	0806fd40 	call	806fd4 <__lo0bits>
  807a70:	d8c00117 	ldw	r3,4(sp)
  807a74:	10003326 	beq	r2,zero,807b44 <__d2b+0x13c>
  807a78:	01000804 	movi	r4,32
  807a7c:	2089c83a 	sub	r4,r4,r2
  807a80:	1908983a 	sll	r4,r3,r4
  807a84:	d9400017 	ldw	r5,0(sp)
  807a88:	1886d83a 	srl	r3,r3,r2
  807a8c:	2148b03a 	or	r4,r4,r5
  807a90:	89000515 	stw	r4,20(r17)
  807a94:	d8c00115 	stw	r3,4(sp)
  807a98:	88c00615 	stw	r3,24(r17)
  807a9c:	1800271e 	bne	r3,zero,807b3c <__d2b+0x134>
  807aa0:	04000044 	movi	r16,1
  807aa4:	8c000415 	stw	r16,16(r17)
  807aa8:	90001926 	beq	r18,zero,807b10 <__d2b+0x108>
  807aac:	00c00d44 	movi	r3,53
  807ab0:	94bef344 	addi	r18,r18,-1075
  807ab4:	90a5883a 	add	r18,r18,r2
  807ab8:	1885c83a 	sub	r2,r3,r2
  807abc:	d8c00817 	ldw	r3,32(sp)
  807ac0:	9c800015 	stw	r18,0(r19)
  807ac4:	18800015 	stw	r2,0(r3)
  807ac8:	8805883a 	mov	r2,r17
  807acc:	dfc00717 	ldw	ra,28(sp)
  807ad0:	dd000617 	ldw	r20,24(sp)
  807ad4:	dcc00517 	ldw	r19,20(sp)
  807ad8:	dc800417 	ldw	r18,16(sp)
  807adc:	dc400317 	ldw	r17,12(sp)
  807ae0:	dc000217 	ldw	r16,8(sp)
  807ae4:	dec00804 	addi	sp,sp,32
  807ae8:	f800283a 	ret
  807aec:	d9000104 	addi	r4,sp,4
  807af0:	0806fd40 	call	806fd4 <__lo0bits>
  807af4:	00c00044 	movi	r3,1
  807af8:	88c00415 	stw	r3,16(r17)
  807afc:	d8c00117 	ldw	r3,4(sp)
  807b00:	10800804 	addi	r2,r2,32
  807b04:	04000044 	movi	r16,1
  807b08:	88c00515 	stw	r3,20(r17)
  807b0c:	903fe71e 	bne	r18,zero,807aac <__d2b+0xa4>
  807b10:	800690ba 	slli	r3,r16,2
  807b14:	10bef384 	addi	r2,r2,-1074
  807b18:	98800015 	stw	r2,0(r19)
  807b1c:	88c5883a 	add	r2,r17,r3
  807b20:	11000417 	ldw	r4,16(r2)
  807b24:	8020917a 	slli	r16,r16,5
  807b28:	0806f700 	call	806f70 <__hi0bits>
  807b2c:	80a1c83a 	sub	r16,r16,r2
  807b30:	d8800817 	ldw	r2,32(sp)
  807b34:	14000015 	stw	r16,0(r2)
  807b38:	003fe306 	br	807ac8 <__d2b+0xc0>
  807b3c:	04000084 	movi	r16,2
  807b40:	003fd806 	br	807aa4 <__d2b+0x9c>
  807b44:	d9000017 	ldw	r4,0(sp)
  807b48:	89000515 	stw	r4,20(r17)
  807b4c:	003fd206 	br	807a98 <__d2b+0x90>
  807b50:	01c02074 	movhi	r7,129
  807b54:	01002074 	movhi	r4,129
  807b58:	39c20204 	addi	r7,r7,2056
  807b5c:	000d883a 	mov	r6,zero
  807b60:	0140c284 	movi	r5,778
  807b64:	21021704 	addi	r4,r4,2140
  807b68:	0809a000 	call	809a00 <__assert_func>

00807b6c <__ratio>:
  807b6c:	defff904 	addi	sp,sp,-28
  807b70:	dc400315 	stw	r17,12(sp)
  807b74:	2823883a 	mov	r17,r5
  807b78:	d80b883a 	mov	r5,sp
  807b7c:	dfc00615 	stw	ra,24(sp)
  807b80:	dcc00515 	stw	r19,20(sp)
  807b84:	dc800415 	stw	r18,16(sp)
  807b88:	2027883a 	mov	r19,r4
  807b8c:	dc000215 	stw	r16,8(sp)
  807b90:	08079040 	call	807904 <__b2d>
  807b94:	d9400104 	addi	r5,sp,4
  807b98:	8809883a 	mov	r4,r17
  807b9c:	1025883a 	mov	r18,r2
  807ba0:	1821883a 	mov	r16,r3
  807ba4:	08079040 	call	807904 <__b2d>
  807ba8:	89400417 	ldw	r5,16(r17)
  807bac:	99000417 	ldw	r4,16(r19)
  807bb0:	d9800117 	ldw	r6,4(sp)
  807bb4:	180f883a 	mov	r7,r3
  807bb8:	2149c83a 	sub	r4,r4,r5
  807bbc:	d9400017 	ldw	r5,0(sp)
  807bc0:	2008917a 	slli	r4,r4,5
  807bc4:	298bc83a 	sub	r5,r5,r6
  807bc8:	2149883a 	add	r4,r4,r5
  807bcc:	100d883a 	mov	r6,r2
  807bd0:	01000c0e 	bge	zero,r4,807c04 <__ratio+0x98>
  807bd4:	2008953a 	slli	r4,r4,20
  807bd8:	2421883a 	add	r16,r4,r16
  807bdc:	9009883a 	mov	r4,r18
  807be0:	800b883a 	mov	r5,r16
  807be4:	080be8c0 	call	80be8c <__divdf3>
  807be8:	dfc00617 	ldw	ra,24(sp)
  807bec:	dcc00517 	ldw	r19,20(sp)
  807bf0:	dc800417 	ldw	r18,16(sp)
  807bf4:	dc400317 	ldw	r17,12(sp)
  807bf8:	dc000217 	ldw	r16,8(sp)
  807bfc:	dec00704 	addi	sp,sp,28
  807c00:	f800283a 	ret
  807c04:	2008953a 	slli	r4,r4,20
  807c08:	190fc83a 	sub	r7,r3,r4
  807c0c:	003ff306 	br	807bdc <__ratio+0x70>

00807c10 <_mprec_log10>:
  807c10:	defffe04 	addi	sp,sp,-8
  807c14:	dc000015 	stw	r16,0(sp)
  807c18:	dfc00115 	stw	ra,4(sp)
  807c1c:	20800608 	cmpgei	r2,r4,24
  807c20:	2021883a 	mov	r16,r4
  807c24:	10000f26 	beq	r2,zero,807c64 <_mprec_log10+0x54>
  807c28:	0009883a 	mov	r4,zero
  807c2c:	014ffc34 	movhi	r5,16368
  807c30:	000d883a 	mov	r6,zero
  807c34:	01d00934 	movhi	r7,16420
  807c38:	080ca200 	call	80ca20 <__muldf3>
  807c3c:	843fffc4 	addi	r16,r16,-1
  807c40:	1009883a 	mov	r4,r2
  807c44:	180b883a 	mov	r5,r3
  807c48:	803ff91e 	bne	r16,zero,807c30 <_mprec_log10+0x20>
  807c4c:	2005883a 	mov	r2,r4
  807c50:	2807883a 	mov	r3,r5
  807c54:	dfc00117 	ldw	ra,4(sp)
  807c58:	dc000017 	ldw	r16,0(sp)
  807c5c:	dec00204 	addi	sp,sp,8
  807c60:	f800283a 	ret
  807c64:	202090fa 	slli	r16,r4,3
  807c68:	00802074 	movhi	r2,129
  807c6c:	10823e04 	addi	r2,r2,2296
  807c70:	1421883a 	add	r16,r2,r16
  807c74:	81000017 	ldw	r4,0(r16)
  807c78:	81400117 	ldw	r5,4(r16)
  807c7c:	003ff306 	br	807c4c <_mprec_log10+0x3c>

00807c80 <__copybits>:
  807c80:	297fffc4 	addi	r5,r5,-1
  807c84:	280fd17a 	srai	r7,r5,5
  807c88:	31400417 	ldw	r5,16(r6)
  807c8c:	30800504 	addi	r2,r6,20
  807c90:	39c00044 	addi	r7,r7,1
  807c94:	280a90ba 	slli	r5,r5,2
  807c98:	380e90ba 	slli	r7,r7,2
  807c9c:	114b883a 	add	r5,r2,r5
  807ca0:	21cf883a 	add	r7,r4,r7
  807ca4:	11400c2e 	bgeu	r2,r5,807cd8 <__copybits+0x58>
  807ca8:	2007883a 	mov	r3,r4
  807cac:	12000017 	ldw	r8,0(r2)
  807cb0:	10800104 	addi	r2,r2,4
  807cb4:	18c00104 	addi	r3,r3,4
  807cb8:	1a3fff15 	stw	r8,-4(r3)
  807cbc:	117ffb36 	bltu	r2,r5,807cac <__copybits+0x2c>
  807cc0:	2985c83a 	sub	r2,r5,r6
  807cc4:	10bffac4 	addi	r2,r2,-21
  807cc8:	1004d0ba 	srli	r2,r2,2
  807ccc:	10800044 	addi	r2,r2,1
  807cd0:	100490ba 	slli	r2,r2,2
  807cd4:	2089883a 	add	r4,r4,r2
  807cd8:	21c0032e 	bgeu	r4,r7,807ce8 <__copybits+0x68>
  807cdc:	21000104 	addi	r4,r4,4
  807ce0:	203fff15 	stw	zero,-4(r4)
  807ce4:	21fffd36 	bltu	r4,r7,807cdc <__copybits+0x5c>
  807ce8:	f800283a 	ret

00807cec <__any_on>:
  807cec:	20c00417 	ldw	r3,16(r4)
  807cf0:	280dd17a 	srai	r6,r5,5
  807cf4:	21000504 	addi	r4,r4,20
  807cf8:	1980080e 	bge	r3,r6,807d1c <__any_on+0x30>
  807cfc:	180490ba 	slli	r2,r3,2
  807d00:	2085883a 	add	r2,r4,r2
  807d04:	20800f2e 	bgeu	r4,r2,807d44 <__any_on+0x58>
  807d08:	10ffff17 	ldw	r3,-4(r2)
  807d0c:	10bfff04 	addi	r2,r2,-4
  807d10:	183ffc26 	beq	r3,zero,807d04 <__any_on+0x18>
  807d14:	00800044 	movi	r2,1
  807d18:	f800283a 	ret
  807d1c:	300490ba 	slli	r2,r6,2
  807d20:	2085883a 	add	r2,r4,r2
  807d24:	30fff70e 	bge	r6,r3,807d04 <__any_on+0x18>
  807d28:	294007cc 	andi	r5,r5,31
  807d2c:	283ff526 	beq	r5,zero,807d04 <__any_on+0x18>
  807d30:	11800017 	ldw	r6,0(r2)
  807d34:	3146d83a 	srl	r3,r6,r5
  807d38:	194a983a 	sll	r5,r3,r5
  807d3c:	317ff51e 	bne	r6,r5,807d14 <__any_on+0x28>
  807d40:	003ff006 	br	807d04 <__any_on+0x18>
  807d44:	0005883a 	mov	r2,zero
  807d48:	f800283a 	ret

00807d4c <_realloc_r>:
  807d4c:	defff504 	addi	sp,sp,-44
  807d50:	dc800315 	stw	r18,12(sp)
  807d54:	dfc00a15 	stw	ra,40(sp)
  807d58:	df000915 	stw	fp,36(sp)
  807d5c:	ddc00815 	stw	r23,32(sp)
  807d60:	dd800715 	stw	r22,28(sp)
  807d64:	dd400615 	stw	r21,24(sp)
  807d68:	dd000515 	stw	r20,20(sp)
  807d6c:	dcc00415 	stw	r19,16(sp)
  807d70:	dc400215 	stw	r17,8(sp)
  807d74:	dc000115 	stw	r16,4(sp)
  807d78:	3025883a 	mov	r18,r6
  807d7c:	28008b26 	beq	r5,zero,807fac <_realloc_r+0x260>
  807d80:	2821883a 	mov	r16,r5
  807d84:	2027883a 	mov	r19,r4
  807d88:	944002c4 	addi	r17,r18,11
  807d8c:	080e4880 	call	80e488 <__malloc_lock>
  807d90:	888005f0 	cmpltui	r2,r17,23
  807d94:	1000521e 	bne	r2,zero,807ee0 <_realloc_r+0x194>
  807d98:	017ffe04 	movi	r5,-8
  807d9c:	8962703a 	and	r17,r17,r5
  807da0:	8807883a 	mov	r3,r17
  807da4:	88005116 	blt	r17,zero,807eec <_realloc_r+0x1a0>
  807da8:	8c805036 	bltu	r17,r18,807eec <_realloc_r+0x1a0>
  807dac:	80bfff17 	ldw	r2,-4(r16)
  807db0:	017fff04 	movi	r5,-4
  807db4:	857ffe04 	addi	r21,r16,-8
  807db8:	1168703a 	and	r20,r2,r5
  807dbc:	ad2d883a 	add	r22,r21,r20
  807dc0:	a0c0390e 	bge	r20,r3,807ea8 <_realloc_r+0x15c>
  807dc4:	07002074 	movhi	fp,129
  807dc8:	e7044104 	addi	fp,fp,4356
  807dcc:	e2000217 	ldw	r8,8(fp)
  807dd0:	b1000117 	ldw	r4,4(r22)
  807dd4:	45808e26 	beq	r8,r22,808010 <_realloc_r+0x2c4>
  807dd8:	01bfff84 	movi	r6,-2
  807ddc:	218c703a 	and	r6,r4,r6
  807de0:	b18d883a 	add	r6,r22,r6
  807de4:	31800117 	ldw	r6,4(r6)
  807de8:	3180004c 	andi	r6,r6,1
  807dec:	30004f1e 	bne	r6,zero,807f2c <_realloc_r+0x1e0>
  807df0:	2148703a 	and	r4,r4,r5
  807df4:	a10b883a 	add	r5,r20,r4
  807df8:	28c0bf0e 	bge	r5,r3,8080f8 <_realloc_r+0x3ac>
  807dfc:	1080004c 	andi	r2,r2,1
  807e00:	10004c1e 	bne	r2,zero,807f34 <_realloc_r+0x1e8>
  807e04:	81fffe17 	ldw	r7,-8(r16)
  807e08:	00bfff04 	movi	r2,-4
  807e0c:	a9cfc83a 	sub	r7,r21,r7
  807e10:	39400117 	ldw	r5,4(r7)
  807e14:	288a703a 	and	r5,r5,r2
  807e18:	b0000426 	beq	r22,zero,807e2c <_realloc_r+0xe0>
  807e1c:	a16f883a 	add	r23,r20,r5
  807e20:	b92f883a 	add	r23,r23,r4
  807e24:	4580bf26 	beq	r8,r22,808124 <_realloc_r+0x3d8>
  807e28:	b8c0930e 	bge	r23,r3,808078 <_realloc_r+0x32c>
  807e2c:	38004126 	beq	r7,zero,807f34 <_realloc_r+0x1e8>
  807e30:	a16f883a 	add	r23,r20,r5
  807e34:	b8c03f16 	blt	r23,r3,807f34 <_realloc_r+0x1e8>
  807e38:	38800317 	ldw	r2,12(r7)
  807e3c:	38c00217 	ldw	r3,8(r7)
  807e40:	a1bfff04 	addi	r6,r20,-4
  807e44:	31400968 	cmpgeui	r5,r6,37
  807e48:	18800315 	stw	r2,12(r3)
  807e4c:	10c00215 	stw	r3,8(r2)
  807e50:	39000204 	addi	r4,r7,8
  807e54:	3ded883a 	add	r22,r7,r23
  807e58:	2800941e 	bne	r5,zero,8080ac <_realloc_r+0x360>
  807e5c:	30800530 	cmpltui	r2,r6,20
  807e60:	80c00017 	ldw	r3,0(r16)
  807e64:	1000df1e 	bne	r2,zero,8081e4 <_realloc_r+0x498>
  807e68:	38c00215 	stw	r3,8(r7)
  807e6c:	80c00117 	ldw	r3,4(r16)
  807e70:	30800728 	cmpgeui	r2,r6,28
  807e74:	38c00315 	stw	r3,12(r7)
  807e78:	1000dc1e 	bne	r2,zero,8081ec <_realloc_r+0x4a0>
  807e7c:	80c00217 	ldw	r3,8(r16)
  807e80:	38800404 	addi	r2,r7,16
  807e84:	84000204 	addi	r16,r16,8
  807e88:	10c00015 	stw	r3,0(r2)
  807e8c:	80c00117 	ldw	r3,4(r16)
  807e90:	b829883a 	mov	r20,r23
  807e94:	382b883a 	mov	r21,r7
  807e98:	10c00115 	stw	r3,4(r2)
  807e9c:	80c00217 	ldw	r3,8(r16)
  807ea0:	2021883a 	mov	r16,r4
  807ea4:	10c00215 	stw	r3,8(r2)
  807ea8:	a9800117 	ldw	r6,4(r21)
  807eac:	a445c83a 	sub	r2,r20,r17
  807eb0:	10c00430 	cmpltui	r3,r2,16
  807eb4:	3180004c 	andi	r6,r6,1
  807eb8:	18004926 	beq	r3,zero,807fe0 <_realloc_r+0x294>
  807ebc:	a18cb03a 	or	r6,r20,r6
  807ec0:	a9800115 	stw	r6,4(r21)
  807ec4:	b0800117 	ldw	r2,4(r22)
  807ec8:	10800054 	ori	r2,r2,1
  807ecc:	b0800115 	stw	r2,4(r22)
  807ed0:	9809883a 	mov	r4,r19
  807ed4:	080e4ac0 	call	80e4ac <__malloc_unlock>
  807ed8:	8025883a 	mov	r18,r16
  807edc:	00000606 	br	807ef8 <_realloc_r+0x1ac>
  807ee0:	04400404 	movi	r17,16
  807ee4:	00c00404 	movi	r3,16
  807ee8:	8cbfb02e 	bgeu	r17,r18,807dac <_realloc_r+0x60>
  807eec:	00800304 	movi	r2,12
  807ef0:	98800015 	stw	r2,0(r19)
  807ef4:	0025883a 	mov	r18,zero
  807ef8:	9005883a 	mov	r2,r18
  807efc:	dfc00a17 	ldw	ra,40(sp)
  807f00:	df000917 	ldw	fp,36(sp)
  807f04:	ddc00817 	ldw	r23,32(sp)
  807f08:	dd800717 	ldw	r22,28(sp)
  807f0c:	dd400617 	ldw	r21,24(sp)
  807f10:	dd000517 	ldw	r20,20(sp)
  807f14:	dcc00417 	ldw	r19,16(sp)
  807f18:	dc800317 	ldw	r18,12(sp)
  807f1c:	dc400217 	ldw	r17,8(sp)
  807f20:	dc000117 	ldw	r16,4(sp)
  807f24:	dec00b04 	addi	sp,sp,44
  807f28:	f800283a 	ret
  807f2c:	1080004c 	andi	r2,r2,1
  807f30:	10006c26 	beq	r2,zero,8080e4 <_realloc_r+0x398>
  807f34:	900b883a 	mov	r5,r18
  807f38:	9809883a 	mov	r4,r19
  807f3c:	08060440 	call	806044 <_malloc_r>
  807f40:	1025883a 	mov	r18,r2
  807f44:	10001626 	beq	r2,zero,807fa0 <_realloc_r+0x254>
  807f48:	80bfff17 	ldw	r2,-4(r16)
  807f4c:	013fff84 	movi	r4,-2
  807f50:	90fffe04 	addi	r3,r18,-8
  807f54:	1104703a 	and	r2,r2,r4
  807f58:	a885883a 	add	r2,r21,r2
  807f5c:	10c05b26 	beq	r2,r3,8080cc <_realloc_r+0x380>
  807f60:	a1bfff04 	addi	r6,r20,-4
  807f64:	30800968 	cmpgeui	r2,r6,37
  807f68:	10006a1e 	bne	r2,zero,808114 <_realloc_r+0x3c8>
  807f6c:	30800530 	cmpltui	r2,r6,20
  807f70:	81000017 	ldw	r4,0(r16)
  807f74:	10003726 	beq	r2,zero,808054 <_realloc_r+0x308>
  807f78:	9005883a 	mov	r2,r18
  807f7c:	8007883a 	mov	r3,r16
  807f80:	11000015 	stw	r4,0(r2)
  807f84:	19000117 	ldw	r4,4(r3)
  807f88:	11000115 	stw	r4,4(r2)
  807f8c:	18c00217 	ldw	r3,8(r3)
  807f90:	10c00215 	stw	r3,8(r2)
  807f94:	800b883a 	mov	r5,r16
  807f98:	9809883a 	mov	r4,r19
  807f9c:	08055440 	call	805544 <_free_r>
  807fa0:	9809883a 	mov	r4,r19
  807fa4:	080e4ac0 	call	80e4ac <__malloc_unlock>
  807fa8:	003fd306 	br	807ef8 <_realloc_r+0x1ac>
  807fac:	300b883a 	mov	r5,r6
  807fb0:	dfc00a17 	ldw	ra,40(sp)
  807fb4:	df000917 	ldw	fp,36(sp)
  807fb8:	ddc00817 	ldw	r23,32(sp)
  807fbc:	dd800717 	ldw	r22,28(sp)
  807fc0:	dd400617 	ldw	r21,24(sp)
  807fc4:	dd000517 	ldw	r20,20(sp)
  807fc8:	dcc00417 	ldw	r19,16(sp)
  807fcc:	dc800317 	ldw	r18,12(sp)
  807fd0:	dc400217 	ldw	r17,8(sp)
  807fd4:	dc000117 	ldw	r16,4(sp)
  807fd8:	dec00b04 	addi	sp,sp,44
  807fdc:	08060441 	jmpi	806044 <_malloc_r>
  807fe0:	344cb03a 	or	r6,r6,r17
  807fe4:	a9800115 	stw	r6,4(r21)
  807fe8:	ac4b883a 	add	r5,r21,r17
  807fec:	10800054 	ori	r2,r2,1
  807ff0:	28800115 	stw	r2,4(r5)
  807ff4:	b0800117 	ldw	r2,4(r22)
  807ff8:	29400204 	addi	r5,r5,8
  807ffc:	9809883a 	mov	r4,r19
  808000:	10800054 	ori	r2,r2,1
  808004:	b0800115 	stw	r2,4(r22)
  808008:	08055440 	call	805544 <_free_r>
  80800c:	003fb006 	br	807ed0 <_realloc_r+0x184>
  808010:	2148703a 	and	r4,r4,r5
  808014:	a10b883a 	add	r5,r20,r4
  808018:	89800404 	addi	r6,r17,16
  80801c:	29bf7716 	blt	r5,r6,807dfc <_realloc_r+0xb0>
  808020:	ac6b883a 	add	r21,r21,r17
  808024:	2c45c83a 	sub	r2,r5,r17
  808028:	e5400215 	stw	r21,8(fp)
  80802c:	10800054 	ori	r2,r2,1
  808030:	a8800115 	stw	r2,4(r21)
  808034:	80bfff17 	ldw	r2,-4(r16)
  808038:	9809883a 	mov	r4,r19
  80803c:	8025883a 	mov	r18,r16
  808040:	1080004c 	andi	r2,r2,1
  808044:	1462b03a 	or	r17,r2,r17
  808048:	847fff15 	stw	r17,-4(r16)
  80804c:	080e4ac0 	call	80e4ac <__malloc_unlock>
  808050:	003fa906 	br	807ef8 <_realloc_r+0x1ac>
  808054:	91000015 	stw	r4,0(r18)
  808058:	80c00117 	ldw	r3,4(r16)
  80805c:	30800728 	cmpgeui	r2,r6,28
  808060:	90c00115 	stw	r3,4(r18)
  808064:	1000551e 	bne	r2,zero,8081bc <_realloc_r+0x470>
  808068:	81000217 	ldw	r4,8(r16)
  80806c:	80c00204 	addi	r3,r16,8
  808070:	90800204 	addi	r2,r18,8
  808074:	003fc206 	br	807f80 <_realloc_r+0x234>
  808078:	b0800317 	ldw	r2,12(r22)
  80807c:	b0c00217 	ldw	r3,8(r22)
  808080:	a1bfff04 	addi	r6,r20,-4
  808084:	31400968 	cmpgeui	r5,r6,37
  808088:	18800315 	stw	r2,12(r3)
  80808c:	10c00215 	stw	r3,8(r2)
  808090:	38c00217 	ldw	r3,8(r7)
  808094:	38800317 	ldw	r2,12(r7)
  808098:	39000204 	addi	r4,r7,8
  80809c:	3ded883a 	add	r22,r7,r23
  8080a0:	18800315 	stw	r2,12(r3)
  8080a4:	10c00215 	stw	r3,8(r2)
  8080a8:	283f6c26 	beq	r5,zero,807e5c <_realloc_r+0x110>
  8080ac:	800b883a 	mov	r5,r16
  8080b0:	d9c00015 	stw	r7,0(sp)
  8080b4:	08069f80 	call	8069f8 <memmove>
  8080b8:	d9c00017 	ldw	r7,0(sp)
  8080bc:	1021883a 	mov	r16,r2
  8080c0:	b829883a 	mov	r20,r23
  8080c4:	382b883a 	mov	r21,r7
  8080c8:	003f7706 	br	807ea8 <_realloc_r+0x15c>
  8080cc:	90bfff17 	ldw	r2,-4(r18)
  8080d0:	00ffff04 	movi	r3,-4
  8080d4:	10c4703a 	and	r2,r2,r3
  8080d8:	a0a9883a 	add	r20,r20,r2
  8080dc:	ad2d883a 	add	r22,r21,r20
  8080e0:	003f7106 	br	807ea8 <_realloc_r+0x15c>
  8080e4:	81fffe17 	ldw	r7,-8(r16)
  8080e8:	a9cfc83a 	sub	r7,r21,r7
  8080ec:	39000117 	ldw	r4,4(r7)
  8080f0:	214a703a 	and	r5,r4,r5
  8080f4:	003f4d06 	br	807e2c <_realloc_r+0xe0>
  8080f8:	b0800317 	ldw	r2,12(r22)
  8080fc:	b0c00217 	ldw	r3,8(r22)
  808100:	2829883a 	mov	r20,r5
  808104:	a96d883a 	add	r22,r21,r5
  808108:	18800315 	stw	r2,12(r3)
  80810c:	10c00215 	stw	r3,8(r2)
  808110:	003f6506 	br	807ea8 <_realloc_r+0x15c>
  808114:	800b883a 	mov	r5,r16
  808118:	9009883a 	mov	r4,r18
  80811c:	08069f80 	call	8069f8 <memmove>
  808120:	003f9c06 	br	807f94 <_realloc_r+0x248>
  808124:	88800404 	addi	r2,r17,16
  808128:	b8bf4016 	blt	r23,r2,807e2c <_realloc_r+0xe0>
  80812c:	38800317 	ldw	r2,12(r7)
  808130:	38c00217 	ldw	r3,8(r7)
  808134:	a1bfff04 	addi	r6,r20,-4
  808138:	31000968 	cmpgeui	r4,r6,37
  80813c:	18800315 	stw	r2,12(r3)
  808140:	10c00215 	stw	r3,8(r2)
  808144:	3c800204 	addi	r18,r7,8
  808148:	20003b1e 	bne	r4,zero,808238 <_realloc_r+0x4ec>
  80814c:	30800530 	cmpltui	r2,r6,20
  808150:	80c00017 	ldw	r3,0(r16)
  808154:	1000361e 	bne	r2,zero,808230 <_realloc_r+0x4e4>
  808158:	38c00215 	stw	r3,8(r7)
  80815c:	80c00117 	ldw	r3,4(r16)
  808160:	30800728 	cmpgeui	r2,r6,28
  808164:	38c00315 	stw	r3,12(r7)
  808168:	1000401e 	bne	r2,zero,80826c <_realloc_r+0x520>
  80816c:	80c00217 	ldw	r3,8(r16)
  808170:	38800404 	addi	r2,r7,16
  808174:	84000204 	addi	r16,r16,8
  808178:	10c00015 	stw	r3,0(r2)
  80817c:	80c00117 	ldw	r3,4(r16)
  808180:	10c00115 	stw	r3,4(r2)
  808184:	80c00217 	ldw	r3,8(r16)
  808188:	10c00215 	stw	r3,8(r2)
  80818c:	3c47883a 	add	r3,r7,r17
  808190:	bc45c83a 	sub	r2,r23,r17
  808194:	e0c00215 	stw	r3,8(fp)
  808198:	10800054 	ori	r2,r2,1
  80819c:	18800115 	stw	r2,4(r3)
  8081a0:	38800117 	ldw	r2,4(r7)
  8081a4:	9809883a 	mov	r4,r19
  8081a8:	1080004c 	andi	r2,r2,1
  8081ac:	1462b03a 	or	r17,r2,r17
  8081b0:	3c400115 	stw	r17,4(r7)
  8081b4:	080e4ac0 	call	80e4ac <__malloc_unlock>
  8081b8:	003f4f06 	br	807ef8 <_realloc_r+0x1ac>
  8081bc:	80800217 	ldw	r2,8(r16)
  8081c0:	31800920 	cmpeqi	r6,r6,36
  8081c4:	90800215 	stw	r2,8(r18)
  8081c8:	80800317 	ldw	r2,12(r16)
  8081cc:	90800315 	stw	r2,12(r18)
  8081d0:	81000417 	ldw	r4,16(r16)
  8081d4:	30000f1e 	bne	r6,zero,808214 <_realloc_r+0x4c8>
  8081d8:	80c00404 	addi	r3,r16,16
  8081dc:	90800404 	addi	r2,r18,16
  8081e0:	003f6706 	br	807f80 <_realloc_r+0x234>
  8081e4:	2005883a 	mov	r2,r4
  8081e8:	003f2706 	br	807e88 <_realloc_r+0x13c>
  8081ec:	80800217 	ldw	r2,8(r16)
  8081f0:	31800920 	cmpeqi	r6,r6,36
  8081f4:	38800415 	stw	r2,16(r7)
  8081f8:	80800317 	ldw	r2,12(r16)
  8081fc:	38800515 	stw	r2,20(r7)
  808200:	80c00417 	ldw	r3,16(r16)
  808204:	3000121e 	bne	r6,zero,808250 <_realloc_r+0x504>
  808208:	38800604 	addi	r2,r7,24
  80820c:	84000404 	addi	r16,r16,16
  808210:	003f1d06 	br	807e88 <_realloc_r+0x13c>
  808214:	91000415 	stw	r4,16(r18)
  808218:	81000517 	ldw	r4,20(r16)
  80821c:	80c00604 	addi	r3,r16,24
  808220:	90800604 	addi	r2,r18,24
  808224:	91000515 	stw	r4,20(r18)
  808228:	81000617 	ldw	r4,24(r16)
  80822c:	003f5406 	br	807f80 <_realloc_r+0x234>
  808230:	9005883a 	mov	r2,r18
  808234:	003fd006 	br	808178 <_realloc_r+0x42c>
  808238:	800b883a 	mov	r5,r16
  80823c:	9009883a 	mov	r4,r18
  808240:	d9c00015 	stw	r7,0(sp)
  808244:	08069f80 	call	8069f8 <memmove>
  808248:	d9c00017 	ldw	r7,0(sp)
  80824c:	003fcf06 	br	80818c <_realloc_r+0x440>
  808250:	84000604 	addi	r16,r16,24
  808254:	38c00615 	stw	r3,24(r7)
  808258:	80ffff17 	ldw	r3,-4(r16)
  80825c:	38800804 	addi	r2,r7,32
  808260:	38c00715 	stw	r3,28(r7)
  808264:	80c00017 	ldw	r3,0(r16)
  808268:	003f0706 	br	807e88 <_realloc_r+0x13c>
  80826c:	80800217 	ldw	r2,8(r16)
  808270:	31800920 	cmpeqi	r6,r6,36
  808274:	38800415 	stw	r2,16(r7)
  808278:	80800317 	ldw	r2,12(r16)
  80827c:	38800515 	stw	r2,20(r7)
  808280:	80c00417 	ldw	r3,16(r16)
  808284:	3000031e 	bne	r6,zero,808294 <_realloc_r+0x548>
  808288:	38800604 	addi	r2,r7,24
  80828c:	84000404 	addi	r16,r16,16
  808290:	003fb906 	br	808178 <_realloc_r+0x42c>
  808294:	84000604 	addi	r16,r16,24
  808298:	38c00615 	stw	r3,24(r7)
  80829c:	80ffff17 	ldw	r3,-4(r16)
  8082a0:	38800804 	addi	r2,r7,32
  8082a4:	38c00715 	stw	r3,28(r7)
  8082a8:	80c00017 	ldw	r3,0(r16)
  8082ac:	003fb206 	br	808178 <_realloc_r+0x42c>

008082b0 <_sbrk_r>:
  8082b0:	defffe04 	addi	sp,sp,-8
  8082b4:	dc000015 	stw	r16,0(sp)
  8082b8:	00802074 	movhi	r2,129
  8082bc:	2021883a 	mov	r16,r4
  8082c0:	2809883a 	mov	r4,r5
  8082c4:	dfc00115 	stw	ra,4(sp)
  8082c8:	10112715 	stw	zero,17564(r2)
  8082cc:	080e6840 	call	80e684 <sbrk>
  8082d0:	10ffffd8 	cmpnei	r3,r2,-1
  8082d4:	18000426 	beq	r3,zero,8082e8 <_sbrk_r+0x38>
  8082d8:	dfc00117 	ldw	ra,4(sp)
  8082dc:	dc000017 	ldw	r16,0(sp)
  8082e0:	dec00204 	addi	sp,sp,8
  8082e4:	f800283a 	ret
  8082e8:	00c02074 	movhi	r3,129
  8082ec:	18d12717 	ldw	r3,17564(r3)
  8082f0:	183ff926 	beq	r3,zero,8082d8 <_sbrk_r+0x28>
  8082f4:	80c00015 	stw	r3,0(r16)
  8082f8:	dfc00117 	ldw	ra,4(sp)
  8082fc:	dc000017 	ldw	r16,0(sp)
  808300:	dec00204 	addi	sp,sp,8
  808304:	f800283a 	ret

00808308 <__sread>:
  808308:	defffe04 	addi	sp,sp,-8
  80830c:	dc000015 	stw	r16,0(sp)
  808310:	2821883a 	mov	r16,r5
  808314:	2940038f 	ldh	r5,14(r5)
  808318:	dfc00115 	stw	ra,4(sp)
  80831c:	080a0a00 	call	80a0a0 <_read_r>
  808320:	10000716 	blt	r2,zero,808340 <__sread+0x38>
  808324:	80c01417 	ldw	r3,80(r16)
  808328:	1887883a 	add	r3,r3,r2
  80832c:	80c01415 	stw	r3,80(r16)
  808330:	dfc00117 	ldw	ra,4(sp)
  808334:	dc000017 	ldw	r16,0(sp)
  808338:	dec00204 	addi	sp,sp,8
  80833c:	f800283a 	ret
  808340:	80c0030b 	ldhu	r3,12(r16)
  808344:	18fbffcc 	andi	r3,r3,61439
  808348:	80c0030d 	sth	r3,12(r16)
  80834c:	dfc00117 	ldw	ra,4(sp)
  808350:	dc000017 	ldw	r16,0(sp)
  808354:	dec00204 	addi	sp,sp,8
  808358:	f800283a 	ret

0080835c <__seofread>:
  80835c:	0005883a 	mov	r2,zero
  808360:	f800283a 	ret

00808364 <__swrite>:
  808364:	2880030b 	ldhu	r2,12(r5)
  808368:	defffb04 	addi	sp,sp,-20
  80836c:	dcc00315 	stw	r19,12(sp)
  808370:	dc800215 	stw	r18,8(sp)
  808374:	dc400115 	stw	r17,4(sp)
  808378:	dc000015 	stw	r16,0(sp)
  80837c:	dfc00415 	stw	ra,16(sp)
  808380:	10c0400c 	andi	r3,r2,256
  808384:	2821883a 	mov	r16,r5
  808388:	2023883a 	mov	r17,r4
  80838c:	2940038f 	ldh	r5,14(r5)
  808390:	3025883a 	mov	r18,r6
  808394:	3827883a 	mov	r19,r7
  808398:	18000c1e 	bne	r3,zero,8083cc <__swrite+0x68>
  80839c:	10bbffcc 	andi	r2,r2,61439
  8083a0:	980f883a 	mov	r7,r19
  8083a4:	900d883a 	mov	r6,r18
  8083a8:	8809883a 	mov	r4,r17
  8083ac:	8080030d 	sth	r2,12(r16)
  8083b0:	dfc00417 	ldw	ra,16(sp)
  8083b4:	dcc00317 	ldw	r19,12(sp)
  8083b8:	dc800217 	ldw	r18,8(sp)
  8083bc:	dc400117 	ldw	r17,4(sp)
  8083c0:	dc000017 	ldw	r16,0(sp)
  8083c4:	dec00504 	addi	sp,sp,20
  8083c8:	08099441 	jmpi	809944 <_write_r>
  8083cc:	01c00084 	movi	r7,2
  8083d0:	000d883a 	mov	r6,zero
  8083d4:	0809fec0 	call	809fec <_lseek_r>
  8083d8:	8080030b 	ldhu	r2,12(r16)
  8083dc:	8140038f 	ldh	r5,14(r16)
  8083e0:	003fee06 	br	80839c <__swrite+0x38>

008083e4 <__sseek>:
  8083e4:	defffe04 	addi	sp,sp,-8
  8083e8:	dc000015 	stw	r16,0(sp)
  8083ec:	2821883a 	mov	r16,r5
  8083f0:	2940038f 	ldh	r5,14(r5)
  8083f4:	dfc00115 	stw	ra,4(sp)
  8083f8:	0809fec0 	call	809fec <_lseek_r>
  8083fc:	10ffffd8 	cmpnei	r3,r2,-1
  808400:	18000826 	beq	r3,zero,808424 <__sseek+0x40>
  808404:	80c0030b 	ldhu	r3,12(r16)
  808408:	80801415 	stw	r2,80(r16)
  80840c:	18c40014 	ori	r3,r3,4096
  808410:	80c0030d 	sth	r3,12(r16)
  808414:	dfc00117 	ldw	ra,4(sp)
  808418:	dc000017 	ldw	r16,0(sp)
  80841c:	dec00204 	addi	sp,sp,8
  808420:	f800283a 	ret
  808424:	80c0030b 	ldhu	r3,12(r16)
  808428:	18fbffcc 	andi	r3,r3,61439
  80842c:	80c0030d 	sth	r3,12(r16)
  808430:	dfc00117 	ldw	ra,4(sp)
  808434:	dc000017 	ldw	r16,0(sp)
  808438:	dec00204 	addi	sp,sp,8
  80843c:	f800283a 	ret

00808440 <__sclose>:
  808440:	2940038f 	ldh	r5,14(r5)
  808444:	08099a81 	jmpi	8099a8 <_close_r>

00808448 <__sprint_r.part.0>:
  808448:	28801917 	ldw	r2,100(r5)
  80844c:	defff604 	addi	sp,sp,-40
  808450:	dcc00315 	stw	r19,12(sp)
  808454:	dfc00915 	stw	ra,36(sp)
  808458:	df000815 	stw	fp,32(sp)
  80845c:	ddc00715 	stw	r23,28(sp)
  808460:	dd800615 	stw	r22,24(sp)
  808464:	dd400515 	stw	r21,20(sp)
  808468:	dd000415 	stw	r20,16(sp)
  80846c:	dc800215 	stw	r18,8(sp)
  808470:	dc400115 	stw	r17,4(sp)
  808474:	dc000015 	stw	r16,0(sp)
  808478:	1088000c 	andi	r2,r2,8192
  80847c:	3027883a 	mov	r19,r6
  808480:	10002c26 	beq	r2,zero,808534 <__sprint_r.part.0+0xec>
  808484:	30800217 	ldw	r2,8(r6)
  808488:	35000017 	ldw	r20,0(r6)
  80848c:	2821883a 	mov	r16,r5
  808490:	2023883a 	mov	r17,r4
  808494:	05bfff04 	movi	r22,-4
  808498:	10002426 	beq	r2,zero,80852c <__sprint_r.part.0+0xe4>
  80849c:	a5400117 	ldw	r21,4(r20)
  8084a0:	a5c00017 	ldw	r23,0(r20)
  8084a4:	a824d0ba 	srli	r18,r21,2
  8084a8:	90001b26 	beq	r18,zero,808518 <__sprint_r.part.0+0xd0>
  8084ac:	0039883a 	mov	fp,zero
  8084b0:	00000206 	br	8084bc <__sprint_r.part.0+0x74>
  8084b4:	bdc00104 	addi	r23,r23,4
  8084b8:	97001626 	beq	r18,fp,808514 <__sprint_r.part.0+0xcc>
  8084bc:	b9400017 	ldw	r5,0(r23)
  8084c0:	800d883a 	mov	r6,r16
  8084c4:	8809883a 	mov	r4,r17
  8084c8:	0809e000 	call	809e00 <_fputwc_r>
  8084cc:	10bfffe0 	cmpeqi	r2,r2,-1
  8084d0:	e7000044 	addi	fp,fp,1
  8084d4:	103ff726 	beq	r2,zero,8084b4 <__sprint_r.part.0+0x6c>
  8084d8:	00bfffc4 	movi	r2,-1
  8084dc:	98000215 	stw	zero,8(r19)
  8084e0:	98000115 	stw	zero,4(r19)
  8084e4:	dfc00917 	ldw	ra,36(sp)
  8084e8:	df000817 	ldw	fp,32(sp)
  8084ec:	ddc00717 	ldw	r23,28(sp)
  8084f0:	dd800617 	ldw	r22,24(sp)
  8084f4:	dd400517 	ldw	r21,20(sp)
  8084f8:	dd000417 	ldw	r20,16(sp)
  8084fc:	dcc00317 	ldw	r19,12(sp)
  808500:	dc800217 	ldw	r18,8(sp)
  808504:	dc400117 	ldw	r17,4(sp)
  808508:	dc000017 	ldw	r16,0(sp)
  80850c:	dec00a04 	addi	sp,sp,40
  808510:	f800283a 	ret
  808514:	98800217 	ldw	r2,8(r19)
  808518:	adaa703a 	and	r21,r21,r22
  80851c:	1545c83a 	sub	r2,r2,r21
  808520:	98800215 	stw	r2,8(r19)
  808524:	a5000204 	addi	r20,r20,8
  808528:	103fdc1e 	bne	r2,zero,80849c <__sprint_r.part.0+0x54>
  80852c:	0005883a 	mov	r2,zero
  808530:	003fea06 	br	8084dc <__sprint_r.part.0+0x94>
  808534:	08058400 	call	805840 <__sfvwrite_r>
  808538:	003fe806 	br	8084dc <__sprint_r.part.0+0x94>

0080853c <__sprint_r>:
  80853c:	30c00217 	ldw	r3,8(r6)
  808540:	18000126 	beq	r3,zero,808548 <__sprint_r+0xc>
  808544:	08084481 	jmpi	808448 <__sprint_r.part.0>
  808548:	30000115 	stw	zero,4(r6)
  80854c:	0005883a 	mov	r2,zero
  808550:	f800283a 	ret

00808554 <___vfiprintf_internal_r>:
  808554:	deffcf04 	addi	sp,sp,-196
  808558:	dd802d15 	stw	r22,180(sp)
  80855c:	dd402c15 	stw	r21,176(sp)
  808560:	dd002b15 	stw	r20,172(sp)
  808564:	dfc03015 	stw	ra,192(sp)
  808568:	df002f15 	stw	fp,188(sp)
  80856c:	ddc02e15 	stw	r23,184(sp)
  808570:	dcc02a15 	stw	r19,168(sp)
  808574:	dc802915 	stw	r18,164(sp)
  808578:	dc402815 	stw	r17,160(sp)
  80857c:	dc002715 	stw	r16,156(sp)
  808580:	d9c00415 	stw	r7,16(sp)
  808584:	202d883a 	mov	r22,r4
  808588:	282b883a 	mov	r21,r5
  80858c:	3029883a 	mov	r20,r6
  808590:	20000226 	beq	r4,zero,80859c <___vfiprintf_internal_r+0x48>
  808594:	20800e17 	ldw	r2,56(r4)
  808598:	1001b426 	beq	r2,zero,808c6c <___vfiprintf_internal_r+0x718>
  80859c:	a880030b 	ldhu	r2,12(r21)
  8085a0:	10c8000c 	andi	r3,r2,8192
  8085a4:	1800061e 	bne	r3,zero,8085c0 <___vfiprintf_internal_r+0x6c>
  8085a8:	a8c01917 	ldw	r3,100(r21)
  8085ac:	0137ffc4 	movi	r4,-8193
  8085b0:	10880014 	ori	r2,r2,8192
  8085b4:	1906703a 	and	r3,r3,r4
  8085b8:	a880030d 	sth	r2,12(r21)
  8085bc:	a8c01915 	stw	r3,100(r21)
  8085c0:	10c0020c 	andi	r3,r2,8
  8085c4:	18010826 	beq	r3,zero,8089e8 <___vfiprintf_internal_r+0x494>
  8085c8:	a8c00417 	ldw	r3,16(r21)
  8085cc:	18010626 	beq	r3,zero,8089e8 <___vfiprintf_internal_r+0x494>
  8085d0:	1080068c 	andi	r2,r2,26
  8085d4:	10800298 	cmpnei	r2,r2,10
  8085d8:	10010b26 	beq	r2,zero,808a08 <___vfiprintf_internal_r+0x4b4>
  8085dc:	dc801704 	addi	r18,sp,92
  8085e0:	dc800a15 	stw	r18,40(sp)
  8085e4:	d8000c15 	stw	zero,48(sp)
  8085e8:	d8000b15 	stw	zero,44(sp)
  8085ec:	9021883a 	mov	r16,r18
  8085f0:	d8000515 	stw	zero,20(sp)
  8085f4:	d8000115 	stw	zero,4(sp)
  8085f8:	a0c00007 	ldb	r3,0(r20)
  8085fc:	1800e826 	beq	r3,zero,8089a0 <___vfiprintf_internal_r+0x44c>
  808600:	a023883a 	mov	r17,r20
  808604:	00000306 	br	808614 <___vfiprintf_internal_r+0xc0>
  808608:	88c00047 	ldb	r3,1(r17)
  80860c:	8c400044 	addi	r17,r17,1
  808610:	18012a26 	beq	r3,zero,808abc <___vfiprintf_internal_r+0x568>
  808614:	18c00958 	cmpnei	r3,r3,37
  808618:	183ffb1e 	bne	r3,zero,808608 <___vfiprintf_internal_r+0xb4>
  80861c:	8d27c83a 	sub	r19,r17,r20
  808620:	8d01281e 	bne	r17,r20,808ac4 <___vfiprintf_internal_r+0x570>
  808624:	88800003 	ldbu	r2,0(r17)
  808628:	10803fcc 	andi	r2,r2,255
  80862c:	1080201c 	xori	r2,r2,128
  808630:	10bfe004 	addi	r2,r2,-128
  808634:	1000da26 	beq	r2,zero,8089a0 <___vfiprintf_internal_r+0x44c>
  808638:	88800047 	ldb	r2,1(r17)
  80863c:	8d000044 	addi	r20,r17,1
  808640:	d8000945 	stb	zero,37(sp)
  808644:	000b883a 	mov	r5,zero
  808648:	000d883a 	mov	r6,zero
  80864c:	023fffc4 	movi	r8,-1
  808650:	0023883a 	mov	r17,zero
  808654:	001b883a 	mov	r13,zero
  808658:	a5000044 	addi	r20,r20,1
  80865c:	10fff804 	addi	r3,r2,-32
  808660:	19001668 	cmpgeui	r4,r3,89
  808664:	20006c1e 	bne	r4,zero,808818 <___vfiprintf_internal_r+0x2c4>
  808668:	180690ba 	slli	r3,r3,2
  80866c:	01002074 	movhi	r4,129
  808670:	1909883a 	add	r4,r3,r4
  808674:	20e19f17 	ldw	r3,-31108(r4)
  808678:	1800683a 	jmp	r3
  80867c:	00808f7c 	xorhi	r2,zero,573
  808680:	00808818 	cmpnei	r2,zero,544
  808684:	00808818 	cmpnei	r2,zero,544
  808688:	00808f70 	cmpltui	r2,zero,573
  80868c:	00808818 	cmpnei	r2,zero,544
  808690:	00808818 	cmpnei	r2,zero,544
  808694:	00808818 	cmpnei	r2,zero,544
  808698:	00808818 	cmpnei	r2,zero,544
  80869c:	00808818 	cmpnei	r2,zero,544
  8086a0:	00808818 	cmpnei	r2,zero,544
  8086a4:	00808f48 	cmpgei	r2,zero,573
  8086a8:	00808f38 	rdprs	r2,zero,572
  8086ac:	00808818 	cmpnei	r2,zero,544
  8086b0:	00808f20 	cmpeqi	r2,zero,572
  8086b4:	00808ed4 	movui	r2,571
  8086b8:	00808818 	cmpnei	r2,zero,544
  8086bc:	00808ec8 	cmpgei	r2,zero,571
  8086c0:	008087e0 	cmpeqi	r2,zero,543
  8086c4:	008087e0 	cmpeqi	r2,zero,543
  8086c8:	008087e0 	cmpeqi	r2,zero,543
  8086cc:	008087e0 	cmpeqi	r2,zero,543
  8086d0:	008087e0 	cmpeqi	r2,zero,543
  8086d4:	008087e0 	cmpeqi	r2,zero,543
  8086d8:	008087e0 	cmpeqi	r2,zero,543
  8086dc:	008087e0 	cmpeqi	r2,zero,543
  8086e0:	008087e0 	cmpeqi	r2,zero,543
  8086e4:	00808818 	cmpnei	r2,zero,544
  8086e8:	00808818 	cmpnei	r2,zero,544
  8086ec:	00808818 	cmpnei	r2,zero,544
  8086f0:	00808818 	cmpnei	r2,zero,544
  8086f4:	00808818 	cmpnei	r2,zero,544
  8086f8:	00808818 	cmpnei	r2,zero,544
  8086fc:	00808818 	cmpnei	r2,zero,544
  808700:	00808818 	cmpnei	r2,zero,544
  808704:	00808818 	cmpnei	r2,zero,544
  808708:	00808818 	cmpnei	r2,zero,544
  80870c:	00808de4 	muli	r2,zero,567
  808710:	00808818 	cmpnei	r2,zero,544
  808714:	00808818 	cmpnei	r2,zero,544
  808718:	00808818 	cmpnei	r2,zero,544
  80871c:	00808818 	cmpnei	r2,zero,544
  808720:	00808818 	cmpnei	r2,zero,544
  808724:	00808818 	cmpnei	r2,zero,544
  808728:	00808818 	cmpnei	r2,zero,544
  80872c:	00808818 	cmpnei	r2,zero,544
  808730:	00808818 	cmpnei	r2,zero,544
  808734:	00808818 	cmpnei	r2,zero,544
  808738:	00808a54 	movui	r2,553
  80873c:	00808818 	cmpnei	r2,zero,544
  808740:	00808818 	cmpnei	r2,zero,544
  808744:	00808818 	cmpnei	r2,zero,544
  808748:	00808818 	cmpnei	r2,zero,544
  80874c:	00808818 	cmpnei	r2,zero,544
  808750:	00808a2c 	andhi	r2,zero,552
  808754:	00808818 	cmpnei	r2,zero,544
  808758:	00808818 	cmpnei	r2,zero,544
  80875c:	00808d9c 	xori	r2,zero,566
  808760:	00808818 	cmpnei	r2,zero,544
  808764:	00808818 	cmpnei	r2,zero,544
  808768:	00808818 	cmpnei	r2,zero,544
  80876c:	00808818 	cmpnei	r2,zero,544
  808770:	00808818 	cmpnei	r2,zero,544
  808774:	00808818 	cmpnei	r2,zero,544
  808778:	00808818 	cmpnei	r2,zero,544
  80877c:	00808818 	cmpnei	r2,zero,544
  808780:	00808818 	cmpnei	r2,zero,544
  808784:	00808818 	cmpnei	r2,zero,544
  808788:	00808d74 	movhi	r2,565
  80878c:	00808c74 	movhi	r2,561
  808790:	00808818 	cmpnei	r2,zero,544
  808794:	00808818 	cmpnei	r2,zero,544
  808798:	00808818 	cmpnei	r2,zero,544
  80879c:	00808d18 	cmpnei	r2,zero,564
  8087a0:	00808c74 	movhi	r2,561
  8087a4:	00808818 	cmpnei	r2,zero,544
  8087a8:	00808818 	cmpnei	r2,zero,544
  8087ac:	00808d60 	cmpeqi	r2,zero,565
  8087b0:	00808818 	cmpnei	r2,zero,544
  8087b4:	00808d24 	muli	r2,zero,564
  8087b8:	00808a58 	cmpnei	r2,zero,553
  8087bc:	00809054 	movui	r2,577
  8087c0:	00809048 	cmpgei	r2,zero,577
  8087c4:	00808818 	cmpnei	r2,zero,544
  8087c8:	00808ff0 	cmpltui	r2,zero,575
  8087cc:	00808818 	cmpnei	r2,zero,544
  8087d0:	00808a30 	cmpltui	r2,zero,552
  8087d4:	00808818 	cmpnei	r2,zero,544
  8087d8:	00808818 	cmpnei	r2,zero,544
  8087dc:	00808fa8 	cmpgeui	r2,zero,574
  8087e0:	0023883a 	mov	r17,zero
  8087e4:	113ff404 	addi	r4,r2,-48
  8087e8:	880690ba 	slli	r3,r17,2
  8087ec:	a0800007 	ldb	r2,0(r20)
  8087f0:	a5000044 	addi	r20,r20,1
  8087f4:	1c63883a 	add	r17,r3,r17
  8087f8:	8c63883a 	add	r17,r17,r17
  8087fc:	2463883a 	add	r17,r4,r17
  808800:	113ff404 	addi	r4,r2,-48
  808804:	20c002b0 	cmpltui	r3,r4,10
  808808:	183ff71e 	bne	r3,zero,8087e8 <___vfiprintf_internal_r+0x294>
  80880c:	10fff804 	addi	r3,r2,-32
  808810:	19001668 	cmpgeui	r4,r3,89
  808814:	203f9426 	beq	r4,zero,808668 <___vfiprintf_internal_r+0x114>
  808818:	29403fcc 	andi	r5,r5,255
  80881c:	2803e31e 	bne	r5,zero,8097ac <___vfiprintf_internal_r+0x1258>
  808820:	10005f26 	beq	r2,zero,8089a0 <___vfiprintf_internal_r+0x44c>
  808824:	d8800d05 	stb	r2,52(sp)
  808828:	d8000945 	stb	zero,37(sp)
  80882c:	05c00044 	movi	r23,1
  808830:	07000044 	movi	fp,1
  808834:	dcc00d04 	addi	r19,sp,52
  808838:	db400015 	stw	r13,0(sp)
  80883c:	0011883a 	mov	r8,zero
  808840:	d8800017 	ldw	r2,0(sp)
  808844:	1380008c 	andi	r14,r2,2
  808848:	70000126 	beq	r14,zero,808850 <___vfiprintf_internal_r+0x2fc>
  80884c:	bdc00084 	addi	r23,r23,2
  808850:	d8800017 	ldw	r2,0(sp)
  808854:	d9000b17 	ldw	r4,44(sp)
  808858:	1340210c 	andi	r13,r2,132
  80885c:	21800044 	addi	r6,r4,1
  808860:	d8800c17 	ldw	r2,48(sp)
  808864:	300b883a 	mov	r5,r6
  808868:	6800021e 	bne	r13,zero,808874 <___vfiprintf_internal_r+0x320>
  80886c:	8dc7c83a 	sub	r3,r17,r23
  808870:	00c2d716 	blt	zero,r3,8093d0 <___vfiprintf_internal_r+0xe7c>
  808874:	d8c00947 	ldb	r3,37(sp)
  808878:	81800204 	addi	r6,r16,8
  80887c:	18000d26 	beq	r3,zero,8088b4 <___vfiprintf_internal_r+0x360>
  808880:	d8c00944 	addi	r3,sp,37
  808884:	10800044 	addi	r2,r2,1
  808888:	80c00015 	stw	r3,0(r16)
  80888c:	00c00044 	movi	r3,1
  808890:	80c00115 	stw	r3,4(r16)
  808894:	d8800c15 	stw	r2,48(sp)
  808898:	d9400b15 	stw	r5,44(sp)
  80889c:	28c00208 	cmpgei	r3,r5,8
  8088a0:	1802ac1e 	bne	r3,zero,809354 <___vfiprintf_internal_r+0xe00>
  8088a4:	2809883a 	mov	r4,r5
  8088a8:	3021883a 	mov	r16,r6
  8088ac:	29400044 	addi	r5,r5,1
  8088b0:	31800204 	addi	r6,r6,8
  8088b4:	70001826 	beq	r14,zero,808918 <___vfiprintf_internal_r+0x3c4>
  8088b8:	d8c00984 	addi	r3,sp,38
  8088bc:	10800084 	addi	r2,r2,2
  8088c0:	80c00015 	stw	r3,0(r16)
  8088c4:	00c00084 	movi	r3,2
  8088c8:	80c00115 	stw	r3,4(r16)
  8088cc:	d8800c15 	stw	r2,48(sp)
  8088d0:	d9400b15 	stw	r5,44(sp)
  8088d4:	28c00208 	cmpgei	r3,r5,8
  8088d8:	1802b626 	beq	r3,zero,8093b4 <___vfiprintf_internal_r+0xe60>
  8088dc:	10031226 	beq	r2,zero,809528 <___vfiprintf_internal_r+0xfd4>
  8088e0:	d9800a04 	addi	r6,sp,40
  8088e4:	a80b883a 	mov	r5,r21
  8088e8:	b009883a 	mov	r4,r22
  8088ec:	da000315 	stw	r8,12(sp)
  8088f0:	db400215 	stw	r13,8(sp)
  8088f4:	08084480 	call	808448 <__sprint_r.part.0>
  8088f8:	10002b1e 	bne	r2,zero,8089a8 <___vfiprintf_internal_r+0x454>
  8088fc:	d9000b17 	ldw	r4,44(sp)
  808900:	d8800c17 	ldw	r2,48(sp)
  808904:	da000317 	ldw	r8,12(sp)
  808908:	db400217 	ldw	r13,8(sp)
  80890c:	d9801904 	addi	r6,sp,100
  808910:	21400044 	addi	r5,r4,1
  808914:	9021883a 	mov	r16,r18
  808918:	6b402018 	cmpnei	r13,r13,128
  80891c:	68020c26 	beq	r13,zero,809150 <___vfiprintf_internal_r+0xbfc>
  808920:	4711c83a 	sub	r8,r8,fp
  808924:	02024b16 	blt	zero,r8,809254 <___vfiprintf_internal_r+0xd00>
  808928:	e085883a 	add	r2,fp,r2
  80892c:	d9400b15 	stw	r5,44(sp)
  808930:	84c00015 	stw	r19,0(r16)
  808934:	87000115 	stw	fp,4(r16)
  808938:	d8800c15 	stw	r2,48(sp)
  80893c:	29400210 	cmplti	r5,r5,8
  808940:	2800081e 	bne	r5,zero,808964 <___vfiprintf_internal_r+0x410>
  808944:	10008f26 	beq	r2,zero,808b84 <___vfiprintf_internal_r+0x630>
  808948:	d9800a04 	addi	r6,sp,40
  80894c:	a80b883a 	mov	r5,r21
  808950:	b009883a 	mov	r4,r22
  808954:	08084480 	call	808448 <__sprint_r.part.0>
  808958:	1000131e 	bne	r2,zero,8089a8 <___vfiprintf_internal_r+0x454>
  80895c:	d8800c17 	ldw	r2,48(sp)
  808960:	900d883a 	mov	r6,r18
  808964:	d8c00017 	ldw	r3,0(sp)
  808968:	1cc0010c 	andi	r19,r3,4
  80896c:	98000226 	beq	r19,zero,808978 <___vfiprintf_internal_r+0x424>
  808970:	8de1c83a 	sub	r16,r17,r23
  808974:	04008a16 	blt	zero,r16,808ba0 <___vfiprintf_internal_r+0x64c>
  808978:	8dc0010e 	bge	r17,r23,808980 <___vfiprintf_internal_r+0x42c>
  80897c:	b823883a 	mov	r17,r23
  808980:	d8c00117 	ldw	r3,4(sp)
  808984:	1c47883a 	add	r3,r3,r17
  808988:	d8c00115 	stw	r3,4(sp)
  80898c:	1002671e 	bne	r2,zero,80932c <___vfiprintf_internal_r+0xdd8>
  808990:	a0c00007 	ldb	r3,0(r20)
  808994:	d8000b15 	stw	zero,44(sp)
  808998:	9021883a 	mov	r16,r18
  80899c:	183f181e 	bne	r3,zero,808600 <___vfiprintf_internal_r+0xac>
  8089a0:	d8800c17 	ldw	r2,48(sp)
  8089a4:	1003831e 	bne	r2,zero,8097b4 <___vfiprintf_internal_r+0x1260>
  8089a8:	a880030b 	ldhu	r2,12(r21)
  8089ac:	1080100c 	andi	r2,r2,64
  8089b0:	10039e1e 	bne	r2,zero,80982c <___vfiprintf_internal_r+0x12d8>
  8089b4:	d8800117 	ldw	r2,4(sp)
  8089b8:	dfc03017 	ldw	ra,192(sp)
  8089bc:	df002f17 	ldw	fp,188(sp)
  8089c0:	ddc02e17 	ldw	r23,184(sp)
  8089c4:	dd802d17 	ldw	r22,180(sp)
  8089c8:	dd402c17 	ldw	r21,176(sp)
  8089cc:	dd002b17 	ldw	r20,172(sp)
  8089d0:	dcc02a17 	ldw	r19,168(sp)
  8089d4:	dc802917 	ldw	r18,164(sp)
  8089d8:	dc402817 	ldw	r17,160(sp)
  8089dc:	dc002717 	ldw	r16,156(sp)
  8089e0:	dec03104 	addi	sp,sp,196
  8089e4:	f800283a 	ret
  8089e8:	a80b883a 	mov	r5,r21
  8089ec:	b009883a 	mov	r4,r22
  8089f0:	08033580 	call	803358 <__swsetup_r>
  8089f4:	10038d1e 	bne	r2,zero,80982c <___vfiprintf_internal_r+0x12d8>
  8089f8:	a880030b 	ldhu	r2,12(r21)
  8089fc:	1080068c 	andi	r2,r2,26
  808a00:	10800298 	cmpnei	r2,r2,10
  808a04:	103ef51e 	bne	r2,zero,8085dc <___vfiprintf_internal_r+0x88>
  808a08:	a880038f 	ldh	r2,14(r21)
  808a0c:	103ef316 	blt	r2,zero,8085dc <___vfiprintf_internal_r+0x88>
  808a10:	d9c00417 	ldw	r7,16(sp)
  808a14:	a00d883a 	mov	r6,r20
  808a18:	a80b883a 	mov	r5,r21
  808a1c:	b009883a 	mov	r4,r22
  808a20:	08098840 	call	809884 <__sbprintf>
  808a24:	d8800115 	stw	r2,4(sp)
  808a28:	003fe206 	br	8089b4 <___vfiprintf_internal_r+0x460>
  808a2c:	6b400414 	ori	r13,r13,16
  808a30:	6880080c 	andi	r2,r13,32
  808a34:	10004726 	beq	r2,zero,808b54 <___vfiprintf_internal_r+0x600>
  808a38:	d8c00417 	ldw	r3,16(sp)
  808a3c:	00800044 	movi	r2,1
  808a40:	1dc00017 	ldw	r23,0(r3)
  808a44:	1f000117 	ldw	fp,4(r3)
  808a48:	18c00204 	addi	r3,r3,8
  808a4c:	d8c00415 	stw	r3,16(sp)
  808a50:	00000906 	br	808a78 <___vfiprintf_internal_r+0x524>
  808a54:	6b400414 	ori	r13,r13,16
  808a58:	6880080c 	andi	r2,r13,32
  808a5c:	10003126 	beq	r2,zero,808b24 <___vfiprintf_internal_r+0x5d0>
  808a60:	d8c00417 	ldw	r3,16(sp)
  808a64:	0005883a 	mov	r2,zero
  808a68:	1dc00017 	ldw	r23,0(r3)
  808a6c:	1f000117 	ldw	fp,4(r3)
  808a70:	18c00204 	addi	r3,r3,8
  808a74:	d8c00415 	stw	r3,16(sp)
  808a78:	d8000945 	stb	zero,37(sp)
  808a7c:	40ffffe0 	cmpeqi	r3,r8,-1
  808a80:	001d883a 	mov	r14,zero
  808a84:	1800f21e 	bne	r3,zero,808e50 <___vfiprintf_internal_r+0x8fc>
  808a88:	04ffdfc4 	movi	r19,-129
  808a8c:	6cc8703a 	and	r4,r13,r19
  808a90:	bf06b03a 	or	r3,r23,fp
  808a94:	d9000015 	stw	r4,0(sp)
  808a98:	18024b1e 	bne	r3,zero,8093c8 <___vfiprintf_internal_r+0xe74>
  808a9c:	4003091e 	bne	r8,zero,8096c4 <___vfiprintf_internal_r+0x1170>
  808aa0:	1002a61e 	bne	r2,zero,80953c <___vfiprintf_internal_r+0xfe8>
  808aa4:	6f00004c 	andi	fp,r13,1
  808aa8:	e002b826 	beq	fp,zero,80958c <___vfiprintf_internal_r+0x1038>
  808aac:	00800c04 	movi	r2,48
  808ab0:	d88016c5 	stb	r2,91(sp)
  808ab4:	dcc016c4 	addi	r19,sp,91
  808ab8:	00008e06 	br	808cf4 <___vfiprintf_internal_r+0x7a0>
  808abc:	8d27c83a 	sub	r19,r17,r20
  808ac0:	8d3fb726 	beq	r17,r20,8089a0 <___vfiprintf_internal_r+0x44c>
  808ac4:	d8c00c17 	ldw	r3,48(sp)
  808ac8:	d8800b17 	ldw	r2,44(sp)
  808acc:	85000015 	stw	r20,0(r16)
  808ad0:	98c7883a 	add	r3,r19,r3
  808ad4:	10800044 	addi	r2,r2,1
  808ad8:	d8800b15 	stw	r2,44(sp)
  808adc:	84c00115 	stw	r19,4(r16)
  808ae0:	d8c00c15 	stw	r3,48(sp)
  808ae4:	10800208 	cmpgei	r2,r2,8
  808ae8:	1000061e 	bne	r2,zero,808b04 <___vfiprintf_internal_r+0x5b0>
  808aec:	84000204 	addi	r16,r16,8
  808af0:	d8c00117 	ldw	r3,4(sp)
  808af4:	88800003 	ldbu	r2,0(r17)
  808af8:	1cc7883a 	add	r3,r3,r19
  808afc:	d8c00115 	stw	r3,4(sp)
  808b00:	003ec906 	br	808628 <___vfiprintf_internal_r+0xd4>
  808b04:	18027f26 	beq	r3,zero,809504 <___vfiprintf_internal_r+0xfb0>
  808b08:	d9800a04 	addi	r6,sp,40
  808b0c:	a80b883a 	mov	r5,r21
  808b10:	b009883a 	mov	r4,r22
  808b14:	08084480 	call	808448 <__sprint_r.part.0>
  808b18:	103fa31e 	bne	r2,zero,8089a8 <___vfiprintf_internal_r+0x454>
  808b1c:	9021883a 	mov	r16,r18
  808b20:	003ff306 	br	808af0 <___vfiprintf_internal_r+0x59c>
  808b24:	d9000417 	ldw	r4,16(sp)
  808b28:	6880040c 	andi	r2,r13,16
  808b2c:	20c00104 	addi	r3,r4,4
  808b30:	1002a31e 	bne	r2,zero,8095c0 <___vfiprintf_internal_r+0x106c>
  808b34:	6880100c 	andi	r2,r13,64
  808b38:	1002f626 	beq	r2,zero,809714 <___vfiprintf_internal_r+0x11c0>
  808b3c:	d8800417 	ldw	r2,16(sp)
  808b40:	0039883a 	mov	fp,zero
  808b44:	d8c00415 	stw	r3,16(sp)
  808b48:	15c0000b 	ldhu	r23,0(r2)
  808b4c:	0005883a 	mov	r2,zero
  808b50:	003fc906 	br	808a78 <___vfiprintf_internal_r+0x524>
  808b54:	d9000417 	ldw	r4,16(sp)
  808b58:	6880040c 	andi	r2,r13,16
  808b5c:	20c00104 	addi	r3,r4,4
  808b60:	1002ab1e 	bne	r2,zero,809610 <___vfiprintf_internal_r+0x10bc>
  808b64:	6880100c 	andi	r2,r13,64
  808b68:	1002f026 	beq	r2,zero,80972c <___vfiprintf_internal_r+0x11d8>
  808b6c:	d8800417 	ldw	r2,16(sp)
  808b70:	0039883a 	mov	fp,zero
  808b74:	d8c00415 	stw	r3,16(sp)
  808b78:	15c0000b 	ldhu	r23,0(r2)
  808b7c:	00800044 	movi	r2,1
  808b80:	003fbd06 	br	808a78 <___vfiprintf_internal_r+0x524>
  808b84:	d8c00017 	ldw	r3,0(sp)
  808b88:	d8000b15 	stw	zero,44(sp)
  808b8c:	1cc0010c 	andi	r19,r3,4
  808b90:	98024a26 	beq	r19,zero,8094bc <___vfiprintf_internal_r+0xf68>
  808b94:	8de1c83a 	sub	r16,r17,r23
  808b98:	0402480e 	bge	zero,r16,8094bc <___vfiprintf_internal_r+0xf68>
  808b9c:	900d883a 	mov	r6,r18
  808ba0:	80c00450 	cmplti	r3,r16,17
  808ba4:	d9000b17 	ldw	r4,44(sp)
  808ba8:	01c02074 	movhi	r7,129
  808bac:	1803171e 	bne	r3,zero,80980c <___vfiprintf_internal_r+0x12b8>
  808bb0:	39c27404 	addi	r7,r7,2512
  808bb4:	04c00404 	movi	r19,16
  808bb8:	00000606 	br	808bd4 <___vfiprintf_internal_r+0x680>
  808bbc:	21400084 	addi	r5,r4,2
  808bc0:	31800204 	addi	r6,r6,8
  808bc4:	1809883a 	mov	r4,r3
  808bc8:	843ffc04 	addi	r16,r16,-16
  808bcc:	80c00448 	cmpgei	r3,r16,17
  808bd0:	18001726 	beq	r3,zero,808c30 <___vfiprintf_internal_r+0x6dc>
  808bd4:	20c00044 	addi	r3,r4,1
  808bd8:	10800404 	addi	r2,r2,16
  808bdc:	31c00015 	stw	r7,0(r6)
  808be0:	34c00115 	stw	r19,4(r6)
  808be4:	d8800c15 	stw	r2,48(sp)
  808be8:	d8c00b15 	stw	r3,44(sp)
  808bec:	19400208 	cmpgei	r5,r3,8
  808bf0:	283ff226 	beq	r5,zero,808bbc <___vfiprintf_internal_r+0x668>
  808bf4:	d9800a04 	addi	r6,sp,40
  808bf8:	a80b883a 	mov	r5,r21
  808bfc:	b009883a 	mov	r4,r22
  808c00:	10014f26 	beq	r2,zero,809140 <___vfiprintf_internal_r+0xbec>
  808c04:	d9c00015 	stw	r7,0(sp)
  808c08:	08084480 	call	808448 <__sprint_r.part.0>
  808c0c:	103f661e 	bne	r2,zero,8089a8 <___vfiprintf_internal_r+0x454>
  808c10:	d9000b17 	ldw	r4,44(sp)
  808c14:	843ffc04 	addi	r16,r16,-16
  808c18:	80c00448 	cmpgei	r3,r16,17
  808c1c:	d8800c17 	ldw	r2,48(sp)
  808c20:	d9c00017 	ldw	r7,0(sp)
  808c24:	900d883a 	mov	r6,r18
  808c28:	21400044 	addi	r5,r4,1
  808c2c:	183fe91e 	bne	r3,zero,808bd4 <___vfiprintf_internal_r+0x680>
  808c30:	1405883a 	add	r2,r2,r16
  808c34:	d9400b15 	stw	r5,44(sp)
  808c38:	31c00015 	stw	r7,0(r6)
  808c3c:	34000115 	stw	r16,4(r6)
  808c40:	d8800c15 	stw	r2,48(sp)
  808c44:	29400210 	cmplti	r5,r5,8
  808c48:	283f4b1e 	bne	r5,zero,808978 <___vfiprintf_internal_r+0x424>
  808c4c:	10021b26 	beq	r2,zero,8094bc <___vfiprintf_internal_r+0xf68>
  808c50:	d9800a04 	addi	r6,sp,40
  808c54:	a80b883a 	mov	r5,r21
  808c58:	b009883a 	mov	r4,r22
  808c5c:	08084480 	call	808448 <__sprint_r.part.0>
  808c60:	103f511e 	bne	r2,zero,8089a8 <___vfiprintf_internal_r+0x454>
  808c64:	d8800c17 	ldw	r2,48(sp)
  808c68:	003f4306 	br	808978 <___vfiprintf_internal_r+0x424>
  808c6c:	08053e00 	call	8053e0 <__sinit>
  808c70:	003e4a06 	br	80859c <___vfiprintf_internal_r+0x48>
  808c74:	29403fcc 	andi	r5,r5,255
  808c78:	2802e01e 	bne	r5,zero,8097fc <___vfiprintf_internal_r+0x12a8>
  808c7c:	6880080c 	andi	r2,r13,32
  808c80:	10005d26 	beq	r2,zero,808df8 <___vfiprintf_internal_r+0x8a4>
  808c84:	d8c00417 	ldw	r3,16(sp)
  808c88:	18800117 	ldw	r2,4(r3)
  808c8c:	1dc00017 	ldw	r23,0(r3)
  808c90:	18c00204 	addi	r3,r3,8
  808c94:	d8c00415 	stw	r3,16(sp)
  808c98:	1039883a 	mov	fp,r2
  808c9c:	10006216 	blt	r2,zero,808e28 <___vfiprintf_internal_r+0x8d4>
  808ca0:	40bfffd8 	cmpnei	r2,r8,-1
  808ca4:	10000a26 	beq	r2,zero,808cd0 <___vfiprintf_internal_r+0x77c>
  808ca8:	00ffdfc4 	movi	r3,-129
  808cac:	bf04b03a 	or	r2,r23,fp
  808cb0:	db800943 	ldbu	r14,37(sp)
  808cb4:	68da703a 	and	r13,r13,r3
  808cb8:	1000061e 	bne	r2,zero,808cd4 <___vfiprintf_internal_r+0x780>
  808cbc:	4000081e 	bne	r8,zero,808ce0 <___vfiprintf_internal_r+0x78c>
  808cc0:	0039883a 	mov	fp,zero
  808cc4:	db400015 	stw	r13,0(sp)
  808cc8:	9027883a 	mov	r19,r18
  808ccc:	00000906 	br	808cf4 <___vfiprintf_internal_r+0x7a0>
  808cd0:	db800943 	ldbu	r14,37(sp)
  808cd4:	e000ee1e 	bne	fp,zero,809090 <___vfiprintf_internal_r+0xb3c>
  808cd8:	b88002a8 	cmpgeui	r2,r23,10
  808cdc:	1000ec1e 	bne	r2,zero,809090 <___vfiprintf_internal_r+0xb3c>
  808ce0:	bdc00c04 	addi	r23,r23,48
  808ce4:	ddc016c5 	stb	r23,91(sp)
  808ce8:	db400015 	stw	r13,0(sp)
  808cec:	07000044 	movi	fp,1
  808cf0:	dcc016c4 	addi	r19,sp,91
  808cf4:	402f883a 	mov	r23,r8
  808cf8:	4700010e 	bge	r8,fp,808d00 <___vfiprintf_internal_r+0x7ac>
  808cfc:	e02f883a 	mov	r23,fp
  808d00:	73803fcc 	andi	r14,r14,255
  808d04:	7380201c 	xori	r14,r14,128
  808d08:	73bfe004 	addi	r14,r14,-128
  808d0c:	703ecc26 	beq	r14,zero,808840 <___vfiprintf_internal_r+0x2ec>
  808d10:	bdc00044 	addi	r23,r23,1
  808d14:	003eca06 	br	808840 <___vfiprintf_internal_r+0x2ec>
  808d18:	a0800007 	ldb	r2,0(r20)
  808d1c:	6b401014 	ori	r13,r13,64
  808d20:	003e4d06 	br	808658 <___vfiprintf_internal_r+0x104>
  808d24:	29403fcc 	andi	r5,r5,255
  808d28:	2802b21e 	bne	r5,zero,8097f4 <___vfiprintf_internal_r+0x12a0>
  808d2c:	d9000417 	ldw	r4,16(sp)
  808d30:	6880080c 	andi	r2,r13,32
  808d34:	20c00017 	ldw	r3,0(r4)
  808d38:	21000104 	addi	r4,r4,4
  808d3c:	1002251e 	bne	r2,zero,8095d4 <___vfiprintf_internal_r+0x1080>
  808d40:	6880040c 	andi	r2,r13,16
  808d44:	1002531e 	bne	r2,zero,809694 <___vfiprintf_internal_r+0x1140>
  808d48:	6b40100c 	andi	r13,r13,64
  808d4c:	68025126 	beq	r13,zero,809694 <___vfiprintf_internal_r+0x1140>
  808d50:	d8800117 	ldw	r2,4(sp)
  808d54:	d9000415 	stw	r4,16(sp)
  808d58:	1880000d 	sth	r2,0(r3)
  808d5c:	003e2606 	br	8085f8 <___vfiprintf_internal_r+0xa4>
  808d60:	a0800007 	ldb	r2,0(r20)
  808d64:	10c01b18 	cmpnei	r3,r2,108
  808d68:	18025a26 	beq	r3,zero,8096d4 <___vfiprintf_internal_r+0x1180>
  808d6c:	6b400414 	ori	r13,r13,16
  808d70:	003e3906 	br	808658 <___vfiprintf_internal_r+0x104>
  808d74:	d8c00417 	ldw	r3,16(sp)
  808d78:	d8000945 	stb	zero,37(sp)
  808d7c:	05c00044 	movi	r23,1
  808d80:	18800017 	ldw	r2,0(r3)
  808d84:	18c00104 	addi	r3,r3,4
  808d88:	d8c00415 	stw	r3,16(sp)
  808d8c:	d8800d05 	stb	r2,52(sp)
  808d90:	07000044 	movi	fp,1
  808d94:	dcc00d04 	addi	r19,sp,52
  808d98:	003ea706 	br	808838 <___vfiprintf_internal_r+0x2e4>
  808d9c:	29403fcc 	andi	r5,r5,255
  808da0:	2802981e 	bne	r5,zero,809804 <___vfiprintf_internal_r+0x12b0>
  808da4:	00c02074 	movhi	r3,129
  808da8:	18c1e904 	addi	r3,r3,1956
  808dac:	d8c00515 	stw	r3,20(sp)
  808db0:	68c0080c 	andi	r3,r13,32
  808db4:	18008326 	beq	r3,zero,808fc4 <___vfiprintf_internal_r+0xa70>
  808db8:	d8c00417 	ldw	r3,16(sp)
  808dbc:	1dc00017 	ldw	r23,0(r3)
  808dc0:	1f000117 	ldw	fp,4(r3)
  808dc4:	18c00204 	addi	r3,r3,8
  808dc8:	d8c00415 	stw	r3,16(sp)
  808dcc:	68c0004c 	andi	r3,r13,1
  808dd0:	18000226 	beq	r3,zero,808ddc <___vfiprintf_internal_r+0x888>
  808dd4:	bf06b03a 	or	r3,r23,fp
  808dd8:	1801f31e 	bne	r3,zero,8095a8 <___vfiprintf_internal_r+0x1054>
  808ddc:	00800084 	movi	r2,2
  808de0:	003f2506 	br	808a78 <___vfiprintf_internal_r+0x524>
  808de4:	29403fcc 	andi	r5,r5,255
  808de8:	2802801e 	bne	r5,zero,8097ec <___vfiprintf_internal_r+0x1298>
  808dec:	6b400414 	ori	r13,r13,16
  808df0:	6880080c 	andi	r2,r13,32
  808df4:	103fa31e 	bne	r2,zero,808c84 <___vfiprintf_internal_r+0x730>
  808df8:	d9000417 	ldw	r4,16(sp)
  808dfc:	6880040c 	andi	r2,r13,16
  808e00:	20c00104 	addi	r3,r4,4
  808e04:	1001f91e 	bne	r2,zero,8095ec <___vfiprintf_internal_r+0x1098>
  808e08:	6880100c 	andi	r2,r13,64
  808e0c:	10025226 	beq	r2,zero,809758 <___vfiprintf_internal_r+0x1204>
  808e10:	d8800417 	ldw	r2,16(sp)
  808e14:	d8c00415 	stw	r3,16(sp)
  808e18:	15c0000f 	ldh	r23,0(r2)
  808e1c:	b839d7fa 	srai	fp,r23,31
  808e20:	e005883a 	mov	r2,fp
  808e24:	103f9e0e 	bge	r2,zero,808ca0 <___vfiprintf_internal_r+0x74c>
  808e28:	b804c03a 	cmpne	r2,r23,zero
  808e2c:	0739c83a 	sub	fp,zero,fp
  808e30:	e0b9c83a 	sub	fp,fp,r2
  808e34:	00800b44 	movi	r2,45
  808e38:	d8800945 	stb	r2,37(sp)
  808e3c:	40ffffe0 	cmpeqi	r3,r8,-1
  808e40:	05efc83a 	sub	r23,zero,r23
  808e44:	03800b44 	movi	r14,45
  808e48:	00800044 	movi	r2,1
  808e4c:	183f0e26 	beq	r3,zero,808a88 <___vfiprintf_internal_r+0x534>
  808e50:	10c00060 	cmpeqi	r3,r2,1
  808e54:	183f9f1e 	bne	r3,zero,808cd4 <___vfiprintf_internal_r+0x780>
  808e58:	108000a0 	cmpeqi	r2,r2,2
  808e5c:	9027883a 	mov	r19,r18
  808e60:	1000a81e 	bne	r2,zero,809104 <___vfiprintf_internal_r+0xbb0>
  808e64:	e006977a 	slli	r3,fp,29
  808e68:	b804d0fa 	srli	r2,r23,3
  808e6c:	e038d0fa 	srli	fp,fp,3
  808e70:	b90001cc 	andi	r4,r23,7
  808e74:	21000c04 	addi	r4,r4,48
  808e78:	18aeb03a 	or	r23,r3,r2
  808e7c:	993fffc5 	stb	r4,-1(r19)
  808e80:	bf04b03a 	or	r2,r23,fp
  808e84:	980b883a 	mov	r5,r19
  808e88:	9cffffc4 	addi	r19,r19,-1
  808e8c:	103ff51e 	bne	r2,zero,808e64 <___vfiprintf_internal_r+0x910>
  808e90:	6880004c 	andi	r2,r13,1
  808e94:	1000a726 	beq	r2,zero,809134 <___vfiprintf_internal_r+0xbe0>
  808e98:	21003fcc 	andi	r4,r4,255
  808e9c:	2100201c 	xori	r4,r4,128
  808ea0:	213fe004 	addi	r4,r4,-128
  808ea4:	20800c18 	cmpnei	r2,r4,48
  808ea8:	1000a226 	beq	r2,zero,809134 <___vfiprintf_internal_r+0xbe0>
  808eac:	297fff84 	addi	r5,r5,-2
  808eb0:	00800c04 	movi	r2,48
  808eb4:	98bfffc5 	stb	r2,-1(r19)
  808eb8:	9179c83a 	sub	fp,r18,r5
  808ebc:	db400015 	stw	r13,0(sp)
  808ec0:	2827883a 	mov	r19,r5
  808ec4:	003f8b06 	br	808cf4 <___vfiprintf_internal_r+0x7a0>
  808ec8:	a0800007 	ldb	r2,0(r20)
  808ecc:	6b402014 	ori	r13,r13,128
  808ed0:	003de106 	br	808658 <___vfiprintf_internal_r+0x104>
  808ed4:	a0800007 	ldb	r2,0(r20)
  808ed8:	a0c00044 	addi	r3,r20,1
  808edc:	11000aa0 	cmpeqi	r4,r2,42
  808ee0:	2002551e 	bne	r4,zero,809838 <___vfiprintf_internal_r+0x12e4>
  808ee4:	113ff404 	addi	r4,r2,-48
  808ee8:	21c002b0 	cmpltui	r7,r4,10
  808eec:	1829883a 	mov	r20,r3
  808ef0:	0011883a 	mov	r8,zero
  808ef4:	383dd926 	beq	r7,zero,80865c <___vfiprintf_internal_r+0x108>
  808ef8:	400690ba 	slli	r3,r8,2
  808efc:	a0800007 	ldb	r2,0(r20)
  808f00:	a5000044 	addi	r20,r20,1
  808f04:	1a11883a 	add	r8,r3,r8
  808f08:	4211883a 	add	r8,r8,r8
  808f0c:	4111883a 	add	r8,r8,r4
  808f10:	113ff404 	addi	r4,r2,-48
  808f14:	20c002b0 	cmpltui	r3,r4,10
  808f18:	183ff71e 	bne	r3,zero,808ef8 <___vfiprintf_internal_r+0x9a4>
  808f1c:	003dcf06 	br	80865c <___vfiprintf_internal_r+0x108>
  808f20:	a0800003 	ldbu	r2,0(r20)
  808f24:	10803fcc 	andi	r2,r2,255
  808f28:	1080201c 	xori	r2,r2,128
  808f2c:	6b400114 	ori	r13,r13,4
  808f30:	10bfe004 	addi	r2,r2,-128
  808f34:	003dc806 	br	808658 <___vfiprintf_internal_r+0x104>
  808f38:	a0800007 	ldb	r2,0(r20)
  808f3c:	01400044 	movi	r5,1
  808f40:	01800ac4 	movi	r6,43
  808f44:	003dc406 	br	808658 <___vfiprintf_internal_r+0x104>
  808f48:	d8c00417 	ldw	r3,16(sp)
  808f4c:	a0800003 	ldbu	r2,0(r20)
  808f50:	1c400017 	ldw	r17,0(r3)
  808f54:	18c00104 	addi	r3,r3,4
  808f58:	8801b916 	blt	r17,zero,809640 <___vfiprintf_internal_r+0x10ec>
  808f5c:	d8c00415 	stw	r3,16(sp)
  808f60:	10803fcc 	andi	r2,r2,255
  808f64:	1080201c 	xori	r2,r2,128
  808f68:	10bfe004 	addi	r2,r2,-128
  808f6c:	003dba06 	br	808658 <___vfiprintf_internal_r+0x104>
  808f70:	a0800007 	ldb	r2,0(r20)
  808f74:	6b400054 	ori	r13,r13,1
  808f78:	003db706 	br	808658 <___vfiprintf_internal_r+0x104>
  808f7c:	30c03fcc 	andi	r3,r6,255
  808f80:	18c0201c 	xori	r3,r3,128
  808f84:	18ffe004 	addi	r3,r3,-128
  808f88:	a0800003 	ldbu	r2,0(r20)
  808f8c:	183ff41e 	bne	r3,zero,808f60 <___vfiprintf_internal_r+0xa0c>
  808f90:	10803fcc 	andi	r2,r2,255
  808f94:	1080201c 	xori	r2,r2,128
  808f98:	01400044 	movi	r5,1
  808f9c:	01800804 	movi	r6,32
  808fa0:	10bfe004 	addi	r2,r2,-128
  808fa4:	003dac06 	br	808658 <___vfiprintf_internal_r+0x104>
  808fa8:	29403fcc 	andi	r5,r5,255
  808fac:	28020a1e 	bne	r5,zero,8097d8 <___vfiprintf_internal_r+0x1284>
  808fb0:	00c02074 	movhi	r3,129
  808fb4:	18c1ee04 	addi	r3,r3,1976
  808fb8:	d8c00515 	stw	r3,20(sp)
  808fbc:	68c0080c 	andi	r3,r13,32
  808fc0:	183f7d1e 	bne	r3,zero,808db8 <___vfiprintf_internal_r+0x864>
  808fc4:	d9400417 	ldw	r5,16(sp)
  808fc8:	68c0040c 	andi	r3,r13,16
  808fcc:	29000104 	addi	r4,r5,4
  808fd0:	18018b1e 	bne	r3,zero,809600 <___vfiprintf_internal_r+0x10ac>
  808fd4:	68c0100c 	andi	r3,r13,64
  808fd8:	1801da26 	beq	r3,zero,809744 <___vfiprintf_internal_r+0x11f0>
  808fdc:	d8c00417 	ldw	r3,16(sp)
  808fe0:	0039883a 	mov	fp,zero
  808fe4:	d9000415 	stw	r4,16(sp)
  808fe8:	1dc0000b 	ldhu	r23,0(r3)
  808fec:	003f7706 	br	808dcc <___vfiprintf_internal_r+0x878>
  808ff0:	d8800417 	ldw	r2,16(sp)
  808ff4:	d8000945 	stb	zero,37(sp)
  808ff8:	14c00017 	ldw	r19,0(r2)
  808ffc:	10c00104 	addi	r3,r2,4
  809000:	9801bb26 	beq	r19,zero,8096f0 <___vfiprintf_internal_r+0x119c>
  809004:	40bfffe0 	cmpeqi	r2,r8,-1
  809008:	1001901e 	bne	r2,zero,80964c <___vfiprintf_internal_r+0x10f8>
  80900c:	400d883a 	mov	r6,r8
  809010:	000b883a 	mov	r5,zero
  809014:	9809883a 	mov	r4,r19
  809018:	d8c00315 	stw	r3,12(sp)
  80901c:	db400215 	stw	r13,8(sp)
  809020:	da000015 	stw	r8,0(sp)
  809024:	08068240 	call	806824 <memchr>
  809028:	da000017 	ldw	r8,0(sp)
  80902c:	db400217 	ldw	r13,8(sp)
  809030:	d8c00317 	ldw	r3,12(sp)
  809034:	1001e426 	beq	r2,zero,8097c8 <___vfiprintf_internal_r+0x1274>
  809038:	14f9c83a 	sub	fp,r2,r19
  80903c:	e02f883a 	mov	r23,fp
  809040:	d8c00415 	stw	r3,16(sp)
  809044:	003dfc06 	br	808838 <___vfiprintf_internal_r+0x2e4>
  809048:	a0800007 	ldb	r2,0(r20)
  80904c:	6b400814 	ori	r13,r13,32
  809050:	003d8106 	br	808658 <___vfiprintf_internal_r+0x104>
  809054:	d8c00417 	ldw	r3,16(sp)
  809058:	00800c04 	movi	r2,48
  80905c:	d8800985 	stb	r2,38(sp)
  809060:	00801e04 	movi	r2,120
  809064:	01002074 	movhi	r4,129
  809068:	d88009c5 	stb	r2,39(sp)
  80906c:	18800104 	addi	r2,r3,4
  809070:	d8800415 	stw	r2,16(sp)
  809074:	2081ee04 	addi	r2,r4,1976
  809078:	d8800515 	stw	r2,20(sp)
  80907c:	1dc00017 	ldw	r23,0(r3)
  809080:	0039883a 	mov	fp,zero
  809084:	6b400094 	ori	r13,r13,2
  809088:	00800084 	movi	r2,2
  80908c:	003e7a06 	br	808a78 <___vfiprintf_internal_r+0x524>
  809090:	9027883a 	mov	r19,r18
  809094:	b809883a 	mov	r4,r23
  809098:	e00b883a 	mov	r5,fp
  80909c:	01800284 	movi	r6,10
  8090a0:	000f883a 	mov	r7,zero
  8090a4:	db800315 	stw	r14,12(sp)
  8090a8:	da000215 	stw	r8,8(sp)
  8090ac:	db400015 	stw	r13,0(sp)
  8090b0:	080ad9c0 	call	80ad9c <__umoddi3>
  8090b4:	10800c04 	addi	r2,r2,48
  8090b8:	b809883a 	mov	r4,r23
  8090bc:	e00b883a 	mov	r5,fp
  8090c0:	98bfffc5 	stb	r2,-1(r19)
  8090c4:	01800284 	movi	r6,10
  8090c8:	000f883a 	mov	r7,zero
  8090cc:	080a7800 	call	80a780 <__udivdi3>
  8090d0:	e009883a 	mov	r4,fp
  8090d4:	b80b883a 	mov	r5,r23
  8090d8:	db400017 	ldw	r13,0(sp)
  8090dc:	da000217 	ldw	r8,8(sp)
  8090e0:	db800317 	ldw	r14,12(sp)
  8090e4:	9cffffc4 	addi	r19,r19,-1
  8090e8:	102f883a 	mov	r23,r2
  8090ec:	1839883a 	mov	fp,r3
  8090f0:	203fe81e 	bne	r4,zero,809094 <___vfiprintf_internal_r+0xb40>
  8090f4:	294002a8 	cmpgeui	r5,r5,10
  8090f8:	283fe61e 	bne	r5,zero,809094 <___vfiprintf_internal_r+0xb40>
  8090fc:	94f9c83a 	sub	fp,r18,r19
  809100:	003efc06 	br	808cf4 <___vfiprintf_internal_r+0x7a0>
  809104:	d9000517 	ldw	r4,20(sp)
  809108:	b88003cc 	andi	r2,r23,15
  80910c:	e006973a 	slli	r3,fp,28
  809110:	b82ed13a 	srli	r23,r23,4
  809114:	2085883a 	add	r2,r4,r2
  809118:	10800003 	ldbu	r2,0(r2)
  80911c:	e038d13a 	srli	fp,fp,4
  809120:	1deeb03a 	or	r23,r3,r23
  809124:	98bfffc5 	stb	r2,-1(r19)
  809128:	bf04b03a 	or	r2,r23,fp
  80912c:	9cffffc4 	addi	r19,r19,-1
  809130:	103ff41e 	bne	r2,zero,809104 <___vfiprintf_internal_r+0xbb0>
  809134:	94f9c83a 	sub	fp,r18,r19
  809138:	db400015 	stw	r13,0(sp)
  80913c:	003eed06 	br	808cf4 <___vfiprintf_internal_r+0x7a0>
  809140:	01400044 	movi	r5,1
  809144:	0009883a 	mov	r4,zero
  809148:	900d883a 	mov	r6,r18
  80914c:	003e9e06 	br	808bc8 <___vfiprintf_internal_r+0x674>
  809150:	8dc7c83a 	sub	r3,r17,r23
  809154:	00fdf20e 	bge	zero,r3,808920 <___vfiprintf_internal_r+0x3cc>
  809158:	19c00450 	cmplti	r7,r3,17
  80915c:	3801ae1e 	bne	r7,zero,809818 <___vfiprintf_internal_r+0x12c4>
  809160:	01c02074 	movhi	r7,129
  809164:	39c27004 	addi	r7,r7,2496
  809168:	03400404 	movi	r13,16
  80916c:	00000606 	br	809188 <___vfiprintf_internal_r+0xc34>
  809170:	23800084 	addi	r14,r4,2
  809174:	84000204 	addi	r16,r16,8
  809178:	2809883a 	mov	r4,r5
  80917c:	18fffc04 	addi	r3,r3,-16
  809180:	19400448 	cmpgei	r5,r3,17
  809184:	28001c26 	beq	r5,zero,8091f8 <___vfiprintf_internal_r+0xca4>
  809188:	21400044 	addi	r5,r4,1
  80918c:	10800404 	addi	r2,r2,16
  809190:	81c00015 	stw	r7,0(r16)
  809194:	83400115 	stw	r13,4(r16)
  809198:	d8800c15 	stw	r2,48(sp)
  80919c:	d9400b15 	stw	r5,44(sp)
  8091a0:	29800208 	cmpgei	r6,r5,8
  8091a4:	303ff226 	beq	r6,zero,809170 <___vfiprintf_internal_r+0xc1c>
  8091a8:	d9800a04 	addi	r6,sp,40
  8091ac:	a80b883a 	mov	r5,r21
  8091b0:	b009883a 	mov	r4,r22
  8091b4:	10006326 	beq	r2,zero,809344 <___vfiprintf_internal_r+0xdf0>
  8091b8:	d9c00615 	stw	r7,24(sp)
  8091bc:	d8c00315 	stw	r3,12(sp)
  8091c0:	da000215 	stw	r8,8(sp)
  8091c4:	08084480 	call	808448 <__sprint_r.part.0>
  8091c8:	103df71e 	bne	r2,zero,8089a8 <___vfiprintf_internal_r+0x454>
  8091cc:	d8c00317 	ldw	r3,12(sp)
  8091d0:	d9000b17 	ldw	r4,44(sp)
  8091d4:	d8800c17 	ldw	r2,48(sp)
  8091d8:	18fffc04 	addi	r3,r3,-16
  8091dc:	19400448 	cmpgei	r5,r3,17
  8091e0:	d9c00617 	ldw	r7,24(sp)
  8091e4:	da000217 	ldw	r8,8(sp)
  8091e8:	9021883a 	mov	r16,r18
  8091ec:	23800044 	addi	r14,r4,1
  8091f0:	03400404 	movi	r13,16
  8091f4:	283fe41e 	bne	r5,zero,809188 <___vfiprintf_internal_r+0xc34>
  8091f8:	83400204 	addi	r13,r16,8
  8091fc:	10c5883a 	add	r2,r2,r3
  809200:	80c00115 	stw	r3,4(r16)
  809204:	81c00015 	stw	r7,0(r16)
  809208:	d8800c15 	stw	r2,48(sp)
  80920c:	db800b15 	stw	r14,44(sp)
  809210:	70c00208 	cmpgei	r3,r14,8
  809214:	1800df26 	beq	r3,zero,809594 <___vfiprintf_internal_r+0x1040>
  809218:	10015826 	beq	r2,zero,80977c <___vfiprintf_internal_r+0x1228>
  80921c:	d9800a04 	addi	r6,sp,40
  809220:	a80b883a 	mov	r5,r21
  809224:	b009883a 	mov	r4,r22
  809228:	da000215 	stw	r8,8(sp)
  80922c:	08084480 	call	808448 <__sprint_r.part.0>
  809230:	103ddd1e 	bne	r2,zero,8089a8 <___vfiprintf_internal_r+0x454>
  809234:	da000217 	ldw	r8,8(sp)
  809238:	d9000b17 	ldw	r4,44(sp)
  80923c:	d8800c17 	ldw	r2,48(sp)
  809240:	4711c83a 	sub	r8,r8,fp
  809244:	d9801904 	addi	r6,sp,100
  809248:	21400044 	addi	r5,r4,1
  80924c:	9021883a 	mov	r16,r18
  809250:	023db50e 	bge	zero,r8,808928 <___vfiprintf_internal_r+0x3d4>
  809254:	40c00450 	cmplti	r3,r8,17
  809258:	01c02074 	movhi	r7,129
  80925c:	1801441e 	bne	r3,zero,809770 <___vfiprintf_internal_r+0x121c>
  809260:	39c27004 	addi	r7,r7,2496
  809264:	03400404 	movi	r13,16
  809268:	00000606 	br	809284 <___vfiprintf_internal_r+0xd30>
  80926c:	21400084 	addi	r5,r4,2
  809270:	84000204 	addi	r16,r16,8
  809274:	1809883a 	mov	r4,r3
  809278:	423ffc04 	addi	r8,r8,-16
  80927c:	40c00448 	cmpgei	r3,r8,17
  809280:	18001a26 	beq	r3,zero,8092ec <___vfiprintf_internal_r+0xd98>
  809284:	20c00044 	addi	r3,r4,1
  809288:	10800404 	addi	r2,r2,16
  80928c:	81c00015 	stw	r7,0(r16)
  809290:	83400115 	stw	r13,4(r16)
  809294:	d8800c15 	stw	r2,48(sp)
  809298:	d8c00b15 	stw	r3,44(sp)
  80929c:	19400208 	cmpgei	r5,r3,8
  8092a0:	283ff226 	beq	r5,zero,80926c <___vfiprintf_internal_r+0xd18>
  8092a4:	d9800a04 	addi	r6,sp,40
  8092a8:	a80b883a 	mov	r5,r21
  8092ac:	b009883a 	mov	r4,r22
  8092b0:	10001a26 	beq	r2,zero,80931c <___vfiprintf_internal_r+0xdc8>
  8092b4:	d9c00315 	stw	r7,12(sp)
  8092b8:	da000215 	stw	r8,8(sp)
  8092bc:	08084480 	call	808448 <__sprint_r.part.0>
  8092c0:	103db91e 	bne	r2,zero,8089a8 <___vfiprintf_internal_r+0x454>
  8092c4:	da000217 	ldw	r8,8(sp)
  8092c8:	d9000b17 	ldw	r4,44(sp)
  8092cc:	d8800c17 	ldw	r2,48(sp)
  8092d0:	423ffc04 	addi	r8,r8,-16
  8092d4:	40c00448 	cmpgei	r3,r8,17
  8092d8:	d9c00317 	ldw	r7,12(sp)
  8092dc:	9021883a 	mov	r16,r18
  8092e0:	21400044 	addi	r5,r4,1
  8092e4:	03400404 	movi	r13,16
  8092e8:	183fe61e 	bne	r3,zero,809284 <___vfiprintf_internal_r+0xd30>
  8092ec:	81000204 	addi	r4,r16,8
  8092f0:	1205883a 	add	r2,r2,r8
  8092f4:	81c00015 	stw	r7,0(r16)
  8092f8:	82000115 	stw	r8,4(r16)
  8092fc:	d8800c15 	stw	r2,48(sp)
  809300:	d9400b15 	stw	r5,44(sp)
  809304:	28c00208 	cmpgei	r3,r5,8
  809308:	1800721e 	bne	r3,zero,8094d4 <___vfiprintf_internal_r+0xf80>
  80930c:	29400044 	addi	r5,r5,1
  809310:	21800204 	addi	r6,r4,8
  809314:	2021883a 	mov	r16,r4
  809318:	003d8306 	br	808928 <___vfiprintf_internal_r+0x3d4>
  80931c:	01400044 	movi	r5,1
  809320:	0009883a 	mov	r4,zero
  809324:	9021883a 	mov	r16,r18
  809328:	003fd306 	br	809278 <___vfiprintf_internal_r+0xd24>
  80932c:	d9800a04 	addi	r6,sp,40
  809330:	a80b883a 	mov	r5,r21
  809334:	b009883a 	mov	r4,r22
  809338:	08084480 	call	808448 <__sprint_r.part.0>
  80933c:	103d9426 	beq	r2,zero,808990 <___vfiprintf_internal_r+0x43c>
  809340:	003d9906 	br	8089a8 <___vfiprintf_internal_r+0x454>
  809344:	03800044 	movi	r14,1
  809348:	0009883a 	mov	r4,zero
  80934c:	9021883a 	mov	r16,r18
  809350:	003f8a06 	br	80917c <___vfiprintf_internal_r+0xc28>
  809354:	10006e26 	beq	r2,zero,809510 <___vfiprintf_internal_r+0xfbc>
  809358:	d9800a04 	addi	r6,sp,40
  80935c:	a80b883a 	mov	r5,r21
  809360:	b009883a 	mov	r4,r22
  809364:	da000615 	stw	r8,24(sp)
  809368:	db400315 	stw	r13,12(sp)
  80936c:	db800215 	stw	r14,8(sp)
  809370:	08084480 	call	808448 <__sprint_r.part.0>
  809374:	103d8c1e 	bne	r2,zero,8089a8 <___vfiprintf_internal_r+0x454>
  809378:	d9000b17 	ldw	r4,44(sp)
  80937c:	d8800c17 	ldw	r2,48(sp)
  809380:	da000617 	ldw	r8,24(sp)
  809384:	db400317 	ldw	r13,12(sp)
  809388:	db800217 	ldw	r14,8(sp)
  80938c:	d9801904 	addi	r6,sp,100
  809390:	21400044 	addi	r5,r4,1
  809394:	9021883a 	mov	r16,r18
  809398:	003d4606 	br	8088b4 <___vfiprintf_internal_r+0x360>
  80939c:	d8800984 	addi	r2,sp,38
  8093a0:	d8801715 	stw	r2,92(sp)
  8093a4:	00800084 	movi	r2,2
  8093a8:	d8801815 	stw	r2,96(sp)
  8093ac:	d9801904 	addi	r6,sp,100
  8093b0:	01400044 	movi	r5,1
  8093b4:	3021883a 	mov	r16,r6
  8093b8:	2809883a 	mov	r4,r5
  8093bc:	21400044 	addi	r5,r4,1
  8093c0:	81800204 	addi	r6,r16,8
  8093c4:	003d5406 	br	808918 <___vfiprintf_internal_r+0x3c4>
  8093c8:	db400017 	ldw	r13,0(sp)
  8093cc:	003ea006 	br	808e50 <___vfiprintf_internal_r+0x8fc>
  8093d0:	19400450 	cmplti	r5,r3,17
  8093d4:	01c02074 	movhi	r7,129
  8093d8:	2801011e 	bne	r5,zero,8097e0 <___vfiprintf_internal_r+0x128c>
  8093dc:	39c27404 	addi	r7,r7,2512
  8093e0:	03c00404 	movi	r15,16
  8093e4:	00000706 	br	809404 <___vfiprintf_internal_r+0xeb0>
  8093e8:	27c00084 	addi	ra,r4,2
  8093ec:	84000204 	addi	r16,r16,8
  8093f0:	3009883a 	mov	r4,r6
  8093f4:	18fffc04 	addi	r3,r3,-16
  8093f8:	19400448 	cmpgei	r5,r3,17
  8093fc:	28002026 	beq	r5,zero,809480 <___vfiprintf_internal_r+0xf2c>
  809400:	21800044 	addi	r6,r4,1
  809404:	10800404 	addi	r2,r2,16
  809408:	81c00015 	stw	r7,0(r16)
  80940c:	83c00115 	stw	r15,4(r16)
  809410:	d8800c15 	stw	r2,48(sp)
  809414:	d9800b15 	stw	r6,44(sp)
  809418:	31400208 	cmpgei	r5,r6,8
  80941c:	283ff226 	beq	r5,zero,8093e8 <___vfiprintf_internal_r+0xe94>
  809420:	d9800a04 	addi	r6,sp,40
  809424:	a80b883a 	mov	r5,r21
  809428:	b009883a 	mov	r4,r22
  80942c:	10001f26 	beq	r2,zero,8094ac <___vfiprintf_internal_r+0xf58>
  809430:	d9c00815 	stw	r7,32(sp)
  809434:	d8c00715 	stw	r3,28(sp)
  809438:	da000615 	stw	r8,24(sp)
  80943c:	db400315 	stw	r13,12(sp)
  809440:	db800215 	stw	r14,8(sp)
  809444:	08084480 	call	808448 <__sprint_r.part.0>
  809448:	103d571e 	bne	r2,zero,8089a8 <___vfiprintf_internal_r+0x454>
  80944c:	d8c00717 	ldw	r3,28(sp)
  809450:	d9000b17 	ldw	r4,44(sp)
  809454:	d8800c17 	ldw	r2,48(sp)
  809458:	18fffc04 	addi	r3,r3,-16
  80945c:	19400448 	cmpgei	r5,r3,17
  809460:	d9c00817 	ldw	r7,32(sp)
  809464:	da000617 	ldw	r8,24(sp)
  809468:	db400317 	ldw	r13,12(sp)
  80946c:	db800217 	ldw	r14,8(sp)
  809470:	9021883a 	mov	r16,r18
  809474:	27c00044 	addi	ra,r4,1
  809478:	03c00404 	movi	r15,16
  80947c:	283fe01e 	bne	r5,zero,809400 <___vfiprintf_internal_r+0xeac>
  809480:	10c5883a 	add	r2,r2,r3
  809484:	80c00115 	stw	r3,4(r16)
  809488:	81c00015 	stw	r7,0(r16)
  80948c:	d8800c15 	stw	r2,48(sp)
  809490:	dfc00b15 	stw	ra,44(sp)
  809494:	f8c00208 	cmpgei	r3,ra,8
  809498:	18002b1e 	bne	r3,zero,809548 <___vfiprintf_internal_r+0xff4>
  80949c:	84000204 	addi	r16,r16,8
  8094a0:	f9400044 	addi	r5,ra,1
  8094a4:	f809883a 	mov	r4,ra
  8094a8:	003cf206 	br	808874 <___vfiprintf_internal_r+0x320>
  8094ac:	0009883a 	mov	r4,zero
  8094b0:	07c00044 	movi	ra,1
  8094b4:	9021883a 	mov	r16,r18
  8094b8:	003fce06 	br	8093f4 <___vfiprintf_internal_r+0xea0>
  8094bc:	8dc0010e 	bge	r17,r23,8094c4 <___vfiprintf_internal_r+0xf70>
  8094c0:	b823883a 	mov	r17,r23
  8094c4:	d8800117 	ldw	r2,4(sp)
  8094c8:	1445883a 	add	r2,r2,r17
  8094cc:	d8800115 	stw	r2,4(sp)
  8094d0:	003d2f06 	br	808990 <___vfiprintf_internal_r+0x43c>
  8094d4:	10007326 	beq	r2,zero,8096a4 <___vfiprintf_internal_r+0x1150>
  8094d8:	d9800a04 	addi	r6,sp,40
  8094dc:	a80b883a 	mov	r5,r21
  8094e0:	b009883a 	mov	r4,r22
  8094e4:	08084480 	call	808448 <__sprint_r.part.0>
  8094e8:	103d2f1e 	bne	r2,zero,8089a8 <___vfiprintf_internal_r+0x454>
  8094ec:	d9400b17 	ldw	r5,44(sp)
  8094f0:	d8800c17 	ldw	r2,48(sp)
  8094f4:	d9801904 	addi	r6,sp,100
  8094f8:	29400044 	addi	r5,r5,1
  8094fc:	9021883a 	mov	r16,r18
  809500:	003d0906 	br	808928 <___vfiprintf_internal_r+0x3d4>
  809504:	d8000b15 	stw	zero,44(sp)
  809508:	9021883a 	mov	r16,r18
  80950c:	003d7806 	br	808af0 <___vfiprintf_internal_r+0x59c>
  809510:	7000441e 	bne	r14,zero,809624 <___vfiprintf_internal_r+0x10d0>
  809514:	0009883a 	mov	r4,zero
  809518:	d9801904 	addi	r6,sp,100
  80951c:	01400044 	movi	r5,1
  809520:	9021883a 	mov	r16,r18
  809524:	003cfc06 	br	808918 <___vfiprintf_internal_r+0x3c4>
  809528:	d9801904 	addi	r6,sp,100
  80952c:	01400044 	movi	r5,1
  809530:	0009883a 	mov	r4,zero
  809534:	9021883a 	mov	r16,r18
  809538:	003cf706 	br	808918 <___vfiprintf_internal_r+0x3c4>
  80953c:	0039883a 	mov	fp,zero
  809540:	9027883a 	mov	r19,r18
  809544:	003deb06 	br	808cf4 <___vfiprintf_internal_r+0x7a0>
  809548:	10004a26 	beq	r2,zero,809674 <___vfiprintf_internal_r+0x1120>
  80954c:	d9800a04 	addi	r6,sp,40
  809550:	a80b883a 	mov	r5,r21
  809554:	b009883a 	mov	r4,r22
  809558:	da000615 	stw	r8,24(sp)
  80955c:	db400315 	stw	r13,12(sp)
  809560:	db800215 	stw	r14,8(sp)
  809564:	08084480 	call	808448 <__sprint_r.part.0>
  809568:	103d0f1e 	bne	r2,zero,8089a8 <___vfiprintf_internal_r+0x454>
  80956c:	d9000b17 	ldw	r4,44(sp)
  809570:	d8800c17 	ldw	r2,48(sp)
  809574:	da000617 	ldw	r8,24(sp)
  809578:	db400317 	ldw	r13,12(sp)
  80957c:	db800217 	ldw	r14,8(sp)
  809580:	9021883a 	mov	r16,r18
  809584:	21400044 	addi	r5,r4,1
  809588:	003cba06 	br	808874 <___vfiprintf_internal_r+0x320>
  80958c:	9027883a 	mov	r19,r18
  809590:	003dd806 	br	808cf4 <___vfiprintf_internal_r+0x7a0>
  809594:	71400044 	addi	r5,r14,1
  809598:	69800204 	addi	r6,r13,8
  80959c:	7009883a 	mov	r4,r14
  8095a0:	6821883a 	mov	r16,r13
  8095a4:	003cde06 	br	808920 <___vfiprintf_internal_r+0x3cc>
  8095a8:	00c00c04 	movi	r3,48
  8095ac:	d88009c5 	stb	r2,39(sp)
  8095b0:	d8c00985 	stb	r3,38(sp)
  8095b4:	6b400094 	ori	r13,r13,2
  8095b8:	00800084 	movi	r2,2
  8095bc:	003d2e06 	br	808a78 <___vfiprintf_internal_r+0x524>
  8095c0:	25c00017 	ldw	r23,0(r4)
  8095c4:	0039883a 	mov	fp,zero
  8095c8:	d8c00415 	stw	r3,16(sp)
  8095cc:	0005883a 	mov	r2,zero
  8095d0:	003d2906 	br	808a78 <___vfiprintf_internal_r+0x524>
  8095d4:	d9400117 	ldw	r5,4(sp)
  8095d8:	d9000415 	stw	r4,16(sp)
  8095dc:	2805d7fa 	srai	r2,r5,31
  8095e0:	19400015 	stw	r5,0(r3)
  8095e4:	18800115 	stw	r2,4(r3)
  8095e8:	003c0306 	br	8085f8 <___vfiprintf_internal_r+0xa4>
  8095ec:	25c00017 	ldw	r23,0(r4)
  8095f0:	d8c00415 	stw	r3,16(sp)
  8095f4:	b839d7fa 	srai	fp,r23,31
  8095f8:	e005883a 	mov	r2,fp
  8095fc:	003da706 	br	808c9c <___vfiprintf_internal_r+0x748>
  809600:	2dc00017 	ldw	r23,0(r5)
  809604:	0039883a 	mov	fp,zero
  809608:	d9000415 	stw	r4,16(sp)
  80960c:	003def06 	br	808dcc <___vfiprintf_internal_r+0x878>
  809610:	25c00017 	ldw	r23,0(r4)
  809614:	0039883a 	mov	fp,zero
  809618:	d8c00415 	stw	r3,16(sp)
  80961c:	00800044 	movi	r2,1
  809620:	003d1506 	br	808a78 <___vfiprintf_internal_r+0x524>
  809624:	d8800984 	addi	r2,sp,38
  809628:	d8801715 	stw	r2,92(sp)
  80962c:	00800084 	movi	r2,2
  809630:	d8801815 	stw	r2,96(sp)
  809634:	dc001904 	addi	r16,sp,100
  809638:	01000044 	movi	r4,1
  80963c:	003f5f06 	br	8093bc <___vfiprintf_internal_r+0xe68>
  809640:	0463c83a 	sub	r17,zero,r17
  809644:	d8c00415 	stw	r3,16(sp)
  809648:	003e3606 	br	808f24 <___vfiprintf_internal_r+0x9d0>
  80964c:	9809883a 	mov	r4,r19
  809650:	d8c00215 	stw	r3,8(sp)
  809654:	db400015 	stw	r13,0(sp)
  809658:	08010f80 	call	8010f8 <strlen>
  80965c:	d8c00217 	ldw	r3,8(sp)
  809660:	db400017 	ldw	r13,0(sp)
  809664:	1039883a 	mov	fp,r2
  809668:	102f883a 	mov	r23,r2
  80966c:	d8c00415 	stw	r3,16(sp)
  809670:	003c7106 	br	808838 <___vfiprintf_internal_r+0x2e4>
  809674:	d8c00947 	ldb	r3,37(sp)
  809678:	1800451e 	bne	r3,zero,809790 <___vfiprintf_internal_r+0x123c>
  80967c:	703f471e 	bne	r14,zero,80939c <___vfiprintf_internal_r+0xe48>
  809680:	0009883a 	mov	r4,zero
  809684:	d9801904 	addi	r6,sp,100
  809688:	01400044 	movi	r5,1
  80968c:	9021883a 	mov	r16,r18
  809690:	003ca306 	br	808920 <___vfiprintf_internal_r+0x3cc>
  809694:	d8800117 	ldw	r2,4(sp)
  809698:	18800015 	stw	r2,0(r3)
  80969c:	d9000415 	stw	r4,16(sp)
  8096a0:	003bd506 	br	8085f8 <___vfiprintf_internal_r+0xa4>
  8096a4:	00c00044 	movi	r3,1
  8096a8:	e005883a 	mov	r2,fp
  8096ac:	dcc01715 	stw	r19,92(sp)
  8096b0:	df001815 	stw	fp,96(sp)
  8096b4:	df000c15 	stw	fp,48(sp)
  8096b8:	d8c00b15 	stw	r3,44(sp)
  8096bc:	d9801904 	addi	r6,sp,100
  8096c0:	003ca806 	br	808964 <___vfiprintf_internal_r+0x410>
  8096c4:	10c00060 	cmpeqi	r3,r2,1
  8096c8:	db400017 	ldw	r13,0(sp)
  8096cc:	183de226 	beq	r3,zero,808e58 <___vfiprintf_internal_r+0x904>
  8096d0:	003d8306 	br	808ce0 <___vfiprintf_internal_r+0x78c>
  8096d4:	a0800043 	ldbu	r2,1(r20)
  8096d8:	6b400814 	ori	r13,r13,32
  8096dc:	a5000044 	addi	r20,r20,1
  8096e0:	10803fcc 	andi	r2,r2,255
  8096e4:	1080201c 	xori	r2,r2,128
  8096e8:	10bfe004 	addi	r2,r2,-128
  8096ec:	003bda06 	br	808658 <___vfiprintf_internal_r+0x104>
  8096f0:	408001f0 	cmpltui	r2,r8,7
  8096f4:	4039883a 	mov	fp,r8
  8096f8:	1000011e 	bne	r2,zero,809700 <___vfiprintf_internal_r+0x11ac>
  8096fc:	07000184 	movi	fp,6
  809700:	04c02074 	movhi	r19,129
  809704:	e02f883a 	mov	r23,fp
  809708:	d8c00415 	stw	r3,16(sp)
  80970c:	9cc1f304 	addi	r19,r19,1996
  809710:	003c4906 	br	808838 <___vfiprintf_internal_r+0x2e4>
  809714:	d8800417 	ldw	r2,16(sp)
  809718:	0039883a 	mov	fp,zero
  80971c:	d8c00415 	stw	r3,16(sp)
  809720:	15c00017 	ldw	r23,0(r2)
  809724:	0005883a 	mov	r2,zero
  809728:	003cd306 	br	808a78 <___vfiprintf_internal_r+0x524>
  80972c:	d8800417 	ldw	r2,16(sp)
  809730:	0039883a 	mov	fp,zero
  809734:	d8c00415 	stw	r3,16(sp)
  809738:	15c00017 	ldw	r23,0(r2)
  80973c:	00800044 	movi	r2,1
  809740:	003ccd06 	br	808a78 <___vfiprintf_internal_r+0x524>
  809744:	d8c00417 	ldw	r3,16(sp)
  809748:	0039883a 	mov	fp,zero
  80974c:	d9000415 	stw	r4,16(sp)
  809750:	1dc00017 	ldw	r23,0(r3)
  809754:	003d9d06 	br	808dcc <___vfiprintf_internal_r+0x878>
  809758:	d8800417 	ldw	r2,16(sp)
  80975c:	d8c00415 	stw	r3,16(sp)
  809760:	15c00017 	ldw	r23,0(r2)
  809764:	b839d7fa 	srai	fp,r23,31
  809768:	e005883a 	mov	r2,fp
  80976c:	003d4b06 	br	808c9c <___vfiprintf_internal_r+0x748>
  809770:	3009883a 	mov	r4,r6
  809774:	39c27004 	addi	r7,r7,2496
  809778:	003edd06 	br	8092f0 <___vfiprintf_internal_r+0xd9c>
  80977c:	d9801904 	addi	r6,sp,100
  809780:	01400044 	movi	r5,1
  809784:	0009883a 	mov	r4,zero
  809788:	9021883a 	mov	r16,r18
  80978c:	003c6406 	br	808920 <___vfiprintf_internal_r+0x3cc>
  809790:	d8800944 	addi	r2,sp,37
  809794:	d8801715 	stw	r2,92(sp)
  809798:	00800044 	movi	r2,1
  80979c:	d8801815 	stw	r2,96(sp)
  8097a0:	d9801904 	addi	r6,sp,100
  8097a4:	01400044 	movi	r5,1
  8097a8:	003c3e06 	br	8088a4 <___vfiprintf_internal_r+0x350>
  8097ac:	d9800945 	stb	r6,37(sp)
  8097b0:	003c1b06 	br	808820 <___vfiprintf_internal_r+0x2cc>
  8097b4:	d9800a04 	addi	r6,sp,40
  8097b8:	a80b883a 	mov	r5,r21
  8097bc:	b009883a 	mov	r4,r22
  8097c0:	08084480 	call	808448 <__sprint_r.part.0>
  8097c4:	003c7806 	br	8089a8 <___vfiprintf_internal_r+0x454>
  8097c8:	402f883a 	mov	r23,r8
  8097cc:	d8c00415 	stw	r3,16(sp)
  8097d0:	4039883a 	mov	fp,r8
  8097d4:	003c1806 	br	808838 <___vfiprintf_internal_r+0x2e4>
  8097d8:	d9800945 	stb	r6,37(sp)
  8097dc:	003df406 	br	808fb0 <___vfiprintf_internal_r+0xa5c>
  8097e0:	303f883a 	mov	ra,r6
  8097e4:	39c27404 	addi	r7,r7,2512
  8097e8:	003f2506 	br	809480 <___vfiprintf_internal_r+0xf2c>
  8097ec:	d9800945 	stb	r6,37(sp)
  8097f0:	003d7e06 	br	808dec <___vfiprintf_internal_r+0x898>
  8097f4:	d9800945 	stb	r6,37(sp)
  8097f8:	003d4c06 	br	808d2c <___vfiprintf_internal_r+0x7d8>
  8097fc:	d9800945 	stb	r6,37(sp)
  809800:	003d1e06 	br	808c7c <___vfiprintf_internal_r+0x728>
  809804:	d9800945 	stb	r6,37(sp)
  809808:	003d6606 	br	808da4 <___vfiprintf_internal_r+0x850>
  80980c:	21400044 	addi	r5,r4,1
  809810:	39c27404 	addi	r7,r7,2512
  809814:	003d0606 	br	808c30 <___vfiprintf_internal_r+0x6dc>
  809818:	01c02074 	movhi	r7,129
  80981c:	301b883a 	mov	r13,r6
  809820:	281d883a 	mov	r14,r5
  809824:	39c27004 	addi	r7,r7,2496
  809828:	003e7406 	br	8091fc <___vfiprintf_internal_r+0xca8>
  80982c:	00bfffc4 	movi	r2,-1
  809830:	d8800115 	stw	r2,4(sp)
  809834:	003c5f06 	br	8089b4 <___vfiprintf_internal_r+0x460>
  809838:	d8800417 	ldw	r2,16(sp)
  80983c:	12000017 	ldw	r8,0(r2)
  809840:	11000104 	addi	r4,r2,4
  809844:	4000010e 	bge	r8,zero,80984c <___vfiprintf_internal_r+0x12f8>
  809848:	023fffc4 	movi	r8,-1
  80984c:	a0800043 	ldbu	r2,1(r20)
  809850:	d9000415 	stw	r4,16(sp)
  809854:	1829883a 	mov	r20,r3
  809858:	10803fcc 	andi	r2,r2,255
  80985c:	1080201c 	xori	r2,r2,128
  809860:	10bfe004 	addi	r2,r2,-128
  809864:	003b7c06 	br	808658 <___vfiprintf_internal_r+0x104>

00809868 <__vfiprintf_internal>:
  809868:	00c02074 	movhi	r3,129
  80986c:	2005883a 	mov	r2,r4
  809870:	190a2117 	ldw	r4,10372(r3)
  809874:	300f883a 	mov	r7,r6
  809878:	280d883a 	mov	r6,r5
  80987c:	100b883a 	mov	r5,r2
  809880:	08085541 	jmpi	808554 <___vfiprintf_internal_r>

00809884 <__sbprintf>:
  809884:	2880030b 	ldhu	r2,12(r5)
  809888:	2b001917 	ldw	r12,100(r5)
  80988c:	2ac0038b 	ldhu	r11,14(r5)
  809890:	2a800717 	ldw	r10,28(r5)
  809894:	2a400917 	ldw	r9,36(r5)
  809898:	defee204 	addi	sp,sp,-1144
  80989c:	da001a04 	addi	r8,sp,104
  8098a0:	00c10004 	movi	r3,1024
  8098a4:	dc011a15 	stw	r16,1128(sp)
  8098a8:	10bfff4c 	andi	r2,r2,65533
  8098ac:	2821883a 	mov	r16,r5
  8098b0:	d80b883a 	mov	r5,sp
  8098b4:	dc811c15 	stw	r18,1136(sp)
  8098b8:	dc411b15 	stw	r17,1132(sp)
  8098bc:	dfc11d15 	stw	ra,1140(sp)
  8098c0:	2025883a 	mov	r18,r4
  8098c4:	d880030d 	sth	r2,12(sp)
  8098c8:	db001915 	stw	r12,100(sp)
  8098cc:	dac0038d 	sth	r11,14(sp)
  8098d0:	da800715 	stw	r10,28(sp)
  8098d4:	da400915 	stw	r9,36(sp)
  8098d8:	da000015 	stw	r8,0(sp)
  8098dc:	da000415 	stw	r8,16(sp)
  8098e0:	d8c00215 	stw	r3,8(sp)
  8098e4:	d8c00515 	stw	r3,20(sp)
  8098e8:	d8000615 	stw	zero,24(sp)
  8098ec:	08085540 	call	808554 <___vfiprintf_internal_r>
  8098f0:	1023883a 	mov	r17,r2
  8098f4:	10000d0e 	bge	r2,zero,80992c <__sbprintf+0xa8>
  8098f8:	d880030b 	ldhu	r2,12(sp)
  8098fc:	1080100c 	andi	r2,r2,64
  809900:	10000326 	beq	r2,zero,809910 <__sbprintf+0x8c>
  809904:	8080030b 	ldhu	r2,12(r16)
  809908:	10801014 	ori	r2,r2,64
  80990c:	8080030d 	sth	r2,12(r16)
  809910:	8805883a 	mov	r2,r17
  809914:	dfc11d17 	ldw	ra,1140(sp)
  809918:	dc811c17 	ldw	r18,1136(sp)
  80991c:	dc411b17 	ldw	r17,1132(sp)
  809920:	dc011a17 	ldw	r16,1128(sp)
  809924:	dec11e04 	addi	sp,sp,1144
  809928:	f800283a 	ret
  80992c:	d80b883a 	mov	r5,sp
  809930:	9009883a 	mov	r4,r18
  809934:	080504c0 	call	80504c <_fflush_r>
  809938:	103fef26 	beq	r2,zero,8098f8 <__sbprintf+0x74>
  80993c:	047fffc4 	movi	r17,-1
  809940:	003fed06 	br	8098f8 <__sbprintf+0x74>

00809944 <_write_r>:
  809944:	2807883a 	mov	r3,r5
  809948:	defffe04 	addi	sp,sp,-8
  80994c:	dc000015 	stw	r16,0(sp)
  809950:	300b883a 	mov	r5,r6
  809954:	00802074 	movhi	r2,129
  809958:	380d883a 	mov	r6,r7
  80995c:	2021883a 	mov	r16,r4
  809960:	1809883a 	mov	r4,r3
  809964:	dfc00115 	stw	ra,4(sp)
  809968:	10112715 	stw	zero,17564(r2)
  80996c:	080e9240 	call	80e924 <write>
  809970:	10ffffd8 	cmpnei	r3,r2,-1
  809974:	18000426 	beq	r3,zero,809988 <_write_r+0x44>
  809978:	dfc00117 	ldw	ra,4(sp)
  80997c:	dc000017 	ldw	r16,0(sp)
  809980:	dec00204 	addi	sp,sp,8
  809984:	f800283a 	ret
  809988:	00c02074 	movhi	r3,129
  80998c:	18d12717 	ldw	r3,17564(r3)
  809990:	183ff926 	beq	r3,zero,809978 <_write_r+0x34>
  809994:	80c00015 	stw	r3,0(r16)
  809998:	dfc00117 	ldw	ra,4(sp)
  80999c:	dc000017 	ldw	r16,0(sp)
  8099a0:	dec00204 	addi	sp,sp,8
  8099a4:	f800283a 	ret

008099a8 <_close_r>:
  8099a8:	defffe04 	addi	sp,sp,-8
  8099ac:	dc000015 	stw	r16,0(sp)
  8099b0:	00802074 	movhi	r2,129
  8099b4:	2021883a 	mov	r16,r4
  8099b8:	2809883a 	mov	r4,r5
  8099bc:	dfc00115 	stw	ra,4(sp)
  8099c0:	10112715 	stw	zero,17564(r2)
  8099c4:	080dd580 	call	80dd58 <close>
  8099c8:	10ffffd8 	cmpnei	r3,r2,-1
  8099cc:	18000426 	beq	r3,zero,8099e0 <_close_r+0x38>
  8099d0:	dfc00117 	ldw	ra,4(sp)
  8099d4:	dc000017 	ldw	r16,0(sp)
  8099d8:	dec00204 	addi	sp,sp,8
  8099dc:	f800283a 	ret
  8099e0:	00c02074 	movhi	r3,129
  8099e4:	18d12717 	ldw	r3,17564(r3)
  8099e8:	183ff926 	beq	r3,zero,8099d0 <_close_r+0x28>
  8099ec:	80c00015 	stw	r3,0(r16)
  8099f0:	dfc00117 	ldw	ra,4(sp)
  8099f4:	dc000017 	ldw	r16,0(sp)
  8099f8:	dec00204 	addi	sp,sp,8
  8099fc:	f800283a 	ret

00809a00 <__assert_func>:
  809a00:	00802074 	movhi	r2,129
  809a04:	120a2117 	ldw	r8,10372(r2)
  809a08:	defffc04 	addi	sp,sp,-16
  809a0c:	3807883a 	mov	r3,r7
  809a10:	3005883a 	mov	r2,r6
  809a14:	dfc00315 	stw	ra,12(sp)
  809a18:	42400317 	ldw	r9,12(r8)
  809a1c:	200f883a 	mov	r7,r4
  809a20:	2811883a 	mov	r8,r5
  809a24:	180d883a 	mov	r6,r3
  809a28:	10000a26 	beq	r2,zero,809a54 <__assert_func+0x54>
  809a2c:	00c02074 	movhi	r3,129
  809a30:	18c27804 	addi	r3,r3,2528
  809a34:	01402074 	movhi	r5,129
  809a38:	29427c04 	addi	r5,r5,2544
  809a3c:	4809883a 	mov	r4,r9
  809a40:	d8c00115 	stw	r3,4(sp)
  809a44:	da000015 	stw	r8,0(sp)
  809a48:	d8800215 	stw	r2,8(sp)
  809a4c:	0809c640 	call	809c64 <fiprintf>
  809a50:	080a4500 	call	80a450 <abort>
  809a54:	00c02074 	movhi	r3,129
  809a58:	18c1a004 	addi	r3,r3,1664
  809a5c:	1805883a 	mov	r2,r3
  809a60:	003ff406 	br	809a34 <__assert_func+0x34>

00809a64 <__assert>:
  809a64:	deffff04 	addi	sp,sp,-4
  809a68:	300f883a 	mov	r7,r6
  809a6c:	000d883a 	mov	r6,zero
  809a70:	dfc00015 	stw	ra,0(sp)
  809a74:	0809a000 	call	809a00 <__assert_func>

00809a78 <_calloc_r>:
  809a78:	defffe04 	addi	sp,sp,-8
  809a7c:	dc000015 	stw	r16,0(sp)
  809a80:	2021883a 	mov	r16,r4
  809a84:	2809883a 	mov	r4,r5
  809a88:	300b883a 	mov	r5,r6
  809a8c:	dfc00115 	stw	ra,4(sp)
  809a90:	0800f8c0 	call	800f8c <__mulsi3>
  809a94:	8009883a 	mov	r4,r16
  809a98:	100b883a 	mov	r5,r2
  809a9c:	08060440 	call	806044 <_malloc_r>
  809aa0:	1009883a 	mov	r4,r2
  809aa4:	10000c26 	beq	r2,zero,809ad8 <_calloc_r+0x60>
  809aa8:	11bfff17 	ldw	r6,-4(r2)
  809aac:	00bfff04 	movi	r2,-4
  809ab0:	308c703a 	and	r6,r6,r2
  809ab4:	31bfff04 	addi	r6,r6,-4
  809ab8:	30800968 	cmpgeui	r2,r6,37
  809abc:	1000151e 	bne	r2,zero,809b14 <_calloc_r+0x9c>
  809ac0:	30800530 	cmpltui	r2,r6,20
  809ac4:	10000926 	beq	r2,zero,809aec <_calloc_r+0x74>
  809ac8:	2005883a 	mov	r2,r4
  809acc:	10000015 	stw	zero,0(r2)
  809ad0:	10000115 	stw	zero,4(r2)
  809ad4:	10000215 	stw	zero,8(r2)
  809ad8:	2005883a 	mov	r2,r4
  809adc:	dfc00117 	ldw	ra,4(sp)
  809ae0:	dc000017 	ldw	r16,0(sp)
  809ae4:	dec00204 	addi	sp,sp,8
  809ae8:	f800283a 	ret
  809aec:	20000015 	stw	zero,0(r4)
  809af0:	20000115 	stw	zero,4(r4)
  809af4:	30800728 	cmpgeui	r2,r6,28
  809af8:	10000a26 	beq	r2,zero,809b24 <_calloc_r+0xac>
  809afc:	20000215 	stw	zero,8(r4)
  809b00:	20000315 	stw	zero,12(r4)
  809b04:	31800920 	cmpeqi	r6,r6,36
  809b08:	3000081e 	bne	r6,zero,809b2c <_calloc_r+0xb4>
  809b0c:	20800404 	addi	r2,r4,16
  809b10:	003fee06 	br	809acc <_calloc_r+0x54>
  809b14:	000b883a 	mov	r5,zero
  809b18:	0806b240 	call	806b24 <memset>
  809b1c:	1009883a 	mov	r4,r2
  809b20:	003fed06 	br	809ad8 <_calloc_r+0x60>
  809b24:	20800204 	addi	r2,r4,8
  809b28:	003fe806 	br	809acc <_calloc_r+0x54>
  809b2c:	20000415 	stw	zero,16(r4)
  809b30:	20800604 	addi	r2,r4,24
  809b34:	20000515 	stw	zero,20(r4)
  809b38:	003fe406 	br	809acc <_calloc_r+0x54>

00809b3c <_fclose_r>:
  809b3c:	defffc04 	addi	sp,sp,-16
  809b40:	dfc00315 	stw	ra,12(sp)
  809b44:	dc800215 	stw	r18,8(sp)
  809b48:	dc400115 	stw	r17,4(sp)
  809b4c:	dc000015 	stw	r16,0(sp)
  809b50:	28000726 	beq	r5,zero,809b70 <_fclose_r+0x34>
  809b54:	2821883a 	mov	r16,r5
  809b58:	2023883a 	mov	r17,r4
  809b5c:	20000226 	beq	r4,zero,809b68 <_fclose_r+0x2c>
  809b60:	20800e17 	ldw	r2,56(r4)
  809b64:	10002726 	beq	r2,zero,809c04 <_fclose_r+0xc8>
  809b68:	8080030f 	ldh	r2,12(r16)
  809b6c:	1000081e 	bne	r2,zero,809b90 <_fclose_r+0x54>
  809b70:	0025883a 	mov	r18,zero
  809b74:	9005883a 	mov	r2,r18
  809b78:	dfc00317 	ldw	ra,12(sp)
  809b7c:	dc800217 	ldw	r18,8(sp)
  809b80:	dc400117 	ldw	r17,4(sp)
  809b84:	dc000017 	ldw	r16,0(sp)
  809b88:	dec00404 	addi	sp,sp,16
  809b8c:	f800283a 	ret
  809b90:	800b883a 	mov	r5,r16
  809b94:	8809883a 	mov	r4,r17
  809b98:	0804e240 	call	804e24 <__sflush_r>
  809b9c:	80c00b17 	ldw	r3,44(r16)
  809ba0:	1025883a 	mov	r18,r2
  809ba4:	18000426 	beq	r3,zero,809bb8 <_fclose_r+0x7c>
  809ba8:	81400717 	ldw	r5,28(r16)
  809bac:	8809883a 	mov	r4,r17
  809bb0:	183ee83a 	callr	r3
  809bb4:	10001716 	blt	r2,zero,809c14 <_fclose_r+0xd8>
  809bb8:	8080030b 	ldhu	r2,12(r16)
  809bbc:	1080200c 	andi	r2,r2,128
  809bc0:	1000181e 	bne	r2,zero,809c24 <_fclose_r+0xe8>
  809bc4:	81400c17 	ldw	r5,48(r16)
  809bc8:	28000526 	beq	r5,zero,809be0 <_fclose_r+0xa4>
  809bcc:	80801004 	addi	r2,r16,64
  809bd0:	28800226 	beq	r5,r2,809bdc <_fclose_r+0xa0>
  809bd4:	8809883a 	mov	r4,r17
  809bd8:	08055440 	call	805544 <_free_r>
  809bdc:	80000c15 	stw	zero,48(r16)
  809be0:	81401117 	ldw	r5,68(r16)
  809be4:	28000326 	beq	r5,zero,809bf4 <_fclose_r+0xb8>
  809be8:	8809883a 	mov	r4,r17
  809bec:	08055440 	call	805544 <_free_r>
  809bf0:	80001115 	stw	zero,68(r16)
  809bf4:	08053f00 	call	8053f0 <__sfp_lock_acquire>
  809bf8:	8000030d 	sth	zero,12(r16)
  809bfc:	08053f40 	call	8053f4 <__sfp_lock_release>
  809c00:	003fdc06 	br	809b74 <_fclose_r+0x38>
  809c04:	08053e00 	call	8053e0 <__sinit>
  809c08:	8080030f 	ldh	r2,12(r16)
  809c0c:	103fd826 	beq	r2,zero,809b70 <_fclose_r+0x34>
  809c10:	003fdf06 	br	809b90 <_fclose_r+0x54>
  809c14:	8080030b 	ldhu	r2,12(r16)
  809c18:	04bfffc4 	movi	r18,-1
  809c1c:	1080200c 	andi	r2,r2,128
  809c20:	103fe826 	beq	r2,zero,809bc4 <_fclose_r+0x88>
  809c24:	81400417 	ldw	r5,16(r16)
  809c28:	8809883a 	mov	r4,r17
  809c2c:	08055440 	call	805544 <_free_r>
  809c30:	003fe406 	br	809bc4 <_fclose_r+0x88>

00809c34 <fclose>:
  809c34:	00802074 	movhi	r2,129
  809c38:	200b883a 	mov	r5,r4
  809c3c:	110a2117 	ldw	r4,10372(r2)
  809c40:	0809b3c1 	jmpi	809b3c <_fclose_r>

00809c44 <_fiprintf_r>:
  809c44:	defffe04 	addi	sp,sp,-8
  809c48:	dfc00015 	stw	ra,0(sp)
  809c4c:	d9c00115 	stw	r7,4(sp)
  809c50:	d9c00104 	addi	r7,sp,4
  809c54:	080a1bc0 	call	80a1bc <_vfiprintf_r>
  809c58:	dfc00017 	ldw	ra,0(sp)
  809c5c:	dec00204 	addi	sp,sp,8
  809c60:	f800283a 	ret

00809c64 <fiprintf>:
  809c64:	defffd04 	addi	sp,sp,-12
  809c68:	2005883a 	mov	r2,r4
  809c6c:	dfc00015 	stw	ra,0(sp)
  809c70:	d9800115 	stw	r6,4(sp)
  809c74:	d9c00215 	stw	r7,8(sp)
  809c78:	00c02074 	movhi	r3,129
  809c7c:	190a2117 	ldw	r4,10372(r3)
  809c80:	280d883a 	mov	r6,r5
  809c84:	d9c00104 	addi	r7,sp,4
  809c88:	100b883a 	mov	r5,r2
  809c8c:	080a1bc0 	call	80a1bc <_vfiprintf_r>
  809c90:	dfc00017 	ldw	ra,0(sp)
  809c94:	dec00304 	addi	sp,sp,12
  809c98:	f800283a 	ret

00809c9c <__fputwc>:
  809c9c:	defff904 	addi	sp,sp,-28
  809ca0:	dcc00415 	stw	r19,16(sp)
  809ca4:	dc800315 	stw	r18,12(sp)
  809ca8:	dc000115 	stw	r16,4(sp)
  809cac:	dfc00615 	stw	ra,24(sp)
  809cb0:	dd000515 	stw	r20,20(sp)
  809cb4:	dc400215 	stw	r17,8(sp)
  809cb8:	2025883a 	mov	r18,r4
  809cbc:	2827883a 	mov	r19,r5
  809cc0:	3021883a 	mov	r16,r6
  809cc4:	0809fc80 	call	809fc8 <__locale_mb_cur_max>
  809cc8:	10800058 	cmpnei	r2,r2,1
  809ccc:	1000071e 	bne	r2,zero,809cec <__fputwc+0x50>
  809cd0:	98bfffc4 	addi	r2,r19,-1
  809cd4:	10803fe8 	cmpgeui	r2,r2,255
  809cd8:	1000041e 	bne	r2,zero,809cec <__fputwc+0x50>
  809cdc:	980b883a 	mov	r5,r19
  809ce0:	dcc000c5 	stb	r19,3(sp)
  809ce4:	05000044 	movi	r20,1
  809ce8:	00000a06 	br	809d14 <__fputwc+0x78>
  809cec:	81c01704 	addi	r7,r16,92
  809cf0:	980d883a 	mov	r6,r19
  809cf4:	d94000c4 	addi	r5,sp,3
  809cf8:	9009883a 	mov	r4,r18
  809cfc:	080a3200 	call	80a320 <_wcrtomb_r>
  809d00:	1029883a 	mov	r20,r2
  809d04:	10bfffd8 	cmpnei	r2,r2,-1
  809d08:	10003926 	beq	r2,zero,809df0 <__fputwc+0x154>
  809d0c:	a0001f26 	beq	r20,zero,809d8c <__fputwc+0xf0>
  809d10:	d94000c3 	ldbu	r5,3(sp)
  809d14:	0023883a 	mov	r17,zero
  809d18:	00000a06 	br	809d44 <__fputwc+0xa8>
  809d1c:	80800017 	ldw	r2,0(r16)
  809d20:	11400005 	stb	r5,0(r2)
  809d24:	80c00017 	ldw	r3,0(r16)
  809d28:	18c00044 	addi	r3,r3,1
  809d2c:	80c00015 	stw	r3,0(r16)
  809d30:	8c400044 	addi	r17,r17,1
  809d34:	d88000c4 	addi	r2,sp,3
  809d38:	1447883a 	add	r3,r2,r17
  809d3c:	8d00132e 	bgeu	r17,r20,809d8c <__fputwc+0xf0>
  809d40:	19400003 	ldbu	r5,0(r3)
  809d44:	80c00217 	ldw	r3,8(r16)
  809d48:	18ffffc4 	addi	r3,r3,-1
  809d4c:	80c00215 	stw	r3,8(r16)
  809d50:	183ff20e 	bge	r3,zero,809d1c <__fputwc+0x80>
  809d54:	80800617 	ldw	r2,24(r16)
  809d58:	18801616 	blt	r3,r2,809db4 <__fputwc+0x118>
  809d5c:	80800017 	ldw	r2,0(r16)
  809d60:	11400005 	stb	r5,0(r2)
  809d64:	80800017 	ldw	r2,0(r16)
  809d68:	10c00003 	ldbu	r3,0(r2)
  809d6c:	10800044 	addi	r2,r2,1
  809d70:	18c002a0 	cmpeqi	r3,r3,10
  809d74:	1800181e 	bne	r3,zero,809dd8 <__fputwc+0x13c>
  809d78:	80800015 	stw	r2,0(r16)
  809d7c:	8c400044 	addi	r17,r17,1
  809d80:	d88000c4 	addi	r2,sp,3
  809d84:	1447883a 	add	r3,r2,r17
  809d88:	8d3fed36 	bltu	r17,r20,809d40 <__fputwc+0xa4>
  809d8c:	9829883a 	mov	r20,r19
  809d90:	a005883a 	mov	r2,r20
  809d94:	dfc00617 	ldw	ra,24(sp)
  809d98:	dd000517 	ldw	r20,20(sp)
  809d9c:	dcc00417 	ldw	r19,16(sp)
  809da0:	dc800317 	ldw	r18,12(sp)
  809da4:	dc400217 	ldw	r17,8(sp)
  809da8:	dc000117 	ldw	r16,4(sp)
  809dac:	dec00704 	addi	sp,sp,28
  809db0:	f800283a 	ret
  809db4:	29403fcc 	andi	r5,r5,255
  809db8:	800d883a 	mov	r6,r16
  809dbc:	9009883a 	mov	r4,r18
  809dc0:	080a1c00 	call	80a1c0 <__swbuf_r>
  809dc4:	10ffffe0 	cmpeqi	r3,r2,-1
  809dc8:	18c03fcc 	andi	r3,r3,255
  809dcc:	183fd826 	beq	r3,zero,809d30 <__fputwc+0x94>
  809dd0:	053fffc4 	movi	r20,-1
  809dd4:	003fee06 	br	809d90 <__fputwc+0xf4>
  809dd8:	800d883a 	mov	r6,r16
  809ddc:	01400284 	movi	r5,10
  809de0:	9009883a 	mov	r4,r18
  809de4:	080a1c00 	call	80a1c0 <__swbuf_r>
  809de8:	10ffffe0 	cmpeqi	r3,r2,-1
  809dec:	003ff606 	br	809dc8 <__fputwc+0x12c>
  809df0:	8080030b 	ldhu	r2,12(r16)
  809df4:	10801014 	ori	r2,r2,64
  809df8:	8080030d 	sth	r2,12(r16)
  809dfc:	003fe406 	br	809d90 <__fputwc+0xf4>

00809e00 <_fputwc_r>:
  809e00:	3080030b 	ldhu	r2,12(r6)
  809e04:	10c8000c 	andi	r3,r2,8192
  809e08:	1800051e 	bne	r3,zero,809e20 <_fputwc_r+0x20>
  809e0c:	30c01917 	ldw	r3,100(r6)
  809e10:	10880014 	ori	r2,r2,8192
  809e14:	3080030d 	sth	r2,12(r6)
  809e18:	18880014 	ori	r2,r3,8192
  809e1c:	30801915 	stw	r2,100(r6)
  809e20:	0809c9c1 	jmpi	809c9c <__fputwc>

00809e24 <fputwc>:
  809e24:	defffc04 	addi	sp,sp,-16
  809e28:	00802074 	movhi	r2,129
  809e2c:	dc000215 	stw	r16,8(sp)
  809e30:	140a2117 	ldw	r16,10372(r2)
  809e34:	dfc00315 	stw	ra,12(sp)
  809e38:	280d883a 	mov	r6,r5
  809e3c:	200b883a 	mov	r5,r4
  809e40:	80000226 	beq	r16,zero,809e4c <fputwc+0x28>
  809e44:	80800e17 	ldw	r2,56(r16)
  809e48:	10000d26 	beq	r2,zero,809e80 <fputwc+0x5c>
  809e4c:	3080030b 	ldhu	r2,12(r6)
  809e50:	10c8000c 	andi	r3,r2,8192
  809e54:	1800051e 	bne	r3,zero,809e6c <fputwc+0x48>
  809e58:	30c01917 	ldw	r3,100(r6)
  809e5c:	10880014 	ori	r2,r2,8192
  809e60:	3080030d 	sth	r2,12(r6)
  809e64:	18880014 	ori	r2,r3,8192
  809e68:	30801915 	stw	r2,100(r6)
  809e6c:	8009883a 	mov	r4,r16
  809e70:	dfc00317 	ldw	ra,12(sp)
  809e74:	dc000217 	ldw	r16,8(sp)
  809e78:	dec00404 	addi	sp,sp,16
  809e7c:	0809c9c1 	jmpi	809c9c <__fputwc>
  809e80:	d9000015 	stw	r4,0(sp)
  809e84:	8009883a 	mov	r4,r16
  809e88:	d9800115 	stw	r6,4(sp)
  809e8c:	08053e00 	call	8053e0 <__sinit>
  809e90:	d9800117 	ldw	r6,4(sp)
  809e94:	d9400017 	ldw	r5,0(sp)
  809e98:	003fec06 	br	809e4c <fputwc+0x28>

00809e9c <_fstat_r>:
  809e9c:	2807883a 	mov	r3,r5
  809ea0:	defffe04 	addi	sp,sp,-8
  809ea4:	dc000015 	stw	r16,0(sp)
  809ea8:	00802074 	movhi	r2,129
  809eac:	300b883a 	mov	r5,r6
  809eb0:	2021883a 	mov	r16,r4
  809eb4:	1809883a 	mov	r4,r3
  809eb8:	dfc00115 	stw	ra,4(sp)
  809ebc:	10112715 	stw	zero,17564(r2)
  809ec0:	080ded40 	call	80ded4 <fstat>
  809ec4:	10ffffd8 	cmpnei	r3,r2,-1
  809ec8:	18000426 	beq	r3,zero,809edc <_fstat_r+0x40>
  809ecc:	dfc00117 	ldw	ra,4(sp)
  809ed0:	dc000017 	ldw	r16,0(sp)
  809ed4:	dec00204 	addi	sp,sp,8
  809ed8:	f800283a 	ret
  809edc:	00c02074 	movhi	r3,129
  809ee0:	18d12717 	ldw	r3,17564(r3)
  809ee4:	183ff926 	beq	r3,zero,809ecc <_fstat_r+0x30>
  809ee8:	80c00015 	stw	r3,0(r16)
  809eec:	dfc00117 	ldw	ra,4(sp)
  809ef0:	dc000017 	ldw	r16,0(sp)
  809ef4:	dec00204 	addi	sp,sp,8
  809ef8:	f800283a 	ret

00809efc <_isatty_r>:
  809efc:	defffe04 	addi	sp,sp,-8
  809f00:	dc000015 	stw	r16,0(sp)
  809f04:	00802074 	movhi	r2,129
  809f08:	2021883a 	mov	r16,r4
  809f0c:	2809883a 	mov	r4,r5
  809f10:	dfc00115 	stw	ra,4(sp)
  809f14:	10112715 	stw	zero,17564(r2)
  809f18:	080dfec0 	call	80dfec <isatty>
  809f1c:	10ffffd8 	cmpnei	r3,r2,-1
  809f20:	18000426 	beq	r3,zero,809f34 <_isatty_r+0x38>
  809f24:	dfc00117 	ldw	ra,4(sp)
  809f28:	dc000017 	ldw	r16,0(sp)
  809f2c:	dec00204 	addi	sp,sp,8
  809f30:	f800283a 	ret
  809f34:	00c02074 	movhi	r3,129
  809f38:	18d12717 	ldw	r3,17564(r3)
  809f3c:	183ff926 	beq	r3,zero,809f24 <_isatty_r+0x28>
  809f40:	80c00015 	stw	r3,0(r16)
  809f44:	dfc00117 	ldw	ra,4(sp)
  809f48:	dc000017 	ldw	r16,0(sp)
  809f4c:	dec00204 	addi	sp,sp,8
  809f50:	f800283a 	ret

00809f54 <_setlocale_r>:
  809f54:	30001626 	beq	r6,zero,809fb0 <_setlocale_r+0x5c>
  809f58:	01402074 	movhi	r5,129
  809f5c:	defffe04 	addi	sp,sp,-8
  809f60:	29428904 	addi	r5,r5,2596
  809f64:	3009883a 	mov	r4,r6
  809f68:	dc000015 	stw	r16,0(sp)
  809f6c:	dfc00115 	stw	ra,4(sp)
  809f70:	3021883a 	mov	r16,r6
  809f74:	080a1040 	call	80a104 <strcmp>
  809f78:	1000061e 	bne	r2,zero,809f94 <_setlocale_r+0x40>
  809f7c:	00802074 	movhi	r2,129
  809f80:	10828804 	addi	r2,r2,2592
  809f84:	dfc00117 	ldw	ra,4(sp)
  809f88:	dc000017 	ldw	r16,0(sp)
  809f8c:	dec00204 	addi	sp,sp,8
  809f90:	f800283a 	ret
  809f94:	80800003 	ldbu	r2,0(r16)
  809f98:	10bfef44 	addi	r2,r2,-67
  809f9c:	10000726 	beq	r2,zero,809fbc <_setlocale_r+0x68>
  809fa0:	80800003 	ldbu	r2,0(r16)
  809fa4:	103ff526 	beq	r2,zero,809f7c <_setlocale_r+0x28>
  809fa8:	0005883a 	mov	r2,zero
  809fac:	003ff506 	br	809f84 <_setlocale_r+0x30>
  809fb0:	00802074 	movhi	r2,129
  809fb4:	10828804 	addi	r2,r2,2592
  809fb8:	f800283a 	ret
  809fbc:	80800043 	ldbu	r2,1(r16)
  809fc0:	103fee26 	beq	r2,zero,809f7c <_setlocale_r+0x28>
  809fc4:	003ff606 	br	809fa0 <_setlocale_r+0x4c>

00809fc8 <__locale_mb_cur_max>:
  809fc8:	00802074 	movhi	r2,129
  809fcc:	10858d07 	ldb	r2,5684(r2)
  809fd0:	f800283a 	ret

00809fd4 <setlocale>:
  809fd4:	00c02074 	movhi	r3,129
  809fd8:	2005883a 	mov	r2,r4
  809fdc:	190a2117 	ldw	r4,10372(r3)
  809fe0:	280d883a 	mov	r6,r5
  809fe4:	100b883a 	mov	r5,r2
  809fe8:	0809f541 	jmpi	809f54 <_setlocale_r>

00809fec <_lseek_r>:
  809fec:	2807883a 	mov	r3,r5
  809ff0:	defffe04 	addi	sp,sp,-8
  809ff4:	dc000015 	stw	r16,0(sp)
  809ff8:	300b883a 	mov	r5,r6
  809ffc:	00802074 	movhi	r2,129
  80a000:	380d883a 	mov	r6,r7
  80a004:	2021883a 	mov	r16,r4
  80a008:	1809883a 	mov	r4,r3
  80a00c:	dfc00115 	stw	ra,4(sp)
  80a010:	10112715 	stw	zero,17564(r2)
  80a014:	080e32c0 	call	80e32c <lseek>
  80a018:	10ffffd8 	cmpnei	r3,r2,-1
  80a01c:	18000426 	beq	r3,zero,80a030 <_lseek_r+0x44>
  80a020:	dfc00117 	ldw	ra,4(sp)
  80a024:	dc000017 	ldw	r16,0(sp)
  80a028:	dec00204 	addi	sp,sp,8
  80a02c:	f800283a 	ret
  80a030:	00c02074 	movhi	r3,129
  80a034:	18d12717 	ldw	r3,17564(r3)
  80a038:	183ff926 	beq	r3,zero,80a020 <_lseek_r+0x34>
  80a03c:	80c00015 	stw	r3,0(r16)
  80a040:	dfc00117 	ldw	ra,4(sp)
  80a044:	dc000017 	ldw	r16,0(sp)
  80a048:	dec00204 	addi	sp,sp,8
  80a04c:	f800283a 	ret

0080a050 <_mbtowc_r>:
  80a050:	00802074 	movhi	r2,129
  80a054:	10857c17 	ldw	r2,5616(r2)
  80a058:	1000683a 	jmp	r2

0080a05c <__ascii_mbtowc>:
  80a05c:	deffff04 	addi	sp,sp,-4
  80a060:	28000826 	beq	r5,zero,80a084 <__ascii_mbtowc+0x28>
  80a064:	30000926 	beq	r6,zero,80a08c <__ascii_mbtowc+0x30>
  80a068:	38000b26 	beq	r7,zero,80a098 <__ascii_mbtowc+0x3c>
  80a06c:	30800003 	ldbu	r2,0(r6)
  80a070:	28800015 	stw	r2,0(r5)
  80a074:	30800003 	ldbu	r2,0(r6)
  80a078:	1004c03a 	cmpne	r2,r2,zero
  80a07c:	dec00104 	addi	sp,sp,4
  80a080:	f800283a 	ret
  80a084:	d80b883a 	mov	r5,sp
  80a088:	303ff71e 	bne	r6,zero,80a068 <__ascii_mbtowc+0xc>
  80a08c:	0005883a 	mov	r2,zero
  80a090:	dec00104 	addi	sp,sp,4
  80a094:	f800283a 	ret
  80a098:	00bfff84 	movi	r2,-2
  80a09c:	003ff706 	br	80a07c <__ascii_mbtowc+0x20>

0080a0a0 <_read_r>:
  80a0a0:	2807883a 	mov	r3,r5
  80a0a4:	defffe04 	addi	sp,sp,-8
  80a0a8:	dc000015 	stw	r16,0(sp)
  80a0ac:	300b883a 	mov	r5,r6
  80a0b0:	00802074 	movhi	r2,129
  80a0b4:	380d883a 	mov	r6,r7
  80a0b8:	2021883a 	mov	r16,r4
  80a0bc:	1809883a 	mov	r4,r3
  80a0c0:	dfc00115 	stw	ra,4(sp)
  80a0c4:	10112715 	stw	zero,17564(r2)
  80a0c8:	080e50c0 	call	80e50c <read>
  80a0cc:	10ffffd8 	cmpnei	r3,r2,-1
  80a0d0:	18000426 	beq	r3,zero,80a0e4 <_read_r+0x44>
  80a0d4:	dfc00117 	ldw	ra,4(sp)
  80a0d8:	dc000017 	ldw	r16,0(sp)
  80a0dc:	dec00204 	addi	sp,sp,8
  80a0e0:	f800283a 	ret
  80a0e4:	00c02074 	movhi	r3,129
  80a0e8:	18d12717 	ldw	r3,17564(r3)
  80a0ec:	183ff926 	beq	r3,zero,80a0d4 <_read_r+0x34>
  80a0f0:	80c00015 	stw	r3,0(r16)
  80a0f4:	dfc00117 	ldw	ra,4(sp)
  80a0f8:	dc000017 	ldw	r16,0(sp)
  80a0fc:	dec00204 	addi	sp,sp,8
  80a100:	f800283a 	ret

0080a104 <strcmp>:
  80a104:	2144b03a 	or	r2,r4,r5
  80a108:	108000cc 	andi	r2,r2,3
  80a10c:	1000141e 	bne	r2,zero,80a160 <strcmp+0x5c>
  80a110:	20800017 	ldw	r2,0(r4)
  80a114:	28c00017 	ldw	r3,0(r5)
  80a118:	10c0111e 	bne	r2,r3,80a160 <strcmp+0x5c>
  80a11c:	01ffbff4 	movhi	r7,65279
  80a120:	01a02074 	movhi	r6,32897
  80a124:	39ffbfc4 	addi	r7,r7,-257
  80a128:	31a02004 	addi	r6,r6,-32640
  80a12c:	00000306 	br	80a13c <strcmp+0x38>
  80a130:	20800017 	ldw	r2,0(r4)
  80a134:	28c00017 	ldw	r3,0(r5)
  80a138:	10c0091e 	bne	r2,r3,80a160 <strcmp+0x5c>
  80a13c:	11c7883a 	add	r3,r2,r7
  80a140:	0084303a 	nor	r2,zero,r2
  80a144:	1884703a 	and	r2,r3,r2
  80a148:	1184703a 	and	r2,r2,r6
  80a14c:	21000104 	addi	r4,r4,4
  80a150:	29400104 	addi	r5,r5,4
  80a154:	103ff626 	beq	r2,zero,80a130 <strcmp+0x2c>
  80a158:	0005883a 	mov	r2,zero
  80a15c:	f800283a 	ret
  80a160:	20c00003 	ldbu	r3,0(r4)
  80a164:	18803fcc 	andi	r2,r3,255
  80a168:	1080201c 	xori	r2,r2,128
  80a16c:	10bfe004 	addi	r2,r2,-128
  80a170:	1000071e 	bne	r2,zero,80a190 <strcmp+0x8c>
  80a174:	00000a06 	br	80a1a0 <strcmp+0x9c>
  80a178:	20c00003 	ldbu	r3,0(r4)
  80a17c:	29400044 	addi	r5,r5,1
  80a180:	18803fcc 	andi	r2,r3,255
  80a184:	1080201c 	xori	r2,r2,128
  80a188:	10bfe004 	addi	r2,r2,-128
  80a18c:	10000726 	beq	r2,zero,80a1ac <strcmp+0xa8>
  80a190:	29800007 	ldb	r6,0(r5)
  80a194:	21000044 	addi	r4,r4,1
  80a198:	30bff726 	beq	r6,r2,80a178 <strcmp+0x74>
  80a19c:	18803fcc 	andi	r2,r3,255
  80a1a0:	28c00003 	ldbu	r3,0(r5)
  80a1a4:	10c5c83a 	sub	r2,r2,r3
  80a1a8:	f800283a 	ret
  80a1ac:	28c00003 	ldbu	r3,0(r5)
  80a1b0:	0005883a 	mov	r2,zero
  80a1b4:	10c5c83a 	sub	r2,r2,r3
  80a1b8:	f800283a 	ret

0080a1bc <_vfiprintf_r>:
  80a1bc:	08085541 	jmpi	808554 <___vfiprintf_internal_r>

0080a1c0 <__swbuf_r>:
  80a1c0:	defffb04 	addi	sp,sp,-20
  80a1c4:	dcc00315 	stw	r19,12(sp)
  80a1c8:	dc400115 	stw	r17,4(sp)
  80a1cc:	dc000015 	stw	r16,0(sp)
  80a1d0:	dfc00415 	stw	ra,16(sp)
  80a1d4:	dc800215 	stw	r18,8(sp)
  80a1d8:	2027883a 	mov	r19,r4
  80a1dc:	2823883a 	mov	r17,r5
  80a1e0:	3021883a 	mov	r16,r6
  80a1e4:	20000226 	beq	r4,zero,80a1f0 <__swbuf_r+0x30>
  80a1e8:	20800e17 	ldw	r2,56(r4)
  80a1ec:	10003e26 	beq	r2,zero,80a2e8 <__swbuf_r+0x128>
  80a1f0:	80800617 	ldw	r2,24(r16)
  80a1f4:	80c0030b 	ldhu	r3,12(r16)
  80a1f8:	80800215 	stw	r2,8(r16)
  80a1fc:	1880020c 	andi	r2,r3,8
  80a200:	10001f26 	beq	r2,zero,80a280 <__swbuf_r+0xc0>
  80a204:	80800417 	ldw	r2,16(r16)
  80a208:	10001d26 	beq	r2,zero,80a280 <__swbuf_r+0xc0>
  80a20c:	1948000c 	andi	r5,r3,8192
  80a210:	8c803fcc 	andi	r18,r17,255
  80a214:	28002326 	beq	r5,zero,80a2a4 <__swbuf_r+0xe4>
  80a218:	80c00017 	ldw	r3,0(r16)
  80a21c:	81000517 	ldw	r4,20(r16)
  80a220:	1885c83a 	sub	r2,r3,r2
  80a224:	1100290e 	bge	r2,r4,80a2cc <__swbuf_r+0x10c>
  80a228:	10800044 	addi	r2,r2,1
  80a22c:	81400217 	ldw	r5,8(r16)
  80a230:	19000044 	addi	r4,r3,1
  80a234:	81000015 	stw	r4,0(r16)
  80a238:	297fffc4 	addi	r5,r5,-1
  80a23c:	81400215 	stw	r5,8(r16)
  80a240:	1c400005 	stb	r17,0(r3)
  80a244:	80c00517 	ldw	r3,20(r16)
  80a248:	18802926 	beq	r3,r2,80a2f0 <__swbuf_r+0x130>
  80a24c:	8080030b 	ldhu	r2,12(r16)
  80a250:	1080004c 	andi	r2,r2,1
  80a254:	10000226 	beq	r2,zero,80a260 <__swbuf_r+0xa0>
  80a258:	90800298 	cmpnei	r2,r18,10
  80a25c:	10002426 	beq	r2,zero,80a2f0 <__swbuf_r+0x130>
  80a260:	9005883a 	mov	r2,r18
  80a264:	dfc00417 	ldw	ra,16(sp)
  80a268:	dcc00317 	ldw	r19,12(sp)
  80a26c:	dc800217 	ldw	r18,8(sp)
  80a270:	dc400117 	ldw	r17,4(sp)
  80a274:	dc000017 	ldw	r16,0(sp)
  80a278:	dec00504 	addi	sp,sp,20
  80a27c:	f800283a 	ret
  80a280:	800b883a 	mov	r5,r16
  80a284:	9809883a 	mov	r4,r19
  80a288:	08033580 	call	803358 <__swsetup_r>
  80a28c:	10001c1e 	bne	r2,zero,80a300 <__swbuf_r+0x140>
  80a290:	80c0030b 	ldhu	r3,12(r16)
  80a294:	80800417 	ldw	r2,16(r16)
  80a298:	8c803fcc 	andi	r18,r17,255
  80a29c:	1948000c 	andi	r5,r3,8192
  80a2a0:	283fdd1e 	bne	r5,zero,80a218 <__swbuf_r+0x58>
  80a2a4:	81001917 	ldw	r4,100(r16)
  80a2a8:	18c80014 	ori	r3,r3,8192
  80a2ac:	0177ffc4 	movi	r5,-8193
  80a2b0:	2148703a 	and	r4,r4,r5
  80a2b4:	80c0030d 	sth	r3,12(r16)
  80a2b8:	80c00017 	ldw	r3,0(r16)
  80a2bc:	81001915 	stw	r4,100(r16)
  80a2c0:	81000517 	ldw	r4,20(r16)
  80a2c4:	1885c83a 	sub	r2,r3,r2
  80a2c8:	113fd716 	blt	r2,r4,80a228 <__swbuf_r+0x68>
  80a2cc:	800b883a 	mov	r5,r16
  80a2d0:	9809883a 	mov	r4,r19
  80a2d4:	080504c0 	call	80504c <_fflush_r>
  80a2d8:	1000091e 	bne	r2,zero,80a300 <__swbuf_r+0x140>
  80a2dc:	80c00017 	ldw	r3,0(r16)
  80a2e0:	00800044 	movi	r2,1
  80a2e4:	003fd106 	br	80a22c <__swbuf_r+0x6c>
  80a2e8:	08053e00 	call	8053e0 <__sinit>
  80a2ec:	003fc006 	br	80a1f0 <__swbuf_r+0x30>
  80a2f0:	800b883a 	mov	r5,r16
  80a2f4:	9809883a 	mov	r4,r19
  80a2f8:	080504c0 	call	80504c <_fflush_r>
  80a2fc:	103fd826 	beq	r2,zero,80a260 <__swbuf_r+0xa0>
  80a300:	04bfffc4 	movi	r18,-1
  80a304:	003fd606 	br	80a260 <__swbuf_r+0xa0>

0080a308 <__swbuf>:
  80a308:	00c02074 	movhi	r3,129
  80a30c:	2005883a 	mov	r2,r4
  80a310:	190a2117 	ldw	r4,10372(r3)
  80a314:	280d883a 	mov	r6,r5
  80a318:	100b883a 	mov	r5,r2
  80a31c:	080a1c01 	jmpi	80a1c0 <__swbuf_r>

0080a320 <_wcrtomb_r>:
  80a320:	defffa04 	addi	sp,sp,-24
  80a324:	dc400415 	stw	r17,16(sp)
  80a328:	dc000315 	stw	r16,12(sp)
  80a32c:	00802074 	movhi	r2,129
  80a330:	dfc00515 	stw	ra,20(sp)
  80a334:	10857b17 	ldw	r2,5612(r2)
  80a338:	2023883a 	mov	r17,r4
  80a33c:	3821883a 	mov	r16,r7
  80a340:	28000826 	beq	r5,zero,80a364 <_wcrtomb_r+0x44>
  80a344:	103ee83a 	callr	r2
  80a348:	10ffffd8 	cmpnei	r3,r2,-1
  80a34c:	18000a26 	beq	r3,zero,80a378 <_wcrtomb_r+0x58>
  80a350:	dfc00517 	ldw	ra,20(sp)
  80a354:	dc400417 	ldw	r17,16(sp)
  80a358:	dc000317 	ldw	r16,12(sp)
  80a35c:	dec00604 	addi	sp,sp,24
  80a360:	f800283a 	ret
  80a364:	000d883a 	mov	r6,zero
  80a368:	d9400084 	addi	r5,sp,2
  80a36c:	103ee83a 	callr	r2
  80a370:	10ffffd8 	cmpnei	r3,r2,-1
  80a374:	183ff61e 	bne	r3,zero,80a350 <_wcrtomb_r+0x30>
  80a378:	00802284 	movi	r2,138
  80a37c:	80000015 	stw	zero,0(r16)
  80a380:	88800015 	stw	r2,0(r17)
  80a384:	00bfffc4 	movi	r2,-1
  80a388:	003ff106 	br	80a350 <_wcrtomb_r+0x30>

0080a38c <wcrtomb>:
  80a38c:	defffa04 	addi	sp,sp,-24
  80a390:	00c02074 	movhi	r3,129
  80a394:	dc400415 	stw	r17,16(sp)
  80a398:	dc000315 	stw	r16,12(sp)
  80a39c:	1c4a2117 	ldw	r17,10372(r3)
  80a3a0:	dfc00515 	stw	ra,20(sp)
  80a3a4:	00c02074 	movhi	r3,129
  80a3a8:	18c57b17 	ldw	r3,5612(r3)
  80a3ac:	3021883a 	mov	r16,r6
  80a3b0:	20000c26 	beq	r4,zero,80a3e4 <wcrtomb+0x58>
  80a3b4:	280d883a 	mov	r6,r5
  80a3b8:	800f883a 	mov	r7,r16
  80a3bc:	200b883a 	mov	r5,r4
  80a3c0:	8809883a 	mov	r4,r17
  80a3c4:	183ee83a 	callr	r3
  80a3c8:	10ffffd8 	cmpnei	r3,r2,-1
  80a3cc:	18000c26 	beq	r3,zero,80a400 <wcrtomb+0x74>
  80a3d0:	dfc00517 	ldw	ra,20(sp)
  80a3d4:	dc400417 	ldw	r17,16(sp)
  80a3d8:	dc000317 	ldw	r16,12(sp)
  80a3dc:	dec00604 	addi	sp,sp,24
  80a3e0:	f800283a 	ret
  80a3e4:	300f883a 	mov	r7,r6
  80a3e8:	d9400084 	addi	r5,sp,2
  80a3ec:	000d883a 	mov	r6,zero
  80a3f0:	8809883a 	mov	r4,r17
  80a3f4:	183ee83a 	callr	r3
  80a3f8:	10ffffd8 	cmpnei	r3,r2,-1
  80a3fc:	183ff41e 	bne	r3,zero,80a3d0 <wcrtomb+0x44>
  80a400:	00802284 	movi	r2,138
  80a404:	80000015 	stw	zero,0(r16)
  80a408:	88800015 	stw	r2,0(r17)
  80a40c:	00bfffc4 	movi	r2,-1
  80a410:	003fef06 	br	80a3d0 <wcrtomb+0x44>

0080a414 <_wctomb_r>:
  80a414:	00802074 	movhi	r2,129
  80a418:	10857b17 	ldw	r2,5612(r2)
  80a41c:	1000683a 	jmp	r2

0080a420 <__ascii_wctomb>:
  80a420:	28000926 	beq	r5,zero,80a448 <__ascii_wctomb+0x28>
  80a424:	30804030 	cmpltui	r2,r6,256
  80a428:	10000326 	beq	r2,zero,80a438 <__ascii_wctomb+0x18>
  80a42c:	29800005 	stb	r6,0(r5)
  80a430:	00800044 	movi	r2,1
  80a434:	f800283a 	ret
  80a438:	00802284 	movi	r2,138
  80a43c:	20800015 	stw	r2,0(r4)
  80a440:	00bfffc4 	movi	r2,-1
  80a444:	f800283a 	ret
  80a448:	0005883a 	mov	r2,zero
  80a44c:	f800283a 	ret

0080a450 <abort>:
  80a450:	deffff04 	addi	sp,sp,-4
  80a454:	01000184 	movi	r4,6
  80a458:	dfc00015 	stw	ra,0(sp)
  80a45c:	080a6c80 	call	80a6c8 <raise>
  80a460:	01000044 	movi	r4,1
  80a464:	080de600 	call	80de60 <_exit>

0080a468 <_init_signal_r.part.0>:
  80a468:	defffe04 	addi	sp,sp,-8
  80a46c:	01402004 	movi	r5,128
  80a470:	dc000015 	stw	r16,0(sp)
  80a474:	dfc00115 	stw	ra,4(sp)
  80a478:	2021883a 	mov	r16,r4
  80a47c:	08060440 	call	806044 <_malloc_r>
  80a480:	8080b715 	stw	r2,732(r16)
  80a484:	10000926 	beq	r2,zero,80a4ac <_init_signal_r.part.0+0x44>
  80a488:	10c02004 	addi	r3,r2,128
  80a48c:	10000015 	stw	zero,0(r2)
  80a490:	10800104 	addi	r2,r2,4
  80a494:	10fffd1e 	bne	r2,r3,80a48c <_init_signal_r.part.0+0x24>
  80a498:	0005883a 	mov	r2,zero
  80a49c:	dfc00117 	ldw	ra,4(sp)
  80a4a0:	dc000017 	ldw	r16,0(sp)
  80a4a4:	dec00204 	addi	sp,sp,8
  80a4a8:	f800283a 	ret
  80a4ac:	00bfffc4 	movi	r2,-1
  80a4b0:	003ffa06 	br	80a49c <_init_signal_r.part.0+0x34>

0080a4b4 <_init_signal_r>:
  80a4b4:	2080b717 	ldw	r2,732(r4)
  80a4b8:	10000226 	beq	r2,zero,80a4c4 <_init_signal_r+0x10>
  80a4bc:	0005883a 	mov	r2,zero
  80a4c0:	f800283a 	ret
  80a4c4:	080a4681 	jmpi	80a468 <_init_signal_r.part.0>

0080a4c8 <_signal_r>:
  80a4c8:	defffc04 	addi	sp,sp,-16
  80a4cc:	dc000215 	stw	r16,8(sp)
  80a4d0:	dfc00315 	stw	ra,12(sp)
  80a4d4:	28800830 	cmpltui	r2,r5,32
  80a4d8:	2021883a 	mov	r16,r4
  80a4dc:	10000a26 	beq	r2,zero,80a508 <_signal_r+0x40>
  80a4e0:	2080b717 	ldw	r2,732(r4)
  80a4e4:	10000f26 	beq	r2,zero,80a524 <_signal_r+0x5c>
  80a4e8:	280a90ba 	slli	r5,r5,2
  80a4ec:	114b883a 	add	r5,r2,r5
  80a4f0:	28800017 	ldw	r2,0(r5)
  80a4f4:	29800015 	stw	r6,0(r5)
  80a4f8:	dfc00317 	ldw	ra,12(sp)
  80a4fc:	dc000217 	ldw	r16,8(sp)
  80a500:	dec00404 	addi	sp,sp,16
  80a504:	f800283a 	ret
  80a508:	00800584 	movi	r2,22
  80a50c:	20800015 	stw	r2,0(r4)
  80a510:	00bfffc4 	movi	r2,-1
  80a514:	dfc00317 	ldw	ra,12(sp)
  80a518:	dc000217 	ldw	r16,8(sp)
  80a51c:	dec00404 	addi	sp,sp,16
  80a520:	f800283a 	ret
  80a524:	d9800115 	stw	r6,4(sp)
  80a528:	d9400015 	stw	r5,0(sp)
  80a52c:	080a4680 	call	80a468 <_init_signal_r.part.0>
  80a530:	1000041e 	bne	r2,zero,80a544 <_signal_r+0x7c>
  80a534:	8080b717 	ldw	r2,732(r16)
  80a538:	d9800117 	ldw	r6,4(sp)
  80a53c:	d9400017 	ldw	r5,0(sp)
  80a540:	003fe906 	br	80a4e8 <_signal_r+0x20>
  80a544:	00bfffc4 	movi	r2,-1
  80a548:	003feb06 	br	80a4f8 <_signal_r+0x30>

0080a54c <_raise_r>:
  80a54c:	28800830 	cmpltui	r2,r5,32
  80a550:	10002b26 	beq	r2,zero,80a600 <_raise_r+0xb4>
  80a554:	2080b717 	ldw	r2,732(r4)
  80a558:	defffd04 	addi	sp,sp,-12
  80a55c:	dc000115 	stw	r16,4(sp)
  80a560:	dfc00215 	stw	ra,8(sp)
  80a564:	2821883a 	mov	r16,r5
  80a568:	10001026 	beq	r2,zero,80a5ac <_raise_r+0x60>
  80a56c:	280690ba 	slli	r3,r5,2
  80a570:	10c5883a 	add	r2,r2,r3
  80a574:	10c00017 	ldw	r3,0(r2)
  80a578:	18000c26 	beq	r3,zero,80a5ac <_raise_r+0x60>
  80a57c:	19400060 	cmpeqi	r5,r3,1
  80a580:	28001a1e 	bne	r5,zero,80a5ec <_raise_r+0xa0>
  80a584:	197fffd8 	cmpnei	r5,r3,-1
  80a588:	28001126 	beq	r5,zero,80a5d0 <_raise_r+0x84>
  80a58c:	10000015 	stw	zero,0(r2)
  80a590:	8009883a 	mov	r4,r16
  80a594:	183ee83a 	callr	r3
  80a598:	0005883a 	mov	r2,zero
  80a59c:	dfc00217 	ldw	ra,8(sp)
  80a5a0:	dc000117 	ldw	r16,4(sp)
  80a5a4:	dec00304 	addi	sp,sp,12
  80a5a8:	f800283a 	ret
  80a5ac:	d9000015 	stw	r4,0(sp)
  80a5b0:	080a77c0 	call	80a77c <_getpid_r>
  80a5b4:	d9000017 	ldw	r4,0(sp)
  80a5b8:	800d883a 	mov	r6,r16
  80a5bc:	100b883a 	mov	r5,r2
  80a5c0:	dfc00217 	ldw	ra,8(sp)
  80a5c4:	dc000117 	ldw	r16,4(sp)
  80a5c8:	dec00304 	addi	sp,sp,12
  80a5cc:	080a71c1 	jmpi	80a71c <_kill_r>
  80a5d0:	00800584 	movi	r2,22
  80a5d4:	20800015 	stw	r2,0(r4)
  80a5d8:	00800044 	movi	r2,1
  80a5dc:	dfc00217 	ldw	ra,8(sp)
  80a5e0:	dc000117 	ldw	r16,4(sp)
  80a5e4:	dec00304 	addi	sp,sp,12
  80a5e8:	f800283a 	ret
  80a5ec:	0005883a 	mov	r2,zero
  80a5f0:	dfc00217 	ldw	ra,8(sp)
  80a5f4:	dc000117 	ldw	r16,4(sp)
  80a5f8:	dec00304 	addi	sp,sp,12
  80a5fc:	f800283a 	ret
  80a600:	00800584 	movi	r2,22
  80a604:	20800015 	stw	r2,0(r4)
  80a608:	00bfffc4 	movi	r2,-1
  80a60c:	f800283a 	ret

0080a610 <__sigtramp_r>:
  80a610:	28800830 	cmpltui	r2,r5,32
  80a614:	10002a26 	beq	r2,zero,80a6c0 <__sigtramp_r+0xb0>
  80a618:	2080b717 	ldw	r2,732(r4)
  80a61c:	defffd04 	addi	sp,sp,-12
  80a620:	dc400115 	stw	r17,4(sp)
  80a624:	dfc00215 	stw	ra,8(sp)
  80a628:	2023883a 	mov	r17,r4
  80a62c:	10001526 	beq	r2,zero,80a684 <__sigtramp_r+0x74>
  80a630:	280690ba 	slli	r3,r5,2
  80a634:	10c5883a 	add	r2,r2,r3
  80a638:	10c00017 	ldw	r3,0(r2)
  80a63c:	18000c26 	beq	r3,zero,80a670 <__sigtramp_r+0x60>
  80a640:	193fffe0 	cmpeqi	r4,r3,-1
  80a644:	20001a1e 	bne	r4,zero,80a6b0 <__sigtramp_r+0xa0>
  80a648:	19000060 	cmpeqi	r4,r3,1
  80a64c:	2000131e 	bne	r4,zero,80a69c <__sigtramp_r+0x8c>
  80a650:	10000015 	stw	zero,0(r2)
  80a654:	2809883a 	mov	r4,r5
  80a658:	183ee83a 	callr	r3
  80a65c:	0005883a 	mov	r2,zero
  80a660:	dfc00217 	ldw	ra,8(sp)
  80a664:	dc400117 	ldw	r17,4(sp)
  80a668:	dec00304 	addi	sp,sp,12
  80a66c:	f800283a 	ret
  80a670:	00800044 	movi	r2,1
  80a674:	dfc00217 	ldw	ra,8(sp)
  80a678:	dc400117 	ldw	r17,4(sp)
  80a67c:	dec00304 	addi	sp,sp,12
  80a680:	f800283a 	ret
  80a684:	d9400015 	stw	r5,0(sp)
  80a688:	080a4680 	call	80a468 <_init_signal_r.part.0>
  80a68c:	10000a1e 	bne	r2,zero,80a6b8 <__sigtramp_r+0xa8>
  80a690:	8880b717 	ldw	r2,732(r17)
  80a694:	d9400017 	ldw	r5,0(sp)
  80a698:	003fe506 	br	80a630 <__sigtramp_r+0x20>
  80a69c:	008000c4 	movi	r2,3
  80a6a0:	dfc00217 	ldw	ra,8(sp)
  80a6a4:	dc400117 	ldw	r17,4(sp)
  80a6a8:	dec00304 	addi	sp,sp,12
  80a6ac:	f800283a 	ret
  80a6b0:	00800084 	movi	r2,2
  80a6b4:	003fea06 	br	80a660 <__sigtramp_r+0x50>
  80a6b8:	00bfffc4 	movi	r2,-1
  80a6bc:	003fe806 	br	80a660 <__sigtramp_r+0x50>
  80a6c0:	00bfffc4 	movi	r2,-1
  80a6c4:	f800283a 	ret

0080a6c8 <raise>:
  80a6c8:	00802074 	movhi	r2,129
  80a6cc:	200b883a 	mov	r5,r4
  80a6d0:	110a2117 	ldw	r4,10372(r2)
  80a6d4:	080a54c1 	jmpi	80a54c <_raise_r>

0080a6d8 <signal>:
  80a6d8:	00c02074 	movhi	r3,129
  80a6dc:	2005883a 	mov	r2,r4
  80a6e0:	190a2117 	ldw	r4,10372(r3)
  80a6e4:	280d883a 	mov	r6,r5
  80a6e8:	100b883a 	mov	r5,r2
  80a6ec:	080a4c81 	jmpi	80a4c8 <_signal_r>

0080a6f0 <_init_signal>:
  80a6f0:	00802074 	movhi	r2,129
  80a6f4:	110a2117 	ldw	r4,10372(r2)
  80a6f8:	2080b717 	ldw	r2,732(r4)
  80a6fc:	10000226 	beq	r2,zero,80a708 <_init_signal+0x18>
  80a700:	0005883a 	mov	r2,zero
  80a704:	f800283a 	ret
  80a708:	080a4681 	jmpi	80a468 <_init_signal_r.part.0>

0080a70c <__sigtramp>:
  80a70c:	00802074 	movhi	r2,129
  80a710:	200b883a 	mov	r5,r4
  80a714:	110a2117 	ldw	r4,10372(r2)
  80a718:	080a6101 	jmpi	80a610 <__sigtramp_r>

0080a71c <_kill_r>:
  80a71c:	2807883a 	mov	r3,r5
  80a720:	defffe04 	addi	sp,sp,-8
  80a724:	dc000015 	stw	r16,0(sp)
  80a728:	00802074 	movhi	r2,129
  80a72c:	300b883a 	mov	r5,r6
  80a730:	2021883a 	mov	r16,r4
  80a734:	1809883a 	mov	r4,r3
  80a738:	dfc00115 	stw	ra,4(sp)
  80a73c:	10112715 	stw	zero,17564(r2)
  80a740:	080e0d80 	call	80e0d8 <kill>
  80a744:	10ffffd8 	cmpnei	r3,r2,-1
  80a748:	18000426 	beq	r3,zero,80a75c <_kill_r+0x40>
  80a74c:	dfc00117 	ldw	ra,4(sp)
  80a750:	dc000017 	ldw	r16,0(sp)
  80a754:	dec00204 	addi	sp,sp,8
  80a758:	f800283a 	ret
  80a75c:	00c02074 	movhi	r3,129
  80a760:	18d12717 	ldw	r3,17564(r3)
  80a764:	183ff926 	beq	r3,zero,80a74c <_kill_r+0x30>
  80a768:	80c00015 	stw	r3,0(r16)
  80a76c:	dfc00117 	ldw	ra,4(sp)
  80a770:	dc000017 	ldw	r16,0(sp)
  80a774:	dec00204 	addi	sp,sp,8
  80a778:	f800283a 	ret

0080a77c <_getpid_r>:
  80a77c:	080df901 	jmpi	80df90 <getpid>

0080a780 <__udivdi3>:
  80a780:	defff504 	addi	sp,sp,-44
  80a784:	dd000515 	stw	r20,20(sp)
  80a788:	dc800315 	stw	r18,12(sp)
  80a78c:	dfc00a15 	stw	ra,40(sp)
  80a790:	df000915 	stw	fp,36(sp)
  80a794:	ddc00815 	stw	r23,32(sp)
  80a798:	dd800715 	stw	r22,28(sp)
  80a79c:	dd400615 	stw	r21,24(sp)
  80a7a0:	dcc00415 	stw	r19,16(sp)
  80a7a4:	dc400215 	stw	r17,8(sp)
  80a7a8:	dc000115 	stw	r16,4(sp)
  80a7ac:	2029883a 	mov	r20,r4
  80a7b0:	2825883a 	mov	r18,r5
  80a7b4:	3800461e 	bne	r7,zero,80a8d0 <__udivdi3+0x150>
  80a7b8:	3823883a 	mov	r17,r7
  80a7bc:	3021883a 	mov	r16,r6
  80a7c0:	2027883a 	mov	r19,r4
  80a7c4:	2980622e 	bgeu	r5,r6,80a950 <__udivdi3+0x1d0>
  80a7c8:	00bfffd4 	movui	r2,65535
  80a7cc:	282b883a 	mov	r21,r5
  80a7d0:	1180aa2e 	bgeu	r2,r6,80aa7c <__udivdi3+0x2fc>
  80a7d4:	00804034 	movhi	r2,256
  80a7d8:	30815936 	bltu	r6,r2,80ad40 <__udivdi3+0x5c0>
  80a7dc:	3006d63a 	srli	r3,r6,24
  80a7e0:	04400604 	movi	r17,24
  80a7e4:	00802074 	movhi	r2,129
  80a7e8:	1885883a 	add	r2,r3,r2
  80a7ec:	1101a503 	ldbu	r4,1684(r2)
  80a7f0:	00800804 	movi	r2,32
  80a7f4:	2463883a 	add	r17,r4,r17
  80a7f8:	1449c83a 	sub	r4,r2,r17
  80a7fc:	14400526 	beq	r2,r17,80a814 <__udivdi3+0x94>
  80a800:	9106983a 	sll	r3,r18,r4
  80a804:	a462d83a 	srl	r17,r20,r17
  80a808:	3120983a 	sll	r16,r6,r4
  80a80c:	a126983a 	sll	r19,r20,r4
  80a810:	88eab03a 	or	r21,r17,r3
  80a814:	802cd43a 	srli	r22,r16,16
  80a818:	a809883a 	mov	r4,r21
  80a81c:	853fffcc 	andi	r20,r16,65535
  80a820:	b00b883a 	mov	r5,r22
  80a824:	080b4b80 	call	80b4b8 <__umodsi3>
  80a828:	a809883a 	mov	r4,r21
  80a82c:	b00b883a 	mov	r5,r22
  80a830:	1025883a 	mov	r18,r2
  80a834:	080b4540 	call	80b454 <__udivsi3>
  80a838:	a009883a 	mov	r4,r20
  80a83c:	100b883a 	mov	r5,r2
  80a840:	102b883a 	mov	r21,r2
  80a844:	0800f8c0 	call	800f8c <__mulsi3>
  80a848:	9024943a 	slli	r18,r18,16
  80a84c:	9808d43a 	srli	r4,r19,16
  80a850:	9108b03a 	or	r4,r18,r4
  80a854:	2080052e 	bgeu	r4,r2,80a86c <__udivdi3+0xec>
  80a858:	2409883a 	add	r4,r4,r16
  80a85c:	a8ffffc4 	addi	r3,r21,-1
  80a860:	24000136 	bltu	r4,r16,80a868 <__udivdi3+0xe8>
  80a864:	20814736 	bltu	r4,r2,80ad84 <__udivdi3+0x604>
  80a868:	182b883a 	mov	r21,r3
  80a86c:	20a3c83a 	sub	r17,r4,r2
  80a870:	8809883a 	mov	r4,r17
  80a874:	b00b883a 	mov	r5,r22
  80a878:	080b4b80 	call	80b4b8 <__umodsi3>
  80a87c:	8809883a 	mov	r4,r17
  80a880:	1023883a 	mov	r17,r2
  80a884:	b00b883a 	mov	r5,r22
  80a888:	8822943a 	slli	r17,r17,16
  80a88c:	080b4540 	call	80b454 <__udivsi3>
  80a890:	100b883a 	mov	r5,r2
  80a894:	a009883a 	mov	r4,r20
  80a898:	9cffffcc 	andi	r19,r19,65535
  80a89c:	1025883a 	mov	r18,r2
  80a8a0:	8ce6b03a 	or	r19,r17,r19
  80a8a4:	0800f8c0 	call	800f8c <__mulsi3>
  80a8a8:	9880052e 	bgeu	r19,r2,80a8c0 <__udivdi3+0x140>
  80a8ac:	84e7883a 	add	r19,r16,r19
  80a8b0:	90ffffc4 	addi	r3,r18,-1
  80a8b4:	9c000136 	bltu	r19,r16,80a8bc <__udivdi3+0x13c>
  80a8b8:	98813036 	bltu	r19,r2,80ad7c <__udivdi3+0x5fc>
  80a8bc:	1825883a 	mov	r18,r3
  80a8c0:	a80c943a 	slli	r6,r21,16
  80a8c4:	0007883a 	mov	r3,zero
  80a8c8:	3484b03a 	or	r2,r6,r18
  80a8cc:	00000306 	br	80a8dc <__udivdi3+0x15c>
  80a8d0:	29c00e2e 	bgeu	r5,r7,80a90c <__udivdi3+0x18c>
  80a8d4:	0007883a 	mov	r3,zero
  80a8d8:	0005883a 	mov	r2,zero
  80a8dc:	dfc00a17 	ldw	ra,40(sp)
  80a8e0:	df000917 	ldw	fp,36(sp)
  80a8e4:	ddc00817 	ldw	r23,32(sp)
  80a8e8:	dd800717 	ldw	r22,28(sp)
  80a8ec:	dd400617 	ldw	r21,24(sp)
  80a8f0:	dd000517 	ldw	r20,20(sp)
  80a8f4:	dcc00417 	ldw	r19,16(sp)
  80a8f8:	dc800317 	ldw	r18,12(sp)
  80a8fc:	dc400217 	ldw	r17,8(sp)
  80a900:	dc000117 	ldw	r16,4(sp)
  80a904:	dec00b04 	addi	sp,sp,44
  80a908:	f800283a 	ret
  80a90c:	00bfffd4 	movui	r2,65535
  80a910:	11c05f2e 	bgeu	r2,r7,80aa90 <__udivdi3+0x310>
  80a914:	00804034 	movhi	r2,256
  80a918:	3880fb36 	bltu	r7,r2,80ad08 <__udivdi3+0x588>
  80a91c:	3806d63a 	srli	r3,r7,24
  80a920:	01000604 	movi	r4,24
  80a924:	00802074 	movhi	r2,129
  80a928:	1885883a 	add	r2,r3,r2
  80a92c:	10c1a503 	ldbu	r3,1684(r2)
  80a930:	00800804 	movi	r2,32
  80a934:	1907883a 	add	r3,r3,r4
  80a938:	10e3c83a 	sub	r17,r2,r3
  80a93c:	10c0901e 	bne	r2,r3,80ab80 <__udivdi3+0x400>
  80a940:	3c80f636 	bltu	r7,r18,80ad1c <__udivdi3+0x59c>
  80a944:	a185403a 	cmpgeu	r2,r20,r6
  80a948:	0007883a 	mov	r3,zero
  80a94c:	003fe306 	br	80a8dc <__udivdi3+0x15c>
  80a950:	3000041e 	bne	r6,zero,80a964 <__udivdi3+0x1e4>
  80a954:	000b883a 	mov	r5,zero
  80a958:	01000044 	movi	r4,1
  80a95c:	080b4540 	call	80b454 <__udivsi3>
  80a960:	1021883a 	mov	r16,r2
  80a964:	00bfffd4 	movui	r2,65535
  80a968:	14003f2e 	bgeu	r2,r16,80aa68 <__udivdi3+0x2e8>
  80a96c:	00804034 	movhi	r2,256
  80a970:	8080f036 	bltu	r16,r2,80ad34 <__udivdi3+0x5b4>
  80a974:	8006d63a 	srli	r3,r16,24
  80a978:	04400604 	movi	r17,24
  80a97c:	00802074 	movhi	r2,129
  80a980:	1885883a 	add	r2,r3,r2
  80a984:	1081a503 	ldbu	r2,1684(r2)
  80a988:	00c00804 	movi	r3,32
  80a98c:	1463883a 	add	r17,r2,r17
  80a990:	1c45c83a 	sub	r2,r3,r17
  80a994:	1c40431e 	bne	r3,r17,80aaa4 <__udivdi3+0x324>
  80a998:	802cd43a 	srli	r22,r16,16
  80a99c:	9423c83a 	sub	r17,r18,r16
  80a9a0:	853fffcc 	andi	r20,r16,65535
  80a9a4:	00c00044 	movi	r3,1
  80a9a8:	b00b883a 	mov	r5,r22
  80a9ac:	8809883a 	mov	r4,r17
  80a9b0:	d8c00015 	stw	r3,0(sp)
  80a9b4:	080b4b80 	call	80b4b8 <__umodsi3>
  80a9b8:	b00b883a 	mov	r5,r22
  80a9bc:	8809883a 	mov	r4,r17
  80a9c0:	1025883a 	mov	r18,r2
  80a9c4:	080b4540 	call	80b454 <__udivsi3>
  80a9c8:	1009883a 	mov	r4,r2
  80a9cc:	a00b883a 	mov	r5,r20
  80a9d0:	102b883a 	mov	r21,r2
  80a9d4:	0800f8c0 	call	800f8c <__mulsi3>
  80a9d8:	9024943a 	slli	r18,r18,16
  80a9dc:	9808d43a 	srli	r4,r19,16
  80a9e0:	d8c00017 	ldw	r3,0(sp)
  80a9e4:	9108b03a 	or	r4,r18,r4
  80a9e8:	2080052e 	bgeu	r4,r2,80aa00 <__udivdi3+0x280>
  80a9ec:	2409883a 	add	r4,r4,r16
  80a9f0:	a97fffc4 	addi	r5,r21,-1
  80a9f4:	24000136 	bltu	r4,r16,80a9fc <__udivdi3+0x27c>
  80a9f8:	2080e536 	bltu	r4,r2,80ad90 <__udivdi3+0x610>
  80a9fc:	282b883a 	mov	r21,r5
  80aa00:	20a3c83a 	sub	r17,r4,r2
  80aa04:	8809883a 	mov	r4,r17
  80aa08:	b00b883a 	mov	r5,r22
  80aa0c:	d8c00015 	stw	r3,0(sp)
  80aa10:	080b4b80 	call	80b4b8 <__umodsi3>
  80aa14:	8809883a 	mov	r4,r17
  80aa18:	1023883a 	mov	r17,r2
  80aa1c:	b00b883a 	mov	r5,r22
  80aa20:	8822943a 	slli	r17,r17,16
  80aa24:	080b4540 	call	80b454 <__udivsi3>
  80aa28:	a00b883a 	mov	r5,r20
  80aa2c:	1009883a 	mov	r4,r2
  80aa30:	9cffffcc 	andi	r19,r19,65535
  80aa34:	1025883a 	mov	r18,r2
  80aa38:	8ce6b03a 	or	r19,r17,r19
  80aa3c:	0800f8c0 	call	800f8c <__mulsi3>
  80aa40:	d8c00017 	ldw	r3,0(sp)
  80aa44:	9880052e 	bgeu	r19,r2,80aa5c <__udivdi3+0x2dc>
  80aa48:	84e7883a 	add	r19,r16,r19
  80aa4c:	913fffc4 	addi	r4,r18,-1
  80aa50:	9c000136 	bltu	r19,r16,80aa58 <__udivdi3+0x2d8>
  80aa54:	9880c736 	bltu	r19,r2,80ad74 <__udivdi3+0x5f4>
  80aa58:	2025883a 	mov	r18,r4
  80aa5c:	a80c943a 	slli	r6,r21,16
  80aa60:	3484b03a 	or	r2,r6,r18
  80aa64:	003f9d06 	br	80a8dc <__udivdi3+0x15c>
  80aa68:	80804030 	cmpltui	r2,r16,256
  80aa6c:	1000b71e 	bne	r2,zero,80ad4c <__udivdi3+0x5cc>
  80aa70:	8006d23a 	srli	r3,r16,8
  80aa74:	04400204 	movi	r17,8
  80aa78:	003fc006 	br	80a97c <__udivdi3+0x1fc>
  80aa7c:	30804030 	cmpltui	r2,r6,256
  80aa80:	1000a41e 	bne	r2,zero,80ad14 <__udivdi3+0x594>
  80aa84:	3006d23a 	srli	r3,r6,8
  80aa88:	04400204 	movi	r17,8
  80aa8c:	003f5506 	br	80a7e4 <__udivdi3+0x64>
  80aa90:	38804030 	cmpltui	r2,r7,256
  80aa94:	1000a41e 	bne	r2,zero,80ad28 <__udivdi3+0x5a8>
  80aa98:	3806d23a 	srli	r3,r7,8
  80aa9c:	01000204 	movi	r4,8
  80aaa0:	003fa006 	br	80a924 <__udivdi3+0x1a4>
  80aaa4:	80a0983a 	sll	r16,r16,r2
  80aaa8:	946ed83a 	srl	r23,r18,r17
  80aaac:	9086983a 	sll	r3,r18,r2
  80aab0:	802cd43a 	srli	r22,r16,16
  80aab4:	a462d83a 	srl	r17,r20,r17
  80aab8:	b809883a 	mov	r4,r23
  80aabc:	b00b883a 	mov	r5,r22
  80aac0:	88eab03a 	or	r21,r17,r3
  80aac4:	a0a6983a 	sll	r19,r20,r2
  80aac8:	080b4b80 	call	80b4b8 <__umodsi3>
  80aacc:	b809883a 	mov	r4,r23
  80aad0:	b00b883a 	mov	r5,r22
  80aad4:	1025883a 	mov	r18,r2
  80aad8:	853fffcc 	andi	r20,r16,65535
  80aadc:	080b4540 	call	80b454 <__udivsi3>
  80aae0:	a009883a 	mov	r4,r20
  80aae4:	100b883a 	mov	r5,r2
  80aae8:	102f883a 	mov	r23,r2
  80aaec:	0800f8c0 	call	800f8c <__mulsi3>
  80aaf0:	9024943a 	slli	r18,r18,16
  80aaf4:	a808d43a 	srli	r4,r21,16
  80aaf8:	9108b03a 	or	r4,r18,r4
  80aafc:	2080062e 	bgeu	r4,r2,80ab18 <__udivdi3+0x398>
  80ab00:	2409883a 	add	r4,r4,r16
  80ab04:	b8ffffc4 	addi	r3,r23,-1
  80ab08:	24009836 	bltu	r4,r16,80ad6c <__udivdi3+0x5ec>
  80ab0c:	2080972e 	bgeu	r4,r2,80ad6c <__udivdi3+0x5ec>
  80ab10:	bdffff84 	addi	r23,r23,-2
  80ab14:	2409883a 	add	r4,r4,r16
  80ab18:	20a3c83a 	sub	r17,r4,r2
  80ab1c:	8809883a 	mov	r4,r17
  80ab20:	b00b883a 	mov	r5,r22
  80ab24:	080b4b80 	call	80b4b8 <__umodsi3>
  80ab28:	1025883a 	mov	r18,r2
  80ab2c:	8809883a 	mov	r4,r17
  80ab30:	b00b883a 	mov	r5,r22
  80ab34:	9024943a 	slli	r18,r18,16
  80ab38:	080b4540 	call	80b454 <__udivsi3>
  80ab3c:	100b883a 	mov	r5,r2
  80ab40:	a009883a 	mov	r4,r20
  80ab44:	ac7fffcc 	andi	r17,r21,65535
  80ab48:	1039883a 	mov	fp,r2
  80ab4c:	9462b03a 	or	r17,r18,r17
  80ab50:	0800f8c0 	call	800f8c <__mulsi3>
  80ab54:	8880062e 	bgeu	r17,r2,80ab70 <__udivdi3+0x3f0>
  80ab58:	8c23883a 	add	r17,r17,r16
  80ab5c:	e0ffffc4 	addi	r3,fp,-1
  80ab60:	8c007e36 	bltu	r17,r16,80ad5c <__udivdi3+0x5dc>
  80ab64:	88807d2e 	bgeu	r17,r2,80ad5c <__udivdi3+0x5dc>
  80ab68:	e73fff84 	addi	fp,fp,-2
  80ab6c:	8c23883a 	add	r17,r17,r16
  80ab70:	b806943a 	slli	r3,r23,16
  80ab74:	88a3c83a 	sub	r17,r17,r2
  80ab78:	1f06b03a 	or	r3,r3,fp
  80ab7c:	003f8a06 	br	80a9a8 <__udivdi3+0x228>
  80ab80:	30e6d83a 	srl	r19,r6,r3
  80ab84:	3c4e983a 	sll	r7,r7,r17
  80ab88:	90e0d83a 	srl	r16,r18,r3
  80ab8c:	a0c4d83a 	srl	r2,r20,r3
  80ab90:	99e6b03a 	or	r19,r19,r7
  80ab94:	9446983a 	sll	r3,r18,r17
  80ab98:	9838d43a 	srli	fp,r19,16
  80ab9c:	8009883a 	mov	r4,r16
  80aba0:	10eab03a 	or	r21,r2,r3
  80aba4:	e00b883a 	mov	r5,fp
  80aba8:	346c983a 	sll	r22,r6,r17
  80abac:	dd400015 	stw	r21,0(sp)
  80abb0:	080b4b80 	call	80b4b8 <__umodsi3>
  80abb4:	8009883a 	mov	r4,r16
  80abb8:	e00b883a 	mov	r5,fp
  80abbc:	102f883a 	mov	r23,r2
  80abc0:	9cbfffcc 	andi	r18,r19,65535
  80abc4:	080b4540 	call	80b454 <__udivsi3>
  80abc8:	9009883a 	mov	r4,r18
  80abcc:	100b883a 	mov	r5,r2
  80abd0:	1021883a 	mov	r16,r2
  80abd4:	0800f8c0 	call	800f8c <__mulsi3>
  80abd8:	b82e943a 	slli	r23,r23,16
  80abdc:	a808d43a 	srli	r4,r21,16
  80abe0:	b908b03a 	or	r4,r23,r4
  80abe4:	2080062e 	bgeu	r4,r2,80ac00 <__udivdi3+0x480>
  80abe8:	24c9883a 	add	r4,r4,r19
  80abec:	817fffc4 	addi	r5,r16,-1
  80abf0:	24c05c36 	bltu	r4,r19,80ad64 <__udivdi3+0x5e4>
  80abf4:	20805b2e 	bgeu	r4,r2,80ad64 <__udivdi3+0x5e4>
  80abf8:	843fff84 	addi	r16,r16,-2
  80abfc:	24c9883a 	add	r4,r4,r19
  80ac00:	20abc83a 	sub	r21,r4,r2
  80ac04:	a809883a 	mov	r4,r21
  80ac08:	e00b883a 	mov	r5,fp
  80ac0c:	080b4b80 	call	80b4b8 <__umodsi3>
  80ac10:	a809883a 	mov	r4,r21
  80ac14:	e00b883a 	mov	r5,fp
  80ac18:	102b883a 	mov	r21,r2
  80ac1c:	080b4540 	call	80b454 <__udivsi3>
  80ac20:	9009883a 	mov	r4,r18
  80ac24:	100b883a 	mov	r5,r2
  80ac28:	102f883a 	mov	r23,r2
  80ac2c:	0800f8c0 	call	800f8c <__mulsi3>
  80ac30:	d8c00017 	ldw	r3,0(sp)
  80ac34:	a82a943a 	slli	r21,r21,16
  80ac38:	1cbfffcc 	andi	r18,r3,65535
  80ac3c:	aca4b03a 	or	r18,r21,r18
  80ac40:	9080062e 	bgeu	r18,r2,80ac5c <__udivdi3+0x4dc>
  80ac44:	94e5883a 	add	r18,r18,r19
  80ac48:	b8ffffc4 	addi	r3,r23,-1
  80ac4c:	94c04136 	bltu	r18,r19,80ad54 <__udivdi3+0x5d4>
  80ac50:	9080402e 	bgeu	r18,r2,80ad54 <__udivdi3+0x5d4>
  80ac54:	bdffff84 	addi	r23,r23,-2
  80ac58:	94e5883a 	add	r18,r18,r19
  80ac5c:	8020943a 	slli	r16,r16,16
  80ac60:	bd7fffcc 	andi	r21,r23,65535
  80ac64:	b73fffcc 	andi	fp,r22,65535
  80ac68:	85e0b03a 	or	r16,r16,r23
  80ac6c:	8026d43a 	srli	r19,r16,16
  80ac70:	a809883a 	mov	r4,r21
  80ac74:	e00b883a 	mov	r5,fp
  80ac78:	b02cd43a 	srli	r22,r22,16
  80ac7c:	90a5c83a 	sub	r18,r18,r2
  80ac80:	0800f8c0 	call	800f8c <__mulsi3>
  80ac84:	9809883a 	mov	r4,r19
  80ac88:	e00b883a 	mov	r5,fp
  80ac8c:	102f883a 	mov	r23,r2
  80ac90:	0800f8c0 	call	800f8c <__mulsi3>
  80ac94:	9809883a 	mov	r4,r19
  80ac98:	b00b883a 	mov	r5,r22
  80ac9c:	1027883a 	mov	r19,r2
  80aca0:	0800f8c0 	call	800f8c <__mulsi3>
  80aca4:	a809883a 	mov	r4,r21
  80aca8:	b00b883a 	mov	r5,r22
  80acac:	102b883a 	mov	r21,r2
  80acb0:	0800f8c0 	call	800f8c <__mulsi3>
  80acb4:	b806d43a 	srli	r3,r23,16
  80acb8:	14c5883a 	add	r2,r2,r19
  80acbc:	1887883a 	add	r3,r3,r2
  80acc0:	1cc0022e 	bgeu	r3,r19,80accc <__udivdi3+0x54c>
  80acc4:	00800074 	movhi	r2,1
  80acc8:	a8ab883a 	add	r21,r21,r2
  80accc:	1804d43a 	srli	r2,r3,16
  80acd0:	156b883a 	add	r21,r2,r21
  80acd4:	95400936 	bltu	r18,r21,80acfc <__udivdi3+0x57c>
  80acd8:	95400326 	beq	r18,r21,80ace8 <__udivdi3+0x568>
  80acdc:	8005883a 	mov	r2,r16
  80ace0:	0007883a 	mov	r3,zero
  80ace4:	003efd06 	br	80a8dc <__udivdi3+0x15c>
  80ace8:	1806943a 	slli	r3,r3,16
  80acec:	a44c983a 	sll	r6,r20,r17
  80acf0:	bdffffcc 	andi	r23,r23,65535
  80acf4:	1dc7883a 	add	r3,r3,r23
  80acf8:	30fff82e 	bgeu	r6,r3,80acdc <__udivdi3+0x55c>
  80acfc:	80bfffc4 	addi	r2,r16,-1
  80ad00:	0007883a 	mov	r3,zero
  80ad04:	003ef506 	br	80a8dc <__udivdi3+0x15c>
  80ad08:	3806d43a 	srli	r3,r7,16
  80ad0c:	01000404 	movi	r4,16
  80ad10:	003f0406 	br	80a924 <__udivdi3+0x1a4>
  80ad14:	3007883a 	mov	r3,r6
  80ad18:	003eb206 	br	80a7e4 <__udivdi3+0x64>
  80ad1c:	0007883a 	mov	r3,zero
  80ad20:	00800044 	movi	r2,1
  80ad24:	003eed06 	br	80a8dc <__udivdi3+0x15c>
  80ad28:	3807883a 	mov	r3,r7
  80ad2c:	0009883a 	mov	r4,zero
  80ad30:	003efc06 	br	80a924 <__udivdi3+0x1a4>
  80ad34:	8006d43a 	srli	r3,r16,16
  80ad38:	04400404 	movi	r17,16
  80ad3c:	003f0f06 	br	80a97c <__udivdi3+0x1fc>
  80ad40:	3006d43a 	srli	r3,r6,16
  80ad44:	04400404 	movi	r17,16
  80ad48:	003ea606 	br	80a7e4 <__udivdi3+0x64>
  80ad4c:	8007883a 	mov	r3,r16
  80ad50:	003f0a06 	br	80a97c <__udivdi3+0x1fc>
  80ad54:	182f883a 	mov	r23,r3
  80ad58:	003fc006 	br	80ac5c <__udivdi3+0x4dc>
  80ad5c:	1839883a 	mov	fp,r3
  80ad60:	003f8306 	br	80ab70 <__udivdi3+0x3f0>
  80ad64:	2821883a 	mov	r16,r5
  80ad68:	003fa506 	br	80ac00 <__udivdi3+0x480>
  80ad6c:	182f883a 	mov	r23,r3
  80ad70:	003f6906 	br	80ab18 <__udivdi3+0x398>
  80ad74:	94bfff84 	addi	r18,r18,-2
  80ad78:	003f3806 	br	80aa5c <__udivdi3+0x2dc>
  80ad7c:	94bfff84 	addi	r18,r18,-2
  80ad80:	003ecf06 	br	80a8c0 <__udivdi3+0x140>
  80ad84:	ad7fff84 	addi	r21,r21,-2
  80ad88:	2409883a 	add	r4,r4,r16
  80ad8c:	003eb706 	br	80a86c <__udivdi3+0xec>
  80ad90:	ad7fff84 	addi	r21,r21,-2
  80ad94:	2409883a 	add	r4,r4,r16
  80ad98:	003f1906 	br	80aa00 <__udivdi3+0x280>

0080ad9c <__umoddi3>:
  80ad9c:	defff304 	addi	sp,sp,-52
  80ada0:	dc400415 	stw	r17,16(sp)
  80ada4:	dc000315 	stw	r16,12(sp)
  80ada8:	dfc00c15 	stw	ra,48(sp)
  80adac:	df000b15 	stw	fp,44(sp)
  80adb0:	ddc00a15 	stw	r23,40(sp)
  80adb4:	dd800915 	stw	r22,36(sp)
  80adb8:	dd400815 	stw	r21,32(sp)
  80adbc:	dd000715 	stw	r20,28(sp)
  80adc0:	dcc00615 	stw	r19,24(sp)
  80adc4:	dc800515 	stw	r18,20(sp)
  80adc8:	2823883a 	mov	r17,r5
  80adcc:	2021883a 	mov	r16,r4
  80add0:	38003b1e 	bne	r7,zero,80aec0 <__umoddi3+0x124>
  80add4:	3825883a 	mov	r18,r7
  80add8:	3029883a 	mov	r20,r6
  80addc:	2027883a 	mov	r19,r4
  80ade0:	29805b2e 	bgeu	r5,r6,80af50 <__umoddi3+0x1b4>
  80ade4:	00bfffd4 	movui	r2,65535
  80ade8:	282d883a 	mov	r22,r5
  80adec:	11809a2e 	bgeu	r2,r6,80b058 <__umoddi3+0x2bc>
  80adf0:	00804034 	movhi	r2,256
  80adf4:	30814436 	bltu	r6,r2,80b308 <__umoddi3+0x56c>
  80adf8:	3006d63a 	srli	r3,r6,24
  80adfc:	04800604 	movi	r18,24
  80ae00:	00802074 	movhi	r2,129
  80ae04:	1885883a 	add	r2,r3,r2
  80ae08:	1101a503 	ldbu	r4,1684(r2)
  80ae0c:	00800804 	movi	r2,32
  80ae10:	2489883a 	add	r4,r4,r18
  80ae14:	1125c83a 	sub	r18,r2,r4
  80ae18:	11000526 	beq	r2,r4,80ae30 <__umoddi3+0x94>
  80ae1c:	8ca2983a 	sll	r17,r17,r18
  80ae20:	8108d83a 	srl	r4,r16,r4
  80ae24:	34a8983a 	sll	r20,r6,r18
  80ae28:	84a6983a 	sll	r19,r16,r18
  80ae2c:	246cb03a 	or	r22,r4,r17
  80ae30:	a02ed43a 	srli	r23,r20,16
  80ae34:	b009883a 	mov	r4,r22
  80ae38:	a57fffcc 	andi	r21,r20,65535
  80ae3c:	b80b883a 	mov	r5,r23
  80ae40:	080b4b80 	call	80b4b8 <__umodsi3>
  80ae44:	b80b883a 	mov	r5,r23
  80ae48:	b009883a 	mov	r4,r22
  80ae4c:	1023883a 	mov	r17,r2
  80ae50:	080b4540 	call	80b454 <__udivsi3>
  80ae54:	a809883a 	mov	r4,r21
  80ae58:	100b883a 	mov	r5,r2
  80ae5c:	0800f8c0 	call	800f8c <__mulsi3>
  80ae60:	8822943a 	slli	r17,r17,16
  80ae64:	9808d43a 	srli	r4,r19,16
  80ae68:	8908b03a 	or	r4,r17,r4
  80ae6c:	2080042e 	bgeu	r4,r2,80ae80 <__umoddi3+0xe4>
  80ae70:	2509883a 	add	r4,r4,r20
  80ae74:	25000236 	bltu	r4,r20,80ae80 <__umoddi3+0xe4>
  80ae78:	2080012e 	bgeu	r4,r2,80ae80 <__umoddi3+0xe4>
  80ae7c:	2509883a 	add	r4,r4,r20
  80ae80:	20a1c83a 	sub	r16,r4,r2
  80ae84:	b80b883a 	mov	r5,r23
  80ae88:	8009883a 	mov	r4,r16
  80ae8c:	080b4b80 	call	80b4b8 <__umodsi3>
  80ae90:	b80b883a 	mov	r5,r23
  80ae94:	8009883a 	mov	r4,r16
  80ae98:	1023883a 	mov	r17,r2
  80ae9c:	080b4540 	call	80b454 <__udivsi3>
  80aea0:	8822943a 	slli	r17,r17,16
  80aea4:	100b883a 	mov	r5,r2
  80aea8:	a809883a 	mov	r4,r21
  80aeac:	0800f8c0 	call	800f8c <__mulsi3>
  80aeb0:	98ffffcc 	andi	r3,r19,65535
  80aeb4:	88c6b03a 	or	r3,r17,r3
  80aeb8:	18805e2e 	bgeu	r3,r2,80b034 <__umoddi3+0x298>
  80aebc:	00005906 	br	80b024 <__umoddi3+0x288>
  80aec0:	2005883a 	mov	r2,r4
  80aec4:	29c00d2e 	bgeu	r5,r7,80aefc <__umoddi3+0x160>
  80aec8:	2807883a 	mov	r3,r5
  80aecc:	dfc00c17 	ldw	ra,48(sp)
  80aed0:	df000b17 	ldw	fp,44(sp)
  80aed4:	ddc00a17 	ldw	r23,40(sp)
  80aed8:	dd800917 	ldw	r22,36(sp)
  80aedc:	dd400817 	ldw	r21,32(sp)
  80aee0:	dd000717 	ldw	r20,28(sp)
  80aee4:	dcc00617 	ldw	r19,24(sp)
  80aee8:	dc800517 	ldw	r18,20(sp)
  80aeec:	dc400417 	ldw	r17,16(sp)
  80aef0:	dc000317 	ldw	r16,12(sp)
  80aef4:	dec00d04 	addi	sp,sp,52
  80aef8:	f800283a 	ret
  80aefc:	013fffd4 	movui	r4,65535
  80af00:	2807883a 	mov	r3,r5
  80af04:	21c0592e 	bgeu	r4,r7,80b06c <__umoddi3+0x2d0>
  80af08:	01004034 	movhi	r4,256
  80af0c:	39010336 	bltu	r7,r4,80b31c <__umoddi3+0x580>
  80af10:	3808d63a 	srli	r4,r7,24
  80af14:	02000604 	movi	r8,24
  80af18:	01402074 	movhi	r5,129
  80af1c:	214b883a 	add	r5,r4,r5
  80af20:	2d01a503 	ldbu	r20,1684(r5)
  80af24:	01000804 	movi	r4,32
  80af28:	a229883a 	add	r20,r20,r8
  80af2c:	252bc83a 	sub	r21,r4,r20
  80af30:	2500531e 	bne	r4,r20,80b080 <__umoddi3+0x2e4>
  80af34:	3c400136 	bltu	r7,r17,80af3c <__umoddi3+0x1a0>
  80af38:	81bfe436 	bltu	r16,r6,80aecc <__umoddi3+0x130>
  80af3c:	8185c83a 	sub	r2,r16,r6
  80af40:	89cfc83a 	sub	r7,r17,r7
  80af44:	8087803a 	cmpltu	r3,r16,r2
  80af48:	38c7c83a 	sub	r3,r7,r3
  80af4c:	003fdf06 	br	80aecc <__umoddi3+0x130>
  80af50:	3000041e 	bne	r6,zero,80af64 <__umoddi3+0x1c8>
  80af54:	000b883a 	mov	r5,zero
  80af58:	01000044 	movi	r4,1
  80af5c:	080b4540 	call	80b454 <__udivsi3>
  80af60:	1029883a 	mov	r20,r2
  80af64:	00bfffd4 	movui	r2,65535
  80af68:	1500362e 	bgeu	r2,r20,80b044 <__umoddi3+0x2a8>
  80af6c:	00804034 	movhi	r2,256
  80af70:	a080ed36 	bltu	r20,r2,80b328 <__umoddi3+0x58c>
  80af74:	a006d63a 	srli	r3,r20,24
  80af78:	04800604 	movi	r18,24
  80af7c:	00802074 	movhi	r2,129
  80af80:	1885883a 	add	r2,r3,r2
  80af84:	1581a503 	ldbu	r22,1684(r2)
  80af88:	00800804 	movi	r2,32
  80af8c:	b4ad883a 	add	r22,r22,r18
  80af90:	15a5c83a 	sub	r18,r2,r22
  80af94:	1580a51e 	bne	r2,r22,80b22c <__umoddi3+0x490>
  80af98:	a02ed43a 	srli	r23,r20,16
  80af9c:	8d23c83a 	sub	r17,r17,r20
  80afa0:	a57fffcc 	andi	r21,r20,65535
  80afa4:	8809883a 	mov	r4,r17
  80afa8:	b80b883a 	mov	r5,r23
  80afac:	080b4b80 	call	80b4b8 <__umodsi3>
  80afb0:	8809883a 	mov	r4,r17
  80afb4:	b80b883a 	mov	r5,r23
  80afb8:	1023883a 	mov	r17,r2
  80afbc:	080b4540 	call	80b454 <__udivsi3>
  80afc0:	1009883a 	mov	r4,r2
  80afc4:	a80b883a 	mov	r5,r21
  80afc8:	0800f8c0 	call	800f8c <__mulsi3>
  80afcc:	8822943a 	slli	r17,r17,16
  80afd0:	9808d43a 	srli	r4,r19,16
  80afd4:	8908b03a 	or	r4,r17,r4
  80afd8:	2080032e 	bgeu	r4,r2,80afe8 <__umoddi3+0x24c>
  80afdc:	2509883a 	add	r4,r4,r20
  80afe0:	25000136 	bltu	r4,r20,80afe8 <__umoddi3+0x24c>
  80afe4:	2080dc36 	bltu	r4,r2,80b358 <__umoddi3+0x5bc>
  80afe8:	20a1c83a 	sub	r16,r4,r2
  80afec:	b80b883a 	mov	r5,r23
  80aff0:	8009883a 	mov	r4,r16
  80aff4:	080b4b80 	call	80b4b8 <__umodsi3>
  80aff8:	b80b883a 	mov	r5,r23
  80affc:	8009883a 	mov	r4,r16
  80b000:	1023883a 	mov	r17,r2
  80b004:	8822943a 	slli	r17,r17,16
  80b008:	080b4540 	call	80b454 <__udivsi3>
  80b00c:	a80b883a 	mov	r5,r21
  80b010:	1009883a 	mov	r4,r2
  80b014:	0800f8c0 	call	800f8c <__mulsi3>
  80b018:	9cffffcc 	andi	r19,r19,65535
  80b01c:	8cc6b03a 	or	r3,r17,r19
  80b020:	1880042e 	bgeu	r3,r2,80b034 <__umoddi3+0x298>
  80b024:	1d07883a 	add	r3,r3,r20
  80b028:	1d000236 	bltu	r3,r20,80b034 <__umoddi3+0x298>
  80b02c:	1880012e 	bgeu	r3,r2,80b034 <__umoddi3+0x298>
  80b030:	1d07883a 	add	r3,r3,r20
  80b034:	1885c83a 	sub	r2,r3,r2
  80b038:	1484d83a 	srl	r2,r2,r18
  80b03c:	0007883a 	mov	r3,zero
  80b040:	003fa206 	br	80aecc <__umoddi3+0x130>
  80b044:	a0804030 	cmpltui	r2,r20,256
  80b048:	1000ba1e 	bne	r2,zero,80b334 <__umoddi3+0x598>
  80b04c:	a006d23a 	srli	r3,r20,8
  80b050:	04800204 	movi	r18,8
  80b054:	003fc906 	br	80af7c <__umoddi3+0x1e0>
  80b058:	30804030 	cmpltui	r2,r6,256
  80b05c:	1000ad1e 	bne	r2,zero,80b314 <__umoddi3+0x578>
  80b060:	3006d23a 	srli	r3,r6,8
  80b064:	04800204 	movi	r18,8
  80b068:	003f6506 	br	80ae00 <__umoddi3+0x64>
  80b06c:	39004030 	cmpltui	r4,r7,256
  80b070:	2000b21e 	bne	r4,zero,80b33c <__umoddi3+0x5a0>
  80b074:	3808d23a 	srli	r4,r7,8
  80b078:	02000204 	movi	r8,8
  80b07c:	003fa606 	br	80af18 <__umoddi3+0x17c>
  80b080:	3d4e983a 	sll	r7,r7,r21
  80b084:	3508d83a 	srl	r4,r6,r20
  80b088:	8d2cd83a 	srl	r22,r17,r20
  80b08c:	8504d83a 	srl	r2,r16,r20
  80b090:	21e4b03a 	or	r18,r4,r7
  80b094:	8d62983a 	sll	r17,r17,r21
  80b098:	9026d43a 	srli	r19,r18,16
  80b09c:	354c983a 	sll	r6,r6,r21
  80b0a0:	1444b03a 	or	r2,r2,r17
  80b0a4:	b009883a 	mov	r4,r22
  80b0a8:	980b883a 	mov	r5,r19
  80b0ac:	d9800115 	stw	r6,4(sp)
  80b0b0:	d8800015 	stw	r2,0(sp)
  80b0b4:	080b4b80 	call	80b4b8 <__umodsi3>
  80b0b8:	980b883a 	mov	r5,r19
  80b0bc:	b009883a 	mov	r4,r22
  80b0c0:	102f883a 	mov	r23,r2
  80b0c4:	947fffcc 	andi	r17,r18,65535
  80b0c8:	080b4540 	call	80b454 <__udivsi3>
  80b0cc:	8809883a 	mov	r4,r17
  80b0d0:	100b883a 	mov	r5,r2
  80b0d4:	1039883a 	mov	fp,r2
  80b0d8:	0800f8c0 	call	800f8c <__mulsi3>
  80b0dc:	d8c00017 	ldw	r3,0(sp)
  80b0e0:	b82e943a 	slli	r23,r23,16
  80b0e4:	8560983a 	sll	r16,r16,r21
  80b0e8:	1808d43a 	srli	r4,r3,16
  80b0ec:	b908b03a 	or	r4,r23,r4
  80b0f0:	2080062e 	bgeu	r4,r2,80b10c <__umoddi3+0x370>
  80b0f4:	2489883a 	add	r4,r4,r18
  80b0f8:	e17fffc4 	addi	r5,fp,-1
  80b0fc:	24809436 	bltu	r4,r18,80b350 <__umoddi3+0x5b4>
  80b100:	2080932e 	bgeu	r4,r2,80b350 <__umoddi3+0x5b4>
  80b104:	e73fff84 	addi	fp,fp,-2
  80b108:	2489883a 	add	r4,r4,r18
  80b10c:	20adc83a 	sub	r22,r4,r2
  80b110:	980b883a 	mov	r5,r19
  80b114:	b009883a 	mov	r4,r22
  80b118:	080b4b80 	call	80b4b8 <__umodsi3>
  80b11c:	980b883a 	mov	r5,r19
  80b120:	b009883a 	mov	r4,r22
  80b124:	102f883a 	mov	r23,r2
  80b128:	080b4540 	call	80b454 <__udivsi3>
  80b12c:	100b883a 	mov	r5,r2
  80b130:	8809883a 	mov	r4,r17
  80b134:	d8800215 	stw	r2,8(sp)
  80b138:	0800f8c0 	call	800f8c <__mulsi3>
  80b13c:	d8c00017 	ldw	r3,0(sp)
  80b140:	b82e943a 	slli	r23,r23,16
  80b144:	d9400217 	ldw	r5,8(sp)
  80b148:	1c7fffcc 	andi	r17,r3,65535
  80b14c:	bc62b03a 	or	r17,r23,r17
  80b150:	8880062e 	bgeu	r17,r2,80b16c <__umoddi3+0x3d0>
  80b154:	8ca3883a 	add	r17,r17,r18
  80b158:	28ffffc4 	addi	r3,r5,-1
  80b15c:	8c807a36 	bltu	r17,r18,80b348 <__umoddi3+0x5ac>
  80b160:	8880792e 	bgeu	r17,r2,80b348 <__umoddi3+0x5ac>
  80b164:	297fff84 	addi	r5,r5,-2
  80b168:	8ca3883a 	add	r17,r17,r18
  80b16c:	e02c943a 	slli	r22,fp,16
  80b170:	d9c00117 	ldw	r7,4(sp)
  80b174:	29bfffcc 	andi	r6,r5,65535
  80b178:	b16cb03a 	or	r22,r22,r5
  80b17c:	38ffffcc 	andi	r3,r7,65535
  80b180:	b02cd43a 	srli	r22,r22,16
  80b184:	180b883a 	mov	r5,r3
  80b188:	3009883a 	mov	r4,r6
  80b18c:	3838d43a 	srli	fp,r7,16
  80b190:	182f883a 	mov	r23,r3
  80b194:	d9800015 	stw	r6,0(sp)
  80b198:	88a3c83a 	sub	r17,r17,r2
  80b19c:	0800f8c0 	call	800f8c <__mulsi3>
  80b1a0:	b80b883a 	mov	r5,r23
  80b1a4:	b009883a 	mov	r4,r22
  80b1a8:	102f883a 	mov	r23,r2
  80b1ac:	0800f8c0 	call	800f8c <__mulsi3>
  80b1b0:	e00b883a 	mov	r5,fp
  80b1b4:	b009883a 	mov	r4,r22
  80b1b8:	102d883a 	mov	r22,r2
  80b1bc:	0800f8c0 	call	800f8c <__mulsi3>
  80b1c0:	d9800017 	ldw	r6,0(sp)
  80b1c4:	e00b883a 	mov	r5,fp
  80b1c8:	1039883a 	mov	fp,r2
  80b1cc:	3009883a 	mov	r4,r6
  80b1d0:	0800f8c0 	call	800f8c <__mulsi3>
  80b1d4:	b808d43a 	srli	r4,r23,16
  80b1d8:	1585883a 	add	r2,r2,r22
  80b1dc:	2089883a 	add	r4,r4,r2
  80b1e0:	2580022e 	bgeu	r4,r22,80b1ec <__umoddi3+0x450>
  80b1e4:	00800074 	movhi	r2,1
  80b1e8:	e0b9883a 	add	fp,fp,r2
  80b1ec:	2006d43a 	srli	r3,r4,16
  80b1f0:	2008943a 	slli	r4,r4,16
  80b1f4:	bdffffcc 	andi	r23,r23,65535
  80b1f8:	1f07883a 	add	r3,r3,fp
  80b1fc:	25c9883a 	add	r4,r4,r23
  80b200:	88c03a36 	bltu	r17,r3,80b2ec <__umoddi3+0x550>
  80b204:	88c03826 	beq	r17,r3,80b2e8 <__umoddi3+0x54c>
  80b208:	8109c83a 	sub	r4,r16,r4
  80b20c:	8121803a 	cmpltu	r16,r16,r4
  80b210:	88c7c83a 	sub	r3,r17,r3
  80b214:	1c07c83a 	sub	r3,r3,r16
  80b218:	1d04983a 	sll	r2,r3,r20
  80b21c:	2548d83a 	srl	r4,r4,r21
  80b220:	1d46d83a 	srl	r3,r3,r21
  80b224:	1104b03a 	or	r2,r2,r4
  80b228:	003f2806 	br	80aecc <__umoddi3+0x130>
  80b22c:	a4a8983a 	sll	r20,r20,r18
  80b230:	8da6d83a 	srl	r19,r17,r22
  80b234:	8ca2983a 	sll	r17,r17,r18
  80b238:	a02ed43a 	srli	r23,r20,16
  80b23c:	9809883a 	mov	r4,r19
  80b240:	85acd83a 	srl	r22,r16,r22
  80b244:	b80b883a 	mov	r5,r23
  80b248:	080b4b80 	call	80b4b8 <__umodsi3>
  80b24c:	9809883a 	mov	r4,r19
  80b250:	b80b883a 	mov	r5,r23
  80b254:	b46cb03a 	or	r22,r22,r17
  80b258:	a57fffcc 	andi	r21,r20,65535
  80b25c:	1023883a 	mov	r17,r2
  80b260:	080b4540 	call	80b454 <__udivsi3>
  80b264:	a809883a 	mov	r4,r21
  80b268:	100b883a 	mov	r5,r2
  80b26c:	0800f8c0 	call	800f8c <__mulsi3>
  80b270:	8822943a 	slli	r17,r17,16
  80b274:	b008d43a 	srli	r4,r22,16
  80b278:	84a6983a 	sll	r19,r16,r18
  80b27c:	8908b03a 	or	r4,r17,r4
  80b280:	2080042e 	bgeu	r4,r2,80b294 <__umoddi3+0x4f8>
  80b284:	2509883a 	add	r4,r4,r20
  80b288:	25000236 	bltu	r4,r20,80b294 <__umoddi3+0x4f8>
  80b28c:	2080012e 	bgeu	r4,r2,80b294 <__umoddi3+0x4f8>
  80b290:	2509883a 	add	r4,r4,r20
  80b294:	20a1c83a 	sub	r16,r4,r2
  80b298:	8009883a 	mov	r4,r16
  80b29c:	b80b883a 	mov	r5,r23
  80b2a0:	080b4b80 	call	80b4b8 <__umodsi3>
  80b2a4:	8009883a 	mov	r4,r16
  80b2a8:	1021883a 	mov	r16,r2
  80b2ac:	b80b883a 	mov	r5,r23
  80b2b0:	8020943a 	slli	r16,r16,16
  80b2b4:	080b4540 	call	80b454 <__udivsi3>
  80b2b8:	100b883a 	mov	r5,r2
  80b2bc:	a809883a 	mov	r4,r21
  80b2c0:	b47fffcc 	andi	r17,r22,65535
  80b2c4:	0800f8c0 	call	800f8c <__mulsi3>
  80b2c8:	8462b03a 	or	r17,r16,r17
  80b2cc:	8880042e 	bgeu	r17,r2,80b2e0 <__umoddi3+0x544>
  80b2d0:	8d23883a 	add	r17,r17,r20
  80b2d4:	8d000236 	bltu	r17,r20,80b2e0 <__umoddi3+0x544>
  80b2d8:	8880012e 	bgeu	r17,r2,80b2e0 <__umoddi3+0x544>
  80b2dc:	8d23883a 	add	r17,r17,r20
  80b2e0:	88a3c83a 	sub	r17,r17,r2
  80b2e4:	003f2f06 	br	80afa4 <__umoddi3+0x208>
  80b2e8:	813fc72e 	bgeu	r16,r4,80b208 <__umoddi3+0x46c>
  80b2ec:	d8800117 	ldw	r2,4(sp)
  80b2f0:	20a7c83a 	sub	r19,r4,r2
  80b2f4:	24c9803a 	cmpltu	r4,r4,r19
  80b2f8:	2489883a 	add	r4,r4,r18
  80b2fc:	1907c83a 	sub	r3,r3,r4
  80b300:	9809883a 	mov	r4,r19
  80b304:	003fc006 	br	80b208 <__umoddi3+0x46c>
  80b308:	3006d43a 	srli	r3,r6,16
  80b30c:	04800404 	movi	r18,16
  80b310:	003ebb06 	br	80ae00 <__umoddi3+0x64>
  80b314:	3007883a 	mov	r3,r6
  80b318:	003eb906 	br	80ae00 <__umoddi3+0x64>
  80b31c:	3808d43a 	srli	r4,r7,16
  80b320:	02000404 	movi	r8,16
  80b324:	003efc06 	br	80af18 <__umoddi3+0x17c>
  80b328:	a006d43a 	srli	r3,r20,16
  80b32c:	04800404 	movi	r18,16
  80b330:	003f1206 	br	80af7c <__umoddi3+0x1e0>
  80b334:	a007883a 	mov	r3,r20
  80b338:	003f1006 	br	80af7c <__umoddi3+0x1e0>
  80b33c:	3809883a 	mov	r4,r7
  80b340:	0011883a 	mov	r8,zero
  80b344:	003ef406 	br	80af18 <__umoddi3+0x17c>
  80b348:	180b883a 	mov	r5,r3
  80b34c:	003f8706 	br	80b16c <__umoddi3+0x3d0>
  80b350:	2839883a 	mov	fp,r5
  80b354:	003f6d06 	br	80b10c <__umoddi3+0x370>
  80b358:	2509883a 	add	r4,r4,r20
  80b35c:	003f2206 	br	80afe8 <__umoddi3+0x24c>

0080b360 <__divsi3>:
  80b360:	20001a16 	blt	r4,zero,80b3cc <__divsi3+0x6c>
  80b364:	000f883a 	mov	r7,zero
  80b368:	2800020e 	bge	r5,zero,80b374 <__divsi3+0x14>
  80b36c:	014bc83a 	sub	r5,zero,r5
  80b370:	39c0005c 	xori	r7,r7,1
  80b374:	200d883a 	mov	r6,r4
  80b378:	00c00044 	movi	r3,1
  80b37c:	2900092e 	bgeu	r5,r4,80b3a4 <__divsi3+0x44>
  80b380:	00800804 	movi	r2,32
  80b384:	00c00044 	movi	r3,1
  80b388:	00000106 	br	80b390 <__divsi3+0x30>
  80b38c:	10001226 	beq	r2,zero,80b3d8 <__divsi3+0x78>
  80b390:	294b883a 	add	r5,r5,r5
  80b394:	10bfffc4 	addi	r2,r2,-1
  80b398:	18c7883a 	add	r3,r3,r3
  80b39c:	293ffb36 	bltu	r5,r4,80b38c <__divsi3+0x2c>
  80b3a0:	18000d26 	beq	r3,zero,80b3d8 <__divsi3+0x78>
  80b3a4:	0005883a 	mov	r2,zero
  80b3a8:	31400236 	bltu	r6,r5,80b3b4 <__divsi3+0x54>
  80b3ac:	314dc83a 	sub	r6,r6,r5
  80b3b0:	10c4b03a 	or	r2,r2,r3
  80b3b4:	1806d07a 	srli	r3,r3,1
  80b3b8:	280ad07a 	srli	r5,r5,1
  80b3bc:	183ffa1e 	bne	r3,zero,80b3a8 <__divsi3+0x48>
  80b3c0:	38000126 	beq	r7,zero,80b3c8 <__divsi3+0x68>
  80b3c4:	0085c83a 	sub	r2,zero,r2
  80b3c8:	f800283a 	ret
  80b3cc:	0109c83a 	sub	r4,zero,r4
  80b3d0:	01c00044 	movi	r7,1
  80b3d4:	003fe406 	br	80b368 <__divsi3+0x8>
  80b3d8:	0005883a 	mov	r2,zero
  80b3dc:	003ff806 	br	80b3c0 <__divsi3+0x60>

0080b3e0 <__modsi3>:
  80b3e0:	20001916 	blt	r4,zero,80b448 <__modsi3+0x68>
  80b3e4:	000f883a 	mov	r7,zero
  80b3e8:	2005883a 	mov	r2,r4
  80b3ec:	2800010e 	bge	r5,zero,80b3f4 <__modsi3+0x14>
  80b3f0:	014bc83a 	sub	r5,zero,r5
  80b3f4:	00c00044 	movi	r3,1
  80b3f8:	2900092e 	bgeu	r5,r4,80b420 <__modsi3+0x40>
  80b3fc:	01800804 	movi	r6,32
  80b400:	00c00044 	movi	r3,1
  80b404:	00000106 	br	80b40c <__modsi3+0x2c>
  80b408:	30000d26 	beq	r6,zero,80b440 <__modsi3+0x60>
  80b40c:	294b883a 	add	r5,r5,r5
  80b410:	31bfffc4 	addi	r6,r6,-1
  80b414:	18c7883a 	add	r3,r3,r3
  80b418:	293ffb36 	bltu	r5,r4,80b408 <__modsi3+0x28>
  80b41c:	18000826 	beq	r3,zero,80b440 <__modsi3+0x60>
  80b420:	1806d07a 	srli	r3,r3,1
  80b424:	11400136 	bltu	r2,r5,80b42c <__modsi3+0x4c>
  80b428:	1145c83a 	sub	r2,r2,r5
  80b42c:	280ad07a 	srli	r5,r5,1
  80b430:	183ffb1e 	bne	r3,zero,80b420 <__modsi3+0x40>
  80b434:	38000126 	beq	r7,zero,80b43c <__modsi3+0x5c>
  80b438:	0085c83a 	sub	r2,zero,r2
  80b43c:	f800283a 	ret
  80b440:	2005883a 	mov	r2,r4
  80b444:	003ffb06 	br	80b434 <__modsi3+0x54>
  80b448:	0109c83a 	sub	r4,zero,r4
  80b44c:	01c00044 	movi	r7,1
  80b450:	003fe506 	br	80b3e8 <__modsi3+0x8>

0080b454 <__udivsi3>:
  80b454:	200d883a 	mov	r6,r4
  80b458:	2900152e 	bgeu	r5,r4,80b4b0 <__udivsi3+0x5c>
  80b45c:	28001416 	blt	r5,zero,80b4b0 <__udivsi3+0x5c>
  80b460:	00800804 	movi	r2,32
  80b464:	00c00044 	movi	r3,1
  80b468:	00000206 	br	80b474 <__udivsi3+0x20>
  80b46c:	10000e26 	beq	r2,zero,80b4a8 <__udivsi3+0x54>
  80b470:	28000516 	blt	r5,zero,80b488 <__udivsi3+0x34>
  80b474:	294b883a 	add	r5,r5,r5
  80b478:	10bfffc4 	addi	r2,r2,-1
  80b47c:	18c7883a 	add	r3,r3,r3
  80b480:	293ffa36 	bltu	r5,r4,80b46c <__udivsi3+0x18>
  80b484:	18000826 	beq	r3,zero,80b4a8 <__udivsi3+0x54>
  80b488:	0005883a 	mov	r2,zero
  80b48c:	31400236 	bltu	r6,r5,80b498 <__udivsi3+0x44>
  80b490:	314dc83a 	sub	r6,r6,r5
  80b494:	10c4b03a 	or	r2,r2,r3
  80b498:	1806d07a 	srli	r3,r3,1
  80b49c:	280ad07a 	srli	r5,r5,1
  80b4a0:	183ffa1e 	bne	r3,zero,80b48c <__udivsi3+0x38>
  80b4a4:	f800283a 	ret
  80b4a8:	0005883a 	mov	r2,zero
  80b4ac:	f800283a 	ret
  80b4b0:	00c00044 	movi	r3,1
  80b4b4:	003ff406 	br	80b488 <__udivsi3+0x34>

0080b4b8 <__umodsi3>:
  80b4b8:	2005883a 	mov	r2,r4
  80b4bc:	2900132e 	bgeu	r5,r4,80b50c <__umodsi3+0x54>
  80b4c0:	28001216 	blt	r5,zero,80b50c <__umodsi3+0x54>
  80b4c4:	01800804 	movi	r6,32
  80b4c8:	00c00044 	movi	r3,1
  80b4cc:	00000206 	br	80b4d8 <__umodsi3+0x20>
  80b4d0:	30000c26 	beq	r6,zero,80b504 <__umodsi3+0x4c>
  80b4d4:	28000516 	blt	r5,zero,80b4ec <__umodsi3+0x34>
  80b4d8:	294b883a 	add	r5,r5,r5
  80b4dc:	31bfffc4 	addi	r6,r6,-1
  80b4e0:	18c7883a 	add	r3,r3,r3
  80b4e4:	293ffa36 	bltu	r5,r4,80b4d0 <__umodsi3+0x18>
  80b4e8:	18000626 	beq	r3,zero,80b504 <__umodsi3+0x4c>
  80b4ec:	1806d07a 	srli	r3,r3,1
  80b4f0:	11400136 	bltu	r2,r5,80b4f8 <__umodsi3+0x40>
  80b4f4:	1145c83a 	sub	r2,r2,r5
  80b4f8:	280ad07a 	srli	r5,r5,1
  80b4fc:	183ffb1e 	bne	r3,zero,80b4ec <__umodsi3+0x34>
  80b500:	f800283a 	ret
  80b504:	2005883a 	mov	r2,r4
  80b508:	f800283a 	ret
  80b50c:	00c00044 	movi	r3,1
  80b510:	003ff606 	br	80b4ec <__umodsi3+0x34>

0080b514 <__adddf3>:
  80b514:	02000434 	movhi	r8,16
  80b518:	423fffc4 	addi	r8,r8,-1
  80b51c:	3a12703a 	and	r9,r7,r8
  80b520:	2a06703a 	and	r3,r5,r8
  80b524:	2818d53a 	srli	r12,r5,20
  80b528:	3804d53a 	srli	r2,r7,20
  80b52c:	481490fa 	slli	r10,r9,3
  80b530:	280ad7fa 	srli	r5,r5,31
  80b534:	180690fa 	slli	r3,r3,3
  80b538:	2016d77a 	srli	r11,r4,29
  80b53c:	3012d77a 	srli	r9,r6,29
  80b540:	380ed7fa 	srli	r7,r7,31
  80b544:	defffb04 	addi	sp,sp,-20
  80b548:	dc400115 	stw	r17,4(sp)
  80b54c:	dc000015 	stw	r16,0(sp)
  80b550:	dfc00415 	stw	ra,16(sp)
  80b554:	dcc00315 	stw	r19,12(sp)
  80b558:	dc800215 	stw	r18,8(sp)
  80b55c:	201c90fa 	slli	r14,r4,3
  80b560:	301a90fa 	slli	r13,r6,3
  80b564:	6441ffcc 	andi	r17,r12,2047
  80b568:	2821883a 	mov	r16,r5
  80b56c:	58c6b03a 	or	r3,r11,r3
  80b570:	1081ffcc 	andi	r2,r2,2047
  80b574:	4a92b03a 	or	r9,r9,r10
  80b578:	29c06326 	beq	r5,r7,80b708 <__adddf3+0x1f4>
  80b57c:	888bc83a 	sub	r5,r17,r2
  80b580:	0140560e 	bge	zero,r5,80b6dc <__adddf3+0x1c8>
  80b584:	10007526 	beq	r2,zero,80b75c <__adddf3+0x248>
  80b588:	8881ffd8 	cmpnei	r2,r17,2047
  80b58c:	10012d26 	beq	r2,zero,80ba44 <__adddf3+0x530>
  80b590:	4a402034 	orhi	r9,r9,128
  80b594:	28800e48 	cmpgei	r2,r5,57
  80b598:	1000f41e 	bne	r2,zero,80b96c <__adddf3+0x458>
  80b59c:	28800808 	cmpgei	r2,r5,32
  80b5a0:	1001471e 	bne	r2,zero,80bac0 <__adddf3+0x5ac>
  80b5a4:	00800804 	movi	r2,32
  80b5a8:	1145c83a 	sub	r2,r2,r5
  80b5ac:	6948d83a 	srl	r4,r13,r5
  80b5b0:	48a4983a 	sll	r18,r9,r2
  80b5b4:	6884983a 	sll	r2,r13,r2
  80b5b8:	494ad83a 	srl	r5,r9,r5
  80b5bc:	9124b03a 	or	r18,r18,r4
  80b5c0:	101ac03a 	cmpne	r13,r2,zero
  80b5c4:	9364b03a 	or	r18,r18,r13
  80b5c8:	1947c83a 	sub	r3,r3,r5
  80b5cc:	74a5c83a 	sub	r18,r14,r18
  80b5d0:	7489803a 	cmpltu	r4,r14,r18
  80b5d4:	1909c83a 	sub	r4,r3,r4
  80b5d8:	2080202c 	andhi	r2,r4,128
  80b5dc:	10008626 	beq	r2,zero,80b7f8 <__adddf3+0x2e4>
  80b5e0:	00802034 	movhi	r2,128
  80b5e4:	10bfffc4 	addi	r2,r2,-1
  80b5e8:	20a6703a 	and	r19,r4,r2
  80b5ec:	9800d626 	beq	r19,zero,80b948 <__adddf3+0x434>
  80b5f0:	9809883a 	mov	r4,r19
  80b5f4:	0800f380 	call	800f38 <__clzsi2>
  80b5f8:	133ffe04 	addi	r12,r2,-8
  80b5fc:	01000804 	movi	r4,32
  80b600:	2309c83a 	sub	r4,r4,r12
  80b604:	9108d83a 	srl	r4,r18,r4
  80b608:	9b04983a 	sll	r2,r19,r12
  80b60c:	9324983a 	sll	r18,r18,r12
  80b610:	2088b03a 	or	r4,r4,r2
  80b614:	6440c716 	blt	r12,r17,80b934 <__adddf3+0x420>
  80b618:	6459c83a 	sub	r12,r12,r17
  80b61c:	62000044 	addi	r8,r12,1
  80b620:	40800808 	cmpgei	r2,r8,32
  80b624:	1001191e 	bne	r2,zero,80ba8c <__adddf3+0x578>
  80b628:	00800804 	movi	r2,32
  80b62c:	1205c83a 	sub	r2,r2,r8
  80b630:	9206d83a 	srl	r3,r18,r8
  80b634:	90a4983a 	sll	r18,r18,r2
  80b638:	2084983a 	sll	r2,r4,r2
  80b63c:	2208d83a 	srl	r4,r4,r8
  80b640:	9024c03a 	cmpne	r18,r18,zero
  80b644:	10c4b03a 	or	r2,r2,r3
  80b648:	14a4b03a 	or	r18,r2,r18
  80b64c:	0023883a 	mov	r17,zero
  80b650:	908001cc 	andi	r2,r18,7
  80b654:	10000726 	beq	r2,zero,80b674 <__adddf3+0x160>
  80b658:	908003cc 	andi	r2,r18,15
  80b65c:	10800120 	cmpeqi	r2,r2,4
  80b660:	1000041e 	bne	r2,zero,80b674 <__adddf3+0x160>
  80b664:	90c00104 	addi	r3,r18,4
  80b668:	1ca5803a 	cmpltu	r18,r3,r18
  80b66c:	2489883a 	add	r4,r4,r18
  80b670:	1825883a 	mov	r18,r3
  80b674:	2080202c 	andhi	r2,r4,128
  80b678:	10006126 	beq	r2,zero,80b800 <__adddf3+0x2ec>
  80b67c:	89400044 	addi	r5,r17,1
  80b680:	2881ffe0 	cmpeqi	r2,r5,2047
  80b684:	2941ffcc 	andi	r5,r5,2047
  80b688:	1000731e 	bne	r2,zero,80b858 <__adddf3+0x344>
  80b68c:	023fe034 	movhi	r8,65408
  80b690:	423fffc4 	addi	r8,r8,-1
  80b694:	2210703a 	and	r8,r4,r8
  80b698:	4006927a 	slli	r3,r8,9
  80b69c:	9024d0fa 	srli	r18,r18,3
  80b6a0:	4004977a 	slli	r2,r8,29
  80b6a4:	1806d33a 	srli	r3,r3,12
  80b6a8:	1484b03a 	or	r2,r2,r18
  80b6ac:	280a953a 	slli	r5,r5,20
  80b6b0:	84003fcc 	andi	r16,r16,255
  80b6b4:	802097fa 	slli	r16,r16,31
  80b6b8:	28c6b03a 	or	r3,r5,r3
  80b6bc:	1c06b03a 	or	r3,r3,r16
  80b6c0:	dfc00417 	ldw	ra,16(sp)
  80b6c4:	dcc00317 	ldw	r19,12(sp)
  80b6c8:	dc800217 	ldw	r18,8(sp)
  80b6cc:	dc400117 	ldw	r17,4(sp)
  80b6d0:	dc000017 	ldw	r16,0(sp)
  80b6d4:	dec00504 	addi	sp,sp,20
  80b6d8:	f800283a 	ret
  80b6dc:	28002726 	beq	r5,zero,80b77c <__adddf3+0x268>
  80b6e0:	144bc83a 	sub	r5,r2,r17
  80b6e4:	8800be1e 	bne	r17,zero,80b9e0 <__adddf3+0x4cc>
  80b6e8:	1b88b03a 	or	r4,r3,r14
  80b6ec:	20013126 	beq	r4,zero,80bbb4 <__adddf3+0x6a0>
  80b6f0:	293fffc4 	addi	r4,r5,-1
  80b6f4:	20017226 	beq	r4,zero,80bcc0 <__adddf3+0x7ac>
  80b6f8:	2941ffd8 	cmpnei	r5,r5,2047
  80b6fc:	2801c226 	beq	r5,zero,80be08 <__adddf3+0x8f4>
  80b700:	200b883a 	mov	r5,r4
  80b704:	0000b906 	br	80b9ec <__adddf3+0x4d8>
  80b708:	888bc83a 	sub	r5,r17,r2
  80b70c:	0140700e 	bge	zero,r5,80b8d0 <__adddf3+0x3bc>
  80b710:	10002a26 	beq	r2,zero,80b7bc <__adddf3+0x2a8>
  80b714:	8881ffd8 	cmpnei	r2,r17,2047
  80b718:	1000ca26 	beq	r2,zero,80ba44 <__adddf3+0x530>
  80b71c:	4a402034 	orhi	r9,r9,128
  80b720:	28800e48 	cmpgei	r2,r5,57
  80b724:	1000421e 	bne	r2,zero,80b830 <__adddf3+0x31c>
  80b728:	28800808 	cmpgei	r2,r5,32
  80b72c:	1000ff26 	beq	r2,zero,80bb2c <__adddf3+0x618>
  80b730:	2cbff804 	addi	r18,r5,-32
  80b734:	29000820 	cmpeqi	r4,r5,32
  80b738:	4c84d83a 	srl	r2,r9,r18
  80b73c:	2000041e 	bne	r4,zero,80b750 <__adddf3+0x23c>
  80b740:	01001004 	movi	r4,64
  80b744:	214bc83a 	sub	r5,r4,r5
  80b748:	4952983a 	sll	r9,r9,r5
  80b74c:	6a5ab03a 	or	r13,r13,r9
  80b750:	6824c03a 	cmpne	r18,r13,zero
  80b754:	90a4b03a 	or	r18,r18,r2
  80b758:	00003706 	br	80b838 <__adddf3+0x324>
  80b75c:	4b44b03a 	or	r2,r9,r13
  80b760:	1000b126 	beq	r2,zero,80ba28 <__adddf3+0x514>
  80b764:	28bfffc4 	addi	r2,r5,-1
  80b768:	10011a26 	beq	r2,zero,80bbd4 <__adddf3+0x6c0>
  80b76c:	2941ffd8 	cmpnei	r5,r5,2047
  80b770:	28012526 	beq	r5,zero,80bc08 <__adddf3+0x6f4>
  80b774:	100b883a 	mov	r5,r2
  80b778:	003f8606 	br	80b594 <__adddf3+0x80>
  80b77c:	8a800044 	addi	r10,r17,1
  80b780:	5281ff8c 	andi	r10,r10,2046
  80b784:	50008b1e 	bne	r10,zero,80b9b4 <__adddf3+0x4a0>
  80b788:	1b96b03a 	or	r11,r3,r14
  80b78c:	4b44b03a 	or	r2,r9,r13
  80b790:	8801031e 	bne	r17,zero,80bba0 <__adddf3+0x68c>
  80b794:	58014126 	beq	r11,zero,80bc9c <__adddf3+0x788>
  80b798:	1001571e 	bne	r2,zero,80bcf8 <__adddf3+0x7e4>
  80b79c:	1804977a 	slli	r2,r3,29
  80b7a0:	01480034 	movhi	r5,8192
  80b7a4:	297fffc4 	addi	r5,r5,-1
  80b7a8:	2148703a 	and	r4,r4,r5
  80b7ac:	1810d0fa 	srli	r8,r3,3
  80b7b0:	1104b03a 	or	r2,r2,r4
  80b7b4:	500b883a 	mov	r5,r10
  80b7b8:	00001806 	br	80b81c <__adddf3+0x308>
  80b7bc:	4b44b03a 	or	r2,r9,r13
  80b7c0:	10010a26 	beq	r2,zero,80bbec <__adddf3+0x6d8>
  80b7c4:	28bfffc4 	addi	r2,r5,-1
  80b7c8:	10000426 	beq	r2,zero,80b7dc <__adddf3+0x2c8>
  80b7cc:	2941ffd8 	cmpnei	r5,r5,2047
  80b7d0:	28014226 	beq	r5,zero,80bcdc <__adddf3+0x7c8>
  80b7d4:	100b883a 	mov	r5,r2
  80b7d8:	003fd106 	br	80b720 <__adddf3+0x20c>
  80b7dc:	7365883a 	add	r18,r14,r13
  80b7e0:	1a47883a 	add	r3,r3,r9
  80b7e4:	9389803a 	cmpltu	r4,r18,r14
  80b7e8:	1909883a 	add	r4,r3,r4
  80b7ec:	2080202c 	andhi	r2,r4,128
  80b7f0:	10009b1e 	bne	r2,zero,80ba60 <__adddf3+0x54c>
  80b7f4:	04400044 	movi	r17,1
  80b7f8:	908001cc 	andi	r2,r18,7
  80b7fc:	103f961e 	bne	r2,zero,80b658 <__adddf3+0x144>
  80b800:	9024d0fa 	srli	r18,r18,3
  80b804:	2004977a 	slli	r2,r4,29
  80b808:	2010d0fa 	srli	r8,r4,3
  80b80c:	880b883a 	mov	r5,r17
  80b810:	9084b03a 	or	r2,r18,r2
  80b814:	28c1ffe0 	cmpeqi	r3,r5,2047
  80b818:	1800251e 	bne	r3,zero,80b8b0 <__adddf3+0x39c>
  80b81c:	00c00434 	movhi	r3,16
  80b820:	18ffffc4 	addi	r3,r3,-1
  80b824:	40c6703a 	and	r3,r8,r3
  80b828:	2941ffcc 	andi	r5,r5,2047
  80b82c:	003f9f06 	br	80b6ac <__adddf3+0x198>
  80b830:	4b64b03a 	or	r18,r9,r13
  80b834:	9024c03a 	cmpne	r18,r18,zero
  80b838:	93a5883a 	add	r18,r18,r14
  80b83c:	9389803a 	cmpltu	r4,r18,r14
  80b840:	20c9883a 	add	r4,r4,r3
  80b844:	2080202c 	andhi	r2,r4,128
  80b848:	103feb26 	beq	r2,zero,80b7f8 <__adddf3+0x2e4>
  80b84c:	8c400044 	addi	r17,r17,1
  80b850:	8881ffe0 	cmpeqi	r2,r17,2047
  80b854:	10008326 	beq	r2,zero,80ba64 <__adddf3+0x550>
  80b858:	0141ffc4 	movi	r5,2047
  80b85c:	0007883a 	mov	r3,zero
  80b860:	0005883a 	mov	r2,zero
  80b864:	003f9106 	br	80b6ac <__adddf3+0x198>
  80b868:	4b44b03a 	or	r2,r9,r13
  80b86c:	180a977a 	slli	r5,r3,29
  80b870:	1810d0fa 	srli	r8,r3,3
  80b874:	10016c26 	beq	r2,zero,80be28 <__adddf3+0x914>
  80b878:	00c80034 	movhi	r3,8192
  80b87c:	18ffffc4 	addi	r3,r3,-1
  80b880:	20c4703a 	and	r2,r4,r3
  80b884:	4100022c 	andhi	r4,r8,8
  80b888:	1144b03a 	or	r2,r2,r5
  80b88c:	20000826 	beq	r4,zero,80b8b0 <__adddf3+0x39c>
  80b890:	4808d0fa 	srli	r4,r9,3
  80b894:	2140022c 	andhi	r5,r4,8
  80b898:	2800051e 	bne	r5,zero,80b8b0 <__adddf3+0x39c>
  80b89c:	4804977a 	slli	r2,r9,29
  80b8a0:	30cc703a 	and	r6,r6,r3
  80b8a4:	3821883a 	mov	r16,r7
  80b8a8:	3084b03a 	or	r2,r6,r2
  80b8ac:	2011883a 	mov	r8,r4
  80b8b0:	4086b03a 	or	r3,r8,r2
  80b8b4:	18017126 	beq	r3,zero,80be7c <__adddf3+0x968>
  80b8b8:	01000434 	movhi	r4,16
  80b8bc:	40c00234 	orhi	r3,r8,8
  80b8c0:	213fffc4 	addi	r4,r4,-1
  80b8c4:	1906703a 	and	r3,r3,r4
  80b8c8:	0141ffc4 	movi	r5,2047
  80b8cc:	003f7706 	br	80b6ac <__adddf3+0x198>
  80b8d0:	28002926 	beq	r5,zero,80b978 <__adddf3+0x464>
  80b8d4:	144bc83a 	sub	r5,r2,r17
  80b8d8:	88008c26 	beq	r17,zero,80bb0c <__adddf3+0x5f8>
  80b8dc:	1101ffd8 	cmpnei	r4,r2,2047
  80b8e0:	20011126 	beq	r4,zero,80bd28 <__adddf3+0x814>
  80b8e4:	18c02034 	orhi	r3,r3,128
  80b8e8:	29000e48 	cmpgei	r4,r5,57
  80b8ec:	2000d51e 	bne	r4,zero,80bc44 <__adddf3+0x730>
  80b8f0:	29000808 	cmpgei	r4,r5,32
  80b8f4:	2001511e 	bne	r4,zero,80be3c <__adddf3+0x928>
  80b8f8:	01000804 	movi	r4,32
  80b8fc:	2149c83a 	sub	r4,r4,r5
  80b900:	1924983a 	sll	r18,r3,r4
  80b904:	714cd83a 	srl	r6,r14,r5
  80b908:	7108983a 	sll	r4,r14,r4
  80b90c:	194ad83a 	srl	r5,r3,r5
  80b910:	91a4b03a 	or	r18,r18,r6
  80b914:	2006c03a 	cmpne	r3,r4,zero
  80b918:	90e4b03a 	or	r18,r18,r3
  80b91c:	4953883a 	add	r9,r9,r5
  80b920:	9365883a 	add	r18,r18,r13
  80b924:	9349803a 	cmpltu	r4,r18,r13
  80b928:	2249883a 	add	r4,r4,r9
  80b92c:	1023883a 	mov	r17,r2
  80b930:	003fc406 	br	80b844 <__adddf3+0x330>
  80b934:	023fe034 	movhi	r8,65408
  80b938:	423fffc4 	addi	r8,r8,-1
  80b93c:	8b23c83a 	sub	r17,r17,r12
  80b940:	2208703a 	and	r4,r4,r8
  80b944:	003f4206 	br	80b650 <__adddf3+0x13c>
  80b948:	9009883a 	mov	r4,r18
  80b94c:	0800f380 	call	800f38 <__clzsi2>
  80b950:	13000604 	addi	r12,r2,24
  80b954:	60c00808 	cmpgei	r3,r12,32
  80b958:	183f2826 	beq	r3,zero,80b5fc <__adddf3+0xe8>
  80b95c:	113ffe04 	addi	r4,r2,-8
  80b960:	9108983a 	sll	r4,r18,r4
  80b964:	0025883a 	mov	r18,zero
  80b968:	003f2a06 	br	80b614 <__adddf3+0x100>
  80b96c:	4b64b03a 	or	r18,r9,r13
  80b970:	9024c03a 	cmpne	r18,r18,zero
  80b974:	003f1506 	br	80b5cc <__adddf3+0xb8>
  80b978:	8a000044 	addi	r8,r17,1
  80b97c:	4081ff8c 	andi	r2,r8,2046
  80b980:	1000751e 	bne	r2,zero,80bb58 <__adddf3+0x644>
  80b984:	1b84b03a 	or	r2,r3,r14
  80b988:	8800bc1e 	bne	r17,zero,80bc7c <__adddf3+0x768>
  80b98c:	10010c26 	beq	r2,zero,80bdc0 <__adddf3+0x8ac>
  80b990:	4b44b03a 	or	r2,r9,r13
  80b994:	1001111e 	bne	r2,zero,80bddc <__adddf3+0x8c8>
  80b998:	180c977a 	slli	r6,r3,29
  80b99c:	00880034 	movhi	r2,8192
  80b9a0:	10bfffc4 	addi	r2,r2,-1
  80b9a4:	2084703a 	and	r2,r4,r2
  80b9a8:	1810d0fa 	srli	r8,r3,3
  80b9ac:	1184b03a 	or	r2,r2,r6
  80b9b0:	003f9a06 	br	80b81c <__adddf3+0x308>
  80b9b4:	7365c83a 	sub	r18,r14,r13
  80b9b8:	1a67c83a 	sub	r19,r3,r9
  80b9bc:	7489803a 	cmpltu	r4,r14,r18
  80b9c0:	9927c83a 	sub	r19,r19,r4
  80b9c4:	9880202c 	andhi	r2,r19,128
  80b9c8:	10006f1e 	bne	r2,zero,80bb88 <__adddf3+0x674>
  80b9cc:	94c4b03a 	or	r2,r18,r19
  80b9d0:	103f061e 	bne	r2,zero,80b5ec <__adddf3+0xd8>
  80b9d4:	0011883a 	mov	r8,zero
  80b9d8:	0021883a 	mov	r16,zero
  80b9dc:	003f8f06 	br	80b81c <__adddf3+0x308>
  80b9e0:	1101ffd8 	cmpnei	r4,r2,2047
  80b9e4:	20008f26 	beq	r4,zero,80bc24 <__adddf3+0x710>
  80b9e8:	18c02034 	orhi	r3,r3,128
  80b9ec:	29000e48 	cmpgei	r4,r5,57
  80b9f0:	20003e1e 	bne	r4,zero,80baec <__adddf3+0x5d8>
  80b9f4:	29000808 	cmpgei	r4,r5,32
  80b9f8:	2000951e 	bne	r4,zero,80bc50 <__adddf3+0x73c>
  80b9fc:	01000804 	movi	r4,32
  80ba00:	2149c83a 	sub	r4,r4,r5
  80ba04:	1924983a 	sll	r18,r3,r4
  80ba08:	714cd83a 	srl	r6,r14,r5
  80ba0c:	711c983a 	sll	r14,r14,r4
  80ba10:	1946d83a 	srl	r3,r3,r5
  80ba14:	91a4b03a 	or	r18,r18,r6
  80ba18:	701cc03a 	cmpne	r14,r14,zero
  80ba1c:	93a4b03a 	or	r18,r18,r14
  80ba20:	48d3c83a 	sub	r9,r9,r3
  80ba24:	00003306 	br	80baf4 <__adddf3+0x5e0>
  80ba28:	1824977a 	slli	r18,r3,29
  80ba2c:	01880034 	movhi	r6,8192
  80ba30:	31bfffc4 	addi	r6,r6,-1
  80ba34:	2184703a 	and	r2,r4,r6
  80ba38:	1810d0fa 	srli	r8,r3,3
  80ba3c:	1484b03a 	or	r2,r2,r18
  80ba40:	003f7406 	br	80b814 <__adddf3+0x300>
  80ba44:	1804977a 	slli	r2,r3,29
  80ba48:	01480034 	movhi	r5,8192
  80ba4c:	297fffc4 	addi	r5,r5,-1
  80ba50:	2148703a 	and	r4,r4,r5
  80ba54:	1810d0fa 	srli	r8,r3,3
  80ba58:	1104b03a 	or	r2,r2,r4
  80ba5c:	003f9406 	br	80b8b0 <__adddf3+0x39c>
  80ba60:	04400084 	movi	r17,2
  80ba64:	00bfe034 	movhi	r2,65408
  80ba68:	10bfffc4 	addi	r2,r2,-1
  80ba6c:	9006d07a 	srli	r3,r18,1
  80ba70:	2088703a 	and	r4,r4,r2
  80ba74:	200497fa 	slli	r2,r4,31
  80ba78:	9480004c 	andi	r18,r18,1
  80ba7c:	1ca4b03a 	or	r18,r3,r18
  80ba80:	2008d07a 	srli	r4,r4,1
  80ba84:	14a4b03a 	or	r18,r2,r18
  80ba88:	003ef106 	br	80b650 <__adddf3+0x13c>
  80ba8c:	633ff844 	addi	r12,r12,-31
  80ba90:	40800820 	cmpeqi	r2,r8,32
  80ba94:	2318d83a 	srl	r12,r4,r12
  80ba98:	1000041e 	bne	r2,zero,80baac <__adddf3+0x598>
  80ba9c:	00801004 	movi	r2,64
  80baa0:	1211c83a 	sub	r8,r2,r8
  80baa4:	2208983a 	sll	r4,r4,r8
  80baa8:	9124b03a 	or	r18,r18,r4
  80baac:	9024c03a 	cmpne	r18,r18,zero
  80bab0:	9324b03a 	or	r18,r18,r12
  80bab4:	0009883a 	mov	r4,zero
  80bab8:	0023883a 	mov	r17,zero
  80babc:	003f4e06 	br	80b7f8 <__adddf3+0x2e4>
  80bac0:	2cbff804 	addi	r18,r5,-32
  80bac4:	29000820 	cmpeqi	r4,r5,32
  80bac8:	4c84d83a 	srl	r2,r9,r18
  80bacc:	2000041e 	bne	r4,zero,80bae0 <__adddf3+0x5cc>
  80bad0:	01001004 	movi	r4,64
  80bad4:	214bc83a 	sub	r5,r4,r5
  80bad8:	4952983a 	sll	r9,r9,r5
  80badc:	6a5ab03a 	or	r13,r13,r9
  80bae0:	6824c03a 	cmpne	r18,r13,zero
  80bae4:	90a4b03a 	or	r18,r18,r2
  80bae8:	003eb806 	br	80b5cc <__adddf3+0xb8>
  80baec:	1b88b03a 	or	r4,r3,r14
  80baf0:	2024c03a 	cmpne	r18,r4,zero
  80baf4:	6ca5c83a 	sub	r18,r13,r18
  80baf8:	6c89803a 	cmpltu	r4,r13,r18
  80bafc:	4909c83a 	sub	r4,r9,r4
  80bb00:	3821883a 	mov	r16,r7
  80bb04:	1023883a 	mov	r17,r2
  80bb08:	003eb306 	br	80b5d8 <__adddf3+0xc4>
  80bb0c:	1b88b03a 	or	r4,r3,r14
  80bb10:	20008c26 	beq	r4,zero,80bd44 <__adddf3+0x830>
  80bb14:	293fffc4 	addi	r4,r5,-1
  80bb18:	2000d326 	beq	r4,zero,80be68 <__adddf3+0x954>
  80bb1c:	2941ffd8 	cmpnei	r5,r5,2047
  80bb20:	28008126 	beq	r5,zero,80bd28 <__adddf3+0x814>
  80bb24:	200b883a 	mov	r5,r4
  80bb28:	003f6f06 	br	80b8e8 <__adddf3+0x3d4>
  80bb2c:	00800804 	movi	r2,32
  80bb30:	1145c83a 	sub	r2,r2,r5
  80bb34:	6948d83a 	srl	r4,r13,r5
  80bb38:	48a4983a 	sll	r18,r9,r2
  80bb3c:	6884983a 	sll	r2,r13,r2
  80bb40:	494ad83a 	srl	r5,r9,r5
  80bb44:	9124b03a 	or	r18,r18,r4
  80bb48:	101ac03a 	cmpne	r13,r2,zero
  80bb4c:	9364b03a 	or	r18,r18,r13
  80bb50:	1947883a 	add	r3,r3,r5
  80bb54:	003f3806 	br	80b838 <__adddf3+0x324>
  80bb58:	4081ffe0 	cmpeqi	r2,r8,2047
  80bb5c:	103f3e1e 	bne	r2,zero,80b858 <__adddf3+0x344>
  80bb60:	7345883a 	add	r2,r14,r13
  80bb64:	139d803a 	cmpltu	r14,r2,r14
  80bb68:	1a49883a 	add	r4,r3,r9
  80bb6c:	2389883a 	add	r4,r4,r14
  80bb70:	202497fa 	slli	r18,r4,31
  80bb74:	1004d07a 	srli	r2,r2,1
  80bb78:	2008d07a 	srli	r4,r4,1
  80bb7c:	4023883a 	mov	r17,r8
  80bb80:	90a4b03a 	or	r18,r18,r2
  80bb84:	003f1c06 	br	80b7f8 <__adddf3+0x2e4>
  80bb88:	6ba5c83a 	sub	r18,r13,r14
  80bb8c:	48c9c83a 	sub	r4,r9,r3
  80bb90:	6c85803a 	cmpltu	r2,r13,r18
  80bb94:	20a7c83a 	sub	r19,r4,r2
  80bb98:	3821883a 	mov	r16,r7
  80bb9c:	003e9306 	br	80b5ec <__adddf3+0xd8>
  80bba0:	58006f1e 	bne	r11,zero,80bd60 <__adddf3+0x84c>
  80bba4:	10001f1e 	bne	r2,zero,80bc24 <__adddf3+0x710>
  80bba8:	00bfffc4 	movi	r2,-1
  80bbac:	0021883a 	mov	r16,zero
  80bbb0:	003f4106 	br	80b8b8 <__adddf3+0x3a4>
  80bbb4:	4808977a 	slli	r4,r9,29
  80bbb8:	00c80034 	movhi	r3,8192
  80bbbc:	18ffffc4 	addi	r3,r3,-1
  80bbc0:	30c4703a 	and	r2,r6,r3
  80bbc4:	4810d0fa 	srli	r8,r9,3
  80bbc8:	1104b03a 	or	r2,r2,r4
  80bbcc:	3821883a 	mov	r16,r7
  80bbd0:	003f1006 	br	80b814 <__adddf3+0x300>
  80bbd4:	7365c83a 	sub	r18,r14,r13
  80bbd8:	1a47c83a 	sub	r3,r3,r9
  80bbdc:	7489803a 	cmpltu	r4,r14,r18
  80bbe0:	1909c83a 	sub	r4,r3,r4
  80bbe4:	04400044 	movi	r17,1
  80bbe8:	003e7b06 	br	80b5d8 <__adddf3+0xc4>
  80bbec:	1824977a 	slli	r18,r3,29
  80bbf0:	01c80034 	movhi	r7,8192
  80bbf4:	39ffffc4 	addi	r7,r7,-1
  80bbf8:	21c4703a 	and	r2,r4,r7
  80bbfc:	1810d0fa 	srli	r8,r3,3
  80bc00:	1484b03a 	or	r2,r2,r18
  80bc04:	003f0306 	br	80b814 <__adddf3+0x300>
  80bc08:	1824977a 	slli	r18,r3,29
  80bc0c:	01480034 	movhi	r5,8192
  80bc10:	297fffc4 	addi	r5,r5,-1
  80bc14:	2144703a 	and	r2,r4,r5
  80bc18:	1810d0fa 	srli	r8,r3,3
  80bc1c:	1484b03a 	or	r2,r2,r18
  80bc20:	003f2306 	br	80b8b0 <__adddf3+0x39c>
  80bc24:	4806977a 	slli	r3,r9,29
  80bc28:	00880034 	movhi	r2,8192
  80bc2c:	10bfffc4 	addi	r2,r2,-1
  80bc30:	3084703a 	and	r2,r6,r2
  80bc34:	4810d0fa 	srli	r8,r9,3
  80bc38:	10c4b03a 	or	r2,r2,r3
  80bc3c:	3821883a 	mov	r16,r7
  80bc40:	003f1b06 	br	80b8b0 <__adddf3+0x39c>
  80bc44:	1b88b03a 	or	r4,r3,r14
  80bc48:	2024c03a 	cmpne	r18,r4,zero
  80bc4c:	003f3406 	br	80b920 <__adddf3+0x40c>
  80bc50:	2cbff804 	addi	r18,r5,-32
  80bc54:	29800820 	cmpeqi	r6,r5,32
  80bc58:	1c88d83a 	srl	r4,r3,r18
  80bc5c:	3000041e 	bne	r6,zero,80bc70 <__adddf3+0x75c>
  80bc60:	01801004 	movi	r6,64
  80bc64:	314bc83a 	sub	r5,r6,r5
  80bc68:	1946983a 	sll	r3,r3,r5
  80bc6c:	70dcb03a 	or	r14,r14,r3
  80bc70:	7024c03a 	cmpne	r18,r14,zero
  80bc74:	9124b03a 	or	r18,r18,r4
  80bc78:	003f9e06 	br	80baf4 <__adddf3+0x5e0>
  80bc7c:	103efa1e 	bne	r2,zero,80b868 <__adddf3+0x354>
  80bc80:	4804977a 	slli	r2,r9,29
  80bc84:	00c80034 	movhi	r3,8192
  80bc88:	18ffffc4 	addi	r3,r3,-1
  80bc8c:	30cc703a 	and	r6,r6,r3
  80bc90:	4810d0fa 	srli	r8,r9,3
  80bc94:	1184b03a 	or	r2,r2,r6
  80bc98:	003f0506 	br	80b8b0 <__adddf3+0x39c>
  80bc9c:	10004426 	beq	r2,zero,80bdb0 <__adddf3+0x89c>
  80bca0:	4806977a 	slli	r3,r9,29
  80bca4:	00880034 	movhi	r2,8192
  80bca8:	10bfffc4 	addi	r2,r2,-1
  80bcac:	3084703a 	and	r2,r6,r2
  80bcb0:	4810d0fa 	srli	r8,r9,3
  80bcb4:	10c4b03a 	or	r2,r2,r3
  80bcb8:	3821883a 	mov	r16,r7
  80bcbc:	003ed706 	br	80b81c <__adddf3+0x308>
  80bcc0:	6ba5c83a 	sub	r18,r13,r14
  80bcc4:	48c7c83a 	sub	r3,r9,r3
  80bcc8:	6c85803a 	cmpltu	r2,r13,r18
  80bccc:	1889c83a 	sub	r4,r3,r2
  80bcd0:	3821883a 	mov	r16,r7
  80bcd4:	04400044 	movi	r17,1
  80bcd8:	003e3f06 	br	80b5d8 <__adddf3+0xc4>
  80bcdc:	180a977a 	slli	r5,r3,29
  80bce0:	00880034 	movhi	r2,8192
  80bce4:	10bfffc4 	addi	r2,r2,-1
  80bce8:	2084703a 	and	r2,r4,r2
  80bcec:	1810d0fa 	srli	r8,r3,3
  80bcf0:	1144b03a 	or	r2,r2,r5
  80bcf4:	003eee06 	br	80b8b0 <__adddf3+0x39c>
  80bcf8:	7365c83a 	sub	r18,r14,r13
  80bcfc:	7485803a 	cmpltu	r2,r14,r18
  80bd00:	1a49c83a 	sub	r4,r3,r9
  80bd04:	2089c83a 	sub	r4,r4,r2
  80bd08:	2080202c 	andhi	r2,r4,128
  80bd0c:	10002626 	beq	r2,zero,80bda8 <__adddf3+0x894>
  80bd10:	6ba5c83a 	sub	r18,r13,r14
  80bd14:	48c7c83a 	sub	r3,r9,r3
  80bd18:	6c85803a 	cmpltu	r2,r13,r18
  80bd1c:	1889c83a 	sub	r4,r3,r2
  80bd20:	3821883a 	mov	r16,r7
  80bd24:	003e4a06 	br	80b650 <__adddf3+0x13c>
  80bd28:	4806977a 	slli	r3,r9,29
  80bd2c:	00880034 	movhi	r2,8192
  80bd30:	10bfffc4 	addi	r2,r2,-1
  80bd34:	3084703a 	and	r2,r6,r2
  80bd38:	4810d0fa 	srli	r8,r9,3
  80bd3c:	10c4b03a 	or	r2,r2,r3
  80bd40:	003edb06 	br	80b8b0 <__adddf3+0x39c>
  80bd44:	4806977a 	slli	r3,r9,29
  80bd48:	00880034 	movhi	r2,8192
  80bd4c:	10bfffc4 	addi	r2,r2,-1
  80bd50:	3084703a 	and	r2,r6,r2
  80bd54:	4810d0fa 	srli	r8,r9,3
  80bd58:	10c4b03a 	or	r2,r2,r3
  80bd5c:	003ead06 	br	80b814 <__adddf3+0x300>
  80bd60:	180a977a 	slli	r5,r3,29
  80bd64:	1810d0fa 	srli	r8,r3,3
  80bd68:	10002f26 	beq	r2,zero,80be28 <__adddf3+0x914>
  80bd6c:	00c80034 	movhi	r3,8192
  80bd70:	18ffffc4 	addi	r3,r3,-1
  80bd74:	20c4703a 	and	r2,r4,r3
  80bd78:	4100022c 	andhi	r4,r8,8
  80bd7c:	1144b03a 	or	r2,r2,r5
  80bd80:	203ecb26 	beq	r4,zero,80b8b0 <__adddf3+0x39c>
  80bd84:	4808d0fa 	srli	r4,r9,3
  80bd88:	2140022c 	andhi	r5,r4,8
  80bd8c:	283ec81e 	bne	r5,zero,80b8b0 <__adddf3+0x39c>
  80bd90:	4812977a 	slli	r9,r9,29
  80bd94:	30c4703a 	and	r2,r6,r3
  80bd98:	3821883a 	mov	r16,r7
  80bd9c:	1244b03a 	or	r2,r2,r9
  80bda0:	2011883a 	mov	r8,r4
  80bda4:	003ec206 	br	80b8b0 <__adddf3+0x39c>
  80bda8:	9104b03a 	or	r2,r18,r4
  80bdac:	103e921e 	bne	r2,zero,80b7f8 <__adddf3+0x2e4>
  80bdb0:	0011883a 	mov	r8,zero
  80bdb4:	100b883a 	mov	r5,r2
  80bdb8:	0021883a 	mov	r16,zero
  80bdbc:	003e9706 	br	80b81c <__adddf3+0x308>
  80bdc0:	4804977a 	slli	r2,r9,29
  80bdc4:	00c80034 	movhi	r3,8192
  80bdc8:	18ffffc4 	addi	r3,r3,-1
  80bdcc:	30cc703a 	and	r6,r6,r3
  80bdd0:	4810d0fa 	srli	r8,r9,3
  80bdd4:	1184b03a 	or	r2,r2,r6
  80bdd8:	003e9006 	br	80b81c <__adddf3+0x308>
  80bddc:	7365883a 	add	r18,r14,r13
  80bde0:	1a47883a 	add	r3,r3,r9
  80bde4:	9389803a 	cmpltu	r4,r18,r14
  80bde8:	1909883a 	add	r4,r3,r4
  80bdec:	2080202c 	andhi	r2,r4,128
  80bdf0:	103e8126 	beq	r2,zero,80b7f8 <__adddf3+0x2e4>
  80bdf4:	00bfe034 	movhi	r2,65408
  80bdf8:	10bfffc4 	addi	r2,r2,-1
  80bdfc:	2088703a 	and	r4,r4,r2
  80be00:	04400044 	movi	r17,1
  80be04:	003e7c06 	br	80b7f8 <__adddf3+0x2e4>
  80be08:	4804977a 	slli	r2,r9,29
  80be0c:	00c80034 	movhi	r3,8192
  80be10:	18ffffc4 	addi	r3,r3,-1
  80be14:	30cc703a 	and	r6,r6,r3
  80be18:	4810d0fa 	srli	r8,r9,3
  80be1c:	1184b03a 	or	r2,r2,r6
  80be20:	3821883a 	mov	r16,r7
  80be24:	003ea206 	br	80b8b0 <__adddf3+0x39c>
  80be28:	00880034 	movhi	r2,8192
  80be2c:	10bfffc4 	addi	r2,r2,-1
  80be30:	2084703a 	and	r2,r4,r2
  80be34:	1144b03a 	or	r2,r2,r5
  80be38:	003e9d06 	br	80b8b0 <__adddf3+0x39c>
  80be3c:	293ff804 	addi	r4,r5,-32
  80be40:	29800820 	cmpeqi	r6,r5,32
  80be44:	1908d83a 	srl	r4,r3,r4
  80be48:	3000041e 	bne	r6,zero,80be5c <__adddf3+0x948>
  80be4c:	01801004 	movi	r6,64
  80be50:	314bc83a 	sub	r5,r6,r5
  80be54:	1946983a 	sll	r3,r3,r5
  80be58:	70dcb03a 	or	r14,r14,r3
  80be5c:	7024c03a 	cmpne	r18,r14,zero
  80be60:	9124b03a 	or	r18,r18,r4
  80be64:	003eae06 	br	80b920 <__adddf3+0x40c>
  80be68:	7365883a 	add	r18,r14,r13
  80be6c:	1a47883a 	add	r3,r3,r9
  80be70:	9345803a 	cmpltu	r2,r18,r13
  80be74:	1889883a 	add	r4,r3,r2
  80be78:	003e5c06 	br	80b7ec <__adddf3+0x2d8>
  80be7c:	0005883a 	mov	r2,zero
  80be80:	0141ffc4 	movi	r5,2047
  80be84:	0007883a 	mov	r3,zero
  80be88:	003e0806 	br	80b6ac <__adddf3+0x198>

0080be8c <__divdf3>:
  80be8c:	2810d53a 	srli	r8,r5,20
  80be90:	defff004 	addi	sp,sp,-64
  80be94:	dc000615 	stw	r16,24(sp)
  80be98:	04000434 	movhi	r16,16
  80be9c:	df000e15 	stw	fp,56(sp)
  80bea0:	ddc00d15 	stw	r23,52(sp)
  80bea4:	dd800c15 	stw	r22,48(sp)
  80bea8:	dd000a15 	stw	r20,40(sp)
  80beac:	843fffc4 	addi	r16,r16,-1
  80beb0:	dfc00f15 	stw	ra,60(sp)
  80beb4:	dd400b15 	stw	r21,44(sp)
  80beb8:	dcc00915 	stw	r19,36(sp)
  80bebc:	dc800815 	stw	r18,32(sp)
  80bec0:	dc400715 	stw	r17,28(sp)
  80bec4:	4201ffcc 	andi	r8,r8,2047
  80bec8:	282ed7fa 	srli	r23,r5,31
  80becc:	3039883a 	mov	fp,r6
  80bed0:	382d883a 	mov	r22,r7
  80bed4:	2029883a 	mov	r20,r4
  80bed8:	2c20703a 	and	r16,r5,r16
  80bedc:	40005326 	beq	r8,zero,80c02c <__divdf3+0x1a0>
  80bee0:	4081ffe0 	cmpeqi	r2,r8,2047
  80bee4:	1000641e 	bne	r2,zero,80c078 <__divdf3+0x1ec>
  80bee8:	2026d77a 	srli	r19,r4,29
  80beec:	800a90fa 	slli	r5,r16,3
  80bef0:	202890fa 	slli	r20,r4,3
  80bef4:	44bf0044 	addi	r18,r8,-1023
  80bef8:	994ab03a 	or	r5,r19,r5
  80befc:	2cc02034 	orhi	r19,r5,128
  80bf00:	0021883a 	mov	r16,zero
  80bf04:	0023883a 	mov	r17,zero
  80bf08:	b010d53a 	srli	r8,r22,20
  80bf0c:	00c00434 	movhi	r3,16
  80bf10:	18ffffc4 	addi	r3,r3,-1
  80bf14:	4201ffcc 	andi	r8,r8,2047
  80bf18:	b02ad7fa 	srli	r21,r22,31
  80bf1c:	b0ec703a 	and	r22,r22,r3
  80bf20:	40005c26 	beq	r8,zero,80c094 <__divdf3+0x208>
  80bf24:	4081ffe0 	cmpeqi	r2,r8,2047
  80bf28:	1000201e 	bne	r2,zero,80bfac <__divdf3+0x120>
  80bf2c:	b00690fa 	slli	r3,r22,3
  80bf30:	e004d77a 	srli	r2,fp,29
  80bf34:	e01490fa 	slli	r10,fp,3
  80bf38:	423f0044 	addi	r8,r8,-1023
  80bf3c:	10c6b03a 	or	r3,r2,r3
  80bf40:	1d802034 	orhi	r22,r3,128
  80bf44:	9225c83a 	sub	r18,r18,r8
  80bf48:	0007883a 	mov	r3,zero
  80bf4c:	80800428 	cmpgeui	r2,r16,16
  80bf50:	bd52f03a 	xor	r9,r23,r21
  80bf54:	1000a81e 	bne	r2,zero,80c1f8 <__divdf3+0x36c>
  80bf58:	800c90ba 	slli	r6,r16,2
  80bf5c:	00802074 	movhi	r2,129
  80bf60:	3085883a 	add	r2,r6,r2
  80bf64:	10afdb17 	ldw	r2,-16532(r2)
  80bf68:	1000683a 	jmp	r2
  80bf6c:	0080c1f8 	rdprs	r2,zero,775
  80bf70:	0080c01c 	xori	r2,zero,768
  80bf74:	0080bfc8 	cmpgei	r2,zero,767
  80bf78:	0080c140 	call	80c14 <__alt_mem_sdram-0x77f3ec>
  80bf7c:	0080bfc8 	cmpgei	r2,zero,767
  80bf80:	0080c19c 	xori	r2,zero,774
  80bf84:	0080bfc8 	cmpgei	r2,zero,767
  80bf88:	0080c140 	call	80c14 <__alt_mem_sdram-0x77f3ec>
  80bf8c:	0080c01c 	xori	r2,zero,768
  80bf90:	0080c01c 	xori	r2,zero,768
  80bf94:	0080c19c 	xori	r2,zero,774
  80bf98:	0080c140 	call	80c14 <__alt_mem_sdram-0x77f3ec>
  80bf9c:	0080c0d8 	cmpnei	r2,zero,771
  80bfa0:	0080c0d8 	cmpnei	r2,zero,771
  80bfa4:	0080c0d8 	cmpnei	r2,zero,771
  80bfa8:	0080c1b4 	movhi	r2,774
  80bfac:	b714b03a 	or	r10,r22,fp
  80bfb0:	94be0044 	addi	r18,r18,-2047
  80bfb4:	5000671e 	bne	r10,zero,80c154 <__divdf3+0x2c8>
  80bfb8:	84000094 	ori	r16,r16,2
  80bfbc:	002d883a 	mov	r22,zero
  80bfc0:	00c00084 	movi	r3,2
  80bfc4:	003fe106 	br	80bf4c <__divdf3+0xc0>
  80bfc8:	0007883a 	mov	r3,zero
  80bfcc:	000b883a 	mov	r5,zero
  80bfd0:	0029883a 	mov	r20,zero
  80bfd4:	1806953a 	slli	r3,r3,20
  80bfd8:	4a403fcc 	andi	r9,r9,255
  80bfdc:	481297fa 	slli	r9,r9,31
  80bfe0:	1946b03a 	or	r3,r3,r5
  80bfe4:	a005883a 	mov	r2,r20
  80bfe8:	1a46b03a 	or	r3,r3,r9
  80bfec:	dfc00f17 	ldw	ra,60(sp)
  80bff0:	df000e17 	ldw	fp,56(sp)
  80bff4:	ddc00d17 	ldw	r23,52(sp)
  80bff8:	dd800c17 	ldw	r22,48(sp)
  80bffc:	dd400b17 	ldw	r21,44(sp)
  80c000:	dd000a17 	ldw	r20,40(sp)
  80c004:	dcc00917 	ldw	r19,36(sp)
  80c008:	dc800817 	ldw	r18,32(sp)
  80c00c:	dc400717 	ldw	r17,28(sp)
  80c010:	dc000617 	ldw	r16,24(sp)
  80c014:	dec01004 	addi	sp,sp,64
  80c018:	f800283a 	ret
  80c01c:	00c1ffc4 	movi	r3,2047
  80c020:	000b883a 	mov	r5,zero
  80c024:	0029883a 	mov	r20,zero
  80c028:	003fea06 	br	80bfd4 <__divdf3+0x148>
  80c02c:	2426b03a 	or	r19,r4,r16
  80c030:	2023883a 	mov	r17,r4
  80c034:	98004f26 	beq	r19,zero,80c174 <__divdf3+0x2e8>
  80c038:	80017b26 	beq	r16,zero,80c628 <__divdf3+0x79c>
  80c03c:	8009883a 	mov	r4,r16
  80c040:	0800f380 	call	800f38 <__clzsi2>
  80c044:	113ffd44 	addi	r4,r2,-11
  80c048:	00c00744 	movi	r3,29
  80c04c:	14fffe04 	addi	r19,r2,-8
  80c050:	1907c83a 	sub	r3,r3,r4
  80c054:	84ca983a 	sll	r5,r16,r19
  80c058:	88c6d83a 	srl	r3,r17,r3
  80c05c:	8ce8983a 	sll	r20,r17,r19
  80c060:	1966b03a 	or	r19,r3,r5
  80c064:	023f0344 	movi	r8,-1011
  80c068:	40a5c83a 	sub	r18,r8,r2
  80c06c:	0021883a 	mov	r16,zero
  80c070:	0023883a 	mov	r17,zero
  80c074:	003fa406 	br	80bf08 <__divdf3+0x7c>
  80c078:	2426b03a 	or	r19,r4,r16
  80c07c:	9800421e 	bne	r19,zero,80c188 <__divdf3+0x2fc>
  80c080:	0029883a 	mov	r20,zero
  80c084:	04000204 	movi	r16,8
  80c088:	0481ffc4 	movi	r18,2047
  80c08c:	04400084 	movi	r17,2
  80c090:	003f9d06 	br	80bf08 <__divdf3+0x7c>
  80c094:	b714b03a 	or	r10,r22,fp
  80c098:	50003226 	beq	r10,zero,80c164 <__divdf3+0x2d8>
  80c09c:	b0016c26 	beq	r22,zero,80c650 <__divdf3+0x7c4>
  80c0a0:	b009883a 	mov	r4,r22
  80c0a4:	0800f380 	call	800f38 <__clzsi2>
  80c0a8:	117ffd44 	addi	r5,r2,-11
  80c0ac:	01000744 	movi	r4,29
  80c0b0:	12bffe04 	addi	r10,r2,-8
  80c0b4:	2149c83a 	sub	r4,r4,r5
  80c0b8:	b286983a 	sll	r3,r22,r10
  80c0bc:	e108d83a 	srl	r4,fp,r4
  80c0c0:	e294983a 	sll	r10,fp,r10
  80c0c4:	20ecb03a 	or	r22,r4,r3
  80c0c8:	1491883a 	add	r8,r2,r18
  80c0cc:	4480fcc4 	addi	r18,r8,1011
  80c0d0:	0007883a 	mov	r3,zero
  80c0d4:	003f9d06 	br	80bf4c <__divdf3+0xc0>
  80c0d8:	b813883a 	mov	r9,r23
  80c0dc:	888000a0 	cmpeqi	r2,r17,2
  80c0e0:	103fce1e 	bne	r2,zero,80c01c <__divdf3+0x190>
  80c0e4:	888000e0 	cmpeqi	r2,r17,3
  80c0e8:	1001ac1e 	bne	r2,zero,80c79c <__divdf3+0x910>
  80c0ec:	88800060 	cmpeqi	r2,r17,1
  80c0f0:	103fb51e 	bne	r2,zero,80bfc8 <__divdf3+0x13c>
  80c0f4:	9440ffc4 	addi	r17,r18,1023
  80c0f8:	04411c0e 	bge	zero,r17,80c56c <__divdf3+0x6e0>
  80c0fc:	a08001cc 	andi	r2,r20,7
  80c100:	1001831e 	bne	r2,zero,80c710 <__divdf3+0x884>
  80c104:	a008d0fa 	srli	r4,r20,3
  80c108:	9880402c 	andhi	r2,r19,256
  80c10c:	10000426 	beq	r2,zero,80c120 <__divdf3+0x294>
  80c110:	00bfc034 	movhi	r2,65280
  80c114:	10bfffc4 	addi	r2,r2,-1
  80c118:	98a6703a 	and	r19,r19,r2
  80c11c:	94410004 	addi	r17,r18,1024
  80c120:	8881ffc8 	cmpgei	r2,r17,2047
  80c124:	103fbd1e 	bne	r2,zero,80c01c <__divdf3+0x190>
  80c128:	9828977a 	slli	r20,r19,29
  80c12c:	980a927a 	slli	r5,r19,9
  80c130:	88c1ffcc 	andi	r3,r17,2047
  80c134:	a128b03a 	or	r20,r20,r4
  80c138:	280ad33a 	srli	r5,r5,12
  80c13c:	003fa506 	br	80bfd4 <__divdf3+0x148>
  80c140:	a813883a 	mov	r9,r21
  80c144:	b027883a 	mov	r19,r22
  80c148:	5029883a 	mov	r20,r10
  80c14c:	1823883a 	mov	r17,r3
  80c150:	003fe206 	br	80c0dc <__divdf3+0x250>
  80c154:	840000d4 	ori	r16,r16,3
  80c158:	e015883a 	mov	r10,fp
  80c15c:	00c000c4 	movi	r3,3
  80c160:	003f7a06 	br	80bf4c <__divdf3+0xc0>
  80c164:	84000054 	ori	r16,r16,1
  80c168:	002d883a 	mov	r22,zero
  80c16c:	00c00044 	movi	r3,1
  80c170:	003f7606 	br	80bf4c <__divdf3+0xc0>
  80c174:	0029883a 	mov	r20,zero
  80c178:	04000104 	movi	r16,4
  80c17c:	0025883a 	mov	r18,zero
  80c180:	04400044 	movi	r17,1
  80c184:	003f6006 	br	80bf08 <__divdf3+0x7c>
  80c188:	8027883a 	mov	r19,r16
  80c18c:	0481ffc4 	movi	r18,2047
  80c190:	04000304 	movi	r16,12
  80c194:	044000c4 	movi	r17,3
  80c198:	003f5b06 	br	80bf08 <__divdf3+0x7c>
  80c19c:	01400434 	movhi	r5,16
  80c1a0:	0013883a 	mov	r9,zero
  80c1a4:	297fffc4 	addi	r5,r5,-1
  80c1a8:	053fffc4 	movi	r20,-1
  80c1ac:	00c1ffc4 	movi	r3,2047
  80c1b0:	003f8806 	br	80bfd4 <__divdf3+0x148>
  80c1b4:	9880022c 	andhi	r2,r19,8
  80c1b8:	10000926 	beq	r2,zero,80c1e0 <__divdf3+0x354>
  80c1bc:	b080022c 	andhi	r2,r22,8
  80c1c0:	1000071e 	bne	r2,zero,80c1e0 <__divdf3+0x354>
  80c1c4:	00800434 	movhi	r2,16
  80c1c8:	b1400234 	orhi	r5,r22,8
  80c1cc:	10bfffc4 	addi	r2,r2,-1
  80c1d0:	288a703a 	and	r5,r5,r2
  80c1d4:	a813883a 	mov	r9,r21
  80c1d8:	5029883a 	mov	r20,r10
  80c1dc:	003ff306 	br	80c1ac <__divdf3+0x320>
  80c1e0:	00800434 	movhi	r2,16
  80c1e4:	99400234 	orhi	r5,r19,8
  80c1e8:	10bfffc4 	addi	r2,r2,-1
  80c1ec:	288a703a 	and	r5,r5,r2
  80c1f0:	b813883a 	mov	r9,r23
  80c1f4:	003fed06 	br	80c1ac <__divdf3+0x320>
  80c1f8:	b4c10536 	bltu	r22,r19,80c610 <__divdf3+0x784>
  80c1fc:	b4c10326 	beq	r22,r19,80c60c <__divdf3+0x780>
  80c200:	94bfffc4 	addi	r18,r18,-1
  80c204:	a039883a 	mov	fp,r20
  80c208:	9821883a 	mov	r16,r19
  80c20c:	0023883a 	mov	r17,zero
  80c210:	b006923a 	slli	r3,r22,8
  80c214:	502cd63a 	srli	r22,r10,24
  80c218:	8009883a 	mov	r4,r16
  80c21c:	182ed43a 	srli	r23,r3,16
  80c220:	b0ecb03a 	or	r22,r22,r3
  80c224:	da400015 	stw	r9,0(sp)
  80c228:	b80b883a 	mov	r5,r23
  80c22c:	502a923a 	slli	r21,r10,8
  80c230:	b53fffcc 	andi	r20,r22,65535
  80c234:	080b4540 	call	80b454 <__udivsi3>
  80c238:	100b883a 	mov	r5,r2
  80c23c:	a009883a 	mov	r4,r20
  80c240:	1027883a 	mov	r19,r2
  80c244:	0800f8c0 	call	800f8c <__mulsi3>
  80c248:	8009883a 	mov	r4,r16
  80c24c:	b80b883a 	mov	r5,r23
  80c250:	1021883a 	mov	r16,r2
  80c254:	080b4b80 	call	80b4b8 <__umodsi3>
  80c258:	1004943a 	slli	r2,r2,16
  80c25c:	e008d43a 	srli	r4,fp,16
  80c260:	da400017 	ldw	r9,0(sp)
  80c264:	2088b03a 	or	r4,r4,r2
  80c268:	2400042e 	bgeu	r4,r16,80c27c <__divdf3+0x3f0>
  80c26c:	2589883a 	add	r4,r4,r22
  80c270:	98bfffc4 	addi	r2,r19,-1
  80c274:	2581082e 	bgeu	r4,r22,80c698 <__divdf3+0x80c>
  80c278:	1027883a 	mov	r19,r2
  80c27c:	2421c83a 	sub	r16,r4,r16
  80c280:	b80b883a 	mov	r5,r23
  80c284:	8009883a 	mov	r4,r16
  80c288:	da400215 	stw	r9,8(sp)
  80c28c:	080b4540 	call	80b454 <__udivsi3>
  80c290:	100b883a 	mov	r5,r2
  80c294:	a009883a 	mov	r4,r20
  80c298:	d8800115 	stw	r2,4(sp)
  80c29c:	0800f8c0 	call	800f8c <__mulsi3>
  80c2a0:	b80b883a 	mov	r5,r23
  80c2a4:	8009883a 	mov	r4,r16
  80c2a8:	d8800015 	stw	r2,0(sp)
  80c2ac:	080b4b80 	call	80b4b8 <__umodsi3>
  80c2b0:	100c943a 	slli	r6,r2,16
  80c2b4:	d8c00017 	ldw	r3,0(sp)
  80c2b8:	e73fffcc 	andi	fp,fp,65535
  80c2bc:	e18cb03a 	or	r6,fp,r6
  80c2c0:	d9c00117 	ldw	r7,4(sp)
  80c2c4:	da400217 	ldw	r9,8(sp)
  80c2c8:	30c0042e 	bgeu	r6,r3,80c2dc <__divdf3+0x450>
  80c2cc:	358d883a 	add	r6,r6,r22
  80c2d0:	38bfffc4 	addi	r2,r7,-1
  80c2d4:	3580ec2e 	bgeu	r6,r22,80c688 <__divdf3+0x7fc>
  80c2d8:	100f883a 	mov	r7,r2
  80c2dc:	9826943a 	slli	r19,r19,16
  80c2e0:	af3fffcc 	andi	fp,r21,65535
  80c2e4:	30c7c83a 	sub	r3,r6,r3
  80c2e8:	99e6b03a 	or	r19,r19,r7
  80c2ec:	980ed43a 	srli	r7,r19,16
  80c2f0:	9abfffcc 	andi	r10,r19,65535
  80c2f4:	5009883a 	mov	r4,r10
  80c2f8:	e00b883a 	mov	r5,fp
  80c2fc:	da400515 	stw	r9,20(sp)
  80c300:	d8c00315 	stw	r3,12(sp)
  80c304:	da800415 	stw	r10,16(sp)
  80c308:	d9c00015 	stw	r7,0(sp)
  80c30c:	0800f8c0 	call	800f8c <__mulsi3>
  80c310:	d9c00017 	ldw	r7,0(sp)
  80c314:	e00b883a 	mov	r5,fp
  80c318:	d8800215 	stw	r2,8(sp)
  80c31c:	3809883a 	mov	r4,r7
  80c320:	0800f8c0 	call	800f8c <__mulsi3>
  80c324:	d9c00017 	ldw	r7,0(sp)
  80c328:	a820d43a 	srli	r16,r21,16
  80c32c:	d8800115 	stw	r2,4(sp)
  80c330:	3809883a 	mov	r4,r7
  80c334:	800b883a 	mov	r5,r16
  80c338:	0800f8c0 	call	800f8c <__mulsi3>
  80c33c:	da800417 	ldw	r10,16(sp)
  80c340:	8009883a 	mov	r4,r16
  80c344:	d8800015 	stw	r2,0(sp)
  80c348:	500b883a 	mov	r5,r10
  80c34c:	0800f8c0 	call	800f8c <__mulsi3>
  80c350:	d9800217 	ldw	r6,8(sp)
  80c354:	d9c00117 	ldw	r7,4(sp)
  80c358:	da000017 	ldw	r8,0(sp)
  80c35c:	3008d43a 	srli	r4,r6,16
  80c360:	11c5883a 	add	r2,r2,r7
  80c364:	d8c00317 	ldw	r3,12(sp)
  80c368:	2089883a 	add	r4,r4,r2
  80c36c:	da400517 	ldw	r9,20(sp)
  80c370:	21c0022e 	bgeu	r4,r7,80c37c <__divdf3+0x4f0>
  80c374:	00800074 	movhi	r2,1
  80c378:	4091883a 	add	r8,r8,r2
  80c37c:	200ad43a 	srli	r5,r4,16
  80c380:	2008943a 	slli	r4,r4,16
  80c384:	31bfffcc 	andi	r6,r6,65535
  80c388:	2a0b883a 	add	r5,r5,r8
  80c38c:	218d883a 	add	r6,r4,r6
  80c390:	19409436 	bltu	r3,r5,80c5e4 <__divdf3+0x758>
  80c394:	19409226 	beq	r3,r5,80c5e0 <__divdf3+0x754>
  80c398:	898dc83a 	sub	r6,r17,r6
  80c39c:	89a3803a 	cmpltu	r17,r17,r6
  80c3a0:	1947c83a 	sub	r3,r3,r5
  80c3a4:	1c47c83a 	sub	r3,r3,r17
  80c3a8:	9440ffc4 	addi	r17,r18,1023
  80c3ac:	b0c0d326 	beq	r22,r3,80c6fc <__divdf3+0x870>
  80c3b0:	1809883a 	mov	r4,r3
  80c3b4:	b80b883a 	mov	r5,r23
  80c3b8:	d9800315 	stw	r6,12(sp)
  80c3bc:	da400215 	stw	r9,8(sp)
  80c3c0:	d8c00015 	stw	r3,0(sp)
  80c3c4:	080b4540 	call	80b454 <__udivsi3>
  80c3c8:	100b883a 	mov	r5,r2
  80c3cc:	a009883a 	mov	r4,r20
  80c3d0:	d8800115 	stw	r2,4(sp)
  80c3d4:	0800f8c0 	call	800f8c <__mulsi3>
  80c3d8:	d8c00017 	ldw	r3,0(sp)
  80c3dc:	b80b883a 	mov	r5,r23
  80c3e0:	d8800015 	stw	r2,0(sp)
  80c3e4:	1809883a 	mov	r4,r3
  80c3e8:	080b4b80 	call	80b4b8 <__umodsi3>
  80c3ec:	d9800317 	ldw	r6,12(sp)
  80c3f0:	1006943a 	slli	r3,r2,16
  80c3f4:	da000017 	ldw	r8,0(sp)
  80c3f8:	3008d43a 	srli	r4,r6,16
  80c3fc:	d9c00117 	ldw	r7,4(sp)
  80c400:	da400217 	ldw	r9,8(sp)
  80c404:	20c6b03a 	or	r3,r4,r3
  80c408:	1a00062e 	bgeu	r3,r8,80c424 <__divdf3+0x598>
  80c40c:	1d87883a 	add	r3,r3,r22
  80c410:	38bfffc4 	addi	r2,r7,-1
  80c414:	1d80c836 	bltu	r3,r22,80c738 <__divdf3+0x8ac>
  80c418:	1a00c72e 	bgeu	r3,r8,80c738 <__divdf3+0x8ac>
  80c41c:	39ffff84 	addi	r7,r7,-2
  80c420:	1d87883a 	add	r3,r3,r22
  80c424:	1a07c83a 	sub	r3,r3,r8
  80c428:	1809883a 	mov	r4,r3
  80c42c:	b80b883a 	mov	r5,r23
  80c430:	d9800415 	stw	r6,16(sp)
  80c434:	da400315 	stw	r9,12(sp)
  80c438:	d9c00215 	stw	r7,8(sp)
  80c43c:	d8c00115 	stw	r3,4(sp)
  80c440:	080b4540 	call	80b454 <__udivsi3>
  80c444:	100b883a 	mov	r5,r2
  80c448:	a009883a 	mov	r4,r20
  80c44c:	d8800015 	stw	r2,0(sp)
  80c450:	0800f8c0 	call	800f8c <__mulsi3>
  80c454:	d8c00117 	ldw	r3,4(sp)
  80c458:	b80b883a 	mov	r5,r23
  80c45c:	102f883a 	mov	r23,r2
  80c460:	1809883a 	mov	r4,r3
  80c464:	080b4b80 	call	80b4b8 <__umodsi3>
  80c468:	d9800417 	ldw	r6,16(sp)
  80c46c:	1004943a 	slli	r2,r2,16
  80c470:	da000017 	ldw	r8,0(sp)
  80c474:	31bfffcc 	andi	r6,r6,65535
  80c478:	308cb03a 	or	r6,r6,r2
  80c47c:	d9c00217 	ldw	r7,8(sp)
  80c480:	da400317 	ldw	r9,12(sp)
  80c484:	35c0062e 	bgeu	r6,r23,80c4a0 <__divdf3+0x614>
  80c488:	358d883a 	add	r6,r6,r22
  80c48c:	40bfffc4 	addi	r2,r8,-1
  80c490:	3580a736 	bltu	r6,r22,80c730 <__divdf3+0x8a4>
  80c494:	35c0a62e 	bgeu	r6,r23,80c730 <__divdf3+0x8a4>
  80c498:	423fff84 	addi	r8,r8,-2
  80c49c:	358d883a 	add	r6,r6,r22
  80c4a0:	3828943a 	slli	r20,r7,16
  80c4a4:	35d5c83a 	sub	r10,r6,r23
  80c4a8:	e009883a 	mov	r4,fp
  80c4ac:	a228b03a 	or	r20,r20,r8
  80c4b0:	a1ffffcc 	andi	r7,r20,65535
  80c4b4:	a02ed43a 	srli	r23,r20,16
  80c4b8:	380b883a 	mov	r5,r7
  80c4bc:	da400315 	stw	r9,12(sp)
  80c4c0:	da800215 	stw	r10,8(sp)
  80c4c4:	d9c00115 	stw	r7,4(sp)
  80c4c8:	0800f8c0 	call	800f8c <__mulsi3>
  80c4cc:	e00b883a 	mov	r5,fp
  80c4d0:	b809883a 	mov	r4,r23
  80c4d4:	1039883a 	mov	fp,r2
  80c4d8:	0800f8c0 	call	800f8c <__mulsi3>
  80c4dc:	8009883a 	mov	r4,r16
  80c4e0:	b80b883a 	mov	r5,r23
  80c4e4:	d8800015 	stw	r2,0(sp)
  80c4e8:	0800f8c0 	call	800f8c <__mulsi3>
  80c4ec:	d9c00117 	ldw	r7,4(sp)
  80c4f0:	8009883a 	mov	r4,r16
  80c4f4:	1021883a 	mov	r16,r2
  80c4f8:	380b883a 	mov	r5,r7
  80c4fc:	0800f8c0 	call	800f8c <__mulsi3>
  80c500:	d9800017 	ldw	r6,0(sp)
  80c504:	e006d43a 	srli	r3,fp,16
  80c508:	da800217 	ldw	r10,8(sp)
  80c50c:	1185883a 	add	r2,r2,r6
  80c510:	1887883a 	add	r3,r3,r2
  80c514:	da400317 	ldw	r9,12(sp)
  80c518:	1980022e 	bgeu	r3,r6,80c524 <__divdf3+0x698>
  80c51c:	00800074 	movhi	r2,1
  80c520:	80a1883a 	add	r16,r16,r2
  80c524:	1808d43a 	srli	r4,r3,16
  80c528:	1806943a 	slli	r3,r3,16
  80c52c:	e73fffcc 	andi	fp,fp,65535
  80c530:	2409883a 	add	r4,r4,r16
  80c534:	1f07883a 	add	r3,r3,fp
  80c538:	51000436 	bltu	r10,r4,80c54c <__divdf3+0x6c0>
  80c53c:	51000226 	beq	r10,r4,80c548 <__divdf3+0x6bc>
  80c540:	a5000054 	ori	r20,r20,1
  80c544:	003eec06 	br	80c0f8 <__divdf3+0x26c>
  80c548:	183eeb26 	beq	r3,zero,80c0f8 <__divdf3+0x26c>
  80c54c:	b28d883a 	add	r6,r22,r10
  80c550:	a0bfffc4 	addi	r2,r20,-1
  80c554:	35806536 	bltu	r6,r22,80c6ec <__divdf3+0x860>
  80c558:	31008036 	bltu	r6,r4,80c75c <__divdf3+0x8d0>
  80c55c:	31009426 	beq	r6,r4,80c7b0 <__divdf3+0x924>
  80c560:	1029883a 	mov	r20,r2
  80c564:	003ff606 	br	80c540 <__divdf3+0x6b4>
  80c568:	053fffc4 	movi	r20,-1
  80c56c:	01400044 	movi	r5,1
  80c570:	2c4bc83a 	sub	r5,r5,r17
  80c574:	28800e48 	cmpgei	r2,r5,57
  80c578:	103e931e 	bne	r2,zero,80bfc8 <__divdf3+0x13c>
  80c57c:	28800808 	cmpgei	r2,r5,32
  80c580:	1000491e 	bne	r2,zero,80c6a8 <__divdf3+0x81c>
  80c584:	92010784 	addi	r8,r18,1054
  80c588:	9a04983a 	sll	r2,r19,r8
  80c58c:	a146d83a 	srl	r3,r20,r5
  80c590:	a210983a 	sll	r8,r20,r8
  80c594:	994ad83a 	srl	r5,r19,r5
  80c598:	10e8b03a 	or	r20,r2,r3
  80c59c:	4010c03a 	cmpne	r8,r8,zero
  80c5a0:	a228b03a 	or	r20,r20,r8
  80c5a4:	a08001cc 	andi	r2,r20,7
  80c5a8:	10000726 	beq	r2,zero,80c5c8 <__divdf3+0x73c>
  80c5ac:	a08003cc 	andi	r2,r20,15
  80c5b0:	10800120 	cmpeqi	r2,r2,4
  80c5b4:	1000041e 	bne	r2,zero,80c5c8 <__divdf3+0x73c>
  80c5b8:	a0800104 	addi	r2,r20,4
  80c5bc:	1529803a 	cmpltu	r20,r2,r20
  80c5c0:	2d0b883a 	add	r5,r5,r20
  80c5c4:	1029883a 	mov	r20,r2
  80c5c8:	2880202c 	andhi	r2,r5,128
  80c5cc:	10006f26 	beq	r2,zero,80c78c <__divdf3+0x900>
  80c5d0:	00c00044 	movi	r3,1
  80c5d4:	000b883a 	mov	r5,zero
  80c5d8:	0029883a 	mov	r20,zero
  80c5dc:	003e7d06 	br	80bfd4 <__divdf3+0x148>
  80c5e0:	89bf6d2e 	bgeu	r17,r6,80c398 <__divdf3+0x50c>
  80c5e4:	8d63883a 	add	r17,r17,r21
  80c5e8:	8d45803a 	cmpltu	r2,r17,r21
  80c5ec:	1585883a 	add	r2,r2,r22
  80c5f0:	1887883a 	add	r3,r3,r2
  80c5f4:	98bfffc4 	addi	r2,r19,-1
  80c5f8:	b0c0202e 	bgeu	r22,r3,80c67c <__divdf3+0x7f0>
  80c5fc:	19405136 	bltu	r3,r5,80c744 <__divdf3+0x8b8>
  80c600:	28c04f26 	beq	r5,r3,80c740 <__divdf3+0x8b4>
  80c604:	1027883a 	mov	r19,r2
  80c608:	003f6306 	br	80c398 <__divdf3+0x50c>
  80c60c:	a2befc36 	bltu	r20,r10,80c200 <__divdf3+0x374>
  80c610:	983897fa 	slli	fp,r19,31
  80c614:	a004d07a 	srli	r2,r20,1
  80c618:	9820d07a 	srli	r16,r19,1
  80c61c:	a02297fa 	slli	r17,r20,31
  80c620:	e0b8b03a 	or	fp,fp,r2
  80c624:	003efa06 	br	80c210 <__divdf3+0x384>
  80c628:	0800f380 	call	800f38 <__clzsi2>
  80c62c:	11000544 	addi	r4,r2,21
  80c630:	20c00748 	cmpgei	r3,r4,29
  80c634:	100b883a 	mov	r5,r2
  80c638:	10800804 	addi	r2,r2,32
  80c63c:	183e8226 	beq	r3,zero,80c048 <__divdf3+0x1bc>
  80c640:	297ffe04 	addi	r5,r5,-8
  80c644:	a166983a 	sll	r19,r20,r5
  80c648:	0029883a 	mov	r20,zero
  80c64c:	003e8506 	br	80c064 <__divdf3+0x1d8>
  80c650:	e009883a 	mov	r4,fp
  80c654:	0800f380 	call	800f38 <__clzsi2>
  80c658:	11400544 	addi	r5,r2,21
  80c65c:	29000748 	cmpgei	r4,r5,29
  80c660:	1007883a 	mov	r3,r2
  80c664:	10800804 	addi	r2,r2,32
  80c668:	203e9026 	beq	r4,zero,80c0ac <__divdf3+0x220>
  80c66c:	18fffe04 	addi	r3,r3,-8
  80c670:	e0ec983a 	sll	r22,fp,r3
  80c674:	0015883a 	mov	r10,zero
  80c678:	003e9306 	br	80c0c8 <__divdf3+0x23c>
  80c67c:	b0ffe11e 	bne	r22,r3,80c604 <__divdf3+0x778>
  80c680:	8d7fe036 	bltu	r17,r21,80c604 <__divdf3+0x778>
  80c684:	003fdd06 	br	80c5fc <__divdf3+0x770>
  80c688:	30ff132e 	bgeu	r6,r3,80c2d8 <__divdf3+0x44c>
  80c68c:	39ffff84 	addi	r7,r7,-2
  80c690:	358d883a 	add	r6,r6,r22
  80c694:	003f1106 	br	80c2dc <__divdf3+0x450>
  80c698:	243ef72e 	bgeu	r4,r16,80c278 <__divdf3+0x3ec>
  80c69c:	9cffff84 	addi	r19,r19,-2
  80c6a0:	2589883a 	add	r4,r4,r22
  80c6a4:	003ef506 	br	80c27c <__divdf3+0x3f0>
  80c6a8:	00fff844 	movi	r3,-31
  80c6ac:	1c47c83a 	sub	r3,r3,r17
  80c6b0:	29400820 	cmpeqi	r5,r5,32
  80c6b4:	98c6d83a 	srl	r3,r19,r3
  80c6b8:	2800031e 	bne	r5,zero,80c6c8 <__divdf3+0x83c>
  80c6bc:	91410f84 	addi	r5,r18,1086
  80c6c0:	994a983a 	sll	r5,r19,r5
  80c6c4:	a168b03a 	or	r20,r20,r5
  80c6c8:	a028c03a 	cmpne	r20,r20,zero
  80c6cc:	a0e8b03a 	or	r20,r20,r3
  80c6d0:	a4c001cc 	andi	r19,r20,7
  80c6d4:	9800291e 	bne	r19,zero,80c77c <__divdf3+0x8f0>
  80c6d8:	000b883a 	mov	r5,zero
  80c6dc:	a028d0fa 	srli	r20,r20,3
  80c6e0:	0007883a 	mov	r3,zero
  80c6e4:	a4e8b03a 	or	r20,r20,r19
  80c6e8:	003e3a06 	br	80bfd4 <__divdf3+0x148>
  80c6ec:	1029883a 	mov	r20,r2
  80c6f0:	313f931e 	bne	r6,r4,80c540 <__divdf3+0x6b4>
  80c6f4:	1d7f921e 	bne	r3,r21,80c540 <__divdf3+0x6b4>
  80c6f8:	003e7f06 	br	80c0f8 <__divdf3+0x26c>
  80c6fc:	047f9a0e 	bge	zero,r17,80c568 <__divdf3+0x6dc>
  80c700:	0009883a 	mov	r4,zero
  80c704:	05000044 	movi	r20,1
  80c708:	9d27883a 	add	r19,r19,r20
  80c70c:	003e7e06 	br	80c108 <__divdf3+0x27c>
  80c710:	a08003cc 	andi	r2,r20,15
  80c714:	10800118 	cmpnei	r2,r2,4
  80c718:	103e7a26 	beq	r2,zero,80c104 <__divdf3+0x278>
  80c71c:	a1000104 	addi	r4,r20,4
  80c720:	00bffec4 	movi	r2,-5
  80c724:	2008d0fa 	srli	r4,r4,3
  80c728:	1529803a 	cmpltu	r20,r2,r20
  80c72c:	003ff606 	br	80c708 <__divdf3+0x87c>
  80c730:	1011883a 	mov	r8,r2
  80c734:	003f5a06 	br	80c4a0 <__divdf3+0x614>
  80c738:	100f883a 	mov	r7,r2
  80c73c:	003f3906 	br	80c424 <__divdf3+0x598>
  80c740:	89bfb02e 	bgeu	r17,r6,80c604 <__divdf3+0x778>
  80c744:	8d63883a 	add	r17,r17,r21
  80c748:	8d45803a 	cmpltu	r2,r17,r21
  80c74c:	1585883a 	add	r2,r2,r22
  80c750:	9cffff84 	addi	r19,r19,-2
  80c754:	1887883a 	add	r3,r3,r2
  80c758:	003f0f06 	br	80c398 <__divdf3+0x50c>
  80c75c:	ad45883a 	add	r2,r21,r21
  80c760:	156b803a 	cmpltu	r21,r2,r21
  80c764:	adad883a 	add	r22,r21,r22
  80c768:	358d883a 	add	r6,r6,r22
  80c76c:	a53fff84 	addi	r20,r20,-2
  80c770:	102b883a 	mov	r21,r2
  80c774:	313fdf26 	beq	r6,r4,80c6f4 <__divdf3+0x868>
  80c778:	003f7106 	br	80c540 <__divdf3+0x6b4>
  80c77c:	a08003cc 	andi	r2,r20,15
  80c780:	10800118 	cmpnei	r2,r2,4
  80c784:	000b883a 	mov	r5,zero
  80c788:	103f8b1e 	bne	r2,zero,80c5b8 <__divdf3+0x72c>
  80c78c:	2804927a 	slli	r2,r5,9
  80c790:	2826977a 	slli	r19,r5,29
  80c794:	100ad33a 	srli	r5,r2,12
  80c798:	003fd006 	br	80c6dc <__divdf3+0x850>
  80c79c:	00800434 	movhi	r2,16
  80c7a0:	99400234 	orhi	r5,r19,8
  80c7a4:	10bfffc4 	addi	r2,r2,-1
  80c7a8:	288a703a 	and	r5,r5,r2
  80c7ac:	003e7f06 	br	80c1ac <__divdf3+0x320>
  80c7b0:	a8ffea36 	bltu	r21,r3,80c75c <__divdf3+0x8d0>
  80c7b4:	1029883a 	mov	r20,r2
  80c7b8:	1d7f611e 	bne	r3,r21,80c540 <__divdf3+0x6b4>
  80c7bc:	003e4e06 	br	80c0f8 <__divdf3+0x26c>

0080c7c0 <__eqdf2>:
  80c7c0:	2810d53a 	srli	r8,r5,20
  80c7c4:	3806d53a 	srli	r3,r7,20
  80c7c8:	00800434 	movhi	r2,16
  80c7cc:	4201ffcc 	andi	r8,r8,2047
  80c7d0:	10bfffc4 	addi	r2,r2,-1
  80c7d4:	4241ffd8 	cmpnei	r9,r8,2047
  80c7d8:	2814d7fa 	srli	r10,r5,31
  80c7dc:	3816d7fa 	srli	r11,r7,31
  80c7e0:	288a703a 	and	r5,r5,r2
  80c7e4:	388e703a 	and	r7,r7,r2
  80c7e8:	1881ffcc 	andi	r2,r3,2047
  80c7ec:	48000626 	beq	r9,zero,80c808 <__eqdf2+0x48>
  80c7f0:	10c1ffe0 	cmpeqi	r3,r2,2047
  80c7f4:	1800021e 	bne	r3,zero,80c800 <__eqdf2+0x40>
  80c7f8:	4080011e 	bne	r8,r2,80c800 <__eqdf2+0x40>
  80c7fc:	29c00826 	beq	r5,r7,80c820 <__eqdf2+0x60>
  80c800:	00800044 	movi	r2,1
  80c804:	f800283a 	ret
  80c808:	2906b03a 	or	r3,r5,r4
  80c80c:	183ffc1e 	bne	r3,zero,80c800 <__eqdf2+0x40>
  80c810:	1081ffd8 	cmpnei	r2,r2,2047
  80c814:	103ffa1e 	bne	r2,zero,80c800 <__eqdf2+0x40>
  80c818:	398eb03a 	or	r7,r7,r6
  80c81c:	383ff81e 	bne	r7,zero,80c800 <__eqdf2+0x40>
  80c820:	21bff71e 	bne	r4,r6,80c800 <__eqdf2+0x40>
  80c824:	52c00426 	beq	r10,r11,80c838 <__eqdf2+0x78>
  80c828:	403ff51e 	bne	r8,zero,80c800 <__eqdf2+0x40>
  80c82c:	290ab03a 	or	r5,r5,r4
  80c830:	2804c03a 	cmpne	r2,r5,zero
  80c834:	f800283a 	ret
  80c838:	0005883a 	mov	r2,zero
  80c83c:	f800283a 	ret

0080c840 <__gedf2>:
  80c840:	2810d53a 	srli	r8,r5,20
  80c844:	3812d53a 	srli	r9,r7,20
  80c848:	00c00434 	movhi	r3,16
  80c84c:	4201ffcc 	andi	r8,r8,2047
  80c850:	18ffffc4 	addi	r3,r3,-1
  80c854:	4281ffd8 	cmpnei	r10,r8,2047
  80c858:	2816d7fa 	srli	r11,r5,31
  80c85c:	3804d7fa 	srli	r2,r7,31
  80c860:	28ca703a 	and	r5,r5,r3
  80c864:	38ce703a 	and	r7,r7,r3
  80c868:	48c1ffcc 	andi	r3,r9,2047
  80c86c:	50000b26 	beq	r10,zero,80c89c <__gedf2+0x5c>
  80c870:	1a41ffd8 	cmpnei	r9,r3,2047
  80c874:	48000d26 	beq	r9,zero,80c8ac <__gedf2+0x6c>
  80c878:	4000191e 	bne	r8,zero,80c8e0 <__gedf2+0xa0>
  80c87c:	2914b03a 	or	r10,r5,r4
  80c880:	5013003a 	cmpeq	r9,r10,zero
  80c884:	1800131e 	bne	r3,zero,80c8d4 <__gedf2+0x94>
  80c888:	3998b03a 	or	r12,r7,r6
  80c88c:	6000111e 	bne	r12,zero,80c8d4 <__gedf2+0x94>
  80c890:	50000a1e 	bne	r10,zero,80c8bc <__gedf2+0x7c>
  80c894:	0005883a 	mov	r2,zero
  80c898:	f800283a 	ret
  80c89c:	2912b03a 	or	r9,r5,r4
  80c8a0:	48001e1e 	bne	r9,zero,80c91c <__gedf2+0xdc>
  80c8a4:	1a41ffe0 	cmpeqi	r9,r3,2047
  80c8a8:	48000d26 	beq	r9,zero,80c8e0 <__gedf2+0xa0>
  80c8ac:	3992b03a 	or	r9,r7,r6
  80c8b0:	48001a1e 	bne	r9,zero,80c91c <__gedf2+0xdc>
  80c8b4:	40000526 	beq	r8,zero,80c8cc <__gedf2+0x8c>
  80c8b8:	58800d26 	beq	r11,r2,80c8f0 <__gedf2+0xb0>
  80c8bc:	00800044 	movi	r2,1
  80c8c0:	58000626 	beq	r11,zero,80c8dc <__gedf2+0x9c>
  80c8c4:	00bfffc4 	movi	r2,-1
  80c8c8:	f800283a 	ret
  80c8cc:	2912b03a 	or	r9,r5,r4
  80c8d0:	4813003a 	cmpeq	r9,r9,zero
  80c8d4:	483ff826 	beq	r9,zero,80c8b8 <__gedf2+0x78>
  80c8d8:	103ffa26 	beq	r2,zero,80c8c4 <__gedf2+0x84>
  80c8dc:	f800283a 	ret
  80c8e0:	183ff51e 	bne	r3,zero,80c8b8 <__gedf2+0x78>
  80c8e4:	3992b03a 	or	r9,r7,r6
  80c8e8:	483ff31e 	bne	r9,zero,80c8b8 <__gedf2+0x78>
  80c8ec:	003ff306 	br	80c8bc <__gedf2+0x7c>
  80c8f0:	1a000716 	blt	r3,r8,80c910 <__gedf2+0xd0>
  80c8f4:	40fff816 	blt	r8,r3,80c8d8 <__gedf2+0x98>
  80c8f8:	397ff036 	bltu	r7,r5,80c8bc <__gedf2+0x7c>
  80c8fc:	29c00926 	beq	r5,r7,80c924 <__gedf2+0xe4>
  80c900:	29ffe42e 	bgeu	r5,r7,80c894 <__gedf2+0x54>
  80c904:	583fef26 	beq	r11,zero,80c8c4 <__gedf2+0x84>
  80c908:	5805883a 	mov	r2,r11
  80c90c:	f800283a 	ret
  80c910:	103fec1e 	bne	r2,zero,80c8c4 <__gedf2+0x84>
  80c914:	00800044 	movi	r2,1
  80c918:	f800283a 	ret
  80c91c:	00bfff84 	movi	r2,-2
  80c920:	f800283a 	ret
  80c924:	313fe536 	bltu	r6,r4,80c8bc <__gedf2+0x7c>
  80c928:	21bfda2e 	bgeu	r4,r6,80c894 <__gedf2+0x54>
  80c92c:	003ff506 	br	80c904 <__gedf2+0xc4>

0080c930 <__ledf2>:
  80c930:	2810d53a 	srli	r8,r5,20
  80c934:	3812d53a 	srli	r9,r7,20
  80c938:	00c00434 	movhi	r3,16
  80c93c:	4201ffcc 	andi	r8,r8,2047
  80c940:	18ffffc4 	addi	r3,r3,-1
  80c944:	4281ffd8 	cmpnei	r10,r8,2047
  80c948:	2816d7fa 	srli	r11,r5,31
  80c94c:	3804d7fa 	srli	r2,r7,31
  80c950:	28ca703a 	and	r5,r5,r3
  80c954:	38ce703a 	and	r7,r7,r3
  80c958:	48c1ffcc 	andi	r3,r9,2047
  80c95c:	50000b26 	beq	r10,zero,80c98c <__ledf2+0x5c>
  80c960:	1a41ffd8 	cmpnei	r9,r3,2047
  80c964:	48000d26 	beq	r9,zero,80c99c <__ledf2+0x6c>
  80c968:	40001b1e 	bne	r8,zero,80c9d8 <__ledf2+0xa8>
  80c96c:	2914b03a 	or	r10,r5,r4
  80c970:	5013003a 	cmpeq	r9,r10,zero
  80c974:	18000e1e 	bne	r3,zero,80c9b0 <__ledf2+0x80>
  80c978:	3998b03a 	or	r12,r7,r6
  80c97c:	60000c1e 	bne	r12,zero,80c9b0 <__ledf2+0x80>
  80c980:	50000d1e 	bne	r10,zero,80c9b8 <__ledf2+0x88>
  80c984:	0005883a 	mov	r2,zero
  80c988:	f800283a 	ret
  80c98c:	2912b03a 	or	r9,r5,r4
  80c990:	48000d1e 	bne	r9,zero,80c9c8 <__ledf2+0x98>
  80c994:	1a41ffe0 	cmpeqi	r9,r3,2047
  80c998:	48000f26 	beq	r9,zero,80c9d8 <__ledf2+0xa8>
  80c99c:	3992b03a 	or	r9,r7,r6
  80c9a0:	4800091e 	bne	r9,zero,80c9c8 <__ledf2+0x98>
  80c9a4:	4000031e 	bne	r8,zero,80c9b4 <__ledf2+0x84>
  80c9a8:	2912b03a 	or	r9,r5,r4
  80c9ac:	4813003a 	cmpeq	r9,r9,zero
  80c9b0:	4800071e 	bne	r9,zero,80c9d0 <__ledf2+0xa0>
  80c9b4:	58800c26 	beq	r11,r2,80c9e8 <__ledf2+0xb8>
  80c9b8:	00800044 	movi	r2,1
  80c9bc:	58000526 	beq	r11,zero,80c9d4 <__ledf2+0xa4>
  80c9c0:	00bfffc4 	movi	r2,-1
  80c9c4:	f800283a 	ret
  80c9c8:	00800084 	movi	r2,2
  80c9cc:	f800283a 	ret
  80c9d0:	103ffb26 	beq	r2,zero,80c9c0 <__ledf2+0x90>
  80c9d4:	f800283a 	ret
  80c9d8:	183ff61e 	bne	r3,zero,80c9b4 <__ledf2+0x84>
  80c9dc:	3992b03a 	or	r9,r7,r6
  80c9e0:	483ff41e 	bne	r9,zero,80c9b4 <__ledf2+0x84>
  80c9e4:	003ff406 	br	80c9b8 <__ledf2+0x88>
  80c9e8:	1a00030e 	bge	r3,r8,80c9f8 <__ledf2+0xc8>
  80c9ec:	103ff41e 	bne	r2,zero,80c9c0 <__ledf2+0x90>
  80c9f0:	00800044 	movi	r2,1
  80c9f4:	f800283a 	ret
  80c9f8:	40fff516 	blt	r8,r3,80c9d0 <__ledf2+0xa0>
  80c9fc:	397fee36 	bltu	r7,r5,80c9b8 <__ledf2+0x88>
  80ca00:	29c00426 	beq	r5,r7,80ca14 <__ledf2+0xe4>
  80ca04:	29ffdf2e 	bgeu	r5,r7,80c984 <__ledf2+0x54>
  80ca08:	583fed26 	beq	r11,zero,80c9c0 <__ledf2+0x90>
  80ca0c:	5805883a 	mov	r2,r11
  80ca10:	f800283a 	ret
  80ca14:	313fe836 	bltu	r6,r4,80c9b8 <__ledf2+0x88>
  80ca18:	21bfda2e 	bgeu	r4,r6,80c984 <__ledf2+0x54>
  80ca1c:	003ffa06 	br	80ca08 <__ledf2+0xd8>

0080ca20 <__muldf3>:
  80ca20:	2810d53a 	srli	r8,r5,20
  80ca24:	defff004 	addi	sp,sp,-64
  80ca28:	00800434 	movhi	r2,16
  80ca2c:	df000e15 	stw	fp,56(sp)
  80ca30:	dd000a15 	stw	r20,40(sp)
  80ca34:	dcc00915 	stw	r19,36(sp)
  80ca38:	dc400715 	stw	r17,28(sp)
  80ca3c:	10bfffc4 	addi	r2,r2,-1
  80ca40:	dfc00f15 	stw	ra,60(sp)
  80ca44:	ddc00d15 	stw	r23,52(sp)
  80ca48:	dd800c15 	stw	r22,48(sp)
  80ca4c:	dd400b15 	stw	r21,44(sp)
  80ca50:	dc800815 	stw	r18,32(sp)
  80ca54:	dc000615 	stw	r16,24(sp)
  80ca58:	4201ffcc 	andi	r8,r8,2047
  80ca5c:	2828d7fa 	srli	r20,r5,31
  80ca60:	2023883a 	mov	r17,r4
  80ca64:	3039883a 	mov	fp,r6
  80ca68:	28a6703a 	and	r19,r5,r2
  80ca6c:	40005a26 	beq	r8,zero,80cbd8 <__muldf3+0x1b8>
  80ca70:	4081ffe0 	cmpeqi	r2,r8,2047
  80ca74:	10006c1e 	bne	r2,zero,80cc28 <__muldf3+0x208>
  80ca78:	980a90fa 	slli	r5,r19,3
  80ca7c:	2026d77a 	srli	r19,r4,29
  80ca80:	202490fa 	slli	r18,r4,3
  80ca84:	423f0044 	addi	r8,r8,-1023
  80ca88:	9966b03a 	or	r19,r19,r5
  80ca8c:	9cc02034 	orhi	r19,r19,128
  80ca90:	002b883a 	mov	r21,zero
  80ca94:	002d883a 	mov	r22,zero
  80ca98:	3804d53a 	srli	r2,r7,20
  80ca9c:	00c00434 	movhi	r3,16
  80caa0:	18ffffc4 	addi	r3,r3,-1
  80caa4:	1081ffcc 	andi	r2,r2,2047
  80caa8:	382ed7fa 	srli	r23,r7,31
  80caac:	38e0703a 	and	r16,r7,r3
  80cab0:	10006426 	beq	r2,zero,80cc44 <__muldf3+0x224>
  80cab4:	10c1ffe0 	cmpeqi	r3,r2,2047
  80cab8:	1800211e 	bne	r3,zero,80cb40 <__muldf3+0x120>
  80cabc:	e008d77a 	srli	r4,fp,29
  80cac0:	802090fa 	slli	r16,r16,3
  80cac4:	e02290fa 	slli	r17,fp,3
  80cac8:	10bf0044 	addi	r2,r2,-1023
  80cacc:	2420b03a 	or	r16,r4,r16
  80cad0:	84002034 	orhi	r16,r16,128
  80cad4:	4091883a 	add	r8,r8,r2
  80cad8:	0009883a 	mov	r4,zero
  80cadc:	a8800428 	cmpgeui	r2,r21,16
  80cae0:	a5ccf03a 	xor	r6,r20,r23
  80cae4:	41c00044 	addi	r7,r8,1
  80cae8:	10006d1e 	bne	r2,zero,80cca0 <__muldf3+0x280>
  80caec:	a80490ba 	slli	r2,r21,2
  80caf0:	00c02074 	movhi	r3,129
  80caf4:	10c7883a 	add	r3,r2,r3
  80caf8:	18b2c017 	ldw	r2,-13568(r3)
  80cafc:	1000683a 	jmp	r2
  80cb00:	0080cca0 	cmpeqi	r2,zero,818
  80cb04:	0080cb60 	cmpeqi	r2,zero,813
  80cb08:	0080cb60 	cmpeqi	r2,zero,813
  80cb0c:	0080cb5c 	xori	r2,zero,813
  80cb10:	0080cb6c 	andhi	r2,zero,813
  80cb14:	0080cb6c 	andhi	r2,zero,813
  80cb18:	0080d01c 	xori	r2,zero,832
  80cb1c:	0080cb5c 	xori	r2,zero,813
  80cb20:	0080cb6c 	andhi	r2,zero,813
  80cb24:	0080d01c 	xori	r2,zero,832
  80cb28:	0080cb6c 	andhi	r2,zero,813
  80cb2c:	0080cb5c 	xori	r2,zero,813
  80cb30:	0080cfcc 	andi	r2,zero,831
  80cb34:	0080cfcc 	andi	r2,zero,831
  80cb38:	0080cfcc 	andi	r2,zero,831
  80cb3c:	0080d0a8 	cmpgeui	r2,zero,834
  80cb40:	e422b03a 	or	r17,fp,r16
  80cb44:	4201ffc4 	addi	r8,r8,2047
  80cb48:	8801221e 	bne	r17,zero,80cfd4 <__muldf3+0x5b4>
  80cb4c:	ad400094 	ori	r21,r21,2
  80cb50:	0021883a 	mov	r16,zero
  80cb54:	01000084 	movi	r4,2
  80cb58:	003fe006 	br	80cadc <__muldf3+0xbc>
  80cb5c:	b80d883a 	mov	r6,r23
  80cb60:	8027883a 	mov	r19,r16
  80cb64:	8825883a 	mov	r18,r17
  80cb68:	202d883a 	mov	r22,r4
  80cb6c:	b08000a0 	cmpeqi	r2,r22,2
  80cb70:	1000471e 	bne	r2,zero,80cc90 <__muldf3+0x270>
  80cb74:	b08000e0 	cmpeqi	r2,r22,3
  80cb78:	10018e1e 	bne	r2,zero,80d1b4 <__muldf3+0x794>
  80cb7c:	b0800060 	cmpeqi	r2,r22,1
  80cb80:	1000f826 	beq	r2,zero,80cf64 <__muldf3+0x544>
  80cb84:	0007883a 	mov	r3,zero
  80cb88:	0027883a 	mov	r19,zero
  80cb8c:	0025883a 	mov	r18,zero
  80cb90:	1806953a 	slli	r3,r3,20
  80cb94:	31803fcc 	andi	r6,r6,255
  80cb98:	300c97fa 	slli	r6,r6,31
  80cb9c:	1cc6b03a 	or	r3,r3,r19
  80cba0:	9005883a 	mov	r2,r18
  80cba4:	1986b03a 	or	r3,r3,r6
  80cba8:	dfc00f17 	ldw	ra,60(sp)
  80cbac:	df000e17 	ldw	fp,56(sp)
  80cbb0:	ddc00d17 	ldw	r23,52(sp)
  80cbb4:	dd800c17 	ldw	r22,48(sp)
  80cbb8:	dd400b17 	ldw	r21,44(sp)
  80cbbc:	dd000a17 	ldw	r20,40(sp)
  80cbc0:	dcc00917 	ldw	r19,36(sp)
  80cbc4:	dc800817 	ldw	r18,32(sp)
  80cbc8:	dc400717 	ldw	r17,28(sp)
  80cbcc:	dc000617 	ldw	r16,24(sp)
  80cbd0:	dec01004 	addi	sp,sp,64
  80cbd4:	f800283a 	ret
  80cbd8:	9924b03a 	or	r18,r19,r4
  80cbdc:	90010a26 	beq	r18,zero,80d008 <__muldf3+0x5e8>
  80cbe0:	d9c00015 	stw	r7,0(sp)
  80cbe4:	98014d26 	beq	r19,zero,80d11c <__muldf3+0x6fc>
  80cbe8:	9809883a 	mov	r4,r19
  80cbec:	0800f380 	call	800f38 <__clzsi2>
  80cbf0:	d9c00017 	ldw	r7,0(sp)
  80cbf4:	113ffd44 	addi	r4,r2,-11
  80cbf8:	00c00744 	movi	r3,29
  80cbfc:	14bffe04 	addi	r18,r2,-8
  80cc00:	1907c83a 	sub	r3,r3,r4
  80cc04:	9ca6983a 	sll	r19,r19,r18
  80cc08:	88c6d83a 	srl	r3,r17,r3
  80cc0c:	8ca4983a 	sll	r18,r17,r18
  80cc10:	1ce6b03a 	or	r19,r3,r19
  80cc14:	023f0344 	movi	r8,-1011
  80cc18:	4091c83a 	sub	r8,r8,r2
  80cc1c:	002b883a 	mov	r21,zero
  80cc20:	002d883a 	mov	r22,zero
  80cc24:	003f9c06 	br	80ca98 <__muldf3+0x78>
  80cc28:	9924b03a 	or	r18,r19,r4
  80cc2c:	9000f11e 	bne	r18,zero,80cff4 <__muldf3+0x5d4>
  80cc30:	0027883a 	mov	r19,zero
  80cc34:	05400204 	movi	r21,8
  80cc38:	0201ffc4 	movi	r8,2047
  80cc3c:	05800084 	movi	r22,2
  80cc40:	003f9506 	br	80ca98 <__muldf3+0x78>
  80cc44:	e422b03a 	or	r17,fp,r16
  80cc48:	8800e626 	beq	r17,zero,80cfe4 <__muldf3+0x5c4>
  80cc4c:	da000015 	stw	r8,0(sp)
  80cc50:	80012626 	beq	r16,zero,80d0ec <__muldf3+0x6cc>
  80cc54:	8009883a 	mov	r4,r16
  80cc58:	0800f380 	call	800f38 <__clzsi2>
  80cc5c:	da000017 	ldw	r8,0(sp)
  80cc60:	117ffd44 	addi	r5,r2,-11
  80cc64:	01000744 	movi	r4,29
  80cc68:	147ffe04 	addi	r17,r2,-8
  80cc6c:	2149c83a 	sub	r4,r4,r5
  80cc70:	8460983a 	sll	r16,r16,r17
  80cc74:	e108d83a 	srl	r4,fp,r4
  80cc78:	e462983a 	sll	r17,fp,r17
  80cc7c:	2420b03a 	or	r16,r4,r16
  80cc80:	4091c83a 	sub	r8,r8,r2
  80cc84:	423f0344 	addi	r8,r8,-1011
  80cc88:	0009883a 	mov	r4,zero
  80cc8c:	003f9306 	br	80cadc <__muldf3+0xbc>
  80cc90:	00c1ffc4 	movi	r3,2047
  80cc94:	0027883a 	mov	r19,zero
  80cc98:	0025883a 	mov	r18,zero
  80cc9c:	003fbc06 	br	80cb90 <__muldf3+0x170>
  80cca0:	9028d43a 	srli	r20,r18,16
  80cca4:	8f3fffcc 	andi	fp,r17,65535
  80cca8:	957fffcc 	andi	r21,r18,65535
  80ccac:	a80b883a 	mov	r5,r21
  80ccb0:	e009883a 	mov	r4,fp
  80ccb4:	d9800315 	stw	r6,12(sp)
  80ccb8:	da000215 	stw	r8,8(sp)
  80ccbc:	d9c00115 	stw	r7,4(sp)
  80ccc0:	8822d43a 	srli	r17,r17,16
  80ccc4:	0800f8c0 	call	800f8c <__mulsi3>
  80ccc8:	e00b883a 	mov	r5,fp
  80cccc:	a009883a 	mov	r4,r20
  80ccd0:	102d883a 	mov	r22,r2
  80ccd4:	0800f8c0 	call	800f8c <__mulsi3>
  80ccd8:	880b883a 	mov	r5,r17
  80ccdc:	a009883a 	mov	r4,r20
  80cce0:	102f883a 	mov	r23,r2
  80cce4:	0800f8c0 	call	800f8c <__mulsi3>
  80cce8:	a80b883a 	mov	r5,r21
  80ccec:	8809883a 	mov	r4,r17
  80ccf0:	d8800015 	stw	r2,0(sp)
  80ccf4:	0800f8c0 	call	800f8c <__mulsi3>
  80ccf8:	b006d43a 	srli	r3,r22,16
  80ccfc:	15e5883a 	add	r18,r2,r23
  80cd00:	d9c00117 	ldw	r7,4(sp)
  80cd04:	1c87883a 	add	r3,r3,r18
  80cd08:	da000217 	ldw	r8,8(sp)
  80cd0c:	d9800317 	ldw	r6,12(sp)
  80cd10:	1dc0042e 	bgeu	r3,r23,80cd24 <__muldf3+0x304>
  80cd14:	d9000017 	ldw	r4,0(sp)
  80cd18:	00800074 	movhi	r2,1
  80cd1c:	2085883a 	add	r2,r4,r2
  80cd20:	d8800015 	stw	r2,0(sp)
  80cd24:	1804943a 	slli	r2,r3,16
  80cd28:	85ffffcc 	andi	r23,r16,65535
  80cd2c:	b5bfffcc 	andi	r22,r22,65535
  80cd30:	1585883a 	add	r2,r2,r22
  80cd34:	a80b883a 	mov	r5,r21
  80cd38:	b809883a 	mov	r4,r23
  80cd3c:	1824d43a 	srli	r18,r3,16
  80cd40:	d9800515 	stw	r6,20(sp)
  80cd44:	da000415 	stw	r8,16(sp)
  80cd48:	d9c00315 	stw	r7,12(sp)
  80cd4c:	8020d43a 	srli	r16,r16,16
  80cd50:	d8800115 	stw	r2,4(sp)
  80cd54:	0800f8c0 	call	800f8c <__mulsi3>
  80cd58:	a009883a 	mov	r4,r20
  80cd5c:	b80b883a 	mov	r5,r23
  80cd60:	d8800215 	stw	r2,8(sp)
  80cd64:	0800f8c0 	call	800f8c <__mulsi3>
  80cd68:	a009883a 	mov	r4,r20
  80cd6c:	800b883a 	mov	r5,r16
  80cd70:	102d883a 	mov	r22,r2
  80cd74:	0800f8c0 	call	800f8c <__mulsi3>
  80cd78:	a80b883a 	mov	r5,r21
  80cd7c:	8009883a 	mov	r4,r16
  80cd80:	1029883a 	mov	r20,r2
  80cd84:	0800f8c0 	call	800f8c <__mulsi3>
  80cd88:	da800217 	ldw	r10,8(sp)
  80cd8c:	1585883a 	add	r2,r2,r22
  80cd90:	d9c00317 	ldw	r7,12(sp)
  80cd94:	5006d43a 	srli	r3,r10,16
  80cd98:	da000417 	ldw	r8,16(sp)
  80cd9c:	d9800517 	ldw	r6,20(sp)
  80cda0:	1887883a 	add	r3,r3,r2
  80cda4:	1d80022e 	bgeu	r3,r22,80cdb0 <__muldf3+0x390>
  80cda8:	00800074 	movhi	r2,1
  80cdac:	a0a9883a 	add	r20,r20,r2
  80cdb0:	1804d43a 	srli	r2,r3,16
  80cdb4:	1806943a 	slli	r3,r3,16
  80cdb8:	982cd43a 	srli	r22,r19,16
  80cdbc:	9d7fffcc 	andi	r21,r19,65535
  80cdc0:	e009883a 	mov	r4,fp
  80cdc4:	54ffffcc 	andi	r19,r10,65535
  80cdc8:	a80b883a 	mov	r5,r21
  80cdcc:	1ce7883a 	add	r19,r3,r19
  80cdd0:	d9800515 	stw	r6,20(sp)
  80cdd4:	da000415 	stw	r8,16(sp)
  80cdd8:	d9c00315 	stw	r7,12(sp)
  80cddc:	1529883a 	add	r20,r2,r20
  80cde0:	0800f8c0 	call	800f8c <__mulsi3>
  80cde4:	e00b883a 	mov	r5,fp
  80cde8:	b009883a 	mov	r4,r22
  80cdec:	d8800215 	stw	r2,8(sp)
  80cdf0:	0800f8c0 	call	800f8c <__mulsi3>
  80cdf4:	8809883a 	mov	r4,r17
  80cdf8:	b00b883a 	mov	r5,r22
  80cdfc:	1039883a 	mov	fp,r2
  80ce00:	0800f8c0 	call	800f8c <__mulsi3>
  80ce04:	8809883a 	mov	r4,r17
  80ce08:	a80b883a 	mov	r5,r21
  80ce0c:	1023883a 	mov	r17,r2
  80ce10:	0800f8c0 	call	800f8c <__mulsi3>
  80ce14:	d8c00217 	ldw	r3,8(sp)
  80ce18:	1705883a 	add	r2,r2,fp
  80ce1c:	d9c00317 	ldw	r7,12(sp)
  80ce20:	1808d43a 	srli	r4,r3,16
  80ce24:	da000417 	ldw	r8,16(sp)
  80ce28:	d9800517 	ldw	r6,20(sp)
  80ce2c:	2089883a 	add	r4,r4,r2
  80ce30:	94e5883a 	add	r18,r18,r19
  80ce34:	2700022e 	bgeu	r4,fp,80ce40 <__muldf3+0x420>
  80ce38:	00800074 	movhi	r2,1
  80ce3c:	88a3883a 	add	r17,r17,r2
  80ce40:	2004d43a 	srli	r2,r4,16
  80ce44:	2038943a 	slli	fp,r4,16
  80ce48:	18ffffcc 	andi	r3,r3,65535
  80ce4c:	b809883a 	mov	r4,r23
  80ce50:	a80b883a 	mov	r5,r21
  80ce54:	d9800415 	stw	r6,16(sp)
  80ce58:	da000315 	stw	r8,12(sp)
  80ce5c:	d9c00215 	stw	r7,8(sp)
  80ce60:	e0f9883a 	add	fp,fp,r3
  80ce64:	1463883a 	add	r17,r2,r17
  80ce68:	0800f8c0 	call	800f8c <__mulsi3>
  80ce6c:	b80b883a 	mov	r5,r23
  80ce70:	b009883a 	mov	r4,r22
  80ce74:	102f883a 	mov	r23,r2
  80ce78:	0800f8c0 	call	800f8c <__mulsi3>
  80ce7c:	b00b883a 	mov	r5,r22
  80ce80:	8009883a 	mov	r4,r16
  80ce84:	102d883a 	mov	r22,r2
  80ce88:	0800f8c0 	call	800f8c <__mulsi3>
  80ce8c:	a80b883a 	mov	r5,r21
  80ce90:	8009883a 	mov	r4,r16
  80ce94:	1021883a 	mov	r16,r2
  80ce98:	0800f8c0 	call	800f8c <__mulsi3>
  80ce9c:	b80ad43a 	srli	r5,r23,16
  80cea0:	1585883a 	add	r2,r2,r22
  80cea4:	d9c00217 	ldw	r7,8(sp)
  80cea8:	288b883a 	add	r5,r5,r2
  80ceac:	da000317 	ldw	r8,12(sp)
  80ceb0:	d9800417 	ldw	r6,16(sp)
  80ceb4:	2d80022e 	bgeu	r5,r22,80cec0 <__muldf3+0x4a0>
  80ceb8:	00800074 	movhi	r2,1
  80cebc:	80a1883a 	add	r16,r16,r2
  80cec0:	2806943a 	slli	r3,r5,16
  80cec4:	d8800017 	ldw	r2,0(sp)
  80cec8:	bdffffcc 	andi	r23,r23,65535
  80cecc:	1dc7883a 	add	r3,r3,r23
  80ced0:	90ab883a 	add	r21,r18,r2
  80ced4:	acd5803a 	cmpltu	r10,r21,r19
  80ced8:	1d07883a 	add	r3,r3,r20
  80cedc:	af2b883a 	add	r21,r21,fp
  80cee0:	1a97883a 	add	r11,r3,r10
  80cee4:	af09803a 	cmpltu	r4,r21,fp
  80cee8:	2826d43a 	srli	r19,r5,16
  80ceec:	5c53883a 	add	r9,r11,r17
  80cef0:	4905883a 	add	r2,r9,r4
  80cef4:	1d29803a 	cmpltu	r20,r3,r20
  80cef8:	5a95803a 	cmpltu	r10,r11,r10
  80cefc:	1109803a 	cmpltu	r4,r2,r4
  80cf00:	a2a8b03a 	or	r20,r20,r10
  80cf04:	4c63803a 	cmpltu	r17,r9,r17
  80cf08:	a4e7883a 	add	r19,r20,r19
  80cf0c:	8908b03a 	or	r4,r17,r4
  80cf10:	a824927a 	slli	r18,r21,9
  80cf14:	d8c00117 	ldw	r3,4(sp)
  80cf18:	9927883a 	add	r19,r19,r4
  80cf1c:	9c27883a 	add	r19,r19,r16
  80cf20:	9826927a 	slli	r19,r19,9
  80cf24:	a82ad5fa 	srli	r21,r21,23
  80cf28:	100ad5fa 	srli	r5,r2,23
  80cf2c:	90e4b03a 	or	r18,r18,r3
  80cf30:	1004927a 	slli	r2,r2,9
  80cf34:	9024c03a 	cmpne	r18,r18,zero
  80cf38:	9564b03a 	or	r18,r18,r21
  80cf3c:	98c0402c 	andhi	r3,r19,256
  80cf40:	90a4b03a 	or	r18,r18,r2
  80cf44:	9966b03a 	or	r19,r19,r5
  80cf48:	18007f26 	beq	r3,zero,80d148 <__muldf3+0x728>
  80cf4c:	9006d07a 	srli	r3,r18,1
  80cf50:	980497fa 	slli	r2,r19,31
  80cf54:	9480004c 	andi	r18,r18,1
  80cf58:	9826d07a 	srli	r19,r19,1
  80cf5c:	1c86b03a 	or	r3,r3,r18
  80cf60:	18a4b03a 	or	r18,r3,r2
  80cf64:	3900ffc4 	addi	r4,r7,1023
  80cf68:	0100320e 	bge	zero,r4,80d034 <__muldf3+0x614>
  80cf6c:	908001cc 	andi	r2,r18,7
  80cf70:	10000726 	beq	r2,zero,80cf90 <__muldf3+0x570>
  80cf74:	908003cc 	andi	r2,r18,15
  80cf78:	10800120 	cmpeqi	r2,r2,4
  80cf7c:	1000041e 	bne	r2,zero,80cf90 <__muldf3+0x570>
  80cf80:	90800104 	addi	r2,r18,4
  80cf84:	14a5803a 	cmpltu	r18,r2,r18
  80cf88:	9ca7883a 	add	r19,r19,r18
  80cf8c:	1025883a 	mov	r18,r2
  80cf90:	9880402c 	andhi	r2,r19,256
  80cf94:	10000426 	beq	r2,zero,80cfa8 <__muldf3+0x588>
  80cf98:	00bfc034 	movhi	r2,65280
  80cf9c:	10bfffc4 	addi	r2,r2,-1
  80cfa0:	98a6703a 	and	r19,r19,r2
  80cfa4:	39010004 	addi	r4,r7,1024
  80cfa8:	2081ffc8 	cmpgei	r2,r4,2047
  80cfac:	103f381e 	bne	r2,zero,80cc90 <__muldf3+0x270>
  80cfb0:	9804977a 	slli	r2,r19,29
  80cfb4:	9024d0fa 	srli	r18,r18,3
  80cfb8:	9826927a 	slli	r19,r19,9
  80cfbc:	20c1ffcc 	andi	r3,r4,2047
  80cfc0:	14a4b03a 	or	r18,r2,r18
  80cfc4:	9826d33a 	srli	r19,r19,12
  80cfc8:	003ef106 	br	80cb90 <__muldf3+0x170>
  80cfcc:	a00d883a 	mov	r6,r20
  80cfd0:	003ee606 	br	80cb6c <__muldf3+0x14c>
  80cfd4:	ad4000d4 	ori	r21,r21,3
  80cfd8:	e023883a 	mov	r17,fp
  80cfdc:	010000c4 	movi	r4,3
  80cfe0:	003ebe06 	br	80cadc <__muldf3+0xbc>
  80cfe4:	ad400054 	ori	r21,r21,1
  80cfe8:	0021883a 	mov	r16,zero
  80cfec:	01000044 	movi	r4,1
  80cff0:	003eba06 	br	80cadc <__muldf3+0xbc>
  80cff4:	2025883a 	mov	r18,r4
  80cff8:	05400304 	movi	r21,12
  80cffc:	0201ffc4 	movi	r8,2047
  80d000:	058000c4 	movi	r22,3
  80d004:	003ea406 	br	80ca98 <__muldf3+0x78>
  80d008:	0027883a 	mov	r19,zero
  80d00c:	05400104 	movi	r21,4
  80d010:	0011883a 	mov	r8,zero
  80d014:	05800044 	movi	r22,1
  80d018:	003e9f06 	br	80ca98 <__muldf3+0x78>
  80d01c:	04c00434 	movhi	r19,16
  80d020:	000d883a 	mov	r6,zero
  80d024:	9cffffc4 	addi	r19,r19,-1
  80d028:	04bfffc4 	movi	r18,-1
  80d02c:	00c1ffc4 	movi	r3,2047
  80d030:	003ed706 	br	80cb90 <__muldf3+0x170>
  80d034:	00800044 	movi	r2,1
  80d038:	1105c83a 	sub	r2,r2,r4
  80d03c:	10c00e48 	cmpgei	r3,r2,57
  80d040:	183ed01e 	bne	r3,zero,80cb84 <__muldf3+0x164>
  80d044:	10c00808 	cmpgei	r3,r2,32
  80d048:	1800411e 	bne	r3,zero,80d150 <__muldf3+0x730>
  80d04c:	39c10784 	addi	r7,r7,1054
  80d050:	99c6983a 	sll	r3,r19,r7
  80d054:	9088d83a 	srl	r4,r18,r2
  80d058:	91ce983a 	sll	r7,r18,r7
  80d05c:	98a6d83a 	srl	r19,r19,r2
  80d060:	1904b03a 	or	r2,r3,r4
  80d064:	3824c03a 	cmpne	r18,r7,zero
  80d068:	1484b03a 	or	r2,r2,r18
  80d06c:	10c001cc 	andi	r3,r2,7
  80d070:	18000726 	beq	r3,zero,80d090 <__muldf3+0x670>
  80d074:	10c003cc 	andi	r3,r2,15
  80d078:	18c00120 	cmpeqi	r3,r3,4
  80d07c:	1800041e 	bne	r3,zero,80d090 <__muldf3+0x670>
  80d080:	10c00104 	addi	r3,r2,4
  80d084:	1885803a 	cmpltu	r2,r3,r2
  80d088:	98a7883a 	add	r19,r19,r2
  80d08c:	1805883a 	mov	r2,r3
  80d090:	98c0202c 	andhi	r3,r19,128
  80d094:	18004326 	beq	r3,zero,80d1a4 <__muldf3+0x784>
  80d098:	00c00044 	movi	r3,1
  80d09c:	0027883a 	mov	r19,zero
  80d0a0:	0025883a 	mov	r18,zero
  80d0a4:	003eba06 	br	80cb90 <__muldf3+0x170>
  80d0a8:	9880022c 	andhi	r2,r19,8
  80d0ac:	10000926 	beq	r2,zero,80d0d4 <__muldf3+0x6b4>
  80d0b0:	8080022c 	andhi	r2,r16,8
  80d0b4:	1000071e 	bne	r2,zero,80d0d4 <__muldf3+0x6b4>
  80d0b8:	00800434 	movhi	r2,16
  80d0bc:	84c00234 	orhi	r19,r16,8
  80d0c0:	10bfffc4 	addi	r2,r2,-1
  80d0c4:	98a6703a 	and	r19,r19,r2
  80d0c8:	b80d883a 	mov	r6,r23
  80d0cc:	8825883a 	mov	r18,r17
  80d0d0:	003fd606 	br	80d02c <__muldf3+0x60c>
  80d0d4:	00800434 	movhi	r2,16
  80d0d8:	9cc00234 	orhi	r19,r19,8
  80d0dc:	10bfffc4 	addi	r2,r2,-1
  80d0e0:	98a6703a 	and	r19,r19,r2
  80d0e4:	a00d883a 	mov	r6,r20
  80d0e8:	003fd006 	br	80d02c <__muldf3+0x60c>
  80d0ec:	e009883a 	mov	r4,fp
  80d0f0:	0800f380 	call	800f38 <__clzsi2>
  80d0f4:	11400544 	addi	r5,r2,21
  80d0f8:	29000748 	cmpgei	r4,r5,29
  80d0fc:	1007883a 	mov	r3,r2
  80d100:	da000017 	ldw	r8,0(sp)
  80d104:	10800804 	addi	r2,r2,32
  80d108:	203ed626 	beq	r4,zero,80cc64 <__muldf3+0x244>
  80d10c:	1c3ffe04 	addi	r16,r3,-8
  80d110:	e420983a 	sll	r16,fp,r16
  80d114:	0023883a 	mov	r17,zero
  80d118:	003ed906 	br	80cc80 <__muldf3+0x260>
  80d11c:	0800f380 	call	800f38 <__clzsi2>
  80d120:	11000544 	addi	r4,r2,21
  80d124:	21400748 	cmpgei	r5,r4,29
  80d128:	1007883a 	mov	r3,r2
  80d12c:	d9c00017 	ldw	r7,0(sp)
  80d130:	10800804 	addi	r2,r2,32
  80d134:	283eb026 	beq	r5,zero,80cbf8 <__muldf3+0x1d8>
  80d138:	1cfffe04 	addi	r19,r3,-8
  80d13c:	8ce6983a 	sll	r19,r17,r19
  80d140:	0025883a 	mov	r18,zero
  80d144:	003eb306 	br	80cc14 <__muldf3+0x1f4>
  80d148:	400f883a 	mov	r7,r8
  80d14c:	003f8506 	br	80cf64 <__muldf3+0x544>
  80d150:	00fff844 	movi	r3,-31
  80d154:	1907c83a 	sub	r3,r3,r4
  80d158:	10800820 	cmpeqi	r2,r2,32
  80d15c:	98c6d83a 	srl	r3,r19,r3
  80d160:	1000031e 	bne	r2,zero,80d170 <__muldf3+0x750>
  80d164:	39c10f84 	addi	r7,r7,1086
  80d168:	99e6983a 	sll	r19,r19,r7
  80d16c:	94e4b03a 	or	r18,r18,r19
  80d170:	9024c03a 	cmpne	r18,r18,zero
  80d174:	90c4b03a 	or	r2,r18,r3
  80d178:	148001cc 	andi	r18,r2,7
  80d17c:	9000051e 	bne	r18,zero,80d194 <__muldf3+0x774>
  80d180:	0027883a 	mov	r19,zero
  80d184:	1004d0fa 	srli	r2,r2,3
  80d188:	0007883a 	mov	r3,zero
  80d18c:	14a4b03a 	or	r18,r2,r18
  80d190:	003e7f06 	br	80cb90 <__muldf3+0x170>
  80d194:	10c003cc 	andi	r3,r2,15
  80d198:	18c00118 	cmpnei	r3,r3,4
  80d19c:	0027883a 	mov	r19,zero
  80d1a0:	183fb71e 	bne	r3,zero,80d080 <__muldf3+0x660>
  80d1a4:	9806927a 	slli	r3,r19,9
  80d1a8:	9824977a 	slli	r18,r19,29
  80d1ac:	1826d33a 	srli	r19,r3,12
  80d1b0:	003ff406 	br	80d184 <__muldf3+0x764>
  80d1b4:	00800434 	movhi	r2,16
  80d1b8:	9cc00234 	orhi	r19,r19,8
  80d1bc:	10bfffc4 	addi	r2,r2,-1
  80d1c0:	98a6703a 	and	r19,r19,r2
  80d1c4:	003f9906 	br	80d02c <__muldf3+0x60c>

0080d1c8 <__subdf3>:
  80d1c8:	00c00434 	movhi	r3,16
  80d1cc:	3812d53a 	srli	r9,r7,20
  80d1d0:	18ffffc4 	addi	r3,r3,-1
  80d1d4:	defffb04 	addi	sp,sp,-20
  80d1d8:	28d0703a 	and	r8,r5,r3
  80d1dc:	38c6703a 	and	r3,r7,r3
  80d1e0:	2804d7fa 	srli	r2,r5,31
  80d1e4:	401090fa 	slli	r8,r8,3
  80d1e8:	280ad53a 	srli	r5,r5,20
  80d1ec:	180690fa 	slli	r3,r3,3
  80d1f0:	dcc00315 	stw	r19,12(sp)
  80d1f4:	dc400115 	stw	r17,4(sp)
  80d1f8:	2026d77a 	srli	r19,r4,29
  80d1fc:	3022d77a 	srli	r17,r6,29
  80d200:	4b41ffcc 	andi	r13,r9,2047
  80d204:	dc800215 	stw	r18,8(sp)
  80d208:	dc000015 	stw	r16,0(sp)
  80d20c:	dfc00415 	stw	ra,16(sp)
  80d210:	6a41ffe0 	cmpeqi	r9,r13,2047
  80d214:	1025883a 	mov	r18,r2
  80d218:	201690fa 	slli	r11,r4,3
  80d21c:	380ed7fa 	srli	r7,r7,31
  80d220:	301490fa 	slli	r10,r6,3
  80d224:	2c01ffcc 	andi	r16,r5,2047
  80d228:	10803fcc 	andi	r2,r2,255
  80d22c:	9a10b03a 	or	r8,r19,r8
  80d230:	88c6b03a 	or	r3,r17,r3
  80d234:	48006e1e 	bne	r9,zero,80d3f0 <__subdf3+0x228>
  80d238:	3a40005c 	xori	r9,r7,1
  80d23c:	834bc83a 	sub	r5,r16,r13
  80d240:	12405726 	beq	r2,r9,80d3a0 <__subdf3+0x1d8>
  80d244:	01406f0e 	bge	zero,r5,80d404 <__subdf3+0x23c>
  80d248:	68007a26 	beq	r13,zero,80d434 <__subdf3+0x26c>
  80d24c:	8081ffd8 	cmpnei	r2,r16,2047
  80d250:	10019f26 	beq	r2,zero,80d8d0 <__subdf3+0x708>
  80d254:	18c02034 	orhi	r3,r3,128
  80d258:	28800e48 	cmpgei	r2,r5,57
  80d25c:	1000f91e 	bne	r2,zero,80d644 <__subdf3+0x47c>
  80d260:	28800808 	cmpgei	r2,r5,32
  80d264:	1001451e 	bne	r2,zero,80d77c <__subdf3+0x5b4>
  80d268:	00800804 	movi	r2,32
  80d26c:	1145c83a 	sub	r2,r2,r5
  80d270:	18a2983a 	sll	r17,r3,r2
  80d274:	5148d83a 	srl	r4,r10,r5
  80d278:	5084983a 	sll	r2,r10,r2
  80d27c:	1946d83a 	srl	r3,r3,r5
  80d280:	8922b03a 	or	r17,r17,r4
  80d284:	1004c03a 	cmpne	r2,r2,zero
  80d288:	88a2b03a 	or	r17,r17,r2
  80d28c:	40d1c83a 	sub	r8,r8,r3
  80d290:	5c63c83a 	sub	r17,r11,r17
  80d294:	5c49803a 	cmpltu	r4,r11,r17
  80d298:	4109c83a 	sub	r4,r8,r4
  80d29c:	2080202c 	andhi	r2,r4,128
  80d2a0:	1000a526 	beq	r2,zero,80d538 <__subdf3+0x370>
  80d2a4:	04c02034 	movhi	r19,128
  80d2a8:	9cffffc4 	addi	r19,r19,-1
  80d2ac:	24e6703a 	and	r19,r4,r19
  80d2b0:	9800db26 	beq	r19,zero,80d620 <__subdf3+0x458>
  80d2b4:	9809883a 	mov	r4,r19
  80d2b8:	0800f380 	call	800f38 <__clzsi2>
  80d2bc:	117ffe04 	addi	r5,r2,-8
  80d2c0:	01000804 	movi	r4,32
  80d2c4:	2149c83a 	sub	r4,r4,r5
  80d2c8:	8906d83a 	srl	r3,r17,r4
  80d2cc:	9948983a 	sll	r4,r19,r5
  80d2d0:	8962983a 	sll	r17,r17,r5
  80d2d4:	1908b03a 	or	r4,r3,r4
  80d2d8:	2c00cc16 	blt	r5,r16,80d60c <__subdf3+0x444>
  80d2dc:	2c0bc83a 	sub	r5,r5,r16
  80d2e0:	28c00044 	addi	r3,r5,1
  80d2e4:	18800808 	cmpgei	r2,r3,32
  80d2e8:	1001171e 	bne	r2,zero,80d748 <__subdf3+0x580>
  80d2ec:	00800804 	movi	r2,32
  80d2f0:	10c5c83a 	sub	r2,r2,r3
  80d2f4:	88cad83a 	srl	r5,r17,r3
  80d2f8:	88a2983a 	sll	r17,r17,r2
  80d2fc:	2084983a 	sll	r2,r4,r2
  80d300:	20c8d83a 	srl	r4,r4,r3
  80d304:	8822c03a 	cmpne	r17,r17,zero
  80d308:	1144b03a 	or	r2,r2,r5
  80d30c:	1462b03a 	or	r17,r2,r17
  80d310:	0021883a 	mov	r16,zero
  80d314:	888001cc 	andi	r2,r17,7
  80d318:	10000726 	beq	r2,zero,80d338 <__subdf3+0x170>
  80d31c:	888003cc 	andi	r2,r17,15
  80d320:	10800120 	cmpeqi	r2,r2,4
  80d324:	1000041e 	bne	r2,zero,80d338 <__subdf3+0x170>
  80d328:	88c00104 	addi	r3,r17,4
  80d32c:	1c63803a 	cmpltu	r17,r3,r17
  80d330:	2449883a 	add	r4,r4,r17
  80d334:	1823883a 	mov	r17,r3
  80d338:	2080202c 	andhi	r2,r4,128
  80d33c:	10008026 	beq	r2,zero,80d540 <__subdf3+0x378>
  80d340:	81400044 	addi	r5,r16,1
  80d344:	2881ffe0 	cmpeqi	r2,r5,2047
  80d348:	2941ffcc 	andi	r5,r5,2047
  80d34c:	1000921e 	bne	r2,zero,80d598 <__subdf3+0x3d0>
  80d350:	00bfe034 	movhi	r2,65408
  80d354:	10bfffc4 	addi	r2,r2,-1
  80d358:	2088703a 	and	r4,r4,r2
  80d35c:	2006927a 	slli	r3,r4,9
  80d360:	8822d0fa 	srli	r17,r17,3
  80d364:	2004977a 	slli	r2,r4,29
  80d368:	1806d33a 	srli	r3,r3,12
  80d36c:	1444b03a 	or	r2,r2,r17
  80d370:	280a953a 	slli	r5,r5,20
  80d374:	94803fcc 	andi	r18,r18,255
  80d378:	902497fa 	slli	r18,r18,31
  80d37c:	28c6b03a 	or	r3,r5,r3
  80d380:	1c86b03a 	or	r3,r3,r18
  80d384:	dfc00417 	ldw	ra,16(sp)
  80d388:	dcc00317 	ldw	r19,12(sp)
  80d38c:	dc800217 	ldw	r18,8(sp)
  80d390:	dc400117 	ldw	r17,4(sp)
  80d394:	dc000017 	ldw	r16,0(sp)
  80d398:	dec00504 	addi	sp,sp,20
  80d39c:	f800283a 	ret
  80d3a0:	01402e0e 	bge	zero,r5,80d45c <__subdf3+0x294>
  80d3a4:	68005526 	beq	r13,zero,80d4fc <__subdf3+0x334>
  80d3a8:	8081ffd8 	cmpnei	r2,r16,2047
  80d3ac:	10013b26 	beq	r2,zero,80d89c <__subdf3+0x6d4>
  80d3b0:	18c02034 	orhi	r3,r3,128
  80d3b4:	28800e48 	cmpgei	r2,r5,57
  80d3b8:	10006d1e 	bne	r2,zero,80d570 <__subdf3+0x3a8>
  80d3bc:	28800808 	cmpgei	r2,r5,32
  80d3c0:	10010826 	beq	r2,zero,80d7e4 <__subdf3+0x61c>
  80d3c4:	2c7ff804 	addi	r17,r5,-32
  80d3c8:	29000820 	cmpeqi	r4,r5,32
  80d3cc:	1c44d83a 	srl	r2,r3,r17
  80d3d0:	2000041e 	bne	r4,zero,80d3e4 <__subdf3+0x21c>
  80d3d4:	01001004 	movi	r4,64
  80d3d8:	214bc83a 	sub	r5,r4,r5
  80d3dc:	1946983a 	sll	r3,r3,r5
  80d3e0:	50d4b03a 	or	r10,r10,r3
  80d3e4:	5022c03a 	cmpne	r17,r10,zero
  80d3e8:	88a2b03a 	or	r17,r17,r2
  80d3ec:	00006206 	br	80d578 <__subdf3+0x3b0>
  80d3f0:	1a98b03a 	or	r12,r3,r10
  80d3f4:	817e0044 	addi	r5,r16,-2047
  80d3f8:	6000161e 	bne	r12,zero,80d454 <__subdf3+0x28c>
  80d3fc:	3a40005c 	xori	r9,r7,1
  80d400:	12401626 	beq	r2,r9,80d45c <__subdf3+0x294>
  80d404:	28002e26 	beq	r5,zero,80d4c0 <__subdf3+0x2f8>
  80d408:	6c0bc83a 	sub	r5,r13,r16
  80d40c:	4825883a 	mov	r18,r9
  80d410:	80009e1e 	bne	r16,zero,80d68c <__subdf3+0x4c4>
  80d414:	42c4b03a 	or	r2,r8,r11
  80d418:	10010926 	beq	r2,zero,80d840 <__subdf3+0x678>
  80d41c:	28bfffc4 	addi	r2,r5,-1
  80d420:	10016826 	beq	r2,zero,80d9c4 <__subdf3+0x7fc>
  80d424:	2941ffd8 	cmpnei	r5,r5,2047
  80d428:	28015f26 	beq	r5,zero,80d9a8 <__subdf3+0x7e0>
  80d42c:	100b883a 	mov	r5,r2
  80d430:	00009906 	br	80d698 <__subdf3+0x4d0>
  80d434:	1a84b03a 	or	r2,r3,r10
  80d438:	1000b126 	beq	r2,zero,80d700 <__subdf3+0x538>
  80d43c:	28bfffc4 	addi	r2,r5,-1
  80d440:	10011d26 	beq	r2,zero,80d8b8 <__subdf3+0x6f0>
  80d444:	2941ffd8 	cmpnei	r5,r5,2047
  80d448:	28011426 	beq	r5,zero,80d89c <__subdf3+0x6d4>
  80d44c:	100b883a 	mov	r5,r2
  80d450:	003f8106 	br	80d258 <__subdf3+0x90>
  80d454:	3a403fcc 	andi	r9,r7,255
  80d458:	11ffea1e 	bne	r2,r7,80d404 <__subdf3+0x23c>
  80d45c:	28007c26 	beq	r5,zero,80d650 <__subdf3+0x488>
  80d460:	6c0bc83a 	sub	r5,r13,r16
  80d464:	8000d726 	beq	r16,zero,80d7c4 <__subdf3+0x5fc>
  80d468:	6881ffd8 	cmpnei	r2,r13,2047
  80d46c:	10012626 	beq	r2,zero,80d908 <__subdf3+0x740>
  80d470:	42002034 	orhi	r8,r8,128
  80d474:	28800e48 	cmpgei	r2,r5,57
  80d478:	10012a1e 	bne	r2,zero,80d924 <__subdf3+0x75c>
  80d47c:	28800808 	cmpgei	r2,r5,32
  80d480:	1001821e 	bne	r2,zero,80da8c <__subdf3+0x8c4>
  80d484:	00800804 	movi	r2,32
  80d488:	1145c83a 	sub	r2,r2,r5
  80d48c:	40a2983a 	sll	r17,r8,r2
  80d490:	5948d83a 	srl	r4,r11,r5
  80d494:	5884983a 	sll	r2,r11,r2
  80d498:	4150d83a 	srl	r8,r8,r5
  80d49c:	8922b03a 	or	r17,r17,r4
  80d4a0:	1004c03a 	cmpne	r2,r2,zero
  80d4a4:	88a2b03a 	or	r17,r17,r2
  80d4a8:	1a07883a 	add	r3,r3,r8
  80d4ac:	8aa3883a 	add	r17,r17,r10
  80d4b0:	8a89803a 	cmpltu	r4,r17,r10
  80d4b4:	20c9883a 	add	r4,r4,r3
  80d4b8:	6821883a 	mov	r16,r13
  80d4bc:	00003106 	br	80d584 <__subdf3+0x3bc>
  80d4c0:	80800044 	addi	r2,r16,1
  80d4c4:	1081ff8c 	andi	r2,r2,2046
  80d4c8:	1000821e 	bne	r2,zero,80d6d4 <__subdf3+0x50c>
  80d4cc:	42ceb03a 	or	r7,r8,r11
  80d4d0:	1a84b03a 	or	r2,r3,r10
  80d4d4:	8000e11e 	bne	r16,zero,80d85c <__subdf3+0x694>
  80d4d8:	38012a26 	beq	r7,zero,80d984 <__subdf3+0x7bc>
  80d4dc:	1001461e 	bne	r2,zero,80d9f8 <__subdf3+0x830>
  80d4e0:	4004977a 	slli	r2,r8,29
  80d4e4:	00c80034 	movhi	r3,8192
  80d4e8:	18ffffc4 	addi	r3,r3,-1
  80d4ec:	20c8703a 	and	r4,r4,r3
  80d4f0:	4010d0fa 	srli	r8,r8,3
  80d4f4:	1104b03a 	or	r2,r2,r4
  80d4f8:	00001806 	br	80d55c <__subdf3+0x394>
  80d4fc:	1a84b03a 	or	r2,r3,r10
  80d500:	1000fa26 	beq	r2,zero,80d8ec <__subdf3+0x724>
  80d504:	28bfffc4 	addi	r2,r5,-1
  80d508:	10000426 	beq	r2,zero,80d51c <__subdf3+0x354>
  80d50c:	2941ffd8 	cmpnei	r5,r5,2047
  80d510:	28013226 	beq	r5,zero,80d9dc <__subdf3+0x814>
  80d514:	100b883a 	mov	r5,r2
  80d518:	003fa606 	br	80d3b4 <__subdf3+0x1ec>
  80d51c:	5aa3883a 	add	r17,r11,r10
  80d520:	40c9883a 	add	r4,r8,r3
  80d524:	8ad7803a 	cmpltu	r11,r17,r11
  80d528:	22c9883a 	add	r4,r4,r11
  80d52c:	2080202c 	andhi	r2,r4,128
  80d530:	10007a1e 	bne	r2,zero,80d71c <__subdf3+0x554>
  80d534:	04000044 	movi	r16,1
  80d538:	888001cc 	andi	r2,r17,7
  80d53c:	103f771e 	bne	r2,zero,80d31c <__subdf3+0x154>
  80d540:	8822d0fa 	srli	r17,r17,3
  80d544:	2004977a 	slli	r2,r4,29
  80d548:	2010d0fa 	srli	r8,r4,3
  80d54c:	800b883a 	mov	r5,r16
  80d550:	8884b03a 	or	r2,r17,r2
  80d554:	28c1ffe0 	cmpeqi	r3,r5,2047
  80d558:	1800241e 	bne	r3,zero,80d5ec <__subdf3+0x424>
  80d55c:	00c00434 	movhi	r3,16
  80d560:	18ffffc4 	addi	r3,r3,-1
  80d564:	40c6703a 	and	r3,r8,r3
  80d568:	2941ffcc 	andi	r5,r5,2047
  80d56c:	003f8006 	br	80d370 <__subdf3+0x1a8>
  80d570:	1aa2b03a 	or	r17,r3,r10
  80d574:	8822c03a 	cmpne	r17,r17,zero
  80d578:	8ae3883a 	add	r17,r17,r11
  80d57c:	8ac9803a 	cmpltu	r4,r17,r11
  80d580:	2209883a 	add	r4,r4,r8
  80d584:	2080202c 	andhi	r2,r4,128
  80d588:	103feb26 	beq	r2,zero,80d538 <__subdf3+0x370>
  80d58c:	84000044 	addi	r16,r16,1
  80d590:	8081ffe0 	cmpeqi	r2,r16,2047
  80d594:	10006226 	beq	r2,zero,80d720 <__subdf3+0x558>
  80d598:	0141ffc4 	movi	r5,2047
  80d59c:	0007883a 	mov	r3,zero
  80d5a0:	0005883a 	mov	r2,zero
  80d5a4:	003f7206 	br	80d370 <__subdf3+0x1a8>
  80d5a8:	400e977a 	slli	r7,r8,29
  80d5ac:	4010d0fa 	srli	r8,r8,3
  80d5b0:	1000ef26 	beq	r2,zero,80d970 <__subdf3+0x7a8>
  80d5b4:	01480034 	movhi	r5,8192
  80d5b8:	297fffc4 	addi	r5,r5,-1
  80d5bc:	2144703a 	and	r2,r4,r5
  80d5c0:	4100022c 	andhi	r4,r8,8
  80d5c4:	11c4b03a 	or	r2,r2,r7
  80d5c8:	20000826 	beq	r4,zero,80d5ec <__subdf3+0x424>
  80d5cc:	1808d0fa 	srli	r4,r3,3
  80d5d0:	21c0022c 	andhi	r7,r4,8
  80d5d4:	3800051e 	bne	r7,zero,80d5ec <__subdf3+0x424>
  80d5d8:	1804977a 	slli	r2,r3,29
  80d5dc:	314c703a 	and	r6,r6,r5
  80d5e0:	4825883a 	mov	r18,r9
  80d5e4:	3084b03a 	or	r2,r6,r2
  80d5e8:	2011883a 	mov	r8,r4
  80d5ec:	1206b03a 	or	r3,r2,r8
  80d5f0:	18013e26 	beq	r3,zero,80daec <__subdf3+0x924>
  80d5f4:	01000434 	movhi	r4,16
  80d5f8:	40c00234 	orhi	r3,r8,8
  80d5fc:	213fffc4 	addi	r4,r4,-1
  80d600:	1906703a 	and	r3,r3,r4
  80d604:	0141ffc4 	movi	r5,2047
  80d608:	003f5906 	br	80d370 <__subdf3+0x1a8>
  80d60c:	00ffe034 	movhi	r3,65408
  80d610:	18ffffc4 	addi	r3,r3,-1
  80d614:	8161c83a 	sub	r16,r16,r5
  80d618:	20c8703a 	and	r4,r4,r3
  80d61c:	003f3d06 	br	80d314 <__subdf3+0x14c>
  80d620:	8809883a 	mov	r4,r17
  80d624:	0800f380 	call	800f38 <__clzsi2>
  80d628:	11400604 	addi	r5,r2,24
  80d62c:	28c00808 	cmpgei	r3,r5,32
  80d630:	183f2326 	beq	r3,zero,80d2c0 <__subdf3+0xf8>
  80d634:	113ffe04 	addi	r4,r2,-8
  80d638:	8908983a 	sll	r4,r17,r4
  80d63c:	0023883a 	mov	r17,zero
  80d640:	003f2506 	br	80d2d8 <__subdf3+0x110>
  80d644:	1aa2b03a 	or	r17,r3,r10
  80d648:	8822c03a 	cmpne	r17,r17,zero
  80d64c:	003f1006 	br	80d290 <__subdf3+0xc8>
  80d650:	80800044 	addi	r2,r16,1
  80d654:	11c1ff8c 	andi	r7,r2,2046
  80d658:	38006d1e 	bne	r7,zero,80d810 <__subdf3+0x648>
  80d65c:	42c4b03a 	or	r2,r8,r11
  80d660:	8000be1e 	bne	r16,zero,80d95c <__subdf3+0x794>
  80d664:	1000f726 	beq	r2,zero,80da44 <__subdf3+0x87c>
  80d668:	1a84b03a 	or	r2,r3,r10
  80d66c:	1000fc1e 	bne	r2,zero,80da60 <__subdf3+0x898>
  80d670:	4006977a 	slli	r3,r8,29
  80d674:	00880034 	movhi	r2,8192
  80d678:	10bfffc4 	addi	r2,r2,-1
  80d67c:	2084703a 	and	r2,r4,r2
  80d680:	4010d0fa 	srli	r8,r8,3
  80d684:	10c4b03a 	or	r2,r2,r3
  80d688:	003fb406 	br	80d55c <__subdf3+0x394>
  80d68c:	6881ffd8 	cmpnei	r2,r13,2047
  80d690:	10009d26 	beq	r2,zero,80d908 <__subdf3+0x740>
  80d694:	42002034 	orhi	r8,r8,128
  80d698:	28800e48 	cmpgei	r2,r5,57
  80d69c:	1000421e 	bne	r2,zero,80d7a8 <__subdf3+0x5e0>
  80d6a0:	28800808 	cmpgei	r2,r5,32
  80d6a4:	1000a21e 	bne	r2,zero,80d930 <__subdf3+0x768>
  80d6a8:	00800804 	movi	r2,32
  80d6ac:	1145c83a 	sub	r2,r2,r5
  80d6b0:	40a2983a 	sll	r17,r8,r2
  80d6b4:	5948d83a 	srl	r4,r11,r5
  80d6b8:	5896983a 	sll	r11,r11,r2
  80d6bc:	4150d83a 	srl	r8,r8,r5
  80d6c0:	8922b03a 	or	r17,r17,r4
  80d6c4:	5816c03a 	cmpne	r11,r11,zero
  80d6c8:	8ae2b03a 	or	r17,r17,r11
  80d6cc:	1a07c83a 	sub	r3,r3,r8
  80d6d0:	00003706 	br	80d7b0 <__subdf3+0x5e8>
  80d6d4:	5aa3c83a 	sub	r17,r11,r10
  80d6d8:	40e7c83a 	sub	r19,r8,r3
  80d6dc:	5c49803a 	cmpltu	r4,r11,r17
  80d6e0:	9927c83a 	sub	r19,r19,r4
  80d6e4:	9880202c 	andhi	r2,r19,128
  80d6e8:	1000661e 	bne	r2,zero,80d884 <__subdf3+0x6bc>
  80d6ec:	8cc4b03a 	or	r2,r17,r19
  80d6f0:	103eef1e 	bne	r2,zero,80d2b0 <__subdf3+0xe8>
  80d6f4:	0011883a 	mov	r8,zero
  80d6f8:	0025883a 	mov	r18,zero
  80d6fc:	003f9706 	br	80d55c <__subdf3+0x394>
  80d700:	4022977a 	slli	r17,r8,29
  80d704:	00880034 	movhi	r2,8192
  80d708:	10bfffc4 	addi	r2,r2,-1
  80d70c:	2088703a 	and	r4,r4,r2
  80d710:	4010d0fa 	srli	r8,r8,3
  80d714:	2444b03a 	or	r2,r4,r17
  80d718:	003f8e06 	br	80d554 <__subdf3+0x38c>
  80d71c:	04000084 	movi	r16,2
  80d720:	00bfe034 	movhi	r2,65408
  80d724:	10bfffc4 	addi	r2,r2,-1
  80d728:	8806d07a 	srli	r3,r17,1
  80d72c:	2088703a 	and	r4,r4,r2
  80d730:	200497fa 	slli	r2,r4,31
  80d734:	8c40004c 	andi	r17,r17,1
  80d738:	1c62b03a 	or	r17,r3,r17
  80d73c:	2008d07a 	srli	r4,r4,1
  80d740:	1462b03a 	or	r17,r2,r17
  80d744:	003ef306 	br	80d314 <__subdf3+0x14c>
  80d748:	297ff844 	addi	r5,r5,-31
  80d74c:	18800820 	cmpeqi	r2,r3,32
  80d750:	214ad83a 	srl	r5,r4,r5
  80d754:	1000041e 	bne	r2,zero,80d768 <__subdf3+0x5a0>
  80d758:	00801004 	movi	r2,64
  80d75c:	10c7c83a 	sub	r3,r2,r3
  80d760:	20c8983a 	sll	r4,r4,r3
  80d764:	8922b03a 	or	r17,r17,r4
  80d768:	8822c03a 	cmpne	r17,r17,zero
  80d76c:	8962b03a 	or	r17,r17,r5
  80d770:	0009883a 	mov	r4,zero
  80d774:	0021883a 	mov	r16,zero
  80d778:	003f6f06 	br	80d538 <__subdf3+0x370>
  80d77c:	2c7ff804 	addi	r17,r5,-32
  80d780:	29000820 	cmpeqi	r4,r5,32
  80d784:	1c44d83a 	srl	r2,r3,r17
  80d788:	2000041e 	bne	r4,zero,80d79c <__subdf3+0x5d4>
  80d78c:	01001004 	movi	r4,64
  80d790:	214bc83a 	sub	r5,r4,r5
  80d794:	1946983a 	sll	r3,r3,r5
  80d798:	50d4b03a 	or	r10,r10,r3
  80d79c:	5022c03a 	cmpne	r17,r10,zero
  80d7a0:	88a2b03a 	or	r17,r17,r2
  80d7a4:	003eba06 	br	80d290 <__subdf3+0xc8>
  80d7a8:	42d0b03a 	or	r8,r8,r11
  80d7ac:	4022c03a 	cmpne	r17,r8,zero
  80d7b0:	5463c83a 	sub	r17,r10,r17
  80d7b4:	5449803a 	cmpltu	r4,r10,r17
  80d7b8:	1909c83a 	sub	r4,r3,r4
  80d7bc:	6821883a 	mov	r16,r13
  80d7c0:	003eb606 	br	80d29c <__subdf3+0xd4>
  80d7c4:	42c4b03a 	or	r2,r8,r11
  80d7c8:	10009726 	beq	r2,zero,80da28 <__subdf3+0x860>
  80d7cc:	28bfffc4 	addi	r2,r5,-1
  80d7d0:	1000b926 	beq	r2,zero,80dab8 <__subdf3+0x8f0>
  80d7d4:	2941ffd8 	cmpnei	r5,r5,2047
  80d7d8:	28007326 	beq	r5,zero,80d9a8 <__subdf3+0x7e0>
  80d7dc:	100b883a 	mov	r5,r2
  80d7e0:	003f2406 	br	80d474 <__subdf3+0x2ac>
  80d7e4:	00800804 	movi	r2,32
  80d7e8:	1145c83a 	sub	r2,r2,r5
  80d7ec:	18a2983a 	sll	r17,r3,r2
  80d7f0:	5148d83a 	srl	r4,r10,r5
  80d7f4:	5084983a 	sll	r2,r10,r2
  80d7f8:	1946d83a 	srl	r3,r3,r5
  80d7fc:	8922b03a 	or	r17,r17,r4
  80d800:	1004c03a 	cmpne	r2,r2,zero
  80d804:	88a2b03a 	or	r17,r17,r2
  80d808:	40d1883a 	add	r8,r8,r3
  80d80c:	003f5a06 	br	80d578 <__subdf3+0x3b0>
  80d810:	1101ffe0 	cmpeqi	r4,r2,2047
  80d814:	203f601e 	bne	r4,zero,80d598 <__subdf3+0x3d0>
  80d818:	5a95883a 	add	r10,r11,r10
  80d81c:	52d7803a 	cmpltu	r11,r10,r11
  80d820:	40c9883a 	add	r4,r8,r3
  80d824:	22c9883a 	add	r4,r4,r11
  80d828:	202297fa 	slli	r17,r4,31
  80d82c:	5014d07a 	srli	r10,r10,1
  80d830:	2008d07a 	srli	r4,r4,1
  80d834:	1021883a 	mov	r16,r2
  80d838:	8aa2b03a 	or	r17,r17,r10
  80d83c:	003f3e06 	br	80d538 <__subdf3+0x370>
  80d840:	1808977a 	slli	r4,r3,29
  80d844:	00880034 	movhi	r2,8192
  80d848:	10bfffc4 	addi	r2,r2,-1
  80d84c:	308c703a 	and	r6,r6,r2
  80d850:	1810d0fa 	srli	r8,r3,3
  80d854:	3104b03a 	or	r2,r6,r4
  80d858:	003f3e06 	br	80d554 <__subdf3+0x38c>
  80d85c:	383f521e 	bne	r7,zero,80d5a8 <__subdf3+0x3e0>
  80d860:	10009d26 	beq	r2,zero,80dad8 <__subdf3+0x910>
  80d864:	1808977a 	slli	r4,r3,29
  80d868:	00880034 	movhi	r2,8192
  80d86c:	10bfffc4 	addi	r2,r2,-1
  80d870:	3084703a 	and	r2,r6,r2
  80d874:	1810d0fa 	srli	r8,r3,3
  80d878:	1104b03a 	or	r2,r2,r4
  80d87c:	4825883a 	mov	r18,r9
  80d880:	003f5a06 	br	80d5ec <__subdf3+0x424>
  80d884:	52e3c83a 	sub	r17,r10,r11
  80d888:	1a09c83a 	sub	r4,r3,r8
  80d88c:	5467803a 	cmpltu	r19,r10,r17
  80d890:	24e7c83a 	sub	r19,r4,r19
  80d894:	4825883a 	mov	r18,r9
  80d898:	003e8506 	br	80d2b0 <__subdf3+0xe8>
  80d89c:	4022977a 	slli	r17,r8,29
  80d8a0:	00880034 	movhi	r2,8192
  80d8a4:	10bfffc4 	addi	r2,r2,-1
  80d8a8:	2088703a 	and	r4,r4,r2
  80d8ac:	4010d0fa 	srli	r8,r8,3
  80d8b0:	2444b03a 	or	r2,r4,r17
  80d8b4:	003f4d06 	br	80d5ec <__subdf3+0x424>
  80d8b8:	5aa3c83a 	sub	r17,r11,r10
  80d8bc:	40c9c83a 	sub	r4,r8,r3
  80d8c0:	5c57803a 	cmpltu	r11,r11,r17
  80d8c4:	22c9c83a 	sub	r4,r4,r11
  80d8c8:	04000044 	movi	r16,1
  80d8cc:	003e7306 	br	80d29c <__subdf3+0xd4>
  80d8d0:	4004977a 	slli	r2,r8,29
  80d8d4:	00c80034 	movhi	r3,8192
  80d8d8:	18ffffc4 	addi	r3,r3,-1
  80d8dc:	20c8703a 	and	r4,r4,r3
  80d8e0:	4010d0fa 	srli	r8,r8,3
  80d8e4:	1104b03a 	or	r2,r2,r4
  80d8e8:	003f4006 	br	80d5ec <__subdf3+0x424>
  80d8ec:	4004977a 	slli	r2,r8,29
  80d8f0:	00c80034 	movhi	r3,8192
  80d8f4:	18ffffc4 	addi	r3,r3,-1
  80d8f8:	20c8703a 	and	r4,r4,r3
  80d8fc:	4010d0fa 	srli	r8,r8,3
  80d900:	1104b03a 	or	r2,r2,r4
  80d904:	003f1306 	br	80d554 <__subdf3+0x38c>
  80d908:	1804977a 	slli	r2,r3,29
  80d90c:	01080034 	movhi	r4,8192
  80d910:	213fffc4 	addi	r4,r4,-1
  80d914:	310c703a 	and	r6,r6,r4
  80d918:	1810d0fa 	srli	r8,r3,3
  80d91c:	1184b03a 	or	r2,r2,r6
  80d920:	003f3206 	br	80d5ec <__subdf3+0x424>
  80d924:	42d0b03a 	or	r8,r8,r11
  80d928:	4022c03a 	cmpne	r17,r8,zero
  80d92c:	003edf06 	br	80d4ac <__subdf3+0x2e4>
  80d930:	2c7ff804 	addi	r17,r5,-32
  80d934:	29000820 	cmpeqi	r4,r5,32
  80d938:	4444d83a 	srl	r2,r8,r17
  80d93c:	2000041e 	bne	r4,zero,80d950 <__subdf3+0x788>
  80d940:	01001004 	movi	r4,64
  80d944:	214bc83a 	sub	r5,r4,r5
  80d948:	4150983a 	sll	r8,r8,r5
  80d94c:	5a16b03a 	or	r11,r11,r8
  80d950:	5822c03a 	cmpne	r17,r11,zero
  80d954:	88a2b03a 	or	r17,r17,r2
  80d958:	003f9506 	br	80d7b0 <__subdf3+0x5e8>
  80d95c:	103fea26 	beq	r2,zero,80d908 <__subdf3+0x740>
  80d960:	1a94b03a 	or	r10,r3,r10
  80d964:	400e977a 	slli	r7,r8,29
  80d968:	4010d0fa 	srli	r8,r8,3
  80d96c:	503f111e 	bne	r10,zero,80d5b4 <__subdf3+0x3ec>
  80d970:	00880034 	movhi	r2,8192
  80d974:	10bfffc4 	addi	r2,r2,-1
  80d978:	2084703a 	and	r2,r4,r2
  80d97c:	11c4b03a 	or	r2,r2,r7
  80d980:	003f1a06 	br	80d5ec <__subdf3+0x424>
  80d984:	103f5b26 	beq	r2,zero,80d6f4 <__subdf3+0x52c>
  80d988:	1804977a 	slli	r2,r3,29
  80d98c:	01080034 	movhi	r4,8192
  80d990:	213fffc4 	addi	r4,r4,-1
  80d994:	310c703a 	and	r6,r6,r4
  80d998:	1810d0fa 	srli	r8,r3,3
  80d99c:	1184b03a 	or	r2,r2,r6
  80d9a0:	4825883a 	mov	r18,r9
  80d9a4:	003eed06 	br	80d55c <__subdf3+0x394>
  80d9a8:	1808977a 	slli	r4,r3,29
  80d9ac:	00880034 	movhi	r2,8192
  80d9b0:	10bfffc4 	addi	r2,r2,-1
  80d9b4:	3084703a 	and	r2,r6,r2
  80d9b8:	1810d0fa 	srli	r8,r3,3
  80d9bc:	1104b03a 	or	r2,r2,r4
  80d9c0:	003f0a06 	br	80d5ec <__subdf3+0x424>
  80d9c4:	52e3c83a 	sub	r17,r10,r11
  80d9c8:	1a09c83a 	sub	r4,r3,r8
  80d9cc:	5455803a 	cmpltu	r10,r10,r17
  80d9d0:	2289c83a 	sub	r4,r4,r10
  80d9d4:	04000044 	movi	r16,1
  80d9d8:	003e3006 	br	80d29c <__subdf3+0xd4>
  80d9dc:	4006977a 	slli	r3,r8,29
  80d9e0:	00880034 	movhi	r2,8192
  80d9e4:	10bfffc4 	addi	r2,r2,-1
  80d9e8:	2084703a 	and	r2,r4,r2
  80d9ec:	4010d0fa 	srli	r8,r8,3
  80d9f0:	10c4b03a 	or	r2,r2,r3
  80d9f4:	003efd06 	br	80d5ec <__subdf3+0x424>
  80d9f8:	5aa3c83a 	sub	r17,r11,r10
  80d9fc:	5c45803a 	cmpltu	r2,r11,r17
  80da00:	40c9c83a 	sub	r4,r8,r3
  80da04:	2089c83a 	sub	r4,r4,r2
  80da08:	2080202c 	andhi	r2,r4,128
  80da0c:	10002f26 	beq	r2,zero,80dacc <__subdf3+0x904>
  80da10:	52e3c83a 	sub	r17,r10,r11
  80da14:	1a09c83a 	sub	r4,r3,r8
  80da18:	5455803a 	cmpltu	r10,r10,r17
  80da1c:	2289c83a 	sub	r4,r4,r10
  80da20:	4825883a 	mov	r18,r9
  80da24:	003e3b06 	br	80d314 <__subdf3+0x14c>
  80da28:	1808977a 	slli	r4,r3,29
  80da2c:	00880034 	movhi	r2,8192
  80da30:	10bfffc4 	addi	r2,r2,-1
  80da34:	3084703a 	and	r2,r6,r2
  80da38:	1810d0fa 	srli	r8,r3,3
  80da3c:	1104b03a 	or	r2,r2,r4
  80da40:	003ec406 	br	80d554 <__subdf3+0x38c>
  80da44:	1808977a 	slli	r4,r3,29
  80da48:	00880034 	movhi	r2,8192
  80da4c:	10bfffc4 	addi	r2,r2,-1
  80da50:	3084703a 	and	r2,r6,r2
  80da54:	1810d0fa 	srli	r8,r3,3
  80da58:	1104b03a 	or	r2,r2,r4
  80da5c:	003ebf06 	br	80d55c <__subdf3+0x394>
  80da60:	5aa3883a 	add	r17,r11,r10
  80da64:	40c9883a 	add	r4,r8,r3
  80da68:	8ad7803a 	cmpltu	r11,r17,r11
  80da6c:	22c9883a 	add	r4,r4,r11
  80da70:	2080202c 	andhi	r2,r4,128
  80da74:	103eb026 	beq	r2,zero,80d538 <__subdf3+0x370>
  80da78:	00bfe034 	movhi	r2,65408
  80da7c:	10bfffc4 	addi	r2,r2,-1
  80da80:	2088703a 	and	r4,r4,r2
  80da84:	04000044 	movi	r16,1
  80da88:	003eab06 	br	80d538 <__subdf3+0x370>
  80da8c:	28bff804 	addi	r2,r5,-32
  80da90:	29000820 	cmpeqi	r4,r5,32
  80da94:	4084d83a 	srl	r2,r8,r2
  80da98:	2000041e 	bne	r4,zero,80daac <__subdf3+0x8e4>
  80da9c:	01001004 	movi	r4,64
  80daa0:	214bc83a 	sub	r5,r4,r5
  80daa4:	4150983a 	sll	r8,r8,r5
  80daa8:	5a16b03a 	or	r11,r11,r8
  80daac:	5822c03a 	cmpne	r17,r11,zero
  80dab0:	88a2b03a 	or	r17,r17,r2
  80dab4:	003e7d06 	br	80d4ac <__subdf3+0x2e4>
  80dab8:	5aa3883a 	add	r17,r11,r10
  80dabc:	40c9883a 	add	r4,r8,r3
  80dac0:	8a95803a 	cmpltu	r10,r17,r10
  80dac4:	2289883a 	add	r4,r4,r10
  80dac8:	003e9806 	br	80d52c <__subdf3+0x364>
  80dacc:	8904b03a 	or	r2,r17,r4
  80dad0:	103f0826 	beq	r2,zero,80d6f4 <__subdf3+0x52c>
  80dad4:	003e9806 	br	80d538 <__subdf3+0x370>
  80dad8:	02000434 	movhi	r8,16
  80dadc:	423fffc4 	addi	r8,r8,-1
  80dae0:	0025883a 	mov	r18,zero
  80dae4:	00bfffc4 	movi	r2,-1
  80dae8:	003ec206 	br	80d5f4 <__subdf3+0x42c>
  80daec:	0005883a 	mov	r2,zero
  80daf0:	0141ffc4 	movi	r5,2047
  80daf4:	0007883a 	mov	r3,zero
  80daf8:	003e1d06 	br	80d370 <__subdf3+0x1a8>

0080dafc <__unorddf2>:
  80dafc:	2806d53a 	srli	r3,r5,20
  80db00:	3810d53a 	srli	r8,r7,20
  80db04:	02400434 	movhi	r9,16
  80db08:	18c1ffcc 	andi	r3,r3,2047
  80db0c:	4a7fffc4 	addi	r9,r9,-1
  80db10:	18c1ffd8 	cmpnei	r3,r3,2047
  80db14:	2a4a703a 	and	r5,r5,r9
  80db18:	3a4e703a 	and	r7,r7,r9
  80db1c:	4201ffcc 	andi	r8,r8,2047
  80db20:	18000426 	beq	r3,zero,80db34 <__unorddf2+0x38>
  80db24:	4201ffd8 	cmpnei	r8,r8,2047
  80db28:	40000626 	beq	r8,zero,80db44 <__unorddf2+0x48>
  80db2c:	0005883a 	mov	r2,zero
  80db30:	f800283a 	ret
  80db34:	214ab03a 	or	r5,r4,r5
  80db38:	283ffa26 	beq	r5,zero,80db24 <__unorddf2+0x28>
  80db3c:	00800044 	movi	r2,1
  80db40:	f800283a 	ret
  80db44:	398eb03a 	or	r7,r7,r6
  80db48:	3804c03a 	cmpne	r2,r7,zero
  80db4c:	f800283a 	ret

0080db50 <__fixdfsi>:
  80db50:	2806d53a 	srli	r3,r5,20
  80db54:	01800434 	movhi	r6,16
  80db58:	31bfffc4 	addi	r6,r6,-1
  80db5c:	18c1ffcc 	andi	r3,r3,2047
  80db60:	19c0ffd0 	cmplti	r7,r3,1023
  80db64:	2810d7fa 	srli	r8,r5,31
  80db68:	298a703a 	and	r5,r5,r6
  80db6c:	3800061e 	bne	r7,zero,80db88 <__fixdfsi+0x38>
  80db70:	18810790 	cmplti	r2,r3,1054
  80db74:	1000061e 	bne	r2,zero,80db90 <__fixdfsi+0x40>
  80db78:	00a00034 	movhi	r2,32768
  80db7c:	10bfffc4 	addi	r2,r2,-1
  80db80:	4085883a 	add	r2,r8,r2
  80db84:	f800283a 	ret
  80db88:	0005883a 	mov	r2,zero
  80db8c:	f800283a 	ret
  80db90:	01810cc4 	movi	r6,1075
  80db94:	30cdc83a 	sub	r6,r6,r3
  80db98:	30800808 	cmpgei	r2,r6,32
  80db9c:	29400434 	orhi	r5,r5,16
  80dba0:	1000071e 	bne	r2,zero,80dbc0 <__fixdfsi+0x70>
  80dba4:	18befb44 	addi	r2,r3,-1043
  80dba8:	2884983a 	sll	r2,r5,r2
  80dbac:	2188d83a 	srl	r4,r4,r6
  80dbb0:	1104b03a 	or	r2,r2,r4
  80dbb4:	403ff526 	beq	r8,zero,80db8c <__fixdfsi+0x3c>
  80dbb8:	0085c83a 	sub	r2,zero,r2
  80dbbc:	f800283a 	ret
  80dbc0:	008104c4 	movi	r2,1043
  80dbc4:	10c5c83a 	sub	r2,r2,r3
  80dbc8:	2884d83a 	srl	r2,r5,r2
  80dbcc:	003ff906 	br	80dbb4 <__fixdfsi+0x64>

0080dbd0 <__floatsidf>:
  80dbd0:	defffd04 	addi	sp,sp,-12
  80dbd4:	dfc00215 	stw	ra,8(sp)
  80dbd8:	dc400115 	stw	r17,4(sp)
  80dbdc:	dc000015 	stw	r16,0(sp)
  80dbe0:	20001326 	beq	r4,zero,80dc30 <__floatsidf+0x60>
  80dbe4:	2022d7fa 	srli	r17,r4,31
  80dbe8:	2021883a 	mov	r16,r4
  80dbec:	20002516 	blt	r4,zero,80dc84 <__floatsidf+0xb4>
  80dbf0:	8009883a 	mov	r4,r16
  80dbf4:	0800f380 	call	800f38 <__clzsi2>
  80dbf8:	01410784 	movi	r5,1054
  80dbfc:	288bc83a 	sub	r5,r5,r2
  80dc00:	10c002c8 	cmpgei	r3,r2,11
  80dc04:	2941ffcc 	andi	r5,r5,2047
  80dc08:	1800171e 	bne	r3,zero,80dc68 <__floatsidf+0x98>
  80dc0c:	00c002c4 	movi	r3,11
  80dc10:	1887c83a 	sub	r3,r3,r2
  80dc14:	80c6d83a 	srl	r3,r16,r3
  80dc18:	01000434 	movhi	r4,16
  80dc1c:	10800544 	addi	r2,r2,21
  80dc20:	213fffc4 	addi	r4,r4,-1
  80dc24:	8084983a 	sll	r2,r16,r2
  80dc28:	1906703a 	and	r3,r3,r4
  80dc2c:	00000406 	br	80dc40 <__floatsidf+0x70>
  80dc30:	0023883a 	mov	r17,zero
  80dc34:	000b883a 	mov	r5,zero
  80dc38:	0007883a 	mov	r3,zero
  80dc3c:	0005883a 	mov	r2,zero
  80dc40:	280a953a 	slli	r5,r5,20
  80dc44:	8c403fcc 	andi	r17,r17,255
  80dc48:	882297fa 	slli	r17,r17,31
  80dc4c:	28c6b03a 	or	r3,r5,r3
  80dc50:	1c46b03a 	or	r3,r3,r17
  80dc54:	dfc00217 	ldw	ra,8(sp)
  80dc58:	dc400117 	ldw	r17,4(sp)
  80dc5c:	dc000017 	ldw	r16,0(sp)
  80dc60:	dec00304 	addi	sp,sp,12
  80dc64:	f800283a 	ret
  80dc68:	10bffd44 	addi	r2,r2,-11
  80dc6c:	8086983a 	sll	r3,r16,r2
  80dc70:	00800434 	movhi	r2,16
  80dc74:	10bfffc4 	addi	r2,r2,-1
  80dc78:	1886703a 	and	r3,r3,r2
  80dc7c:	0005883a 	mov	r2,zero
  80dc80:	003fef06 	br	80dc40 <__floatsidf+0x70>
  80dc84:	0121c83a 	sub	r16,zero,r4
  80dc88:	003fd906 	br	80dbf0 <__floatsidf+0x20>

0080dc8c <__floatunsidf>:
  80dc8c:	defffe04 	addi	sp,sp,-8
  80dc90:	dc000015 	stw	r16,0(sp)
  80dc94:	dfc00115 	stw	ra,4(sp)
  80dc98:	2021883a 	mov	r16,r4
  80dc9c:	20000f26 	beq	r4,zero,80dcdc <__floatunsidf+0x50>
  80dca0:	0800f380 	call	800f38 <__clzsi2>
  80dca4:	00c10784 	movi	r3,1054
  80dca8:	1887c83a 	sub	r3,r3,r2
  80dcac:	110002c8 	cmpgei	r4,r2,11
  80dcb0:	18c1ffcc 	andi	r3,r3,2047
  80dcb4:	2000121e 	bne	r4,zero,80dd00 <__floatunsidf+0x74>
  80dcb8:	014002c4 	movi	r5,11
  80dcbc:	288bc83a 	sub	r5,r5,r2
  80dcc0:	814ad83a 	srl	r5,r16,r5
  80dcc4:	01000434 	movhi	r4,16
  80dcc8:	10800544 	addi	r2,r2,21
  80dccc:	213fffc4 	addi	r4,r4,-1
  80dcd0:	80a0983a 	sll	r16,r16,r2
  80dcd4:	290a703a 	and	r5,r5,r4
  80dcd8:	00000206 	br	80dce4 <__floatunsidf+0x58>
  80dcdc:	0007883a 	mov	r3,zero
  80dce0:	000b883a 	mov	r5,zero
  80dce4:	1806953a 	slli	r3,r3,20
  80dce8:	8005883a 	mov	r2,r16
  80dcec:	1946b03a 	or	r3,r3,r5
  80dcf0:	dfc00117 	ldw	ra,4(sp)
  80dcf4:	dc000017 	ldw	r16,0(sp)
  80dcf8:	dec00204 	addi	sp,sp,8
  80dcfc:	f800283a 	ret
  80dd00:	10bffd44 	addi	r2,r2,-11
  80dd04:	808a983a 	sll	r5,r16,r2
  80dd08:	00800434 	movhi	r2,16
  80dd0c:	10bfffc4 	addi	r2,r2,-1
  80dd10:	288a703a 	and	r5,r5,r2
  80dd14:	0021883a 	mov	r16,zero
  80dd18:	003ff206 	br	80dce4 <__floatunsidf+0x58>

0080dd1c <alt_get_errno>:
  80dd1c:	defffe04 	addi	sp,sp,-8
  80dd20:	dfc00115 	stw	ra,4(sp)
  80dd24:	df000015 	stw	fp,0(sp)
  80dd28:	d839883a 	mov	fp,sp
  80dd2c:	d0a00917 	ldw	r2,-32732(gp)
  80dd30:	10000326 	beq	r2,zero,80dd40 <alt_get_errno+0x24>
  80dd34:	d0a00917 	ldw	r2,-32732(gp)
  80dd38:	103ee83a 	callr	r2
  80dd3c:	00000106 	br	80dd44 <alt_get_errno+0x28>
  80dd40:	d0a70704 	addi	r2,gp,-25572
  80dd44:	e037883a 	mov	sp,fp
  80dd48:	dfc00117 	ldw	ra,4(sp)
  80dd4c:	df000017 	ldw	fp,0(sp)
  80dd50:	dec00204 	addi	sp,sp,8
  80dd54:	f800283a 	ret

0080dd58 <close>:
  80dd58:	defffb04 	addi	sp,sp,-20
  80dd5c:	dfc00415 	stw	ra,16(sp)
  80dd60:	df000315 	stw	fp,12(sp)
  80dd64:	df000304 	addi	fp,sp,12
  80dd68:	e13ffd15 	stw	r4,-12(fp)
  80dd6c:	e0bffd17 	ldw	r2,-12(fp)
  80dd70:	10000916 	blt	r2,zero,80dd98 <close+0x40>
  80dd74:	e0fffd17 	ldw	r3,-12(fp)
  80dd78:	1805883a 	mov	r2,r3
  80dd7c:	1085883a 	add	r2,r2,r2
  80dd80:	10c5883a 	add	r2,r2,r3
  80dd84:	100490ba 	slli	r2,r2,2
  80dd88:	00c02074 	movhi	r3,129
  80dd8c:	18c5a804 	addi	r3,r3,5792
  80dd90:	10c5883a 	add	r2,r2,r3
  80dd94:	00000106 	br	80dd9c <close+0x44>
  80dd98:	0005883a 	mov	r2,zero
  80dd9c:	e0bfff15 	stw	r2,-4(fp)
  80dda0:	e0bfff17 	ldw	r2,-4(fp)
  80dda4:	10001926 	beq	r2,zero,80de0c <close+0xb4>
  80dda8:	e0bfff17 	ldw	r2,-4(fp)
  80ddac:	10800017 	ldw	r2,0(r2)
  80ddb0:	10800417 	ldw	r2,16(r2)
  80ddb4:	10000626 	beq	r2,zero,80ddd0 <close+0x78>
  80ddb8:	e0bfff17 	ldw	r2,-4(fp)
  80ddbc:	10800017 	ldw	r2,0(r2)
  80ddc0:	10800417 	ldw	r2,16(r2)
  80ddc4:	e13fff17 	ldw	r4,-4(fp)
  80ddc8:	103ee83a 	callr	r2
  80ddcc:	00000106 	br	80ddd4 <close+0x7c>
  80ddd0:	0005883a 	mov	r2,zero
  80ddd4:	e0bffe15 	stw	r2,-8(fp)
  80ddd8:	e13ffd17 	ldw	r4,-12(fp)
  80dddc:	080e6140 	call	80e614 <alt_release_fd>
  80dde0:	e0bffe17 	ldw	r2,-8(fp)
  80dde4:	1000070e 	bge	r2,zero,80de04 <close+0xac>
  80dde8:	080dd1c0 	call	80dd1c <alt_get_errno>
  80ddec:	1007883a 	mov	r3,r2
  80ddf0:	e0bffe17 	ldw	r2,-8(fp)
  80ddf4:	0085c83a 	sub	r2,zero,r2
  80ddf8:	18800015 	stw	r2,0(r3)
  80ddfc:	00bfffc4 	movi	r2,-1
  80de00:	00000706 	br	80de20 <close+0xc8>
  80de04:	0005883a 	mov	r2,zero
  80de08:	00000506 	br	80de20 <close+0xc8>
  80de0c:	080dd1c0 	call	80dd1c <alt_get_errno>
  80de10:	1007883a 	mov	r3,r2
  80de14:	00801444 	movi	r2,81
  80de18:	18800015 	stw	r2,0(r3)
  80de1c:	00bfffc4 	movi	r2,-1
  80de20:	e037883a 	mov	sp,fp
  80de24:	dfc00117 	ldw	ra,4(sp)
  80de28:	df000017 	ldw	fp,0(sp)
  80de2c:	dec00204 	addi	sp,sp,8
  80de30:	f800283a 	ret

0080de34 <alt_dev_null_write>:
  80de34:	defffc04 	addi	sp,sp,-16
  80de38:	df000315 	stw	fp,12(sp)
  80de3c:	df000304 	addi	fp,sp,12
  80de40:	e13fff15 	stw	r4,-4(fp)
  80de44:	e17ffe15 	stw	r5,-8(fp)
  80de48:	e1bffd15 	stw	r6,-12(fp)
  80de4c:	e0bffd17 	ldw	r2,-12(fp)
  80de50:	e037883a 	mov	sp,fp
  80de54:	df000017 	ldw	fp,0(sp)
  80de58:	dec00104 	addi	sp,sp,4
  80de5c:	f800283a 	ret

0080de60 <_exit>:
  80de60:	defffd04 	addi	sp,sp,-12
  80de64:	df000215 	stw	fp,8(sp)
  80de68:	df000204 	addi	fp,sp,8
  80de6c:	e13ffe15 	stw	r4,-8(fp)
  80de70:	0001883a 	nop
  80de74:	e0bffe17 	ldw	r2,-8(fp)
  80de78:	e0bfff15 	stw	r2,-4(fp)
  80de7c:	e0bfff17 	ldw	r2,-4(fp)
  80de80:	10000226 	beq	r2,zero,80de8c <_exit+0x2c>
  80de84:	002af070 	cmpltui	zero,zero,43969
  80de88:	00000106 	br	80de90 <_exit+0x30>
  80de8c:	002af0b0 	cmpltui	zero,zero,43970
  80de90:	0001883a 	nop
  80de94:	003fff06 	br	80de94 <_exit+0x34>

0080de98 <alt_get_errno>:
  80de98:	defffe04 	addi	sp,sp,-8
  80de9c:	dfc00115 	stw	ra,4(sp)
  80dea0:	df000015 	stw	fp,0(sp)
  80dea4:	d839883a 	mov	fp,sp
  80dea8:	d0a00917 	ldw	r2,-32732(gp)
  80deac:	10000326 	beq	r2,zero,80debc <alt_get_errno+0x24>
  80deb0:	d0a00917 	ldw	r2,-32732(gp)
  80deb4:	103ee83a 	callr	r2
  80deb8:	00000106 	br	80dec0 <alt_get_errno+0x28>
  80debc:	d0a70704 	addi	r2,gp,-25572
  80dec0:	e037883a 	mov	sp,fp
  80dec4:	dfc00117 	ldw	ra,4(sp)
  80dec8:	df000017 	ldw	fp,0(sp)
  80decc:	dec00204 	addi	sp,sp,8
  80ded0:	f800283a 	ret

0080ded4 <fstat>:
  80ded4:	defffb04 	addi	sp,sp,-20
  80ded8:	dfc00415 	stw	ra,16(sp)
  80dedc:	df000315 	stw	fp,12(sp)
  80dee0:	df000304 	addi	fp,sp,12
  80dee4:	e13ffe15 	stw	r4,-8(fp)
  80dee8:	e17ffd15 	stw	r5,-12(fp)
  80deec:	e0bffe17 	ldw	r2,-8(fp)
  80def0:	10000916 	blt	r2,zero,80df18 <fstat+0x44>
  80def4:	e0fffe17 	ldw	r3,-8(fp)
  80def8:	1805883a 	mov	r2,r3
  80defc:	1085883a 	add	r2,r2,r2
  80df00:	10c5883a 	add	r2,r2,r3
  80df04:	100490ba 	slli	r2,r2,2
  80df08:	00c02074 	movhi	r3,129
  80df0c:	18c5a804 	addi	r3,r3,5792
  80df10:	10c5883a 	add	r2,r2,r3
  80df14:	00000106 	br	80df1c <fstat+0x48>
  80df18:	0005883a 	mov	r2,zero
  80df1c:	e0bfff15 	stw	r2,-4(fp)
  80df20:	e0bfff17 	ldw	r2,-4(fp)
  80df24:	10001026 	beq	r2,zero,80df68 <fstat+0x94>
  80df28:	e0bfff17 	ldw	r2,-4(fp)
  80df2c:	10800017 	ldw	r2,0(r2)
  80df30:	10800817 	ldw	r2,32(r2)
  80df34:	10000726 	beq	r2,zero,80df54 <fstat+0x80>
  80df38:	e0bfff17 	ldw	r2,-4(fp)
  80df3c:	10800017 	ldw	r2,0(r2)
  80df40:	10800817 	ldw	r2,32(r2)
  80df44:	e17ffd17 	ldw	r5,-12(fp)
  80df48:	e13fff17 	ldw	r4,-4(fp)
  80df4c:	103ee83a 	callr	r2
  80df50:	00000a06 	br	80df7c <fstat+0xa8>
  80df54:	e0bffd17 	ldw	r2,-12(fp)
  80df58:	00c80004 	movi	r3,8192
  80df5c:	10c00115 	stw	r3,4(r2)
  80df60:	0005883a 	mov	r2,zero
  80df64:	00000506 	br	80df7c <fstat+0xa8>
  80df68:	080de980 	call	80de98 <alt_get_errno>
  80df6c:	1007883a 	mov	r3,r2
  80df70:	00801444 	movi	r2,81
  80df74:	18800015 	stw	r2,0(r3)
  80df78:	00bfffc4 	movi	r2,-1
  80df7c:	e037883a 	mov	sp,fp
  80df80:	dfc00117 	ldw	ra,4(sp)
  80df84:	df000017 	ldw	fp,0(sp)
  80df88:	dec00204 	addi	sp,sp,8
  80df8c:	f800283a 	ret

0080df90 <getpid>:
  80df90:	deffff04 	addi	sp,sp,-4
  80df94:	df000015 	stw	fp,0(sp)
  80df98:	d839883a 	mov	fp,sp
  80df9c:	0005883a 	mov	r2,zero
  80dfa0:	e037883a 	mov	sp,fp
  80dfa4:	df000017 	ldw	fp,0(sp)
  80dfa8:	dec00104 	addi	sp,sp,4
  80dfac:	f800283a 	ret

0080dfb0 <alt_get_errno>:
  80dfb0:	defffe04 	addi	sp,sp,-8
  80dfb4:	dfc00115 	stw	ra,4(sp)
  80dfb8:	df000015 	stw	fp,0(sp)
  80dfbc:	d839883a 	mov	fp,sp
  80dfc0:	d0a00917 	ldw	r2,-32732(gp)
  80dfc4:	10000326 	beq	r2,zero,80dfd4 <alt_get_errno+0x24>
  80dfc8:	d0a00917 	ldw	r2,-32732(gp)
  80dfcc:	103ee83a 	callr	r2
  80dfd0:	00000106 	br	80dfd8 <alt_get_errno+0x28>
  80dfd4:	d0a70704 	addi	r2,gp,-25572
  80dfd8:	e037883a 	mov	sp,fp
  80dfdc:	dfc00117 	ldw	ra,4(sp)
  80dfe0:	df000017 	ldw	fp,0(sp)
  80dfe4:	dec00204 	addi	sp,sp,8
  80dfe8:	f800283a 	ret

0080dfec <isatty>:
  80dfec:	deffea04 	addi	sp,sp,-88
  80dff0:	dfc01515 	stw	ra,84(sp)
  80dff4:	df001415 	stw	fp,80(sp)
  80dff8:	df001404 	addi	fp,sp,80
  80dffc:	e13fec15 	stw	r4,-80(fp)
  80e000:	e0bfec17 	ldw	r2,-80(fp)
  80e004:	10000916 	blt	r2,zero,80e02c <isatty+0x40>
  80e008:	e0ffec17 	ldw	r3,-80(fp)
  80e00c:	1805883a 	mov	r2,r3
  80e010:	1085883a 	add	r2,r2,r2
  80e014:	10c5883a 	add	r2,r2,r3
  80e018:	100490ba 	slli	r2,r2,2
  80e01c:	00c02074 	movhi	r3,129
  80e020:	18c5a804 	addi	r3,r3,5792
  80e024:	10c5883a 	add	r2,r2,r3
  80e028:	00000106 	br	80e030 <isatty+0x44>
  80e02c:	0005883a 	mov	r2,zero
  80e030:	e0bfff15 	stw	r2,-4(fp)
  80e034:	e0bfff17 	ldw	r2,-4(fp)
  80e038:	10000e26 	beq	r2,zero,80e074 <isatty+0x88>
  80e03c:	e0bfff17 	ldw	r2,-4(fp)
  80e040:	10800017 	ldw	r2,0(r2)
  80e044:	10800817 	ldw	r2,32(r2)
  80e048:	1000021e 	bne	r2,zero,80e054 <isatty+0x68>
  80e04c:	00800044 	movi	r2,1
  80e050:	00000d06 	br	80e088 <isatty+0x9c>
  80e054:	e0bfed04 	addi	r2,fp,-76
  80e058:	100b883a 	mov	r5,r2
  80e05c:	e13fec17 	ldw	r4,-80(fp)
  80e060:	080ded40 	call	80ded4 <fstat>
  80e064:	e0bfee17 	ldw	r2,-72(fp)
  80e068:	10880020 	cmpeqi	r2,r2,8192
  80e06c:	10803fcc 	andi	r2,r2,255
  80e070:	00000506 	br	80e088 <isatty+0x9c>
  80e074:	080dfb00 	call	80dfb0 <alt_get_errno>
  80e078:	1007883a 	mov	r3,r2
  80e07c:	00801444 	movi	r2,81
  80e080:	18800015 	stw	r2,0(r3)
  80e084:	0005883a 	mov	r2,zero
  80e088:	e037883a 	mov	sp,fp
  80e08c:	dfc00117 	ldw	ra,4(sp)
  80e090:	df000017 	ldw	fp,0(sp)
  80e094:	dec00204 	addi	sp,sp,8
  80e098:	f800283a 	ret

0080e09c <alt_get_errno>:
  80e09c:	defffe04 	addi	sp,sp,-8
  80e0a0:	dfc00115 	stw	ra,4(sp)
  80e0a4:	df000015 	stw	fp,0(sp)
  80e0a8:	d839883a 	mov	fp,sp
  80e0ac:	d0a00917 	ldw	r2,-32732(gp)
  80e0b0:	10000326 	beq	r2,zero,80e0c0 <alt_get_errno+0x24>
  80e0b4:	d0a00917 	ldw	r2,-32732(gp)
  80e0b8:	103ee83a 	callr	r2
  80e0bc:	00000106 	br	80e0c4 <alt_get_errno+0x28>
  80e0c0:	d0a70704 	addi	r2,gp,-25572
  80e0c4:	e037883a 	mov	sp,fp
  80e0c8:	dfc00117 	ldw	ra,4(sp)
  80e0cc:	df000017 	ldw	fp,0(sp)
  80e0d0:	dec00204 	addi	sp,sp,8
  80e0d4:	f800283a 	ret

0080e0d8 <kill>:
  80e0d8:	defffb04 	addi	sp,sp,-20
  80e0dc:	dfc00415 	stw	ra,16(sp)
  80e0e0:	df000315 	stw	fp,12(sp)
  80e0e4:	df000304 	addi	fp,sp,12
  80e0e8:	e13ffe15 	stw	r4,-8(fp)
  80e0ec:	e17ffd15 	stw	r5,-12(fp)
  80e0f0:	e03fff15 	stw	zero,-4(fp)
  80e0f4:	e0bffe17 	ldw	r2,-8(fp)
  80e0f8:	00802e16 	blt	zero,r2,80e1b4 <kill+0xdc>
  80e0fc:	e0bffd17 	ldw	r2,-12(fp)
  80e100:	10800828 	cmpgeui	r2,r2,32
  80e104:	1000281e 	bne	r2,zero,80e1a8 <kill+0xd0>
  80e108:	e0bffd17 	ldw	r2,-12(fp)
  80e10c:	100690ba 	slli	r3,r2,2
  80e110:	00802074 	movhi	r2,129
  80e114:	1885883a 	add	r2,r3,r2
  80e118:	10b84817 	ldw	r2,-7904(r2)
  80e11c:	1000683a 	jmp	r2
  80e120:	0080e1c8 	cmpgei	r2,zero,903
  80e124:	0080e1a8 	cmpgeui	r2,zero,902
  80e128:	0080e1a8 	cmpgeui	r2,zero,902
  80e12c:	0080e1a0 	cmpeqi	r2,zero,902
  80e130:	0080e1a0 	cmpeqi	r2,zero,902
  80e134:	0080e1a0 	cmpeqi	r2,zero,902
  80e138:	0080e1a0 	cmpeqi	r2,zero,902
  80e13c:	0080e1a8 	cmpgeui	r2,zero,902
  80e140:	0080e1a0 	cmpeqi	r2,zero,902
  80e144:	0080e1a0 	cmpeqi	r2,zero,902
  80e148:	0080e1a0 	cmpeqi	r2,zero,902
  80e14c:	0080e1a0 	cmpeqi	r2,zero,902
  80e150:	0080e1a0 	cmpeqi	r2,zero,902
  80e154:	0080e1a0 	cmpeqi	r2,zero,902
  80e158:	0080e1a0 	cmpeqi	r2,zero,902
  80e15c:	0080e1a0 	cmpeqi	r2,zero,902
  80e160:	0080e1c8 	cmpgei	r2,zero,903
  80e164:	0080e1a8 	cmpgeui	r2,zero,902
  80e168:	0080e1a8 	cmpgeui	r2,zero,902
  80e16c:	0080e1a8 	cmpgeui	r2,zero,902
  80e170:	0080e1c8 	cmpgei	r2,zero,903
  80e174:	0080e1a8 	cmpgeui	r2,zero,902
  80e178:	0080e1a8 	cmpgeui	r2,zero,902
  80e17c:	0080e1a0 	cmpeqi	r2,zero,902
  80e180:	0080e1a0 	cmpeqi	r2,zero,902
  80e184:	0080e1a0 	cmpeqi	r2,zero,902
  80e188:	0080e1a0 	cmpeqi	r2,zero,902
  80e18c:	0080e1a0 	cmpeqi	r2,zero,902
  80e190:	0080e1a8 	cmpgeui	r2,zero,902
  80e194:	0080e1a8 	cmpgeui	r2,zero,902
  80e198:	0080e1a0 	cmpeqi	r2,zero,902
  80e19c:	0080e1a0 	cmpeqi	r2,zero,902
  80e1a0:	0009883a 	mov	r4,zero
  80e1a4:	080de600 	call	80de60 <_exit>
  80e1a8:	00800584 	movi	r2,22
  80e1ac:	e0bfff15 	stw	r2,-4(fp)
  80e1b0:	00000606 	br	80e1cc <kill+0xf4>
  80e1b4:	e0bffe17 	ldw	r2,-8(fp)
  80e1b8:	0080040e 	bge	zero,r2,80e1cc <kill+0xf4>
  80e1bc:	008000c4 	movi	r2,3
  80e1c0:	e0bfff15 	stw	r2,-4(fp)
  80e1c4:	00000106 	br	80e1cc <kill+0xf4>
  80e1c8:	0001883a 	nop
  80e1cc:	e0bfff17 	ldw	r2,-4(fp)
  80e1d0:	10000626 	beq	r2,zero,80e1ec <kill+0x114>
  80e1d4:	080e09c0 	call	80e09c <alt_get_errno>
  80e1d8:	1007883a 	mov	r3,r2
  80e1dc:	e0bfff17 	ldw	r2,-4(fp)
  80e1e0:	18800015 	stw	r2,0(r3)
  80e1e4:	00bfffc4 	movi	r2,-1
  80e1e8:	00000106 	br	80e1f0 <kill+0x118>
  80e1ec:	0005883a 	mov	r2,zero
  80e1f0:	e037883a 	mov	sp,fp
  80e1f4:	dfc00117 	ldw	ra,4(sp)
  80e1f8:	df000017 	ldw	fp,0(sp)
  80e1fc:	dec00204 	addi	sp,sp,8
  80e200:	f800283a 	ret

0080e204 <alt_load_section>:
  80e204:	defffc04 	addi	sp,sp,-16
  80e208:	df000315 	stw	fp,12(sp)
  80e20c:	df000304 	addi	fp,sp,12
  80e210:	e13fff15 	stw	r4,-4(fp)
  80e214:	e17ffe15 	stw	r5,-8(fp)
  80e218:	e1bffd15 	stw	r6,-12(fp)
  80e21c:	e0fffe17 	ldw	r3,-8(fp)
  80e220:	e0bfff17 	ldw	r2,-4(fp)
  80e224:	18800c26 	beq	r3,r2,80e258 <alt_load_section+0x54>
  80e228:	00000806 	br	80e24c <alt_load_section+0x48>
  80e22c:	e0ffff17 	ldw	r3,-4(fp)
  80e230:	18800104 	addi	r2,r3,4
  80e234:	e0bfff15 	stw	r2,-4(fp)
  80e238:	e0bffe17 	ldw	r2,-8(fp)
  80e23c:	11000104 	addi	r4,r2,4
  80e240:	e13ffe15 	stw	r4,-8(fp)
  80e244:	18c00017 	ldw	r3,0(r3)
  80e248:	10c00015 	stw	r3,0(r2)
  80e24c:	e0fffe17 	ldw	r3,-8(fp)
  80e250:	e0bffd17 	ldw	r2,-12(fp)
  80e254:	18bff51e 	bne	r3,r2,80e22c <alt_load_section+0x28>
  80e258:	0001883a 	nop
  80e25c:	e037883a 	mov	sp,fp
  80e260:	df000017 	ldw	fp,0(sp)
  80e264:	dec00104 	addi	sp,sp,4
  80e268:	f800283a 	ret

0080e26c <alt_load>:
  80e26c:	defffe04 	addi	sp,sp,-8
  80e270:	dfc00115 	stw	ra,4(sp)
  80e274:	df000015 	stw	fp,0(sp)
  80e278:	d839883a 	mov	fp,sp
  80e27c:	01802074 	movhi	r6,129
  80e280:	318a2e04 	addi	r6,r6,10424
  80e284:	01402074 	movhi	r5,129
  80e288:	29433804 	addi	r5,r5,3296
  80e28c:	01002074 	movhi	r4,129
  80e290:	210a2e04 	addi	r4,r4,10424
  80e294:	080e2040 	call	80e204 <alt_load_section>
  80e298:	01802034 	movhi	r6,128
  80e29c:	31808e04 	addi	r6,r6,568
  80e2a0:	01402034 	movhi	r5,128
  80e2a4:	29400804 	addi	r5,r5,32
  80e2a8:	01002034 	movhi	r4,128
  80e2ac:	21000804 	addi	r4,r4,32
  80e2b0:	080e2040 	call	80e204 <alt_load_section>
  80e2b4:	01802074 	movhi	r6,129
  80e2b8:	31833804 	addi	r6,r6,3296
  80e2bc:	01402074 	movhi	r5,129
  80e2c0:	29418f04 	addi	r5,r5,1596
  80e2c4:	01002074 	movhi	r4,129
  80e2c8:	21018f04 	addi	r4,r4,1596
  80e2cc:	080e2040 	call	80e204 <alt_load_section>
  80e2d0:	080f7a40 	call	80f7a4 <alt_dcache_flush_all>
  80e2d4:	080f99c0 	call	80f99c <alt_icache_flush_all>
  80e2d8:	0001883a 	nop
  80e2dc:	e037883a 	mov	sp,fp
  80e2e0:	dfc00117 	ldw	ra,4(sp)
  80e2e4:	df000017 	ldw	fp,0(sp)
  80e2e8:	dec00204 	addi	sp,sp,8
  80e2ec:	f800283a 	ret

0080e2f0 <alt_get_errno>:
  80e2f0:	defffe04 	addi	sp,sp,-8
  80e2f4:	dfc00115 	stw	ra,4(sp)
  80e2f8:	df000015 	stw	fp,0(sp)
  80e2fc:	d839883a 	mov	fp,sp
  80e300:	d0a00917 	ldw	r2,-32732(gp)
  80e304:	10000326 	beq	r2,zero,80e314 <alt_get_errno+0x24>
  80e308:	d0a00917 	ldw	r2,-32732(gp)
  80e30c:	103ee83a 	callr	r2
  80e310:	00000106 	br	80e318 <alt_get_errno+0x28>
  80e314:	d0a70704 	addi	r2,gp,-25572
  80e318:	e037883a 	mov	sp,fp
  80e31c:	dfc00117 	ldw	ra,4(sp)
  80e320:	df000017 	ldw	fp,0(sp)
  80e324:	dec00204 	addi	sp,sp,8
  80e328:	f800283a 	ret

0080e32c <lseek>:
  80e32c:	defff904 	addi	sp,sp,-28
  80e330:	dfc00615 	stw	ra,24(sp)
  80e334:	df000515 	stw	fp,20(sp)
  80e338:	df000504 	addi	fp,sp,20
  80e33c:	e13ffd15 	stw	r4,-12(fp)
  80e340:	e17ffc15 	stw	r5,-16(fp)
  80e344:	e1bffb15 	stw	r6,-20(fp)
  80e348:	e03fff15 	stw	zero,-4(fp)
  80e34c:	e0bffd17 	ldw	r2,-12(fp)
  80e350:	10000916 	blt	r2,zero,80e378 <lseek+0x4c>
  80e354:	e0fffd17 	ldw	r3,-12(fp)
  80e358:	1805883a 	mov	r2,r3
  80e35c:	1085883a 	add	r2,r2,r2
  80e360:	10c5883a 	add	r2,r2,r3
  80e364:	100490ba 	slli	r2,r2,2
  80e368:	00c02074 	movhi	r3,129
  80e36c:	18c5a804 	addi	r3,r3,5792
  80e370:	10c5883a 	add	r2,r2,r3
  80e374:	00000106 	br	80e37c <lseek+0x50>
  80e378:	0005883a 	mov	r2,zero
  80e37c:	e0bffe15 	stw	r2,-8(fp)
  80e380:	e0bffe17 	ldw	r2,-8(fp)
  80e384:	10001026 	beq	r2,zero,80e3c8 <lseek+0x9c>
  80e388:	e0bffe17 	ldw	r2,-8(fp)
  80e38c:	10800017 	ldw	r2,0(r2)
  80e390:	10800717 	ldw	r2,28(r2)
  80e394:	10000926 	beq	r2,zero,80e3bc <lseek+0x90>
  80e398:	e0bffe17 	ldw	r2,-8(fp)
  80e39c:	10800017 	ldw	r2,0(r2)
  80e3a0:	10800717 	ldw	r2,28(r2)
  80e3a4:	e1bffb17 	ldw	r6,-20(fp)
  80e3a8:	e17ffc17 	ldw	r5,-16(fp)
  80e3ac:	e13ffe17 	ldw	r4,-8(fp)
  80e3b0:	103ee83a 	callr	r2
  80e3b4:	e0bfff15 	stw	r2,-4(fp)
  80e3b8:	00000506 	br	80e3d0 <lseek+0xa4>
  80e3bc:	00bfde84 	movi	r2,-134
  80e3c0:	e0bfff15 	stw	r2,-4(fp)
  80e3c4:	00000206 	br	80e3d0 <lseek+0xa4>
  80e3c8:	00bfebc4 	movi	r2,-81
  80e3cc:	e0bfff15 	stw	r2,-4(fp)
  80e3d0:	e0bfff17 	ldw	r2,-4(fp)
  80e3d4:	1000070e 	bge	r2,zero,80e3f4 <lseek+0xc8>
  80e3d8:	080e2f00 	call	80e2f0 <alt_get_errno>
  80e3dc:	1007883a 	mov	r3,r2
  80e3e0:	e0bfff17 	ldw	r2,-4(fp)
  80e3e4:	0085c83a 	sub	r2,zero,r2
  80e3e8:	18800015 	stw	r2,0(r3)
  80e3ec:	00bfffc4 	movi	r2,-1
  80e3f0:	e0bfff15 	stw	r2,-4(fp)
  80e3f4:	e0bfff17 	ldw	r2,-4(fp)
  80e3f8:	e037883a 	mov	sp,fp
  80e3fc:	dfc00117 	ldw	ra,4(sp)
  80e400:	df000017 	ldw	fp,0(sp)
  80e404:	dec00204 	addi	sp,sp,8
  80e408:	f800283a 	ret

0080e40c <alt_main>:
  80e40c:	defffd04 	addi	sp,sp,-12
  80e410:	dfc00215 	stw	ra,8(sp)
  80e414:	df000115 	stw	fp,4(sp)
  80e418:	df000104 	addi	fp,sp,4
  80e41c:	0009883a 	mov	r4,zero
  80e420:	080ea5c0 	call	80ea5c <alt_irq_init>
  80e424:	0001883a 	nop
  80e428:	080ea980 	call	80ea98 <alt_sys_init>
  80e42c:	01802074 	movhi	r6,129
  80e430:	31833004 	addi	r6,r6,3264
  80e434:	01402074 	movhi	r5,129
  80e438:	29433004 	addi	r5,r5,3264
  80e43c:	01002074 	movhi	r4,129
  80e440:	21033004 	addi	r4,r4,3264
  80e444:	080fd3c0 	call	80fd3c <alt_io_redirect>
  80e448:	080f8d40 	call	80f8d4 <_do_ctors>
  80e44c:	01002074 	movhi	r4,129
  80e450:	213e4e04 	addi	r4,r4,-1736
  80e454:	08103cc0 	call	8103cc <atexit>
  80e458:	d0a70917 	ldw	r2,-25564(gp)
  80e45c:	d0e70a17 	ldw	r3,-25560(gp)
  80e460:	d1270b17 	ldw	r4,-25556(gp)
  80e464:	200d883a 	mov	r6,r4
  80e468:	180b883a 	mov	r5,r3
  80e46c:	1009883a 	mov	r4,r2
  80e470:	08003640 	call	800364 <main>
  80e474:	e0bfff15 	stw	r2,-4(fp)
  80e478:	01000044 	movi	r4,1
  80e47c:	080dd580 	call	80dd58 <close>
  80e480:	e13fff17 	ldw	r4,-4(fp)
  80e484:	08103e00 	call	8103e0 <exit>

0080e488 <__malloc_lock>:
  80e488:	defffe04 	addi	sp,sp,-8
  80e48c:	df000115 	stw	fp,4(sp)
  80e490:	df000104 	addi	fp,sp,4
  80e494:	e13fff15 	stw	r4,-4(fp)
  80e498:	0001883a 	nop
  80e49c:	e037883a 	mov	sp,fp
  80e4a0:	df000017 	ldw	fp,0(sp)
  80e4a4:	dec00104 	addi	sp,sp,4
  80e4a8:	f800283a 	ret

0080e4ac <__malloc_unlock>:
  80e4ac:	defffe04 	addi	sp,sp,-8
  80e4b0:	df000115 	stw	fp,4(sp)
  80e4b4:	df000104 	addi	fp,sp,4
  80e4b8:	e13fff15 	stw	r4,-4(fp)
  80e4bc:	0001883a 	nop
  80e4c0:	e037883a 	mov	sp,fp
  80e4c4:	df000017 	ldw	fp,0(sp)
  80e4c8:	dec00104 	addi	sp,sp,4
  80e4cc:	f800283a 	ret

0080e4d0 <alt_get_errno>:
  80e4d0:	defffe04 	addi	sp,sp,-8
  80e4d4:	dfc00115 	stw	ra,4(sp)
  80e4d8:	df000015 	stw	fp,0(sp)
  80e4dc:	d839883a 	mov	fp,sp
  80e4e0:	d0a00917 	ldw	r2,-32732(gp)
  80e4e4:	10000326 	beq	r2,zero,80e4f4 <alt_get_errno+0x24>
  80e4e8:	d0a00917 	ldw	r2,-32732(gp)
  80e4ec:	103ee83a 	callr	r2
  80e4f0:	00000106 	br	80e4f8 <alt_get_errno+0x28>
  80e4f4:	d0a70704 	addi	r2,gp,-25572
  80e4f8:	e037883a 	mov	sp,fp
  80e4fc:	dfc00117 	ldw	ra,4(sp)
  80e500:	df000017 	ldw	fp,0(sp)
  80e504:	dec00204 	addi	sp,sp,8
  80e508:	f800283a 	ret

0080e50c <read>:
  80e50c:	defff904 	addi	sp,sp,-28
  80e510:	dfc00615 	stw	ra,24(sp)
  80e514:	df000515 	stw	fp,20(sp)
  80e518:	df000504 	addi	fp,sp,20
  80e51c:	e13ffd15 	stw	r4,-12(fp)
  80e520:	e17ffc15 	stw	r5,-16(fp)
  80e524:	e1bffb15 	stw	r6,-20(fp)
  80e528:	e0bffd17 	ldw	r2,-12(fp)
  80e52c:	10000916 	blt	r2,zero,80e554 <read+0x48>
  80e530:	e0fffd17 	ldw	r3,-12(fp)
  80e534:	1805883a 	mov	r2,r3
  80e538:	1085883a 	add	r2,r2,r2
  80e53c:	10c5883a 	add	r2,r2,r3
  80e540:	100490ba 	slli	r2,r2,2
  80e544:	00c02074 	movhi	r3,129
  80e548:	18c5a804 	addi	r3,r3,5792
  80e54c:	10c5883a 	add	r2,r2,r3
  80e550:	00000106 	br	80e558 <read+0x4c>
  80e554:	0005883a 	mov	r2,zero
  80e558:	e0bfff15 	stw	r2,-4(fp)
  80e55c:	e0bfff17 	ldw	r2,-4(fp)
  80e560:	10002226 	beq	r2,zero,80e5ec <read+0xe0>
  80e564:	e0bfff17 	ldw	r2,-4(fp)
  80e568:	10800217 	ldw	r2,8(r2)
  80e56c:	108000cc 	andi	r2,r2,3
  80e570:	10800060 	cmpeqi	r2,r2,1
  80e574:	1000181e 	bne	r2,zero,80e5d8 <read+0xcc>
  80e578:	e0bfff17 	ldw	r2,-4(fp)
  80e57c:	10800017 	ldw	r2,0(r2)
  80e580:	10800517 	ldw	r2,20(r2)
  80e584:	10001426 	beq	r2,zero,80e5d8 <read+0xcc>
  80e588:	e0bfff17 	ldw	r2,-4(fp)
  80e58c:	10800017 	ldw	r2,0(r2)
  80e590:	10800517 	ldw	r2,20(r2)
  80e594:	e0fffb17 	ldw	r3,-20(fp)
  80e598:	180d883a 	mov	r6,r3
  80e59c:	e17ffc17 	ldw	r5,-16(fp)
  80e5a0:	e13fff17 	ldw	r4,-4(fp)
  80e5a4:	103ee83a 	callr	r2
  80e5a8:	e0bffe15 	stw	r2,-8(fp)
  80e5ac:	e0bffe17 	ldw	r2,-8(fp)
  80e5b0:	1000070e 	bge	r2,zero,80e5d0 <read+0xc4>
  80e5b4:	080e4d00 	call	80e4d0 <alt_get_errno>
  80e5b8:	1007883a 	mov	r3,r2
  80e5bc:	e0bffe17 	ldw	r2,-8(fp)
  80e5c0:	0085c83a 	sub	r2,zero,r2
  80e5c4:	18800015 	stw	r2,0(r3)
  80e5c8:	00bfffc4 	movi	r2,-1
  80e5cc:	00000c06 	br	80e600 <read+0xf4>
  80e5d0:	e0bffe17 	ldw	r2,-8(fp)
  80e5d4:	00000a06 	br	80e600 <read+0xf4>
  80e5d8:	080e4d00 	call	80e4d0 <alt_get_errno>
  80e5dc:	1007883a 	mov	r3,r2
  80e5e0:	00800344 	movi	r2,13
  80e5e4:	18800015 	stw	r2,0(r3)
  80e5e8:	00000406 	br	80e5fc <read+0xf0>
  80e5ec:	080e4d00 	call	80e4d0 <alt_get_errno>
  80e5f0:	1007883a 	mov	r3,r2
  80e5f4:	00801444 	movi	r2,81
  80e5f8:	18800015 	stw	r2,0(r3)
  80e5fc:	00bfffc4 	movi	r2,-1
  80e600:	e037883a 	mov	sp,fp
  80e604:	dfc00117 	ldw	ra,4(sp)
  80e608:	df000017 	ldw	fp,0(sp)
  80e60c:	dec00204 	addi	sp,sp,8
  80e610:	f800283a 	ret

0080e614 <alt_release_fd>:
  80e614:	defffe04 	addi	sp,sp,-8
  80e618:	df000115 	stw	fp,4(sp)
  80e61c:	df000104 	addi	fp,sp,4
  80e620:	e13fff15 	stw	r4,-4(fp)
  80e624:	e0bfff17 	ldw	r2,-4(fp)
  80e628:	108000d0 	cmplti	r2,r2,3
  80e62c:	1000101e 	bne	r2,zero,80e670 <alt_release_fd+0x5c>
  80e630:	e0ffff17 	ldw	r3,-4(fp)
  80e634:	1805883a 	mov	r2,r3
  80e638:	1085883a 	add	r2,r2,r2
  80e63c:	10c5883a 	add	r2,r2,r3
  80e640:	100490ba 	slli	r2,r2,2
  80e644:	00c02074 	movhi	r3,129
  80e648:	10c7883a 	add	r3,r2,r3
  80e64c:	1805aa15 	stw	zero,5800(r3)
  80e650:	e0ffff17 	ldw	r3,-4(fp)
  80e654:	1805883a 	mov	r2,r3
  80e658:	1085883a 	add	r2,r2,r2
  80e65c:	10c5883a 	add	r2,r2,r3
  80e660:	100490ba 	slli	r2,r2,2
  80e664:	00c02074 	movhi	r3,129
  80e668:	10c7883a 	add	r3,r2,r3
  80e66c:	1805a815 	stw	zero,5792(r3)
  80e670:	0001883a 	nop
  80e674:	e037883a 	mov	sp,fp
  80e678:	df000017 	ldw	fp,0(sp)
  80e67c:	dec00104 	addi	sp,sp,4
  80e680:	f800283a 	ret

0080e684 <sbrk>:
  80e684:	defff904 	addi	sp,sp,-28
  80e688:	df000615 	stw	fp,24(sp)
  80e68c:	df000604 	addi	fp,sp,24
  80e690:	e13ffa15 	stw	r4,-24(fp)
  80e694:	0005303a 	rdctl	r2,status
  80e698:	e0bffd15 	stw	r2,-12(fp)
  80e69c:	e0fffd17 	ldw	r3,-12(fp)
  80e6a0:	00bfff84 	movi	r2,-2
  80e6a4:	1884703a 	and	r2,r3,r2
  80e6a8:	1001703a 	wrctl	status,r2
  80e6ac:	e0bffd17 	ldw	r2,-12(fp)
  80e6b0:	e0bfff15 	stw	r2,-4(fp)
  80e6b4:	d0a00a17 	ldw	r2,-32728(gp)
  80e6b8:	10c000c4 	addi	r3,r2,3
  80e6bc:	00bfff04 	movi	r2,-4
  80e6c0:	1884703a 	and	r2,r3,r2
  80e6c4:	d0a00a15 	stw	r2,-32728(gp)
  80e6c8:	d0e00a17 	ldw	r3,-32728(gp)
  80e6cc:	e0bffa17 	ldw	r2,-24(fp)
  80e6d0:	1887883a 	add	r3,r3,r2
  80e6d4:	00804034 	movhi	r2,256
  80e6d8:	10800004 	addi	r2,r2,0
  80e6dc:	10c0072e 	bgeu	r2,r3,80e6fc <sbrk+0x78>
  80e6e0:	e0bfff17 	ldw	r2,-4(fp)
  80e6e4:	e0bffc15 	stw	r2,-16(fp)
  80e6e8:	e0bffc17 	ldw	r2,-16(fp)
  80e6ec:	1001703a 	wrctl	status,r2
  80e6f0:	0001883a 	nop
  80e6f4:	00bfffc4 	movi	r2,-1
  80e6f8:	00000c06 	br	80e72c <sbrk+0xa8>
  80e6fc:	d0a00a17 	ldw	r2,-32728(gp)
  80e700:	e0bffe15 	stw	r2,-8(fp)
  80e704:	d0e00a17 	ldw	r3,-32728(gp)
  80e708:	e0bffa17 	ldw	r2,-24(fp)
  80e70c:	1885883a 	add	r2,r3,r2
  80e710:	d0a00a15 	stw	r2,-32728(gp)
  80e714:	e0bfff17 	ldw	r2,-4(fp)
  80e718:	e0bffb15 	stw	r2,-20(fp)
  80e71c:	e0bffb17 	ldw	r2,-20(fp)
  80e720:	1001703a 	wrctl	status,r2
  80e724:	0001883a 	nop
  80e728:	e0bffe17 	ldw	r2,-8(fp)
  80e72c:	e037883a 	mov	sp,fp
  80e730:	df000017 	ldw	fp,0(sp)
  80e734:	dec00104 	addi	sp,sp,4
  80e738:	f800283a 	ret

0080e73c <alt_alarm_stop>:
  80e73c:	defffa04 	addi	sp,sp,-24
  80e740:	df000515 	stw	fp,20(sp)
  80e744:	df000504 	addi	fp,sp,20
  80e748:	e13ffb15 	stw	r4,-20(fp)
  80e74c:	0005303a 	rdctl	r2,status
  80e750:	e0bffc15 	stw	r2,-16(fp)
  80e754:	e0fffc17 	ldw	r3,-16(fp)
  80e758:	00bfff84 	movi	r2,-2
  80e75c:	1884703a 	and	r2,r3,r2
  80e760:	1001703a 	wrctl	status,r2
  80e764:	e0bffc17 	ldw	r2,-16(fp)
  80e768:	e0bfff15 	stw	r2,-4(fp)
  80e76c:	e0bffb17 	ldw	r2,-20(fp)
  80e770:	e0bffd15 	stw	r2,-12(fp)
  80e774:	e0bffd17 	ldw	r2,-12(fp)
  80e778:	10800017 	ldw	r2,0(r2)
  80e77c:	e0fffd17 	ldw	r3,-12(fp)
  80e780:	18c00117 	ldw	r3,4(r3)
  80e784:	10c00115 	stw	r3,4(r2)
  80e788:	e0bffd17 	ldw	r2,-12(fp)
  80e78c:	10800117 	ldw	r2,4(r2)
  80e790:	e0fffd17 	ldw	r3,-12(fp)
  80e794:	18c00017 	ldw	r3,0(r3)
  80e798:	10c00015 	stw	r3,0(r2)
  80e79c:	e0bffd17 	ldw	r2,-12(fp)
  80e7a0:	e0fffd17 	ldw	r3,-12(fp)
  80e7a4:	10c00115 	stw	r3,4(r2)
  80e7a8:	e0bffd17 	ldw	r2,-12(fp)
  80e7ac:	e0fffd17 	ldw	r3,-12(fp)
  80e7b0:	10c00015 	stw	r3,0(r2)
  80e7b4:	0001883a 	nop
  80e7b8:	e0bfff17 	ldw	r2,-4(fp)
  80e7bc:	e0bffe15 	stw	r2,-8(fp)
  80e7c0:	e0bffe17 	ldw	r2,-8(fp)
  80e7c4:	1001703a 	wrctl	status,r2
  80e7c8:	0001883a 	nop
  80e7cc:	0001883a 	nop
  80e7d0:	e037883a 	mov	sp,fp
  80e7d4:	df000017 	ldw	fp,0(sp)
  80e7d8:	dec00104 	addi	sp,sp,4
  80e7dc:	f800283a 	ret

0080e7e0 <alt_tick>:
  80e7e0:	defffb04 	addi	sp,sp,-20
  80e7e4:	dfc00415 	stw	ra,16(sp)
  80e7e8:	df000315 	stw	fp,12(sp)
  80e7ec:	df000304 	addi	fp,sp,12
  80e7f0:	d0a00b17 	ldw	r2,-32724(gp)
  80e7f4:	e0bfff15 	stw	r2,-4(fp)
  80e7f8:	d0a70d17 	ldw	r2,-25548(gp)
  80e7fc:	10800044 	addi	r2,r2,1
  80e800:	d0a70d15 	stw	r2,-25548(gp)
  80e804:	00002e06 	br	80e8c0 <alt_tick+0xe0>
  80e808:	e0bfff17 	ldw	r2,-4(fp)
  80e80c:	10800017 	ldw	r2,0(r2)
  80e810:	e0bffe15 	stw	r2,-8(fp)
  80e814:	e0bfff17 	ldw	r2,-4(fp)
  80e818:	10800403 	ldbu	r2,16(r2)
  80e81c:	10803fcc 	andi	r2,r2,255
  80e820:	10000426 	beq	r2,zero,80e834 <alt_tick+0x54>
  80e824:	d0a70d17 	ldw	r2,-25548(gp)
  80e828:	1000021e 	bne	r2,zero,80e834 <alt_tick+0x54>
  80e82c:	e0bfff17 	ldw	r2,-4(fp)
  80e830:	10000405 	stb	zero,16(r2)
  80e834:	e0bfff17 	ldw	r2,-4(fp)
  80e838:	10800217 	ldw	r2,8(r2)
  80e83c:	d0e70d17 	ldw	r3,-25548(gp)
  80e840:	18801d36 	bltu	r3,r2,80e8b8 <alt_tick+0xd8>
  80e844:	e0bfff17 	ldw	r2,-4(fp)
  80e848:	10800403 	ldbu	r2,16(r2)
  80e84c:	10803fcc 	andi	r2,r2,255
  80e850:	1000191e 	bne	r2,zero,80e8b8 <alt_tick+0xd8>
  80e854:	e0bfff17 	ldw	r2,-4(fp)
  80e858:	10800317 	ldw	r2,12(r2)
  80e85c:	e0ffff17 	ldw	r3,-4(fp)
  80e860:	18c00517 	ldw	r3,20(r3)
  80e864:	1809883a 	mov	r4,r3
  80e868:	103ee83a 	callr	r2
  80e86c:	e0bffd15 	stw	r2,-12(fp)
  80e870:	e0bffd17 	ldw	r2,-12(fp)
  80e874:	1000031e 	bne	r2,zero,80e884 <alt_tick+0xa4>
  80e878:	e13fff17 	ldw	r4,-4(fp)
  80e87c:	080e73c0 	call	80e73c <alt_alarm_stop>
  80e880:	00000d06 	br	80e8b8 <alt_tick+0xd8>
  80e884:	e0bfff17 	ldw	r2,-4(fp)
  80e888:	10c00217 	ldw	r3,8(r2)
  80e88c:	e0bffd17 	ldw	r2,-12(fp)
  80e890:	1887883a 	add	r3,r3,r2
  80e894:	e0bfff17 	ldw	r2,-4(fp)
  80e898:	10c00215 	stw	r3,8(r2)
  80e89c:	e0bfff17 	ldw	r2,-4(fp)
  80e8a0:	10c00217 	ldw	r3,8(r2)
  80e8a4:	d0a70d17 	ldw	r2,-25548(gp)
  80e8a8:	1880032e 	bgeu	r3,r2,80e8b8 <alt_tick+0xd8>
  80e8ac:	e0bfff17 	ldw	r2,-4(fp)
  80e8b0:	00c00044 	movi	r3,1
  80e8b4:	10c00405 	stb	r3,16(r2)
  80e8b8:	e0bffe17 	ldw	r2,-8(fp)
  80e8bc:	e0bfff15 	stw	r2,-4(fp)
  80e8c0:	e0ffff17 	ldw	r3,-4(fp)
  80e8c4:	d0a00b04 	addi	r2,gp,-32724
  80e8c8:	18bfcf1e 	bne	r3,r2,80e808 <alt_tick+0x28>
  80e8cc:	0001883a 	nop
  80e8d0:	0001883a 	nop
  80e8d4:	e037883a 	mov	sp,fp
  80e8d8:	dfc00117 	ldw	ra,4(sp)
  80e8dc:	df000017 	ldw	fp,0(sp)
  80e8e0:	dec00204 	addi	sp,sp,8
  80e8e4:	f800283a 	ret

0080e8e8 <alt_get_errno>:
  80e8e8:	defffe04 	addi	sp,sp,-8
  80e8ec:	dfc00115 	stw	ra,4(sp)
  80e8f0:	df000015 	stw	fp,0(sp)
  80e8f4:	d839883a 	mov	fp,sp
  80e8f8:	d0a00917 	ldw	r2,-32732(gp)
  80e8fc:	10000326 	beq	r2,zero,80e90c <alt_get_errno+0x24>
  80e900:	d0a00917 	ldw	r2,-32732(gp)
  80e904:	103ee83a 	callr	r2
  80e908:	00000106 	br	80e910 <alt_get_errno+0x28>
  80e90c:	d0a70704 	addi	r2,gp,-25572
  80e910:	e037883a 	mov	sp,fp
  80e914:	dfc00117 	ldw	ra,4(sp)
  80e918:	df000017 	ldw	fp,0(sp)
  80e91c:	dec00204 	addi	sp,sp,8
  80e920:	f800283a 	ret

0080e924 <write>:
  80e924:	defff904 	addi	sp,sp,-28
  80e928:	dfc00615 	stw	ra,24(sp)
  80e92c:	df000515 	stw	fp,20(sp)
  80e930:	df000504 	addi	fp,sp,20
  80e934:	e13ffd15 	stw	r4,-12(fp)
  80e938:	e17ffc15 	stw	r5,-16(fp)
  80e93c:	e1bffb15 	stw	r6,-20(fp)
  80e940:	e0bffd17 	ldw	r2,-12(fp)
  80e944:	10000916 	blt	r2,zero,80e96c <write+0x48>
  80e948:	e0fffd17 	ldw	r3,-12(fp)
  80e94c:	1805883a 	mov	r2,r3
  80e950:	1085883a 	add	r2,r2,r2
  80e954:	10c5883a 	add	r2,r2,r3
  80e958:	100490ba 	slli	r2,r2,2
  80e95c:	00c02074 	movhi	r3,129
  80e960:	18c5a804 	addi	r3,r3,5792
  80e964:	10c5883a 	add	r2,r2,r3
  80e968:	00000106 	br	80e970 <write+0x4c>
  80e96c:	0005883a 	mov	r2,zero
  80e970:	e0bfff15 	stw	r2,-4(fp)
  80e974:	e0bfff17 	ldw	r2,-4(fp)
  80e978:	10002126 	beq	r2,zero,80ea00 <write+0xdc>
  80e97c:	e0bfff17 	ldw	r2,-4(fp)
  80e980:	10800217 	ldw	r2,8(r2)
  80e984:	108000cc 	andi	r2,r2,3
  80e988:	10001826 	beq	r2,zero,80e9ec <write+0xc8>
  80e98c:	e0bfff17 	ldw	r2,-4(fp)
  80e990:	10800017 	ldw	r2,0(r2)
  80e994:	10800617 	ldw	r2,24(r2)
  80e998:	10001426 	beq	r2,zero,80e9ec <write+0xc8>
  80e99c:	e0bfff17 	ldw	r2,-4(fp)
  80e9a0:	10800017 	ldw	r2,0(r2)
  80e9a4:	10800617 	ldw	r2,24(r2)
  80e9a8:	e0fffb17 	ldw	r3,-20(fp)
  80e9ac:	180d883a 	mov	r6,r3
  80e9b0:	e17ffc17 	ldw	r5,-16(fp)
  80e9b4:	e13fff17 	ldw	r4,-4(fp)
  80e9b8:	103ee83a 	callr	r2
  80e9bc:	e0bffe15 	stw	r2,-8(fp)
  80e9c0:	e0bffe17 	ldw	r2,-8(fp)
  80e9c4:	1000070e 	bge	r2,zero,80e9e4 <write+0xc0>
  80e9c8:	080e8e80 	call	80e8e8 <alt_get_errno>
  80e9cc:	1007883a 	mov	r3,r2
  80e9d0:	e0bffe17 	ldw	r2,-8(fp)
  80e9d4:	0085c83a 	sub	r2,zero,r2
  80e9d8:	18800015 	stw	r2,0(r3)
  80e9dc:	00bfffc4 	movi	r2,-1
  80e9e0:	00000c06 	br	80ea14 <write+0xf0>
  80e9e4:	e0bffe17 	ldw	r2,-8(fp)
  80e9e8:	00000a06 	br	80ea14 <write+0xf0>
  80e9ec:	080e8e80 	call	80e8e8 <alt_get_errno>
  80e9f0:	1007883a 	mov	r3,r2
  80e9f4:	00800344 	movi	r2,13
  80e9f8:	18800015 	stw	r2,0(r3)
  80e9fc:	00000406 	br	80ea10 <write+0xec>
  80ea00:	080e8e80 	call	80e8e8 <alt_get_errno>
  80ea04:	1007883a 	mov	r3,r2
  80ea08:	00801444 	movi	r2,81
  80ea0c:	18800015 	stw	r2,0(r3)
  80ea10:	00bfffc4 	movi	r2,-1
  80ea14:	e037883a 	mov	sp,fp
  80ea18:	dfc00117 	ldw	ra,4(sp)
  80ea1c:	df000017 	ldw	fp,0(sp)
  80ea20:	dec00204 	addi	sp,sp,8
  80ea24:	f800283a 	ret

0080ea28 <alt_dev_reg>:
  80ea28:	defffd04 	addi	sp,sp,-12
  80ea2c:	dfc00215 	stw	ra,8(sp)
  80ea30:	df000115 	stw	fp,4(sp)
  80ea34:	df000104 	addi	fp,sp,4
  80ea38:	e13fff15 	stw	r4,-4(fp)
  80ea3c:	d1600604 	addi	r5,gp,-32744
  80ea40:	e13fff17 	ldw	r4,-4(fp)
  80ea44:	080f82c0 	call	80f82c <alt_dev_llist_insert>
  80ea48:	e037883a 	mov	sp,fp
  80ea4c:	dfc00117 	ldw	ra,4(sp)
  80ea50:	df000017 	ldw	fp,0(sp)
  80ea54:	dec00204 	addi	sp,sp,8
  80ea58:	f800283a 	ret

0080ea5c <alt_irq_init>:
  80ea5c:	defffd04 	addi	sp,sp,-12
  80ea60:	dfc00215 	stw	ra,8(sp)
  80ea64:	df000115 	stw	fp,4(sp)
  80ea68:	df000104 	addi	fp,sp,4
  80ea6c:	e13fff15 	stw	r4,-4(fp)
  80ea70:	08100300 	call	810030 <altera_nios2_gen2_irq_init>
  80ea74:	00800044 	movi	r2,1
  80ea78:	1001703a 	wrctl	status,r2
  80ea7c:	0001883a 	nop
  80ea80:	0001883a 	nop
  80ea84:	e037883a 	mov	sp,fp
  80ea88:	dfc00117 	ldw	ra,4(sp)
  80ea8c:	df000017 	ldw	fp,0(sp)
  80ea90:	dec00204 	addi	sp,sp,8
  80ea94:	f800283a 	ret

0080ea98 <alt_sys_init>:
  80ea98:	defffe04 	addi	sp,sp,-8
  80ea9c:	dfc00115 	stw	ra,4(sp)
  80eaa0:	df000015 	stw	fp,0(sp)
  80eaa4:	d839883a 	mov	fp,sp
  80eaa8:	01c0fa04 	movi	r7,1000
  80eaac:	01800044 	movi	r6,1
  80eab0:	000b883a 	mov	r5,zero
  80eab4:	01004034 	movhi	r4,256
  80eab8:	21040004 	addi	r4,r4,4096
  80eabc:	080f5ec0 	call	80f5ec <alt_avalon_timer_sc_init>
  80eac0:	01800404 	movi	r6,16
  80eac4:	000b883a 	mov	r5,zero
  80eac8:	01002074 	movhi	r4,129
  80eacc:	21061204 	addi	r4,r4,6216
  80ead0:	080ec600 	call	80ec60 <altera_avalon_jtag_uart_init>
  80ead4:	01002074 	movhi	r4,129
  80ead8:	21060804 	addi	r4,r4,6176
  80eadc:	080ea280 	call	80ea28 <alt_dev_reg>
  80eae0:	0001883a 	nop
  80eae4:	0001883a 	nop
  80eae8:	e037883a 	mov	sp,fp
  80eaec:	dfc00117 	ldw	ra,4(sp)
  80eaf0:	df000017 	ldw	fp,0(sp)
  80eaf4:	dec00204 	addi	sp,sp,8
  80eaf8:	f800283a 	ret

0080eafc <altera_avalon_jtag_uart_read_fd>:
  80eafc:	defffa04 	addi	sp,sp,-24
  80eb00:	dfc00515 	stw	ra,20(sp)
  80eb04:	df000415 	stw	fp,16(sp)
  80eb08:	df000404 	addi	fp,sp,16
  80eb0c:	e13ffe15 	stw	r4,-8(fp)
  80eb10:	e17ffd15 	stw	r5,-12(fp)
  80eb14:	e1bffc15 	stw	r6,-16(fp)
  80eb18:	e0bffe17 	ldw	r2,-8(fp)
  80eb1c:	10800017 	ldw	r2,0(r2)
  80eb20:	e0bfff15 	stw	r2,-4(fp)
  80eb24:	e0bfff17 	ldw	r2,-4(fp)
  80eb28:	10c00a04 	addi	r3,r2,40
  80eb2c:	e0bffe17 	ldw	r2,-8(fp)
  80eb30:	10800217 	ldw	r2,8(r2)
  80eb34:	100f883a 	mov	r7,r2
  80eb38:	e1bffc17 	ldw	r6,-16(fp)
  80eb3c:	e17ffd17 	ldw	r5,-12(fp)
  80eb40:	1809883a 	mov	r4,r3
  80eb44:	080f1280 	call	80f128 <altera_avalon_jtag_uart_read>
  80eb48:	e037883a 	mov	sp,fp
  80eb4c:	dfc00117 	ldw	ra,4(sp)
  80eb50:	df000017 	ldw	fp,0(sp)
  80eb54:	dec00204 	addi	sp,sp,8
  80eb58:	f800283a 	ret

0080eb5c <altera_avalon_jtag_uart_write_fd>:
  80eb5c:	defffa04 	addi	sp,sp,-24
  80eb60:	dfc00515 	stw	ra,20(sp)
  80eb64:	df000415 	stw	fp,16(sp)
  80eb68:	df000404 	addi	fp,sp,16
  80eb6c:	e13ffe15 	stw	r4,-8(fp)
  80eb70:	e17ffd15 	stw	r5,-12(fp)
  80eb74:	e1bffc15 	stw	r6,-16(fp)
  80eb78:	e0bffe17 	ldw	r2,-8(fp)
  80eb7c:	10800017 	ldw	r2,0(r2)
  80eb80:	e0bfff15 	stw	r2,-4(fp)
  80eb84:	e0bfff17 	ldw	r2,-4(fp)
  80eb88:	10c00a04 	addi	r3,r2,40
  80eb8c:	e0bffe17 	ldw	r2,-8(fp)
  80eb90:	10800217 	ldw	r2,8(r2)
  80eb94:	100f883a 	mov	r7,r2
  80eb98:	e1bffc17 	ldw	r6,-16(fp)
  80eb9c:	e17ffd17 	ldw	r5,-12(fp)
  80eba0:	1809883a 	mov	r4,r3
  80eba4:	080f3480 	call	80f348 <altera_avalon_jtag_uart_write>
  80eba8:	e037883a 	mov	sp,fp
  80ebac:	dfc00117 	ldw	ra,4(sp)
  80ebb0:	df000017 	ldw	fp,0(sp)
  80ebb4:	dec00204 	addi	sp,sp,8
  80ebb8:	f800283a 	ret

0080ebbc <altera_avalon_jtag_uart_close_fd>:
  80ebbc:	defffc04 	addi	sp,sp,-16
  80ebc0:	dfc00315 	stw	ra,12(sp)
  80ebc4:	df000215 	stw	fp,8(sp)
  80ebc8:	df000204 	addi	fp,sp,8
  80ebcc:	e13ffe15 	stw	r4,-8(fp)
  80ebd0:	e0bffe17 	ldw	r2,-8(fp)
  80ebd4:	10800017 	ldw	r2,0(r2)
  80ebd8:	e0bfff15 	stw	r2,-4(fp)
  80ebdc:	e0bfff17 	ldw	r2,-4(fp)
  80ebe0:	10c00a04 	addi	r3,r2,40
  80ebe4:	e0bffe17 	ldw	r2,-8(fp)
  80ebe8:	10800217 	ldw	r2,8(r2)
  80ebec:	100b883a 	mov	r5,r2
  80ebf0:	1809883a 	mov	r4,r3
  80ebf4:	080efcc0 	call	80efcc <altera_avalon_jtag_uart_close>
  80ebf8:	e037883a 	mov	sp,fp
  80ebfc:	dfc00117 	ldw	ra,4(sp)
  80ec00:	df000017 	ldw	fp,0(sp)
  80ec04:	dec00204 	addi	sp,sp,8
  80ec08:	f800283a 	ret

0080ec0c <altera_avalon_jtag_uart_ioctl_fd>:
  80ec0c:	defffa04 	addi	sp,sp,-24
  80ec10:	dfc00515 	stw	ra,20(sp)
  80ec14:	df000415 	stw	fp,16(sp)
  80ec18:	df000404 	addi	fp,sp,16
  80ec1c:	e13ffe15 	stw	r4,-8(fp)
  80ec20:	e17ffd15 	stw	r5,-12(fp)
  80ec24:	e1bffc15 	stw	r6,-16(fp)
  80ec28:	e0bffe17 	ldw	r2,-8(fp)
  80ec2c:	10800017 	ldw	r2,0(r2)
  80ec30:	e0bfff15 	stw	r2,-4(fp)
  80ec34:	e0bfff17 	ldw	r2,-4(fp)
  80ec38:	10800a04 	addi	r2,r2,40
  80ec3c:	e1bffc17 	ldw	r6,-16(fp)
  80ec40:	e17ffd17 	ldw	r5,-12(fp)
  80ec44:	1009883a 	mov	r4,r2
  80ec48:	080f0340 	call	80f034 <altera_avalon_jtag_uart_ioctl>
  80ec4c:	e037883a 	mov	sp,fp
  80ec50:	dfc00117 	ldw	ra,4(sp)
  80ec54:	df000017 	ldw	fp,0(sp)
  80ec58:	dec00204 	addi	sp,sp,8
  80ec5c:	f800283a 	ret

0080ec60 <altera_avalon_jtag_uart_init>:
  80ec60:	defffa04 	addi	sp,sp,-24
  80ec64:	dfc00515 	stw	ra,20(sp)
  80ec68:	df000415 	stw	fp,16(sp)
  80ec6c:	df000404 	addi	fp,sp,16
  80ec70:	e13fff15 	stw	r4,-4(fp)
  80ec74:	e17ffe15 	stw	r5,-8(fp)
  80ec78:	e1bffd15 	stw	r6,-12(fp)
  80ec7c:	e0bfff17 	ldw	r2,-4(fp)
  80ec80:	00c00044 	movi	r3,1
  80ec84:	10c00815 	stw	r3,32(r2)
  80ec88:	e0bfff17 	ldw	r2,-4(fp)
  80ec8c:	10800017 	ldw	r2,0(r2)
  80ec90:	10800104 	addi	r2,r2,4
  80ec94:	1007883a 	mov	r3,r2
  80ec98:	e0bfff17 	ldw	r2,-4(fp)
  80ec9c:	10800817 	ldw	r2,32(r2)
  80eca0:	18800035 	stwio	r2,0(r3)
  80eca4:	e0bffe17 	ldw	r2,-8(fp)
  80eca8:	e0fffd17 	ldw	r3,-12(fp)
  80ecac:	d8000015 	stw	zero,0(sp)
  80ecb0:	e1ffff17 	ldw	r7,-4(fp)
  80ecb4:	01802074 	movhi	r6,129
  80ecb8:	31bb4804 	addi	r6,r6,-4832
  80ecbc:	180b883a 	mov	r5,r3
  80ecc0:	1009883a 	mov	r4,r2
  80ecc4:	080f9d00 	call	80f9d0 <alt_ic_isr_register>
  80ecc8:	e0bfff17 	ldw	r2,-4(fp)
  80eccc:	10000915 	stw	zero,36(r2)
  80ecd0:	e0bfff17 	ldw	r2,-4(fp)
  80ecd4:	10800204 	addi	r2,r2,8
  80ecd8:	d0e70c17 	ldw	r3,-25552(gp)
  80ecdc:	e1ffff17 	ldw	r7,-4(fp)
  80ece0:	01802074 	movhi	r6,129
  80ece4:	31bbcb04 	addi	r6,r6,-4308
  80ece8:	180b883a 	mov	r5,r3
  80ecec:	1009883a 	mov	r4,r2
  80ecf0:	080f6700 	call	80f670 <alt_alarm_start>
  80ecf4:	1000040e 	bge	r2,zero,80ed08 <altera_avalon_jtag_uart_init+0xa8>
  80ecf8:	e0ffff17 	ldw	r3,-4(fp)
  80ecfc:	00a00034 	movhi	r2,32768
  80ed00:	10bfffc4 	addi	r2,r2,-1
  80ed04:	18800115 	stw	r2,4(r3)
  80ed08:	0001883a 	nop
  80ed0c:	e037883a 	mov	sp,fp
  80ed10:	dfc00117 	ldw	ra,4(sp)
  80ed14:	df000017 	ldw	fp,0(sp)
  80ed18:	dec00204 	addi	sp,sp,8
  80ed1c:	f800283a 	ret

0080ed20 <altera_avalon_jtag_uart_irq>:
  80ed20:	defff804 	addi	sp,sp,-32
  80ed24:	df000715 	stw	fp,28(sp)
  80ed28:	df000704 	addi	fp,sp,28
  80ed2c:	e13ff915 	stw	r4,-28(fp)
  80ed30:	e0bff917 	ldw	r2,-28(fp)
  80ed34:	e0bffd15 	stw	r2,-12(fp)
  80ed38:	e0bffd17 	ldw	r2,-12(fp)
  80ed3c:	10800017 	ldw	r2,0(r2)
  80ed40:	e0bffc15 	stw	r2,-16(fp)
  80ed44:	e0bffc17 	ldw	r2,-16(fp)
  80ed48:	10800104 	addi	r2,r2,4
  80ed4c:	10800037 	ldwio	r2,0(r2)
  80ed50:	e0bffb15 	stw	r2,-20(fp)
  80ed54:	e0bffb17 	ldw	r2,-20(fp)
  80ed58:	1080c00c 	andi	r2,r2,768
  80ed5c:	10006d26 	beq	r2,zero,80ef14 <altera_avalon_jtag_uart_irq+0x1f4>
  80ed60:	e0bffb17 	ldw	r2,-20(fp)
  80ed64:	1080400c 	andi	r2,r2,256
  80ed68:	10003526 	beq	r2,zero,80ee40 <altera_avalon_jtag_uart_irq+0x120>
  80ed6c:	00800074 	movhi	r2,1
  80ed70:	e0bfff15 	stw	r2,-4(fp)
  80ed74:	e0bffd17 	ldw	r2,-12(fp)
  80ed78:	10800a17 	ldw	r2,40(r2)
  80ed7c:	10800044 	addi	r2,r2,1
  80ed80:	1081ffcc 	andi	r2,r2,2047
  80ed84:	e0bffa15 	stw	r2,-24(fp)
  80ed88:	e0bffd17 	ldw	r2,-12(fp)
  80ed8c:	10800b17 	ldw	r2,44(r2)
  80ed90:	e0fffa17 	ldw	r3,-24(fp)
  80ed94:	18801526 	beq	r3,r2,80edec <altera_avalon_jtag_uart_irq+0xcc>
  80ed98:	e0bffc17 	ldw	r2,-16(fp)
  80ed9c:	10800037 	ldwio	r2,0(r2)
  80eda0:	e0bfff15 	stw	r2,-4(fp)
  80eda4:	e0bfff17 	ldw	r2,-4(fp)
  80eda8:	10a0000c 	andi	r2,r2,32768
  80edac:	10001126 	beq	r2,zero,80edf4 <altera_avalon_jtag_uart_irq+0xd4>
  80edb0:	e0bffd17 	ldw	r2,-12(fp)
  80edb4:	10800a17 	ldw	r2,40(r2)
  80edb8:	e0ffff17 	ldw	r3,-4(fp)
  80edbc:	1809883a 	mov	r4,r3
  80edc0:	e0fffd17 	ldw	r3,-12(fp)
  80edc4:	1885883a 	add	r2,r3,r2
  80edc8:	11000e05 	stb	r4,56(r2)
  80edcc:	e0bffd17 	ldw	r2,-12(fp)
  80edd0:	10800a17 	ldw	r2,40(r2)
  80edd4:	10800044 	addi	r2,r2,1
  80edd8:	10c1ffcc 	andi	r3,r2,2047
  80eddc:	e0bffd17 	ldw	r2,-12(fp)
  80ede0:	10c00a15 	stw	r3,40(r2)
  80ede4:	0001883a 	nop
  80ede8:	003fe206 	br	80ed74 <altera_avalon_jtag_uart_irq+0x54>
  80edec:	0001883a 	nop
  80edf0:	00000106 	br	80edf8 <altera_avalon_jtag_uart_irq+0xd8>
  80edf4:	0001883a 	nop
  80edf8:	e0bfff17 	ldw	r2,-4(fp)
  80edfc:	10bfffec 	andhi	r2,r2,65535
  80ee00:	10000f26 	beq	r2,zero,80ee40 <altera_avalon_jtag_uart_irq+0x120>
  80ee04:	e0bffd17 	ldw	r2,-12(fp)
  80ee08:	10c00817 	ldw	r3,32(r2)
  80ee0c:	00bfff84 	movi	r2,-2
  80ee10:	1886703a 	and	r3,r3,r2
  80ee14:	e0bffd17 	ldw	r2,-12(fp)
  80ee18:	10c00815 	stw	r3,32(r2)
  80ee1c:	e0bffc17 	ldw	r2,-16(fp)
  80ee20:	10800104 	addi	r2,r2,4
  80ee24:	1007883a 	mov	r3,r2
  80ee28:	e0bffd17 	ldw	r2,-12(fp)
  80ee2c:	10800817 	ldw	r2,32(r2)
  80ee30:	18800035 	stwio	r2,0(r3)
  80ee34:	e0bffc17 	ldw	r2,-16(fp)
  80ee38:	10800104 	addi	r2,r2,4
  80ee3c:	10800037 	ldwio	r2,0(r2)
  80ee40:	e0bffb17 	ldw	r2,-20(fp)
  80ee44:	1080800c 	andi	r2,r2,512
  80ee48:	103fbe26 	beq	r2,zero,80ed44 <altera_avalon_jtag_uart_irq+0x24>
  80ee4c:	e0bffb17 	ldw	r2,-20(fp)
  80ee50:	1004d43a 	srli	r2,r2,16
  80ee54:	e0bffe15 	stw	r2,-8(fp)
  80ee58:	00001406 	br	80eeac <altera_avalon_jtag_uart_irq+0x18c>
  80ee5c:	e0bffc17 	ldw	r2,-16(fp)
  80ee60:	e0fffd17 	ldw	r3,-12(fp)
  80ee64:	18c00d17 	ldw	r3,52(r3)
  80ee68:	e13ffd17 	ldw	r4,-12(fp)
  80ee6c:	20c7883a 	add	r3,r4,r3
  80ee70:	18c20e03 	ldbu	r3,2104(r3)
  80ee74:	18c03fcc 	andi	r3,r3,255
  80ee78:	18c0201c 	xori	r3,r3,128
  80ee7c:	18ffe004 	addi	r3,r3,-128
  80ee80:	10c00035 	stwio	r3,0(r2)
  80ee84:	e0bffd17 	ldw	r2,-12(fp)
  80ee88:	10800d17 	ldw	r2,52(r2)
  80ee8c:	10800044 	addi	r2,r2,1
  80ee90:	10c1ffcc 	andi	r3,r2,2047
  80ee94:	e0bffd17 	ldw	r2,-12(fp)
  80ee98:	10c00d15 	stw	r3,52(r2)
  80ee9c:	0001883a 	nop
  80eea0:	e0bffe17 	ldw	r2,-8(fp)
  80eea4:	10bfffc4 	addi	r2,r2,-1
  80eea8:	e0bffe15 	stw	r2,-8(fp)
  80eeac:	e0bffe17 	ldw	r2,-8(fp)
  80eeb0:	10000526 	beq	r2,zero,80eec8 <altera_avalon_jtag_uart_irq+0x1a8>
  80eeb4:	e0bffd17 	ldw	r2,-12(fp)
  80eeb8:	10c00d17 	ldw	r3,52(r2)
  80eebc:	e0bffd17 	ldw	r2,-12(fp)
  80eec0:	10800c17 	ldw	r2,48(r2)
  80eec4:	18bfe51e 	bne	r3,r2,80ee5c <altera_avalon_jtag_uart_irq+0x13c>
  80eec8:	e0bffe17 	ldw	r2,-8(fp)
  80eecc:	103f9d26 	beq	r2,zero,80ed44 <altera_avalon_jtag_uart_irq+0x24>
  80eed0:	e0bffd17 	ldw	r2,-12(fp)
  80eed4:	10c00817 	ldw	r3,32(r2)
  80eed8:	00bfff44 	movi	r2,-3
  80eedc:	1886703a 	and	r3,r3,r2
  80eee0:	e0bffd17 	ldw	r2,-12(fp)
  80eee4:	10c00815 	stw	r3,32(r2)
  80eee8:	e0bffd17 	ldw	r2,-12(fp)
  80eeec:	10800017 	ldw	r2,0(r2)
  80eef0:	10800104 	addi	r2,r2,4
  80eef4:	1007883a 	mov	r3,r2
  80eef8:	e0bffd17 	ldw	r2,-12(fp)
  80eefc:	10800817 	ldw	r2,32(r2)
  80ef00:	18800035 	stwio	r2,0(r3)
  80ef04:	e0bffc17 	ldw	r2,-16(fp)
  80ef08:	10800104 	addi	r2,r2,4
  80ef0c:	10800037 	ldwio	r2,0(r2)
  80ef10:	003f8c06 	br	80ed44 <altera_avalon_jtag_uart_irq+0x24>
  80ef14:	0001883a 	nop
  80ef18:	0001883a 	nop
  80ef1c:	e037883a 	mov	sp,fp
  80ef20:	df000017 	ldw	fp,0(sp)
  80ef24:	dec00104 	addi	sp,sp,4
  80ef28:	f800283a 	ret

0080ef2c <altera_avalon_jtag_uart_timeout>:
  80ef2c:	defffc04 	addi	sp,sp,-16
  80ef30:	df000315 	stw	fp,12(sp)
  80ef34:	df000304 	addi	fp,sp,12
  80ef38:	e13ffd15 	stw	r4,-12(fp)
  80ef3c:	e0bffd17 	ldw	r2,-12(fp)
  80ef40:	e0bfff15 	stw	r2,-4(fp)
  80ef44:	e0bfff17 	ldw	r2,-4(fp)
  80ef48:	10800017 	ldw	r2,0(r2)
  80ef4c:	10800104 	addi	r2,r2,4
  80ef50:	10800037 	ldwio	r2,0(r2)
  80ef54:	e0bffe15 	stw	r2,-8(fp)
  80ef58:	e0bffe17 	ldw	r2,-8(fp)
  80ef5c:	1081000c 	andi	r2,r2,1024
  80ef60:	10000b26 	beq	r2,zero,80ef90 <altera_avalon_jtag_uart_timeout+0x64>
  80ef64:	e0bfff17 	ldw	r2,-4(fp)
  80ef68:	10800017 	ldw	r2,0(r2)
  80ef6c:	10800104 	addi	r2,r2,4
  80ef70:	1007883a 	mov	r3,r2
  80ef74:	e0bfff17 	ldw	r2,-4(fp)
  80ef78:	10800817 	ldw	r2,32(r2)
  80ef7c:	10810014 	ori	r2,r2,1024
  80ef80:	18800035 	stwio	r2,0(r3)
  80ef84:	e0bfff17 	ldw	r2,-4(fp)
  80ef88:	10000915 	stw	zero,36(r2)
  80ef8c:	00000a06 	br	80efb8 <altera_avalon_jtag_uart_timeout+0x8c>
  80ef90:	e0bfff17 	ldw	r2,-4(fp)
  80ef94:	10c00917 	ldw	r3,36(r2)
  80ef98:	00a00034 	movhi	r2,32768
  80ef9c:	10bfff04 	addi	r2,r2,-4
  80efa0:	10c00536 	bltu	r2,r3,80efb8 <altera_avalon_jtag_uart_timeout+0x8c>
  80efa4:	e0bfff17 	ldw	r2,-4(fp)
  80efa8:	10800917 	ldw	r2,36(r2)
  80efac:	10c00044 	addi	r3,r2,1
  80efb0:	e0bfff17 	ldw	r2,-4(fp)
  80efb4:	10c00915 	stw	r3,36(r2)
  80efb8:	d0a70c17 	ldw	r2,-25552(gp)
  80efbc:	e037883a 	mov	sp,fp
  80efc0:	df000017 	ldw	fp,0(sp)
  80efc4:	dec00104 	addi	sp,sp,4
  80efc8:	f800283a 	ret

0080efcc <altera_avalon_jtag_uart_close>:
  80efcc:	defffd04 	addi	sp,sp,-12
  80efd0:	df000215 	stw	fp,8(sp)
  80efd4:	df000204 	addi	fp,sp,8
  80efd8:	e13fff15 	stw	r4,-4(fp)
  80efdc:	e17ffe15 	stw	r5,-8(fp)
  80efe0:	00000506 	br	80eff8 <altera_avalon_jtag_uart_close+0x2c>
  80efe4:	e0bffe17 	ldw	r2,-8(fp)
  80efe8:	1090000c 	andi	r2,r2,16384
  80efec:	10000226 	beq	r2,zero,80eff8 <altera_avalon_jtag_uart_close+0x2c>
  80eff0:	00bffd44 	movi	r2,-11
  80eff4:	00000b06 	br	80f024 <altera_avalon_jtag_uart_close+0x58>
  80eff8:	e0bfff17 	ldw	r2,-4(fp)
  80effc:	10c00d17 	ldw	r3,52(r2)
  80f000:	e0bfff17 	ldw	r2,-4(fp)
  80f004:	10800c17 	ldw	r2,48(r2)
  80f008:	18800526 	beq	r3,r2,80f020 <altera_avalon_jtag_uart_close+0x54>
  80f00c:	e0bfff17 	ldw	r2,-4(fp)
  80f010:	10c00917 	ldw	r3,36(r2)
  80f014:	e0bfff17 	ldw	r2,-4(fp)
  80f018:	10800117 	ldw	r2,4(r2)
  80f01c:	18bff136 	bltu	r3,r2,80efe4 <altera_avalon_jtag_uart_close+0x18>
  80f020:	0005883a 	mov	r2,zero
  80f024:	e037883a 	mov	sp,fp
  80f028:	df000017 	ldw	fp,0(sp)
  80f02c:	dec00104 	addi	sp,sp,4
  80f030:	f800283a 	ret

0080f034 <altera_avalon_jtag_uart_ioctl>:
  80f034:	defffa04 	addi	sp,sp,-24
  80f038:	df000515 	stw	fp,20(sp)
  80f03c:	df000504 	addi	fp,sp,20
  80f040:	e13ffd15 	stw	r4,-12(fp)
  80f044:	e17ffc15 	stw	r5,-16(fp)
  80f048:	e1bffb15 	stw	r6,-20(fp)
  80f04c:	00bff9c4 	movi	r2,-25
  80f050:	e0bfff15 	stw	r2,-4(fp)
  80f054:	e0bffc17 	ldw	r2,-16(fp)
  80f058:	109a8060 	cmpeqi	r2,r2,27137
  80f05c:	1000041e 	bne	r2,zero,80f070 <altera_avalon_jtag_uart_ioctl+0x3c>
  80f060:	e0bffc17 	ldw	r2,-16(fp)
  80f064:	109a80a0 	cmpeqi	r2,r2,27138
  80f068:	1000181e 	bne	r2,zero,80f0cc <altera_avalon_jtag_uart_ioctl+0x98>
  80f06c:	00002906 	br	80f114 <altera_avalon_jtag_uart_ioctl+0xe0>
  80f070:	e0bffd17 	ldw	r2,-12(fp)
  80f074:	10c00117 	ldw	r3,4(r2)
  80f078:	00a00034 	movhi	r2,32768
  80f07c:	10bfffc4 	addi	r2,r2,-1
  80f080:	18802126 	beq	r3,r2,80f108 <altera_avalon_jtag_uart_ioctl+0xd4>
  80f084:	e0bffb17 	ldw	r2,-20(fp)
  80f088:	10800017 	ldw	r2,0(r2)
  80f08c:	e0bffe15 	stw	r2,-8(fp)
  80f090:	e0bffe17 	ldw	r2,-8(fp)
  80f094:	10800090 	cmplti	r2,r2,2
  80f098:	1000061e 	bne	r2,zero,80f0b4 <altera_avalon_jtag_uart_ioctl+0x80>
  80f09c:	e0fffe17 	ldw	r3,-8(fp)
  80f0a0:	00a00034 	movhi	r2,32768
  80f0a4:	10bfffc4 	addi	r2,r2,-1
  80f0a8:	18800226 	beq	r3,r2,80f0b4 <altera_avalon_jtag_uart_ioctl+0x80>
  80f0ac:	e0bffe17 	ldw	r2,-8(fp)
  80f0b0:	00000206 	br	80f0bc <altera_avalon_jtag_uart_ioctl+0x88>
  80f0b4:	00a00034 	movhi	r2,32768
  80f0b8:	10bfff84 	addi	r2,r2,-2
  80f0bc:	e0fffd17 	ldw	r3,-12(fp)
  80f0c0:	18800115 	stw	r2,4(r3)
  80f0c4:	e03fff15 	stw	zero,-4(fp)
  80f0c8:	00000f06 	br	80f108 <altera_avalon_jtag_uart_ioctl+0xd4>
  80f0cc:	e0bffd17 	ldw	r2,-12(fp)
  80f0d0:	10c00117 	ldw	r3,4(r2)
  80f0d4:	00a00034 	movhi	r2,32768
  80f0d8:	10bfffc4 	addi	r2,r2,-1
  80f0dc:	18800c26 	beq	r3,r2,80f110 <altera_avalon_jtag_uart_ioctl+0xdc>
  80f0e0:	e0bffd17 	ldw	r2,-12(fp)
  80f0e4:	10c00917 	ldw	r3,36(r2)
  80f0e8:	e0bffd17 	ldw	r2,-12(fp)
  80f0ec:	10800117 	ldw	r2,4(r2)
  80f0f0:	1885803a 	cmpltu	r2,r3,r2
  80f0f4:	10c03fcc 	andi	r3,r2,255
  80f0f8:	e0bffb17 	ldw	r2,-20(fp)
  80f0fc:	10c00015 	stw	r3,0(r2)
  80f100:	e03fff15 	stw	zero,-4(fp)
  80f104:	00000206 	br	80f110 <altera_avalon_jtag_uart_ioctl+0xdc>
  80f108:	0001883a 	nop
  80f10c:	00000106 	br	80f114 <altera_avalon_jtag_uart_ioctl+0xe0>
  80f110:	0001883a 	nop
  80f114:	e0bfff17 	ldw	r2,-4(fp)
  80f118:	e037883a 	mov	sp,fp
  80f11c:	df000017 	ldw	fp,0(sp)
  80f120:	dec00104 	addi	sp,sp,4
  80f124:	f800283a 	ret

0080f128 <altera_avalon_jtag_uart_read>:
  80f128:	defff304 	addi	sp,sp,-52
  80f12c:	dfc00c15 	stw	ra,48(sp)
  80f130:	df000b15 	stw	fp,44(sp)
  80f134:	df000b04 	addi	fp,sp,44
  80f138:	e13ff815 	stw	r4,-32(fp)
  80f13c:	e17ff715 	stw	r5,-36(fp)
  80f140:	e1bff615 	stw	r6,-40(fp)
  80f144:	e1fff515 	stw	r7,-44(fp)
  80f148:	e0bff717 	ldw	r2,-36(fp)
  80f14c:	e0bfff15 	stw	r2,-4(fp)
  80f150:	00004706 	br	80f270 <altera_avalon_jtag_uart_read+0x148>
  80f154:	e0bff817 	ldw	r2,-32(fp)
  80f158:	10800a17 	ldw	r2,40(r2)
  80f15c:	e0bffd15 	stw	r2,-12(fp)
  80f160:	e0bff817 	ldw	r2,-32(fp)
  80f164:	10800b17 	ldw	r2,44(r2)
  80f168:	e0bffc15 	stw	r2,-16(fp)
  80f16c:	e0fffd17 	ldw	r3,-12(fp)
  80f170:	e0bffc17 	ldw	r2,-16(fp)
  80f174:	18800536 	bltu	r3,r2,80f18c <altera_avalon_jtag_uart_read+0x64>
  80f178:	e0fffd17 	ldw	r3,-12(fp)
  80f17c:	e0bffc17 	ldw	r2,-16(fp)
  80f180:	1885c83a 	sub	r2,r3,r2
  80f184:	e0bffe15 	stw	r2,-8(fp)
  80f188:	00000406 	br	80f19c <altera_avalon_jtag_uart_read+0x74>
  80f18c:	00c20004 	movi	r3,2048
  80f190:	e0bffc17 	ldw	r2,-16(fp)
  80f194:	1885c83a 	sub	r2,r3,r2
  80f198:	e0bffe15 	stw	r2,-8(fp)
  80f19c:	e0bffe17 	ldw	r2,-8(fp)
  80f1a0:	10001e26 	beq	r2,zero,80f21c <altera_avalon_jtag_uart_read+0xf4>
  80f1a4:	e0fff617 	ldw	r3,-40(fp)
  80f1a8:	e0bffe17 	ldw	r2,-8(fp)
  80f1ac:	1880022e 	bgeu	r3,r2,80f1b8 <altera_avalon_jtag_uart_read+0x90>
  80f1b0:	e0bff617 	ldw	r2,-40(fp)
  80f1b4:	e0bffe15 	stw	r2,-8(fp)
  80f1b8:	e0bff817 	ldw	r2,-32(fp)
  80f1bc:	10c00e04 	addi	r3,r2,56
  80f1c0:	e0bffc17 	ldw	r2,-16(fp)
  80f1c4:	1885883a 	add	r2,r3,r2
  80f1c8:	e1bffe17 	ldw	r6,-8(fp)
  80f1cc:	100b883a 	mov	r5,r2
  80f1d0:	e13fff17 	ldw	r4,-4(fp)
  80f1d4:	08068f80 	call	8068f8 <memcpy>
  80f1d8:	e0ffff17 	ldw	r3,-4(fp)
  80f1dc:	e0bffe17 	ldw	r2,-8(fp)
  80f1e0:	1885883a 	add	r2,r3,r2
  80f1e4:	e0bfff15 	stw	r2,-4(fp)
  80f1e8:	e0fff617 	ldw	r3,-40(fp)
  80f1ec:	e0bffe17 	ldw	r2,-8(fp)
  80f1f0:	1885c83a 	sub	r2,r3,r2
  80f1f4:	e0bff615 	stw	r2,-40(fp)
  80f1f8:	e0fffc17 	ldw	r3,-16(fp)
  80f1fc:	e0bffe17 	ldw	r2,-8(fp)
  80f200:	1885883a 	add	r2,r3,r2
  80f204:	10c1ffcc 	andi	r3,r2,2047
  80f208:	e0bff817 	ldw	r2,-32(fp)
  80f20c:	10c00b15 	stw	r3,44(r2)
  80f210:	e0bff617 	ldw	r2,-40(fp)
  80f214:	00bfcf16 	blt	zero,r2,80f154 <altera_avalon_jtag_uart_read+0x2c>
  80f218:	00000106 	br	80f220 <altera_avalon_jtag_uart_read+0xf8>
  80f21c:	0001883a 	nop
  80f220:	e0ffff17 	ldw	r3,-4(fp)
  80f224:	e0bff717 	ldw	r2,-36(fp)
  80f228:	1880141e 	bne	r3,r2,80f27c <altera_avalon_jtag_uart_read+0x154>
  80f22c:	e0bff517 	ldw	r2,-44(fp)
  80f230:	1090000c 	andi	r2,r2,16384
  80f234:	1000131e 	bne	r2,zero,80f284 <altera_avalon_jtag_uart_read+0x15c>
  80f238:	0001883a 	nop
  80f23c:	e0bff817 	ldw	r2,-32(fp)
  80f240:	10800a17 	ldw	r2,40(r2)
  80f244:	e0fffd17 	ldw	r3,-12(fp)
  80f248:	1880051e 	bne	r3,r2,80f260 <altera_avalon_jtag_uart_read+0x138>
  80f24c:	e0bff817 	ldw	r2,-32(fp)
  80f250:	10c00917 	ldw	r3,36(r2)
  80f254:	e0bff817 	ldw	r2,-32(fp)
  80f258:	10800117 	ldw	r2,4(r2)
  80f25c:	18bff736 	bltu	r3,r2,80f23c <altera_avalon_jtag_uart_read+0x114>
  80f260:	e0bff817 	ldw	r2,-32(fp)
  80f264:	10800a17 	ldw	r2,40(r2)
  80f268:	e0fffd17 	ldw	r3,-12(fp)
  80f26c:	18800726 	beq	r3,r2,80f28c <altera_avalon_jtag_uart_read+0x164>
  80f270:	e0bff617 	ldw	r2,-40(fp)
  80f274:	00bfb716 	blt	zero,r2,80f154 <altera_avalon_jtag_uart_read+0x2c>
  80f278:	00000506 	br	80f290 <altera_avalon_jtag_uart_read+0x168>
  80f27c:	0001883a 	nop
  80f280:	00000306 	br	80f290 <altera_avalon_jtag_uart_read+0x168>
  80f284:	0001883a 	nop
  80f288:	00000106 	br	80f290 <altera_avalon_jtag_uart_read+0x168>
  80f28c:	0001883a 	nop
  80f290:	e0ffff17 	ldw	r3,-4(fp)
  80f294:	e0bff717 	ldw	r2,-36(fp)
  80f298:	18801926 	beq	r3,r2,80f300 <altera_avalon_jtag_uart_read+0x1d8>
  80f29c:	0005303a 	rdctl	r2,status
  80f2a0:	e0bff915 	stw	r2,-28(fp)
  80f2a4:	e0fff917 	ldw	r3,-28(fp)
  80f2a8:	00bfff84 	movi	r2,-2
  80f2ac:	1884703a 	and	r2,r3,r2
  80f2b0:	1001703a 	wrctl	status,r2
  80f2b4:	e0bff917 	ldw	r2,-28(fp)
  80f2b8:	e0bffb15 	stw	r2,-20(fp)
  80f2bc:	e0bff817 	ldw	r2,-32(fp)
  80f2c0:	10800817 	ldw	r2,32(r2)
  80f2c4:	10c00054 	ori	r3,r2,1
  80f2c8:	e0bff817 	ldw	r2,-32(fp)
  80f2cc:	10c00815 	stw	r3,32(r2)
  80f2d0:	e0bff817 	ldw	r2,-32(fp)
  80f2d4:	10800017 	ldw	r2,0(r2)
  80f2d8:	10800104 	addi	r2,r2,4
  80f2dc:	1007883a 	mov	r3,r2
  80f2e0:	e0bff817 	ldw	r2,-32(fp)
  80f2e4:	10800817 	ldw	r2,32(r2)
  80f2e8:	18800035 	stwio	r2,0(r3)
  80f2ec:	e0bffb17 	ldw	r2,-20(fp)
  80f2f0:	e0bffa15 	stw	r2,-24(fp)
  80f2f4:	e0bffa17 	ldw	r2,-24(fp)
  80f2f8:	1001703a 	wrctl	status,r2
  80f2fc:	0001883a 	nop
  80f300:	e0ffff17 	ldw	r3,-4(fp)
  80f304:	e0bff717 	ldw	r2,-36(fp)
  80f308:	18800426 	beq	r3,r2,80f31c <altera_avalon_jtag_uart_read+0x1f4>
  80f30c:	e0ffff17 	ldw	r3,-4(fp)
  80f310:	e0bff717 	ldw	r2,-36(fp)
  80f314:	1885c83a 	sub	r2,r3,r2
  80f318:	00000606 	br	80f334 <altera_avalon_jtag_uart_read+0x20c>
  80f31c:	e0bff517 	ldw	r2,-44(fp)
  80f320:	1090000c 	andi	r2,r2,16384
  80f324:	10000226 	beq	r2,zero,80f330 <altera_avalon_jtag_uart_read+0x208>
  80f328:	00bffd44 	movi	r2,-11
  80f32c:	00000106 	br	80f334 <altera_avalon_jtag_uart_read+0x20c>
  80f330:	00bffec4 	movi	r2,-5
  80f334:	e037883a 	mov	sp,fp
  80f338:	dfc00117 	ldw	ra,4(sp)
  80f33c:	df000017 	ldw	fp,0(sp)
  80f340:	dec00204 	addi	sp,sp,8
  80f344:	f800283a 	ret

0080f348 <altera_avalon_jtag_uart_write>:
  80f348:	defff304 	addi	sp,sp,-52
  80f34c:	dfc00c15 	stw	ra,48(sp)
  80f350:	df000b15 	stw	fp,44(sp)
  80f354:	df000b04 	addi	fp,sp,44
  80f358:	e13ff815 	stw	r4,-32(fp)
  80f35c:	e17ff715 	stw	r5,-36(fp)
  80f360:	e1bff615 	stw	r6,-40(fp)
  80f364:	e1fff515 	stw	r7,-44(fp)
  80f368:	e03fff15 	stw	zero,-4(fp)
  80f36c:	e0bff717 	ldw	r2,-36(fp)
  80f370:	e0bffd15 	stw	r2,-12(fp)
  80f374:	00003706 	br	80f454 <altera_avalon_jtag_uart_write+0x10c>
  80f378:	e0bff817 	ldw	r2,-32(fp)
  80f37c:	10800c17 	ldw	r2,48(r2)
  80f380:	e0bffc15 	stw	r2,-16(fp)
  80f384:	e0bff817 	ldw	r2,-32(fp)
  80f388:	10800d17 	ldw	r2,52(r2)
  80f38c:	e0bfff15 	stw	r2,-4(fp)
  80f390:	e0fffc17 	ldw	r3,-16(fp)
  80f394:	e0bfff17 	ldw	r2,-4(fp)
  80f398:	1880062e 	bgeu	r3,r2,80f3b4 <altera_avalon_jtag_uart_write+0x6c>
  80f39c:	e0ffff17 	ldw	r3,-4(fp)
  80f3a0:	e0bffc17 	ldw	r2,-16(fp)
  80f3a4:	1885c83a 	sub	r2,r3,r2
  80f3a8:	10bfffc4 	addi	r2,r2,-1
  80f3ac:	e0bffe15 	stw	r2,-8(fp)
  80f3b0:	00000b06 	br	80f3e0 <altera_avalon_jtag_uart_write+0x98>
  80f3b4:	e0bfff17 	ldw	r2,-4(fp)
  80f3b8:	10000526 	beq	r2,zero,80f3d0 <altera_avalon_jtag_uart_write+0x88>
  80f3bc:	00c20004 	movi	r3,2048
  80f3c0:	e0bffc17 	ldw	r2,-16(fp)
  80f3c4:	1885c83a 	sub	r2,r3,r2
  80f3c8:	e0bffe15 	stw	r2,-8(fp)
  80f3cc:	00000406 	br	80f3e0 <altera_avalon_jtag_uart_write+0x98>
  80f3d0:	00c1ffc4 	movi	r3,2047
  80f3d4:	e0bffc17 	ldw	r2,-16(fp)
  80f3d8:	1885c83a 	sub	r2,r3,r2
  80f3dc:	e0bffe15 	stw	r2,-8(fp)
  80f3e0:	e0bffe17 	ldw	r2,-8(fp)
  80f3e4:	10001e26 	beq	r2,zero,80f460 <altera_avalon_jtag_uart_write+0x118>
  80f3e8:	e0fff617 	ldw	r3,-40(fp)
  80f3ec:	e0bffe17 	ldw	r2,-8(fp)
  80f3f0:	1880022e 	bgeu	r3,r2,80f3fc <altera_avalon_jtag_uart_write+0xb4>
  80f3f4:	e0bff617 	ldw	r2,-40(fp)
  80f3f8:	e0bffe15 	stw	r2,-8(fp)
  80f3fc:	e0bff817 	ldw	r2,-32(fp)
  80f400:	10c20e04 	addi	r3,r2,2104
  80f404:	e0bffc17 	ldw	r2,-16(fp)
  80f408:	1885883a 	add	r2,r3,r2
  80f40c:	e1bffe17 	ldw	r6,-8(fp)
  80f410:	e17ff717 	ldw	r5,-36(fp)
  80f414:	1009883a 	mov	r4,r2
  80f418:	08068f80 	call	8068f8 <memcpy>
  80f41c:	e0fff717 	ldw	r3,-36(fp)
  80f420:	e0bffe17 	ldw	r2,-8(fp)
  80f424:	1885883a 	add	r2,r3,r2
  80f428:	e0bff715 	stw	r2,-36(fp)
  80f42c:	e0fff617 	ldw	r3,-40(fp)
  80f430:	e0bffe17 	ldw	r2,-8(fp)
  80f434:	1885c83a 	sub	r2,r3,r2
  80f438:	e0bff615 	stw	r2,-40(fp)
  80f43c:	e0fffc17 	ldw	r3,-16(fp)
  80f440:	e0bffe17 	ldw	r2,-8(fp)
  80f444:	1885883a 	add	r2,r3,r2
  80f448:	10c1ffcc 	andi	r3,r2,2047
  80f44c:	e0bff817 	ldw	r2,-32(fp)
  80f450:	10c00c15 	stw	r3,48(r2)
  80f454:	e0bff617 	ldw	r2,-40(fp)
  80f458:	00bfc716 	blt	zero,r2,80f378 <altera_avalon_jtag_uart_write+0x30>
  80f45c:	00000106 	br	80f464 <altera_avalon_jtag_uart_write+0x11c>
  80f460:	0001883a 	nop
  80f464:	0005303a 	rdctl	r2,status
  80f468:	e0bff915 	stw	r2,-28(fp)
  80f46c:	e0fff917 	ldw	r3,-28(fp)
  80f470:	00bfff84 	movi	r2,-2
  80f474:	1884703a 	and	r2,r3,r2
  80f478:	1001703a 	wrctl	status,r2
  80f47c:	e0bff917 	ldw	r2,-28(fp)
  80f480:	e0bffb15 	stw	r2,-20(fp)
  80f484:	e0bff817 	ldw	r2,-32(fp)
  80f488:	10800817 	ldw	r2,32(r2)
  80f48c:	10c00094 	ori	r3,r2,2
  80f490:	e0bff817 	ldw	r2,-32(fp)
  80f494:	10c00815 	stw	r3,32(r2)
  80f498:	e0bff817 	ldw	r2,-32(fp)
  80f49c:	10800017 	ldw	r2,0(r2)
  80f4a0:	10800104 	addi	r2,r2,4
  80f4a4:	1007883a 	mov	r3,r2
  80f4a8:	e0bff817 	ldw	r2,-32(fp)
  80f4ac:	10800817 	ldw	r2,32(r2)
  80f4b0:	18800035 	stwio	r2,0(r3)
  80f4b4:	e0bffb17 	ldw	r2,-20(fp)
  80f4b8:	e0bffa15 	stw	r2,-24(fp)
  80f4bc:	e0bffa17 	ldw	r2,-24(fp)
  80f4c0:	1001703a 	wrctl	status,r2
  80f4c4:	0001883a 	nop
  80f4c8:	e0bff617 	ldw	r2,-40(fp)
  80f4cc:	0080100e 	bge	zero,r2,80f510 <altera_avalon_jtag_uart_write+0x1c8>
  80f4d0:	e0bff517 	ldw	r2,-44(fp)
  80f4d4:	1090000c 	andi	r2,r2,16384
  80f4d8:	1000101e 	bne	r2,zero,80f51c <altera_avalon_jtag_uart_write+0x1d4>
  80f4dc:	0001883a 	nop
  80f4e0:	e0bff817 	ldw	r2,-32(fp)
  80f4e4:	10800d17 	ldw	r2,52(r2)
  80f4e8:	e0ffff17 	ldw	r3,-4(fp)
  80f4ec:	1880051e 	bne	r3,r2,80f504 <altera_avalon_jtag_uart_write+0x1bc>
  80f4f0:	e0bff817 	ldw	r2,-32(fp)
  80f4f4:	10c00917 	ldw	r3,36(r2)
  80f4f8:	e0bff817 	ldw	r2,-32(fp)
  80f4fc:	10800117 	ldw	r2,4(r2)
  80f500:	18bff736 	bltu	r3,r2,80f4e0 <altera_avalon_jtag_uart_write+0x198>
  80f504:	e0bff817 	ldw	r2,-32(fp)
  80f508:	10800917 	ldw	r2,36(r2)
  80f50c:	1000051e 	bne	r2,zero,80f524 <altera_avalon_jtag_uart_write+0x1dc>
  80f510:	e0bff617 	ldw	r2,-40(fp)
  80f514:	00bfcf16 	blt	zero,r2,80f454 <altera_avalon_jtag_uart_write+0x10c>
  80f518:	00000306 	br	80f528 <altera_avalon_jtag_uart_write+0x1e0>
  80f51c:	0001883a 	nop
  80f520:	00000106 	br	80f528 <altera_avalon_jtag_uart_write+0x1e0>
  80f524:	0001883a 	nop
  80f528:	e0fff717 	ldw	r3,-36(fp)
  80f52c:	e0bffd17 	ldw	r2,-12(fp)
  80f530:	18800426 	beq	r3,r2,80f544 <altera_avalon_jtag_uart_write+0x1fc>
  80f534:	e0fff717 	ldw	r3,-36(fp)
  80f538:	e0bffd17 	ldw	r2,-12(fp)
  80f53c:	1885c83a 	sub	r2,r3,r2
  80f540:	00000606 	br	80f55c <altera_avalon_jtag_uart_write+0x214>
  80f544:	e0bff517 	ldw	r2,-44(fp)
  80f548:	1090000c 	andi	r2,r2,16384
  80f54c:	10000226 	beq	r2,zero,80f558 <altera_avalon_jtag_uart_write+0x210>
  80f550:	00bffd44 	movi	r2,-11
  80f554:	00000106 	br	80f55c <altera_avalon_jtag_uart_write+0x214>
  80f558:	00bffec4 	movi	r2,-5
  80f55c:	e037883a 	mov	sp,fp
  80f560:	dfc00117 	ldw	ra,4(sp)
  80f564:	df000017 	ldw	fp,0(sp)
  80f568:	dec00204 	addi	sp,sp,8
  80f56c:	f800283a 	ret

0080f570 <alt_avalon_timer_sc_irq>:
  80f570:	defffa04 	addi	sp,sp,-24
  80f574:	dfc00515 	stw	ra,20(sp)
  80f578:	df000415 	stw	fp,16(sp)
  80f57c:	df000404 	addi	fp,sp,16
  80f580:	e13ffc15 	stw	r4,-16(fp)
  80f584:	0007883a 	mov	r3,zero
  80f588:	e0bffc17 	ldw	r2,-16(fp)
  80f58c:	10c00035 	stwio	r3,0(r2)
  80f590:	e0bffc17 	ldw	r2,-16(fp)
  80f594:	10800104 	addi	r2,r2,4
  80f598:	10800037 	ldwio	r2,0(r2)
  80f59c:	0005303a 	rdctl	r2,status
  80f5a0:	e0bffd15 	stw	r2,-12(fp)
  80f5a4:	e0fffd17 	ldw	r3,-12(fp)
  80f5a8:	00bfff84 	movi	r2,-2
  80f5ac:	1884703a 	and	r2,r3,r2
  80f5b0:	1001703a 	wrctl	status,r2
  80f5b4:	e0bffd17 	ldw	r2,-12(fp)
  80f5b8:	e0bfff15 	stw	r2,-4(fp)
  80f5bc:	080e7e00 	call	80e7e0 <alt_tick>
  80f5c0:	e0bfff17 	ldw	r2,-4(fp)
  80f5c4:	e0bffe15 	stw	r2,-8(fp)
  80f5c8:	e0bffe17 	ldw	r2,-8(fp)
  80f5cc:	1001703a 	wrctl	status,r2
  80f5d0:	0001883a 	nop
  80f5d4:	0001883a 	nop
  80f5d8:	e037883a 	mov	sp,fp
  80f5dc:	dfc00117 	ldw	ra,4(sp)
  80f5e0:	df000017 	ldw	fp,0(sp)
  80f5e4:	dec00204 	addi	sp,sp,8
  80f5e8:	f800283a 	ret

0080f5ec <alt_avalon_timer_sc_init>:
  80f5ec:	defff804 	addi	sp,sp,-32
  80f5f0:	dfc00715 	stw	ra,28(sp)
  80f5f4:	df000615 	stw	fp,24(sp)
  80f5f8:	df000604 	addi	fp,sp,24
  80f5fc:	e13ffe15 	stw	r4,-8(fp)
  80f600:	e17ffd15 	stw	r5,-12(fp)
  80f604:	e1bffc15 	stw	r6,-16(fp)
  80f608:	e1fffb15 	stw	r7,-20(fp)
  80f60c:	e0bffb17 	ldw	r2,-20(fp)
  80f610:	e0bfff15 	stw	r2,-4(fp)
  80f614:	d0a70c17 	ldw	r2,-25552(gp)
  80f618:	1000031e 	bne	r2,zero,80f628 <alt_avalon_timer_sc_init+0x3c>
  80f61c:	e0bfff17 	ldw	r2,-4(fp)
  80f620:	d0a70c15 	stw	r2,-25552(gp)
  80f624:	00000106 	br	80f62c <alt_avalon_timer_sc_init+0x40>
  80f628:	0001883a 	nop
  80f62c:	e0bffe17 	ldw	r2,-8(fp)
  80f630:	10800104 	addi	r2,r2,4
  80f634:	00c001c4 	movi	r3,7
  80f638:	10c00035 	stwio	r3,0(r2)
  80f63c:	d8000015 	stw	zero,0(sp)
  80f640:	e1fffe17 	ldw	r7,-8(fp)
  80f644:	01802074 	movhi	r6,129
  80f648:	31bd5c04 	addi	r6,r6,-2704
  80f64c:	e17ffc17 	ldw	r5,-16(fp)
  80f650:	e13ffd17 	ldw	r4,-12(fp)
  80f654:	080f9d00 	call	80f9d0 <alt_ic_isr_register>
  80f658:	0001883a 	nop
  80f65c:	e037883a 	mov	sp,fp
  80f660:	dfc00117 	ldw	ra,4(sp)
  80f664:	df000017 	ldw	fp,0(sp)
  80f668:	dec00204 	addi	sp,sp,8
  80f66c:	f800283a 	ret

0080f670 <alt_alarm_start>:
  80f670:	defff504 	addi	sp,sp,-44
  80f674:	df000a15 	stw	fp,40(sp)
  80f678:	df000a04 	addi	fp,sp,40
  80f67c:	e13ff915 	stw	r4,-28(fp)
  80f680:	e17ff815 	stw	r5,-32(fp)
  80f684:	e1bff715 	stw	r6,-36(fp)
  80f688:	e1fff615 	stw	r7,-40(fp)
  80f68c:	e03fff15 	stw	zero,-4(fp)
  80f690:	d0a70c17 	ldw	r2,-25552(gp)
  80f694:	10003e26 	beq	r2,zero,80f790 <alt_alarm_start+0x120>
  80f698:	e0bff917 	ldw	r2,-28(fp)
  80f69c:	10003a26 	beq	r2,zero,80f788 <alt_alarm_start+0x118>
  80f6a0:	e0bff917 	ldw	r2,-28(fp)
  80f6a4:	e0fff717 	ldw	r3,-36(fp)
  80f6a8:	10c00315 	stw	r3,12(r2)
  80f6ac:	e0bff917 	ldw	r2,-28(fp)
  80f6b0:	e0fff617 	ldw	r3,-40(fp)
  80f6b4:	10c00515 	stw	r3,20(r2)
  80f6b8:	0005303a 	rdctl	r2,status
  80f6bc:	e0bffd15 	stw	r2,-12(fp)
  80f6c0:	e0fffd17 	ldw	r3,-12(fp)
  80f6c4:	00bfff84 	movi	r2,-2
  80f6c8:	1884703a 	and	r2,r3,r2
  80f6cc:	1001703a 	wrctl	status,r2
  80f6d0:	e0bffd17 	ldw	r2,-12(fp)
  80f6d4:	e0bffe15 	stw	r2,-8(fp)
  80f6d8:	d0a70d17 	ldw	r2,-25548(gp)
  80f6dc:	e0bfff15 	stw	r2,-4(fp)
  80f6e0:	e0fff817 	ldw	r3,-32(fp)
  80f6e4:	e0bfff17 	ldw	r2,-4(fp)
  80f6e8:	1885883a 	add	r2,r3,r2
  80f6ec:	10c00044 	addi	r3,r2,1
  80f6f0:	e0bff917 	ldw	r2,-28(fp)
  80f6f4:	10c00215 	stw	r3,8(r2)
  80f6f8:	e0bff917 	ldw	r2,-28(fp)
  80f6fc:	10c00217 	ldw	r3,8(r2)
  80f700:	e0bfff17 	ldw	r2,-4(fp)
  80f704:	1880042e 	bgeu	r3,r2,80f718 <alt_alarm_start+0xa8>
  80f708:	e0bff917 	ldw	r2,-28(fp)
  80f70c:	00c00044 	movi	r3,1
  80f710:	10c00405 	stb	r3,16(r2)
  80f714:	00000206 	br	80f720 <alt_alarm_start+0xb0>
  80f718:	e0bff917 	ldw	r2,-28(fp)
  80f71c:	10000405 	stb	zero,16(r2)
  80f720:	e0bff917 	ldw	r2,-28(fp)
  80f724:	d0e00b04 	addi	r3,gp,-32724
  80f728:	e0fffb15 	stw	r3,-20(fp)
  80f72c:	e0bffa15 	stw	r2,-24(fp)
  80f730:	e0bffa17 	ldw	r2,-24(fp)
  80f734:	e0fffb17 	ldw	r3,-20(fp)
  80f738:	10c00115 	stw	r3,4(r2)
  80f73c:	e0bffb17 	ldw	r2,-20(fp)
  80f740:	10c00017 	ldw	r3,0(r2)
  80f744:	e0bffa17 	ldw	r2,-24(fp)
  80f748:	10c00015 	stw	r3,0(r2)
  80f74c:	e0bffb17 	ldw	r2,-20(fp)
  80f750:	10800017 	ldw	r2,0(r2)
  80f754:	e0fffa17 	ldw	r3,-24(fp)
  80f758:	10c00115 	stw	r3,4(r2)
  80f75c:	e0bffb17 	ldw	r2,-20(fp)
  80f760:	e0fffa17 	ldw	r3,-24(fp)
  80f764:	10c00015 	stw	r3,0(r2)
  80f768:	0001883a 	nop
  80f76c:	e0bffe17 	ldw	r2,-8(fp)
  80f770:	e0bffc15 	stw	r2,-16(fp)
  80f774:	e0bffc17 	ldw	r2,-16(fp)
  80f778:	1001703a 	wrctl	status,r2
  80f77c:	0001883a 	nop
  80f780:	0005883a 	mov	r2,zero
  80f784:	00000306 	br	80f794 <alt_alarm_start+0x124>
  80f788:	00bffa84 	movi	r2,-22
  80f78c:	00000106 	br	80f794 <alt_alarm_start+0x124>
  80f790:	00bfde84 	movi	r2,-134
  80f794:	e037883a 	mov	sp,fp
  80f798:	df000017 	ldw	fp,0(sp)
  80f79c:	dec00104 	addi	sp,sp,4
  80f7a0:	f800283a 	ret

0080f7a4 <alt_dcache_flush_all>:
  80f7a4:	defffe04 	addi	sp,sp,-8
  80f7a8:	df000115 	stw	fp,4(sp)
  80f7ac:	df000104 	addi	fp,sp,4
  80f7b0:	e03fff15 	stw	zero,-4(fp)
  80f7b4:	00000506 	br	80f7cc <alt_dcache_flush_all+0x28>
  80f7b8:	e0bfff17 	ldw	r2,-4(fp)
  80f7bc:	1000003b 	flushd	0(r2)
  80f7c0:	e0bfff17 	ldw	r2,-4(fp)
  80f7c4:	10800804 	addi	r2,r2,32
  80f7c8:	e0bfff15 	stw	r2,-4(fp)
  80f7cc:	e0bfff17 	ldw	r2,-4(fp)
  80f7d0:	10820030 	cmpltui	r2,r2,2048
  80f7d4:	103ff81e 	bne	r2,zero,80f7b8 <alt_dcache_flush_all+0x14>
  80f7d8:	0001883a 	nop
  80f7dc:	0001883a 	nop
  80f7e0:	e037883a 	mov	sp,fp
  80f7e4:	df000017 	ldw	fp,0(sp)
  80f7e8:	dec00104 	addi	sp,sp,4
  80f7ec:	f800283a 	ret

0080f7f0 <alt_get_errno>:
  80f7f0:	defffe04 	addi	sp,sp,-8
  80f7f4:	dfc00115 	stw	ra,4(sp)
  80f7f8:	df000015 	stw	fp,0(sp)
  80f7fc:	d839883a 	mov	fp,sp
  80f800:	d0a00917 	ldw	r2,-32732(gp)
  80f804:	10000326 	beq	r2,zero,80f814 <alt_get_errno+0x24>
  80f808:	d0a00917 	ldw	r2,-32732(gp)
  80f80c:	103ee83a 	callr	r2
  80f810:	00000106 	br	80f818 <alt_get_errno+0x28>
  80f814:	d0a70704 	addi	r2,gp,-25572
  80f818:	e037883a 	mov	sp,fp
  80f81c:	dfc00117 	ldw	ra,4(sp)
  80f820:	df000017 	ldw	fp,0(sp)
  80f824:	dec00204 	addi	sp,sp,8
  80f828:	f800283a 	ret

0080f82c <alt_dev_llist_insert>:
  80f82c:	defffa04 	addi	sp,sp,-24
  80f830:	dfc00515 	stw	ra,20(sp)
  80f834:	df000415 	stw	fp,16(sp)
  80f838:	df000404 	addi	fp,sp,16
  80f83c:	e13ffd15 	stw	r4,-12(fp)
  80f840:	e17ffc15 	stw	r5,-16(fp)
  80f844:	e0bffd17 	ldw	r2,-12(fp)
  80f848:	10000326 	beq	r2,zero,80f858 <alt_dev_llist_insert+0x2c>
  80f84c:	e0bffd17 	ldw	r2,-12(fp)
  80f850:	10800217 	ldw	r2,8(r2)
  80f854:	1000061e 	bne	r2,zero,80f870 <alt_dev_llist_insert+0x44>
  80f858:	080f7f00 	call	80f7f0 <alt_get_errno>
  80f85c:	1007883a 	mov	r3,r2
  80f860:	00800584 	movi	r2,22
  80f864:	18800015 	stw	r2,0(r3)
  80f868:	00bffa84 	movi	r2,-22
  80f86c:	00001406 	br	80f8c0 <alt_dev_llist_insert+0x94>
  80f870:	e0bffd17 	ldw	r2,-12(fp)
  80f874:	e0fffc17 	ldw	r3,-16(fp)
  80f878:	e0ffff15 	stw	r3,-4(fp)
  80f87c:	e0bffe15 	stw	r2,-8(fp)
  80f880:	e0bffe17 	ldw	r2,-8(fp)
  80f884:	e0ffff17 	ldw	r3,-4(fp)
  80f888:	10c00115 	stw	r3,4(r2)
  80f88c:	e0bfff17 	ldw	r2,-4(fp)
  80f890:	10c00017 	ldw	r3,0(r2)
  80f894:	e0bffe17 	ldw	r2,-8(fp)
  80f898:	10c00015 	stw	r3,0(r2)
  80f89c:	e0bfff17 	ldw	r2,-4(fp)
  80f8a0:	10800017 	ldw	r2,0(r2)
  80f8a4:	e0fffe17 	ldw	r3,-8(fp)
  80f8a8:	10c00115 	stw	r3,4(r2)
  80f8ac:	e0bfff17 	ldw	r2,-4(fp)
  80f8b0:	e0fffe17 	ldw	r3,-8(fp)
  80f8b4:	10c00015 	stw	r3,0(r2)
  80f8b8:	0001883a 	nop
  80f8bc:	0005883a 	mov	r2,zero
  80f8c0:	e037883a 	mov	sp,fp
  80f8c4:	dfc00117 	ldw	ra,4(sp)
  80f8c8:	df000017 	ldw	fp,0(sp)
  80f8cc:	dec00204 	addi	sp,sp,8
  80f8d0:	f800283a 	ret

0080f8d4 <_do_ctors>:
  80f8d4:	defffd04 	addi	sp,sp,-12
  80f8d8:	dfc00215 	stw	ra,8(sp)
  80f8dc:	df000115 	stw	fp,4(sp)
  80f8e0:	df000104 	addi	fp,sp,4
  80f8e4:	00802074 	movhi	r2,129
  80f8e8:	10818e04 	addi	r2,r2,1592
  80f8ec:	e0bfff15 	stw	r2,-4(fp)
  80f8f0:	00000606 	br	80f90c <_do_ctors+0x38>
  80f8f4:	e0bfff17 	ldw	r2,-4(fp)
  80f8f8:	10800017 	ldw	r2,0(r2)
  80f8fc:	103ee83a 	callr	r2
  80f900:	e0bfff17 	ldw	r2,-4(fp)
  80f904:	10bfff04 	addi	r2,r2,-4
  80f908:	e0bfff15 	stw	r2,-4(fp)
  80f90c:	e0ffff17 	ldw	r3,-4(fp)
  80f910:	00802074 	movhi	r2,129
  80f914:	10818f04 	addi	r2,r2,1596
  80f918:	18bff62e 	bgeu	r3,r2,80f8f4 <_do_ctors+0x20>
  80f91c:	0001883a 	nop
  80f920:	0001883a 	nop
  80f924:	e037883a 	mov	sp,fp
  80f928:	dfc00117 	ldw	ra,4(sp)
  80f92c:	df000017 	ldw	fp,0(sp)
  80f930:	dec00204 	addi	sp,sp,8
  80f934:	f800283a 	ret

0080f938 <_do_dtors>:
  80f938:	defffd04 	addi	sp,sp,-12
  80f93c:	dfc00215 	stw	ra,8(sp)
  80f940:	df000115 	stw	fp,4(sp)
  80f944:	df000104 	addi	fp,sp,4
  80f948:	00802074 	movhi	r2,129
  80f94c:	10818e04 	addi	r2,r2,1592
  80f950:	e0bfff15 	stw	r2,-4(fp)
  80f954:	00000606 	br	80f970 <_do_dtors+0x38>
  80f958:	e0bfff17 	ldw	r2,-4(fp)
  80f95c:	10800017 	ldw	r2,0(r2)
  80f960:	103ee83a 	callr	r2
  80f964:	e0bfff17 	ldw	r2,-4(fp)
  80f968:	10bfff04 	addi	r2,r2,-4
  80f96c:	e0bfff15 	stw	r2,-4(fp)
  80f970:	e0ffff17 	ldw	r3,-4(fp)
  80f974:	00802074 	movhi	r2,129
  80f978:	10818f04 	addi	r2,r2,1596
  80f97c:	18bff62e 	bgeu	r3,r2,80f958 <_do_dtors+0x20>
  80f980:	0001883a 	nop
  80f984:	0001883a 	nop
  80f988:	e037883a 	mov	sp,fp
  80f98c:	dfc00117 	ldw	ra,4(sp)
  80f990:	df000017 	ldw	fp,0(sp)
  80f994:	dec00204 	addi	sp,sp,8
  80f998:	f800283a 	ret

0080f99c <alt_icache_flush_all>:
  80f99c:	defffe04 	addi	sp,sp,-8
  80f9a0:	dfc00115 	stw	ra,4(sp)
  80f9a4:	df000015 	stw	fp,0(sp)
  80f9a8:	d839883a 	mov	fp,sp
  80f9ac:	01420004 	movi	r5,2048
  80f9b0:	0009883a 	mov	r4,zero
  80f9b4:	08102a40 	call	8102a4 <alt_icache_flush>
  80f9b8:	0001883a 	nop
  80f9bc:	e037883a 	mov	sp,fp
  80f9c0:	dfc00117 	ldw	ra,4(sp)
  80f9c4:	df000017 	ldw	fp,0(sp)
  80f9c8:	dec00204 	addi	sp,sp,8
  80f9cc:	f800283a 	ret

0080f9d0 <alt_ic_isr_register>:
  80f9d0:	defff904 	addi	sp,sp,-28
  80f9d4:	dfc00615 	stw	ra,24(sp)
  80f9d8:	df000515 	stw	fp,20(sp)
  80f9dc:	df000504 	addi	fp,sp,20
  80f9e0:	e13fff15 	stw	r4,-4(fp)
  80f9e4:	e17ffe15 	stw	r5,-8(fp)
  80f9e8:	e1bffd15 	stw	r6,-12(fp)
  80f9ec:	e1fffc15 	stw	r7,-16(fp)
  80f9f0:	e0800217 	ldw	r2,8(fp)
  80f9f4:	d8800015 	stw	r2,0(sp)
  80f9f8:	e1fffc17 	ldw	r7,-16(fp)
  80f9fc:	e1bffd17 	ldw	r6,-12(fp)
  80fa00:	e17ffe17 	ldw	r5,-8(fp)
  80fa04:	e13fff17 	ldw	r4,-4(fp)
  80fa08:	080fb800 	call	80fb80 <alt_iic_isr_register>
  80fa0c:	e037883a 	mov	sp,fp
  80fa10:	dfc00117 	ldw	ra,4(sp)
  80fa14:	df000017 	ldw	fp,0(sp)
  80fa18:	dec00204 	addi	sp,sp,8
  80fa1c:	f800283a 	ret

0080fa20 <alt_ic_irq_enable>:
  80fa20:	defff904 	addi	sp,sp,-28
  80fa24:	df000615 	stw	fp,24(sp)
  80fa28:	df000604 	addi	fp,sp,24
  80fa2c:	e13ffb15 	stw	r4,-20(fp)
  80fa30:	e17ffa15 	stw	r5,-24(fp)
  80fa34:	e0bffa17 	ldw	r2,-24(fp)
  80fa38:	e0bfff15 	stw	r2,-4(fp)
  80fa3c:	0005303a 	rdctl	r2,status
  80fa40:	e0bffe15 	stw	r2,-8(fp)
  80fa44:	e0fffe17 	ldw	r3,-8(fp)
  80fa48:	00bfff84 	movi	r2,-2
  80fa4c:	1884703a 	and	r2,r3,r2
  80fa50:	1001703a 	wrctl	status,r2
  80fa54:	e0bffe17 	ldw	r2,-8(fp)
  80fa58:	e0bffd15 	stw	r2,-12(fp)
  80fa5c:	00c00044 	movi	r3,1
  80fa60:	e0bfff17 	ldw	r2,-4(fp)
  80fa64:	1884983a 	sll	r2,r3,r2
  80fa68:	1007883a 	mov	r3,r2
  80fa6c:	d0a70e17 	ldw	r2,-25544(gp)
  80fa70:	1884b03a 	or	r2,r3,r2
  80fa74:	d0a70e15 	stw	r2,-25544(gp)
  80fa78:	d0a70e17 	ldw	r2,-25544(gp)
  80fa7c:	100170fa 	wrctl	ienable,r2
  80fa80:	e0bffd17 	ldw	r2,-12(fp)
  80fa84:	e0bffc15 	stw	r2,-16(fp)
  80fa88:	e0bffc17 	ldw	r2,-16(fp)
  80fa8c:	1001703a 	wrctl	status,r2
  80fa90:	0001883a 	nop
  80fa94:	0005883a 	mov	r2,zero
  80fa98:	e037883a 	mov	sp,fp
  80fa9c:	df000017 	ldw	fp,0(sp)
  80faa0:	dec00104 	addi	sp,sp,4
  80faa4:	f800283a 	ret

0080faa8 <alt_ic_irq_disable>:
  80faa8:	defff904 	addi	sp,sp,-28
  80faac:	df000615 	stw	fp,24(sp)
  80fab0:	df000604 	addi	fp,sp,24
  80fab4:	e13ffb15 	stw	r4,-20(fp)
  80fab8:	e17ffa15 	stw	r5,-24(fp)
  80fabc:	e0bffa17 	ldw	r2,-24(fp)
  80fac0:	e0bfff15 	stw	r2,-4(fp)
  80fac4:	0005303a 	rdctl	r2,status
  80fac8:	e0bffe15 	stw	r2,-8(fp)
  80facc:	e0fffe17 	ldw	r3,-8(fp)
  80fad0:	00bfff84 	movi	r2,-2
  80fad4:	1884703a 	and	r2,r3,r2
  80fad8:	1001703a 	wrctl	status,r2
  80fadc:	e0bffe17 	ldw	r2,-8(fp)
  80fae0:	e0bffd15 	stw	r2,-12(fp)
  80fae4:	00c00044 	movi	r3,1
  80fae8:	e0bfff17 	ldw	r2,-4(fp)
  80faec:	1884983a 	sll	r2,r3,r2
  80faf0:	0084303a 	nor	r2,zero,r2
  80faf4:	1007883a 	mov	r3,r2
  80faf8:	d0a70e17 	ldw	r2,-25544(gp)
  80fafc:	1884703a 	and	r2,r3,r2
  80fb00:	d0a70e15 	stw	r2,-25544(gp)
  80fb04:	d0a70e17 	ldw	r2,-25544(gp)
  80fb08:	100170fa 	wrctl	ienable,r2
  80fb0c:	e0bffd17 	ldw	r2,-12(fp)
  80fb10:	e0bffc15 	stw	r2,-16(fp)
  80fb14:	e0bffc17 	ldw	r2,-16(fp)
  80fb18:	1001703a 	wrctl	status,r2
  80fb1c:	0001883a 	nop
  80fb20:	0005883a 	mov	r2,zero
  80fb24:	e037883a 	mov	sp,fp
  80fb28:	df000017 	ldw	fp,0(sp)
  80fb2c:	dec00104 	addi	sp,sp,4
  80fb30:	f800283a 	ret

0080fb34 <alt_ic_irq_enabled>:
  80fb34:	defffc04 	addi	sp,sp,-16
  80fb38:	df000315 	stw	fp,12(sp)
  80fb3c:	df000304 	addi	fp,sp,12
  80fb40:	e13ffe15 	stw	r4,-8(fp)
  80fb44:	e17ffd15 	stw	r5,-12(fp)
  80fb48:	000530fa 	rdctl	r2,ienable
  80fb4c:	e0bfff15 	stw	r2,-4(fp)
  80fb50:	00c00044 	movi	r3,1
  80fb54:	e0bffd17 	ldw	r2,-12(fp)
  80fb58:	1884983a 	sll	r2,r3,r2
  80fb5c:	1007883a 	mov	r3,r2
  80fb60:	e0bfff17 	ldw	r2,-4(fp)
  80fb64:	1884703a 	and	r2,r3,r2
  80fb68:	1004c03a 	cmpne	r2,r2,zero
  80fb6c:	10803fcc 	andi	r2,r2,255
  80fb70:	e037883a 	mov	sp,fp
  80fb74:	df000017 	ldw	fp,0(sp)
  80fb78:	dec00104 	addi	sp,sp,4
  80fb7c:	f800283a 	ret

0080fb80 <alt_iic_isr_register>:
  80fb80:	defff504 	addi	sp,sp,-44
  80fb84:	dfc00a15 	stw	ra,40(sp)
  80fb88:	df000915 	stw	fp,36(sp)
  80fb8c:	df000904 	addi	fp,sp,36
  80fb90:	e13ffa15 	stw	r4,-24(fp)
  80fb94:	e17ff915 	stw	r5,-28(fp)
  80fb98:	e1bff815 	stw	r6,-32(fp)
  80fb9c:	e1fff715 	stw	r7,-36(fp)
  80fba0:	00bffa84 	movi	r2,-22
  80fba4:	e0bfff15 	stw	r2,-4(fp)
  80fba8:	e0bff917 	ldw	r2,-28(fp)
  80fbac:	e0bffe15 	stw	r2,-8(fp)
  80fbb0:	e0bffe17 	ldw	r2,-8(fp)
  80fbb4:	10800808 	cmpgei	r2,r2,32
  80fbb8:	1000251e 	bne	r2,zero,80fc50 <alt_iic_isr_register+0xd0>
  80fbbc:	0005303a 	rdctl	r2,status
  80fbc0:	e0bffc15 	stw	r2,-16(fp)
  80fbc4:	e0fffc17 	ldw	r3,-16(fp)
  80fbc8:	00bfff84 	movi	r2,-2
  80fbcc:	1884703a 	and	r2,r3,r2
  80fbd0:	1001703a 	wrctl	status,r2
  80fbd4:	e0bffc17 	ldw	r2,-16(fp)
  80fbd8:	e0bffd15 	stw	r2,-12(fp)
  80fbdc:	e0bffe17 	ldw	r2,-8(fp)
  80fbe0:	100890fa 	slli	r4,r2,3
  80fbe4:	e0fff817 	ldw	r3,-32(fp)
  80fbe8:	00802074 	movhi	r2,129
  80fbec:	2085883a 	add	r2,r4,r2
  80fbf0:	10d13a15 	stw	r3,17640(r2)
  80fbf4:	e0bffe17 	ldw	r2,-8(fp)
  80fbf8:	100890fa 	slli	r4,r2,3
  80fbfc:	e0fff717 	ldw	r3,-36(fp)
  80fc00:	00802074 	movhi	r2,129
  80fc04:	2085883a 	add	r2,r4,r2
  80fc08:	10d13b15 	stw	r3,17644(r2)
  80fc0c:	e0bff817 	ldw	r2,-32(fp)
  80fc10:	10000526 	beq	r2,zero,80fc28 <alt_iic_isr_register+0xa8>
  80fc14:	e0bffe17 	ldw	r2,-8(fp)
  80fc18:	100b883a 	mov	r5,r2
  80fc1c:	e13ffa17 	ldw	r4,-24(fp)
  80fc20:	080fa200 	call	80fa20 <alt_ic_irq_enable>
  80fc24:	00000406 	br	80fc38 <alt_iic_isr_register+0xb8>
  80fc28:	e0bffe17 	ldw	r2,-8(fp)
  80fc2c:	100b883a 	mov	r5,r2
  80fc30:	e13ffa17 	ldw	r4,-24(fp)
  80fc34:	080faa80 	call	80faa8 <alt_ic_irq_disable>
  80fc38:	e0bfff15 	stw	r2,-4(fp)
  80fc3c:	e0bffd17 	ldw	r2,-12(fp)
  80fc40:	e0bffb15 	stw	r2,-20(fp)
  80fc44:	e0bffb17 	ldw	r2,-20(fp)
  80fc48:	1001703a 	wrctl	status,r2
  80fc4c:	0001883a 	nop
  80fc50:	e0bfff17 	ldw	r2,-4(fp)
  80fc54:	e037883a 	mov	sp,fp
  80fc58:	dfc00117 	ldw	ra,4(sp)
  80fc5c:	df000017 	ldw	fp,0(sp)
  80fc60:	dec00204 	addi	sp,sp,8
  80fc64:	f800283a 	ret

0080fc68 <alt_open_fd>:
  80fc68:	defff904 	addi	sp,sp,-28
  80fc6c:	dfc00615 	stw	ra,24(sp)
  80fc70:	df000515 	stw	fp,20(sp)
  80fc74:	df000504 	addi	fp,sp,20
  80fc78:	e13ffe15 	stw	r4,-8(fp)
  80fc7c:	e17ffd15 	stw	r5,-12(fp)
  80fc80:	e1bffc15 	stw	r6,-16(fp)
  80fc84:	e1fffb15 	stw	r7,-20(fp)
  80fc88:	e1bffb17 	ldw	r6,-20(fp)
  80fc8c:	e17ffc17 	ldw	r5,-16(fp)
  80fc90:	e13ffd17 	ldw	r4,-12(fp)
  80fc94:	080fed00 	call	80fed0 <open>
  80fc98:	e0bfff15 	stw	r2,-4(fp)
  80fc9c:	e0bfff17 	ldw	r2,-4(fp)
  80fca0:	10002016 	blt	r2,zero,80fd24 <alt_open_fd+0xbc>
  80fca4:	e0ffff17 	ldw	r3,-4(fp)
  80fca8:	1805883a 	mov	r2,r3
  80fcac:	1085883a 	add	r2,r2,r2
  80fcb0:	10c5883a 	add	r2,r2,r3
  80fcb4:	100490ba 	slli	r2,r2,2
  80fcb8:	00c02074 	movhi	r3,129
  80fcbc:	10c7883a 	add	r3,r2,r3
  80fcc0:	18c5a817 	ldw	r3,5792(r3)
  80fcc4:	e0bffe17 	ldw	r2,-8(fp)
  80fcc8:	10c00015 	stw	r3,0(r2)
  80fccc:	e0ffff17 	ldw	r3,-4(fp)
  80fcd0:	1805883a 	mov	r2,r3
  80fcd4:	1085883a 	add	r2,r2,r2
  80fcd8:	10c5883a 	add	r2,r2,r3
  80fcdc:	100490ba 	slli	r2,r2,2
  80fce0:	00c02074 	movhi	r3,129
  80fce4:	10c7883a 	add	r3,r2,r3
  80fce8:	18c5a917 	ldw	r3,5796(r3)
  80fcec:	e0bffe17 	ldw	r2,-8(fp)
  80fcf0:	10c00115 	stw	r3,4(r2)
  80fcf4:	e0ffff17 	ldw	r3,-4(fp)
  80fcf8:	1805883a 	mov	r2,r3
  80fcfc:	1085883a 	add	r2,r2,r2
  80fd00:	10c5883a 	add	r2,r2,r3
  80fd04:	100490ba 	slli	r2,r2,2
  80fd08:	00c02074 	movhi	r3,129
  80fd0c:	10c7883a 	add	r3,r2,r3
  80fd10:	18c5aa17 	ldw	r3,5800(r3)
  80fd14:	e0bffe17 	ldw	r2,-8(fp)
  80fd18:	10c00215 	stw	r3,8(r2)
  80fd1c:	e13fff17 	ldw	r4,-4(fp)
  80fd20:	080e6140 	call	80e614 <alt_release_fd>
  80fd24:	0001883a 	nop
  80fd28:	e037883a 	mov	sp,fp
  80fd2c:	dfc00117 	ldw	ra,4(sp)
  80fd30:	df000017 	ldw	fp,0(sp)
  80fd34:	dec00204 	addi	sp,sp,8
  80fd38:	f800283a 	ret

0080fd3c <alt_io_redirect>:
  80fd3c:	defffb04 	addi	sp,sp,-20
  80fd40:	dfc00415 	stw	ra,16(sp)
  80fd44:	df000315 	stw	fp,12(sp)
  80fd48:	df000304 	addi	fp,sp,12
  80fd4c:	e13fff15 	stw	r4,-4(fp)
  80fd50:	e17ffe15 	stw	r5,-8(fp)
  80fd54:	e1bffd15 	stw	r6,-12(fp)
  80fd58:	01c07fc4 	movi	r7,511
  80fd5c:	01800044 	movi	r6,1
  80fd60:	e17fff17 	ldw	r5,-4(fp)
  80fd64:	01002074 	movhi	r4,129
  80fd68:	2105ab04 	addi	r4,r4,5804
  80fd6c:	080fc680 	call	80fc68 <alt_open_fd>
  80fd70:	01c07fc4 	movi	r7,511
  80fd74:	000d883a 	mov	r6,zero
  80fd78:	e17ffe17 	ldw	r5,-8(fp)
  80fd7c:	01002074 	movhi	r4,129
  80fd80:	2105a804 	addi	r4,r4,5792
  80fd84:	080fc680 	call	80fc68 <alt_open_fd>
  80fd88:	01c07fc4 	movi	r7,511
  80fd8c:	01800044 	movi	r6,1
  80fd90:	e17ffd17 	ldw	r5,-12(fp)
  80fd94:	01002074 	movhi	r4,129
  80fd98:	2105ae04 	addi	r4,r4,5816
  80fd9c:	080fc680 	call	80fc68 <alt_open_fd>
  80fda0:	0001883a 	nop
  80fda4:	e037883a 	mov	sp,fp
  80fda8:	dfc00117 	ldw	ra,4(sp)
  80fdac:	df000017 	ldw	fp,0(sp)
  80fdb0:	dec00204 	addi	sp,sp,8
  80fdb4:	f800283a 	ret

0080fdb8 <alt_get_errno>:
  80fdb8:	defffe04 	addi	sp,sp,-8
  80fdbc:	dfc00115 	stw	ra,4(sp)
  80fdc0:	df000015 	stw	fp,0(sp)
  80fdc4:	d839883a 	mov	fp,sp
  80fdc8:	d0a00917 	ldw	r2,-32732(gp)
  80fdcc:	10000326 	beq	r2,zero,80fddc <alt_get_errno+0x24>
  80fdd0:	d0a00917 	ldw	r2,-32732(gp)
  80fdd4:	103ee83a 	callr	r2
  80fdd8:	00000106 	br	80fde0 <alt_get_errno+0x28>
  80fddc:	d0a70704 	addi	r2,gp,-25572
  80fde0:	e037883a 	mov	sp,fp
  80fde4:	dfc00117 	ldw	ra,4(sp)
  80fde8:	df000017 	ldw	fp,0(sp)
  80fdec:	dec00204 	addi	sp,sp,8
  80fdf0:	f800283a 	ret

0080fdf4 <alt_file_locked>:
  80fdf4:	defffd04 	addi	sp,sp,-12
  80fdf8:	df000215 	stw	fp,8(sp)
  80fdfc:	df000204 	addi	fp,sp,8
  80fe00:	e13ffe15 	stw	r4,-8(fp)
  80fe04:	e0bffe17 	ldw	r2,-8(fp)
  80fe08:	10800217 	ldw	r2,8(r2)
  80fe0c:	10d00034 	orhi	r3,r2,16384
  80fe10:	e0bffe17 	ldw	r2,-8(fp)
  80fe14:	10c00215 	stw	r3,8(r2)
  80fe18:	e03fff15 	stw	zero,-4(fp)
  80fe1c:	00002306 	br	80feac <alt_file_locked+0xb8>
  80fe20:	e0ffff17 	ldw	r3,-4(fp)
  80fe24:	1805883a 	mov	r2,r3
  80fe28:	1085883a 	add	r2,r2,r2
  80fe2c:	10c5883a 	add	r2,r2,r3
  80fe30:	100490ba 	slli	r2,r2,2
  80fe34:	00c02074 	movhi	r3,129
  80fe38:	10c7883a 	add	r3,r2,r3
  80fe3c:	18c5a817 	ldw	r3,5792(r3)
  80fe40:	e0bffe17 	ldw	r2,-8(fp)
  80fe44:	10800017 	ldw	r2,0(r2)
  80fe48:	1880151e 	bne	r3,r2,80fea0 <alt_file_locked+0xac>
  80fe4c:	e0ffff17 	ldw	r3,-4(fp)
  80fe50:	1805883a 	mov	r2,r3
  80fe54:	1085883a 	add	r2,r2,r2
  80fe58:	10c5883a 	add	r2,r2,r3
  80fe5c:	100490ba 	slli	r2,r2,2
  80fe60:	00c02074 	movhi	r3,129
  80fe64:	10c7883a 	add	r3,r2,r3
  80fe68:	1885aa17 	ldw	r2,5800(r3)
  80fe6c:	10000c0e 	bge	r2,zero,80fea0 <alt_file_locked+0xac>
  80fe70:	e0ffff17 	ldw	r3,-4(fp)
  80fe74:	1805883a 	mov	r2,r3
  80fe78:	1085883a 	add	r2,r2,r2
  80fe7c:	10c5883a 	add	r2,r2,r3
  80fe80:	100490ba 	slli	r2,r2,2
  80fe84:	00c02074 	movhi	r3,129
  80fe88:	18c5a804 	addi	r3,r3,5792
  80fe8c:	10c5883a 	add	r2,r2,r3
  80fe90:	e0fffe17 	ldw	r3,-8(fp)
  80fe94:	18800226 	beq	r3,r2,80fea0 <alt_file_locked+0xac>
  80fe98:	00bffcc4 	movi	r2,-13
  80fe9c:	00000806 	br	80fec0 <alt_file_locked+0xcc>
  80fea0:	e0bfff17 	ldw	r2,-4(fp)
  80fea4:	10800044 	addi	r2,r2,1
  80fea8:	e0bfff15 	stw	r2,-4(fp)
  80feac:	d0a00817 	ldw	r2,-32736(gp)
  80feb0:	1007883a 	mov	r3,r2
  80feb4:	e0bfff17 	ldw	r2,-4(fp)
  80feb8:	18bfd92e 	bgeu	r3,r2,80fe20 <alt_file_locked+0x2c>
  80febc:	0005883a 	mov	r2,zero
  80fec0:	e037883a 	mov	sp,fp
  80fec4:	df000017 	ldw	fp,0(sp)
  80fec8:	dec00104 	addi	sp,sp,4
  80fecc:	f800283a 	ret

0080fed0 <open>:
  80fed0:	defff604 	addi	sp,sp,-40
  80fed4:	dfc00915 	stw	ra,36(sp)
  80fed8:	df000815 	stw	fp,32(sp)
  80fedc:	df000804 	addi	fp,sp,32
  80fee0:	e13ffa15 	stw	r4,-24(fp)
  80fee4:	e17ff915 	stw	r5,-28(fp)
  80fee8:	e1bff815 	stw	r6,-32(fp)
  80feec:	00bfffc4 	movi	r2,-1
  80fef0:	e0bffe15 	stw	r2,-8(fp)
  80fef4:	00bffb44 	movi	r2,-19
  80fef8:	e0bffd15 	stw	r2,-12(fp)
  80fefc:	e03ffc15 	stw	zero,-16(fp)
  80ff00:	d1600604 	addi	r5,gp,-32744
  80ff04:	e13ffa17 	ldw	r4,-24(fp)
  80ff08:	08100540 	call	810054 <alt_find_dev>
  80ff0c:	e0bfff15 	stw	r2,-4(fp)
  80ff10:	e0bfff17 	ldw	r2,-4(fp)
  80ff14:	1000051e 	bne	r2,zero,80ff2c <open+0x5c>
  80ff18:	e13ffa17 	ldw	r4,-24(fp)
  80ff1c:	08100e40 	call	8100e4 <alt_find_file>
  80ff20:	e0bfff15 	stw	r2,-4(fp)
  80ff24:	00800044 	movi	r2,1
  80ff28:	e0bffc15 	stw	r2,-16(fp)
  80ff2c:	e0bfff17 	ldw	r2,-4(fp)
  80ff30:	10002c26 	beq	r2,zero,80ffe4 <open+0x114>
  80ff34:	e13fff17 	ldw	r4,-4(fp)
  80ff38:	08101ec0 	call	8101ec <alt_get_fd>
  80ff3c:	e0bffe15 	stw	r2,-8(fp)
  80ff40:	e0bffe17 	ldw	r2,-8(fp)
  80ff44:	1000030e 	bge	r2,zero,80ff54 <open+0x84>
  80ff48:	e0bffe17 	ldw	r2,-8(fp)
  80ff4c:	e0bffd15 	stw	r2,-12(fp)
  80ff50:	00002606 	br	80ffec <open+0x11c>
  80ff54:	e0fffe17 	ldw	r3,-8(fp)
  80ff58:	1805883a 	mov	r2,r3
  80ff5c:	1085883a 	add	r2,r2,r2
  80ff60:	10c5883a 	add	r2,r2,r3
  80ff64:	100490ba 	slli	r2,r2,2
  80ff68:	00c02074 	movhi	r3,129
  80ff6c:	18c5a804 	addi	r3,r3,5792
  80ff70:	10c5883a 	add	r2,r2,r3
  80ff74:	e0bffb15 	stw	r2,-20(fp)
  80ff78:	e0fff917 	ldw	r3,-28(fp)
  80ff7c:	00900034 	movhi	r2,16384
  80ff80:	10bfffc4 	addi	r2,r2,-1
  80ff84:	1886703a 	and	r3,r3,r2
  80ff88:	e0bffb17 	ldw	r2,-20(fp)
  80ff8c:	10c00215 	stw	r3,8(r2)
  80ff90:	e0bffc17 	ldw	r2,-16(fp)
  80ff94:	1000051e 	bne	r2,zero,80ffac <open+0xdc>
  80ff98:	e13ffb17 	ldw	r4,-20(fp)
  80ff9c:	080fdf40 	call	80fdf4 <alt_file_locked>
  80ffa0:	e0bffd15 	stw	r2,-12(fp)
  80ffa4:	e0bffd17 	ldw	r2,-12(fp)
  80ffa8:	10001016 	blt	r2,zero,80ffec <open+0x11c>
  80ffac:	e0bfff17 	ldw	r2,-4(fp)
  80ffb0:	10800317 	ldw	r2,12(r2)
  80ffb4:	10000826 	beq	r2,zero,80ffd8 <open+0x108>
  80ffb8:	e0bfff17 	ldw	r2,-4(fp)
  80ffbc:	10800317 	ldw	r2,12(r2)
  80ffc0:	e1fff817 	ldw	r7,-32(fp)
  80ffc4:	e1bff917 	ldw	r6,-28(fp)
  80ffc8:	e17ffa17 	ldw	r5,-24(fp)
  80ffcc:	e13ffb17 	ldw	r4,-20(fp)
  80ffd0:	103ee83a 	callr	r2
  80ffd4:	00000106 	br	80ffdc <open+0x10c>
  80ffd8:	0005883a 	mov	r2,zero
  80ffdc:	e0bffd15 	stw	r2,-12(fp)
  80ffe0:	00000206 	br	80ffec <open+0x11c>
  80ffe4:	00bffb44 	movi	r2,-19
  80ffe8:	e0bffd15 	stw	r2,-12(fp)
  80ffec:	e0bffd17 	ldw	r2,-12(fp)
  80fff0:	1000090e 	bge	r2,zero,810018 <open+0x148>
  80fff4:	e13ffe17 	ldw	r4,-8(fp)
  80fff8:	080e6140 	call	80e614 <alt_release_fd>
  80fffc:	080fdb80 	call	80fdb8 <alt_get_errno>
  810000:	1007883a 	mov	r3,r2
  810004:	e0bffd17 	ldw	r2,-12(fp)
  810008:	0085c83a 	sub	r2,zero,r2
  81000c:	18800015 	stw	r2,0(r3)
  810010:	00bfffc4 	movi	r2,-1
  810014:	00000106 	br	81001c <open+0x14c>
  810018:	e0bffe17 	ldw	r2,-8(fp)
  81001c:	e037883a 	mov	sp,fp
  810020:	dfc00117 	ldw	ra,4(sp)
  810024:	df000017 	ldw	fp,0(sp)
  810028:	dec00204 	addi	sp,sp,8
  81002c:	f800283a 	ret

00810030 <altera_nios2_gen2_irq_init>:
  810030:	deffff04 	addi	sp,sp,-4
  810034:	df000015 	stw	fp,0(sp)
  810038:	d839883a 	mov	fp,sp
  81003c:	000170fa 	wrctl	ienable,zero
  810040:	0001883a 	nop
  810044:	e037883a 	mov	sp,fp
  810048:	df000017 	ldw	fp,0(sp)
  81004c:	dec00104 	addi	sp,sp,4
  810050:	f800283a 	ret

00810054 <alt_find_dev>:
  810054:	defffa04 	addi	sp,sp,-24
  810058:	dfc00515 	stw	ra,20(sp)
  81005c:	df000415 	stw	fp,16(sp)
  810060:	df000404 	addi	fp,sp,16
  810064:	e13ffd15 	stw	r4,-12(fp)
  810068:	e17ffc15 	stw	r5,-16(fp)
  81006c:	e0bffc17 	ldw	r2,-16(fp)
  810070:	10800017 	ldw	r2,0(r2)
  810074:	e0bfff15 	stw	r2,-4(fp)
  810078:	e13ffd17 	ldw	r4,-12(fp)
  81007c:	08010f80 	call	8010f8 <strlen>
  810080:	10800044 	addi	r2,r2,1
  810084:	e0bffe15 	stw	r2,-8(fp)
  810088:	00000d06 	br	8100c0 <alt_find_dev+0x6c>
  81008c:	e0bfff17 	ldw	r2,-4(fp)
  810090:	10800217 	ldw	r2,8(r2)
  810094:	e0fffe17 	ldw	r3,-8(fp)
  810098:	180d883a 	mov	r6,r3
  81009c:	e17ffd17 	ldw	r5,-12(fp)
  8100a0:	1009883a 	mov	r4,r2
  8100a4:	08104140 	call	810414 <memcmp>
  8100a8:	1000021e 	bne	r2,zero,8100b4 <alt_find_dev+0x60>
  8100ac:	e0bfff17 	ldw	r2,-4(fp)
  8100b0:	00000706 	br	8100d0 <alt_find_dev+0x7c>
  8100b4:	e0bfff17 	ldw	r2,-4(fp)
  8100b8:	10800017 	ldw	r2,0(r2)
  8100bc:	e0bfff15 	stw	r2,-4(fp)
  8100c0:	e0ffff17 	ldw	r3,-4(fp)
  8100c4:	e0bffc17 	ldw	r2,-16(fp)
  8100c8:	18bff01e 	bne	r3,r2,81008c <alt_find_dev+0x38>
  8100cc:	0005883a 	mov	r2,zero
  8100d0:	e037883a 	mov	sp,fp
  8100d4:	dfc00117 	ldw	ra,4(sp)
  8100d8:	df000017 	ldw	fp,0(sp)
  8100dc:	dec00204 	addi	sp,sp,8
  8100e0:	f800283a 	ret

008100e4 <alt_find_file>:
  8100e4:	defffb04 	addi	sp,sp,-20
  8100e8:	dfc00415 	stw	ra,16(sp)
  8100ec:	df000315 	stw	fp,12(sp)
  8100f0:	df000304 	addi	fp,sp,12
  8100f4:	e13ffd15 	stw	r4,-12(fp)
  8100f8:	d0a00417 	ldw	r2,-32752(gp)
  8100fc:	e0bfff15 	stw	r2,-4(fp)
  810100:	00003106 	br	8101c8 <alt_find_file+0xe4>
  810104:	e0bfff17 	ldw	r2,-4(fp)
  810108:	10800217 	ldw	r2,8(r2)
  81010c:	1009883a 	mov	r4,r2
  810110:	08010f80 	call	8010f8 <strlen>
  810114:	e0bffe15 	stw	r2,-8(fp)
  810118:	e0bfff17 	ldw	r2,-4(fp)
  81011c:	10c00217 	ldw	r3,8(r2)
  810120:	e0bffe17 	ldw	r2,-8(fp)
  810124:	10bfffc4 	addi	r2,r2,-1
  810128:	1885883a 	add	r2,r3,r2
  81012c:	10800003 	ldbu	r2,0(r2)
  810130:	10803fcc 	andi	r2,r2,255
  810134:	1080201c 	xori	r2,r2,128
  810138:	10bfe004 	addi	r2,r2,-128
  81013c:	10800bd8 	cmpnei	r2,r2,47
  810140:	1000031e 	bne	r2,zero,810150 <alt_find_file+0x6c>
  810144:	e0bffe17 	ldw	r2,-8(fp)
  810148:	10bfffc4 	addi	r2,r2,-1
  81014c:	e0bffe15 	stw	r2,-8(fp)
  810150:	e0bffe17 	ldw	r2,-8(fp)
  810154:	e0fffd17 	ldw	r3,-12(fp)
  810158:	1885883a 	add	r2,r3,r2
  81015c:	10800003 	ldbu	r2,0(r2)
  810160:	10803fcc 	andi	r2,r2,255
  810164:	1080201c 	xori	r2,r2,128
  810168:	10bfe004 	addi	r2,r2,-128
  81016c:	10800be0 	cmpeqi	r2,r2,47
  810170:	1000081e 	bne	r2,zero,810194 <alt_find_file+0xb0>
  810174:	e0bffe17 	ldw	r2,-8(fp)
  810178:	e0fffd17 	ldw	r3,-12(fp)
  81017c:	1885883a 	add	r2,r3,r2
  810180:	10800003 	ldbu	r2,0(r2)
  810184:	10803fcc 	andi	r2,r2,255
  810188:	1080201c 	xori	r2,r2,128
  81018c:	10bfe004 	addi	r2,r2,-128
  810190:	10000a1e 	bne	r2,zero,8101bc <alt_find_file+0xd8>
  810194:	e0bfff17 	ldw	r2,-4(fp)
  810198:	10800217 	ldw	r2,8(r2)
  81019c:	e0fffe17 	ldw	r3,-8(fp)
  8101a0:	180d883a 	mov	r6,r3
  8101a4:	e17ffd17 	ldw	r5,-12(fp)
  8101a8:	1009883a 	mov	r4,r2
  8101ac:	08104140 	call	810414 <memcmp>
  8101b0:	1000021e 	bne	r2,zero,8101bc <alt_find_file+0xd8>
  8101b4:	e0bfff17 	ldw	r2,-4(fp)
  8101b8:	00000706 	br	8101d8 <alt_find_file+0xf4>
  8101bc:	e0bfff17 	ldw	r2,-4(fp)
  8101c0:	10800017 	ldw	r2,0(r2)
  8101c4:	e0bfff15 	stw	r2,-4(fp)
  8101c8:	e0ffff17 	ldw	r3,-4(fp)
  8101cc:	d0a00404 	addi	r2,gp,-32752
  8101d0:	18bfcc1e 	bne	r3,r2,810104 <alt_find_file+0x20>
  8101d4:	0005883a 	mov	r2,zero
  8101d8:	e037883a 	mov	sp,fp
  8101dc:	dfc00117 	ldw	ra,4(sp)
  8101e0:	df000017 	ldw	fp,0(sp)
  8101e4:	dec00204 	addi	sp,sp,8
  8101e8:	f800283a 	ret

008101ec <alt_get_fd>:
  8101ec:	defffc04 	addi	sp,sp,-16
  8101f0:	df000315 	stw	fp,12(sp)
  8101f4:	df000304 	addi	fp,sp,12
  8101f8:	e13ffd15 	stw	r4,-12(fp)
  8101fc:	00bffa04 	movi	r2,-24
  810200:	e0bffe15 	stw	r2,-8(fp)
  810204:	e03fff15 	stw	zero,-4(fp)
  810208:	00001d06 	br	810280 <alt_get_fd+0x94>
  81020c:	e0ffff17 	ldw	r3,-4(fp)
  810210:	1805883a 	mov	r2,r3
  810214:	1085883a 	add	r2,r2,r2
  810218:	10c5883a 	add	r2,r2,r3
  81021c:	100490ba 	slli	r2,r2,2
  810220:	00c02074 	movhi	r3,129
  810224:	10c7883a 	add	r3,r2,r3
  810228:	1885a817 	ldw	r2,5792(r3)
  81022c:	1000111e 	bne	r2,zero,810274 <alt_get_fd+0x88>
  810230:	e0ffff17 	ldw	r3,-4(fp)
  810234:	1805883a 	mov	r2,r3
  810238:	1085883a 	add	r2,r2,r2
  81023c:	10c5883a 	add	r2,r2,r3
  810240:	100490ba 	slli	r2,r2,2
  810244:	e13ffd17 	ldw	r4,-12(fp)
  810248:	00c02074 	movhi	r3,129
  81024c:	10c7883a 	add	r3,r2,r3
  810250:	1905a815 	stw	r4,5792(r3)
  810254:	d0e00817 	ldw	r3,-32736(gp)
  810258:	e0bfff17 	ldw	r2,-4(fp)
  81025c:	1880020e 	bge	r3,r2,810268 <alt_get_fd+0x7c>
  810260:	e0bfff17 	ldw	r2,-4(fp)
  810264:	d0a00815 	stw	r2,-32736(gp)
  810268:	e0bfff17 	ldw	r2,-4(fp)
  81026c:	e0bffe15 	stw	r2,-8(fp)
  810270:	00000706 	br	810290 <alt_get_fd+0xa4>
  810274:	e0bfff17 	ldw	r2,-4(fp)
  810278:	10800044 	addi	r2,r2,1
  81027c:	e0bfff15 	stw	r2,-4(fp)
  810280:	e0bfff17 	ldw	r2,-4(fp)
  810284:	10800810 	cmplti	r2,r2,32
  810288:	103fe01e 	bne	r2,zero,81020c <alt_get_fd+0x20>
  81028c:	0001883a 	nop
  810290:	e0bffe17 	ldw	r2,-8(fp)
  810294:	e037883a 	mov	sp,fp
  810298:	df000017 	ldw	fp,0(sp)
  81029c:	dec00104 	addi	sp,sp,4
  8102a0:	f800283a 	ret

008102a4 <alt_icache_flush>:
  8102a4:	defffb04 	addi	sp,sp,-20
  8102a8:	df000415 	stw	fp,16(sp)
  8102ac:	df000404 	addi	fp,sp,16
  8102b0:	e13ffd15 	stw	r4,-12(fp)
  8102b4:	e17ffc15 	stw	r5,-16(fp)
  8102b8:	e0bffc17 	ldw	r2,-16(fp)
  8102bc:	10820070 	cmpltui	r2,r2,2049
  8102c0:	1000021e 	bne	r2,zero,8102cc <alt_icache_flush+0x28>
  8102c4:	00820004 	movi	r2,2048
  8102c8:	e0bffc15 	stw	r2,-16(fp)
  8102cc:	e0fffd17 	ldw	r3,-12(fp)
  8102d0:	e0bffc17 	ldw	r2,-16(fp)
  8102d4:	1885883a 	add	r2,r3,r2
  8102d8:	e0bffe15 	stw	r2,-8(fp)
  8102dc:	e0bffd17 	ldw	r2,-12(fp)
  8102e0:	e0bfff15 	stw	r2,-4(fp)
  8102e4:	00000506 	br	8102fc <alt_icache_flush+0x58>
  8102e8:	e0bfff17 	ldw	r2,-4(fp)
  8102ec:	1000603a 	flushi	r2
  8102f0:	e0bfff17 	ldw	r2,-4(fp)
  8102f4:	10800804 	addi	r2,r2,32
  8102f8:	e0bfff15 	stw	r2,-4(fp)
  8102fc:	e0ffff17 	ldw	r3,-4(fp)
  810300:	e0bffe17 	ldw	r2,-8(fp)
  810304:	18bff836 	bltu	r3,r2,8102e8 <alt_icache_flush+0x44>
  810308:	e0bffd17 	ldw	r2,-12(fp)
  81030c:	108007cc 	andi	r2,r2,31
  810310:	10000226 	beq	r2,zero,81031c <alt_icache_flush+0x78>
  810314:	e0bfff17 	ldw	r2,-4(fp)
  810318:	1000603a 	flushi	r2
  81031c:	0000203a 	flushp
  810320:	0001883a 	nop
  810324:	e037883a 	mov	sp,fp
  810328:	df000017 	ldw	fp,0(sp)
  81032c:	dec00104 	addi	sp,sp,4
  810330:	f800283a 	ret

00810334 <alt_exception_cause_generated_bad_addr>:
  810334:	defffe04 	addi	sp,sp,-8
  810338:	df000115 	stw	fp,4(sp)
  81033c:	df000104 	addi	fp,sp,4
  810340:	e13fff15 	stw	r4,-4(fp)
  810344:	e0bfff17 	ldw	r2,-4(fp)
  810348:	10bffe84 	addi	r2,r2,-6
  81034c:	10c00428 	cmpgeui	r3,r2,16
  810350:	1800191e 	bne	r3,zero,8103b8 <alt_exception_cause_generated_bad_addr+0x84>
  810354:	100690ba 	slli	r3,r2,2
  810358:	00802074 	movhi	r2,129
  81035c:	1885883a 	add	r2,r3,r2
  810360:	1080da17 	ldw	r2,872(r2)
  810364:	1000683a 	jmp	r2
  810368:	008103a8 	cmpgeui	r2,zero,1038
  81036c:	008103a8 	cmpgeui	r2,zero,1038
  810370:	008103b8 	rdprs	r2,zero,1038
  810374:	008103b8 	rdprs	r2,zero,1038
  810378:	008103b8 	rdprs	r2,zero,1038
  81037c:	008103a8 	cmpgeui	r2,zero,1038
  810380:	008103b0 	cmpltui	r2,zero,1038
  810384:	008103b8 	rdprs	r2,zero,1038
  810388:	008103a8 	cmpgeui	r2,zero,1038
  81038c:	008103a8 	cmpgeui	r2,zero,1038
  810390:	008103b8 	rdprs	r2,zero,1038
  810394:	008103a8 	cmpgeui	r2,zero,1038
  810398:	008103b0 	cmpltui	r2,zero,1038
  81039c:	008103b8 	rdprs	r2,zero,1038
  8103a0:	008103b8 	rdprs	r2,zero,1038
  8103a4:	008103a8 	cmpgeui	r2,zero,1038
  8103a8:	00800044 	movi	r2,1
  8103ac:	00000306 	br	8103bc <alt_exception_cause_generated_bad_addr+0x88>
  8103b0:	0005883a 	mov	r2,zero
  8103b4:	00000106 	br	8103bc <alt_exception_cause_generated_bad_addr+0x88>
  8103b8:	0005883a 	mov	r2,zero
  8103bc:	e037883a 	mov	sp,fp
  8103c0:	df000017 	ldw	fp,0(sp)
  8103c4:	dec00104 	addi	sp,sp,4
  8103c8:	f800283a 	ret

008103cc <atexit>:
  8103cc:	200b883a 	mov	r5,r4
  8103d0:	000f883a 	mov	r7,zero
  8103d4:	000d883a 	mov	r6,zero
  8103d8:	0009883a 	mov	r4,zero
  8103dc:	081048c1 	jmpi	81048c <__register_exitproc>

008103e0 <exit>:
  8103e0:	defffe04 	addi	sp,sp,-8
  8103e4:	000b883a 	mov	r5,zero
  8103e8:	dc000015 	stw	r16,0(sp)
  8103ec:	dfc00115 	stw	ra,4(sp)
  8103f0:	2021883a 	mov	r16,r4
  8103f4:	081051c0 	call	81051c <__call_exitprocs>
  8103f8:	00802074 	movhi	r2,129
  8103fc:	110a2017 	ldw	r4,10368(r2)
  810400:	20800f17 	ldw	r2,60(r4)
  810404:	10000126 	beq	r2,zero,81040c <exit+0x2c>
  810408:	103ee83a 	callr	r2
  81040c:	8009883a 	mov	r4,r16
  810410:	080de600 	call	80de60 <_exit>

00810414 <memcmp>:
  810414:	30800130 	cmpltui	r2,r6,4
  810418:	10000b1e 	bne	r2,zero,810448 <memcmp+0x34>
  81041c:	2144b03a 	or	r2,r4,r5
  810420:	108000cc 	andi	r2,r2,3
  810424:	1000171e 	bne	r2,zero,810484 <memcmp+0x70>
  810428:	20c00017 	ldw	r3,0(r4)
  81042c:	28800017 	ldw	r2,0(r5)
  810430:	1880141e 	bne	r3,r2,810484 <memcmp+0x70>
  810434:	31bfff04 	addi	r6,r6,-4
  810438:	30800128 	cmpgeui	r2,r6,4
  81043c:	21000104 	addi	r4,r4,4
  810440:	29400104 	addi	r5,r5,4
  810444:	103ff81e 	bne	r2,zero,810428 <memcmp+0x14>
  810448:	30bfffc4 	addi	r2,r6,-1
  81044c:	30000b26 	beq	r6,zero,81047c <memcmp+0x68>
  810450:	11800044 	addi	r6,r2,1
  810454:	298d883a 	add	r6,r5,r6
  810458:	00000106 	br	810460 <memcmp+0x4c>
  81045c:	29800726 	beq	r5,r6,81047c <memcmp+0x68>
  810460:	20800003 	ldbu	r2,0(r4)
  810464:	28c00003 	ldbu	r3,0(r5)
  810468:	21000044 	addi	r4,r4,1
  81046c:	29400044 	addi	r5,r5,1
  810470:	10fffa26 	beq	r2,r3,81045c <memcmp+0x48>
  810474:	10c5c83a 	sub	r2,r2,r3
  810478:	f800283a 	ret
  81047c:	0005883a 	mov	r2,zero
  810480:	f800283a 	ret
  810484:	30bfffc4 	addi	r2,r6,-1
  810488:	003ff106 	br	810450 <memcmp+0x3c>

0081048c <__register_exitproc>:
  81048c:	00802074 	movhi	r2,129
  810490:	10ca2017 	ldw	r3,10368(r2)
  810494:	18805217 	ldw	r2,328(r3)
  810498:	10001726 	beq	r2,zero,8104f8 <__register_exitproc+0x6c>
  81049c:	10c00117 	ldw	r3,4(r2)
  8104a0:	1a000808 	cmpgei	r8,r3,32
  8104a4:	40001b1e 	bne	r8,zero,810514 <__register_exitproc+0x88>
  8104a8:	20000b26 	beq	r4,zero,8104d8 <__register_exitproc+0x4c>
  8104ac:	181090ba 	slli	r8,r3,2
  8104b0:	02400044 	movi	r9,1
  8104b4:	48d2983a 	sll	r9,r9,r3
  8104b8:	1211883a 	add	r8,r2,r8
  8104bc:	41802215 	stw	r6,136(r8)
  8104c0:	11806217 	ldw	r6,392(r2)
  8104c4:	21000098 	cmpnei	r4,r4,2
  8104c8:	324cb03a 	or	r6,r6,r9
  8104cc:	11806215 	stw	r6,392(r2)
  8104d0:	41c04215 	stw	r7,264(r8)
  8104d4:	20000b26 	beq	r4,zero,810504 <__register_exitproc+0x78>
  8104d8:	19000084 	addi	r4,r3,2
  8104dc:	200890ba 	slli	r4,r4,2
  8104e0:	18c00044 	addi	r3,r3,1
  8104e4:	10c00115 	stw	r3,4(r2)
  8104e8:	1105883a 	add	r2,r2,r4
  8104ec:	11400015 	stw	r5,0(r2)
  8104f0:	0005883a 	mov	r2,zero
  8104f4:	f800283a 	ret
  8104f8:	18805304 	addi	r2,r3,332
  8104fc:	18805215 	stw	r2,328(r3)
  810500:	003fe606 	br	81049c <__register_exitproc+0x10>
  810504:	11006317 	ldw	r4,396(r2)
  810508:	2252b03a 	or	r9,r4,r9
  81050c:	12406315 	stw	r9,396(r2)
  810510:	003ff106 	br	8104d8 <__register_exitproc+0x4c>
  810514:	00bfffc4 	movi	r2,-1
  810518:	f800283a 	ret

0081051c <__call_exitprocs>:
  81051c:	defff704 	addi	sp,sp,-36
  810520:	00802074 	movhi	r2,129
  810524:	dcc00315 	stw	r19,12(sp)
  810528:	14ca2017 	ldw	r19,10368(r2)
  81052c:	dc800215 	stw	r18,8(sp)
  810530:	dfc00815 	stw	ra,32(sp)
  810534:	9c805217 	ldw	r18,328(r19)
  810538:	ddc00715 	stw	r23,28(sp)
  81053c:	dd800615 	stw	r22,24(sp)
  810540:	dd400515 	stw	r21,20(sp)
  810544:	dd000415 	stw	r20,16(sp)
  810548:	dc400115 	stw	r17,4(sp)
  81054c:	dc000015 	stw	r16,0(sp)
  810550:	90001026 	beq	r18,zero,810594 <__call_exitprocs+0x78>
  810554:	202b883a 	mov	r21,r4
  810558:	282d883a 	mov	r22,r5
  81055c:	05000044 	movi	r20,1
  810560:	94000117 	ldw	r16,4(r18)
  810564:	847fffc4 	addi	r17,r16,-1
  810568:	88000a16 	blt	r17,zero,810594 <__call_exitprocs+0x78>
  81056c:	84000044 	addi	r16,r16,1
  810570:	802090ba 	slli	r16,r16,2
  810574:	9421883a 	add	r16,r18,r16
  810578:	b0001126 	beq	r22,zero,8105c0 <__call_exitprocs+0xa4>
  81057c:	80804017 	ldw	r2,256(r16)
  810580:	15800f26 	beq	r2,r22,8105c0 <__call_exitprocs+0xa4>
  810584:	8c7fffc4 	addi	r17,r17,-1
  810588:	88bfffd8 	cmpnei	r2,r17,-1
  81058c:	843fff04 	addi	r16,r16,-4
  810590:	103ff91e 	bne	r2,zero,810578 <__call_exitprocs+0x5c>
  810594:	dfc00817 	ldw	ra,32(sp)
  810598:	ddc00717 	ldw	r23,28(sp)
  81059c:	dd800617 	ldw	r22,24(sp)
  8105a0:	dd400517 	ldw	r21,20(sp)
  8105a4:	dd000417 	ldw	r20,16(sp)
  8105a8:	dcc00317 	ldw	r19,12(sp)
  8105ac:	dc800217 	ldw	r18,8(sp)
  8105b0:	dc400117 	ldw	r17,4(sp)
  8105b4:	dc000017 	ldw	r16,0(sp)
  8105b8:	dec00904 	addi	sp,sp,36
  8105bc:	f800283a 	ret
  8105c0:	90800117 	ldw	r2,4(r18)
  8105c4:	81800017 	ldw	r6,0(r16)
  8105c8:	10bfffc4 	addi	r2,r2,-1
  8105cc:	14401726 	beq	r2,r17,81062c <__call_exitprocs+0x110>
  8105d0:	80000015 	stw	zero,0(r16)
  8105d4:	303feb26 	beq	r6,zero,810584 <__call_exitprocs+0x68>
  8105d8:	a446983a 	sll	r3,r20,r17
  8105dc:	90806217 	ldw	r2,392(r18)
  8105e0:	95c00117 	ldw	r23,4(r18)
  8105e4:	1884703a 	and	r2,r3,r2
  8105e8:	1000081e 	bne	r2,zero,81060c <__call_exitprocs+0xf0>
  8105ec:	303ee83a 	callr	r6
  8105f0:	90c00117 	ldw	r3,4(r18)
  8105f4:	98805217 	ldw	r2,328(r19)
  8105f8:	1dc0011e 	bne	r3,r23,810600 <__call_exitprocs+0xe4>
  8105fc:	90bfe126 	beq	r18,r2,810584 <__call_exitprocs+0x68>
  810600:	103fe426 	beq	r2,zero,810594 <__call_exitprocs+0x78>
  810604:	1025883a 	mov	r18,r2
  810608:	003fd506 	br	810560 <__call_exitprocs+0x44>
  81060c:	90806317 	ldw	r2,396(r18)
  810610:	81002017 	ldw	r4,128(r16)
  810614:	1886703a 	and	r3,r3,r2
  810618:	1800061e 	bne	r3,zero,810634 <__call_exitprocs+0x118>
  81061c:	200b883a 	mov	r5,r4
  810620:	a809883a 	mov	r4,r21
  810624:	303ee83a 	callr	r6
  810628:	003ff106 	br	8105f0 <__call_exitprocs+0xd4>
  81062c:	94400115 	stw	r17,4(r18)
  810630:	003fe806 	br	8105d4 <__call_exitprocs+0xb8>
  810634:	303ee83a 	callr	r6
  810638:	003fed06 	br	8105f0 <__call_exitprocs+0xd4>
