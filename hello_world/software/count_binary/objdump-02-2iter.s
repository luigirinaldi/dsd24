
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
  80014c:	10d0fa17 	ldw	r3,17384(r2)
  800150:	e0bffd17 	ldw	r2,-12(fp)
  800154:	100890fa 	slli	r4,r2,3
  800158:	00802074 	movhi	r2,129
  80015c:	2085883a 	add	r2,r4,r2
  800160:	1090fb17 	ldw	r2,17388(r2)
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
  800254:	d6a9e014 	ori	gp,gp,42880
  800258:	00802074 	movhi	r2,129
  80025c:	1090e414 	ori	r2,r2,17296
  800260:	00c02074 	movhi	r3,129
  800264:	18d13a14 	ori	r3,r3,17640
  800268:	10c00326 	beq	r2,r3,800278 <_start+0x40>
  80026c:	10000015 	stw	zero,0(r2)
  800270:	10800104 	addi	r2,r2,4
  800274:	10fffd36 	bltu	r2,r3,80026c <_start+0x34>
  800278:	080e16c0 	call	80e16c <alt_load>
  80027c:	080e30c0 	call	80e30c <alt_main>

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
  8002bc:	08004e40 	call	8004e4 <__addsf3>
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
  800318:	08009400 	call	800940 <__mulsf3>
  80031c:	900b883a 	mov	r5,r18
  800320:	1009883a 	mov	r4,r2
  800324:	08004e40 	call	8004e4 <__addsf3>
  800328:	8809883a 	mov	r4,r17
  80032c:	100b883a 	mov	r5,r2
  800330:	08004e40 	call	8004e4 <__addsf3>
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
  800368:	defffa04 	addi	sp,sp,-24
  80036c:	4203fe04 	addi	r8,r8,4088
  800370:	01002074 	movhi	r4,129
  800374:	dfc00515 	stw	ra,20(sp)
  800378:	dc800215 	stw	r18,8(sp)
  80037c:	dc400115 	stw	r17,4(sp)
  800380:	dc000015 	stw	r16,0(sp)
  800384:	dd000415 	stw	r20,16(sp)
  800388:	dcc00315 	stw	r19,12(sp)
  80038c:	21014f04 	addi	r4,r4,1340
  800390:	da37883a 	add	sp,sp,r8
  800394:	08018200 	call	801820 <puts>
  800398:	01002074 	movhi	r4,129
  80039c:	21015104 	addi	r4,r4,1348
  8003a0:	01400084 	movi	r5,2
  8003a4:	080171c0 	call	80171c <printf>
  8003a8:	00c00434 	movhi	r3,16
  8003ac:	d9000104 	addi	r4,sp,4
  8003b0:	00bffc34 	movhi	r2,65520
  8003b4:	18fc0104 	addi	r3,r3,-4092
  8003b8:	1083ff04 	addi	r2,r2,4092
  8003bc:	1907883a 	add	r3,r3,r4
  8003c0:	1885883a 	add	r2,r3,r2
  8003c4:	d8800015 	stw	r2,0(sp)
  8003c8:	10000015 	stw	zero,0(r2)
  8003cc:	14000104 	addi	r16,r2,4
  8003d0:	1025883a 	mov	r18,r2
  8003d4:	00800434 	movhi	r2,16
  8003d8:	10bc0004 	addi	r2,r2,-4096
  8003dc:	20a3883a 	add	r17,r4,r2
  8003e0:	0005883a 	mov	r2,zero
  8003e4:	00000106 	br	8003ec <main+0x88>
  8003e8:	84000104 	addi	r16,r16,4
  8003ec:	1009883a 	mov	r4,r2
  8003f0:	014ea034 	movhi	r5,14976
  8003f4:	08004e40 	call	8004e4 <__addsf3>
  8003f8:	80800015 	stw	r2,0(r16)
  8003fc:	8c3ffa1e 	bne	r17,r16,8003e8 <main+0x84>
  800400:	d8800017 	ldw	r2,0(sp)
  800404:	04c00434 	movhi	r19,16
  800408:	d5270d17 	ldw	r20,-25548(gp)
  80040c:	9cfc0104 	addi	r19,r19,-4092
  800410:	14e7883a 	add	r19,r2,r19
  800414:	0023883a 	mov	r17,zero
  800418:	94000017 	ldw	r16,0(r18)
  80041c:	94800104 	addi	r18,r18,4
  800420:	800b883a 	mov	r5,r16
  800424:	8009883a 	mov	r4,r16
  800428:	08009400 	call	800940 <__mulsf3>
  80042c:	800b883a 	mov	r5,r16
  800430:	1009883a 	mov	r4,r2
  800434:	08004e40 	call	8004e4 <__addsf3>
  800438:	8809883a 	mov	r4,r17
  80043c:	100b883a 	mov	r5,r2
  800440:	08004e40 	call	8004e4 <__addsf3>
  800444:	1023883a 	mov	r17,r2
  800448:	9cbff31e 	bne	r19,r18,800418 <main+0xb4>
  80044c:	1009883a 	mov	r4,r2
  800450:	08015740 	call	801574 <__extendsfdf2>
  800454:	01002074 	movhi	r4,129
  800458:	d4270d17 	ldw	r16,-25548(gp)
  80045c:	180d883a 	mov	r6,r3
  800460:	100b883a 	mov	r5,r2
  800464:	21015604 	addi	r4,r4,1368
  800468:	080171c0 	call	80171c <printf>
  80046c:	8521c83a 	sub	r16,r16,r20
  800470:	01002074 	movhi	r4,129
  800474:	800b883a 	mov	r5,r16
  800478:	01800084 	movi	r6,2
  80047c:	21015904 	addi	r4,r4,1380
  800480:	080171c0 	call	80171c <printf>
  800484:	8009883a 	mov	r4,r16
  800488:	08014e40 	call	8014e4 <__floatunsidf>
  80048c:	01cff834 	movhi	r7,16352
  800490:	1009883a 	mov	r4,r2
  800494:	000d883a 	mov	r6,zero
  800498:	180b883a 	mov	r5,r3
  80049c:	0800d3c0 	call	800d3c <__muldf3>
  8004a0:	01002074 	movhi	r4,129
  8004a4:	100b883a 	mov	r5,r2
  8004a8:	180d883a 	mov	r6,r3
  8004ac:	21016104 	addi	r4,r4,1412
  8004b0:	080171c0 	call	80171c <printf>
  8004b4:	0005883a 	mov	r2,zero
  8004b8:	02000434 	movhi	r8,16
  8004bc:	423c0204 	addi	r8,r8,-4088
  8004c0:	da37883a 	add	sp,sp,r8
  8004c4:	dfc00517 	ldw	ra,20(sp)
  8004c8:	dd000417 	ldw	r20,16(sp)
  8004cc:	dcc00317 	ldw	r19,12(sp)
  8004d0:	dc800217 	ldw	r18,8(sp)
  8004d4:	dc400117 	ldw	r17,4(sp)
  8004d8:	dc000017 	ldw	r16,0(sp)
  8004dc:	dec00604 	addi	sp,sp,24
  8004e0:	f800283a 	ret

008004e4 <__addsf3>:
  8004e4:	280cd5fa 	srli	r6,r5,23
  8004e8:	2006d5fa 	srli	r3,r4,23
  8004ec:	2010d7fa 	srli	r8,r4,31
  8004f0:	01c02034 	movhi	r7,128
  8004f4:	2818d7fa 	srli	r12,r5,31
  8004f8:	defffc04 	addi	sp,sp,-16
  8004fc:	39ffffc4 	addi	r7,r7,-1
  800500:	3914703a 	and	r10,r7,r4
  800504:	32403fcc 	andi	r9,r6,255
  800508:	dc800215 	stw	r18,8(sp)
  80050c:	dc400115 	stw	r17,4(sp)
  800510:	395a703a 	and	r13,r7,r5
  800514:	1c403fcc 	andi	r17,r3,255
  800518:	dfc00315 	stw	ra,12(sp)
  80051c:	dc000015 	stw	r16,0(sp)
  800520:	501c90fa 	slli	r14,r10,3
  800524:	681690fa 	slli	r11,r13,3
  800528:	500d883a 	mov	r6,r10
  80052c:	4025883a 	mov	r18,r8
  800530:	8a45c83a 	sub	r2,r17,r9
  800534:	43004b26 	beq	r8,r12,800664 <__addsf3+0x180>
  800538:	0080390e 	bge	zero,r2,800620 <__addsf3+0x13c>
  80053c:	48006326 	beq	r9,zero,8006cc <__addsf3+0x1e8>
  800540:	88c03fe0 	cmpeqi	r3,r17,255
  800544:	1800401e 	bne	r3,zero,800648 <__addsf3+0x164>
  800548:	5ac10034 	orhi	r11,r11,1024
  80054c:	10c00708 	cmpgei	r3,r2,28
  800550:	1800ab1e 	bne	r3,zero,800800 <__addsf3+0x31c>
  800554:	01000804 	movi	r4,32
  800558:	2089c83a 	sub	r4,r4,r2
  80055c:	5908983a 	sll	r4,r11,r4
  800560:	5884d83a 	srl	r2,r11,r2
  800564:	2008c03a 	cmpne	r4,r4,zero
  800568:	1104b03a 	or	r2,r2,r4
  80056c:	7085c83a 	sub	r2,r14,r2
  800570:	10c1002c 	andhi	r3,r2,1024
  800574:	18008526 	beq	r3,zero,80078c <__addsf3+0x2a8>
  800578:	04010034 	movhi	r16,1024
  80057c:	843fffc4 	addi	r16,r16,-1
  800580:	1420703a 	and	r16,r2,r16
  800584:	8009883a 	mov	r4,r16
  800588:	08016700 	call	801670 <__clzsi2>
  80058c:	10fffec4 	addi	r3,r2,-5
  800590:	80c4983a 	sll	r2,r16,r3
  800594:	1c409516 	blt	r3,r17,8007ec <__addsf3+0x308>
  800598:	1c47c83a 	sub	r3,r3,r17
  80059c:	1c000044 	addi	r16,r3,1
  8005a0:	01000804 	movi	r4,32
  8005a4:	2409c83a 	sub	r4,r4,r16
  8005a8:	1108983a 	sll	r4,r2,r4
  8005ac:	1404d83a 	srl	r2,r2,r16
  8005b0:	0023883a 	mov	r17,zero
  8005b4:	2008c03a 	cmpne	r4,r4,zero
  8005b8:	1104b03a 	or	r2,r2,r4
  8005bc:	10c001cc 	andi	r3,r2,7
  8005c0:	18000426 	beq	r3,zero,8005d4 <__addsf3+0xf0>
  8005c4:	10c003cc 	andi	r3,r2,15
  8005c8:	18c00120 	cmpeqi	r3,r3,4
  8005cc:	1800011e 	bne	r3,zero,8005d4 <__addsf3+0xf0>
  8005d0:	10800104 	addi	r2,r2,4
  8005d4:	10c1002c 	andhi	r3,r2,1024
  8005d8:	18006e26 	beq	r3,zero,800794 <__addsf3+0x2b0>
  8005dc:	88c00044 	addi	r3,r17,1
  8005e0:	19003fe0 	cmpeqi	r4,r3,255
  8005e4:	20006d1e 	bne	r4,zero,80079c <__addsf3+0x2b8>
  8005e8:	100491ba 	slli	r2,r2,6
  8005ec:	100cd27a 	srli	r6,r2,9
  8005f0:	18803fcc 	andi	r2,r3,255
  8005f4:	100495fa 	slli	r2,r2,23
  8005f8:	94803fcc 	andi	r18,r18,255
  8005fc:	902497fa 	slli	r18,r18,31
  800600:	1184b03a 	or	r2,r2,r6
  800604:	1484b03a 	or	r2,r2,r18
  800608:	dfc00317 	ldw	ra,12(sp)
  80060c:	dc800217 	ldw	r18,8(sp)
  800610:	dc400117 	ldw	r17,4(sp)
  800614:	dc000017 	ldw	r16,0(sp)
  800618:	dec00404 	addi	sp,sp,16
  80061c:	f800283a 	ret
  800620:	10003026 	beq	r2,zero,8006e4 <__addsf3+0x200>
  800624:	4c49c83a 	sub	r4,r9,r17
  800628:	88007f1e 	bne	r17,zero,800828 <__addsf3+0x344>
  80062c:	70003f26 	beq	r14,zero,80072c <__addsf3+0x248>
  800630:	213fffc4 	addi	r4,r4,-1
  800634:	2000b326 	beq	r4,zero,800904 <__addsf3+0x420>
  800638:	48803fe0 	cmpeqi	r2,r9,255
  80063c:	10007d26 	beq	r2,zero,800834 <__addsf3+0x350>
  800640:	6025883a 	mov	r18,r12
  800644:	6815883a 	mov	r10,r13
  800648:	50005426 	beq	r10,zero,80079c <__addsf3+0x2b8>
  80064c:	00802034 	movhi	r2,128
  800650:	51801034 	orhi	r6,r10,64
  800654:	10bfffc4 	addi	r2,r2,-1
  800658:	308c703a 	and	r6,r6,r2
  80065c:	00ffffc4 	movi	r3,-1
  800660:	003fe306 	br	8005f0 <__addsf3+0x10c>
  800664:	0080500e 	bge	zero,r2,8007a8 <__addsf3+0x2c4>
  800668:	48002a26 	beq	r9,zero,800714 <__addsf3+0x230>
  80066c:	88c03fe0 	cmpeqi	r3,r17,255
  800670:	183ff51e 	bne	r3,zero,800648 <__addsf3+0x164>
  800674:	5ac10034 	orhi	r11,r11,1024
  800678:	10c00708 	cmpgei	r3,r2,28
  80067c:	1800741e 	bne	r3,zero,800850 <__addsf3+0x36c>
  800680:	00c00804 	movi	r3,32
  800684:	1887c83a 	sub	r3,r3,r2
  800688:	58c6983a 	sll	r3,r11,r3
  80068c:	5884d83a 	srl	r2,r11,r2
  800690:	1806c03a 	cmpne	r3,r3,zero
  800694:	10c4b03a 	or	r2,r2,r3
  800698:	1385883a 	add	r2,r2,r14
  80069c:	10c1002c 	andhi	r3,r2,1024
  8006a0:	18003a26 	beq	r3,zero,80078c <__addsf3+0x2a8>
  8006a4:	8c400044 	addi	r17,r17,1
  8006a8:	88c03fe0 	cmpeqi	r3,r17,255
  8006ac:	18003b1e 	bne	r3,zero,80079c <__addsf3+0x2b8>
  8006b0:	1008d07a 	srli	r4,r2,1
  8006b4:	00df8034 	movhi	r3,32256
  8006b8:	18ffffc4 	addi	r3,r3,-1
  8006bc:	1080004c 	andi	r2,r2,1
  8006c0:	20c8703a 	and	r4,r4,r3
  8006c4:	2084b03a 	or	r2,r4,r2
  8006c8:	003fbc06 	br	8005bc <__addsf3+0xd8>
  8006cc:	58001a26 	beq	r11,zero,800738 <__addsf3+0x254>
  8006d0:	10bfffc4 	addi	r2,r2,-1
  8006d4:	10007c26 	beq	r2,zero,8008c8 <__addsf3+0x3e4>
  8006d8:	88c03fe0 	cmpeqi	r3,r17,255
  8006dc:	183f9b26 	beq	r3,zero,80054c <__addsf3+0x68>
  8006e0:	003fd906 	br	800648 <__addsf3+0x164>
  8006e4:	88800044 	addi	r2,r17,1
  8006e8:	10803f8c 	andi	r2,r2,254
  8006ec:	1000461e 	bne	r2,zero,800808 <__addsf3+0x324>
  8006f0:	88006e1e 	bne	r17,zero,8008ac <__addsf3+0x3c8>
  8006f4:	70007f26 	beq	r14,zero,8008f4 <__addsf3+0x410>
  8006f8:	583fbd26 	beq	r11,zero,8005f0 <__addsf3+0x10c>
  8006fc:	72c5c83a 	sub	r2,r14,r11
  800700:	1101002c 	andhi	r4,r2,1024
  800704:	20008326 	beq	r4,zero,800914 <__addsf3+0x430>
  800708:	5b85c83a 	sub	r2,r11,r14
  80070c:	6025883a 	mov	r18,r12
  800710:	003faa06 	br	8005bc <__addsf3+0xd8>
  800714:	58000826 	beq	r11,zero,800738 <__addsf3+0x254>
  800718:	10bfffc4 	addi	r2,r2,-1
  80071c:	10006826 	beq	r2,zero,8008c0 <__addsf3+0x3dc>
  800720:	88c03fe0 	cmpeqi	r3,r17,255
  800724:	183fd426 	beq	r3,zero,800678 <__addsf3+0x194>
  800728:	003fc706 	br	800648 <__addsf3+0x164>
  80072c:	6025883a 	mov	r18,r12
  800730:	6815883a 	mov	r10,r13
  800734:	4823883a 	mov	r17,r9
  800738:	88803fe0 	cmpeqi	r2,r17,255
  80073c:	103fc21e 	bne	r2,zero,800648 <__addsf3+0x164>
  800740:	00802034 	movhi	r2,128
  800744:	10bfffc4 	addi	r2,r2,-1
  800748:	508c703a 	and	r6,r10,r2
  80074c:	8807883a 	mov	r3,r17
  800750:	003fa706 	br	8005f0 <__addsf3+0x10c>
  800754:	881f883a 	mov	r15,r17
  800758:	8c400044 	addi	r17,r17,1
  80075c:	88803f8c 	andi	r2,r17,254
  800760:	10004a1e 	bne	r2,zero,80088c <__addsf3+0x3a8>
  800764:	78005a1e 	bne	r15,zero,8008d0 <__addsf3+0x3ec>
  800768:	70006e26 	beq	r14,zero,800924 <__addsf3+0x440>
  80076c:	583fa026 	beq	r11,zero,8005f0 <__addsf3+0x10c>
  800770:	72c5883a 	add	r2,r14,r11
  800774:	10c1002c 	andhi	r3,r2,1024
  800778:	18006f26 	beq	r3,zero,800938 <__addsf3+0x454>
  80077c:	00ff0034 	movhi	r3,64512
  800780:	18ffffc4 	addi	r3,r3,-1
  800784:	10c4703a 	and	r2,r2,r3
  800788:	04400044 	movi	r17,1
  80078c:	10c001cc 	andi	r3,r2,7
  800790:	183f8c1e 	bne	r3,zero,8005c4 <__addsf3+0xe0>
  800794:	1014d0fa 	srli	r10,r2,3
  800798:	003fe706 	br	800738 <__addsf3+0x254>
  80079c:	00ffffc4 	movi	r3,-1
  8007a0:	000d883a 	mov	r6,zero
  8007a4:	003f9206 	br	8005f0 <__addsf3+0x10c>
  8007a8:	103fea26 	beq	r2,zero,800754 <__addsf3+0x270>
  8007ac:	4c49c83a 	sub	r4,r9,r17
  8007b0:	88003026 	beq	r17,zero,800874 <__addsf3+0x390>
  8007b4:	48803fe0 	cmpeqi	r2,r9,255
  8007b8:	103fa21e 	bne	r2,zero,800644 <__addsf3+0x160>
  8007bc:	73810034 	orhi	r14,r14,1024
  8007c0:	20800708 	cmpgei	r2,r4,28
  8007c4:	1000491e 	bne	r2,zero,8008ec <__addsf3+0x408>
  8007c8:	00800804 	movi	r2,32
  8007cc:	1105c83a 	sub	r2,r2,r4
  8007d0:	7084983a 	sll	r2,r14,r2
  8007d4:	7108d83a 	srl	r4,r14,r4
  8007d8:	1004c03a 	cmpne	r2,r2,zero
  8007dc:	2088b03a 	or	r4,r4,r2
  8007e0:	22c5883a 	add	r2,r4,r11
  8007e4:	4823883a 	mov	r17,r9
  8007e8:	003fac06 	br	80069c <__addsf3+0x1b8>
  8007ec:	013f0034 	movhi	r4,64512
  8007f0:	213fffc4 	addi	r4,r4,-1
  8007f4:	88e3c83a 	sub	r17,r17,r3
  8007f8:	1104703a 	and	r2,r2,r4
  8007fc:	003f6f06 	br	8005bc <__addsf3+0xd8>
  800800:	00800044 	movi	r2,1
  800804:	003f5906 	br	80056c <__addsf3+0x88>
  800808:	72e1c83a 	sub	r16,r14,r11
  80080c:	8081002c 	andhi	r2,r16,1024
  800810:	1000231e 	bne	r2,zero,8008a0 <__addsf3+0x3bc>
  800814:	803f5b1e 	bne	r16,zero,800584 <__addsf3+0xa0>
  800818:	0025883a 	mov	r18,zero
  80081c:	0007883a 	mov	r3,zero
  800820:	000d883a 	mov	r6,zero
  800824:	003f7206 	br	8005f0 <__addsf3+0x10c>
  800828:	48803fe0 	cmpeqi	r2,r9,255
  80082c:	103f841e 	bne	r2,zero,800640 <__addsf3+0x15c>
  800830:	73810034 	orhi	r14,r14,1024
  800834:	20800708 	cmpgei	r2,r4,28
  800838:	10000726 	beq	r2,zero,800858 <__addsf3+0x374>
  80083c:	01000044 	movi	r4,1
  800840:	5905c83a 	sub	r2,r11,r4
  800844:	6025883a 	mov	r18,r12
  800848:	4823883a 	mov	r17,r9
  80084c:	003f4806 	br	800570 <__addsf3+0x8c>
  800850:	00800044 	movi	r2,1
  800854:	003f9006 	br	800698 <__addsf3+0x1b4>
  800858:	00800804 	movi	r2,32
  80085c:	1105c83a 	sub	r2,r2,r4
  800860:	7084983a 	sll	r2,r14,r2
  800864:	7108d83a 	srl	r4,r14,r4
  800868:	1004c03a 	cmpne	r2,r2,zero
  80086c:	2088b03a 	or	r4,r4,r2
  800870:	003ff306 	br	800840 <__addsf3+0x35c>
  800874:	703fae26 	beq	r14,zero,800730 <__addsf3+0x24c>
  800878:	213fffc4 	addi	r4,r4,-1
  80087c:	20002b26 	beq	r4,zero,80092c <__addsf3+0x448>
  800880:	48803fe0 	cmpeqi	r2,r9,255
  800884:	103fce26 	beq	r2,zero,8007c0 <__addsf3+0x2dc>
  800888:	003f6e06 	br	800644 <__addsf3+0x160>
  80088c:	88803fe0 	cmpeqi	r2,r17,255
  800890:	103fc21e 	bne	r2,zero,80079c <__addsf3+0x2b8>
  800894:	72c5883a 	add	r2,r14,r11
  800898:	1004d07a 	srli	r2,r2,1
  80089c:	003fbb06 	br	80078c <__addsf3+0x2a8>
  8008a0:	5ba1c83a 	sub	r16,r11,r14
  8008a4:	6025883a 	mov	r18,r12
  8008a8:	003f3606 	br	800584 <__addsf3+0xa0>
  8008ac:	7000091e 	bne	r14,zero,8008d4 <__addsf3+0x3f0>
  8008b0:	583f631e 	bne	r11,zero,800640 <__addsf3+0x15c>
  8008b4:	0025883a 	mov	r18,zero
  8008b8:	380d883a 	mov	r6,r7
  8008bc:	003f6706 	br	80065c <__addsf3+0x178>
  8008c0:	72c5883a 	add	r2,r14,r11
  8008c4:	003f7506 	br	80069c <__addsf3+0x1b8>
  8008c8:	72c5c83a 	sub	r2,r14,r11
  8008cc:	003f2806 	br	800570 <__addsf3+0x8c>
  8008d0:	703f5c26 	beq	r14,zero,800644 <__addsf3+0x160>
  8008d4:	583f5c26 	beq	r11,zero,800648 <__addsf3+0x164>
  8008d8:	20c0102c 	andhi	r3,r4,64
  8008dc:	183f5a26 	beq	r3,zero,800648 <__addsf3+0x164>
  8008e0:	2940102c 	andhi	r5,r5,64
  8008e4:	283f581e 	bne	r5,zero,800648 <__addsf3+0x164>
  8008e8:	003f5506 	br	800640 <__addsf3+0x15c>
  8008ec:	01000044 	movi	r4,1
  8008f0:	003fbb06 	br	8007e0 <__addsf3+0x2fc>
  8008f4:	58000826 	beq	r11,zero,800918 <__addsf3+0x434>
  8008f8:	6025883a 	mov	r18,r12
  8008fc:	680d883a 	mov	r6,r13
  800900:	003f3b06 	br	8005f0 <__addsf3+0x10c>
  800904:	5b85c83a 	sub	r2,r11,r14
  800908:	6025883a 	mov	r18,r12
  80090c:	4823883a 	mov	r17,r9
  800910:	003f1706 	br	800570 <__addsf3+0x8c>
  800914:	103f9d1e 	bne	r2,zero,80078c <__addsf3+0x2a8>
  800918:	0025883a 	mov	r18,zero
  80091c:	000d883a 	mov	r6,zero
  800920:	003f3306 	br	8005f0 <__addsf3+0x10c>
  800924:	680d883a 	mov	r6,r13
  800928:	003f3106 	br	8005f0 <__addsf3+0x10c>
  80092c:	72c5883a 	add	r2,r14,r11
  800930:	4823883a 	mov	r17,r9
  800934:	003f5906 	br	80069c <__addsf3+0x1b8>
  800938:	0023883a 	mov	r17,zero
  80093c:	003f9306 	br	80078c <__addsf3+0x2a8>

00800940 <__mulsf3>:
  800940:	defff504 	addi	sp,sp,-44
  800944:	dc400215 	stw	r17,8(sp)
  800948:	2022d5fa 	srli	r17,r4,23
  80094c:	dc000115 	stw	r16,4(sp)
  800950:	04002034 	movhi	r16,128
  800954:	dd800715 	stw	r22,28(sp)
  800958:	843fffc4 	addi	r16,r16,-1
  80095c:	dfc00a15 	stw	ra,40(sp)
  800960:	df000915 	stw	fp,36(sp)
  800964:	ddc00815 	stw	r23,32(sp)
  800968:	dd400615 	stw	r21,24(sp)
  80096c:	dd000515 	stw	r20,20(sp)
  800970:	dcc00415 	stw	r19,16(sp)
  800974:	dc800315 	stw	r18,12(sp)
  800978:	8c403fcc 	andi	r17,r17,255
  80097c:	202cd7fa 	srli	r22,r4,31
  800980:	8120703a 	and	r16,r16,r4
  800984:	88005026 	beq	r17,zero,800ac8 <__mulsf3+0x188>
  800988:	88803fe0 	cmpeqi	r2,r17,255
  80098c:	1000531e 	bne	r2,zero,800adc <__mulsf3+0x19c>
  800990:	802090fa 	slli	r16,r16,3
  800994:	8c7fe044 	addi	r17,r17,-127
  800998:	0025883a 	mov	r18,zero
  80099c:	84010034 	orhi	r16,r16,1024
  8009a0:	0029883a 	mov	r20,zero
  8009a4:	2804d5fa 	srli	r2,r5,23
  8009a8:	01002034 	movhi	r4,128
  8009ac:	213fffc4 	addi	r4,r4,-1
  8009b0:	10803fcc 	andi	r2,r2,255
  8009b4:	282ed7fa 	srli	r23,r5,31
  8009b8:	2166703a 	and	r19,r4,r5
  8009bc:	10004c26 	beq	r2,zero,800af0 <__mulsf3+0x1b0>
  8009c0:	10c03fe0 	cmpeqi	r3,r2,255
  8009c4:	18001e1e 	bne	r3,zero,800a40 <__mulsf3+0x100>
  8009c8:	980890fa 	slli	r4,r19,3
  8009cc:	10bfe044 	addi	r2,r2,-127
  8009d0:	88a3883a 	add	r17,r17,r2
  8009d4:	24c10034 	orhi	r19,r4,1024
  8009d8:	0007883a 	mov	r3,zero
  8009dc:	90800428 	cmpgeui	r2,r18,16
  8009e0:	b5eaf03a 	xor	r21,r22,r23
  8009e4:	8f000044 	addi	fp,r17,1
  8009e8:	1000481e 	bne	r2,zero,800b0c <__mulsf3+0x1cc>
  8009ec:	902490ba 	slli	r18,r18,2
  8009f0:	00802034 	movhi	r2,128
  8009f4:	9085883a 	add	r2,r18,r2
  8009f8:	10828017 	ldw	r2,2560(r2)
  8009fc:	1000683a 	jmp	r2
  800a00:	00800b0c 	andi	r2,zero,44
  800a04:	00800a58 	cmpnei	r2,zero,41
  800a08:	00800a58 	cmpnei	r2,zero,41
  800a0c:	00800a54 	movui	r2,41
  800a10:	00800a60 	cmpeqi	r2,zero,41
  800a14:	00800a60 	cmpeqi	r2,zero,41
  800a18:	00800c6c 	andhi	r2,zero,49
  800a1c:	00800a54 	movui	r2,41
  800a20:	00800a60 	cmpeqi	r2,zero,41
  800a24:	00800c6c 	andhi	r2,zero,49
  800a28:	00800a60 	cmpeqi	r2,zero,41
  800a2c:	00800a54 	movui	r2,41
  800a30:	00800bfc 	xorhi	r2,zero,47
  800a34:	00800bfc 	xorhi	r2,zero,47
  800a38:	00800bfc 	xorhi	r2,zero,47
  800a3c:	00800cd0 	cmplti	r2,zero,51
  800a40:	8c403fc4 	addi	r17,r17,255
  800a44:	98006f1e 	bne	r19,zero,800c04 <__mulsf3+0x2c4>
  800a48:	94800094 	ori	r18,r18,2
  800a4c:	00c00084 	movi	r3,2
  800a50:	003fe206 	br	8009dc <__mulsf3+0x9c>
  800a54:	b82b883a 	mov	r21,r23
  800a58:	9821883a 	mov	r16,r19
  800a5c:	1829883a 	mov	r20,r3
  800a60:	a08000a0 	cmpeqi	r2,r20,2
  800a64:	1000261e 	bne	r2,zero,800b00 <__mulsf3+0x1c0>
  800a68:	a08000e0 	cmpeqi	r2,r20,3
  800a6c:	1000ae1e 	bne	r2,zero,800d28 <__mulsf3+0x3e8>
  800a70:	a0800060 	cmpeqi	r2,r20,1
  800a74:	10004e26 	beq	r2,zero,800bb0 <__mulsf3+0x270>
  800a78:	0007883a 	mov	r3,zero
  800a7c:	0009883a 	mov	r4,zero
  800a80:	1c003fcc 	andi	r16,r3,255
  800a84:	a8803fcc 	andi	r2,r21,255
  800a88:	802095fa 	slli	r16,r16,23
  800a8c:	100497fa 	slli	r2,r2,31
  800a90:	8120b03a 	or	r16,r16,r4
  800a94:	8084b03a 	or	r2,r16,r2
  800a98:	dfc00a17 	ldw	ra,40(sp)
  800a9c:	df000917 	ldw	fp,36(sp)
  800aa0:	ddc00817 	ldw	r23,32(sp)
  800aa4:	dd800717 	ldw	r22,28(sp)
  800aa8:	dd400617 	ldw	r21,24(sp)
  800aac:	dd000517 	ldw	r20,20(sp)
  800ab0:	dcc00417 	ldw	r19,16(sp)
  800ab4:	dc800317 	ldw	r18,12(sp)
  800ab8:	dc400217 	ldw	r17,8(sp)
  800abc:	dc000117 	ldw	r16,4(sp)
  800ac0:	dec00b04 	addi	sp,sp,44
  800ac4:	f800283a 	ret
  800ac8:	80005d1e 	bne	r16,zero,800c40 <__mulsf3+0x300>
  800acc:	04800104 	movi	r18,4
  800ad0:	0023883a 	mov	r17,zero
  800ad4:	05000044 	movi	r20,1
  800ad8:	003fb206 	br	8009a4 <__mulsf3+0x64>
  800adc:	8000541e 	bne	r16,zero,800c30 <__mulsf3+0x2f0>
  800ae0:	04800204 	movi	r18,8
  800ae4:	04403fc4 	movi	r17,255
  800ae8:	05000084 	movi	r20,2
  800aec:	003fad06 	br	8009a4 <__mulsf3+0x64>
  800af0:	9800471e 	bne	r19,zero,800c10 <__mulsf3+0x2d0>
  800af4:	94800054 	ori	r18,r18,1
  800af8:	00c00044 	movi	r3,1
  800afc:	003fb706 	br	8009dc <__mulsf3+0x9c>
  800b00:	00ffffc4 	movi	r3,-1
  800b04:	0009883a 	mov	r4,zero
  800b08:	003fdd06 	br	800a80 <__mulsf3+0x140>
  800b0c:	8028d43a 	srli	r20,r16,16
  800b10:	9cbfffcc 	andi	r18,r19,65535
  800b14:	843fffcc 	andi	r16,r16,65535
  800b18:	900b883a 	mov	r5,r18
  800b1c:	8009883a 	mov	r4,r16
  800b20:	08016c40 	call	8016c4 <__mulsi3>
  800b24:	9826d43a 	srli	r19,r19,16
  800b28:	900b883a 	mov	r5,r18
  800b2c:	a009883a 	mov	r4,r20
  800b30:	1025883a 	mov	r18,r2
  800b34:	08016c40 	call	8016c4 <__mulsi3>
  800b38:	980b883a 	mov	r5,r19
  800b3c:	a009883a 	mov	r4,r20
  800b40:	1029883a 	mov	r20,r2
  800b44:	08016c40 	call	8016c4 <__mulsi3>
  800b48:	9809883a 	mov	r4,r19
  800b4c:	800b883a 	mov	r5,r16
  800b50:	1027883a 	mov	r19,r2
  800b54:	08016c40 	call	8016c4 <__mulsi3>
  800b58:	9006d43a 	srli	r3,r18,16
  800b5c:	1505883a 	add	r2,r2,r20
  800b60:	1887883a 	add	r3,r3,r2
  800b64:	1d00022e 	bgeu	r3,r20,800b70 <__mulsf3+0x230>
  800b68:	00800074 	movhi	r2,1
  800b6c:	98a7883a 	add	r19,r19,r2
  800b70:	1808943a 	slli	r4,r3,16
  800b74:	1820d43a 	srli	r16,r3,16
  800b78:	94bfffcc 	andi	r18,r18,65535
  800b7c:	2489883a 	add	r4,r4,r18
  800b80:	200a91ba 	slli	r5,r4,6
  800b84:	84e1883a 	add	r16,r16,r19
  800b88:	802091ba 	slli	r16,r16,6
  800b8c:	2008d6ba 	srli	r4,r4,26
  800b90:	2804c03a 	cmpne	r2,r5,zero
  800b94:	80c2002c 	andhi	r3,r16,2048
  800b98:	1108b03a 	or	r4,r2,r4
  800b9c:	8120b03a 	or	r16,r16,r4
  800ba0:	18005b26 	beq	r3,zero,800d10 <__mulsf3+0x3d0>
  800ba4:	8004d07a 	srli	r2,r16,1
  800ba8:	8400004c 	andi	r16,r16,1
  800bac:	1420b03a 	or	r16,r2,r16
  800bb0:	e0c01fc4 	addi	r3,fp,127
  800bb4:	00c0320e 	bge	zero,r3,800c80 <__mulsf3+0x340>
  800bb8:	808001cc 	andi	r2,r16,7
  800bbc:	10000426 	beq	r2,zero,800bd0 <__mulsf3+0x290>
  800bc0:	808003cc 	andi	r2,r16,15
  800bc4:	10800120 	cmpeqi	r2,r2,4
  800bc8:	1000011e 	bne	r2,zero,800bd0 <__mulsf3+0x290>
  800bcc:	84000104 	addi	r16,r16,4
  800bd0:	8082002c 	andhi	r2,r16,2048
  800bd4:	10000426 	beq	r2,zero,800be8 <__mulsf3+0x2a8>
  800bd8:	00be0034 	movhi	r2,63488
  800bdc:	10bfffc4 	addi	r2,r2,-1
  800be0:	80a0703a 	and	r16,r16,r2
  800be4:	e0c02004 	addi	r3,fp,128
  800be8:	18803fc8 	cmpgei	r2,r3,255
  800bec:	103fc41e 	bne	r2,zero,800b00 <__mulsf3+0x1c0>
  800bf0:	802091ba 	slli	r16,r16,6
  800bf4:	8008d27a 	srli	r4,r16,9
  800bf8:	003fa106 	br	800a80 <__mulsf3+0x140>
  800bfc:	b02b883a 	mov	r21,r22
  800c00:	003f9706 	br	800a60 <__mulsf3+0x120>
  800c04:	948000d4 	ori	r18,r18,3
  800c08:	00c000c4 	movi	r3,3
  800c0c:	003f7306 	br	8009dc <__mulsf3+0x9c>
  800c10:	9809883a 	mov	r4,r19
  800c14:	08016700 	call	801670 <__clzsi2>
  800c18:	10fffec4 	addi	r3,r2,-5
  800c1c:	88a3c83a 	sub	r17,r17,r2
  800c20:	98e6983a 	sll	r19,r19,r3
  800c24:	8c7fe284 	addi	r17,r17,-118
  800c28:	0007883a 	mov	r3,zero
  800c2c:	003f6b06 	br	8009dc <__mulsf3+0x9c>
  800c30:	04800304 	movi	r18,12
  800c34:	04403fc4 	movi	r17,255
  800c38:	050000c4 	movi	r20,3
  800c3c:	003f5906 	br	8009a4 <__mulsf3+0x64>
  800c40:	8009883a 	mov	r4,r16
  800c44:	d9400015 	stw	r5,0(sp)
  800c48:	08016700 	call	801670 <__clzsi2>
  800c4c:	10fffec4 	addi	r3,r2,-5
  800c50:	047fe284 	movi	r17,-118
  800c54:	80e0983a 	sll	r16,r16,r3
  800c58:	d9400017 	ldw	r5,0(sp)
  800c5c:	88a3c83a 	sub	r17,r17,r2
  800c60:	0025883a 	mov	r18,zero
  800c64:	0029883a 	mov	r20,zero
  800c68:	003f4e06 	br	8009a4 <__mulsf3+0x64>
  800c6c:	01002034 	movhi	r4,128
  800c70:	002b883a 	mov	r21,zero
  800c74:	213fffc4 	addi	r4,r4,-1
  800c78:	00ffffc4 	movi	r3,-1
  800c7c:	003f8006 	br	800a80 <__mulsf3+0x140>
  800c80:	00800044 	movi	r2,1
  800c84:	10c7c83a 	sub	r3,r2,r3
  800c88:	18800708 	cmpgei	r2,r3,28
  800c8c:	103f7a1e 	bne	r2,zero,800a78 <__mulsf3+0x138>
  800c90:	e1002784 	addi	r4,fp,158
  800c94:	8108983a 	sll	r4,r16,r4
  800c98:	80e0d83a 	srl	r16,r16,r3
  800c9c:	2008c03a 	cmpne	r4,r4,zero
  800ca0:	8120b03a 	or	r16,r16,r4
  800ca4:	808001cc 	andi	r2,r16,7
  800ca8:	10000426 	beq	r2,zero,800cbc <__mulsf3+0x37c>
  800cac:	808003cc 	andi	r2,r16,15
  800cb0:	10800120 	cmpeqi	r2,r2,4
  800cb4:	1000011e 	bne	r2,zero,800cbc <__mulsf3+0x37c>
  800cb8:	84000104 	addi	r16,r16,4
  800cbc:	8081002c 	andhi	r2,r16,1024
  800cc0:	10001526 	beq	r2,zero,800d18 <__mulsf3+0x3d8>
  800cc4:	00c00044 	movi	r3,1
  800cc8:	0009883a 	mov	r4,zero
  800ccc:	003f6c06 	br	800a80 <__mulsf3+0x140>
  800cd0:	8080102c 	andhi	r2,r16,64
  800cd4:	10000826 	beq	r2,zero,800cf8 <__mulsf3+0x3b8>
  800cd8:	9880102c 	andhi	r2,r19,64
  800cdc:	1000061e 	bne	r2,zero,800cf8 <__mulsf3+0x3b8>
  800ce0:	00802034 	movhi	r2,128
  800ce4:	99001034 	orhi	r4,r19,64
  800ce8:	10bfffc4 	addi	r2,r2,-1
  800cec:	2088703a 	and	r4,r4,r2
  800cf0:	b82b883a 	mov	r21,r23
  800cf4:	003fe006 	br	800c78 <__mulsf3+0x338>
  800cf8:	00802034 	movhi	r2,128
  800cfc:	81001034 	orhi	r4,r16,64
  800d00:	10bfffc4 	addi	r2,r2,-1
  800d04:	2088703a 	and	r4,r4,r2
  800d08:	b02b883a 	mov	r21,r22
  800d0c:	003fda06 	br	800c78 <__mulsf3+0x338>
  800d10:	8839883a 	mov	fp,r17
  800d14:	003fa606 	br	800bb0 <__mulsf3+0x270>
  800d18:	802091ba 	slli	r16,r16,6
  800d1c:	0007883a 	mov	r3,zero
  800d20:	8008d27a 	srli	r4,r16,9
  800d24:	003f5606 	br	800a80 <__mulsf3+0x140>
  800d28:	00802034 	movhi	r2,128
  800d2c:	81001034 	orhi	r4,r16,64
  800d30:	10bfffc4 	addi	r2,r2,-1
  800d34:	2088703a 	and	r4,r4,r2
  800d38:	003fcf06 	br	800c78 <__mulsf3+0x338>

00800d3c <__muldf3>:
  800d3c:	2810d53a 	srli	r8,r5,20
  800d40:	defff004 	addi	sp,sp,-64
  800d44:	00800434 	movhi	r2,16
  800d48:	df000e15 	stw	fp,56(sp)
  800d4c:	dd000a15 	stw	r20,40(sp)
  800d50:	dcc00915 	stw	r19,36(sp)
  800d54:	dc400715 	stw	r17,28(sp)
  800d58:	10bfffc4 	addi	r2,r2,-1
  800d5c:	dfc00f15 	stw	ra,60(sp)
  800d60:	ddc00d15 	stw	r23,52(sp)
  800d64:	dd800c15 	stw	r22,48(sp)
  800d68:	dd400b15 	stw	r21,44(sp)
  800d6c:	dc800815 	stw	r18,32(sp)
  800d70:	dc000615 	stw	r16,24(sp)
  800d74:	4201ffcc 	andi	r8,r8,2047
  800d78:	2828d7fa 	srli	r20,r5,31
  800d7c:	2023883a 	mov	r17,r4
  800d80:	3039883a 	mov	fp,r6
  800d84:	28a6703a 	and	r19,r5,r2
  800d88:	40005a26 	beq	r8,zero,800ef4 <__muldf3+0x1b8>
  800d8c:	4081ffe0 	cmpeqi	r2,r8,2047
  800d90:	10006c1e 	bne	r2,zero,800f44 <__muldf3+0x208>
  800d94:	980a90fa 	slli	r5,r19,3
  800d98:	2026d77a 	srli	r19,r4,29
  800d9c:	202490fa 	slli	r18,r4,3
  800da0:	423f0044 	addi	r8,r8,-1023
  800da4:	9966b03a 	or	r19,r19,r5
  800da8:	9cc02034 	orhi	r19,r19,128
  800dac:	002b883a 	mov	r21,zero
  800db0:	002d883a 	mov	r22,zero
  800db4:	3804d53a 	srli	r2,r7,20
  800db8:	00c00434 	movhi	r3,16
  800dbc:	18ffffc4 	addi	r3,r3,-1
  800dc0:	1081ffcc 	andi	r2,r2,2047
  800dc4:	382ed7fa 	srli	r23,r7,31
  800dc8:	38e0703a 	and	r16,r7,r3
  800dcc:	10006426 	beq	r2,zero,800f60 <__muldf3+0x224>
  800dd0:	10c1ffe0 	cmpeqi	r3,r2,2047
  800dd4:	1800211e 	bne	r3,zero,800e5c <__muldf3+0x120>
  800dd8:	e008d77a 	srli	r4,fp,29
  800ddc:	802090fa 	slli	r16,r16,3
  800de0:	e02290fa 	slli	r17,fp,3
  800de4:	10bf0044 	addi	r2,r2,-1023
  800de8:	2420b03a 	or	r16,r4,r16
  800dec:	84002034 	orhi	r16,r16,128
  800df0:	4091883a 	add	r8,r8,r2
  800df4:	0009883a 	mov	r4,zero
  800df8:	a8800428 	cmpgeui	r2,r21,16
  800dfc:	a5ccf03a 	xor	r6,r20,r23
  800e00:	41c00044 	addi	r7,r8,1
  800e04:	10006d1e 	bne	r2,zero,800fbc <__muldf3+0x280>
  800e08:	a80490ba 	slli	r2,r21,2
  800e0c:	00c02034 	movhi	r3,128
  800e10:	10c7883a 	add	r3,r2,r3
  800e14:	18838717 	ldw	r2,3612(r3)
  800e18:	1000683a 	jmp	r2
  800e1c:	00800fbc 	xorhi	r2,zero,62
  800e20:	00800e7c 	xorhi	r2,zero,57
  800e24:	00800e7c 	xorhi	r2,zero,57
  800e28:	00800e78 	rdprs	r2,zero,57
  800e2c:	00800e88 	cmpgei	r2,zero,58
  800e30:	00800e88 	cmpgei	r2,zero,58
  800e34:	00801338 	rdprs	r2,zero,76
  800e38:	00800e78 	rdprs	r2,zero,57
  800e3c:	00800e88 	cmpgei	r2,zero,58
  800e40:	00801338 	rdprs	r2,zero,76
  800e44:	00800e88 	cmpgei	r2,zero,58
  800e48:	00800e78 	rdprs	r2,zero,57
  800e4c:	008012e8 	cmpgeui	r2,zero,75
  800e50:	008012e8 	cmpgeui	r2,zero,75
  800e54:	008012e8 	cmpgeui	r2,zero,75
  800e58:	008013c4 	movi	r2,79
  800e5c:	e422b03a 	or	r17,fp,r16
  800e60:	4201ffc4 	addi	r8,r8,2047
  800e64:	8801221e 	bne	r17,zero,8012f0 <__muldf3+0x5b4>
  800e68:	ad400094 	ori	r21,r21,2
  800e6c:	0021883a 	mov	r16,zero
  800e70:	01000084 	movi	r4,2
  800e74:	003fe006 	br	800df8 <__muldf3+0xbc>
  800e78:	b80d883a 	mov	r6,r23
  800e7c:	8027883a 	mov	r19,r16
  800e80:	8825883a 	mov	r18,r17
  800e84:	202d883a 	mov	r22,r4
  800e88:	b08000a0 	cmpeqi	r2,r22,2
  800e8c:	1000471e 	bne	r2,zero,800fac <__muldf3+0x270>
  800e90:	b08000e0 	cmpeqi	r2,r22,3
  800e94:	10018e1e 	bne	r2,zero,8014d0 <__muldf3+0x794>
  800e98:	b0800060 	cmpeqi	r2,r22,1
  800e9c:	1000f826 	beq	r2,zero,801280 <__muldf3+0x544>
  800ea0:	0007883a 	mov	r3,zero
  800ea4:	0027883a 	mov	r19,zero
  800ea8:	0025883a 	mov	r18,zero
  800eac:	1806953a 	slli	r3,r3,20
  800eb0:	31803fcc 	andi	r6,r6,255
  800eb4:	300c97fa 	slli	r6,r6,31
  800eb8:	1cc6b03a 	or	r3,r3,r19
  800ebc:	9005883a 	mov	r2,r18
  800ec0:	1986b03a 	or	r3,r3,r6
  800ec4:	dfc00f17 	ldw	ra,60(sp)
  800ec8:	df000e17 	ldw	fp,56(sp)
  800ecc:	ddc00d17 	ldw	r23,52(sp)
  800ed0:	dd800c17 	ldw	r22,48(sp)
  800ed4:	dd400b17 	ldw	r21,44(sp)
  800ed8:	dd000a17 	ldw	r20,40(sp)
  800edc:	dcc00917 	ldw	r19,36(sp)
  800ee0:	dc800817 	ldw	r18,32(sp)
  800ee4:	dc400717 	ldw	r17,28(sp)
  800ee8:	dc000617 	ldw	r16,24(sp)
  800eec:	dec01004 	addi	sp,sp,64
  800ef0:	f800283a 	ret
  800ef4:	9924b03a 	or	r18,r19,r4
  800ef8:	90010a26 	beq	r18,zero,801324 <__muldf3+0x5e8>
  800efc:	d9c00015 	stw	r7,0(sp)
  800f00:	98014d26 	beq	r19,zero,801438 <__muldf3+0x6fc>
  800f04:	9809883a 	mov	r4,r19
  800f08:	08016700 	call	801670 <__clzsi2>
  800f0c:	d9c00017 	ldw	r7,0(sp)
  800f10:	113ffd44 	addi	r4,r2,-11
  800f14:	00c00744 	movi	r3,29
  800f18:	14bffe04 	addi	r18,r2,-8
  800f1c:	1907c83a 	sub	r3,r3,r4
  800f20:	9ca6983a 	sll	r19,r19,r18
  800f24:	88c6d83a 	srl	r3,r17,r3
  800f28:	8ca4983a 	sll	r18,r17,r18
  800f2c:	1ce6b03a 	or	r19,r3,r19
  800f30:	023f0344 	movi	r8,-1011
  800f34:	4091c83a 	sub	r8,r8,r2
  800f38:	002b883a 	mov	r21,zero
  800f3c:	002d883a 	mov	r22,zero
  800f40:	003f9c06 	br	800db4 <__muldf3+0x78>
  800f44:	9924b03a 	or	r18,r19,r4
  800f48:	9000f11e 	bne	r18,zero,801310 <__muldf3+0x5d4>
  800f4c:	0027883a 	mov	r19,zero
  800f50:	05400204 	movi	r21,8
  800f54:	0201ffc4 	movi	r8,2047
  800f58:	05800084 	movi	r22,2
  800f5c:	003f9506 	br	800db4 <__muldf3+0x78>
  800f60:	e422b03a 	or	r17,fp,r16
  800f64:	8800e626 	beq	r17,zero,801300 <__muldf3+0x5c4>
  800f68:	da000015 	stw	r8,0(sp)
  800f6c:	80012626 	beq	r16,zero,801408 <__muldf3+0x6cc>
  800f70:	8009883a 	mov	r4,r16
  800f74:	08016700 	call	801670 <__clzsi2>
  800f78:	da000017 	ldw	r8,0(sp)
  800f7c:	117ffd44 	addi	r5,r2,-11
  800f80:	01000744 	movi	r4,29
  800f84:	147ffe04 	addi	r17,r2,-8
  800f88:	2149c83a 	sub	r4,r4,r5
  800f8c:	8460983a 	sll	r16,r16,r17
  800f90:	e108d83a 	srl	r4,fp,r4
  800f94:	e462983a 	sll	r17,fp,r17
  800f98:	2420b03a 	or	r16,r4,r16
  800f9c:	4091c83a 	sub	r8,r8,r2
  800fa0:	423f0344 	addi	r8,r8,-1011
  800fa4:	0009883a 	mov	r4,zero
  800fa8:	003f9306 	br	800df8 <__muldf3+0xbc>
  800fac:	00c1ffc4 	movi	r3,2047
  800fb0:	0027883a 	mov	r19,zero
  800fb4:	0025883a 	mov	r18,zero
  800fb8:	003fbc06 	br	800eac <__muldf3+0x170>
  800fbc:	9028d43a 	srli	r20,r18,16
  800fc0:	8f3fffcc 	andi	fp,r17,65535
  800fc4:	957fffcc 	andi	r21,r18,65535
  800fc8:	a80b883a 	mov	r5,r21
  800fcc:	e009883a 	mov	r4,fp
  800fd0:	d9800315 	stw	r6,12(sp)
  800fd4:	da000215 	stw	r8,8(sp)
  800fd8:	d9c00115 	stw	r7,4(sp)
  800fdc:	8822d43a 	srli	r17,r17,16
  800fe0:	08016c40 	call	8016c4 <__mulsi3>
  800fe4:	e00b883a 	mov	r5,fp
  800fe8:	a009883a 	mov	r4,r20
  800fec:	102d883a 	mov	r22,r2
  800ff0:	08016c40 	call	8016c4 <__mulsi3>
  800ff4:	880b883a 	mov	r5,r17
  800ff8:	a009883a 	mov	r4,r20
  800ffc:	102f883a 	mov	r23,r2
  801000:	08016c40 	call	8016c4 <__mulsi3>
  801004:	a80b883a 	mov	r5,r21
  801008:	8809883a 	mov	r4,r17
  80100c:	d8800015 	stw	r2,0(sp)
  801010:	08016c40 	call	8016c4 <__mulsi3>
  801014:	b006d43a 	srli	r3,r22,16
  801018:	15e5883a 	add	r18,r2,r23
  80101c:	d9c00117 	ldw	r7,4(sp)
  801020:	1c87883a 	add	r3,r3,r18
  801024:	da000217 	ldw	r8,8(sp)
  801028:	d9800317 	ldw	r6,12(sp)
  80102c:	1dc0042e 	bgeu	r3,r23,801040 <__muldf3+0x304>
  801030:	d9000017 	ldw	r4,0(sp)
  801034:	00800074 	movhi	r2,1
  801038:	2085883a 	add	r2,r4,r2
  80103c:	d8800015 	stw	r2,0(sp)
  801040:	1804943a 	slli	r2,r3,16
  801044:	85ffffcc 	andi	r23,r16,65535
  801048:	b5bfffcc 	andi	r22,r22,65535
  80104c:	1585883a 	add	r2,r2,r22
  801050:	a80b883a 	mov	r5,r21
  801054:	b809883a 	mov	r4,r23
  801058:	1824d43a 	srli	r18,r3,16
  80105c:	d9800515 	stw	r6,20(sp)
  801060:	da000415 	stw	r8,16(sp)
  801064:	d9c00315 	stw	r7,12(sp)
  801068:	8020d43a 	srli	r16,r16,16
  80106c:	d8800115 	stw	r2,4(sp)
  801070:	08016c40 	call	8016c4 <__mulsi3>
  801074:	a009883a 	mov	r4,r20
  801078:	b80b883a 	mov	r5,r23
  80107c:	d8800215 	stw	r2,8(sp)
  801080:	08016c40 	call	8016c4 <__mulsi3>
  801084:	a009883a 	mov	r4,r20
  801088:	800b883a 	mov	r5,r16
  80108c:	102d883a 	mov	r22,r2
  801090:	08016c40 	call	8016c4 <__mulsi3>
  801094:	a80b883a 	mov	r5,r21
  801098:	8009883a 	mov	r4,r16
  80109c:	1029883a 	mov	r20,r2
  8010a0:	08016c40 	call	8016c4 <__mulsi3>
  8010a4:	da800217 	ldw	r10,8(sp)
  8010a8:	1585883a 	add	r2,r2,r22
  8010ac:	d9c00317 	ldw	r7,12(sp)
  8010b0:	5006d43a 	srli	r3,r10,16
  8010b4:	da000417 	ldw	r8,16(sp)
  8010b8:	d9800517 	ldw	r6,20(sp)
  8010bc:	1887883a 	add	r3,r3,r2
  8010c0:	1d80022e 	bgeu	r3,r22,8010cc <__muldf3+0x390>
  8010c4:	00800074 	movhi	r2,1
  8010c8:	a0a9883a 	add	r20,r20,r2
  8010cc:	1804d43a 	srli	r2,r3,16
  8010d0:	1806943a 	slli	r3,r3,16
  8010d4:	982cd43a 	srli	r22,r19,16
  8010d8:	9d7fffcc 	andi	r21,r19,65535
  8010dc:	e009883a 	mov	r4,fp
  8010e0:	54ffffcc 	andi	r19,r10,65535
  8010e4:	a80b883a 	mov	r5,r21
  8010e8:	1ce7883a 	add	r19,r3,r19
  8010ec:	d9800515 	stw	r6,20(sp)
  8010f0:	da000415 	stw	r8,16(sp)
  8010f4:	d9c00315 	stw	r7,12(sp)
  8010f8:	1529883a 	add	r20,r2,r20
  8010fc:	08016c40 	call	8016c4 <__mulsi3>
  801100:	e00b883a 	mov	r5,fp
  801104:	b009883a 	mov	r4,r22
  801108:	d8800215 	stw	r2,8(sp)
  80110c:	08016c40 	call	8016c4 <__mulsi3>
  801110:	8809883a 	mov	r4,r17
  801114:	b00b883a 	mov	r5,r22
  801118:	1039883a 	mov	fp,r2
  80111c:	08016c40 	call	8016c4 <__mulsi3>
  801120:	8809883a 	mov	r4,r17
  801124:	a80b883a 	mov	r5,r21
  801128:	1023883a 	mov	r17,r2
  80112c:	08016c40 	call	8016c4 <__mulsi3>
  801130:	d8c00217 	ldw	r3,8(sp)
  801134:	1705883a 	add	r2,r2,fp
  801138:	d9c00317 	ldw	r7,12(sp)
  80113c:	1808d43a 	srli	r4,r3,16
  801140:	da000417 	ldw	r8,16(sp)
  801144:	d9800517 	ldw	r6,20(sp)
  801148:	2089883a 	add	r4,r4,r2
  80114c:	94e5883a 	add	r18,r18,r19
  801150:	2700022e 	bgeu	r4,fp,80115c <__muldf3+0x420>
  801154:	00800074 	movhi	r2,1
  801158:	88a3883a 	add	r17,r17,r2
  80115c:	2004d43a 	srli	r2,r4,16
  801160:	2038943a 	slli	fp,r4,16
  801164:	18ffffcc 	andi	r3,r3,65535
  801168:	b809883a 	mov	r4,r23
  80116c:	a80b883a 	mov	r5,r21
  801170:	d9800415 	stw	r6,16(sp)
  801174:	da000315 	stw	r8,12(sp)
  801178:	d9c00215 	stw	r7,8(sp)
  80117c:	e0f9883a 	add	fp,fp,r3
  801180:	1463883a 	add	r17,r2,r17
  801184:	08016c40 	call	8016c4 <__mulsi3>
  801188:	b80b883a 	mov	r5,r23
  80118c:	b009883a 	mov	r4,r22
  801190:	102f883a 	mov	r23,r2
  801194:	08016c40 	call	8016c4 <__mulsi3>
  801198:	b00b883a 	mov	r5,r22
  80119c:	8009883a 	mov	r4,r16
  8011a0:	102d883a 	mov	r22,r2
  8011a4:	08016c40 	call	8016c4 <__mulsi3>
  8011a8:	a80b883a 	mov	r5,r21
  8011ac:	8009883a 	mov	r4,r16
  8011b0:	1021883a 	mov	r16,r2
  8011b4:	08016c40 	call	8016c4 <__mulsi3>
  8011b8:	b80ad43a 	srli	r5,r23,16
  8011bc:	1585883a 	add	r2,r2,r22
  8011c0:	d9c00217 	ldw	r7,8(sp)
  8011c4:	288b883a 	add	r5,r5,r2
  8011c8:	da000317 	ldw	r8,12(sp)
  8011cc:	d9800417 	ldw	r6,16(sp)
  8011d0:	2d80022e 	bgeu	r5,r22,8011dc <__muldf3+0x4a0>
  8011d4:	00800074 	movhi	r2,1
  8011d8:	80a1883a 	add	r16,r16,r2
  8011dc:	2806943a 	slli	r3,r5,16
  8011e0:	d8800017 	ldw	r2,0(sp)
  8011e4:	bdffffcc 	andi	r23,r23,65535
  8011e8:	1dc7883a 	add	r3,r3,r23
  8011ec:	90ab883a 	add	r21,r18,r2
  8011f0:	acd5803a 	cmpltu	r10,r21,r19
  8011f4:	1d07883a 	add	r3,r3,r20
  8011f8:	af2b883a 	add	r21,r21,fp
  8011fc:	1a97883a 	add	r11,r3,r10
  801200:	af09803a 	cmpltu	r4,r21,fp
  801204:	2826d43a 	srli	r19,r5,16
  801208:	5c53883a 	add	r9,r11,r17
  80120c:	4905883a 	add	r2,r9,r4
  801210:	1d29803a 	cmpltu	r20,r3,r20
  801214:	5a95803a 	cmpltu	r10,r11,r10
  801218:	1109803a 	cmpltu	r4,r2,r4
  80121c:	a2a8b03a 	or	r20,r20,r10
  801220:	4c63803a 	cmpltu	r17,r9,r17
  801224:	a4e7883a 	add	r19,r20,r19
  801228:	8908b03a 	or	r4,r17,r4
  80122c:	a824927a 	slli	r18,r21,9
  801230:	d8c00117 	ldw	r3,4(sp)
  801234:	9927883a 	add	r19,r19,r4
  801238:	9c27883a 	add	r19,r19,r16
  80123c:	9826927a 	slli	r19,r19,9
  801240:	a82ad5fa 	srli	r21,r21,23
  801244:	100ad5fa 	srli	r5,r2,23
  801248:	90e4b03a 	or	r18,r18,r3
  80124c:	1004927a 	slli	r2,r2,9
  801250:	9024c03a 	cmpne	r18,r18,zero
  801254:	9564b03a 	or	r18,r18,r21
  801258:	98c0402c 	andhi	r3,r19,256
  80125c:	90a4b03a 	or	r18,r18,r2
  801260:	9966b03a 	or	r19,r19,r5
  801264:	18007f26 	beq	r3,zero,801464 <__muldf3+0x728>
  801268:	9006d07a 	srli	r3,r18,1
  80126c:	980497fa 	slli	r2,r19,31
  801270:	9480004c 	andi	r18,r18,1
  801274:	9826d07a 	srli	r19,r19,1
  801278:	1c86b03a 	or	r3,r3,r18
  80127c:	18a4b03a 	or	r18,r3,r2
  801280:	3900ffc4 	addi	r4,r7,1023
  801284:	0100320e 	bge	zero,r4,801350 <__muldf3+0x614>
  801288:	908001cc 	andi	r2,r18,7
  80128c:	10000726 	beq	r2,zero,8012ac <__muldf3+0x570>
  801290:	908003cc 	andi	r2,r18,15
  801294:	10800120 	cmpeqi	r2,r2,4
  801298:	1000041e 	bne	r2,zero,8012ac <__muldf3+0x570>
  80129c:	90800104 	addi	r2,r18,4
  8012a0:	14a5803a 	cmpltu	r18,r2,r18
  8012a4:	9ca7883a 	add	r19,r19,r18
  8012a8:	1025883a 	mov	r18,r2
  8012ac:	9880402c 	andhi	r2,r19,256
  8012b0:	10000426 	beq	r2,zero,8012c4 <__muldf3+0x588>
  8012b4:	00bfc034 	movhi	r2,65280
  8012b8:	10bfffc4 	addi	r2,r2,-1
  8012bc:	98a6703a 	and	r19,r19,r2
  8012c0:	39010004 	addi	r4,r7,1024
  8012c4:	2081ffc8 	cmpgei	r2,r4,2047
  8012c8:	103f381e 	bne	r2,zero,800fac <__muldf3+0x270>
  8012cc:	9804977a 	slli	r2,r19,29
  8012d0:	9024d0fa 	srli	r18,r18,3
  8012d4:	9826927a 	slli	r19,r19,9
  8012d8:	20c1ffcc 	andi	r3,r4,2047
  8012dc:	14a4b03a 	or	r18,r2,r18
  8012e0:	9826d33a 	srli	r19,r19,12
  8012e4:	003ef106 	br	800eac <__muldf3+0x170>
  8012e8:	a00d883a 	mov	r6,r20
  8012ec:	003ee606 	br	800e88 <__muldf3+0x14c>
  8012f0:	ad4000d4 	ori	r21,r21,3
  8012f4:	e023883a 	mov	r17,fp
  8012f8:	010000c4 	movi	r4,3
  8012fc:	003ebe06 	br	800df8 <__muldf3+0xbc>
  801300:	ad400054 	ori	r21,r21,1
  801304:	0021883a 	mov	r16,zero
  801308:	01000044 	movi	r4,1
  80130c:	003eba06 	br	800df8 <__muldf3+0xbc>
  801310:	2025883a 	mov	r18,r4
  801314:	05400304 	movi	r21,12
  801318:	0201ffc4 	movi	r8,2047
  80131c:	058000c4 	movi	r22,3
  801320:	003ea406 	br	800db4 <__muldf3+0x78>
  801324:	0027883a 	mov	r19,zero
  801328:	05400104 	movi	r21,4
  80132c:	0011883a 	mov	r8,zero
  801330:	05800044 	movi	r22,1
  801334:	003e9f06 	br	800db4 <__muldf3+0x78>
  801338:	04c00434 	movhi	r19,16
  80133c:	000d883a 	mov	r6,zero
  801340:	9cffffc4 	addi	r19,r19,-1
  801344:	04bfffc4 	movi	r18,-1
  801348:	00c1ffc4 	movi	r3,2047
  80134c:	003ed706 	br	800eac <__muldf3+0x170>
  801350:	00800044 	movi	r2,1
  801354:	1105c83a 	sub	r2,r2,r4
  801358:	10c00e48 	cmpgei	r3,r2,57
  80135c:	183ed01e 	bne	r3,zero,800ea0 <__muldf3+0x164>
  801360:	10c00808 	cmpgei	r3,r2,32
  801364:	1800411e 	bne	r3,zero,80146c <__muldf3+0x730>
  801368:	39c10784 	addi	r7,r7,1054
  80136c:	99c6983a 	sll	r3,r19,r7
  801370:	9088d83a 	srl	r4,r18,r2
  801374:	91ce983a 	sll	r7,r18,r7
  801378:	98a6d83a 	srl	r19,r19,r2
  80137c:	1904b03a 	or	r2,r3,r4
  801380:	3824c03a 	cmpne	r18,r7,zero
  801384:	1484b03a 	or	r2,r2,r18
  801388:	10c001cc 	andi	r3,r2,7
  80138c:	18000726 	beq	r3,zero,8013ac <__muldf3+0x670>
  801390:	10c003cc 	andi	r3,r2,15
  801394:	18c00120 	cmpeqi	r3,r3,4
  801398:	1800041e 	bne	r3,zero,8013ac <__muldf3+0x670>
  80139c:	10c00104 	addi	r3,r2,4
  8013a0:	1885803a 	cmpltu	r2,r3,r2
  8013a4:	98a7883a 	add	r19,r19,r2
  8013a8:	1805883a 	mov	r2,r3
  8013ac:	98c0202c 	andhi	r3,r19,128
  8013b0:	18004326 	beq	r3,zero,8014c0 <__muldf3+0x784>
  8013b4:	00c00044 	movi	r3,1
  8013b8:	0027883a 	mov	r19,zero
  8013bc:	0025883a 	mov	r18,zero
  8013c0:	003eba06 	br	800eac <__muldf3+0x170>
  8013c4:	9880022c 	andhi	r2,r19,8
  8013c8:	10000926 	beq	r2,zero,8013f0 <__muldf3+0x6b4>
  8013cc:	8080022c 	andhi	r2,r16,8
  8013d0:	1000071e 	bne	r2,zero,8013f0 <__muldf3+0x6b4>
  8013d4:	00800434 	movhi	r2,16
  8013d8:	84c00234 	orhi	r19,r16,8
  8013dc:	10bfffc4 	addi	r2,r2,-1
  8013e0:	98a6703a 	and	r19,r19,r2
  8013e4:	b80d883a 	mov	r6,r23
  8013e8:	8825883a 	mov	r18,r17
  8013ec:	003fd606 	br	801348 <__muldf3+0x60c>
  8013f0:	00800434 	movhi	r2,16
  8013f4:	9cc00234 	orhi	r19,r19,8
  8013f8:	10bfffc4 	addi	r2,r2,-1
  8013fc:	98a6703a 	and	r19,r19,r2
  801400:	a00d883a 	mov	r6,r20
  801404:	003fd006 	br	801348 <__muldf3+0x60c>
  801408:	e009883a 	mov	r4,fp
  80140c:	08016700 	call	801670 <__clzsi2>
  801410:	11400544 	addi	r5,r2,21
  801414:	29000748 	cmpgei	r4,r5,29
  801418:	1007883a 	mov	r3,r2
  80141c:	da000017 	ldw	r8,0(sp)
  801420:	10800804 	addi	r2,r2,32
  801424:	203ed626 	beq	r4,zero,800f80 <__muldf3+0x244>
  801428:	1c3ffe04 	addi	r16,r3,-8
  80142c:	e420983a 	sll	r16,fp,r16
  801430:	0023883a 	mov	r17,zero
  801434:	003ed906 	br	800f9c <__muldf3+0x260>
  801438:	08016700 	call	801670 <__clzsi2>
  80143c:	11000544 	addi	r4,r2,21
  801440:	21400748 	cmpgei	r5,r4,29
  801444:	1007883a 	mov	r3,r2
  801448:	d9c00017 	ldw	r7,0(sp)
  80144c:	10800804 	addi	r2,r2,32
  801450:	283eb026 	beq	r5,zero,800f14 <__muldf3+0x1d8>
  801454:	1cfffe04 	addi	r19,r3,-8
  801458:	8ce6983a 	sll	r19,r17,r19
  80145c:	0025883a 	mov	r18,zero
  801460:	003eb306 	br	800f30 <__muldf3+0x1f4>
  801464:	400f883a 	mov	r7,r8
  801468:	003f8506 	br	801280 <__muldf3+0x544>
  80146c:	00fff844 	movi	r3,-31
  801470:	1907c83a 	sub	r3,r3,r4
  801474:	10800820 	cmpeqi	r2,r2,32
  801478:	98c6d83a 	srl	r3,r19,r3
  80147c:	1000031e 	bne	r2,zero,80148c <__muldf3+0x750>
  801480:	39c10f84 	addi	r7,r7,1086
  801484:	99e6983a 	sll	r19,r19,r7
  801488:	94e4b03a 	or	r18,r18,r19
  80148c:	9024c03a 	cmpne	r18,r18,zero
  801490:	90c4b03a 	or	r2,r18,r3
  801494:	148001cc 	andi	r18,r2,7
  801498:	9000051e 	bne	r18,zero,8014b0 <__muldf3+0x774>
  80149c:	0027883a 	mov	r19,zero
  8014a0:	1004d0fa 	srli	r2,r2,3
  8014a4:	0007883a 	mov	r3,zero
  8014a8:	14a4b03a 	or	r18,r2,r18
  8014ac:	003e7f06 	br	800eac <__muldf3+0x170>
  8014b0:	10c003cc 	andi	r3,r2,15
  8014b4:	18c00118 	cmpnei	r3,r3,4
  8014b8:	0027883a 	mov	r19,zero
  8014bc:	183fb71e 	bne	r3,zero,80139c <__muldf3+0x660>
  8014c0:	9806927a 	slli	r3,r19,9
  8014c4:	9824977a 	slli	r18,r19,29
  8014c8:	1826d33a 	srli	r19,r3,12
  8014cc:	003ff406 	br	8014a0 <__muldf3+0x764>
  8014d0:	00800434 	movhi	r2,16
  8014d4:	9cc00234 	orhi	r19,r19,8
  8014d8:	10bfffc4 	addi	r2,r2,-1
  8014dc:	98a6703a 	and	r19,r19,r2
  8014e0:	003f9906 	br	801348 <__muldf3+0x60c>

008014e4 <__floatunsidf>:
  8014e4:	defffe04 	addi	sp,sp,-8
  8014e8:	dc000015 	stw	r16,0(sp)
  8014ec:	dfc00115 	stw	ra,4(sp)
  8014f0:	2021883a 	mov	r16,r4
  8014f4:	20000f26 	beq	r4,zero,801534 <__floatunsidf+0x50>
  8014f8:	08016700 	call	801670 <__clzsi2>
  8014fc:	00c10784 	movi	r3,1054
  801500:	1887c83a 	sub	r3,r3,r2
  801504:	110002c8 	cmpgei	r4,r2,11
  801508:	18c1ffcc 	andi	r3,r3,2047
  80150c:	2000121e 	bne	r4,zero,801558 <__floatunsidf+0x74>
  801510:	014002c4 	movi	r5,11
  801514:	288bc83a 	sub	r5,r5,r2
  801518:	814ad83a 	srl	r5,r16,r5
  80151c:	01000434 	movhi	r4,16
  801520:	10800544 	addi	r2,r2,21
  801524:	213fffc4 	addi	r4,r4,-1
  801528:	80a0983a 	sll	r16,r16,r2
  80152c:	290a703a 	and	r5,r5,r4
  801530:	00000206 	br	80153c <__floatunsidf+0x58>
  801534:	0007883a 	mov	r3,zero
  801538:	000b883a 	mov	r5,zero
  80153c:	1806953a 	slli	r3,r3,20
  801540:	8005883a 	mov	r2,r16
  801544:	1946b03a 	or	r3,r3,r5
  801548:	dfc00117 	ldw	ra,4(sp)
  80154c:	dc000017 	ldw	r16,0(sp)
  801550:	dec00204 	addi	sp,sp,8
  801554:	f800283a 	ret
  801558:	10bffd44 	addi	r2,r2,-11
  80155c:	808a983a 	sll	r5,r16,r2
  801560:	00800434 	movhi	r2,16
  801564:	10bfffc4 	addi	r2,r2,-1
  801568:	288a703a 	and	r5,r5,r2
  80156c:	0021883a 	mov	r16,zero
  801570:	003ff206 	br	80153c <__floatunsidf+0x58>

00801574 <__extendsfdf2>:
  801574:	200ad5fa 	srli	r5,r4,23
  801578:	defffd04 	addi	sp,sp,-12
  80157c:	dc000015 	stw	r16,0(sp)
  801580:	29403fcc 	andi	r5,r5,255
  801584:	04002034 	movhi	r16,128
  801588:	28800044 	addi	r2,r5,1
  80158c:	dc400115 	stw	r17,4(sp)
  801590:	843fffc4 	addi	r16,r16,-1
  801594:	dfc00215 	stw	ra,8(sp)
  801598:	10803f8c 	andi	r2,r2,254
  80159c:	2022d7fa 	srli	r17,r4,31
  8015a0:	8120703a 	and	r16,r16,r4
  8015a4:	10000d26 	beq	r2,zero,8015dc <__extendsfdf2+0x68>
  8015a8:	8008d0fa 	srli	r4,r16,3
  8015ac:	8020977a 	slli	r16,r16,29
  8015b0:	28c0e004 	addi	r3,r5,896
  8015b4:	180a953a 	slli	r5,r3,20
  8015b8:	880697fa 	slli	r3,r17,31
  8015bc:	8005883a 	mov	r2,r16
  8015c0:	290ab03a 	or	r5,r5,r4
  8015c4:	28c6b03a 	or	r3,r5,r3
  8015c8:	dfc00217 	ldw	ra,8(sp)
  8015cc:	dc400117 	ldw	r17,4(sp)
  8015d0:	dc000017 	ldw	r16,0(sp)
  8015d4:	dec00304 	addi	sp,sp,12
  8015d8:	f800283a 	ret
  8015dc:	2800111e 	bne	r5,zero,801624 <__extendsfdf2+0xb0>
  8015e0:	80001926 	beq	r16,zero,801648 <__extendsfdf2+0xd4>
  8015e4:	8009883a 	mov	r4,r16
  8015e8:	08016700 	call	801670 <__clzsi2>
  8015ec:	10c002c8 	cmpgei	r3,r2,11
  8015f0:	18001b1e 	bne	r3,zero,801660 <__extendsfdf2+0xec>
  8015f4:	010002c4 	movi	r4,11
  8015f8:	2089c83a 	sub	r4,r4,r2
  8015fc:	10c00544 	addi	r3,r2,21
  801600:	810ad83a 	srl	r5,r16,r4
  801604:	80e0983a 	sll	r16,r16,r3
  801608:	00c0e244 	movi	r3,905
  80160c:	01000434 	movhi	r4,16
  801610:	213fffc4 	addi	r4,r4,-1
  801614:	1885c83a 	sub	r2,r3,r2
  801618:	2908703a 	and	r4,r5,r4
  80161c:	10c1ffcc 	andi	r3,r2,2047
  801620:	003fe406 	br	8015b4 <__extendsfdf2+0x40>
  801624:	80000b26 	beq	r16,zero,801654 <__extendsfdf2+0xe0>
  801628:	800ad0fa 	srli	r5,r16,3
  80162c:	00800434 	movhi	r2,16
  801630:	10bfffc4 	addi	r2,r2,-1
  801634:	29000234 	orhi	r4,r5,8
  801638:	8020977a 	slli	r16,r16,29
  80163c:	2088703a 	and	r4,r4,r2
  801640:	00c1ffc4 	movi	r3,2047
  801644:	003fdb06 	br	8015b4 <__extendsfdf2+0x40>
  801648:	0007883a 	mov	r3,zero
  80164c:	0009883a 	mov	r4,zero
  801650:	003fd806 	br	8015b4 <__extendsfdf2+0x40>
  801654:	00c1ffc4 	movi	r3,2047
  801658:	0009883a 	mov	r4,zero
  80165c:	003fd506 	br	8015b4 <__extendsfdf2+0x40>
  801660:	113ffd44 	addi	r4,r2,-11
  801664:	810a983a 	sll	r5,r16,r4
  801668:	0021883a 	mov	r16,zero
  80166c:	003fe606 	br	801608 <__extendsfdf2+0x94>

00801670 <__clzsi2>:
  801670:	00bfffd4 	movui	r2,65535
  801674:	11000436 	bltu	r2,r4,801688 <__clzsi2+0x18>
  801678:	20804030 	cmpltui	r2,r4,256
  80167c:	10000e26 	beq	r2,zero,8016b8 <__clzsi2+0x48>
  801680:	01400804 	movi	r5,32
  801684:	00000406 	br	801698 <__clzsi2+0x28>
  801688:	00804034 	movhi	r2,256
  80168c:	20800736 	bltu	r4,r2,8016ac <__clzsi2+0x3c>
  801690:	2008d63a 	srli	r4,r4,24
  801694:	01400204 	movi	r5,8
  801698:	00c02074 	movhi	r3,129
  80169c:	20c7883a 	add	r3,r4,r3
  8016a0:	18816503 	ldbu	r2,1428(r3)
  8016a4:	2885c83a 	sub	r2,r5,r2
  8016a8:	f800283a 	ret
  8016ac:	2008d43a 	srli	r4,r4,16
  8016b0:	01400404 	movi	r5,16
  8016b4:	003ff806 	br	801698 <__clzsi2+0x28>
  8016b8:	2008d23a 	srli	r4,r4,8
  8016bc:	01400604 	movi	r5,24
  8016c0:	003ff506 	br	801698 <__clzsi2+0x28>

008016c4 <__mulsi3>:
  8016c4:	0005883a 	mov	r2,zero
  8016c8:	20000726 	beq	r4,zero,8016e8 <__mulsi3+0x24>
  8016cc:	20c0004c 	andi	r3,r4,1
  8016d0:	2008d07a 	srli	r4,r4,1
  8016d4:	18000126 	beq	r3,zero,8016dc <__mulsi3+0x18>
  8016d8:	1145883a 	add	r2,r2,r5
  8016dc:	294b883a 	add	r5,r5,r5
  8016e0:	203ffa1e 	bne	r4,zero,8016cc <__mulsi3+0x8>
  8016e4:	f800283a 	ret
  8016e8:	f800283a 	ret

008016ec <_printf_r>:
  8016ec:	defffd04 	addi	sp,sp,-12
  8016f0:	2805883a 	mov	r2,r5
  8016f4:	dfc00015 	stw	ra,0(sp)
  8016f8:	d9800115 	stw	r6,4(sp)
  8016fc:	d9c00215 	stw	r7,8(sp)
  801700:	21400217 	ldw	r5,8(r4)
  801704:	d9c00104 	addi	r7,sp,4
  801708:	100d883a 	mov	r6,r2
  80170c:	08018c80 	call	8018c8 <___vfprintf_internal_r>
  801710:	dfc00017 	ldw	ra,0(sp)
  801714:	dec00304 	addi	sp,sp,12
  801718:	f800283a 	ret

0080171c <printf>:
  80171c:	defffc04 	addi	sp,sp,-16
  801720:	dfc00015 	stw	ra,0(sp)
  801724:	d9400115 	stw	r5,4(sp)
  801728:	d9800215 	stw	r6,8(sp)
  80172c:	d9c00315 	stw	r7,12(sp)
  801730:	00802074 	movhi	r2,129
  801734:	1089e117 	ldw	r2,10116(r2)
  801738:	200b883a 	mov	r5,r4
  80173c:	d9800104 	addi	r6,sp,4
  801740:	11000217 	ldw	r4,8(r2)
  801744:	08039b40 	call	8039b4 <__vfprintf_internal>
  801748:	dfc00017 	ldw	ra,0(sp)
  80174c:	dec00404 	addi	sp,sp,16
  801750:	f800283a 	ret

00801754 <_puts_r>:
  801754:	defff504 	addi	sp,sp,-44
  801758:	dc000815 	stw	r16,32(sp)
  80175c:	2021883a 	mov	r16,r4
  801760:	2809883a 	mov	r4,r5
  801764:	dc400915 	stw	r17,36(sp)
  801768:	dfc00a15 	stw	ra,40(sp)
  80176c:	2823883a 	mov	r17,r5
  801770:	08018300 	call	801830 <strlen>
  801774:	11000044 	addi	r4,r2,1
  801778:	d8800515 	stw	r2,20(sp)
  80177c:	00800044 	movi	r2,1
  801780:	00c02074 	movhi	r3,129
  801784:	d8800715 	stw	r2,28(sp)
  801788:	d8800404 	addi	r2,sp,16
  80178c:	18c15504 	addi	r3,r3,1364
  801790:	d8800115 	stw	r2,4(sp)
  801794:	00800084 	movi	r2,2
  801798:	dc400415 	stw	r17,16(sp)
  80179c:	d8c00615 	stw	r3,24(sp)
  8017a0:	d9000315 	stw	r4,12(sp)
  8017a4:	d8800215 	stw	r2,8(sp)
  8017a8:	81400217 	ldw	r5,8(r16)
  8017ac:	80000226 	beq	r16,zero,8017b8 <_puts_r+0x64>
  8017b0:	80800e17 	ldw	r2,56(r16)
  8017b4:	10001326 	beq	r2,zero,801804 <_puts_r+0xb0>
  8017b8:	2880030b 	ldhu	r2,12(r5)
  8017bc:	10c8000c 	andi	r3,r2,8192
  8017c0:	1800061e 	bne	r3,zero,8017dc <_puts_r+0x88>
  8017c4:	28c01917 	ldw	r3,100(r5)
  8017c8:	0137ffc4 	movi	r4,-8193
  8017cc:	10880014 	ori	r2,r2,8192
  8017d0:	1906703a 	and	r3,r3,r4
  8017d4:	2880030d 	sth	r2,12(r5)
  8017d8:	28c01915 	stw	r3,100(r5)
  8017dc:	d9800104 	addi	r6,sp,4
  8017e0:	8009883a 	mov	r4,r16
  8017e4:	0805f780 	call	805f78 <__sfvwrite_r>
  8017e8:	10000b1e 	bne	r2,zero,801818 <_puts_r+0xc4>
  8017ec:	00800284 	movi	r2,10
  8017f0:	dfc00a17 	ldw	ra,40(sp)
  8017f4:	dc400917 	ldw	r17,36(sp)
  8017f8:	dc000817 	ldw	r16,32(sp)
  8017fc:	dec00b04 	addi	sp,sp,44
  801800:	f800283a 	ret
  801804:	8009883a 	mov	r4,r16
  801808:	d9400015 	stw	r5,0(sp)
  80180c:	0805b180 	call	805b18 <__sinit>
  801810:	d9400017 	ldw	r5,0(sp)
  801814:	003fe806 	br	8017b8 <_puts_r+0x64>
  801818:	00bfffc4 	movi	r2,-1
  80181c:	003ff406 	br	8017f0 <_puts_r+0x9c>

00801820 <puts>:
  801820:	00802074 	movhi	r2,129
  801824:	200b883a 	mov	r5,r4
  801828:	1109e117 	ldw	r4,10116(r2)
  80182c:	08017541 	jmpi	801754 <_puts_r>

00801830 <strlen>:
  801830:	208000cc 	andi	r2,r4,3
  801834:	10000926 	beq	r2,zero,80185c <strlen+0x2c>
  801838:	2005883a 	mov	r2,r4
  80183c:	00000306 	br	80184c <strlen+0x1c>
  801840:	10800044 	addi	r2,r2,1
  801844:	10c000cc 	andi	r3,r2,3
  801848:	18000526 	beq	r3,zero,801860 <strlen+0x30>
  80184c:	10c00007 	ldb	r3,0(r2)
  801850:	183ffb1e 	bne	r3,zero,801840 <strlen+0x10>
  801854:	1105c83a 	sub	r2,r2,r4
  801858:	f800283a 	ret
  80185c:	2005883a 	mov	r2,r4
  801860:	11400017 	ldw	r5,0(r2)
  801864:	01ffbff4 	movhi	r7,65279
  801868:	39ffbfc4 	addi	r7,r7,-257
  80186c:	29c7883a 	add	r3,r5,r7
  801870:	01a02074 	movhi	r6,32897
  801874:	014a303a 	nor	r5,zero,r5
  801878:	1946703a 	and	r3,r3,r5
  80187c:	31a02004 	addi	r6,r6,-32640
  801880:	1986703a 	and	r3,r3,r6
  801884:	1800071e 	bne	r3,zero,8018a4 <strlen+0x74>
  801888:	11400117 	ldw	r5,4(r2)
  80188c:	10800104 	addi	r2,r2,4
  801890:	29c7883a 	add	r3,r5,r7
  801894:	014a303a 	nor	r5,zero,r5
  801898:	1946703a 	and	r3,r3,r5
  80189c:	1986703a 	and	r3,r3,r6
  8018a0:	183ff926 	beq	r3,zero,801888 <strlen+0x58>
  8018a4:	10c00007 	ldb	r3,0(r2)
  8018a8:	183fea26 	beq	r3,zero,801854 <strlen+0x24>
  8018ac:	10c00047 	ldb	r3,1(r2)
  8018b0:	10800044 	addi	r2,r2,1
  8018b4:	183fe726 	beq	r3,zero,801854 <strlen+0x24>
  8018b8:	10c00047 	ldb	r3,1(r2)
  8018bc:	10800044 	addi	r2,r2,1
  8018c0:	183ffa1e 	bne	r3,zero,8018ac <strlen+0x7c>
  8018c4:	003fe306 	br	801854 <strlen+0x24>

008018c8 <___vfprintf_internal_r>:
  8018c8:	deffbf04 	addi	sp,sp,-260
  8018cc:	dfc04015 	stw	ra,256(sp)
  8018d0:	dd803d15 	stw	r22,244(sp)
  8018d4:	dcc03a15 	stw	r19,232(sp)
  8018d8:	dc803915 	stw	r18,228(sp)
  8018dc:	2027883a 	mov	r19,r4
  8018e0:	2825883a 	mov	r18,r5
  8018e4:	302d883a 	mov	r22,r6
  8018e8:	d9c00615 	stw	r7,24(sp)
  8018ec:	df003f15 	stw	fp,252(sp)
  8018f0:	ddc03e15 	stw	r23,248(sp)
  8018f4:	dd403c15 	stw	r21,240(sp)
  8018f8:	dd003b15 	stw	r20,236(sp)
  8018fc:	dc403815 	stw	r17,224(sp)
  801900:	dc003715 	stw	r16,220(sp)
  801904:	080658c0 	call	80658c <_localeconv_r>
  801908:	10800017 	ldw	r2,0(r2)
  80190c:	1009883a 	mov	r4,r2
  801910:	d8800d15 	stw	r2,52(sp)
  801914:	08018300 	call	801830 <strlen>
  801918:	d8800b15 	stw	r2,44(sp)
  80191c:	98000226 	beq	r19,zero,801928 <___vfprintf_internal_r+0x60>
  801920:	98800e17 	ldw	r2,56(r19)
  801924:	1001d726 	beq	r2,zero,802084 <___vfprintf_internal_r+0x7bc>
  801928:	9080030b 	ldhu	r2,12(r18)
  80192c:	10c8000c 	andi	r3,r2,8192
  801930:	1800061e 	bne	r3,zero,80194c <___vfprintf_internal_r+0x84>
  801934:	90c01917 	ldw	r3,100(r18)
  801938:	0137ffc4 	movi	r4,-8193
  80193c:	10880014 	ori	r2,r2,8192
  801940:	1906703a 	and	r3,r3,r4
  801944:	9080030d 	sth	r2,12(r18)
  801948:	90c01915 	stw	r3,100(r18)
  80194c:	10c0020c 	andi	r3,r2,8
  801950:	1800fc26 	beq	r3,zero,801d44 <___vfprintf_internal_r+0x47c>
  801954:	90c00417 	ldw	r3,16(r18)
  801958:	1800fa26 	beq	r3,zero,801d44 <___vfprintf_internal_r+0x47c>
  80195c:	1080068c 	andi	r2,r2,26
  801960:	10800298 	cmpnei	r2,r2,10
  801964:	1000ff26 	beq	r2,zero,801d64 <___vfprintf_internal_r+0x49c>
  801968:	d8802704 	addi	r2,sp,156
  80196c:	b02f883a 	mov	r23,r22
  801970:	d8801a15 	stw	r2,104(sp)
  801974:	d8001c15 	stw	zero,112(sp)
  801978:	d8001b15 	stw	zero,108(sp)
  80197c:	d8000815 	stw	zero,32(sp)
  801980:	d8000915 	stw	zero,36(sp)
  801984:	d8000a15 	stw	zero,40(sp)
  801988:	d8000c15 	stw	zero,48(sp)
  80198c:	d8001015 	stw	zero,64(sp)
  801990:	d8000515 	stw	zero,20(sp)
  801994:	102d883a 	mov	r22,r2
  801998:	b8800007 	ldb	r2,0(r23)
  80199c:	1000d726 	beq	r2,zero,801cfc <___vfprintf_internal_r+0x434>
  8019a0:	b821883a 	mov	r16,r23
  8019a4:	00000306 	br	8019b4 <___vfprintf_internal_r+0xec>
  8019a8:	80800047 	ldb	r2,1(r16)
  8019ac:	84000044 	addi	r16,r16,1
  8019b0:	10011926 	beq	r2,zero,801e18 <___vfprintf_internal_r+0x550>
  8019b4:	10800958 	cmpnei	r2,r2,37
  8019b8:	103ffb1e 	bne	r2,zero,8019a8 <___vfprintf_internal_r+0xe0>
  8019bc:	85e3c83a 	sub	r17,r16,r23
  8019c0:	85c1171e 	bne	r16,r23,801e20 <___vfprintf_internal_r+0x558>
  8019c4:	80800003 	ldbu	r2,0(r16)
  8019c8:	10803fcc 	andi	r2,r2,255
  8019cc:	1080201c 	xori	r2,r2,128
  8019d0:	10bfe004 	addi	r2,r2,-128
  8019d4:	1000c926 	beq	r2,zero,801cfc <___vfprintf_internal_r+0x434>
  8019d8:	82c00047 	ldb	r11,1(r16)
  8019dc:	85c00044 	addi	r23,r16,1
  8019e0:	d8001345 	stb	zero,77(sp)
  8019e4:	0009883a 	mov	r4,zero
  8019e8:	000b883a 	mov	r5,zero
  8019ec:	023fffc4 	movi	r8,-1
  8019f0:	0021883a 	mov	r16,zero
  8019f4:	0019883a 	mov	r12,zero
  8019f8:	bdc00044 	addi	r23,r23,1
  8019fc:	5839883a 	mov	fp,r11
  801a00:	e0bff804 	addi	r2,fp,-32
  801a04:	10c01668 	cmpgeui	r3,r2,89
  801a08:	18006c1e 	bne	r3,zero,801bbc <___vfprintf_internal_r+0x2f4>
  801a0c:	100490ba 	slli	r2,r2,2
  801a10:	00c02034 	movhi	r3,128
  801a14:	10c7883a 	add	r3,r2,r3
  801a18:	18868817 	ldw	r2,6688(r3)
  801a1c:	1000683a 	jmp	r2
  801a20:	0080240c 	andi	r2,zero,144
  801a24:	00801bbc 	xorhi	r2,zero,110
  801a28:	00801bbc 	xorhi	r2,zero,110
  801a2c:	00802400 	call	80240 <__alt_mem_sdram-0x77fdc0>
  801a30:	00801bbc 	xorhi	r2,zero,110
  801a34:	00801bbc 	xorhi	r2,zero,110
  801a38:	00801bbc 	xorhi	r2,zero,110
  801a3c:	00801bbc 	xorhi	r2,zero,110
  801a40:	00801bbc 	xorhi	r2,zero,110
  801a44:	00801bbc 	xorhi	r2,zero,110
  801a48:	008023d8 	cmpnei	r2,zero,143
  801a4c:	008023c8 	cmpgei	r2,zero,143
  801a50:	00801bbc 	xorhi	r2,zero,110
  801a54:	008023b0 	cmpltui	r2,zero,142
  801a58:	00802364 	muli	r2,zero,141
  801a5c:	00801bbc 	xorhi	r2,zero,110
  801a60:	00802358 	cmpnei	r2,zero,141
  801a64:	00801b84 	movi	r2,110
  801a68:	00801b84 	movi	r2,110
  801a6c:	00801b84 	movi	r2,110
  801a70:	00801b84 	movi	r2,110
  801a74:	00801b84 	movi	r2,110
  801a78:	00801b84 	movi	r2,110
  801a7c:	00801b84 	movi	r2,110
  801a80:	00801b84 	movi	r2,110
  801a84:	00801b84 	movi	r2,110
  801a88:	00801bbc 	xorhi	r2,zero,110
  801a8c:	00801bbc 	xorhi	r2,zero,110
  801a90:	00801bbc 	xorhi	r2,zero,110
  801a94:	00801bbc 	xorhi	r2,zero,110
  801a98:	00801bbc 	xorhi	r2,zero,110
  801a9c:	00801bbc 	xorhi	r2,zero,110
  801aa0:	00801bbc 	xorhi	r2,zero,110
  801aa4:	00801bbc 	xorhi	r2,zero,110
  801aa8:	00801bbc 	xorhi	r2,zero,110
  801aac:	00801bbc 	xorhi	r2,zero,110
  801ab0:	0080224c 	andi	r2,zero,137
  801ab4:	00801e7c 	xorhi	r2,zero,121
  801ab8:	00801bbc 	xorhi	r2,zero,110
  801abc:	00801e7c 	xorhi	r2,zero,121
  801ac0:	00801bbc 	xorhi	r2,zero,110
  801ac4:	00801bbc 	xorhi	r2,zero,110
  801ac8:	00801bbc 	xorhi	r2,zero,110
  801acc:	00801bbc 	xorhi	r2,zero,110
  801ad0:	00802438 	rdprs	r2,zero,144
  801ad4:	00801bbc 	xorhi	r2,zero,110
  801ad8:	00801bbc 	xorhi	r2,zero,110
  801adc:	00801db0 	cmpltui	r2,zero,118
  801ae0:	00801bbc 	xorhi	r2,zero,110
  801ae4:	00801bbc 	xorhi	r2,zero,110
  801ae8:	00801bbc 	xorhi	r2,zero,110
  801aec:	00801bbc 	xorhi	r2,zero,110
  801af0:	00801bbc 	xorhi	r2,zero,110
  801af4:	00801d88 	cmpgei	r2,zero,118
  801af8:	00801bbc 	xorhi	r2,zero,110
  801afc:	00801bbc 	xorhi	r2,zero,110
  801b00:	0080246c 	andhi	r2,zero,145
  801b04:	00801bbc 	xorhi	r2,zero,110
  801b08:	00801bbc 	xorhi	r2,zero,110
  801b0c:	00801bbc 	xorhi	r2,zero,110
  801b10:	00801bbc 	xorhi	r2,zero,110
  801b14:	00801bbc 	xorhi	r2,zero,110
  801b18:	00801bbc 	xorhi	r2,zero,110
  801b1c:	00801bbc 	xorhi	r2,zero,110
  801b20:	00801bbc 	xorhi	r2,zero,110
  801b24:	00801bbc 	xorhi	r2,zero,110
  801b28:	00801bbc 	xorhi	r2,zero,110
  801b2c:	00802444 	movi	r2,145
  801b30:	00802090 	cmplti	r2,zero,130
  801b34:	00801e7c 	xorhi	r2,zero,121
  801b38:	00801e7c 	xorhi	r2,zero,121
  801b3c:	00801e7c 	xorhi	r2,zero,121
  801b40:	00802104 	movi	r2,132
  801b44:	00802090 	cmplti	r2,zero,130
  801b48:	00801bbc 	xorhi	r2,zero,110
  801b4c:	00801bbc 	xorhi	r2,zero,110
  801b50:	00802238 	rdprs	r2,zero,136
  801b54:	00801bbc 	xorhi	r2,zero,110
  801b58:	008021fc 	xorhi	r2,zero,135
  801b5c:	00801db4 	movhi	r2,118
  801b60:	008021bc 	xorhi	r2,zero,134
  801b64:	008021b0 	cmpltui	r2,zero,134
  801b68:	00801bbc 	xorhi	r2,zero,110
  801b6c:	00802158 	cmpnei	r2,zero,133
  801b70:	00801bbc 	xorhi	r2,zero,110
  801b74:	00801d8c 	andi	r2,zero,118
  801b78:	00801bbc 	xorhi	r2,zero,110
  801b7c:	00801bbc 	xorhi	r2,zero,110
  801b80:	00802110 	cmplti	r2,zero,132
  801b84:	0021883a 	mov	r16,zero
  801b88:	e0fff404 	addi	r3,fp,-48
  801b8c:	800490ba 	slli	r2,r16,2
  801b90:	bf000007 	ldb	fp,0(r23)
  801b94:	bdc00044 	addi	r23,r23,1
  801b98:	1421883a 	add	r16,r2,r16
  801b9c:	8421883a 	add	r16,r16,r16
  801ba0:	1c21883a 	add	r16,r3,r16
  801ba4:	e0fff404 	addi	r3,fp,-48
  801ba8:	188002b0 	cmpltui	r2,r3,10
  801bac:	103ff71e 	bne	r2,zero,801b8c <___vfprintf_internal_r+0x2c4>
  801bb0:	e0bff804 	addi	r2,fp,-32
  801bb4:	10c01668 	cmpgeui	r3,r2,89
  801bb8:	183f9426 	beq	r3,zero,801a0c <___vfprintf_internal_r+0x144>
  801bbc:	21003fcc 	andi	r4,r4,255
  801bc0:	20068f1e 	bne	r4,zero,803600 <___vfprintf_internal_r+0x1d38>
  801bc4:	e0004d26 	beq	fp,zero,801cfc <___vfprintf_internal_r+0x434>
  801bc8:	df001d05 	stb	fp,116(sp)
  801bcc:	d8001345 	stb	zero,77(sp)
  801bd0:	05000044 	movi	r20,1
  801bd4:	05400044 	movi	r21,1
  801bd8:	dc401d04 	addi	r17,sp,116
  801bdc:	db000415 	stw	r12,16(sp)
  801be0:	0011883a 	mov	r8,zero
  801be4:	d8000715 	stw	zero,28(sp)
  801be8:	d8800417 	ldw	r2,16(sp)
  801bec:	1380008c 	andi	r14,r2,2
  801bf0:	70000126 	beq	r14,zero,801bf8 <___vfprintf_internal_r+0x330>
  801bf4:	a5000084 	addi	r20,r20,2
  801bf8:	d8800417 	ldw	r2,16(sp)
  801bfc:	d8c01c17 	ldw	r3,112(sp)
  801c00:	1340210c 	andi	r13,r2,132
  801c04:	6800021e 	bne	r13,zero,801c10 <___vfprintf_internal_r+0x348>
  801c08:	850fc83a 	sub	r7,r16,r20
  801c0c:	01c36016 	blt	zero,r7,802990 <___vfprintf_internal_r+0x10c8>
  801c10:	d8801347 	ldb	r2,77(sp)
  801c14:	10000c26 	beq	r2,zero,801c48 <___vfprintf_internal_r+0x380>
  801c18:	d8801b17 	ldw	r2,108(sp)
  801c1c:	d9001344 	addi	r4,sp,77
  801c20:	18c00044 	addi	r3,r3,1
  801c24:	10800044 	addi	r2,r2,1
  801c28:	b1000015 	stw	r4,0(r22)
  801c2c:	01000044 	movi	r4,1
  801c30:	d8801b15 	stw	r2,108(sp)
  801c34:	b1000115 	stw	r4,4(r22)
  801c38:	d8c01c15 	stw	r3,112(sp)
  801c3c:	10800208 	cmpgei	r2,r2,8
  801c40:	1003a01e 	bne	r2,zero,802ac4 <___vfprintf_internal_r+0x11fc>
  801c44:	b5800204 	addi	r22,r22,8
  801c48:	70000c26 	beq	r14,zero,801c7c <___vfprintf_internal_r+0x3b4>
  801c4c:	d8801b17 	ldw	r2,108(sp)
  801c50:	d9001384 	addi	r4,sp,78
  801c54:	18c00084 	addi	r3,r3,2
  801c58:	10800044 	addi	r2,r2,1
  801c5c:	b1000015 	stw	r4,0(r22)
  801c60:	01000084 	movi	r4,2
  801c64:	d8801b15 	stw	r2,108(sp)
  801c68:	b1000115 	stw	r4,4(r22)
  801c6c:	d8c01c15 	stw	r3,112(sp)
  801c70:	10800208 	cmpgei	r2,r2,8
  801c74:	1003871e 	bne	r2,zero,802a94 <___vfprintf_internal_r+0x11cc>
  801c78:	b5800204 	addi	r22,r22,8
  801c7c:	6b402018 	cmpnei	r13,r13,128
  801c80:	68025226 	beq	r13,zero,8025cc <___vfprintf_internal_r+0xd04>
  801c84:	4551c83a 	sub	r8,r8,r21
  801c88:	02028a16 	blt	zero,r8,8026b4 <___vfprintf_internal_r+0xdec>
  801c8c:	d8800417 	ldw	r2,16(sp)
  801c90:	1080400c 	andi	r2,r2,256
  801c94:	1002071e 	bne	r2,zero,8024b4 <___vfprintf_internal_r+0xbec>
  801c98:	d8801b17 	ldw	r2,108(sp)
  801c9c:	1d47883a 	add	r3,r3,r21
  801ca0:	b4400015 	stw	r17,0(r22)
  801ca4:	10800044 	addi	r2,r2,1
  801ca8:	b5400115 	stw	r21,4(r22)
  801cac:	d8801b15 	stw	r2,108(sp)
  801cb0:	d8c01c15 	stw	r3,112(sp)
  801cb4:	10800208 	cmpgei	r2,r2,8
  801cb8:	1002ee1e 	bne	r2,zero,802874 <___vfprintf_internal_r+0xfac>
  801cbc:	b5800204 	addi	r22,r22,8
  801cc0:	d8800417 	ldw	r2,16(sp)
  801cc4:	1440010c 	andi	r17,r2,4
  801cc8:	88000226 	beq	r17,zero,801cd4 <___vfprintf_internal_r+0x40c>
  801ccc:	8523c83a 	sub	r17,r16,r20
  801cd0:	0440bd16 	blt	zero,r17,801fc8 <___vfprintf_internal_r+0x700>
  801cd4:	8500010e 	bge	r16,r20,801cdc <___vfprintf_internal_r+0x414>
  801cd8:	a021883a 	mov	r16,r20
  801cdc:	d8800517 	ldw	r2,20(sp)
  801ce0:	1405883a 	add	r2,r2,r16
  801ce4:	d8800515 	stw	r2,20(sp)
  801ce8:	1802b91e 	bne	r3,zero,8027d0 <___vfprintf_internal_r+0xf08>
  801cec:	b8800007 	ldb	r2,0(r23)
  801cf0:	d8001b15 	stw	zero,108(sp)
  801cf4:	dd802704 	addi	r22,sp,156
  801cf8:	103f291e 	bne	r2,zero,8019a0 <___vfprintf_internal_r+0xd8>
  801cfc:	d8801c17 	ldw	r2,112(sp)
  801d00:	10063a1e 	bne	r2,zero,8035ec <___vfprintf_internal_r+0x1d24>
  801d04:	9080030b 	ldhu	r2,12(r18)
  801d08:	1080100c 	andi	r2,r2,64
  801d0c:	1006c91e 	bne	r2,zero,803834 <___vfprintf_internal_r+0x1f6c>
  801d10:	d8800517 	ldw	r2,20(sp)
  801d14:	dfc04017 	ldw	ra,256(sp)
  801d18:	df003f17 	ldw	fp,252(sp)
  801d1c:	ddc03e17 	ldw	r23,248(sp)
  801d20:	dd803d17 	ldw	r22,244(sp)
  801d24:	dd403c17 	ldw	r21,240(sp)
  801d28:	dd003b17 	ldw	r20,236(sp)
  801d2c:	dcc03a17 	ldw	r19,232(sp)
  801d30:	dc803917 	ldw	r18,228(sp)
  801d34:	dc403817 	ldw	r17,224(sp)
  801d38:	dc003717 	ldw	r16,220(sp)
  801d3c:	dec04104 	addi	sp,sp,260
  801d40:	f800283a 	ret
  801d44:	900b883a 	mov	r5,r18
  801d48:	9809883a 	mov	r4,r19
  801d4c:	0803a900 	call	803a90 <__swsetup_r>
  801d50:	1006b81e 	bne	r2,zero,803834 <___vfprintf_internal_r+0x1f6c>
  801d54:	9080030b 	ldhu	r2,12(r18)
  801d58:	1080068c 	andi	r2,r2,26
  801d5c:	10800298 	cmpnei	r2,r2,10
  801d60:	103f011e 	bne	r2,zero,801968 <___vfprintf_internal_r+0xa0>
  801d64:	9080038f 	ldh	r2,14(r18)
  801d68:	103eff16 	blt	r2,zero,801968 <___vfprintf_internal_r+0xa0>
  801d6c:	d9c00617 	ldw	r7,24(sp)
  801d70:	b00d883a 	mov	r6,r22
  801d74:	900b883a 	mov	r5,r18
  801d78:	9809883a 	mov	r4,r19
  801d7c:	08039d00 	call	8039d0 <__sbprintf>
  801d80:	d8800515 	stw	r2,20(sp)
  801d84:	003fe206 	br	801d10 <___vfprintf_internal_r+0x448>
  801d88:	63000414 	ori	r12,r12,16
  801d8c:	6080080c 	andi	r2,r12,32
  801d90:	10008126 	beq	r2,zero,801f98 <___vfprintf_internal_r+0x6d0>
  801d94:	d8c00617 	ldw	r3,24(sp)
  801d98:	00800044 	movi	r2,1
  801d9c:	1d000017 	ldw	r20,0(r3)
  801da0:	1d400117 	ldw	r21,4(r3)
  801da4:	18c00204 	addi	r3,r3,8
  801da8:	d8c00615 	stw	r3,24(sp)
  801dac:	00000906 	br	801dd4 <___vfprintf_internal_r+0x50c>
  801db0:	63000414 	ori	r12,r12,16
  801db4:	6080080c 	andi	r2,r12,32
  801db8:	10006b26 	beq	r2,zero,801f68 <___vfprintf_internal_r+0x6a0>
  801dbc:	d8c00617 	ldw	r3,24(sp)
  801dc0:	0005883a 	mov	r2,zero
  801dc4:	1d000017 	ldw	r20,0(r3)
  801dc8:	1d400117 	ldw	r21,4(r3)
  801dcc:	18c00204 	addi	r3,r3,8
  801dd0:	d8c00615 	stw	r3,24(sp)
  801dd4:	d8001345 	stb	zero,77(sp)
  801dd8:	40ffffe0 	cmpeqi	r3,r8,-1
  801ddc:	001b883a 	mov	r13,zero
  801de0:	1801351e 	bne	r3,zero,8022b8 <___vfprintf_internal_r+0x9f0>
  801de4:	047fdfc4 	movi	r17,-129
  801de8:	6448703a 	and	r4,r12,r17
  801dec:	a546b03a 	or	r3,r20,r21
  801df0:	d9000415 	stw	r4,16(sp)
  801df4:	1802e41e 	bne	r3,zero,802988 <___vfprintf_internal_r+0x10c0>
  801df8:	40025f1e 	bne	r8,zero,802778 <___vfprintf_internal_r+0xeb0>
  801dfc:	1003a61e 	bne	r2,zero,802c98 <___vfprintf_internal_r+0x13d0>
  801e00:	6540004c 	andi	r21,r12,1
  801e04:	a803d426 	beq	r21,zero,802d58 <___vfprintf_internal_r+0x1490>
  801e08:	00800c04 	movi	r2,48
  801e0c:	d88026c5 	stb	r2,155(sp)
  801e10:	dc4026c4 	addi	r17,sp,155
  801e14:	00014606 	br	802330 <___vfprintf_internal_r+0xa68>
  801e18:	85e3c83a 	sub	r17,r16,r23
  801e1c:	85ffb726 	beq	r16,r23,801cfc <___vfprintf_internal_r+0x434>
  801e20:	d8c01c17 	ldw	r3,112(sp)
  801e24:	d8801b17 	ldw	r2,108(sp)
  801e28:	b5c00015 	stw	r23,0(r22)
  801e2c:	1c47883a 	add	r3,r3,r17
  801e30:	10800044 	addi	r2,r2,1
  801e34:	d8801b15 	stw	r2,108(sp)
  801e38:	b4400115 	stw	r17,4(r22)
  801e3c:	d8c01c15 	stw	r3,112(sp)
  801e40:	10800208 	cmpgei	r2,r2,8
  801e44:	1000061e 	bne	r2,zero,801e60 <___vfprintf_internal_r+0x598>
  801e48:	b5800204 	addi	r22,r22,8
  801e4c:	d8c00517 	ldw	r3,20(sp)
  801e50:	80800003 	ldbu	r2,0(r16)
  801e54:	1c47883a 	add	r3,r3,r17
  801e58:	d8c00515 	stw	r3,20(sp)
  801e5c:	003eda06 	br	8019c8 <___vfprintf_internal_r+0x100>
  801e60:	d9801a04 	addi	r6,sp,104
  801e64:	900b883a 	mov	r5,r18
  801e68:	9809883a 	mov	r4,r19
  801e6c:	0808c740 	call	808c74 <__sprint_r>
  801e70:	103fa41e 	bne	r2,zero,801d04 <___vfprintf_internal_r+0x43c>
  801e74:	dd802704 	addi	r22,sp,156
  801e78:	003ff406 	br	801e4c <___vfprintf_internal_r+0x584>
  801e7c:	21003fcc 	andi	r4,r4,255
  801e80:	20066a1e 	bne	r4,zero,80382c <___vfprintf_internal_r+0x1f64>
  801e84:	d8c00617 	ldw	r3,24(sp)
  801e88:	6080020c 	andi	r2,r12,8
  801e8c:	19000204 	addi	r4,r3,8
  801e90:	d9000e15 	stw	r4,56(sp)
  801e94:	1003d01e 	bne	r2,zero,802dd8 <___vfprintf_internal_r+0x1510>
  801e98:	d8800617 	ldw	r2,24(sp)
  801e9c:	10c00017 	ldw	r3,0(r2)
  801ea0:	10800117 	ldw	r2,4(r2)
  801ea4:	d8c00915 	stw	r3,36(sp)
  801ea8:	d8800a15 	stw	r2,40(sp)
  801eac:	dd400a17 	ldw	r21,40(sp)
  801eb0:	dd000917 	ldw	r20,36(sp)
  801eb4:	00a00034 	movhi	r2,32768
  801eb8:	10bfffc4 	addi	r2,r2,-1
  801ebc:	a8a2703a 	and	r17,r21,r2
  801ec0:	01dffc34 	movhi	r7,32752
  801ec4:	01bfffc4 	movi	r6,-1
  801ec8:	39ffffc4 	addi	r7,r7,-1
  801ecc:	a009883a 	mov	r4,r20
  801ed0:	880b883a 	mov	r5,r17
  801ed4:	da000615 	stw	r8,24(sp)
  801ed8:	db000415 	stw	r12,16(sp)
  801edc:	080da8c0 	call	80da8c <__unorddf2>
  801ee0:	db000417 	ldw	r12,16(sp)
  801ee4:	da000617 	ldw	r8,24(sp)
  801ee8:	1004701e 	bne	r2,zero,8030ac <___vfprintf_internal_r+0x17e4>
  801eec:	01dffc34 	movhi	r7,32752
  801ef0:	01bfffc4 	movi	r6,-1
  801ef4:	39ffffc4 	addi	r7,r7,-1
  801ef8:	a009883a 	mov	r4,r20
  801efc:	880b883a 	mov	r5,r17
  801f00:	080d0680 	call	80d068 <__ledf2>
  801f04:	db000417 	ldw	r12,16(sp)
  801f08:	da000617 	ldw	r8,24(sp)
  801f0c:	0084670e 	bge	zero,r2,8030ac <___vfprintf_internal_r+0x17e4>
  801f10:	000d883a 	mov	r6,zero
  801f14:	000f883a 	mov	r7,zero
  801f18:	a009883a 	mov	r4,r20
  801f1c:	a80b883a 	mov	r5,r21
  801f20:	080d0680 	call	80d068 <__ledf2>
  801f24:	db000417 	ldw	r12,16(sp)
  801f28:	10059d16 	blt	r2,zero,8035a0 <___vfprintf_internal_r+0x1cd8>
  801f2c:	db401343 	ldbu	r13,77(sp)
  801f30:	e0801210 	cmplti	r2,fp,72
  801f34:	1005741e 	bne	r2,zero,803508 <___vfprintf_internal_r+0x1c40>
  801f38:	04402074 	movhi	r17,129
  801f3c:	8c41a604 	addi	r17,r17,1688
  801f40:	00bfdfc4 	movi	r2,-129
  801f44:	6084703a 	and	r2,r12,r2
  801f48:	d8800415 	stw	r2,16(sp)
  801f4c:	d8800e17 	ldw	r2,56(sp)
  801f50:	050000c4 	movi	r20,3
  801f54:	054000c4 	movi	r21,3
  801f58:	d8800615 	stw	r2,24(sp)
  801f5c:	0011883a 	mov	r8,zero
  801f60:	d8000715 	stw	zero,28(sp)
  801f64:	0000f606 	br	802340 <___vfprintf_internal_r+0xa78>
  801f68:	d9000617 	ldw	r4,24(sp)
  801f6c:	6080040c 	andi	r2,r12,16
  801f70:	20c00104 	addi	r3,r4,4
  801f74:	1003891e 	bne	r2,zero,802d9c <___vfprintf_internal_r+0x14d4>
  801f78:	6080100c 	andi	r2,r12,64
  801f7c:	10056b26 	beq	r2,zero,80352c <___vfprintf_internal_r+0x1c64>
  801f80:	d8800617 	ldw	r2,24(sp)
  801f84:	002b883a 	mov	r21,zero
  801f88:	d8c00615 	stw	r3,24(sp)
  801f8c:	1500000b 	ldhu	r20,0(r2)
  801f90:	0005883a 	mov	r2,zero
  801f94:	003f8f06 	br	801dd4 <___vfprintf_internal_r+0x50c>
  801f98:	d9000617 	ldw	r4,24(sp)
  801f9c:	6080040c 	andi	r2,r12,16
  801fa0:	20c00104 	addi	r3,r4,4
  801fa4:	1003821e 	bne	r2,zero,802db0 <___vfprintf_internal_r+0x14e8>
  801fa8:	6080100c 	andi	r2,r12,64
  801fac:	10056526 	beq	r2,zero,803544 <___vfprintf_internal_r+0x1c7c>
  801fb0:	d8800617 	ldw	r2,24(sp)
  801fb4:	002b883a 	mov	r21,zero
  801fb8:	d8c00615 	stw	r3,24(sp)
  801fbc:	1500000b 	ldhu	r20,0(r2)
  801fc0:	00800044 	movi	r2,1
  801fc4:	003f8306 	br	801dd4 <___vfprintf_internal_r+0x50c>
  801fc8:	03002074 	movhi	r12,129
  801fcc:	89000450 	cmplti	r4,r17,17
  801fd0:	d8801b17 	ldw	r2,108(sp)
  801fd4:	6301ba04 	addi	r12,r12,1768
  801fd8:	20001b1e 	bne	r4,zero,802048 <___vfprintf_internal_r+0x780>
  801fdc:	05400404 	movi	r21,16
  801fe0:	6039883a 	mov	fp,r12
  801fe4:	00000406 	br	801ff8 <___vfprintf_internal_r+0x730>
  801fe8:	8c7ffc04 	addi	r17,r17,-16
  801fec:	89000448 	cmpgei	r4,r17,17
  801ff0:	b5800204 	addi	r22,r22,8
  801ff4:	20001326 	beq	r4,zero,802044 <___vfprintf_internal_r+0x77c>
  801ff8:	10800044 	addi	r2,r2,1
  801ffc:	18c00404 	addi	r3,r3,16
  802000:	b7000015 	stw	fp,0(r22)
  802004:	b5400115 	stw	r21,4(r22)
  802008:	d8c01c15 	stw	r3,112(sp)
  80200c:	d8801b15 	stw	r2,108(sp)
  802010:	11000208 	cmpgei	r4,r2,8
  802014:	203ff426 	beq	r4,zero,801fe8 <___vfprintf_internal_r+0x720>
  802018:	d9801a04 	addi	r6,sp,104
  80201c:	900b883a 	mov	r5,r18
  802020:	9809883a 	mov	r4,r19
  802024:	0808c740 	call	808c74 <__sprint_r>
  802028:	103f361e 	bne	r2,zero,801d04 <___vfprintf_internal_r+0x43c>
  80202c:	8c7ffc04 	addi	r17,r17,-16
  802030:	89000448 	cmpgei	r4,r17,17
  802034:	d8c01c17 	ldw	r3,112(sp)
  802038:	d8801b17 	ldw	r2,108(sp)
  80203c:	dd802704 	addi	r22,sp,156
  802040:	203fed1e 	bne	r4,zero,801ff8 <___vfprintf_internal_r+0x730>
  802044:	e019883a 	mov	r12,fp
  802048:	10800044 	addi	r2,r2,1
  80204c:	1c47883a 	add	r3,r3,r17
  802050:	d8801b15 	stw	r2,108(sp)
  802054:	b3000015 	stw	r12,0(r22)
  802058:	b4400115 	stw	r17,4(r22)
  80205c:	d8c01c15 	stw	r3,112(sp)
  802060:	10800210 	cmplti	r2,r2,8
  802064:	103f1b1e 	bne	r2,zero,801cd4 <___vfprintf_internal_r+0x40c>
  802068:	d9801a04 	addi	r6,sp,104
  80206c:	900b883a 	mov	r5,r18
  802070:	9809883a 	mov	r4,r19
  802074:	0808c740 	call	808c74 <__sprint_r>
  802078:	103f221e 	bne	r2,zero,801d04 <___vfprintf_internal_r+0x43c>
  80207c:	d8c01c17 	ldw	r3,112(sp)
  802080:	003f1406 	br	801cd4 <___vfprintf_internal_r+0x40c>
  802084:	9809883a 	mov	r4,r19
  802088:	0805b180 	call	805b18 <__sinit>
  80208c:	003e2606 	br	801928 <___vfprintf_internal_r+0x60>
  802090:	21003fcc 	andi	r4,r4,255
  802094:	2005db1e 	bne	r4,zero,803804 <___vfprintf_internal_r+0x1f3c>
  802098:	6080080c 	andi	r2,r12,32
  80209c:	10007026 	beq	r2,zero,802260 <___vfprintf_internal_r+0x998>
  8020a0:	d8c00617 	ldw	r3,24(sp)
  8020a4:	18800117 	ldw	r2,4(r3)
  8020a8:	1d000017 	ldw	r20,0(r3)
  8020ac:	18c00204 	addi	r3,r3,8
  8020b0:	d8c00615 	stw	r3,24(sp)
  8020b4:	102b883a 	mov	r21,r2
  8020b8:	10007516 	blt	r2,zero,802290 <___vfprintf_internal_r+0x9c8>
  8020bc:	40bfffd8 	cmpnei	r2,r8,-1
  8020c0:	10034a26 	beq	r2,zero,802dec <___vfprintf_internal_r+0x1524>
  8020c4:	047fdfc4 	movi	r17,-129
  8020c8:	6446703a 	and	r3,r12,r17
  8020cc:	a544b03a 	or	r2,r20,r21
  8020d0:	d8c00415 	stw	r3,16(sp)
  8020d4:	db401343 	ldbu	r13,77(sp)
  8020d8:	1002ee26 	beq	r2,zero,802c94 <___vfprintf_internal_r+0x13cc>
  8020dc:	db000417 	ldw	r12,16(sp)
  8020e0:	a803441e 	bne	r21,zero,802df4 <___vfprintf_internal_r+0x152c>
  8020e4:	a08002a8 	cmpgeui	r2,r20,10
  8020e8:	1003421e 	bne	r2,zero,802df4 <___vfprintf_internal_r+0x152c>
  8020ec:	a5000c04 	addi	r20,r20,48
  8020f0:	dd0026c5 	stb	r20,155(sp)
  8020f4:	db000415 	stw	r12,16(sp)
  8020f8:	05400044 	movi	r21,1
  8020fc:	dc4026c4 	addi	r17,sp,155
  802100:	00008b06 	br	802330 <___vfprintf_internal_r+0xa68>
  802104:	bac00007 	ldb	r11,0(r23)
  802108:	63001014 	ori	r12,r12,64
  80210c:	003e3a06 	br	8019f8 <___vfprintf_internal_r+0x130>
  802110:	21003fcc 	andi	r4,r4,255
  802114:	2005c11e 	bne	r4,zero,80381c <___vfprintf_internal_r+0x1f54>
  802118:	00802074 	movhi	r2,129
  80211c:	1081ae04 	addi	r2,r2,1720
  802120:	d8800c15 	stw	r2,48(sp)
  802124:	6080080c 	andi	r2,r12,32
  802128:	1000d726 	beq	r2,zero,802488 <___vfprintf_internal_r+0xbc0>
  80212c:	d8800617 	ldw	r2,24(sp)
  802130:	15000017 	ldw	r20,0(r2)
  802134:	15400117 	ldw	r21,4(r2)
  802138:	10800204 	addi	r2,r2,8
  80213c:	d8800615 	stw	r2,24(sp)
  802140:	6080004c 	andi	r2,r12,1
  802144:	10000226 	beq	r2,zero,802150 <___vfprintf_internal_r+0x888>
  802148:	a544b03a 	or	r2,r20,r21
  80214c:	1003091e 	bne	r2,zero,802d74 <___vfprintf_internal_r+0x14ac>
  802150:	00800084 	movi	r2,2
  802154:	003f1f06 	br	801dd4 <___vfprintf_internal_r+0x50c>
  802158:	d8800617 	ldw	r2,24(sp)
  80215c:	d8001345 	stb	zero,77(sp)
  802160:	14400017 	ldw	r17,0(r2)
  802164:	10c00104 	addi	r3,r2,4
  802168:	88037726 	beq	r17,zero,802f48 <___vfprintf_internal_r+0x1680>
  80216c:	40bfffe0 	cmpeqi	r2,r8,-1
  802170:	1004661e 	bne	r2,zero,80330c <___vfprintf_internal_r+0x1a44>
  802174:	400d883a 	mov	r6,r8
  802178:	000b883a 	mov	r5,zero
  80217c:	8809883a 	mov	r4,r17
  802180:	d8c00715 	stw	r3,28(sp)
  802184:	db000615 	stw	r12,24(sp)
  802188:	da000415 	stw	r8,16(sp)
  80218c:	0806f5c0 	call	806f5c <memchr>
  802190:	da000417 	ldw	r8,16(sp)
  802194:	db000617 	ldw	r12,24(sp)
  802198:	d8c00717 	ldw	r3,28(sp)
  80219c:	10058926 	beq	r2,zero,8037c4 <___vfprintf_internal_r+0x1efc>
  8021a0:	146bc83a 	sub	r21,r2,r17
  8021a4:	a829883a 	mov	r20,r21
  8021a8:	d8c00615 	stw	r3,24(sp)
  8021ac:	003e8b06 	br	801bdc <___vfprintf_internal_r+0x314>
  8021b0:	bac00007 	ldb	r11,0(r23)
  8021b4:	63000814 	ori	r12,r12,32
  8021b8:	003e0f06 	br	8019f8 <___vfprintf_internal_r+0x130>
  8021bc:	d8c00617 	ldw	r3,24(sp)
  8021c0:	00800c04 	movi	r2,48
  8021c4:	d8801385 	stb	r2,78(sp)
  8021c8:	00801e04 	movi	r2,120
  8021cc:	01002074 	movhi	r4,129
  8021d0:	d88013c5 	stb	r2,79(sp)
  8021d4:	18800104 	addi	r2,r3,4
  8021d8:	d8800615 	stw	r2,24(sp)
  8021dc:	2081ae04 	addi	r2,r4,1720
  8021e0:	d8800c15 	stw	r2,48(sp)
  8021e4:	1d000017 	ldw	r20,0(r3)
  8021e8:	002b883a 	mov	r21,zero
  8021ec:	63000094 	ori	r12,r12,2
  8021f0:	00800084 	movi	r2,2
  8021f4:	07001e04 	movi	fp,120
  8021f8:	003ef606 	br	801dd4 <___vfprintf_internal_r+0x50c>
  8021fc:	21003fcc 	andi	r4,r4,255
  802200:	2005881e 	bne	r4,zero,803824 <___vfprintf_internal_r+0x1f5c>
  802204:	d9000617 	ldw	r4,24(sp)
  802208:	6080080c 	andi	r2,r12,32
  80220c:	20c00017 	ldw	r3,0(r4)
  802210:	21000104 	addi	r4,r4,4
  802214:	d9000615 	stw	r4,24(sp)
  802218:	1002d11e 	bne	r2,zero,802d60 <___vfprintf_internal_r+0x1498>
  80221c:	6080040c 	andi	r2,r12,16
  802220:	10036f1e 	bne	r2,zero,802fe0 <___vfprintf_internal_r+0x1718>
  802224:	6300100c 	andi	r12,r12,64
  802228:	60036d26 	beq	r12,zero,802fe0 <___vfprintf_internal_r+0x1718>
  80222c:	d8800517 	ldw	r2,20(sp)
  802230:	1880000d 	sth	r2,0(r3)
  802234:	003dd806 	br	801998 <___vfprintf_internal_r+0xd0>
  802238:	bac00007 	ldb	r11,0(r23)
  80223c:	58801b18 	cmpnei	r2,r11,108
  802240:	10033026 	beq	r2,zero,802f04 <___vfprintf_internal_r+0x163c>
  802244:	63000414 	ori	r12,r12,16
  802248:	003deb06 	br	8019f8 <___vfprintf_internal_r+0x130>
  80224c:	21003fcc 	andi	r4,r4,255
  802250:	2005701e 	bne	r4,zero,803814 <___vfprintf_internal_r+0x1f4c>
  802254:	63000414 	ori	r12,r12,16
  802258:	6080080c 	andi	r2,r12,32
  80225c:	103f901e 	bne	r2,zero,8020a0 <___vfprintf_internal_r+0x7d8>
  802260:	d9000617 	ldw	r4,24(sp)
  802264:	6080040c 	andi	r2,r12,16
  802268:	20c00104 	addi	r3,r4,4
  80226c:	1002d51e 	bne	r2,zero,802dc4 <___vfprintf_internal_r+0x14fc>
  802270:	6080100c 	andi	r2,r12,64
  802274:	1004a726 	beq	r2,zero,803514 <___vfprintf_internal_r+0x1c4c>
  802278:	d8800617 	ldw	r2,24(sp)
  80227c:	d8c00615 	stw	r3,24(sp)
  802280:	1500000f 	ldh	r20,0(r2)
  802284:	a02bd7fa 	srai	r21,r20,31
  802288:	a805883a 	mov	r2,r21
  80228c:	103f8b0e 	bge	r2,zero,8020bc <___vfprintf_internal_r+0x7f4>
  802290:	a004c03a 	cmpne	r2,r20,zero
  802294:	056bc83a 	sub	r21,zero,r21
  802298:	a8abc83a 	sub	r21,r21,r2
  80229c:	00800b44 	movi	r2,45
  8022a0:	d8801345 	stb	r2,77(sp)
  8022a4:	40ffffe0 	cmpeqi	r3,r8,-1
  8022a8:	0529c83a 	sub	r20,zero,r20
  8022ac:	03400b44 	movi	r13,45
  8022b0:	00800044 	movi	r2,1
  8022b4:	183ecb26 	beq	r3,zero,801de4 <___vfprintf_internal_r+0x51c>
  8022b8:	10c00060 	cmpeqi	r3,r2,1
  8022bc:	183f881e 	bne	r3,zero,8020e0 <___vfprintf_internal_r+0x818>
  8022c0:	108000a0 	cmpeqi	r2,r2,2
  8022c4:	1001311e 	bne	r2,zero,80278c <___vfprintf_internal_r+0xec4>
  8022c8:	dc402704 	addi	r17,sp,156
  8022cc:	a004d0fa 	srli	r2,r20,3
  8022d0:	a806977a 	slli	r3,r21,29
  8022d4:	a82ad0fa 	srli	r21,r21,3
  8022d8:	a50001cc 	andi	r20,r20,7
  8022dc:	a1000c04 	addi	r4,r20,48
  8022e0:	18a8b03a 	or	r20,r3,r2
  8022e4:	893fffc5 	stb	r4,-1(r17)
  8022e8:	a544b03a 	or	r2,r20,r21
  8022ec:	880b883a 	mov	r5,r17
  8022f0:	8c7fffc4 	addi	r17,r17,-1
  8022f4:	103ff51e 	bne	r2,zero,8022cc <___vfprintf_internal_r+0xa04>
  8022f8:	6080004c 	andi	r2,r12,1
  8022fc:	10013026 	beq	r2,zero,8027c0 <___vfprintf_internal_r+0xef8>
  802300:	21003fcc 	andi	r4,r4,255
  802304:	2100201c 	xori	r4,r4,128
  802308:	213fe004 	addi	r4,r4,-128
  80230c:	20800c18 	cmpnei	r2,r4,48
  802310:	10012b26 	beq	r2,zero,8027c0 <___vfprintf_internal_r+0xef8>
  802314:	00800c04 	movi	r2,48
  802318:	297fff84 	addi	r5,r5,-2
  80231c:	88bfffc5 	stb	r2,-1(r17)
  802320:	d8802704 	addi	r2,sp,156
  802324:	116bc83a 	sub	r21,r2,r5
  802328:	db000415 	stw	r12,16(sp)
  80232c:	2823883a 	mov	r17,r5
  802330:	4029883a 	mov	r20,r8
  802334:	4540010e 	bge	r8,r21,80233c <___vfprintf_internal_r+0xa74>
  802338:	a829883a 	mov	r20,r21
  80233c:	d8000715 	stw	zero,28(sp)
  802340:	6b403fcc 	andi	r13,r13,255
  802344:	6b40201c 	xori	r13,r13,128
  802348:	6b7fe004 	addi	r13,r13,-128
  80234c:	683e2626 	beq	r13,zero,801be8 <___vfprintf_internal_r+0x320>
  802350:	a5000044 	addi	r20,r20,1
  802354:	003e2406 	br	801be8 <___vfprintf_internal_r+0x320>
  802358:	bac00007 	ldb	r11,0(r23)
  80235c:	63002014 	ori	r12,r12,128
  802360:	003da506 	br	8019f8 <___vfprintf_internal_r+0x130>
  802364:	bf000007 	ldb	fp,0(r23)
  802368:	b8800044 	addi	r2,r23,1
  80236c:	e0c00aa0 	cmpeqi	r3,fp,42
  802370:	1805841e 	bne	r3,zero,803984 <___vfprintf_internal_r+0x20bc>
  802374:	e0fff404 	addi	r3,fp,-48
  802378:	198002b0 	cmpltui	r6,r3,10
  80237c:	102f883a 	mov	r23,r2
  802380:	0011883a 	mov	r8,zero
  802384:	303d9e26 	beq	r6,zero,801a00 <___vfprintf_internal_r+0x138>
  802388:	400490ba 	slli	r2,r8,2
  80238c:	bf000007 	ldb	fp,0(r23)
  802390:	bdc00044 	addi	r23,r23,1
  802394:	1211883a 	add	r8,r2,r8
  802398:	4211883a 	add	r8,r8,r8
  80239c:	40d1883a 	add	r8,r8,r3
  8023a0:	e0fff404 	addi	r3,fp,-48
  8023a4:	188002b0 	cmpltui	r2,r3,10
  8023a8:	103ff71e 	bne	r2,zero,802388 <___vfprintf_internal_r+0xac0>
  8023ac:	003d9406 	br	801a00 <___vfprintf_internal_r+0x138>
  8023b0:	bf000003 	ldbu	fp,0(r23)
  8023b4:	e2c03fcc 	andi	r11,fp,255
  8023b8:	5ac0201c 	xori	r11,r11,128
  8023bc:	63000114 	ori	r12,r12,4
  8023c0:	5affe004 	addi	r11,r11,-128
  8023c4:	003d8c06 	br	8019f8 <___vfprintf_internal_r+0x130>
  8023c8:	bac00007 	ldb	r11,0(r23)
  8023cc:	01000044 	movi	r4,1
  8023d0:	01400ac4 	movi	r5,43
  8023d4:	003d8806 	br	8019f8 <___vfprintf_internal_r+0x130>
  8023d8:	d8800617 	ldw	r2,24(sp)
  8023dc:	bf000003 	ldbu	fp,0(r23)
  8023e0:	14000017 	ldw	r16,0(r2)
  8023e4:	10800104 	addi	r2,r2,4
  8023e8:	8002aa16 	blt	r16,zero,802e94 <___vfprintf_internal_r+0x15cc>
  8023ec:	d8800615 	stw	r2,24(sp)
  8023f0:	e2c03fcc 	andi	r11,fp,255
  8023f4:	5ac0201c 	xori	r11,r11,128
  8023f8:	5affe004 	addi	r11,r11,-128
  8023fc:	003d7e06 	br	8019f8 <___vfprintf_internal_r+0x130>
  802400:	bac00007 	ldb	r11,0(r23)
  802404:	63000054 	ori	r12,r12,1
  802408:	003d7b06 	br	8019f8 <___vfprintf_internal_r+0x130>
  80240c:	28803fcc 	andi	r2,r5,255
  802410:	1080201c 	xori	r2,r2,128
  802414:	10bfe004 	addi	r2,r2,-128
  802418:	bf000003 	ldbu	fp,0(r23)
  80241c:	103ff41e 	bne	r2,zero,8023f0 <___vfprintf_internal_r+0xb28>
  802420:	e2c03fcc 	andi	r11,fp,255
  802424:	5ac0201c 	xori	r11,r11,128
  802428:	01000044 	movi	r4,1
  80242c:	01400804 	movi	r5,32
  802430:	5affe004 	addi	r11,r11,-128
  802434:	003d7006 	br	8019f8 <___vfprintf_internal_r+0x130>
  802438:	bac00007 	ldb	r11,0(r23)
  80243c:	63000214 	ori	r12,r12,8
  802440:	003d6d06 	br	8019f8 <___vfprintf_internal_r+0x130>
  802444:	d8c00617 	ldw	r3,24(sp)
  802448:	d8001345 	stb	zero,77(sp)
  80244c:	05000044 	movi	r20,1
  802450:	18800017 	ldw	r2,0(r3)
  802454:	18c00104 	addi	r3,r3,4
  802458:	d8c00615 	stw	r3,24(sp)
  80245c:	d8801d05 	stb	r2,116(sp)
  802460:	05400044 	movi	r21,1
  802464:	dc401d04 	addi	r17,sp,116
  802468:	003ddc06 	br	801bdc <___vfprintf_internal_r+0x314>
  80246c:	21003fcc 	andi	r4,r4,255
  802470:	2004e61e 	bne	r4,zero,80380c <___vfprintf_internal_r+0x1f44>
  802474:	00802074 	movhi	r2,129
  802478:	1081a904 	addi	r2,r2,1700
  80247c:	d8800c15 	stw	r2,48(sp)
  802480:	6080080c 	andi	r2,r12,32
  802484:	103f291e 	bne	r2,zero,80212c <___vfprintf_internal_r+0x864>
  802488:	d9000617 	ldw	r4,24(sp)
  80248c:	6080040c 	andi	r2,r12,16
  802490:	20c00104 	addi	r3,r4,4
  802494:	10023d1e 	bne	r2,zero,802d8c <___vfprintf_internal_r+0x14c4>
  802498:	6080100c 	andi	r2,r12,64
  80249c:	10042f26 	beq	r2,zero,80355c <___vfprintf_internal_r+0x1c94>
  8024a0:	d8800617 	ldw	r2,24(sp)
  8024a4:	002b883a 	mov	r21,zero
  8024a8:	d8c00615 	stw	r3,24(sp)
  8024ac:	1500000b 	ldhu	r20,0(r2)
  8024b0:	003f2306 	br	802140 <___vfprintf_internal_r+0x878>
  8024b4:	e2c01990 	cmplti	r11,fp,102
  8024b8:	5800f61e 	bne	r11,zero,802894 <___vfprintf_internal_r+0xfcc>
  8024bc:	d9000917 	ldw	r4,36(sp)
  8024c0:	d9400a17 	ldw	r5,40(sp)
  8024c4:	000d883a 	mov	r6,zero
  8024c8:	000f883a 	mov	r7,zero
  8024cc:	d8c00e15 	stw	r3,56(sp)
  8024d0:	080cef80 	call	80cef8 <__eqdf2>
  8024d4:	d8c00e17 	ldw	r3,56(sp)
  8024d8:	1001881e 	bne	r2,zero,802afc <___vfprintf_internal_r+0x1234>
  8024dc:	d8801b17 	ldw	r2,108(sp)
  8024e0:	01002074 	movhi	r4,129
  8024e4:	2101b504 	addi	r4,r4,1748
  8024e8:	10800044 	addi	r2,r2,1
  8024ec:	18c00044 	addi	r3,r3,1
  8024f0:	b1000015 	stw	r4,0(r22)
  8024f4:	01000044 	movi	r4,1
  8024f8:	d8801b15 	stw	r2,108(sp)
  8024fc:	b1000115 	stw	r4,4(r22)
  802500:	d8c01c15 	stw	r3,112(sp)
  802504:	10800208 	cmpgei	r2,r2,8
  802508:	10036e1e 	bne	r2,zero,8032c4 <___vfprintf_internal_r+0x19fc>
  80250c:	b5800204 	addi	r22,r22,8
  802510:	d8801417 	ldw	r2,80(sp)
  802514:	d9000817 	ldw	r4,32(sp)
  802518:	11020b0e 	bge	r2,r4,802d48 <___vfprintf_internal_r+0x1480>
  80251c:	d8800d17 	ldw	r2,52(sp)
  802520:	d9000b17 	ldw	r4,44(sp)
  802524:	b0800015 	stw	r2,0(r22)
  802528:	d8801b17 	ldw	r2,108(sp)
  80252c:	1907883a 	add	r3,r3,r4
  802530:	b1000115 	stw	r4,4(r22)
  802534:	10800044 	addi	r2,r2,1
  802538:	d8801b15 	stw	r2,108(sp)
  80253c:	d8c01c15 	stw	r3,112(sp)
  802540:	10800208 	cmpgei	r2,r2,8
  802544:	1002761e 	bne	r2,zero,802f20 <___vfprintf_internal_r+0x1658>
  802548:	b5800204 	addi	r22,r22,8
  80254c:	d8800817 	ldw	r2,32(sp)
  802550:	157fffc4 	addi	r21,r2,-1
  802554:	057dda0e 	bge	zero,r21,801cc0 <___vfprintf_internal_r+0x3f8>
  802558:	01c02074 	movhi	r7,129
  80255c:	a9000450 	cmplti	r4,r21,17
  802560:	d8801b17 	ldw	r2,108(sp)
  802564:	39c1b604 	addi	r7,r7,1752
  802568:	2003521e 	bne	r4,zero,8032b4 <___vfprintf_internal_r+0x19ec>
  80256c:	07000404 	movi	fp,16
  802570:	3823883a 	mov	r17,r7
  802574:	00000406 	br	802588 <___vfprintf_internal_r+0xcc0>
  802578:	b5800204 	addi	r22,r22,8
  80257c:	ad7ffc04 	addi	r21,r21,-16
  802580:	a9000448 	cmpgei	r4,r21,17
  802584:	20034a26 	beq	r4,zero,8032b0 <___vfprintf_internal_r+0x19e8>
  802588:	10800044 	addi	r2,r2,1
  80258c:	18c00404 	addi	r3,r3,16
  802590:	b4400015 	stw	r17,0(r22)
  802594:	b7000115 	stw	fp,4(r22)
  802598:	d8c01c15 	stw	r3,112(sp)
  80259c:	d8801b15 	stw	r2,108(sp)
  8025a0:	11000208 	cmpgei	r4,r2,8
  8025a4:	203ff426 	beq	r4,zero,802578 <___vfprintf_internal_r+0xcb0>
  8025a8:	d9801a04 	addi	r6,sp,104
  8025ac:	900b883a 	mov	r5,r18
  8025b0:	9809883a 	mov	r4,r19
  8025b4:	0808c740 	call	808c74 <__sprint_r>
  8025b8:	103dd21e 	bne	r2,zero,801d04 <___vfprintf_internal_r+0x43c>
  8025bc:	d8c01c17 	ldw	r3,112(sp)
  8025c0:	d8801b17 	ldw	r2,108(sp)
  8025c4:	dd802704 	addi	r22,sp,156
  8025c8:	003fec06 	br	80257c <___vfprintf_internal_r+0xcb4>
  8025cc:	8519c83a 	sub	r12,r16,r20
  8025d0:	033dac0e 	bge	zero,r12,801c84 <___vfprintf_internal_r+0x3bc>
  8025d4:	01c02074 	movhi	r7,129
  8025d8:	61000450 	cmplti	r4,r12,17
  8025dc:	d8801b17 	ldw	r2,108(sp)
  8025e0:	39c1b604 	addi	r7,r7,1752
  8025e4:	2000281e 	bne	r4,zero,802688 <___vfprintf_internal_r+0xdc0>
  8025e8:	dc400e15 	stw	r17,56(sp)
  8025ec:	dc000f15 	stw	r16,60(sp)
  8025f0:	b009883a 	mov	r4,r22
  8025f4:	03400404 	movi	r13,16
  8025f8:	a02d883a 	mov	r22,r20
  8025fc:	6021883a 	mov	r16,r12
  802600:	4029883a 	mov	r20,r8
  802604:	3823883a 	mov	r17,r7
  802608:	00000406 	br	80261c <___vfprintf_internal_r+0xd54>
  80260c:	843ffc04 	addi	r16,r16,-16
  802610:	81400448 	cmpgei	r5,r16,17
  802614:	21000204 	addi	r4,r4,8
  802618:	28001426 	beq	r5,zero,80266c <___vfprintf_internal_r+0xda4>
  80261c:	10800044 	addi	r2,r2,1
  802620:	18c00404 	addi	r3,r3,16
  802624:	24400015 	stw	r17,0(r4)
  802628:	23400115 	stw	r13,4(r4)
  80262c:	d8c01c15 	stw	r3,112(sp)
  802630:	d8801b15 	stw	r2,108(sp)
  802634:	11400208 	cmpgei	r5,r2,8
  802638:	283ff426 	beq	r5,zero,80260c <___vfprintf_internal_r+0xd44>
  80263c:	d9801a04 	addi	r6,sp,104
  802640:	900b883a 	mov	r5,r18
  802644:	9809883a 	mov	r4,r19
  802648:	0808c740 	call	808c74 <__sprint_r>
  80264c:	103dad1e 	bne	r2,zero,801d04 <___vfprintf_internal_r+0x43c>
  802650:	843ffc04 	addi	r16,r16,-16
  802654:	81400448 	cmpgei	r5,r16,17
  802658:	d8c01c17 	ldw	r3,112(sp)
  80265c:	d8801b17 	ldw	r2,108(sp)
  802660:	d9002704 	addi	r4,sp,156
  802664:	03400404 	movi	r13,16
  802668:	283fec1e 	bne	r5,zero,80261c <___vfprintf_internal_r+0xd54>
  80266c:	8019883a 	mov	r12,r16
  802670:	880f883a 	mov	r7,r17
  802674:	dc000f17 	ldw	r16,60(sp)
  802678:	dc400e17 	ldw	r17,56(sp)
  80267c:	a011883a 	mov	r8,r20
  802680:	b029883a 	mov	r20,r22
  802684:	202d883a 	mov	r22,r4
  802688:	10800044 	addi	r2,r2,1
  80268c:	1b07883a 	add	r3,r3,r12
  802690:	d8801b15 	stw	r2,108(sp)
  802694:	b1c00015 	stw	r7,0(r22)
  802698:	b3000115 	stw	r12,4(r22)
  80269c:	d8c01c15 	stw	r3,112(sp)
  8026a0:	10800208 	cmpgei	r2,r2,8
  8026a4:	10030f1e 	bne	r2,zero,8032e4 <___vfprintf_internal_r+0x1a1c>
  8026a8:	4551c83a 	sub	r8,r8,r21
  8026ac:	b5800204 	addi	r22,r22,8
  8026b0:	023d760e 	bge	zero,r8,801c8c <___vfprintf_internal_r+0x3c4>
  8026b4:	01c02074 	movhi	r7,129
  8026b8:	41000450 	cmplti	r4,r8,17
  8026bc:	d8801b17 	ldw	r2,108(sp)
  8026c0:	39c1b604 	addi	r7,r7,1752
  8026c4:	2000221e 	bne	r4,zero,802750 <___vfprintf_internal_r+0xe88>
  8026c8:	dc400e15 	stw	r17,56(sp)
  8026cc:	dc000f15 	stw	r16,60(sp)
  8026d0:	03000404 	movi	r12,16
  8026d4:	4021883a 	mov	r16,r8
  8026d8:	3823883a 	mov	r17,r7
  8026dc:	00000406 	br	8026f0 <___vfprintf_internal_r+0xe28>
  8026e0:	843ffc04 	addi	r16,r16,-16
  8026e4:	81000448 	cmpgei	r4,r16,17
  8026e8:	b5800204 	addi	r22,r22,8
  8026ec:	20001426 	beq	r4,zero,802740 <___vfprintf_internal_r+0xe78>
  8026f0:	10800044 	addi	r2,r2,1
  8026f4:	18c00404 	addi	r3,r3,16
  8026f8:	b4400015 	stw	r17,0(r22)
  8026fc:	b3000115 	stw	r12,4(r22)
  802700:	d8c01c15 	stw	r3,112(sp)
  802704:	d8801b15 	stw	r2,108(sp)
  802708:	11000208 	cmpgei	r4,r2,8
  80270c:	203ff426 	beq	r4,zero,8026e0 <___vfprintf_internal_r+0xe18>
  802710:	d9801a04 	addi	r6,sp,104
  802714:	900b883a 	mov	r5,r18
  802718:	9809883a 	mov	r4,r19
  80271c:	0808c740 	call	808c74 <__sprint_r>
  802720:	103d781e 	bne	r2,zero,801d04 <___vfprintf_internal_r+0x43c>
  802724:	843ffc04 	addi	r16,r16,-16
  802728:	81000448 	cmpgei	r4,r16,17
  80272c:	d8c01c17 	ldw	r3,112(sp)
  802730:	d8801b17 	ldw	r2,108(sp)
  802734:	dd802704 	addi	r22,sp,156
  802738:	03000404 	movi	r12,16
  80273c:	203fec1e 	bne	r4,zero,8026f0 <___vfprintf_internal_r+0xe28>
  802740:	8011883a 	mov	r8,r16
  802744:	880f883a 	mov	r7,r17
  802748:	dc000f17 	ldw	r16,60(sp)
  80274c:	dc400e17 	ldw	r17,56(sp)
  802750:	10800044 	addi	r2,r2,1
  802754:	1a07883a 	add	r3,r3,r8
  802758:	d8801b15 	stw	r2,108(sp)
  80275c:	b1c00015 	stw	r7,0(r22)
  802760:	b2000115 	stw	r8,4(r22)
  802764:	d8c01c15 	stw	r3,112(sp)
  802768:	10800208 	cmpgei	r2,r2,8
  80276c:	10016e1e 	bne	r2,zero,802d28 <___vfprintf_internal_r+0x1460>
  802770:	b5800204 	addi	r22,r22,8
  802774:	003d4506 	br	801c8c <___vfprintf_internal_r+0x3c4>
  802778:	10c00060 	cmpeqi	r3,r2,1
  80277c:	1803c81e 	bne	r3,zero,8036a0 <___vfprintf_internal_r+0x1dd8>
  802780:	108000a0 	cmpeqi	r2,r2,2
  802784:	db000417 	ldw	r12,16(sp)
  802788:	103ecf26 	beq	r2,zero,8022c8 <___vfprintf_internal_r+0xa00>
  80278c:	d9000c17 	ldw	r4,48(sp)
  802790:	dc402704 	addi	r17,sp,156
  802794:	a08003cc 	andi	r2,r20,15
  802798:	a806973a 	slli	r3,r21,28
  80279c:	a028d13a 	srli	r20,r20,4
  8027a0:	2085883a 	add	r2,r4,r2
  8027a4:	10800003 	ldbu	r2,0(r2)
  8027a8:	a82ad13a 	srli	r21,r21,4
  8027ac:	1d28b03a 	or	r20,r3,r20
  8027b0:	88bfffc5 	stb	r2,-1(r17)
  8027b4:	a544b03a 	or	r2,r20,r21
  8027b8:	8c7fffc4 	addi	r17,r17,-1
  8027bc:	103ff51e 	bne	r2,zero,802794 <___vfprintf_internal_r+0xecc>
  8027c0:	d8802704 	addi	r2,sp,156
  8027c4:	146bc83a 	sub	r21,r2,r17
  8027c8:	db000415 	stw	r12,16(sp)
  8027cc:	003ed806 	br	802330 <___vfprintf_internal_r+0xa68>
  8027d0:	d9801a04 	addi	r6,sp,104
  8027d4:	900b883a 	mov	r5,r18
  8027d8:	9809883a 	mov	r4,r19
  8027dc:	0808c740 	call	808c74 <__sprint_r>
  8027e0:	103d4226 	beq	r2,zero,801cec <___vfprintf_internal_r+0x424>
  8027e4:	003d4706 	br	801d04 <___vfprintf_internal_r+0x43c>
  8027e8:	d9801a04 	addi	r6,sp,104
  8027ec:	900b883a 	mov	r5,r18
  8027f0:	9809883a 	mov	r4,r19
  8027f4:	0808c740 	call	808c74 <__sprint_r>
  8027f8:	103d421e 	bne	r2,zero,801d04 <___vfprintf_internal_r+0x43c>
  8027fc:	d9401417 	ldw	r5,80(sp)
  802800:	d8c01c17 	ldw	r3,112(sp)
  802804:	dd802704 	addi	r22,sp,156
  802808:	2802c81e 	bne	r5,zero,80332c <___vfprintf_internal_r+0x1a64>
  80280c:	d8800417 	ldw	r2,16(sp)
  802810:	d9000817 	ldw	r4,32(sp)
  802814:	1080004c 	andi	r2,r2,1
  802818:	1104b03a 	or	r2,r2,r4
  80281c:	103d2826 	beq	r2,zero,801cc0 <___vfprintf_internal_r+0x3f8>
  802820:	d8800d17 	ldw	r2,52(sp)
  802824:	d9000b17 	ldw	r4,44(sp)
  802828:	b0800015 	stw	r2,0(r22)
  80282c:	d8801b17 	ldw	r2,108(sp)
  802830:	20c7883a 	add	r3,r4,r3
  802834:	b1000115 	stw	r4,4(r22)
  802838:	10800044 	addi	r2,r2,1
  80283c:	d8c01c15 	stw	r3,112(sp)
  802840:	d8801b15 	stw	r2,108(sp)
  802844:	11000208 	cmpgei	r4,r2,8
  802848:	2003821e 	bne	r4,zero,803654 <___vfprintf_internal_r+0x1d8c>
  80284c:	b5800204 	addi	r22,r22,8
  802850:	d9000817 	ldw	r4,32(sp)
  802854:	10800044 	addi	r2,r2,1
  802858:	d8801b15 	stw	r2,108(sp)
  80285c:	20c7883a 	add	r3,r4,r3
  802860:	b4400015 	stw	r17,0(r22)
  802864:	b1000115 	stw	r4,4(r22)
  802868:	d8c01c15 	stw	r3,112(sp)
  80286c:	10800208 	cmpgei	r2,r2,8
  802870:	103d1226 	beq	r2,zero,801cbc <___vfprintf_internal_r+0x3f4>
  802874:	d9801a04 	addi	r6,sp,104
  802878:	900b883a 	mov	r5,r18
  80287c:	9809883a 	mov	r4,r19
  802880:	0808c740 	call	808c74 <__sprint_r>
  802884:	103d1f1e 	bne	r2,zero,801d04 <___vfprintf_internal_r+0x43c>
  802888:	d8c01c17 	ldw	r3,112(sp)
  80288c:	dd802704 	addi	r22,sp,156
  802890:	003d0b06 	br	801cc0 <___vfprintf_internal_r+0x3f8>
  802894:	d8800817 	ldw	r2,32(sp)
  802898:	da001b17 	ldw	r8,108(sp)
  80289c:	18c00044 	addi	r3,r3,1
  8028a0:	10800088 	cmpgei	r2,r2,2
  8028a4:	45400044 	addi	r21,r8,1
  8028a8:	b7000204 	addi	fp,r22,8
  8028ac:	1000ec26 	beq	r2,zero,802c60 <___vfprintf_internal_r+0x1398>
  8028b0:	00800044 	movi	r2,1
  8028b4:	b0800115 	stw	r2,4(r22)
  8028b8:	b4400015 	stw	r17,0(r22)
  8028bc:	d8c01c15 	stw	r3,112(sp)
  8028c0:	dd401b15 	stw	r21,108(sp)
  8028c4:	a8800210 	cmplti	r2,r21,8
  8028c8:	1001d126 	beq	r2,zero,803010 <___vfprintf_internal_r+0x1748>
  8028cc:	d8800b17 	ldw	r2,44(sp)
  8028d0:	d9000d17 	ldw	r4,52(sp)
  8028d4:	ad400044 	addi	r21,r21,1
  8028d8:	1887883a 	add	r3,r3,r2
  8028dc:	e0800115 	stw	r2,4(fp)
  8028e0:	e1000015 	stw	r4,0(fp)
  8028e4:	d8c01c15 	stw	r3,112(sp)
  8028e8:	dd401b15 	stw	r21,108(sp)
  8028ec:	a8800208 	cmpgei	r2,r21,8
  8028f0:	1001be1e 	bne	r2,zero,802fec <___vfprintf_internal_r+0x1724>
  8028f4:	e7000204 	addi	fp,fp,8
  8028f8:	d9000917 	ldw	r4,36(sp)
  8028fc:	d9400a17 	ldw	r5,40(sp)
  802900:	aa000044 	addi	r8,r21,1
  802904:	000d883a 	mov	r6,zero
  802908:	000f883a 	mov	r7,zero
  80290c:	d8c00e15 	stw	r3,56(sp)
  802910:	da000715 	stw	r8,28(sp)
  802914:	080cef80 	call	80cef8 <__eqdf2>
  802918:	d8c00817 	ldw	r3,32(sp)
  80291c:	da000717 	ldw	r8,28(sp)
  802920:	e5800204 	addi	r22,fp,8
  802924:	1affffc4 	addi	r11,r3,-1
  802928:	d8c00e17 	ldw	r3,56(sp)
  80292c:	1000de26 	beq	r2,zero,802ca8 <___vfprintf_internal_r+0x13e0>
  802930:	8a400044 	addi	r9,r17,1
  802934:	1ac7883a 	add	r3,r3,r11
  802938:	da001b15 	stw	r8,108(sp)
  80293c:	e2400015 	stw	r9,0(fp)
  802940:	e2c00115 	stw	r11,4(fp)
  802944:	d8c01c15 	stw	r3,112(sp)
  802948:	42000208 	cmpgei	r8,r8,8
  80294c:	4001621e 	bne	r8,zero,802ed8 <___vfprintf_internal_r+0x1610>
  802950:	e0800404 	addi	r2,fp,16
  802954:	aa000084 	addi	r8,r21,2
  802958:	b039883a 	mov	fp,r22
  80295c:	102d883a 	mov	r22,r2
  802960:	d9001017 	ldw	r4,64(sp)
  802964:	d8801644 	addi	r2,sp,89
  802968:	da001b15 	stw	r8,108(sp)
  80296c:	20c7883a 	add	r3,r4,r3
  802970:	e0800015 	stw	r2,0(fp)
  802974:	e1000115 	stw	r4,4(fp)
  802978:	d8c01c15 	stw	r3,112(sp)
  80297c:	42000210 	cmplti	r8,r8,8
  802980:	403ccf1e 	bne	r8,zero,801cc0 <___vfprintf_internal_r+0x3f8>
  802984:	003fbb06 	br	802874 <___vfprintf_internal_r+0xfac>
  802988:	db000417 	ldw	r12,16(sp)
  80298c:	003e4a06 	br	8022b8 <___vfprintf_internal_r+0x9f0>
  802990:	03002074 	movhi	r12,129
  802994:	39000450 	cmplti	r4,r7,17
  802998:	d8801b17 	ldw	r2,108(sp)
  80299c:	6301ba04 	addi	r12,r12,1768
  8029a0:	2000321e 	bne	r4,zero,802a6c <___vfprintf_internal_r+0x11a4>
  8029a4:	dc401115 	stw	r17,68(sp)
  8029a8:	b009883a 	mov	r4,r22
  8029ac:	9023883a 	mov	r17,r18
  8029b0:	a82d883a 	mov	r22,r21
  8029b4:	ddc01215 	stw	r23,72(sp)
  8029b8:	03c00404 	movi	r15,16
  8029bc:	a02f883a 	mov	r23,r20
  8029c0:	db800e15 	stw	r14,56(sp)
  8029c4:	8029883a 	mov	r20,r16
  8029c8:	db400f15 	stw	r13,60(sp)
  8029cc:	402b883a 	mov	r21,r8
  8029d0:	3821883a 	mov	r16,r7
  8029d4:	6025883a 	mov	r18,r12
  8029d8:	00000406 	br	8029ec <___vfprintf_internal_r+0x1124>
  8029dc:	843ffc04 	addi	r16,r16,-16
  8029e0:	81800448 	cmpgei	r6,r16,17
  8029e4:	21000204 	addi	r4,r4,8
  8029e8:	30001426 	beq	r6,zero,802a3c <___vfprintf_internal_r+0x1174>
  8029ec:	10800044 	addi	r2,r2,1
  8029f0:	18c00404 	addi	r3,r3,16
  8029f4:	24800015 	stw	r18,0(r4)
  8029f8:	23c00115 	stw	r15,4(r4)
  8029fc:	d8c01c15 	stw	r3,112(sp)
  802a00:	d8801b15 	stw	r2,108(sp)
  802a04:	11800208 	cmpgei	r6,r2,8
  802a08:	303ff426 	beq	r6,zero,8029dc <___vfprintf_internal_r+0x1114>
  802a0c:	d9801a04 	addi	r6,sp,104
  802a10:	880b883a 	mov	r5,r17
  802a14:	9809883a 	mov	r4,r19
  802a18:	0808c740 	call	808c74 <__sprint_r>
  802a1c:	1001a11e 	bne	r2,zero,8030a4 <___vfprintf_internal_r+0x17dc>
  802a20:	843ffc04 	addi	r16,r16,-16
  802a24:	81800448 	cmpgei	r6,r16,17
  802a28:	d8c01c17 	ldw	r3,112(sp)
  802a2c:	d8801b17 	ldw	r2,108(sp)
  802a30:	d9002704 	addi	r4,sp,156
  802a34:	03c00404 	movi	r15,16
  802a38:	303fec1e 	bne	r6,zero,8029ec <___vfprintf_internal_r+0x1124>
  802a3c:	800f883a 	mov	r7,r16
  802a40:	9019883a 	mov	r12,r18
  802a44:	a021883a 	mov	r16,r20
  802a48:	8825883a 	mov	r18,r17
  802a4c:	b829883a 	mov	r20,r23
  802a50:	db800e17 	ldw	r14,56(sp)
  802a54:	db400f17 	ldw	r13,60(sp)
  802a58:	ddc01217 	ldw	r23,72(sp)
  802a5c:	dc401117 	ldw	r17,68(sp)
  802a60:	a811883a 	mov	r8,r21
  802a64:	b02b883a 	mov	r21,r22
  802a68:	202d883a 	mov	r22,r4
  802a6c:	10800044 	addi	r2,r2,1
  802a70:	19c7883a 	add	r3,r3,r7
  802a74:	d8801b15 	stw	r2,108(sp)
  802a78:	b3000015 	stw	r12,0(r22)
  802a7c:	b1c00115 	stw	r7,4(r22)
  802a80:	d8c01c15 	stw	r3,112(sp)
  802a84:	10800208 	cmpgei	r2,r2,8
  802a88:	1001781e 	bne	r2,zero,80306c <___vfprintf_internal_r+0x17a4>
  802a8c:	b5800204 	addi	r22,r22,8
  802a90:	003c5f06 	br	801c10 <___vfprintf_internal_r+0x348>
  802a94:	d9801a04 	addi	r6,sp,104
  802a98:	900b883a 	mov	r5,r18
  802a9c:	9809883a 	mov	r4,r19
  802aa0:	da000f15 	stw	r8,60(sp)
  802aa4:	db400e15 	stw	r13,56(sp)
  802aa8:	0808c740 	call	808c74 <__sprint_r>
  802aac:	103c951e 	bne	r2,zero,801d04 <___vfprintf_internal_r+0x43c>
  802ab0:	d8c01c17 	ldw	r3,112(sp)
  802ab4:	da000f17 	ldw	r8,60(sp)
  802ab8:	db400e17 	ldw	r13,56(sp)
  802abc:	dd802704 	addi	r22,sp,156
  802ac0:	003c6e06 	br	801c7c <___vfprintf_internal_r+0x3b4>
  802ac4:	d9801a04 	addi	r6,sp,104
  802ac8:	900b883a 	mov	r5,r18
  802acc:	9809883a 	mov	r4,r19
  802ad0:	da001115 	stw	r8,68(sp)
  802ad4:	db400f15 	stw	r13,60(sp)
  802ad8:	db800e15 	stw	r14,56(sp)
  802adc:	0808c740 	call	808c74 <__sprint_r>
  802ae0:	103c881e 	bne	r2,zero,801d04 <___vfprintf_internal_r+0x43c>
  802ae4:	d8c01c17 	ldw	r3,112(sp)
  802ae8:	da001117 	ldw	r8,68(sp)
  802aec:	db400f17 	ldw	r13,60(sp)
  802af0:	db800e17 	ldw	r14,56(sp)
  802af4:	dd802704 	addi	r22,sp,156
  802af8:	003c5306 	br	801c48 <___vfprintf_internal_r+0x380>
  802afc:	d9401417 	ldw	r5,80(sp)
  802b00:	01414c0e 	bge	zero,r5,803034 <___vfprintf_internal_r+0x176c>
  802b04:	d8800717 	ldw	r2,28(sp)
  802b08:	d9000817 	ldw	r4,32(sp)
  802b0c:	102b883a 	mov	r21,r2
  802b10:	2080e316 	blt	r4,r2,802ea0 <___vfprintf_internal_r+0x15d8>
  802b14:	05400a0e 	bge	zero,r21,802b40 <___vfprintf_internal_r+0x1278>
  802b18:	d8801b17 	ldw	r2,108(sp)
  802b1c:	1d47883a 	add	r3,r3,r21
  802b20:	b4400015 	stw	r17,0(r22)
  802b24:	10800044 	addi	r2,r2,1
  802b28:	d8801b15 	stw	r2,108(sp)
  802b2c:	b5400115 	stw	r21,4(r22)
  802b30:	d8c01c15 	stw	r3,112(sp)
  802b34:	10800208 	cmpgei	r2,r2,8
  802b38:	10030c1e 	bne	r2,zero,80376c <___vfprintf_internal_r+0x1ea4>
  802b3c:	b5800204 	addi	r22,r22,8
  802b40:	a800ff16 	blt	r21,zero,802f40 <___vfprintf_internal_r+0x1678>
  802b44:	d8800717 	ldw	r2,28(sp)
  802b48:	156bc83a 	sub	r21,r2,r21
  802b4c:	05410616 	blt	zero,r21,802f68 <___vfprintf_internal_r+0x16a0>
  802b50:	dd401417 	ldw	r21,80(sp)
  802b54:	d8800817 	ldw	r2,32(sp)
  802b58:	a880d40e 	bge	r21,r2,802eac <___vfprintf_internal_r+0x15e4>
  802b5c:	d8800d17 	ldw	r2,52(sp)
  802b60:	d9000b17 	ldw	r4,44(sp)
  802b64:	b0800015 	stw	r2,0(r22)
  802b68:	d8801b17 	ldw	r2,108(sp)
  802b6c:	1907883a 	add	r3,r3,r4
  802b70:	b1000115 	stw	r4,4(r22)
  802b74:	10800044 	addi	r2,r2,1
  802b78:	d8801b15 	stw	r2,108(sp)
  802b7c:	d8c01c15 	stw	r3,112(sp)
  802b80:	10800208 	cmpgei	r2,r2,8
  802b84:	10028e1e 	bne	r2,zero,8035c0 <___vfprintf_internal_r+0x1cf8>
  802b88:	b5800204 	addi	r22,r22,8
  802b8c:	d9000817 	ldw	r4,32(sp)
  802b90:	d9400717 	ldw	r5,28(sp)
  802b94:	2545c83a 	sub	r2,r4,r21
  802b98:	2149c83a 	sub	r4,r4,r5
  802b9c:	102b883a 	mov	r21,r2
  802ba0:	2080010e 	bge	r4,r2,802ba8 <___vfprintf_internal_r+0x12e0>
  802ba4:	202b883a 	mov	r21,r4
  802ba8:	05400c0e 	bge	zero,r21,802bdc <___vfprintf_internal_r+0x1314>
  802bac:	d9000717 	ldw	r4,28(sp)
  802bb0:	1d47883a 	add	r3,r3,r21
  802bb4:	b5400115 	stw	r21,4(r22)
  802bb8:	8913883a 	add	r9,r17,r4
  802bbc:	d9001b17 	ldw	r4,108(sp)
  802bc0:	b2400015 	stw	r9,0(r22)
  802bc4:	d8c01c15 	stw	r3,112(sp)
  802bc8:	21000044 	addi	r4,r4,1
  802bcc:	d9001b15 	stw	r4,108(sp)
  802bd0:	21000208 	cmpgei	r4,r4,8
  802bd4:	2002f01e 	bne	r4,zero,803798 <___vfprintf_internal_r+0x1ed0>
  802bd8:	b5800204 	addi	r22,r22,8
  802bdc:	a800010e 	bge	r21,zero,802be4 <___vfprintf_internal_r+0x131c>
  802be0:	002b883a 	mov	r21,zero
  802be4:	156bc83a 	sub	r21,r2,r21
  802be8:	057c350e 	bge	zero,r21,801cc0 <___vfprintf_internal_r+0x3f8>
  802bec:	01c02074 	movhi	r7,129
  802bf0:	a9000450 	cmplti	r4,r21,17
  802bf4:	d8801b17 	ldw	r2,108(sp)
  802bf8:	39c1b604 	addi	r7,r7,1752
  802bfc:	2001ad1e 	bne	r4,zero,8032b4 <___vfprintf_internal_r+0x19ec>
  802c00:	07000404 	movi	fp,16
  802c04:	3823883a 	mov	r17,r7
  802c08:	00000406 	br	802c1c <___vfprintf_internal_r+0x1354>
  802c0c:	b5800204 	addi	r22,r22,8
  802c10:	ad7ffc04 	addi	r21,r21,-16
  802c14:	a9000448 	cmpgei	r4,r21,17
  802c18:	2001a526 	beq	r4,zero,8032b0 <___vfprintf_internal_r+0x19e8>
  802c1c:	10800044 	addi	r2,r2,1
  802c20:	18c00404 	addi	r3,r3,16
  802c24:	b4400015 	stw	r17,0(r22)
  802c28:	b7000115 	stw	fp,4(r22)
  802c2c:	d8c01c15 	stw	r3,112(sp)
  802c30:	d8801b15 	stw	r2,108(sp)
  802c34:	11000208 	cmpgei	r4,r2,8
  802c38:	203ff426 	beq	r4,zero,802c0c <___vfprintf_internal_r+0x1344>
  802c3c:	d9801a04 	addi	r6,sp,104
  802c40:	900b883a 	mov	r5,r18
  802c44:	9809883a 	mov	r4,r19
  802c48:	0808c740 	call	808c74 <__sprint_r>
  802c4c:	103c2d1e 	bne	r2,zero,801d04 <___vfprintf_internal_r+0x43c>
  802c50:	d8c01c17 	ldw	r3,112(sp)
  802c54:	d8801b17 	ldw	r2,108(sp)
  802c58:	dd802704 	addi	r22,sp,156
  802c5c:	003fec06 	br	802c10 <___vfprintf_internal_r+0x1348>
  802c60:	d8800417 	ldw	r2,16(sp)
  802c64:	1080004c 	andi	r2,r2,1
  802c68:	103f111e 	bne	r2,zero,8028b0 <___vfprintf_internal_r+0xfe8>
  802c6c:	00800044 	movi	r2,1
  802c70:	dd401b15 	stw	r21,108(sp)
  802c74:	b4400015 	stw	r17,0(r22)
  802c78:	b0800115 	stw	r2,4(r22)
  802c7c:	d8c01c15 	stw	r3,112(sp)
  802c80:	ad400208 	cmpgei	r21,r21,8
  802c84:	a800941e 	bne	r21,zero,802ed8 <___vfprintf_internal_r+0x1610>
  802c88:	42000084 	addi	r8,r8,2
  802c8c:	b5800404 	addi	r22,r22,16
  802c90:	003f3306 	br	802960 <___vfprintf_internal_r+0x1098>
  802c94:	4002821e 	bne	r8,zero,8036a0 <___vfprintf_internal_r+0x1dd8>
  802c98:	0011883a 	mov	r8,zero
  802c9c:	002b883a 	mov	r21,zero
  802ca0:	dc402704 	addi	r17,sp,156
  802ca4:	003da206 	br	802330 <___vfprintf_internal_r+0xa68>
  802ca8:	02ff2d0e 	bge	zero,r11,802960 <___vfprintf_internal_r+0x1098>
  802cac:	58800450 	cmplti	r2,r11,17
  802cb0:	01c02074 	movhi	r7,129
  802cb4:	1003261e 	bne	r2,zero,803950 <___vfprintf_internal_r+0x2088>
  802cb8:	39c1b604 	addi	r7,r7,1752
  802cbc:	dc000715 	stw	r16,28(sp)
  802cc0:	05800404 	movi	r22,16
  802cc4:	5823883a 	mov	r17,r11
  802cc8:	402b883a 	mov	r21,r8
  802ccc:	3821883a 	mov	r16,r7
  802cd0:	00000506 	br	802ce8 <___vfprintf_internal_r+0x1420>
  802cd4:	e7000204 	addi	fp,fp,8
  802cd8:	8c7ffc04 	addi	r17,r17,-16
  802cdc:	88800448 	cmpgei	r2,r17,17
  802ce0:	1001be26 	beq	r2,zero,8033dc <___vfprintf_internal_r+0x1b14>
  802ce4:	ad400044 	addi	r21,r21,1
  802ce8:	18c00404 	addi	r3,r3,16
  802cec:	e4000015 	stw	r16,0(fp)
  802cf0:	e5800115 	stw	r22,4(fp)
  802cf4:	d8c01c15 	stw	r3,112(sp)
  802cf8:	dd401b15 	stw	r21,108(sp)
  802cfc:	a8800208 	cmpgei	r2,r21,8
  802d00:	103ff426 	beq	r2,zero,802cd4 <___vfprintf_internal_r+0x140c>
  802d04:	d9801a04 	addi	r6,sp,104
  802d08:	900b883a 	mov	r5,r18
  802d0c:	9809883a 	mov	r4,r19
  802d10:	0808c740 	call	808c74 <__sprint_r>
  802d14:	103bfb1e 	bne	r2,zero,801d04 <___vfprintf_internal_r+0x43c>
  802d18:	dd401b17 	ldw	r21,108(sp)
  802d1c:	d8c01c17 	ldw	r3,112(sp)
  802d20:	df002704 	addi	fp,sp,156
  802d24:	003fec06 	br	802cd8 <___vfprintf_internal_r+0x1410>
  802d28:	d9801a04 	addi	r6,sp,104
  802d2c:	900b883a 	mov	r5,r18
  802d30:	9809883a 	mov	r4,r19
  802d34:	0808c740 	call	808c74 <__sprint_r>
  802d38:	103bf21e 	bne	r2,zero,801d04 <___vfprintf_internal_r+0x43c>
  802d3c:	d8c01c17 	ldw	r3,112(sp)
  802d40:	dd802704 	addi	r22,sp,156
  802d44:	003bd106 	br	801c8c <___vfprintf_internal_r+0x3c4>
  802d48:	d8800417 	ldw	r2,16(sp)
  802d4c:	1080004c 	andi	r2,r2,1
  802d50:	103bdb26 	beq	r2,zero,801cc0 <___vfprintf_internal_r+0x3f8>
  802d54:	003df106 	br	80251c <___vfprintf_internal_r+0xc54>
  802d58:	dc402704 	addi	r17,sp,156
  802d5c:	003d7406 	br	802330 <___vfprintf_internal_r+0xa68>
  802d60:	d9000517 	ldw	r4,20(sp)
  802d64:	2005d7fa 	srai	r2,r4,31
  802d68:	19000015 	stw	r4,0(r3)
  802d6c:	18800115 	stw	r2,4(r3)
  802d70:	003b0906 	br	801998 <___vfprintf_internal_r+0xd0>
  802d74:	00800c04 	movi	r2,48
  802d78:	d8801385 	stb	r2,78(sp)
  802d7c:	df0013c5 	stb	fp,79(sp)
  802d80:	63000094 	ori	r12,r12,2
  802d84:	00800084 	movi	r2,2
  802d88:	003c1206 	br	801dd4 <___vfprintf_internal_r+0x50c>
  802d8c:	25000017 	ldw	r20,0(r4)
  802d90:	002b883a 	mov	r21,zero
  802d94:	d8c00615 	stw	r3,24(sp)
  802d98:	003ce906 	br	802140 <___vfprintf_internal_r+0x878>
  802d9c:	25000017 	ldw	r20,0(r4)
  802da0:	002b883a 	mov	r21,zero
  802da4:	d8c00615 	stw	r3,24(sp)
  802da8:	0005883a 	mov	r2,zero
  802dac:	003c0906 	br	801dd4 <___vfprintf_internal_r+0x50c>
  802db0:	25000017 	ldw	r20,0(r4)
  802db4:	002b883a 	mov	r21,zero
  802db8:	d8c00615 	stw	r3,24(sp)
  802dbc:	00800044 	movi	r2,1
  802dc0:	003c0406 	br	801dd4 <___vfprintf_internal_r+0x50c>
  802dc4:	25000017 	ldw	r20,0(r4)
  802dc8:	d8c00615 	stw	r3,24(sp)
  802dcc:	a02bd7fa 	srai	r21,r20,31
  802dd0:	a805883a 	mov	r2,r21
  802dd4:	003cb806 	br	8020b8 <___vfprintf_internal_r+0x7f0>
  802dd8:	18800017 	ldw	r2,0(r3)
  802ddc:	d8800915 	stw	r2,36(sp)
  802de0:	18800117 	ldw	r2,4(r3)
  802de4:	d8800a15 	stw	r2,40(sp)
  802de8:	003c3006 	br	801eac <___vfprintf_internal_r+0x5e4>
  802dec:	db401343 	ldbu	r13,77(sp)
  802df0:	a83cbc26 	beq	r21,zero,8020e4 <___vfprintf_internal_r+0x81c>
  802df4:	dc402704 	addi	r17,sp,156
  802df8:	a805883a 	mov	r2,r21
  802dfc:	dc000715 	stw	r16,28(sp)
  802e00:	902b883a 	mov	r21,r18
  802e04:	8821883a 	mov	r16,r17
  802e08:	db000415 	stw	r12,16(sp)
  802e0c:	a023883a 	mov	r17,r20
  802e10:	da000e15 	stw	r8,56(sp)
  802e14:	9829883a 	mov	r20,r19
  802e18:	1025883a 	mov	r18,r2
  802e1c:	6827883a 	mov	r19,r13
  802e20:	8809883a 	mov	r4,r17
  802e24:	900b883a 	mov	r5,r18
  802e28:	01800284 	movi	r6,10
  802e2c:	000f883a 	mov	r7,zero
  802e30:	080b4d40 	call	80b4d4 <__umoddi3>
  802e34:	10800c04 	addi	r2,r2,48
  802e38:	8809883a 	mov	r4,r17
  802e3c:	900b883a 	mov	r5,r18
  802e40:	01800284 	movi	r6,10
  802e44:	000f883a 	mov	r7,zero
  802e48:	80bfffc5 	stb	r2,-1(r16)
  802e4c:	080aeb80 	call	80aeb8 <__udivdi3>
  802e50:	900d883a 	mov	r6,r18
  802e54:	880f883a 	mov	r7,r17
  802e58:	843fffc4 	addi	r16,r16,-1
  802e5c:	1023883a 	mov	r17,r2
  802e60:	1825883a 	mov	r18,r3
  802e64:	303fee1e 	bne	r6,zero,802e20 <___vfprintf_internal_r+0x1558>
  802e68:	39c002a8 	cmpgeui	r7,r7,10
  802e6c:	383fec1e 	bne	r7,zero,802e20 <___vfprintf_internal_r+0x1558>
  802e70:	8023883a 	mov	r17,r16
  802e74:	d8802704 	addi	r2,sp,156
  802e78:	981b883a 	mov	r13,r19
  802e7c:	a825883a 	mov	r18,r21
  802e80:	dc000717 	ldw	r16,28(sp)
  802e84:	da000e17 	ldw	r8,56(sp)
  802e88:	a027883a 	mov	r19,r20
  802e8c:	146bc83a 	sub	r21,r2,r17
  802e90:	003d2706 	br	802330 <___vfprintf_internal_r+0xa68>
  802e94:	0421c83a 	sub	r16,zero,r16
  802e98:	d8800615 	stw	r2,24(sp)
  802e9c:	003d4506 	br	8023b4 <___vfprintf_internal_r+0xaec>
  802ea0:	202b883a 	mov	r21,r4
  802ea4:	057f1c16 	blt	zero,r21,802b18 <___vfprintf_internal_r+0x1250>
  802ea8:	003f2506 	br	802b40 <___vfprintf_internal_r+0x1278>
  802eac:	d8800417 	ldw	r2,16(sp)
  802eb0:	1080004c 	andi	r2,r2,1
  802eb4:	103f291e 	bne	r2,zero,802b5c <___vfprintf_internal_r+0x1294>
  802eb8:	d9000817 	ldw	r4,32(sp)
  802ebc:	d9400717 	ldw	r5,28(sp)
  802ec0:	2545c83a 	sub	r2,r4,r21
  802ec4:	2179c83a 	sub	fp,r4,r5
  802ec8:	102b883a 	mov	r21,r2
  802ecc:	e0bf430e 	bge	fp,r2,802bdc <___vfprintf_internal_r+0x1314>
  802ed0:	e02b883a 	mov	r21,fp
  802ed4:	003f4106 	br	802bdc <___vfprintf_internal_r+0x1314>
  802ed8:	d9801a04 	addi	r6,sp,104
  802edc:	900b883a 	mov	r5,r18
  802ee0:	9809883a 	mov	r4,r19
  802ee4:	0808c740 	call	808c74 <__sprint_r>
  802ee8:	103b861e 	bne	r2,zero,801d04 <___vfprintf_internal_r+0x43c>
  802eec:	da001b17 	ldw	r8,108(sp)
  802ef0:	d8c01c17 	ldw	r3,112(sp)
  802ef4:	dd802904 	addi	r22,sp,164
  802ef8:	42000044 	addi	r8,r8,1
  802efc:	df002704 	addi	fp,sp,156
  802f00:	003e9706 	br	802960 <___vfprintf_internal_r+0x1098>
  802f04:	bf000043 	ldbu	fp,1(r23)
  802f08:	63000814 	ori	r12,r12,32
  802f0c:	bdc00044 	addi	r23,r23,1
  802f10:	e2c03fcc 	andi	r11,fp,255
  802f14:	5ac0201c 	xori	r11,r11,128
  802f18:	5affe004 	addi	r11,r11,-128
  802f1c:	003ab606 	br	8019f8 <___vfprintf_internal_r+0x130>
  802f20:	d9801a04 	addi	r6,sp,104
  802f24:	900b883a 	mov	r5,r18
  802f28:	9809883a 	mov	r4,r19
  802f2c:	0808c740 	call	808c74 <__sprint_r>
  802f30:	103b741e 	bne	r2,zero,801d04 <___vfprintf_internal_r+0x43c>
  802f34:	d8c01c17 	ldw	r3,112(sp)
  802f38:	dd802704 	addi	r22,sp,156
  802f3c:	003d8306 	br	80254c <___vfprintf_internal_r+0xc84>
  802f40:	002b883a 	mov	r21,zero
  802f44:	003eff06 	br	802b44 <___vfprintf_internal_r+0x127c>
  802f48:	408001f0 	cmpltui	r2,r8,7
  802f4c:	402b883a 	mov	r21,r8
  802f50:	1001a426 	beq	r2,zero,8035e4 <___vfprintf_internal_r+0x1d1c>
  802f54:	04402074 	movhi	r17,129
  802f58:	a829883a 	mov	r20,r21
  802f5c:	d8c00615 	stw	r3,24(sp)
  802f60:	8c41b304 	addi	r17,r17,1740
  802f64:	003b1d06 	br	801bdc <___vfprintf_internal_r+0x314>
  802f68:	01c02074 	movhi	r7,129
  802f6c:	a9000450 	cmplti	r4,r21,17
  802f70:	d8801b17 	ldw	r2,108(sp)
  802f74:	39c1b604 	addi	r7,r7,1752
  802f78:	20017f1e 	bne	r4,zero,803578 <___vfprintf_internal_r+0x1cb0>
  802f7c:	dc000e15 	stw	r16,56(sp)
  802f80:	07000404 	movi	fp,16
  802f84:	3821883a 	mov	r16,r7
  802f88:	00000406 	br	802f9c <___vfprintf_internal_r+0x16d4>
  802f8c:	b5800204 	addi	r22,r22,8
  802f90:	ad7ffc04 	addi	r21,r21,-16
  802f94:	a9000448 	cmpgei	r4,r21,17
  802f98:	20017526 	beq	r4,zero,803570 <___vfprintf_internal_r+0x1ca8>
  802f9c:	10800044 	addi	r2,r2,1
  802fa0:	18c00404 	addi	r3,r3,16
  802fa4:	b4000015 	stw	r16,0(r22)
  802fa8:	b7000115 	stw	fp,4(r22)
  802fac:	d8c01c15 	stw	r3,112(sp)
  802fb0:	d8801b15 	stw	r2,108(sp)
  802fb4:	11000208 	cmpgei	r4,r2,8
  802fb8:	203ff426 	beq	r4,zero,802f8c <___vfprintf_internal_r+0x16c4>
  802fbc:	d9801a04 	addi	r6,sp,104
  802fc0:	900b883a 	mov	r5,r18
  802fc4:	9809883a 	mov	r4,r19
  802fc8:	0808c740 	call	808c74 <__sprint_r>
  802fcc:	103b4d1e 	bne	r2,zero,801d04 <___vfprintf_internal_r+0x43c>
  802fd0:	d8c01c17 	ldw	r3,112(sp)
  802fd4:	d8801b17 	ldw	r2,108(sp)
  802fd8:	dd802704 	addi	r22,sp,156
  802fdc:	003fec06 	br	802f90 <___vfprintf_internal_r+0x16c8>
  802fe0:	d8800517 	ldw	r2,20(sp)
  802fe4:	18800015 	stw	r2,0(r3)
  802fe8:	003a6b06 	br	801998 <___vfprintf_internal_r+0xd0>
  802fec:	d9801a04 	addi	r6,sp,104
  802ff0:	900b883a 	mov	r5,r18
  802ff4:	9809883a 	mov	r4,r19
  802ff8:	0808c740 	call	808c74 <__sprint_r>
  802ffc:	103b411e 	bne	r2,zero,801d04 <___vfprintf_internal_r+0x43c>
  803000:	d8c01c17 	ldw	r3,112(sp)
  803004:	dd401b17 	ldw	r21,108(sp)
  803008:	df002704 	addi	fp,sp,156
  80300c:	003e3a06 	br	8028f8 <___vfprintf_internal_r+0x1030>
  803010:	d9801a04 	addi	r6,sp,104
  803014:	900b883a 	mov	r5,r18
  803018:	9809883a 	mov	r4,r19
  80301c:	0808c740 	call	808c74 <__sprint_r>
  803020:	103b381e 	bne	r2,zero,801d04 <___vfprintf_internal_r+0x43c>
  803024:	d8c01c17 	ldw	r3,112(sp)
  803028:	dd401b17 	ldw	r21,108(sp)
  80302c:	df002704 	addi	fp,sp,156
  803030:	003e2606 	br	8028cc <___vfprintf_internal_r+0x1004>
  803034:	d8801b17 	ldw	r2,108(sp)
  803038:	01002074 	movhi	r4,129
  80303c:	2101b504 	addi	r4,r4,1748
  803040:	10800044 	addi	r2,r2,1
  803044:	18c00044 	addi	r3,r3,1
  803048:	b1000015 	stw	r4,0(r22)
  80304c:	01000044 	movi	r4,1
  803050:	d8801b15 	stw	r2,108(sp)
  803054:	b1000115 	stw	r4,4(r22)
  803058:	d8c01c15 	stw	r3,112(sp)
  80305c:	10800208 	cmpgei	r2,r2,8
  803060:	103de11e 	bne	r2,zero,8027e8 <___vfprintf_internal_r+0xf20>
  803064:	b5800204 	addi	r22,r22,8
  803068:	003de706 	br	802808 <___vfprintf_internal_r+0xf40>
  80306c:	d9801a04 	addi	r6,sp,104
  803070:	900b883a 	mov	r5,r18
  803074:	9809883a 	mov	r4,r19
  803078:	da001115 	stw	r8,68(sp)
  80307c:	db400f15 	stw	r13,60(sp)
  803080:	db800e15 	stw	r14,56(sp)
  803084:	0808c740 	call	808c74 <__sprint_r>
  803088:	103b1e1e 	bne	r2,zero,801d04 <___vfprintf_internal_r+0x43c>
  80308c:	d8c01c17 	ldw	r3,112(sp)
  803090:	da001117 	ldw	r8,68(sp)
  803094:	db400f17 	ldw	r13,60(sp)
  803098:	db800e17 	ldw	r14,56(sp)
  80309c:	dd802704 	addi	r22,sp,156
  8030a0:	003adb06 	br	801c10 <___vfprintf_internal_r+0x348>
  8030a4:	8825883a 	mov	r18,r17
  8030a8:	003b1606 	br	801d04 <___vfprintf_internal_r+0x43c>
  8030ac:	d9000917 	ldw	r4,36(sp)
  8030b0:	d9400a17 	ldw	r5,40(sp)
  8030b4:	da000615 	stw	r8,24(sp)
  8030b8:	200d883a 	mov	r6,r4
  8030bc:	280f883a 	mov	r7,r5
  8030c0:	db000415 	stw	r12,16(sp)
  8030c4:	080da8c0 	call	80da8c <__unorddf2>
  8030c8:	db000417 	ldw	r12,16(sp)
  8030cc:	da000617 	ldw	r8,24(sp)
  8030d0:	1002091e 	bne	r2,zero,8038f8 <___vfprintf_internal_r+0x2030>
  8030d4:	057ff7c4 	movi	r21,-33
  8030d8:	40bfffe0 	cmpeqi	r2,r8,-1
  8030dc:	e56a703a 	and	r21,fp,r21
  8030e0:	1001ab1e 	bne	r2,zero,803790 <___vfprintf_internal_r+0x1ec8>
  8030e4:	a88011d8 	cmpnei	r2,r21,71
  8030e8:	10015726 	beq	r2,zero,803648 <___vfprintf_internal_r+0x1d80>
  8030ec:	60804014 	ori	r2,r12,256
  8030f0:	d8800415 	stw	r2,16(sp)
  8030f4:	d8800a17 	ldw	r2,40(sp)
  8030f8:	10012d16 	blt	r2,zero,8035b0 <___vfprintf_internal_r+0x1ce8>
  8030fc:	dd000a17 	ldw	r20,40(sp)
  803100:	d8000605 	stb	zero,24(sp)
  803104:	e08019a0 	cmpeqi	r2,fp,102
  803108:	d8800f15 	stw	r2,60(sp)
  80310c:	1000c31e 	bne	r2,zero,80341c <___vfprintf_internal_r+0x1b54>
  803110:	e08011a0 	cmpeqi	r2,fp,70
  803114:	1000c11e 	bne	r2,zero,80341c <___vfprintf_internal_r+0x1b54>
  803118:	a8801158 	cmpnei	r2,r21,69
  80311c:	10016226 	beq	r2,zero,8036a8 <___vfprintf_internal_r+0x1de0>
  803120:	d8801804 	addi	r2,sp,96
  803124:	d8800315 	stw	r2,12(sp)
  803128:	d9400917 	ldw	r5,36(sp)
  80312c:	d8801504 	addi	r2,sp,84
  803130:	d8800215 	stw	r2,8(sp)
  803134:	d8801404 	addi	r2,sp,80
  803138:	da000015 	stw	r8,0(sp)
  80313c:	9809883a 	mov	r4,r19
  803140:	d8800115 	stw	r2,4(sp)
  803144:	01c00084 	movi	r7,2
  803148:	a00d883a 	mov	r6,r20
  80314c:	db000815 	stw	r12,32(sp)
  803150:	da000715 	stw	r8,28(sp)
  803154:	0803e0c0 	call	803e0c <_dtoa_r>
  803158:	da000717 	ldw	r8,28(sp)
  80315c:	e10019d8 	cmpnei	r4,fp,103
  803160:	db000817 	ldw	r12,32(sp)
  803164:	1023883a 	mov	r17,r2
  803168:	4007883a 	mov	r3,r8
  80316c:	2001621e 	bne	r4,zero,8036f8 <___vfprintf_internal_r+0x1e30>
  803170:	6080004c 	andi	r2,r12,1
  803174:	1001621e 	bne	r2,zero,803700 <___vfprintf_internal_r+0x1e38>
  803178:	d8801417 	ldw	r2,80(sp)
  80317c:	ad4011e0 	cmpeqi	r21,r21,71
  803180:	d8800715 	stw	r2,28(sp)
  803184:	d8801817 	ldw	r2,96(sp)
  803188:	1445c83a 	sub	r2,r2,r17
  80318c:	d8800815 	stw	r2,32(sp)
  803190:	a8000526 	beq	r21,zero,8031a8 <___vfprintf_internal_r+0x18e0>
  803194:	d8c00717 	ldw	r3,28(sp)
  803198:	18bfff50 	cmplti	r2,r3,-3
  80319c:	1000011e 	bne	r2,zero,8031a4 <___vfprintf_internal_r+0x18dc>
  8031a0:	40c1670e 	bge	r8,r3,803740 <___vfprintf_internal_r+0x1e78>
  8031a4:	e73fff84 	addi	fp,fp,-2
  8031a8:	d8800717 	ldw	r2,28(sp)
  8031ac:	df001645 	stb	fp,89(sp)
  8031b0:	157fffc4 	addi	r21,r2,-1
  8031b4:	dd401415 	stw	r21,80(sp)
  8031b8:	a801c316 	blt	r21,zero,8038c8 <___vfprintf_internal_r+0x2000>
  8031bc:	00800ac4 	movi	r2,43
  8031c0:	d8801685 	stb	r2,90(sp)
  8031c4:	a8800290 	cmplti	r2,r21,10
  8031c8:	1001b81e 	bne	r2,zero,8038ac <___vfprintf_internal_r+0x1fe4>
  8031cc:	d98019c4 	addi	r6,sp,103
  8031d0:	9029883a 	mov	r20,r18
  8031d4:	dc400715 	stw	r17,28(sp)
  8031d8:	8025883a 	mov	r18,r16
  8031dc:	db000f15 	stw	r12,60(sp)
  8031e0:	3021883a 	mov	r16,r6
  8031e4:	a809883a 	mov	r4,r21
  8031e8:	01400284 	movi	r5,10
  8031ec:	080bb180 	call	80bb18 <__modsi3>
  8031f0:	10800c04 	addi	r2,r2,48
  8031f4:	a809883a 	mov	r4,r21
  8031f8:	80bfffc5 	stb	r2,-1(r16)
  8031fc:	01400284 	movi	r5,10
  803200:	080ba980 	call	80ba98 <__divsi3>
  803204:	a9001908 	cmpgei	r4,r21,100
  803208:	8023883a 	mov	r17,r16
  80320c:	102b883a 	mov	r21,r2
  803210:	843fffc4 	addi	r16,r16,-1
  803214:	203ff31e 	bne	r4,zero,8031e4 <___vfprintf_internal_r+0x191c>
  803218:	800d883a 	mov	r6,r16
  80321c:	11000c04 	addi	r4,r2,48
  803220:	9021883a 	mov	r16,r18
  803224:	a025883a 	mov	r18,r20
  803228:	8829883a 	mov	r20,r17
  80322c:	a0bfff84 	addi	r2,r20,-2
  803230:	313fffc5 	stb	r4,-1(r6)
  803234:	d8c019c4 	addi	r3,sp,103
  803238:	db000f17 	ldw	r12,60(sp)
  80323c:	dc400717 	ldw	r17,28(sp)
  803240:	10c1cd2e 	bgeu	r2,r3,803978 <___vfprintf_internal_r+0x20b0>
  803244:	d8c016c4 	addi	r3,sp,91
  803248:	00000106 	br	803250 <___vfprintf_internal_r+0x1988>
  80324c:	11000003 	ldbu	r4,0(r2)
  803250:	19000005 	stb	r4,0(r3)
  803254:	10800044 	addi	r2,r2,1
  803258:	d90019c4 	addi	r4,sp,103
  80325c:	18c00044 	addi	r3,r3,1
  803260:	113ffa1e 	bne	r2,r4,80324c <___vfprintf_internal_r+0x1984>
  803264:	d8801a44 	addi	r2,sp,105
  803268:	d8c016c4 	addi	r3,sp,91
  80326c:	1505c83a 	sub	r2,r2,r20
  803270:	1885883a 	add	r2,r3,r2
  803274:	d8c01644 	addi	r3,sp,89
  803278:	10c5c83a 	sub	r2,r2,r3
  80327c:	d8801015 	stw	r2,64(sp)
  803280:	d8c00817 	ldw	r3,32(sp)
  803284:	d9001017 	ldw	r4,64(sp)
  803288:	18800088 	cmpgei	r2,r3,2
  80328c:	20eb883a 	add	r21,r4,r3
  803290:	10019226 	beq	r2,zero,8038dc <___vfprintf_internal_r+0x2014>
  803294:	d8800b17 	ldw	r2,44(sp)
  803298:	a8ab883a 	add	r21,r21,r2
  80329c:	a829883a 	mov	r20,r21
  8032a0:	a800010e 	bge	r21,zero,8032a8 <___vfprintf_internal_r+0x19e0>
  8032a4:	0029883a 	mov	r20,zero
  8032a8:	d8000715 	stw	zero,28(sp)
  8032ac:	00008e06 	br	8034e8 <___vfprintf_internal_r+0x1c20>
  8032b0:	880f883a 	mov	r7,r17
  8032b4:	10800044 	addi	r2,r2,1
  8032b8:	1d47883a 	add	r3,r3,r21
  8032bc:	b1c00015 	stw	r7,0(r22)
  8032c0:	003a7906 	br	801ca8 <___vfprintf_internal_r+0x3e0>
  8032c4:	d9801a04 	addi	r6,sp,104
  8032c8:	900b883a 	mov	r5,r18
  8032cc:	9809883a 	mov	r4,r19
  8032d0:	0808c740 	call	808c74 <__sprint_r>
  8032d4:	103a8b1e 	bne	r2,zero,801d04 <___vfprintf_internal_r+0x43c>
  8032d8:	d8c01c17 	ldw	r3,112(sp)
  8032dc:	dd802704 	addi	r22,sp,156
  8032e0:	003c8b06 	br	802510 <___vfprintf_internal_r+0xc48>
  8032e4:	d9801a04 	addi	r6,sp,104
  8032e8:	900b883a 	mov	r5,r18
  8032ec:	9809883a 	mov	r4,r19
  8032f0:	da000e15 	stw	r8,56(sp)
  8032f4:	0808c740 	call	808c74 <__sprint_r>
  8032f8:	103a821e 	bne	r2,zero,801d04 <___vfprintf_internal_r+0x43c>
  8032fc:	d8c01c17 	ldw	r3,112(sp)
  803300:	da000e17 	ldw	r8,56(sp)
  803304:	dd802704 	addi	r22,sp,156
  803308:	003a5e06 	br	801c84 <___vfprintf_internal_r+0x3bc>
  80330c:	8809883a 	mov	r4,r17
  803310:	db000415 	stw	r12,16(sp)
  803314:	d8c00615 	stw	r3,24(sp)
  803318:	08018300 	call	801830 <strlen>
  80331c:	db000417 	ldw	r12,16(sp)
  803320:	102b883a 	mov	r21,r2
  803324:	1029883a 	mov	r20,r2
  803328:	003a2c06 	br	801bdc <___vfprintf_internal_r+0x314>
  80332c:	d8800d17 	ldw	r2,52(sp)
  803330:	d9000b17 	ldw	r4,44(sp)
  803334:	b0800015 	stw	r2,0(r22)
  803338:	d8801b17 	ldw	r2,108(sp)
  80333c:	20c7883a 	add	r3,r4,r3
  803340:	b1000115 	stw	r4,4(r22)
  803344:	10800044 	addi	r2,r2,1
  803348:	d8c01c15 	stw	r3,112(sp)
  80334c:	d8801b15 	stw	r2,108(sp)
  803350:	11000208 	cmpgei	r4,r2,8
  803354:	2000bf1e 	bne	r4,zero,803654 <___vfprintf_internal_r+0x1d8c>
  803358:	b5800204 	addi	r22,r22,8
  80335c:	283d3c0e 	bge	r5,zero,802850 <___vfprintf_internal_r+0xf88>
  803360:	01c02074 	movhi	r7,129
  803364:	293ffc08 	cmpgei	r4,r5,-16
  803368:	39c1b604 	addi	r7,r7,1752
  80336c:	0179c83a 	sub	fp,zero,r5
  803370:	2001361e 	bne	r4,zero,80384c <___vfprintf_internal_r+0x1f84>
  803374:	dc000715 	stw	r16,28(sp)
  803378:	05400404 	movi	r21,16
  80337c:	9021883a 	mov	r16,r18
  803380:	3825883a 	mov	r18,r7
  803384:	00000406 	br	803398 <___vfprintf_internal_r+0x1ad0>
  803388:	b5800204 	addi	r22,r22,8
  80338c:	e73ffc04 	addi	fp,fp,-16
  803390:	e1800448 	cmpgei	r6,fp,17
  803394:	30012a26 	beq	r6,zero,803840 <___vfprintf_internal_r+0x1f78>
  803398:	10800044 	addi	r2,r2,1
  80339c:	18c00404 	addi	r3,r3,16
  8033a0:	b4800015 	stw	r18,0(r22)
  8033a4:	b5400115 	stw	r21,4(r22)
  8033a8:	d8c01c15 	stw	r3,112(sp)
  8033ac:	d8801b15 	stw	r2,108(sp)
  8033b0:	11800208 	cmpgei	r6,r2,8
  8033b4:	303ff426 	beq	r6,zero,803388 <___vfprintf_internal_r+0x1ac0>
  8033b8:	d9801a04 	addi	r6,sp,104
  8033bc:	800b883a 	mov	r5,r16
  8033c0:	9809883a 	mov	r4,r19
  8033c4:	0808c740 	call	808c74 <__sprint_r>
  8033c8:	10015f1e 	bne	r2,zero,803948 <___vfprintf_internal_r+0x2080>
  8033cc:	d8c01c17 	ldw	r3,112(sp)
  8033d0:	d8801b17 	ldw	r2,108(sp)
  8033d4:	dd802704 	addi	r22,sp,156
  8033d8:	003fec06 	br	80338c <___vfprintf_internal_r+0x1ac4>
  8033dc:	800f883a 	mov	r7,r16
  8033e0:	dc000717 	ldw	r16,28(sp)
  8033e4:	8817883a 	mov	r11,r17
  8033e8:	aa000044 	addi	r8,r21,1
  8033ec:	e0800204 	addi	r2,fp,8
  8033f0:	1ac7883a 	add	r3,r3,r11
  8033f4:	e1c00015 	stw	r7,0(fp)
  8033f8:	e2c00115 	stw	r11,4(fp)
  8033fc:	d8c01c15 	stw	r3,112(sp)
  803400:	da001b15 	stw	r8,108(sp)
  803404:	41000208 	cmpgei	r4,r8,8
  803408:	203eb31e 	bne	r4,zero,802ed8 <___vfprintf_internal_r+0x1610>
  80340c:	42000044 	addi	r8,r8,1
  803410:	15800204 	addi	r22,r2,8
  803414:	1039883a 	mov	fp,r2
  803418:	003d5106 	br	802960 <___vfprintf_internal_r+0x1098>
  80341c:	d8801804 	addi	r2,sp,96
  803420:	d8800315 	stw	r2,12(sp)
  803424:	d9400917 	ldw	r5,36(sp)
  803428:	d8801504 	addi	r2,sp,84
  80342c:	d8800215 	stw	r2,8(sp)
  803430:	d8801404 	addi	r2,sp,80
  803434:	da000015 	stw	r8,0(sp)
  803438:	d8800115 	stw	r2,4(sp)
  80343c:	01c000c4 	movi	r7,3
  803440:	a00d883a 	mov	r6,r20
  803444:	9809883a 	mov	r4,r19
  803448:	db000815 	stw	r12,32(sp)
  80344c:	da000715 	stw	r8,28(sp)
  803450:	0803e0c0 	call	803e0c <_dtoa_r>
  803454:	da000717 	ldw	r8,28(sp)
  803458:	1023883a 	mov	r17,r2
  80345c:	db000817 	ldw	r12,32(sp)
  803460:	1207883a 	add	r3,r2,r8
  803464:	88800007 	ldb	r2,0(r17)
  803468:	10800c20 	cmpeqi	r2,r2,48
  80346c:	1000661e 	bne	r2,zero,803608 <___vfprintf_internal_r+0x1d40>
  803470:	d8801417 	ldw	r2,80(sp)
  803474:	1893883a 	add	r9,r3,r2
  803478:	d9000917 	ldw	r4,36(sp)
  80347c:	000d883a 	mov	r6,zero
  803480:	000f883a 	mov	r7,zero
  803484:	a00b883a 	mov	r5,r20
  803488:	da401115 	stw	r9,68(sp)
  80348c:	da000815 	stw	r8,32(sp)
  803490:	db000715 	stw	r12,28(sp)
  803494:	080cef80 	call	80cef8 <__eqdf2>
  803498:	db000717 	ldw	r12,28(sp)
  80349c:	da000817 	ldw	r8,32(sp)
  8034a0:	da401117 	ldw	r9,68(sp)
  8034a4:	1000981e 	bne	r2,zero,803708 <___vfprintf_internal_r+0x1e40>
  8034a8:	4805883a 	mov	r2,r9
  8034ac:	d8c01417 	ldw	r3,80(sp)
  8034b0:	1445c83a 	sub	r2,r2,r17
  8034b4:	ad4011d8 	cmpnei	r21,r21,71
  8034b8:	d8c00715 	stw	r3,28(sp)
  8034bc:	d8800815 	stw	r2,32(sp)
  8034c0:	a83f3426 	beq	r21,zero,803194 <___vfprintf_internal_r+0x18cc>
  8034c4:	d8800f17 	ldw	r2,60(sp)
  8034c8:	103f3726 	beq	r2,zero,8031a8 <___vfprintf_internal_r+0x18e0>
  8034cc:	d8c00717 	ldw	r3,28(sp)
  8034d0:	6080004c 	andi	r2,r12,1
  8034d4:	1204b03a 	or	r2,r2,r8
  8034d8:	00c1130e 	bge	zero,r3,803928 <___vfprintf_internal_r+0x2060>
  8034dc:	10010e1e 	bne	r2,zero,803918 <___vfprintf_internal_r+0x2050>
  8034e0:	dd400717 	ldw	r21,28(sp)
  8034e4:	a829883a 	mov	r20,r21
  8034e8:	d8800607 	ldb	r2,24(sp)
  8034ec:	10008f26 	beq	r2,zero,80372c <___vfprintf_internal_r+0x1e64>
  8034f0:	00800b44 	movi	r2,45
  8034f4:	d8801345 	stb	r2,77(sp)
  8034f8:	d8800e17 	ldw	r2,56(sp)
  8034fc:	0011883a 	mov	r8,zero
  803500:	d8800615 	stw	r2,24(sp)
  803504:	003b9206 	br	802350 <___vfprintf_internal_r+0xa88>
  803508:	04402074 	movhi	r17,129
  80350c:	8c41a504 	addi	r17,r17,1684
  803510:	003a8b06 	br	801f40 <___vfprintf_internal_r+0x678>
  803514:	d8800617 	ldw	r2,24(sp)
  803518:	d8c00615 	stw	r3,24(sp)
  80351c:	15000017 	ldw	r20,0(r2)
  803520:	a02bd7fa 	srai	r21,r20,31
  803524:	a805883a 	mov	r2,r21
  803528:	003ae306 	br	8020b8 <___vfprintf_internal_r+0x7f0>
  80352c:	d8800617 	ldw	r2,24(sp)
  803530:	002b883a 	mov	r21,zero
  803534:	d8c00615 	stw	r3,24(sp)
  803538:	15000017 	ldw	r20,0(r2)
  80353c:	0005883a 	mov	r2,zero
  803540:	003a2406 	br	801dd4 <___vfprintf_internal_r+0x50c>
  803544:	d8800617 	ldw	r2,24(sp)
  803548:	002b883a 	mov	r21,zero
  80354c:	d8c00615 	stw	r3,24(sp)
  803550:	15000017 	ldw	r20,0(r2)
  803554:	00800044 	movi	r2,1
  803558:	003a1e06 	br	801dd4 <___vfprintf_internal_r+0x50c>
  80355c:	d8800617 	ldw	r2,24(sp)
  803560:	002b883a 	mov	r21,zero
  803564:	d8c00615 	stw	r3,24(sp)
  803568:	15000017 	ldw	r20,0(r2)
  80356c:	003af406 	br	802140 <___vfprintf_internal_r+0x878>
  803570:	800f883a 	mov	r7,r16
  803574:	dc000e17 	ldw	r16,56(sp)
  803578:	10800044 	addi	r2,r2,1
  80357c:	1d47883a 	add	r3,r3,r21
  803580:	d8801b15 	stw	r2,108(sp)
  803584:	b1c00015 	stw	r7,0(r22)
  803588:	b5400115 	stw	r21,4(r22)
  80358c:	d8c01c15 	stw	r3,112(sp)
  803590:	10800208 	cmpgei	r2,r2,8
  803594:	10003a1e 	bne	r2,zero,803680 <___vfprintf_internal_r+0x1db8>
  803598:	b5800204 	addi	r22,r22,8
  80359c:	003d6c06 	br	802b50 <___vfprintf_internal_r+0x1288>
  8035a0:	00800b44 	movi	r2,45
  8035a4:	d8801345 	stb	r2,77(sp)
  8035a8:	03400b44 	movi	r13,45
  8035ac:	003a6006 	br	801f30 <___vfprintf_internal_r+0x668>
  8035b0:	1520003c 	xorhi	r20,r2,32768
  8035b4:	00800b44 	movi	r2,45
  8035b8:	d8800605 	stb	r2,24(sp)
  8035bc:	003ed106 	br	803104 <___vfprintf_internal_r+0x183c>
  8035c0:	d9801a04 	addi	r6,sp,104
  8035c4:	900b883a 	mov	r5,r18
  8035c8:	9809883a 	mov	r4,r19
  8035cc:	0808c740 	call	808c74 <__sprint_r>
  8035d0:	1039cc1e 	bne	r2,zero,801d04 <___vfprintf_internal_r+0x43c>
  8035d4:	dd401417 	ldw	r21,80(sp)
  8035d8:	d8c01c17 	ldw	r3,112(sp)
  8035dc:	dd802704 	addi	r22,sp,156
  8035e0:	003d6a06 	br	802b8c <___vfprintf_internal_r+0x12c4>
  8035e4:	05400184 	movi	r21,6
  8035e8:	003e5a06 	br	802f54 <___vfprintf_internal_r+0x168c>
  8035ec:	d9801a04 	addi	r6,sp,104
  8035f0:	900b883a 	mov	r5,r18
  8035f4:	9809883a 	mov	r4,r19
  8035f8:	0808c740 	call	808c74 <__sprint_r>
  8035fc:	0039c106 	br	801d04 <___vfprintf_internal_r+0x43c>
  803600:	d9401345 	stb	r5,77(sp)
  803604:	00396f06 	br	801bc4 <___vfprintf_internal_r+0x2fc>
  803608:	d9000917 	ldw	r4,36(sp)
  80360c:	000d883a 	mov	r6,zero
  803610:	000f883a 	mov	r7,zero
  803614:	a00b883a 	mov	r5,r20
  803618:	d8c01115 	stw	r3,68(sp)
  80361c:	da000815 	stw	r8,32(sp)
  803620:	db000715 	stw	r12,28(sp)
  803624:	080cef80 	call	80cef8 <__eqdf2>
  803628:	db000717 	ldw	r12,28(sp)
  80362c:	da000817 	ldw	r8,32(sp)
  803630:	d8c01117 	ldw	r3,68(sp)
  803634:	103f8e26 	beq	r2,zero,803470 <___vfprintf_internal_r+0x1ba8>
  803638:	00800044 	movi	r2,1
  80363c:	1205c83a 	sub	r2,r2,r8
  803640:	d8801415 	stw	r2,80(sp)
  803644:	003f8b06 	br	803474 <___vfprintf_internal_r+0x1bac>
  803648:	403ea81e 	bne	r8,zero,8030ec <___vfprintf_internal_r+0x1824>
  80364c:	02000044 	movi	r8,1
  803650:	003ea606 	br	8030ec <___vfprintf_internal_r+0x1824>
  803654:	d9801a04 	addi	r6,sp,104
  803658:	900b883a 	mov	r5,r18
  80365c:	9809883a 	mov	r4,r19
  803660:	0808c740 	call	808c74 <__sprint_r>
  803664:	1039a71e 	bne	r2,zero,801d04 <___vfprintf_internal_r+0x43c>
  803668:	d9401417 	ldw	r5,80(sp)
  80366c:	d8c01c17 	ldw	r3,112(sp)
  803670:	d8801b17 	ldw	r2,108(sp)
  803674:	dd802704 	addi	r22,sp,156
  803678:	283c750e 	bge	r5,zero,802850 <___vfprintf_internal_r+0xf88>
  80367c:	003f3806 	br	803360 <___vfprintf_internal_r+0x1a98>
  803680:	d9801a04 	addi	r6,sp,104
  803684:	900b883a 	mov	r5,r18
  803688:	9809883a 	mov	r4,r19
  80368c:	0808c740 	call	808c74 <__sprint_r>
  803690:	10399c1e 	bne	r2,zero,801d04 <___vfprintf_internal_r+0x43c>
  803694:	d8c01c17 	ldw	r3,112(sp)
  803698:	dd802704 	addi	r22,sp,156
  80369c:	003d2c06 	br	802b50 <___vfprintf_internal_r+0x1288>
  8036a0:	db000417 	ldw	r12,16(sp)
  8036a4:	003a9106 	br	8020ec <___vfprintf_internal_r+0x824>
  8036a8:	d8801804 	addi	r2,sp,96
  8036ac:	d8800315 	stw	r2,12(sp)
  8036b0:	d9400917 	ldw	r5,36(sp)
  8036b4:	d8801504 	addi	r2,sp,84
  8036b8:	40c00044 	addi	r3,r8,1
  8036bc:	d8800215 	stw	r2,8(sp)
  8036c0:	d8801404 	addi	r2,sp,80
  8036c4:	d8c00015 	stw	r3,0(sp)
  8036c8:	d8800115 	stw	r2,4(sp)
  8036cc:	01c00084 	movi	r7,2
  8036d0:	a00d883a 	mov	r6,r20
  8036d4:	9809883a 	mov	r4,r19
  8036d8:	db001115 	stw	r12,68(sp)
  8036dc:	da000815 	stw	r8,32(sp)
  8036e0:	d8c00715 	stw	r3,28(sp)
  8036e4:	0803e0c0 	call	803e0c <_dtoa_r>
  8036e8:	d8c00717 	ldw	r3,28(sp)
  8036ec:	da000817 	ldw	r8,32(sp)
  8036f0:	db001117 	ldw	r12,68(sp)
  8036f4:	1023883a 	mov	r17,r2
  8036f8:	e08011d8 	cmpnei	r2,fp,71
  8036fc:	103e9c26 	beq	r2,zero,803170 <___vfprintf_internal_r+0x18a8>
  803700:	88d3883a 	add	r9,r17,r3
  803704:	003f5c06 	br	803478 <___vfprintf_internal_r+0x1bb0>
  803708:	d8801817 	ldw	r2,96(sp)
  80370c:	127f672e 	bgeu	r2,r9,8034ac <___vfprintf_internal_r+0x1be4>
  803710:	01000c04 	movi	r4,48
  803714:	10c00044 	addi	r3,r2,1
  803718:	d8c01815 	stw	r3,96(sp)
  80371c:	11000005 	stb	r4,0(r2)
  803720:	d8801817 	ldw	r2,96(sp)
  803724:	127ffb36 	bltu	r2,r9,803714 <___vfprintf_internal_r+0x1e4c>
  803728:	003f6006 	br	8034ac <___vfprintf_internal_r+0x1be4>
  80372c:	d8800e17 	ldw	r2,56(sp)
  803730:	db401343 	ldbu	r13,77(sp)
  803734:	0011883a 	mov	r8,zero
  803738:	d8800615 	stw	r2,24(sp)
  80373c:	003b0006 	br	802340 <___vfprintf_internal_r+0xa78>
  803740:	d8800717 	ldw	r2,28(sp)
  803744:	d8c00817 	ldw	r3,32(sp)
  803748:	10c02216 	blt	r2,r3,8037d4 <___vfprintf_internal_r+0x1f0c>
  80374c:	6300004c 	andi	r12,r12,1
  803750:	60004f1e 	bne	r12,zero,803890 <___vfprintf_internal_r+0x1fc8>
  803754:	1029883a 	mov	r20,r2
  803758:	1000010e 	bge	r2,zero,803760 <___vfprintf_internal_r+0x1e98>
  80375c:	0029883a 	mov	r20,zero
  803760:	dd400717 	ldw	r21,28(sp)
  803764:	070019c4 	movi	fp,103
  803768:	003f5f06 	br	8034e8 <___vfprintf_internal_r+0x1c20>
  80376c:	d9801a04 	addi	r6,sp,104
  803770:	900b883a 	mov	r5,r18
  803774:	9809883a 	mov	r4,r19
  803778:	0808c740 	call	808c74 <__sprint_r>
  80377c:	1039611e 	bne	r2,zero,801d04 <___vfprintf_internal_r+0x43c>
  803780:	d8c01c17 	ldw	r3,112(sp)
  803784:	dd802704 	addi	r22,sp,156
  803788:	a83cee0e 	bge	r21,zero,802b44 <___vfprintf_internal_r+0x127c>
  80378c:	003dec06 	br	802f40 <___vfprintf_internal_r+0x1678>
  803790:	02000184 	movi	r8,6
  803794:	003e5506 	br	8030ec <___vfprintf_internal_r+0x1824>
  803798:	d9801a04 	addi	r6,sp,104
  80379c:	900b883a 	mov	r5,r18
  8037a0:	9809883a 	mov	r4,r19
  8037a4:	0808c740 	call	808c74 <__sprint_r>
  8037a8:	1039561e 	bne	r2,zero,801d04 <___vfprintf_internal_r+0x43c>
  8037ac:	d8801417 	ldw	r2,80(sp)
  8037b0:	d9000817 	ldw	r4,32(sp)
  8037b4:	d8c01c17 	ldw	r3,112(sp)
  8037b8:	dd802704 	addi	r22,sp,156
  8037bc:	2085c83a 	sub	r2,r4,r2
  8037c0:	003d0606 	br	802bdc <___vfprintf_internal_r+0x1314>
  8037c4:	4029883a 	mov	r20,r8
  8037c8:	d8c00615 	stw	r3,24(sp)
  8037cc:	402b883a 	mov	r21,r8
  8037d0:	00390206 	br	801bdc <___vfprintf_internal_r+0x314>
  8037d4:	d8800817 	ldw	r2,32(sp)
  8037d8:	d8c00b17 	ldw	r3,44(sp)
  8037dc:	10eb883a 	add	r21,r2,r3
  8037e0:	d8800717 	ldw	r2,28(sp)
  8037e4:	00800316 	blt	zero,r2,8037f4 <___vfprintf_internal_r+0x1f2c>
  8037e8:	d8800717 	ldw	r2,28(sp)
  8037ec:	a8abc83a 	sub	r21,r21,r2
  8037f0:	ad400044 	addi	r21,r21,1
  8037f4:	a829883a 	mov	r20,r21
  8037f8:	a8002a16 	blt	r21,zero,8038a4 <___vfprintf_internal_r+0x1fdc>
  8037fc:	070019c4 	movi	fp,103
  803800:	003f3906 	br	8034e8 <___vfprintf_internal_r+0x1c20>
  803804:	d9401345 	stb	r5,77(sp)
  803808:	003a2306 	br	802098 <___vfprintf_internal_r+0x7d0>
  80380c:	d9401345 	stb	r5,77(sp)
  803810:	003b1806 	br	802474 <___vfprintf_internal_r+0xbac>
  803814:	d9401345 	stb	r5,77(sp)
  803818:	003a8e06 	br	802254 <___vfprintf_internal_r+0x98c>
  80381c:	d9401345 	stb	r5,77(sp)
  803820:	003a3d06 	br	802118 <___vfprintf_internal_r+0x850>
  803824:	d9401345 	stb	r5,77(sp)
  803828:	003a7606 	br	802204 <___vfprintf_internal_r+0x93c>
  80382c:	d9401345 	stb	r5,77(sp)
  803830:	00399406 	br	801e84 <___vfprintf_internal_r+0x5bc>
  803834:	00bfffc4 	movi	r2,-1
  803838:	d8800515 	stw	r2,20(sp)
  80383c:	00393406 	br	801d10 <___vfprintf_internal_r+0x448>
  803840:	900f883a 	mov	r7,r18
  803844:	8025883a 	mov	r18,r16
  803848:	dc000717 	ldw	r16,28(sp)
  80384c:	10800044 	addi	r2,r2,1
  803850:	1f07883a 	add	r3,r3,fp
  803854:	b1c00015 	stw	r7,0(r22)
  803858:	b7000115 	stw	fp,4(r22)
  80385c:	d8c01c15 	stw	r3,112(sp)
  803860:	d8801b15 	stw	r2,108(sp)
  803864:	11000208 	cmpgei	r4,r2,8
  803868:	203bf826 	beq	r4,zero,80284c <___vfprintf_internal_r+0xf84>
  80386c:	d9801a04 	addi	r6,sp,104
  803870:	900b883a 	mov	r5,r18
  803874:	9809883a 	mov	r4,r19
  803878:	0808c740 	call	808c74 <__sprint_r>
  80387c:	1039211e 	bne	r2,zero,801d04 <___vfprintf_internal_r+0x43c>
  803880:	d8c01c17 	ldw	r3,112(sp)
  803884:	d8801b17 	ldw	r2,108(sp)
  803888:	dd802704 	addi	r22,sp,156
  80388c:	003bf006 	br	802850 <___vfprintf_internal_r+0xf88>
  803890:	d8800717 	ldw	r2,28(sp)
  803894:	d8c00b17 	ldw	r3,44(sp)
  803898:	10eb883a 	add	r21,r2,r3
  80389c:	a829883a 	mov	r20,r21
  8038a0:	a83fd60e 	bge	r21,zero,8037fc <___vfprintf_internal_r+0x1f34>
  8038a4:	0029883a 	mov	r20,zero
  8038a8:	003fd406 	br	8037fc <___vfprintf_internal_r+0x1f34>
  8038ac:	00800c04 	movi	r2,48
  8038b0:	ad400c04 	addi	r21,r21,48
  8038b4:	d88016c5 	stb	r2,91(sp)
  8038b8:	00800104 	movi	r2,4
  8038bc:	dd401705 	stb	r21,92(sp)
  8038c0:	d8801015 	stw	r2,64(sp)
  8038c4:	003e6e06 	br	803280 <___vfprintf_internal_r+0x19b8>
  8038c8:	05400044 	movi	r21,1
  8038cc:	a8abc83a 	sub	r21,r21,r2
  8038d0:	00800b44 	movi	r2,45
  8038d4:	d8801685 	stb	r2,90(sp)
  8038d8:	003e3a06 	br	8031c4 <___vfprintf_internal_r+0x18fc>
  8038dc:	6080004c 	andi	r2,r12,1
  8038e0:	d8800715 	stw	r2,28(sp)
  8038e4:	103e6b1e 	bne	r2,zero,803294 <___vfprintf_internal_r+0x19cc>
  8038e8:	a829883a 	mov	r20,r21
  8038ec:	a83efe0e 	bge	r21,zero,8034e8 <___vfprintf_internal_r+0x1c20>
  8038f0:	0029883a 	mov	r20,zero
  8038f4:	003efc06 	br	8034e8 <___vfprintf_internal_r+0x1c20>
  8038f8:	d8800a17 	ldw	r2,40(sp)
  8038fc:	10001a16 	blt	r2,zero,803968 <___vfprintf_internal_r+0x20a0>
  803900:	db401343 	ldbu	r13,77(sp)
  803904:	e0801210 	cmplti	r2,fp,72
  803908:	1000141e 	bne	r2,zero,80395c <___vfprintf_internal_r+0x2094>
  80390c:	04402074 	movhi	r17,129
  803910:	8c41a804 	addi	r17,r17,1696
  803914:	00398a06 	br	801f40 <___vfprintf_internal_r+0x678>
  803918:	d8800b17 	ldw	r2,44(sp)
  80391c:	18ab883a 	add	r21,r3,r2
  803920:	aa2b883a 	add	r21,r21,r8
  803924:	003ff006 	br	8038e8 <___vfprintf_internal_r+0x2020>
  803928:	1000031e 	bne	r2,zero,803938 <___vfprintf_internal_r+0x2070>
  80392c:	05000044 	movi	r20,1
  803930:	05400044 	movi	r21,1
  803934:	003eec06 	br	8034e8 <___vfprintf_internal_r+0x1c20>
  803938:	d8800b17 	ldw	r2,44(sp)
  80393c:	15400044 	addi	r21,r2,1
  803940:	aa2b883a 	add	r21,r21,r8
  803944:	003fe806 	br	8038e8 <___vfprintf_internal_r+0x2020>
  803948:	8025883a 	mov	r18,r16
  80394c:	0038ed06 	br	801d04 <___vfprintf_internal_r+0x43c>
  803950:	b005883a 	mov	r2,r22
  803954:	39c1b604 	addi	r7,r7,1752
  803958:	003ea506 	br	8033f0 <___vfprintf_internal_r+0x1b28>
  80395c:	04402074 	movhi	r17,129
  803960:	8c41a704 	addi	r17,r17,1692
  803964:	00397606 	br	801f40 <___vfprintf_internal_r+0x678>
  803968:	00800b44 	movi	r2,45
  80396c:	d8801345 	stb	r2,77(sp)
  803970:	03400b44 	movi	r13,45
  803974:	003fe306 	br	803904 <___vfprintf_internal_r+0x203c>
  803978:	00800084 	movi	r2,2
  80397c:	d8801015 	stw	r2,64(sp)
  803980:	003e3f06 	br	803280 <___vfprintf_internal_r+0x19b8>
  803984:	d8c00617 	ldw	r3,24(sp)
  803988:	1a000017 	ldw	r8,0(r3)
  80398c:	18c00104 	addi	r3,r3,4
  803990:	4000010e 	bge	r8,zero,803998 <___vfprintf_internal_r+0x20d0>
  803994:	023fffc4 	movi	r8,-1
  803998:	bf000043 	ldbu	fp,1(r23)
  80399c:	d8c00615 	stw	r3,24(sp)
  8039a0:	102f883a 	mov	r23,r2
  8039a4:	e2c03fcc 	andi	r11,fp,255
  8039a8:	5ac0201c 	xori	r11,r11,128
  8039ac:	5affe004 	addi	r11,r11,-128
  8039b0:	00381106 	br	8019f8 <___vfprintf_internal_r+0x130>

008039b4 <__vfprintf_internal>:
  8039b4:	00c02074 	movhi	r3,129
  8039b8:	2005883a 	mov	r2,r4
  8039bc:	1909e117 	ldw	r4,10116(r3)
  8039c0:	300f883a 	mov	r7,r6
  8039c4:	280d883a 	mov	r6,r5
  8039c8:	100b883a 	mov	r5,r2
  8039cc:	08018c81 	jmpi	8018c8 <___vfprintf_internal_r>

008039d0 <__sbprintf>:
  8039d0:	2880030b 	ldhu	r2,12(r5)
  8039d4:	2b001917 	ldw	r12,100(r5)
  8039d8:	2ac0038b 	ldhu	r11,14(r5)
  8039dc:	2a800717 	ldw	r10,28(r5)
  8039e0:	2a400917 	ldw	r9,36(r5)
  8039e4:	defee204 	addi	sp,sp,-1144
  8039e8:	da001a04 	addi	r8,sp,104
  8039ec:	00c10004 	movi	r3,1024
  8039f0:	dc011a15 	stw	r16,1128(sp)
  8039f4:	10bfff4c 	andi	r2,r2,65533
  8039f8:	2821883a 	mov	r16,r5
  8039fc:	d80b883a 	mov	r5,sp
  803a00:	dc811c15 	stw	r18,1136(sp)
  803a04:	dc411b15 	stw	r17,1132(sp)
  803a08:	dfc11d15 	stw	ra,1140(sp)
  803a0c:	2025883a 	mov	r18,r4
  803a10:	d880030d 	sth	r2,12(sp)
  803a14:	db001915 	stw	r12,100(sp)
  803a18:	dac0038d 	sth	r11,14(sp)
  803a1c:	da800715 	stw	r10,28(sp)
  803a20:	da400915 	stw	r9,36(sp)
  803a24:	da000015 	stw	r8,0(sp)
  803a28:	da000415 	stw	r8,16(sp)
  803a2c:	d8c00215 	stw	r3,8(sp)
  803a30:	d8c00515 	stw	r3,20(sp)
  803a34:	d8000615 	stw	zero,24(sp)
  803a38:	08018c80 	call	8018c8 <___vfprintf_internal_r>
  803a3c:	1023883a 	mov	r17,r2
  803a40:	10000d0e 	bge	r2,zero,803a78 <__sbprintf+0xa8>
  803a44:	d880030b 	ldhu	r2,12(sp)
  803a48:	1080100c 	andi	r2,r2,64
  803a4c:	10000326 	beq	r2,zero,803a5c <__sbprintf+0x8c>
  803a50:	8080030b 	ldhu	r2,12(r16)
  803a54:	10801014 	ori	r2,r2,64
  803a58:	8080030d 	sth	r2,12(r16)
  803a5c:	8805883a 	mov	r2,r17
  803a60:	dfc11d17 	ldw	ra,1140(sp)
  803a64:	dc811c17 	ldw	r18,1136(sp)
  803a68:	dc411b17 	ldw	r17,1132(sp)
  803a6c:	dc011a17 	ldw	r16,1128(sp)
  803a70:	dec11e04 	addi	sp,sp,1144
  803a74:	f800283a 	ret
  803a78:	d80b883a 	mov	r5,sp
  803a7c:	9009883a 	mov	r4,r18
  803a80:	08057840 	call	805784 <_fflush_r>
  803a84:	103fef26 	beq	r2,zero,803a44 <__sbprintf+0x74>
  803a88:	047fffc4 	movi	r17,-1
  803a8c:	003fed06 	br	803a44 <__sbprintf+0x74>

00803a90 <__swsetup_r>:
  803a90:	00802074 	movhi	r2,129
  803a94:	1089e117 	ldw	r2,10116(r2)
  803a98:	defffd04 	addi	sp,sp,-12
  803a9c:	dc400115 	stw	r17,4(sp)
  803aa0:	dc000015 	stw	r16,0(sp)
  803aa4:	dfc00215 	stw	ra,8(sp)
  803aa8:	2023883a 	mov	r17,r4
  803aac:	2821883a 	mov	r16,r5
  803ab0:	10000226 	beq	r2,zero,803abc <__swsetup_r+0x2c>
  803ab4:	10c00e17 	ldw	r3,56(r2)
  803ab8:	18003326 	beq	r3,zero,803b88 <__swsetup_r+0xf8>
  803abc:	8180030b 	ldhu	r6,12(r16)
  803ac0:	30c0020c 	andi	r3,r6,8
  803ac4:	3005883a 	mov	r2,r6
  803ac8:	18000f26 	beq	r3,zero,803b08 <__swsetup_r+0x78>
  803acc:	80c00417 	ldw	r3,16(r16)
  803ad0:	18001626 	beq	r3,zero,803b2c <__swsetup_r+0x9c>
  803ad4:	1100004c 	andi	r4,r2,1
  803ad8:	20001f1e 	bne	r4,zero,803b58 <__swsetup_r+0xc8>
  803adc:	1100008c 	andi	r4,r2,2
  803ae0:	20002c1e 	bne	r4,zero,803b94 <__swsetup_r+0x104>
  803ae4:	81000517 	ldw	r4,20(r16)
  803ae8:	81000215 	stw	r4,8(r16)
  803aec:	18001f26 	beq	r3,zero,803b6c <__swsetup_r+0xdc>
  803af0:	0005883a 	mov	r2,zero
  803af4:	dfc00217 	ldw	ra,8(sp)
  803af8:	dc400117 	ldw	r17,4(sp)
  803afc:	dc000017 	ldw	r16,0(sp)
  803b00:	dec00304 	addi	sp,sp,12
  803b04:	f800283a 	ret
  803b08:	3080040c 	andi	r2,r6,16
  803b0c:	10003126 	beq	r2,zero,803bd4 <__swsetup_r+0x144>
  803b10:	3080010c 	andi	r2,r6,4
  803b14:	1000211e 	bne	r2,zero,803b9c <__swsetup_r+0x10c>
  803b18:	80c00417 	ldw	r3,16(r16)
  803b1c:	30800214 	ori	r2,r6,8
  803b20:	8080030d 	sth	r2,12(r16)
  803b24:	100d883a 	mov	r6,r2
  803b28:	183fea1e 	bne	r3,zero,803ad4 <__swsetup_r+0x44>
  803b2c:	1100a00c 	andi	r4,r2,640
  803b30:	21008020 	cmpeqi	r4,r4,512
  803b34:	203fe71e 	bne	r4,zero,803ad4 <__swsetup_r+0x44>
  803b38:	8809883a 	mov	r4,r17
  803b3c:	800b883a 	mov	r5,r16
  803b40:	080663c0 	call	80663c <__smakebuf_r>
  803b44:	8180030b 	ldhu	r6,12(r16)
  803b48:	80c00417 	ldw	r3,16(r16)
  803b4c:	3005883a 	mov	r2,r6
  803b50:	1100004c 	andi	r4,r2,1
  803b54:	203fe126 	beq	r4,zero,803adc <__swsetup_r+0x4c>
  803b58:	81000517 	ldw	r4,20(r16)
  803b5c:	80000215 	stw	zero,8(r16)
  803b60:	0109c83a 	sub	r4,zero,r4
  803b64:	81000615 	stw	r4,24(r16)
  803b68:	183fe11e 	bne	r3,zero,803af0 <__swsetup_r+0x60>
  803b6c:	10c0200c 	andi	r3,r2,128
  803b70:	0005883a 	mov	r2,zero
  803b74:	183fdf26 	beq	r3,zero,803af4 <__swsetup_r+0x64>
  803b78:	31801014 	ori	r6,r6,64
  803b7c:	8180030d 	sth	r6,12(r16)
  803b80:	00bfffc4 	movi	r2,-1
  803b84:	003fdb06 	br	803af4 <__swsetup_r+0x64>
  803b88:	1009883a 	mov	r4,r2
  803b8c:	0805b180 	call	805b18 <__sinit>
  803b90:	003fca06 	br	803abc <__swsetup_r+0x2c>
  803b94:	0009883a 	mov	r4,zero
  803b98:	003fd306 	br	803ae8 <__swsetup_r+0x58>
  803b9c:	81400c17 	ldw	r5,48(r16)
  803ba0:	28000626 	beq	r5,zero,803bbc <__swsetup_r+0x12c>
  803ba4:	80801004 	addi	r2,r16,64
  803ba8:	28800326 	beq	r5,r2,803bb8 <__swsetup_r+0x128>
  803bac:	8809883a 	mov	r4,r17
  803bb0:	0805c7c0 	call	805c7c <_free_r>
  803bb4:	8180030b 	ldhu	r6,12(r16)
  803bb8:	80000c15 	stw	zero,48(r16)
  803bbc:	80c00417 	ldw	r3,16(r16)
  803bc0:	00bff6c4 	movi	r2,-37
  803bc4:	118c703a 	and	r6,r2,r6
  803bc8:	80000115 	stw	zero,4(r16)
  803bcc:	80c00015 	stw	r3,0(r16)
  803bd0:	003fd206 	br	803b1c <__swsetup_r+0x8c>
  803bd4:	00800244 	movi	r2,9
  803bd8:	88800015 	stw	r2,0(r17)
  803bdc:	31801014 	ori	r6,r6,64
  803be0:	8180030d 	sth	r6,12(r16)
  803be4:	00bfffc4 	movi	r2,-1
  803be8:	003fc206 	br	803af4 <__swsetup_r+0x64>

00803bec <quorem>:
  803bec:	defff204 	addi	sp,sp,-56
  803bf0:	dc400515 	stw	r17,20(sp)
  803bf4:	20800417 	ldw	r2,16(r4)
  803bf8:	2c400417 	ldw	r17,16(r5)
  803bfc:	dfc00d15 	stw	ra,52(sp)
  803c00:	df000c15 	stw	fp,48(sp)
  803c04:	ddc00b15 	stw	r23,44(sp)
  803c08:	dd800a15 	stw	r22,40(sp)
  803c0c:	dd400915 	stw	r21,36(sp)
  803c10:	dd000815 	stw	r20,32(sp)
  803c14:	dcc00715 	stw	r19,28(sp)
  803c18:	dc800615 	stw	r18,24(sp)
  803c1c:	dc000415 	stw	r16,16(sp)
  803c20:	d9000115 	stw	r4,4(sp)
  803c24:	d9400215 	stw	r5,8(sp)
  803c28:	14407616 	blt	r2,r17,803e04 <quorem+0x218>
  803c2c:	8c7fffc4 	addi	r17,r17,-1
  803c30:	882a90ba 	slli	r21,r17,2
  803c34:	2f000504 	addi	fp,r5,20
  803c38:	25800504 	addi	r22,r4,20
  803c3c:	e565883a 	add	r18,fp,r21
  803c40:	b545883a 	add	r2,r22,r21
  803c44:	95c00017 	ldw	r23,0(r18)
  803c48:	15000017 	ldw	r20,0(r2)
  803c4c:	dd800015 	stw	r22,0(sp)
  803c50:	bdc00044 	addi	r23,r23,1
  803c54:	b80b883a 	mov	r5,r23
  803c58:	a009883a 	mov	r4,r20
  803c5c:	d8800315 	stw	r2,12(sp)
  803c60:	080bb8c0 	call	80bb8c <__udivsi3>
  803c64:	1021883a 	mov	r16,r2
  803c68:	a5c02f36 	bltu	r20,r23,803d28 <quorem+0x13c>
  803c6c:	e029883a 	mov	r20,fp
  803c70:	002b883a 	mov	r21,zero
  803c74:	002f883a 	mov	r23,zero
  803c78:	a4c00017 	ldw	r19,0(r20)
  803c7c:	800b883a 	mov	r5,r16
  803c80:	b5800104 	addi	r22,r22,4
  803c84:	993fffcc 	andi	r4,r19,65535
  803c88:	08016c40 	call	8016c4 <__mulsi3>
  803c8c:	9808d43a 	srli	r4,r19,16
  803c90:	800b883a 	mov	r5,r16
  803c94:	156b883a 	add	r21,r2,r21
  803c98:	08016c40 	call	8016c4 <__mulsi3>
  803c9c:	b0ffff17 	ldw	r3,-4(r22)
  803ca0:	a80ad43a 	srli	r5,r21,16
  803ca4:	a93fffcc 	andi	r4,r21,65535
  803ca8:	19bfffcc 	andi	r6,r3,65535
  803cac:	b909c83a 	sub	r4,r23,r4
  803cb0:	2189883a 	add	r4,r4,r6
  803cb4:	1806d43a 	srli	r3,r3,16
  803cb8:	1145883a 	add	r2,r2,r5
  803cbc:	200bd43a 	srai	r5,r4,16
  803cc0:	11bfffcc 	andi	r6,r2,65535
  803cc4:	1987c83a 	sub	r3,r3,r6
  803cc8:	1947883a 	add	r3,r3,r5
  803ccc:	180a943a 	slli	r5,r3,16
  803cd0:	213fffcc 	andi	r4,r4,65535
  803cd4:	a5000104 	addi	r20,r20,4
  803cd8:	2908b03a 	or	r4,r5,r4
  803cdc:	b13fff15 	stw	r4,-4(r22)
  803ce0:	102ad43a 	srli	r21,r2,16
  803ce4:	182fd43a 	srai	r23,r3,16
  803ce8:	953fe32e 	bgeu	r18,r20,803c78 <quorem+0x8c>
  803cec:	d8c00317 	ldw	r3,12(sp)
  803cf0:	18800017 	ldw	r2,0(r3)
  803cf4:	10000c1e 	bne	r2,zero,803d28 <quorem+0x13c>
  803cf8:	d8800017 	ldw	r2,0(sp)
  803cfc:	1d7fff04 	addi	r21,r3,-4
  803d00:	15400436 	bltu	r2,r21,803d14 <quorem+0x128>
  803d04:	00000606 	br	803d20 <quorem+0x134>
  803d08:	d8800017 	ldw	r2,0(sp)
  803d0c:	8c7fffc4 	addi	r17,r17,-1
  803d10:	1540032e 	bgeu	r2,r21,803d20 <quorem+0x134>
  803d14:	a8800017 	ldw	r2,0(r21)
  803d18:	ad7fff04 	addi	r21,r21,-4
  803d1c:	103ffa26 	beq	r2,zero,803d08 <quorem+0x11c>
  803d20:	d8800117 	ldw	r2,4(sp)
  803d24:	14400415 	stw	r17,16(r2)
  803d28:	d9400217 	ldw	r5,8(sp)
  803d2c:	d9000117 	ldw	r4,4(sp)
  803d30:	0807d5c0 	call	807d5c <__mcmp>
  803d34:	10002616 	blt	r2,zero,803dd0 <quorem+0x1e4>
  803d38:	d9800017 	ldw	r6,0(sp)
  803d3c:	84000044 	addi	r16,r16,1
  803d40:	0007883a 	mov	r3,zero
  803d44:	e1000017 	ldw	r4,0(fp)
  803d48:	31400017 	ldw	r5,0(r6)
  803d4c:	31800104 	addi	r6,r6,4
  803d50:	20bfffcc 	andi	r2,r4,65535
  803d54:	1887c83a 	sub	r3,r3,r2
  803d58:	28bfffcc 	andi	r2,r5,65535
  803d5c:	1885883a 	add	r2,r3,r2
  803d60:	2008d43a 	srli	r4,r4,16
  803d64:	2806d43a 	srli	r3,r5,16
  803d68:	100fd43a 	srai	r7,r2,16
  803d6c:	117fffcc 	andi	r5,r2,65535
  803d70:	1907c83a 	sub	r3,r3,r4
  803d74:	19c7883a 	add	r3,r3,r7
  803d78:	1804943a 	slli	r2,r3,16
  803d7c:	e7000104 	addi	fp,fp,4
  803d80:	1807d43a 	srai	r3,r3,16
  803d84:	1144b03a 	or	r2,r2,r5
  803d88:	30bfff15 	stw	r2,-4(r6)
  803d8c:	973fed2e 	bgeu	r18,fp,803d44 <quorem+0x158>
  803d90:	880490ba 	slli	r2,r17,2
  803d94:	d9000017 	ldw	r4,0(sp)
  803d98:	2085883a 	add	r2,r4,r2
  803d9c:	10c00017 	ldw	r3,0(r2)
  803da0:	18000b1e 	bne	r3,zero,803dd0 <quorem+0x1e4>
  803da4:	10bfff04 	addi	r2,r2,-4
  803da8:	20800436 	bltu	r4,r2,803dbc <quorem+0x1d0>
  803dac:	00000606 	br	803dc8 <quorem+0x1dc>
  803db0:	d8c00017 	ldw	r3,0(sp)
  803db4:	8c7fffc4 	addi	r17,r17,-1
  803db8:	1880032e 	bgeu	r3,r2,803dc8 <quorem+0x1dc>
  803dbc:	10c00017 	ldw	r3,0(r2)
  803dc0:	10bfff04 	addi	r2,r2,-4
  803dc4:	183ffa26 	beq	r3,zero,803db0 <quorem+0x1c4>
  803dc8:	d8800117 	ldw	r2,4(sp)
  803dcc:	14400415 	stw	r17,16(r2)
  803dd0:	8005883a 	mov	r2,r16
  803dd4:	dfc00d17 	ldw	ra,52(sp)
  803dd8:	df000c17 	ldw	fp,48(sp)
  803ddc:	ddc00b17 	ldw	r23,44(sp)
  803de0:	dd800a17 	ldw	r22,40(sp)
  803de4:	dd400917 	ldw	r21,36(sp)
  803de8:	dd000817 	ldw	r20,32(sp)
  803dec:	dcc00717 	ldw	r19,28(sp)
  803df0:	dc800617 	ldw	r18,24(sp)
  803df4:	dc400517 	ldw	r17,20(sp)
  803df8:	dc000417 	ldw	r16,16(sp)
  803dfc:	dec00e04 	addi	sp,sp,56
  803e00:	f800283a 	ret
  803e04:	0005883a 	mov	r2,zero
  803e08:	003ff206 	br	803dd4 <quorem+0x1e8>

00803e0c <_dtoa_r>:
  803e0c:	20801017 	ldw	r2,64(r4)
  803e10:	deffe204 	addi	sp,sp,-120
  803e14:	ddc01b15 	stw	r23,108(sp)
  803e18:	dd001815 	stw	r20,96(sp)
  803e1c:	dc801615 	stw	r18,88(sp)
  803e20:	dc401515 	stw	r17,84(sp)
  803e24:	dc001415 	stw	r16,80(sp)
  803e28:	dfc01d15 	stw	ra,116(sp)
  803e2c:	df001c15 	stw	fp,112(sp)
  803e30:	dd801a15 	stw	r22,104(sp)
  803e34:	dd401915 	stw	r21,100(sp)
  803e38:	dcc01715 	stw	r19,92(sp)
  803e3c:	d9c00115 	stw	r7,4(sp)
  803e40:	dc002017 	ldw	r16,128(sp)
  803e44:	202f883a 	mov	r23,r4
  803e48:	3025883a 	mov	r18,r6
  803e4c:	2829883a 	mov	r20,r5
  803e50:	3023883a 	mov	r17,r6
  803e54:	10000826 	beq	r2,zero,803e78 <_dtoa_r+0x6c>
  803e58:	21801117 	ldw	r6,68(r4)
  803e5c:	00c00044 	movi	r3,1
  803e60:	100b883a 	mov	r5,r2
  803e64:	1986983a 	sll	r3,r3,r6
  803e68:	11800115 	stw	r6,4(r2)
  803e6c:	10c00215 	stw	r3,8(r2)
  803e70:	08073f00 	call	8073f0 <_Bfree>
  803e74:	b8001015 	stw	zero,64(r23)
  803e78:	90018616 	blt	r18,zero,804494 <_dtoa_r+0x688>
  803e7c:	80000015 	stw	zero,0(r16)
  803e80:	909ffc2c 	andhi	r2,r18,32752
  803e84:	00dffc34 	movhi	r3,32752
  803e88:	10c18b26 	beq	r2,r3,8044b8 <_dtoa_r+0x6ac>
  803e8c:	000d883a 	mov	r6,zero
  803e90:	000f883a 	mov	r7,zero
  803e94:	a009883a 	mov	r4,r20
  803e98:	880b883a 	mov	r5,r17
  803e9c:	080cef80 	call	80cef8 <__eqdf2>
  803ea0:	1000181e 	bne	r2,zero,803f04 <_dtoa_r+0xf8>
  803ea4:	d8c01f17 	ldw	r3,124(sp)
  803ea8:	00800044 	movi	r2,1
  803eac:	18800015 	stw	r2,0(r3)
  803eb0:	d8802117 	ldw	r2,132(sp)
  803eb4:	10030b26 	beq	r2,zero,804ae4 <_dtoa_r+0xcd8>
  803eb8:	d8c02117 	ldw	r3,132(sp)
  803ebc:	00802074 	movhi	r2,129
  803ec0:	1081b544 	addi	r2,r2,1749
  803ec4:	07002074 	movhi	fp,129
  803ec8:	18800015 	stw	r2,0(r3)
  803ecc:	e701b504 	addi	fp,fp,1748
  803ed0:	e005883a 	mov	r2,fp
  803ed4:	dfc01d17 	ldw	ra,116(sp)
  803ed8:	df001c17 	ldw	fp,112(sp)
  803edc:	ddc01b17 	ldw	r23,108(sp)
  803ee0:	dd801a17 	ldw	r22,104(sp)
  803ee4:	dd401917 	ldw	r21,100(sp)
  803ee8:	dd001817 	ldw	r20,96(sp)
  803eec:	dcc01717 	ldw	r19,92(sp)
  803ef0:	dc801617 	ldw	r18,88(sp)
  803ef4:	dc401517 	ldw	r17,84(sp)
  803ef8:	dc001417 	ldw	r16,80(sp)
  803efc:	dec01e04 	addi	sp,sp,120
  803f00:	f800283a 	ret
  803f04:	d8801204 	addi	r2,sp,72
  803f08:	9020d53a 	srli	r16,r18,20
  803f0c:	d8800015 	stw	r2,0(sp)
  803f10:	d9c01304 	addi	r7,sp,76
  803f14:	a00b883a 	mov	r5,r20
  803f18:	880d883a 	mov	r6,r17
  803f1c:	b809883a 	mov	r4,r23
  803f20:	08081400 	call	808140 <__d2b>
  803f24:	102d883a 	mov	r22,r2
  803f28:	8001741e 	bne	r16,zero,8044fc <_dtoa_r+0x6f0>
  803f2c:	df001217 	ldw	fp,72(sp)
  803f30:	dc001317 	ldw	r16,76(sp)
  803f34:	e421883a 	add	r16,fp,r16
  803f38:	80810c84 	addi	r2,r16,1074
  803f3c:	10c00850 	cmplti	r3,r2,33
  803f40:	1802f81e 	bne	r3,zero,804b24 <_dtoa_r+0xd18>
  803f44:	01001004 	movi	r4,64
  803f48:	2085c83a 	sub	r2,r4,r2
  803f4c:	81010484 	addi	r4,r16,1042
  803f50:	90a4983a 	sll	r18,r18,r2
  803f54:	a108d83a 	srl	r4,r20,r4
  803f58:	9108b03a 	or	r4,r18,r4
  803f5c:	08014e40 	call	8014e4 <__floatunsidf>
  803f60:	1009883a 	mov	r4,r2
  803f64:	017f8434 	movhi	r5,65040
  803f68:	00800044 	movi	r2,1
  803f6c:	194b883a 	add	r5,r3,r5
  803f70:	843fffc4 	addi	r16,r16,-1
  803f74:	d8800915 	stw	r2,36(sp)
  803f78:	000d883a 	mov	r6,zero
  803f7c:	01cffe34 	movhi	r7,16376
  803f80:	080d1580 	call	80d158 <__subdf3>
  803f84:	0198dbf4 	movhi	r6,25455
  803f88:	01cff4f4 	movhi	r7,16339
  803f8c:	3190d844 	addi	r6,r6,17249
  803f90:	39e1e9c4 	addi	r7,r7,-30809
  803f94:	1009883a 	mov	r4,r2
  803f98:	180b883a 	mov	r5,r3
  803f9c:	0800d3c0 	call	800d3c <__muldf3>
  803fa0:	01a2d874 	movhi	r6,35681
  803fa4:	01cff1f4 	movhi	r7,16327
  803fa8:	31b22cc4 	addi	r6,r6,-14157
  803fac:	39e28a04 	addi	r7,r7,-30168
  803fb0:	180b883a 	mov	r5,r3
  803fb4:	1009883a 	mov	r4,r2
  803fb8:	080bc4c0 	call	80bc4c <__adddf3>
  803fbc:	8009883a 	mov	r4,r16
  803fc0:	1027883a 	mov	r19,r2
  803fc4:	1825883a 	mov	r18,r3
  803fc8:	080db600 	call	80db60 <__floatsidf>
  803fcc:	019427f4 	movhi	r6,20639
  803fd0:	01cff4f4 	movhi	r7,16339
  803fd4:	319e7ec4 	addi	r6,r6,31227
  803fd8:	39d104c4 	addi	r7,r7,17427
  803fdc:	1009883a 	mov	r4,r2
  803fe0:	180b883a 	mov	r5,r3
  803fe4:	0800d3c0 	call	800d3c <__muldf3>
  803fe8:	100d883a 	mov	r6,r2
  803fec:	180f883a 	mov	r7,r3
  803ff0:	9809883a 	mov	r4,r19
  803ff4:	900b883a 	mov	r5,r18
  803ff8:	080bc4c0 	call	80bc4c <__adddf3>
  803ffc:	1009883a 	mov	r4,r2
  804000:	180b883a 	mov	r5,r3
  804004:	1025883a 	mov	r18,r2
  804008:	182b883a 	mov	r21,r3
  80400c:	080dae00 	call	80dae0 <__fixdfsi>
  804010:	000d883a 	mov	r6,zero
  804014:	000f883a 	mov	r7,zero
  804018:	9009883a 	mov	r4,r18
  80401c:	a80b883a 	mov	r5,r21
  804020:	1027883a 	mov	r19,r2
  804024:	080d0680 	call	80d068 <__ledf2>
  804028:	1002a416 	blt	r2,zero,804abc <_dtoa_r+0xcb0>
  80402c:	e439c83a 	sub	fp,fp,r16
  804030:	e0ffffc4 	addi	r3,fp,-1
  804034:	988005e8 	cmpgeui	r2,r19,23
  804038:	d8c00215 	stw	r3,8(sp)
  80403c:	1002961e 	bne	r2,zero,804a98 <_dtoa_r+0xc8c>
  804040:	980690fa 	slli	r3,r19,3
  804044:	00802074 	movhi	r2,129
  804048:	1081fe04 	addi	r2,r2,2040
  80404c:	10c5883a 	add	r2,r2,r3
  804050:	11800017 	ldw	r6,0(r2)
  804054:	11c00117 	ldw	r7,4(r2)
  804058:	a009883a 	mov	r4,r20
  80405c:	880b883a 	mov	r5,r17
  804060:	080d0680 	call	80d068 <__ledf2>
  804064:	1002670e 	bge	r2,zero,804a04 <_dtoa_r+0xbf8>
  804068:	d8000815 	stw	zero,32(sp)
  80406c:	e0bfffc4 	addi	r2,fp,-1
  804070:	9cffffc4 	addi	r19,r19,-1
  804074:	10028c16 	blt	r2,zero,804aa8 <_dtoa_r+0xc9c>
  804078:	d8000515 	stw	zero,20(sp)
  80407c:	9802650e 	bge	r19,zero,804a14 <_dtoa_r+0xc08>
  804080:	d8800517 	ldw	r2,20(sp)
  804084:	d8c00117 	ldw	r3,4(sp)
  804088:	dcc00315 	stw	r19,12(sp)
  80408c:	14c5c83a 	sub	r2,r2,r19
  804090:	d8800515 	stw	r2,20(sp)
  804094:	04c5c83a 	sub	r2,zero,r19
  804098:	d8800715 	stw	r2,28(sp)
  80409c:	188002a8 	cmpgeui	r2,r3,10
  8040a0:	0027883a 	mov	r19,zero
  8040a4:	1002631e 	bne	r2,zero,804a34 <_dtoa_r+0xc28>
  8040a8:	18800190 	cmplti	r2,r3,6
  8040ac:	1002a11e 	bne	r2,zero,804b34 <_dtoa_r+0xd28>
  8040b0:	18bfff04 	addi	r2,r3,-4
  8040b4:	d8800115 	stw	r2,4(sp)
  8040b8:	0021883a 	mov	r16,zero
  8040bc:	d8c00117 	ldw	r3,4(sp)
  8040c0:	18800120 	cmpeqi	r2,r3,4
  8040c4:	1003721e 	bne	r2,zero,804e90 <_dtoa_r+0x1084>
  8040c8:	18800160 	cmpeqi	r2,r3,5
  8040cc:	10032f1e 	bne	r2,zero,804d8c <_dtoa_r+0xf80>
  8040d0:	188000a0 	cmpeqi	r2,r3,2
  8040d4:	10026326 	beq	r2,zero,804a64 <_dtoa_r+0xc58>
  8040d8:	d8000615 	stw	zero,24(sp)
  8040dc:	d8801e17 	ldw	r2,120(sp)
  8040e0:	00833c0e 	bge	zero,r2,804dd4 <_dtoa_r+0xfc8>
  8040e4:	d8800b15 	stw	r2,44(sp)
  8040e8:	d8800415 	stw	r2,16(sp)
  8040ec:	100d883a 	mov	r6,r2
  8040f0:	b8001115 	stw	zero,68(r23)
  8040f4:	30800610 	cmplti	r2,r6,24
  8040f8:	1005161e 	bne	r2,zero,805554 <_dtoa_r+0x1748>
  8040fc:	00c00044 	movi	r3,1
  804100:	00800104 	movi	r2,4
  804104:	1085883a 	add	r2,r2,r2
  804108:	11000504 	addi	r4,r2,20
  80410c:	180b883a 	mov	r5,r3
  804110:	18c00044 	addi	r3,r3,1
  804114:	313ffb2e 	bgeu	r6,r4,804104 <_dtoa_r+0x2f8>
  804118:	b9401115 	stw	r5,68(r23)
  80411c:	b809883a 	mov	r4,r23
  804120:	080734c0 	call	80734c <_Balloc>
  804124:	1039883a 	mov	fp,r2
  804128:	1004f526 	beq	r2,zero,805500 <_dtoa_r+0x16f4>
  80412c:	b8801015 	stw	r2,64(r23)
  804130:	d8800417 	ldw	r2,16(sp)
  804134:	108003e8 	cmpgeui	r2,r2,15
  804138:	10010b1e 	bne	r2,zero,804568 <_dtoa_r+0x75c>
  80413c:	80010a26 	beq	r16,zero,804568 <_dtoa_r+0x75c>
  804140:	d9000317 	ldw	r4,12(sp)
  804144:	0103a30e 	bge	zero,r4,804fd4 <_dtoa_r+0x11c8>
  804148:	208003cc 	andi	r2,r4,15
  80414c:	100690fa 	slli	r3,r2,3
  804150:	202bd13a 	srai	r21,r4,4
  804154:	00802074 	movhi	r2,129
  804158:	1081fe04 	addi	r2,r2,2040
  80415c:	10c5883a 	add	r2,r2,r3
  804160:	a8c0040c 	andi	r3,r21,16
  804164:	12800017 	ldw	r10,0(r2)
  804168:	12400117 	ldw	r9,4(r2)
  80416c:	18034226 	beq	r3,zero,804e78 <_dtoa_r+0x106c>
  804170:	00802074 	movhi	r2,129
  804174:	1081f404 	addi	r2,r2,2000
  804178:	11800817 	ldw	r6,32(r2)
  80417c:	11c00917 	ldw	r7,36(r2)
  804180:	a009883a 	mov	r4,r20
  804184:	880b883a 	mov	r5,r17
  804188:	da400e15 	stw	r9,56(sp)
  80418c:	da800d15 	stw	r10,52(sp)
  804190:	080c5c40 	call	80c5c4 <__divdf3>
  804194:	da800d17 	ldw	r10,52(sp)
  804198:	da400e17 	ldw	r9,56(sp)
  80419c:	ad4003cc 	andi	r21,r21,15
  8041a0:	d8800a15 	stw	r2,40(sp)
  8041a4:	d8c00c15 	stw	r3,48(sp)
  8041a8:	040000c4 	movi	r16,3
  8041ac:	a8001126 	beq	r21,zero,8041f4 <_dtoa_r+0x3e8>
  8041b0:	04802074 	movhi	r18,129
  8041b4:	9481f404 	addi	r18,r18,2000
  8041b8:	5009883a 	mov	r4,r10
  8041bc:	480b883a 	mov	r5,r9
  8041c0:	a980004c 	andi	r6,r21,1
  8041c4:	30000626 	beq	r6,zero,8041e0 <_dtoa_r+0x3d4>
  8041c8:	91800017 	ldw	r6,0(r18)
  8041cc:	91c00117 	ldw	r7,4(r18)
  8041d0:	84000044 	addi	r16,r16,1
  8041d4:	0800d3c0 	call	800d3c <__muldf3>
  8041d8:	1009883a 	mov	r4,r2
  8041dc:	180b883a 	mov	r5,r3
  8041e0:	a82bd07a 	srai	r21,r21,1
  8041e4:	94800204 	addi	r18,r18,8
  8041e8:	a83ff51e 	bne	r21,zero,8041c0 <_dtoa_r+0x3b4>
  8041ec:	2015883a 	mov	r10,r4
  8041f0:	2813883a 	mov	r9,r5
  8041f4:	d9000a17 	ldw	r4,40(sp)
  8041f8:	d9400c17 	ldw	r5,48(sp)
  8041fc:	500d883a 	mov	r6,r10
  804200:	480f883a 	mov	r7,r9
  804204:	080c5c40 	call	80c5c4 <__divdf3>
  804208:	1025883a 	mov	r18,r2
  80420c:	d8c00a15 	stw	r3,40(sp)
  804210:	d8800817 	ldw	r2,32(sp)
  804214:	10000726 	beq	r2,zero,804234 <_dtoa_r+0x428>
  804218:	dd400a17 	ldw	r21,40(sp)
  80421c:	000d883a 	mov	r6,zero
  804220:	01cffc34 	movhi	r7,16368
  804224:	9009883a 	mov	r4,r18
  804228:	a80b883a 	mov	r5,r21
  80422c:	080d0680 	call	80d068 <__ledf2>
  804230:	10045516 	blt	r2,zero,805388 <_dtoa_r+0x157c>
  804234:	8009883a 	mov	r4,r16
  804238:	080db600 	call	80db60 <__floatsidf>
  80423c:	d9c00a17 	ldw	r7,40(sp)
  804240:	900d883a 	mov	r6,r18
  804244:	1009883a 	mov	r4,r2
  804248:	180b883a 	mov	r5,r3
  80424c:	0800d3c0 	call	800d3c <__muldf3>
  804250:	000d883a 	mov	r6,zero
  804254:	01d00734 	movhi	r7,16412
  804258:	1009883a 	mov	r4,r2
  80425c:	180b883a 	mov	r5,r3
  804260:	080bc4c0 	call	80bc4c <__adddf3>
  804264:	d8800c15 	stw	r2,48(sp)
  804268:	00bf3034 	movhi	r2,64704
  80426c:	1885883a 	add	r2,r3,r2
  804270:	d8800d15 	stw	r2,52(sp)
  804274:	d8800417 	ldw	r2,16(sp)
  804278:	10033926 	beq	r2,zero,804f60 <_dtoa_r+0x1154>
  80427c:	d8800317 	ldw	r2,12(sp)
  804280:	d8801115 	stw	r2,68(sp)
  804284:	d8800417 	ldw	r2,16(sp)
  804288:	d8800e15 	stw	r2,56(sp)
  80428c:	dc000a17 	ldw	r16,40(sp)
  804290:	9009883a 	mov	r4,r18
  804294:	800b883a 	mov	r5,r16
  804298:	080dae00 	call	80dae0 <__fixdfsi>
  80429c:	d8c00e17 	ldw	r3,56(sp)
  8042a0:	d8801015 	stw	r2,64(sp)
  8042a4:	18ffffc4 	addi	r3,r3,-1
  8042a8:	180890fa 	slli	r4,r3,3
  8042ac:	00c02074 	movhi	r3,129
  8042b0:	18c1fe04 	addi	r3,r3,2040
  8042b4:	1907883a 	add	r3,r3,r4
  8042b8:	1b000017 	ldw	r12,0(r3)
  8042bc:	1b400117 	ldw	r13,4(r3)
  8042c0:	1009883a 	mov	r4,r2
  8042c4:	db000f15 	stw	r12,60(sp)
  8042c8:	db400a15 	stw	r13,40(sp)
  8042cc:	080db600 	call	80db60 <__floatsidf>
  8042d0:	9009883a 	mov	r4,r18
  8042d4:	800b883a 	mov	r5,r16
  8042d8:	100d883a 	mov	r6,r2
  8042dc:	180f883a 	mov	r7,r3
  8042e0:	080d1580 	call	80d158 <__subdf3>
  8042e4:	dac01017 	ldw	r11,64(sp)
  8042e8:	102b883a 	mov	r21,r2
  8042ec:	d8800617 	ldw	r2,24(sp)
  8042f0:	db400a17 	ldw	r13,40(sp)
  8042f4:	db000f17 	ldw	r12,60(sp)
  8042f8:	e4000044 	addi	r16,fp,1
  8042fc:	1825883a 	mov	r18,r3
  804300:	5ac00c04 	addi	r11,r11,48
  804304:	1003c626 	beq	r2,zero,805220 <_dtoa_r+0x1414>
  804308:	600d883a 	mov	r6,r12
  80430c:	680f883a 	mov	r7,r13
  804310:	0009883a 	mov	r4,zero
  804314:	014ff834 	movhi	r5,16352
  804318:	dac00f15 	stw	r11,60(sp)
  80431c:	080c5c40 	call	80c5c4 <__divdf3>
  804320:	d9800c17 	ldw	r6,48(sp)
  804324:	d9c00d17 	ldw	r7,52(sp)
  804328:	1009883a 	mov	r4,r2
  80432c:	180b883a 	mov	r5,r3
  804330:	080d1580 	call	80d158 <__subdf3>
  804334:	dac00f17 	ldw	r11,60(sp)
  804338:	a80d883a 	mov	r6,r21
  80433c:	900f883a 	mov	r7,r18
  804340:	e2c00005 	stb	r11,0(fp)
  804344:	1009883a 	mov	r4,r2
  804348:	180b883a 	mov	r5,r3
  80434c:	d8800a15 	stw	r2,40(sp)
  804350:	d8c00c15 	stw	r3,48(sp)
  804354:	080cf780 	call	80cf78 <__gedf2>
  804358:	00844116 	blt	zero,r2,805460 <_dtoa_r+0x1654>
  80435c:	0005883a 	mov	r2,zero
  804360:	dcc00f15 	stw	r19,60(sp)
  804364:	dd800d15 	stw	r22,52(sp)
  804368:	dcc00c17 	ldw	r19,48(sp)
  80436c:	dd800e17 	ldw	r22,56(sp)
  804370:	dc400c15 	stw	r17,48(sp)
  804374:	ddc00e15 	stw	r23,56(sp)
  804378:	dc400a17 	ldw	r17,40(sp)
  80437c:	dd000a15 	stw	r20,40(sp)
  804380:	1029883a 	mov	r20,r2
  804384:	00002606 	br	804420 <_dtoa_r+0x614>
  804388:	a5000044 	addi	r20,r20,1
  80438c:	a5843d0e 	bge	r20,r22,805484 <_dtoa_r+0x1678>
  804390:	8809883a 	mov	r4,r17
  804394:	980b883a 	mov	r5,r19
  804398:	000d883a 	mov	r6,zero
  80439c:	01d00934 	movhi	r7,16420
  8043a0:	0800d3c0 	call	800d3c <__muldf3>
  8043a4:	000d883a 	mov	r6,zero
  8043a8:	01d00934 	movhi	r7,16420
  8043ac:	a809883a 	mov	r4,r21
  8043b0:	900b883a 	mov	r5,r18
  8043b4:	1023883a 	mov	r17,r2
  8043b8:	1827883a 	mov	r19,r3
  8043bc:	0800d3c0 	call	800d3c <__muldf3>
  8043c0:	180b883a 	mov	r5,r3
  8043c4:	1009883a 	mov	r4,r2
  8043c8:	1825883a 	mov	r18,r3
  8043cc:	102b883a 	mov	r21,r2
  8043d0:	080dae00 	call	80dae0 <__fixdfsi>
  8043d4:	1009883a 	mov	r4,r2
  8043d8:	102f883a 	mov	r23,r2
  8043dc:	080db600 	call	80db60 <__floatsidf>
  8043e0:	a809883a 	mov	r4,r21
  8043e4:	900b883a 	mov	r5,r18
  8043e8:	100d883a 	mov	r6,r2
  8043ec:	180f883a 	mov	r7,r3
  8043f0:	080d1580 	call	80d158 <__subdf3>
  8043f4:	84000044 	addi	r16,r16,1
  8043f8:	ba000c04 	addi	r8,r23,48
  8043fc:	823fffc5 	stb	r8,-1(r16)
  804400:	880d883a 	mov	r6,r17
  804404:	980f883a 	mov	r7,r19
  804408:	1009883a 	mov	r4,r2
  80440c:	180b883a 	mov	r5,r3
  804410:	102b883a 	mov	r21,r2
  804414:	1825883a 	mov	r18,r3
  804418:	080d0680 	call	80d068 <__ledf2>
  80441c:	10040e16 	blt	r2,zero,805458 <_dtoa_r+0x164c>
  804420:	a80d883a 	mov	r6,r21
  804424:	900f883a 	mov	r7,r18
  804428:	0009883a 	mov	r4,zero
  80442c:	014ffc34 	movhi	r5,16368
  804430:	080d1580 	call	80d158 <__subdf3>
  804434:	880d883a 	mov	r6,r17
  804438:	980f883a 	mov	r7,r19
  80443c:	1009883a 	mov	r4,r2
  804440:	180b883a 	mov	r5,r3
  804444:	080d0680 	call	80d068 <__ledf2>
  804448:	103fcf0e 	bge	r2,zero,804388 <_dtoa_r+0x57c>
  80444c:	dd800d17 	ldw	r22,52(sp)
  804450:	ddc00e17 	ldw	r23,56(sp)
  804454:	d8801117 	ldw	r2,68(sp)
  804458:	10800044 	addi	r2,r2,1
  80445c:	d8800315 	stw	r2,12(sp)
  804460:	00000106 	br	804468 <_dtoa_r+0x65c>
  804464:	e403ee26 	beq	fp,r16,805420 <_dtoa_r+0x1614>
  804468:	80ffffc3 	ldbu	r3,-1(r16)
  80446c:	8025883a 	mov	r18,r16
  804470:	843fffc4 	addi	r16,r16,-1
  804474:	18803fcc 	andi	r2,r3,255
  804478:	1080201c 	xori	r2,r2,128
  80447c:	10bfe004 	addi	r2,r2,-128
  804480:	10800e60 	cmpeqi	r2,r2,57
  804484:	103ff71e 	bne	r2,zero,804464 <_dtoa_r+0x658>
  804488:	18c00044 	addi	r3,r3,1
  80448c:	80c00005 	stb	r3,0(r16)
  804490:	00015106 	br	8049d8 <_dtoa_r+0xbcc>
  804494:	04600034 	movhi	r17,32768
  804498:	8c7fffc4 	addi	r17,r17,-1
  80449c:	9462703a 	and	r17,r18,r17
  8044a0:	00800044 	movi	r2,1
  8044a4:	8825883a 	mov	r18,r17
  8044a8:	80800015 	stw	r2,0(r16)
  8044ac:	00dffc34 	movhi	r3,32752
  8044b0:	909ffc2c 	andhi	r2,r18,32752
  8044b4:	10fe751e 	bne	r2,r3,803e8c <_dtoa_r+0x80>
  8044b8:	d8c01f17 	ldw	r3,124(sp)
  8044bc:	00800434 	movhi	r2,16
  8044c0:	10bfffc4 	addi	r2,r2,-1
  8044c4:	90a4703a 	and	r18,r18,r2
  8044c8:	0089c3c4 	movi	r2,9999
  8044cc:	18800015 	stw	r2,0(r3)
  8044d0:	9528b03a 	or	r20,r18,r20
  8044d4:	a000121e 	bne	r20,zero,804520 <_dtoa_r+0x714>
  8044d8:	d8802117 	ldw	r2,132(sp)
  8044dc:	07002074 	movhi	fp,129
  8044e0:	10041526 	beq	r2,zero,805538 <_dtoa_r+0x172c>
  8044e4:	00802074 	movhi	r2,129
  8044e8:	e701bf04 	addi	fp,fp,1788
  8044ec:	1081c104 	addi	r2,r2,1796
  8044f0:	d8c02117 	ldw	r3,132(sp)
  8044f4:	18800015 	stw	r2,0(r3)
  8044f8:	003e7506 	br	803ed0 <_dtoa_r+0xc4>
  8044fc:	01400434 	movhi	r5,16
  804500:	297fffc4 	addi	r5,r5,-1
  804504:	894a703a 	and	r5,r17,r5
  804508:	df001217 	ldw	fp,72(sp)
  80450c:	a009883a 	mov	r4,r20
  804510:	294ffc34 	orhi	r5,r5,16368
  804514:	843f0044 	addi	r16,r16,-1023
  804518:	d8000915 	stw	zero,36(sp)
  80451c:	003e9606 	br	803f78 <_dtoa_r+0x16c>
  804520:	d8802117 	ldw	r2,132(sp)
  804524:	07002074 	movhi	fp,129
  804528:	1002141e 	bne	r2,zero,804d7c <_dtoa_r+0xf70>
  80452c:	e701be04 	addi	fp,fp,1784
  804530:	003e6706 	br	803ed0 <_dtoa_r+0xc4>
  804534:	b8001115 	stw	zero,68(r23)
  804538:	000b883a 	mov	r5,zero
  80453c:	b809883a 	mov	r4,r23
  804540:	080734c0 	call	80734c <_Balloc>
  804544:	1039883a 	mov	fp,r2
  804548:	1003ed26 	beq	r2,zero,805500 <_dtoa_r+0x16f4>
  80454c:	b8801015 	stw	r2,64(r23)
  804550:	00bfffc4 	movi	r2,-1
  804554:	d8800415 	stw	r2,16(sp)
  804558:	d8800b15 	stw	r2,44(sp)
  80455c:	00800044 	movi	r2,1
  804560:	d8001e15 	stw	zero,120(sp)
  804564:	d8800615 	stw	r2,24(sp)
  804568:	d8801317 	ldw	r2,76(sp)
  80456c:	10007216 	blt	r2,zero,804738 <_dtoa_r+0x92c>
  804570:	d9000317 	ldw	r4,12(sp)
  804574:	20c003c8 	cmpgei	r3,r4,15
  804578:	18006f1e 	bne	r3,zero,804738 <_dtoa_r+0x92c>
  80457c:	200690fa 	slli	r3,r4,3
  804580:	00802074 	movhi	r2,129
  804584:	1081fe04 	addi	r2,r2,2040
  804588:	10c5883a 	add	r2,r2,r3
  80458c:	10c00017 	ldw	r3,0(r2)
  804590:	14800117 	ldw	r18,4(r2)
  804594:	d8801e17 	ldw	r2,120(sp)
  804598:	d8c00115 	stw	r3,4(sp)
  80459c:	1000150e 	bge	r2,zero,8045f4 <_dtoa_r+0x7e8>
  8045a0:	d8800417 	ldw	r2,16(sp)
  8045a4:	00801316 	blt	zero,r2,8045f4 <_dtoa_r+0x7e8>
  8045a8:	d8800417 	ldw	r2,16(sp)
  8045ac:	1002801e 	bne	r2,zero,804fb0 <_dtoa_r+0x11a4>
  8045b0:	d9000117 	ldw	r4,4(sp)
  8045b4:	000d883a 	mov	r6,zero
  8045b8:	01d00534 	movhi	r7,16404
  8045bc:	900b883a 	mov	r5,r18
  8045c0:	0800d3c0 	call	800d3c <__muldf3>
  8045c4:	100d883a 	mov	r6,r2
  8045c8:	180f883a 	mov	r7,r3
  8045cc:	a009883a 	mov	r4,r20
  8045d0:	880b883a 	mov	r5,r17
  8045d4:	080d0680 	call	80d068 <__ledf2>
  8045d8:	002b883a 	mov	r21,zero
  8045dc:	0021883a 	mov	r16,zero
  8045e0:	00820f16 	blt	zero,r2,804e20 <_dtoa_r+0x1014>
  8045e4:	d8801e17 	ldw	r2,120(sp)
  8045e8:	e025883a 	mov	r18,fp
  8045ec:	00a2303a 	nor	r17,zero,r2
  8045f0:	00021006 	br	804e34 <_dtoa_r+0x1028>
  8045f4:	dd400117 	ldw	r21,4(sp)
  8045f8:	900f883a 	mov	r7,r18
  8045fc:	a009883a 	mov	r4,r20
  804600:	a80d883a 	mov	r6,r21
  804604:	880b883a 	mov	r5,r17
  804608:	080c5c40 	call	80c5c4 <__divdf3>
  80460c:	180b883a 	mov	r5,r3
  804610:	1009883a 	mov	r4,r2
  804614:	080dae00 	call	80dae0 <__fixdfsi>
  804618:	1009883a 	mov	r4,r2
  80461c:	1027883a 	mov	r19,r2
  804620:	080db600 	call	80db60 <__floatsidf>
  804624:	a80d883a 	mov	r6,r21
  804628:	900f883a 	mov	r7,r18
  80462c:	1009883a 	mov	r4,r2
  804630:	180b883a 	mov	r5,r3
  804634:	0800d3c0 	call	800d3c <__muldf3>
  804638:	100d883a 	mov	r6,r2
  80463c:	a009883a 	mov	r4,r20
  804640:	880b883a 	mov	r5,r17
  804644:	180f883a 	mov	r7,r3
  804648:	080d1580 	call	80d158 <__subdf3>
  80464c:	d9800417 	ldw	r6,16(sp)
  804650:	1009883a 	mov	r4,r2
  804654:	98800c04 	addi	r2,r19,48
  804658:	e0800005 	stb	r2,0(fp)
  80465c:	30800060 	cmpeqi	r2,r6,1
  804660:	180b883a 	mov	r5,r3
  804664:	e4000044 	addi	r16,fp,1
  804668:	1002a91e 	bne	r2,zero,805110 <_dtoa_r+0x1304>
  80466c:	04400044 	movi	r17,1
  804670:	3027883a 	mov	r19,r6
  804674:	dd800215 	stw	r22,8(sp)
  804678:	ddc00415 	stw	r23,16(sp)
  80467c:	00001c06 	br	8046f0 <_dtoa_r+0x8e4>
  804680:	a80d883a 	mov	r6,r21
  804684:	900f883a 	mov	r7,r18
  804688:	b809883a 	mov	r4,r23
  80468c:	a00b883a 	mov	r5,r20
  804690:	080c5c40 	call	80c5c4 <__divdf3>
  804694:	180b883a 	mov	r5,r3
  804698:	1009883a 	mov	r4,r2
  80469c:	080dae00 	call	80dae0 <__fixdfsi>
  8046a0:	1009883a 	mov	r4,r2
  8046a4:	102d883a 	mov	r22,r2
  8046a8:	080db600 	call	80db60 <__floatsidf>
  8046ac:	a80d883a 	mov	r6,r21
  8046b0:	900f883a 	mov	r7,r18
  8046b4:	1009883a 	mov	r4,r2
  8046b8:	180b883a 	mov	r5,r3
  8046bc:	0800d3c0 	call	800d3c <__muldf3>
  8046c0:	b809883a 	mov	r4,r23
  8046c4:	a00b883a 	mov	r5,r20
  8046c8:	100d883a 	mov	r6,r2
  8046cc:	180f883a 	mov	r7,r3
  8046d0:	080d1580 	call	80d158 <__subdf3>
  8046d4:	b1000c04 	addi	r4,r22,48
  8046d8:	81000005 	stb	r4,0(r16)
  8046dc:	8c400044 	addi	r17,r17,1
  8046e0:	84000044 	addi	r16,r16,1
  8046e4:	1009883a 	mov	r4,r2
  8046e8:	180b883a 	mov	r5,r3
  8046ec:	9c428526 	beq	r19,r17,805104 <_dtoa_r+0x12f8>
  8046f0:	000d883a 	mov	r6,zero
  8046f4:	01d00934 	movhi	r7,16420
  8046f8:	0800d3c0 	call	800d3c <__muldf3>
  8046fc:	000d883a 	mov	r6,zero
  804700:	000f883a 	mov	r7,zero
  804704:	1009883a 	mov	r4,r2
  804708:	180b883a 	mov	r5,r3
  80470c:	102f883a 	mov	r23,r2
  804710:	1829883a 	mov	r20,r3
  804714:	080cef80 	call	80cef8 <__eqdf2>
  804718:	103fd91e 	bne	r2,zero,804680 <_dtoa_r+0x874>
  80471c:	d8800317 	ldw	r2,12(sp)
  804720:	dd800217 	ldw	r22,8(sp)
  804724:	ddc00417 	ldw	r23,16(sp)
  804728:	10800044 	addi	r2,r2,1
  80472c:	d8800315 	stw	r2,12(sp)
  804730:	8025883a 	mov	r18,r16
  804734:	0000a806 	br	8049d8 <_dtoa_r+0xbcc>
  804738:	d8c00617 	ldw	r3,24(sp)
  80473c:	1800ec26 	beq	r3,zero,804af0 <_dtoa_r+0xce4>
  804740:	d8c00117 	ldw	r3,4(sp)
  804744:	18c00088 	cmpgei	r3,r3,2
  804748:	1801e926 	beq	r3,zero,804ef0 <_dtoa_r+0x10e4>
  80474c:	d8800417 	ldw	r2,16(sp)
  804750:	157fffc4 	addi	r21,r2,-1
  804754:	d8800717 	ldw	r2,28(sp)
  804758:	1541c50e 	bge	r2,r21,804e70 <_dtoa_r+0x1064>
  80475c:	d8800717 	ldw	r2,28(sp)
  804760:	dd400715 	stw	r21,28(sp)
  804764:	a885c83a 	sub	r2,r21,r2
  804768:	98a7883a 	add	r19,r19,r2
  80476c:	002b883a 	mov	r21,zero
  804770:	d8800417 	ldw	r2,16(sp)
  804774:	10029516 	blt	r2,zero,8051cc <_dtoa_r+0x13c0>
  804778:	d8c00517 	ldw	r3,20(sp)
  80477c:	d9000217 	ldw	r4,8(sp)
  804780:	1825883a 	mov	r18,r3
  804784:	2089883a 	add	r4,r4,r2
  804788:	10c5883a 	add	r2,r2,r3
  80478c:	d9000215 	stw	r4,8(sp)
  804790:	d8800515 	stw	r2,20(sp)
  804794:	01400044 	movi	r5,1
  804798:	b809883a 	mov	r4,r23
  80479c:	08077bc0 	call	8077bc <__i2b>
  8047a0:	1021883a 	mov	r16,r2
  8047a4:	04800b0e 	bge	zero,r18,8047d4 <_dtoa_r+0x9c8>
  8047a8:	d8c00217 	ldw	r3,8(sp)
  8047ac:	00c0090e 	bge	zero,r3,8047d4 <_dtoa_r+0x9c8>
  8047b0:	9005883a 	mov	r2,r18
  8047b4:	1c81a616 	blt	r3,r18,804e50 <_dtoa_r+0x1044>
  8047b8:	d8c00517 	ldw	r3,20(sp)
  8047bc:	90a5c83a 	sub	r18,r18,r2
  8047c0:	1887c83a 	sub	r3,r3,r2
  8047c4:	d8c00515 	stw	r3,20(sp)
  8047c8:	d8c00217 	ldw	r3,8(sp)
  8047cc:	1885c83a 	sub	r2,r3,r2
  8047d0:	d8800215 	stw	r2,8(sp)
  8047d4:	d8800717 	ldw	r2,28(sp)
  8047d8:	10001526 	beq	r2,zero,804830 <_dtoa_r+0xa24>
  8047dc:	d8800617 	ldw	r2,24(sp)
  8047e0:	1001f626 	beq	r2,zero,804fbc <_dtoa_r+0x11b0>
  8047e4:	05400f0e 	bge	zero,r21,804824 <_dtoa_r+0xa18>
  8047e8:	800b883a 	mov	r5,r16
  8047ec:	a80d883a 	mov	r6,r21
  8047f0:	b809883a 	mov	r4,r23
  8047f4:	0807abc0 	call	807abc <__pow5mult>
  8047f8:	b00d883a 	mov	r6,r22
  8047fc:	100b883a 	mov	r5,r2
  804800:	b809883a 	mov	r4,r23
  804804:	1021883a 	mov	r16,r2
  804808:	08078100 	call	807810 <__multiply>
  80480c:	b00b883a 	mov	r5,r22
  804810:	b809883a 	mov	r4,r23
  804814:	d8800915 	stw	r2,36(sp)
  804818:	08073f00 	call	8073f0 <_Bfree>
  80481c:	d8800917 	ldw	r2,36(sp)
  804820:	102d883a 	mov	r22,r2
  804824:	d8800717 	ldw	r2,28(sp)
  804828:	154dc83a 	sub	r6,r2,r21
  80482c:	1542621e 	bne	r2,r21,8051b8 <_dtoa_r+0x13ac>
  804830:	01400044 	movi	r5,1
  804834:	b809883a 	mov	r4,r23
  804838:	08077bc0 	call	8077bc <__i2b>
  80483c:	102b883a 	mov	r21,r2
  804840:	04c0be16 	blt	zero,r19,804b3c <_dtoa_r+0xd30>
  804844:	d8800117 	ldw	r2,4(sp)
  804848:	10800088 	cmpgei	r2,r2,2
  80484c:	10015226 	beq	r2,zero,804d98 <_dtoa_r+0xf8c>
  804850:	0023883a 	mov	r17,zero
  804854:	00800044 	movi	r2,1
  804858:	9800c11e 	bne	r19,zero,804b60 <_dtoa_r+0xd54>
  80485c:	d9400217 	ldw	r5,8(sp)
  804860:	1145883a 	add	r2,r2,r5
  804864:	108007cc 	andi	r2,r2,31
  804868:	1000a526 	beq	r2,zero,804b00 <_dtoa_r+0xcf4>
  80486c:	00c00804 	movi	r3,32
  804870:	1887c83a 	sub	r3,r3,r2
  804874:	19000150 	cmplti	r4,r3,5
  804878:	2003311e 	bne	r4,zero,805540 <_dtoa_r+0x1734>
  80487c:	00c00704 	movi	r3,28
  804880:	1885c83a 	sub	r2,r3,r2
  804884:	d8c00517 	ldw	r3,20(sp)
  804888:	90a5883a 	add	r18,r18,r2
  80488c:	1887883a 	add	r3,r3,r2
  804890:	2885883a 	add	r2,r5,r2
  804894:	d8c00515 	stw	r3,20(sp)
  804898:	d8800215 	stw	r2,8(sp)
  80489c:	d8800517 	ldw	r2,20(sp)
  8048a0:	0080050e 	bge	zero,r2,8048b8 <_dtoa_r+0xaac>
  8048a4:	b00b883a 	mov	r5,r22
  8048a8:	100d883a 	mov	r6,r2
  8048ac:	b809883a 	mov	r4,r23
  8048b0:	0807bd40 	call	807bd4 <__lshift>
  8048b4:	102d883a 	mov	r22,r2
  8048b8:	d8800217 	ldw	r2,8(sp)
  8048bc:	0080050e 	bge	zero,r2,8048d4 <_dtoa_r+0xac8>
  8048c0:	a80b883a 	mov	r5,r21
  8048c4:	100d883a 	mov	r6,r2
  8048c8:	b809883a 	mov	r4,r23
  8048cc:	0807bd40 	call	807bd4 <__lshift>
  8048d0:	102b883a 	mov	r21,r2
  8048d4:	d8800817 	ldw	r2,32(sp)
  8048d8:	1001161e 	bne	r2,zero,804d34 <_dtoa_r+0xf28>
  8048dc:	d8800417 	ldw	r2,16(sp)
  8048e0:	0081040e 	bge	zero,r2,804cf4 <_dtoa_r+0xee8>
  8048e4:	d8800617 	ldw	r2,24(sp)
  8048e8:	1000b01e 	bne	r2,zero,804bac <_dtoa_r+0xda0>
  8048ec:	d8800317 	ldw	r2,12(sp)
  8048f0:	10800044 	addi	r2,r2,1
  8048f4:	d8800315 	stw	r2,12(sp)
  8048f8:	dc800417 	ldw	r18,16(sp)
  8048fc:	04400044 	movi	r17,1
  804900:	00000706 	br	804920 <_dtoa_r+0xb14>
  804904:	b00b883a 	mov	r5,r22
  804908:	000f883a 	mov	r7,zero
  80490c:	01800284 	movi	r6,10
  804910:	b809883a 	mov	r4,r23
  804914:	08074140 	call	807414 <__multadd>
  804918:	102d883a 	mov	r22,r2
  80491c:	8c400044 	addi	r17,r17,1
  804920:	a80b883a 	mov	r5,r21
  804924:	b009883a 	mov	r4,r22
  804928:	0803bec0 	call	803bec <quorem>
  80492c:	10c00c04 	addi	r3,r2,48
  804930:	e445883a 	add	r2,fp,r17
  804934:	10ffffc5 	stb	r3,-1(r2)
  804938:	8cbff216 	blt	r17,r18,804904 <_dtoa_r+0xaf8>
  80493c:	d8800417 	ldw	r2,16(sp)
  804940:	0081510e 	bge	zero,r2,804e88 <_dtoa_r+0x107c>
  804944:	e0a5883a 	add	r18,fp,r2
  804948:	0023883a 	mov	r17,zero
  80494c:	b00b883a 	mov	r5,r22
  804950:	01800044 	movi	r6,1
  804954:	b809883a 	mov	r4,r23
  804958:	d8c00115 	stw	r3,4(sp)
  80495c:	0807bd40 	call	807bd4 <__lshift>
  804960:	1009883a 	mov	r4,r2
  804964:	a80b883a 	mov	r5,r21
  804968:	102d883a 	mov	r22,r2
  80496c:	0807d5c0 	call	807d5c <__mcmp>
  804970:	913fffc3 	ldbu	r4,-1(r18)
  804974:	00800416 	blt	zero,r2,804988 <_dtoa_r+0xb7c>
  804978:	00014806 	br	804e9c <_dtoa_r+0x1090>
  80497c:	e0c15626 	beq	fp,r3,804ed8 <_dtoa_r+0x10cc>
  804980:	193fffc3 	ldbu	r4,-1(r3)
  804984:	1825883a 	mov	r18,r3
  804988:	20803fcc 	andi	r2,r4,255
  80498c:	1080201c 	xori	r2,r2,128
  804990:	10bfe004 	addi	r2,r2,-128
  804994:	10800e60 	cmpeqi	r2,r2,57
  804998:	90ffffc4 	addi	r3,r18,-1
  80499c:	103ff71e 	bne	r2,zero,80497c <_dtoa_r+0xb70>
  8049a0:	21000044 	addi	r4,r4,1
  8049a4:	19000005 	stb	r4,0(r3)
  8049a8:	a80b883a 	mov	r5,r21
  8049ac:	b809883a 	mov	r4,r23
  8049b0:	08073f00 	call	8073f0 <_Bfree>
  8049b4:	80000826 	beq	r16,zero,8049d8 <_dtoa_r+0xbcc>
  8049b8:	88000426 	beq	r17,zero,8049cc <_dtoa_r+0xbc0>
  8049bc:	8c000326 	beq	r17,r16,8049cc <_dtoa_r+0xbc0>
  8049c0:	880b883a 	mov	r5,r17
  8049c4:	b809883a 	mov	r4,r23
  8049c8:	08073f00 	call	8073f0 <_Bfree>
  8049cc:	800b883a 	mov	r5,r16
  8049d0:	b809883a 	mov	r4,r23
  8049d4:	08073f00 	call	8073f0 <_Bfree>
  8049d8:	b00b883a 	mov	r5,r22
  8049dc:	b809883a 	mov	r4,r23
  8049e0:	08073f00 	call	8073f0 <_Bfree>
  8049e4:	d8801f17 	ldw	r2,124(sp)
  8049e8:	d8c00317 	ldw	r3,12(sp)
  8049ec:	90000005 	stb	zero,0(r18)
  8049f0:	10c00015 	stw	r3,0(r2)
  8049f4:	d8802117 	ldw	r2,132(sp)
  8049f8:	103d3526 	beq	r2,zero,803ed0 <_dtoa_r+0xc4>
  8049fc:	14800015 	stw	r18,0(r2)
  804a00:	003d3306 	br	803ed0 <_dtoa_r+0xc4>
  804a04:	e0bfffc4 	addi	r2,fp,-1
  804a08:	d8000815 	stw	zero,32(sp)
  804a0c:	10002616 	blt	r2,zero,804aa8 <_dtoa_r+0xc9c>
  804a10:	d8000515 	stw	zero,20(sp)
  804a14:	d8800217 	ldw	r2,8(sp)
  804a18:	d8c00117 	ldw	r3,4(sp)
  804a1c:	dcc00315 	stw	r19,12(sp)
  804a20:	14c5883a 	add	r2,r2,r19
  804a24:	d8800215 	stw	r2,8(sp)
  804a28:	d8000715 	stw	zero,28(sp)
  804a2c:	188002a8 	cmpgeui	r2,r3,10
  804a30:	103d9d26 	beq	r2,zero,8040a8 <_dtoa_r+0x29c>
  804a34:	00800044 	movi	r2,1
  804a38:	d8800615 	stw	r2,24(sp)
  804a3c:	00bfffc4 	movi	r2,-1
  804a40:	04000044 	movi	r16,1
  804a44:	d8000115 	stw	zero,4(sp)
  804a48:	d8800415 	stw	r2,16(sp)
  804a4c:	d8001e15 	stw	zero,120(sp)
  804a50:	d8800417 	ldw	r2,16(sp)
  804a54:	b8001115 	stw	zero,68(r23)
  804a58:	000b883a 	mov	r5,zero
  804a5c:	d8800b15 	stw	r2,44(sp)
  804a60:	003dae06 	br	80411c <_dtoa_r+0x310>
  804a64:	188000e0 	cmpeqi	r2,r3,3
  804a68:	d8000615 	stw	zero,24(sp)
  804a6c:	103eb126 	beq	r2,zero,804534 <_dtoa_r+0x728>
  804a70:	d8801e17 	ldw	r2,120(sp)
  804a74:	d8c00317 	ldw	r3,12(sp)
  804a78:	10c5883a 	add	r2,r2,r3
  804a7c:	d8800b15 	stw	r2,44(sp)
  804a80:	10800044 	addi	r2,r2,1
  804a84:	d8800415 	stw	r2,16(sp)
  804a88:	100d883a 	mov	r6,r2
  804a8c:	00bd9816 	blt	zero,r2,8040f0 <_dtoa_r+0x2e4>
  804a90:	01800044 	movi	r6,1
  804a94:	003d9606 	br	8040f0 <_dtoa_r+0x2e4>
  804a98:	00800044 	movi	r2,1
  804a9c:	d8800815 	stw	r2,32(sp)
  804aa0:	e0bfffc4 	addi	r2,fp,-1
  804aa4:	103d740e 	bge	r2,zero,804078 <_dtoa_r+0x26c>
  804aa8:	00800044 	movi	r2,1
  804aac:	1705c83a 	sub	r2,r2,fp
  804ab0:	d8800515 	stw	r2,20(sp)
  804ab4:	d8000215 	stw	zero,8(sp)
  804ab8:	003d7006 	br	80407c <_dtoa_r+0x270>
  804abc:	9809883a 	mov	r4,r19
  804ac0:	080db600 	call	80db60 <__floatsidf>
  804ac4:	900d883a 	mov	r6,r18
  804ac8:	a80f883a 	mov	r7,r21
  804acc:	1009883a 	mov	r4,r2
  804ad0:	180b883a 	mov	r5,r3
  804ad4:	080cef80 	call	80cef8 <__eqdf2>
  804ad8:	103d5426 	beq	r2,zero,80402c <_dtoa_r+0x220>
  804adc:	9cffffc4 	addi	r19,r19,-1
  804ae0:	003d5206 	br	80402c <_dtoa_r+0x220>
  804ae4:	07002074 	movhi	fp,129
  804ae8:	e701b504 	addi	fp,fp,1748
  804aec:	003cf806 	br	803ed0 <_dtoa_r+0xc4>
  804af0:	dd400717 	ldw	r21,28(sp)
  804af4:	dc800517 	ldw	r18,20(sp)
  804af8:	0021883a 	mov	r16,zero
  804afc:	003f2906 	br	8047a4 <_dtoa_r+0x998>
  804b00:	00800704 	movi	r2,28
  804b04:	d8c00517 	ldw	r3,20(sp)
  804b08:	90a5883a 	add	r18,r18,r2
  804b0c:	1887883a 	add	r3,r3,r2
  804b10:	d8c00515 	stw	r3,20(sp)
  804b14:	d8c00217 	ldw	r3,8(sp)
  804b18:	1885883a 	add	r2,r3,r2
  804b1c:	d8800215 	stw	r2,8(sp)
  804b20:	003f5e06 	br	80489c <_dtoa_r+0xa90>
  804b24:	01000804 	movi	r4,32
  804b28:	2089c83a 	sub	r4,r4,r2
  804b2c:	a108983a 	sll	r4,r20,r4
  804b30:	003d0a06 	br	803f5c <_dtoa_r+0x150>
  804b34:	04000044 	movi	r16,1
  804b38:	003d6006 	br	8040bc <_dtoa_r+0x2b0>
  804b3c:	100b883a 	mov	r5,r2
  804b40:	980d883a 	mov	r6,r19
  804b44:	b809883a 	mov	r4,r23
  804b48:	0807abc0 	call	807abc <__pow5mult>
  804b4c:	d8c00117 	ldw	r3,4(sp)
  804b50:	102b883a 	mov	r21,r2
  804b54:	18c00090 	cmplti	r3,r3,2
  804b58:	18014b1e 	bne	r3,zero,805088 <_dtoa_r+0x127c>
  804b5c:	0023883a 	mov	r17,zero
  804b60:	a8800417 	ldw	r2,16(r21)
  804b64:	10800104 	addi	r2,r2,4
  804b68:	100490ba 	slli	r2,r2,2
  804b6c:	a885883a 	add	r2,r21,r2
  804b70:	11000017 	ldw	r4,0(r2)
  804b74:	08076a80 	call	8076a8 <__hi0bits>
  804b78:	00c00804 	movi	r3,32
  804b7c:	1885c83a 	sub	r2,r3,r2
  804b80:	003f3606 	br	80485c <_dtoa_r+0xa50>
  804b84:	800b883a 	mov	r5,r16
  804b88:	000f883a 	mov	r7,zero
  804b8c:	01800284 	movi	r6,10
  804b90:	b809883a 	mov	r4,r23
  804b94:	08074140 	call	807414 <__multadd>
  804b98:	1021883a 	mov	r16,r2
  804b9c:	d8800b17 	ldw	r2,44(sp)
  804ba0:	00824d0e 	bge	zero,r2,8054d8 <_dtoa_r+0x16cc>
  804ba4:	dcc00315 	stw	r19,12(sp)
  804ba8:	d8800415 	stw	r2,16(sp)
  804bac:	0480aa16 	blt	zero,r18,804e58 <_dtoa_r+0x104c>
  804bb0:	8801701e 	bne	r17,zero,805174 <_dtoa_r+0x1368>
  804bb4:	8027883a 	mov	r19,r16
  804bb8:	d9000417 	ldw	r4,16(sp)
  804bbc:	e0bfffc4 	addi	r2,fp,-1
  804bc0:	a0c0004c 	andi	r3,r20,1
  804bc4:	1105883a 	add	r2,r2,r4
  804bc8:	d8800415 	stw	r2,16(sp)
  804bcc:	d8800117 	ldw	r2,4(sp)
  804bd0:	d8c00715 	stw	r3,28(sp)
  804bd4:	e029883a 	mov	r20,fp
  804bd8:	1884b03a 	or	r2,r3,r2
  804bdc:	d8800615 	stw	r2,24(sp)
  804be0:	df000815 	stw	fp,32(sp)
  804be4:	00002906 	br	804c8c <_dtoa_r+0xe80>
  804be8:	b009883a 	mov	r4,r22
  804bec:	0807d5c0 	call	807d5c <__mcmp>
  804bf0:	900b883a 	mov	r5,r18
  804bf4:	b809883a 	mov	r4,r23
  804bf8:	d8800215 	stw	r2,8(sp)
  804bfc:	08073f00 	call	8073f0 <_Bfree>
  804c00:	d8800217 	ldw	r2,8(sp)
  804c04:	1000021e 	bne	r2,zero,804c10 <_dtoa_r+0xe04>
  804c08:	d8c00617 	ldw	r3,24(sp)
  804c0c:	18022326 	beq	r3,zero,80549c <_dtoa_r+0x1690>
  804c10:	a4800044 	addi	r18,r20,1
  804c14:	88012216 	blt	r17,zero,8050a0 <_dtoa_r+0x1294>
  804c18:	d8c00117 	ldw	r3,4(sp)
  804c1c:	1c62b03a 	or	r17,r3,r17
  804c20:	d8c00717 	ldw	r3,28(sp)
  804c24:	1c62b03a 	or	r17,r3,r17
  804c28:	88011d26 	beq	r17,zero,8050a0 <_dtoa_r+0x1294>
  804c2c:	00816b16 	blt	zero,r2,8051dc <_dtoa_r+0x13d0>
  804c30:	d8800417 	ldw	r2,16(sp)
  804c34:	a7000005 	stb	fp,0(r20)
  804c38:	15017126 	beq	r2,r20,805200 <_dtoa_r+0x13f4>
  804c3c:	b00b883a 	mov	r5,r22
  804c40:	000f883a 	mov	r7,zero
  804c44:	01800284 	movi	r6,10
  804c48:	b809883a 	mov	r4,r23
  804c4c:	08074140 	call	807414 <__multadd>
  804c50:	102d883a 	mov	r22,r2
  804c54:	800b883a 	mov	r5,r16
  804c58:	000f883a 	mov	r7,zero
  804c5c:	01800284 	movi	r6,10
  804c60:	b809883a 	mov	r4,r23
  804c64:	84c01f26 	beq	r16,r19,804ce4 <_dtoa_r+0xed8>
  804c68:	08074140 	call	807414 <__multadd>
  804c6c:	980b883a 	mov	r5,r19
  804c70:	000f883a 	mov	r7,zero
  804c74:	01800284 	movi	r6,10
  804c78:	b809883a 	mov	r4,r23
  804c7c:	1021883a 	mov	r16,r2
  804c80:	08074140 	call	807414 <__multadd>
  804c84:	1027883a 	mov	r19,r2
  804c88:	9029883a 	mov	r20,r18
  804c8c:	a80b883a 	mov	r5,r21
  804c90:	b009883a 	mov	r4,r22
  804c94:	0803bec0 	call	803bec <quorem>
  804c98:	800b883a 	mov	r5,r16
  804c9c:	b009883a 	mov	r4,r22
  804ca0:	1039883a 	mov	fp,r2
  804ca4:	d8800515 	stw	r2,20(sp)
  804ca8:	0807d5c0 	call	807d5c <__mcmp>
  804cac:	a80b883a 	mov	r5,r21
  804cb0:	980d883a 	mov	r6,r19
  804cb4:	b809883a 	mov	r4,r23
  804cb8:	1023883a 	mov	r17,r2
  804cbc:	0807db40 	call	807db4 <__mdiff>
  804cc0:	1025883a 	mov	r18,r2
  804cc4:	10800317 	ldw	r2,12(r2)
  804cc8:	e7000c04 	addi	fp,fp,48
  804ccc:	900b883a 	mov	r5,r18
  804cd0:	103fc526 	beq	r2,zero,804be8 <_dtoa_r+0xddc>
  804cd4:	b809883a 	mov	r4,r23
  804cd8:	08073f00 	call	8073f0 <_Bfree>
  804cdc:	00800044 	movi	r2,1
  804ce0:	003fcb06 	br	804c10 <_dtoa_r+0xe04>
  804ce4:	08074140 	call	807414 <__multadd>
  804ce8:	1021883a 	mov	r16,r2
  804cec:	1027883a 	mov	r19,r2
  804cf0:	003fe506 	br	804c88 <_dtoa_r+0xe7c>
  804cf4:	d8800117 	ldw	r2,4(sp)
  804cf8:	108000d0 	cmplti	r2,r2,3
  804cfc:	10003c26 	beq	r2,zero,804df0 <_dtoa_r+0xfe4>
  804d00:	d8800617 	ldw	r2,24(sp)
  804d04:	103fa91e 	bne	r2,zero,804bac <_dtoa_r+0xda0>
  804d08:	a80b883a 	mov	r5,r21
  804d0c:	b009883a 	mov	r4,r22
  804d10:	0803bec0 	call	803bec <quorem>
  804d14:	10c00c04 	addi	r3,r2,48
  804d18:	d8800317 	ldw	r2,12(sp)
  804d1c:	e4800044 	addi	r18,fp,1
  804d20:	e0c00005 	stb	r3,0(fp)
  804d24:	10800044 	addi	r2,r2,1
  804d28:	d8800315 	stw	r2,12(sp)
  804d2c:	0023883a 	mov	r17,zero
  804d30:	003f0606 	br	80494c <_dtoa_r+0xb40>
  804d34:	a80b883a 	mov	r5,r21
  804d38:	b009883a 	mov	r4,r22
  804d3c:	0807d5c0 	call	807d5c <__mcmp>
  804d40:	103ee60e 	bge	r2,zero,8048dc <_dtoa_r+0xad0>
  804d44:	b00b883a 	mov	r5,r22
  804d48:	000f883a 	mov	r7,zero
  804d4c:	01800284 	movi	r6,10
  804d50:	b809883a 	mov	r4,r23
  804d54:	08074140 	call	807414 <__multadd>
  804d58:	d8c00317 	ldw	r3,12(sp)
  804d5c:	102d883a 	mov	r22,r2
  804d60:	d8800617 	ldw	r2,24(sp)
  804d64:	1cffffc4 	addi	r19,r3,-1
  804d68:	103f861e 	bne	r2,zero,804b84 <_dtoa_r+0xd78>
  804d6c:	d8800b17 	ldw	r2,44(sp)
  804d70:	0081d40e 	bge	zero,r2,8054c4 <_dtoa_r+0x16b8>
  804d74:	d8800415 	stw	r2,16(sp)
  804d78:	003edf06 	br	8048f8 <_dtoa_r+0xaec>
  804d7c:	00802074 	movhi	r2,129
  804d80:	e701be04 	addi	fp,fp,1784
  804d84:	1081bec4 	addi	r2,r2,1787
  804d88:	003dd906 	br	8044f0 <_dtoa_r+0x6e4>
  804d8c:	00800044 	movi	r2,1
  804d90:	d8800615 	stw	r2,24(sp)
  804d94:	003f3606 	br	804a70 <_dtoa_r+0xc64>
  804d98:	a03ead1e 	bne	r20,zero,804850 <_dtoa_r+0xa44>
  804d9c:	00800434 	movhi	r2,16
  804da0:	10bfffc4 	addi	r2,r2,-1
  804da4:	8884703a 	and	r2,r17,r2
  804da8:	103ea91e 	bne	r2,zero,804850 <_dtoa_r+0xa44>
  804dac:	8c5ffc2c 	andhi	r17,r17,32752
  804db0:	883ea726 	beq	r17,zero,804850 <_dtoa_r+0xa44>
  804db4:	d8800517 	ldw	r2,20(sp)
  804db8:	04400044 	movi	r17,1
  804dbc:	10800044 	addi	r2,r2,1
  804dc0:	d8800515 	stw	r2,20(sp)
  804dc4:	d8800217 	ldw	r2,8(sp)
  804dc8:	10800044 	addi	r2,r2,1
  804dcc:	d8800215 	stw	r2,8(sp)
  804dd0:	003ea006 	br	804854 <_dtoa_r+0xa48>
  804dd4:	00800044 	movi	r2,1
  804dd8:	d8800415 	stw	r2,16(sp)
  804ddc:	d8801e15 	stw	r2,120(sp)
  804de0:	003f1b06 	br	804a50 <_dtoa_r+0xc44>
  804de4:	d8800b17 	ldw	r2,44(sp)
  804de8:	dcc00315 	stw	r19,12(sp)
  804dec:	d8800415 	stw	r2,16(sp)
  804df0:	d8800417 	ldw	r2,16(sp)
  804df4:	103dfb1e 	bne	r2,zero,8045e4 <_dtoa_r+0x7d8>
  804df8:	a80b883a 	mov	r5,r21
  804dfc:	b809883a 	mov	r4,r23
  804e00:	000f883a 	mov	r7,zero
  804e04:	01800144 	movi	r6,5
  804e08:	08074140 	call	807414 <__multadd>
  804e0c:	100b883a 	mov	r5,r2
  804e10:	b009883a 	mov	r4,r22
  804e14:	102b883a 	mov	r21,r2
  804e18:	0807d5c0 	call	807d5c <__mcmp>
  804e1c:	00bdf10e 	bge	zero,r2,8045e4 <_dtoa_r+0x7d8>
  804e20:	00800c44 	movi	r2,49
  804e24:	e0800005 	stb	r2,0(fp)
  804e28:	d8800317 	ldw	r2,12(sp)
  804e2c:	e4800044 	addi	r18,fp,1
  804e30:	14400044 	addi	r17,r2,1
  804e34:	a80b883a 	mov	r5,r21
  804e38:	b809883a 	mov	r4,r23
  804e3c:	08073f00 	call	8073f0 <_Bfree>
  804e40:	88800044 	addi	r2,r17,1
  804e44:	d8800315 	stw	r2,12(sp)
  804e48:	803ee01e 	bne	r16,zero,8049cc <_dtoa_r+0xbc0>
  804e4c:	003ee206 	br	8049d8 <_dtoa_r+0xbcc>
  804e50:	1805883a 	mov	r2,r3
  804e54:	003e5806 	br	8047b8 <_dtoa_r+0x9ac>
  804e58:	800b883a 	mov	r5,r16
  804e5c:	900d883a 	mov	r6,r18
  804e60:	b809883a 	mov	r4,r23
  804e64:	0807bd40 	call	807bd4 <__lshift>
  804e68:	1021883a 	mov	r16,r2
  804e6c:	003f5006 	br	804bb0 <_dtoa_r+0xda4>
  804e70:	156bc83a 	sub	r21,r2,r21
  804e74:	003e3e06 	br	804770 <_dtoa_r+0x964>
  804e78:	dd000a15 	stw	r20,40(sp)
  804e7c:	dc400c15 	stw	r17,48(sp)
  804e80:	04000084 	movi	r16,2
  804e84:	003cc906 	br	8041ac <_dtoa_r+0x3a0>
  804e88:	00800044 	movi	r2,1
  804e8c:	003ead06 	br	804944 <_dtoa_r+0xb38>
  804e90:	00800044 	movi	r2,1
  804e94:	d8800615 	stw	r2,24(sp)
  804e98:	003c9006 	br	8040dc <_dtoa_r+0x2d0>
  804e9c:	1000031e 	bne	r2,zero,804eac <_dtoa_r+0x10a0>
  804ea0:	d8c00117 	ldw	r3,4(sp)
  804ea4:	18c0004c 	andi	r3,r3,1
  804ea8:	183eb71e 	bne	r3,zero,804988 <_dtoa_r+0xb7c>
  804eac:	2005883a 	mov	r2,r4
  804eb0:	00000206 	br	804ebc <_dtoa_r+0x10b0>
  804eb4:	90bfff83 	ldbu	r2,-2(r18)
  804eb8:	1825883a 	mov	r18,r3
  804ebc:	10803fcc 	andi	r2,r2,255
  804ec0:	1080201c 	xori	r2,r2,128
  804ec4:	10bfe004 	addi	r2,r2,-128
  804ec8:	10800c18 	cmpnei	r2,r2,48
  804ecc:	90ffffc4 	addi	r3,r18,-1
  804ed0:	103ff826 	beq	r2,zero,804eb4 <_dtoa_r+0x10a8>
  804ed4:	003eb406 	br	8049a8 <_dtoa_r+0xb9c>
  804ed8:	00800c44 	movi	r2,49
  804edc:	e0800005 	stb	r2,0(fp)
  804ee0:	d8800317 	ldw	r2,12(sp)
  804ee4:	10800044 	addi	r2,r2,1
  804ee8:	d8800315 	stw	r2,12(sp)
  804eec:	003eae06 	br	8049a8 <_dtoa_r+0xb9c>
  804ef0:	d8c00917 	ldw	r3,36(sp)
  804ef4:	18011826 	beq	r3,zero,805358 <_dtoa_r+0x154c>
  804ef8:	d8c00517 	ldw	r3,20(sp)
  804efc:	d9000217 	ldw	r4,8(sp)
  804f00:	10810cc4 	addi	r2,r2,1075
  804f04:	dd400717 	ldw	r21,28(sp)
  804f08:	2089883a 	add	r4,r4,r2
  804f0c:	1885883a 	add	r2,r3,r2
  804f10:	1825883a 	mov	r18,r3
  804f14:	d9000215 	stw	r4,8(sp)
  804f18:	d8800515 	stw	r2,20(sp)
  804f1c:	003e1d06 	br	804794 <_dtoa_r+0x988>
  804f20:	8009883a 	mov	r4,r16
  804f24:	080db600 	call	80db60 <__floatsidf>
  804f28:	d9c00a17 	ldw	r7,40(sp)
  804f2c:	900d883a 	mov	r6,r18
  804f30:	1009883a 	mov	r4,r2
  804f34:	180b883a 	mov	r5,r3
  804f38:	0800d3c0 	call	800d3c <__muldf3>
  804f3c:	000d883a 	mov	r6,zero
  804f40:	01d00734 	movhi	r7,16412
  804f44:	1009883a 	mov	r4,r2
  804f48:	180b883a 	mov	r5,r3
  804f4c:	080bc4c0 	call	80bc4c <__adddf3>
  804f50:	d8800c15 	stw	r2,48(sp)
  804f54:	00bf3034 	movhi	r2,64704
  804f58:	1885883a 	add	r2,r3,r2
  804f5c:	d8800d15 	stw	r2,52(sp)
  804f60:	d9400a17 	ldw	r5,40(sp)
  804f64:	9009883a 	mov	r4,r18
  804f68:	000d883a 	mov	r6,zero
  804f6c:	01d00534 	movhi	r7,16404
  804f70:	080d1580 	call	80d158 <__subdf3>
  804f74:	dd400d17 	ldw	r21,52(sp)
  804f78:	d9800c17 	ldw	r6,48(sp)
  804f7c:	1009883a 	mov	r4,r2
  804f80:	a80f883a 	mov	r7,r21
  804f84:	180b883a 	mov	r5,r3
  804f88:	1025883a 	mov	r18,r2
  804f8c:	1821883a 	mov	r16,r3
  804f90:	080cf780 	call	80cf78 <__gedf2>
  804f94:	00812d16 	blt	zero,r2,80544c <_dtoa_r+0x1640>
  804f98:	d9800c17 	ldw	r6,48(sp)
  804f9c:	a9e0003c 	xorhi	r7,r21,32768
  804fa0:	9009883a 	mov	r4,r18
  804fa4:	800b883a 	mov	r5,r16
  804fa8:	080d0680 	call	80d068 <__ledf2>
  804fac:	103d6e0e 	bge	r2,zero,804568 <_dtoa_r+0x75c>
  804fb0:	002b883a 	mov	r21,zero
  804fb4:	0021883a 	mov	r16,zero
  804fb8:	003d8a06 	br	8045e4 <_dtoa_r+0x7d8>
  804fbc:	d9800717 	ldw	r6,28(sp)
  804fc0:	b00b883a 	mov	r5,r22
  804fc4:	b809883a 	mov	r4,r23
  804fc8:	0807abc0 	call	807abc <__pow5mult>
  804fcc:	102d883a 	mov	r22,r2
  804fd0:	003e1706 	br	804830 <_dtoa_r+0xa24>
  804fd4:	d8800317 	ldw	r2,12(sp)
  804fd8:	10010d26 	beq	r2,zero,805410 <_dtoa_r+0x1604>
  804fdc:	00abc83a 	sub	r21,zero,r2
  804fe0:	a88003cc 	andi	r2,r21,15
  804fe4:	100690fa 	slli	r3,r2,3
  804fe8:	00802074 	movhi	r2,129
  804fec:	1081fe04 	addi	r2,r2,2040
  804ff0:	10c5883a 	add	r2,r2,r3
  804ff4:	11800017 	ldw	r6,0(r2)
  804ff8:	11c00117 	ldw	r7,4(r2)
  804ffc:	a009883a 	mov	r4,r20
  805000:	880b883a 	mov	r5,r17
  805004:	a82bd13a 	srai	r21,r21,4
  805008:	0800d3c0 	call	800d3c <__muldf3>
  80500c:	d8c00a15 	stw	r3,40(sp)
  805010:	1025883a 	mov	r18,r2
  805014:	a8013826 	beq	r21,zero,8054f8 <_dtoa_r+0x16ec>
  805018:	02002074 	movhi	r8,129
  80501c:	04000084 	movi	r16,2
  805020:	4201f404 	addi	r8,r8,2000
  805024:	180b883a 	mov	r5,r3
  805028:	dc400c15 	stw	r17,48(sp)
  80502c:	1009883a 	mov	r4,r2
  805030:	8023883a 	mov	r17,r16
  805034:	0007883a 	mov	r3,zero
  805038:	4021883a 	mov	r16,r8
  80503c:	a980004c 	andi	r6,r21,1
  805040:	30000726 	beq	r6,zero,805060 <_dtoa_r+0x1254>
  805044:	81800017 	ldw	r6,0(r16)
  805048:	81c00117 	ldw	r7,4(r16)
  80504c:	8c400044 	addi	r17,r17,1
  805050:	0800d3c0 	call	800d3c <__muldf3>
  805054:	180b883a 	mov	r5,r3
  805058:	1009883a 	mov	r4,r2
  80505c:	00c00044 	movi	r3,1
  805060:	a82bd07a 	srai	r21,r21,1
  805064:	84000204 	addi	r16,r16,8
  805068:	a83ff41e 	bne	r21,zero,80503c <_dtoa_r+0x1230>
  80506c:	18c03fcc 	andi	r3,r3,255
  805070:	8821883a 	mov	r16,r17
  805074:	dc400c17 	ldw	r17,48(sp)
  805078:	183c6526 	beq	r3,zero,804210 <_dtoa_r+0x404>
  80507c:	2025883a 	mov	r18,r4
  805080:	d9400a15 	stw	r5,40(sp)
  805084:	003c6206 	br	804210 <_dtoa_r+0x404>
  805088:	a03eb41e 	bne	r20,zero,804b5c <_dtoa_r+0xd50>
  80508c:	00800434 	movhi	r2,16
  805090:	10bfffc4 	addi	r2,r2,-1
  805094:	8884703a 	and	r2,r17,r2
  805098:	103f4426 	beq	r2,zero,804dac <_dtoa_r+0xfa0>
  80509c:	003eaf06 	br	804b5c <_dtoa_r+0xd50>
  8050a0:	d9000317 	ldw	r4,12(sp)
  8050a4:	e007883a 	mov	r3,fp
  8050a8:	df000817 	ldw	fp,32(sp)
  8050ac:	21000044 	addi	r4,r4,1
  8050b0:	d9000315 	stw	r4,12(sp)
  8050b4:	00800f0e 	bge	zero,r2,8050f4 <_dtoa_r+0x12e8>
  8050b8:	b00b883a 	mov	r5,r22
  8050bc:	01800044 	movi	r6,1
  8050c0:	b809883a 	mov	r4,r23
  8050c4:	d8c00115 	stw	r3,4(sp)
  8050c8:	0807bd40 	call	807bd4 <__lshift>
  8050cc:	a80b883a 	mov	r5,r21
  8050d0:	1009883a 	mov	r4,r2
  8050d4:	102d883a 	mov	r22,r2
  8050d8:	0807d5c0 	call	807d5c <__mcmp>
  8050dc:	d8c00117 	ldw	r3,4(sp)
  8050e0:	0080e40e 	bge	zero,r2,805474 <_dtoa_r+0x1668>
  8050e4:	18c00e60 	cmpeqi	r3,r3,57
  8050e8:	1800d21e 	bne	r3,zero,805434 <_dtoa_r+0x1628>
  8050ec:	d8800517 	ldw	r2,20(sp)
  8050f0:	10c00c44 	addi	r3,r2,49
  8050f4:	8023883a 	mov	r17,r16
  8050f8:	a0c00005 	stb	r3,0(r20)
  8050fc:	9821883a 	mov	r16,r19
  805100:	003e2906 	br	8049a8 <_dtoa_r+0xb9c>
  805104:	b027883a 	mov	r19,r22
  805108:	ddc00417 	ldw	r23,16(sp)
  80510c:	dd800217 	ldw	r22,8(sp)
  805110:	200d883a 	mov	r6,r4
  805114:	280f883a 	mov	r7,r5
  805118:	080bc4c0 	call	80bc4c <__adddf3>
  80511c:	dd400117 	ldw	r21,4(sp)
  805120:	180b883a 	mov	r5,r3
  805124:	900f883a 	mov	r7,r18
  805128:	a80d883a 	mov	r6,r21
  80512c:	1009883a 	mov	r4,r2
  805130:	1823883a 	mov	r17,r3
  805134:	1029883a 	mov	r20,r2
  805138:	080cf780 	call	80cf78 <__gedf2>
  80513c:	d8c00317 	ldw	r3,12(sp)
  805140:	18c00044 	addi	r3,r3,1
  805144:	d8c00315 	stw	r3,12(sp)
  805148:	00bcc716 	blt	zero,r2,804468 <_dtoa_r+0x65c>
  80514c:	a80d883a 	mov	r6,r21
  805150:	900f883a 	mov	r7,r18
  805154:	a009883a 	mov	r4,r20
  805158:	880b883a 	mov	r5,r17
  80515c:	080cef80 	call	80cef8 <__eqdf2>
  805160:	1000021e 	bne	r2,zero,80516c <_dtoa_r+0x1360>
  805164:	9cc0004c 	andi	r19,r19,1
  805168:	983cbf1e 	bne	r19,zero,804468 <_dtoa_r+0x65c>
  80516c:	8025883a 	mov	r18,r16
  805170:	003e1906 	br	8049d8 <_dtoa_r+0xbcc>
  805174:	81400117 	ldw	r5,4(r16)
  805178:	b809883a 	mov	r4,r23
  80517c:	080734c0 	call	80734c <_Balloc>
  805180:	1023883a 	mov	r17,r2
  805184:	1000e526 	beq	r2,zero,80551c <_dtoa_r+0x1710>
  805188:	81800417 	ldw	r6,16(r16)
  80518c:	81400304 	addi	r5,r16,12
  805190:	11000304 	addi	r4,r2,12
  805194:	31800084 	addi	r6,r6,2
  805198:	300c90ba 	slli	r6,r6,2
  80519c:	08070300 	call	807030 <memcpy>
  8051a0:	01800044 	movi	r6,1
  8051a4:	880b883a 	mov	r5,r17
  8051a8:	b809883a 	mov	r4,r23
  8051ac:	0807bd40 	call	807bd4 <__lshift>
  8051b0:	1027883a 	mov	r19,r2
  8051b4:	003e8006 	br	804bb8 <_dtoa_r+0xdac>
  8051b8:	b00b883a 	mov	r5,r22
  8051bc:	b809883a 	mov	r4,r23
  8051c0:	0807abc0 	call	807abc <__pow5mult>
  8051c4:	102d883a 	mov	r22,r2
  8051c8:	003d9906 	br	804830 <_dtoa_r+0xa24>
  8051cc:	d8800517 	ldw	r2,20(sp)
  8051d0:	d8c00417 	ldw	r3,16(sp)
  8051d4:	10e5c83a 	sub	r18,r2,r3
  8051d8:	003d6e06 	br	804794 <_dtoa_r+0x988>
  8051dc:	d9000317 	ldw	r4,12(sp)
  8051e0:	e007883a 	mov	r3,fp
  8051e4:	18800e58 	cmpnei	r2,r3,57
  8051e8:	21000044 	addi	r4,r4,1
  8051ec:	d9000315 	stw	r4,12(sp)
  8051f0:	df000817 	ldw	fp,32(sp)
  8051f4:	10008f26 	beq	r2,zero,805434 <_dtoa_r+0x1628>
  8051f8:	18c00044 	addi	r3,r3,1
  8051fc:	003fbd06 	br	8050f4 <_dtoa_r+0x12e8>
  805200:	d8800317 	ldw	r2,12(sp)
  805204:	e007883a 	mov	r3,fp
  805208:	8023883a 	mov	r17,r16
  80520c:	10800044 	addi	r2,r2,1
  805210:	df000817 	ldw	fp,32(sp)
  805214:	d8800315 	stw	r2,12(sp)
  805218:	9821883a 	mov	r16,r19
  80521c:	003dcb06 	br	80494c <_dtoa_r+0xb40>
  805220:	d9000c17 	ldw	r4,48(sp)
  805224:	d9400d17 	ldw	r5,52(sp)
  805228:	600d883a 	mov	r6,r12
  80522c:	680f883a 	mov	r7,r13
  805230:	dac00a15 	stw	r11,40(sp)
  805234:	0800d3c0 	call	800d3c <__muldf3>
  805238:	dac00a17 	ldw	r11,40(sp)
  80523c:	d9400e17 	ldw	r5,56(sp)
  805240:	d8800a15 	stw	r2,40(sp)
  805244:	e2c00005 	stb	r11,0(fp)
  805248:	29000058 	cmpnei	r4,r5,1
  80524c:	d8c00c15 	stw	r3,48(sp)
  805250:	e145883a 	add	r2,fp,r5
  805254:	20002126 	beq	r4,zero,8052dc <_dtoa_r+0x14d0>
  805258:	dc400e15 	stw	r17,56(sp)
  80525c:	dcc00d15 	stw	r19,52(sp)
  805260:	8023883a 	mov	r17,r16
  805264:	a809883a 	mov	r4,r21
  805268:	900b883a 	mov	r5,r18
  80526c:	1021883a 	mov	r16,r2
  805270:	000d883a 	mov	r6,zero
  805274:	01d00934 	movhi	r7,16420
  805278:	0800d3c0 	call	800d3c <__muldf3>
  80527c:	180b883a 	mov	r5,r3
  805280:	1009883a 	mov	r4,r2
  805284:	182b883a 	mov	r21,r3
  805288:	1027883a 	mov	r19,r2
  80528c:	080dae00 	call	80dae0 <__fixdfsi>
  805290:	1009883a 	mov	r4,r2
  805294:	1025883a 	mov	r18,r2
  805298:	080db600 	call	80db60 <__floatsidf>
  80529c:	9809883a 	mov	r4,r19
  8052a0:	a80b883a 	mov	r5,r21
  8052a4:	100d883a 	mov	r6,r2
  8052a8:	180f883a 	mov	r7,r3
  8052ac:	8c400044 	addi	r17,r17,1
  8052b0:	94800c04 	addi	r18,r18,48
  8052b4:	080d1580 	call	80d158 <__subdf3>
  8052b8:	8cbfffc5 	stb	r18,-1(r17)
  8052bc:	1009883a 	mov	r4,r2
  8052c0:	180b883a 	mov	r5,r3
  8052c4:	847fea1e 	bne	r16,r17,805270 <_dtoa_r+0x1464>
  8052c8:	8821883a 	mov	r16,r17
  8052cc:	dcc00d17 	ldw	r19,52(sp)
  8052d0:	dc400e17 	ldw	r17,56(sp)
  8052d4:	102b883a 	mov	r21,r2
  8052d8:	1825883a 	mov	r18,r3
  8052dc:	d9000a17 	ldw	r4,40(sp)
  8052e0:	d9400c17 	ldw	r5,48(sp)
  8052e4:	000d883a 	mov	r6,zero
  8052e8:	01cff834 	movhi	r7,16352
  8052ec:	080bc4c0 	call	80bc4c <__adddf3>
  8052f0:	a80d883a 	mov	r6,r21
  8052f4:	900f883a 	mov	r7,r18
  8052f8:	1009883a 	mov	r4,r2
  8052fc:	180b883a 	mov	r5,r3
  805300:	080d0680 	call	80d068 <__ledf2>
  805304:	103c5316 	blt	r2,zero,804454 <_dtoa_r+0x648>
  805308:	d9800a17 	ldw	r6,40(sp)
  80530c:	d9c00c17 	ldw	r7,48(sp)
  805310:	0009883a 	mov	r4,zero
  805314:	014ff834 	movhi	r5,16352
  805318:	080d1580 	call	80d158 <__subdf3>
  80531c:	a80d883a 	mov	r6,r21
  805320:	900f883a 	mov	r7,r18
  805324:	1009883a 	mov	r4,r2
  805328:	180b883a 	mov	r5,r3
  80532c:	080cf780 	call	80cf78 <__gedf2>
  805330:	00bc8d0e 	bge	zero,r2,804568 <_dtoa_r+0x75c>
  805334:	80bfffc7 	ldb	r2,-1(r16)
  805338:	8025883a 	mov	r18,r16
  80533c:	843fffc4 	addi	r16,r16,-1
  805340:	10800c20 	cmpeqi	r2,r2,48
  805344:	103ffb1e 	bne	r2,zero,805334 <_dtoa_r+0x1528>
  805348:	d8801117 	ldw	r2,68(sp)
  80534c:	10800044 	addi	r2,r2,1
  805350:	d8800315 	stw	r2,12(sp)
  805354:	003da006 	br	8049d8 <_dtoa_r+0xbcc>
  805358:	d8c01217 	ldw	r3,72(sp)
  80535c:	00800d84 	movi	r2,54
  805360:	d9000517 	ldw	r4,20(sp)
  805364:	10c5c83a 	sub	r2,r2,r3
  805368:	d8c00217 	ldw	r3,8(sp)
  80536c:	dd400717 	ldw	r21,28(sp)
  805370:	2025883a 	mov	r18,r4
  805374:	1887883a 	add	r3,r3,r2
  805378:	2085883a 	add	r2,r4,r2
  80537c:	d8c00215 	stw	r3,8(sp)
  805380:	d8800515 	stw	r2,20(sp)
  805384:	003d0306 	br	804794 <_dtoa_r+0x988>
  805388:	d8800417 	ldw	r2,16(sp)
  80538c:	103ee426 	beq	r2,zero,804f20 <_dtoa_r+0x1114>
  805390:	d8800b17 	ldw	r2,44(sp)
  805394:	00bc740e 	bge	zero,r2,804568 <_dtoa_r+0x75c>
  805398:	a80b883a 	mov	r5,r21
  80539c:	9009883a 	mov	r4,r18
  8053a0:	000d883a 	mov	r6,zero
  8053a4:	01d00934 	movhi	r7,16420
  8053a8:	0800d3c0 	call	800d3c <__muldf3>
  8053ac:	81000044 	addi	r4,r16,1
  8053b0:	1025883a 	mov	r18,r2
  8053b4:	182b883a 	mov	r21,r3
  8053b8:	d8c00a15 	stw	r3,40(sp)
  8053bc:	080db600 	call	80db60 <__floatsidf>
  8053c0:	900d883a 	mov	r6,r18
  8053c4:	a80f883a 	mov	r7,r21
  8053c8:	1009883a 	mov	r4,r2
  8053cc:	180b883a 	mov	r5,r3
  8053d0:	0800d3c0 	call	800d3c <__muldf3>
  8053d4:	1009883a 	mov	r4,r2
  8053d8:	000d883a 	mov	r6,zero
  8053dc:	01d00734 	movhi	r7,16412
  8053e0:	180b883a 	mov	r5,r3
  8053e4:	080bc4c0 	call	80bc4c <__adddf3>
  8053e8:	d9000317 	ldw	r4,12(sp)
  8053ec:	d8800c15 	stw	r2,48(sp)
  8053f0:	00bf3034 	movhi	r2,64704
  8053f4:	1887883a 	add	r3,r3,r2
  8053f8:	d8800b17 	ldw	r2,44(sp)
  8053fc:	213fffc4 	addi	r4,r4,-1
  805400:	d9001115 	stw	r4,68(sp)
  805404:	d8c00d15 	stw	r3,52(sp)
  805408:	d8800e15 	stw	r2,56(sp)
  80540c:	003b9f06 	br	80428c <_dtoa_r+0x480>
  805410:	a025883a 	mov	r18,r20
  805414:	dc400a15 	stw	r17,40(sp)
  805418:	04000084 	movi	r16,2
  80541c:	003b7c06 	br	804210 <_dtoa_r+0x404>
  805420:	d8800317 	ldw	r2,12(sp)
  805424:	00c00c44 	movi	r3,49
  805428:	10800044 	addi	r2,r2,1
  80542c:	d8800315 	stw	r2,12(sp)
  805430:	003c1606 	br	80448c <_dtoa_r+0x680>
  805434:	00800e44 	movi	r2,57
  805438:	8023883a 	mov	r17,r16
  80543c:	a0800005 	stb	r2,0(r20)
  805440:	9821883a 	mov	r16,r19
  805444:	01000e44 	movi	r4,57
  805448:	003d4f06 	br	804988 <_dtoa_r+0xb7c>
  80544c:	002b883a 	mov	r21,zero
  805450:	0021883a 	mov	r16,zero
  805454:	003e7206 	br	804e20 <_dtoa_r+0x1014>
  805458:	dd800d17 	ldw	r22,52(sp)
  80545c:	ddc00e17 	ldw	r23,56(sp)
  805460:	d8801117 	ldw	r2,68(sp)
  805464:	8025883a 	mov	r18,r16
  805468:	10800044 	addi	r2,r2,1
  80546c:	d8800315 	stw	r2,12(sp)
  805470:	003d5906 	br	8049d8 <_dtoa_r+0xbcc>
  805474:	103f1f1e 	bne	r2,zero,8050f4 <_dtoa_r+0x12e8>
  805478:	1880004c 	andi	r2,r3,1
  80547c:	103f191e 	bne	r2,zero,8050e4 <_dtoa_r+0x12d8>
  805480:	003f1c06 	br	8050f4 <_dtoa_r+0x12e8>
  805484:	dcc00f17 	ldw	r19,60(sp)
  805488:	dd800d17 	ldw	r22,52(sp)
  80548c:	ddc00e17 	ldw	r23,56(sp)
  805490:	dc400c17 	ldw	r17,48(sp)
  805494:	dd000a17 	ldw	r20,40(sp)
  805498:	003c3306 	br	804568 <_dtoa_r+0x75c>
  80549c:	d9000317 	ldw	r4,12(sp)
  8054a0:	e007883a 	mov	r3,fp
  8054a4:	18800e60 	cmpeqi	r2,r3,57
  8054a8:	21000044 	addi	r4,r4,1
  8054ac:	d9000315 	stw	r4,12(sp)
  8054b0:	df000817 	ldw	fp,32(sp)
  8054b4:	a4800044 	addi	r18,r20,1
  8054b8:	103fde1e 	bne	r2,zero,805434 <_dtoa_r+0x1628>
  8054bc:	047f0b16 	blt	zero,r17,8050ec <_dtoa_r+0x12e0>
  8054c0:	003f0c06 	br	8050f4 <_dtoa_r+0x12e8>
  8054c4:	d8800117 	ldw	r2,4(sp)
  8054c8:	108000c8 	cmpgei	r2,r2,3
  8054cc:	103e451e 	bne	r2,zero,804de4 <_dtoa_r+0xfd8>
  8054d0:	dcc00315 	stw	r19,12(sp)
  8054d4:	003e0c06 	br	804d08 <_dtoa_r+0xefc>
  8054d8:	d8800117 	ldw	r2,4(sp)
  8054dc:	108000c8 	cmpgei	r2,r2,3
  8054e0:	103e401e 	bne	r2,zero,804de4 <_dtoa_r+0xfd8>
  8054e4:	d8800b17 	ldw	r2,44(sp)
  8054e8:	dcc00315 	stw	r19,12(sp)
  8054ec:	d8800415 	stw	r2,16(sp)
  8054f0:	04bdaf0e 	bge	zero,r18,804bb0 <_dtoa_r+0xda4>
  8054f4:	003e5806 	br	804e58 <_dtoa_r+0x104c>
  8054f8:	04000084 	movi	r16,2
  8054fc:	003b4406 	br	804210 <_dtoa_r+0x404>
  805500:	01c02074 	movhi	r7,129
  805504:	01002074 	movhi	r4,129
  805508:	39c1c204 	addi	r7,r7,1800
  80550c:	000d883a 	mov	r6,zero
  805510:	01406a84 	movi	r5,426
  805514:	2101c704 	addi	r4,r4,1820
  805518:	080a1380 	call	80a138 <__assert_func>
  80551c:	01c02074 	movhi	r7,129
  805520:	01002074 	movhi	r4,129
  805524:	39c1c204 	addi	r7,r7,1800
  805528:	000d883a 	mov	r6,zero
  80552c:	0140ba84 	movi	r5,746
  805530:	2101c704 	addi	r4,r4,1820
  805534:	080a1380 	call	80a138 <__assert_func>
  805538:	e701bf04 	addi	fp,fp,1788
  80553c:	003a6406 	br	803ed0 <_dtoa_r+0xc4>
  805540:	18c00120 	cmpeqi	r3,r3,4
  805544:	183cd51e 	bne	r3,zero,80489c <_dtoa_r+0xa90>
  805548:	00c00f04 	movi	r3,60
  80554c:	1885c83a 	sub	r2,r3,r2
  805550:	003d6c06 	br	804b04 <_dtoa_r+0xcf8>
  805554:	000b883a 	mov	r5,zero
  805558:	003af006 	br	80411c <_dtoa_r+0x310>

0080555c <__sflush_r>:
  80555c:	2880030b 	ldhu	r2,12(r5)
  805560:	defffb04 	addi	sp,sp,-20
  805564:	dcc00315 	stw	r19,12(sp)
  805568:	dc000015 	stw	r16,0(sp)
  80556c:	dfc00415 	stw	ra,16(sp)
  805570:	dc800215 	stw	r18,8(sp)
  805574:	dc400115 	stw	r17,4(sp)
  805578:	10c0020c 	andi	r3,r2,8
  80557c:	2821883a 	mov	r16,r5
  805580:	2027883a 	mov	r19,r4
  805584:	18003f1e 	bne	r3,zero,805684 <__sflush_r+0x128>
  805588:	28c00117 	ldw	r3,4(r5)
  80558c:	10820014 	ori	r2,r2,2048
  805590:	2880030d 	sth	r2,12(r5)
  805594:	00c0550e 	bge	zero,r3,8056ec <__sflush_r+0x190>
  805598:	82000a17 	ldw	r8,40(r16)
  80559c:	40003126 	beq	r8,zero,805664 <__sflush_r+0x108>
  8055a0:	9c400017 	ldw	r17,0(r19)
  8055a4:	1104000c 	andi	r4,r2,4096
  8055a8:	98000015 	stw	zero,0(r19)
  8055ac:	81400717 	ldw	r5,28(r16)
  8055b0:	1007883a 	mov	r3,r2
  8055b4:	2000521e 	bne	r4,zero,805700 <__sflush_r+0x1a4>
  8055b8:	01c00044 	movi	r7,1
  8055bc:	000d883a 	mov	r6,zero
  8055c0:	9809883a 	mov	r4,r19
  8055c4:	403ee83a 	callr	r8
  8055c8:	10ffffd8 	cmpnei	r3,r2,-1
  8055cc:	18005826 	beq	r3,zero,805730 <__sflush_r+0x1d4>
  8055d0:	80c0030b 	ldhu	r3,12(r16)
  8055d4:	82000a17 	ldw	r8,40(r16)
  8055d8:	81400717 	ldw	r5,28(r16)
  8055dc:	18c0010c 	andi	r3,r3,4
  8055e0:	18000626 	beq	r3,zero,8055fc <__sflush_r+0xa0>
  8055e4:	81000117 	ldw	r4,4(r16)
  8055e8:	80c00c17 	ldw	r3,48(r16)
  8055ec:	1105c83a 	sub	r2,r2,r4
  8055f0:	18000226 	beq	r3,zero,8055fc <__sflush_r+0xa0>
  8055f4:	80c00f17 	ldw	r3,60(r16)
  8055f8:	10c5c83a 	sub	r2,r2,r3
  8055fc:	100d883a 	mov	r6,r2
  805600:	000f883a 	mov	r7,zero
  805604:	9809883a 	mov	r4,r19
  805608:	403ee83a 	callr	r8
  80560c:	10ffffd8 	cmpnei	r3,r2,-1
  805610:	18003d1e 	bne	r3,zero,805708 <__sflush_r+0x1ac>
  805614:	99000017 	ldw	r4,0(r19)
  805618:	80c0030b 	ldhu	r3,12(r16)
  80561c:	20004e26 	beq	r4,zero,805758 <__sflush_r+0x1fc>
  805620:	21400760 	cmpeqi	r5,r4,29
  805624:	2800021e 	bne	r5,zero,805630 <__sflush_r+0xd4>
  805628:	210005a0 	cmpeqi	r4,r4,22
  80562c:	20002c26 	beq	r4,zero,8056e0 <__sflush_r+0x184>
  805630:	80800417 	ldw	r2,16(r16)
  805634:	18fdffcc 	andi	r3,r3,63487
  805638:	80c0030d 	sth	r3,12(r16)
  80563c:	80000115 	stw	zero,4(r16)
  805640:	80800015 	stw	r2,0(r16)
  805644:	81400c17 	ldw	r5,48(r16)
  805648:	9c400015 	stw	r17,0(r19)
  80564c:	28000526 	beq	r5,zero,805664 <__sflush_r+0x108>
  805650:	80801004 	addi	r2,r16,64
  805654:	28800226 	beq	r5,r2,805660 <__sflush_r+0x104>
  805658:	9809883a 	mov	r4,r19
  80565c:	0805c7c0 	call	805c7c <_free_r>
  805660:	80000c15 	stw	zero,48(r16)
  805664:	0005883a 	mov	r2,zero
  805668:	dfc00417 	ldw	ra,16(sp)
  80566c:	dcc00317 	ldw	r19,12(sp)
  805670:	dc800217 	ldw	r18,8(sp)
  805674:	dc400117 	ldw	r17,4(sp)
  805678:	dc000017 	ldw	r16,0(sp)
  80567c:	dec00504 	addi	sp,sp,20
  805680:	f800283a 	ret
  805684:	2c800417 	ldw	r18,16(r5)
  805688:	903ff626 	beq	r18,zero,805664 <__sflush_r+0x108>
  80568c:	2c400017 	ldw	r17,0(r5)
  805690:	108000cc 	andi	r2,r2,3
  805694:	2c800015 	stw	r18,0(r5)
  805698:	8ca3c83a 	sub	r17,r17,r18
  80569c:	1000161e 	bne	r2,zero,8056f8 <__sflush_r+0x19c>
  8056a0:	28800517 	ldw	r2,20(r5)
  8056a4:	80800215 	stw	r2,8(r16)
  8056a8:	04400316 	blt	zero,r17,8056b8 <__sflush_r+0x15c>
  8056ac:	003fed06 	br	805664 <__sflush_r+0x108>
  8056b0:	90a5883a 	add	r18,r18,r2
  8056b4:	047feb0e 	bge	zero,r17,805664 <__sflush_r+0x108>
  8056b8:	80800917 	ldw	r2,36(r16)
  8056bc:	81400717 	ldw	r5,28(r16)
  8056c0:	880f883a 	mov	r7,r17
  8056c4:	900d883a 	mov	r6,r18
  8056c8:	9809883a 	mov	r4,r19
  8056cc:	103ee83a 	callr	r2
  8056d0:	88a3c83a 	sub	r17,r17,r2
  8056d4:	00bff616 	blt	zero,r2,8056b0 <__sflush_r+0x154>
  8056d8:	80c0030b 	ldhu	r3,12(r16)
  8056dc:	00bfffc4 	movi	r2,-1
  8056e0:	18c01014 	ori	r3,r3,64
  8056e4:	80c0030d 	sth	r3,12(r16)
  8056e8:	003fdf06 	br	805668 <__sflush_r+0x10c>
  8056ec:	28c00f17 	ldw	r3,60(r5)
  8056f0:	00ffa916 	blt	zero,r3,805598 <__sflush_r+0x3c>
  8056f4:	003fdb06 	br	805664 <__sflush_r+0x108>
  8056f8:	0005883a 	mov	r2,zero
  8056fc:	003fe906 	br	8056a4 <__sflush_r+0x148>
  805700:	80801417 	ldw	r2,80(r16)
  805704:	003fb506 	br	8055dc <__sflush_r+0x80>
  805708:	80c0030b 	ldhu	r3,12(r16)
  80570c:	81000417 	ldw	r4,16(r16)
  805710:	80000115 	stw	zero,4(r16)
  805714:	197dffcc 	andi	r5,r3,63487
  805718:	8140030d 	sth	r5,12(r16)
  80571c:	81000015 	stw	r4,0(r16)
  805720:	18c4000c 	andi	r3,r3,4096
  805724:	183fc726 	beq	r3,zero,805644 <__sflush_r+0xe8>
  805728:	80801415 	stw	r2,80(r16)
  80572c:	003fc506 	br	805644 <__sflush_r+0xe8>
  805730:	98c00017 	ldw	r3,0(r19)
  805734:	183fa626 	beq	r3,zero,8055d0 <__sflush_r+0x74>
  805738:	19000760 	cmpeqi	r4,r3,29
  80573c:	20000e1e 	bne	r4,zero,805778 <__sflush_r+0x21c>
  805740:	18c00598 	cmpnei	r3,r3,22
  805744:	18000c26 	beq	r3,zero,805778 <__sflush_r+0x21c>
  805748:	80c0030b 	ldhu	r3,12(r16)
  80574c:	18c01014 	ori	r3,r3,64
  805750:	80c0030d 	sth	r3,12(r16)
  805754:	003fc406 	br	805668 <__sflush_r+0x10c>
  805758:	81000417 	ldw	r4,16(r16)
  80575c:	197dffcc 	andi	r5,r3,63487
  805760:	8140030d 	sth	r5,12(r16)
  805764:	80000115 	stw	zero,4(r16)
  805768:	81000015 	stw	r4,0(r16)
  80576c:	18c4000c 	andi	r3,r3,4096
  805770:	183fb426 	beq	r3,zero,805644 <__sflush_r+0xe8>
  805774:	003fec06 	br	805728 <__sflush_r+0x1cc>
  805778:	9c400015 	stw	r17,0(r19)
  80577c:	0005883a 	mov	r2,zero
  805780:	003fb906 	br	805668 <__sflush_r+0x10c>

00805784 <_fflush_r>:
  805784:	defffd04 	addi	sp,sp,-12
  805788:	dc000115 	stw	r16,4(sp)
  80578c:	dfc00215 	stw	ra,8(sp)
  805790:	2021883a 	mov	r16,r4
  805794:	20000226 	beq	r4,zero,8057a0 <_fflush_r+0x1c>
  805798:	20800e17 	ldw	r2,56(r4)
  80579c:	10000726 	beq	r2,zero,8057bc <_fflush_r+0x38>
  8057a0:	2880030f 	ldh	r2,12(r5)
  8057a4:	10000a1e 	bne	r2,zero,8057d0 <_fflush_r+0x4c>
  8057a8:	0005883a 	mov	r2,zero
  8057ac:	dfc00217 	ldw	ra,8(sp)
  8057b0:	dc000117 	ldw	r16,4(sp)
  8057b4:	dec00304 	addi	sp,sp,12
  8057b8:	f800283a 	ret
  8057bc:	d9400015 	stw	r5,0(sp)
  8057c0:	0805b180 	call	805b18 <__sinit>
  8057c4:	d9400017 	ldw	r5,0(sp)
  8057c8:	2880030f 	ldh	r2,12(r5)
  8057cc:	103ff626 	beq	r2,zero,8057a8 <_fflush_r+0x24>
  8057d0:	8009883a 	mov	r4,r16
  8057d4:	dfc00217 	ldw	ra,8(sp)
  8057d8:	dc000117 	ldw	r16,4(sp)
  8057dc:	dec00304 	addi	sp,sp,12
  8057e0:	080555c1 	jmpi	80555c <__sflush_r>

008057e4 <fflush>:
  8057e4:	200b883a 	mov	r5,r4
  8057e8:	20000326 	beq	r4,zero,8057f8 <fflush+0x14>
  8057ec:	00802074 	movhi	r2,129
  8057f0:	1109e117 	ldw	r4,10116(r2)
  8057f4:	08057841 	jmpi	805784 <_fflush_r>
  8057f8:	00802074 	movhi	r2,129
  8057fc:	1109e017 	ldw	r4,10112(r2)
  805800:	01402034 	movhi	r5,128
  805804:	2955e104 	addi	r5,r5,22404
  805808:	08064dc1 	jmpi	8064dc <_fwalk_reent>

0080580c <__fp_lock>:
  80580c:	0005883a 	mov	r2,zero
  805810:	f800283a 	ret

00805814 <_cleanup_r>:
  805814:	01402074 	movhi	r5,129
  805818:	29689d04 	addi	r5,r5,-23948
  80581c:	08064dc1 	jmpi	8064dc <_fwalk_reent>

00805820 <__sinit.part.0>:
  805820:	00c02034 	movhi	r3,128
  805824:	20800117 	ldw	r2,4(r4)
  805828:	18d60504 	addi	r3,r3,22548
  80582c:	20c00f15 	stw	r3,60(r4)
  805830:	2140bb04 	addi	r5,r4,748
  805834:	00c000c4 	movi	r3,3
  805838:	20c0b915 	stw	r3,740(r4)
  80583c:	2140ba15 	stw	r5,744(r4)
  805840:	2000b815 	stw	zero,736(r4)
  805844:	10001705 	stb	zero,92(r2)
  805848:	10001745 	stb	zero,93(r2)
  80584c:	10001785 	stb	zero,94(r2)
  805850:	100017c5 	stb	zero,95(r2)
  805854:	10001805 	stb	zero,96(r2)
  805858:	10001845 	stb	zero,97(r2)
  80585c:	10001885 	stb	zero,98(r2)
  805860:	100018c5 	stb	zero,99(r2)
  805864:	00c00104 	movi	r3,4
  805868:	10c00315 	stw	r3,12(r2)
  80586c:	02002074 	movhi	r8,129
  805870:	20c00217 	ldw	r3,8(r4)
  805874:	01c02074 	movhi	r7,129
  805878:	01802074 	movhi	r6,129
  80587c:	01402074 	movhi	r5,129
  805880:	42229004 	addi	r8,r8,-30144
  805884:	39e2a704 	addi	r7,r7,-30052
  805888:	31a2c704 	addi	r6,r6,-29924
  80588c:	2962de04 	addi	r5,r5,-29832
  805890:	02400074 	movhi	r9,1
  805894:	10001915 	stw	zero,100(r2)
  805898:	10000015 	stw	zero,0(r2)
  80589c:	10000115 	stw	zero,4(r2)
  8058a0:	10000215 	stw	zero,8(r2)
  8058a4:	10000415 	stw	zero,16(r2)
  8058a8:	10000515 	stw	zero,20(r2)
  8058ac:	10000615 	stw	zero,24(r2)
  8058b0:	10800715 	stw	r2,28(r2)
  8058b4:	12000815 	stw	r8,32(r2)
  8058b8:	11c00915 	stw	r7,36(r2)
  8058bc:	11800a15 	stw	r6,40(r2)
  8058c0:	11400b15 	stw	r5,44(r2)
  8058c4:	4a400284 	addi	r9,r9,10
  8058c8:	1a400315 	stw	r9,12(r3)
  8058cc:	18001915 	stw	zero,100(r3)
  8058d0:	18000015 	stw	zero,0(r3)
  8058d4:	18000115 	stw	zero,4(r3)
  8058d8:	18000215 	stw	zero,8(r3)
  8058dc:	18000415 	stw	zero,16(r3)
  8058e0:	18001705 	stb	zero,92(r3)
  8058e4:	18001745 	stb	zero,93(r3)
  8058e8:	18001785 	stb	zero,94(r3)
  8058ec:	180017c5 	stb	zero,95(r3)
  8058f0:	18001805 	stb	zero,96(r3)
  8058f4:	18001845 	stb	zero,97(r3)
  8058f8:	18001885 	stb	zero,98(r3)
  8058fc:	180018c5 	stb	zero,99(r3)
  805900:	20800317 	ldw	r2,12(r4)
  805904:	024000b4 	movhi	r9,2
  805908:	18000515 	stw	zero,20(r3)
  80590c:	18000615 	stw	zero,24(r3)
  805910:	18c00715 	stw	r3,28(r3)
  805914:	1a000815 	stw	r8,32(r3)
  805918:	19c00915 	stw	r7,36(r3)
  80591c:	19800a15 	stw	r6,40(r3)
  805920:	19400b15 	stw	r5,44(r3)
  805924:	4a400484 	addi	r9,r9,18
  805928:	10001915 	stw	zero,100(r2)
  80592c:	10000015 	stw	zero,0(r2)
  805930:	10000115 	stw	zero,4(r2)
  805934:	10000215 	stw	zero,8(r2)
  805938:	12400315 	stw	r9,12(r2)
  80593c:	10000415 	stw	zero,16(r2)
  805940:	10000515 	stw	zero,20(r2)
  805944:	10000615 	stw	zero,24(r2)
  805948:	10001705 	stb	zero,92(r2)
  80594c:	10001745 	stb	zero,93(r2)
  805950:	10001785 	stb	zero,94(r2)
  805954:	100017c5 	stb	zero,95(r2)
  805958:	10001805 	stb	zero,96(r2)
  80595c:	10001845 	stb	zero,97(r2)
  805960:	10001885 	stb	zero,98(r2)
  805964:	100018c5 	stb	zero,99(r2)
  805968:	10800715 	stw	r2,28(r2)
  80596c:	12000815 	stw	r8,32(r2)
  805970:	11c00915 	stw	r7,36(r2)
  805974:	11800a15 	stw	r6,40(r2)
  805978:	11400b15 	stw	r5,44(r2)
  80597c:	00800044 	movi	r2,1
  805980:	20800e15 	stw	r2,56(r4)
  805984:	f800283a 	ret

00805988 <__fp_unlock>:
  805988:	0005883a 	mov	r2,zero
  80598c:	f800283a 	ret

00805990 <__sfmoreglue>:
  805990:	defffc04 	addi	sp,sp,-16
  805994:	dc800215 	stw	r18,8(sp)
  805998:	2825883a 	mov	r18,r5
  80599c:	dc000015 	stw	r16,0(sp)
  8059a0:	01401a04 	movi	r5,104
  8059a4:	2021883a 	mov	r16,r4
  8059a8:	913fffc4 	addi	r4,r18,-1
  8059ac:	dfc00315 	stw	ra,12(sp)
  8059b0:	dc400115 	stw	r17,4(sp)
  8059b4:	08016c40 	call	8016c4 <__mulsi3>
  8059b8:	8009883a 	mov	r4,r16
  8059bc:	11401d04 	addi	r5,r2,116
  8059c0:	1023883a 	mov	r17,r2
  8059c4:	080677c0 	call	80677c <_malloc_r>
  8059c8:	1021883a 	mov	r16,r2
  8059cc:	10000726 	beq	r2,zero,8059ec <__sfmoreglue+0x5c>
  8059d0:	11000304 	addi	r4,r2,12
  8059d4:	10000015 	stw	zero,0(r2)
  8059d8:	14800115 	stw	r18,4(r2)
  8059dc:	11000215 	stw	r4,8(r2)
  8059e0:	89801a04 	addi	r6,r17,104
  8059e4:	000b883a 	mov	r5,zero
  8059e8:	080725c0 	call	80725c <memset>
  8059ec:	8005883a 	mov	r2,r16
  8059f0:	dfc00317 	ldw	ra,12(sp)
  8059f4:	dc800217 	ldw	r18,8(sp)
  8059f8:	dc400117 	ldw	r17,4(sp)
  8059fc:	dc000017 	ldw	r16,0(sp)
  805a00:	dec00404 	addi	sp,sp,16
  805a04:	f800283a 	ret

00805a08 <__sfp>:
  805a08:	defffd04 	addi	sp,sp,-12
  805a0c:	00802074 	movhi	r2,129
  805a10:	dc000015 	stw	r16,0(sp)
  805a14:	1409e017 	ldw	r16,10112(r2)
  805a18:	dc400115 	stw	r17,4(sp)
  805a1c:	dfc00215 	stw	ra,8(sp)
  805a20:	80800e17 	ldw	r2,56(r16)
  805a24:	2023883a 	mov	r17,r4
  805a28:	10002b26 	beq	r2,zero,805ad8 <__sfp+0xd0>
  805a2c:	8400b804 	addi	r16,r16,736
  805a30:	80c00117 	ldw	r3,4(r16)
  805a34:	80800217 	ldw	r2,8(r16)
  805a38:	18ffffc4 	addi	r3,r3,-1
  805a3c:	1800030e 	bge	r3,zero,805a4c <__sfp+0x44>
  805a40:	00002106 	br	805ac8 <__sfp+0xc0>
  805a44:	10801a04 	addi	r2,r2,104
  805a48:	30001f26 	beq	r6,zero,805ac8 <__sfp+0xc0>
  805a4c:	1140030f 	ldh	r5,12(r2)
  805a50:	18ffffc4 	addi	r3,r3,-1
  805a54:	19bfffd8 	cmpnei	r6,r3,-1
  805a58:	283ffa1e 	bne	r5,zero,805a44 <__sfp+0x3c>
  805a5c:	00fffff4 	movhi	r3,65535
  805a60:	18c00044 	addi	r3,r3,1
  805a64:	10001915 	stw	zero,100(r2)
  805a68:	10000015 	stw	zero,0(r2)
  805a6c:	10000115 	stw	zero,4(r2)
  805a70:	10000215 	stw	zero,8(r2)
  805a74:	10c00315 	stw	r3,12(r2)
  805a78:	10000415 	stw	zero,16(r2)
  805a7c:	10000515 	stw	zero,20(r2)
  805a80:	10000615 	stw	zero,24(r2)
  805a84:	10001705 	stb	zero,92(r2)
  805a88:	10001745 	stb	zero,93(r2)
  805a8c:	10001785 	stb	zero,94(r2)
  805a90:	100017c5 	stb	zero,95(r2)
  805a94:	10001805 	stb	zero,96(r2)
  805a98:	10001845 	stb	zero,97(r2)
  805a9c:	10001885 	stb	zero,98(r2)
  805aa0:	100018c5 	stb	zero,99(r2)
  805aa4:	10000c15 	stw	zero,48(r2)
  805aa8:	10000d15 	stw	zero,52(r2)
  805aac:	10001115 	stw	zero,68(r2)
  805ab0:	10001215 	stw	zero,72(r2)
  805ab4:	dfc00217 	ldw	ra,8(sp)
  805ab8:	dc400117 	ldw	r17,4(sp)
  805abc:	dc000017 	ldw	r16,0(sp)
  805ac0:	dec00304 	addi	sp,sp,12
  805ac4:	f800283a 	ret
  805ac8:	80800017 	ldw	r2,0(r16)
  805acc:	10000526 	beq	r2,zero,805ae4 <__sfp+0xdc>
  805ad0:	1021883a 	mov	r16,r2
  805ad4:	003fd606 	br	805a30 <__sfp+0x28>
  805ad8:	8009883a 	mov	r4,r16
  805adc:	08058200 	call	805820 <__sinit.part.0>
  805ae0:	003fd206 	br	805a2c <__sfp+0x24>
  805ae4:	01400104 	movi	r5,4
  805ae8:	8809883a 	mov	r4,r17
  805aec:	08059900 	call	805990 <__sfmoreglue>
  805af0:	80800015 	stw	r2,0(r16)
  805af4:	103ff61e 	bne	r2,zero,805ad0 <__sfp+0xc8>
  805af8:	00c00304 	movi	r3,12
  805afc:	88c00015 	stw	r3,0(r17)
  805b00:	003fec06 	br	805ab4 <__sfp+0xac>

00805b04 <_cleanup>:
  805b04:	00802074 	movhi	r2,129
  805b08:	1109e017 	ldw	r4,10112(r2)
  805b0c:	01402074 	movhi	r5,129
  805b10:	29689d04 	addi	r5,r5,-23948
  805b14:	08064dc1 	jmpi	8064dc <_fwalk_reent>

00805b18 <__sinit>:
  805b18:	20800e17 	ldw	r2,56(r4)
  805b1c:	10000126 	beq	r2,zero,805b24 <__sinit+0xc>
  805b20:	f800283a 	ret
  805b24:	08058201 	jmpi	805820 <__sinit.part.0>

00805b28 <__sfp_lock_acquire>:
  805b28:	f800283a 	ret

00805b2c <__sfp_lock_release>:
  805b2c:	f800283a 	ret

00805b30 <__sinit_lock_acquire>:
  805b30:	f800283a 	ret

00805b34 <__sinit_lock_release>:
  805b34:	f800283a 	ret

00805b38 <__fp_lock_all>:
  805b38:	00802074 	movhi	r2,129
  805b3c:	1109e117 	ldw	r4,10116(r2)
  805b40:	01402034 	movhi	r5,128
  805b44:	29560304 	addi	r5,r5,22540
  805b48:	08064441 	jmpi	806444 <_fwalk>

00805b4c <__fp_unlock_all>:
  805b4c:	00802074 	movhi	r2,129
  805b50:	1109e117 	ldw	r4,10116(r2)
  805b54:	01402034 	movhi	r5,128
  805b58:	29566204 	addi	r5,r5,22920
  805b5c:	08064441 	jmpi	806444 <_fwalk>

00805b60 <_malloc_trim_r>:
  805b60:	defffb04 	addi	sp,sp,-20
  805b64:	dcc00315 	stw	r19,12(sp)
  805b68:	04c02074 	movhi	r19,129
  805b6c:	dc800215 	stw	r18,8(sp)
  805b70:	dc400115 	stw	r17,4(sp)
  805b74:	dc000015 	stw	r16,0(sp)
  805b78:	dfc00415 	stw	ra,16(sp)
  805b7c:	2821883a 	mov	r16,r5
  805b80:	9cc40104 	addi	r19,r19,4100
  805b84:	2025883a 	mov	r18,r4
  805b88:	080e3880 	call	80e388 <__malloc_lock>
  805b8c:	98800217 	ldw	r2,8(r19)
  805b90:	14400117 	ldw	r17,4(r2)
  805b94:	00bfff04 	movi	r2,-4
  805b98:	88a2703a 	and	r17,r17,r2
  805b9c:	8c21c83a 	sub	r16,r17,r16
  805ba0:	8403fbc4 	addi	r16,r16,4079
  805ba4:	8020d33a 	srli	r16,r16,12
  805ba8:	843fffc4 	addi	r16,r16,-1
  805bac:	8020933a 	slli	r16,r16,12
  805bb0:	80840008 	cmpgei	r2,r16,4096
  805bb4:	10000626 	beq	r2,zero,805bd0 <_malloc_trim_r+0x70>
  805bb8:	000b883a 	mov	r5,zero
  805bbc:	9009883a 	mov	r4,r18
  805bc0:	08089e80 	call	8089e8 <_sbrk_r>
  805bc4:	98c00217 	ldw	r3,8(r19)
  805bc8:	1c47883a 	add	r3,r3,r17
  805bcc:	10c00a26 	beq	r2,r3,805bf8 <_malloc_trim_r+0x98>
  805bd0:	9009883a 	mov	r4,r18
  805bd4:	080e3ac0 	call	80e3ac <__malloc_unlock>
  805bd8:	0005883a 	mov	r2,zero
  805bdc:	dfc00417 	ldw	ra,16(sp)
  805be0:	dcc00317 	ldw	r19,12(sp)
  805be4:	dc800217 	ldw	r18,8(sp)
  805be8:	dc400117 	ldw	r17,4(sp)
  805bec:	dc000017 	ldw	r16,0(sp)
  805bf0:	dec00504 	addi	sp,sp,20
  805bf4:	f800283a 	ret
  805bf8:	040bc83a 	sub	r5,zero,r16
  805bfc:	9009883a 	mov	r4,r18
  805c00:	08089e80 	call	8089e8 <_sbrk_r>
  805c04:	10bfffd8 	cmpnei	r2,r2,-1
  805c08:	10000d26 	beq	r2,zero,805c40 <_malloc_trim_r+0xe0>
  805c0c:	00802074 	movhi	r2,129
  805c10:	1090f017 	ldw	r2,17344(r2)
  805c14:	98c00217 	ldw	r3,8(r19)
  805c18:	8c23c83a 	sub	r17,r17,r16
  805c1c:	8c400054 	ori	r17,r17,1
  805c20:	1421c83a 	sub	r16,r2,r16
  805c24:	1c400115 	stw	r17,4(r3)
  805c28:	00802074 	movhi	r2,129
  805c2c:	9009883a 	mov	r4,r18
  805c30:	1410f015 	stw	r16,17344(r2)
  805c34:	080e3ac0 	call	80e3ac <__malloc_unlock>
  805c38:	00800044 	movi	r2,1
  805c3c:	003fe706 	br	805bdc <_malloc_trim_r+0x7c>
  805c40:	000b883a 	mov	r5,zero
  805c44:	9009883a 	mov	r4,r18
  805c48:	08089e80 	call	8089e8 <_sbrk_r>
  805c4c:	99000217 	ldw	r4,8(r19)
  805c50:	1107c83a 	sub	r3,r2,r4
  805c54:	19400410 	cmplti	r5,r3,16
  805c58:	283fdd1e 	bne	r5,zero,805bd0 <_malloc_trim_r+0x70>
  805c5c:	01402074 	movhi	r5,129
  805c60:	2949e217 	ldw	r5,10120(r5)
  805c64:	18c00054 	ori	r3,r3,1
  805c68:	20c00115 	stw	r3,4(r4)
  805c6c:	1145c83a 	sub	r2,r2,r5
  805c70:	01402074 	movhi	r5,129
  805c74:	2890f015 	stw	r2,17344(r5)
  805c78:	003fd506 	br	805bd0 <_malloc_trim_r+0x70>

00805c7c <_free_r>:
  805c7c:	28004f26 	beq	r5,zero,805dbc <_free_r+0x140>
  805c80:	defffd04 	addi	sp,sp,-12
  805c84:	dc400115 	stw	r17,4(sp)
  805c88:	dc000015 	stw	r16,0(sp)
  805c8c:	2023883a 	mov	r17,r4
  805c90:	2821883a 	mov	r16,r5
  805c94:	dfc00215 	stw	ra,8(sp)
  805c98:	080e3880 	call	80e388 <__malloc_lock>
  805c9c:	81ffff17 	ldw	r7,-4(r16)
  805ca0:	00bfff84 	movi	r2,-2
  805ca4:	80fffe04 	addi	r3,r16,-8
  805ca8:	3884703a 	and	r2,r7,r2
  805cac:	01002074 	movhi	r4,129
  805cb0:	188d883a 	add	r6,r3,r2
  805cb4:	21040104 	addi	r4,r4,4100
  805cb8:	31400117 	ldw	r5,4(r6)
  805cbc:	22000217 	ldw	r8,8(r4)
  805cc0:	027fff04 	movi	r9,-4
  805cc4:	2a4a703a 	and	r5,r5,r9
  805cc8:	41806426 	beq	r8,r6,805e5c <_free_r+0x1e0>
  805ccc:	31400115 	stw	r5,4(r6)
  805cd0:	39c0004c 	andi	r7,r7,1
  805cd4:	3151883a 	add	r8,r6,r5
  805cd8:	3800281e 	bne	r7,zero,805d7c <_free_r+0x100>
  805cdc:	82bffe17 	ldw	r10,-8(r16)
  805ce0:	42000117 	ldw	r8,4(r8)
  805ce4:	01c02074 	movhi	r7,129
  805ce8:	1a87c83a 	sub	r3,r3,r10
  805cec:	1a400217 	ldw	r9,8(r3)
  805cf0:	39c40304 	addi	r7,r7,4108
  805cf4:	1285883a 	add	r2,r2,r10
  805cf8:	4200004c 	andi	r8,r8,1
  805cfc:	49c04c26 	beq	r9,r7,805e30 <_free_r+0x1b4>
  805d00:	1a800317 	ldw	r10,12(r3)
  805d04:	4a800315 	stw	r10,12(r9)
  805d08:	52400215 	stw	r9,8(r10)
  805d0c:	40007126 	beq	r8,zero,805ed4 <_free_r+0x258>
  805d10:	11400054 	ori	r5,r2,1
  805d14:	19400115 	stw	r5,4(r3)
  805d18:	30800015 	stw	r2,0(r6)
  805d1c:	11408028 	cmpgeui	r5,r2,512
  805d20:	28002c1e 	bne	r5,zero,805dd4 <_free_r+0x158>
  805d24:	100ad0fa 	srli	r5,r2,3
  805d28:	100cd17a 	srli	r6,r2,5
  805d2c:	00800044 	movi	r2,1
  805d30:	29400044 	addi	r5,r5,1
  805d34:	280a90fa 	slli	r5,r5,3
  805d38:	21c00117 	ldw	r7,4(r4)
  805d3c:	1184983a 	sll	r2,r2,r6
  805d40:	214b883a 	add	r5,r4,r5
  805d44:	29800017 	ldw	r6,0(r5)
  805d48:	11c4b03a 	or	r2,r2,r7
  805d4c:	29fffe04 	addi	r7,r5,-8
  805d50:	19c00315 	stw	r7,12(r3)
  805d54:	19800215 	stw	r6,8(r3)
  805d58:	20800115 	stw	r2,4(r4)
  805d5c:	28c00015 	stw	r3,0(r5)
  805d60:	30c00315 	stw	r3,12(r6)
  805d64:	8809883a 	mov	r4,r17
  805d68:	dfc00217 	ldw	ra,8(sp)
  805d6c:	dc400117 	ldw	r17,4(sp)
  805d70:	dc000017 	ldw	r16,0(sp)
  805d74:	dec00304 	addi	sp,sp,12
  805d78:	080e3ac1 	jmpi	80e3ac <__malloc_unlock>
  805d7c:	41c00117 	ldw	r7,4(r8)
  805d80:	39c0004c 	andi	r7,r7,1
  805d84:	38000e1e 	bne	r7,zero,805dc0 <_free_r+0x144>
  805d88:	01c02074 	movhi	r7,129
  805d8c:	1145883a 	add	r2,r2,r5
  805d90:	39c40304 	addi	r7,r7,4108
  805d94:	31400217 	ldw	r5,8(r6)
  805d98:	12400054 	ori	r9,r2,1
  805d9c:	1891883a 	add	r8,r3,r2
  805da0:	29c05226 	beq	r5,r7,805eec <_free_r+0x270>
  805da4:	31800317 	ldw	r6,12(r6)
  805da8:	29800315 	stw	r6,12(r5)
  805dac:	31400215 	stw	r5,8(r6)
  805db0:	1a400115 	stw	r9,4(r3)
  805db4:	40800015 	stw	r2,0(r8)
  805db8:	003fd806 	br	805d1c <_free_r+0xa0>
  805dbc:	f800283a 	ret
  805dc0:	11400054 	ori	r5,r2,1
  805dc4:	817fff15 	stw	r5,-4(r16)
  805dc8:	30800015 	stw	r2,0(r6)
  805dcc:	11408028 	cmpgeui	r5,r2,512
  805dd0:	283fd426 	beq	r5,zero,805d24 <_free_r+0xa8>
  805dd4:	100ad27a 	srli	r5,r2,9
  805dd8:	29800168 	cmpgeui	r6,r5,5
  805ddc:	3000341e 	bne	r6,zero,805eb0 <_free_r+0x234>
  805de0:	100ad1ba 	srli	r5,r2,6
  805de4:	29800e44 	addi	r6,r5,57
  805de8:	300c90fa 	slli	r6,r6,3
  805dec:	29c00e04 	addi	r7,r5,56
  805df0:	218d883a 	add	r6,r4,r6
  805df4:	31400017 	ldw	r5,0(r6)
  805df8:	31bffe04 	addi	r6,r6,-8
  805dfc:	31404226 	beq	r6,r5,805f08 <_free_r+0x28c>
  805e00:	01ffff04 	movi	r7,-4
  805e04:	29000117 	ldw	r4,4(r5)
  805e08:	21c8703a 	and	r4,r4,r7
  805e0c:	1100022e 	bgeu	r2,r4,805e18 <_free_r+0x19c>
  805e10:	29400217 	ldw	r5,8(r5)
  805e14:	317ffb1e 	bne	r6,r5,805e04 <_free_r+0x188>
  805e18:	29800317 	ldw	r6,12(r5)
  805e1c:	19800315 	stw	r6,12(r3)
  805e20:	19400215 	stw	r5,8(r3)
  805e24:	30c00215 	stw	r3,8(r6)
  805e28:	28c00315 	stw	r3,12(r5)
  805e2c:	003fcd06 	br	805d64 <_free_r+0xe8>
  805e30:	40004d1e 	bne	r8,zero,805f68 <_free_r+0x2ec>
  805e34:	31000317 	ldw	r4,12(r6)
  805e38:	31800217 	ldw	r6,8(r6)
  805e3c:	2885883a 	add	r2,r5,r2
  805e40:	11400054 	ori	r5,r2,1
  805e44:	31000315 	stw	r4,12(r6)
  805e48:	21800215 	stw	r6,8(r4)
  805e4c:	19400115 	stw	r5,4(r3)
  805e50:	1887883a 	add	r3,r3,r2
  805e54:	18800015 	stw	r2,0(r3)
  805e58:	003fc206 	br	805d64 <_free_r+0xe8>
  805e5c:	39c0004c 	andi	r7,r7,1
  805e60:	1145883a 	add	r2,r2,r5
  805e64:	3800071e 	bne	r7,zero,805e84 <_free_r+0x208>
  805e68:	81fffe17 	ldw	r7,-8(r16)
  805e6c:	19c7c83a 	sub	r3,r3,r7
  805e70:	19400317 	ldw	r5,12(r3)
  805e74:	19800217 	ldw	r6,8(r3)
  805e78:	11c5883a 	add	r2,r2,r7
  805e7c:	31400315 	stw	r5,12(r6)
  805e80:	29800215 	stw	r6,8(r5)
  805e84:	01402074 	movhi	r5,129
  805e88:	11800054 	ori	r6,r2,1
  805e8c:	2949e317 	ldw	r5,10124(r5)
  805e90:	19800115 	stw	r6,4(r3)
  805e94:	20c00215 	stw	r3,8(r4)
  805e98:	117fb236 	bltu	r2,r5,805d64 <_free_r+0xe8>
  805e9c:	00802074 	movhi	r2,129
  805ea0:	1150e617 	ldw	r5,17304(r2)
  805ea4:	8809883a 	mov	r4,r17
  805ea8:	0805b600 	call	805b60 <_malloc_trim_r>
  805eac:	003fad06 	br	805d64 <_free_r+0xe8>
  805eb0:	29800568 	cmpgeui	r6,r5,21
  805eb4:	30000926 	beq	r6,zero,805edc <_free_r+0x260>
  805eb8:	29801568 	cmpgeui	r6,r5,85
  805ebc:	3000191e 	bne	r6,zero,805f24 <_free_r+0x2a8>
  805ec0:	100ad33a 	srli	r5,r2,12
  805ec4:	29801bc4 	addi	r6,r5,111
  805ec8:	300c90fa 	slli	r6,r6,3
  805ecc:	29c01b84 	addi	r7,r5,110
  805ed0:	003fc706 	br	805df0 <_free_r+0x174>
  805ed4:	1145883a 	add	r2,r2,r5
  805ed8:	003fae06 	br	805d94 <_free_r+0x118>
  805edc:	29801704 	addi	r6,r5,92
  805ee0:	300c90fa 	slli	r6,r6,3
  805ee4:	29c016c4 	addi	r7,r5,91
  805ee8:	003fc106 	br	805df0 <_free_r+0x174>
  805eec:	20c00515 	stw	r3,20(r4)
  805ef0:	20c00415 	stw	r3,16(r4)
  805ef4:	19c00315 	stw	r7,12(r3)
  805ef8:	19c00215 	stw	r7,8(r3)
  805efc:	1a400115 	stw	r9,4(r3)
  805f00:	40800015 	stw	r2,0(r8)
  805f04:	003f9706 	br	805d64 <_free_r+0xe8>
  805f08:	380fd0ba 	srai	r7,r7,2
  805f0c:	00800044 	movi	r2,1
  805f10:	22000117 	ldw	r8,4(r4)
  805f14:	11ce983a 	sll	r7,r2,r7
  805f18:	3a0eb03a 	or	r7,r7,r8
  805f1c:	21c00115 	stw	r7,4(r4)
  805f20:	003fbe06 	br	805e1c <_free_r+0x1a0>
  805f24:	29805568 	cmpgeui	r6,r5,341
  805f28:	3000051e 	bne	r6,zero,805f40 <_free_r+0x2c4>
  805f2c:	100ad3fa 	srli	r5,r2,15
  805f30:	29801e04 	addi	r6,r5,120
  805f34:	300c90fa 	slli	r6,r6,3
  805f38:	29c01dc4 	addi	r7,r5,119
  805f3c:	003fac06 	br	805df0 <_free_r+0x174>
  805f40:	29415568 	cmpgeui	r5,r5,1365
  805f44:	2800051e 	bne	r5,zero,805f5c <_free_r+0x2e0>
  805f48:	100ad4ba 	srli	r5,r2,18
  805f4c:	29801f44 	addi	r6,r5,125
  805f50:	300c90fa 	slli	r6,r6,3
  805f54:	29c01f04 	addi	r7,r5,124
  805f58:	003fa506 	br	805df0 <_free_r+0x174>
  805f5c:	0180fe04 	movi	r6,1016
  805f60:	01c01f84 	movi	r7,126
  805f64:	003fa206 	br	805df0 <_free_r+0x174>
  805f68:	11000054 	ori	r4,r2,1
  805f6c:	19000115 	stw	r4,4(r3)
  805f70:	30800015 	stw	r2,0(r6)
  805f74:	003f7b06 	br	805d64 <_free_r+0xe8>

00805f78 <__sfvwrite_r>:
  805f78:	30800217 	ldw	r2,8(r6)
  805f7c:	1000c826 	beq	r2,zero,8062a0 <__sfvwrite_r+0x328>
  805f80:	29c0030b 	ldhu	r7,12(r5)
  805f84:	defff404 	addi	sp,sp,-48
  805f88:	dd800815 	stw	r22,32(sp)
  805f8c:	dd400715 	stw	r21,28(sp)
  805f90:	dc000215 	stw	r16,8(sp)
  805f94:	dfc00b15 	stw	ra,44(sp)
  805f98:	df000a15 	stw	fp,40(sp)
  805f9c:	ddc00915 	stw	r23,36(sp)
  805fa0:	dd000615 	stw	r20,24(sp)
  805fa4:	dcc00515 	stw	r19,20(sp)
  805fa8:	dc800415 	stw	r18,16(sp)
  805fac:	dc400315 	stw	r17,12(sp)
  805fb0:	3880020c 	andi	r2,r7,8
  805fb4:	302d883a 	mov	r22,r6
  805fb8:	202b883a 	mov	r21,r4
  805fbc:	2821883a 	mov	r16,r5
  805fc0:	10002226 	beq	r2,zero,80604c <__sfvwrite_r+0xd4>
  805fc4:	28800417 	ldw	r2,16(r5)
  805fc8:	10002026 	beq	r2,zero,80604c <__sfvwrite_r+0xd4>
  805fcc:	3880008c 	andi	r2,r7,2
  805fd0:	b4400017 	ldw	r17,0(r22)
  805fd4:	10002526 	beq	r2,zero,80606c <__sfvwrite_r+0xf4>
  805fd8:	80800917 	ldw	r2,36(r16)
  805fdc:	81400717 	ldw	r5,28(r16)
  805fe0:	05200034 	movhi	r20,32768
  805fe4:	0027883a 	mov	r19,zero
  805fe8:	0025883a 	mov	r18,zero
  805fec:	a53f0004 	addi	r20,r20,-1024
  805ff0:	980d883a 	mov	r6,r19
  805ff4:	a809883a 	mov	r4,r21
  805ff8:	90001026 	beq	r18,zero,80603c <__sfvwrite_r+0xc4>
  805ffc:	900f883a 	mov	r7,r18
  806000:	a480012e 	bgeu	r20,r18,806008 <__sfvwrite_r+0x90>
  806004:	a00f883a 	mov	r7,r20
  806008:	103ee83a 	callr	r2
  80600c:	00809f0e 	bge	zero,r2,80628c <__sfvwrite_r+0x314>
  806010:	b1000217 	ldw	r4,8(r22)
  806014:	98a7883a 	add	r19,r19,r2
  806018:	90a5c83a 	sub	r18,r18,r2
  80601c:	2085c83a 	sub	r2,r4,r2
  806020:	b0800215 	stw	r2,8(r22)
  806024:	10006326 	beq	r2,zero,8061b4 <__sfvwrite_r+0x23c>
  806028:	80800917 	ldw	r2,36(r16)
  80602c:	81400717 	ldw	r5,28(r16)
  806030:	980d883a 	mov	r6,r19
  806034:	a809883a 	mov	r4,r21
  806038:	903ff01e 	bne	r18,zero,805ffc <__sfvwrite_r+0x84>
  80603c:	8cc00017 	ldw	r19,0(r17)
  806040:	8c800117 	ldw	r18,4(r17)
  806044:	8c400204 	addi	r17,r17,8
  806048:	003fe906 	br	805ff0 <__sfvwrite_r+0x78>
  80604c:	800b883a 	mov	r5,r16
  806050:	a809883a 	mov	r4,r21
  806054:	0803a900 	call	803a90 <__swsetup_r>
  806058:	1000f81e 	bne	r2,zero,80643c <__sfvwrite_r+0x4c4>
  80605c:	81c0030b 	ldhu	r7,12(r16)
  806060:	b4400017 	ldw	r17,0(r22)
  806064:	3880008c 	andi	r2,r7,2
  806068:	103fdb1e 	bne	r2,zero,805fd8 <__sfvwrite_r+0x60>
  80606c:	3880004c 	andi	r2,r7,1
  806070:	84800217 	ldw	r18,8(r16)
  806074:	82000017 	ldw	r8,0(r16)
  806078:	10008b1e 	bne	r2,zero,8062a8 <__sfvwrite_r+0x330>
  80607c:	00a00034 	movhi	r2,32768
  806080:	10bfff84 	addi	r2,r2,-2
  806084:	00e00034 	movhi	r3,32768
  806088:	d8800015 	stw	r2,0(sp)
  80608c:	18bfffc4 	addi	r2,r3,-1
  806090:	0039883a 	mov	fp,zero
  806094:	0027883a 	mov	r19,zero
  806098:	d8800115 	stw	r2,4(sp)
  80609c:	98004126 	beq	r19,zero,8061a4 <__sfvwrite_r+0x22c>
  8060a0:	3880800c 	andi	r2,r7,512
  8060a4:	10009326 	beq	r2,zero,8062f4 <__sfvwrite_r+0x37c>
  8060a8:	902f883a 	mov	r23,r18
  8060ac:	9c80ba36 	bltu	r19,r18,806398 <__sfvwrite_r+0x420>
  8060b0:	3881200c 	andi	r2,r7,1152
  8060b4:	10002626 	beq	r2,zero,806150 <__sfvwrite_r+0x1d8>
  8060b8:	81800517 	ldw	r6,20(r16)
  8060bc:	81400417 	ldw	r5,16(r16)
  8060c0:	98800044 	addi	r2,r19,1
  8060c4:	3189883a 	add	r4,r6,r6
  8060c8:	2189883a 	add	r4,r4,r6
  8060cc:	2028d7fa 	srli	r20,r4,31
  8060d0:	4165c83a 	sub	r18,r8,r5
  8060d4:	1485883a 	add	r2,r2,r18
  8060d8:	a109883a 	add	r4,r20,r4
  8060dc:	2029d07a 	srai	r20,r4,1
  8060e0:	a00d883a 	mov	r6,r20
  8060e4:	a080022e 	bgeu	r20,r2,8060f0 <__sfvwrite_r+0x178>
  8060e8:	1029883a 	mov	r20,r2
  8060ec:	100d883a 	mov	r6,r2
  8060f0:	39c1000c 	andi	r7,r7,1024
  8060f4:	3800c126 	beq	r7,zero,8063fc <__sfvwrite_r+0x484>
  8060f8:	a809883a 	mov	r4,r21
  8060fc:	300b883a 	mov	r5,r6
  806100:	080677c0 	call	80677c <_malloc_r>
  806104:	1009883a 	mov	r4,r2
  806108:	1000c826 	beq	r2,zero,80642c <__sfvwrite_r+0x4b4>
  80610c:	81400417 	ldw	r5,16(r16)
  806110:	900d883a 	mov	r6,r18
  806114:	08070300 	call	807030 <memcpy>
  806118:	1009883a 	mov	r4,r2
  80611c:	8080030b 	ldhu	r2,12(r16)
  806120:	00fedfc4 	movi	r3,-1153
  806124:	10c4703a 	and	r2,r2,r3
  806128:	10802014 	ori	r2,r2,128
  80612c:	8080030d 	sth	r2,12(r16)
  806130:	2491883a 	add	r8,r4,r18
  806134:	a485c83a 	sub	r2,r20,r18
  806138:	81000415 	stw	r4,16(r16)
  80613c:	82000015 	stw	r8,0(r16)
  806140:	85000515 	stw	r20,20(r16)
  806144:	9825883a 	mov	r18,r19
  806148:	80800215 	stw	r2,8(r16)
  80614c:	982f883a 	mov	r23,r19
  806150:	4009883a 	mov	r4,r8
  806154:	b80d883a 	mov	r6,r23
  806158:	e00b883a 	mov	r5,fp
  80615c:	08071300 	call	807130 <memmove>
  806160:	81000217 	ldw	r4,8(r16)
  806164:	80800017 	ldw	r2,0(r16)
  806168:	9829883a 	mov	r20,r19
  80616c:	24a5c83a 	sub	r18,r4,r18
  806170:	15c5883a 	add	r2,r2,r23
  806174:	84800215 	stw	r18,8(r16)
  806178:	80800015 	stw	r2,0(r16)
  80617c:	0027883a 	mov	r19,zero
  806180:	b0800217 	ldw	r2,8(r22)
  806184:	e539883a 	add	fp,fp,r20
  806188:	1529c83a 	sub	r20,r2,r20
  80618c:	b5000215 	stw	r20,8(r22)
  806190:	a0000826 	beq	r20,zero,8061b4 <__sfvwrite_r+0x23c>
  806194:	81c0030b 	ldhu	r7,12(r16)
  806198:	84800217 	ldw	r18,8(r16)
  80619c:	82000017 	ldw	r8,0(r16)
  8061a0:	983fbf1e 	bne	r19,zero,8060a0 <__sfvwrite_r+0x128>
  8061a4:	8f000017 	ldw	fp,0(r17)
  8061a8:	8cc00117 	ldw	r19,4(r17)
  8061ac:	8c400204 	addi	r17,r17,8
  8061b0:	003fba06 	br	80609c <__sfvwrite_r+0x124>
  8061b4:	0005883a 	mov	r2,zero
  8061b8:	dfc00b17 	ldw	ra,44(sp)
  8061bc:	df000a17 	ldw	fp,40(sp)
  8061c0:	ddc00917 	ldw	r23,36(sp)
  8061c4:	dd800817 	ldw	r22,32(sp)
  8061c8:	dd400717 	ldw	r21,28(sp)
  8061cc:	dd000617 	ldw	r20,24(sp)
  8061d0:	dcc00517 	ldw	r19,20(sp)
  8061d4:	dc800417 	ldw	r18,16(sp)
  8061d8:	dc400317 	ldw	r17,12(sp)
  8061dc:	dc000217 	ldw	r16,8(sp)
  8061e0:	dec00c04 	addi	sp,sp,48
  8061e4:	f800283a 	ret
  8061e8:	e1c07316 	blt	fp,r7,8063b8 <__sfvwrite_r+0x440>
  8061ec:	80800917 	ldw	r2,36(r16)
  8061f0:	81400717 	ldw	r5,28(r16)
  8061f4:	b80d883a 	mov	r6,r23
  8061f8:	a809883a 	mov	r4,r21
  8061fc:	103ee83a 	callr	r2
  806200:	1025883a 	mov	r18,r2
  806204:	0080210e 	bge	zero,r2,80628c <__sfvwrite_r+0x314>
  806208:	a4a9c83a 	sub	r20,r20,r18
  80620c:	a0006526 	beq	r20,zero,8063a4 <__sfvwrite_r+0x42c>
  806210:	00800044 	movi	r2,1
  806214:	b1800217 	ldw	r6,8(r22)
  806218:	bcaf883a 	add	r23,r23,r18
  80621c:	9ca7c83a 	sub	r19,r19,r18
  806220:	34a5c83a 	sub	r18,r6,r18
  806224:	b4800215 	stw	r18,8(r22)
  806228:	903fe226 	beq	r18,zero,8061b4 <__sfvwrite_r+0x23c>
  80622c:	84800217 	ldw	r18,8(r16)
  806230:	82000017 	ldw	r8,0(r16)
  806234:	98002126 	beq	r19,zero,8062bc <__sfvwrite_r+0x344>
  806238:	10002426 	beq	r2,zero,8062cc <__sfvwrite_r+0x354>
  80623c:	a005883a 	mov	r2,r20
  806240:	9839883a 	mov	fp,r19
  806244:	14c0012e 	bgeu	r2,r19,80624c <__sfvwrite_r+0x2d4>
  806248:	1039883a 	mov	fp,r2
  80624c:	80800417 	ldw	r2,16(r16)
  806250:	81c00517 	ldw	r7,20(r16)
  806254:	123fe42e 	bgeu	r2,r8,8061e8 <__sfvwrite_r+0x270>
  806258:	3ca5883a 	add	r18,r7,r18
  80625c:	973fe20e 	bge	r18,fp,8061e8 <__sfvwrite_r+0x270>
  806260:	b80b883a 	mov	r5,r23
  806264:	4009883a 	mov	r4,r8
  806268:	900d883a 	mov	r6,r18
  80626c:	08071300 	call	807130 <memmove>
  806270:	80800017 	ldw	r2,0(r16)
  806274:	800b883a 	mov	r5,r16
  806278:	a809883a 	mov	r4,r21
  80627c:	1485883a 	add	r2,r2,r18
  806280:	80800015 	stw	r2,0(r16)
  806284:	08057840 	call	805784 <_fflush_r>
  806288:	103fdf26 	beq	r2,zero,806208 <__sfvwrite_r+0x290>
  80628c:	8080030b 	ldhu	r2,12(r16)
  806290:	10801014 	ori	r2,r2,64
  806294:	8080030d 	sth	r2,12(r16)
  806298:	00bfffc4 	movi	r2,-1
  80629c:	003fc606 	br	8061b8 <__sfvwrite_r+0x240>
  8062a0:	0005883a 	mov	r2,zero
  8062a4:	f800283a 	ret
  8062a8:	0027883a 	mov	r19,zero
  8062ac:	0029883a 	mov	r20,zero
  8062b0:	0005883a 	mov	r2,zero
  8062b4:	002f883a 	mov	r23,zero
  8062b8:	983fdf1e 	bne	r19,zero,806238 <__sfvwrite_r+0x2c0>
  8062bc:	8cc00117 	ldw	r19,4(r17)
  8062c0:	8dc00017 	ldw	r23,0(r17)
  8062c4:	8c400204 	addi	r17,r17,8
  8062c8:	983ffc26 	beq	r19,zero,8062bc <__sfvwrite_r+0x344>
  8062cc:	980d883a 	mov	r6,r19
  8062d0:	01400284 	movi	r5,10
  8062d4:	b809883a 	mov	r4,r23
  8062d8:	da000015 	stw	r8,0(sp)
  8062dc:	0806f5c0 	call	806f5c <memchr>
  8062e0:	da000017 	ldw	r8,0(sp)
  8062e4:	10004226 	beq	r2,zero,8063f0 <__sfvwrite_r+0x478>
  8062e8:	10800044 	addi	r2,r2,1
  8062ec:	15e9c83a 	sub	r20,r2,r23
  8062f0:	003fd206 	br	80623c <__sfvwrite_r+0x2c4>
  8062f4:	80800417 	ldw	r2,16(r16)
  8062f8:	12001436 	bltu	r2,r8,80634c <__sfvwrite_r+0x3d4>
  8062fc:	85000517 	ldw	r20,20(r16)
  806300:	9d001236 	bltu	r19,r20,80634c <__sfvwrite_r+0x3d4>
  806304:	d8800017 	ldw	r2,0(sp)
  806308:	14c0372e 	bgeu	r2,r19,8063e8 <__sfvwrite_r+0x470>
  80630c:	d9000117 	ldw	r4,4(sp)
  806310:	a00b883a 	mov	r5,r20
  806314:	080ba980 	call	80ba98 <__divsi3>
  806318:	a00b883a 	mov	r5,r20
  80631c:	1009883a 	mov	r4,r2
  806320:	08016c40 	call	8016c4 <__mulsi3>
  806324:	82000917 	ldw	r8,36(r16)
  806328:	81400717 	ldw	r5,28(r16)
  80632c:	100f883a 	mov	r7,r2
  806330:	e00d883a 	mov	r6,fp
  806334:	a809883a 	mov	r4,r21
  806338:	403ee83a 	callr	r8
  80633c:	1029883a 	mov	r20,r2
  806340:	00bfd20e 	bge	zero,r2,80628c <__sfvwrite_r+0x314>
  806344:	9d27c83a 	sub	r19,r19,r20
  806348:	003f8d06 	br	806180 <__sfvwrite_r+0x208>
  80634c:	9029883a 	mov	r20,r18
  806350:	9c80012e 	bgeu	r19,r18,806358 <__sfvwrite_r+0x3e0>
  806354:	9829883a 	mov	r20,r19
  806358:	4009883a 	mov	r4,r8
  80635c:	a00d883a 	mov	r6,r20
  806360:	e00b883a 	mov	r5,fp
  806364:	08071300 	call	807130 <memmove>
  806368:	80800217 	ldw	r2,8(r16)
  80636c:	81000017 	ldw	r4,0(r16)
  806370:	1505c83a 	sub	r2,r2,r20
  806374:	2509883a 	add	r4,r4,r20
  806378:	80800215 	stw	r2,8(r16)
  80637c:	81000015 	stw	r4,0(r16)
  806380:	103ff01e 	bne	r2,zero,806344 <__sfvwrite_r+0x3cc>
  806384:	800b883a 	mov	r5,r16
  806388:	a809883a 	mov	r4,r21
  80638c:	08057840 	call	805784 <_fflush_r>
  806390:	103fec26 	beq	r2,zero,806344 <__sfvwrite_r+0x3cc>
  806394:	003fbd06 	br	80628c <__sfvwrite_r+0x314>
  806398:	9825883a 	mov	r18,r19
  80639c:	982f883a 	mov	r23,r19
  8063a0:	003f6b06 	br	806150 <__sfvwrite_r+0x1d8>
  8063a4:	800b883a 	mov	r5,r16
  8063a8:	a809883a 	mov	r4,r21
  8063ac:	08057840 	call	805784 <_fflush_r>
  8063b0:	103f9826 	beq	r2,zero,806214 <__sfvwrite_r+0x29c>
  8063b4:	003fb506 	br	80628c <__sfvwrite_r+0x314>
  8063b8:	e00d883a 	mov	r6,fp
  8063bc:	b80b883a 	mov	r5,r23
  8063c0:	4009883a 	mov	r4,r8
  8063c4:	08071300 	call	807130 <memmove>
  8063c8:	80800217 	ldw	r2,8(r16)
  8063cc:	81800017 	ldw	r6,0(r16)
  8063d0:	e025883a 	mov	r18,fp
  8063d4:	1705c83a 	sub	r2,r2,fp
  8063d8:	370d883a 	add	r6,r6,fp
  8063dc:	80800215 	stw	r2,8(r16)
  8063e0:	81800015 	stw	r6,0(r16)
  8063e4:	003f8806 	br	806208 <__sfvwrite_r+0x290>
  8063e8:	9809883a 	mov	r4,r19
  8063ec:	003fc806 	br	806310 <__sfvwrite_r+0x398>
  8063f0:	98800044 	addi	r2,r19,1
  8063f4:	1029883a 	mov	r20,r2
  8063f8:	003f9106 	br	806240 <__sfvwrite_r+0x2c8>
  8063fc:	a809883a 	mov	r4,r21
  806400:	08084840 	call	808484 <_realloc_r>
  806404:	1009883a 	mov	r4,r2
  806408:	103f491e 	bne	r2,zero,806130 <__sfvwrite_r+0x1b8>
  80640c:	81400417 	ldw	r5,16(r16)
  806410:	a809883a 	mov	r4,r21
  806414:	0805c7c0 	call	805c7c <_free_r>
  806418:	8080030b 	ldhu	r2,12(r16)
  80641c:	00c00304 	movi	r3,12
  806420:	a8c00015 	stw	r3,0(r21)
  806424:	10bfdfcc 	andi	r2,r2,65407
  806428:	003f9906 	br	806290 <__sfvwrite_r+0x318>
  80642c:	00c00304 	movi	r3,12
  806430:	8080030b 	ldhu	r2,12(r16)
  806434:	a8c00015 	stw	r3,0(r21)
  806438:	003f9506 	br	806290 <__sfvwrite_r+0x318>
  80643c:	00bfffc4 	movi	r2,-1
  806440:	003f5d06 	br	8061b8 <__sfvwrite_r+0x240>

00806444 <_fwalk>:
  806444:	defffa04 	addi	sp,sp,-24
  806448:	dd000415 	stw	r20,16(sp)
  80644c:	dcc00315 	stw	r19,12(sp)
  806450:	dc800215 	stw	r18,8(sp)
  806454:	dfc00515 	stw	ra,20(sp)
  806458:	dc400115 	stw	r17,4(sp)
  80645c:	dc000015 	stw	r16,0(sp)
  806460:	2827883a 	mov	r19,r5
  806464:	2480b804 	addi	r18,r4,736
  806468:	0029883a 	mov	r20,zero
  80646c:	94400117 	ldw	r17,4(r18)
  806470:	94000217 	ldw	r16,8(r18)
  806474:	8c7fffc4 	addi	r17,r17,-1
  806478:	88000d16 	blt	r17,zero,8064b0 <_fwalk+0x6c>
  80647c:	8080030b 	ldhu	r2,12(r16)
  806480:	8c7fffc4 	addi	r17,r17,-1
  806484:	108000b0 	cmpltui	r2,r2,2
  806488:	1000061e 	bne	r2,zero,8064a4 <_fwalk+0x60>
  80648c:	8080038f 	ldh	r2,14(r16)
  806490:	8009883a 	mov	r4,r16
  806494:	10bfffe0 	cmpeqi	r2,r2,-1
  806498:	1000021e 	bne	r2,zero,8064a4 <_fwalk+0x60>
  80649c:	983ee83a 	callr	r19
  8064a0:	a0a8b03a 	or	r20,r20,r2
  8064a4:	88bfffd8 	cmpnei	r2,r17,-1
  8064a8:	84001a04 	addi	r16,r16,104
  8064ac:	103ff31e 	bne	r2,zero,80647c <_fwalk+0x38>
  8064b0:	94800017 	ldw	r18,0(r18)
  8064b4:	903fed1e 	bne	r18,zero,80646c <_fwalk+0x28>
  8064b8:	a005883a 	mov	r2,r20
  8064bc:	dfc00517 	ldw	ra,20(sp)
  8064c0:	dd000417 	ldw	r20,16(sp)
  8064c4:	dcc00317 	ldw	r19,12(sp)
  8064c8:	dc800217 	ldw	r18,8(sp)
  8064cc:	dc400117 	ldw	r17,4(sp)
  8064d0:	dc000017 	ldw	r16,0(sp)
  8064d4:	dec00604 	addi	sp,sp,24
  8064d8:	f800283a 	ret

008064dc <_fwalk_reent>:
  8064dc:	defff904 	addi	sp,sp,-28
  8064e0:	dd400515 	stw	r21,20(sp)
  8064e4:	dd000415 	stw	r20,16(sp)
  8064e8:	dcc00315 	stw	r19,12(sp)
  8064ec:	dc800215 	stw	r18,8(sp)
  8064f0:	dfc00615 	stw	ra,24(sp)
  8064f4:	dc400115 	stw	r17,4(sp)
  8064f8:	dc000015 	stw	r16,0(sp)
  8064fc:	202b883a 	mov	r21,r4
  806500:	2827883a 	mov	r19,r5
  806504:	2480b804 	addi	r18,r4,736
  806508:	0029883a 	mov	r20,zero
  80650c:	94400117 	ldw	r17,4(r18)
  806510:	94000217 	ldw	r16,8(r18)
  806514:	8c7fffc4 	addi	r17,r17,-1
  806518:	88000e16 	blt	r17,zero,806554 <_fwalk_reent+0x78>
  80651c:	8080030b 	ldhu	r2,12(r16)
  806520:	8c7fffc4 	addi	r17,r17,-1
  806524:	108000b0 	cmpltui	r2,r2,2
  806528:	1000071e 	bne	r2,zero,806548 <_fwalk_reent+0x6c>
  80652c:	8080038f 	ldh	r2,14(r16)
  806530:	800b883a 	mov	r5,r16
  806534:	a809883a 	mov	r4,r21
  806538:	10bfffe0 	cmpeqi	r2,r2,-1
  80653c:	1000021e 	bne	r2,zero,806548 <_fwalk_reent+0x6c>
  806540:	983ee83a 	callr	r19
  806544:	a0a8b03a 	or	r20,r20,r2
  806548:	88bfffd8 	cmpnei	r2,r17,-1
  80654c:	84001a04 	addi	r16,r16,104
  806550:	103ff21e 	bne	r2,zero,80651c <_fwalk_reent+0x40>
  806554:	94800017 	ldw	r18,0(r18)
  806558:	903fec1e 	bne	r18,zero,80650c <_fwalk_reent+0x30>
  80655c:	a005883a 	mov	r2,r20
  806560:	dfc00617 	ldw	ra,24(sp)
  806564:	dd400517 	ldw	r21,20(sp)
  806568:	dd000417 	ldw	r20,16(sp)
  80656c:	dcc00317 	ldw	r19,12(sp)
  806570:	dc800217 	ldw	r18,8(sp)
  806574:	dc400117 	ldw	r17,4(sp)
  806578:	dc000017 	ldw	r16,0(sp)
  80657c:	dec00704 	addi	sp,sp,28
  806580:	f800283a 	ret

00806584 <__localeconv_l>:
  806584:	20803c04 	addi	r2,r4,240
  806588:	f800283a 	ret

0080658c <_localeconv_r>:
  80658c:	00802074 	movhi	r2,129
  806590:	10853f04 	addi	r2,r2,5372
  806594:	f800283a 	ret

00806598 <localeconv>:
  806598:	00802074 	movhi	r2,129
  80659c:	10853f04 	addi	r2,r2,5372
  8065a0:	f800283a 	ret

008065a4 <__swhatbuf_r>:
  8065a4:	deffea04 	addi	sp,sp,-88
  8065a8:	dc001215 	stw	r16,72(sp)
  8065ac:	2821883a 	mov	r16,r5
  8065b0:	2940038f 	ldh	r5,14(r5)
  8065b4:	dc801415 	stw	r18,80(sp)
  8065b8:	dc401315 	stw	r17,76(sp)
  8065bc:	dfc01515 	stw	ra,84(sp)
  8065c0:	3023883a 	mov	r17,r6
  8065c4:	3825883a 	mov	r18,r7
  8065c8:	28001016 	blt	r5,zero,80660c <__swhatbuf_r+0x68>
  8065cc:	d80d883a 	mov	r6,sp
  8065d0:	080a5d40 	call	80a5d4 <_fstat_r>
  8065d4:	10000d16 	blt	r2,zero,80660c <__swhatbuf_r+0x68>
  8065d8:	d8c00117 	ldw	r3,4(sp)
  8065dc:	00820004 	movi	r2,2048
  8065e0:	18fc000c 	andi	r3,r3,61440
  8065e4:	18c80020 	cmpeqi	r3,r3,8192
  8065e8:	90c00015 	stw	r3,0(r18)
  8065ec:	00c10004 	movi	r3,1024
  8065f0:	88c00015 	stw	r3,0(r17)
  8065f4:	dfc01517 	ldw	ra,84(sp)
  8065f8:	dc801417 	ldw	r18,80(sp)
  8065fc:	dc401317 	ldw	r17,76(sp)
  806600:	dc001217 	ldw	r16,72(sp)
  806604:	dec01604 	addi	sp,sp,88
  806608:	f800283a 	ret
  80660c:	8080030b 	ldhu	r2,12(r16)
  806610:	90000015 	stw	zero,0(r18)
  806614:	1080200c 	andi	r2,r2,128
  806618:	10000426 	beq	r2,zero,80662c <__swhatbuf_r+0x88>
  80661c:	00801004 	movi	r2,64
  806620:	88800015 	stw	r2,0(r17)
  806624:	0005883a 	mov	r2,zero
  806628:	003ff206 	br	8065f4 <__swhatbuf_r+0x50>
  80662c:	00810004 	movi	r2,1024
  806630:	88800015 	stw	r2,0(r17)
  806634:	0005883a 	mov	r2,zero
  806638:	003fee06 	br	8065f4 <__swhatbuf_r+0x50>

0080663c <__smakebuf_r>:
  80663c:	2880030b 	ldhu	r2,12(r5)
  806640:	defffa04 	addi	sp,sp,-24
  806644:	dc000215 	stw	r16,8(sp)
  806648:	dfc00515 	stw	ra,20(sp)
  80664c:	dc800415 	stw	r18,16(sp)
  806650:	dc400315 	stw	r17,12(sp)
  806654:	1080008c 	andi	r2,r2,2
  806658:	2821883a 	mov	r16,r5
  80665c:	10000b26 	beq	r2,zero,80668c <__smakebuf_r+0x50>
  806660:	288010c4 	addi	r2,r5,67
  806664:	28800015 	stw	r2,0(r5)
  806668:	28800415 	stw	r2,16(r5)
  80666c:	00800044 	movi	r2,1
  806670:	28800515 	stw	r2,20(r5)
  806674:	dfc00517 	ldw	ra,20(sp)
  806678:	dc800417 	ldw	r18,16(sp)
  80667c:	dc400317 	ldw	r17,12(sp)
  806680:	dc000217 	ldw	r16,8(sp)
  806684:	dec00604 	addi	sp,sp,24
  806688:	f800283a 	ret
  80668c:	d9c00104 	addi	r7,sp,4
  806690:	d80d883a 	mov	r6,sp
  806694:	2023883a 	mov	r17,r4
  806698:	08065a40 	call	8065a4 <__swhatbuf_r>
  80669c:	d9000117 	ldw	r4,4(sp)
  8066a0:	1025883a 	mov	r18,r2
  8066a4:	2000131e 	bne	r4,zero,8066f4 <__smakebuf_r+0xb8>
  8066a8:	d9400017 	ldw	r5,0(sp)
  8066ac:	8809883a 	mov	r4,r17
  8066b0:	080677c0 	call	80677c <_malloc_r>
  8066b4:	10001c26 	beq	r2,zero,806728 <__smakebuf_r+0xec>
  8066b8:	01002034 	movhi	r4,128
  8066bc:	21160504 	addi	r4,r4,22548
  8066c0:	80c0030b 	ldhu	r3,12(r16)
  8066c4:	89000f15 	stw	r4,60(r17)
  8066c8:	80800015 	stw	r2,0(r16)
  8066cc:	80800415 	stw	r2,16(r16)
  8066d0:	d8800017 	ldw	r2,0(sp)
  8066d4:	d9400117 	ldw	r5,4(sp)
  8066d8:	18c02014 	ori	r3,r3,128
  8066dc:	80c0030d 	sth	r3,12(r16)
  8066e0:	80800515 	stw	r2,20(r16)
  8066e4:	28001d1e 	bne	r5,zero,80675c <__smakebuf_r+0x120>
  8066e8:	90c6b03a 	or	r3,r18,r3
  8066ec:	80c0030d 	sth	r3,12(r16)
  8066f0:	003fe006 	br	806674 <__smakebuf_r+0x38>
  8066f4:	8140038f 	ldh	r5,14(r16)
  8066f8:	8809883a 	mov	r4,r17
  8066fc:	080a6340 	call	80a634 <_isatty_r>
  806700:	103fe926 	beq	r2,zero,8066a8 <__smakebuf_r+0x6c>
  806704:	8080030b 	ldhu	r2,12(r16)
  806708:	80c010c4 	addi	r3,r16,67
  80670c:	80c00015 	stw	r3,0(r16)
  806710:	10800054 	ori	r2,r2,1
  806714:	8080030d 	sth	r2,12(r16)
  806718:	00800044 	movi	r2,1
  80671c:	80c00415 	stw	r3,16(r16)
  806720:	80800515 	stw	r2,20(r16)
  806724:	003fe006 	br	8066a8 <__smakebuf_r+0x6c>
  806728:	8080030b 	ldhu	r2,12(r16)
  80672c:	10c0800c 	andi	r3,r2,512
  806730:	183fd01e 	bne	r3,zero,806674 <__smakebuf_r+0x38>
  806734:	00ffff04 	movi	r3,-4
  806738:	10c4703a 	and	r2,r2,r3
  80673c:	10800094 	ori	r2,r2,2
  806740:	80c010c4 	addi	r3,r16,67
  806744:	8080030d 	sth	r2,12(r16)
  806748:	00800044 	movi	r2,1
  80674c:	80c00015 	stw	r3,0(r16)
  806750:	80c00415 	stw	r3,16(r16)
  806754:	80800515 	stw	r2,20(r16)
  806758:	003fc606 	br	806674 <__smakebuf_r+0x38>
  80675c:	8140038f 	ldh	r5,14(r16)
  806760:	8809883a 	mov	r4,r17
  806764:	080a6340 	call	80a634 <_isatty_r>
  806768:	80c0030b 	ldhu	r3,12(r16)
  80676c:	103fde26 	beq	r2,zero,8066e8 <__smakebuf_r+0xac>
  806770:	18ffff0c 	andi	r3,r3,65532
  806774:	18c00054 	ori	r3,r3,1
  806778:	003fdb06 	br	8066e8 <__smakebuf_r+0xac>

0080677c <_malloc_r>:
  80677c:	defff604 	addi	sp,sp,-40
  806780:	dc400115 	stw	r17,4(sp)
  806784:	2c4002c4 	addi	r17,r5,11
  806788:	dc800215 	stw	r18,8(sp)
  80678c:	dfc00915 	stw	ra,36(sp)
  806790:	df000815 	stw	fp,32(sp)
  806794:	ddc00715 	stw	r23,28(sp)
  806798:	dd800615 	stw	r22,24(sp)
  80679c:	dd400515 	stw	r21,20(sp)
  8067a0:	dd000415 	stw	r20,16(sp)
  8067a4:	dcc00315 	stw	r19,12(sp)
  8067a8:	dc000015 	stw	r16,0(sp)
  8067ac:	888005e8 	cmpgeui	r2,r17,23
  8067b0:	2025883a 	mov	r18,r4
  8067b4:	10001b1e 	bne	r2,zero,806824 <_malloc_r+0xa8>
  8067b8:	29400468 	cmpgeui	r5,r5,17
  8067bc:	2800821e 	bne	r5,zero,8069c8 <_malloc_r+0x24c>
  8067c0:	080e3880 	call	80e388 <__malloc_lock>
  8067c4:	04400404 	movi	r17,16
  8067c8:	01c00084 	movi	r7,2
  8067cc:	00800604 	movi	r2,24
  8067d0:	04c02074 	movhi	r19,129
  8067d4:	9cc40104 	addi	r19,r19,4100
  8067d8:	9885883a 	add	r2,r19,r2
  8067dc:	14000117 	ldw	r16,4(r2)
  8067e0:	10fffe04 	addi	r3,r2,-8
  8067e4:	80c08b26 	beq	r16,r3,806a14 <_malloc_r+0x298>
  8067e8:	80800117 	ldw	r2,4(r16)
  8067ec:	81000317 	ldw	r4,12(r16)
  8067f0:	00ffff04 	movi	r3,-4
  8067f4:	10c4703a 	and	r2,r2,r3
  8067f8:	81400217 	ldw	r5,8(r16)
  8067fc:	8085883a 	add	r2,r16,r2
  806800:	10c00117 	ldw	r3,4(r2)
  806804:	29000315 	stw	r4,12(r5)
  806808:	21400215 	stw	r5,8(r4)
  80680c:	18c00054 	ori	r3,r3,1
  806810:	10c00115 	stw	r3,4(r2)
  806814:	9009883a 	mov	r4,r18
  806818:	080e3ac0 	call	80e3ac <__malloc_unlock>
  80681c:	80800204 	addi	r2,r16,8
  806820:	00006c06 	br	8069d4 <_malloc_r+0x258>
  806824:	00bffe04 	movi	r2,-8
  806828:	88a2703a 	and	r17,r17,r2
  80682c:	88006616 	blt	r17,zero,8069c8 <_malloc_r+0x24c>
  806830:	89406536 	bltu	r17,r5,8069c8 <_malloc_r+0x24c>
  806834:	080e3880 	call	80e388 <__malloc_lock>
  806838:	88807e28 	cmpgeui	r2,r17,504
  80683c:	10012226 	beq	r2,zero,806cc8 <_malloc_r+0x54c>
  806840:	8804d27a 	srli	r2,r17,9
  806844:	10006f26 	beq	r2,zero,806a04 <_malloc_r+0x288>
  806848:	10c00168 	cmpgeui	r3,r2,5
  80684c:	1800fe1e 	bne	r3,zero,806c48 <_malloc_r+0x4cc>
  806850:	8804d1ba 	srli	r2,r17,6
  806854:	11c00e44 	addi	r7,r2,57
  806858:	380890fa 	slli	r4,r7,3
  80685c:	12000e04 	addi	r8,r2,56
  806860:	04c02074 	movhi	r19,129
  806864:	9cc40104 	addi	r19,r19,4100
  806868:	9909883a 	add	r4,r19,r4
  80686c:	24000117 	ldw	r16,4(r4)
  806870:	213ffe04 	addi	r4,r4,-8
  806874:	24000b26 	beq	r4,r16,8068a4 <_malloc_r+0x128>
  806878:	01bfff04 	movi	r6,-4
  80687c:	00000306 	br	80688c <_malloc_r+0x110>
  806880:	1800d60e 	bge	r3,zero,806bdc <_malloc_r+0x460>
  806884:	84000317 	ldw	r16,12(r16)
  806888:	24000626 	beq	r4,r16,8068a4 <_malloc_r+0x128>
  80688c:	80800117 	ldw	r2,4(r16)
  806890:	1184703a 	and	r2,r2,r6
  806894:	1447c83a 	sub	r3,r2,r17
  806898:	19400408 	cmpgei	r5,r3,16
  80689c:	283ff826 	beq	r5,zero,806880 <_malloc_r+0x104>
  8068a0:	400f883a 	mov	r7,r8
  8068a4:	9c000417 	ldw	r16,16(r19)
  8068a8:	02402074 	movhi	r9,129
  8068ac:	4a440304 	addi	r9,r9,4108
  8068b0:	82405f26 	beq	r16,r9,806a30 <_malloc_r+0x2b4>
  8068b4:	80c00117 	ldw	r3,4(r16)
  8068b8:	00bfff04 	movi	r2,-4
  8068bc:	1884703a 	and	r2,r3,r2
  8068c0:	1447c83a 	sub	r3,r2,r17
  8068c4:	19000410 	cmplti	r4,r3,16
  8068c8:	20010a26 	beq	r4,zero,806cf4 <_malloc_r+0x578>
  8068cc:	9a400515 	stw	r9,20(r19)
  8068d0:	9a400415 	stw	r9,16(r19)
  8068d4:	1800ff0e 	bge	r3,zero,806cd4 <_malloc_r+0x558>
  8068d8:	10c08028 	cmpgeui	r3,r2,512
  8068dc:	1800c11e 	bne	r3,zero,806be4 <_malloc_r+0x468>
  8068e0:	1006d0fa 	srli	r3,r2,3
  8068e4:	1008d17a 	srli	r4,r2,5
  8068e8:	00800044 	movi	r2,1
  8068ec:	18c00044 	addi	r3,r3,1
  8068f0:	180690fa 	slli	r3,r3,3
  8068f4:	99400117 	ldw	r5,4(r19)
  8068f8:	1104983a 	sll	r2,r2,r4
  8068fc:	98c7883a 	add	r3,r19,r3
  806900:	19000017 	ldw	r4,0(r3)
  806904:	1144b03a 	or	r2,r2,r5
  806908:	197ffe04 	addi	r5,r3,-8
  80690c:	81400315 	stw	r5,12(r16)
  806910:	81000215 	stw	r4,8(r16)
  806914:	98800115 	stw	r2,4(r19)
  806918:	1c000015 	stw	r16,0(r3)
  80691c:	24000315 	stw	r16,12(r4)
  806920:	3807d0ba 	srai	r3,r7,2
  806924:	01000044 	movi	r4,1
  806928:	20c8983a 	sll	r4,r4,r3
  80692c:	11004536 	bltu	r2,r4,806a44 <_malloc_r+0x2c8>
  806930:	2086703a 	and	r3,r4,r2
  806934:	18000a1e 	bne	r3,zero,806960 <_malloc_r+0x1e4>
  806938:	00ffff04 	movi	r3,-4
  80693c:	2109883a 	add	r4,r4,r4
  806940:	38ce703a 	and	r7,r7,r3
  806944:	2086703a 	and	r3,r4,r2
  806948:	39c00104 	addi	r7,r7,4
  80694c:	1800041e 	bne	r3,zero,806960 <_malloc_r+0x1e4>
  806950:	2109883a 	add	r4,r4,r4
  806954:	2086703a 	and	r3,r4,r2
  806958:	39c00104 	addi	r7,r7,4
  80695c:	183ffc26 	beq	r3,zero,806950 <_malloc_r+0x1d4>
  806960:	02bfff04 	movi	r10,-4
  806964:	381690fa 	slli	r11,r7,3
  806968:	3819883a 	mov	r12,r7
  80696c:	9ad7883a 	add	r11,r19,r11
  806970:	5811883a 	mov	r8,r11
  806974:	40800317 	ldw	r2,12(r8)
  806978:	4080bc26 	beq	r8,r2,806c6c <_malloc_r+0x4f0>
  80697c:	10c00117 	ldw	r3,4(r2)
  806980:	1021883a 	mov	r16,r2
  806984:	10800317 	ldw	r2,12(r2)
  806988:	1a86703a 	and	r3,r3,r10
  80698c:	1c4bc83a 	sub	r5,r3,r17
  806990:	29800410 	cmplti	r6,r5,16
  806994:	3000ba26 	beq	r6,zero,806c80 <_malloc_r+0x504>
  806998:	283ff716 	blt	r5,zero,806978 <_malloc_r+0x1fc>
  80699c:	80c7883a 	add	r3,r16,r3
  8069a0:	19400117 	ldw	r5,4(r3)
  8069a4:	81800217 	ldw	r6,8(r16)
  8069a8:	9009883a 	mov	r4,r18
  8069ac:	29400054 	ori	r5,r5,1
  8069b0:	19400115 	stw	r5,4(r3)
  8069b4:	30800315 	stw	r2,12(r6)
  8069b8:	11800215 	stw	r6,8(r2)
  8069bc:	080e3ac0 	call	80e3ac <__malloc_unlock>
  8069c0:	80800204 	addi	r2,r16,8
  8069c4:	00000306 	br	8069d4 <_malloc_r+0x258>
  8069c8:	00800304 	movi	r2,12
  8069cc:	90800015 	stw	r2,0(r18)
  8069d0:	0005883a 	mov	r2,zero
  8069d4:	dfc00917 	ldw	ra,36(sp)
  8069d8:	df000817 	ldw	fp,32(sp)
  8069dc:	ddc00717 	ldw	r23,28(sp)
  8069e0:	dd800617 	ldw	r22,24(sp)
  8069e4:	dd400517 	ldw	r21,20(sp)
  8069e8:	dd000417 	ldw	r20,16(sp)
  8069ec:	dcc00317 	ldw	r19,12(sp)
  8069f0:	dc800217 	ldw	r18,8(sp)
  8069f4:	dc400117 	ldw	r17,4(sp)
  8069f8:	dc000017 	ldw	r16,0(sp)
  8069fc:	dec00a04 	addi	sp,sp,40
  806a00:	f800283a 	ret
  806a04:	01008004 	movi	r4,512
  806a08:	01c01004 	movi	r7,64
  806a0c:	02000fc4 	movi	r8,63
  806a10:	003f9306 	br	806860 <_malloc_r+0xe4>
  806a14:	14000317 	ldw	r16,12(r2)
  806a18:	39c00084 	addi	r7,r7,2
  806a1c:	143f721e 	bne	r2,r16,8067e8 <_malloc_r+0x6c>
  806a20:	9c000417 	ldw	r16,16(r19)
  806a24:	02402074 	movhi	r9,129
  806a28:	4a440304 	addi	r9,r9,4108
  806a2c:	827fa11e 	bne	r16,r9,8068b4 <_malloc_r+0x138>
  806a30:	3807d0ba 	srai	r3,r7,2
  806a34:	01000044 	movi	r4,1
  806a38:	98800117 	ldw	r2,4(r19)
  806a3c:	20c8983a 	sll	r4,r4,r3
  806a40:	113fbb2e 	bgeu	r2,r4,806930 <_malloc_r+0x1b4>
  806a44:	9c000217 	ldw	r16,8(r19)
  806a48:	00bfff04 	movi	r2,-4
  806a4c:	85400117 	ldw	r21,4(r16)
  806a50:	a8ac703a 	and	r22,r21,r2
  806a54:	b4400336 	bltu	r22,r17,806a64 <_malloc_r+0x2e8>
  806a58:	b445c83a 	sub	r2,r22,r17
  806a5c:	10c00408 	cmpgei	r3,r2,16
  806a60:	1800541e 	bne	r3,zero,806bb4 <_malloc_r+0x438>
  806a64:	00802074 	movhi	r2,129
  806a68:	1089e217 	ldw	r2,10120(r2)
  806a6c:	00c02074 	movhi	r3,129
  806a70:	1d50e617 	ldw	r21,17304(r3)
  806a74:	10bfffd8 	cmpnei	r2,r2,-1
  806a78:	85b9883a 	add	fp,r16,r22
  806a7c:	8d6b883a 	add	r21,r17,r21
  806a80:	1000d626 	beq	r2,zero,806ddc <_malloc_r+0x660>
  806a84:	ad4403c4 	addi	r21,r21,4111
  806a88:	00bc0004 	movi	r2,-4096
  806a8c:	a8aa703a 	and	r21,r21,r2
  806a90:	a80b883a 	mov	r5,r21
  806a94:	9009883a 	mov	r4,r18
  806a98:	08089e80 	call	8089e8 <_sbrk_r>
  806a9c:	102f883a 	mov	r23,r2
  806aa0:	10bfffd8 	cmpnei	r2,r2,-1
  806aa4:	1000a826 	beq	r2,zero,806d48 <_malloc_r+0x5cc>
  806aa8:	bf00a636 	bltu	r23,fp,806d44 <_malloc_r+0x5c8>
  806aac:	00802074 	movhi	r2,129
  806ab0:	1510f017 	ldw	r20,17344(r2)
  806ab4:	ad29883a 	add	r20,r21,r20
  806ab8:	1510f015 	stw	r20,17344(r2)
  806abc:	a007883a 	mov	r3,r20
  806ac0:	e5c0ec26 	beq	fp,r23,806e74 <_malloc_r+0x6f8>
  806ac4:	00802074 	movhi	r2,129
  806ac8:	1089e217 	ldw	r2,10120(r2)
  806acc:	10bfffd8 	cmpnei	r2,r2,-1
  806ad0:	1000ef26 	beq	r2,zero,806e90 <_malloc_r+0x714>
  806ad4:	bf39c83a 	sub	fp,r23,fp
  806ad8:	e0c7883a 	add	r3,fp,r3
  806adc:	00802074 	movhi	r2,129
  806ae0:	10d0f015 	stw	r3,17344(r2)
  806ae4:	bf0001cc 	andi	fp,r23,7
  806ae8:	e000c526 	beq	fp,zero,806e00 <_malloc_r+0x684>
  806aec:	bf2fc83a 	sub	r23,r23,fp
  806af0:	bdc00204 	addi	r23,r23,8
  806af4:	05040204 	movi	r20,4104
  806af8:	a729c83a 	sub	r20,r20,fp
  806afc:	bd6b883a 	add	r21,r23,r21
  806b00:	a569c83a 	sub	r20,r20,r21
  806b04:	a503ffcc 	andi	r20,r20,4095
  806b08:	a00b883a 	mov	r5,r20
  806b0c:	9009883a 	mov	r4,r18
  806b10:	08089e80 	call	8089e8 <_sbrk_r>
  806b14:	10ffffe0 	cmpeqi	r3,r2,-1
  806b18:	1800f31e 	bne	r3,zero,806ee8 <_malloc_r+0x76c>
  806b1c:	15c5c83a 	sub	r2,r2,r23
  806b20:	152b883a 	add	r21,r2,r20
  806b24:	00802074 	movhi	r2,129
  806b28:	1150f017 	ldw	r5,17344(r2)
  806b2c:	9dc00215 	stw	r23,8(r19)
  806b30:	ad400054 	ori	r21,r21,1
  806b34:	a169883a 	add	r20,r20,r5
  806b38:	1510f015 	stw	r20,17344(r2)
  806b3c:	bd400115 	stw	r21,4(r23)
  806b40:	84c0d626 	beq	r16,r19,806e9c <_malloc_r+0x720>
  806b44:	b0800428 	cmpgeui	r2,r22,16
  806b48:	1000d626 	beq	r2,zero,806ea4 <_malloc_r+0x728>
  806b4c:	80c00117 	ldw	r3,4(r16)
  806b50:	013ffe04 	movi	r4,-8
  806b54:	b0bffd04 	addi	r2,r22,-12
  806b58:	1104703a 	and	r2,r2,r4
  806b5c:	18c0004c 	andi	r3,r3,1
  806b60:	1886b03a 	or	r3,r3,r2
  806b64:	80c00115 	stw	r3,4(r16)
  806b68:	01000144 	movi	r4,5
  806b6c:	8087883a 	add	r3,r16,r2
  806b70:	19000115 	stw	r4,4(r3)
  806b74:	19000215 	stw	r4,8(r3)
  806b78:	10800428 	cmpgeui	r2,r2,16
  806b7c:	1000df1e 	bne	r2,zero,806efc <_malloc_r+0x780>
  806b80:	bd400117 	ldw	r21,4(r23)
  806b84:	b821883a 	mov	r16,r23
  806b88:	00802074 	movhi	r2,129
  806b8c:	1090e517 	ldw	r2,17300(r2)
  806b90:	1500022e 	bgeu	r2,r20,806b9c <_malloc_r+0x420>
  806b94:	00802074 	movhi	r2,129
  806b98:	1510e515 	stw	r20,17300(r2)
  806b9c:	00802074 	movhi	r2,129
  806ba0:	1090e417 	ldw	r2,17296(r2)
  806ba4:	15006a2e 	bgeu	r2,r20,806d50 <_malloc_r+0x5d4>
  806ba8:	00802074 	movhi	r2,129
  806bac:	1510e415 	stw	r20,17296(r2)
  806bb0:	00006706 	br	806d50 <_malloc_r+0x5d4>
  806bb4:	88c00054 	ori	r3,r17,1
  806bb8:	80c00115 	stw	r3,4(r16)
  806bbc:	8463883a 	add	r17,r16,r17
  806bc0:	10800054 	ori	r2,r2,1
  806bc4:	9c400215 	stw	r17,8(r19)
  806bc8:	88800115 	stw	r2,4(r17)
  806bcc:	9009883a 	mov	r4,r18
  806bd0:	080e3ac0 	call	80e3ac <__malloc_unlock>
  806bd4:	80800204 	addi	r2,r16,8
  806bd8:	003f7e06 	br	8069d4 <_malloc_r+0x258>
  806bdc:	81000317 	ldw	r4,12(r16)
  806be0:	003f0506 	br	8067f8 <_malloc_r+0x7c>
  806be4:	1006d27a 	srli	r3,r2,9
  806be8:	19000168 	cmpgeui	r4,r3,5
  806bec:	20005026 	beq	r4,zero,806d30 <_malloc_r+0x5b4>
  806bf0:	19000568 	cmpgeui	r4,r3,21
  806bf4:	20008c1e 	bne	r4,zero,806e28 <_malloc_r+0x6ac>
  806bf8:	19401704 	addi	r5,r3,92
  806bfc:	280a90fa 	slli	r5,r5,3
  806c00:	190016c4 	addi	r4,r3,91
  806c04:	994b883a 	add	r5,r19,r5
  806c08:	28c00017 	ldw	r3,0(r5)
  806c0c:	297ffe04 	addi	r5,r5,-8
  806c10:	28c07426 	beq	r5,r3,806de4 <_malloc_r+0x668>
  806c14:	01bfff04 	movi	r6,-4
  806c18:	19000117 	ldw	r4,4(r3)
  806c1c:	2188703a 	and	r4,r4,r6
  806c20:	1100022e 	bgeu	r2,r4,806c2c <_malloc_r+0x4b0>
  806c24:	18c00217 	ldw	r3,8(r3)
  806c28:	28fffb1e 	bne	r5,r3,806c18 <_malloc_r+0x49c>
  806c2c:	19400317 	ldw	r5,12(r3)
  806c30:	98800117 	ldw	r2,4(r19)
  806c34:	81400315 	stw	r5,12(r16)
  806c38:	80c00215 	stw	r3,8(r16)
  806c3c:	2c000215 	stw	r16,8(r5)
  806c40:	1c000315 	stw	r16,12(r3)
  806c44:	003f3606 	br	806920 <_malloc_r+0x1a4>
  806c48:	10c00568 	cmpgeui	r3,r2,21
  806c4c:	18004a26 	beq	r3,zero,806d78 <_malloc_r+0x5fc>
  806c50:	10c01568 	cmpgeui	r3,r2,85
  806c54:	18007b1e 	bne	r3,zero,806e44 <_malloc_r+0x6c8>
  806c58:	8804d33a 	srli	r2,r17,12
  806c5c:	11c01bc4 	addi	r7,r2,111
  806c60:	380890fa 	slli	r4,r7,3
  806c64:	12001b84 	addi	r8,r2,110
  806c68:	003efd06 	br	806860 <_malloc_r+0xe4>
  806c6c:	63000044 	addi	r12,r12,1
  806c70:	608000cc 	andi	r2,r12,3
  806c74:	42000204 	addi	r8,r8,8
  806c78:	103f3e1e 	bne	r2,zero,806974 <_malloc_r+0x1f8>
  806c7c:	00004506 	br	806d94 <_malloc_r+0x618>
  806c80:	81000217 	ldw	r4,8(r16)
  806c84:	89800054 	ori	r6,r17,1
  806c88:	81800115 	stw	r6,4(r16)
  806c8c:	20800315 	stw	r2,12(r4)
  806c90:	11000215 	stw	r4,8(r2)
  806c94:	8463883a 	add	r17,r16,r17
  806c98:	9c400515 	stw	r17,20(r19)
  806c9c:	9c400415 	stw	r17,16(r19)
  806ca0:	28800054 	ori	r2,r5,1
  806ca4:	88800115 	stw	r2,4(r17)
  806ca8:	8a400315 	stw	r9,12(r17)
  806cac:	8a400215 	stw	r9,8(r17)
  806cb0:	80c7883a 	add	r3,r16,r3
  806cb4:	19400015 	stw	r5,0(r3)
  806cb8:	9009883a 	mov	r4,r18
  806cbc:	080e3ac0 	call	80e3ac <__malloc_unlock>
  806cc0:	80800204 	addi	r2,r16,8
  806cc4:	003f4306 	br	8069d4 <_malloc_r+0x258>
  806cc8:	880ed0fa 	srli	r7,r17,3
  806ccc:	88800204 	addi	r2,r17,8
  806cd0:	003ebf06 	br	8067d0 <_malloc_r+0x54>
  806cd4:	8085883a 	add	r2,r16,r2
  806cd8:	10c00117 	ldw	r3,4(r2)
  806cdc:	9009883a 	mov	r4,r18
  806ce0:	18c00054 	ori	r3,r3,1
  806ce4:	10c00115 	stw	r3,4(r2)
  806ce8:	080e3ac0 	call	80e3ac <__malloc_unlock>
  806cec:	80800204 	addi	r2,r16,8
  806cf0:	003f3806 	br	8069d4 <_malloc_r+0x258>
  806cf4:	89000054 	ori	r4,r17,1
  806cf8:	81000115 	stw	r4,4(r16)
  806cfc:	8463883a 	add	r17,r16,r17
  806d00:	9c400515 	stw	r17,20(r19)
  806d04:	9c400415 	stw	r17,16(r19)
  806d08:	19000054 	ori	r4,r3,1
  806d0c:	89000115 	stw	r4,4(r17)
  806d10:	8085883a 	add	r2,r16,r2
  806d14:	8a400315 	stw	r9,12(r17)
  806d18:	8a400215 	stw	r9,8(r17)
  806d1c:	10c00015 	stw	r3,0(r2)
  806d20:	9009883a 	mov	r4,r18
  806d24:	080e3ac0 	call	80e3ac <__malloc_unlock>
  806d28:	80800204 	addi	r2,r16,8
  806d2c:	003f2906 	br	8069d4 <_malloc_r+0x258>
  806d30:	1006d1ba 	srli	r3,r2,6
  806d34:	19400e44 	addi	r5,r3,57
  806d38:	280a90fa 	slli	r5,r5,3
  806d3c:	19000e04 	addi	r4,r3,56
  806d40:	003fb006 	br	806c04 <_malloc_r+0x488>
  806d44:	84c04626 	beq	r16,r19,806e60 <_malloc_r+0x6e4>
  806d48:	9c000217 	ldw	r16,8(r19)
  806d4c:	85400117 	ldw	r21,4(r16)
  806d50:	00bfff04 	movi	r2,-4
  806d54:	a8aa703a 	and	r21,r21,r2
  806d58:	ac45c83a 	sub	r2,r21,r17
  806d5c:	ac400236 	bltu	r21,r17,806d68 <_malloc_r+0x5ec>
  806d60:	10c00408 	cmpgei	r3,r2,16
  806d64:	183f931e 	bne	r3,zero,806bb4 <_malloc_r+0x438>
  806d68:	9009883a 	mov	r4,r18
  806d6c:	080e3ac0 	call	80e3ac <__malloc_unlock>
  806d70:	0005883a 	mov	r2,zero
  806d74:	003f1706 	br	8069d4 <_malloc_r+0x258>
  806d78:	11c01704 	addi	r7,r2,92
  806d7c:	380890fa 	slli	r4,r7,3
  806d80:	120016c4 	addi	r8,r2,91
  806d84:	003eb606 	br	806860 <_malloc_r+0xe4>
  806d88:	58800217 	ldw	r2,8(r11)
  806d8c:	39ffffc4 	addi	r7,r7,-1
  806d90:	12c0701e 	bne	r2,r11,806f54 <_malloc_r+0x7d8>
  806d94:	388000cc 	andi	r2,r7,3
  806d98:	5afffe04 	addi	r11,r11,-8
  806d9c:	103ffa1e 	bne	r2,zero,806d88 <_malloc_r+0x60c>
  806da0:	98c00117 	ldw	r3,4(r19)
  806da4:	0104303a 	nor	r2,zero,r4
  806da8:	10c4703a 	and	r2,r2,r3
  806dac:	98800115 	stw	r2,4(r19)
  806db0:	2109883a 	add	r4,r4,r4
  806db4:	113f2336 	bltu	r2,r4,806a44 <_malloc_r+0x2c8>
  806db8:	203f2226 	beq	r4,zero,806a44 <_malloc_r+0x2c8>
  806dbc:	2086703a 	and	r3,r4,r2
  806dc0:	1800041e 	bne	r3,zero,806dd4 <_malloc_r+0x658>
  806dc4:	2109883a 	add	r4,r4,r4
  806dc8:	2086703a 	and	r3,r4,r2
  806dcc:	63000104 	addi	r12,r12,4
  806dd0:	183ffc26 	beq	r3,zero,806dc4 <_malloc_r+0x648>
  806dd4:	600f883a 	mov	r7,r12
  806dd8:	003ee206 	br	806964 <_malloc_r+0x1e8>
  806ddc:	ad400404 	addi	r21,r21,16
  806de0:	003f2b06 	br	806a90 <_malloc_r+0x314>
  806de4:	2009d0ba 	srai	r4,r4,2
  806de8:	00800044 	movi	r2,1
  806dec:	99800117 	ldw	r6,4(r19)
  806df0:	1104983a 	sll	r2,r2,r4
  806df4:	1184b03a 	or	r2,r2,r6
  806df8:	98800115 	stw	r2,4(r19)
  806dfc:	003f8d06 	br	806c34 <_malloc_r+0x4b8>
  806e00:	bd69883a 	add	r20,r23,r21
  806e04:	0529c83a 	sub	r20,zero,r20
  806e08:	a503ffcc 	andi	r20,r20,4095
  806e0c:	a00b883a 	mov	r5,r20
  806e10:	9009883a 	mov	r4,r18
  806e14:	08089e80 	call	8089e8 <_sbrk_r>
  806e18:	10ffffe0 	cmpeqi	r3,r2,-1
  806e1c:	183f3f26 	beq	r3,zero,806b1c <_malloc_r+0x3a0>
  806e20:	0029883a 	mov	r20,zero
  806e24:	003f3f06 	br	806b24 <_malloc_r+0x3a8>
  806e28:	19001568 	cmpgeui	r4,r3,85
  806e2c:	2000201e 	bne	r4,zero,806eb0 <_malloc_r+0x734>
  806e30:	1006d33a 	srli	r3,r2,12
  806e34:	19401bc4 	addi	r5,r3,111
  806e38:	280a90fa 	slli	r5,r5,3
  806e3c:	19001b84 	addi	r4,r3,110
  806e40:	003f7006 	br	806c04 <_malloc_r+0x488>
  806e44:	10c05568 	cmpgeui	r3,r2,341
  806e48:	1800201e 	bne	r3,zero,806ecc <_malloc_r+0x750>
  806e4c:	8804d3fa 	srli	r2,r17,15
  806e50:	11c01e04 	addi	r7,r2,120
  806e54:	380890fa 	slli	r4,r7,3
  806e58:	12001dc4 	addi	r8,r2,119
  806e5c:	003e8006 	br	806860 <_malloc_r+0xe4>
  806e60:	00802074 	movhi	r2,129
  806e64:	10d0f017 	ldw	r3,17344(r2)
  806e68:	a8c7883a 	add	r3,r21,r3
  806e6c:	10d0f015 	stw	r3,17344(r2)
  806e70:	003f1406 	br	806ac4 <_malloc_r+0x348>
  806e74:	e083ffcc 	andi	r2,fp,4095
  806e78:	103f121e 	bne	r2,zero,806ac4 <_malloc_r+0x348>
  806e7c:	9c000217 	ldw	r16,8(r19)
  806e80:	b56b883a 	add	r21,r22,r21
  806e84:	ad400054 	ori	r21,r21,1
  806e88:	85400115 	stw	r21,4(r16)
  806e8c:	003f3e06 	br	806b88 <_malloc_r+0x40c>
  806e90:	00802074 	movhi	r2,129
  806e94:	15c9e215 	stw	r23,10120(r2)
  806e98:	003f1206 	br	806ae4 <_malloc_r+0x368>
  806e9c:	b821883a 	mov	r16,r23
  806ea0:	003f3906 	br	806b88 <_malloc_r+0x40c>
  806ea4:	00800044 	movi	r2,1
  806ea8:	b8800115 	stw	r2,4(r23)
  806eac:	003fae06 	br	806d68 <_malloc_r+0x5ec>
  806eb0:	19005568 	cmpgeui	r4,r3,341
  806eb4:	2000191e 	bne	r4,zero,806f1c <_malloc_r+0x7a0>
  806eb8:	1006d3fa 	srli	r3,r2,15
  806ebc:	19401e04 	addi	r5,r3,120
  806ec0:	280a90fa 	slli	r5,r5,3
  806ec4:	19001dc4 	addi	r4,r3,119
  806ec8:	003f4e06 	br	806c04 <_malloc_r+0x488>
  806ecc:	10815568 	cmpgeui	r2,r2,1365
  806ed0:	1000191e 	bne	r2,zero,806f38 <_malloc_r+0x7bc>
  806ed4:	8804d4ba 	srli	r2,r17,18
  806ed8:	11c01f44 	addi	r7,r2,125
  806edc:	380890fa 	slli	r4,r7,3
  806ee0:	12001f04 	addi	r8,r2,124
  806ee4:	003e5e06 	br	806860 <_malloc_r+0xe4>
  806ee8:	e73ffe04 	addi	fp,fp,-8
  806eec:	af2b883a 	add	r21,r21,fp
  806ef0:	adebc83a 	sub	r21,r21,r23
  806ef4:	0029883a 	mov	r20,zero
  806ef8:	003f0a06 	br	806b24 <_malloc_r+0x3a8>
  806efc:	81400204 	addi	r5,r16,8
  806f00:	9009883a 	mov	r4,r18
  806f04:	0805c7c0 	call	805c7c <_free_r>
  806f08:	9c000217 	ldw	r16,8(r19)
  806f0c:	00802074 	movhi	r2,129
  806f10:	1510f017 	ldw	r20,17344(r2)
  806f14:	85400117 	ldw	r21,4(r16)
  806f18:	003f1b06 	br	806b88 <_malloc_r+0x40c>
  806f1c:	18c15568 	cmpgeui	r3,r3,1365
  806f20:	1800091e 	bne	r3,zero,806f48 <_malloc_r+0x7cc>
  806f24:	1006d4ba 	srli	r3,r2,18
  806f28:	19401f44 	addi	r5,r3,125
  806f2c:	280a90fa 	slli	r5,r5,3
  806f30:	19001f04 	addi	r4,r3,124
  806f34:	003f3306 	br	806c04 <_malloc_r+0x488>
  806f38:	0100fe04 	movi	r4,1016
  806f3c:	01c01fc4 	movi	r7,127
  806f40:	02001f84 	movi	r8,126
  806f44:	003e4606 	br	806860 <_malloc_r+0xe4>
  806f48:	0140fe04 	movi	r5,1016
  806f4c:	01001f84 	movi	r4,126
  806f50:	003f2c06 	br	806c04 <_malloc_r+0x488>
  806f54:	98800117 	ldw	r2,4(r19)
  806f58:	003f9506 	br	806db0 <_malloc_r+0x634>

00806f5c <memchr>:
  806f5c:	208000cc 	andi	r2,r4,3
  806f60:	280f883a 	mov	r7,r5
  806f64:	10000e26 	beq	r2,zero,806fa0 <memchr+0x44>
  806f68:	30bfffc4 	addi	r2,r6,-1
  806f6c:	30001726 	beq	r6,zero,806fcc <memchr+0x70>
  806f70:	29803fcc 	andi	r6,r5,255
  806f74:	00000606 	br	806f90 <memchr+0x34>
  806f78:	21000044 	addi	r4,r4,1
  806f7c:	20c000cc 	andi	r3,r4,3
  806f80:	18000826 	beq	r3,zero,806fa4 <memchr+0x48>
  806f84:	10bfffc4 	addi	r2,r2,-1
  806f88:	10ffffe0 	cmpeqi	r3,r2,-1
  806f8c:	18000f1e 	bne	r3,zero,806fcc <memchr+0x70>
  806f90:	20c00003 	ldbu	r3,0(r4)
  806f94:	19bff81e 	bne	r3,r6,806f78 <memchr+0x1c>
  806f98:	2005883a 	mov	r2,r4
  806f9c:	f800283a 	ret
  806fa0:	3005883a 	mov	r2,r6
  806fa4:	10c00128 	cmpgeui	r3,r2,4
  806fa8:	18000a1e 	bne	r3,zero,806fd4 <memchr+0x78>
  806fac:	10001f26 	beq	r2,zero,80702c <memchr+0xd0>
  806fb0:	2087883a 	add	r3,r4,r2
  806fb4:	39803fcc 	andi	r6,r7,255
  806fb8:	2005883a 	mov	r2,r4
  806fbc:	11000003 	ldbu	r4,0(r2)
  806fc0:	21bff626 	beq	r4,r6,806f9c <memchr+0x40>
  806fc4:	10800044 	addi	r2,r2,1
  806fc8:	18bffc1e 	bne	r3,r2,806fbc <memchr+0x60>
  806fcc:	0005883a 	mov	r2,zero
  806fd0:	f800283a 	ret
  806fd4:	2810923a 	slli	r8,r5,8
  806fd8:	29403fcc 	andi	r5,r5,255
  806fdc:	027fbff4 	movhi	r9,65279
  806fe0:	423fffcc 	andi	r8,r8,65535
  806fe4:	414ab03a 	or	r5,r8,r5
  806fe8:	2810943a 	slli	r8,r5,16
  806fec:	01a02074 	movhi	r6,32897
  806ff0:	4a7fbfc4 	addi	r9,r9,-257
  806ff4:	4150b03a 	or	r8,r8,r5
  806ff8:	31a02004 	addi	r6,r6,-32640
  806ffc:	20c00017 	ldw	r3,0(r4)
  807000:	40c6f03a 	xor	r3,r8,r3
  807004:	1a4b883a 	add	r5,r3,r9
  807008:	00c6303a 	nor	r3,zero,r3
  80700c:	28c6703a 	and	r3,r5,r3
  807010:	1986703a 	and	r3,r3,r6
  807014:	183fe61e 	bne	r3,zero,806fb0 <memchr+0x54>
  807018:	10bfff04 	addi	r2,r2,-4
  80701c:	10c00128 	cmpgeui	r3,r2,4
  807020:	21000104 	addi	r4,r4,4
  807024:	183ff51e 	bne	r3,zero,806ffc <memchr+0xa0>
  807028:	003fe006 	br	806fac <memchr+0x50>
  80702c:	f800283a 	ret

00807030 <memcpy>:
  807030:	30c00430 	cmpltui	r3,r6,16
  807034:	2005883a 	mov	r2,r4
  807038:	18002d1e 	bne	r3,zero,8070f0 <memcpy+0xc0>
  80703c:	2906b03a 	or	r3,r5,r4
  807040:	18c000cc 	andi	r3,r3,3
  807044:	1800351e 	bne	r3,zero,80711c <memcpy+0xec>
  807048:	32fffc04 	addi	r11,r6,-16
  80704c:	5816d13a 	srli	r11,r11,4
  807050:	280f883a 	mov	r7,r5
  807054:	2007883a 	mov	r3,r4
  807058:	5ac00044 	addi	r11,r11,1
  80705c:	5816913a 	slli	r11,r11,4
  807060:	22d5883a 	add	r10,r4,r11
  807064:	39000117 	ldw	r4,4(r7)
  807068:	3a400017 	ldw	r9,0(r7)
  80706c:	3a000217 	ldw	r8,8(r7)
  807070:	19000115 	stw	r4,4(r3)
  807074:	39000317 	ldw	r4,12(r7)
  807078:	1a400015 	stw	r9,0(r3)
  80707c:	1a000215 	stw	r8,8(r3)
  807080:	19000315 	stw	r4,12(r3)
  807084:	18c00404 	addi	r3,r3,16
  807088:	39c00404 	addi	r7,r7,16
  80708c:	50fff51e 	bne	r10,r3,807064 <memcpy+0x34>
  807090:	3100030c 	andi	r4,r6,12
  807094:	2acb883a 	add	r5,r5,r11
  807098:	320003cc 	andi	r8,r6,15
  80709c:	20002226 	beq	r4,zero,807128 <memcpy+0xf8>
  8070a0:	280f883a 	mov	r7,r5
  8070a4:	1813883a 	mov	r9,r3
  8070a8:	39c00104 	addi	r7,r7,4
  8070ac:	3abfff17 	ldw	r10,-4(r7)
  8070b0:	41c9c83a 	sub	r4,r8,r7
  8070b4:	2909883a 	add	r4,r5,r4
  8070b8:	4a800015 	stw	r10,0(r9)
  8070bc:	21000128 	cmpgeui	r4,r4,4
  8070c0:	4a400104 	addi	r9,r9,4
  8070c4:	203ff81e 	bne	r4,zero,8070a8 <memcpy+0x78>
  8070c8:	413fff04 	addi	r4,r8,-4
  8070cc:	2008d0ba 	srli	r4,r4,2
  8070d0:	318000cc 	andi	r6,r6,3
  8070d4:	31ffffc4 	addi	r7,r6,-1
  8070d8:	21000044 	addi	r4,r4,1
  8070dc:	200890ba 	slli	r4,r4,2
  8070e0:	1907883a 	add	r3,r3,r4
  8070e4:	290b883a 	add	r5,r5,r4
  8070e8:	3000041e 	bne	r6,zero,8070fc <memcpy+0xcc>
  8070ec:	f800283a 	ret
  8070f0:	2007883a 	mov	r3,r4
  8070f4:	31ffffc4 	addi	r7,r6,-1
  8070f8:	303ffc26 	beq	r6,zero,8070ec <memcpy+0xbc>
  8070fc:	39c00044 	addi	r7,r7,1
  807100:	19cf883a 	add	r7,r3,r7
  807104:	29800003 	ldbu	r6,0(r5)
  807108:	18c00044 	addi	r3,r3,1
  80710c:	29400044 	addi	r5,r5,1
  807110:	19bfffc5 	stb	r6,-1(r3)
  807114:	38fffb1e 	bne	r7,r3,807104 <memcpy+0xd4>
  807118:	f800283a 	ret
  80711c:	31ffffc4 	addi	r7,r6,-1
  807120:	2007883a 	mov	r3,r4
  807124:	003ff506 	br	8070fc <memcpy+0xcc>
  807128:	400d883a 	mov	r6,r8
  80712c:	003ff106 	br	8070f4 <memcpy+0xc4>

00807130 <memmove>:
  807130:	2005883a 	mov	r2,r4
  807134:	29000a2e 	bgeu	r5,r4,807160 <memmove+0x30>
  807138:	2989883a 	add	r4,r5,r6
  80713c:	1100082e 	bgeu	r2,r4,807160 <memmove+0x30>
  807140:	1187883a 	add	r3,r2,r6
  807144:	30003e26 	beq	r6,zero,807240 <memmove+0x110>
  807148:	217fffc3 	ldbu	r5,-1(r4)
  80714c:	18ffffc4 	addi	r3,r3,-1
  807150:	213fffc4 	addi	r4,r4,-1
  807154:	19400005 	stb	r5,0(r3)
  807158:	10fffb1e 	bne	r2,r3,807148 <memmove+0x18>
  80715c:	f800283a 	ret
  807160:	30c00430 	cmpltui	r3,r6,16
  807164:	18000b26 	beq	r3,zero,807194 <memmove+0x64>
  807168:	1007883a 	mov	r3,r2
  80716c:	31ffffc4 	addi	r7,r6,-1
  807170:	30003726 	beq	r6,zero,807250 <memmove+0x120>
  807174:	39c00044 	addi	r7,r7,1
  807178:	29cf883a 	add	r7,r5,r7
  80717c:	29800003 	ldbu	r6,0(r5)
  807180:	29400044 	addi	r5,r5,1
  807184:	18c00044 	addi	r3,r3,1
  807188:	19bfffc5 	stb	r6,-1(r3)
  80718c:	29fffb1e 	bne	r5,r7,80717c <memmove+0x4c>
  807190:	f800283a 	ret
  807194:	2886b03a 	or	r3,r5,r2
  807198:	18c000cc 	andi	r3,r3,3
  80719c:	1800291e 	bne	r3,zero,807244 <memmove+0x114>
  8071a0:	327ffc04 	addi	r9,r6,-16
  8071a4:	4812d13a 	srli	r9,r9,4
  8071a8:	280f883a 	mov	r7,r5
  8071ac:	1007883a 	mov	r3,r2
  8071b0:	4a400044 	addi	r9,r9,1
  8071b4:	4812913a 	slli	r9,r9,4
  8071b8:	1251883a 	add	r8,r2,r9
  8071bc:	39000017 	ldw	r4,0(r7)
  8071c0:	39c00404 	addi	r7,r7,16
  8071c4:	18c00404 	addi	r3,r3,16
  8071c8:	193ffc15 	stw	r4,-16(r3)
  8071cc:	393ffd17 	ldw	r4,-12(r7)
  8071d0:	193ffd15 	stw	r4,-12(r3)
  8071d4:	393ffe17 	ldw	r4,-8(r7)
  8071d8:	193ffe15 	stw	r4,-8(r3)
  8071dc:	393fff17 	ldw	r4,-4(r7)
  8071e0:	193fff15 	stw	r4,-4(r3)
  8071e4:	40fff51e 	bne	r8,r3,8071bc <memmove+0x8c>
  8071e8:	3100030c 	andi	r4,r6,12
  8071ec:	2a4b883a 	add	r5,r5,r9
  8071f0:	320003cc 	andi	r8,r6,15
  8071f4:	20001726 	beq	r4,zero,807254 <memmove+0x124>
  8071f8:	2813883a 	mov	r9,r5
  8071fc:	180f883a 	mov	r7,r3
  807200:	4a800017 	ldw	r10,0(r9)
  807204:	39c00104 	addi	r7,r7,4
  807208:	41c9c83a 	sub	r4,r8,r7
  80720c:	1909883a 	add	r4,r3,r4
  807210:	21000128 	cmpgeui	r4,r4,4
  807214:	3abfff15 	stw	r10,-4(r7)
  807218:	4a400104 	addi	r9,r9,4
  80721c:	203ff81e 	bne	r4,zero,807200 <memmove+0xd0>
  807220:	413fff04 	addi	r4,r8,-4
  807224:	2008d0ba 	srli	r4,r4,2
  807228:	318000cc 	andi	r6,r6,3
  80722c:	21000044 	addi	r4,r4,1
  807230:	200890ba 	slli	r4,r4,2
  807234:	1907883a 	add	r3,r3,r4
  807238:	290b883a 	add	r5,r5,r4
  80723c:	003fcb06 	br	80716c <memmove+0x3c>
  807240:	f800283a 	ret
  807244:	31ffffc4 	addi	r7,r6,-1
  807248:	1007883a 	mov	r3,r2
  80724c:	003fc906 	br	807174 <memmove+0x44>
  807250:	f800283a 	ret
  807254:	400d883a 	mov	r6,r8
  807258:	003fc406 	br	80716c <memmove+0x3c>

0080725c <memset>:
  80725c:	20c000cc 	andi	r3,r4,3
  807260:	2005883a 	mov	r2,r4
  807264:	18003626 	beq	r3,zero,807340 <memset+0xe4>
  807268:	31ffffc4 	addi	r7,r6,-1
  80726c:	30003326 	beq	r6,zero,80733c <memset+0xe0>
  807270:	2811883a 	mov	r8,r5
  807274:	2007883a 	mov	r3,r4
  807278:	00000306 	br	807288 <memset+0x2c>
  80727c:	39ffffc4 	addi	r7,r7,-1
  807280:	39bfffe0 	cmpeqi	r6,r7,-1
  807284:	30002d1e 	bne	r6,zero,80733c <memset+0xe0>
  807288:	18c00044 	addi	r3,r3,1
  80728c:	198000cc 	andi	r6,r3,3
  807290:	1a3fffc5 	stb	r8,-1(r3)
  807294:	303ff91e 	bne	r6,zero,80727c <memset+0x20>
  807298:	39000130 	cmpltui	r4,r7,4
  80729c:	2000221e 	bne	r4,zero,807328 <memset+0xcc>
  8072a0:	29003fcc 	andi	r4,r5,255
  8072a4:	200c923a 	slli	r6,r4,8
  8072a8:	3a000430 	cmpltui	r8,r7,16
  8072ac:	3108b03a 	or	r4,r6,r4
  8072b0:	200c943a 	slli	r6,r4,16
  8072b4:	310cb03a 	or	r6,r6,r4
  8072b8:	40000e1e 	bne	r8,zero,8072f4 <memset+0x98>
  8072bc:	393ffc04 	addi	r4,r7,-16
  8072c0:	2008d13a 	srli	r4,r4,4
  8072c4:	21000044 	addi	r4,r4,1
  8072c8:	2008913a 	slli	r4,r4,4
  8072cc:	1909883a 	add	r4,r3,r4
  8072d0:	19800015 	stw	r6,0(r3)
  8072d4:	19800115 	stw	r6,4(r3)
  8072d8:	19800215 	stw	r6,8(r3)
  8072dc:	19800315 	stw	r6,12(r3)
  8072e0:	18c00404 	addi	r3,r3,16
  8072e4:	20fffa1e 	bne	r4,r3,8072d0 <memset+0x74>
  8072e8:	3900030c 	andi	r4,r7,12
  8072ec:	39c003cc 	andi	r7,r7,15
  8072f0:	20000d26 	beq	r4,zero,807328 <memset+0xcc>
  8072f4:	1811883a 	mov	r8,r3
  8072f8:	42000104 	addi	r8,r8,4
  8072fc:	3a09c83a 	sub	r4,r7,r8
  807300:	1909883a 	add	r4,r3,r4
  807304:	21000128 	cmpgeui	r4,r4,4
  807308:	41bfff15 	stw	r6,-4(r8)
  80730c:	203ffa1e 	bne	r4,zero,8072f8 <memset+0x9c>
  807310:	393fff04 	addi	r4,r7,-4
  807314:	2008d0ba 	srli	r4,r4,2
  807318:	39c000cc 	andi	r7,r7,3
  80731c:	21000044 	addi	r4,r4,1
  807320:	200890ba 	slli	r4,r4,2
  807324:	1907883a 	add	r3,r3,r4
  807328:	38000426 	beq	r7,zero,80733c <memset+0xe0>
  80732c:	19cf883a 	add	r7,r3,r7
  807330:	18c00044 	addi	r3,r3,1
  807334:	197fffc5 	stb	r5,-1(r3)
  807338:	38fffd1e 	bne	r7,r3,807330 <memset+0xd4>
  80733c:	f800283a 	ret
  807340:	2007883a 	mov	r3,r4
  807344:	300f883a 	mov	r7,r6
  807348:	003fd306 	br	807298 <memset+0x3c>

0080734c <_Balloc>:
  80734c:	20801317 	ldw	r2,76(r4)
  807350:	defffc04 	addi	sp,sp,-16
  807354:	dc400115 	stw	r17,4(sp)
  807358:	dc000015 	stw	r16,0(sp)
  80735c:	dfc00315 	stw	ra,12(sp)
  807360:	dc800215 	stw	r18,8(sp)
  807364:	2021883a 	mov	r16,r4
  807368:	2823883a 	mov	r17,r5
  80736c:	10000e26 	beq	r2,zero,8073a8 <_Balloc+0x5c>
  807370:	880690ba 	slli	r3,r17,2
  807374:	10c7883a 	add	r3,r2,r3
  807378:	18800017 	ldw	r2,0(r3)
  80737c:	10001126 	beq	r2,zero,8073c4 <_Balloc+0x78>
  807380:	11000017 	ldw	r4,0(r2)
  807384:	19000015 	stw	r4,0(r3)
  807388:	10000415 	stw	zero,16(r2)
  80738c:	10000315 	stw	zero,12(r2)
  807390:	dfc00317 	ldw	ra,12(sp)
  807394:	dc800217 	ldw	r18,8(sp)
  807398:	dc400117 	ldw	r17,4(sp)
  80739c:	dc000017 	ldw	r16,0(sp)
  8073a0:	dec00404 	addi	sp,sp,16
  8073a4:	f800283a 	ret
  8073a8:	01800844 	movi	r6,33
  8073ac:	01400104 	movi	r5,4
  8073b0:	080a1b00 	call	80a1b0 <_calloc_r>
  8073b4:	80801315 	stw	r2,76(r16)
  8073b8:	103fed1e 	bne	r2,zero,807370 <_Balloc+0x24>
  8073bc:	0005883a 	mov	r2,zero
  8073c0:	003ff306 	br	807390 <_Balloc+0x44>
  8073c4:	04800044 	movi	r18,1
  8073c8:	9464983a 	sll	r18,r18,r17
  8073cc:	01400044 	movi	r5,1
  8073d0:	8009883a 	mov	r4,r16
  8073d4:	91800144 	addi	r6,r18,5
  8073d8:	300c90ba 	slli	r6,r6,2
  8073dc:	080a1b00 	call	80a1b0 <_calloc_r>
  8073e0:	103ff626 	beq	r2,zero,8073bc <_Balloc+0x70>
  8073e4:	14400115 	stw	r17,4(r2)
  8073e8:	14800215 	stw	r18,8(r2)
  8073ec:	003fe606 	br	807388 <_Balloc+0x3c>

008073f0 <_Bfree>:
  8073f0:	28000726 	beq	r5,zero,807410 <_Bfree+0x20>
  8073f4:	28c00117 	ldw	r3,4(r5)
  8073f8:	20801317 	ldw	r2,76(r4)
  8073fc:	180690ba 	slli	r3,r3,2
  807400:	10c5883a 	add	r2,r2,r3
  807404:	10c00017 	ldw	r3,0(r2)
  807408:	28c00015 	stw	r3,0(r5)
  80740c:	11400015 	stw	r5,0(r2)
  807410:	f800283a 	ret

00807414 <__multadd>:
  807414:	defff704 	addi	sp,sp,-36
  807418:	dc800215 	stw	r18,8(sp)
  80741c:	2c800417 	ldw	r18,16(r5)
  807420:	ddc00715 	stw	r23,28(sp)
  807424:	dd800615 	stw	r22,24(sp)
  807428:	dd400515 	stw	r21,20(sp)
  80742c:	dd000415 	stw	r20,16(sp)
  807430:	dcc00315 	stw	r19,12(sp)
  807434:	dc400115 	stw	r17,4(sp)
  807438:	dfc00815 	stw	ra,32(sp)
  80743c:	dc000015 	stw	r16,0(sp)
  807440:	2827883a 	mov	r19,r5
  807444:	2029883a 	mov	r20,r4
  807448:	302b883a 	mov	r21,r6
  80744c:	3823883a 	mov	r17,r7
  807450:	2d800504 	addi	r22,r5,20
  807454:	002f883a 	mov	r23,zero
  807458:	b4000017 	ldw	r16,0(r22)
  80745c:	a80b883a 	mov	r5,r21
  807460:	b5800104 	addi	r22,r22,4
  807464:	813fffcc 	andi	r4,r16,65535
  807468:	08016c40 	call	8016c4 <__mulsi3>
  80746c:	8008d43a 	srli	r4,r16,16
  807470:	a80b883a 	mov	r5,r21
  807474:	1461883a 	add	r16,r2,r17
  807478:	08016c40 	call	8016c4 <__mulsi3>
  80747c:	800ed43a 	srli	r7,r16,16
  807480:	843fffcc 	andi	r16,r16,65535
  807484:	bdc00044 	addi	r23,r23,1
  807488:	11c5883a 	add	r2,r2,r7
  80748c:	1006943a 	slli	r3,r2,16
  807490:	1022d43a 	srli	r17,r2,16
  807494:	1c21883a 	add	r16,r3,r16
  807498:	b43fff15 	stw	r16,-4(r22)
  80749c:	bcbfee16 	blt	r23,r18,807458 <__multadd+0x44>
  8074a0:	88000826 	beq	r17,zero,8074c4 <__multadd+0xb0>
  8074a4:	98800217 	ldw	r2,8(r19)
  8074a8:	9080120e 	bge	r18,r2,8074f4 <__multadd+0xe0>
  8074ac:	90800144 	addi	r2,r18,5
  8074b0:	100490ba 	slli	r2,r2,2
  8074b4:	94800044 	addi	r18,r18,1
  8074b8:	9885883a 	add	r2,r19,r2
  8074bc:	14400015 	stw	r17,0(r2)
  8074c0:	9c800415 	stw	r18,16(r19)
  8074c4:	9805883a 	mov	r2,r19
  8074c8:	dfc00817 	ldw	ra,32(sp)
  8074cc:	ddc00717 	ldw	r23,28(sp)
  8074d0:	dd800617 	ldw	r22,24(sp)
  8074d4:	dd400517 	ldw	r21,20(sp)
  8074d8:	dd000417 	ldw	r20,16(sp)
  8074dc:	dcc00317 	ldw	r19,12(sp)
  8074e0:	dc800217 	ldw	r18,8(sp)
  8074e4:	dc400117 	ldw	r17,4(sp)
  8074e8:	dc000017 	ldw	r16,0(sp)
  8074ec:	dec00904 	addi	sp,sp,36
  8074f0:	f800283a 	ret
  8074f4:	99400117 	ldw	r5,4(r19)
  8074f8:	a009883a 	mov	r4,r20
  8074fc:	29400044 	addi	r5,r5,1
  807500:	080734c0 	call	80734c <_Balloc>
  807504:	1021883a 	mov	r16,r2
  807508:	10001226 	beq	r2,zero,807554 <__multadd+0x140>
  80750c:	99800417 	ldw	r6,16(r19)
  807510:	99400304 	addi	r5,r19,12
  807514:	11000304 	addi	r4,r2,12
  807518:	31800084 	addi	r6,r6,2
  80751c:	300c90ba 	slli	r6,r6,2
  807520:	08070300 	call	807030 <memcpy>
  807524:	98000926 	beq	r19,zero,80754c <__multadd+0x138>
  807528:	98c00117 	ldw	r3,4(r19)
  80752c:	a0801317 	ldw	r2,76(r20)
  807530:	180690ba 	slli	r3,r3,2
  807534:	10c5883a 	add	r2,r2,r3
  807538:	10c00017 	ldw	r3,0(r2)
  80753c:	98c00015 	stw	r3,0(r19)
  807540:	14c00015 	stw	r19,0(r2)
  807544:	8027883a 	mov	r19,r16
  807548:	003fd806 	br	8074ac <__multadd+0x98>
  80754c:	8027883a 	mov	r19,r16
  807550:	003fd606 	br	8074ac <__multadd+0x98>
  807554:	01c02074 	movhi	r7,129
  807558:	01002074 	movhi	r4,129
  80755c:	39c1c204 	addi	r7,r7,1800
  807560:	000d883a 	mov	r6,zero
  807564:	01402d44 	movi	r5,181
  807568:	2101d704 	addi	r4,r4,1884
  80756c:	080a1380 	call	80a138 <__assert_func>

00807570 <__s2b>:
  807570:	defff904 	addi	sp,sp,-28
  807574:	dc800215 	stw	r18,8(sp)
  807578:	dc000015 	stw	r16,0(sp)
  80757c:	2025883a 	mov	r18,r4
  807580:	2821883a 	mov	r16,r5
  807584:	39000204 	addi	r4,r7,8
  807588:	01400244 	movi	r5,9
  80758c:	dcc00315 	stw	r19,12(sp)
  807590:	dc400115 	stw	r17,4(sp)
  807594:	dfc00615 	stw	ra,24(sp)
  807598:	3823883a 	mov	r17,r7
  80759c:	dd400515 	stw	r21,20(sp)
  8075a0:	dd000415 	stw	r20,16(sp)
  8075a4:	3027883a 	mov	r19,r6
  8075a8:	080ba980 	call	80ba98 <__divsi3>
  8075ac:	88c00290 	cmplti	r3,r17,10
  8075b0:	1800341e 	bne	r3,zero,807684 <__s2b+0x114>
  8075b4:	00c00044 	movi	r3,1
  8075b8:	000b883a 	mov	r5,zero
  8075bc:	18c7883a 	add	r3,r3,r3
  8075c0:	29400044 	addi	r5,r5,1
  8075c4:	18bffd16 	blt	r3,r2,8075bc <__s2b+0x4c>
  8075c8:	9009883a 	mov	r4,r18
  8075cc:	080734c0 	call	80734c <_Balloc>
  8075d0:	100b883a 	mov	r5,r2
  8075d4:	10002d26 	beq	r2,zero,80768c <__s2b+0x11c>
  8075d8:	d8800717 	ldw	r2,28(sp)
  8075dc:	28800515 	stw	r2,20(r5)
  8075e0:	00800044 	movi	r2,1
  8075e4:	28800415 	stw	r2,16(r5)
  8075e8:	98800290 	cmplti	r2,r19,10
  8075ec:	1000221e 	bne	r2,zero,807678 <__s2b+0x108>
  8075f0:	85400244 	addi	r21,r16,9
  8075f4:	a829883a 	mov	r20,r21
  8075f8:	84e1883a 	add	r16,r16,r19
  8075fc:	a1c00007 	ldb	r7,0(r20)
  807600:	01800284 	movi	r6,10
  807604:	9009883a 	mov	r4,r18
  807608:	39fff404 	addi	r7,r7,-48
  80760c:	08074140 	call	807414 <__multadd>
  807610:	a5000044 	addi	r20,r20,1
  807614:	100b883a 	mov	r5,r2
  807618:	a43ff81e 	bne	r20,r16,8075fc <__s2b+0x8c>
  80761c:	9c3ffe04 	addi	r16,r19,-8
  807620:	ac21883a 	add	r16,r21,r16
  807624:	9c400a0e 	bge	r19,r17,807650 <__s2b+0xe0>
  807628:	8ce3c83a 	sub	r17,r17,r19
  80762c:	8463883a 	add	r17,r16,r17
  807630:	81c00007 	ldb	r7,0(r16)
  807634:	01800284 	movi	r6,10
  807638:	9009883a 	mov	r4,r18
  80763c:	39fff404 	addi	r7,r7,-48
  807640:	08074140 	call	807414 <__multadd>
  807644:	84000044 	addi	r16,r16,1
  807648:	100b883a 	mov	r5,r2
  80764c:	8c3ff81e 	bne	r17,r16,807630 <__s2b+0xc0>
  807650:	2805883a 	mov	r2,r5
  807654:	dfc00617 	ldw	ra,24(sp)
  807658:	dd400517 	ldw	r21,20(sp)
  80765c:	dd000417 	ldw	r20,16(sp)
  807660:	dcc00317 	ldw	r19,12(sp)
  807664:	dc800217 	ldw	r18,8(sp)
  807668:	dc400117 	ldw	r17,4(sp)
  80766c:	dc000017 	ldw	r16,0(sp)
  807670:	dec00704 	addi	sp,sp,28
  807674:	f800283a 	ret
  807678:	84000284 	addi	r16,r16,10
  80767c:	04c00244 	movi	r19,9
  807680:	003fe806 	br	807624 <__s2b+0xb4>
  807684:	000b883a 	mov	r5,zero
  807688:	003fcf06 	br	8075c8 <__s2b+0x58>
  80768c:	01c02074 	movhi	r7,129
  807690:	01002074 	movhi	r4,129
  807694:	39c1c204 	addi	r7,r7,1800
  807698:	000d883a 	mov	r6,zero
  80769c:	01403384 	movi	r5,206
  8076a0:	2101d704 	addi	r4,r4,1884
  8076a4:	080a1380 	call	80a138 <__assert_func>

008076a8 <__hi0bits>:
  8076a8:	20bfffec 	andhi	r2,r4,65535
  8076ac:	1000131e 	bne	r2,zero,8076fc <__hi0bits+0x54>
  8076b0:	2008943a 	slli	r4,r4,16
  8076b4:	00800404 	movi	r2,16
  8076b8:	20ffc02c 	andhi	r3,r4,65280
  8076bc:	1800021e 	bne	r3,zero,8076c8 <__hi0bits+0x20>
  8076c0:	2008923a 	slli	r4,r4,8
  8076c4:	10800204 	addi	r2,r2,8
  8076c8:	20fc002c 	andhi	r3,r4,61440
  8076cc:	1800021e 	bne	r3,zero,8076d8 <__hi0bits+0x30>
  8076d0:	2008913a 	slli	r4,r4,4
  8076d4:	10800104 	addi	r2,r2,4
  8076d8:	20f0002c 	andhi	r3,r4,49152
  8076dc:	1800021e 	bne	r3,zero,8076e8 <__hi0bits+0x40>
  8076e0:	200890ba 	slli	r4,r4,2
  8076e4:	10800084 	addi	r2,r2,2
  8076e8:	20000316 	blt	r4,zero,8076f8 <__hi0bits+0x50>
  8076ec:	2110002c 	andhi	r4,r4,16384
  8076f0:	10800044 	addi	r2,r2,1
  8076f4:	20000326 	beq	r4,zero,807704 <__hi0bits+0x5c>
  8076f8:	f800283a 	ret
  8076fc:	0005883a 	mov	r2,zero
  807700:	003fed06 	br	8076b8 <__hi0bits+0x10>
  807704:	00800804 	movi	r2,32
  807708:	f800283a 	ret

0080770c <__lo0bits>:
  80770c:	20c00017 	ldw	r3,0(r4)
  807710:	188001cc 	andi	r2,r3,7
  807714:	10000826 	beq	r2,zero,807738 <__lo0bits+0x2c>
  807718:	1880004c 	andi	r2,r3,1
  80771c:	10001f1e 	bne	r2,zero,80779c <__lo0bits+0x90>
  807720:	1880008c 	andi	r2,r3,2
  807724:	10002126 	beq	r2,zero,8077ac <__lo0bits+0xa0>
  807728:	1806d07a 	srli	r3,r3,1
  80772c:	00800044 	movi	r2,1
  807730:	20c00015 	stw	r3,0(r4)
  807734:	f800283a 	ret
  807738:	18bfffcc 	andi	r2,r3,65535
  80773c:	10001426 	beq	r2,zero,807790 <__lo0bits+0x84>
  807740:	0005883a 	mov	r2,zero
  807744:	19403fcc 	andi	r5,r3,255
  807748:	2800021e 	bne	r5,zero,807754 <__lo0bits+0x48>
  80774c:	1806d23a 	srli	r3,r3,8
  807750:	10800204 	addi	r2,r2,8
  807754:	194003cc 	andi	r5,r3,15
  807758:	2800021e 	bne	r5,zero,807764 <__lo0bits+0x58>
  80775c:	1806d13a 	srli	r3,r3,4
  807760:	10800104 	addi	r2,r2,4
  807764:	194000cc 	andi	r5,r3,3
  807768:	2800021e 	bne	r5,zero,807774 <__lo0bits+0x68>
  80776c:	1806d0ba 	srli	r3,r3,2
  807770:	10800084 	addi	r2,r2,2
  807774:	1940004c 	andi	r5,r3,1
  807778:	2800031e 	bne	r5,zero,807788 <__lo0bits+0x7c>
  80777c:	1806d07a 	srli	r3,r3,1
  807780:	10800044 	addi	r2,r2,1
  807784:	18000726 	beq	r3,zero,8077a4 <__lo0bits+0x98>
  807788:	20c00015 	stw	r3,0(r4)
  80778c:	f800283a 	ret
  807790:	1806d43a 	srli	r3,r3,16
  807794:	00800404 	movi	r2,16
  807798:	003fea06 	br	807744 <__lo0bits+0x38>
  80779c:	0005883a 	mov	r2,zero
  8077a0:	f800283a 	ret
  8077a4:	00800804 	movi	r2,32
  8077a8:	f800283a 	ret
  8077ac:	1806d0ba 	srli	r3,r3,2
  8077b0:	00800084 	movi	r2,2
  8077b4:	20c00015 	stw	r3,0(r4)
  8077b8:	f800283a 	ret

008077bc <__i2b>:
  8077bc:	defffe04 	addi	sp,sp,-8
  8077c0:	dc000015 	stw	r16,0(sp)
  8077c4:	2821883a 	mov	r16,r5
  8077c8:	01400044 	movi	r5,1
  8077cc:	dfc00115 	stw	ra,4(sp)
  8077d0:	080734c0 	call	80734c <_Balloc>
  8077d4:	10000726 	beq	r2,zero,8077f4 <__i2b+0x38>
  8077d8:	01000044 	movi	r4,1
  8077dc:	14000515 	stw	r16,20(r2)
  8077e0:	11000415 	stw	r4,16(r2)
  8077e4:	dfc00117 	ldw	ra,4(sp)
  8077e8:	dc000017 	ldw	r16,0(sp)
  8077ec:	dec00204 	addi	sp,sp,8
  8077f0:	f800283a 	ret
  8077f4:	01c02074 	movhi	r7,129
  8077f8:	01002074 	movhi	r4,129
  8077fc:	39c1c204 	addi	r7,r7,1800
  807800:	000d883a 	mov	r6,zero
  807804:	01405004 	movi	r5,320
  807808:	2101d704 	addi	r4,r4,1884
  80780c:	080a1380 	call	80a138 <__assert_func>

00807810 <__multiply>:
  807810:	defff004 	addi	sp,sp,-64
  807814:	dd800c15 	stw	r22,48(sp)
  807818:	dc400715 	stw	r17,28(sp)
  80781c:	2d800417 	ldw	r22,16(r5)
  807820:	34400417 	ldw	r17,16(r6)
  807824:	dc800815 	stw	r18,32(sp)
  807828:	dc000615 	stw	r16,24(sp)
  80782c:	dfc00f15 	stw	ra,60(sp)
  807830:	df000e15 	stw	fp,56(sp)
  807834:	ddc00d15 	stw	r23,52(sp)
  807838:	dd400b15 	stw	r21,44(sp)
  80783c:	dd000a15 	stw	r20,40(sp)
  807840:	dcc00915 	stw	r19,36(sp)
  807844:	2825883a 	mov	r18,r5
  807848:	3021883a 	mov	r16,r6
  80784c:	b4400516 	blt	r22,r17,807864 <__multiply+0x54>
  807850:	8807883a 	mov	r3,r17
  807854:	2821883a 	mov	r16,r5
  807858:	b023883a 	mov	r17,r22
  80785c:	3025883a 	mov	r18,r6
  807860:	182d883a 	mov	r22,r3
  807864:	80800217 	ldw	r2,8(r16)
  807868:	8d87883a 	add	r3,r17,r22
  80786c:	d8c00115 	stw	r3,4(sp)
  807870:	81400117 	ldw	r5,4(r16)
  807874:	10c0010e 	bge	r2,r3,80787c <__multiply+0x6c>
  807878:	29400044 	addi	r5,r5,1
  80787c:	080734c0 	call	80734c <_Balloc>
  807880:	d8800515 	stw	r2,20(sp)
  807884:	10008626 	beq	r2,zero,807aa0 <__multiply+0x290>
  807888:	d8800117 	ldw	r2,4(sp)
  80788c:	102690ba 	slli	r19,r2,2
  807890:	d8800517 	ldw	r2,20(sp)
  807894:	10c00504 	addi	r3,r2,20
  807898:	d8c00015 	stw	r3,0(sp)
  80789c:	1ce7883a 	add	r19,r3,r19
  8078a0:	1805883a 	mov	r2,r3
  8078a4:	1cc0032e 	bgeu	r3,r19,8078b4 <__multiply+0xa4>
  8078a8:	10000015 	stw	zero,0(r2)
  8078ac:	10800104 	addi	r2,r2,4
  8078b0:	14fffd36 	bltu	r2,r19,8078a8 <__multiply+0x98>
  8078b4:	b02c90ba 	slli	r22,r22,2
  8078b8:	882290ba 	slli	r17,r17,2
  8078bc:	94800504 	addi	r18,r18,20
  8078c0:	80800504 	addi	r2,r16,20
  8078c4:	9587883a 	add	r3,r18,r22
  8078c8:	d8800315 	stw	r2,12(sp)
  8078cc:	d8c00215 	stw	r3,8(sp)
  8078d0:	1463883a 	add	r17,r2,r17
  8078d4:	90c0342e 	bgeu	r18,r3,8079a8 <__multiply+0x198>
  8078d8:	80800544 	addi	r2,r16,21
  8078dc:	88804b36 	bltu	r17,r2,807a0c <__multiply+0x1fc>
  8078e0:	8c05c83a 	sub	r2,r17,r16
  8078e4:	10bffac4 	addi	r2,r2,-21
  8078e8:	1004d0ba 	srli	r2,r2,2
  8078ec:	10800044 	addi	r2,r2,1
  8078f0:	100490ba 	slli	r2,r2,2
  8078f4:	d8800415 	stw	r2,16(sp)
  8078f8:	00000606 	br	807914 <__multiply+0x104>
  8078fc:	d8800017 	ldw	r2,0(sp)
  807900:	94800104 	addi	r18,r18,4
  807904:	10800104 	addi	r2,r2,4
  807908:	d8800015 	stw	r2,0(sp)
  80790c:	d8800217 	ldw	r2,8(sp)
  807910:	9080252e 	bgeu	r18,r2,8079a8 <__multiply+0x198>
  807914:	90800017 	ldw	r2,0(r18)
  807918:	15ffffcc 	andi	r23,r2,65535
  80791c:	b800401e 	bne	r23,zero,807a20 <__multiply+0x210>
  807920:	1028d43a 	srli	r20,r2,16
  807924:	a03ff526 	beq	r20,zero,8078fc <__multiply+0xec>
  807928:	dd400017 	ldw	r21,0(sp)
  80792c:	dd800317 	ldw	r22,12(sp)
  807930:	0039883a 	mov	fp,zero
  807934:	adc00017 	ldw	r23,0(r21)
  807938:	b821883a 	mov	r16,r23
  80793c:	b100000b 	ldhu	r4,0(r22)
  807940:	a00b883a 	mov	r5,r20
  807944:	ad400104 	addi	r21,r21,4
  807948:	08016c40 	call	8016c4 <__mulsi3>
  80794c:	800cd43a 	srli	r6,r16,16
  807950:	b8ffffcc 	andi	r3,r23,65535
  807954:	b5800104 	addi	r22,r22,4
  807958:	118d883a 	add	r6,r2,r6
  80795c:	3739883a 	add	fp,r6,fp
  807960:	e004943a 	slli	r2,fp,16
  807964:	ac000017 	ldw	r16,0(r21)
  807968:	a00b883a 	mov	r5,r20
  80796c:	10c6b03a 	or	r3,r2,r3
  807970:	a8ffff15 	stw	r3,-4(r21)
  807974:	b13fff8b 	ldhu	r4,-2(r22)
  807978:	08016c40 	call	8016c4 <__mulsi3>
  80797c:	e00cd43a 	srli	r6,fp,16
  807980:	80ffffcc 	andi	r3,r16,65535
  807984:	10c7883a 	add	r3,r2,r3
  807988:	19af883a 	add	r23,r3,r6
  80798c:	b838d43a 	srli	fp,r23,16
  807990:	b47fea36 	bltu	r22,r17,80793c <__multiply+0x12c>
  807994:	d8800017 	ldw	r2,0(sp)
  807998:	d8c00417 	ldw	r3,16(sp)
  80799c:	10c5883a 	add	r2,r2,r3
  8079a0:	15c00015 	stw	r23,0(r2)
  8079a4:	003fd506 	br	8078fc <__multiply+0xec>
  8079a8:	d8800117 	ldw	r2,4(sp)
  8079ac:	00800516 	blt	zero,r2,8079c4 <__multiply+0x1b4>
  8079b0:	00000706 	br	8079d0 <__multiply+0x1c0>
  8079b4:	d8800117 	ldw	r2,4(sp)
  8079b8:	10bfffc4 	addi	r2,r2,-1
  8079bc:	d8800115 	stw	r2,4(sp)
  8079c0:	10000326 	beq	r2,zero,8079d0 <__multiply+0x1c0>
  8079c4:	98bfff17 	ldw	r2,-4(r19)
  8079c8:	9cffff04 	addi	r19,r19,-4
  8079cc:	103ff926 	beq	r2,zero,8079b4 <__multiply+0x1a4>
  8079d0:	d8800517 	ldw	r2,20(sp)
  8079d4:	d8c00117 	ldw	r3,4(sp)
  8079d8:	10c00415 	stw	r3,16(r2)
  8079dc:	dfc00f17 	ldw	ra,60(sp)
  8079e0:	df000e17 	ldw	fp,56(sp)
  8079e4:	ddc00d17 	ldw	r23,52(sp)
  8079e8:	dd800c17 	ldw	r22,48(sp)
  8079ec:	dd400b17 	ldw	r21,44(sp)
  8079f0:	dd000a17 	ldw	r20,40(sp)
  8079f4:	dcc00917 	ldw	r19,36(sp)
  8079f8:	dc800817 	ldw	r18,32(sp)
  8079fc:	dc400717 	ldw	r17,28(sp)
  807a00:	dc000617 	ldw	r16,24(sp)
  807a04:	dec01004 	addi	sp,sp,64
  807a08:	f800283a 	ret
  807a0c:	00800104 	movi	r2,4
  807a10:	d8800415 	stw	r2,16(sp)
  807a14:	90800017 	ldw	r2,0(r18)
  807a18:	15ffffcc 	andi	r23,r2,65535
  807a1c:	b83fc026 	beq	r23,zero,807920 <__multiply+0x110>
  807a20:	dd800017 	ldw	r22,0(sp)
  807a24:	dd400317 	ldw	r21,12(sp)
  807a28:	0029883a 	mov	r20,zero
  807a2c:	af000017 	ldw	fp,0(r21)
  807a30:	b4000017 	ldw	r16,0(r22)
  807a34:	b80b883a 	mov	r5,r23
  807a38:	e13fffcc 	andi	r4,fp,65535
  807a3c:	08016c40 	call	8016c4 <__mulsi3>
  807a40:	e008d43a 	srli	r4,fp,16
  807a44:	823fffcc 	andi	r8,r16,65535
  807a48:	1205883a 	add	r2,r2,r8
  807a4c:	b80b883a 	mov	r5,r23
  807a50:	1529883a 	add	r20,r2,r20
  807a54:	8020d43a 	srli	r16,r16,16
  807a58:	08016c40 	call	8016c4 <__mulsi3>
  807a5c:	a008d43a 	srli	r4,r20,16
  807a60:	1405883a 	add	r2,r2,r16
  807a64:	a0ffffcc 	andi	r3,r20,65535
  807a68:	1105883a 	add	r2,r2,r4
  807a6c:	1008943a 	slli	r4,r2,16
  807a70:	b5800104 	addi	r22,r22,4
  807a74:	ad400104 	addi	r21,r21,4
  807a78:	20c6b03a 	or	r3,r4,r3
  807a7c:	b0ffff15 	stw	r3,-4(r22)
  807a80:	1028d43a 	srli	r20,r2,16
  807a84:	ac7fe936 	bltu	r21,r17,807a2c <__multiply+0x21c>
  807a88:	d8800017 	ldw	r2,0(sp)
  807a8c:	d8c00417 	ldw	r3,16(sp)
  807a90:	10c5883a 	add	r2,r2,r3
  807a94:	15000015 	stw	r20,0(r2)
  807a98:	90800017 	ldw	r2,0(r18)
  807a9c:	003fa006 	br	807920 <__multiply+0x110>
  807aa0:	01c02074 	movhi	r7,129
  807aa4:	01002074 	movhi	r4,129
  807aa8:	39c1c204 	addi	r7,r7,1800
  807aac:	000d883a 	mov	r6,zero
  807ab0:	01405744 	movi	r5,349
  807ab4:	2101d704 	addi	r4,r4,1884
  807ab8:	080a1380 	call	80a138 <__assert_func>

00807abc <__pow5mult>:
  807abc:	defffb04 	addi	sp,sp,-20
  807ac0:	dcc00315 	stw	r19,12(sp)
  807ac4:	dc000015 	stw	r16,0(sp)
  807ac8:	dfc00415 	stw	ra,16(sp)
  807acc:	dc800215 	stw	r18,8(sp)
  807ad0:	dc400115 	stw	r17,4(sp)
  807ad4:	308000cc 	andi	r2,r6,3
  807ad8:	3021883a 	mov	r16,r6
  807adc:	2027883a 	mov	r19,r4
  807ae0:	10002d1e 	bne	r2,zero,807b98 <__pow5mult+0xdc>
  807ae4:	2825883a 	mov	r18,r5
  807ae8:	8021d0ba 	srai	r16,r16,2
  807aec:	80001926 	beq	r16,zero,807b54 <__pow5mult+0x98>
  807af0:	9c401217 	ldw	r17,72(r19)
  807af4:	8800061e 	bne	r17,zero,807b10 <__pow5mult+0x54>
  807af8:	00002f06 	br	807bb8 <__pow5mult+0xfc>
  807afc:	8021d07a 	srai	r16,r16,1
  807b00:	80001426 	beq	r16,zero,807b54 <__pow5mult+0x98>
  807b04:	88800017 	ldw	r2,0(r17)
  807b08:	10001a26 	beq	r2,zero,807b74 <__pow5mult+0xb8>
  807b0c:	1023883a 	mov	r17,r2
  807b10:	8080004c 	andi	r2,r16,1
  807b14:	103ff926 	beq	r2,zero,807afc <__pow5mult+0x40>
  807b18:	880d883a 	mov	r6,r17
  807b1c:	900b883a 	mov	r5,r18
  807b20:	9809883a 	mov	r4,r19
  807b24:	08078100 	call	807810 <__multiply>
  807b28:	90001926 	beq	r18,zero,807b90 <__pow5mult+0xd4>
  807b2c:	91000117 	ldw	r4,4(r18)
  807b30:	98c01317 	ldw	r3,76(r19)
  807b34:	8021d07a 	srai	r16,r16,1
  807b38:	200890ba 	slli	r4,r4,2
  807b3c:	1907883a 	add	r3,r3,r4
  807b40:	19000017 	ldw	r4,0(r3)
  807b44:	91000015 	stw	r4,0(r18)
  807b48:	1c800015 	stw	r18,0(r3)
  807b4c:	1025883a 	mov	r18,r2
  807b50:	803fec1e 	bne	r16,zero,807b04 <__pow5mult+0x48>
  807b54:	9005883a 	mov	r2,r18
  807b58:	dfc00417 	ldw	ra,16(sp)
  807b5c:	dcc00317 	ldw	r19,12(sp)
  807b60:	dc800217 	ldw	r18,8(sp)
  807b64:	dc400117 	ldw	r17,4(sp)
  807b68:	dc000017 	ldw	r16,0(sp)
  807b6c:	dec00504 	addi	sp,sp,20
  807b70:	f800283a 	ret
  807b74:	880d883a 	mov	r6,r17
  807b78:	880b883a 	mov	r5,r17
  807b7c:	9809883a 	mov	r4,r19
  807b80:	08078100 	call	807810 <__multiply>
  807b84:	88800015 	stw	r2,0(r17)
  807b88:	10000015 	stw	zero,0(r2)
  807b8c:	003fdf06 	br	807b0c <__pow5mult+0x50>
  807b90:	1025883a 	mov	r18,r2
  807b94:	003fd906 	br	807afc <__pow5mult+0x40>
  807b98:	100490ba 	slli	r2,r2,2
  807b9c:	00c02074 	movhi	r3,129
  807ba0:	000f883a 	mov	r7,zero
  807ba4:	10c7883a 	add	r3,r2,r3
  807ba8:	1981e617 	ldw	r6,1944(r3)
  807bac:	08074140 	call	807414 <__multadd>
  807bb0:	1025883a 	mov	r18,r2
  807bb4:	003fcc06 	br	807ae8 <__pow5mult+0x2c>
  807bb8:	01409c44 	movi	r5,625
  807bbc:	9809883a 	mov	r4,r19
  807bc0:	08077bc0 	call	8077bc <__i2b>
  807bc4:	98801215 	stw	r2,72(r19)
  807bc8:	1023883a 	mov	r17,r2
  807bcc:	10000015 	stw	zero,0(r2)
  807bd0:	003fcf06 	br	807b10 <__pow5mult+0x54>

00807bd4 <__lshift>:
  807bd4:	defff904 	addi	sp,sp,-28
  807bd8:	dd400515 	stw	r21,20(sp)
  807bdc:	dc800215 	stw	r18,8(sp)
  807be0:	302bd17a 	srai	r21,r6,5
  807be4:	2c800417 	ldw	r18,16(r5)
  807be8:	28800217 	ldw	r2,8(r5)
  807bec:	dd000415 	stw	r20,16(sp)
  807bf0:	aca5883a 	add	r18,r21,r18
  807bf4:	dcc00315 	stw	r19,12(sp)
  807bf8:	dc400115 	stw	r17,4(sp)
  807bfc:	dc000015 	stw	r16,0(sp)
  807c00:	dfc00615 	stw	ra,24(sp)
  807c04:	94400044 	addi	r17,r18,1
  807c08:	2821883a 	mov	r16,r5
  807c0c:	3029883a 	mov	r20,r6
  807c10:	29400117 	ldw	r5,4(r5)
  807c14:	2027883a 	mov	r19,r4
  807c18:	1440030e 	bge	r2,r17,807c28 <__lshift+0x54>
  807c1c:	1085883a 	add	r2,r2,r2
  807c20:	29400044 	addi	r5,r5,1
  807c24:	147ffd16 	blt	r2,r17,807c1c <__lshift+0x48>
  807c28:	9809883a 	mov	r4,r19
  807c2c:	080734c0 	call	80734c <_Balloc>
  807c30:	10004326 	beq	r2,zero,807d40 <__lshift+0x16c>
  807c34:	12000504 	addi	r8,r2,20
  807c38:	0540090e 	bge	zero,r21,807c60 <__lshift+0x8c>
  807c3c:	ad400144 	addi	r21,r21,5
  807c40:	a82a90ba 	slli	r21,r21,2
  807c44:	4007883a 	mov	r3,r8
  807c48:	1549883a 	add	r4,r2,r21
  807c4c:	18c00104 	addi	r3,r3,4
  807c50:	183fff15 	stw	zero,-4(r3)
  807c54:	193ffd1e 	bne	r3,r4,807c4c <__lshift+0x78>
  807c58:	ad7ffb04 	addi	r21,r21,-20
  807c5c:	4551883a 	add	r8,r8,r21
  807c60:	82400417 	ldw	r9,16(r16)
  807c64:	80c00504 	addi	r3,r16,20
  807c68:	a14007cc 	andi	r5,r20,31
  807c6c:	481290ba 	slli	r9,r9,2
  807c70:	1a53883a 	add	r9,r3,r9
  807c74:	28002a26 	beq	r5,zero,807d20 <__lshift+0x14c>
  807c78:	02800804 	movi	r10,32
  807c7c:	5155c83a 	sub	r10,r10,r5
  807c80:	4009883a 	mov	r4,r8
  807c84:	000f883a 	mov	r7,zero
  807c88:	19800017 	ldw	r6,0(r3)
  807c8c:	21000104 	addi	r4,r4,4
  807c90:	18c00104 	addi	r3,r3,4
  807c94:	314c983a 	sll	r6,r6,r5
  807c98:	31ccb03a 	or	r6,r6,r7
  807c9c:	21bfff15 	stw	r6,-4(r4)
  807ca0:	19bfff17 	ldw	r6,-4(r3)
  807ca4:	328ed83a 	srl	r7,r6,r10
  807ca8:	1a7ff736 	bltu	r3,r9,807c88 <__lshift+0xb4>
  807cac:	80c00544 	addi	r3,r16,21
  807cb0:	48c02136 	bltu	r9,r3,807d38 <__lshift+0x164>
  807cb4:	4c07c83a 	sub	r3,r9,r16
  807cb8:	18fffac4 	addi	r3,r3,-21
  807cbc:	1806d0ba 	srli	r3,r3,2
  807cc0:	18c00044 	addi	r3,r3,1
  807cc4:	180690ba 	slli	r3,r3,2
  807cc8:	40d1883a 	add	r8,r8,r3
  807ccc:	41c00015 	stw	r7,0(r8)
  807cd0:	38000126 	beq	r7,zero,807cd8 <__lshift+0x104>
  807cd4:	8825883a 	mov	r18,r17
  807cd8:	14800415 	stw	r18,16(r2)
  807cdc:	80000726 	beq	r16,zero,807cfc <__lshift+0x128>
  807ce0:	81000117 	ldw	r4,4(r16)
  807ce4:	98c01317 	ldw	r3,76(r19)
  807ce8:	200890ba 	slli	r4,r4,2
  807cec:	1907883a 	add	r3,r3,r4
  807cf0:	19000017 	ldw	r4,0(r3)
  807cf4:	81000015 	stw	r4,0(r16)
  807cf8:	1c000015 	stw	r16,0(r3)
  807cfc:	dfc00617 	ldw	ra,24(sp)
  807d00:	dd400517 	ldw	r21,20(sp)
  807d04:	dd000417 	ldw	r20,16(sp)
  807d08:	dcc00317 	ldw	r19,12(sp)
  807d0c:	dc800217 	ldw	r18,8(sp)
  807d10:	dc400117 	ldw	r17,4(sp)
  807d14:	dc000017 	ldw	r16,0(sp)
  807d18:	dec00704 	addi	sp,sp,28
  807d1c:	f800283a 	ret
  807d20:	19000017 	ldw	r4,0(r3)
  807d24:	18c00104 	addi	r3,r3,4
  807d28:	42000104 	addi	r8,r8,4
  807d2c:	413fff15 	stw	r4,-4(r8)
  807d30:	1a7ffb36 	bltu	r3,r9,807d20 <__lshift+0x14c>
  807d34:	003fe806 	br	807cd8 <__lshift+0x104>
  807d38:	00c00104 	movi	r3,4
  807d3c:	003fe206 	br	807cc8 <__lshift+0xf4>
  807d40:	01c02074 	movhi	r7,129
  807d44:	01002074 	movhi	r4,129
  807d48:	39c1c204 	addi	r7,r7,1800
  807d4c:	000d883a 	mov	r6,zero
  807d50:	01407644 	movi	r5,473
  807d54:	2101d704 	addi	r4,r4,1884
  807d58:	080a1380 	call	80a138 <__assert_func>

00807d5c <__mcmp>:
  807d5c:	21800417 	ldw	r6,16(r4)
  807d60:	28c00417 	ldw	r3,16(r5)
  807d64:	30c5c83a 	sub	r2,r6,r3
  807d68:	30c00e1e 	bne	r6,r3,807da4 <__mcmp+0x48>
  807d6c:	180690ba 	slli	r3,r3,2
  807d70:	21c00504 	addi	r7,r4,20
  807d74:	29400504 	addi	r5,r5,20
  807d78:	38c9883a 	add	r4,r7,r3
  807d7c:	28c7883a 	add	r3,r5,r3
  807d80:	00000106 	br	807d88 <__mcmp+0x2c>
  807d84:	3900082e 	bgeu	r7,r4,807da8 <__mcmp+0x4c>
  807d88:	21bfff17 	ldw	r6,-4(r4)
  807d8c:	197fff17 	ldw	r5,-4(r3)
  807d90:	213fff04 	addi	r4,r4,-4
  807d94:	18ffff04 	addi	r3,r3,-4
  807d98:	317ffa26 	beq	r6,r5,807d84 <__mcmp+0x28>
  807d9c:	3140032e 	bgeu	r6,r5,807dac <__mcmp+0x50>
  807da0:	00bfffc4 	movi	r2,-1
  807da4:	f800283a 	ret
  807da8:	f800283a 	ret
  807dac:	00800044 	movi	r2,1
  807db0:	f800283a 	ret

00807db4 <__mdiff>:
  807db4:	28800417 	ldw	r2,16(r5)
  807db8:	30c00417 	ldw	r3,16(r6)
  807dbc:	defffc04 	addi	sp,sp,-16
  807dc0:	dc800215 	stw	r18,8(sp)
  807dc4:	dc400115 	stw	r17,4(sp)
  807dc8:	dc000015 	stw	r16,0(sp)
  807dcc:	dfc00315 	stw	ra,12(sp)
  807dd0:	2823883a 	mov	r17,r5
  807dd4:	3021883a 	mov	r16,r6
  807dd8:	10e5c83a 	sub	r18,r2,r3
  807ddc:	10c0641e 	bne	r2,r3,807f70 <__mdiff+0x1bc>
  807de0:	180c90ba 	slli	r6,r3,2
  807de4:	29400504 	addi	r5,r5,20
  807de8:	80c00504 	addi	r3,r16,20
  807dec:	2985883a 	add	r2,r5,r6
  807df0:	1987883a 	add	r3,r3,r6
  807df4:	00000106 	br	807dfc <__mdiff+0x48>
  807df8:	2880642e 	bgeu	r5,r2,807f8c <__mdiff+0x1d8>
  807dfc:	11ffff17 	ldw	r7,-4(r2)
  807e00:	19bfff17 	ldw	r6,-4(r3)
  807e04:	10bfff04 	addi	r2,r2,-4
  807e08:	18ffff04 	addi	r3,r3,-4
  807e0c:	39bffa26 	beq	r7,r6,807df8 <__mdiff+0x44>
  807e10:	39805236 	bltu	r7,r6,807f5c <__mdiff+0x1a8>
  807e14:	89400117 	ldw	r5,4(r17)
  807e18:	080734c0 	call	80734c <_Balloc>
  807e1c:	10006226 	beq	r2,zero,807fa8 <__mdiff+0x1f4>
  807e20:	8a400417 	ldw	r9,16(r17)
  807e24:	83000417 	ldw	r12,16(r16)
  807e28:	8ac00504 	addi	r11,r17,20
  807e2c:	481090ba 	slli	r8,r9,2
  807e30:	601890ba 	slli	r12,r12,2
  807e34:	81800504 	addi	r6,r16,20
  807e38:	13400504 	addi	r13,r2,20
  807e3c:	14800315 	stw	r18,12(r2)
  807e40:	5a11883a 	add	r8,r11,r8
  807e44:	3319883a 	add	r12,r6,r12
  807e48:	681d883a 	mov	r14,r13
  807e4c:	5815883a 	mov	r10,r11
  807e50:	0007883a 	mov	r3,zero
  807e54:	51000017 	ldw	r4,0(r10)
  807e58:	31c00017 	ldw	r7,0(r6)
  807e5c:	73800104 	addi	r14,r14,4
  807e60:	217fffcc 	andi	r5,r4,65535
  807e64:	28cb883a 	add	r5,r5,r3
  807e68:	38ffffcc 	andi	r3,r7,65535
  807e6c:	28cbc83a 	sub	r5,r5,r3
  807e70:	380ed43a 	srli	r7,r7,16
  807e74:	2006d43a 	srli	r3,r4,16
  807e78:	2809d43a 	srai	r4,r5,16
  807e7c:	297fffcc 	andi	r5,r5,65535
  807e80:	19c7c83a 	sub	r3,r3,r7
  807e84:	1907883a 	add	r3,r3,r4
  807e88:	1808943a 	slli	r4,r3,16
  807e8c:	31800104 	addi	r6,r6,4
  807e90:	1807d43a 	srai	r3,r3,16
  807e94:	214ab03a 	or	r5,r4,r5
  807e98:	717fff15 	stw	r5,-4(r14)
  807e9c:	52800104 	addi	r10,r10,4
  807ea0:	333fec36 	bltu	r6,r12,807e54 <__mdiff+0xa0>
  807ea4:	640fc83a 	sub	r7,r12,r16
  807ea8:	39fffac4 	addi	r7,r7,-21
  807eac:	84000544 	addi	r16,r16,21
  807eb0:	380ed0ba 	srli	r7,r7,2
  807eb4:	64003336 	bltu	r12,r16,807f84 <__mdiff+0x1d0>
  807eb8:	380890ba 	slli	r4,r7,2
  807ebc:	6909883a 	add	r4,r13,r4
  807ec0:	64002e36 	bltu	r12,r16,807f7c <__mdiff+0x1c8>
  807ec4:	39800044 	addi	r6,r7,1
  807ec8:	300c90ba 	slli	r6,r6,2
  807ecc:	5997883a 	add	r11,r11,r6
  807ed0:	699b883a 	add	r13,r13,r6
  807ed4:	5a00152e 	bgeu	r11,r8,807f2c <__mdiff+0x178>
  807ed8:	680f883a 	mov	r7,r13
  807edc:	580d883a 	mov	r6,r11
  807ee0:	31000017 	ldw	r4,0(r6)
  807ee4:	39c00104 	addi	r7,r7,4
  807ee8:	31800104 	addi	r6,r6,4
  807eec:	217fffcc 	andi	r5,r4,65535
  807ef0:	28cb883a 	add	r5,r5,r3
  807ef4:	2815d43a 	srai	r10,r5,16
  807ef8:	2006d43a 	srli	r3,r4,16
  807efc:	297fffcc 	andi	r5,r5,65535
  807f00:	1a87883a 	add	r3,r3,r10
  807f04:	1814943a 	slli	r10,r3,16
  807f08:	1807d43a 	srai	r3,r3,16
  807f0c:	514ab03a 	or	r5,r10,r5
  807f10:	397fff15 	stw	r5,-4(r7)
  807f14:	323ff236 	bltu	r6,r8,807ee0 <__mdiff+0x12c>
  807f18:	413fffc4 	addi	r4,r8,-1
  807f1c:	22c9c83a 	sub	r4,r4,r11
  807f20:	2008d0ba 	srli	r4,r4,2
  807f24:	200890ba 	slli	r4,r4,2
  807f28:	6909883a 	add	r4,r13,r4
  807f2c:	2800041e 	bne	r5,zero,807f40 <__mdiff+0x18c>
  807f30:	20ffff17 	ldw	r3,-4(r4)
  807f34:	4a7fffc4 	addi	r9,r9,-1
  807f38:	213fff04 	addi	r4,r4,-4
  807f3c:	183ffc26 	beq	r3,zero,807f30 <__mdiff+0x17c>
  807f40:	12400415 	stw	r9,16(r2)
  807f44:	dfc00317 	ldw	ra,12(sp)
  807f48:	dc800217 	ldw	r18,8(sp)
  807f4c:	dc400117 	ldw	r17,4(sp)
  807f50:	dc000017 	ldw	r16,0(sp)
  807f54:	dec00404 	addi	sp,sp,16
  807f58:	f800283a 	ret
  807f5c:	8805883a 	mov	r2,r17
  807f60:	04800044 	movi	r18,1
  807f64:	8023883a 	mov	r17,r16
  807f68:	1021883a 	mov	r16,r2
  807f6c:	003fa906 	br	807e14 <__mdiff+0x60>
  807f70:	903ffa16 	blt	r18,zero,807f5c <__mdiff+0x1a8>
  807f74:	0025883a 	mov	r18,zero
  807f78:	003fa606 	br	807e14 <__mdiff+0x60>
  807f7c:	01800104 	movi	r6,4
  807f80:	003fd206 	br	807ecc <__mdiff+0x118>
  807f84:	0009883a 	mov	r4,zero
  807f88:	003fcc06 	br	807ebc <__mdiff+0x108>
  807f8c:	000b883a 	mov	r5,zero
  807f90:	080734c0 	call	80734c <_Balloc>
  807f94:	10000b26 	beq	r2,zero,807fc4 <__mdiff+0x210>
  807f98:	00c00044 	movi	r3,1
  807f9c:	10c00415 	stw	r3,16(r2)
  807fa0:	10000515 	stw	zero,20(r2)
  807fa4:	003fe706 	br	807f44 <__mdiff+0x190>
  807fa8:	01c02074 	movhi	r7,129
  807fac:	01002074 	movhi	r4,129
  807fb0:	39c1c204 	addi	r7,r7,1800
  807fb4:	000d883a 	mov	r6,zero
  807fb8:	01409004 	movi	r5,576
  807fbc:	2101d704 	addi	r4,r4,1884
  807fc0:	080a1380 	call	80a138 <__assert_func>
  807fc4:	01c02074 	movhi	r7,129
  807fc8:	01002074 	movhi	r4,129
  807fcc:	39c1c204 	addi	r7,r7,1800
  807fd0:	000d883a 	mov	r6,zero
  807fd4:	01408c84 	movi	r5,562
  807fd8:	2101d704 	addi	r4,r4,1884
  807fdc:	080a1380 	call	80a138 <__assert_func>

00807fe0 <__ulp>:
  807fe0:	28dffc2c 	andhi	r3,r5,32752
  807fe4:	017f3034 	movhi	r5,64704
  807fe8:	1947883a 	add	r3,r3,r5
  807fec:	00c0020e 	bge	zero,r3,807ff8 <__ulp+0x18>
  807ff0:	0005883a 	mov	r2,zero
  807ff4:	f800283a 	ret
  807ff8:	00c7c83a 	sub	r3,zero,r3
  807ffc:	1807d53a 	srai	r3,r3,20
  808000:	18800508 	cmpgei	r2,r3,20
  808004:	1000041e 	bne	r2,zero,808018 <__ulp+0x38>
  808008:	00800234 	movhi	r2,8
  80800c:	10c7d83a 	sra	r3,r2,r3
  808010:	0005883a 	mov	r2,zero
  808014:	f800283a 	ret
  808018:	193ffb04 	addi	r4,r3,-20
  80801c:	208007c8 	cmpgei	r2,r4,31
  808020:	0007883a 	mov	r3,zero
  808024:	1000031e 	bne	r2,zero,808034 <__ulp+0x54>
  808028:	00a00034 	movhi	r2,32768
  80802c:	1104d83a 	srl	r2,r2,r4
  808030:	f800283a 	ret
  808034:	00800044 	movi	r2,1
  808038:	f800283a 	ret

0080803c <__b2d>:
  80803c:	defffa04 	addi	sp,sp,-24
  808040:	dc400115 	stw	r17,4(sp)
  808044:	24400417 	ldw	r17,16(r4)
  808048:	dc000015 	stw	r16,0(sp)
  80804c:	24000504 	addi	r16,r4,20
  808050:	882290ba 	slli	r17,r17,2
  808054:	dc800215 	stw	r18,8(sp)
  808058:	dd000415 	stw	r20,16(sp)
  80805c:	8463883a 	add	r17,r16,r17
  808060:	8cbfff17 	ldw	r18,-4(r17)
  808064:	dcc00315 	stw	r19,12(sp)
  808068:	dfc00515 	stw	ra,20(sp)
  80806c:	9009883a 	mov	r4,r18
  808070:	2827883a 	mov	r19,r5
  808074:	08076a80 	call	8076a8 <__hi0bits>
  808078:	01000804 	movi	r4,32
  80807c:	2087c83a 	sub	r3,r4,r2
  808080:	98c00015 	stw	r3,0(r19)
  808084:	10c002c8 	cmpgei	r3,r2,11
  808088:	8d3fff04 	addi	r20,r17,-4
  80808c:	18001f26 	beq	r3,zero,80810c <__b2d+0xd0>
  808090:	10fffd44 	addi	r3,r2,-11
  808094:	85000e2e 	bgeu	r16,r20,8080d0 <__b2d+0x94>
  808098:	88bffe17 	ldw	r2,-8(r17)
  80809c:	18001226 	beq	r3,zero,8080e8 <__b2d+0xac>
  8080a0:	20c9c83a 	sub	r4,r4,r3
  8080a4:	110cd83a 	srl	r6,r2,r4
  8080a8:	90e4983a 	sll	r18,r18,r3
  8080ac:	10c4983a 	sll	r2,r2,r3
  8080b0:	897ffe04 	addi	r5,r17,-8
  8080b4:	9186b03a 	or	r3,r18,r6
  8080b8:	18cffc34 	orhi	r3,r3,16368
  8080bc:	81400b2e 	bgeu	r16,r5,8080ec <__b2d+0xb0>
  8080c0:	897ffd17 	ldw	r5,-12(r17)
  8080c4:	2908d83a 	srl	r4,r5,r4
  8080c8:	1104b03a 	or	r2,r2,r4
  8080cc:	00000706 	br	8080ec <__b2d+0xb0>
  8080d0:	18000426 	beq	r3,zero,8080e4 <__b2d+0xa8>
  8080d4:	90c6983a 	sll	r3,r18,r3
  8080d8:	0005883a 	mov	r2,zero
  8080dc:	18cffc34 	orhi	r3,r3,16368
  8080e0:	00000206 	br	8080ec <__b2d+0xb0>
  8080e4:	0005883a 	mov	r2,zero
  8080e8:	90cffc34 	orhi	r3,r18,16368
  8080ec:	dfc00517 	ldw	ra,20(sp)
  8080f0:	dd000417 	ldw	r20,16(sp)
  8080f4:	dcc00317 	ldw	r19,12(sp)
  8080f8:	dc800217 	ldw	r18,8(sp)
  8080fc:	dc400117 	ldw	r17,4(sp)
  808100:	dc000017 	ldw	r16,0(sp)
  808104:	dec00604 	addi	sp,sp,24
  808108:	f800283a 	ret
  80810c:	014002c4 	movi	r5,11
  808110:	2889c83a 	sub	r4,r5,r2
  808114:	9106d83a 	srl	r3,r18,r4
  808118:	18cffc34 	orhi	r3,r3,16368
  80811c:	85000536 	bltu	r16,r20,808134 <__b2d+0xf8>
  808120:	000b883a 	mov	r5,zero
  808124:	10800544 	addi	r2,r2,21
  808128:	9084983a 	sll	r2,r18,r2
  80812c:	1144b03a 	or	r2,r2,r5
  808130:	003fee06 	br	8080ec <__b2d+0xb0>
  808134:	897ffe17 	ldw	r5,-8(r17)
  808138:	290ad83a 	srl	r5,r5,r4
  80813c:	003ff906 	br	808124 <__b2d+0xe8>

00808140 <__d2b>:
  808140:	defff804 	addi	sp,sp,-32
  808144:	dd000615 	stw	r20,24(sp)
  808148:	2829883a 	mov	r20,r5
  80814c:	01400044 	movi	r5,1
  808150:	dcc00515 	stw	r19,20(sp)
  808154:	dc000215 	stw	r16,8(sp)
  808158:	dfc00715 	stw	ra,28(sp)
  80815c:	dc800415 	stw	r18,16(sp)
  808160:	dc400315 	stw	r17,12(sp)
  808164:	3021883a 	mov	r16,r6
  808168:	3827883a 	mov	r19,r7
  80816c:	080734c0 	call	80734c <_Balloc>
  808170:	10004526 	beq	r2,zero,808288 <__d2b+0x148>
  808174:	8024d53a 	srli	r18,r16,20
  808178:	01800434 	movhi	r6,16
  80817c:	31bfffc4 	addi	r6,r6,-1
  808180:	9481ffcc 	andi	r18,r18,2047
  808184:	1023883a 	mov	r17,r2
  808188:	81a0703a 	and	r16,r16,r6
  80818c:	90000126 	beq	r18,zero,808194 <__d2b+0x54>
  808190:	84000434 	orhi	r16,r16,16
  808194:	dc000115 	stw	r16,4(sp)
  808198:	a0002226 	beq	r20,zero,808224 <__d2b+0xe4>
  80819c:	d809883a 	mov	r4,sp
  8081a0:	dd000015 	stw	r20,0(sp)
  8081a4:	080770c0 	call	80770c <__lo0bits>
  8081a8:	d8c00117 	ldw	r3,4(sp)
  8081ac:	10003326 	beq	r2,zero,80827c <__d2b+0x13c>
  8081b0:	01000804 	movi	r4,32
  8081b4:	2089c83a 	sub	r4,r4,r2
  8081b8:	1908983a 	sll	r4,r3,r4
  8081bc:	d9400017 	ldw	r5,0(sp)
  8081c0:	1886d83a 	srl	r3,r3,r2
  8081c4:	2148b03a 	or	r4,r4,r5
  8081c8:	89000515 	stw	r4,20(r17)
  8081cc:	d8c00115 	stw	r3,4(sp)
  8081d0:	88c00615 	stw	r3,24(r17)
  8081d4:	1800271e 	bne	r3,zero,808274 <__d2b+0x134>
  8081d8:	04000044 	movi	r16,1
  8081dc:	8c000415 	stw	r16,16(r17)
  8081e0:	90001926 	beq	r18,zero,808248 <__d2b+0x108>
  8081e4:	00c00d44 	movi	r3,53
  8081e8:	94bef344 	addi	r18,r18,-1075
  8081ec:	90a5883a 	add	r18,r18,r2
  8081f0:	1885c83a 	sub	r2,r3,r2
  8081f4:	d8c00817 	ldw	r3,32(sp)
  8081f8:	9c800015 	stw	r18,0(r19)
  8081fc:	18800015 	stw	r2,0(r3)
  808200:	8805883a 	mov	r2,r17
  808204:	dfc00717 	ldw	ra,28(sp)
  808208:	dd000617 	ldw	r20,24(sp)
  80820c:	dcc00517 	ldw	r19,20(sp)
  808210:	dc800417 	ldw	r18,16(sp)
  808214:	dc400317 	ldw	r17,12(sp)
  808218:	dc000217 	ldw	r16,8(sp)
  80821c:	dec00804 	addi	sp,sp,32
  808220:	f800283a 	ret
  808224:	d9000104 	addi	r4,sp,4
  808228:	080770c0 	call	80770c <__lo0bits>
  80822c:	00c00044 	movi	r3,1
  808230:	88c00415 	stw	r3,16(r17)
  808234:	d8c00117 	ldw	r3,4(sp)
  808238:	10800804 	addi	r2,r2,32
  80823c:	04000044 	movi	r16,1
  808240:	88c00515 	stw	r3,20(r17)
  808244:	903fe71e 	bne	r18,zero,8081e4 <__d2b+0xa4>
  808248:	800690ba 	slli	r3,r16,2
  80824c:	10bef384 	addi	r2,r2,-1074
  808250:	98800015 	stw	r2,0(r19)
  808254:	88c5883a 	add	r2,r17,r3
  808258:	11000417 	ldw	r4,16(r2)
  80825c:	8020917a 	slli	r16,r16,5
  808260:	08076a80 	call	8076a8 <__hi0bits>
  808264:	80a1c83a 	sub	r16,r16,r2
  808268:	d8800817 	ldw	r2,32(sp)
  80826c:	14000015 	stw	r16,0(r2)
  808270:	003fe306 	br	808200 <__d2b+0xc0>
  808274:	04000084 	movi	r16,2
  808278:	003fd806 	br	8081dc <__d2b+0x9c>
  80827c:	d9000017 	ldw	r4,0(sp)
  808280:	89000515 	stw	r4,20(r17)
  808284:	003fd206 	br	8081d0 <__d2b+0x90>
  808288:	01c02074 	movhi	r7,129
  80828c:	01002074 	movhi	r4,129
  808290:	39c1c204 	addi	r7,r7,1800
  808294:	000d883a 	mov	r6,zero
  808298:	0140c284 	movi	r5,778
  80829c:	2101d704 	addi	r4,r4,1884
  8082a0:	080a1380 	call	80a138 <__assert_func>

008082a4 <__ratio>:
  8082a4:	defff904 	addi	sp,sp,-28
  8082a8:	dc400315 	stw	r17,12(sp)
  8082ac:	2823883a 	mov	r17,r5
  8082b0:	d80b883a 	mov	r5,sp
  8082b4:	dfc00615 	stw	ra,24(sp)
  8082b8:	dcc00515 	stw	r19,20(sp)
  8082bc:	dc800415 	stw	r18,16(sp)
  8082c0:	2027883a 	mov	r19,r4
  8082c4:	dc000215 	stw	r16,8(sp)
  8082c8:	080803c0 	call	80803c <__b2d>
  8082cc:	d9400104 	addi	r5,sp,4
  8082d0:	8809883a 	mov	r4,r17
  8082d4:	1025883a 	mov	r18,r2
  8082d8:	1821883a 	mov	r16,r3
  8082dc:	080803c0 	call	80803c <__b2d>
  8082e0:	89400417 	ldw	r5,16(r17)
  8082e4:	99000417 	ldw	r4,16(r19)
  8082e8:	d9800117 	ldw	r6,4(sp)
  8082ec:	180f883a 	mov	r7,r3
  8082f0:	2149c83a 	sub	r4,r4,r5
  8082f4:	d9400017 	ldw	r5,0(sp)
  8082f8:	2008917a 	slli	r4,r4,5
  8082fc:	298bc83a 	sub	r5,r5,r6
  808300:	2149883a 	add	r4,r4,r5
  808304:	100d883a 	mov	r6,r2
  808308:	01000c0e 	bge	zero,r4,80833c <__ratio+0x98>
  80830c:	2008953a 	slli	r4,r4,20
  808310:	2421883a 	add	r16,r4,r16
  808314:	9009883a 	mov	r4,r18
  808318:	800b883a 	mov	r5,r16
  80831c:	080c5c40 	call	80c5c4 <__divdf3>
  808320:	dfc00617 	ldw	ra,24(sp)
  808324:	dcc00517 	ldw	r19,20(sp)
  808328:	dc800417 	ldw	r18,16(sp)
  80832c:	dc400317 	ldw	r17,12(sp)
  808330:	dc000217 	ldw	r16,8(sp)
  808334:	dec00704 	addi	sp,sp,28
  808338:	f800283a 	ret
  80833c:	2008953a 	slli	r4,r4,20
  808340:	190fc83a 	sub	r7,r3,r4
  808344:	003ff306 	br	808314 <__ratio+0x70>

00808348 <_mprec_log10>:
  808348:	defffe04 	addi	sp,sp,-8
  80834c:	dc000015 	stw	r16,0(sp)
  808350:	dfc00115 	stw	ra,4(sp)
  808354:	20800608 	cmpgei	r2,r4,24
  808358:	2021883a 	mov	r16,r4
  80835c:	10000f26 	beq	r2,zero,80839c <_mprec_log10+0x54>
  808360:	0009883a 	mov	r4,zero
  808364:	014ffc34 	movhi	r5,16368
  808368:	000d883a 	mov	r6,zero
  80836c:	01d00934 	movhi	r7,16420
  808370:	0800d3c0 	call	800d3c <__muldf3>
  808374:	843fffc4 	addi	r16,r16,-1
  808378:	1009883a 	mov	r4,r2
  80837c:	180b883a 	mov	r5,r3
  808380:	803ff91e 	bne	r16,zero,808368 <_mprec_log10+0x20>
  808384:	2005883a 	mov	r2,r4
  808388:	2807883a 	mov	r3,r5
  80838c:	dfc00117 	ldw	ra,4(sp)
  808390:	dc000017 	ldw	r16,0(sp)
  808394:	dec00204 	addi	sp,sp,8
  808398:	f800283a 	ret
  80839c:	202090fa 	slli	r16,r4,3
  8083a0:	00802074 	movhi	r2,129
  8083a4:	1081fe04 	addi	r2,r2,2040
  8083a8:	1421883a 	add	r16,r2,r16
  8083ac:	81000017 	ldw	r4,0(r16)
  8083b0:	81400117 	ldw	r5,4(r16)
  8083b4:	003ff306 	br	808384 <_mprec_log10+0x3c>

008083b8 <__copybits>:
  8083b8:	297fffc4 	addi	r5,r5,-1
  8083bc:	280fd17a 	srai	r7,r5,5
  8083c0:	31400417 	ldw	r5,16(r6)
  8083c4:	30800504 	addi	r2,r6,20
  8083c8:	39c00044 	addi	r7,r7,1
  8083cc:	280a90ba 	slli	r5,r5,2
  8083d0:	380e90ba 	slli	r7,r7,2
  8083d4:	114b883a 	add	r5,r2,r5
  8083d8:	21cf883a 	add	r7,r4,r7
  8083dc:	11400c2e 	bgeu	r2,r5,808410 <__copybits+0x58>
  8083e0:	2007883a 	mov	r3,r4
  8083e4:	12000017 	ldw	r8,0(r2)
  8083e8:	10800104 	addi	r2,r2,4
  8083ec:	18c00104 	addi	r3,r3,4
  8083f0:	1a3fff15 	stw	r8,-4(r3)
  8083f4:	117ffb36 	bltu	r2,r5,8083e4 <__copybits+0x2c>
  8083f8:	2985c83a 	sub	r2,r5,r6
  8083fc:	10bffac4 	addi	r2,r2,-21
  808400:	1004d0ba 	srli	r2,r2,2
  808404:	10800044 	addi	r2,r2,1
  808408:	100490ba 	slli	r2,r2,2
  80840c:	2089883a 	add	r4,r4,r2
  808410:	21c0032e 	bgeu	r4,r7,808420 <__copybits+0x68>
  808414:	21000104 	addi	r4,r4,4
  808418:	203fff15 	stw	zero,-4(r4)
  80841c:	21fffd36 	bltu	r4,r7,808414 <__copybits+0x5c>
  808420:	f800283a 	ret

00808424 <__any_on>:
  808424:	20c00417 	ldw	r3,16(r4)
  808428:	280dd17a 	srai	r6,r5,5
  80842c:	21000504 	addi	r4,r4,20
  808430:	1980080e 	bge	r3,r6,808454 <__any_on+0x30>
  808434:	180490ba 	slli	r2,r3,2
  808438:	2085883a 	add	r2,r4,r2
  80843c:	20800f2e 	bgeu	r4,r2,80847c <__any_on+0x58>
  808440:	10ffff17 	ldw	r3,-4(r2)
  808444:	10bfff04 	addi	r2,r2,-4
  808448:	183ffc26 	beq	r3,zero,80843c <__any_on+0x18>
  80844c:	00800044 	movi	r2,1
  808450:	f800283a 	ret
  808454:	300490ba 	slli	r2,r6,2
  808458:	2085883a 	add	r2,r4,r2
  80845c:	30fff70e 	bge	r6,r3,80843c <__any_on+0x18>
  808460:	294007cc 	andi	r5,r5,31
  808464:	283ff526 	beq	r5,zero,80843c <__any_on+0x18>
  808468:	11800017 	ldw	r6,0(r2)
  80846c:	3146d83a 	srl	r3,r6,r5
  808470:	194a983a 	sll	r5,r3,r5
  808474:	317ff51e 	bne	r6,r5,80844c <__any_on+0x28>
  808478:	003ff006 	br	80843c <__any_on+0x18>
  80847c:	0005883a 	mov	r2,zero
  808480:	f800283a 	ret

00808484 <_realloc_r>:
  808484:	defff504 	addi	sp,sp,-44
  808488:	dc800315 	stw	r18,12(sp)
  80848c:	dfc00a15 	stw	ra,40(sp)
  808490:	df000915 	stw	fp,36(sp)
  808494:	ddc00815 	stw	r23,32(sp)
  808498:	dd800715 	stw	r22,28(sp)
  80849c:	dd400615 	stw	r21,24(sp)
  8084a0:	dd000515 	stw	r20,20(sp)
  8084a4:	dcc00415 	stw	r19,16(sp)
  8084a8:	dc400215 	stw	r17,8(sp)
  8084ac:	dc000115 	stw	r16,4(sp)
  8084b0:	3025883a 	mov	r18,r6
  8084b4:	28008b26 	beq	r5,zero,8086e4 <_realloc_r+0x260>
  8084b8:	2821883a 	mov	r16,r5
  8084bc:	2027883a 	mov	r19,r4
  8084c0:	944002c4 	addi	r17,r18,11
  8084c4:	080e3880 	call	80e388 <__malloc_lock>
  8084c8:	888005f0 	cmpltui	r2,r17,23
  8084cc:	1000521e 	bne	r2,zero,808618 <_realloc_r+0x194>
  8084d0:	017ffe04 	movi	r5,-8
  8084d4:	8962703a 	and	r17,r17,r5
  8084d8:	8807883a 	mov	r3,r17
  8084dc:	88005116 	blt	r17,zero,808624 <_realloc_r+0x1a0>
  8084e0:	8c805036 	bltu	r17,r18,808624 <_realloc_r+0x1a0>
  8084e4:	80bfff17 	ldw	r2,-4(r16)
  8084e8:	017fff04 	movi	r5,-4
  8084ec:	857ffe04 	addi	r21,r16,-8
  8084f0:	1168703a 	and	r20,r2,r5
  8084f4:	ad2d883a 	add	r22,r21,r20
  8084f8:	a0c0390e 	bge	r20,r3,8085e0 <_realloc_r+0x15c>
  8084fc:	07002074 	movhi	fp,129
  808500:	e7040104 	addi	fp,fp,4100
  808504:	e2000217 	ldw	r8,8(fp)
  808508:	b1000117 	ldw	r4,4(r22)
  80850c:	45808e26 	beq	r8,r22,808748 <_realloc_r+0x2c4>
  808510:	01bfff84 	movi	r6,-2
  808514:	218c703a 	and	r6,r4,r6
  808518:	b18d883a 	add	r6,r22,r6
  80851c:	31800117 	ldw	r6,4(r6)
  808520:	3180004c 	andi	r6,r6,1
  808524:	30004f1e 	bne	r6,zero,808664 <_realloc_r+0x1e0>
  808528:	2148703a 	and	r4,r4,r5
  80852c:	a10b883a 	add	r5,r20,r4
  808530:	28c0bf0e 	bge	r5,r3,808830 <_realloc_r+0x3ac>
  808534:	1080004c 	andi	r2,r2,1
  808538:	10004c1e 	bne	r2,zero,80866c <_realloc_r+0x1e8>
  80853c:	81fffe17 	ldw	r7,-8(r16)
  808540:	00bfff04 	movi	r2,-4
  808544:	a9cfc83a 	sub	r7,r21,r7
  808548:	39400117 	ldw	r5,4(r7)
  80854c:	288a703a 	and	r5,r5,r2
  808550:	b0000426 	beq	r22,zero,808564 <_realloc_r+0xe0>
  808554:	a16f883a 	add	r23,r20,r5
  808558:	b92f883a 	add	r23,r23,r4
  80855c:	4580bf26 	beq	r8,r22,80885c <_realloc_r+0x3d8>
  808560:	b8c0930e 	bge	r23,r3,8087b0 <_realloc_r+0x32c>
  808564:	38004126 	beq	r7,zero,80866c <_realloc_r+0x1e8>
  808568:	a16f883a 	add	r23,r20,r5
  80856c:	b8c03f16 	blt	r23,r3,80866c <_realloc_r+0x1e8>
  808570:	38800317 	ldw	r2,12(r7)
  808574:	38c00217 	ldw	r3,8(r7)
  808578:	a1bfff04 	addi	r6,r20,-4
  80857c:	31400968 	cmpgeui	r5,r6,37
  808580:	18800315 	stw	r2,12(r3)
  808584:	10c00215 	stw	r3,8(r2)
  808588:	39000204 	addi	r4,r7,8
  80858c:	3ded883a 	add	r22,r7,r23
  808590:	2800941e 	bne	r5,zero,8087e4 <_realloc_r+0x360>
  808594:	30800530 	cmpltui	r2,r6,20
  808598:	80c00017 	ldw	r3,0(r16)
  80859c:	1000df1e 	bne	r2,zero,80891c <_realloc_r+0x498>
  8085a0:	38c00215 	stw	r3,8(r7)
  8085a4:	80c00117 	ldw	r3,4(r16)
  8085a8:	30800728 	cmpgeui	r2,r6,28
  8085ac:	38c00315 	stw	r3,12(r7)
  8085b0:	1000dc1e 	bne	r2,zero,808924 <_realloc_r+0x4a0>
  8085b4:	80c00217 	ldw	r3,8(r16)
  8085b8:	38800404 	addi	r2,r7,16
  8085bc:	84000204 	addi	r16,r16,8
  8085c0:	10c00015 	stw	r3,0(r2)
  8085c4:	80c00117 	ldw	r3,4(r16)
  8085c8:	b829883a 	mov	r20,r23
  8085cc:	382b883a 	mov	r21,r7
  8085d0:	10c00115 	stw	r3,4(r2)
  8085d4:	80c00217 	ldw	r3,8(r16)
  8085d8:	2021883a 	mov	r16,r4
  8085dc:	10c00215 	stw	r3,8(r2)
  8085e0:	a9800117 	ldw	r6,4(r21)
  8085e4:	a445c83a 	sub	r2,r20,r17
  8085e8:	10c00430 	cmpltui	r3,r2,16
  8085ec:	3180004c 	andi	r6,r6,1
  8085f0:	18004926 	beq	r3,zero,808718 <_realloc_r+0x294>
  8085f4:	a18cb03a 	or	r6,r20,r6
  8085f8:	a9800115 	stw	r6,4(r21)
  8085fc:	b0800117 	ldw	r2,4(r22)
  808600:	10800054 	ori	r2,r2,1
  808604:	b0800115 	stw	r2,4(r22)
  808608:	9809883a 	mov	r4,r19
  80860c:	080e3ac0 	call	80e3ac <__malloc_unlock>
  808610:	8025883a 	mov	r18,r16
  808614:	00000606 	br	808630 <_realloc_r+0x1ac>
  808618:	04400404 	movi	r17,16
  80861c:	00c00404 	movi	r3,16
  808620:	8cbfb02e 	bgeu	r17,r18,8084e4 <_realloc_r+0x60>
  808624:	00800304 	movi	r2,12
  808628:	98800015 	stw	r2,0(r19)
  80862c:	0025883a 	mov	r18,zero
  808630:	9005883a 	mov	r2,r18
  808634:	dfc00a17 	ldw	ra,40(sp)
  808638:	df000917 	ldw	fp,36(sp)
  80863c:	ddc00817 	ldw	r23,32(sp)
  808640:	dd800717 	ldw	r22,28(sp)
  808644:	dd400617 	ldw	r21,24(sp)
  808648:	dd000517 	ldw	r20,20(sp)
  80864c:	dcc00417 	ldw	r19,16(sp)
  808650:	dc800317 	ldw	r18,12(sp)
  808654:	dc400217 	ldw	r17,8(sp)
  808658:	dc000117 	ldw	r16,4(sp)
  80865c:	dec00b04 	addi	sp,sp,44
  808660:	f800283a 	ret
  808664:	1080004c 	andi	r2,r2,1
  808668:	10006c26 	beq	r2,zero,80881c <_realloc_r+0x398>
  80866c:	900b883a 	mov	r5,r18
  808670:	9809883a 	mov	r4,r19
  808674:	080677c0 	call	80677c <_malloc_r>
  808678:	1025883a 	mov	r18,r2
  80867c:	10001626 	beq	r2,zero,8086d8 <_realloc_r+0x254>
  808680:	80bfff17 	ldw	r2,-4(r16)
  808684:	013fff84 	movi	r4,-2
  808688:	90fffe04 	addi	r3,r18,-8
  80868c:	1104703a 	and	r2,r2,r4
  808690:	a885883a 	add	r2,r21,r2
  808694:	10c05b26 	beq	r2,r3,808804 <_realloc_r+0x380>
  808698:	a1bfff04 	addi	r6,r20,-4
  80869c:	30800968 	cmpgeui	r2,r6,37
  8086a0:	10006a1e 	bne	r2,zero,80884c <_realloc_r+0x3c8>
  8086a4:	30800530 	cmpltui	r2,r6,20
  8086a8:	81000017 	ldw	r4,0(r16)
  8086ac:	10003726 	beq	r2,zero,80878c <_realloc_r+0x308>
  8086b0:	9005883a 	mov	r2,r18
  8086b4:	8007883a 	mov	r3,r16
  8086b8:	11000015 	stw	r4,0(r2)
  8086bc:	19000117 	ldw	r4,4(r3)
  8086c0:	11000115 	stw	r4,4(r2)
  8086c4:	18c00217 	ldw	r3,8(r3)
  8086c8:	10c00215 	stw	r3,8(r2)
  8086cc:	800b883a 	mov	r5,r16
  8086d0:	9809883a 	mov	r4,r19
  8086d4:	0805c7c0 	call	805c7c <_free_r>
  8086d8:	9809883a 	mov	r4,r19
  8086dc:	080e3ac0 	call	80e3ac <__malloc_unlock>
  8086e0:	003fd306 	br	808630 <_realloc_r+0x1ac>
  8086e4:	300b883a 	mov	r5,r6
  8086e8:	dfc00a17 	ldw	ra,40(sp)
  8086ec:	df000917 	ldw	fp,36(sp)
  8086f0:	ddc00817 	ldw	r23,32(sp)
  8086f4:	dd800717 	ldw	r22,28(sp)
  8086f8:	dd400617 	ldw	r21,24(sp)
  8086fc:	dd000517 	ldw	r20,20(sp)
  808700:	dcc00417 	ldw	r19,16(sp)
  808704:	dc800317 	ldw	r18,12(sp)
  808708:	dc400217 	ldw	r17,8(sp)
  80870c:	dc000117 	ldw	r16,4(sp)
  808710:	dec00b04 	addi	sp,sp,44
  808714:	080677c1 	jmpi	80677c <_malloc_r>
  808718:	344cb03a 	or	r6,r6,r17
  80871c:	a9800115 	stw	r6,4(r21)
  808720:	ac4b883a 	add	r5,r21,r17
  808724:	10800054 	ori	r2,r2,1
  808728:	28800115 	stw	r2,4(r5)
  80872c:	b0800117 	ldw	r2,4(r22)
  808730:	29400204 	addi	r5,r5,8
  808734:	9809883a 	mov	r4,r19
  808738:	10800054 	ori	r2,r2,1
  80873c:	b0800115 	stw	r2,4(r22)
  808740:	0805c7c0 	call	805c7c <_free_r>
  808744:	003fb006 	br	808608 <_realloc_r+0x184>
  808748:	2148703a 	and	r4,r4,r5
  80874c:	a10b883a 	add	r5,r20,r4
  808750:	89800404 	addi	r6,r17,16
  808754:	29bf7716 	blt	r5,r6,808534 <_realloc_r+0xb0>
  808758:	ac6b883a 	add	r21,r21,r17
  80875c:	2c45c83a 	sub	r2,r5,r17
  808760:	e5400215 	stw	r21,8(fp)
  808764:	10800054 	ori	r2,r2,1
  808768:	a8800115 	stw	r2,4(r21)
  80876c:	80bfff17 	ldw	r2,-4(r16)
  808770:	9809883a 	mov	r4,r19
  808774:	8025883a 	mov	r18,r16
  808778:	1080004c 	andi	r2,r2,1
  80877c:	1462b03a 	or	r17,r2,r17
  808780:	847fff15 	stw	r17,-4(r16)
  808784:	080e3ac0 	call	80e3ac <__malloc_unlock>
  808788:	003fa906 	br	808630 <_realloc_r+0x1ac>
  80878c:	91000015 	stw	r4,0(r18)
  808790:	80c00117 	ldw	r3,4(r16)
  808794:	30800728 	cmpgeui	r2,r6,28
  808798:	90c00115 	stw	r3,4(r18)
  80879c:	1000551e 	bne	r2,zero,8088f4 <_realloc_r+0x470>
  8087a0:	81000217 	ldw	r4,8(r16)
  8087a4:	80c00204 	addi	r3,r16,8
  8087a8:	90800204 	addi	r2,r18,8
  8087ac:	003fc206 	br	8086b8 <_realloc_r+0x234>
  8087b0:	b0800317 	ldw	r2,12(r22)
  8087b4:	b0c00217 	ldw	r3,8(r22)
  8087b8:	a1bfff04 	addi	r6,r20,-4
  8087bc:	31400968 	cmpgeui	r5,r6,37
  8087c0:	18800315 	stw	r2,12(r3)
  8087c4:	10c00215 	stw	r3,8(r2)
  8087c8:	38c00217 	ldw	r3,8(r7)
  8087cc:	38800317 	ldw	r2,12(r7)
  8087d0:	39000204 	addi	r4,r7,8
  8087d4:	3ded883a 	add	r22,r7,r23
  8087d8:	18800315 	stw	r2,12(r3)
  8087dc:	10c00215 	stw	r3,8(r2)
  8087e0:	283f6c26 	beq	r5,zero,808594 <_realloc_r+0x110>
  8087e4:	800b883a 	mov	r5,r16
  8087e8:	d9c00015 	stw	r7,0(sp)
  8087ec:	08071300 	call	807130 <memmove>
  8087f0:	d9c00017 	ldw	r7,0(sp)
  8087f4:	1021883a 	mov	r16,r2
  8087f8:	b829883a 	mov	r20,r23
  8087fc:	382b883a 	mov	r21,r7
  808800:	003f7706 	br	8085e0 <_realloc_r+0x15c>
  808804:	90bfff17 	ldw	r2,-4(r18)
  808808:	00ffff04 	movi	r3,-4
  80880c:	10c4703a 	and	r2,r2,r3
  808810:	a0a9883a 	add	r20,r20,r2
  808814:	ad2d883a 	add	r22,r21,r20
  808818:	003f7106 	br	8085e0 <_realloc_r+0x15c>
  80881c:	81fffe17 	ldw	r7,-8(r16)
  808820:	a9cfc83a 	sub	r7,r21,r7
  808824:	39000117 	ldw	r4,4(r7)
  808828:	214a703a 	and	r5,r4,r5
  80882c:	003f4d06 	br	808564 <_realloc_r+0xe0>
  808830:	b0800317 	ldw	r2,12(r22)
  808834:	b0c00217 	ldw	r3,8(r22)
  808838:	2829883a 	mov	r20,r5
  80883c:	a96d883a 	add	r22,r21,r5
  808840:	18800315 	stw	r2,12(r3)
  808844:	10c00215 	stw	r3,8(r2)
  808848:	003f6506 	br	8085e0 <_realloc_r+0x15c>
  80884c:	800b883a 	mov	r5,r16
  808850:	9009883a 	mov	r4,r18
  808854:	08071300 	call	807130 <memmove>
  808858:	003f9c06 	br	8086cc <_realloc_r+0x248>
  80885c:	88800404 	addi	r2,r17,16
  808860:	b8bf4016 	blt	r23,r2,808564 <_realloc_r+0xe0>
  808864:	38800317 	ldw	r2,12(r7)
  808868:	38c00217 	ldw	r3,8(r7)
  80886c:	a1bfff04 	addi	r6,r20,-4
  808870:	31000968 	cmpgeui	r4,r6,37
  808874:	18800315 	stw	r2,12(r3)
  808878:	10c00215 	stw	r3,8(r2)
  80887c:	3c800204 	addi	r18,r7,8
  808880:	20003b1e 	bne	r4,zero,808970 <_realloc_r+0x4ec>
  808884:	30800530 	cmpltui	r2,r6,20
  808888:	80c00017 	ldw	r3,0(r16)
  80888c:	1000361e 	bne	r2,zero,808968 <_realloc_r+0x4e4>
  808890:	38c00215 	stw	r3,8(r7)
  808894:	80c00117 	ldw	r3,4(r16)
  808898:	30800728 	cmpgeui	r2,r6,28
  80889c:	38c00315 	stw	r3,12(r7)
  8088a0:	1000401e 	bne	r2,zero,8089a4 <_realloc_r+0x520>
  8088a4:	80c00217 	ldw	r3,8(r16)
  8088a8:	38800404 	addi	r2,r7,16
  8088ac:	84000204 	addi	r16,r16,8
  8088b0:	10c00015 	stw	r3,0(r2)
  8088b4:	80c00117 	ldw	r3,4(r16)
  8088b8:	10c00115 	stw	r3,4(r2)
  8088bc:	80c00217 	ldw	r3,8(r16)
  8088c0:	10c00215 	stw	r3,8(r2)
  8088c4:	3c47883a 	add	r3,r7,r17
  8088c8:	bc45c83a 	sub	r2,r23,r17
  8088cc:	e0c00215 	stw	r3,8(fp)
  8088d0:	10800054 	ori	r2,r2,1
  8088d4:	18800115 	stw	r2,4(r3)
  8088d8:	38800117 	ldw	r2,4(r7)
  8088dc:	9809883a 	mov	r4,r19
  8088e0:	1080004c 	andi	r2,r2,1
  8088e4:	1462b03a 	or	r17,r2,r17
  8088e8:	3c400115 	stw	r17,4(r7)
  8088ec:	080e3ac0 	call	80e3ac <__malloc_unlock>
  8088f0:	003f4f06 	br	808630 <_realloc_r+0x1ac>
  8088f4:	80800217 	ldw	r2,8(r16)
  8088f8:	31800920 	cmpeqi	r6,r6,36
  8088fc:	90800215 	stw	r2,8(r18)
  808900:	80800317 	ldw	r2,12(r16)
  808904:	90800315 	stw	r2,12(r18)
  808908:	81000417 	ldw	r4,16(r16)
  80890c:	30000f1e 	bne	r6,zero,80894c <_realloc_r+0x4c8>
  808910:	80c00404 	addi	r3,r16,16
  808914:	90800404 	addi	r2,r18,16
  808918:	003f6706 	br	8086b8 <_realloc_r+0x234>
  80891c:	2005883a 	mov	r2,r4
  808920:	003f2706 	br	8085c0 <_realloc_r+0x13c>
  808924:	80800217 	ldw	r2,8(r16)
  808928:	31800920 	cmpeqi	r6,r6,36
  80892c:	38800415 	stw	r2,16(r7)
  808930:	80800317 	ldw	r2,12(r16)
  808934:	38800515 	stw	r2,20(r7)
  808938:	80c00417 	ldw	r3,16(r16)
  80893c:	3000121e 	bne	r6,zero,808988 <_realloc_r+0x504>
  808940:	38800604 	addi	r2,r7,24
  808944:	84000404 	addi	r16,r16,16
  808948:	003f1d06 	br	8085c0 <_realloc_r+0x13c>
  80894c:	91000415 	stw	r4,16(r18)
  808950:	81000517 	ldw	r4,20(r16)
  808954:	80c00604 	addi	r3,r16,24
  808958:	90800604 	addi	r2,r18,24
  80895c:	91000515 	stw	r4,20(r18)
  808960:	81000617 	ldw	r4,24(r16)
  808964:	003f5406 	br	8086b8 <_realloc_r+0x234>
  808968:	9005883a 	mov	r2,r18
  80896c:	003fd006 	br	8088b0 <_realloc_r+0x42c>
  808970:	800b883a 	mov	r5,r16
  808974:	9009883a 	mov	r4,r18
  808978:	d9c00015 	stw	r7,0(sp)
  80897c:	08071300 	call	807130 <memmove>
  808980:	d9c00017 	ldw	r7,0(sp)
  808984:	003fcf06 	br	8088c4 <_realloc_r+0x440>
  808988:	84000604 	addi	r16,r16,24
  80898c:	38c00615 	stw	r3,24(r7)
  808990:	80ffff17 	ldw	r3,-4(r16)
  808994:	38800804 	addi	r2,r7,32
  808998:	38c00715 	stw	r3,28(r7)
  80899c:	80c00017 	ldw	r3,0(r16)
  8089a0:	003f0706 	br	8085c0 <_realloc_r+0x13c>
  8089a4:	80800217 	ldw	r2,8(r16)
  8089a8:	31800920 	cmpeqi	r6,r6,36
  8089ac:	38800415 	stw	r2,16(r7)
  8089b0:	80800317 	ldw	r2,12(r16)
  8089b4:	38800515 	stw	r2,20(r7)
  8089b8:	80c00417 	ldw	r3,16(r16)
  8089bc:	3000031e 	bne	r6,zero,8089cc <_realloc_r+0x548>
  8089c0:	38800604 	addi	r2,r7,24
  8089c4:	84000404 	addi	r16,r16,16
  8089c8:	003fb906 	br	8088b0 <_realloc_r+0x42c>
  8089cc:	84000604 	addi	r16,r16,24
  8089d0:	38c00615 	stw	r3,24(r7)
  8089d4:	80ffff17 	ldw	r3,-4(r16)
  8089d8:	38800804 	addi	r2,r7,32
  8089dc:	38c00715 	stw	r3,28(r7)
  8089e0:	80c00017 	ldw	r3,0(r16)
  8089e4:	003fb206 	br	8088b0 <_realloc_r+0x42c>

008089e8 <_sbrk_r>:
  8089e8:	defffe04 	addi	sp,sp,-8
  8089ec:	dc000015 	stw	r16,0(sp)
  8089f0:	00802074 	movhi	r2,129
  8089f4:	2021883a 	mov	r16,r4
  8089f8:	2809883a 	mov	r4,r5
  8089fc:	dfc00115 	stw	ra,4(sp)
  808a00:	1010e715 	stw	zero,17308(r2)
  808a04:	080e5840 	call	80e584 <sbrk>
  808a08:	10ffffd8 	cmpnei	r3,r2,-1
  808a0c:	18000426 	beq	r3,zero,808a20 <_sbrk_r+0x38>
  808a10:	dfc00117 	ldw	ra,4(sp)
  808a14:	dc000017 	ldw	r16,0(sp)
  808a18:	dec00204 	addi	sp,sp,8
  808a1c:	f800283a 	ret
  808a20:	00c02074 	movhi	r3,129
  808a24:	18d0e717 	ldw	r3,17308(r3)
  808a28:	183ff926 	beq	r3,zero,808a10 <_sbrk_r+0x28>
  808a2c:	80c00015 	stw	r3,0(r16)
  808a30:	dfc00117 	ldw	ra,4(sp)
  808a34:	dc000017 	ldw	r16,0(sp)
  808a38:	dec00204 	addi	sp,sp,8
  808a3c:	f800283a 	ret

00808a40 <__sread>:
  808a40:	defffe04 	addi	sp,sp,-8
  808a44:	dc000015 	stw	r16,0(sp)
  808a48:	2821883a 	mov	r16,r5
  808a4c:	2940038f 	ldh	r5,14(r5)
  808a50:	dfc00115 	stw	ra,4(sp)
  808a54:	080a7d80 	call	80a7d8 <_read_r>
  808a58:	10000716 	blt	r2,zero,808a78 <__sread+0x38>
  808a5c:	80c01417 	ldw	r3,80(r16)
  808a60:	1887883a 	add	r3,r3,r2
  808a64:	80c01415 	stw	r3,80(r16)
  808a68:	dfc00117 	ldw	ra,4(sp)
  808a6c:	dc000017 	ldw	r16,0(sp)
  808a70:	dec00204 	addi	sp,sp,8
  808a74:	f800283a 	ret
  808a78:	80c0030b 	ldhu	r3,12(r16)
  808a7c:	18fbffcc 	andi	r3,r3,61439
  808a80:	80c0030d 	sth	r3,12(r16)
  808a84:	dfc00117 	ldw	ra,4(sp)
  808a88:	dc000017 	ldw	r16,0(sp)
  808a8c:	dec00204 	addi	sp,sp,8
  808a90:	f800283a 	ret

00808a94 <__seofread>:
  808a94:	0005883a 	mov	r2,zero
  808a98:	f800283a 	ret

00808a9c <__swrite>:
  808a9c:	2880030b 	ldhu	r2,12(r5)
  808aa0:	defffb04 	addi	sp,sp,-20
  808aa4:	dcc00315 	stw	r19,12(sp)
  808aa8:	dc800215 	stw	r18,8(sp)
  808aac:	dc400115 	stw	r17,4(sp)
  808ab0:	dc000015 	stw	r16,0(sp)
  808ab4:	dfc00415 	stw	ra,16(sp)
  808ab8:	10c0400c 	andi	r3,r2,256
  808abc:	2821883a 	mov	r16,r5
  808ac0:	2023883a 	mov	r17,r4
  808ac4:	2940038f 	ldh	r5,14(r5)
  808ac8:	3025883a 	mov	r18,r6
  808acc:	3827883a 	mov	r19,r7
  808ad0:	18000c1e 	bne	r3,zero,808b04 <__swrite+0x68>
  808ad4:	10bbffcc 	andi	r2,r2,61439
  808ad8:	980f883a 	mov	r7,r19
  808adc:	900d883a 	mov	r6,r18
  808ae0:	8809883a 	mov	r4,r17
  808ae4:	8080030d 	sth	r2,12(r16)
  808ae8:	dfc00417 	ldw	ra,16(sp)
  808aec:	dcc00317 	ldw	r19,12(sp)
  808af0:	dc800217 	ldw	r18,8(sp)
  808af4:	dc400117 	ldw	r17,4(sp)
  808af8:	dc000017 	ldw	r16,0(sp)
  808afc:	dec00504 	addi	sp,sp,20
  808b00:	080a07c1 	jmpi	80a07c <_write_r>
  808b04:	01c00084 	movi	r7,2
  808b08:	000d883a 	mov	r6,zero
  808b0c:	080a7240 	call	80a724 <_lseek_r>
  808b10:	8080030b 	ldhu	r2,12(r16)
  808b14:	8140038f 	ldh	r5,14(r16)
  808b18:	003fee06 	br	808ad4 <__swrite+0x38>

00808b1c <__sseek>:
  808b1c:	defffe04 	addi	sp,sp,-8
  808b20:	dc000015 	stw	r16,0(sp)
  808b24:	2821883a 	mov	r16,r5
  808b28:	2940038f 	ldh	r5,14(r5)
  808b2c:	dfc00115 	stw	ra,4(sp)
  808b30:	080a7240 	call	80a724 <_lseek_r>
  808b34:	10ffffd8 	cmpnei	r3,r2,-1
  808b38:	18000826 	beq	r3,zero,808b5c <__sseek+0x40>
  808b3c:	80c0030b 	ldhu	r3,12(r16)
  808b40:	80801415 	stw	r2,80(r16)
  808b44:	18c40014 	ori	r3,r3,4096
  808b48:	80c0030d 	sth	r3,12(r16)
  808b4c:	dfc00117 	ldw	ra,4(sp)
  808b50:	dc000017 	ldw	r16,0(sp)
  808b54:	dec00204 	addi	sp,sp,8
  808b58:	f800283a 	ret
  808b5c:	80c0030b 	ldhu	r3,12(r16)
  808b60:	18fbffcc 	andi	r3,r3,61439
  808b64:	80c0030d 	sth	r3,12(r16)
  808b68:	dfc00117 	ldw	ra,4(sp)
  808b6c:	dc000017 	ldw	r16,0(sp)
  808b70:	dec00204 	addi	sp,sp,8
  808b74:	f800283a 	ret

00808b78 <__sclose>:
  808b78:	2940038f 	ldh	r5,14(r5)
  808b7c:	080a0e01 	jmpi	80a0e0 <_close_r>

00808b80 <__sprint_r.part.0>:
  808b80:	28801917 	ldw	r2,100(r5)
  808b84:	defff604 	addi	sp,sp,-40
  808b88:	dcc00315 	stw	r19,12(sp)
  808b8c:	dfc00915 	stw	ra,36(sp)
  808b90:	df000815 	stw	fp,32(sp)
  808b94:	ddc00715 	stw	r23,28(sp)
  808b98:	dd800615 	stw	r22,24(sp)
  808b9c:	dd400515 	stw	r21,20(sp)
  808ba0:	dd000415 	stw	r20,16(sp)
  808ba4:	dc800215 	stw	r18,8(sp)
  808ba8:	dc400115 	stw	r17,4(sp)
  808bac:	dc000015 	stw	r16,0(sp)
  808bb0:	1088000c 	andi	r2,r2,8192
  808bb4:	3027883a 	mov	r19,r6
  808bb8:	10002c26 	beq	r2,zero,808c6c <__sprint_r.part.0+0xec>
  808bbc:	30800217 	ldw	r2,8(r6)
  808bc0:	35000017 	ldw	r20,0(r6)
  808bc4:	2821883a 	mov	r16,r5
  808bc8:	2023883a 	mov	r17,r4
  808bcc:	05bfff04 	movi	r22,-4
  808bd0:	10002426 	beq	r2,zero,808c64 <__sprint_r.part.0+0xe4>
  808bd4:	a5400117 	ldw	r21,4(r20)
  808bd8:	a5c00017 	ldw	r23,0(r20)
  808bdc:	a824d0ba 	srli	r18,r21,2
  808be0:	90001b26 	beq	r18,zero,808c50 <__sprint_r.part.0+0xd0>
  808be4:	0039883a 	mov	fp,zero
  808be8:	00000206 	br	808bf4 <__sprint_r.part.0+0x74>
  808bec:	bdc00104 	addi	r23,r23,4
  808bf0:	97001626 	beq	r18,fp,808c4c <__sprint_r.part.0+0xcc>
  808bf4:	b9400017 	ldw	r5,0(r23)
  808bf8:	800d883a 	mov	r6,r16
  808bfc:	8809883a 	mov	r4,r17
  808c00:	080a5380 	call	80a538 <_fputwc_r>
  808c04:	10bfffe0 	cmpeqi	r2,r2,-1
  808c08:	e7000044 	addi	fp,fp,1
  808c0c:	103ff726 	beq	r2,zero,808bec <__sprint_r.part.0+0x6c>
  808c10:	00bfffc4 	movi	r2,-1
  808c14:	98000215 	stw	zero,8(r19)
  808c18:	98000115 	stw	zero,4(r19)
  808c1c:	dfc00917 	ldw	ra,36(sp)
  808c20:	df000817 	ldw	fp,32(sp)
  808c24:	ddc00717 	ldw	r23,28(sp)
  808c28:	dd800617 	ldw	r22,24(sp)
  808c2c:	dd400517 	ldw	r21,20(sp)
  808c30:	dd000417 	ldw	r20,16(sp)
  808c34:	dcc00317 	ldw	r19,12(sp)
  808c38:	dc800217 	ldw	r18,8(sp)
  808c3c:	dc400117 	ldw	r17,4(sp)
  808c40:	dc000017 	ldw	r16,0(sp)
  808c44:	dec00a04 	addi	sp,sp,40
  808c48:	f800283a 	ret
  808c4c:	98800217 	ldw	r2,8(r19)
  808c50:	adaa703a 	and	r21,r21,r22
  808c54:	1545c83a 	sub	r2,r2,r21
  808c58:	98800215 	stw	r2,8(r19)
  808c5c:	a5000204 	addi	r20,r20,8
  808c60:	103fdc1e 	bne	r2,zero,808bd4 <__sprint_r.part.0+0x54>
  808c64:	0005883a 	mov	r2,zero
  808c68:	003fea06 	br	808c14 <__sprint_r.part.0+0x94>
  808c6c:	0805f780 	call	805f78 <__sfvwrite_r>
  808c70:	003fe806 	br	808c14 <__sprint_r.part.0+0x94>

00808c74 <__sprint_r>:
  808c74:	30c00217 	ldw	r3,8(r6)
  808c78:	18000126 	beq	r3,zero,808c80 <__sprint_r+0xc>
  808c7c:	0808b801 	jmpi	808b80 <__sprint_r.part.0>
  808c80:	30000115 	stw	zero,4(r6)
  808c84:	0005883a 	mov	r2,zero
  808c88:	f800283a 	ret

00808c8c <___vfiprintf_internal_r>:
  808c8c:	deffcf04 	addi	sp,sp,-196
  808c90:	dd802d15 	stw	r22,180(sp)
  808c94:	dd402c15 	stw	r21,176(sp)
  808c98:	dd002b15 	stw	r20,172(sp)
  808c9c:	dfc03015 	stw	ra,192(sp)
  808ca0:	df002f15 	stw	fp,188(sp)
  808ca4:	ddc02e15 	stw	r23,184(sp)
  808ca8:	dcc02a15 	stw	r19,168(sp)
  808cac:	dc802915 	stw	r18,164(sp)
  808cb0:	dc402815 	stw	r17,160(sp)
  808cb4:	dc002715 	stw	r16,156(sp)
  808cb8:	d9c00415 	stw	r7,16(sp)
  808cbc:	202d883a 	mov	r22,r4
  808cc0:	282b883a 	mov	r21,r5
  808cc4:	3029883a 	mov	r20,r6
  808cc8:	20000226 	beq	r4,zero,808cd4 <___vfiprintf_internal_r+0x48>
  808ccc:	20800e17 	ldw	r2,56(r4)
  808cd0:	1001b426 	beq	r2,zero,8093a4 <___vfiprintf_internal_r+0x718>
  808cd4:	a880030b 	ldhu	r2,12(r21)
  808cd8:	10c8000c 	andi	r3,r2,8192
  808cdc:	1800061e 	bne	r3,zero,808cf8 <___vfiprintf_internal_r+0x6c>
  808ce0:	a8c01917 	ldw	r3,100(r21)
  808ce4:	0137ffc4 	movi	r4,-8193
  808ce8:	10880014 	ori	r2,r2,8192
  808cec:	1906703a 	and	r3,r3,r4
  808cf0:	a880030d 	sth	r2,12(r21)
  808cf4:	a8c01915 	stw	r3,100(r21)
  808cf8:	10c0020c 	andi	r3,r2,8
  808cfc:	18010826 	beq	r3,zero,809120 <___vfiprintf_internal_r+0x494>
  808d00:	a8c00417 	ldw	r3,16(r21)
  808d04:	18010626 	beq	r3,zero,809120 <___vfiprintf_internal_r+0x494>
  808d08:	1080068c 	andi	r2,r2,26
  808d0c:	10800298 	cmpnei	r2,r2,10
  808d10:	10010b26 	beq	r2,zero,809140 <___vfiprintf_internal_r+0x4b4>
  808d14:	dc801704 	addi	r18,sp,92
  808d18:	dc800a15 	stw	r18,40(sp)
  808d1c:	d8000c15 	stw	zero,48(sp)
  808d20:	d8000b15 	stw	zero,44(sp)
  808d24:	9021883a 	mov	r16,r18
  808d28:	d8000515 	stw	zero,20(sp)
  808d2c:	d8000115 	stw	zero,4(sp)
  808d30:	a0c00007 	ldb	r3,0(r20)
  808d34:	1800e826 	beq	r3,zero,8090d8 <___vfiprintf_internal_r+0x44c>
  808d38:	a023883a 	mov	r17,r20
  808d3c:	00000306 	br	808d4c <___vfiprintf_internal_r+0xc0>
  808d40:	88c00047 	ldb	r3,1(r17)
  808d44:	8c400044 	addi	r17,r17,1
  808d48:	18012a26 	beq	r3,zero,8091f4 <___vfiprintf_internal_r+0x568>
  808d4c:	18c00958 	cmpnei	r3,r3,37
  808d50:	183ffb1e 	bne	r3,zero,808d40 <___vfiprintf_internal_r+0xb4>
  808d54:	8d27c83a 	sub	r19,r17,r20
  808d58:	8d01281e 	bne	r17,r20,8091fc <___vfiprintf_internal_r+0x570>
  808d5c:	88800003 	ldbu	r2,0(r17)
  808d60:	10803fcc 	andi	r2,r2,255
  808d64:	1080201c 	xori	r2,r2,128
  808d68:	10bfe004 	addi	r2,r2,-128
  808d6c:	1000da26 	beq	r2,zero,8090d8 <___vfiprintf_internal_r+0x44c>
  808d70:	88800047 	ldb	r2,1(r17)
  808d74:	8d000044 	addi	r20,r17,1
  808d78:	d8000945 	stb	zero,37(sp)
  808d7c:	000b883a 	mov	r5,zero
  808d80:	000d883a 	mov	r6,zero
  808d84:	023fffc4 	movi	r8,-1
  808d88:	0023883a 	mov	r17,zero
  808d8c:	001b883a 	mov	r13,zero
  808d90:	a5000044 	addi	r20,r20,1
  808d94:	10fff804 	addi	r3,r2,-32
  808d98:	19001668 	cmpgeui	r4,r3,89
  808d9c:	20006c1e 	bne	r4,zero,808f50 <___vfiprintf_internal_r+0x2c4>
  808da0:	180690ba 	slli	r3,r3,2
  808da4:	01002074 	movhi	r4,129
  808da8:	1909883a 	add	r4,r3,r4
  808dac:	20e36d17 	ldw	r3,-29260(r4)
  808db0:	1800683a 	jmp	r3
  808db4:	008096b4 	movhi	r2,602
  808db8:	00808f50 	cmplti	r2,zero,573
  808dbc:	00808f50 	cmplti	r2,zero,573
  808dc0:	008096a8 	cmpgeui	r2,zero,602
  808dc4:	00808f50 	cmplti	r2,zero,573
  808dc8:	00808f50 	cmplti	r2,zero,573
  808dcc:	00808f50 	cmplti	r2,zero,573
  808dd0:	00808f50 	cmplti	r2,zero,573
  808dd4:	00808f50 	cmplti	r2,zero,573
  808dd8:	00808f50 	cmplti	r2,zero,573
  808ddc:	00809680 	call	80968 <__alt_mem_sdram-0x77f698>
  808de0:	00809670 	cmpltui	r2,zero,601
  808de4:	00808f50 	cmplti	r2,zero,573
  808de8:	00809658 	cmpnei	r2,zero,601
  808dec:	0080960c 	andi	r2,zero,600
  808df0:	00808f50 	cmplti	r2,zero,573
  808df4:	00809600 	call	80960 <__alt_mem_sdram-0x77f6a0>
  808df8:	00808f18 	cmpnei	r2,zero,572
  808dfc:	00808f18 	cmpnei	r2,zero,572
  808e00:	00808f18 	cmpnei	r2,zero,572
  808e04:	00808f18 	cmpnei	r2,zero,572
  808e08:	00808f18 	cmpnei	r2,zero,572
  808e0c:	00808f18 	cmpnei	r2,zero,572
  808e10:	00808f18 	cmpnei	r2,zero,572
  808e14:	00808f18 	cmpnei	r2,zero,572
  808e18:	00808f18 	cmpnei	r2,zero,572
  808e1c:	00808f50 	cmplti	r2,zero,573
  808e20:	00808f50 	cmplti	r2,zero,573
  808e24:	00808f50 	cmplti	r2,zero,573
  808e28:	00808f50 	cmplti	r2,zero,573
  808e2c:	00808f50 	cmplti	r2,zero,573
  808e30:	00808f50 	cmplti	r2,zero,573
  808e34:	00808f50 	cmplti	r2,zero,573
  808e38:	00808f50 	cmplti	r2,zero,573
  808e3c:	00808f50 	cmplti	r2,zero,573
  808e40:	00808f50 	cmplti	r2,zero,573
  808e44:	0080951c 	xori	r2,zero,596
  808e48:	00808f50 	cmplti	r2,zero,573
  808e4c:	00808f50 	cmplti	r2,zero,573
  808e50:	00808f50 	cmplti	r2,zero,573
  808e54:	00808f50 	cmplti	r2,zero,573
  808e58:	00808f50 	cmplti	r2,zero,573
  808e5c:	00808f50 	cmplti	r2,zero,573
  808e60:	00808f50 	cmplti	r2,zero,573
  808e64:	00808f50 	cmplti	r2,zero,573
  808e68:	00808f50 	cmplti	r2,zero,573
  808e6c:	00808f50 	cmplti	r2,zero,573
  808e70:	0080918c 	andi	r2,zero,582
  808e74:	00808f50 	cmplti	r2,zero,573
  808e78:	00808f50 	cmplti	r2,zero,573
  808e7c:	00808f50 	cmplti	r2,zero,573
  808e80:	00808f50 	cmplti	r2,zero,573
  808e84:	00808f50 	cmplti	r2,zero,573
  808e88:	00809164 	muli	r2,zero,581
  808e8c:	00808f50 	cmplti	r2,zero,573
  808e90:	00808f50 	cmplti	r2,zero,573
  808e94:	008094d4 	movui	r2,595
  808e98:	00808f50 	cmplti	r2,zero,573
  808e9c:	00808f50 	cmplti	r2,zero,573
  808ea0:	00808f50 	cmplti	r2,zero,573
  808ea4:	00808f50 	cmplti	r2,zero,573
  808ea8:	00808f50 	cmplti	r2,zero,573
  808eac:	00808f50 	cmplti	r2,zero,573
  808eb0:	00808f50 	cmplti	r2,zero,573
  808eb4:	00808f50 	cmplti	r2,zero,573
  808eb8:	00808f50 	cmplti	r2,zero,573
  808ebc:	00808f50 	cmplti	r2,zero,573
  808ec0:	008094ac 	andhi	r2,zero,594
  808ec4:	008093ac 	andhi	r2,zero,590
  808ec8:	00808f50 	cmplti	r2,zero,573
  808ecc:	00808f50 	cmplti	r2,zero,573
  808ed0:	00808f50 	cmplti	r2,zero,573
  808ed4:	00809450 	cmplti	r2,zero,593
  808ed8:	008093ac 	andhi	r2,zero,590
  808edc:	00808f50 	cmplti	r2,zero,573
  808ee0:	00808f50 	cmplti	r2,zero,573
  808ee4:	00809498 	cmpnei	r2,zero,594
  808ee8:	00808f50 	cmplti	r2,zero,573
  808eec:	0080945c 	xori	r2,zero,593
  808ef0:	00809190 	cmplti	r2,zero,582
  808ef4:	0080978c 	andi	r2,zero,606
  808ef8:	00809780 	call	80978 <__alt_mem_sdram-0x77f688>
  808efc:	00808f50 	cmplti	r2,zero,573
  808f00:	00809728 	cmpgeui	r2,zero,604
  808f04:	00808f50 	cmplti	r2,zero,573
  808f08:	00809168 	cmpgeui	r2,zero,581
  808f0c:	00808f50 	cmplti	r2,zero,573
  808f10:	00808f50 	cmplti	r2,zero,573
  808f14:	008096e0 	cmpeqi	r2,zero,603
  808f18:	0023883a 	mov	r17,zero
  808f1c:	113ff404 	addi	r4,r2,-48
  808f20:	880690ba 	slli	r3,r17,2
  808f24:	a0800007 	ldb	r2,0(r20)
  808f28:	a5000044 	addi	r20,r20,1
  808f2c:	1c63883a 	add	r17,r3,r17
  808f30:	8c63883a 	add	r17,r17,r17
  808f34:	2463883a 	add	r17,r4,r17
  808f38:	113ff404 	addi	r4,r2,-48
  808f3c:	20c002b0 	cmpltui	r3,r4,10
  808f40:	183ff71e 	bne	r3,zero,808f20 <___vfiprintf_internal_r+0x294>
  808f44:	10fff804 	addi	r3,r2,-32
  808f48:	19001668 	cmpgeui	r4,r3,89
  808f4c:	203f9426 	beq	r4,zero,808da0 <___vfiprintf_internal_r+0x114>
  808f50:	29403fcc 	andi	r5,r5,255
  808f54:	2803e31e 	bne	r5,zero,809ee4 <___vfiprintf_internal_r+0x1258>
  808f58:	10005f26 	beq	r2,zero,8090d8 <___vfiprintf_internal_r+0x44c>
  808f5c:	d8800d05 	stb	r2,52(sp)
  808f60:	d8000945 	stb	zero,37(sp)
  808f64:	05c00044 	movi	r23,1
  808f68:	07000044 	movi	fp,1
  808f6c:	dcc00d04 	addi	r19,sp,52
  808f70:	db400015 	stw	r13,0(sp)
  808f74:	0011883a 	mov	r8,zero
  808f78:	d8800017 	ldw	r2,0(sp)
  808f7c:	1380008c 	andi	r14,r2,2
  808f80:	70000126 	beq	r14,zero,808f88 <___vfiprintf_internal_r+0x2fc>
  808f84:	bdc00084 	addi	r23,r23,2
  808f88:	d8800017 	ldw	r2,0(sp)
  808f8c:	d9000b17 	ldw	r4,44(sp)
  808f90:	1340210c 	andi	r13,r2,132
  808f94:	21800044 	addi	r6,r4,1
  808f98:	d8800c17 	ldw	r2,48(sp)
  808f9c:	300b883a 	mov	r5,r6
  808fa0:	6800021e 	bne	r13,zero,808fac <___vfiprintf_internal_r+0x320>
  808fa4:	8dc7c83a 	sub	r3,r17,r23
  808fa8:	00c2d716 	blt	zero,r3,809b08 <___vfiprintf_internal_r+0xe7c>
  808fac:	d8c00947 	ldb	r3,37(sp)
  808fb0:	81800204 	addi	r6,r16,8
  808fb4:	18000d26 	beq	r3,zero,808fec <___vfiprintf_internal_r+0x360>
  808fb8:	d8c00944 	addi	r3,sp,37
  808fbc:	10800044 	addi	r2,r2,1
  808fc0:	80c00015 	stw	r3,0(r16)
  808fc4:	00c00044 	movi	r3,1
  808fc8:	80c00115 	stw	r3,4(r16)
  808fcc:	d8800c15 	stw	r2,48(sp)
  808fd0:	d9400b15 	stw	r5,44(sp)
  808fd4:	28c00208 	cmpgei	r3,r5,8
  808fd8:	1802ac1e 	bne	r3,zero,809a8c <___vfiprintf_internal_r+0xe00>
  808fdc:	2809883a 	mov	r4,r5
  808fe0:	3021883a 	mov	r16,r6
  808fe4:	29400044 	addi	r5,r5,1
  808fe8:	31800204 	addi	r6,r6,8
  808fec:	70001826 	beq	r14,zero,809050 <___vfiprintf_internal_r+0x3c4>
  808ff0:	d8c00984 	addi	r3,sp,38
  808ff4:	10800084 	addi	r2,r2,2
  808ff8:	80c00015 	stw	r3,0(r16)
  808ffc:	00c00084 	movi	r3,2
  809000:	80c00115 	stw	r3,4(r16)
  809004:	d8800c15 	stw	r2,48(sp)
  809008:	d9400b15 	stw	r5,44(sp)
  80900c:	28c00208 	cmpgei	r3,r5,8
  809010:	1802b626 	beq	r3,zero,809aec <___vfiprintf_internal_r+0xe60>
  809014:	10031226 	beq	r2,zero,809c60 <___vfiprintf_internal_r+0xfd4>
  809018:	d9800a04 	addi	r6,sp,40
  80901c:	a80b883a 	mov	r5,r21
  809020:	b009883a 	mov	r4,r22
  809024:	da000315 	stw	r8,12(sp)
  809028:	db400215 	stw	r13,8(sp)
  80902c:	0808b800 	call	808b80 <__sprint_r.part.0>
  809030:	10002b1e 	bne	r2,zero,8090e0 <___vfiprintf_internal_r+0x454>
  809034:	d9000b17 	ldw	r4,44(sp)
  809038:	d8800c17 	ldw	r2,48(sp)
  80903c:	da000317 	ldw	r8,12(sp)
  809040:	db400217 	ldw	r13,8(sp)
  809044:	d9801904 	addi	r6,sp,100
  809048:	21400044 	addi	r5,r4,1
  80904c:	9021883a 	mov	r16,r18
  809050:	6b402018 	cmpnei	r13,r13,128
  809054:	68020c26 	beq	r13,zero,809888 <___vfiprintf_internal_r+0xbfc>
  809058:	4711c83a 	sub	r8,r8,fp
  80905c:	02024b16 	blt	zero,r8,80998c <___vfiprintf_internal_r+0xd00>
  809060:	e085883a 	add	r2,fp,r2
  809064:	d9400b15 	stw	r5,44(sp)
  809068:	84c00015 	stw	r19,0(r16)
  80906c:	87000115 	stw	fp,4(r16)
  809070:	d8800c15 	stw	r2,48(sp)
  809074:	29400210 	cmplti	r5,r5,8
  809078:	2800081e 	bne	r5,zero,80909c <___vfiprintf_internal_r+0x410>
  80907c:	10008f26 	beq	r2,zero,8092bc <___vfiprintf_internal_r+0x630>
  809080:	d9800a04 	addi	r6,sp,40
  809084:	a80b883a 	mov	r5,r21
  809088:	b009883a 	mov	r4,r22
  80908c:	0808b800 	call	808b80 <__sprint_r.part.0>
  809090:	1000131e 	bne	r2,zero,8090e0 <___vfiprintf_internal_r+0x454>
  809094:	d8800c17 	ldw	r2,48(sp)
  809098:	900d883a 	mov	r6,r18
  80909c:	d8c00017 	ldw	r3,0(sp)
  8090a0:	1cc0010c 	andi	r19,r3,4
  8090a4:	98000226 	beq	r19,zero,8090b0 <___vfiprintf_internal_r+0x424>
  8090a8:	8de1c83a 	sub	r16,r17,r23
  8090ac:	04008a16 	blt	zero,r16,8092d8 <___vfiprintf_internal_r+0x64c>
  8090b0:	8dc0010e 	bge	r17,r23,8090b8 <___vfiprintf_internal_r+0x42c>
  8090b4:	b823883a 	mov	r17,r23
  8090b8:	d8c00117 	ldw	r3,4(sp)
  8090bc:	1c47883a 	add	r3,r3,r17
  8090c0:	d8c00115 	stw	r3,4(sp)
  8090c4:	1002671e 	bne	r2,zero,809a64 <___vfiprintf_internal_r+0xdd8>
  8090c8:	a0c00007 	ldb	r3,0(r20)
  8090cc:	d8000b15 	stw	zero,44(sp)
  8090d0:	9021883a 	mov	r16,r18
  8090d4:	183f181e 	bne	r3,zero,808d38 <___vfiprintf_internal_r+0xac>
  8090d8:	d8800c17 	ldw	r2,48(sp)
  8090dc:	1003831e 	bne	r2,zero,809eec <___vfiprintf_internal_r+0x1260>
  8090e0:	a880030b 	ldhu	r2,12(r21)
  8090e4:	1080100c 	andi	r2,r2,64
  8090e8:	10039e1e 	bne	r2,zero,809f64 <___vfiprintf_internal_r+0x12d8>
  8090ec:	d8800117 	ldw	r2,4(sp)
  8090f0:	dfc03017 	ldw	ra,192(sp)
  8090f4:	df002f17 	ldw	fp,188(sp)
  8090f8:	ddc02e17 	ldw	r23,184(sp)
  8090fc:	dd802d17 	ldw	r22,180(sp)
  809100:	dd402c17 	ldw	r21,176(sp)
  809104:	dd002b17 	ldw	r20,172(sp)
  809108:	dcc02a17 	ldw	r19,168(sp)
  80910c:	dc802917 	ldw	r18,164(sp)
  809110:	dc402817 	ldw	r17,160(sp)
  809114:	dc002717 	ldw	r16,156(sp)
  809118:	dec03104 	addi	sp,sp,196
  80911c:	f800283a 	ret
  809120:	a80b883a 	mov	r5,r21
  809124:	b009883a 	mov	r4,r22
  809128:	0803a900 	call	803a90 <__swsetup_r>
  80912c:	10038d1e 	bne	r2,zero,809f64 <___vfiprintf_internal_r+0x12d8>
  809130:	a880030b 	ldhu	r2,12(r21)
  809134:	1080068c 	andi	r2,r2,26
  809138:	10800298 	cmpnei	r2,r2,10
  80913c:	103ef51e 	bne	r2,zero,808d14 <___vfiprintf_internal_r+0x88>
  809140:	a880038f 	ldh	r2,14(r21)
  809144:	103ef316 	blt	r2,zero,808d14 <___vfiprintf_internal_r+0x88>
  809148:	d9c00417 	ldw	r7,16(sp)
  80914c:	a00d883a 	mov	r6,r20
  809150:	a80b883a 	mov	r5,r21
  809154:	b009883a 	mov	r4,r22
  809158:	0809fbc0 	call	809fbc <__sbprintf>
  80915c:	d8800115 	stw	r2,4(sp)
  809160:	003fe206 	br	8090ec <___vfiprintf_internal_r+0x460>
  809164:	6b400414 	ori	r13,r13,16
  809168:	6880080c 	andi	r2,r13,32
  80916c:	10004726 	beq	r2,zero,80928c <___vfiprintf_internal_r+0x600>
  809170:	d8c00417 	ldw	r3,16(sp)
  809174:	00800044 	movi	r2,1
  809178:	1dc00017 	ldw	r23,0(r3)
  80917c:	1f000117 	ldw	fp,4(r3)
  809180:	18c00204 	addi	r3,r3,8
  809184:	d8c00415 	stw	r3,16(sp)
  809188:	00000906 	br	8091b0 <___vfiprintf_internal_r+0x524>
  80918c:	6b400414 	ori	r13,r13,16
  809190:	6880080c 	andi	r2,r13,32
  809194:	10003126 	beq	r2,zero,80925c <___vfiprintf_internal_r+0x5d0>
  809198:	d8c00417 	ldw	r3,16(sp)
  80919c:	0005883a 	mov	r2,zero
  8091a0:	1dc00017 	ldw	r23,0(r3)
  8091a4:	1f000117 	ldw	fp,4(r3)
  8091a8:	18c00204 	addi	r3,r3,8
  8091ac:	d8c00415 	stw	r3,16(sp)
  8091b0:	d8000945 	stb	zero,37(sp)
  8091b4:	40ffffe0 	cmpeqi	r3,r8,-1
  8091b8:	001d883a 	mov	r14,zero
  8091bc:	1800f21e 	bne	r3,zero,809588 <___vfiprintf_internal_r+0x8fc>
  8091c0:	04ffdfc4 	movi	r19,-129
  8091c4:	6cc8703a 	and	r4,r13,r19
  8091c8:	bf06b03a 	or	r3,r23,fp
  8091cc:	d9000015 	stw	r4,0(sp)
  8091d0:	18024b1e 	bne	r3,zero,809b00 <___vfiprintf_internal_r+0xe74>
  8091d4:	4003091e 	bne	r8,zero,809dfc <___vfiprintf_internal_r+0x1170>
  8091d8:	1002a61e 	bne	r2,zero,809c74 <___vfiprintf_internal_r+0xfe8>
  8091dc:	6f00004c 	andi	fp,r13,1
  8091e0:	e002b826 	beq	fp,zero,809cc4 <___vfiprintf_internal_r+0x1038>
  8091e4:	00800c04 	movi	r2,48
  8091e8:	d88016c5 	stb	r2,91(sp)
  8091ec:	dcc016c4 	addi	r19,sp,91
  8091f0:	00008e06 	br	80942c <___vfiprintf_internal_r+0x7a0>
  8091f4:	8d27c83a 	sub	r19,r17,r20
  8091f8:	8d3fb726 	beq	r17,r20,8090d8 <___vfiprintf_internal_r+0x44c>
  8091fc:	d8c00c17 	ldw	r3,48(sp)
  809200:	d8800b17 	ldw	r2,44(sp)
  809204:	85000015 	stw	r20,0(r16)
  809208:	98c7883a 	add	r3,r19,r3
  80920c:	10800044 	addi	r2,r2,1
  809210:	d8800b15 	stw	r2,44(sp)
  809214:	84c00115 	stw	r19,4(r16)
  809218:	d8c00c15 	stw	r3,48(sp)
  80921c:	10800208 	cmpgei	r2,r2,8
  809220:	1000061e 	bne	r2,zero,80923c <___vfiprintf_internal_r+0x5b0>
  809224:	84000204 	addi	r16,r16,8
  809228:	d8c00117 	ldw	r3,4(sp)
  80922c:	88800003 	ldbu	r2,0(r17)
  809230:	1cc7883a 	add	r3,r3,r19
  809234:	d8c00115 	stw	r3,4(sp)
  809238:	003ec906 	br	808d60 <___vfiprintf_internal_r+0xd4>
  80923c:	18027f26 	beq	r3,zero,809c3c <___vfiprintf_internal_r+0xfb0>
  809240:	d9800a04 	addi	r6,sp,40
  809244:	a80b883a 	mov	r5,r21
  809248:	b009883a 	mov	r4,r22
  80924c:	0808b800 	call	808b80 <__sprint_r.part.0>
  809250:	103fa31e 	bne	r2,zero,8090e0 <___vfiprintf_internal_r+0x454>
  809254:	9021883a 	mov	r16,r18
  809258:	003ff306 	br	809228 <___vfiprintf_internal_r+0x59c>
  80925c:	d9000417 	ldw	r4,16(sp)
  809260:	6880040c 	andi	r2,r13,16
  809264:	20c00104 	addi	r3,r4,4
  809268:	1002a31e 	bne	r2,zero,809cf8 <___vfiprintf_internal_r+0x106c>
  80926c:	6880100c 	andi	r2,r13,64
  809270:	1002f626 	beq	r2,zero,809e4c <___vfiprintf_internal_r+0x11c0>
  809274:	d8800417 	ldw	r2,16(sp)
  809278:	0039883a 	mov	fp,zero
  80927c:	d8c00415 	stw	r3,16(sp)
  809280:	15c0000b 	ldhu	r23,0(r2)
  809284:	0005883a 	mov	r2,zero
  809288:	003fc906 	br	8091b0 <___vfiprintf_internal_r+0x524>
  80928c:	d9000417 	ldw	r4,16(sp)
  809290:	6880040c 	andi	r2,r13,16
  809294:	20c00104 	addi	r3,r4,4
  809298:	1002ab1e 	bne	r2,zero,809d48 <___vfiprintf_internal_r+0x10bc>
  80929c:	6880100c 	andi	r2,r13,64
  8092a0:	1002f026 	beq	r2,zero,809e64 <___vfiprintf_internal_r+0x11d8>
  8092a4:	d8800417 	ldw	r2,16(sp)
  8092a8:	0039883a 	mov	fp,zero
  8092ac:	d8c00415 	stw	r3,16(sp)
  8092b0:	15c0000b 	ldhu	r23,0(r2)
  8092b4:	00800044 	movi	r2,1
  8092b8:	003fbd06 	br	8091b0 <___vfiprintf_internal_r+0x524>
  8092bc:	d8c00017 	ldw	r3,0(sp)
  8092c0:	d8000b15 	stw	zero,44(sp)
  8092c4:	1cc0010c 	andi	r19,r3,4
  8092c8:	98024a26 	beq	r19,zero,809bf4 <___vfiprintf_internal_r+0xf68>
  8092cc:	8de1c83a 	sub	r16,r17,r23
  8092d0:	0402480e 	bge	zero,r16,809bf4 <___vfiprintf_internal_r+0xf68>
  8092d4:	900d883a 	mov	r6,r18
  8092d8:	80c00450 	cmplti	r3,r16,17
  8092dc:	d9000b17 	ldw	r4,44(sp)
  8092e0:	01c02074 	movhi	r7,129
  8092e4:	1803171e 	bne	r3,zero,809f44 <___vfiprintf_internal_r+0x12b8>
  8092e8:	39c23404 	addi	r7,r7,2256
  8092ec:	04c00404 	movi	r19,16
  8092f0:	00000606 	br	80930c <___vfiprintf_internal_r+0x680>
  8092f4:	21400084 	addi	r5,r4,2
  8092f8:	31800204 	addi	r6,r6,8
  8092fc:	1809883a 	mov	r4,r3
  809300:	843ffc04 	addi	r16,r16,-16
  809304:	80c00448 	cmpgei	r3,r16,17
  809308:	18001726 	beq	r3,zero,809368 <___vfiprintf_internal_r+0x6dc>
  80930c:	20c00044 	addi	r3,r4,1
  809310:	10800404 	addi	r2,r2,16
  809314:	31c00015 	stw	r7,0(r6)
  809318:	34c00115 	stw	r19,4(r6)
  80931c:	d8800c15 	stw	r2,48(sp)
  809320:	d8c00b15 	stw	r3,44(sp)
  809324:	19400208 	cmpgei	r5,r3,8
  809328:	283ff226 	beq	r5,zero,8092f4 <___vfiprintf_internal_r+0x668>
  80932c:	d9800a04 	addi	r6,sp,40
  809330:	a80b883a 	mov	r5,r21
  809334:	b009883a 	mov	r4,r22
  809338:	10014f26 	beq	r2,zero,809878 <___vfiprintf_internal_r+0xbec>
  80933c:	d9c00015 	stw	r7,0(sp)
  809340:	0808b800 	call	808b80 <__sprint_r.part.0>
  809344:	103f661e 	bne	r2,zero,8090e0 <___vfiprintf_internal_r+0x454>
  809348:	d9000b17 	ldw	r4,44(sp)
  80934c:	843ffc04 	addi	r16,r16,-16
  809350:	80c00448 	cmpgei	r3,r16,17
  809354:	d8800c17 	ldw	r2,48(sp)
  809358:	d9c00017 	ldw	r7,0(sp)
  80935c:	900d883a 	mov	r6,r18
  809360:	21400044 	addi	r5,r4,1
  809364:	183fe91e 	bne	r3,zero,80930c <___vfiprintf_internal_r+0x680>
  809368:	1405883a 	add	r2,r2,r16
  80936c:	d9400b15 	stw	r5,44(sp)
  809370:	31c00015 	stw	r7,0(r6)
  809374:	34000115 	stw	r16,4(r6)
  809378:	d8800c15 	stw	r2,48(sp)
  80937c:	29400210 	cmplti	r5,r5,8
  809380:	283f4b1e 	bne	r5,zero,8090b0 <___vfiprintf_internal_r+0x424>
  809384:	10021b26 	beq	r2,zero,809bf4 <___vfiprintf_internal_r+0xf68>
  809388:	d9800a04 	addi	r6,sp,40
  80938c:	a80b883a 	mov	r5,r21
  809390:	b009883a 	mov	r4,r22
  809394:	0808b800 	call	808b80 <__sprint_r.part.0>
  809398:	103f511e 	bne	r2,zero,8090e0 <___vfiprintf_internal_r+0x454>
  80939c:	d8800c17 	ldw	r2,48(sp)
  8093a0:	003f4306 	br	8090b0 <___vfiprintf_internal_r+0x424>
  8093a4:	0805b180 	call	805b18 <__sinit>
  8093a8:	003e4a06 	br	808cd4 <___vfiprintf_internal_r+0x48>
  8093ac:	29403fcc 	andi	r5,r5,255
  8093b0:	2802e01e 	bne	r5,zero,809f34 <___vfiprintf_internal_r+0x12a8>
  8093b4:	6880080c 	andi	r2,r13,32
  8093b8:	10005d26 	beq	r2,zero,809530 <___vfiprintf_internal_r+0x8a4>
  8093bc:	d8c00417 	ldw	r3,16(sp)
  8093c0:	18800117 	ldw	r2,4(r3)
  8093c4:	1dc00017 	ldw	r23,0(r3)
  8093c8:	18c00204 	addi	r3,r3,8
  8093cc:	d8c00415 	stw	r3,16(sp)
  8093d0:	1039883a 	mov	fp,r2
  8093d4:	10006216 	blt	r2,zero,809560 <___vfiprintf_internal_r+0x8d4>
  8093d8:	40bfffd8 	cmpnei	r2,r8,-1
  8093dc:	10000a26 	beq	r2,zero,809408 <___vfiprintf_internal_r+0x77c>
  8093e0:	00ffdfc4 	movi	r3,-129
  8093e4:	bf04b03a 	or	r2,r23,fp
  8093e8:	db800943 	ldbu	r14,37(sp)
  8093ec:	68da703a 	and	r13,r13,r3
  8093f0:	1000061e 	bne	r2,zero,80940c <___vfiprintf_internal_r+0x780>
  8093f4:	4000081e 	bne	r8,zero,809418 <___vfiprintf_internal_r+0x78c>
  8093f8:	0039883a 	mov	fp,zero
  8093fc:	db400015 	stw	r13,0(sp)
  809400:	9027883a 	mov	r19,r18
  809404:	00000906 	br	80942c <___vfiprintf_internal_r+0x7a0>
  809408:	db800943 	ldbu	r14,37(sp)
  80940c:	e000ee1e 	bne	fp,zero,8097c8 <___vfiprintf_internal_r+0xb3c>
  809410:	b88002a8 	cmpgeui	r2,r23,10
  809414:	1000ec1e 	bne	r2,zero,8097c8 <___vfiprintf_internal_r+0xb3c>
  809418:	bdc00c04 	addi	r23,r23,48
  80941c:	ddc016c5 	stb	r23,91(sp)
  809420:	db400015 	stw	r13,0(sp)
  809424:	07000044 	movi	fp,1
  809428:	dcc016c4 	addi	r19,sp,91
  80942c:	402f883a 	mov	r23,r8
  809430:	4700010e 	bge	r8,fp,809438 <___vfiprintf_internal_r+0x7ac>
  809434:	e02f883a 	mov	r23,fp
  809438:	73803fcc 	andi	r14,r14,255
  80943c:	7380201c 	xori	r14,r14,128
  809440:	73bfe004 	addi	r14,r14,-128
  809444:	703ecc26 	beq	r14,zero,808f78 <___vfiprintf_internal_r+0x2ec>
  809448:	bdc00044 	addi	r23,r23,1
  80944c:	003eca06 	br	808f78 <___vfiprintf_internal_r+0x2ec>
  809450:	a0800007 	ldb	r2,0(r20)
  809454:	6b401014 	ori	r13,r13,64
  809458:	003e4d06 	br	808d90 <___vfiprintf_internal_r+0x104>
  80945c:	29403fcc 	andi	r5,r5,255
  809460:	2802b21e 	bne	r5,zero,809f2c <___vfiprintf_internal_r+0x12a0>
  809464:	d9000417 	ldw	r4,16(sp)
  809468:	6880080c 	andi	r2,r13,32
  80946c:	20c00017 	ldw	r3,0(r4)
  809470:	21000104 	addi	r4,r4,4
  809474:	1002251e 	bne	r2,zero,809d0c <___vfiprintf_internal_r+0x1080>
  809478:	6880040c 	andi	r2,r13,16
  80947c:	1002531e 	bne	r2,zero,809dcc <___vfiprintf_internal_r+0x1140>
  809480:	6b40100c 	andi	r13,r13,64
  809484:	68025126 	beq	r13,zero,809dcc <___vfiprintf_internal_r+0x1140>
  809488:	d8800117 	ldw	r2,4(sp)
  80948c:	d9000415 	stw	r4,16(sp)
  809490:	1880000d 	sth	r2,0(r3)
  809494:	003e2606 	br	808d30 <___vfiprintf_internal_r+0xa4>
  809498:	a0800007 	ldb	r2,0(r20)
  80949c:	10c01b18 	cmpnei	r3,r2,108
  8094a0:	18025a26 	beq	r3,zero,809e0c <___vfiprintf_internal_r+0x1180>
  8094a4:	6b400414 	ori	r13,r13,16
  8094a8:	003e3906 	br	808d90 <___vfiprintf_internal_r+0x104>
  8094ac:	d8c00417 	ldw	r3,16(sp)
  8094b0:	d8000945 	stb	zero,37(sp)
  8094b4:	05c00044 	movi	r23,1
  8094b8:	18800017 	ldw	r2,0(r3)
  8094bc:	18c00104 	addi	r3,r3,4
  8094c0:	d8c00415 	stw	r3,16(sp)
  8094c4:	d8800d05 	stb	r2,52(sp)
  8094c8:	07000044 	movi	fp,1
  8094cc:	dcc00d04 	addi	r19,sp,52
  8094d0:	003ea706 	br	808f70 <___vfiprintf_internal_r+0x2e4>
  8094d4:	29403fcc 	andi	r5,r5,255
  8094d8:	2802981e 	bne	r5,zero,809f3c <___vfiprintf_internal_r+0x12b0>
  8094dc:	00c02074 	movhi	r3,129
  8094e0:	18c1a904 	addi	r3,r3,1700
  8094e4:	d8c00515 	stw	r3,20(sp)
  8094e8:	68c0080c 	andi	r3,r13,32
  8094ec:	18008326 	beq	r3,zero,8096fc <___vfiprintf_internal_r+0xa70>
  8094f0:	d8c00417 	ldw	r3,16(sp)
  8094f4:	1dc00017 	ldw	r23,0(r3)
  8094f8:	1f000117 	ldw	fp,4(r3)
  8094fc:	18c00204 	addi	r3,r3,8
  809500:	d8c00415 	stw	r3,16(sp)
  809504:	68c0004c 	andi	r3,r13,1
  809508:	18000226 	beq	r3,zero,809514 <___vfiprintf_internal_r+0x888>
  80950c:	bf06b03a 	or	r3,r23,fp
  809510:	1801f31e 	bne	r3,zero,809ce0 <___vfiprintf_internal_r+0x1054>
  809514:	00800084 	movi	r2,2
  809518:	003f2506 	br	8091b0 <___vfiprintf_internal_r+0x524>
  80951c:	29403fcc 	andi	r5,r5,255
  809520:	2802801e 	bne	r5,zero,809f24 <___vfiprintf_internal_r+0x1298>
  809524:	6b400414 	ori	r13,r13,16
  809528:	6880080c 	andi	r2,r13,32
  80952c:	103fa31e 	bne	r2,zero,8093bc <___vfiprintf_internal_r+0x730>
  809530:	d9000417 	ldw	r4,16(sp)
  809534:	6880040c 	andi	r2,r13,16
  809538:	20c00104 	addi	r3,r4,4
  80953c:	1001f91e 	bne	r2,zero,809d24 <___vfiprintf_internal_r+0x1098>
  809540:	6880100c 	andi	r2,r13,64
  809544:	10025226 	beq	r2,zero,809e90 <___vfiprintf_internal_r+0x1204>
  809548:	d8800417 	ldw	r2,16(sp)
  80954c:	d8c00415 	stw	r3,16(sp)
  809550:	15c0000f 	ldh	r23,0(r2)
  809554:	b839d7fa 	srai	fp,r23,31
  809558:	e005883a 	mov	r2,fp
  80955c:	103f9e0e 	bge	r2,zero,8093d8 <___vfiprintf_internal_r+0x74c>
  809560:	b804c03a 	cmpne	r2,r23,zero
  809564:	0739c83a 	sub	fp,zero,fp
  809568:	e0b9c83a 	sub	fp,fp,r2
  80956c:	00800b44 	movi	r2,45
  809570:	d8800945 	stb	r2,37(sp)
  809574:	40ffffe0 	cmpeqi	r3,r8,-1
  809578:	05efc83a 	sub	r23,zero,r23
  80957c:	03800b44 	movi	r14,45
  809580:	00800044 	movi	r2,1
  809584:	183f0e26 	beq	r3,zero,8091c0 <___vfiprintf_internal_r+0x534>
  809588:	10c00060 	cmpeqi	r3,r2,1
  80958c:	183f9f1e 	bne	r3,zero,80940c <___vfiprintf_internal_r+0x780>
  809590:	108000a0 	cmpeqi	r2,r2,2
  809594:	9027883a 	mov	r19,r18
  809598:	1000a81e 	bne	r2,zero,80983c <___vfiprintf_internal_r+0xbb0>
  80959c:	e006977a 	slli	r3,fp,29
  8095a0:	b804d0fa 	srli	r2,r23,3
  8095a4:	e038d0fa 	srli	fp,fp,3
  8095a8:	b90001cc 	andi	r4,r23,7
  8095ac:	21000c04 	addi	r4,r4,48
  8095b0:	18aeb03a 	or	r23,r3,r2
  8095b4:	993fffc5 	stb	r4,-1(r19)
  8095b8:	bf04b03a 	or	r2,r23,fp
  8095bc:	980b883a 	mov	r5,r19
  8095c0:	9cffffc4 	addi	r19,r19,-1
  8095c4:	103ff51e 	bne	r2,zero,80959c <___vfiprintf_internal_r+0x910>
  8095c8:	6880004c 	andi	r2,r13,1
  8095cc:	1000a726 	beq	r2,zero,80986c <___vfiprintf_internal_r+0xbe0>
  8095d0:	21003fcc 	andi	r4,r4,255
  8095d4:	2100201c 	xori	r4,r4,128
  8095d8:	213fe004 	addi	r4,r4,-128
  8095dc:	20800c18 	cmpnei	r2,r4,48
  8095e0:	1000a226 	beq	r2,zero,80986c <___vfiprintf_internal_r+0xbe0>
  8095e4:	297fff84 	addi	r5,r5,-2
  8095e8:	00800c04 	movi	r2,48
  8095ec:	98bfffc5 	stb	r2,-1(r19)
  8095f0:	9179c83a 	sub	fp,r18,r5
  8095f4:	db400015 	stw	r13,0(sp)
  8095f8:	2827883a 	mov	r19,r5
  8095fc:	003f8b06 	br	80942c <___vfiprintf_internal_r+0x7a0>
  809600:	a0800007 	ldb	r2,0(r20)
  809604:	6b402014 	ori	r13,r13,128
  809608:	003de106 	br	808d90 <___vfiprintf_internal_r+0x104>
  80960c:	a0800007 	ldb	r2,0(r20)
  809610:	a0c00044 	addi	r3,r20,1
  809614:	11000aa0 	cmpeqi	r4,r2,42
  809618:	2002551e 	bne	r4,zero,809f70 <___vfiprintf_internal_r+0x12e4>
  80961c:	113ff404 	addi	r4,r2,-48
  809620:	21c002b0 	cmpltui	r7,r4,10
  809624:	1829883a 	mov	r20,r3
  809628:	0011883a 	mov	r8,zero
  80962c:	383dd926 	beq	r7,zero,808d94 <___vfiprintf_internal_r+0x108>
  809630:	400690ba 	slli	r3,r8,2
  809634:	a0800007 	ldb	r2,0(r20)
  809638:	a5000044 	addi	r20,r20,1
  80963c:	1a11883a 	add	r8,r3,r8
  809640:	4211883a 	add	r8,r8,r8
  809644:	4111883a 	add	r8,r8,r4
  809648:	113ff404 	addi	r4,r2,-48
  80964c:	20c002b0 	cmpltui	r3,r4,10
  809650:	183ff71e 	bne	r3,zero,809630 <___vfiprintf_internal_r+0x9a4>
  809654:	003dcf06 	br	808d94 <___vfiprintf_internal_r+0x108>
  809658:	a0800003 	ldbu	r2,0(r20)
  80965c:	10803fcc 	andi	r2,r2,255
  809660:	1080201c 	xori	r2,r2,128
  809664:	6b400114 	ori	r13,r13,4
  809668:	10bfe004 	addi	r2,r2,-128
  80966c:	003dc806 	br	808d90 <___vfiprintf_internal_r+0x104>
  809670:	a0800007 	ldb	r2,0(r20)
  809674:	01400044 	movi	r5,1
  809678:	01800ac4 	movi	r6,43
  80967c:	003dc406 	br	808d90 <___vfiprintf_internal_r+0x104>
  809680:	d8c00417 	ldw	r3,16(sp)
  809684:	a0800003 	ldbu	r2,0(r20)
  809688:	1c400017 	ldw	r17,0(r3)
  80968c:	18c00104 	addi	r3,r3,4
  809690:	8801b916 	blt	r17,zero,809d78 <___vfiprintf_internal_r+0x10ec>
  809694:	d8c00415 	stw	r3,16(sp)
  809698:	10803fcc 	andi	r2,r2,255
  80969c:	1080201c 	xori	r2,r2,128
  8096a0:	10bfe004 	addi	r2,r2,-128
  8096a4:	003dba06 	br	808d90 <___vfiprintf_internal_r+0x104>
  8096a8:	a0800007 	ldb	r2,0(r20)
  8096ac:	6b400054 	ori	r13,r13,1
  8096b0:	003db706 	br	808d90 <___vfiprintf_internal_r+0x104>
  8096b4:	30c03fcc 	andi	r3,r6,255
  8096b8:	18c0201c 	xori	r3,r3,128
  8096bc:	18ffe004 	addi	r3,r3,-128
  8096c0:	a0800003 	ldbu	r2,0(r20)
  8096c4:	183ff41e 	bne	r3,zero,809698 <___vfiprintf_internal_r+0xa0c>
  8096c8:	10803fcc 	andi	r2,r2,255
  8096cc:	1080201c 	xori	r2,r2,128
  8096d0:	01400044 	movi	r5,1
  8096d4:	01800804 	movi	r6,32
  8096d8:	10bfe004 	addi	r2,r2,-128
  8096dc:	003dac06 	br	808d90 <___vfiprintf_internal_r+0x104>
  8096e0:	29403fcc 	andi	r5,r5,255
  8096e4:	28020a1e 	bne	r5,zero,809f10 <___vfiprintf_internal_r+0x1284>
  8096e8:	00c02074 	movhi	r3,129
  8096ec:	18c1ae04 	addi	r3,r3,1720
  8096f0:	d8c00515 	stw	r3,20(sp)
  8096f4:	68c0080c 	andi	r3,r13,32
  8096f8:	183f7d1e 	bne	r3,zero,8094f0 <___vfiprintf_internal_r+0x864>
  8096fc:	d9400417 	ldw	r5,16(sp)
  809700:	68c0040c 	andi	r3,r13,16
  809704:	29000104 	addi	r4,r5,4
  809708:	18018b1e 	bne	r3,zero,809d38 <___vfiprintf_internal_r+0x10ac>
  80970c:	68c0100c 	andi	r3,r13,64
  809710:	1801da26 	beq	r3,zero,809e7c <___vfiprintf_internal_r+0x11f0>
  809714:	d8c00417 	ldw	r3,16(sp)
  809718:	0039883a 	mov	fp,zero
  80971c:	d9000415 	stw	r4,16(sp)
  809720:	1dc0000b 	ldhu	r23,0(r3)
  809724:	003f7706 	br	809504 <___vfiprintf_internal_r+0x878>
  809728:	d8800417 	ldw	r2,16(sp)
  80972c:	d8000945 	stb	zero,37(sp)
  809730:	14c00017 	ldw	r19,0(r2)
  809734:	10c00104 	addi	r3,r2,4
  809738:	9801bb26 	beq	r19,zero,809e28 <___vfiprintf_internal_r+0x119c>
  80973c:	40bfffe0 	cmpeqi	r2,r8,-1
  809740:	1001901e 	bne	r2,zero,809d84 <___vfiprintf_internal_r+0x10f8>
  809744:	400d883a 	mov	r6,r8
  809748:	000b883a 	mov	r5,zero
  80974c:	9809883a 	mov	r4,r19
  809750:	d8c00315 	stw	r3,12(sp)
  809754:	db400215 	stw	r13,8(sp)
  809758:	da000015 	stw	r8,0(sp)
  80975c:	0806f5c0 	call	806f5c <memchr>
  809760:	da000017 	ldw	r8,0(sp)
  809764:	db400217 	ldw	r13,8(sp)
  809768:	d8c00317 	ldw	r3,12(sp)
  80976c:	1001e426 	beq	r2,zero,809f00 <___vfiprintf_internal_r+0x1274>
  809770:	14f9c83a 	sub	fp,r2,r19
  809774:	e02f883a 	mov	r23,fp
  809778:	d8c00415 	stw	r3,16(sp)
  80977c:	003dfc06 	br	808f70 <___vfiprintf_internal_r+0x2e4>
  809780:	a0800007 	ldb	r2,0(r20)
  809784:	6b400814 	ori	r13,r13,32
  809788:	003d8106 	br	808d90 <___vfiprintf_internal_r+0x104>
  80978c:	d8c00417 	ldw	r3,16(sp)
  809790:	00800c04 	movi	r2,48
  809794:	d8800985 	stb	r2,38(sp)
  809798:	00801e04 	movi	r2,120
  80979c:	01002074 	movhi	r4,129
  8097a0:	d88009c5 	stb	r2,39(sp)
  8097a4:	18800104 	addi	r2,r3,4
  8097a8:	d8800415 	stw	r2,16(sp)
  8097ac:	2081ae04 	addi	r2,r4,1720
  8097b0:	d8800515 	stw	r2,20(sp)
  8097b4:	1dc00017 	ldw	r23,0(r3)
  8097b8:	0039883a 	mov	fp,zero
  8097bc:	6b400094 	ori	r13,r13,2
  8097c0:	00800084 	movi	r2,2
  8097c4:	003e7a06 	br	8091b0 <___vfiprintf_internal_r+0x524>
  8097c8:	9027883a 	mov	r19,r18
  8097cc:	b809883a 	mov	r4,r23
  8097d0:	e00b883a 	mov	r5,fp
  8097d4:	01800284 	movi	r6,10
  8097d8:	000f883a 	mov	r7,zero
  8097dc:	db800315 	stw	r14,12(sp)
  8097e0:	da000215 	stw	r8,8(sp)
  8097e4:	db400015 	stw	r13,0(sp)
  8097e8:	080b4d40 	call	80b4d4 <__umoddi3>
  8097ec:	10800c04 	addi	r2,r2,48
  8097f0:	b809883a 	mov	r4,r23
  8097f4:	e00b883a 	mov	r5,fp
  8097f8:	98bfffc5 	stb	r2,-1(r19)
  8097fc:	01800284 	movi	r6,10
  809800:	000f883a 	mov	r7,zero
  809804:	080aeb80 	call	80aeb8 <__udivdi3>
  809808:	e009883a 	mov	r4,fp
  80980c:	b80b883a 	mov	r5,r23
  809810:	db400017 	ldw	r13,0(sp)
  809814:	da000217 	ldw	r8,8(sp)
  809818:	db800317 	ldw	r14,12(sp)
  80981c:	9cffffc4 	addi	r19,r19,-1
  809820:	102f883a 	mov	r23,r2
  809824:	1839883a 	mov	fp,r3
  809828:	203fe81e 	bne	r4,zero,8097cc <___vfiprintf_internal_r+0xb40>
  80982c:	294002a8 	cmpgeui	r5,r5,10
  809830:	283fe61e 	bne	r5,zero,8097cc <___vfiprintf_internal_r+0xb40>
  809834:	94f9c83a 	sub	fp,r18,r19
  809838:	003efc06 	br	80942c <___vfiprintf_internal_r+0x7a0>
  80983c:	d9000517 	ldw	r4,20(sp)
  809840:	b88003cc 	andi	r2,r23,15
  809844:	e006973a 	slli	r3,fp,28
  809848:	b82ed13a 	srli	r23,r23,4
  80984c:	2085883a 	add	r2,r4,r2
  809850:	10800003 	ldbu	r2,0(r2)
  809854:	e038d13a 	srli	fp,fp,4
  809858:	1deeb03a 	or	r23,r3,r23
  80985c:	98bfffc5 	stb	r2,-1(r19)
  809860:	bf04b03a 	or	r2,r23,fp
  809864:	9cffffc4 	addi	r19,r19,-1
  809868:	103ff41e 	bne	r2,zero,80983c <___vfiprintf_internal_r+0xbb0>
  80986c:	94f9c83a 	sub	fp,r18,r19
  809870:	db400015 	stw	r13,0(sp)
  809874:	003eed06 	br	80942c <___vfiprintf_internal_r+0x7a0>
  809878:	01400044 	movi	r5,1
  80987c:	0009883a 	mov	r4,zero
  809880:	900d883a 	mov	r6,r18
  809884:	003e9e06 	br	809300 <___vfiprintf_internal_r+0x674>
  809888:	8dc7c83a 	sub	r3,r17,r23
  80988c:	00fdf20e 	bge	zero,r3,809058 <___vfiprintf_internal_r+0x3cc>
  809890:	19c00450 	cmplti	r7,r3,17
  809894:	3801ae1e 	bne	r7,zero,809f50 <___vfiprintf_internal_r+0x12c4>
  809898:	01c02074 	movhi	r7,129
  80989c:	39c23004 	addi	r7,r7,2240
  8098a0:	03400404 	movi	r13,16
  8098a4:	00000606 	br	8098c0 <___vfiprintf_internal_r+0xc34>
  8098a8:	23800084 	addi	r14,r4,2
  8098ac:	84000204 	addi	r16,r16,8
  8098b0:	2809883a 	mov	r4,r5
  8098b4:	18fffc04 	addi	r3,r3,-16
  8098b8:	19400448 	cmpgei	r5,r3,17
  8098bc:	28001c26 	beq	r5,zero,809930 <___vfiprintf_internal_r+0xca4>
  8098c0:	21400044 	addi	r5,r4,1
  8098c4:	10800404 	addi	r2,r2,16
  8098c8:	81c00015 	stw	r7,0(r16)
  8098cc:	83400115 	stw	r13,4(r16)
  8098d0:	d8800c15 	stw	r2,48(sp)
  8098d4:	d9400b15 	stw	r5,44(sp)
  8098d8:	29800208 	cmpgei	r6,r5,8
  8098dc:	303ff226 	beq	r6,zero,8098a8 <___vfiprintf_internal_r+0xc1c>
  8098e0:	d9800a04 	addi	r6,sp,40
  8098e4:	a80b883a 	mov	r5,r21
  8098e8:	b009883a 	mov	r4,r22
  8098ec:	10006326 	beq	r2,zero,809a7c <___vfiprintf_internal_r+0xdf0>
  8098f0:	d9c00615 	stw	r7,24(sp)
  8098f4:	d8c00315 	stw	r3,12(sp)
  8098f8:	da000215 	stw	r8,8(sp)
  8098fc:	0808b800 	call	808b80 <__sprint_r.part.0>
  809900:	103df71e 	bne	r2,zero,8090e0 <___vfiprintf_internal_r+0x454>
  809904:	d8c00317 	ldw	r3,12(sp)
  809908:	d9000b17 	ldw	r4,44(sp)
  80990c:	d8800c17 	ldw	r2,48(sp)
  809910:	18fffc04 	addi	r3,r3,-16
  809914:	19400448 	cmpgei	r5,r3,17
  809918:	d9c00617 	ldw	r7,24(sp)
  80991c:	da000217 	ldw	r8,8(sp)
  809920:	9021883a 	mov	r16,r18
  809924:	23800044 	addi	r14,r4,1
  809928:	03400404 	movi	r13,16
  80992c:	283fe41e 	bne	r5,zero,8098c0 <___vfiprintf_internal_r+0xc34>
  809930:	83400204 	addi	r13,r16,8
  809934:	10c5883a 	add	r2,r2,r3
  809938:	80c00115 	stw	r3,4(r16)
  80993c:	81c00015 	stw	r7,0(r16)
  809940:	d8800c15 	stw	r2,48(sp)
  809944:	db800b15 	stw	r14,44(sp)
  809948:	70c00208 	cmpgei	r3,r14,8
  80994c:	1800df26 	beq	r3,zero,809ccc <___vfiprintf_internal_r+0x1040>
  809950:	10015826 	beq	r2,zero,809eb4 <___vfiprintf_internal_r+0x1228>
  809954:	d9800a04 	addi	r6,sp,40
  809958:	a80b883a 	mov	r5,r21
  80995c:	b009883a 	mov	r4,r22
  809960:	da000215 	stw	r8,8(sp)
  809964:	0808b800 	call	808b80 <__sprint_r.part.0>
  809968:	103ddd1e 	bne	r2,zero,8090e0 <___vfiprintf_internal_r+0x454>
  80996c:	da000217 	ldw	r8,8(sp)
  809970:	d9000b17 	ldw	r4,44(sp)
  809974:	d8800c17 	ldw	r2,48(sp)
  809978:	4711c83a 	sub	r8,r8,fp
  80997c:	d9801904 	addi	r6,sp,100
  809980:	21400044 	addi	r5,r4,1
  809984:	9021883a 	mov	r16,r18
  809988:	023db50e 	bge	zero,r8,809060 <___vfiprintf_internal_r+0x3d4>
  80998c:	40c00450 	cmplti	r3,r8,17
  809990:	01c02074 	movhi	r7,129
  809994:	1801441e 	bne	r3,zero,809ea8 <___vfiprintf_internal_r+0x121c>
  809998:	39c23004 	addi	r7,r7,2240
  80999c:	03400404 	movi	r13,16
  8099a0:	00000606 	br	8099bc <___vfiprintf_internal_r+0xd30>
  8099a4:	21400084 	addi	r5,r4,2
  8099a8:	84000204 	addi	r16,r16,8
  8099ac:	1809883a 	mov	r4,r3
  8099b0:	423ffc04 	addi	r8,r8,-16
  8099b4:	40c00448 	cmpgei	r3,r8,17
  8099b8:	18001a26 	beq	r3,zero,809a24 <___vfiprintf_internal_r+0xd98>
  8099bc:	20c00044 	addi	r3,r4,1
  8099c0:	10800404 	addi	r2,r2,16
  8099c4:	81c00015 	stw	r7,0(r16)
  8099c8:	83400115 	stw	r13,4(r16)
  8099cc:	d8800c15 	stw	r2,48(sp)
  8099d0:	d8c00b15 	stw	r3,44(sp)
  8099d4:	19400208 	cmpgei	r5,r3,8
  8099d8:	283ff226 	beq	r5,zero,8099a4 <___vfiprintf_internal_r+0xd18>
  8099dc:	d9800a04 	addi	r6,sp,40
  8099e0:	a80b883a 	mov	r5,r21
  8099e4:	b009883a 	mov	r4,r22
  8099e8:	10001a26 	beq	r2,zero,809a54 <___vfiprintf_internal_r+0xdc8>
  8099ec:	d9c00315 	stw	r7,12(sp)
  8099f0:	da000215 	stw	r8,8(sp)
  8099f4:	0808b800 	call	808b80 <__sprint_r.part.0>
  8099f8:	103db91e 	bne	r2,zero,8090e0 <___vfiprintf_internal_r+0x454>
  8099fc:	da000217 	ldw	r8,8(sp)
  809a00:	d9000b17 	ldw	r4,44(sp)
  809a04:	d8800c17 	ldw	r2,48(sp)
  809a08:	423ffc04 	addi	r8,r8,-16
  809a0c:	40c00448 	cmpgei	r3,r8,17
  809a10:	d9c00317 	ldw	r7,12(sp)
  809a14:	9021883a 	mov	r16,r18
  809a18:	21400044 	addi	r5,r4,1
  809a1c:	03400404 	movi	r13,16
  809a20:	183fe61e 	bne	r3,zero,8099bc <___vfiprintf_internal_r+0xd30>
  809a24:	81000204 	addi	r4,r16,8
  809a28:	1205883a 	add	r2,r2,r8
  809a2c:	81c00015 	stw	r7,0(r16)
  809a30:	82000115 	stw	r8,4(r16)
  809a34:	d8800c15 	stw	r2,48(sp)
  809a38:	d9400b15 	stw	r5,44(sp)
  809a3c:	28c00208 	cmpgei	r3,r5,8
  809a40:	1800721e 	bne	r3,zero,809c0c <___vfiprintf_internal_r+0xf80>
  809a44:	29400044 	addi	r5,r5,1
  809a48:	21800204 	addi	r6,r4,8
  809a4c:	2021883a 	mov	r16,r4
  809a50:	003d8306 	br	809060 <___vfiprintf_internal_r+0x3d4>
  809a54:	01400044 	movi	r5,1
  809a58:	0009883a 	mov	r4,zero
  809a5c:	9021883a 	mov	r16,r18
  809a60:	003fd306 	br	8099b0 <___vfiprintf_internal_r+0xd24>
  809a64:	d9800a04 	addi	r6,sp,40
  809a68:	a80b883a 	mov	r5,r21
  809a6c:	b009883a 	mov	r4,r22
  809a70:	0808b800 	call	808b80 <__sprint_r.part.0>
  809a74:	103d9426 	beq	r2,zero,8090c8 <___vfiprintf_internal_r+0x43c>
  809a78:	003d9906 	br	8090e0 <___vfiprintf_internal_r+0x454>
  809a7c:	03800044 	movi	r14,1
  809a80:	0009883a 	mov	r4,zero
  809a84:	9021883a 	mov	r16,r18
  809a88:	003f8a06 	br	8098b4 <___vfiprintf_internal_r+0xc28>
  809a8c:	10006e26 	beq	r2,zero,809c48 <___vfiprintf_internal_r+0xfbc>
  809a90:	d9800a04 	addi	r6,sp,40
  809a94:	a80b883a 	mov	r5,r21
  809a98:	b009883a 	mov	r4,r22
  809a9c:	da000615 	stw	r8,24(sp)
  809aa0:	db400315 	stw	r13,12(sp)
  809aa4:	db800215 	stw	r14,8(sp)
  809aa8:	0808b800 	call	808b80 <__sprint_r.part.0>
  809aac:	103d8c1e 	bne	r2,zero,8090e0 <___vfiprintf_internal_r+0x454>
  809ab0:	d9000b17 	ldw	r4,44(sp)
  809ab4:	d8800c17 	ldw	r2,48(sp)
  809ab8:	da000617 	ldw	r8,24(sp)
  809abc:	db400317 	ldw	r13,12(sp)
  809ac0:	db800217 	ldw	r14,8(sp)
  809ac4:	d9801904 	addi	r6,sp,100
  809ac8:	21400044 	addi	r5,r4,1
  809acc:	9021883a 	mov	r16,r18
  809ad0:	003d4606 	br	808fec <___vfiprintf_internal_r+0x360>
  809ad4:	d8800984 	addi	r2,sp,38
  809ad8:	d8801715 	stw	r2,92(sp)
  809adc:	00800084 	movi	r2,2
  809ae0:	d8801815 	stw	r2,96(sp)
  809ae4:	d9801904 	addi	r6,sp,100
  809ae8:	01400044 	movi	r5,1
  809aec:	3021883a 	mov	r16,r6
  809af0:	2809883a 	mov	r4,r5
  809af4:	21400044 	addi	r5,r4,1
  809af8:	81800204 	addi	r6,r16,8
  809afc:	003d5406 	br	809050 <___vfiprintf_internal_r+0x3c4>
  809b00:	db400017 	ldw	r13,0(sp)
  809b04:	003ea006 	br	809588 <___vfiprintf_internal_r+0x8fc>
  809b08:	19400450 	cmplti	r5,r3,17
  809b0c:	01c02074 	movhi	r7,129
  809b10:	2801011e 	bne	r5,zero,809f18 <___vfiprintf_internal_r+0x128c>
  809b14:	39c23404 	addi	r7,r7,2256
  809b18:	03c00404 	movi	r15,16
  809b1c:	00000706 	br	809b3c <___vfiprintf_internal_r+0xeb0>
  809b20:	27c00084 	addi	ra,r4,2
  809b24:	84000204 	addi	r16,r16,8
  809b28:	3009883a 	mov	r4,r6
  809b2c:	18fffc04 	addi	r3,r3,-16
  809b30:	19400448 	cmpgei	r5,r3,17
  809b34:	28002026 	beq	r5,zero,809bb8 <___vfiprintf_internal_r+0xf2c>
  809b38:	21800044 	addi	r6,r4,1
  809b3c:	10800404 	addi	r2,r2,16
  809b40:	81c00015 	stw	r7,0(r16)
  809b44:	83c00115 	stw	r15,4(r16)
  809b48:	d8800c15 	stw	r2,48(sp)
  809b4c:	d9800b15 	stw	r6,44(sp)
  809b50:	31400208 	cmpgei	r5,r6,8
  809b54:	283ff226 	beq	r5,zero,809b20 <___vfiprintf_internal_r+0xe94>
  809b58:	d9800a04 	addi	r6,sp,40
  809b5c:	a80b883a 	mov	r5,r21
  809b60:	b009883a 	mov	r4,r22
  809b64:	10001f26 	beq	r2,zero,809be4 <___vfiprintf_internal_r+0xf58>
  809b68:	d9c00815 	stw	r7,32(sp)
  809b6c:	d8c00715 	stw	r3,28(sp)
  809b70:	da000615 	stw	r8,24(sp)
  809b74:	db400315 	stw	r13,12(sp)
  809b78:	db800215 	stw	r14,8(sp)
  809b7c:	0808b800 	call	808b80 <__sprint_r.part.0>
  809b80:	103d571e 	bne	r2,zero,8090e0 <___vfiprintf_internal_r+0x454>
  809b84:	d8c00717 	ldw	r3,28(sp)
  809b88:	d9000b17 	ldw	r4,44(sp)
  809b8c:	d8800c17 	ldw	r2,48(sp)
  809b90:	18fffc04 	addi	r3,r3,-16
  809b94:	19400448 	cmpgei	r5,r3,17
  809b98:	d9c00817 	ldw	r7,32(sp)
  809b9c:	da000617 	ldw	r8,24(sp)
  809ba0:	db400317 	ldw	r13,12(sp)
  809ba4:	db800217 	ldw	r14,8(sp)
  809ba8:	9021883a 	mov	r16,r18
  809bac:	27c00044 	addi	ra,r4,1
  809bb0:	03c00404 	movi	r15,16
  809bb4:	283fe01e 	bne	r5,zero,809b38 <___vfiprintf_internal_r+0xeac>
  809bb8:	10c5883a 	add	r2,r2,r3
  809bbc:	80c00115 	stw	r3,4(r16)
  809bc0:	81c00015 	stw	r7,0(r16)
  809bc4:	d8800c15 	stw	r2,48(sp)
  809bc8:	dfc00b15 	stw	ra,44(sp)
  809bcc:	f8c00208 	cmpgei	r3,ra,8
  809bd0:	18002b1e 	bne	r3,zero,809c80 <___vfiprintf_internal_r+0xff4>
  809bd4:	84000204 	addi	r16,r16,8
  809bd8:	f9400044 	addi	r5,ra,1
  809bdc:	f809883a 	mov	r4,ra
  809be0:	003cf206 	br	808fac <___vfiprintf_internal_r+0x320>
  809be4:	0009883a 	mov	r4,zero
  809be8:	07c00044 	movi	ra,1
  809bec:	9021883a 	mov	r16,r18
  809bf0:	003fce06 	br	809b2c <___vfiprintf_internal_r+0xea0>
  809bf4:	8dc0010e 	bge	r17,r23,809bfc <___vfiprintf_internal_r+0xf70>
  809bf8:	b823883a 	mov	r17,r23
  809bfc:	d8800117 	ldw	r2,4(sp)
  809c00:	1445883a 	add	r2,r2,r17
  809c04:	d8800115 	stw	r2,4(sp)
  809c08:	003d2f06 	br	8090c8 <___vfiprintf_internal_r+0x43c>
  809c0c:	10007326 	beq	r2,zero,809ddc <___vfiprintf_internal_r+0x1150>
  809c10:	d9800a04 	addi	r6,sp,40
  809c14:	a80b883a 	mov	r5,r21
  809c18:	b009883a 	mov	r4,r22
  809c1c:	0808b800 	call	808b80 <__sprint_r.part.0>
  809c20:	103d2f1e 	bne	r2,zero,8090e0 <___vfiprintf_internal_r+0x454>
  809c24:	d9400b17 	ldw	r5,44(sp)
  809c28:	d8800c17 	ldw	r2,48(sp)
  809c2c:	d9801904 	addi	r6,sp,100
  809c30:	29400044 	addi	r5,r5,1
  809c34:	9021883a 	mov	r16,r18
  809c38:	003d0906 	br	809060 <___vfiprintf_internal_r+0x3d4>
  809c3c:	d8000b15 	stw	zero,44(sp)
  809c40:	9021883a 	mov	r16,r18
  809c44:	003d7806 	br	809228 <___vfiprintf_internal_r+0x59c>
  809c48:	7000441e 	bne	r14,zero,809d5c <___vfiprintf_internal_r+0x10d0>
  809c4c:	0009883a 	mov	r4,zero
  809c50:	d9801904 	addi	r6,sp,100
  809c54:	01400044 	movi	r5,1
  809c58:	9021883a 	mov	r16,r18
  809c5c:	003cfc06 	br	809050 <___vfiprintf_internal_r+0x3c4>
  809c60:	d9801904 	addi	r6,sp,100
  809c64:	01400044 	movi	r5,1
  809c68:	0009883a 	mov	r4,zero
  809c6c:	9021883a 	mov	r16,r18
  809c70:	003cf706 	br	809050 <___vfiprintf_internal_r+0x3c4>
  809c74:	0039883a 	mov	fp,zero
  809c78:	9027883a 	mov	r19,r18
  809c7c:	003deb06 	br	80942c <___vfiprintf_internal_r+0x7a0>
  809c80:	10004a26 	beq	r2,zero,809dac <___vfiprintf_internal_r+0x1120>
  809c84:	d9800a04 	addi	r6,sp,40
  809c88:	a80b883a 	mov	r5,r21
  809c8c:	b009883a 	mov	r4,r22
  809c90:	da000615 	stw	r8,24(sp)
  809c94:	db400315 	stw	r13,12(sp)
  809c98:	db800215 	stw	r14,8(sp)
  809c9c:	0808b800 	call	808b80 <__sprint_r.part.0>
  809ca0:	103d0f1e 	bne	r2,zero,8090e0 <___vfiprintf_internal_r+0x454>
  809ca4:	d9000b17 	ldw	r4,44(sp)
  809ca8:	d8800c17 	ldw	r2,48(sp)
  809cac:	da000617 	ldw	r8,24(sp)
  809cb0:	db400317 	ldw	r13,12(sp)
  809cb4:	db800217 	ldw	r14,8(sp)
  809cb8:	9021883a 	mov	r16,r18
  809cbc:	21400044 	addi	r5,r4,1
  809cc0:	003cba06 	br	808fac <___vfiprintf_internal_r+0x320>
  809cc4:	9027883a 	mov	r19,r18
  809cc8:	003dd806 	br	80942c <___vfiprintf_internal_r+0x7a0>
  809ccc:	71400044 	addi	r5,r14,1
  809cd0:	69800204 	addi	r6,r13,8
  809cd4:	7009883a 	mov	r4,r14
  809cd8:	6821883a 	mov	r16,r13
  809cdc:	003cde06 	br	809058 <___vfiprintf_internal_r+0x3cc>
  809ce0:	00c00c04 	movi	r3,48
  809ce4:	d88009c5 	stb	r2,39(sp)
  809ce8:	d8c00985 	stb	r3,38(sp)
  809cec:	6b400094 	ori	r13,r13,2
  809cf0:	00800084 	movi	r2,2
  809cf4:	003d2e06 	br	8091b0 <___vfiprintf_internal_r+0x524>
  809cf8:	25c00017 	ldw	r23,0(r4)
  809cfc:	0039883a 	mov	fp,zero
  809d00:	d8c00415 	stw	r3,16(sp)
  809d04:	0005883a 	mov	r2,zero
  809d08:	003d2906 	br	8091b0 <___vfiprintf_internal_r+0x524>
  809d0c:	d9400117 	ldw	r5,4(sp)
  809d10:	d9000415 	stw	r4,16(sp)
  809d14:	2805d7fa 	srai	r2,r5,31
  809d18:	19400015 	stw	r5,0(r3)
  809d1c:	18800115 	stw	r2,4(r3)
  809d20:	003c0306 	br	808d30 <___vfiprintf_internal_r+0xa4>
  809d24:	25c00017 	ldw	r23,0(r4)
  809d28:	d8c00415 	stw	r3,16(sp)
  809d2c:	b839d7fa 	srai	fp,r23,31
  809d30:	e005883a 	mov	r2,fp
  809d34:	003da706 	br	8093d4 <___vfiprintf_internal_r+0x748>
  809d38:	2dc00017 	ldw	r23,0(r5)
  809d3c:	0039883a 	mov	fp,zero
  809d40:	d9000415 	stw	r4,16(sp)
  809d44:	003def06 	br	809504 <___vfiprintf_internal_r+0x878>
  809d48:	25c00017 	ldw	r23,0(r4)
  809d4c:	0039883a 	mov	fp,zero
  809d50:	d8c00415 	stw	r3,16(sp)
  809d54:	00800044 	movi	r2,1
  809d58:	003d1506 	br	8091b0 <___vfiprintf_internal_r+0x524>
  809d5c:	d8800984 	addi	r2,sp,38
  809d60:	d8801715 	stw	r2,92(sp)
  809d64:	00800084 	movi	r2,2
  809d68:	d8801815 	stw	r2,96(sp)
  809d6c:	dc001904 	addi	r16,sp,100
  809d70:	01000044 	movi	r4,1
  809d74:	003f5f06 	br	809af4 <___vfiprintf_internal_r+0xe68>
  809d78:	0463c83a 	sub	r17,zero,r17
  809d7c:	d8c00415 	stw	r3,16(sp)
  809d80:	003e3606 	br	80965c <___vfiprintf_internal_r+0x9d0>
  809d84:	9809883a 	mov	r4,r19
  809d88:	d8c00215 	stw	r3,8(sp)
  809d8c:	db400015 	stw	r13,0(sp)
  809d90:	08018300 	call	801830 <strlen>
  809d94:	d8c00217 	ldw	r3,8(sp)
  809d98:	db400017 	ldw	r13,0(sp)
  809d9c:	1039883a 	mov	fp,r2
  809da0:	102f883a 	mov	r23,r2
  809da4:	d8c00415 	stw	r3,16(sp)
  809da8:	003c7106 	br	808f70 <___vfiprintf_internal_r+0x2e4>
  809dac:	d8c00947 	ldb	r3,37(sp)
  809db0:	1800451e 	bne	r3,zero,809ec8 <___vfiprintf_internal_r+0x123c>
  809db4:	703f471e 	bne	r14,zero,809ad4 <___vfiprintf_internal_r+0xe48>
  809db8:	0009883a 	mov	r4,zero
  809dbc:	d9801904 	addi	r6,sp,100
  809dc0:	01400044 	movi	r5,1
  809dc4:	9021883a 	mov	r16,r18
  809dc8:	003ca306 	br	809058 <___vfiprintf_internal_r+0x3cc>
  809dcc:	d8800117 	ldw	r2,4(sp)
  809dd0:	18800015 	stw	r2,0(r3)
  809dd4:	d9000415 	stw	r4,16(sp)
  809dd8:	003bd506 	br	808d30 <___vfiprintf_internal_r+0xa4>
  809ddc:	00c00044 	movi	r3,1
  809de0:	e005883a 	mov	r2,fp
  809de4:	dcc01715 	stw	r19,92(sp)
  809de8:	df001815 	stw	fp,96(sp)
  809dec:	df000c15 	stw	fp,48(sp)
  809df0:	d8c00b15 	stw	r3,44(sp)
  809df4:	d9801904 	addi	r6,sp,100
  809df8:	003ca806 	br	80909c <___vfiprintf_internal_r+0x410>
  809dfc:	10c00060 	cmpeqi	r3,r2,1
  809e00:	db400017 	ldw	r13,0(sp)
  809e04:	183de226 	beq	r3,zero,809590 <___vfiprintf_internal_r+0x904>
  809e08:	003d8306 	br	809418 <___vfiprintf_internal_r+0x78c>
  809e0c:	a0800043 	ldbu	r2,1(r20)
  809e10:	6b400814 	ori	r13,r13,32
  809e14:	a5000044 	addi	r20,r20,1
  809e18:	10803fcc 	andi	r2,r2,255
  809e1c:	1080201c 	xori	r2,r2,128
  809e20:	10bfe004 	addi	r2,r2,-128
  809e24:	003bda06 	br	808d90 <___vfiprintf_internal_r+0x104>
  809e28:	408001f0 	cmpltui	r2,r8,7
  809e2c:	4039883a 	mov	fp,r8
  809e30:	1000011e 	bne	r2,zero,809e38 <___vfiprintf_internal_r+0x11ac>
  809e34:	07000184 	movi	fp,6
  809e38:	04c02074 	movhi	r19,129
  809e3c:	e02f883a 	mov	r23,fp
  809e40:	d8c00415 	stw	r3,16(sp)
  809e44:	9cc1b304 	addi	r19,r19,1740
  809e48:	003c4906 	br	808f70 <___vfiprintf_internal_r+0x2e4>
  809e4c:	d8800417 	ldw	r2,16(sp)
  809e50:	0039883a 	mov	fp,zero
  809e54:	d8c00415 	stw	r3,16(sp)
  809e58:	15c00017 	ldw	r23,0(r2)
  809e5c:	0005883a 	mov	r2,zero
  809e60:	003cd306 	br	8091b0 <___vfiprintf_internal_r+0x524>
  809e64:	d8800417 	ldw	r2,16(sp)
  809e68:	0039883a 	mov	fp,zero
  809e6c:	d8c00415 	stw	r3,16(sp)
  809e70:	15c00017 	ldw	r23,0(r2)
  809e74:	00800044 	movi	r2,1
  809e78:	003ccd06 	br	8091b0 <___vfiprintf_internal_r+0x524>
  809e7c:	d8c00417 	ldw	r3,16(sp)
  809e80:	0039883a 	mov	fp,zero
  809e84:	d9000415 	stw	r4,16(sp)
  809e88:	1dc00017 	ldw	r23,0(r3)
  809e8c:	003d9d06 	br	809504 <___vfiprintf_internal_r+0x878>
  809e90:	d8800417 	ldw	r2,16(sp)
  809e94:	d8c00415 	stw	r3,16(sp)
  809e98:	15c00017 	ldw	r23,0(r2)
  809e9c:	b839d7fa 	srai	fp,r23,31
  809ea0:	e005883a 	mov	r2,fp
  809ea4:	003d4b06 	br	8093d4 <___vfiprintf_internal_r+0x748>
  809ea8:	3009883a 	mov	r4,r6
  809eac:	39c23004 	addi	r7,r7,2240
  809eb0:	003edd06 	br	809a28 <___vfiprintf_internal_r+0xd9c>
  809eb4:	d9801904 	addi	r6,sp,100
  809eb8:	01400044 	movi	r5,1
  809ebc:	0009883a 	mov	r4,zero
  809ec0:	9021883a 	mov	r16,r18
  809ec4:	003c6406 	br	809058 <___vfiprintf_internal_r+0x3cc>
  809ec8:	d8800944 	addi	r2,sp,37
  809ecc:	d8801715 	stw	r2,92(sp)
  809ed0:	00800044 	movi	r2,1
  809ed4:	d8801815 	stw	r2,96(sp)
  809ed8:	d9801904 	addi	r6,sp,100
  809edc:	01400044 	movi	r5,1
  809ee0:	003c3e06 	br	808fdc <___vfiprintf_internal_r+0x350>
  809ee4:	d9800945 	stb	r6,37(sp)
  809ee8:	003c1b06 	br	808f58 <___vfiprintf_internal_r+0x2cc>
  809eec:	d9800a04 	addi	r6,sp,40
  809ef0:	a80b883a 	mov	r5,r21
  809ef4:	b009883a 	mov	r4,r22
  809ef8:	0808b800 	call	808b80 <__sprint_r.part.0>
  809efc:	003c7806 	br	8090e0 <___vfiprintf_internal_r+0x454>
  809f00:	402f883a 	mov	r23,r8
  809f04:	d8c00415 	stw	r3,16(sp)
  809f08:	4039883a 	mov	fp,r8
  809f0c:	003c1806 	br	808f70 <___vfiprintf_internal_r+0x2e4>
  809f10:	d9800945 	stb	r6,37(sp)
  809f14:	003df406 	br	8096e8 <___vfiprintf_internal_r+0xa5c>
  809f18:	303f883a 	mov	ra,r6
  809f1c:	39c23404 	addi	r7,r7,2256
  809f20:	003f2506 	br	809bb8 <___vfiprintf_internal_r+0xf2c>
  809f24:	d9800945 	stb	r6,37(sp)
  809f28:	003d7e06 	br	809524 <___vfiprintf_internal_r+0x898>
  809f2c:	d9800945 	stb	r6,37(sp)
  809f30:	003d4c06 	br	809464 <___vfiprintf_internal_r+0x7d8>
  809f34:	d9800945 	stb	r6,37(sp)
  809f38:	003d1e06 	br	8093b4 <___vfiprintf_internal_r+0x728>
  809f3c:	d9800945 	stb	r6,37(sp)
  809f40:	003d6606 	br	8094dc <___vfiprintf_internal_r+0x850>
  809f44:	21400044 	addi	r5,r4,1
  809f48:	39c23404 	addi	r7,r7,2256
  809f4c:	003d0606 	br	809368 <___vfiprintf_internal_r+0x6dc>
  809f50:	01c02074 	movhi	r7,129
  809f54:	301b883a 	mov	r13,r6
  809f58:	281d883a 	mov	r14,r5
  809f5c:	39c23004 	addi	r7,r7,2240
  809f60:	003e7406 	br	809934 <___vfiprintf_internal_r+0xca8>
  809f64:	00bfffc4 	movi	r2,-1
  809f68:	d8800115 	stw	r2,4(sp)
  809f6c:	003c5f06 	br	8090ec <___vfiprintf_internal_r+0x460>
  809f70:	d8800417 	ldw	r2,16(sp)
  809f74:	12000017 	ldw	r8,0(r2)
  809f78:	11000104 	addi	r4,r2,4
  809f7c:	4000010e 	bge	r8,zero,809f84 <___vfiprintf_internal_r+0x12f8>
  809f80:	023fffc4 	movi	r8,-1
  809f84:	a0800043 	ldbu	r2,1(r20)
  809f88:	d9000415 	stw	r4,16(sp)
  809f8c:	1829883a 	mov	r20,r3
  809f90:	10803fcc 	andi	r2,r2,255
  809f94:	1080201c 	xori	r2,r2,128
  809f98:	10bfe004 	addi	r2,r2,-128
  809f9c:	003b7c06 	br	808d90 <___vfiprintf_internal_r+0x104>

00809fa0 <__vfiprintf_internal>:
  809fa0:	00c02074 	movhi	r3,129
  809fa4:	2005883a 	mov	r2,r4
  809fa8:	1909e117 	ldw	r4,10116(r3)
  809fac:	300f883a 	mov	r7,r6
  809fb0:	280d883a 	mov	r6,r5
  809fb4:	100b883a 	mov	r5,r2
  809fb8:	0808c8c1 	jmpi	808c8c <___vfiprintf_internal_r>

00809fbc <__sbprintf>:
  809fbc:	2880030b 	ldhu	r2,12(r5)
  809fc0:	2b001917 	ldw	r12,100(r5)
  809fc4:	2ac0038b 	ldhu	r11,14(r5)
  809fc8:	2a800717 	ldw	r10,28(r5)
  809fcc:	2a400917 	ldw	r9,36(r5)
  809fd0:	defee204 	addi	sp,sp,-1144
  809fd4:	da001a04 	addi	r8,sp,104
  809fd8:	00c10004 	movi	r3,1024
  809fdc:	dc011a15 	stw	r16,1128(sp)
  809fe0:	10bfff4c 	andi	r2,r2,65533
  809fe4:	2821883a 	mov	r16,r5
  809fe8:	d80b883a 	mov	r5,sp
  809fec:	dc811c15 	stw	r18,1136(sp)
  809ff0:	dc411b15 	stw	r17,1132(sp)
  809ff4:	dfc11d15 	stw	ra,1140(sp)
  809ff8:	2025883a 	mov	r18,r4
  809ffc:	d880030d 	sth	r2,12(sp)
  80a000:	db001915 	stw	r12,100(sp)
  80a004:	dac0038d 	sth	r11,14(sp)
  80a008:	da800715 	stw	r10,28(sp)
  80a00c:	da400915 	stw	r9,36(sp)
  80a010:	da000015 	stw	r8,0(sp)
  80a014:	da000415 	stw	r8,16(sp)
  80a018:	d8c00215 	stw	r3,8(sp)
  80a01c:	d8c00515 	stw	r3,20(sp)
  80a020:	d8000615 	stw	zero,24(sp)
  80a024:	0808c8c0 	call	808c8c <___vfiprintf_internal_r>
  80a028:	1023883a 	mov	r17,r2
  80a02c:	10000d0e 	bge	r2,zero,80a064 <__sbprintf+0xa8>
  80a030:	d880030b 	ldhu	r2,12(sp)
  80a034:	1080100c 	andi	r2,r2,64
  80a038:	10000326 	beq	r2,zero,80a048 <__sbprintf+0x8c>
  80a03c:	8080030b 	ldhu	r2,12(r16)
  80a040:	10801014 	ori	r2,r2,64
  80a044:	8080030d 	sth	r2,12(r16)
  80a048:	8805883a 	mov	r2,r17
  80a04c:	dfc11d17 	ldw	ra,1140(sp)
  80a050:	dc811c17 	ldw	r18,1136(sp)
  80a054:	dc411b17 	ldw	r17,1132(sp)
  80a058:	dc011a17 	ldw	r16,1128(sp)
  80a05c:	dec11e04 	addi	sp,sp,1144
  80a060:	f800283a 	ret
  80a064:	d80b883a 	mov	r5,sp
  80a068:	9009883a 	mov	r4,r18
  80a06c:	08057840 	call	805784 <_fflush_r>
  80a070:	103fef26 	beq	r2,zero,80a030 <__sbprintf+0x74>
  80a074:	047fffc4 	movi	r17,-1
  80a078:	003fed06 	br	80a030 <__sbprintf+0x74>

0080a07c <_write_r>:
  80a07c:	2807883a 	mov	r3,r5
  80a080:	defffe04 	addi	sp,sp,-8
  80a084:	dc000015 	stw	r16,0(sp)
  80a088:	300b883a 	mov	r5,r6
  80a08c:	00802074 	movhi	r2,129
  80a090:	380d883a 	mov	r6,r7
  80a094:	2021883a 	mov	r16,r4
  80a098:	1809883a 	mov	r4,r3
  80a09c:	dfc00115 	stw	ra,4(sp)
  80a0a0:	1010e715 	stw	zero,17308(r2)
  80a0a4:	080e8240 	call	80e824 <write>
  80a0a8:	10ffffd8 	cmpnei	r3,r2,-1
  80a0ac:	18000426 	beq	r3,zero,80a0c0 <_write_r+0x44>
  80a0b0:	dfc00117 	ldw	ra,4(sp)
  80a0b4:	dc000017 	ldw	r16,0(sp)
  80a0b8:	dec00204 	addi	sp,sp,8
  80a0bc:	f800283a 	ret
  80a0c0:	00c02074 	movhi	r3,129
  80a0c4:	18d0e717 	ldw	r3,17308(r3)
  80a0c8:	183ff926 	beq	r3,zero,80a0b0 <_write_r+0x34>
  80a0cc:	80c00015 	stw	r3,0(r16)
  80a0d0:	dfc00117 	ldw	ra,4(sp)
  80a0d4:	dc000017 	ldw	r16,0(sp)
  80a0d8:	dec00204 	addi	sp,sp,8
  80a0dc:	f800283a 	ret

0080a0e0 <_close_r>:
  80a0e0:	defffe04 	addi	sp,sp,-8
  80a0e4:	dc000015 	stw	r16,0(sp)
  80a0e8:	00802074 	movhi	r2,129
  80a0ec:	2021883a 	mov	r16,r4
  80a0f0:	2809883a 	mov	r4,r5
  80a0f4:	dfc00115 	stw	ra,4(sp)
  80a0f8:	1010e715 	stw	zero,17308(r2)
  80a0fc:	080dc580 	call	80dc58 <close>
  80a100:	10ffffd8 	cmpnei	r3,r2,-1
  80a104:	18000426 	beq	r3,zero,80a118 <_close_r+0x38>
  80a108:	dfc00117 	ldw	ra,4(sp)
  80a10c:	dc000017 	ldw	r16,0(sp)
  80a110:	dec00204 	addi	sp,sp,8
  80a114:	f800283a 	ret
  80a118:	00c02074 	movhi	r3,129
  80a11c:	18d0e717 	ldw	r3,17308(r3)
  80a120:	183ff926 	beq	r3,zero,80a108 <_close_r+0x28>
  80a124:	80c00015 	stw	r3,0(r16)
  80a128:	dfc00117 	ldw	ra,4(sp)
  80a12c:	dc000017 	ldw	r16,0(sp)
  80a130:	dec00204 	addi	sp,sp,8
  80a134:	f800283a 	ret

0080a138 <__assert_func>:
  80a138:	00802074 	movhi	r2,129
  80a13c:	1209e117 	ldw	r8,10116(r2)
  80a140:	defffc04 	addi	sp,sp,-16
  80a144:	3807883a 	mov	r3,r7
  80a148:	3005883a 	mov	r2,r6
  80a14c:	dfc00315 	stw	ra,12(sp)
  80a150:	42400317 	ldw	r9,12(r8)
  80a154:	200f883a 	mov	r7,r4
  80a158:	2811883a 	mov	r8,r5
  80a15c:	180d883a 	mov	r6,r3
  80a160:	10000a26 	beq	r2,zero,80a18c <__assert_func+0x54>
  80a164:	00c02074 	movhi	r3,129
  80a168:	18c23804 	addi	r3,r3,2272
  80a16c:	01402074 	movhi	r5,129
  80a170:	29423c04 	addi	r5,r5,2288
  80a174:	4809883a 	mov	r4,r9
  80a178:	d8c00115 	stw	r3,4(sp)
  80a17c:	da000015 	stw	r8,0(sp)
  80a180:	d8800215 	stw	r2,8(sp)
  80a184:	080a39c0 	call	80a39c <fiprintf>
  80a188:	080ab880 	call	80ab88 <abort>
  80a18c:	00c02074 	movhi	r3,129
  80a190:	18c16004 	addi	r3,r3,1408
  80a194:	1805883a 	mov	r2,r3
  80a198:	003ff406 	br	80a16c <__assert_func+0x34>

0080a19c <__assert>:
  80a19c:	deffff04 	addi	sp,sp,-4
  80a1a0:	300f883a 	mov	r7,r6
  80a1a4:	000d883a 	mov	r6,zero
  80a1a8:	dfc00015 	stw	ra,0(sp)
  80a1ac:	080a1380 	call	80a138 <__assert_func>

0080a1b0 <_calloc_r>:
  80a1b0:	defffe04 	addi	sp,sp,-8
  80a1b4:	dc000015 	stw	r16,0(sp)
  80a1b8:	2021883a 	mov	r16,r4
  80a1bc:	2809883a 	mov	r4,r5
  80a1c0:	300b883a 	mov	r5,r6
  80a1c4:	dfc00115 	stw	ra,4(sp)
  80a1c8:	08016c40 	call	8016c4 <__mulsi3>
  80a1cc:	8009883a 	mov	r4,r16
  80a1d0:	100b883a 	mov	r5,r2
  80a1d4:	080677c0 	call	80677c <_malloc_r>
  80a1d8:	1009883a 	mov	r4,r2
  80a1dc:	10000c26 	beq	r2,zero,80a210 <_calloc_r+0x60>
  80a1e0:	11bfff17 	ldw	r6,-4(r2)
  80a1e4:	00bfff04 	movi	r2,-4
  80a1e8:	308c703a 	and	r6,r6,r2
  80a1ec:	31bfff04 	addi	r6,r6,-4
  80a1f0:	30800968 	cmpgeui	r2,r6,37
  80a1f4:	1000151e 	bne	r2,zero,80a24c <_calloc_r+0x9c>
  80a1f8:	30800530 	cmpltui	r2,r6,20
  80a1fc:	10000926 	beq	r2,zero,80a224 <_calloc_r+0x74>
  80a200:	2005883a 	mov	r2,r4
  80a204:	10000015 	stw	zero,0(r2)
  80a208:	10000115 	stw	zero,4(r2)
  80a20c:	10000215 	stw	zero,8(r2)
  80a210:	2005883a 	mov	r2,r4
  80a214:	dfc00117 	ldw	ra,4(sp)
  80a218:	dc000017 	ldw	r16,0(sp)
  80a21c:	dec00204 	addi	sp,sp,8
  80a220:	f800283a 	ret
  80a224:	20000015 	stw	zero,0(r4)
  80a228:	20000115 	stw	zero,4(r4)
  80a22c:	30800728 	cmpgeui	r2,r6,28
  80a230:	10000a26 	beq	r2,zero,80a25c <_calloc_r+0xac>
  80a234:	20000215 	stw	zero,8(r4)
  80a238:	20000315 	stw	zero,12(r4)
  80a23c:	31800920 	cmpeqi	r6,r6,36
  80a240:	3000081e 	bne	r6,zero,80a264 <_calloc_r+0xb4>
  80a244:	20800404 	addi	r2,r4,16
  80a248:	003fee06 	br	80a204 <_calloc_r+0x54>
  80a24c:	000b883a 	mov	r5,zero
  80a250:	080725c0 	call	80725c <memset>
  80a254:	1009883a 	mov	r4,r2
  80a258:	003fed06 	br	80a210 <_calloc_r+0x60>
  80a25c:	20800204 	addi	r2,r4,8
  80a260:	003fe806 	br	80a204 <_calloc_r+0x54>
  80a264:	20000415 	stw	zero,16(r4)
  80a268:	20800604 	addi	r2,r4,24
  80a26c:	20000515 	stw	zero,20(r4)
  80a270:	003fe406 	br	80a204 <_calloc_r+0x54>

0080a274 <_fclose_r>:
  80a274:	defffc04 	addi	sp,sp,-16
  80a278:	dfc00315 	stw	ra,12(sp)
  80a27c:	dc800215 	stw	r18,8(sp)
  80a280:	dc400115 	stw	r17,4(sp)
  80a284:	dc000015 	stw	r16,0(sp)
  80a288:	28000726 	beq	r5,zero,80a2a8 <_fclose_r+0x34>
  80a28c:	2821883a 	mov	r16,r5
  80a290:	2023883a 	mov	r17,r4
  80a294:	20000226 	beq	r4,zero,80a2a0 <_fclose_r+0x2c>
  80a298:	20800e17 	ldw	r2,56(r4)
  80a29c:	10002726 	beq	r2,zero,80a33c <_fclose_r+0xc8>
  80a2a0:	8080030f 	ldh	r2,12(r16)
  80a2a4:	1000081e 	bne	r2,zero,80a2c8 <_fclose_r+0x54>
  80a2a8:	0025883a 	mov	r18,zero
  80a2ac:	9005883a 	mov	r2,r18
  80a2b0:	dfc00317 	ldw	ra,12(sp)
  80a2b4:	dc800217 	ldw	r18,8(sp)
  80a2b8:	dc400117 	ldw	r17,4(sp)
  80a2bc:	dc000017 	ldw	r16,0(sp)
  80a2c0:	dec00404 	addi	sp,sp,16
  80a2c4:	f800283a 	ret
  80a2c8:	800b883a 	mov	r5,r16
  80a2cc:	8809883a 	mov	r4,r17
  80a2d0:	080555c0 	call	80555c <__sflush_r>
  80a2d4:	80c00b17 	ldw	r3,44(r16)
  80a2d8:	1025883a 	mov	r18,r2
  80a2dc:	18000426 	beq	r3,zero,80a2f0 <_fclose_r+0x7c>
  80a2e0:	81400717 	ldw	r5,28(r16)
  80a2e4:	8809883a 	mov	r4,r17
  80a2e8:	183ee83a 	callr	r3
  80a2ec:	10001716 	blt	r2,zero,80a34c <_fclose_r+0xd8>
  80a2f0:	8080030b 	ldhu	r2,12(r16)
  80a2f4:	1080200c 	andi	r2,r2,128
  80a2f8:	1000181e 	bne	r2,zero,80a35c <_fclose_r+0xe8>
  80a2fc:	81400c17 	ldw	r5,48(r16)
  80a300:	28000526 	beq	r5,zero,80a318 <_fclose_r+0xa4>
  80a304:	80801004 	addi	r2,r16,64
  80a308:	28800226 	beq	r5,r2,80a314 <_fclose_r+0xa0>
  80a30c:	8809883a 	mov	r4,r17
  80a310:	0805c7c0 	call	805c7c <_free_r>
  80a314:	80000c15 	stw	zero,48(r16)
  80a318:	81401117 	ldw	r5,68(r16)
  80a31c:	28000326 	beq	r5,zero,80a32c <_fclose_r+0xb8>
  80a320:	8809883a 	mov	r4,r17
  80a324:	0805c7c0 	call	805c7c <_free_r>
  80a328:	80001115 	stw	zero,68(r16)
  80a32c:	0805b280 	call	805b28 <__sfp_lock_acquire>
  80a330:	8000030d 	sth	zero,12(r16)
  80a334:	0805b2c0 	call	805b2c <__sfp_lock_release>
  80a338:	003fdc06 	br	80a2ac <_fclose_r+0x38>
  80a33c:	0805b180 	call	805b18 <__sinit>
  80a340:	8080030f 	ldh	r2,12(r16)
  80a344:	103fd826 	beq	r2,zero,80a2a8 <_fclose_r+0x34>
  80a348:	003fdf06 	br	80a2c8 <_fclose_r+0x54>
  80a34c:	8080030b 	ldhu	r2,12(r16)
  80a350:	04bfffc4 	movi	r18,-1
  80a354:	1080200c 	andi	r2,r2,128
  80a358:	103fe826 	beq	r2,zero,80a2fc <_fclose_r+0x88>
  80a35c:	81400417 	ldw	r5,16(r16)
  80a360:	8809883a 	mov	r4,r17
  80a364:	0805c7c0 	call	805c7c <_free_r>
  80a368:	003fe406 	br	80a2fc <_fclose_r+0x88>

0080a36c <fclose>:
  80a36c:	00802074 	movhi	r2,129
  80a370:	200b883a 	mov	r5,r4
  80a374:	1109e117 	ldw	r4,10116(r2)
  80a378:	080a2741 	jmpi	80a274 <_fclose_r>

0080a37c <_fiprintf_r>:
  80a37c:	defffe04 	addi	sp,sp,-8
  80a380:	dfc00015 	stw	ra,0(sp)
  80a384:	d9c00115 	stw	r7,4(sp)
  80a388:	d9c00104 	addi	r7,sp,4
  80a38c:	080a8f40 	call	80a8f4 <_vfiprintf_r>
  80a390:	dfc00017 	ldw	ra,0(sp)
  80a394:	dec00204 	addi	sp,sp,8
  80a398:	f800283a 	ret

0080a39c <fiprintf>:
  80a39c:	defffd04 	addi	sp,sp,-12
  80a3a0:	2005883a 	mov	r2,r4
  80a3a4:	dfc00015 	stw	ra,0(sp)
  80a3a8:	d9800115 	stw	r6,4(sp)
  80a3ac:	d9c00215 	stw	r7,8(sp)
  80a3b0:	00c02074 	movhi	r3,129
  80a3b4:	1909e117 	ldw	r4,10116(r3)
  80a3b8:	280d883a 	mov	r6,r5
  80a3bc:	d9c00104 	addi	r7,sp,4
  80a3c0:	100b883a 	mov	r5,r2
  80a3c4:	080a8f40 	call	80a8f4 <_vfiprintf_r>
  80a3c8:	dfc00017 	ldw	ra,0(sp)
  80a3cc:	dec00304 	addi	sp,sp,12
  80a3d0:	f800283a 	ret

0080a3d4 <__fputwc>:
  80a3d4:	defff904 	addi	sp,sp,-28
  80a3d8:	dcc00415 	stw	r19,16(sp)
  80a3dc:	dc800315 	stw	r18,12(sp)
  80a3e0:	dc000115 	stw	r16,4(sp)
  80a3e4:	dfc00615 	stw	ra,24(sp)
  80a3e8:	dd000515 	stw	r20,20(sp)
  80a3ec:	dc400215 	stw	r17,8(sp)
  80a3f0:	2025883a 	mov	r18,r4
  80a3f4:	2827883a 	mov	r19,r5
  80a3f8:	3021883a 	mov	r16,r6
  80a3fc:	080a7000 	call	80a700 <__locale_mb_cur_max>
  80a400:	10800058 	cmpnei	r2,r2,1
  80a404:	1000071e 	bne	r2,zero,80a424 <__fputwc+0x50>
  80a408:	98bfffc4 	addi	r2,r19,-1
  80a40c:	10803fe8 	cmpgeui	r2,r2,255
  80a410:	1000041e 	bne	r2,zero,80a424 <__fputwc+0x50>
  80a414:	980b883a 	mov	r5,r19
  80a418:	dcc000c5 	stb	r19,3(sp)
  80a41c:	05000044 	movi	r20,1
  80a420:	00000a06 	br	80a44c <__fputwc+0x78>
  80a424:	81c01704 	addi	r7,r16,92
  80a428:	980d883a 	mov	r6,r19
  80a42c:	d94000c4 	addi	r5,sp,3
  80a430:	9009883a 	mov	r4,r18
  80a434:	080aa580 	call	80aa58 <_wcrtomb_r>
  80a438:	1029883a 	mov	r20,r2
  80a43c:	10bfffd8 	cmpnei	r2,r2,-1
  80a440:	10003926 	beq	r2,zero,80a528 <__fputwc+0x154>
  80a444:	a0001f26 	beq	r20,zero,80a4c4 <__fputwc+0xf0>
  80a448:	d94000c3 	ldbu	r5,3(sp)
  80a44c:	0023883a 	mov	r17,zero
  80a450:	00000a06 	br	80a47c <__fputwc+0xa8>
  80a454:	80800017 	ldw	r2,0(r16)
  80a458:	11400005 	stb	r5,0(r2)
  80a45c:	80c00017 	ldw	r3,0(r16)
  80a460:	18c00044 	addi	r3,r3,1
  80a464:	80c00015 	stw	r3,0(r16)
  80a468:	8c400044 	addi	r17,r17,1
  80a46c:	d88000c4 	addi	r2,sp,3
  80a470:	1447883a 	add	r3,r2,r17
  80a474:	8d00132e 	bgeu	r17,r20,80a4c4 <__fputwc+0xf0>
  80a478:	19400003 	ldbu	r5,0(r3)
  80a47c:	80c00217 	ldw	r3,8(r16)
  80a480:	18ffffc4 	addi	r3,r3,-1
  80a484:	80c00215 	stw	r3,8(r16)
  80a488:	183ff20e 	bge	r3,zero,80a454 <__fputwc+0x80>
  80a48c:	80800617 	ldw	r2,24(r16)
  80a490:	18801616 	blt	r3,r2,80a4ec <__fputwc+0x118>
  80a494:	80800017 	ldw	r2,0(r16)
  80a498:	11400005 	stb	r5,0(r2)
  80a49c:	80800017 	ldw	r2,0(r16)
  80a4a0:	10c00003 	ldbu	r3,0(r2)
  80a4a4:	10800044 	addi	r2,r2,1
  80a4a8:	18c002a0 	cmpeqi	r3,r3,10
  80a4ac:	1800181e 	bne	r3,zero,80a510 <__fputwc+0x13c>
  80a4b0:	80800015 	stw	r2,0(r16)
  80a4b4:	8c400044 	addi	r17,r17,1
  80a4b8:	d88000c4 	addi	r2,sp,3
  80a4bc:	1447883a 	add	r3,r2,r17
  80a4c0:	8d3fed36 	bltu	r17,r20,80a478 <__fputwc+0xa4>
  80a4c4:	9829883a 	mov	r20,r19
  80a4c8:	a005883a 	mov	r2,r20
  80a4cc:	dfc00617 	ldw	ra,24(sp)
  80a4d0:	dd000517 	ldw	r20,20(sp)
  80a4d4:	dcc00417 	ldw	r19,16(sp)
  80a4d8:	dc800317 	ldw	r18,12(sp)
  80a4dc:	dc400217 	ldw	r17,8(sp)
  80a4e0:	dc000117 	ldw	r16,4(sp)
  80a4e4:	dec00704 	addi	sp,sp,28
  80a4e8:	f800283a 	ret
  80a4ec:	29403fcc 	andi	r5,r5,255
  80a4f0:	800d883a 	mov	r6,r16
  80a4f4:	9009883a 	mov	r4,r18
  80a4f8:	080a8f80 	call	80a8f8 <__swbuf_r>
  80a4fc:	10ffffe0 	cmpeqi	r3,r2,-1
  80a500:	18c03fcc 	andi	r3,r3,255
  80a504:	183fd826 	beq	r3,zero,80a468 <__fputwc+0x94>
  80a508:	053fffc4 	movi	r20,-1
  80a50c:	003fee06 	br	80a4c8 <__fputwc+0xf4>
  80a510:	800d883a 	mov	r6,r16
  80a514:	01400284 	movi	r5,10
  80a518:	9009883a 	mov	r4,r18
  80a51c:	080a8f80 	call	80a8f8 <__swbuf_r>
  80a520:	10ffffe0 	cmpeqi	r3,r2,-1
  80a524:	003ff606 	br	80a500 <__fputwc+0x12c>
  80a528:	8080030b 	ldhu	r2,12(r16)
  80a52c:	10801014 	ori	r2,r2,64
  80a530:	8080030d 	sth	r2,12(r16)
  80a534:	003fe406 	br	80a4c8 <__fputwc+0xf4>

0080a538 <_fputwc_r>:
  80a538:	3080030b 	ldhu	r2,12(r6)
  80a53c:	10c8000c 	andi	r3,r2,8192
  80a540:	1800051e 	bne	r3,zero,80a558 <_fputwc_r+0x20>
  80a544:	30c01917 	ldw	r3,100(r6)
  80a548:	10880014 	ori	r2,r2,8192
  80a54c:	3080030d 	sth	r2,12(r6)
  80a550:	18880014 	ori	r2,r3,8192
  80a554:	30801915 	stw	r2,100(r6)
  80a558:	080a3d41 	jmpi	80a3d4 <__fputwc>

0080a55c <fputwc>:
  80a55c:	defffc04 	addi	sp,sp,-16
  80a560:	00802074 	movhi	r2,129
  80a564:	dc000215 	stw	r16,8(sp)
  80a568:	1409e117 	ldw	r16,10116(r2)
  80a56c:	dfc00315 	stw	ra,12(sp)
  80a570:	280d883a 	mov	r6,r5
  80a574:	200b883a 	mov	r5,r4
  80a578:	80000226 	beq	r16,zero,80a584 <fputwc+0x28>
  80a57c:	80800e17 	ldw	r2,56(r16)
  80a580:	10000d26 	beq	r2,zero,80a5b8 <fputwc+0x5c>
  80a584:	3080030b 	ldhu	r2,12(r6)
  80a588:	10c8000c 	andi	r3,r2,8192
  80a58c:	1800051e 	bne	r3,zero,80a5a4 <fputwc+0x48>
  80a590:	30c01917 	ldw	r3,100(r6)
  80a594:	10880014 	ori	r2,r2,8192
  80a598:	3080030d 	sth	r2,12(r6)
  80a59c:	18880014 	ori	r2,r3,8192
  80a5a0:	30801915 	stw	r2,100(r6)
  80a5a4:	8009883a 	mov	r4,r16
  80a5a8:	dfc00317 	ldw	ra,12(sp)
  80a5ac:	dc000217 	ldw	r16,8(sp)
  80a5b0:	dec00404 	addi	sp,sp,16
  80a5b4:	080a3d41 	jmpi	80a3d4 <__fputwc>
  80a5b8:	d9000015 	stw	r4,0(sp)
  80a5bc:	8009883a 	mov	r4,r16
  80a5c0:	d9800115 	stw	r6,4(sp)
  80a5c4:	0805b180 	call	805b18 <__sinit>
  80a5c8:	d9800117 	ldw	r6,4(sp)
  80a5cc:	d9400017 	ldw	r5,0(sp)
  80a5d0:	003fec06 	br	80a584 <fputwc+0x28>

0080a5d4 <_fstat_r>:
  80a5d4:	2807883a 	mov	r3,r5
  80a5d8:	defffe04 	addi	sp,sp,-8
  80a5dc:	dc000015 	stw	r16,0(sp)
  80a5e0:	00802074 	movhi	r2,129
  80a5e4:	300b883a 	mov	r5,r6
  80a5e8:	2021883a 	mov	r16,r4
  80a5ec:	1809883a 	mov	r4,r3
  80a5f0:	dfc00115 	stw	ra,4(sp)
  80a5f4:	1010e715 	stw	zero,17308(r2)
  80a5f8:	080ddd40 	call	80ddd4 <fstat>
  80a5fc:	10ffffd8 	cmpnei	r3,r2,-1
  80a600:	18000426 	beq	r3,zero,80a614 <_fstat_r+0x40>
  80a604:	dfc00117 	ldw	ra,4(sp)
  80a608:	dc000017 	ldw	r16,0(sp)
  80a60c:	dec00204 	addi	sp,sp,8
  80a610:	f800283a 	ret
  80a614:	00c02074 	movhi	r3,129
  80a618:	18d0e717 	ldw	r3,17308(r3)
  80a61c:	183ff926 	beq	r3,zero,80a604 <_fstat_r+0x30>
  80a620:	80c00015 	stw	r3,0(r16)
  80a624:	dfc00117 	ldw	ra,4(sp)
  80a628:	dc000017 	ldw	r16,0(sp)
  80a62c:	dec00204 	addi	sp,sp,8
  80a630:	f800283a 	ret

0080a634 <_isatty_r>:
  80a634:	defffe04 	addi	sp,sp,-8
  80a638:	dc000015 	stw	r16,0(sp)
  80a63c:	00802074 	movhi	r2,129
  80a640:	2021883a 	mov	r16,r4
  80a644:	2809883a 	mov	r4,r5
  80a648:	dfc00115 	stw	ra,4(sp)
  80a64c:	1010e715 	stw	zero,17308(r2)
  80a650:	080deec0 	call	80deec <isatty>
  80a654:	10ffffd8 	cmpnei	r3,r2,-1
  80a658:	18000426 	beq	r3,zero,80a66c <_isatty_r+0x38>
  80a65c:	dfc00117 	ldw	ra,4(sp)
  80a660:	dc000017 	ldw	r16,0(sp)
  80a664:	dec00204 	addi	sp,sp,8
  80a668:	f800283a 	ret
  80a66c:	00c02074 	movhi	r3,129
  80a670:	18d0e717 	ldw	r3,17308(r3)
  80a674:	183ff926 	beq	r3,zero,80a65c <_isatty_r+0x28>
  80a678:	80c00015 	stw	r3,0(r16)
  80a67c:	dfc00117 	ldw	ra,4(sp)
  80a680:	dc000017 	ldw	r16,0(sp)
  80a684:	dec00204 	addi	sp,sp,8
  80a688:	f800283a 	ret

0080a68c <_setlocale_r>:
  80a68c:	30001626 	beq	r6,zero,80a6e8 <_setlocale_r+0x5c>
  80a690:	01402074 	movhi	r5,129
  80a694:	defffe04 	addi	sp,sp,-8
  80a698:	29424904 	addi	r5,r5,2340
  80a69c:	3009883a 	mov	r4,r6
  80a6a0:	dc000015 	stw	r16,0(sp)
  80a6a4:	dfc00115 	stw	ra,4(sp)
  80a6a8:	3021883a 	mov	r16,r6
  80a6ac:	080a83c0 	call	80a83c <strcmp>
  80a6b0:	1000061e 	bne	r2,zero,80a6cc <_setlocale_r+0x40>
  80a6b4:	00802074 	movhi	r2,129
  80a6b8:	10824804 	addi	r2,r2,2336
  80a6bc:	dfc00117 	ldw	ra,4(sp)
  80a6c0:	dc000017 	ldw	r16,0(sp)
  80a6c4:	dec00204 	addi	sp,sp,8
  80a6c8:	f800283a 	ret
  80a6cc:	80800003 	ldbu	r2,0(r16)
  80a6d0:	10bfef44 	addi	r2,r2,-67
  80a6d4:	10000726 	beq	r2,zero,80a6f4 <_setlocale_r+0x68>
  80a6d8:	80800003 	ldbu	r2,0(r16)
  80a6dc:	103ff526 	beq	r2,zero,80a6b4 <_setlocale_r+0x28>
  80a6e0:	0005883a 	mov	r2,zero
  80a6e4:	003ff506 	br	80a6bc <_setlocale_r+0x30>
  80a6e8:	00802074 	movhi	r2,129
  80a6ec:	10824804 	addi	r2,r2,2336
  80a6f0:	f800283a 	ret
  80a6f4:	80800043 	ldbu	r2,1(r16)
  80a6f8:	103fee26 	beq	r2,zero,80a6b4 <_setlocale_r+0x28>
  80a6fc:	003ff606 	br	80a6d8 <_setlocale_r+0x4c>

0080a700 <__locale_mb_cur_max>:
  80a700:	00802074 	movhi	r2,129
  80a704:	10854d07 	ldb	r2,5428(r2)
  80a708:	f800283a 	ret

0080a70c <setlocale>:
  80a70c:	00c02074 	movhi	r3,129
  80a710:	2005883a 	mov	r2,r4
  80a714:	1909e117 	ldw	r4,10116(r3)
  80a718:	280d883a 	mov	r6,r5
  80a71c:	100b883a 	mov	r5,r2
  80a720:	080a68c1 	jmpi	80a68c <_setlocale_r>

0080a724 <_lseek_r>:
  80a724:	2807883a 	mov	r3,r5
  80a728:	defffe04 	addi	sp,sp,-8
  80a72c:	dc000015 	stw	r16,0(sp)
  80a730:	300b883a 	mov	r5,r6
  80a734:	00802074 	movhi	r2,129
  80a738:	380d883a 	mov	r6,r7
  80a73c:	2021883a 	mov	r16,r4
  80a740:	1809883a 	mov	r4,r3
  80a744:	dfc00115 	stw	ra,4(sp)
  80a748:	1010e715 	stw	zero,17308(r2)
  80a74c:	080e22c0 	call	80e22c <lseek>
  80a750:	10ffffd8 	cmpnei	r3,r2,-1
  80a754:	18000426 	beq	r3,zero,80a768 <_lseek_r+0x44>
  80a758:	dfc00117 	ldw	ra,4(sp)
  80a75c:	dc000017 	ldw	r16,0(sp)
  80a760:	dec00204 	addi	sp,sp,8
  80a764:	f800283a 	ret
  80a768:	00c02074 	movhi	r3,129
  80a76c:	18d0e717 	ldw	r3,17308(r3)
  80a770:	183ff926 	beq	r3,zero,80a758 <_lseek_r+0x34>
  80a774:	80c00015 	stw	r3,0(r16)
  80a778:	dfc00117 	ldw	ra,4(sp)
  80a77c:	dc000017 	ldw	r16,0(sp)
  80a780:	dec00204 	addi	sp,sp,8
  80a784:	f800283a 	ret

0080a788 <_mbtowc_r>:
  80a788:	00802074 	movhi	r2,129
  80a78c:	10853c17 	ldw	r2,5360(r2)
  80a790:	1000683a 	jmp	r2

0080a794 <__ascii_mbtowc>:
  80a794:	deffff04 	addi	sp,sp,-4
  80a798:	28000826 	beq	r5,zero,80a7bc <__ascii_mbtowc+0x28>
  80a79c:	30000926 	beq	r6,zero,80a7c4 <__ascii_mbtowc+0x30>
  80a7a0:	38000b26 	beq	r7,zero,80a7d0 <__ascii_mbtowc+0x3c>
  80a7a4:	30800003 	ldbu	r2,0(r6)
  80a7a8:	28800015 	stw	r2,0(r5)
  80a7ac:	30800003 	ldbu	r2,0(r6)
  80a7b0:	1004c03a 	cmpne	r2,r2,zero
  80a7b4:	dec00104 	addi	sp,sp,4
  80a7b8:	f800283a 	ret
  80a7bc:	d80b883a 	mov	r5,sp
  80a7c0:	303ff71e 	bne	r6,zero,80a7a0 <__ascii_mbtowc+0xc>
  80a7c4:	0005883a 	mov	r2,zero
  80a7c8:	dec00104 	addi	sp,sp,4
  80a7cc:	f800283a 	ret
  80a7d0:	00bfff84 	movi	r2,-2
  80a7d4:	003ff706 	br	80a7b4 <__ascii_mbtowc+0x20>

0080a7d8 <_read_r>:
  80a7d8:	2807883a 	mov	r3,r5
  80a7dc:	defffe04 	addi	sp,sp,-8
  80a7e0:	dc000015 	stw	r16,0(sp)
  80a7e4:	300b883a 	mov	r5,r6
  80a7e8:	00802074 	movhi	r2,129
  80a7ec:	380d883a 	mov	r6,r7
  80a7f0:	2021883a 	mov	r16,r4
  80a7f4:	1809883a 	mov	r4,r3
  80a7f8:	dfc00115 	stw	ra,4(sp)
  80a7fc:	1010e715 	stw	zero,17308(r2)
  80a800:	080e40c0 	call	80e40c <read>
  80a804:	10ffffd8 	cmpnei	r3,r2,-1
  80a808:	18000426 	beq	r3,zero,80a81c <_read_r+0x44>
  80a80c:	dfc00117 	ldw	ra,4(sp)
  80a810:	dc000017 	ldw	r16,0(sp)
  80a814:	dec00204 	addi	sp,sp,8
  80a818:	f800283a 	ret
  80a81c:	00c02074 	movhi	r3,129
  80a820:	18d0e717 	ldw	r3,17308(r3)
  80a824:	183ff926 	beq	r3,zero,80a80c <_read_r+0x34>
  80a828:	80c00015 	stw	r3,0(r16)
  80a82c:	dfc00117 	ldw	ra,4(sp)
  80a830:	dc000017 	ldw	r16,0(sp)
  80a834:	dec00204 	addi	sp,sp,8
  80a838:	f800283a 	ret

0080a83c <strcmp>:
  80a83c:	2144b03a 	or	r2,r4,r5
  80a840:	108000cc 	andi	r2,r2,3
  80a844:	1000141e 	bne	r2,zero,80a898 <strcmp+0x5c>
  80a848:	20800017 	ldw	r2,0(r4)
  80a84c:	28c00017 	ldw	r3,0(r5)
  80a850:	10c0111e 	bne	r2,r3,80a898 <strcmp+0x5c>
  80a854:	01ffbff4 	movhi	r7,65279
  80a858:	01a02074 	movhi	r6,32897
  80a85c:	39ffbfc4 	addi	r7,r7,-257
  80a860:	31a02004 	addi	r6,r6,-32640
  80a864:	00000306 	br	80a874 <strcmp+0x38>
  80a868:	20800017 	ldw	r2,0(r4)
  80a86c:	28c00017 	ldw	r3,0(r5)
  80a870:	10c0091e 	bne	r2,r3,80a898 <strcmp+0x5c>
  80a874:	11c7883a 	add	r3,r2,r7
  80a878:	0084303a 	nor	r2,zero,r2
  80a87c:	1884703a 	and	r2,r3,r2
  80a880:	1184703a 	and	r2,r2,r6
  80a884:	21000104 	addi	r4,r4,4
  80a888:	29400104 	addi	r5,r5,4
  80a88c:	103ff626 	beq	r2,zero,80a868 <strcmp+0x2c>
  80a890:	0005883a 	mov	r2,zero
  80a894:	f800283a 	ret
  80a898:	20c00003 	ldbu	r3,0(r4)
  80a89c:	18803fcc 	andi	r2,r3,255
  80a8a0:	1080201c 	xori	r2,r2,128
  80a8a4:	10bfe004 	addi	r2,r2,-128
  80a8a8:	1000071e 	bne	r2,zero,80a8c8 <strcmp+0x8c>
  80a8ac:	00000a06 	br	80a8d8 <strcmp+0x9c>
  80a8b0:	20c00003 	ldbu	r3,0(r4)
  80a8b4:	29400044 	addi	r5,r5,1
  80a8b8:	18803fcc 	andi	r2,r3,255
  80a8bc:	1080201c 	xori	r2,r2,128
  80a8c0:	10bfe004 	addi	r2,r2,-128
  80a8c4:	10000726 	beq	r2,zero,80a8e4 <strcmp+0xa8>
  80a8c8:	29800007 	ldb	r6,0(r5)
  80a8cc:	21000044 	addi	r4,r4,1
  80a8d0:	30bff726 	beq	r6,r2,80a8b0 <strcmp+0x74>
  80a8d4:	18803fcc 	andi	r2,r3,255
  80a8d8:	28c00003 	ldbu	r3,0(r5)
  80a8dc:	10c5c83a 	sub	r2,r2,r3
  80a8e0:	f800283a 	ret
  80a8e4:	28c00003 	ldbu	r3,0(r5)
  80a8e8:	0005883a 	mov	r2,zero
  80a8ec:	10c5c83a 	sub	r2,r2,r3
  80a8f0:	f800283a 	ret

0080a8f4 <_vfiprintf_r>:
  80a8f4:	0808c8c1 	jmpi	808c8c <___vfiprintf_internal_r>

0080a8f8 <__swbuf_r>:
  80a8f8:	defffb04 	addi	sp,sp,-20
  80a8fc:	dcc00315 	stw	r19,12(sp)
  80a900:	dc400115 	stw	r17,4(sp)
  80a904:	dc000015 	stw	r16,0(sp)
  80a908:	dfc00415 	stw	ra,16(sp)
  80a90c:	dc800215 	stw	r18,8(sp)
  80a910:	2027883a 	mov	r19,r4
  80a914:	2823883a 	mov	r17,r5
  80a918:	3021883a 	mov	r16,r6
  80a91c:	20000226 	beq	r4,zero,80a928 <__swbuf_r+0x30>
  80a920:	20800e17 	ldw	r2,56(r4)
  80a924:	10003e26 	beq	r2,zero,80aa20 <__swbuf_r+0x128>
  80a928:	80800617 	ldw	r2,24(r16)
  80a92c:	80c0030b 	ldhu	r3,12(r16)
  80a930:	80800215 	stw	r2,8(r16)
  80a934:	1880020c 	andi	r2,r3,8
  80a938:	10001f26 	beq	r2,zero,80a9b8 <__swbuf_r+0xc0>
  80a93c:	80800417 	ldw	r2,16(r16)
  80a940:	10001d26 	beq	r2,zero,80a9b8 <__swbuf_r+0xc0>
  80a944:	1948000c 	andi	r5,r3,8192
  80a948:	8c803fcc 	andi	r18,r17,255
  80a94c:	28002326 	beq	r5,zero,80a9dc <__swbuf_r+0xe4>
  80a950:	80c00017 	ldw	r3,0(r16)
  80a954:	81000517 	ldw	r4,20(r16)
  80a958:	1885c83a 	sub	r2,r3,r2
  80a95c:	1100290e 	bge	r2,r4,80aa04 <__swbuf_r+0x10c>
  80a960:	10800044 	addi	r2,r2,1
  80a964:	81400217 	ldw	r5,8(r16)
  80a968:	19000044 	addi	r4,r3,1
  80a96c:	81000015 	stw	r4,0(r16)
  80a970:	297fffc4 	addi	r5,r5,-1
  80a974:	81400215 	stw	r5,8(r16)
  80a978:	1c400005 	stb	r17,0(r3)
  80a97c:	80c00517 	ldw	r3,20(r16)
  80a980:	18802926 	beq	r3,r2,80aa28 <__swbuf_r+0x130>
  80a984:	8080030b 	ldhu	r2,12(r16)
  80a988:	1080004c 	andi	r2,r2,1
  80a98c:	10000226 	beq	r2,zero,80a998 <__swbuf_r+0xa0>
  80a990:	90800298 	cmpnei	r2,r18,10
  80a994:	10002426 	beq	r2,zero,80aa28 <__swbuf_r+0x130>
  80a998:	9005883a 	mov	r2,r18
  80a99c:	dfc00417 	ldw	ra,16(sp)
  80a9a0:	dcc00317 	ldw	r19,12(sp)
  80a9a4:	dc800217 	ldw	r18,8(sp)
  80a9a8:	dc400117 	ldw	r17,4(sp)
  80a9ac:	dc000017 	ldw	r16,0(sp)
  80a9b0:	dec00504 	addi	sp,sp,20
  80a9b4:	f800283a 	ret
  80a9b8:	800b883a 	mov	r5,r16
  80a9bc:	9809883a 	mov	r4,r19
  80a9c0:	0803a900 	call	803a90 <__swsetup_r>
  80a9c4:	10001c1e 	bne	r2,zero,80aa38 <__swbuf_r+0x140>
  80a9c8:	80c0030b 	ldhu	r3,12(r16)
  80a9cc:	80800417 	ldw	r2,16(r16)
  80a9d0:	8c803fcc 	andi	r18,r17,255
  80a9d4:	1948000c 	andi	r5,r3,8192
  80a9d8:	283fdd1e 	bne	r5,zero,80a950 <__swbuf_r+0x58>
  80a9dc:	81001917 	ldw	r4,100(r16)
  80a9e0:	18c80014 	ori	r3,r3,8192
  80a9e4:	0177ffc4 	movi	r5,-8193
  80a9e8:	2148703a 	and	r4,r4,r5
  80a9ec:	80c0030d 	sth	r3,12(r16)
  80a9f0:	80c00017 	ldw	r3,0(r16)
  80a9f4:	81001915 	stw	r4,100(r16)
  80a9f8:	81000517 	ldw	r4,20(r16)
  80a9fc:	1885c83a 	sub	r2,r3,r2
  80aa00:	113fd716 	blt	r2,r4,80a960 <__swbuf_r+0x68>
  80aa04:	800b883a 	mov	r5,r16
  80aa08:	9809883a 	mov	r4,r19
  80aa0c:	08057840 	call	805784 <_fflush_r>
  80aa10:	1000091e 	bne	r2,zero,80aa38 <__swbuf_r+0x140>
  80aa14:	80c00017 	ldw	r3,0(r16)
  80aa18:	00800044 	movi	r2,1
  80aa1c:	003fd106 	br	80a964 <__swbuf_r+0x6c>
  80aa20:	0805b180 	call	805b18 <__sinit>
  80aa24:	003fc006 	br	80a928 <__swbuf_r+0x30>
  80aa28:	800b883a 	mov	r5,r16
  80aa2c:	9809883a 	mov	r4,r19
  80aa30:	08057840 	call	805784 <_fflush_r>
  80aa34:	103fd826 	beq	r2,zero,80a998 <__swbuf_r+0xa0>
  80aa38:	04bfffc4 	movi	r18,-1
  80aa3c:	003fd606 	br	80a998 <__swbuf_r+0xa0>

0080aa40 <__swbuf>:
  80aa40:	00c02074 	movhi	r3,129
  80aa44:	2005883a 	mov	r2,r4
  80aa48:	1909e117 	ldw	r4,10116(r3)
  80aa4c:	280d883a 	mov	r6,r5
  80aa50:	100b883a 	mov	r5,r2
  80aa54:	080a8f81 	jmpi	80a8f8 <__swbuf_r>

0080aa58 <_wcrtomb_r>:
  80aa58:	defffa04 	addi	sp,sp,-24
  80aa5c:	dc400415 	stw	r17,16(sp)
  80aa60:	dc000315 	stw	r16,12(sp)
  80aa64:	00802074 	movhi	r2,129
  80aa68:	dfc00515 	stw	ra,20(sp)
  80aa6c:	10853b17 	ldw	r2,5356(r2)
  80aa70:	2023883a 	mov	r17,r4
  80aa74:	3821883a 	mov	r16,r7
  80aa78:	28000826 	beq	r5,zero,80aa9c <_wcrtomb_r+0x44>
  80aa7c:	103ee83a 	callr	r2
  80aa80:	10ffffd8 	cmpnei	r3,r2,-1
  80aa84:	18000a26 	beq	r3,zero,80aab0 <_wcrtomb_r+0x58>
  80aa88:	dfc00517 	ldw	ra,20(sp)
  80aa8c:	dc400417 	ldw	r17,16(sp)
  80aa90:	dc000317 	ldw	r16,12(sp)
  80aa94:	dec00604 	addi	sp,sp,24
  80aa98:	f800283a 	ret
  80aa9c:	000d883a 	mov	r6,zero
  80aaa0:	d9400084 	addi	r5,sp,2
  80aaa4:	103ee83a 	callr	r2
  80aaa8:	10ffffd8 	cmpnei	r3,r2,-1
  80aaac:	183ff61e 	bne	r3,zero,80aa88 <_wcrtomb_r+0x30>
  80aab0:	00802284 	movi	r2,138
  80aab4:	80000015 	stw	zero,0(r16)
  80aab8:	88800015 	stw	r2,0(r17)
  80aabc:	00bfffc4 	movi	r2,-1
  80aac0:	003ff106 	br	80aa88 <_wcrtomb_r+0x30>

0080aac4 <wcrtomb>:
  80aac4:	defffa04 	addi	sp,sp,-24
  80aac8:	00c02074 	movhi	r3,129
  80aacc:	dc400415 	stw	r17,16(sp)
  80aad0:	dc000315 	stw	r16,12(sp)
  80aad4:	1c49e117 	ldw	r17,10116(r3)
  80aad8:	dfc00515 	stw	ra,20(sp)
  80aadc:	00c02074 	movhi	r3,129
  80aae0:	18c53b17 	ldw	r3,5356(r3)
  80aae4:	3021883a 	mov	r16,r6
  80aae8:	20000c26 	beq	r4,zero,80ab1c <wcrtomb+0x58>
  80aaec:	280d883a 	mov	r6,r5
  80aaf0:	800f883a 	mov	r7,r16
  80aaf4:	200b883a 	mov	r5,r4
  80aaf8:	8809883a 	mov	r4,r17
  80aafc:	183ee83a 	callr	r3
  80ab00:	10ffffd8 	cmpnei	r3,r2,-1
  80ab04:	18000c26 	beq	r3,zero,80ab38 <wcrtomb+0x74>
  80ab08:	dfc00517 	ldw	ra,20(sp)
  80ab0c:	dc400417 	ldw	r17,16(sp)
  80ab10:	dc000317 	ldw	r16,12(sp)
  80ab14:	dec00604 	addi	sp,sp,24
  80ab18:	f800283a 	ret
  80ab1c:	300f883a 	mov	r7,r6
  80ab20:	d9400084 	addi	r5,sp,2
  80ab24:	000d883a 	mov	r6,zero
  80ab28:	8809883a 	mov	r4,r17
  80ab2c:	183ee83a 	callr	r3
  80ab30:	10ffffd8 	cmpnei	r3,r2,-1
  80ab34:	183ff41e 	bne	r3,zero,80ab08 <wcrtomb+0x44>
  80ab38:	00802284 	movi	r2,138
  80ab3c:	80000015 	stw	zero,0(r16)
  80ab40:	88800015 	stw	r2,0(r17)
  80ab44:	00bfffc4 	movi	r2,-1
  80ab48:	003fef06 	br	80ab08 <wcrtomb+0x44>

0080ab4c <_wctomb_r>:
  80ab4c:	00802074 	movhi	r2,129
  80ab50:	10853b17 	ldw	r2,5356(r2)
  80ab54:	1000683a 	jmp	r2

0080ab58 <__ascii_wctomb>:
  80ab58:	28000926 	beq	r5,zero,80ab80 <__ascii_wctomb+0x28>
  80ab5c:	30804030 	cmpltui	r2,r6,256
  80ab60:	10000326 	beq	r2,zero,80ab70 <__ascii_wctomb+0x18>
  80ab64:	29800005 	stb	r6,0(r5)
  80ab68:	00800044 	movi	r2,1
  80ab6c:	f800283a 	ret
  80ab70:	00802284 	movi	r2,138
  80ab74:	20800015 	stw	r2,0(r4)
  80ab78:	00bfffc4 	movi	r2,-1
  80ab7c:	f800283a 	ret
  80ab80:	0005883a 	mov	r2,zero
  80ab84:	f800283a 	ret

0080ab88 <abort>:
  80ab88:	deffff04 	addi	sp,sp,-4
  80ab8c:	01000184 	movi	r4,6
  80ab90:	dfc00015 	stw	ra,0(sp)
  80ab94:	080ae000 	call	80ae00 <raise>
  80ab98:	01000044 	movi	r4,1
  80ab9c:	080dd600 	call	80dd60 <_exit>

0080aba0 <_init_signal_r.part.0>:
  80aba0:	defffe04 	addi	sp,sp,-8
  80aba4:	01402004 	movi	r5,128
  80aba8:	dc000015 	stw	r16,0(sp)
  80abac:	dfc00115 	stw	ra,4(sp)
  80abb0:	2021883a 	mov	r16,r4
  80abb4:	080677c0 	call	80677c <_malloc_r>
  80abb8:	8080b715 	stw	r2,732(r16)
  80abbc:	10000926 	beq	r2,zero,80abe4 <_init_signal_r.part.0+0x44>
  80abc0:	10c02004 	addi	r3,r2,128
  80abc4:	10000015 	stw	zero,0(r2)
  80abc8:	10800104 	addi	r2,r2,4
  80abcc:	10fffd1e 	bne	r2,r3,80abc4 <_init_signal_r.part.0+0x24>
  80abd0:	0005883a 	mov	r2,zero
  80abd4:	dfc00117 	ldw	ra,4(sp)
  80abd8:	dc000017 	ldw	r16,0(sp)
  80abdc:	dec00204 	addi	sp,sp,8
  80abe0:	f800283a 	ret
  80abe4:	00bfffc4 	movi	r2,-1
  80abe8:	003ffa06 	br	80abd4 <_init_signal_r.part.0+0x34>

0080abec <_init_signal_r>:
  80abec:	2080b717 	ldw	r2,732(r4)
  80abf0:	10000226 	beq	r2,zero,80abfc <_init_signal_r+0x10>
  80abf4:	0005883a 	mov	r2,zero
  80abf8:	f800283a 	ret
  80abfc:	080aba01 	jmpi	80aba0 <_init_signal_r.part.0>

0080ac00 <_signal_r>:
  80ac00:	defffc04 	addi	sp,sp,-16
  80ac04:	dc000215 	stw	r16,8(sp)
  80ac08:	dfc00315 	stw	ra,12(sp)
  80ac0c:	28800830 	cmpltui	r2,r5,32
  80ac10:	2021883a 	mov	r16,r4
  80ac14:	10000a26 	beq	r2,zero,80ac40 <_signal_r+0x40>
  80ac18:	2080b717 	ldw	r2,732(r4)
  80ac1c:	10000f26 	beq	r2,zero,80ac5c <_signal_r+0x5c>
  80ac20:	280a90ba 	slli	r5,r5,2
  80ac24:	114b883a 	add	r5,r2,r5
  80ac28:	28800017 	ldw	r2,0(r5)
  80ac2c:	29800015 	stw	r6,0(r5)
  80ac30:	dfc00317 	ldw	ra,12(sp)
  80ac34:	dc000217 	ldw	r16,8(sp)
  80ac38:	dec00404 	addi	sp,sp,16
  80ac3c:	f800283a 	ret
  80ac40:	00800584 	movi	r2,22
  80ac44:	20800015 	stw	r2,0(r4)
  80ac48:	00bfffc4 	movi	r2,-1
  80ac4c:	dfc00317 	ldw	ra,12(sp)
  80ac50:	dc000217 	ldw	r16,8(sp)
  80ac54:	dec00404 	addi	sp,sp,16
  80ac58:	f800283a 	ret
  80ac5c:	d9800115 	stw	r6,4(sp)
  80ac60:	d9400015 	stw	r5,0(sp)
  80ac64:	080aba00 	call	80aba0 <_init_signal_r.part.0>
  80ac68:	1000041e 	bne	r2,zero,80ac7c <_signal_r+0x7c>
  80ac6c:	8080b717 	ldw	r2,732(r16)
  80ac70:	d9800117 	ldw	r6,4(sp)
  80ac74:	d9400017 	ldw	r5,0(sp)
  80ac78:	003fe906 	br	80ac20 <_signal_r+0x20>
  80ac7c:	00bfffc4 	movi	r2,-1
  80ac80:	003feb06 	br	80ac30 <_signal_r+0x30>

0080ac84 <_raise_r>:
  80ac84:	28800830 	cmpltui	r2,r5,32
  80ac88:	10002b26 	beq	r2,zero,80ad38 <_raise_r+0xb4>
  80ac8c:	2080b717 	ldw	r2,732(r4)
  80ac90:	defffd04 	addi	sp,sp,-12
  80ac94:	dc000115 	stw	r16,4(sp)
  80ac98:	dfc00215 	stw	ra,8(sp)
  80ac9c:	2821883a 	mov	r16,r5
  80aca0:	10001026 	beq	r2,zero,80ace4 <_raise_r+0x60>
  80aca4:	280690ba 	slli	r3,r5,2
  80aca8:	10c5883a 	add	r2,r2,r3
  80acac:	10c00017 	ldw	r3,0(r2)
  80acb0:	18000c26 	beq	r3,zero,80ace4 <_raise_r+0x60>
  80acb4:	19400060 	cmpeqi	r5,r3,1
  80acb8:	28001a1e 	bne	r5,zero,80ad24 <_raise_r+0xa0>
  80acbc:	197fffd8 	cmpnei	r5,r3,-1
  80acc0:	28001126 	beq	r5,zero,80ad08 <_raise_r+0x84>
  80acc4:	10000015 	stw	zero,0(r2)
  80acc8:	8009883a 	mov	r4,r16
  80accc:	183ee83a 	callr	r3
  80acd0:	0005883a 	mov	r2,zero
  80acd4:	dfc00217 	ldw	ra,8(sp)
  80acd8:	dc000117 	ldw	r16,4(sp)
  80acdc:	dec00304 	addi	sp,sp,12
  80ace0:	f800283a 	ret
  80ace4:	d9000015 	stw	r4,0(sp)
  80ace8:	080aeb40 	call	80aeb4 <_getpid_r>
  80acec:	d9000017 	ldw	r4,0(sp)
  80acf0:	800d883a 	mov	r6,r16
  80acf4:	100b883a 	mov	r5,r2
  80acf8:	dfc00217 	ldw	ra,8(sp)
  80acfc:	dc000117 	ldw	r16,4(sp)
  80ad00:	dec00304 	addi	sp,sp,12
  80ad04:	080ae541 	jmpi	80ae54 <_kill_r>
  80ad08:	00800584 	movi	r2,22
  80ad0c:	20800015 	stw	r2,0(r4)
  80ad10:	00800044 	movi	r2,1
  80ad14:	dfc00217 	ldw	ra,8(sp)
  80ad18:	dc000117 	ldw	r16,4(sp)
  80ad1c:	dec00304 	addi	sp,sp,12
  80ad20:	f800283a 	ret
  80ad24:	0005883a 	mov	r2,zero
  80ad28:	dfc00217 	ldw	ra,8(sp)
  80ad2c:	dc000117 	ldw	r16,4(sp)
  80ad30:	dec00304 	addi	sp,sp,12
  80ad34:	f800283a 	ret
  80ad38:	00800584 	movi	r2,22
  80ad3c:	20800015 	stw	r2,0(r4)
  80ad40:	00bfffc4 	movi	r2,-1
  80ad44:	f800283a 	ret

0080ad48 <__sigtramp_r>:
  80ad48:	28800830 	cmpltui	r2,r5,32
  80ad4c:	10002a26 	beq	r2,zero,80adf8 <__sigtramp_r+0xb0>
  80ad50:	2080b717 	ldw	r2,732(r4)
  80ad54:	defffd04 	addi	sp,sp,-12
  80ad58:	dc400115 	stw	r17,4(sp)
  80ad5c:	dfc00215 	stw	ra,8(sp)
  80ad60:	2023883a 	mov	r17,r4
  80ad64:	10001526 	beq	r2,zero,80adbc <__sigtramp_r+0x74>
  80ad68:	280690ba 	slli	r3,r5,2
  80ad6c:	10c5883a 	add	r2,r2,r3
  80ad70:	10c00017 	ldw	r3,0(r2)
  80ad74:	18000c26 	beq	r3,zero,80ada8 <__sigtramp_r+0x60>
  80ad78:	193fffe0 	cmpeqi	r4,r3,-1
  80ad7c:	20001a1e 	bne	r4,zero,80ade8 <__sigtramp_r+0xa0>
  80ad80:	19000060 	cmpeqi	r4,r3,1
  80ad84:	2000131e 	bne	r4,zero,80add4 <__sigtramp_r+0x8c>
  80ad88:	10000015 	stw	zero,0(r2)
  80ad8c:	2809883a 	mov	r4,r5
  80ad90:	183ee83a 	callr	r3
  80ad94:	0005883a 	mov	r2,zero
  80ad98:	dfc00217 	ldw	ra,8(sp)
  80ad9c:	dc400117 	ldw	r17,4(sp)
  80ada0:	dec00304 	addi	sp,sp,12
  80ada4:	f800283a 	ret
  80ada8:	00800044 	movi	r2,1
  80adac:	dfc00217 	ldw	ra,8(sp)
  80adb0:	dc400117 	ldw	r17,4(sp)
  80adb4:	dec00304 	addi	sp,sp,12
  80adb8:	f800283a 	ret
  80adbc:	d9400015 	stw	r5,0(sp)
  80adc0:	080aba00 	call	80aba0 <_init_signal_r.part.0>
  80adc4:	10000a1e 	bne	r2,zero,80adf0 <__sigtramp_r+0xa8>
  80adc8:	8880b717 	ldw	r2,732(r17)
  80adcc:	d9400017 	ldw	r5,0(sp)
  80add0:	003fe506 	br	80ad68 <__sigtramp_r+0x20>
  80add4:	008000c4 	movi	r2,3
  80add8:	dfc00217 	ldw	ra,8(sp)
  80addc:	dc400117 	ldw	r17,4(sp)
  80ade0:	dec00304 	addi	sp,sp,12
  80ade4:	f800283a 	ret
  80ade8:	00800084 	movi	r2,2
  80adec:	003fea06 	br	80ad98 <__sigtramp_r+0x50>
  80adf0:	00bfffc4 	movi	r2,-1
  80adf4:	003fe806 	br	80ad98 <__sigtramp_r+0x50>
  80adf8:	00bfffc4 	movi	r2,-1
  80adfc:	f800283a 	ret

0080ae00 <raise>:
  80ae00:	00802074 	movhi	r2,129
  80ae04:	200b883a 	mov	r5,r4
  80ae08:	1109e117 	ldw	r4,10116(r2)
  80ae0c:	080ac841 	jmpi	80ac84 <_raise_r>

0080ae10 <signal>:
  80ae10:	00c02074 	movhi	r3,129
  80ae14:	2005883a 	mov	r2,r4
  80ae18:	1909e117 	ldw	r4,10116(r3)
  80ae1c:	280d883a 	mov	r6,r5
  80ae20:	100b883a 	mov	r5,r2
  80ae24:	080ac001 	jmpi	80ac00 <_signal_r>

0080ae28 <_init_signal>:
  80ae28:	00802074 	movhi	r2,129
  80ae2c:	1109e117 	ldw	r4,10116(r2)
  80ae30:	2080b717 	ldw	r2,732(r4)
  80ae34:	10000226 	beq	r2,zero,80ae40 <_init_signal+0x18>
  80ae38:	0005883a 	mov	r2,zero
  80ae3c:	f800283a 	ret
  80ae40:	080aba01 	jmpi	80aba0 <_init_signal_r.part.0>

0080ae44 <__sigtramp>:
  80ae44:	00802074 	movhi	r2,129
  80ae48:	200b883a 	mov	r5,r4
  80ae4c:	1109e117 	ldw	r4,10116(r2)
  80ae50:	080ad481 	jmpi	80ad48 <__sigtramp_r>

0080ae54 <_kill_r>:
  80ae54:	2807883a 	mov	r3,r5
  80ae58:	defffe04 	addi	sp,sp,-8
  80ae5c:	dc000015 	stw	r16,0(sp)
  80ae60:	00802074 	movhi	r2,129
  80ae64:	300b883a 	mov	r5,r6
  80ae68:	2021883a 	mov	r16,r4
  80ae6c:	1809883a 	mov	r4,r3
  80ae70:	dfc00115 	stw	ra,4(sp)
  80ae74:	1010e715 	stw	zero,17308(r2)
  80ae78:	080dfd80 	call	80dfd8 <kill>
  80ae7c:	10ffffd8 	cmpnei	r3,r2,-1
  80ae80:	18000426 	beq	r3,zero,80ae94 <_kill_r+0x40>
  80ae84:	dfc00117 	ldw	ra,4(sp)
  80ae88:	dc000017 	ldw	r16,0(sp)
  80ae8c:	dec00204 	addi	sp,sp,8
  80ae90:	f800283a 	ret
  80ae94:	00c02074 	movhi	r3,129
  80ae98:	18d0e717 	ldw	r3,17308(r3)
  80ae9c:	183ff926 	beq	r3,zero,80ae84 <_kill_r+0x30>
  80aea0:	80c00015 	stw	r3,0(r16)
  80aea4:	dfc00117 	ldw	ra,4(sp)
  80aea8:	dc000017 	ldw	r16,0(sp)
  80aeac:	dec00204 	addi	sp,sp,8
  80aeb0:	f800283a 	ret

0080aeb4 <_getpid_r>:
  80aeb4:	080de901 	jmpi	80de90 <getpid>

0080aeb8 <__udivdi3>:
  80aeb8:	defff504 	addi	sp,sp,-44
  80aebc:	dd000515 	stw	r20,20(sp)
  80aec0:	dc800315 	stw	r18,12(sp)
  80aec4:	dfc00a15 	stw	ra,40(sp)
  80aec8:	df000915 	stw	fp,36(sp)
  80aecc:	ddc00815 	stw	r23,32(sp)
  80aed0:	dd800715 	stw	r22,28(sp)
  80aed4:	dd400615 	stw	r21,24(sp)
  80aed8:	dcc00415 	stw	r19,16(sp)
  80aedc:	dc400215 	stw	r17,8(sp)
  80aee0:	dc000115 	stw	r16,4(sp)
  80aee4:	2029883a 	mov	r20,r4
  80aee8:	2825883a 	mov	r18,r5
  80aeec:	3800461e 	bne	r7,zero,80b008 <__udivdi3+0x150>
  80aef0:	3823883a 	mov	r17,r7
  80aef4:	3021883a 	mov	r16,r6
  80aef8:	2027883a 	mov	r19,r4
  80aefc:	2980622e 	bgeu	r5,r6,80b088 <__udivdi3+0x1d0>
  80af00:	00bfffd4 	movui	r2,65535
  80af04:	282b883a 	mov	r21,r5
  80af08:	1180aa2e 	bgeu	r2,r6,80b1b4 <__udivdi3+0x2fc>
  80af0c:	00804034 	movhi	r2,256
  80af10:	30815936 	bltu	r6,r2,80b478 <__udivdi3+0x5c0>
  80af14:	3006d63a 	srli	r3,r6,24
  80af18:	04400604 	movi	r17,24
  80af1c:	00802074 	movhi	r2,129
  80af20:	1885883a 	add	r2,r3,r2
  80af24:	11016503 	ldbu	r4,1428(r2)
  80af28:	00800804 	movi	r2,32
  80af2c:	2463883a 	add	r17,r4,r17
  80af30:	1449c83a 	sub	r4,r2,r17
  80af34:	14400526 	beq	r2,r17,80af4c <__udivdi3+0x94>
  80af38:	9106983a 	sll	r3,r18,r4
  80af3c:	a462d83a 	srl	r17,r20,r17
  80af40:	3120983a 	sll	r16,r6,r4
  80af44:	a126983a 	sll	r19,r20,r4
  80af48:	88eab03a 	or	r21,r17,r3
  80af4c:	802cd43a 	srli	r22,r16,16
  80af50:	a809883a 	mov	r4,r21
  80af54:	853fffcc 	andi	r20,r16,65535
  80af58:	b00b883a 	mov	r5,r22
  80af5c:	080bbf00 	call	80bbf0 <__umodsi3>
  80af60:	a809883a 	mov	r4,r21
  80af64:	b00b883a 	mov	r5,r22
  80af68:	1025883a 	mov	r18,r2
  80af6c:	080bb8c0 	call	80bb8c <__udivsi3>
  80af70:	a009883a 	mov	r4,r20
  80af74:	100b883a 	mov	r5,r2
  80af78:	102b883a 	mov	r21,r2
  80af7c:	08016c40 	call	8016c4 <__mulsi3>
  80af80:	9024943a 	slli	r18,r18,16
  80af84:	9808d43a 	srli	r4,r19,16
  80af88:	9108b03a 	or	r4,r18,r4
  80af8c:	2080052e 	bgeu	r4,r2,80afa4 <__udivdi3+0xec>
  80af90:	2409883a 	add	r4,r4,r16
  80af94:	a8ffffc4 	addi	r3,r21,-1
  80af98:	24000136 	bltu	r4,r16,80afa0 <__udivdi3+0xe8>
  80af9c:	20814736 	bltu	r4,r2,80b4bc <__udivdi3+0x604>
  80afa0:	182b883a 	mov	r21,r3
  80afa4:	20a3c83a 	sub	r17,r4,r2
  80afa8:	8809883a 	mov	r4,r17
  80afac:	b00b883a 	mov	r5,r22
  80afb0:	080bbf00 	call	80bbf0 <__umodsi3>
  80afb4:	8809883a 	mov	r4,r17
  80afb8:	1023883a 	mov	r17,r2
  80afbc:	b00b883a 	mov	r5,r22
  80afc0:	8822943a 	slli	r17,r17,16
  80afc4:	080bb8c0 	call	80bb8c <__udivsi3>
  80afc8:	100b883a 	mov	r5,r2
  80afcc:	a009883a 	mov	r4,r20
  80afd0:	9cffffcc 	andi	r19,r19,65535
  80afd4:	1025883a 	mov	r18,r2
  80afd8:	8ce6b03a 	or	r19,r17,r19
  80afdc:	08016c40 	call	8016c4 <__mulsi3>
  80afe0:	9880052e 	bgeu	r19,r2,80aff8 <__udivdi3+0x140>
  80afe4:	84e7883a 	add	r19,r16,r19
  80afe8:	90ffffc4 	addi	r3,r18,-1
  80afec:	9c000136 	bltu	r19,r16,80aff4 <__udivdi3+0x13c>
  80aff0:	98813036 	bltu	r19,r2,80b4b4 <__udivdi3+0x5fc>
  80aff4:	1825883a 	mov	r18,r3
  80aff8:	a80c943a 	slli	r6,r21,16
  80affc:	0007883a 	mov	r3,zero
  80b000:	3484b03a 	or	r2,r6,r18
  80b004:	00000306 	br	80b014 <__udivdi3+0x15c>
  80b008:	29c00e2e 	bgeu	r5,r7,80b044 <__udivdi3+0x18c>
  80b00c:	0007883a 	mov	r3,zero
  80b010:	0005883a 	mov	r2,zero
  80b014:	dfc00a17 	ldw	ra,40(sp)
  80b018:	df000917 	ldw	fp,36(sp)
  80b01c:	ddc00817 	ldw	r23,32(sp)
  80b020:	dd800717 	ldw	r22,28(sp)
  80b024:	dd400617 	ldw	r21,24(sp)
  80b028:	dd000517 	ldw	r20,20(sp)
  80b02c:	dcc00417 	ldw	r19,16(sp)
  80b030:	dc800317 	ldw	r18,12(sp)
  80b034:	dc400217 	ldw	r17,8(sp)
  80b038:	dc000117 	ldw	r16,4(sp)
  80b03c:	dec00b04 	addi	sp,sp,44
  80b040:	f800283a 	ret
  80b044:	00bfffd4 	movui	r2,65535
  80b048:	11c05f2e 	bgeu	r2,r7,80b1c8 <__udivdi3+0x310>
  80b04c:	00804034 	movhi	r2,256
  80b050:	3880fb36 	bltu	r7,r2,80b440 <__udivdi3+0x588>
  80b054:	3806d63a 	srli	r3,r7,24
  80b058:	01000604 	movi	r4,24
  80b05c:	00802074 	movhi	r2,129
  80b060:	1885883a 	add	r2,r3,r2
  80b064:	10c16503 	ldbu	r3,1428(r2)
  80b068:	00800804 	movi	r2,32
  80b06c:	1907883a 	add	r3,r3,r4
  80b070:	10e3c83a 	sub	r17,r2,r3
  80b074:	10c0901e 	bne	r2,r3,80b2b8 <__udivdi3+0x400>
  80b078:	3c80f636 	bltu	r7,r18,80b454 <__udivdi3+0x59c>
  80b07c:	a185403a 	cmpgeu	r2,r20,r6
  80b080:	0007883a 	mov	r3,zero
  80b084:	003fe306 	br	80b014 <__udivdi3+0x15c>
  80b088:	3000041e 	bne	r6,zero,80b09c <__udivdi3+0x1e4>
  80b08c:	000b883a 	mov	r5,zero
  80b090:	01000044 	movi	r4,1
  80b094:	080bb8c0 	call	80bb8c <__udivsi3>
  80b098:	1021883a 	mov	r16,r2
  80b09c:	00bfffd4 	movui	r2,65535
  80b0a0:	14003f2e 	bgeu	r2,r16,80b1a0 <__udivdi3+0x2e8>
  80b0a4:	00804034 	movhi	r2,256
  80b0a8:	8080f036 	bltu	r16,r2,80b46c <__udivdi3+0x5b4>
  80b0ac:	8006d63a 	srli	r3,r16,24
  80b0b0:	04400604 	movi	r17,24
  80b0b4:	00802074 	movhi	r2,129
  80b0b8:	1885883a 	add	r2,r3,r2
  80b0bc:	10816503 	ldbu	r2,1428(r2)
  80b0c0:	00c00804 	movi	r3,32
  80b0c4:	1463883a 	add	r17,r2,r17
  80b0c8:	1c45c83a 	sub	r2,r3,r17
  80b0cc:	1c40431e 	bne	r3,r17,80b1dc <__udivdi3+0x324>
  80b0d0:	802cd43a 	srli	r22,r16,16
  80b0d4:	9423c83a 	sub	r17,r18,r16
  80b0d8:	853fffcc 	andi	r20,r16,65535
  80b0dc:	00c00044 	movi	r3,1
  80b0e0:	b00b883a 	mov	r5,r22
  80b0e4:	8809883a 	mov	r4,r17
  80b0e8:	d8c00015 	stw	r3,0(sp)
  80b0ec:	080bbf00 	call	80bbf0 <__umodsi3>
  80b0f0:	b00b883a 	mov	r5,r22
  80b0f4:	8809883a 	mov	r4,r17
  80b0f8:	1025883a 	mov	r18,r2
  80b0fc:	080bb8c0 	call	80bb8c <__udivsi3>
  80b100:	1009883a 	mov	r4,r2
  80b104:	a00b883a 	mov	r5,r20
  80b108:	102b883a 	mov	r21,r2
  80b10c:	08016c40 	call	8016c4 <__mulsi3>
  80b110:	9024943a 	slli	r18,r18,16
  80b114:	9808d43a 	srli	r4,r19,16
  80b118:	d8c00017 	ldw	r3,0(sp)
  80b11c:	9108b03a 	or	r4,r18,r4
  80b120:	2080052e 	bgeu	r4,r2,80b138 <__udivdi3+0x280>
  80b124:	2409883a 	add	r4,r4,r16
  80b128:	a97fffc4 	addi	r5,r21,-1
  80b12c:	24000136 	bltu	r4,r16,80b134 <__udivdi3+0x27c>
  80b130:	2080e536 	bltu	r4,r2,80b4c8 <__udivdi3+0x610>
  80b134:	282b883a 	mov	r21,r5
  80b138:	20a3c83a 	sub	r17,r4,r2
  80b13c:	8809883a 	mov	r4,r17
  80b140:	b00b883a 	mov	r5,r22
  80b144:	d8c00015 	stw	r3,0(sp)
  80b148:	080bbf00 	call	80bbf0 <__umodsi3>
  80b14c:	8809883a 	mov	r4,r17
  80b150:	1023883a 	mov	r17,r2
  80b154:	b00b883a 	mov	r5,r22
  80b158:	8822943a 	slli	r17,r17,16
  80b15c:	080bb8c0 	call	80bb8c <__udivsi3>
  80b160:	a00b883a 	mov	r5,r20
  80b164:	1009883a 	mov	r4,r2
  80b168:	9cffffcc 	andi	r19,r19,65535
  80b16c:	1025883a 	mov	r18,r2
  80b170:	8ce6b03a 	or	r19,r17,r19
  80b174:	08016c40 	call	8016c4 <__mulsi3>
  80b178:	d8c00017 	ldw	r3,0(sp)
  80b17c:	9880052e 	bgeu	r19,r2,80b194 <__udivdi3+0x2dc>
  80b180:	84e7883a 	add	r19,r16,r19
  80b184:	913fffc4 	addi	r4,r18,-1
  80b188:	9c000136 	bltu	r19,r16,80b190 <__udivdi3+0x2d8>
  80b18c:	9880c736 	bltu	r19,r2,80b4ac <__udivdi3+0x5f4>
  80b190:	2025883a 	mov	r18,r4
  80b194:	a80c943a 	slli	r6,r21,16
  80b198:	3484b03a 	or	r2,r6,r18
  80b19c:	003f9d06 	br	80b014 <__udivdi3+0x15c>
  80b1a0:	80804030 	cmpltui	r2,r16,256
  80b1a4:	1000b71e 	bne	r2,zero,80b484 <__udivdi3+0x5cc>
  80b1a8:	8006d23a 	srli	r3,r16,8
  80b1ac:	04400204 	movi	r17,8
  80b1b0:	003fc006 	br	80b0b4 <__udivdi3+0x1fc>
  80b1b4:	30804030 	cmpltui	r2,r6,256
  80b1b8:	1000a41e 	bne	r2,zero,80b44c <__udivdi3+0x594>
  80b1bc:	3006d23a 	srli	r3,r6,8
  80b1c0:	04400204 	movi	r17,8
  80b1c4:	003f5506 	br	80af1c <__udivdi3+0x64>
  80b1c8:	38804030 	cmpltui	r2,r7,256
  80b1cc:	1000a41e 	bne	r2,zero,80b460 <__udivdi3+0x5a8>
  80b1d0:	3806d23a 	srli	r3,r7,8
  80b1d4:	01000204 	movi	r4,8
  80b1d8:	003fa006 	br	80b05c <__udivdi3+0x1a4>
  80b1dc:	80a0983a 	sll	r16,r16,r2
  80b1e0:	946ed83a 	srl	r23,r18,r17
  80b1e4:	9086983a 	sll	r3,r18,r2
  80b1e8:	802cd43a 	srli	r22,r16,16
  80b1ec:	a462d83a 	srl	r17,r20,r17
  80b1f0:	b809883a 	mov	r4,r23
  80b1f4:	b00b883a 	mov	r5,r22
  80b1f8:	88eab03a 	or	r21,r17,r3
  80b1fc:	a0a6983a 	sll	r19,r20,r2
  80b200:	080bbf00 	call	80bbf0 <__umodsi3>
  80b204:	b809883a 	mov	r4,r23
  80b208:	b00b883a 	mov	r5,r22
  80b20c:	1025883a 	mov	r18,r2
  80b210:	853fffcc 	andi	r20,r16,65535
  80b214:	080bb8c0 	call	80bb8c <__udivsi3>
  80b218:	a009883a 	mov	r4,r20
  80b21c:	100b883a 	mov	r5,r2
  80b220:	102f883a 	mov	r23,r2
  80b224:	08016c40 	call	8016c4 <__mulsi3>
  80b228:	9024943a 	slli	r18,r18,16
  80b22c:	a808d43a 	srli	r4,r21,16
  80b230:	9108b03a 	or	r4,r18,r4
  80b234:	2080062e 	bgeu	r4,r2,80b250 <__udivdi3+0x398>
  80b238:	2409883a 	add	r4,r4,r16
  80b23c:	b8ffffc4 	addi	r3,r23,-1
  80b240:	24009836 	bltu	r4,r16,80b4a4 <__udivdi3+0x5ec>
  80b244:	2080972e 	bgeu	r4,r2,80b4a4 <__udivdi3+0x5ec>
  80b248:	bdffff84 	addi	r23,r23,-2
  80b24c:	2409883a 	add	r4,r4,r16
  80b250:	20a3c83a 	sub	r17,r4,r2
  80b254:	8809883a 	mov	r4,r17
  80b258:	b00b883a 	mov	r5,r22
  80b25c:	080bbf00 	call	80bbf0 <__umodsi3>
  80b260:	1025883a 	mov	r18,r2
  80b264:	8809883a 	mov	r4,r17
  80b268:	b00b883a 	mov	r5,r22
  80b26c:	9024943a 	slli	r18,r18,16
  80b270:	080bb8c0 	call	80bb8c <__udivsi3>
  80b274:	100b883a 	mov	r5,r2
  80b278:	a009883a 	mov	r4,r20
  80b27c:	ac7fffcc 	andi	r17,r21,65535
  80b280:	1039883a 	mov	fp,r2
  80b284:	9462b03a 	or	r17,r18,r17
  80b288:	08016c40 	call	8016c4 <__mulsi3>
  80b28c:	8880062e 	bgeu	r17,r2,80b2a8 <__udivdi3+0x3f0>
  80b290:	8c23883a 	add	r17,r17,r16
  80b294:	e0ffffc4 	addi	r3,fp,-1
  80b298:	8c007e36 	bltu	r17,r16,80b494 <__udivdi3+0x5dc>
  80b29c:	88807d2e 	bgeu	r17,r2,80b494 <__udivdi3+0x5dc>
  80b2a0:	e73fff84 	addi	fp,fp,-2
  80b2a4:	8c23883a 	add	r17,r17,r16
  80b2a8:	b806943a 	slli	r3,r23,16
  80b2ac:	88a3c83a 	sub	r17,r17,r2
  80b2b0:	1f06b03a 	or	r3,r3,fp
  80b2b4:	003f8a06 	br	80b0e0 <__udivdi3+0x228>
  80b2b8:	30e6d83a 	srl	r19,r6,r3
  80b2bc:	3c4e983a 	sll	r7,r7,r17
  80b2c0:	90e0d83a 	srl	r16,r18,r3
  80b2c4:	a0c4d83a 	srl	r2,r20,r3
  80b2c8:	99e6b03a 	or	r19,r19,r7
  80b2cc:	9446983a 	sll	r3,r18,r17
  80b2d0:	9838d43a 	srli	fp,r19,16
  80b2d4:	8009883a 	mov	r4,r16
  80b2d8:	10eab03a 	or	r21,r2,r3
  80b2dc:	e00b883a 	mov	r5,fp
  80b2e0:	346c983a 	sll	r22,r6,r17
  80b2e4:	dd400015 	stw	r21,0(sp)
  80b2e8:	080bbf00 	call	80bbf0 <__umodsi3>
  80b2ec:	8009883a 	mov	r4,r16
  80b2f0:	e00b883a 	mov	r5,fp
  80b2f4:	102f883a 	mov	r23,r2
  80b2f8:	9cbfffcc 	andi	r18,r19,65535
  80b2fc:	080bb8c0 	call	80bb8c <__udivsi3>
  80b300:	9009883a 	mov	r4,r18
  80b304:	100b883a 	mov	r5,r2
  80b308:	1021883a 	mov	r16,r2
  80b30c:	08016c40 	call	8016c4 <__mulsi3>
  80b310:	b82e943a 	slli	r23,r23,16
  80b314:	a808d43a 	srli	r4,r21,16
  80b318:	b908b03a 	or	r4,r23,r4
  80b31c:	2080062e 	bgeu	r4,r2,80b338 <__udivdi3+0x480>
  80b320:	24c9883a 	add	r4,r4,r19
  80b324:	817fffc4 	addi	r5,r16,-1
  80b328:	24c05c36 	bltu	r4,r19,80b49c <__udivdi3+0x5e4>
  80b32c:	20805b2e 	bgeu	r4,r2,80b49c <__udivdi3+0x5e4>
  80b330:	843fff84 	addi	r16,r16,-2
  80b334:	24c9883a 	add	r4,r4,r19
  80b338:	20abc83a 	sub	r21,r4,r2
  80b33c:	a809883a 	mov	r4,r21
  80b340:	e00b883a 	mov	r5,fp
  80b344:	080bbf00 	call	80bbf0 <__umodsi3>
  80b348:	a809883a 	mov	r4,r21
  80b34c:	e00b883a 	mov	r5,fp
  80b350:	102b883a 	mov	r21,r2
  80b354:	080bb8c0 	call	80bb8c <__udivsi3>
  80b358:	9009883a 	mov	r4,r18
  80b35c:	100b883a 	mov	r5,r2
  80b360:	102f883a 	mov	r23,r2
  80b364:	08016c40 	call	8016c4 <__mulsi3>
  80b368:	d8c00017 	ldw	r3,0(sp)
  80b36c:	a82a943a 	slli	r21,r21,16
  80b370:	1cbfffcc 	andi	r18,r3,65535
  80b374:	aca4b03a 	or	r18,r21,r18
  80b378:	9080062e 	bgeu	r18,r2,80b394 <__udivdi3+0x4dc>
  80b37c:	94e5883a 	add	r18,r18,r19
  80b380:	b8ffffc4 	addi	r3,r23,-1
  80b384:	94c04136 	bltu	r18,r19,80b48c <__udivdi3+0x5d4>
  80b388:	9080402e 	bgeu	r18,r2,80b48c <__udivdi3+0x5d4>
  80b38c:	bdffff84 	addi	r23,r23,-2
  80b390:	94e5883a 	add	r18,r18,r19
  80b394:	8020943a 	slli	r16,r16,16
  80b398:	bd7fffcc 	andi	r21,r23,65535
  80b39c:	b73fffcc 	andi	fp,r22,65535
  80b3a0:	85e0b03a 	or	r16,r16,r23
  80b3a4:	8026d43a 	srli	r19,r16,16
  80b3a8:	a809883a 	mov	r4,r21
  80b3ac:	e00b883a 	mov	r5,fp
  80b3b0:	b02cd43a 	srli	r22,r22,16
  80b3b4:	90a5c83a 	sub	r18,r18,r2
  80b3b8:	08016c40 	call	8016c4 <__mulsi3>
  80b3bc:	9809883a 	mov	r4,r19
  80b3c0:	e00b883a 	mov	r5,fp
  80b3c4:	102f883a 	mov	r23,r2
  80b3c8:	08016c40 	call	8016c4 <__mulsi3>
  80b3cc:	9809883a 	mov	r4,r19
  80b3d0:	b00b883a 	mov	r5,r22
  80b3d4:	1027883a 	mov	r19,r2
  80b3d8:	08016c40 	call	8016c4 <__mulsi3>
  80b3dc:	a809883a 	mov	r4,r21
  80b3e0:	b00b883a 	mov	r5,r22
  80b3e4:	102b883a 	mov	r21,r2
  80b3e8:	08016c40 	call	8016c4 <__mulsi3>
  80b3ec:	b806d43a 	srli	r3,r23,16
  80b3f0:	14c5883a 	add	r2,r2,r19
  80b3f4:	1887883a 	add	r3,r3,r2
  80b3f8:	1cc0022e 	bgeu	r3,r19,80b404 <__udivdi3+0x54c>
  80b3fc:	00800074 	movhi	r2,1
  80b400:	a8ab883a 	add	r21,r21,r2
  80b404:	1804d43a 	srli	r2,r3,16
  80b408:	156b883a 	add	r21,r2,r21
  80b40c:	95400936 	bltu	r18,r21,80b434 <__udivdi3+0x57c>
  80b410:	95400326 	beq	r18,r21,80b420 <__udivdi3+0x568>
  80b414:	8005883a 	mov	r2,r16
  80b418:	0007883a 	mov	r3,zero
  80b41c:	003efd06 	br	80b014 <__udivdi3+0x15c>
  80b420:	1806943a 	slli	r3,r3,16
  80b424:	a44c983a 	sll	r6,r20,r17
  80b428:	bdffffcc 	andi	r23,r23,65535
  80b42c:	1dc7883a 	add	r3,r3,r23
  80b430:	30fff82e 	bgeu	r6,r3,80b414 <__udivdi3+0x55c>
  80b434:	80bfffc4 	addi	r2,r16,-1
  80b438:	0007883a 	mov	r3,zero
  80b43c:	003ef506 	br	80b014 <__udivdi3+0x15c>
  80b440:	3806d43a 	srli	r3,r7,16
  80b444:	01000404 	movi	r4,16
  80b448:	003f0406 	br	80b05c <__udivdi3+0x1a4>
  80b44c:	3007883a 	mov	r3,r6
  80b450:	003eb206 	br	80af1c <__udivdi3+0x64>
  80b454:	0007883a 	mov	r3,zero
  80b458:	00800044 	movi	r2,1
  80b45c:	003eed06 	br	80b014 <__udivdi3+0x15c>
  80b460:	3807883a 	mov	r3,r7
  80b464:	0009883a 	mov	r4,zero
  80b468:	003efc06 	br	80b05c <__udivdi3+0x1a4>
  80b46c:	8006d43a 	srli	r3,r16,16
  80b470:	04400404 	movi	r17,16
  80b474:	003f0f06 	br	80b0b4 <__udivdi3+0x1fc>
  80b478:	3006d43a 	srli	r3,r6,16
  80b47c:	04400404 	movi	r17,16
  80b480:	003ea606 	br	80af1c <__udivdi3+0x64>
  80b484:	8007883a 	mov	r3,r16
  80b488:	003f0a06 	br	80b0b4 <__udivdi3+0x1fc>
  80b48c:	182f883a 	mov	r23,r3
  80b490:	003fc006 	br	80b394 <__udivdi3+0x4dc>
  80b494:	1839883a 	mov	fp,r3
  80b498:	003f8306 	br	80b2a8 <__udivdi3+0x3f0>
  80b49c:	2821883a 	mov	r16,r5
  80b4a0:	003fa506 	br	80b338 <__udivdi3+0x480>
  80b4a4:	182f883a 	mov	r23,r3
  80b4a8:	003f6906 	br	80b250 <__udivdi3+0x398>
  80b4ac:	94bfff84 	addi	r18,r18,-2
  80b4b0:	003f3806 	br	80b194 <__udivdi3+0x2dc>
  80b4b4:	94bfff84 	addi	r18,r18,-2
  80b4b8:	003ecf06 	br	80aff8 <__udivdi3+0x140>
  80b4bc:	ad7fff84 	addi	r21,r21,-2
  80b4c0:	2409883a 	add	r4,r4,r16
  80b4c4:	003eb706 	br	80afa4 <__udivdi3+0xec>
  80b4c8:	ad7fff84 	addi	r21,r21,-2
  80b4cc:	2409883a 	add	r4,r4,r16
  80b4d0:	003f1906 	br	80b138 <__udivdi3+0x280>

0080b4d4 <__umoddi3>:
  80b4d4:	defff304 	addi	sp,sp,-52
  80b4d8:	dc400415 	stw	r17,16(sp)
  80b4dc:	dc000315 	stw	r16,12(sp)
  80b4e0:	dfc00c15 	stw	ra,48(sp)
  80b4e4:	df000b15 	stw	fp,44(sp)
  80b4e8:	ddc00a15 	stw	r23,40(sp)
  80b4ec:	dd800915 	stw	r22,36(sp)
  80b4f0:	dd400815 	stw	r21,32(sp)
  80b4f4:	dd000715 	stw	r20,28(sp)
  80b4f8:	dcc00615 	stw	r19,24(sp)
  80b4fc:	dc800515 	stw	r18,20(sp)
  80b500:	2823883a 	mov	r17,r5
  80b504:	2021883a 	mov	r16,r4
  80b508:	38003b1e 	bne	r7,zero,80b5f8 <__umoddi3+0x124>
  80b50c:	3825883a 	mov	r18,r7
  80b510:	3029883a 	mov	r20,r6
  80b514:	2027883a 	mov	r19,r4
  80b518:	29805b2e 	bgeu	r5,r6,80b688 <__umoddi3+0x1b4>
  80b51c:	00bfffd4 	movui	r2,65535
  80b520:	282d883a 	mov	r22,r5
  80b524:	11809a2e 	bgeu	r2,r6,80b790 <__umoddi3+0x2bc>
  80b528:	00804034 	movhi	r2,256
  80b52c:	30814436 	bltu	r6,r2,80ba40 <__umoddi3+0x56c>
  80b530:	3006d63a 	srli	r3,r6,24
  80b534:	04800604 	movi	r18,24
  80b538:	00802074 	movhi	r2,129
  80b53c:	1885883a 	add	r2,r3,r2
  80b540:	11016503 	ldbu	r4,1428(r2)
  80b544:	00800804 	movi	r2,32
  80b548:	2489883a 	add	r4,r4,r18
  80b54c:	1125c83a 	sub	r18,r2,r4
  80b550:	11000526 	beq	r2,r4,80b568 <__umoddi3+0x94>
  80b554:	8ca2983a 	sll	r17,r17,r18
  80b558:	8108d83a 	srl	r4,r16,r4
  80b55c:	34a8983a 	sll	r20,r6,r18
  80b560:	84a6983a 	sll	r19,r16,r18
  80b564:	246cb03a 	or	r22,r4,r17
  80b568:	a02ed43a 	srli	r23,r20,16
  80b56c:	b009883a 	mov	r4,r22
  80b570:	a57fffcc 	andi	r21,r20,65535
  80b574:	b80b883a 	mov	r5,r23
  80b578:	080bbf00 	call	80bbf0 <__umodsi3>
  80b57c:	b80b883a 	mov	r5,r23
  80b580:	b009883a 	mov	r4,r22
  80b584:	1023883a 	mov	r17,r2
  80b588:	080bb8c0 	call	80bb8c <__udivsi3>
  80b58c:	a809883a 	mov	r4,r21
  80b590:	100b883a 	mov	r5,r2
  80b594:	08016c40 	call	8016c4 <__mulsi3>
  80b598:	8822943a 	slli	r17,r17,16
  80b59c:	9808d43a 	srli	r4,r19,16
  80b5a0:	8908b03a 	or	r4,r17,r4
  80b5a4:	2080042e 	bgeu	r4,r2,80b5b8 <__umoddi3+0xe4>
  80b5a8:	2509883a 	add	r4,r4,r20
  80b5ac:	25000236 	bltu	r4,r20,80b5b8 <__umoddi3+0xe4>
  80b5b0:	2080012e 	bgeu	r4,r2,80b5b8 <__umoddi3+0xe4>
  80b5b4:	2509883a 	add	r4,r4,r20
  80b5b8:	20a1c83a 	sub	r16,r4,r2
  80b5bc:	b80b883a 	mov	r5,r23
  80b5c0:	8009883a 	mov	r4,r16
  80b5c4:	080bbf00 	call	80bbf0 <__umodsi3>
  80b5c8:	b80b883a 	mov	r5,r23
  80b5cc:	8009883a 	mov	r4,r16
  80b5d0:	1023883a 	mov	r17,r2
  80b5d4:	080bb8c0 	call	80bb8c <__udivsi3>
  80b5d8:	8822943a 	slli	r17,r17,16
  80b5dc:	100b883a 	mov	r5,r2
  80b5e0:	a809883a 	mov	r4,r21
  80b5e4:	08016c40 	call	8016c4 <__mulsi3>
  80b5e8:	98ffffcc 	andi	r3,r19,65535
  80b5ec:	88c6b03a 	or	r3,r17,r3
  80b5f0:	18805e2e 	bgeu	r3,r2,80b76c <__umoddi3+0x298>
  80b5f4:	00005906 	br	80b75c <__umoddi3+0x288>
  80b5f8:	2005883a 	mov	r2,r4
  80b5fc:	29c00d2e 	bgeu	r5,r7,80b634 <__umoddi3+0x160>
  80b600:	2807883a 	mov	r3,r5
  80b604:	dfc00c17 	ldw	ra,48(sp)
  80b608:	df000b17 	ldw	fp,44(sp)
  80b60c:	ddc00a17 	ldw	r23,40(sp)
  80b610:	dd800917 	ldw	r22,36(sp)
  80b614:	dd400817 	ldw	r21,32(sp)
  80b618:	dd000717 	ldw	r20,28(sp)
  80b61c:	dcc00617 	ldw	r19,24(sp)
  80b620:	dc800517 	ldw	r18,20(sp)
  80b624:	dc400417 	ldw	r17,16(sp)
  80b628:	dc000317 	ldw	r16,12(sp)
  80b62c:	dec00d04 	addi	sp,sp,52
  80b630:	f800283a 	ret
  80b634:	013fffd4 	movui	r4,65535
  80b638:	2807883a 	mov	r3,r5
  80b63c:	21c0592e 	bgeu	r4,r7,80b7a4 <__umoddi3+0x2d0>
  80b640:	01004034 	movhi	r4,256
  80b644:	39010336 	bltu	r7,r4,80ba54 <__umoddi3+0x580>
  80b648:	3808d63a 	srli	r4,r7,24
  80b64c:	02000604 	movi	r8,24
  80b650:	01402074 	movhi	r5,129
  80b654:	214b883a 	add	r5,r4,r5
  80b658:	2d016503 	ldbu	r20,1428(r5)
  80b65c:	01000804 	movi	r4,32
  80b660:	a229883a 	add	r20,r20,r8
  80b664:	252bc83a 	sub	r21,r4,r20
  80b668:	2500531e 	bne	r4,r20,80b7b8 <__umoddi3+0x2e4>
  80b66c:	3c400136 	bltu	r7,r17,80b674 <__umoddi3+0x1a0>
  80b670:	81bfe436 	bltu	r16,r6,80b604 <__umoddi3+0x130>
  80b674:	8185c83a 	sub	r2,r16,r6
  80b678:	89cfc83a 	sub	r7,r17,r7
  80b67c:	8087803a 	cmpltu	r3,r16,r2
  80b680:	38c7c83a 	sub	r3,r7,r3
  80b684:	003fdf06 	br	80b604 <__umoddi3+0x130>
  80b688:	3000041e 	bne	r6,zero,80b69c <__umoddi3+0x1c8>
  80b68c:	000b883a 	mov	r5,zero
  80b690:	01000044 	movi	r4,1
  80b694:	080bb8c0 	call	80bb8c <__udivsi3>
  80b698:	1029883a 	mov	r20,r2
  80b69c:	00bfffd4 	movui	r2,65535
  80b6a0:	1500362e 	bgeu	r2,r20,80b77c <__umoddi3+0x2a8>
  80b6a4:	00804034 	movhi	r2,256
  80b6a8:	a080ed36 	bltu	r20,r2,80ba60 <__umoddi3+0x58c>
  80b6ac:	a006d63a 	srli	r3,r20,24
  80b6b0:	04800604 	movi	r18,24
  80b6b4:	00802074 	movhi	r2,129
  80b6b8:	1885883a 	add	r2,r3,r2
  80b6bc:	15816503 	ldbu	r22,1428(r2)
  80b6c0:	00800804 	movi	r2,32
  80b6c4:	b4ad883a 	add	r22,r22,r18
  80b6c8:	15a5c83a 	sub	r18,r2,r22
  80b6cc:	1580a51e 	bne	r2,r22,80b964 <__umoddi3+0x490>
  80b6d0:	a02ed43a 	srli	r23,r20,16
  80b6d4:	8d23c83a 	sub	r17,r17,r20
  80b6d8:	a57fffcc 	andi	r21,r20,65535
  80b6dc:	8809883a 	mov	r4,r17
  80b6e0:	b80b883a 	mov	r5,r23
  80b6e4:	080bbf00 	call	80bbf0 <__umodsi3>
  80b6e8:	8809883a 	mov	r4,r17
  80b6ec:	b80b883a 	mov	r5,r23
  80b6f0:	1023883a 	mov	r17,r2
  80b6f4:	080bb8c0 	call	80bb8c <__udivsi3>
  80b6f8:	1009883a 	mov	r4,r2
  80b6fc:	a80b883a 	mov	r5,r21
  80b700:	08016c40 	call	8016c4 <__mulsi3>
  80b704:	8822943a 	slli	r17,r17,16
  80b708:	9808d43a 	srli	r4,r19,16
  80b70c:	8908b03a 	or	r4,r17,r4
  80b710:	2080032e 	bgeu	r4,r2,80b720 <__umoddi3+0x24c>
  80b714:	2509883a 	add	r4,r4,r20
  80b718:	25000136 	bltu	r4,r20,80b720 <__umoddi3+0x24c>
  80b71c:	2080dc36 	bltu	r4,r2,80ba90 <__umoddi3+0x5bc>
  80b720:	20a1c83a 	sub	r16,r4,r2
  80b724:	b80b883a 	mov	r5,r23
  80b728:	8009883a 	mov	r4,r16
  80b72c:	080bbf00 	call	80bbf0 <__umodsi3>
  80b730:	b80b883a 	mov	r5,r23
  80b734:	8009883a 	mov	r4,r16
  80b738:	1023883a 	mov	r17,r2
  80b73c:	8822943a 	slli	r17,r17,16
  80b740:	080bb8c0 	call	80bb8c <__udivsi3>
  80b744:	a80b883a 	mov	r5,r21
  80b748:	1009883a 	mov	r4,r2
  80b74c:	08016c40 	call	8016c4 <__mulsi3>
  80b750:	9cffffcc 	andi	r19,r19,65535
  80b754:	8cc6b03a 	or	r3,r17,r19
  80b758:	1880042e 	bgeu	r3,r2,80b76c <__umoddi3+0x298>
  80b75c:	1d07883a 	add	r3,r3,r20
  80b760:	1d000236 	bltu	r3,r20,80b76c <__umoddi3+0x298>
  80b764:	1880012e 	bgeu	r3,r2,80b76c <__umoddi3+0x298>
  80b768:	1d07883a 	add	r3,r3,r20
  80b76c:	1885c83a 	sub	r2,r3,r2
  80b770:	1484d83a 	srl	r2,r2,r18
  80b774:	0007883a 	mov	r3,zero
  80b778:	003fa206 	br	80b604 <__umoddi3+0x130>
  80b77c:	a0804030 	cmpltui	r2,r20,256
  80b780:	1000ba1e 	bne	r2,zero,80ba6c <__umoddi3+0x598>
  80b784:	a006d23a 	srli	r3,r20,8
  80b788:	04800204 	movi	r18,8
  80b78c:	003fc906 	br	80b6b4 <__umoddi3+0x1e0>
  80b790:	30804030 	cmpltui	r2,r6,256
  80b794:	1000ad1e 	bne	r2,zero,80ba4c <__umoddi3+0x578>
  80b798:	3006d23a 	srli	r3,r6,8
  80b79c:	04800204 	movi	r18,8
  80b7a0:	003f6506 	br	80b538 <__umoddi3+0x64>
  80b7a4:	39004030 	cmpltui	r4,r7,256
  80b7a8:	2000b21e 	bne	r4,zero,80ba74 <__umoddi3+0x5a0>
  80b7ac:	3808d23a 	srli	r4,r7,8
  80b7b0:	02000204 	movi	r8,8
  80b7b4:	003fa606 	br	80b650 <__umoddi3+0x17c>
  80b7b8:	3d4e983a 	sll	r7,r7,r21
  80b7bc:	3508d83a 	srl	r4,r6,r20
  80b7c0:	8d2cd83a 	srl	r22,r17,r20
  80b7c4:	8504d83a 	srl	r2,r16,r20
  80b7c8:	21e4b03a 	or	r18,r4,r7
  80b7cc:	8d62983a 	sll	r17,r17,r21
  80b7d0:	9026d43a 	srli	r19,r18,16
  80b7d4:	354c983a 	sll	r6,r6,r21
  80b7d8:	1444b03a 	or	r2,r2,r17
  80b7dc:	b009883a 	mov	r4,r22
  80b7e0:	980b883a 	mov	r5,r19
  80b7e4:	d9800115 	stw	r6,4(sp)
  80b7e8:	d8800015 	stw	r2,0(sp)
  80b7ec:	080bbf00 	call	80bbf0 <__umodsi3>
  80b7f0:	980b883a 	mov	r5,r19
  80b7f4:	b009883a 	mov	r4,r22
  80b7f8:	102f883a 	mov	r23,r2
  80b7fc:	947fffcc 	andi	r17,r18,65535
  80b800:	080bb8c0 	call	80bb8c <__udivsi3>
  80b804:	8809883a 	mov	r4,r17
  80b808:	100b883a 	mov	r5,r2
  80b80c:	1039883a 	mov	fp,r2
  80b810:	08016c40 	call	8016c4 <__mulsi3>
  80b814:	d8c00017 	ldw	r3,0(sp)
  80b818:	b82e943a 	slli	r23,r23,16
  80b81c:	8560983a 	sll	r16,r16,r21
  80b820:	1808d43a 	srli	r4,r3,16
  80b824:	b908b03a 	or	r4,r23,r4
  80b828:	2080062e 	bgeu	r4,r2,80b844 <__umoddi3+0x370>
  80b82c:	2489883a 	add	r4,r4,r18
  80b830:	e17fffc4 	addi	r5,fp,-1
  80b834:	24809436 	bltu	r4,r18,80ba88 <__umoddi3+0x5b4>
  80b838:	2080932e 	bgeu	r4,r2,80ba88 <__umoddi3+0x5b4>
  80b83c:	e73fff84 	addi	fp,fp,-2
  80b840:	2489883a 	add	r4,r4,r18
  80b844:	20adc83a 	sub	r22,r4,r2
  80b848:	980b883a 	mov	r5,r19
  80b84c:	b009883a 	mov	r4,r22
  80b850:	080bbf00 	call	80bbf0 <__umodsi3>
  80b854:	980b883a 	mov	r5,r19
  80b858:	b009883a 	mov	r4,r22
  80b85c:	102f883a 	mov	r23,r2
  80b860:	080bb8c0 	call	80bb8c <__udivsi3>
  80b864:	100b883a 	mov	r5,r2
  80b868:	8809883a 	mov	r4,r17
  80b86c:	d8800215 	stw	r2,8(sp)
  80b870:	08016c40 	call	8016c4 <__mulsi3>
  80b874:	d8c00017 	ldw	r3,0(sp)
  80b878:	b82e943a 	slli	r23,r23,16
  80b87c:	d9400217 	ldw	r5,8(sp)
  80b880:	1c7fffcc 	andi	r17,r3,65535
  80b884:	bc62b03a 	or	r17,r23,r17
  80b888:	8880062e 	bgeu	r17,r2,80b8a4 <__umoddi3+0x3d0>
  80b88c:	8ca3883a 	add	r17,r17,r18
  80b890:	28ffffc4 	addi	r3,r5,-1
  80b894:	8c807a36 	bltu	r17,r18,80ba80 <__umoddi3+0x5ac>
  80b898:	8880792e 	bgeu	r17,r2,80ba80 <__umoddi3+0x5ac>
  80b89c:	297fff84 	addi	r5,r5,-2
  80b8a0:	8ca3883a 	add	r17,r17,r18
  80b8a4:	e02c943a 	slli	r22,fp,16
  80b8a8:	d9c00117 	ldw	r7,4(sp)
  80b8ac:	29bfffcc 	andi	r6,r5,65535
  80b8b0:	b16cb03a 	or	r22,r22,r5
  80b8b4:	38ffffcc 	andi	r3,r7,65535
  80b8b8:	b02cd43a 	srli	r22,r22,16
  80b8bc:	180b883a 	mov	r5,r3
  80b8c0:	3009883a 	mov	r4,r6
  80b8c4:	3838d43a 	srli	fp,r7,16
  80b8c8:	182f883a 	mov	r23,r3
  80b8cc:	d9800015 	stw	r6,0(sp)
  80b8d0:	88a3c83a 	sub	r17,r17,r2
  80b8d4:	08016c40 	call	8016c4 <__mulsi3>
  80b8d8:	b80b883a 	mov	r5,r23
  80b8dc:	b009883a 	mov	r4,r22
  80b8e0:	102f883a 	mov	r23,r2
  80b8e4:	08016c40 	call	8016c4 <__mulsi3>
  80b8e8:	e00b883a 	mov	r5,fp
  80b8ec:	b009883a 	mov	r4,r22
  80b8f0:	102d883a 	mov	r22,r2
  80b8f4:	08016c40 	call	8016c4 <__mulsi3>
  80b8f8:	d9800017 	ldw	r6,0(sp)
  80b8fc:	e00b883a 	mov	r5,fp
  80b900:	1039883a 	mov	fp,r2
  80b904:	3009883a 	mov	r4,r6
  80b908:	08016c40 	call	8016c4 <__mulsi3>
  80b90c:	b808d43a 	srli	r4,r23,16
  80b910:	1585883a 	add	r2,r2,r22
  80b914:	2089883a 	add	r4,r4,r2
  80b918:	2580022e 	bgeu	r4,r22,80b924 <__umoddi3+0x450>
  80b91c:	00800074 	movhi	r2,1
  80b920:	e0b9883a 	add	fp,fp,r2
  80b924:	2006d43a 	srli	r3,r4,16
  80b928:	2008943a 	slli	r4,r4,16
  80b92c:	bdffffcc 	andi	r23,r23,65535
  80b930:	1f07883a 	add	r3,r3,fp
  80b934:	25c9883a 	add	r4,r4,r23
  80b938:	88c03a36 	bltu	r17,r3,80ba24 <__umoddi3+0x550>
  80b93c:	88c03826 	beq	r17,r3,80ba20 <__umoddi3+0x54c>
  80b940:	8109c83a 	sub	r4,r16,r4
  80b944:	8121803a 	cmpltu	r16,r16,r4
  80b948:	88c7c83a 	sub	r3,r17,r3
  80b94c:	1c07c83a 	sub	r3,r3,r16
  80b950:	1d04983a 	sll	r2,r3,r20
  80b954:	2548d83a 	srl	r4,r4,r21
  80b958:	1d46d83a 	srl	r3,r3,r21
  80b95c:	1104b03a 	or	r2,r2,r4
  80b960:	003f2806 	br	80b604 <__umoddi3+0x130>
  80b964:	a4a8983a 	sll	r20,r20,r18
  80b968:	8da6d83a 	srl	r19,r17,r22
  80b96c:	8ca2983a 	sll	r17,r17,r18
  80b970:	a02ed43a 	srli	r23,r20,16
  80b974:	9809883a 	mov	r4,r19
  80b978:	85acd83a 	srl	r22,r16,r22
  80b97c:	b80b883a 	mov	r5,r23
  80b980:	080bbf00 	call	80bbf0 <__umodsi3>
  80b984:	9809883a 	mov	r4,r19
  80b988:	b80b883a 	mov	r5,r23
  80b98c:	b46cb03a 	or	r22,r22,r17
  80b990:	a57fffcc 	andi	r21,r20,65535
  80b994:	1023883a 	mov	r17,r2
  80b998:	080bb8c0 	call	80bb8c <__udivsi3>
  80b99c:	a809883a 	mov	r4,r21
  80b9a0:	100b883a 	mov	r5,r2
  80b9a4:	08016c40 	call	8016c4 <__mulsi3>
  80b9a8:	8822943a 	slli	r17,r17,16
  80b9ac:	b008d43a 	srli	r4,r22,16
  80b9b0:	84a6983a 	sll	r19,r16,r18
  80b9b4:	8908b03a 	or	r4,r17,r4
  80b9b8:	2080042e 	bgeu	r4,r2,80b9cc <__umoddi3+0x4f8>
  80b9bc:	2509883a 	add	r4,r4,r20
  80b9c0:	25000236 	bltu	r4,r20,80b9cc <__umoddi3+0x4f8>
  80b9c4:	2080012e 	bgeu	r4,r2,80b9cc <__umoddi3+0x4f8>
  80b9c8:	2509883a 	add	r4,r4,r20
  80b9cc:	20a1c83a 	sub	r16,r4,r2
  80b9d0:	8009883a 	mov	r4,r16
  80b9d4:	b80b883a 	mov	r5,r23
  80b9d8:	080bbf00 	call	80bbf0 <__umodsi3>
  80b9dc:	8009883a 	mov	r4,r16
  80b9e0:	1021883a 	mov	r16,r2
  80b9e4:	b80b883a 	mov	r5,r23
  80b9e8:	8020943a 	slli	r16,r16,16
  80b9ec:	080bb8c0 	call	80bb8c <__udivsi3>
  80b9f0:	100b883a 	mov	r5,r2
  80b9f4:	a809883a 	mov	r4,r21
  80b9f8:	b47fffcc 	andi	r17,r22,65535
  80b9fc:	08016c40 	call	8016c4 <__mulsi3>
  80ba00:	8462b03a 	or	r17,r16,r17
  80ba04:	8880042e 	bgeu	r17,r2,80ba18 <__umoddi3+0x544>
  80ba08:	8d23883a 	add	r17,r17,r20
  80ba0c:	8d000236 	bltu	r17,r20,80ba18 <__umoddi3+0x544>
  80ba10:	8880012e 	bgeu	r17,r2,80ba18 <__umoddi3+0x544>
  80ba14:	8d23883a 	add	r17,r17,r20
  80ba18:	88a3c83a 	sub	r17,r17,r2
  80ba1c:	003f2f06 	br	80b6dc <__umoddi3+0x208>
  80ba20:	813fc72e 	bgeu	r16,r4,80b940 <__umoddi3+0x46c>
  80ba24:	d8800117 	ldw	r2,4(sp)
  80ba28:	20a7c83a 	sub	r19,r4,r2
  80ba2c:	24c9803a 	cmpltu	r4,r4,r19
  80ba30:	2489883a 	add	r4,r4,r18
  80ba34:	1907c83a 	sub	r3,r3,r4
  80ba38:	9809883a 	mov	r4,r19
  80ba3c:	003fc006 	br	80b940 <__umoddi3+0x46c>
  80ba40:	3006d43a 	srli	r3,r6,16
  80ba44:	04800404 	movi	r18,16
  80ba48:	003ebb06 	br	80b538 <__umoddi3+0x64>
  80ba4c:	3007883a 	mov	r3,r6
  80ba50:	003eb906 	br	80b538 <__umoddi3+0x64>
  80ba54:	3808d43a 	srli	r4,r7,16
  80ba58:	02000404 	movi	r8,16
  80ba5c:	003efc06 	br	80b650 <__umoddi3+0x17c>
  80ba60:	a006d43a 	srli	r3,r20,16
  80ba64:	04800404 	movi	r18,16
  80ba68:	003f1206 	br	80b6b4 <__umoddi3+0x1e0>
  80ba6c:	a007883a 	mov	r3,r20
  80ba70:	003f1006 	br	80b6b4 <__umoddi3+0x1e0>
  80ba74:	3809883a 	mov	r4,r7
  80ba78:	0011883a 	mov	r8,zero
  80ba7c:	003ef406 	br	80b650 <__umoddi3+0x17c>
  80ba80:	180b883a 	mov	r5,r3
  80ba84:	003f8706 	br	80b8a4 <__umoddi3+0x3d0>
  80ba88:	2839883a 	mov	fp,r5
  80ba8c:	003f6d06 	br	80b844 <__umoddi3+0x370>
  80ba90:	2509883a 	add	r4,r4,r20
  80ba94:	003f2206 	br	80b720 <__umoddi3+0x24c>

0080ba98 <__divsi3>:
  80ba98:	20001a16 	blt	r4,zero,80bb04 <__divsi3+0x6c>
  80ba9c:	000f883a 	mov	r7,zero
  80baa0:	2800020e 	bge	r5,zero,80baac <__divsi3+0x14>
  80baa4:	014bc83a 	sub	r5,zero,r5
  80baa8:	39c0005c 	xori	r7,r7,1
  80baac:	200d883a 	mov	r6,r4
  80bab0:	00c00044 	movi	r3,1
  80bab4:	2900092e 	bgeu	r5,r4,80badc <__divsi3+0x44>
  80bab8:	00800804 	movi	r2,32
  80babc:	00c00044 	movi	r3,1
  80bac0:	00000106 	br	80bac8 <__divsi3+0x30>
  80bac4:	10001226 	beq	r2,zero,80bb10 <__divsi3+0x78>
  80bac8:	294b883a 	add	r5,r5,r5
  80bacc:	10bfffc4 	addi	r2,r2,-1
  80bad0:	18c7883a 	add	r3,r3,r3
  80bad4:	293ffb36 	bltu	r5,r4,80bac4 <__divsi3+0x2c>
  80bad8:	18000d26 	beq	r3,zero,80bb10 <__divsi3+0x78>
  80badc:	0005883a 	mov	r2,zero
  80bae0:	31400236 	bltu	r6,r5,80baec <__divsi3+0x54>
  80bae4:	314dc83a 	sub	r6,r6,r5
  80bae8:	10c4b03a 	or	r2,r2,r3
  80baec:	1806d07a 	srli	r3,r3,1
  80baf0:	280ad07a 	srli	r5,r5,1
  80baf4:	183ffa1e 	bne	r3,zero,80bae0 <__divsi3+0x48>
  80baf8:	38000126 	beq	r7,zero,80bb00 <__divsi3+0x68>
  80bafc:	0085c83a 	sub	r2,zero,r2
  80bb00:	f800283a 	ret
  80bb04:	0109c83a 	sub	r4,zero,r4
  80bb08:	01c00044 	movi	r7,1
  80bb0c:	003fe406 	br	80baa0 <__divsi3+0x8>
  80bb10:	0005883a 	mov	r2,zero
  80bb14:	003ff806 	br	80baf8 <__divsi3+0x60>

0080bb18 <__modsi3>:
  80bb18:	20001916 	blt	r4,zero,80bb80 <__modsi3+0x68>
  80bb1c:	000f883a 	mov	r7,zero
  80bb20:	2005883a 	mov	r2,r4
  80bb24:	2800010e 	bge	r5,zero,80bb2c <__modsi3+0x14>
  80bb28:	014bc83a 	sub	r5,zero,r5
  80bb2c:	00c00044 	movi	r3,1
  80bb30:	2900092e 	bgeu	r5,r4,80bb58 <__modsi3+0x40>
  80bb34:	01800804 	movi	r6,32
  80bb38:	00c00044 	movi	r3,1
  80bb3c:	00000106 	br	80bb44 <__modsi3+0x2c>
  80bb40:	30000d26 	beq	r6,zero,80bb78 <__modsi3+0x60>
  80bb44:	294b883a 	add	r5,r5,r5
  80bb48:	31bfffc4 	addi	r6,r6,-1
  80bb4c:	18c7883a 	add	r3,r3,r3
  80bb50:	293ffb36 	bltu	r5,r4,80bb40 <__modsi3+0x28>
  80bb54:	18000826 	beq	r3,zero,80bb78 <__modsi3+0x60>
  80bb58:	1806d07a 	srli	r3,r3,1
  80bb5c:	11400136 	bltu	r2,r5,80bb64 <__modsi3+0x4c>
  80bb60:	1145c83a 	sub	r2,r2,r5
  80bb64:	280ad07a 	srli	r5,r5,1
  80bb68:	183ffb1e 	bne	r3,zero,80bb58 <__modsi3+0x40>
  80bb6c:	38000126 	beq	r7,zero,80bb74 <__modsi3+0x5c>
  80bb70:	0085c83a 	sub	r2,zero,r2
  80bb74:	f800283a 	ret
  80bb78:	2005883a 	mov	r2,r4
  80bb7c:	003ffb06 	br	80bb6c <__modsi3+0x54>
  80bb80:	0109c83a 	sub	r4,zero,r4
  80bb84:	01c00044 	movi	r7,1
  80bb88:	003fe506 	br	80bb20 <__modsi3+0x8>

0080bb8c <__udivsi3>:
  80bb8c:	200d883a 	mov	r6,r4
  80bb90:	2900152e 	bgeu	r5,r4,80bbe8 <__udivsi3+0x5c>
  80bb94:	28001416 	blt	r5,zero,80bbe8 <__udivsi3+0x5c>
  80bb98:	00800804 	movi	r2,32
  80bb9c:	00c00044 	movi	r3,1
  80bba0:	00000206 	br	80bbac <__udivsi3+0x20>
  80bba4:	10000e26 	beq	r2,zero,80bbe0 <__udivsi3+0x54>
  80bba8:	28000516 	blt	r5,zero,80bbc0 <__udivsi3+0x34>
  80bbac:	294b883a 	add	r5,r5,r5
  80bbb0:	10bfffc4 	addi	r2,r2,-1
  80bbb4:	18c7883a 	add	r3,r3,r3
  80bbb8:	293ffa36 	bltu	r5,r4,80bba4 <__udivsi3+0x18>
  80bbbc:	18000826 	beq	r3,zero,80bbe0 <__udivsi3+0x54>
  80bbc0:	0005883a 	mov	r2,zero
  80bbc4:	31400236 	bltu	r6,r5,80bbd0 <__udivsi3+0x44>
  80bbc8:	314dc83a 	sub	r6,r6,r5
  80bbcc:	10c4b03a 	or	r2,r2,r3
  80bbd0:	1806d07a 	srli	r3,r3,1
  80bbd4:	280ad07a 	srli	r5,r5,1
  80bbd8:	183ffa1e 	bne	r3,zero,80bbc4 <__udivsi3+0x38>
  80bbdc:	f800283a 	ret
  80bbe0:	0005883a 	mov	r2,zero
  80bbe4:	f800283a 	ret
  80bbe8:	00c00044 	movi	r3,1
  80bbec:	003ff406 	br	80bbc0 <__udivsi3+0x34>

0080bbf0 <__umodsi3>:
  80bbf0:	2005883a 	mov	r2,r4
  80bbf4:	2900132e 	bgeu	r5,r4,80bc44 <__umodsi3+0x54>
  80bbf8:	28001216 	blt	r5,zero,80bc44 <__umodsi3+0x54>
  80bbfc:	01800804 	movi	r6,32
  80bc00:	00c00044 	movi	r3,1
  80bc04:	00000206 	br	80bc10 <__umodsi3+0x20>
  80bc08:	30000c26 	beq	r6,zero,80bc3c <__umodsi3+0x4c>
  80bc0c:	28000516 	blt	r5,zero,80bc24 <__umodsi3+0x34>
  80bc10:	294b883a 	add	r5,r5,r5
  80bc14:	31bfffc4 	addi	r6,r6,-1
  80bc18:	18c7883a 	add	r3,r3,r3
  80bc1c:	293ffa36 	bltu	r5,r4,80bc08 <__umodsi3+0x18>
  80bc20:	18000626 	beq	r3,zero,80bc3c <__umodsi3+0x4c>
  80bc24:	1806d07a 	srli	r3,r3,1
  80bc28:	11400136 	bltu	r2,r5,80bc30 <__umodsi3+0x40>
  80bc2c:	1145c83a 	sub	r2,r2,r5
  80bc30:	280ad07a 	srli	r5,r5,1
  80bc34:	183ffb1e 	bne	r3,zero,80bc24 <__umodsi3+0x34>
  80bc38:	f800283a 	ret
  80bc3c:	2005883a 	mov	r2,r4
  80bc40:	f800283a 	ret
  80bc44:	00c00044 	movi	r3,1
  80bc48:	003ff606 	br	80bc24 <__umodsi3+0x34>

0080bc4c <__adddf3>:
  80bc4c:	02000434 	movhi	r8,16
  80bc50:	423fffc4 	addi	r8,r8,-1
  80bc54:	3a12703a 	and	r9,r7,r8
  80bc58:	2a06703a 	and	r3,r5,r8
  80bc5c:	2818d53a 	srli	r12,r5,20
  80bc60:	3804d53a 	srli	r2,r7,20
  80bc64:	481490fa 	slli	r10,r9,3
  80bc68:	280ad7fa 	srli	r5,r5,31
  80bc6c:	180690fa 	slli	r3,r3,3
  80bc70:	2016d77a 	srli	r11,r4,29
  80bc74:	3012d77a 	srli	r9,r6,29
  80bc78:	380ed7fa 	srli	r7,r7,31
  80bc7c:	defffb04 	addi	sp,sp,-20
  80bc80:	dc400115 	stw	r17,4(sp)
  80bc84:	dc000015 	stw	r16,0(sp)
  80bc88:	dfc00415 	stw	ra,16(sp)
  80bc8c:	dcc00315 	stw	r19,12(sp)
  80bc90:	dc800215 	stw	r18,8(sp)
  80bc94:	201c90fa 	slli	r14,r4,3
  80bc98:	301a90fa 	slli	r13,r6,3
  80bc9c:	6441ffcc 	andi	r17,r12,2047
  80bca0:	2821883a 	mov	r16,r5
  80bca4:	58c6b03a 	or	r3,r11,r3
  80bca8:	1081ffcc 	andi	r2,r2,2047
  80bcac:	4a92b03a 	or	r9,r9,r10
  80bcb0:	29c06326 	beq	r5,r7,80be40 <__adddf3+0x1f4>
  80bcb4:	888bc83a 	sub	r5,r17,r2
  80bcb8:	0140560e 	bge	zero,r5,80be14 <__adddf3+0x1c8>
  80bcbc:	10007526 	beq	r2,zero,80be94 <__adddf3+0x248>
  80bcc0:	8881ffd8 	cmpnei	r2,r17,2047
  80bcc4:	10012d26 	beq	r2,zero,80c17c <__adddf3+0x530>
  80bcc8:	4a402034 	orhi	r9,r9,128
  80bccc:	28800e48 	cmpgei	r2,r5,57
  80bcd0:	1000f41e 	bne	r2,zero,80c0a4 <__adddf3+0x458>
  80bcd4:	28800808 	cmpgei	r2,r5,32
  80bcd8:	1001471e 	bne	r2,zero,80c1f8 <__adddf3+0x5ac>
  80bcdc:	00800804 	movi	r2,32
  80bce0:	1145c83a 	sub	r2,r2,r5
  80bce4:	6948d83a 	srl	r4,r13,r5
  80bce8:	48a4983a 	sll	r18,r9,r2
  80bcec:	6884983a 	sll	r2,r13,r2
  80bcf0:	494ad83a 	srl	r5,r9,r5
  80bcf4:	9124b03a 	or	r18,r18,r4
  80bcf8:	101ac03a 	cmpne	r13,r2,zero
  80bcfc:	9364b03a 	or	r18,r18,r13
  80bd00:	1947c83a 	sub	r3,r3,r5
  80bd04:	74a5c83a 	sub	r18,r14,r18
  80bd08:	7489803a 	cmpltu	r4,r14,r18
  80bd0c:	1909c83a 	sub	r4,r3,r4
  80bd10:	2080202c 	andhi	r2,r4,128
  80bd14:	10008626 	beq	r2,zero,80bf30 <__adddf3+0x2e4>
  80bd18:	00802034 	movhi	r2,128
  80bd1c:	10bfffc4 	addi	r2,r2,-1
  80bd20:	20a6703a 	and	r19,r4,r2
  80bd24:	9800d626 	beq	r19,zero,80c080 <__adddf3+0x434>
  80bd28:	9809883a 	mov	r4,r19
  80bd2c:	08016700 	call	801670 <__clzsi2>
  80bd30:	133ffe04 	addi	r12,r2,-8
  80bd34:	01000804 	movi	r4,32
  80bd38:	2309c83a 	sub	r4,r4,r12
  80bd3c:	9108d83a 	srl	r4,r18,r4
  80bd40:	9b04983a 	sll	r2,r19,r12
  80bd44:	9324983a 	sll	r18,r18,r12
  80bd48:	2088b03a 	or	r4,r4,r2
  80bd4c:	6440c716 	blt	r12,r17,80c06c <__adddf3+0x420>
  80bd50:	6459c83a 	sub	r12,r12,r17
  80bd54:	62000044 	addi	r8,r12,1
  80bd58:	40800808 	cmpgei	r2,r8,32
  80bd5c:	1001191e 	bne	r2,zero,80c1c4 <__adddf3+0x578>
  80bd60:	00800804 	movi	r2,32
  80bd64:	1205c83a 	sub	r2,r2,r8
  80bd68:	9206d83a 	srl	r3,r18,r8
  80bd6c:	90a4983a 	sll	r18,r18,r2
  80bd70:	2084983a 	sll	r2,r4,r2
  80bd74:	2208d83a 	srl	r4,r4,r8
  80bd78:	9024c03a 	cmpne	r18,r18,zero
  80bd7c:	10c4b03a 	or	r2,r2,r3
  80bd80:	14a4b03a 	or	r18,r2,r18
  80bd84:	0023883a 	mov	r17,zero
  80bd88:	908001cc 	andi	r2,r18,7
  80bd8c:	10000726 	beq	r2,zero,80bdac <__adddf3+0x160>
  80bd90:	908003cc 	andi	r2,r18,15
  80bd94:	10800120 	cmpeqi	r2,r2,4
  80bd98:	1000041e 	bne	r2,zero,80bdac <__adddf3+0x160>
  80bd9c:	90c00104 	addi	r3,r18,4
  80bda0:	1ca5803a 	cmpltu	r18,r3,r18
  80bda4:	2489883a 	add	r4,r4,r18
  80bda8:	1825883a 	mov	r18,r3
  80bdac:	2080202c 	andhi	r2,r4,128
  80bdb0:	10006126 	beq	r2,zero,80bf38 <__adddf3+0x2ec>
  80bdb4:	89400044 	addi	r5,r17,1
  80bdb8:	2881ffe0 	cmpeqi	r2,r5,2047
  80bdbc:	2941ffcc 	andi	r5,r5,2047
  80bdc0:	1000731e 	bne	r2,zero,80bf90 <__adddf3+0x344>
  80bdc4:	023fe034 	movhi	r8,65408
  80bdc8:	423fffc4 	addi	r8,r8,-1
  80bdcc:	2210703a 	and	r8,r4,r8
  80bdd0:	4006927a 	slli	r3,r8,9
  80bdd4:	9024d0fa 	srli	r18,r18,3
  80bdd8:	4004977a 	slli	r2,r8,29
  80bddc:	1806d33a 	srli	r3,r3,12
  80bde0:	1484b03a 	or	r2,r2,r18
  80bde4:	280a953a 	slli	r5,r5,20
  80bde8:	84003fcc 	andi	r16,r16,255
  80bdec:	802097fa 	slli	r16,r16,31
  80bdf0:	28c6b03a 	or	r3,r5,r3
  80bdf4:	1c06b03a 	or	r3,r3,r16
  80bdf8:	dfc00417 	ldw	ra,16(sp)
  80bdfc:	dcc00317 	ldw	r19,12(sp)
  80be00:	dc800217 	ldw	r18,8(sp)
  80be04:	dc400117 	ldw	r17,4(sp)
  80be08:	dc000017 	ldw	r16,0(sp)
  80be0c:	dec00504 	addi	sp,sp,20
  80be10:	f800283a 	ret
  80be14:	28002726 	beq	r5,zero,80beb4 <__adddf3+0x268>
  80be18:	144bc83a 	sub	r5,r2,r17
  80be1c:	8800be1e 	bne	r17,zero,80c118 <__adddf3+0x4cc>
  80be20:	1b88b03a 	or	r4,r3,r14
  80be24:	20013126 	beq	r4,zero,80c2ec <__adddf3+0x6a0>
  80be28:	293fffc4 	addi	r4,r5,-1
  80be2c:	20017226 	beq	r4,zero,80c3f8 <__adddf3+0x7ac>
  80be30:	2941ffd8 	cmpnei	r5,r5,2047
  80be34:	2801c226 	beq	r5,zero,80c540 <__adddf3+0x8f4>
  80be38:	200b883a 	mov	r5,r4
  80be3c:	0000b906 	br	80c124 <__adddf3+0x4d8>
  80be40:	888bc83a 	sub	r5,r17,r2
  80be44:	0140700e 	bge	zero,r5,80c008 <__adddf3+0x3bc>
  80be48:	10002a26 	beq	r2,zero,80bef4 <__adddf3+0x2a8>
  80be4c:	8881ffd8 	cmpnei	r2,r17,2047
  80be50:	1000ca26 	beq	r2,zero,80c17c <__adddf3+0x530>
  80be54:	4a402034 	orhi	r9,r9,128
  80be58:	28800e48 	cmpgei	r2,r5,57
  80be5c:	1000421e 	bne	r2,zero,80bf68 <__adddf3+0x31c>
  80be60:	28800808 	cmpgei	r2,r5,32
  80be64:	1000ff26 	beq	r2,zero,80c264 <__adddf3+0x618>
  80be68:	2cbff804 	addi	r18,r5,-32
  80be6c:	29000820 	cmpeqi	r4,r5,32
  80be70:	4c84d83a 	srl	r2,r9,r18
  80be74:	2000041e 	bne	r4,zero,80be88 <__adddf3+0x23c>
  80be78:	01001004 	movi	r4,64
  80be7c:	214bc83a 	sub	r5,r4,r5
  80be80:	4952983a 	sll	r9,r9,r5
  80be84:	6a5ab03a 	or	r13,r13,r9
  80be88:	6824c03a 	cmpne	r18,r13,zero
  80be8c:	90a4b03a 	or	r18,r18,r2
  80be90:	00003706 	br	80bf70 <__adddf3+0x324>
  80be94:	4b44b03a 	or	r2,r9,r13
  80be98:	1000b126 	beq	r2,zero,80c160 <__adddf3+0x514>
  80be9c:	28bfffc4 	addi	r2,r5,-1
  80bea0:	10011a26 	beq	r2,zero,80c30c <__adddf3+0x6c0>
  80bea4:	2941ffd8 	cmpnei	r5,r5,2047
  80bea8:	28012526 	beq	r5,zero,80c340 <__adddf3+0x6f4>
  80beac:	100b883a 	mov	r5,r2
  80beb0:	003f8606 	br	80bccc <__adddf3+0x80>
  80beb4:	8a800044 	addi	r10,r17,1
  80beb8:	5281ff8c 	andi	r10,r10,2046
  80bebc:	50008b1e 	bne	r10,zero,80c0ec <__adddf3+0x4a0>
  80bec0:	1b96b03a 	or	r11,r3,r14
  80bec4:	4b44b03a 	or	r2,r9,r13
  80bec8:	8801031e 	bne	r17,zero,80c2d8 <__adddf3+0x68c>
  80becc:	58014126 	beq	r11,zero,80c3d4 <__adddf3+0x788>
  80bed0:	1001571e 	bne	r2,zero,80c430 <__adddf3+0x7e4>
  80bed4:	1804977a 	slli	r2,r3,29
  80bed8:	01480034 	movhi	r5,8192
  80bedc:	297fffc4 	addi	r5,r5,-1
  80bee0:	2148703a 	and	r4,r4,r5
  80bee4:	1810d0fa 	srli	r8,r3,3
  80bee8:	1104b03a 	or	r2,r2,r4
  80beec:	500b883a 	mov	r5,r10
  80bef0:	00001806 	br	80bf54 <__adddf3+0x308>
  80bef4:	4b44b03a 	or	r2,r9,r13
  80bef8:	10010a26 	beq	r2,zero,80c324 <__adddf3+0x6d8>
  80befc:	28bfffc4 	addi	r2,r5,-1
  80bf00:	10000426 	beq	r2,zero,80bf14 <__adddf3+0x2c8>
  80bf04:	2941ffd8 	cmpnei	r5,r5,2047
  80bf08:	28014226 	beq	r5,zero,80c414 <__adddf3+0x7c8>
  80bf0c:	100b883a 	mov	r5,r2
  80bf10:	003fd106 	br	80be58 <__adddf3+0x20c>
  80bf14:	7365883a 	add	r18,r14,r13
  80bf18:	1a47883a 	add	r3,r3,r9
  80bf1c:	9389803a 	cmpltu	r4,r18,r14
  80bf20:	1909883a 	add	r4,r3,r4
  80bf24:	2080202c 	andhi	r2,r4,128
  80bf28:	10009b1e 	bne	r2,zero,80c198 <__adddf3+0x54c>
  80bf2c:	04400044 	movi	r17,1
  80bf30:	908001cc 	andi	r2,r18,7
  80bf34:	103f961e 	bne	r2,zero,80bd90 <__adddf3+0x144>
  80bf38:	9024d0fa 	srli	r18,r18,3
  80bf3c:	2004977a 	slli	r2,r4,29
  80bf40:	2010d0fa 	srli	r8,r4,3
  80bf44:	880b883a 	mov	r5,r17
  80bf48:	9084b03a 	or	r2,r18,r2
  80bf4c:	28c1ffe0 	cmpeqi	r3,r5,2047
  80bf50:	1800251e 	bne	r3,zero,80bfe8 <__adddf3+0x39c>
  80bf54:	00c00434 	movhi	r3,16
  80bf58:	18ffffc4 	addi	r3,r3,-1
  80bf5c:	40c6703a 	and	r3,r8,r3
  80bf60:	2941ffcc 	andi	r5,r5,2047
  80bf64:	003f9f06 	br	80bde4 <__adddf3+0x198>
  80bf68:	4b64b03a 	or	r18,r9,r13
  80bf6c:	9024c03a 	cmpne	r18,r18,zero
  80bf70:	93a5883a 	add	r18,r18,r14
  80bf74:	9389803a 	cmpltu	r4,r18,r14
  80bf78:	20c9883a 	add	r4,r4,r3
  80bf7c:	2080202c 	andhi	r2,r4,128
  80bf80:	103feb26 	beq	r2,zero,80bf30 <__adddf3+0x2e4>
  80bf84:	8c400044 	addi	r17,r17,1
  80bf88:	8881ffe0 	cmpeqi	r2,r17,2047
  80bf8c:	10008326 	beq	r2,zero,80c19c <__adddf3+0x550>
  80bf90:	0141ffc4 	movi	r5,2047
  80bf94:	0007883a 	mov	r3,zero
  80bf98:	0005883a 	mov	r2,zero
  80bf9c:	003f9106 	br	80bde4 <__adddf3+0x198>
  80bfa0:	4b44b03a 	or	r2,r9,r13
  80bfa4:	180a977a 	slli	r5,r3,29
  80bfa8:	1810d0fa 	srli	r8,r3,3
  80bfac:	10016c26 	beq	r2,zero,80c560 <__adddf3+0x914>
  80bfb0:	00c80034 	movhi	r3,8192
  80bfb4:	18ffffc4 	addi	r3,r3,-1
  80bfb8:	20c4703a 	and	r2,r4,r3
  80bfbc:	4100022c 	andhi	r4,r8,8
  80bfc0:	1144b03a 	or	r2,r2,r5
  80bfc4:	20000826 	beq	r4,zero,80bfe8 <__adddf3+0x39c>
  80bfc8:	4808d0fa 	srli	r4,r9,3
  80bfcc:	2140022c 	andhi	r5,r4,8
  80bfd0:	2800051e 	bne	r5,zero,80bfe8 <__adddf3+0x39c>
  80bfd4:	4804977a 	slli	r2,r9,29
  80bfd8:	30cc703a 	and	r6,r6,r3
  80bfdc:	3821883a 	mov	r16,r7
  80bfe0:	3084b03a 	or	r2,r6,r2
  80bfe4:	2011883a 	mov	r8,r4
  80bfe8:	4086b03a 	or	r3,r8,r2
  80bfec:	18017126 	beq	r3,zero,80c5b4 <__adddf3+0x968>
  80bff0:	01000434 	movhi	r4,16
  80bff4:	40c00234 	orhi	r3,r8,8
  80bff8:	213fffc4 	addi	r4,r4,-1
  80bffc:	1906703a 	and	r3,r3,r4
  80c000:	0141ffc4 	movi	r5,2047
  80c004:	003f7706 	br	80bde4 <__adddf3+0x198>
  80c008:	28002926 	beq	r5,zero,80c0b0 <__adddf3+0x464>
  80c00c:	144bc83a 	sub	r5,r2,r17
  80c010:	88008c26 	beq	r17,zero,80c244 <__adddf3+0x5f8>
  80c014:	1101ffd8 	cmpnei	r4,r2,2047
  80c018:	20011126 	beq	r4,zero,80c460 <__adddf3+0x814>
  80c01c:	18c02034 	orhi	r3,r3,128
  80c020:	29000e48 	cmpgei	r4,r5,57
  80c024:	2000d51e 	bne	r4,zero,80c37c <__adddf3+0x730>
  80c028:	29000808 	cmpgei	r4,r5,32
  80c02c:	2001511e 	bne	r4,zero,80c574 <__adddf3+0x928>
  80c030:	01000804 	movi	r4,32
  80c034:	2149c83a 	sub	r4,r4,r5
  80c038:	1924983a 	sll	r18,r3,r4
  80c03c:	714cd83a 	srl	r6,r14,r5
  80c040:	7108983a 	sll	r4,r14,r4
  80c044:	194ad83a 	srl	r5,r3,r5
  80c048:	91a4b03a 	or	r18,r18,r6
  80c04c:	2006c03a 	cmpne	r3,r4,zero
  80c050:	90e4b03a 	or	r18,r18,r3
  80c054:	4953883a 	add	r9,r9,r5
  80c058:	9365883a 	add	r18,r18,r13
  80c05c:	9349803a 	cmpltu	r4,r18,r13
  80c060:	2249883a 	add	r4,r4,r9
  80c064:	1023883a 	mov	r17,r2
  80c068:	003fc406 	br	80bf7c <__adddf3+0x330>
  80c06c:	023fe034 	movhi	r8,65408
  80c070:	423fffc4 	addi	r8,r8,-1
  80c074:	8b23c83a 	sub	r17,r17,r12
  80c078:	2208703a 	and	r4,r4,r8
  80c07c:	003f4206 	br	80bd88 <__adddf3+0x13c>
  80c080:	9009883a 	mov	r4,r18
  80c084:	08016700 	call	801670 <__clzsi2>
  80c088:	13000604 	addi	r12,r2,24
  80c08c:	60c00808 	cmpgei	r3,r12,32
  80c090:	183f2826 	beq	r3,zero,80bd34 <__adddf3+0xe8>
  80c094:	113ffe04 	addi	r4,r2,-8
  80c098:	9108983a 	sll	r4,r18,r4
  80c09c:	0025883a 	mov	r18,zero
  80c0a0:	003f2a06 	br	80bd4c <__adddf3+0x100>
  80c0a4:	4b64b03a 	or	r18,r9,r13
  80c0a8:	9024c03a 	cmpne	r18,r18,zero
  80c0ac:	003f1506 	br	80bd04 <__adddf3+0xb8>
  80c0b0:	8a000044 	addi	r8,r17,1
  80c0b4:	4081ff8c 	andi	r2,r8,2046
  80c0b8:	1000751e 	bne	r2,zero,80c290 <__adddf3+0x644>
  80c0bc:	1b84b03a 	or	r2,r3,r14
  80c0c0:	8800bc1e 	bne	r17,zero,80c3b4 <__adddf3+0x768>
  80c0c4:	10010c26 	beq	r2,zero,80c4f8 <__adddf3+0x8ac>
  80c0c8:	4b44b03a 	or	r2,r9,r13
  80c0cc:	1001111e 	bne	r2,zero,80c514 <__adddf3+0x8c8>
  80c0d0:	180c977a 	slli	r6,r3,29
  80c0d4:	00880034 	movhi	r2,8192
  80c0d8:	10bfffc4 	addi	r2,r2,-1
  80c0dc:	2084703a 	and	r2,r4,r2
  80c0e0:	1810d0fa 	srli	r8,r3,3
  80c0e4:	1184b03a 	or	r2,r2,r6
  80c0e8:	003f9a06 	br	80bf54 <__adddf3+0x308>
  80c0ec:	7365c83a 	sub	r18,r14,r13
  80c0f0:	1a67c83a 	sub	r19,r3,r9
  80c0f4:	7489803a 	cmpltu	r4,r14,r18
  80c0f8:	9927c83a 	sub	r19,r19,r4
  80c0fc:	9880202c 	andhi	r2,r19,128
  80c100:	10006f1e 	bne	r2,zero,80c2c0 <__adddf3+0x674>
  80c104:	94c4b03a 	or	r2,r18,r19
  80c108:	103f061e 	bne	r2,zero,80bd24 <__adddf3+0xd8>
  80c10c:	0011883a 	mov	r8,zero
  80c110:	0021883a 	mov	r16,zero
  80c114:	003f8f06 	br	80bf54 <__adddf3+0x308>
  80c118:	1101ffd8 	cmpnei	r4,r2,2047
  80c11c:	20008f26 	beq	r4,zero,80c35c <__adddf3+0x710>
  80c120:	18c02034 	orhi	r3,r3,128
  80c124:	29000e48 	cmpgei	r4,r5,57
  80c128:	20003e1e 	bne	r4,zero,80c224 <__adddf3+0x5d8>
  80c12c:	29000808 	cmpgei	r4,r5,32
  80c130:	2000951e 	bne	r4,zero,80c388 <__adddf3+0x73c>
  80c134:	01000804 	movi	r4,32
  80c138:	2149c83a 	sub	r4,r4,r5
  80c13c:	1924983a 	sll	r18,r3,r4
  80c140:	714cd83a 	srl	r6,r14,r5
  80c144:	711c983a 	sll	r14,r14,r4
  80c148:	1946d83a 	srl	r3,r3,r5
  80c14c:	91a4b03a 	or	r18,r18,r6
  80c150:	701cc03a 	cmpne	r14,r14,zero
  80c154:	93a4b03a 	or	r18,r18,r14
  80c158:	48d3c83a 	sub	r9,r9,r3
  80c15c:	00003306 	br	80c22c <__adddf3+0x5e0>
  80c160:	1824977a 	slli	r18,r3,29
  80c164:	01880034 	movhi	r6,8192
  80c168:	31bfffc4 	addi	r6,r6,-1
  80c16c:	2184703a 	and	r2,r4,r6
  80c170:	1810d0fa 	srli	r8,r3,3
  80c174:	1484b03a 	or	r2,r2,r18
  80c178:	003f7406 	br	80bf4c <__adddf3+0x300>
  80c17c:	1804977a 	slli	r2,r3,29
  80c180:	01480034 	movhi	r5,8192
  80c184:	297fffc4 	addi	r5,r5,-1
  80c188:	2148703a 	and	r4,r4,r5
  80c18c:	1810d0fa 	srli	r8,r3,3
  80c190:	1104b03a 	or	r2,r2,r4
  80c194:	003f9406 	br	80bfe8 <__adddf3+0x39c>
  80c198:	04400084 	movi	r17,2
  80c19c:	00bfe034 	movhi	r2,65408
  80c1a0:	10bfffc4 	addi	r2,r2,-1
  80c1a4:	9006d07a 	srli	r3,r18,1
  80c1a8:	2088703a 	and	r4,r4,r2
  80c1ac:	200497fa 	slli	r2,r4,31
  80c1b0:	9480004c 	andi	r18,r18,1
  80c1b4:	1ca4b03a 	or	r18,r3,r18
  80c1b8:	2008d07a 	srli	r4,r4,1
  80c1bc:	14a4b03a 	or	r18,r2,r18
  80c1c0:	003ef106 	br	80bd88 <__adddf3+0x13c>
  80c1c4:	633ff844 	addi	r12,r12,-31
  80c1c8:	40800820 	cmpeqi	r2,r8,32
  80c1cc:	2318d83a 	srl	r12,r4,r12
  80c1d0:	1000041e 	bne	r2,zero,80c1e4 <__adddf3+0x598>
  80c1d4:	00801004 	movi	r2,64
  80c1d8:	1211c83a 	sub	r8,r2,r8
  80c1dc:	2208983a 	sll	r4,r4,r8
  80c1e0:	9124b03a 	or	r18,r18,r4
  80c1e4:	9024c03a 	cmpne	r18,r18,zero
  80c1e8:	9324b03a 	or	r18,r18,r12
  80c1ec:	0009883a 	mov	r4,zero
  80c1f0:	0023883a 	mov	r17,zero
  80c1f4:	003f4e06 	br	80bf30 <__adddf3+0x2e4>
  80c1f8:	2cbff804 	addi	r18,r5,-32
  80c1fc:	29000820 	cmpeqi	r4,r5,32
  80c200:	4c84d83a 	srl	r2,r9,r18
  80c204:	2000041e 	bne	r4,zero,80c218 <__adddf3+0x5cc>
  80c208:	01001004 	movi	r4,64
  80c20c:	214bc83a 	sub	r5,r4,r5
  80c210:	4952983a 	sll	r9,r9,r5
  80c214:	6a5ab03a 	or	r13,r13,r9
  80c218:	6824c03a 	cmpne	r18,r13,zero
  80c21c:	90a4b03a 	or	r18,r18,r2
  80c220:	003eb806 	br	80bd04 <__adddf3+0xb8>
  80c224:	1b88b03a 	or	r4,r3,r14
  80c228:	2024c03a 	cmpne	r18,r4,zero
  80c22c:	6ca5c83a 	sub	r18,r13,r18
  80c230:	6c89803a 	cmpltu	r4,r13,r18
  80c234:	4909c83a 	sub	r4,r9,r4
  80c238:	3821883a 	mov	r16,r7
  80c23c:	1023883a 	mov	r17,r2
  80c240:	003eb306 	br	80bd10 <__adddf3+0xc4>
  80c244:	1b88b03a 	or	r4,r3,r14
  80c248:	20008c26 	beq	r4,zero,80c47c <__adddf3+0x830>
  80c24c:	293fffc4 	addi	r4,r5,-1
  80c250:	2000d326 	beq	r4,zero,80c5a0 <__adddf3+0x954>
  80c254:	2941ffd8 	cmpnei	r5,r5,2047
  80c258:	28008126 	beq	r5,zero,80c460 <__adddf3+0x814>
  80c25c:	200b883a 	mov	r5,r4
  80c260:	003f6f06 	br	80c020 <__adddf3+0x3d4>
  80c264:	00800804 	movi	r2,32
  80c268:	1145c83a 	sub	r2,r2,r5
  80c26c:	6948d83a 	srl	r4,r13,r5
  80c270:	48a4983a 	sll	r18,r9,r2
  80c274:	6884983a 	sll	r2,r13,r2
  80c278:	494ad83a 	srl	r5,r9,r5
  80c27c:	9124b03a 	or	r18,r18,r4
  80c280:	101ac03a 	cmpne	r13,r2,zero
  80c284:	9364b03a 	or	r18,r18,r13
  80c288:	1947883a 	add	r3,r3,r5
  80c28c:	003f3806 	br	80bf70 <__adddf3+0x324>
  80c290:	4081ffe0 	cmpeqi	r2,r8,2047
  80c294:	103f3e1e 	bne	r2,zero,80bf90 <__adddf3+0x344>
  80c298:	7345883a 	add	r2,r14,r13
  80c29c:	139d803a 	cmpltu	r14,r2,r14
  80c2a0:	1a49883a 	add	r4,r3,r9
  80c2a4:	2389883a 	add	r4,r4,r14
  80c2a8:	202497fa 	slli	r18,r4,31
  80c2ac:	1004d07a 	srli	r2,r2,1
  80c2b0:	2008d07a 	srli	r4,r4,1
  80c2b4:	4023883a 	mov	r17,r8
  80c2b8:	90a4b03a 	or	r18,r18,r2
  80c2bc:	003f1c06 	br	80bf30 <__adddf3+0x2e4>
  80c2c0:	6ba5c83a 	sub	r18,r13,r14
  80c2c4:	48c9c83a 	sub	r4,r9,r3
  80c2c8:	6c85803a 	cmpltu	r2,r13,r18
  80c2cc:	20a7c83a 	sub	r19,r4,r2
  80c2d0:	3821883a 	mov	r16,r7
  80c2d4:	003e9306 	br	80bd24 <__adddf3+0xd8>
  80c2d8:	58006f1e 	bne	r11,zero,80c498 <__adddf3+0x84c>
  80c2dc:	10001f1e 	bne	r2,zero,80c35c <__adddf3+0x710>
  80c2e0:	00bfffc4 	movi	r2,-1
  80c2e4:	0021883a 	mov	r16,zero
  80c2e8:	003f4106 	br	80bff0 <__adddf3+0x3a4>
  80c2ec:	4808977a 	slli	r4,r9,29
  80c2f0:	00c80034 	movhi	r3,8192
  80c2f4:	18ffffc4 	addi	r3,r3,-1
  80c2f8:	30c4703a 	and	r2,r6,r3
  80c2fc:	4810d0fa 	srli	r8,r9,3
  80c300:	1104b03a 	or	r2,r2,r4
  80c304:	3821883a 	mov	r16,r7
  80c308:	003f1006 	br	80bf4c <__adddf3+0x300>
  80c30c:	7365c83a 	sub	r18,r14,r13
  80c310:	1a47c83a 	sub	r3,r3,r9
  80c314:	7489803a 	cmpltu	r4,r14,r18
  80c318:	1909c83a 	sub	r4,r3,r4
  80c31c:	04400044 	movi	r17,1
  80c320:	003e7b06 	br	80bd10 <__adddf3+0xc4>
  80c324:	1824977a 	slli	r18,r3,29
  80c328:	01c80034 	movhi	r7,8192
  80c32c:	39ffffc4 	addi	r7,r7,-1
  80c330:	21c4703a 	and	r2,r4,r7
  80c334:	1810d0fa 	srli	r8,r3,3
  80c338:	1484b03a 	or	r2,r2,r18
  80c33c:	003f0306 	br	80bf4c <__adddf3+0x300>
  80c340:	1824977a 	slli	r18,r3,29
  80c344:	01480034 	movhi	r5,8192
  80c348:	297fffc4 	addi	r5,r5,-1
  80c34c:	2144703a 	and	r2,r4,r5
  80c350:	1810d0fa 	srli	r8,r3,3
  80c354:	1484b03a 	or	r2,r2,r18
  80c358:	003f2306 	br	80bfe8 <__adddf3+0x39c>
  80c35c:	4806977a 	slli	r3,r9,29
  80c360:	00880034 	movhi	r2,8192
  80c364:	10bfffc4 	addi	r2,r2,-1
  80c368:	3084703a 	and	r2,r6,r2
  80c36c:	4810d0fa 	srli	r8,r9,3
  80c370:	10c4b03a 	or	r2,r2,r3
  80c374:	3821883a 	mov	r16,r7
  80c378:	003f1b06 	br	80bfe8 <__adddf3+0x39c>
  80c37c:	1b88b03a 	or	r4,r3,r14
  80c380:	2024c03a 	cmpne	r18,r4,zero
  80c384:	003f3406 	br	80c058 <__adddf3+0x40c>
  80c388:	2cbff804 	addi	r18,r5,-32
  80c38c:	29800820 	cmpeqi	r6,r5,32
  80c390:	1c88d83a 	srl	r4,r3,r18
  80c394:	3000041e 	bne	r6,zero,80c3a8 <__adddf3+0x75c>
  80c398:	01801004 	movi	r6,64
  80c39c:	314bc83a 	sub	r5,r6,r5
  80c3a0:	1946983a 	sll	r3,r3,r5
  80c3a4:	70dcb03a 	or	r14,r14,r3
  80c3a8:	7024c03a 	cmpne	r18,r14,zero
  80c3ac:	9124b03a 	or	r18,r18,r4
  80c3b0:	003f9e06 	br	80c22c <__adddf3+0x5e0>
  80c3b4:	103efa1e 	bne	r2,zero,80bfa0 <__adddf3+0x354>
  80c3b8:	4804977a 	slli	r2,r9,29
  80c3bc:	00c80034 	movhi	r3,8192
  80c3c0:	18ffffc4 	addi	r3,r3,-1
  80c3c4:	30cc703a 	and	r6,r6,r3
  80c3c8:	4810d0fa 	srli	r8,r9,3
  80c3cc:	1184b03a 	or	r2,r2,r6
  80c3d0:	003f0506 	br	80bfe8 <__adddf3+0x39c>
  80c3d4:	10004426 	beq	r2,zero,80c4e8 <__adddf3+0x89c>
  80c3d8:	4806977a 	slli	r3,r9,29
  80c3dc:	00880034 	movhi	r2,8192
  80c3e0:	10bfffc4 	addi	r2,r2,-1
  80c3e4:	3084703a 	and	r2,r6,r2
  80c3e8:	4810d0fa 	srli	r8,r9,3
  80c3ec:	10c4b03a 	or	r2,r2,r3
  80c3f0:	3821883a 	mov	r16,r7
  80c3f4:	003ed706 	br	80bf54 <__adddf3+0x308>
  80c3f8:	6ba5c83a 	sub	r18,r13,r14
  80c3fc:	48c7c83a 	sub	r3,r9,r3
  80c400:	6c85803a 	cmpltu	r2,r13,r18
  80c404:	1889c83a 	sub	r4,r3,r2
  80c408:	3821883a 	mov	r16,r7
  80c40c:	04400044 	movi	r17,1
  80c410:	003e3f06 	br	80bd10 <__adddf3+0xc4>
  80c414:	180a977a 	slli	r5,r3,29
  80c418:	00880034 	movhi	r2,8192
  80c41c:	10bfffc4 	addi	r2,r2,-1
  80c420:	2084703a 	and	r2,r4,r2
  80c424:	1810d0fa 	srli	r8,r3,3
  80c428:	1144b03a 	or	r2,r2,r5
  80c42c:	003eee06 	br	80bfe8 <__adddf3+0x39c>
  80c430:	7365c83a 	sub	r18,r14,r13
  80c434:	7485803a 	cmpltu	r2,r14,r18
  80c438:	1a49c83a 	sub	r4,r3,r9
  80c43c:	2089c83a 	sub	r4,r4,r2
  80c440:	2080202c 	andhi	r2,r4,128
  80c444:	10002626 	beq	r2,zero,80c4e0 <__adddf3+0x894>
  80c448:	6ba5c83a 	sub	r18,r13,r14
  80c44c:	48c7c83a 	sub	r3,r9,r3
  80c450:	6c85803a 	cmpltu	r2,r13,r18
  80c454:	1889c83a 	sub	r4,r3,r2
  80c458:	3821883a 	mov	r16,r7
  80c45c:	003e4a06 	br	80bd88 <__adddf3+0x13c>
  80c460:	4806977a 	slli	r3,r9,29
  80c464:	00880034 	movhi	r2,8192
  80c468:	10bfffc4 	addi	r2,r2,-1
  80c46c:	3084703a 	and	r2,r6,r2
  80c470:	4810d0fa 	srli	r8,r9,3
  80c474:	10c4b03a 	or	r2,r2,r3
  80c478:	003edb06 	br	80bfe8 <__adddf3+0x39c>
  80c47c:	4806977a 	slli	r3,r9,29
  80c480:	00880034 	movhi	r2,8192
  80c484:	10bfffc4 	addi	r2,r2,-1
  80c488:	3084703a 	and	r2,r6,r2
  80c48c:	4810d0fa 	srli	r8,r9,3
  80c490:	10c4b03a 	or	r2,r2,r3
  80c494:	003ead06 	br	80bf4c <__adddf3+0x300>
  80c498:	180a977a 	slli	r5,r3,29
  80c49c:	1810d0fa 	srli	r8,r3,3
  80c4a0:	10002f26 	beq	r2,zero,80c560 <__adddf3+0x914>
  80c4a4:	00c80034 	movhi	r3,8192
  80c4a8:	18ffffc4 	addi	r3,r3,-1
  80c4ac:	20c4703a 	and	r2,r4,r3
  80c4b0:	4100022c 	andhi	r4,r8,8
  80c4b4:	1144b03a 	or	r2,r2,r5
  80c4b8:	203ecb26 	beq	r4,zero,80bfe8 <__adddf3+0x39c>
  80c4bc:	4808d0fa 	srli	r4,r9,3
  80c4c0:	2140022c 	andhi	r5,r4,8
  80c4c4:	283ec81e 	bne	r5,zero,80bfe8 <__adddf3+0x39c>
  80c4c8:	4812977a 	slli	r9,r9,29
  80c4cc:	30c4703a 	and	r2,r6,r3
  80c4d0:	3821883a 	mov	r16,r7
  80c4d4:	1244b03a 	or	r2,r2,r9
  80c4d8:	2011883a 	mov	r8,r4
  80c4dc:	003ec206 	br	80bfe8 <__adddf3+0x39c>
  80c4e0:	9104b03a 	or	r2,r18,r4
  80c4e4:	103e921e 	bne	r2,zero,80bf30 <__adddf3+0x2e4>
  80c4e8:	0011883a 	mov	r8,zero
  80c4ec:	100b883a 	mov	r5,r2
  80c4f0:	0021883a 	mov	r16,zero
  80c4f4:	003e9706 	br	80bf54 <__adddf3+0x308>
  80c4f8:	4804977a 	slli	r2,r9,29
  80c4fc:	00c80034 	movhi	r3,8192
  80c500:	18ffffc4 	addi	r3,r3,-1
  80c504:	30cc703a 	and	r6,r6,r3
  80c508:	4810d0fa 	srli	r8,r9,3
  80c50c:	1184b03a 	or	r2,r2,r6
  80c510:	003e9006 	br	80bf54 <__adddf3+0x308>
  80c514:	7365883a 	add	r18,r14,r13
  80c518:	1a47883a 	add	r3,r3,r9
  80c51c:	9389803a 	cmpltu	r4,r18,r14
  80c520:	1909883a 	add	r4,r3,r4
  80c524:	2080202c 	andhi	r2,r4,128
  80c528:	103e8126 	beq	r2,zero,80bf30 <__adddf3+0x2e4>
  80c52c:	00bfe034 	movhi	r2,65408
  80c530:	10bfffc4 	addi	r2,r2,-1
  80c534:	2088703a 	and	r4,r4,r2
  80c538:	04400044 	movi	r17,1
  80c53c:	003e7c06 	br	80bf30 <__adddf3+0x2e4>
  80c540:	4804977a 	slli	r2,r9,29
  80c544:	00c80034 	movhi	r3,8192
  80c548:	18ffffc4 	addi	r3,r3,-1
  80c54c:	30cc703a 	and	r6,r6,r3
  80c550:	4810d0fa 	srli	r8,r9,3
  80c554:	1184b03a 	or	r2,r2,r6
  80c558:	3821883a 	mov	r16,r7
  80c55c:	003ea206 	br	80bfe8 <__adddf3+0x39c>
  80c560:	00880034 	movhi	r2,8192
  80c564:	10bfffc4 	addi	r2,r2,-1
  80c568:	2084703a 	and	r2,r4,r2
  80c56c:	1144b03a 	or	r2,r2,r5
  80c570:	003e9d06 	br	80bfe8 <__adddf3+0x39c>
  80c574:	293ff804 	addi	r4,r5,-32
  80c578:	29800820 	cmpeqi	r6,r5,32
  80c57c:	1908d83a 	srl	r4,r3,r4
  80c580:	3000041e 	bne	r6,zero,80c594 <__adddf3+0x948>
  80c584:	01801004 	movi	r6,64
  80c588:	314bc83a 	sub	r5,r6,r5
  80c58c:	1946983a 	sll	r3,r3,r5
  80c590:	70dcb03a 	or	r14,r14,r3
  80c594:	7024c03a 	cmpne	r18,r14,zero
  80c598:	9124b03a 	or	r18,r18,r4
  80c59c:	003eae06 	br	80c058 <__adddf3+0x40c>
  80c5a0:	7365883a 	add	r18,r14,r13
  80c5a4:	1a47883a 	add	r3,r3,r9
  80c5a8:	9345803a 	cmpltu	r2,r18,r13
  80c5ac:	1889883a 	add	r4,r3,r2
  80c5b0:	003e5c06 	br	80bf24 <__adddf3+0x2d8>
  80c5b4:	0005883a 	mov	r2,zero
  80c5b8:	0141ffc4 	movi	r5,2047
  80c5bc:	0007883a 	mov	r3,zero
  80c5c0:	003e0806 	br	80bde4 <__adddf3+0x198>

0080c5c4 <__divdf3>:
  80c5c4:	2810d53a 	srli	r8,r5,20
  80c5c8:	defff004 	addi	sp,sp,-64
  80c5cc:	dc000615 	stw	r16,24(sp)
  80c5d0:	04000434 	movhi	r16,16
  80c5d4:	df000e15 	stw	fp,56(sp)
  80c5d8:	ddc00d15 	stw	r23,52(sp)
  80c5dc:	dd800c15 	stw	r22,48(sp)
  80c5e0:	dd000a15 	stw	r20,40(sp)
  80c5e4:	843fffc4 	addi	r16,r16,-1
  80c5e8:	dfc00f15 	stw	ra,60(sp)
  80c5ec:	dd400b15 	stw	r21,44(sp)
  80c5f0:	dcc00915 	stw	r19,36(sp)
  80c5f4:	dc800815 	stw	r18,32(sp)
  80c5f8:	dc400715 	stw	r17,28(sp)
  80c5fc:	4201ffcc 	andi	r8,r8,2047
  80c600:	282ed7fa 	srli	r23,r5,31
  80c604:	3039883a 	mov	fp,r6
  80c608:	382d883a 	mov	r22,r7
  80c60c:	2029883a 	mov	r20,r4
  80c610:	2c20703a 	and	r16,r5,r16
  80c614:	40005326 	beq	r8,zero,80c764 <__divdf3+0x1a0>
  80c618:	4081ffe0 	cmpeqi	r2,r8,2047
  80c61c:	1000641e 	bne	r2,zero,80c7b0 <__divdf3+0x1ec>
  80c620:	2026d77a 	srli	r19,r4,29
  80c624:	800a90fa 	slli	r5,r16,3
  80c628:	202890fa 	slli	r20,r4,3
  80c62c:	44bf0044 	addi	r18,r8,-1023
  80c630:	994ab03a 	or	r5,r19,r5
  80c634:	2cc02034 	orhi	r19,r5,128
  80c638:	0021883a 	mov	r16,zero
  80c63c:	0023883a 	mov	r17,zero
  80c640:	b010d53a 	srli	r8,r22,20
  80c644:	00c00434 	movhi	r3,16
  80c648:	18ffffc4 	addi	r3,r3,-1
  80c64c:	4201ffcc 	andi	r8,r8,2047
  80c650:	b02ad7fa 	srli	r21,r22,31
  80c654:	b0ec703a 	and	r22,r22,r3
  80c658:	40005c26 	beq	r8,zero,80c7cc <__divdf3+0x208>
  80c65c:	4081ffe0 	cmpeqi	r2,r8,2047
  80c660:	1000201e 	bne	r2,zero,80c6e4 <__divdf3+0x120>
  80c664:	b00690fa 	slli	r3,r22,3
  80c668:	e004d77a 	srli	r2,fp,29
  80c66c:	e01490fa 	slli	r10,fp,3
  80c670:	423f0044 	addi	r8,r8,-1023
  80c674:	10c6b03a 	or	r3,r2,r3
  80c678:	1d802034 	orhi	r22,r3,128
  80c67c:	9225c83a 	sub	r18,r18,r8
  80c680:	0007883a 	mov	r3,zero
  80c684:	80800428 	cmpgeui	r2,r16,16
  80c688:	bd52f03a 	xor	r9,r23,r21
  80c68c:	1000a81e 	bne	r2,zero,80c930 <__divdf3+0x36c>
  80c690:	800c90ba 	slli	r6,r16,2
  80c694:	00802074 	movhi	r2,129
  80c698:	3085883a 	add	r2,r6,r2
  80c69c:	10b1a917 	ldw	r2,-14684(r2)
  80c6a0:	1000683a 	jmp	r2
  80c6a4:	0080c930 	cmpltui	r2,zero,804
  80c6a8:	0080c754 	movui	r2,797
  80c6ac:	0080c700 	call	80c70 <__alt_mem_sdram-0x77f390>
  80c6b0:	0080c878 	rdprs	r2,zero,801
  80c6b4:	0080c700 	call	80c70 <__alt_mem_sdram-0x77f390>
  80c6b8:	0080c8d4 	movui	r2,803
  80c6bc:	0080c700 	call	80c70 <__alt_mem_sdram-0x77f390>
  80c6c0:	0080c878 	rdprs	r2,zero,801
  80c6c4:	0080c754 	movui	r2,797
  80c6c8:	0080c754 	movui	r2,797
  80c6cc:	0080c8d4 	movui	r2,803
  80c6d0:	0080c878 	rdprs	r2,zero,801
  80c6d4:	0080c810 	cmplti	r2,zero,800
  80c6d8:	0080c810 	cmplti	r2,zero,800
  80c6dc:	0080c810 	cmplti	r2,zero,800
  80c6e0:	0080c8ec 	andhi	r2,zero,803
  80c6e4:	b714b03a 	or	r10,r22,fp
  80c6e8:	94be0044 	addi	r18,r18,-2047
  80c6ec:	5000671e 	bne	r10,zero,80c88c <__divdf3+0x2c8>
  80c6f0:	84000094 	ori	r16,r16,2
  80c6f4:	002d883a 	mov	r22,zero
  80c6f8:	00c00084 	movi	r3,2
  80c6fc:	003fe106 	br	80c684 <__divdf3+0xc0>
  80c700:	0007883a 	mov	r3,zero
  80c704:	000b883a 	mov	r5,zero
  80c708:	0029883a 	mov	r20,zero
  80c70c:	1806953a 	slli	r3,r3,20
  80c710:	4a403fcc 	andi	r9,r9,255
  80c714:	481297fa 	slli	r9,r9,31
  80c718:	1946b03a 	or	r3,r3,r5
  80c71c:	a005883a 	mov	r2,r20
  80c720:	1a46b03a 	or	r3,r3,r9
  80c724:	dfc00f17 	ldw	ra,60(sp)
  80c728:	df000e17 	ldw	fp,56(sp)
  80c72c:	ddc00d17 	ldw	r23,52(sp)
  80c730:	dd800c17 	ldw	r22,48(sp)
  80c734:	dd400b17 	ldw	r21,44(sp)
  80c738:	dd000a17 	ldw	r20,40(sp)
  80c73c:	dcc00917 	ldw	r19,36(sp)
  80c740:	dc800817 	ldw	r18,32(sp)
  80c744:	dc400717 	ldw	r17,28(sp)
  80c748:	dc000617 	ldw	r16,24(sp)
  80c74c:	dec01004 	addi	sp,sp,64
  80c750:	f800283a 	ret
  80c754:	00c1ffc4 	movi	r3,2047
  80c758:	000b883a 	mov	r5,zero
  80c75c:	0029883a 	mov	r20,zero
  80c760:	003fea06 	br	80c70c <__divdf3+0x148>
  80c764:	2426b03a 	or	r19,r4,r16
  80c768:	2023883a 	mov	r17,r4
  80c76c:	98004f26 	beq	r19,zero,80c8ac <__divdf3+0x2e8>
  80c770:	80017b26 	beq	r16,zero,80cd60 <__divdf3+0x79c>
  80c774:	8009883a 	mov	r4,r16
  80c778:	08016700 	call	801670 <__clzsi2>
  80c77c:	113ffd44 	addi	r4,r2,-11
  80c780:	00c00744 	movi	r3,29
  80c784:	14fffe04 	addi	r19,r2,-8
  80c788:	1907c83a 	sub	r3,r3,r4
  80c78c:	84ca983a 	sll	r5,r16,r19
  80c790:	88c6d83a 	srl	r3,r17,r3
  80c794:	8ce8983a 	sll	r20,r17,r19
  80c798:	1966b03a 	or	r19,r3,r5
  80c79c:	023f0344 	movi	r8,-1011
  80c7a0:	40a5c83a 	sub	r18,r8,r2
  80c7a4:	0021883a 	mov	r16,zero
  80c7a8:	0023883a 	mov	r17,zero
  80c7ac:	003fa406 	br	80c640 <__divdf3+0x7c>
  80c7b0:	2426b03a 	or	r19,r4,r16
  80c7b4:	9800421e 	bne	r19,zero,80c8c0 <__divdf3+0x2fc>
  80c7b8:	0029883a 	mov	r20,zero
  80c7bc:	04000204 	movi	r16,8
  80c7c0:	0481ffc4 	movi	r18,2047
  80c7c4:	04400084 	movi	r17,2
  80c7c8:	003f9d06 	br	80c640 <__divdf3+0x7c>
  80c7cc:	b714b03a 	or	r10,r22,fp
  80c7d0:	50003226 	beq	r10,zero,80c89c <__divdf3+0x2d8>
  80c7d4:	b0016c26 	beq	r22,zero,80cd88 <__divdf3+0x7c4>
  80c7d8:	b009883a 	mov	r4,r22
  80c7dc:	08016700 	call	801670 <__clzsi2>
  80c7e0:	117ffd44 	addi	r5,r2,-11
  80c7e4:	01000744 	movi	r4,29
  80c7e8:	12bffe04 	addi	r10,r2,-8
  80c7ec:	2149c83a 	sub	r4,r4,r5
  80c7f0:	b286983a 	sll	r3,r22,r10
  80c7f4:	e108d83a 	srl	r4,fp,r4
  80c7f8:	e294983a 	sll	r10,fp,r10
  80c7fc:	20ecb03a 	or	r22,r4,r3
  80c800:	1491883a 	add	r8,r2,r18
  80c804:	4480fcc4 	addi	r18,r8,1011
  80c808:	0007883a 	mov	r3,zero
  80c80c:	003f9d06 	br	80c684 <__divdf3+0xc0>
  80c810:	b813883a 	mov	r9,r23
  80c814:	888000a0 	cmpeqi	r2,r17,2
  80c818:	103fce1e 	bne	r2,zero,80c754 <__divdf3+0x190>
  80c81c:	888000e0 	cmpeqi	r2,r17,3
  80c820:	1001ac1e 	bne	r2,zero,80ced4 <__divdf3+0x910>
  80c824:	88800060 	cmpeqi	r2,r17,1
  80c828:	103fb51e 	bne	r2,zero,80c700 <__divdf3+0x13c>
  80c82c:	9440ffc4 	addi	r17,r18,1023
  80c830:	04411c0e 	bge	zero,r17,80cca4 <__divdf3+0x6e0>
  80c834:	a08001cc 	andi	r2,r20,7
  80c838:	1001831e 	bne	r2,zero,80ce48 <__divdf3+0x884>
  80c83c:	a008d0fa 	srli	r4,r20,3
  80c840:	9880402c 	andhi	r2,r19,256
  80c844:	10000426 	beq	r2,zero,80c858 <__divdf3+0x294>
  80c848:	00bfc034 	movhi	r2,65280
  80c84c:	10bfffc4 	addi	r2,r2,-1
  80c850:	98a6703a 	and	r19,r19,r2
  80c854:	94410004 	addi	r17,r18,1024
  80c858:	8881ffc8 	cmpgei	r2,r17,2047
  80c85c:	103fbd1e 	bne	r2,zero,80c754 <__divdf3+0x190>
  80c860:	9828977a 	slli	r20,r19,29
  80c864:	980a927a 	slli	r5,r19,9
  80c868:	88c1ffcc 	andi	r3,r17,2047
  80c86c:	a128b03a 	or	r20,r20,r4
  80c870:	280ad33a 	srli	r5,r5,12
  80c874:	003fa506 	br	80c70c <__divdf3+0x148>
  80c878:	a813883a 	mov	r9,r21
  80c87c:	b027883a 	mov	r19,r22
  80c880:	5029883a 	mov	r20,r10
  80c884:	1823883a 	mov	r17,r3
  80c888:	003fe206 	br	80c814 <__divdf3+0x250>
  80c88c:	840000d4 	ori	r16,r16,3
  80c890:	e015883a 	mov	r10,fp
  80c894:	00c000c4 	movi	r3,3
  80c898:	003f7a06 	br	80c684 <__divdf3+0xc0>
  80c89c:	84000054 	ori	r16,r16,1
  80c8a0:	002d883a 	mov	r22,zero
  80c8a4:	00c00044 	movi	r3,1
  80c8a8:	003f7606 	br	80c684 <__divdf3+0xc0>
  80c8ac:	0029883a 	mov	r20,zero
  80c8b0:	04000104 	movi	r16,4
  80c8b4:	0025883a 	mov	r18,zero
  80c8b8:	04400044 	movi	r17,1
  80c8bc:	003f6006 	br	80c640 <__divdf3+0x7c>
  80c8c0:	8027883a 	mov	r19,r16
  80c8c4:	0481ffc4 	movi	r18,2047
  80c8c8:	04000304 	movi	r16,12
  80c8cc:	044000c4 	movi	r17,3
  80c8d0:	003f5b06 	br	80c640 <__divdf3+0x7c>
  80c8d4:	01400434 	movhi	r5,16
  80c8d8:	0013883a 	mov	r9,zero
  80c8dc:	297fffc4 	addi	r5,r5,-1
  80c8e0:	053fffc4 	movi	r20,-1
  80c8e4:	00c1ffc4 	movi	r3,2047
  80c8e8:	003f8806 	br	80c70c <__divdf3+0x148>
  80c8ec:	9880022c 	andhi	r2,r19,8
  80c8f0:	10000926 	beq	r2,zero,80c918 <__divdf3+0x354>
  80c8f4:	b080022c 	andhi	r2,r22,8
  80c8f8:	1000071e 	bne	r2,zero,80c918 <__divdf3+0x354>
  80c8fc:	00800434 	movhi	r2,16
  80c900:	b1400234 	orhi	r5,r22,8
  80c904:	10bfffc4 	addi	r2,r2,-1
  80c908:	288a703a 	and	r5,r5,r2
  80c90c:	a813883a 	mov	r9,r21
  80c910:	5029883a 	mov	r20,r10
  80c914:	003ff306 	br	80c8e4 <__divdf3+0x320>
  80c918:	00800434 	movhi	r2,16
  80c91c:	99400234 	orhi	r5,r19,8
  80c920:	10bfffc4 	addi	r2,r2,-1
  80c924:	288a703a 	and	r5,r5,r2
  80c928:	b813883a 	mov	r9,r23
  80c92c:	003fed06 	br	80c8e4 <__divdf3+0x320>
  80c930:	b4c10536 	bltu	r22,r19,80cd48 <__divdf3+0x784>
  80c934:	b4c10326 	beq	r22,r19,80cd44 <__divdf3+0x780>
  80c938:	94bfffc4 	addi	r18,r18,-1
  80c93c:	a039883a 	mov	fp,r20
  80c940:	9821883a 	mov	r16,r19
  80c944:	0023883a 	mov	r17,zero
  80c948:	b006923a 	slli	r3,r22,8
  80c94c:	502cd63a 	srli	r22,r10,24
  80c950:	8009883a 	mov	r4,r16
  80c954:	182ed43a 	srli	r23,r3,16
  80c958:	b0ecb03a 	or	r22,r22,r3
  80c95c:	da400015 	stw	r9,0(sp)
  80c960:	b80b883a 	mov	r5,r23
  80c964:	502a923a 	slli	r21,r10,8
  80c968:	b53fffcc 	andi	r20,r22,65535
  80c96c:	080bb8c0 	call	80bb8c <__udivsi3>
  80c970:	100b883a 	mov	r5,r2
  80c974:	a009883a 	mov	r4,r20
  80c978:	1027883a 	mov	r19,r2
  80c97c:	08016c40 	call	8016c4 <__mulsi3>
  80c980:	8009883a 	mov	r4,r16
  80c984:	b80b883a 	mov	r5,r23
  80c988:	1021883a 	mov	r16,r2
  80c98c:	080bbf00 	call	80bbf0 <__umodsi3>
  80c990:	1004943a 	slli	r2,r2,16
  80c994:	e008d43a 	srli	r4,fp,16
  80c998:	da400017 	ldw	r9,0(sp)
  80c99c:	2088b03a 	or	r4,r4,r2
  80c9a0:	2400042e 	bgeu	r4,r16,80c9b4 <__divdf3+0x3f0>
  80c9a4:	2589883a 	add	r4,r4,r22
  80c9a8:	98bfffc4 	addi	r2,r19,-1
  80c9ac:	2581082e 	bgeu	r4,r22,80cdd0 <__divdf3+0x80c>
  80c9b0:	1027883a 	mov	r19,r2
  80c9b4:	2421c83a 	sub	r16,r4,r16
  80c9b8:	b80b883a 	mov	r5,r23
  80c9bc:	8009883a 	mov	r4,r16
  80c9c0:	da400215 	stw	r9,8(sp)
  80c9c4:	080bb8c0 	call	80bb8c <__udivsi3>
  80c9c8:	100b883a 	mov	r5,r2
  80c9cc:	a009883a 	mov	r4,r20
  80c9d0:	d8800115 	stw	r2,4(sp)
  80c9d4:	08016c40 	call	8016c4 <__mulsi3>
  80c9d8:	b80b883a 	mov	r5,r23
  80c9dc:	8009883a 	mov	r4,r16
  80c9e0:	d8800015 	stw	r2,0(sp)
  80c9e4:	080bbf00 	call	80bbf0 <__umodsi3>
  80c9e8:	100c943a 	slli	r6,r2,16
  80c9ec:	d8c00017 	ldw	r3,0(sp)
  80c9f0:	e73fffcc 	andi	fp,fp,65535
  80c9f4:	e18cb03a 	or	r6,fp,r6
  80c9f8:	d9c00117 	ldw	r7,4(sp)
  80c9fc:	da400217 	ldw	r9,8(sp)
  80ca00:	30c0042e 	bgeu	r6,r3,80ca14 <__divdf3+0x450>
  80ca04:	358d883a 	add	r6,r6,r22
  80ca08:	38bfffc4 	addi	r2,r7,-1
  80ca0c:	3580ec2e 	bgeu	r6,r22,80cdc0 <__divdf3+0x7fc>
  80ca10:	100f883a 	mov	r7,r2
  80ca14:	9826943a 	slli	r19,r19,16
  80ca18:	af3fffcc 	andi	fp,r21,65535
  80ca1c:	30c7c83a 	sub	r3,r6,r3
  80ca20:	99e6b03a 	or	r19,r19,r7
  80ca24:	980ed43a 	srli	r7,r19,16
  80ca28:	9abfffcc 	andi	r10,r19,65535
  80ca2c:	5009883a 	mov	r4,r10
  80ca30:	e00b883a 	mov	r5,fp
  80ca34:	da400515 	stw	r9,20(sp)
  80ca38:	d8c00315 	stw	r3,12(sp)
  80ca3c:	da800415 	stw	r10,16(sp)
  80ca40:	d9c00015 	stw	r7,0(sp)
  80ca44:	08016c40 	call	8016c4 <__mulsi3>
  80ca48:	d9c00017 	ldw	r7,0(sp)
  80ca4c:	e00b883a 	mov	r5,fp
  80ca50:	d8800215 	stw	r2,8(sp)
  80ca54:	3809883a 	mov	r4,r7
  80ca58:	08016c40 	call	8016c4 <__mulsi3>
  80ca5c:	d9c00017 	ldw	r7,0(sp)
  80ca60:	a820d43a 	srli	r16,r21,16
  80ca64:	d8800115 	stw	r2,4(sp)
  80ca68:	3809883a 	mov	r4,r7
  80ca6c:	800b883a 	mov	r5,r16
  80ca70:	08016c40 	call	8016c4 <__mulsi3>
  80ca74:	da800417 	ldw	r10,16(sp)
  80ca78:	8009883a 	mov	r4,r16
  80ca7c:	d8800015 	stw	r2,0(sp)
  80ca80:	500b883a 	mov	r5,r10
  80ca84:	08016c40 	call	8016c4 <__mulsi3>
  80ca88:	d9800217 	ldw	r6,8(sp)
  80ca8c:	d9c00117 	ldw	r7,4(sp)
  80ca90:	da000017 	ldw	r8,0(sp)
  80ca94:	3008d43a 	srli	r4,r6,16
  80ca98:	11c5883a 	add	r2,r2,r7
  80ca9c:	d8c00317 	ldw	r3,12(sp)
  80caa0:	2089883a 	add	r4,r4,r2
  80caa4:	da400517 	ldw	r9,20(sp)
  80caa8:	21c0022e 	bgeu	r4,r7,80cab4 <__divdf3+0x4f0>
  80caac:	00800074 	movhi	r2,1
  80cab0:	4091883a 	add	r8,r8,r2
  80cab4:	200ad43a 	srli	r5,r4,16
  80cab8:	2008943a 	slli	r4,r4,16
  80cabc:	31bfffcc 	andi	r6,r6,65535
  80cac0:	2a0b883a 	add	r5,r5,r8
  80cac4:	218d883a 	add	r6,r4,r6
  80cac8:	19409436 	bltu	r3,r5,80cd1c <__divdf3+0x758>
  80cacc:	19409226 	beq	r3,r5,80cd18 <__divdf3+0x754>
  80cad0:	898dc83a 	sub	r6,r17,r6
  80cad4:	89a3803a 	cmpltu	r17,r17,r6
  80cad8:	1947c83a 	sub	r3,r3,r5
  80cadc:	1c47c83a 	sub	r3,r3,r17
  80cae0:	9440ffc4 	addi	r17,r18,1023
  80cae4:	b0c0d326 	beq	r22,r3,80ce34 <__divdf3+0x870>
  80cae8:	1809883a 	mov	r4,r3
  80caec:	b80b883a 	mov	r5,r23
  80caf0:	d9800315 	stw	r6,12(sp)
  80caf4:	da400215 	stw	r9,8(sp)
  80caf8:	d8c00015 	stw	r3,0(sp)
  80cafc:	080bb8c0 	call	80bb8c <__udivsi3>
  80cb00:	100b883a 	mov	r5,r2
  80cb04:	a009883a 	mov	r4,r20
  80cb08:	d8800115 	stw	r2,4(sp)
  80cb0c:	08016c40 	call	8016c4 <__mulsi3>
  80cb10:	d8c00017 	ldw	r3,0(sp)
  80cb14:	b80b883a 	mov	r5,r23
  80cb18:	d8800015 	stw	r2,0(sp)
  80cb1c:	1809883a 	mov	r4,r3
  80cb20:	080bbf00 	call	80bbf0 <__umodsi3>
  80cb24:	d9800317 	ldw	r6,12(sp)
  80cb28:	1006943a 	slli	r3,r2,16
  80cb2c:	da000017 	ldw	r8,0(sp)
  80cb30:	3008d43a 	srli	r4,r6,16
  80cb34:	d9c00117 	ldw	r7,4(sp)
  80cb38:	da400217 	ldw	r9,8(sp)
  80cb3c:	20c6b03a 	or	r3,r4,r3
  80cb40:	1a00062e 	bgeu	r3,r8,80cb5c <__divdf3+0x598>
  80cb44:	1d87883a 	add	r3,r3,r22
  80cb48:	38bfffc4 	addi	r2,r7,-1
  80cb4c:	1d80c836 	bltu	r3,r22,80ce70 <__divdf3+0x8ac>
  80cb50:	1a00c72e 	bgeu	r3,r8,80ce70 <__divdf3+0x8ac>
  80cb54:	39ffff84 	addi	r7,r7,-2
  80cb58:	1d87883a 	add	r3,r3,r22
  80cb5c:	1a07c83a 	sub	r3,r3,r8
  80cb60:	1809883a 	mov	r4,r3
  80cb64:	b80b883a 	mov	r5,r23
  80cb68:	d9800415 	stw	r6,16(sp)
  80cb6c:	da400315 	stw	r9,12(sp)
  80cb70:	d9c00215 	stw	r7,8(sp)
  80cb74:	d8c00115 	stw	r3,4(sp)
  80cb78:	080bb8c0 	call	80bb8c <__udivsi3>
  80cb7c:	100b883a 	mov	r5,r2
  80cb80:	a009883a 	mov	r4,r20
  80cb84:	d8800015 	stw	r2,0(sp)
  80cb88:	08016c40 	call	8016c4 <__mulsi3>
  80cb8c:	d8c00117 	ldw	r3,4(sp)
  80cb90:	b80b883a 	mov	r5,r23
  80cb94:	102f883a 	mov	r23,r2
  80cb98:	1809883a 	mov	r4,r3
  80cb9c:	080bbf00 	call	80bbf0 <__umodsi3>
  80cba0:	d9800417 	ldw	r6,16(sp)
  80cba4:	1004943a 	slli	r2,r2,16
  80cba8:	da000017 	ldw	r8,0(sp)
  80cbac:	31bfffcc 	andi	r6,r6,65535
  80cbb0:	308cb03a 	or	r6,r6,r2
  80cbb4:	d9c00217 	ldw	r7,8(sp)
  80cbb8:	da400317 	ldw	r9,12(sp)
  80cbbc:	35c0062e 	bgeu	r6,r23,80cbd8 <__divdf3+0x614>
  80cbc0:	358d883a 	add	r6,r6,r22
  80cbc4:	40bfffc4 	addi	r2,r8,-1
  80cbc8:	3580a736 	bltu	r6,r22,80ce68 <__divdf3+0x8a4>
  80cbcc:	35c0a62e 	bgeu	r6,r23,80ce68 <__divdf3+0x8a4>
  80cbd0:	423fff84 	addi	r8,r8,-2
  80cbd4:	358d883a 	add	r6,r6,r22
  80cbd8:	3828943a 	slli	r20,r7,16
  80cbdc:	35d5c83a 	sub	r10,r6,r23
  80cbe0:	e009883a 	mov	r4,fp
  80cbe4:	a228b03a 	or	r20,r20,r8
  80cbe8:	a1ffffcc 	andi	r7,r20,65535
  80cbec:	a02ed43a 	srli	r23,r20,16
  80cbf0:	380b883a 	mov	r5,r7
  80cbf4:	da400315 	stw	r9,12(sp)
  80cbf8:	da800215 	stw	r10,8(sp)
  80cbfc:	d9c00115 	stw	r7,4(sp)
  80cc00:	08016c40 	call	8016c4 <__mulsi3>
  80cc04:	e00b883a 	mov	r5,fp
  80cc08:	b809883a 	mov	r4,r23
  80cc0c:	1039883a 	mov	fp,r2
  80cc10:	08016c40 	call	8016c4 <__mulsi3>
  80cc14:	8009883a 	mov	r4,r16
  80cc18:	b80b883a 	mov	r5,r23
  80cc1c:	d8800015 	stw	r2,0(sp)
  80cc20:	08016c40 	call	8016c4 <__mulsi3>
  80cc24:	d9c00117 	ldw	r7,4(sp)
  80cc28:	8009883a 	mov	r4,r16
  80cc2c:	1021883a 	mov	r16,r2
  80cc30:	380b883a 	mov	r5,r7
  80cc34:	08016c40 	call	8016c4 <__mulsi3>
  80cc38:	d9800017 	ldw	r6,0(sp)
  80cc3c:	e006d43a 	srli	r3,fp,16
  80cc40:	da800217 	ldw	r10,8(sp)
  80cc44:	1185883a 	add	r2,r2,r6
  80cc48:	1887883a 	add	r3,r3,r2
  80cc4c:	da400317 	ldw	r9,12(sp)
  80cc50:	1980022e 	bgeu	r3,r6,80cc5c <__divdf3+0x698>
  80cc54:	00800074 	movhi	r2,1
  80cc58:	80a1883a 	add	r16,r16,r2
  80cc5c:	1808d43a 	srli	r4,r3,16
  80cc60:	1806943a 	slli	r3,r3,16
  80cc64:	e73fffcc 	andi	fp,fp,65535
  80cc68:	2409883a 	add	r4,r4,r16
  80cc6c:	1f07883a 	add	r3,r3,fp
  80cc70:	51000436 	bltu	r10,r4,80cc84 <__divdf3+0x6c0>
  80cc74:	51000226 	beq	r10,r4,80cc80 <__divdf3+0x6bc>
  80cc78:	a5000054 	ori	r20,r20,1
  80cc7c:	003eec06 	br	80c830 <__divdf3+0x26c>
  80cc80:	183eeb26 	beq	r3,zero,80c830 <__divdf3+0x26c>
  80cc84:	b28d883a 	add	r6,r22,r10
  80cc88:	a0bfffc4 	addi	r2,r20,-1
  80cc8c:	35806536 	bltu	r6,r22,80ce24 <__divdf3+0x860>
  80cc90:	31008036 	bltu	r6,r4,80ce94 <__divdf3+0x8d0>
  80cc94:	31009426 	beq	r6,r4,80cee8 <__divdf3+0x924>
  80cc98:	1029883a 	mov	r20,r2
  80cc9c:	003ff606 	br	80cc78 <__divdf3+0x6b4>
  80cca0:	053fffc4 	movi	r20,-1
  80cca4:	01400044 	movi	r5,1
  80cca8:	2c4bc83a 	sub	r5,r5,r17
  80ccac:	28800e48 	cmpgei	r2,r5,57
  80ccb0:	103e931e 	bne	r2,zero,80c700 <__divdf3+0x13c>
  80ccb4:	28800808 	cmpgei	r2,r5,32
  80ccb8:	1000491e 	bne	r2,zero,80cde0 <__divdf3+0x81c>
  80ccbc:	92010784 	addi	r8,r18,1054
  80ccc0:	9a04983a 	sll	r2,r19,r8
  80ccc4:	a146d83a 	srl	r3,r20,r5
  80ccc8:	a210983a 	sll	r8,r20,r8
  80cccc:	994ad83a 	srl	r5,r19,r5
  80ccd0:	10e8b03a 	or	r20,r2,r3
  80ccd4:	4010c03a 	cmpne	r8,r8,zero
  80ccd8:	a228b03a 	or	r20,r20,r8
  80ccdc:	a08001cc 	andi	r2,r20,7
  80cce0:	10000726 	beq	r2,zero,80cd00 <__divdf3+0x73c>
  80cce4:	a08003cc 	andi	r2,r20,15
  80cce8:	10800120 	cmpeqi	r2,r2,4
  80ccec:	1000041e 	bne	r2,zero,80cd00 <__divdf3+0x73c>
  80ccf0:	a0800104 	addi	r2,r20,4
  80ccf4:	1529803a 	cmpltu	r20,r2,r20
  80ccf8:	2d0b883a 	add	r5,r5,r20
  80ccfc:	1029883a 	mov	r20,r2
  80cd00:	2880202c 	andhi	r2,r5,128
  80cd04:	10006f26 	beq	r2,zero,80cec4 <__divdf3+0x900>
  80cd08:	00c00044 	movi	r3,1
  80cd0c:	000b883a 	mov	r5,zero
  80cd10:	0029883a 	mov	r20,zero
  80cd14:	003e7d06 	br	80c70c <__divdf3+0x148>
  80cd18:	89bf6d2e 	bgeu	r17,r6,80cad0 <__divdf3+0x50c>
  80cd1c:	8d63883a 	add	r17,r17,r21
  80cd20:	8d45803a 	cmpltu	r2,r17,r21
  80cd24:	1585883a 	add	r2,r2,r22
  80cd28:	1887883a 	add	r3,r3,r2
  80cd2c:	98bfffc4 	addi	r2,r19,-1
  80cd30:	b0c0202e 	bgeu	r22,r3,80cdb4 <__divdf3+0x7f0>
  80cd34:	19405136 	bltu	r3,r5,80ce7c <__divdf3+0x8b8>
  80cd38:	28c04f26 	beq	r5,r3,80ce78 <__divdf3+0x8b4>
  80cd3c:	1027883a 	mov	r19,r2
  80cd40:	003f6306 	br	80cad0 <__divdf3+0x50c>
  80cd44:	a2befc36 	bltu	r20,r10,80c938 <__divdf3+0x374>
  80cd48:	983897fa 	slli	fp,r19,31
  80cd4c:	a004d07a 	srli	r2,r20,1
  80cd50:	9820d07a 	srli	r16,r19,1
  80cd54:	a02297fa 	slli	r17,r20,31
  80cd58:	e0b8b03a 	or	fp,fp,r2
  80cd5c:	003efa06 	br	80c948 <__divdf3+0x384>
  80cd60:	08016700 	call	801670 <__clzsi2>
  80cd64:	11000544 	addi	r4,r2,21
  80cd68:	20c00748 	cmpgei	r3,r4,29
  80cd6c:	100b883a 	mov	r5,r2
  80cd70:	10800804 	addi	r2,r2,32
  80cd74:	183e8226 	beq	r3,zero,80c780 <__divdf3+0x1bc>
  80cd78:	297ffe04 	addi	r5,r5,-8
  80cd7c:	a166983a 	sll	r19,r20,r5
  80cd80:	0029883a 	mov	r20,zero
  80cd84:	003e8506 	br	80c79c <__divdf3+0x1d8>
  80cd88:	e009883a 	mov	r4,fp
  80cd8c:	08016700 	call	801670 <__clzsi2>
  80cd90:	11400544 	addi	r5,r2,21
  80cd94:	29000748 	cmpgei	r4,r5,29
  80cd98:	1007883a 	mov	r3,r2
  80cd9c:	10800804 	addi	r2,r2,32
  80cda0:	203e9026 	beq	r4,zero,80c7e4 <__divdf3+0x220>
  80cda4:	18fffe04 	addi	r3,r3,-8
  80cda8:	e0ec983a 	sll	r22,fp,r3
  80cdac:	0015883a 	mov	r10,zero
  80cdb0:	003e9306 	br	80c800 <__divdf3+0x23c>
  80cdb4:	b0ffe11e 	bne	r22,r3,80cd3c <__divdf3+0x778>
  80cdb8:	8d7fe036 	bltu	r17,r21,80cd3c <__divdf3+0x778>
  80cdbc:	003fdd06 	br	80cd34 <__divdf3+0x770>
  80cdc0:	30ff132e 	bgeu	r6,r3,80ca10 <__divdf3+0x44c>
  80cdc4:	39ffff84 	addi	r7,r7,-2
  80cdc8:	358d883a 	add	r6,r6,r22
  80cdcc:	003f1106 	br	80ca14 <__divdf3+0x450>
  80cdd0:	243ef72e 	bgeu	r4,r16,80c9b0 <__divdf3+0x3ec>
  80cdd4:	9cffff84 	addi	r19,r19,-2
  80cdd8:	2589883a 	add	r4,r4,r22
  80cddc:	003ef506 	br	80c9b4 <__divdf3+0x3f0>
  80cde0:	00fff844 	movi	r3,-31
  80cde4:	1c47c83a 	sub	r3,r3,r17
  80cde8:	29400820 	cmpeqi	r5,r5,32
  80cdec:	98c6d83a 	srl	r3,r19,r3
  80cdf0:	2800031e 	bne	r5,zero,80ce00 <__divdf3+0x83c>
  80cdf4:	91410f84 	addi	r5,r18,1086
  80cdf8:	994a983a 	sll	r5,r19,r5
  80cdfc:	a168b03a 	or	r20,r20,r5
  80ce00:	a028c03a 	cmpne	r20,r20,zero
  80ce04:	a0e8b03a 	or	r20,r20,r3
  80ce08:	a4c001cc 	andi	r19,r20,7
  80ce0c:	9800291e 	bne	r19,zero,80ceb4 <__divdf3+0x8f0>
  80ce10:	000b883a 	mov	r5,zero
  80ce14:	a028d0fa 	srli	r20,r20,3
  80ce18:	0007883a 	mov	r3,zero
  80ce1c:	a4e8b03a 	or	r20,r20,r19
  80ce20:	003e3a06 	br	80c70c <__divdf3+0x148>
  80ce24:	1029883a 	mov	r20,r2
  80ce28:	313f931e 	bne	r6,r4,80cc78 <__divdf3+0x6b4>
  80ce2c:	1d7f921e 	bne	r3,r21,80cc78 <__divdf3+0x6b4>
  80ce30:	003e7f06 	br	80c830 <__divdf3+0x26c>
  80ce34:	047f9a0e 	bge	zero,r17,80cca0 <__divdf3+0x6dc>
  80ce38:	0009883a 	mov	r4,zero
  80ce3c:	05000044 	movi	r20,1
  80ce40:	9d27883a 	add	r19,r19,r20
  80ce44:	003e7e06 	br	80c840 <__divdf3+0x27c>
  80ce48:	a08003cc 	andi	r2,r20,15
  80ce4c:	10800118 	cmpnei	r2,r2,4
  80ce50:	103e7a26 	beq	r2,zero,80c83c <__divdf3+0x278>
  80ce54:	a1000104 	addi	r4,r20,4
  80ce58:	00bffec4 	movi	r2,-5
  80ce5c:	2008d0fa 	srli	r4,r4,3
  80ce60:	1529803a 	cmpltu	r20,r2,r20
  80ce64:	003ff606 	br	80ce40 <__divdf3+0x87c>
  80ce68:	1011883a 	mov	r8,r2
  80ce6c:	003f5a06 	br	80cbd8 <__divdf3+0x614>
  80ce70:	100f883a 	mov	r7,r2
  80ce74:	003f3906 	br	80cb5c <__divdf3+0x598>
  80ce78:	89bfb02e 	bgeu	r17,r6,80cd3c <__divdf3+0x778>
  80ce7c:	8d63883a 	add	r17,r17,r21
  80ce80:	8d45803a 	cmpltu	r2,r17,r21
  80ce84:	1585883a 	add	r2,r2,r22
  80ce88:	9cffff84 	addi	r19,r19,-2
  80ce8c:	1887883a 	add	r3,r3,r2
  80ce90:	003f0f06 	br	80cad0 <__divdf3+0x50c>
  80ce94:	ad45883a 	add	r2,r21,r21
  80ce98:	156b803a 	cmpltu	r21,r2,r21
  80ce9c:	adad883a 	add	r22,r21,r22
  80cea0:	358d883a 	add	r6,r6,r22
  80cea4:	a53fff84 	addi	r20,r20,-2
  80cea8:	102b883a 	mov	r21,r2
  80ceac:	313fdf26 	beq	r6,r4,80ce2c <__divdf3+0x868>
  80ceb0:	003f7106 	br	80cc78 <__divdf3+0x6b4>
  80ceb4:	a08003cc 	andi	r2,r20,15
  80ceb8:	10800118 	cmpnei	r2,r2,4
  80cebc:	000b883a 	mov	r5,zero
  80cec0:	103f8b1e 	bne	r2,zero,80ccf0 <__divdf3+0x72c>
  80cec4:	2804927a 	slli	r2,r5,9
  80cec8:	2826977a 	slli	r19,r5,29
  80cecc:	100ad33a 	srli	r5,r2,12
  80ced0:	003fd006 	br	80ce14 <__divdf3+0x850>
  80ced4:	00800434 	movhi	r2,16
  80ced8:	99400234 	orhi	r5,r19,8
  80cedc:	10bfffc4 	addi	r2,r2,-1
  80cee0:	288a703a 	and	r5,r5,r2
  80cee4:	003e7f06 	br	80c8e4 <__divdf3+0x320>
  80cee8:	a8ffea36 	bltu	r21,r3,80ce94 <__divdf3+0x8d0>
  80ceec:	1029883a 	mov	r20,r2
  80cef0:	1d7f611e 	bne	r3,r21,80cc78 <__divdf3+0x6b4>
  80cef4:	003e4e06 	br	80c830 <__divdf3+0x26c>

0080cef8 <__eqdf2>:
  80cef8:	2810d53a 	srli	r8,r5,20
  80cefc:	3806d53a 	srli	r3,r7,20
  80cf00:	00800434 	movhi	r2,16
  80cf04:	4201ffcc 	andi	r8,r8,2047
  80cf08:	10bfffc4 	addi	r2,r2,-1
  80cf0c:	4241ffd8 	cmpnei	r9,r8,2047
  80cf10:	2814d7fa 	srli	r10,r5,31
  80cf14:	3816d7fa 	srli	r11,r7,31
  80cf18:	288a703a 	and	r5,r5,r2
  80cf1c:	388e703a 	and	r7,r7,r2
  80cf20:	1881ffcc 	andi	r2,r3,2047
  80cf24:	48000626 	beq	r9,zero,80cf40 <__eqdf2+0x48>
  80cf28:	10c1ffe0 	cmpeqi	r3,r2,2047
  80cf2c:	1800021e 	bne	r3,zero,80cf38 <__eqdf2+0x40>
  80cf30:	4080011e 	bne	r8,r2,80cf38 <__eqdf2+0x40>
  80cf34:	29c00826 	beq	r5,r7,80cf58 <__eqdf2+0x60>
  80cf38:	00800044 	movi	r2,1
  80cf3c:	f800283a 	ret
  80cf40:	2906b03a 	or	r3,r5,r4
  80cf44:	183ffc1e 	bne	r3,zero,80cf38 <__eqdf2+0x40>
  80cf48:	1081ffd8 	cmpnei	r2,r2,2047
  80cf4c:	103ffa1e 	bne	r2,zero,80cf38 <__eqdf2+0x40>
  80cf50:	398eb03a 	or	r7,r7,r6
  80cf54:	383ff81e 	bne	r7,zero,80cf38 <__eqdf2+0x40>
  80cf58:	21bff71e 	bne	r4,r6,80cf38 <__eqdf2+0x40>
  80cf5c:	52c00426 	beq	r10,r11,80cf70 <__eqdf2+0x78>
  80cf60:	403ff51e 	bne	r8,zero,80cf38 <__eqdf2+0x40>
  80cf64:	290ab03a 	or	r5,r5,r4
  80cf68:	2804c03a 	cmpne	r2,r5,zero
  80cf6c:	f800283a 	ret
  80cf70:	0005883a 	mov	r2,zero
  80cf74:	f800283a 	ret

0080cf78 <__gedf2>:
  80cf78:	2810d53a 	srli	r8,r5,20
  80cf7c:	3812d53a 	srli	r9,r7,20
  80cf80:	00c00434 	movhi	r3,16
  80cf84:	4201ffcc 	andi	r8,r8,2047
  80cf88:	18ffffc4 	addi	r3,r3,-1
  80cf8c:	4281ffd8 	cmpnei	r10,r8,2047
  80cf90:	2816d7fa 	srli	r11,r5,31
  80cf94:	3804d7fa 	srli	r2,r7,31
  80cf98:	28ca703a 	and	r5,r5,r3
  80cf9c:	38ce703a 	and	r7,r7,r3
  80cfa0:	48c1ffcc 	andi	r3,r9,2047
  80cfa4:	50000b26 	beq	r10,zero,80cfd4 <__gedf2+0x5c>
  80cfa8:	1a41ffd8 	cmpnei	r9,r3,2047
  80cfac:	48000d26 	beq	r9,zero,80cfe4 <__gedf2+0x6c>
  80cfb0:	4000191e 	bne	r8,zero,80d018 <__gedf2+0xa0>
  80cfb4:	2914b03a 	or	r10,r5,r4
  80cfb8:	5013003a 	cmpeq	r9,r10,zero
  80cfbc:	1800131e 	bne	r3,zero,80d00c <__gedf2+0x94>
  80cfc0:	3998b03a 	or	r12,r7,r6
  80cfc4:	6000111e 	bne	r12,zero,80d00c <__gedf2+0x94>
  80cfc8:	50000a1e 	bne	r10,zero,80cff4 <__gedf2+0x7c>
  80cfcc:	0005883a 	mov	r2,zero
  80cfd0:	f800283a 	ret
  80cfd4:	2912b03a 	or	r9,r5,r4
  80cfd8:	48001e1e 	bne	r9,zero,80d054 <__gedf2+0xdc>
  80cfdc:	1a41ffe0 	cmpeqi	r9,r3,2047
  80cfe0:	48000d26 	beq	r9,zero,80d018 <__gedf2+0xa0>
  80cfe4:	3992b03a 	or	r9,r7,r6
  80cfe8:	48001a1e 	bne	r9,zero,80d054 <__gedf2+0xdc>
  80cfec:	40000526 	beq	r8,zero,80d004 <__gedf2+0x8c>
  80cff0:	58800d26 	beq	r11,r2,80d028 <__gedf2+0xb0>
  80cff4:	00800044 	movi	r2,1
  80cff8:	58000626 	beq	r11,zero,80d014 <__gedf2+0x9c>
  80cffc:	00bfffc4 	movi	r2,-1
  80d000:	f800283a 	ret
  80d004:	2912b03a 	or	r9,r5,r4
  80d008:	4813003a 	cmpeq	r9,r9,zero
  80d00c:	483ff826 	beq	r9,zero,80cff0 <__gedf2+0x78>
  80d010:	103ffa26 	beq	r2,zero,80cffc <__gedf2+0x84>
  80d014:	f800283a 	ret
  80d018:	183ff51e 	bne	r3,zero,80cff0 <__gedf2+0x78>
  80d01c:	3992b03a 	or	r9,r7,r6
  80d020:	483ff31e 	bne	r9,zero,80cff0 <__gedf2+0x78>
  80d024:	003ff306 	br	80cff4 <__gedf2+0x7c>
  80d028:	1a000716 	blt	r3,r8,80d048 <__gedf2+0xd0>
  80d02c:	40fff816 	blt	r8,r3,80d010 <__gedf2+0x98>
  80d030:	397ff036 	bltu	r7,r5,80cff4 <__gedf2+0x7c>
  80d034:	29c00926 	beq	r5,r7,80d05c <__gedf2+0xe4>
  80d038:	29ffe42e 	bgeu	r5,r7,80cfcc <__gedf2+0x54>
  80d03c:	583fef26 	beq	r11,zero,80cffc <__gedf2+0x84>
  80d040:	5805883a 	mov	r2,r11
  80d044:	f800283a 	ret
  80d048:	103fec1e 	bne	r2,zero,80cffc <__gedf2+0x84>
  80d04c:	00800044 	movi	r2,1
  80d050:	f800283a 	ret
  80d054:	00bfff84 	movi	r2,-2
  80d058:	f800283a 	ret
  80d05c:	313fe536 	bltu	r6,r4,80cff4 <__gedf2+0x7c>
  80d060:	21bfda2e 	bgeu	r4,r6,80cfcc <__gedf2+0x54>
  80d064:	003ff506 	br	80d03c <__gedf2+0xc4>

0080d068 <__ledf2>:
  80d068:	2810d53a 	srli	r8,r5,20
  80d06c:	3812d53a 	srli	r9,r7,20
  80d070:	00c00434 	movhi	r3,16
  80d074:	4201ffcc 	andi	r8,r8,2047
  80d078:	18ffffc4 	addi	r3,r3,-1
  80d07c:	4281ffd8 	cmpnei	r10,r8,2047
  80d080:	2816d7fa 	srli	r11,r5,31
  80d084:	3804d7fa 	srli	r2,r7,31
  80d088:	28ca703a 	and	r5,r5,r3
  80d08c:	38ce703a 	and	r7,r7,r3
  80d090:	48c1ffcc 	andi	r3,r9,2047
  80d094:	50000b26 	beq	r10,zero,80d0c4 <__ledf2+0x5c>
  80d098:	1a41ffd8 	cmpnei	r9,r3,2047
  80d09c:	48000d26 	beq	r9,zero,80d0d4 <__ledf2+0x6c>
  80d0a0:	40001b1e 	bne	r8,zero,80d110 <__ledf2+0xa8>
  80d0a4:	2914b03a 	or	r10,r5,r4
  80d0a8:	5013003a 	cmpeq	r9,r10,zero
  80d0ac:	18000e1e 	bne	r3,zero,80d0e8 <__ledf2+0x80>
  80d0b0:	3998b03a 	or	r12,r7,r6
  80d0b4:	60000c1e 	bne	r12,zero,80d0e8 <__ledf2+0x80>
  80d0b8:	50000d1e 	bne	r10,zero,80d0f0 <__ledf2+0x88>
  80d0bc:	0005883a 	mov	r2,zero
  80d0c0:	f800283a 	ret
  80d0c4:	2912b03a 	or	r9,r5,r4
  80d0c8:	48000d1e 	bne	r9,zero,80d100 <__ledf2+0x98>
  80d0cc:	1a41ffe0 	cmpeqi	r9,r3,2047
  80d0d0:	48000f26 	beq	r9,zero,80d110 <__ledf2+0xa8>
  80d0d4:	3992b03a 	or	r9,r7,r6
  80d0d8:	4800091e 	bne	r9,zero,80d100 <__ledf2+0x98>
  80d0dc:	4000031e 	bne	r8,zero,80d0ec <__ledf2+0x84>
  80d0e0:	2912b03a 	or	r9,r5,r4
  80d0e4:	4813003a 	cmpeq	r9,r9,zero
  80d0e8:	4800071e 	bne	r9,zero,80d108 <__ledf2+0xa0>
  80d0ec:	58800c26 	beq	r11,r2,80d120 <__ledf2+0xb8>
  80d0f0:	00800044 	movi	r2,1
  80d0f4:	58000526 	beq	r11,zero,80d10c <__ledf2+0xa4>
  80d0f8:	00bfffc4 	movi	r2,-1
  80d0fc:	f800283a 	ret
  80d100:	00800084 	movi	r2,2
  80d104:	f800283a 	ret
  80d108:	103ffb26 	beq	r2,zero,80d0f8 <__ledf2+0x90>
  80d10c:	f800283a 	ret
  80d110:	183ff61e 	bne	r3,zero,80d0ec <__ledf2+0x84>
  80d114:	3992b03a 	or	r9,r7,r6
  80d118:	483ff41e 	bne	r9,zero,80d0ec <__ledf2+0x84>
  80d11c:	003ff406 	br	80d0f0 <__ledf2+0x88>
  80d120:	1a00030e 	bge	r3,r8,80d130 <__ledf2+0xc8>
  80d124:	103ff41e 	bne	r2,zero,80d0f8 <__ledf2+0x90>
  80d128:	00800044 	movi	r2,1
  80d12c:	f800283a 	ret
  80d130:	40fff516 	blt	r8,r3,80d108 <__ledf2+0xa0>
  80d134:	397fee36 	bltu	r7,r5,80d0f0 <__ledf2+0x88>
  80d138:	29c00426 	beq	r5,r7,80d14c <__ledf2+0xe4>
  80d13c:	29ffdf2e 	bgeu	r5,r7,80d0bc <__ledf2+0x54>
  80d140:	583fed26 	beq	r11,zero,80d0f8 <__ledf2+0x90>
  80d144:	5805883a 	mov	r2,r11
  80d148:	f800283a 	ret
  80d14c:	313fe836 	bltu	r6,r4,80d0f0 <__ledf2+0x88>
  80d150:	21bfda2e 	bgeu	r4,r6,80d0bc <__ledf2+0x54>
  80d154:	003ffa06 	br	80d140 <__ledf2+0xd8>

0080d158 <__subdf3>:
  80d158:	00c00434 	movhi	r3,16
  80d15c:	3812d53a 	srli	r9,r7,20
  80d160:	18ffffc4 	addi	r3,r3,-1
  80d164:	defffb04 	addi	sp,sp,-20
  80d168:	28d0703a 	and	r8,r5,r3
  80d16c:	38c6703a 	and	r3,r7,r3
  80d170:	2804d7fa 	srli	r2,r5,31
  80d174:	401090fa 	slli	r8,r8,3
  80d178:	280ad53a 	srli	r5,r5,20
  80d17c:	180690fa 	slli	r3,r3,3
  80d180:	dcc00315 	stw	r19,12(sp)
  80d184:	dc400115 	stw	r17,4(sp)
  80d188:	2026d77a 	srli	r19,r4,29
  80d18c:	3022d77a 	srli	r17,r6,29
  80d190:	4b41ffcc 	andi	r13,r9,2047
  80d194:	dc800215 	stw	r18,8(sp)
  80d198:	dc000015 	stw	r16,0(sp)
  80d19c:	dfc00415 	stw	ra,16(sp)
  80d1a0:	6a41ffe0 	cmpeqi	r9,r13,2047
  80d1a4:	1025883a 	mov	r18,r2
  80d1a8:	201690fa 	slli	r11,r4,3
  80d1ac:	380ed7fa 	srli	r7,r7,31
  80d1b0:	301490fa 	slli	r10,r6,3
  80d1b4:	2c01ffcc 	andi	r16,r5,2047
  80d1b8:	10803fcc 	andi	r2,r2,255
  80d1bc:	9a10b03a 	or	r8,r19,r8
  80d1c0:	88c6b03a 	or	r3,r17,r3
  80d1c4:	48006e1e 	bne	r9,zero,80d380 <__subdf3+0x228>
  80d1c8:	3a40005c 	xori	r9,r7,1
  80d1cc:	834bc83a 	sub	r5,r16,r13
  80d1d0:	12405726 	beq	r2,r9,80d330 <__subdf3+0x1d8>
  80d1d4:	01406f0e 	bge	zero,r5,80d394 <__subdf3+0x23c>
  80d1d8:	68007a26 	beq	r13,zero,80d3c4 <__subdf3+0x26c>
  80d1dc:	8081ffd8 	cmpnei	r2,r16,2047
  80d1e0:	10019f26 	beq	r2,zero,80d860 <__subdf3+0x708>
  80d1e4:	18c02034 	orhi	r3,r3,128
  80d1e8:	28800e48 	cmpgei	r2,r5,57
  80d1ec:	1000f91e 	bne	r2,zero,80d5d4 <__subdf3+0x47c>
  80d1f0:	28800808 	cmpgei	r2,r5,32
  80d1f4:	1001451e 	bne	r2,zero,80d70c <__subdf3+0x5b4>
  80d1f8:	00800804 	movi	r2,32
  80d1fc:	1145c83a 	sub	r2,r2,r5
  80d200:	18a2983a 	sll	r17,r3,r2
  80d204:	5148d83a 	srl	r4,r10,r5
  80d208:	5084983a 	sll	r2,r10,r2
  80d20c:	1946d83a 	srl	r3,r3,r5
  80d210:	8922b03a 	or	r17,r17,r4
  80d214:	1004c03a 	cmpne	r2,r2,zero
  80d218:	88a2b03a 	or	r17,r17,r2
  80d21c:	40d1c83a 	sub	r8,r8,r3
  80d220:	5c63c83a 	sub	r17,r11,r17
  80d224:	5c49803a 	cmpltu	r4,r11,r17
  80d228:	4109c83a 	sub	r4,r8,r4
  80d22c:	2080202c 	andhi	r2,r4,128
  80d230:	1000a526 	beq	r2,zero,80d4c8 <__subdf3+0x370>
  80d234:	04c02034 	movhi	r19,128
  80d238:	9cffffc4 	addi	r19,r19,-1
  80d23c:	24e6703a 	and	r19,r4,r19
  80d240:	9800db26 	beq	r19,zero,80d5b0 <__subdf3+0x458>
  80d244:	9809883a 	mov	r4,r19
  80d248:	08016700 	call	801670 <__clzsi2>
  80d24c:	117ffe04 	addi	r5,r2,-8
  80d250:	01000804 	movi	r4,32
  80d254:	2149c83a 	sub	r4,r4,r5
  80d258:	8906d83a 	srl	r3,r17,r4
  80d25c:	9948983a 	sll	r4,r19,r5
  80d260:	8962983a 	sll	r17,r17,r5
  80d264:	1908b03a 	or	r4,r3,r4
  80d268:	2c00cc16 	blt	r5,r16,80d59c <__subdf3+0x444>
  80d26c:	2c0bc83a 	sub	r5,r5,r16
  80d270:	28c00044 	addi	r3,r5,1
  80d274:	18800808 	cmpgei	r2,r3,32
  80d278:	1001171e 	bne	r2,zero,80d6d8 <__subdf3+0x580>
  80d27c:	00800804 	movi	r2,32
  80d280:	10c5c83a 	sub	r2,r2,r3
  80d284:	88cad83a 	srl	r5,r17,r3
  80d288:	88a2983a 	sll	r17,r17,r2
  80d28c:	2084983a 	sll	r2,r4,r2
  80d290:	20c8d83a 	srl	r4,r4,r3
  80d294:	8822c03a 	cmpne	r17,r17,zero
  80d298:	1144b03a 	or	r2,r2,r5
  80d29c:	1462b03a 	or	r17,r2,r17
  80d2a0:	0021883a 	mov	r16,zero
  80d2a4:	888001cc 	andi	r2,r17,7
  80d2a8:	10000726 	beq	r2,zero,80d2c8 <__subdf3+0x170>
  80d2ac:	888003cc 	andi	r2,r17,15
  80d2b0:	10800120 	cmpeqi	r2,r2,4
  80d2b4:	1000041e 	bne	r2,zero,80d2c8 <__subdf3+0x170>
  80d2b8:	88c00104 	addi	r3,r17,4
  80d2bc:	1c63803a 	cmpltu	r17,r3,r17
  80d2c0:	2449883a 	add	r4,r4,r17
  80d2c4:	1823883a 	mov	r17,r3
  80d2c8:	2080202c 	andhi	r2,r4,128
  80d2cc:	10008026 	beq	r2,zero,80d4d0 <__subdf3+0x378>
  80d2d0:	81400044 	addi	r5,r16,1
  80d2d4:	2881ffe0 	cmpeqi	r2,r5,2047
  80d2d8:	2941ffcc 	andi	r5,r5,2047
  80d2dc:	1000921e 	bne	r2,zero,80d528 <__subdf3+0x3d0>
  80d2e0:	00bfe034 	movhi	r2,65408
  80d2e4:	10bfffc4 	addi	r2,r2,-1
  80d2e8:	2088703a 	and	r4,r4,r2
  80d2ec:	2006927a 	slli	r3,r4,9
  80d2f0:	8822d0fa 	srli	r17,r17,3
  80d2f4:	2004977a 	slli	r2,r4,29
  80d2f8:	1806d33a 	srli	r3,r3,12
  80d2fc:	1444b03a 	or	r2,r2,r17
  80d300:	280a953a 	slli	r5,r5,20
  80d304:	94803fcc 	andi	r18,r18,255
  80d308:	902497fa 	slli	r18,r18,31
  80d30c:	28c6b03a 	or	r3,r5,r3
  80d310:	1c86b03a 	or	r3,r3,r18
  80d314:	dfc00417 	ldw	ra,16(sp)
  80d318:	dcc00317 	ldw	r19,12(sp)
  80d31c:	dc800217 	ldw	r18,8(sp)
  80d320:	dc400117 	ldw	r17,4(sp)
  80d324:	dc000017 	ldw	r16,0(sp)
  80d328:	dec00504 	addi	sp,sp,20
  80d32c:	f800283a 	ret
  80d330:	01402e0e 	bge	zero,r5,80d3ec <__subdf3+0x294>
  80d334:	68005526 	beq	r13,zero,80d48c <__subdf3+0x334>
  80d338:	8081ffd8 	cmpnei	r2,r16,2047
  80d33c:	10013b26 	beq	r2,zero,80d82c <__subdf3+0x6d4>
  80d340:	18c02034 	orhi	r3,r3,128
  80d344:	28800e48 	cmpgei	r2,r5,57
  80d348:	10006d1e 	bne	r2,zero,80d500 <__subdf3+0x3a8>
  80d34c:	28800808 	cmpgei	r2,r5,32
  80d350:	10010826 	beq	r2,zero,80d774 <__subdf3+0x61c>
  80d354:	2c7ff804 	addi	r17,r5,-32
  80d358:	29000820 	cmpeqi	r4,r5,32
  80d35c:	1c44d83a 	srl	r2,r3,r17
  80d360:	2000041e 	bne	r4,zero,80d374 <__subdf3+0x21c>
  80d364:	01001004 	movi	r4,64
  80d368:	214bc83a 	sub	r5,r4,r5
  80d36c:	1946983a 	sll	r3,r3,r5
  80d370:	50d4b03a 	or	r10,r10,r3
  80d374:	5022c03a 	cmpne	r17,r10,zero
  80d378:	88a2b03a 	or	r17,r17,r2
  80d37c:	00006206 	br	80d508 <__subdf3+0x3b0>
  80d380:	1a98b03a 	or	r12,r3,r10
  80d384:	817e0044 	addi	r5,r16,-2047
  80d388:	6000161e 	bne	r12,zero,80d3e4 <__subdf3+0x28c>
  80d38c:	3a40005c 	xori	r9,r7,1
  80d390:	12401626 	beq	r2,r9,80d3ec <__subdf3+0x294>
  80d394:	28002e26 	beq	r5,zero,80d450 <__subdf3+0x2f8>
  80d398:	6c0bc83a 	sub	r5,r13,r16
  80d39c:	4825883a 	mov	r18,r9
  80d3a0:	80009e1e 	bne	r16,zero,80d61c <__subdf3+0x4c4>
  80d3a4:	42c4b03a 	or	r2,r8,r11
  80d3a8:	10010926 	beq	r2,zero,80d7d0 <__subdf3+0x678>
  80d3ac:	28bfffc4 	addi	r2,r5,-1
  80d3b0:	10016826 	beq	r2,zero,80d954 <__subdf3+0x7fc>
  80d3b4:	2941ffd8 	cmpnei	r5,r5,2047
  80d3b8:	28015f26 	beq	r5,zero,80d938 <__subdf3+0x7e0>
  80d3bc:	100b883a 	mov	r5,r2
  80d3c0:	00009906 	br	80d628 <__subdf3+0x4d0>
  80d3c4:	1a84b03a 	or	r2,r3,r10
  80d3c8:	1000b126 	beq	r2,zero,80d690 <__subdf3+0x538>
  80d3cc:	28bfffc4 	addi	r2,r5,-1
  80d3d0:	10011d26 	beq	r2,zero,80d848 <__subdf3+0x6f0>
  80d3d4:	2941ffd8 	cmpnei	r5,r5,2047
  80d3d8:	28011426 	beq	r5,zero,80d82c <__subdf3+0x6d4>
  80d3dc:	100b883a 	mov	r5,r2
  80d3e0:	003f8106 	br	80d1e8 <__subdf3+0x90>
  80d3e4:	3a403fcc 	andi	r9,r7,255
  80d3e8:	11ffea1e 	bne	r2,r7,80d394 <__subdf3+0x23c>
  80d3ec:	28007c26 	beq	r5,zero,80d5e0 <__subdf3+0x488>
  80d3f0:	6c0bc83a 	sub	r5,r13,r16
  80d3f4:	8000d726 	beq	r16,zero,80d754 <__subdf3+0x5fc>
  80d3f8:	6881ffd8 	cmpnei	r2,r13,2047
  80d3fc:	10012626 	beq	r2,zero,80d898 <__subdf3+0x740>
  80d400:	42002034 	orhi	r8,r8,128
  80d404:	28800e48 	cmpgei	r2,r5,57
  80d408:	10012a1e 	bne	r2,zero,80d8b4 <__subdf3+0x75c>
  80d40c:	28800808 	cmpgei	r2,r5,32
  80d410:	1001821e 	bne	r2,zero,80da1c <__subdf3+0x8c4>
  80d414:	00800804 	movi	r2,32
  80d418:	1145c83a 	sub	r2,r2,r5
  80d41c:	40a2983a 	sll	r17,r8,r2
  80d420:	5948d83a 	srl	r4,r11,r5
  80d424:	5884983a 	sll	r2,r11,r2
  80d428:	4150d83a 	srl	r8,r8,r5
  80d42c:	8922b03a 	or	r17,r17,r4
  80d430:	1004c03a 	cmpne	r2,r2,zero
  80d434:	88a2b03a 	or	r17,r17,r2
  80d438:	1a07883a 	add	r3,r3,r8
  80d43c:	8aa3883a 	add	r17,r17,r10
  80d440:	8a89803a 	cmpltu	r4,r17,r10
  80d444:	20c9883a 	add	r4,r4,r3
  80d448:	6821883a 	mov	r16,r13
  80d44c:	00003106 	br	80d514 <__subdf3+0x3bc>
  80d450:	80800044 	addi	r2,r16,1
  80d454:	1081ff8c 	andi	r2,r2,2046
  80d458:	1000821e 	bne	r2,zero,80d664 <__subdf3+0x50c>
  80d45c:	42ceb03a 	or	r7,r8,r11
  80d460:	1a84b03a 	or	r2,r3,r10
  80d464:	8000e11e 	bne	r16,zero,80d7ec <__subdf3+0x694>
  80d468:	38012a26 	beq	r7,zero,80d914 <__subdf3+0x7bc>
  80d46c:	1001461e 	bne	r2,zero,80d988 <__subdf3+0x830>
  80d470:	4004977a 	slli	r2,r8,29
  80d474:	00c80034 	movhi	r3,8192
  80d478:	18ffffc4 	addi	r3,r3,-1
  80d47c:	20c8703a 	and	r4,r4,r3
  80d480:	4010d0fa 	srli	r8,r8,3
  80d484:	1104b03a 	or	r2,r2,r4
  80d488:	00001806 	br	80d4ec <__subdf3+0x394>
  80d48c:	1a84b03a 	or	r2,r3,r10
  80d490:	1000fa26 	beq	r2,zero,80d87c <__subdf3+0x724>
  80d494:	28bfffc4 	addi	r2,r5,-1
  80d498:	10000426 	beq	r2,zero,80d4ac <__subdf3+0x354>
  80d49c:	2941ffd8 	cmpnei	r5,r5,2047
  80d4a0:	28013226 	beq	r5,zero,80d96c <__subdf3+0x814>
  80d4a4:	100b883a 	mov	r5,r2
  80d4a8:	003fa606 	br	80d344 <__subdf3+0x1ec>
  80d4ac:	5aa3883a 	add	r17,r11,r10
  80d4b0:	40c9883a 	add	r4,r8,r3
  80d4b4:	8ad7803a 	cmpltu	r11,r17,r11
  80d4b8:	22c9883a 	add	r4,r4,r11
  80d4bc:	2080202c 	andhi	r2,r4,128
  80d4c0:	10007a1e 	bne	r2,zero,80d6ac <__subdf3+0x554>
  80d4c4:	04000044 	movi	r16,1
  80d4c8:	888001cc 	andi	r2,r17,7
  80d4cc:	103f771e 	bne	r2,zero,80d2ac <__subdf3+0x154>
  80d4d0:	8822d0fa 	srli	r17,r17,3
  80d4d4:	2004977a 	slli	r2,r4,29
  80d4d8:	2010d0fa 	srli	r8,r4,3
  80d4dc:	800b883a 	mov	r5,r16
  80d4e0:	8884b03a 	or	r2,r17,r2
  80d4e4:	28c1ffe0 	cmpeqi	r3,r5,2047
  80d4e8:	1800241e 	bne	r3,zero,80d57c <__subdf3+0x424>
  80d4ec:	00c00434 	movhi	r3,16
  80d4f0:	18ffffc4 	addi	r3,r3,-1
  80d4f4:	40c6703a 	and	r3,r8,r3
  80d4f8:	2941ffcc 	andi	r5,r5,2047
  80d4fc:	003f8006 	br	80d300 <__subdf3+0x1a8>
  80d500:	1aa2b03a 	or	r17,r3,r10
  80d504:	8822c03a 	cmpne	r17,r17,zero
  80d508:	8ae3883a 	add	r17,r17,r11
  80d50c:	8ac9803a 	cmpltu	r4,r17,r11
  80d510:	2209883a 	add	r4,r4,r8
  80d514:	2080202c 	andhi	r2,r4,128
  80d518:	103feb26 	beq	r2,zero,80d4c8 <__subdf3+0x370>
  80d51c:	84000044 	addi	r16,r16,1
  80d520:	8081ffe0 	cmpeqi	r2,r16,2047
  80d524:	10006226 	beq	r2,zero,80d6b0 <__subdf3+0x558>
  80d528:	0141ffc4 	movi	r5,2047
  80d52c:	0007883a 	mov	r3,zero
  80d530:	0005883a 	mov	r2,zero
  80d534:	003f7206 	br	80d300 <__subdf3+0x1a8>
  80d538:	400e977a 	slli	r7,r8,29
  80d53c:	4010d0fa 	srli	r8,r8,3
  80d540:	1000ef26 	beq	r2,zero,80d900 <__subdf3+0x7a8>
  80d544:	01480034 	movhi	r5,8192
  80d548:	297fffc4 	addi	r5,r5,-1
  80d54c:	2144703a 	and	r2,r4,r5
  80d550:	4100022c 	andhi	r4,r8,8
  80d554:	11c4b03a 	or	r2,r2,r7
  80d558:	20000826 	beq	r4,zero,80d57c <__subdf3+0x424>
  80d55c:	1808d0fa 	srli	r4,r3,3
  80d560:	21c0022c 	andhi	r7,r4,8
  80d564:	3800051e 	bne	r7,zero,80d57c <__subdf3+0x424>
  80d568:	1804977a 	slli	r2,r3,29
  80d56c:	314c703a 	and	r6,r6,r5
  80d570:	4825883a 	mov	r18,r9
  80d574:	3084b03a 	or	r2,r6,r2
  80d578:	2011883a 	mov	r8,r4
  80d57c:	1206b03a 	or	r3,r2,r8
  80d580:	18013e26 	beq	r3,zero,80da7c <__subdf3+0x924>
  80d584:	01000434 	movhi	r4,16
  80d588:	40c00234 	orhi	r3,r8,8
  80d58c:	213fffc4 	addi	r4,r4,-1
  80d590:	1906703a 	and	r3,r3,r4
  80d594:	0141ffc4 	movi	r5,2047
  80d598:	003f5906 	br	80d300 <__subdf3+0x1a8>
  80d59c:	00ffe034 	movhi	r3,65408
  80d5a0:	18ffffc4 	addi	r3,r3,-1
  80d5a4:	8161c83a 	sub	r16,r16,r5
  80d5a8:	20c8703a 	and	r4,r4,r3
  80d5ac:	003f3d06 	br	80d2a4 <__subdf3+0x14c>
  80d5b0:	8809883a 	mov	r4,r17
  80d5b4:	08016700 	call	801670 <__clzsi2>
  80d5b8:	11400604 	addi	r5,r2,24
  80d5bc:	28c00808 	cmpgei	r3,r5,32
  80d5c0:	183f2326 	beq	r3,zero,80d250 <__subdf3+0xf8>
  80d5c4:	113ffe04 	addi	r4,r2,-8
  80d5c8:	8908983a 	sll	r4,r17,r4
  80d5cc:	0023883a 	mov	r17,zero
  80d5d0:	003f2506 	br	80d268 <__subdf3+0x110>
  80d5d4:	1aa2b03a 	or	r17,r3,r10
  80d5d8:	8822c03a 	cmpne	r17,r17,zero
  80d5dc:	003f1006 	br	80d220 <__subdf3+0xc8>
  80d5e0:	80800044 	addi	r2,r16,1
  80d5e4:	11c1ff8c 	andi	r7,r2,2046
  80d5e8:	38006d1e 	bne	r7,zero,80d7a0 <__subdf3+0x648>
  80d5ec:	42c4b03a 	or	r2,r8,r11
  80d5f0:	8000be1e 	bne	r16,zero,80d8ec <__subdf3+0x794>
  80d5f4:	1000f726 	beq	r2,zero,80d9d4 <__subdf3+0x87c>
  80d5f8:	1a84b03a 	or	r2,r3,r10
  80d5fc:	1000fc1e 	bne	r2,zero,80d9f0 <__subdf3+0x898>
  80d600:	4006977a 	slli	r3,r8,29
  80d604:	00880034 	movhi	r2,8192
  80d608:	10bfffc4 	addi	r2,r2,-1
  80d60c:	2084703a 	and	r2,r4,r2
  80d610:	4010d0fa 	srli	r8,r8,3
  80d614:	10c4b03a 	or	r2,r2,r3
  80d618:	003fb406 	br	80d4ec <__subdf3+0x394>
  80d61c:	6881ffd8 	cmpnei	r2,r13,2047
  80d620:	10009d26 	beq	r2,zero,80d898 <__subdf3+0x740>
  80d624:	42002034 	orhi	r8,r8,128
  80d628:	28800e48 	cmpgei	r2,r5,57
  80d62c:	1000421e 	bne	r2,zero,80d738 <__subdf3+0x5e0>
  80d630:	28800808 	cmpgei	r2,r5,32
  80d634:	1000a21e 	bne	r2,zero,80d8c0 <__subdf3+0x768>
  80d638:	00800804 	movi	r2,32
  80d63c:	1145c83a 	sub	r2,r2,r5
  80d640:	40a2983a 	sll	r17,r8,r2
  80d644:	5948d83a 	srl	r4,r11,r5
  80d648:	5896983a 	sll	r11,r11,r2
  80d64c:	4150d83a 	srl	r8,r8,r5
  80d650:	8922b03a 	or	r17,r17,r4
  80d654:	5816c03a 	cmpne	r11,r11,zero
  80d658:	8ae2b03a 	or	r17,r17,r11
  80d65c:	1a07c83a 	sub	r3,r3,r8
  80d660:	00003706 	br	80d740 <__subdf3+0x5e8>
  80d664:	5aa3c83a 	sub	r17,r11,r10
  80d668:	40e7c83a 	sub	r19,r8,r3
  80d66c:	5c49803a 	cmpltu	r4,r11,r17
  80d670:	9927c83a 	sub	r19,r19,r4
  80d674:	9880202c 	andhi	r2,r19,128
  80d678:	1000661e 	bne	r2,zero,80d814 <__subdf3+0x6bc>
  80d67c:	8cc4b03a 	or	r2,r17,r19
  80d680:	103eef1e 	bne	r2,zero,80d240 <__subdf3+0xe8>
  80d684:	0011883a 	mov	r8,zero
  80d688:	0025883a 	mov	r18,zero
  80d68c:	003f9706 	br	80d4ec <__subdf3+0x394>
  80d690:	4022977a 	slli	r17,r8,29
  80d694:	00880034 	movhi	r2,8192
  80d698:	10bfffc4 	addi	r2,r2,-1
  80d69c:	2088703a 	and	r4,r4,r2
  80d6a0:	4010d0fa 	srli	r8,r8,3
  80d6a4:	2444b03a 	or	r2,r4,r17
  80d6a8:	003f8e06 	br	80d4e4 <__subdf3+0x38c>
  80d6ac:	04000084 	movi	r16,2
  80d6b0:	00bfe034 	movhi	r2,65408
  80d6b4:	10bfffc4 	addi	r2,r2,-1
  80d6b8:	8806d07a 	srli	r3,r17,1
  80d6bc:	2088703a 	and	r4,r4,r2
  80d6c0:	200497fa 	slli	r2,r4,31
  80d6c4:	8c40004c 	andi	r17,r17,1
  80d6c8:	1c62b03a 	or	r17,r3,r17
  80d6cc:	2008d07a 	srli	r4,r4,1
  80d6d0:	1462b03a 	or	r17,r2,r17
  80d6d4:	003ef306 	br	80d2a4 <__subdf3+0x14c>
  80d6d8:	297ff844 	addi	r5,r5,-31
  80d6dc:	18800820 	cmpeqi	r2,r3,32
  80d6e0:	214ad83a 	srl	r5,r4,r5
  80d6e4:	1000041e 	bne	r2,zero,80d6f8 <__subdf3+0x5a0>
  80d6e8:	00801004 	movi	r2,64
  80d6ec:	10c7c83a 	sub	r3,r2,r3
  80d6f0:	20c8983a 	sll	r4,r4,r3
  80d6f4:	8922b03a 	or	r17,r17,r4
  80d6f8:	8822c03a 	cmpne	r17,r17,zero
  80d6fc:	8962b03a 	or	r17,r17,r5
  80d700:	0009883a 	mov	r4,zero
  80d704:	0021883a 	mov	r16,zero
  80d708:	003f6f06 	br	80d4c8 <__subdf3+0x370>
  80d70c:	2c7ff804 	addi	r17,r5,-32
  80d710:	29000820 	cmpeqi	r4,r5,32
  80d714:	1c44d83a 	srl	r2,r3,r17
  80d718:	2000041e 	bne	r4,zero,80d72c <__subdf3+0x5d4>
  80d71c:	01001004 	movi	r4,64
  80d720:	214bc83a 	sub	r5,r4,r5
  80d724:	1946983a 	sll	r3,r3,r5
  80d728:	50d4b03a 	or	r10,r10,r3
  80d72c:	5022c03a 	cmpne	r17,r10,zero
  80d730:	88a2b03a 	or	r17,r17,r2
  80d734:	003eba06 	br	80d220 <__subdf3+0xc8>
  80d738:	42d0b03a 	or	r8,r8,r11
  80d73c:	4022c03a 	cmpne	r17,r8,zero
  80d740:	5463c83a 	sub	r17,r10,r17
  80d744:	5449803a 	cmpltu	r4,r10,r17
  80d748:	1909c83a 	sub	r4,r3,r4
  80d74c:	6821883a 	mov	r16,r13
  80d750:	003eb606 	br	80d22c <__subdf3+0xd4>
  80d754:	42c4b03a 	or	r2,r8,r11
  80d758:	10009726 	beq	r2,zero,80d9b8 <__subdf3+0x860>
  80d75c:	28bfffc4 	addi	r2,r5,-1
  80d760:	1000b926 	beq	r2,zero,80da48 <__subdf3+0x8f0>
  80d764:	2941ffd8 	cmpnei	r5,r5,2047
  80d768:	28007326 	beq	r5,zero,80d938 <__subdf3+0x7e0>
  80d76c:	100b883a 	mov	r5,r2
  80d770:	003f2406 	br	80d404 <__subdf3+0x2ac>
  80d774:	00800804 	movi	r2,32
  80d778:	1145c83a 	sub	r2,r2,r5
  80d77c:	18a2983a 	sll	r17,r3,r2
  80d780:	5148d83a 	srl	r4,r10,r5
  80d784:	5084983a 	sll	r2,r10,r2
  80d788:	1946d83a 	srl	r3,r3,r5
  80d78c:	8922b03a 	or	r17,r17,r4
  80d790:	1004c03a 	cmpne	r2,r2,zero
  80d794:	88a2b03a 	or	r17,r17,r2
  80d798:	40d1883a 	add	r8,r8,r3
  80d79c:	003f5a06 	br	80d508 <__subdf3+0x3b0>
  80d7a0:	1101ffe0 	cmpeqi	r4,r2,2047
  80d7a4:	203f601e 	bne	r4,zero,80d528 <__subdf3+0x3d0>
  80d7a8:	5a95883a 	add	r10,r11,r10
  80d7ac:	52d7803a 	cmpltu	r11,r10,r11
  80d7b0:	40c9883a 	add	r4,r8,r3
  80d7b4:	22c9883a 	add	r4,r4,r11
  80d7b8:	202297fa 	slli	r17,r4,31
  80d7bc:	5014d07a 	srli	r10,r10,1
  80d7c0:	2008d07a 	srli	r4,r4,1
  80d7c4:	1021883a 	mov	r16,r2
  80d7c8:	8aa2b03a 	or	r17,r17,r10
  80d7cc:	003f3e06 	br	80d4c8 <__subdf3+0x370>
  80d7d0:	1808977a 	slli	r4,r3,29
  80d7d4:	00880034 	movhi	r2,8192
  80d7d8:	10bfffc4 	addi	r2,r2,-1
  80d7dc:	308c703a 	and	r6,r6,r2
  80d7e0:	1810d0fa 	srli	r8,r3,3
  80d7e4:	3104b03a 	or	r2,r6,r4
  80d7e8:	003f3e06 	br	80d4e4 <__subdf3+0x38c>
  80d7ec:	383f521e 	bne	r7,zero,80d538 <__subdf3+0x3e0>
  80d7f0:	10009d26 	beq	r2,zero,80da68 <__subdf3+0x910>
  80d7f4:	1808977a 	slli	r4,r3,29
  80d7f8:	00880034 	movhi	r2,8192
  80d7fc:	10bfffc4 	addi	r2,r2,-1
  80d800:	3084703a 	and	r2,r6,r2
  80d804:	1810d0fa 	srli	r8,r3,3
  80d808:	1104b03a 	or	r2,r2,r4
  80d80c:	4825883a 	mov	r18,r9
  80d810:	003f5a06 	br	80d57c <__subdf3+0x424>
  80d814:	52e3c83a 	sub	r17,r10,r11
  80d818:	1a09c83a 	sub	r4,r3,r8
  80d81c:	5467803a 	cmpltu	r19,r10,r17
  80d820:	24e7c83a 	sub	r19,r4,r19
  80d824:	4825883a 	mov	r18,r9
  80d828:	003e8506 	br	80d240 <__subdf3+0xe8>
  80d82c:	4022977a 	slli	r17,r8,29
  80d830:	00880034 	movhi	r2,8192
  80d834:	10bfffc4 	addi	r2,r2,-1
  80d838:	2088703a 	and	r4,r4,r2
  80d83c:	4010d0fa 	srli	r8,r8,3
  80d840:	2444b03a 	or	r2,r4,r17
  80d844:	003f4d06 	br	80d57c <__subdf3+0x424>
  80d848:	5aa3c83a 	sub	r17,r11,r10
  80d84c:	40c9c83a 	sub	r4,r8,r3
  80d850:	5c57803a 	cmpltu	r11,r11,r17
  80d854:	22c9c83a 	sub	r4,r4,r11
  80d858:	04000044 	movi	r16,1
  80d85c:	003e7306 	br	80d22c <__subdf3+0xd4>
  80d860:	4004977a 	slli	r2,r8,29
  80d864:	00c80034 	movhi	r3,8192
  80d868:	18ffffc4 	addi	r3,r3,-1
  80d86c:	20c8703a 	and	r4,r4,r3
  80d870:	4010d0fa 	srli	r8,r8,3
  80d874:	1104b03a 	or	r2,r2,r4
  80d878:	003f4006 	br	80d57c <__subdf3+0x424>
  80d87c:	4004977a 	slli	r2,r8,29
  80d880:	00c80034 	movhi	r3,8192
  80d884:	18ffffc4 	addi	r3,r3,-1
  80d888:	20c8703a 	and	r4,r4,r3
  80d88c:	4010d0fa 	srli	r8,r8,3
  80d890:	1104b03a 	or	r2,r2,r4
  80d894:	003f1306 	br	80d4e4 <__subdf3+0x38c>
  80d898:	1804977a 	slli	r2,r3,29
  80d89c:	01080034 	movhi	r4,8192
  80d8a0:	213fffc4 	addi	r4,r4,-1
  80d8a4:	310c703a 	and	r6,r6,r4
  80d8a8:	1810d0fa 	srli	r8,r3,3
  80d8ac:	1184b03a 	or	r2,r2,r6
  80d8b0:	003f3206 	br	80d57c <__subdf3+0x424>
  80d8b4:	42d0b03a 	or	r8,r8,r11
  80d8b8:	4022c03a 	cmpne	r17,r8,zero
  80d8bc:	003edf06 	br	80d43c <__subdf3+0x2e4>
  80d8c0:	2c7ff804 	addi	r17,r5,-32
  80d8c4:	29000820 	cmpeqi	r4,r5,32
  80d8c8:	4444d83a 	srl	r2,r8,r17
  80d8cc:	2000041e 	bne	r4,zero,80d8e0 <__subdf3+0x788>
  80d8d0:	01001004 	movi	r4,64
  80d8d4:	214bc83a 	sub	r5,r4,r5
  80d8d8:	4150983a 	sll	r8,r8,r5
  80d8dc:	5a16b03a 	or	r11,r11,r8
  80d8e0:	5822c03a 	cmpne	r17,r11,zero
  80d8e4:	88a2b03a 	or	r17,r17,r2
  80d8e8:	003f9506 	br	80d740 <__subdf3+0x5e8>
  80d8ec:	103fea26 	beq	r2,zero,80d898 <__subdf3+0x740>
  80d8f0:	1a94b03a 	or	r10,r3,r10
  80d8f4:	400e977a 	slli	r7,r8,29
  80d8f8:	4010d0fa 	srli	r8,r8,3
  80d8fc:	503f111e 	bne	r10,zero,80d544 <__subdf3+0x3ec>
  80d900:	00880034 	movhi	r2,8192
  80d904:	10bfffc4 	addi	r2,r2,-1
  80d908:	2084703a 	and	r2,r4,r2
  80d90c:	11c4b03a 	or	r2,r2,r7
  80d910:	003f1a06 	br	80d57c <__subdf3+0x424>
  80d914:	103f5b26 	beq	r2,zero,80d684 <__subdf3+0x52c>
  80d918:	1804977a 	slli	r2,r3,29
  80d91c:	01080034 	movhi	r4,8192
  80d920:	213fffc4 	addi	r4,r4,-1
  80d924:	310c703a 	and	r6,r6,r4
  80d928:	1810d0fa 	srli	r8,r3,3
  80d92c:	1184b03a 	or	r2,r2,r6
  80d930:	4825883a 	mov	r18,r9
  80d934:	003eed06 	br	80d4ec <__subdf3+0x394>
  80d938:	1808977a 	slli	r4,r3,29
  80d93c:	00880034 	movhi	r2,8192
  80d940:	10bfffc4 	addi	r2,r2,-1
  80d944:	3084703a 	and	r2,r6,r2
  80d948:	1810d0fa 	srli	r8,r3,3
  80d94c:	1104b03a 	or	r2,r2,r4
  80d950:	003f0a06 	br	80d57c <__subdf3+0x424>
  80d954:	52e3c83a 	sub	r17,r10,r11
  80d958:	1a09c83a 	sub	r4,r3,r8
  80d95c:	5455803a 	cmpltu	r10,r10,r17
  80d960:	2289c83a 	sub	r4,r4,r10
  80d964:	04000044 	movi	r16,1
  80d968:	003e3006 	br	80d22c <__subdf3+0xd4>
  80d96c:	4006977a 	slli	r3,r8,29
  80d970:	00880034 	movhi	r2,8192
  80d974:	10bfffc4 	addi	r2,r2,-1
  80d978:	2084703a 	and	r2,r4,r2
  80d97c:	4010d0fa 	srli	r8,r8,3
  80d980:	10c4b03a 	or	r2,r2,r3
  80d984:	003efd06 	br	80d57c <__subdf3+0x424>
  80d988:	5aa3c83a 	sub	r17,r11,r10
  80d98c:	5c45803a 	cmpltu	r2,r11,r17
  80d990:	40c9c83a 	sub	r4,r8,r3
  80d994:	2089c83a 	sub	r4,r4,r2
  80d998:	2080202c 	andhi	r2,r4,128
  80d99c:	10002f26 	beq	r2,zero,80da5c <__subdf3+0x904>
  80d9a0:	52e3c83a 	sub	r17,r10,r11
  80d9a4:	1a09c83a 	sub	r4,r3,r8
  80d9a8:	5455803a 	cmpltu	r10,r10,r17
  80d9ac:	2289c83a 	sub	r4,r4,r10
  80d9b0:	4825883a 	mov	r18,r9
  80d9b4:	003e3b06 	br	80d2a4 <__subdf3+0x14c>
  80d9b8:	1808977a 	slli	r4,r3,29
  80d9bc:	00880034 	movhi	r2,8192
  80d9c0:	10bfffc4 	addi	r2,r2,-1
  80d9c4:	3084703a 	and	r2,r6,r2
  80d9c8:	1810d0fa 	srli	r8,r3,3
  80d9cc:	1104b03a 	or	r2,r2,r4
  80d9d0:	003ec406 	br	80d4e4 <__subdf3+0x38c>
  80d9d4:	1808977a 	slli	r4,r3,29
  80d9d8:	00880034 	movhi	r2,8192
  80d9dc:	10bfffc4 	addi	r2,r2,-1
  80d9e0:	3084703a 	and	r2,r6,r2
  80d9e4:	1810d0fa 	srli	r8,r3,3
  80d9e8:	1104b03a 	or	r2,r2,r4
  80d9ec:	003ebf06 	br	80d4ec <__subdf3+0x394>
  80d9f0:	5aa3883a 	add	r17,r11,r10
  80d9f4:	40c9883a 	add	r4,r8,r3
  80d9f8:	8ad7803a 	cmpltu	r11,r17,r11
  80d9fc:	22c9883a 	add	r4,r4,r11
  80da00:	2080202c 	andhi	r2,r4,128
  80da04:	103eb026 	beq	r2,zero,80d4c8 <__subdf3+0x370>
  80da08:	00bfe034 	movhi	r2,65408
  80da0c:	10bfffc4 	addi	r2,r2,-1
  80da10:	2088703a 	and	r4,r4,r2
  80da14:	04000044 	movi	r16,1
  80da18:	003eab06 	br	80d4c8 <__subdf3+0x370>
  80da1c:	28bff804 	addi	r2,r5,-32
  80da20:	29000820 	cmpeqi	r4,r5,32
  80da24:	4084d83a 	srl	r2,r8,r2
  80da28:	2000041e 	bne	r4,zero,80da3c <__subdf3+0x8e4>
  80da2c:	01001004 	movi	r4,64
  80da30:	214bc83a 	sub	r5,r4,r5
  80da34:	4150983a 	sll	r8,r8,r5
  80da38:	5a16b03a 	or	r11,r11,r8
  80da3c:	5822c03a 	cmpne	r17,r11,zero
  80da40:	88a2b03a 	or	r17,r17,r2
  80da44:	003e7d06 	br	80d43c <__subdf3+0x2e4>
  80da48:	5aa3883a 	add	r17,r11,r10
  80da4c:	40c9883a 	add	r4,r8,r3
  80da50:	8a95803a 	cmpltu	r10,r17,r10
  80da54:	2289883a 	add	r4,r4,r10
  80da58:	003e9806 	br	80d4bc <__subdf3+0x364>
  80da5c:	8904b03a 	or	r2,r17,r4
  80da60:	103f0826 	beq	r2,zero,80d684 <__subdf3+0x52c>
  80da64:	003e9806 	br	80d4c8 <__subdf3+0x370>
  80da68:	02000434 	movhi	r8,16
  80da6c:	423fffc4 	addi	r8,r8,-1
  80da70:	0025883a 	mov	r18,zero
  80da74:	00bfffc4 	movi	r2,-1
  80da78:	003ec206 	br	80d584 <__subdf3+0x42c>
  80da7c:	0005883a 	mov	r2,zero
  80da80:	0141ffc4 	movi	r5,2047
  80da84:	0007883a 	mov	r3,zero
  80da88:	003e1d06 	br	80d300 <__subdf3+0x1a8>

0080da8c <__unorddf2>:
  80da8c:	2806d53a 	srli	r3,r5,20
  80da90:	3810d53a 	srli	r8,r7,20
  80da94:	02400434 	movhi	r9,16
  80da98:	18c1ffcc 	andi	r3,r3,2047
  80da9c:	4a7fffc4 	addi	r9,r9,-1
  80daa0:	18c1ffd8 	cmpnei	r3,r3,2047
  80daa4:	2a4a703a 	and	r5,r5,r9
  80daa8:	3a4e703a 	and	r7,r7,r9
  80daac:	4201ffcc 	andi	r8,r8,2047
  80dab0:	18000426 	beq	r3,zero,80dac4 <__unorddf2+0x38>
  80dab4:	4201ffd8 	cmpnei	r8,r8,2047
  80dab8:	40000626 	beq	r8,zero,80dad4 <__unorddf2+0x48>
  80dabc:	0005883a 	mov	r2,zero
  80dac0:	f800283a 	ret
  80dac4:	214ab03a 	or	r5,r4,r5
  80dac8:	283ffa26 	beq	r5,zero,80dab4 <__unorddf2+0x28>
  80dacc:	00800044 	movi	r2,1
  80dad0:	f800283a 	ret
  80dad4:	398eb03a 	or	r7,r7,r6
  80dad8:	3804c03a 	cmpne	r2,r7,zero
  80dadc:	f800283a 	ret

0080dae0 <__fixdfsi>:
  80dae0:	2806d53a 	srli	r3,r5,20
  80dae4:	01800434 	movhi	r6,16
  80dae8:	31bfffc4 	addi	r6,r6,-1
  80daec:	18c1ffcc 	andi	r3,r3,2047
  80daf0:	19c0ffd0 	cmplti	r7,r3,1023
  80daf4:	2810d7fa 	srli	r8,r5,31
  80daf8:	298a703a 	and	r5,r5,r6
  80dafc:	3800061e 	bne	r7,zero,80db18 <__fixdfsi+0x38>
  80db00:	18810790 	cmplti	r2,r3,1054
  80db04:	1000061e 	bne	r2,zero,80db20 <__fixdfsi+0x40>
  80db08:	00a00034 	movhi	r2,32768
  80db0c:	10bfffc4 	addi	r2,r2,-1
  80db10:	4085883a 	add	r2,r8,r2
  80db14:	f800283a 	ret
  80db18:	0005883a 	mov	r2,zero
  80db1c:	f800283a 	ret
  80db20:	01810cc4 	movi	r6,1075
  80db24:	30cdc83a 	sub	r6,r6,r3
  80db28:	30800808 	cmpgei	r2,r6,32
  80db2c:	29400434 	orhi	r5,r5,16
  80db30:	1000071e 	bne	r2,zero,80db50 <__fixdfsi+0x70>
  80db34:	18befb44 	addi	r2,r3,-1043
  80db38:	2884983a 	sll	r2,r5,r2
  80db3c:	2188d83a 	srl	r4,r4,r6
  80db40:	1104b03a 	or	r2,r2,r4
  80db44:	403ff526 	beq	r8,zero,80db1c <__fixdfsi+0x3c>
  80db48:	0085c83a 	sub	r2,zero,r2
  80db4c:	f800283a 	ret
  80db50:	008104c4 	movi	r2,1043
  80db54:	10c5c83a 	sub	r2,r2,r3
  80db58:	2884d83a 	srl	r2,r5,r2
  80db5c:	003ff906 	br	80db44 <__fixdfsi+0x64>

0080db60 <__floatsidf>:
  80db60:	defffd04 	addi	sp,sp,-12
  80db64:	dfc00215 	stw	ra,8(sp)
  80db68:	dc400115 	stw	r17,4(sp)
  80db6c:	dc000015 	stw	r16,0(sp)
  80db70:	20001326 	beq	r4,zero,80dbc0 <__floatsidf+0x60>
  80db74:	2022d7fa 	srli	r17,r4,31
  80db78:	2021883a 	mov	r16,r4
  80db7c:	20002516 	blt	r4,zero,80dc14 <__floatsidf+0xb4>
  80db80:	8009883a 	mov	r4,r16
  80db84:	08016700 	call	801670 <__clzsi2>
  80db88:	01410784 	movi	r5,1054
  80db8c:	288bc83a 	sub	r5,r5,r2
  80db90:	10c002c8 	cmpgei	r3,r2,11
  80db94:	2941ffcc 	andi	r5,r5,2047
  80db98:	1800171e 	bne	r3,zero,80dbf8 <__floatsidf+0x98>
  80db9c:	00c002c4 	movi	r3,11
  80dba0:	1887c83a 	sub	r3,r3,r2
  80dba4:	80c6d83a 	srl	r3,r16,r3
  80dba8:	01000434 	movhi	r4,16
  80dbac:	10800544 	addi	r2,r2,21
  80dbb0:	213fffc4 	addi	r4,r4,-1
  80dbb4:	8084983a 	sll	r2,r16,r2
  80dbb8:	1906703a 	and	r3,r3,r4
  80dbbc:	00000406 	br	80dbd0 <__floatsidf+0x70>
  80dbc0:	0023883a 	mov	r17,zero
  80dbc4:	000b883a 	mov	r5,zero
  80dbc8:	0007883a 	mov	r3,zero
  80dbcc:	0005883a 	mov	r2,zero
  80dbd0:	280a953a 	slli	r5,r5,20
  80dbd4:	8c403fcc 	andi	r17,r17,255
  80dbd8:	882297fa 	slli	r17,r17,31
  80dbdc:	28c6b03a 	or	r3,r5,r3
  80dbe0:	1c46b03a 	or	r3,r3,r17
  80dbe4:	dfc00217 	ldw	ra,8(sp)
  80dbe8:	dc400117 	ldw	r17,4(sp)
  80dbec:	dc000017 	ldw	r16,0(sp)
  80dbf0:	dec00304 	addi	sp,sp,12
  80dbf4:	f800283a 	ret
  80dbf8:	10bffd44 	addi	r2,r2,-11
  80dbfc:	8086983a 	sll	r3,r16,r2
  80dc00:	00800434 	movhi	r2,16
  80dc04:	10bfffc4 	addi	r2,r2,-1
  80dc08:	1886703a 	and	r3,r3,r2
  80dc0c:	0005883a 	mov	r2,zero
  80dc10:	003fef06 	br	80dbd0 <__floatsidf+0x70>
  80dc14:	0121c83a 	sub	r16,zero,r4
  80dc18:	003fd906 	br	80db80 <__floatsidf+0x20>

0080dc1c <alt_get_errno>:
  80dc1c:	defffe04 	addi	sp,sp,-8
  80dc20:	dfc00115 	stw	ra,4(sp)
  80dc24:	df000015 	stw	fp,0(sp)
  80dc28:	d839883a 	mov	fp,sp
  80dc2c:	d0a00917 	ldw	r2,-32732(gp)
  80dc30:	10000326 	beq	r2,zero,80dc40 <alt_get_errno+0x24>
  80dc34:	d0a00917 	ldw	r2,-32732(gp)
  80dc38:	103ee83a 	callr	r2
  80dc3c:	00000106 	br	80dc44 <alt_get_errno+0x28>
  80dc40:	d0a70704 	addi	r2,gp,-25572
  80dc44:	e037883a 	mov	sp,fp
  80dc48:	dfc00117 	ldw	ra,4(sp)
  80dc4c:	df000017 	ldw	fp,0(sp)
  80dc50:	dec00204 	addi	sp,sp,8
  80dc54:	f800283a 	ret

0080dc58 <close>:
  80dc58:	defffb04 	addi	sp,sp,-20
  80dc5c:	dfc00415 	stw	ra,16(sp)
  80dc60:	df000315 	stw	fp,12(sp)
  80dc64:	df000304 	addi	fp,sp,12
  80dc68:	e13ffd15 	stw	r4,-12(fp)
  80dc6c:	e0bffd17 	ldw	r2,-12(fp)
  80dc70:	10000916 	blt	r2,zero,80dc98 <close+0x40>
  80dc74:	e0fffd17 	ldw	r3,-12(fp)
  80dc78:	1805883a 	mov	r2,r3
  80dc7c:	1085883a 	add	r2,r2,r2
  80dc80:	10c5883a 	add	r2,r2,r3
  80dc84:	100490ba 	slli	r2,r2,2
  80dc88:	00c02074 	movhi	r3,129
  80dc8c:	18c56804 	addi	r3,r3,5536
  80dc90:	10c5883a 	add	r2,r2,r3
  80dc94:	00000106 	br	80dc9c <close+0x44>
  80dc98:	0005883a 	mov	r2,zero
  80dc9c:	e0bfff15 	stw	r2,-4(fp)
  80dca0:	e0bfff17 	ldw	r2,-4(fp)
  80dca4:	10001926 	beq	r2,zero,80dd0c <close+0xb4>
  80dca8:	e0bfff17 	ldw	r2,-4(fp)
  80dcac:	10800017 	ldw	r2,0(r2)
  80dcb0:	10800417 	ldw	r2,16(r2)
  80dcb4:	10000626 	beq	r2,zero,80dcd0 <close+0x78>
  80dcb8:	e0bfff17 	ldw	r2,-4(fp)
  80dcbc:	10800017 	ldw	r2,0(r2)
  80dcc0:	10800417 	ldw	r2,16(r2)
  80dcc4:	e13fff17 	ldw	r4,-4(fp)
  80dcc8:	103ee83a 	callr	r2
  80dccc:	00000106 	br	80dcd4 <close+0x7c>
  80dcd0:	0005883a 	mov	r2,zero
  80dcd4:	e0bffe15 	stw	r2,-8(fp)
  80dcd8:	e13ffd17 	ldw	r4,-12(fp)
  80dcdc:	080e5140 	call	80e514 <alt_release_fd>
  80dce0:	e0bffe17 	ldw	r2,-8(fp)
  80dce4:	1000070e 	bge	r2,zero,80dd04 <close+0xac>
  80dce8:	080dc1c0 	call	80dc1c <alt_get_errno>
  80dcec:	1007883a 	mov	r3,r2
  80dcf0:	e0bffe17 	ldw	r2,-8(fp)
  80dcf4:	0085c83a 	sub	r2,zero,r2
  80dcf8:	18800015 	stw	r2,0(r3)
  80dcfc:	00bfffc4 	movi	r2,-1
  80dd00:	00000706 	br	80dd20 <close+0xc8>
  80dd04:	0005883a 	mov	r2,zero
  80dd08:	00000506 	br	80dd20 <close+0xc8>
  80dd0c:	080dc1c0 	call	80dc1c <alt_get_errno>
  80dd10:	1007883a 	mov	r3,r2
  80dd14:	00801444 	movi	r2,81
  80dd18:	18800015 	stw	r2,0(r3)
  80dd1c:	00bfffc4 	movi	r2,-1
  80dd20:	e037883a 	mov	sp,fp
  80dd24:	dfc00117 	ldw	ra,4(sp)
  80dd28:	df000017 	ldw	fp,0(sp)
  80dd2c:	dec00204 	addi	sp,sp,8
  80dd30:	f800283a 	ret

0080dd34 <alt_dev_null_write>:
  80dd34:	defffc04 	addi	sp,sp,-16
  80dd38:	df000315 	stw	fp,12(sp)
  80dd3c:	df000304 	addi	fp,sp,12
  80dd40:	e13fff15 	stw	r4,-4(fp)
  80dd44:	e17ffe15 	stw	r5,-8(fp)
  80dd48:	e1bffd15 	stw	r6,-12(fp)
  80dd4c:	e0bffd17 	ldw	r2,-12(fp)
  80dd50:	e037883a 	mov	sp,fp
  80dd54:	df000017 	ldw	fp,0(sp)
  80dd58:	dec00104 	addi	sp,sp,4
  80dd5c:	f800283a 	ret

0080dd60 <_exit>:
  80dd60:	defffd04 	addi	sp,sp,-12
  80dd64:	df000215 	stw	fp,8(sp)
  80dd68:	df000204 	addi	fp,sp,8
  80dd6c:	e13ffe15 	stw	r4,-8(fp)
  80dd70:	0001883a 	nop
  80dd74:	e0bffe17 	ldw	r2,-8(fp)
  80dd78:	e0bfff15 	stw	r2,-4(fp)
  80dd7c:	e0bfff17 	ldw	r2,-4(fp)
  80dd80:	10000226 	beq	r2,zero,80dd8c <_exit+0x2c>
  80dd84:	002af070 	cmpltui	zero,zero,43969
  80dd88:	00000106 	br	80dd90 <_exit+0x30>
  80dd8c:	002af0b0 	cmpltui	zero,zero,43970
  80dd90:	0001883a 	nop
  80dd94:	003fff06 	br	80dd94 <_exit+0x34>

0080dd98 <alt_get_errno>:
  80dd98:	defffe04 	addi	sp,sp,-8
  80dd9c:	dfc00115 	stw	ra,4(sp)
  80dda0:	df000015 	stw	fp,0(sp)
  80dda4:	d839883a 	mov	fp,sp
  80dda8:	d0a00917 	ldw	r2,-32732(gp)
  80ddac:	10000326 	beq	r2,zero,80ddbc <alt_get_errno+0x24>
  80ddb0:	d0a00917 	ldw	r2,-32732(gp)
  80ddb4:	103ee83a 	callr	r2
  80ddb8:	00000106 	br	80ddc0 <alt_get_errno+0x28>
  80ddbc:	d0a70704 	addi	r2,gp,-25572
  80ddc0:	e037883a 	mov	sp,fp
  80ddc4:	dfc00117 	ldw	ra,4(sp)
  80ddc8:	df000017 	ldw	fp,0(sp)
  80ddcc:	dec00204 	addi	sp,sp,8
  80ddd0:	f800283a 	ret

0080ddd4 <fstat>:
  80ddd4:	defffb04 	addi	sp,sp,-20
  80ddd8:	dfc00415 	stw	ra,16(sp)
  80dddc:	df000315 	stw	fp,12(sp)
  80dde0:	df000304 	addi	fp,sp,12
  80dde4:	e13ffe15 	stw	r4,-8(fp)
  80dde8:	e17ffd15 	stw	r5,-12(fp)
  80ddec:	e0bffe17 	ldw	r2,-8(fp)
  80ddf0:	10000916 	blt	r2,zero,80de18 <fstat+0x44>
  80ddf4:	e0fffe17 	ldw	r3,-8(fp)
  80ddf8:	1805883a 	mov	r2,r3
  80ddfc:	1085883a 	add	r2,r2,r2
  80de00:	10c5883a 	add	r2,r2,r3
  80de04:	100490ba 	slli	r2,r2,2
  80de08:	00c02074 	movhi	r3,129
  80de0c:	18c56804 	addi	r3,r3,5536
  80de10:	10c5883a 	add	r2,r2,r3
  80de14:	00000106 	br	80de1c <fstat+0x48>
  80de18:	0005883a 	mov	r2,zero
  80de1c:	e0bfff15 	stw	r2,-4(fp)
  80de20:	e0bfff17 	ldw	r2,-4(fp)
  80de24:	10001026 	beq	r2,zero,80de68 <fstat+0x94>
  80de28:	e0bfff17 	ldw	r2,-4(fp)
  80de2c:	10800017 	ldw	r2,0(r2)
  80de30:	10800817 	ldw	r2,32(r2)
  80de34:	10000726 	beq	r2,zero,80de54 <fstat+0x80>
  80de38:	e0bfff17 	ldw	r2,-4(fp)
  80de3c:	10800017 	ldw	r2,0(r2)
  80de40:	10800817 	ldw	r2,32(r2)
  80de44:	e17ffd17 	ldw	r5,-12(fp)
  80de48:	e13fff17 	ldw	r4,-4(fp)
  80de4c:	103ee83a 	callr	r2
  80de50:	00000a06 	br	80de7c <fstat+0xa8>
  80de54:	e0bffd17 	ldw	r2,-12(fp)
  80de58:	00c80004 	movi	r3,8192
  80de5c:	10c00115 	stw	r3,4(r2)
  80de60:	0005883a 	mov	r2,zero
  80de64:	00000506 	br	80de7c <fstat+0xa8>
  80de68:	080dd980 	call	80dd98 <alt_get_errno>
  80de6c:	1007883a 	mov	r3,r2
  80de70:	00801444 	movi	r2,81
  80de74:	18800015 	stw	r2,0(r3)
  80de78:	00bfffc4 	movi	r2,-1
  80de7c:	e037883a 	mov	sp,fp
  80de80:	dfc00117 	ldw	ra,4(sp)
  80de84:	df000017 	ldw	fp,0(sp)
  80de88:	dec00204 	addi	sp,sp,8
  80de8c:	f800283a 	ret

0080de90 <getpid>:
  80de90:	deffff04 	addi	sp,sp,-4
  80de94:	df000015 	stw	fp,0(sp)
  80de98:	d839883a 	mov	fp,sp
  80de9c:	0005883a 	mov	r2,zero
  80dea0:	e037883a 	mov	sp,fp
  80dea4:	df000017 	ldw	fp,0(sp)
  80dea8:	dec00104 	addi	sp,sp,4
  80deac:	f800283a 	ret

0080deb0 <alt_get_errno>:
  80deb0:	defffe04 	addi	sp,sp,-8
  80deb4:	dfc00115 	stw	ra,4(sp)
  80deb8:	df000015 	stw	fp,0(sp)
  80debc:	d839883a 	mov	fp,sp
  80dec0:	d0a00917 	ldw	r2,-32732(gp)
  80dec4:	10000326 	beq	r2,zero,80ded4 <alt_get_errno+0x24>
  80dec8:	d0a00917 	ldw	r2,-32732(gp)
  80decc:	103ee83a 	callr	r2
  80ded0:	00000106 	br	80ded8 <alt_get_errno+0x28>
  80ded4:	d0a70704 	addi	r2,gp,-25572
  80ded8:	e037883a 	mov	sp,fp
  80dedc:	dfc00117 	ldw	ra,4(sp)
  80dee0:	df000017 	ldw	fp,0(sp)
  80dee4:	dec00204 	addi	sp,sp,8
  80dee8:	f800283a 	ret

0080deec <isatty>:
  80deec:	deffea04 	addi	sp,sp,-88
  80def0:	dfc01515 	stw	ra,84(sp)
  80def4:	df001415 	stw	fp,80(sp)
  80def8:	df001404 	addi	fp,sp,80
  80defc:	e13fec15 	stw	r4,-80(fp)
  80df00:	e0bfec17 	ldw	r2,-80(fp)
  80df04:	10000916 	blt	r2,zero,80df2c <isatty+0x40>
  80df08:	e0ffec17 	ldw	r3,-80(fp)
  80df0c:	1805883a 	mov	r2,r3
  80df10:	1085883a 	add	r2,r2,r2
  80df14:	10c5883a 	add	r2,r2,r3
  80df18:	100490ba 	slli	r2,r2,2
  80df1c:	00c02074 	movhi	r3,129
  80df20:	18c56804 	addi	r3,r3,5536
  80df24:	10c5883a 	add	r2,r2,r3
  80df28:	00000106 	br	80df30 <isatty+0x44>
  80df2c:	0005883a 	mov	r2,zero
  80df30:	e0bfff15 	stw	r2,-4(fp)
  80df34:	e0bfff17 	ldw	r2,-4(fp)
  80df38:	10000e26 	beq	r2,zero,80df74 <isatty+0x88>
  80df3c:	e0bfff17 	ldw	r2,-4(fp)
  80df40:	10800017 	ldw	r2,0(r2)
  80df44:	10800817 	ldw	r2,32(r2)
  80df48:	1000021e 	bne	r2,zero,80df54 <isatty+0x68>
  80df4c:	00800044 	movi	r2,1
  80df50:	00000d06 	br	80df88 <isatty+0x9c>
  80df54:	e0bfed04 	addi	r2,fp,-76
  80df58:	100b883a 	mov	r5,r2
  80df5c:	e13fec17 	ldw	r4,-80(fp)
  80df60:	080ddd40 	call	80ddd4 <fstat>
  80df64:	e0bfee17 	ldw	r2,-72(fp)
  80df68:	10880020 	cmpeqi	r2,r2,8192
  80df6c:	10803fcc 	andi	r2,r2,255
  80df70:	00000506 	br	80df88 <isatty+0x9c>
  80df74:	080deb00 	call	80deb0 <alt_get_errno>
  80df78:	1007883a 	mov	r3,r2
  80df7c:	00801444 	movi	r2,81
  80df80:	18800015 	stw	r2,0(r3)
  80df84:	0005883a 	mov	r2,zero
  80df88:	e037883a 	mov	sp,fp
  80df8c:	dfc00117 	ldw	ra,4(sp)
  80df90:	df000017 	ldw	fp,0(sp)
  80df94:	dec00204 	addi	sp,sp,8
  80df98:	f800283a 	ret

0080df9c <alt_get_errno>:
  80df9c:	defffe04 	addi	sp,sp,-8
  80dfa0:	dfc00115 	stw	ra,4(sp)
  80dfa4:	df000015 	stw	fp,0(sp)
  80dfa8:	d839883a 	mov	fp,sp
  80dfac:	d0a00917 	ldw	r2,-32732(gp)
  80dfb0:	10000326 	beq	r2,zero,80dfc0 <alt_get_errno+0x24>
  80dfb4:	d0a00917 	ldw	r2,-32732(gp)
  80dfb8:	103ee83a 	callr	r2
  80dfbc:	00000106 	br	80dfc4 <alt_get_errno+0x28>
  80dfc0:	d0a70704 	addi	r2,gp,-25572
  80dfc4:	e037883a 	mov	sp,fp
  80dfc8:	dfc00117 	ldw	ra,4(sp)
  80dfcc:	df000017 	ldw	fp,0(sp)
  80dfd0:	dec00204 	addi	sp,sp,8
  80dfd4:	f800283a 	ret

0080dfd8 <kill>:
  80dfd8:	defffb04 	addi	sp,sp,-20
  80dfdc:	dfc00415 	stw	ra,16(sp)
  80dfe0:	df000315 	stw	fp,12(sp)
  80dfe4:	df000304 	addi	fp,sp,12
  80dfe8:	e13ffe15 	stw	r4,-8(fp)
  80dfec:	e17ffd15 	stw	r5,-12(fp)
  80dff0:	e03fff15 	stw	zero,-4(fp)
  80dff4:	e0bffe17 	ldw	r2,-8(fp)
  80dff8:	00802e16 	blt	zero,r2,80e0b4 <kill+0xdc>
  80dffc:	e0bffd17 	ldw	r2,-12(fp)
  80e000:	10800828 	cmpgeui	r2,r2,32
  80e004:	1000281e 	bne	r2,zero,80e0a8 <kill+0xd0>
  80e008:	e0bffd17 	ldw	r2,-12(fp)
  80e00c:	100690ba 	slli	r3,r2,2
  80e010:	00802074 	movhi	r2,129
  80e014:	1885883a 	add	r2,r3,r2
  80e018:	10b80817 	ldw	r2,-8160(r2)
  80e01c:	1000683a 	jmp	r2
  80e020:	0080e0c8 	cmpgei	r2,zero,899
  80e024:	0080e0a8 	cmpgeui	r2,zero,898
  80e028:	0080e0a8 	cmpgeui	r2,zero,898
  80e02c:	0080e0a0 	cmpeqi	r2,zero,898
  80e030:	0080e0a0 	cmpeqi	r2,zero,898
  80e034:	0080e0a0 	cmpeqi	r2,zero,898
  80e038:	0080e0a0 	cmpeqi	r2,zero,898
  80e03c:	0080e0a8 	cmpgeui	r2,zero,898
  80e040:	0080e0a0 	cmpeqi	r2,zero,898
  80e044:	0080e0a0 	cmpeqi	r2,zero,898
  80e048:	0080e0a0 	cmpeqi	r2,zero,898
  80e04c:	0080e0a0 	cmpeqi	r2,zero,898
  80e050:	0080e0a0 	cmpeqi	r2,zero,898
  80e054:	0080e0a0 	cmpeqi	r2,zero,898
  80e058:	0080e0a0 	cmpeqi	r2,zero,898
  80e05c:	0080e0a0 	cmpeqi	r2,zero,898
  80e060:	0080e0c8 	cmpgei	r2,zero,899
  80e064:	0080e0a8 	cmpgeui	r2,zero,898
  80e068:	0080e0a8 	cmpgeui	r2,zero,898
  80e06c:	0080e0a8 	cmpgeui	r2,zero,898
  80e070:	0080e0c8 	cmpgei	r2,zero,899
  80e074:	0080e0a8 	cmpgeui	r2,zero,898
  80e078:	0080e0a8 	cmpgeui	r2,zero,898
  80e07c:	0080e0a0 	cmpeqi	r2,zero,898
  80e080:	0080e0a0 	cmpeqi	r2,zero,898
  80e084:	0080e0a0 	cmpeqi	r2,zero,898
  80e088:	0080e0a0 	cmpeqi	r2,zero,898
  80e08c:	0080e0a0 	cmpeqi	r2,zero,898
  80e090:	0080e0a8 	cmpgeui	r2,zero,898
  80e094:	0080e0a8 	cmpgeui	r2,zero,898
  80e098:	0080e0a0 	cmpeqi	r2,zero,898
  80e09c:	0080e0a0 	cmpeqi	r2,zero,898
  80e0a0:	0009883a 	mov	r4,zero
  80e0a4:	080dd600 	call	80dd60 <_exit>
  80e0a8:	00800584 	movi	r2,22
  80e0ac:	e0bfff15 	stw	r2,-4(fp)
  80e0b0:	00000606 	br	80e0cc <kill+0xf4>
  80e0b4:	e0bffe17 	ldw	r2,-8(fp)
  80e0b8:	0080040e 	bge	zero,r2,80e0cc <kill+0xf4>
  80e0bc:	008000c4 	movi	r2,3
  80e0c0:	e0bfff15 	stw	r2,-4(fp)
  80e0c4:	00000106 	br	80e0cc <kill+0xf4>
  80e0c8:	0001883a 	nop
  80e0cc:	e0bfff17 	ldw	r2,-4(fp)
  80e0d0:	10000626 	beq	r2,zero,80e0ec <kill+0x114>
  80e0d4:	080df9c0 	call	80df9c <alt_get_errno>
  80e0d8:	1007883a 	mov	r3,r2
  80e0dc:	e0bfff17 	ldw	r2,-4(fp)
  80e0e0:	18800015 	stw	r2,0(r3)
  80e0e4:	00bfffc4 	movi	r2,-1
  80e0e8:	00000106 	br	80e0f0 <kill+0x118>
  80e0ec:	0005883a 	mov	r2,zero
  80e0f0:	e037883a 	mov	sp,fp
  80e0f4:	dfc00117 	ldw	ra,4(sp)
  80e0f8:	df000017 	ldw	fp,0(sp)
  80e0fc:	dec00204 	addi	sp,sp,8
  80e100:	f800283a 	ret

0080e104 <alt_load_section>:
  80e104:	defffc04 	addi	sp,sp,-16
  80e108:	df000315 	stw	fp,12(sp)
  80e10c:	df000304 	addi	fp,sp,12
  80e110:	e13fff15 	stw	r4,-4(fp)
  80e114:	e17ffe15 	stw	r5,-8(fp)
  80e118:	e1bffd15 	stw	r6,-12(fp)
  80e11c:	e0fffe17 	ldw	r3,-8(fp)
  80e120:	e0bfff17 	ldw	r2,-4(fp)
  80e124:	18800c26 	beq	r3,r2,80e158 <alt_load_section+0x54>
  80e128:	00000806 	br	80e14c <alt_load_section+0x48>
  80e12c:	e0ffff17 	ldw	r3,-4(fp)
  80e130:	18800104 	addi	r2,r3,4
  80e134:	e0bfff15 	stw	r2,-4(fp)
  80e138:	e0bffe17 	ldw	r2,-8(fp)
  80e13c:	11000104 	addi	r4,r2,4
  80e140:	e13ffe15 	stw	r4,-8(fp)
  80e144:	18c00017 	ldw	r3,0(r3)
  80e148:	10c00015 	stw	r3,0(r2)
  80e14c:	e0fffe17 	ldw	r3,-8(fp)
  80e150:	e0bffd17 	ldw	r2,-12(fp)
  80e154:	18bff51e 	bne	r3,r2,80e12c <alt_load_section+0x28>
  80e158:	0001883a 	nop
  80e15c:	e037883a 	mov	sp,fp
  80e160:	df000017 	ldw	fp,0(sp)
  80e164:	dec00104 	addi	sp,sp,4
  80e168:	f800283a 	ret

0080e16c <alt_load>:
  80e16c:	defffe04 	addi	sp,sp,-8
  80e170:	dfc00115 	stw	ra,4(sp)
  80e174:	df000015 	stw	fp,0(sp)
  80e178:	d839883a 	mov	fp,sp
  80e17c:	01802074 	movhi	r6,129
  80e180:	3189ee04 	addi	r6,r6,10168
  80e184:	01402074 	movhi	r5,129
  80e188:	2942f804 	addi	r5,r5,3040
  80e18c:	01002074 	movhi	r4,129
  80e190:	2109ee04 	addi	r4,r4,10168
  80e194:	080e1040 	call	80e104 <alt_load_section>
  80e198:	01802034 	movhi	r6,128
  80e19c:	31808e04 	addi	r6,r6,568
  80e1a0:	01402034 	movhi	r5,128
  80e1a4:	29400804 	addi	r5,r5,32
  80e1a8:	01002034 	movhi	r4,128
  80e1ac:	21000804 	addi	r4,r4,32
  80e1b0:	080e1040 	call	80e104 <alt_load_section>
  80e1b4:	01802074 	movhi	r6,129
  80e1b8:	3182f804 	addi	r6,r6,3040
  80e1bc:	01402074 	movhi	r5,129
  80e1c0:	29414f04 	addi	r5,r5,1340
  80e1c4:	01002074 	movhi	r4,129
  80e1c8:	21014f04 	addi	r4,r4,1340
  80e1cc:	080e1040 	call	80e104 <alt_load_section>
  80e1d0:	080f6a40 	call	80f6a4 <alt_dcache_flush_all>
  80e1d4:	080f89c0 	call	80f89c <alt_icache_flush_all>
  80e1d8:	0001883a 	nop
  80e1dc:	e037883a 	mov	sp,fp
  80e1e0:	dfc00117 	ldw	ra,4(sp)
  80e1e4:	df000017 	ldw	fp,0(sp)
  80e1e8:	dec00204 	addi	sp,sp,8
  80e1ec:	f800283a 	ret

0080e1f0 <alt_get_errno>:
  80e1f0:	defffe04 	addi	sp,sp,-8
  80e1f4:	dfc00115 	stw	ra,4(sp)
  80e1f8:	df000015 	stw	fp,0(sp)
  80e1fc:	d839883a 	mov	fp,sp
  80e200:	d0a00917 	ldw	r2,-32732(gp)
  80e204:	10000326 	beq	r2,zero,80e214 <alt_get_errno+0x24>
  80e208:	d0a00917 	ldw	r2,-32732(gp)
  80e20c:	103ee83a 	callr	r2
  80e210:	00000106 	br	80e218 <alt_get_errno+0x28>
  80e214:	d0a70704 	addi	r2,gp,-25572
  80e218:	e037883a 	mov	sp,fp
  80e21c:	dfc00117 	ldw	ra,4(sp)
  80e220:	df000017 	ldw	fp,0(sp)
  80e224:	dec00204 	addi	sp,sp,8
  80e228:	f800283a 	ret

0080e22c <lseek>:
  80e22c:	defff904 	addi	sp,sp,-28
  80e230:	dfc00615 	stw	ra,24(sp)
  80e234:	df000515 	stw	fp,20(sp)
  80e238:	df000504 	addi	fp,sp,20
  80e23c:	e13ffd15 	stw	r4,-12(fp)
  80e240:	e17ffc15 	stw	r5,-16(fp)
  80e244:	e1bffb15 	stw	r6,-20(fp)
  80e248:	e03fff15 	stw	zero,-4(fp)
  80e24c:	e0bffd17 	ldw	r2,-12(fp)
  80e250:	10000916 	blt	r2,zero,80e278 <lseek+0x4c>
  80e254:	e0fffd17 	ldw	r3,-12(fp)
  80e258:	1805883a 	mov	r2,r3
  80e25c:	1085883a 	add	r2,r2,r2
  80e260:	10c5883a 	add	r2,r2,r3
  80e264:	100490ba 	slli	r2,r2,2
  80e268:	00c02074 	movhi	r3,129
  80e26c:	18c56804 	addi	r3,r3,5536
  80e270:	10c5883a 	add	r2,r2,r3
  80e274:	00000106 	br	80e27c <lseek+0x50>
  80e278:	0005883a 	mov	r2,zero
  80e27c:	e0bffe15 	stw	r2,-8(fp)
  80e280:	e0bffe17 	ldw	r2,-8(fp)
  80e284:	10001026 	beq	r2,zero,80e2c8 <lseek+0x9c>
  80e288:	e0bffe17 	ldw	r2,-8(fp)
  80e28c:	10800017 	ldw	r2,0(r2)
  80e290:	10800717 	ldw	r2,28(r2)
  80e294:	10000926 	beq	r2,zero,80e2bc <lseek+0x90>
  80e298:	e0bffe17 	ldw	r2,-8(fp)
  80e29c:	10800017 	ldw	r2,0(r2)
  80e2a0:	10800717 	ldw	r2,28(r2)
  80e2a4:	e1bffb17 	ldw	r6,-20(fp)
  80e2a8:	e17ffc17 	ldw	r5,-16(fp)
  80e2ac:	e13ffe17 	ldw	r4,-8(fp)
  80e2b0:	103ee83a 	callr	r2
  80e2b4:	e0bfff15 	stw	r2,-4(fp)
  80e2b8:	00000506 	br	80e2d0 <lseek+0xa4>
  80e2bc:	00bfde84 	movi	r2,-134
  80e2c0:	e0bfff15 	stw	r2,-4(fp)
  80e2c4:	00000206 	br	80e2d0 <lseek+0xa4>
  80e2c8:	00bfebc4 	movi	r2,-81
  80e2cc:	e0bfff15 	stw	r2,-4(fp)
  80e2d0:	e0bfff17 	ldw	r2,-4(fp)
  80e2d4:	1000070e 	bge	r2,zero,80e2f4 <lseek+0xc8>
  80e2d8:	080e1f00 	call	80e1f0 <alt_get_errno>
  80e2dc:	1007883a 	mov	r3,r2
  80e2e0:	e0bfff17 	ldw	r2,-4(fp)
  80e2e4:	0085c83a 	sub	r2,zero,r2
  80e2e8:	18800015 	stw	r2,0(r3)
  80e2ec:	00bfffc4 	movi	r2,-1
  80e2f0:	e0bfff15 	stw	r2,-4(fp)
  80e2f4:	e0bfff17 	ldw	r2,-4(fp)
  80e2f8:	e037883a 	mov	sp,fp
  80e2fc:	dfc00117 	ldw	ra,4(sp)
  80e300:	df000017 	ldw	fp,0(sp)
  80e304:	dec00204 	addi	sp,sp,8
  80e308:	f800283a 	ret

0080e30c <alt_main>:
  80e30c:	defffd04 	addi	sp,sp,-12
  80e310:	dfc00215 	stw	ra,8(sp)
  80e314:	df000115 	stw	fp,4(sp)
  80e318:	df000104 	addi	fp,sp,4
  80e31c:	0009883a 	mov	r4,zero
  80e320:	080e95c0 	call	80e95c <alt_irq_init>
  80e324:	0001883a 	nop
  80e328:	080e9980 	call	80e998 <alt_sys_init>
  80e32c:	01802074 	movhi	r6,129
  80e330:	3182f004 	addi	r6,r6,3008
  80e334:	01402074 	movhi	r5,129
  80e338:	2942f004 	addi	r5,r5,3008
  80e33c:	01002074 	movhi	r4,129
  80e340:	2102f004 	addi	r4,r4,3008
  80e344:	080fc3c0 	call	80fc3c <alt_io_redirect>
  80e348:	080f7d40 	call	80f7d4 <_do_ctors>
  80e34c:	01002074 	movhi	r4,129
  80e350:	213e0e04 	addi	r4,r4,-1992
  80e354:	08102cc0 	call	8102cc <atexit>
  80e358:	d0a70917 	ldw	r2,-25564(gp)
  80e35c:	d0e70a17 	ldw	r3,-25560(gp)
  80e360:	d1270b17 	ldw	r4,-25556(gp)
  80e364:	200d883a 	mov	r6,r4
  80e368:	180b883a 	mov	r5,r3
  80e36c:	1009883a 	mov	r4,r2
  80e370:	08003640 	call	800364 <main>
  80e374:	e0bfff15 	stw	r2,-4(fp)
  80e378:	01000044 	movi	r4,1
  80e37c:	080dc580 	call	80dc58 <close>
  80e380:	e13fff17 	ldw	r4,-4(fp)
  80e384:	08102e00 	call	8102e0 <exit>

0080e388 <__malloc_lock>:
  80e388:	defffe04 	addi	sp,sp,-8
  80e38c:	df000115 	stw	fp,4(sp)
  80e390:	df000104 	addi	fp,sp,4
  80e394:	e13fff15 	stw	r4,-4(fp)
  80e398:	0001883a 	nop
  80e39c:	e037883a 	mov	sp,fp
  80e3a0:	df000017 	ldw	fp,0(sp)
  80e3a4:	dec00104 	addi	sp,sp,4
  80e3a8:	f800283a 	ret

0080e3ac <__malloc_unlock>:
  80e3ac:	defffe04 	addi	sp,sp,-8
  80e3b0:	df000115 	stw	fp,4(sp)
  80e3b4:	df000104 	addi	fp,sp,4
  80e3b8:	e13fff15 	stw	r4,-4(fp)
  80e3bc:	0001883a 	nop
  80e3c0:	e037883a 	mov	sp,fp
  80e3c4:	df000017 	ldw	fp,0(sp)
  80e3c8:	dec00104 	addi	sp,sp,4
  80e3cc:	f800283a 	ret

0080e3d0 <alt_get_errno>:
  80e3d0:	defffe04 	addi	sp,sp,-8
  80e3d4:	dfc00115 	stw	ra,4(sp)
  80e3d8:	df000015 	stw	fp,0(sp)
  80e3dc:	d839883a 	mov	fp,sp
  80e3e0:	d0a00917 	ldw	r2,-32732(gp)
  80e3e4:	10000326 	beq	r2,zero,80e3f4 <alt_get_errno+0x24>
  80e3e8:	d0a00917 	ldw	r2,-32732(gp)
  80e3ec:	103ee83a 	callr	r2
  80e3f0:	00000106 	br	80e3f8 <alt_get_errno+0x28>
  80e3f4:	d0a70704 	addi	r2,gp,-25572
  80e3f8:	e037883a 	mov	sp,fp
  80e3fc:	dfc00117 	ldw	ra,4(sp)
  80e400:	df000017 	ldw	fp,0(sp)
  80e404:	dec00204 	addi	sp,sp,8
  80e408:	f800283a 	ret

0080e40c <read>:
  80e40c:	defff904 	addi	sp,sp,-28
  80e410:	dfc00615 	stw	ra,24(sp)
  80e414:	df000515 	stw	fp,20(sp)
  80e418:	df000504 	addi	fp,sp,20
  80e41c:	e13ffd15 	stw	r4,-12(fp)
  80e420:	e17ffc15 	stw	r5,-16(fp)
  80e424:	e1bffb15 	stw	r6,-20(fp)
  80e428:	e0bffd17 	ldw	r2,-12(fp)
  80e42c:	10000916 	blt	r2,zero,80e454 <read+0x48>
  80e430:	e0fffd17 	ldw	r3,-12(fp)
  80e434:	1805883a 	mov	r2,r3
  80e438:	1085883a 	add	r2,r2,r2
  80e43c:	10c5883a 	add	r2,r2,r3
  80e440:	100490ba 	slli	r2,r2,2
  80e444:	00c02074 	movhi	r3,129
  80e448:	18c56804 	addi	r3,r3,5536
  80e44c:	10c5883a 	add	r2,r2,r3
  80e450:	00000106 	br	80e458 <read+0x4c>
  80e454:	0005883a 	mov	r2,zero
  80e458:	e0bfff15 	stw	r2,-4(fp)
  80e45c:	e0bfff17 	ldw	r2,-4(fp)
  80e460:	10002226 	beq	r2,zero,80e4ec <read+0xe0>
  80e464:	e0bfff17 	ldw	r2,-4(fp)
  80e468:	10800217 	ldw	r2,8(r2)
  80e46c:	108000cc 	andi	r2,r2,3
  80e470:	10800060 	cmpeqi	r2,r2,1
  80e474:	1000181e 	bne	r2,zero,80e4d8 <read+0xcc>
  80e478:	e0bfff17 	ldw	r2,-4(fp)
  80e47c:	10800017 	ldw	r2,0(r2)
  80e480:	10800517 	ldw	r2,20(r2)
  80e484:	10001426 	beq	r2,zero,80e4d8 <read+0xcc>
  80e488:	e0bfff17 	ldw	r2,-4(fp)
  80e48c:	10800017 	ldw	r2,0(r2)
  80e490:	10800517 	ldw	r2,20(r2)
  80e494:	e0fffb17 	ldw	r3,-20(fp)
  80e498:	180d883a 	mov	r6,r3
  80e49c:	e17ffc17 	ldw	r5,-16(fp)
  80e4a0:	e13fff17 	ldw	r4,-4(fp)
  80e4a4:	103ee83a 	callr	r2
  80e4a8:	e0bffe15 	stw	r2,-8(fp)
  80e4ac:	e0bffe17 	ldw	r2,-8(fp)
  80e4b0:	1000070e 	bge	r2,zero,80e4d0 <read+0xc4>
  80e4b4:	080e3d00 	call	80e3d0 <alt_get_errno>
  80e4b8:	1007883a 	mov	r3,r2
  80e4bc:	e0bffe17 	ldw	r2,-8(fp)
  80e4c0:	0085c83a 	sub	r2,zero,r2
  80e4c4:	18800015 	stw	r2,0(r3)
  80e4c8:	00bfffc4 	movi	r2,-1
  80e4cc:	00000c06 	br	80e500 <read+0xf4>
  80e4d0:	e0bffe17 	ldw	r2,-8(fp)
  80e4d4:	00000a06 	br	80e500 <read+0xf4>
  80e4d8:	080e3d00 	call	80e3d0 <alt_get_errno>
  80e4dc:	1007883a 	mov	r3,r2
  80e4e0:	00800344 	movi	r2,13
  80e4e4:	18800015 	stw	r2,0(r3)
  80e4e8:	00000406 	br	80e4fc <read+0xf0>
  80e4ec:	080e3d00 	call	80e3d0 <alt_get_errno>
  80e4f0:	1007883a 	mov	r3,r2
  80e4f4:	00801444 	movi	r2,81
  80e4f8:	18800015 	stw	r2,0(r3)
  80e4fc:	00bfffc4 	movi	r2,-1
  80e500:	e037883a 	mov	sp,fp
  80e504:	dfc00117 	ldw	ra,4(sp)
  80e508:	df000017 	ldw	fp,0(sp)
  80e50c:	dec00204 	addi	sp,sp,8
  80e510:	f800283a 	ret

0080e514 <alt_release_fd>:
  80e514:	defffe04 	addi	sp,sp,-8
  80e518:	df000115 	stw	fp,4(sp)
  80e51c:	df000104 	addi	fp,sp,4
  80e520:	e13fff15 	stw	r4,-4(fp)
  80e524:	e0bfff17 	ldw	r2,-4(fp)
  80e528:	108000d0 	cmplti	r2,r2,3
  80e52c:	1000101e 	bne	r2,zero,80e570 <alt_release_fd+0x5c>
  80e530:	e0ffff17 	ldw	r3,-4(fp)
  80e534:	1805883a 	mov	r2,r3
  80e538:	1085883a 	add	r2,r2,r2
  80e53c:	10c5883a 	add	r2,r2,r3
  80e540:	100490ba 	slli	r2,r2,2
  80e544:	00c02074 	movhi	r3,129
  80e548:	10c7883a 	add	r3,r2,r3
  80e54c:	18056a15 	stw	zero,5544(r3)
  80e550:	e0ffff17 	ldw	r3,-4(fp)
  80e554:	1805883a 	mov	r2,r3
  80e558:	1085883a 	add	r2,r2,r2
  80e55c:	10c5883a 	add	r2,r2,r3
  80e560:	100490ba 	slli	r2,r2,2
  80e564:	00c02074 	movhi	r3,129
  80e568:	10c7883a 	add	r3,r2,r3
  80e56c:	18056815 	stw	zero,5536(r3)
  80e570:	0001883a 	nop
  80e574:	e037883a 	mov	sp,fp
  80e578:	df000017 	ldw	fp,0(sp)
  80e57c:	dec00104 	addi	sp,sp,4
  80e580:	f800283a 	ret

0080e584 <sbrk>:
  80e584:	defff904 	addi	sp,sp,-28
  80e588:	df000615 	stw	fp,24(sp)
  80e58c:	df000604 	addi	fp,sp,24
  80e590:	e13ffa15 	stw	r4,-24(fp)
  80e594:	0005303a 	rdctl	r2,status
  80e598:	e0bffd15 	stw	r2,-12(fp)
  80e59c:	e0fffd17 	ldw	r3,-12(fp)
  80e5a0:	00bfff84 	movi	r2,-2
  80e5a4:	1884703a 	and	r2,r3,r2
  80e5a8:	1001703a 	wrctl	status,r2
  80e5ac:	e0bffd17 	ldw	r2,-12(fp)
  80e5b0:	e0bfff15 	stw	r2,-4(fp)
  80e5b4:	d0a00a17 	ldw	r2,-32728(gp)
  80e5b8:	10c000c4 	addi	r3,r2,3
  80e5bc:	00bfff04 	movi	r2,-4
  80e5c0:	1884703a 	and	r2,r3,r2
  80e5c4:	d0a00a15 	stw	r2,-32728(gp)
  80e5c8:	d0e00a17 	ldw	r3,-32728(gp)
  80e5cc:	e0bffa17 	ldw	r2,-24(fp)
  80e5d0:	1887883a 	add	r3,r3,r2
  80e5d4:	00804034 	movhi	r2,256
  80e5d8:	10800004 	addi	r2,r2,0
  80e5dc:	10c0072e 	bgeu	r2,r3,80e5fc <sbrk+0x78>
  80e5e0:	e0bfff17 	ldw	r2,-4(fp)
  80e5e4:	e0bffc15 	stw	r2,-16(fp)
  80e5e8:	e0bffc17 	ldw	r2,-16(fp)
  80e5ec:	1001703a 	wrctl	status,r2
  80e5f0:	0001883a 	nop
  80e5f4:	00bfffc4 	movi	r2,-1
  80e5f8:	00000c06 	br	80e62c <sbrk+0xa8>
  80e5fc:	d0a00a17 	ldw	r2,-32728(gp)
  80e600:	e0bffe15 	stw	r2,-8(fp)
  80e604:	d0e00a17 	ldw	r3,-32728(gp)
  80e608:	e0bffa17 	ldw	r2,-24(fp)
  80e60c:	1885883a 	add	r2,r3,r2
  80e610:	d0a00a15 	stw	r2,-32728(gp)
  80e614:	e0bfff17 	ldw	r2,-4(fp)
  80e618:	e0bffb15 	stw	r2,-20(fp)
  80e61c:	e0bffb17 	ldw	r2,-20(fp)
  80e620:	1001703a 	wrctl	status,r2
  80e624:	0001883a 	nop
  80e628:	e0bffe17 	ldw	r2,-8(fp)
  80e62c:	e037883a 	mov	sp,fp
  80e630:	df000017 	ldw	fp,0(sp)
  80e634:	dec00104 	addi	sp,sp,4
  80e638:	f800283a 	ret

0080e63c <alt_alarm_stop>:
  80e63c:	defffa04 	addi	sp,sp,-24
  80e640:	df000515 	stw	fp,20(sp)
  80e644:	df000504 	addi	fp,sp,20
  80e648:	e13ffb15 	stw	r4,-20(fp)
  80e64c:	0005303a 	rdctl	r2,status
  80e650:	e0bffc15 	stw	r2,-16(fp)
  80e654:	e0fffc17 	ldw	r3,-16(fp)
  80e658:	00bfff84 	movi	r2,-2
  80e65c:	1884703a 	and	r2,r3,r2
  80e660:	1001703a 	wrctl	status,r2
  80e664:	e0bffc17 	ldw	r2,-16(fp)
  80e668:	e0bfff15 	stw	r2,-4(fp)
  80e66c:	e0bffb17 	ldw	r2,-20(fp)
  80e670:	e0bffd15 	stw	r2,-12(fp)
  80e674:	e0bffd17 	ldw	r2,-12(fp)
  80e678:	10800017 	ldw	r2,0(r2)
  80e67c:	e0fffd17 	ldw	r3,-12(fp)
  80e680:	18c00117 	ldw	r3,4(r3)
  80e684:	10c00115 	stw	r3,4(r2)
  80e688:	e0bffd17 	ldw	r2,-12(fp)
  80e68c:	10800117 	ldw	r2,4(r2)
  80e690:	e0fffd17 	ldw	r3,-12(fp)
  80e694:	18c00017 	ldw	r3,0(r3)
  80e698:	10c00015 	stw	r3,0(r2)
  80e69c:	e0bffd17 	ldw	r2,-12(fp)
  80e6a0:	e0fffd17 	ldw	r3,-12(fp)
  80e6a4:	10c00115 	stw	r3,4(r2)
  80e6a8:	e0bffd17 	ldw	r2,-12(fp)
  80e6ac:	e0fffd17 	ldw	r3,-12(fp)
  80e6b0:	10c00015 	stw	r3,0(r2)
  80e6b4:	0001883a 	nop
  80e6b8:	e0bfff17 	ldw	r2,-4(fp)
  80e6bc:	e0bffe15 	stw	r2,-8(fp)
  80e6c0:	e0bffe17 	ldw	r2,-8(fp)
  80e6c4:	1001703a 	wrctl	status,r2
  80e6c8:	0001883a 	nop
  80e6cc:	0001883a 	nop
  80e6d0:	e037883a 	mov	sp,fp
  80e6d4:	df000017 	ldw	fp,0(sp)
  80e6d8:	dec00104 	addi	sp,sp,4
  80e6dc:	f800283a 	ret

0080e6e0 <alt_tick>:
  80e6e0:	defffb04 	addi	sp,sp,-20
  80e6e4:	dfc00415 	stw	ra,16(sp)
  80e6e8:	df000315 	stw	fp,12(sp)
  80e6ec:	df000304 	addi	fp,sp,12
  80e6f0:	d0a00b17 	ldw	r2,-32724(gp)
  80e6f4:	e0bfff15 	stw	r2,-4(fp)
  80e6f8:	d0a70d17 	ldw	r2,-25548(gp)
  80e6fc:	10800044 	addi	r2,r2,1
  80e700:	d0a70d15 	stw	r2,-25548(gp)
  80e704:	00002e06 	br	80e7c0 <alt_tick+0xe0>
  80e708:	e0bfff17 	ldw	r2,-4(fp)
  80e70c:	10800017 	ldw	r2,0(r2)
  80e710:	e0bffe15 	stw	r2,-8(fp)
  80e714:	e0bfff17 	ldw	r2,-4(fp)
  80e718:	10800403 	ldbu	r2,16(r2)
  80e71c:	10803fcc 	andi	r2,r2,255
  80e720:	10000426 	beq	r2,zero,80e734 <alt_tick+0x54>
  80e724:	d0a70d17 	ldw	r2,-25548(gp)
  80e728:	1000021e 	bne	r2,zero,80e734 <alt_tick+0x54>
  80e72c:	e0bfff17 	ldw	r2,-4(fp)
  80e730:	10000405 	stb	zero,16(r2)
  80e734:	e0bfff17 	ldw	r2,-4(fp)
  80e738:	10800217 	ldw	r2,8(r2)
  80e73c:	d0e70d17 	ldw	r3,-25548(gp)
  80e740:	18801d36 	bltu	r3,r2,80e7b8 <alt_tick+0xd8>
  80e744:	e0bfff17 	ldw	r2,-4(fp)
  80e748:	10800403 	ldbu	r2,16(r2)
  80e74c:	10803fcc 	andi	r2,r2,255
  80e750:	1000191e 	bne	r2,zero,80e7b8 <alt_tick+0xd8>
  80e754:	e0bfff17 	ldw	r2,-4(fp)
  80e758:	10800317 	ldw	r2,12(r2)
  80e75c:	e0ffff17 	ldw	r3,-4(fp)
  80e760:	18c00517 	ldw	r3,20(r3)
  80e764:	1809883a 	mov	r4,r3
  80e768:	103ee83a 	callr	r2
  80e76c:	e0bffd15 	stw	r2,-12(fp)
  80e770:	e0bffd17 	ldw	r2,-12(fp)
  80e774:	1000031e 	bne	r2,zero,80e784 <alt_tick+0xa4>
  80e778:	e13fff17 	ldw	r4,-4(fp)
  80e77c:	080e63c0 	call	80e63c <alt_alarm_stop>
  80e780:	00000d06 	br	80e7b8 <alt_tick+0xd8>
  80e784:	e0bfff17 	ldw	r2,-4(fp)
  80e788:	10c00217 	ldw	r3,8(r2)
  80e78c:	e0bffd17 	ldw	r2,-12(fp)
  80e790:	1887883a 	add	r3,r3,r2
  80e794:	e0bfff17 	ldw	r2,-4(fp)
  80e798:	10c00215 	stw	r3,8(r2)
  80e79c:	e0bfff17 	ldw	r2,-4(fp)
  80e7a0:	10c00217 	ldw	r3,8(r2)
  80e7a4:	d0a70d17 	ldw	r2,-25548(gp)
  80e7a8:	1880032e 	bgeu	r3,r2,80e7b8 <alt_tick+0xd8>
  80e7ac:	e0bfff17 	ldw	r2,-4(fp)
  80e7b0:	00c00044 	movi	r3,1
  80e7b4:	10c00405 	stb	r3,16(r2)
  80e7b8:	e0bffe17 	ldw	r2,-8(fp)
  80e7bc:	e0bfff15 	stw	r2,-4(fp)
  80e7c0:	e0ffff17 	ldw	r3,-4(fp)
  80e7c4:	d0a00b04 	addi	r2,gp,-32724
  80e7c8:	18bfcf1e 	bne	r3,r2,80e708 <alt_tick+0x28>
  80e7cc:	0001883a 	nop
  80e7d0:	0001883a 	nop
  80e7d4:	e037883a 	mov	sp,fp
  80e7d8:	dfc00117 	ldw	ra,4(sp)
  80e7dc:	df000017 	ldw	fp,0(sp)
  80e7e0:	dec00204 	addi	sp,sp,8
  80e7e4:	f800283a 	ret

0080e7e8 <alt_get_errno>:
  80e7e8:	defffe04 	addi	sp,sp,-8
  80e7ec:	dfc00115 	stw	ra,4(sp)
  80e7f0:	df000015 	stw	fp,0(sp)
  80e7f4:	d839883a 	mov	fp,sp
  80e7f8:	d0a00917 	ldw	r2,-32732(gp)
  80e7fc:	10000326 	beq	r2,zero,80e80c <alt_get_errno+0x24>
  80e800:	d0a00917 	ldw	r2,-32732(gp)
  80e804:	103ee83a 	callr	r2
  80e808:	00000106 	br	80e810 <alt_get_errno+0x28>
  80e80c:	d0a70704 	addi	r2,gp,-25572
  80e810:	e037883a 	mov	sp,fp
  80e814:	dfc00117 	ldw	ra,4(sp)
  80e818:	df000017 	ldw	fp,0(sp)
  80e81c:	dec00204 	addi	sp,sp,8
  80e820:	f800283a 	ret

0080e824 <write>:
  80e824:	defff904 	addi	sp,sp,-28
  80e828:	dfc00615 	stw	ra,24(sp)
  80e82c:	df000515 	stw	fp,20(sp)
  80e830:	df000504 	addi	fp,sp,20
  80e834:	e13ffd15 	stw	r4,-12(fp)
  80e838:	e17ffc15 	stw	r5,-16(fp)
  80e83c:	e1bffb15 	stw	r6,-20(fp)
  80e840:	e0bffd17 	ldw	r2,-12(fp)
  80e844:	10000916 	blt	r2,zero,80e86c <write+0x48>
  80e848:	e0fffd17 	ldw	r3,-12(fp)
  80e84c:	1805883a 	mov	r2,r3
  80e850:	1085883a 	add	r2,r2,r2
  80e854:	10c5883a 	add	r2,r2,r3
  80e858:	100490ba 	slli	r2,r2,2
  80e85c:	00c02074 	movhi	r3,129
  80e860:	18c56804 	addi	r3,r3,5536
  80e864:	10c5883a 	add	r2,r2,r3
  80e868:	00000106 	br	80e870 <write+0x4c>
  80e86c:	0005883a 	mov	r2,zero
  80e870:	e0bfff15 	stw	r2,-4(fp)
  80e874:	e0bfff17 	ldw	r2,-4(fp)
  80e878:	10002126 	beq	r2,zero,80e900 <write+0xdc>
  80e87c:	e0bfff17 	ldw	r2,-4(fp)
  80e880:	10800217 	ldw	r2,8(r2)
  80e884:	108000cc 	andi	r2,r2,3
  80e888:	10001826 	beq	r2,zero,80e8ec <write+0xc8>
  80e88c:	e0bfff17 	ldw	r2,-4(fp)
  80e890:	10800017 	ldw	r2,0(r2)
  80e894:	10800617 	ldw	r2,24(r2)
  80e898:	10001426 	beq	r2,zero,80e8ec <write+0xc8>
  80e89c:	e0bfff17 	ldw	r2,-4(fp)
  80e8a0:	10800017 	ldw	r2,0(r2)
  80e8a4:	10800617 	ldw	r2,24(r2)
  80e8a8:	e0fffb17 	ldw	r3,-20(fp)
  80e8ac:	180d883a 	mov	r6,r3
  80e8b0:	e17ffc17 	ldw	r5,-16(fp)
  80e8b4:	e13fff17 	ldw	r4,-4(fp)
  80e8b8:	103ee83a 	callr	r2
  80e8bc:	e0bffe15 	stw	r2,-8(fp)
  80e8c0:	e0bffe17 	ldw	r2,-8(fp)
  80e8c4:	1000070e 	bge	r2,zero,80e8e4 <write+0xc0>
  80e8c8:	080e7e80 	call	80e7e8 <alt_get_errno>
  80e8cc:	1007883a 	mov	r3,r2
  80e8d0:	e0bffe17 	ldw	r2,-8(fp)
  80e8d4:	0085c83a 	sub	r2,zero,r2
  80e8d8:	18800015 	stw	r2,0(r3)
  80e8dc:	00bfffc4 	movi	r2,-1
  80e8e0:	00000c06 	br	80e914 <write+0xf0>
  80e8e4:	e0bffe17 	ldw	r2,-8(fp)
  80e8e8:	00000a06 	br	80e914 <write+0xf0>
  80e8ec:	080e7e80 	call	80e7e8 <alt_get_errno>
  80e8f0:	1007883a 	mov	r3,r2
  80e8f4:	00800344 	movi	r2,13
  80e8f8:	18800015 	stw	r2,0(r3)
  80e8fc:	00000406 	br	80e910 <write+0xec>
  80e900:	080e7e80 	call	80e7e8 <alt_get_errno>
  80e904:	1007883a 	mov	r3,r2
  80e908:	00801444 	movi	r2,81
  80e90c:	18800015 	stw	r2,0(r3)
  80e910:	00bfffc4 	movi	r2,-1
  80e914:	e037883a 	mov	sp,fp
  80e918:	dfc00117 	ldw	ra,4(sp)
  80e91c:	df000017 	ldw	fp,0(sp)
  80e920:	dec00204 	addi	sp,sp,8
  80e924:	f800283a 	ret

0080e928 <alt_dev_reg>:
  80e928:	defffd04 	addi	sp,sp,-12
  80e92c:	dfc00215 	stw	ra,8(sp)
  80e930:	df000115 	stw	fp,4(sp)
  80e934:	df000104 	addi	fp,sp,4
  80e938:	e13fff15 	stw	r4,-4(fp)
  80e93c:	d1600604 	addi	r5,gp,-32744
  80e940:	e13fff17 	ldw	r4,-4(fp)
  80e944:	080f72c0 	call	80f72c <alt_dev_llist_insert>
  80e948:	e037883a 	mov	sp,fp
  80e94c:	dfc00117 	ldw	ra,4(sp)
  80e950:	df000017 	ldw	fp,0(sp)
  80e954:	dec00204 	addi	sp,sp,8
  80e958:	f800283a 	ret

0080e95c <alt_irq_init>:
  80e95c:	defffd04 	addi	sp,sp,-12
  80e960:	dfc00215 	stw	ra,8(sp)
  80e964:	df000115 	stw	fp,4(sp)
  80e968:	df000104 	addi	fp,sp,4
  80e96c:	e13fff15 	stw	r4,-4(fp)
  80e970:	080ff300 	call	80ff30 <altera_nios2_gen2_irq_init>
  80e974:	00800044 	movi	r2,1
  80e978:	1001703a 	wrctl	status,r2
  80e97c:	0001883a 	nop
  80e980:	0001883a 	nop
  80e984:	e037883a 	mov	sp,fp
  80e988:	dfc00117 	ldw	ra,4(sp)
  80e98c:	df000017 	ldw	fp,0(sp)
  80e990:	dec00204 	addi	sp,sp,8
  80e994:	f800283a 	ret

0080e998 <alt_sys_init>:
  80e998:	defffe04 	addi	sp,sp,-8
  80e99c:	dfc00115 	stw	ra,4(sp)
  80e9a0:	df000015 	stw	fp,0(sp)
  80e9a4:	d839883a 	mov	fp,sp
  80e9a8:	01c0fa04 	movi	r7,1000
  80e9ac:	01800044 	movi	r6,1
  80e9b0:	000b883a 	mov	r5,zero
  80e9b4:	01004034 	movhi	r4,256
  80e9b8:	21040004 	addi	r4,r4,4096
  80e9bc:	080f4ec0 	call	80f4ec <alt_avalon_timer_sc_init>
  80e9c0:	01800404 	movi	r6,16
  80e9c4:	000b883a 	mov	r5,zero
  80e9c8:	01002074 	movhi	r4,129
  80e9cc:	2105d204 	addi	r4,r4,5960
  80e9d0:	080eb600 	call	80eb60 <altera_avalon_jtag_uart_init>
  80e9d4:	01002074 	movhi	r4,129
  80e9d8:	2105c804 	addi	r4,r4,5920
  80e9dc:	080e9280 	call	80e928 <alt_dev_reg>
  80e9e0:	0001883a 	nop
  80e9e4:	0001883a 	nop
  80e9e8:	e037883a 	mov	sp,fp
  80e9ec:	dfc00117 	ldw	ra,4(sp)
  80e9f0:	df000017 	ldw	fp,0(sp)
  80e9f4:	dec00204 	addi	sp,sp,8
  80e9f8:	f800283a 	ret

0080e9fc <altera_avalon_jtag_uart_read_fd>:
  80e9fc:	defffa04 	addi	sp,sp,-24
  80ea00:	dfc00515 	stw	ra,20(sp)
  80ea04:	df000415 	stw	fp,16(sp)
  80ea08:	df000404 	addi	fp,sp,16
  80ea0c:	e13ffe15 	stw	r4,-8(fp)
  80ea10:	e17ffd15 	stw	r5,-12(fp)
  80ea14:	e1bffc15 	stw	r6,-16(fp)
  80ea18:	e0bffe17 	ldw	r2,-8(fp)
  80ea1c:	10800017 	ldw	r2,0(r2)
  80ea20:	e0bfff15 	stw	r2,-4(fp)
  80ea24:	e0bfff17 	ldw	r2,-4(fp)
  80ea28:	10c00a04 	addi	r3,r2,40
  80ea2c:	e0bffe17 	ldw	r2,-8(fp)
  80ea30:	10800217 	ldw	r2,8(r2)
  80ea34:	100f883a 	mov	r7,r2
  80ea38:	e1bffc17 	ldw	r6,-16(fp)
  80ea3c:	e17ffd17 	ldw	r5,-12(fp)
  80ea40:	1809883a 	mov	r4,r3
  80ea44:	080f0280 	call	80f028 <altera_avalon_jtag_uart_read>
  80ea48:	e037883a 	mov	sp,fp
  80ea4c:	dfc00117 	ldw	ra,4(sp)
  80ea50:	df000017 	ldw	fp,0(sp)
  80ea54:	dec00204 	addi	sp,sp,8
  80ea58:	f800283a 	ret

0080ea5c <altera_avalon_jtag_uart_write_fd>:
  80ea5c:	defffa04 	addi	sp,sp,-24
  80ea60:	dfc00515 	stw	ra,20(sp)
  80ea64:	df000415 	stw	fp,16(sp)
  80ea68:	df000404 	addi	fp,sp,16
  80ea6c:	e13ffe15 	stw	r4,-8(fp)
  80ea70:	e17ffd15 	stw	r5,-12(fp)
  80ea74:	e1bffc15 	stw	r6,-16(fp)
  80ea78:	e0bffe17 	ldw	r2,-8(fp)
  80ea7c:	10800017 	ldw	r2,0(r2)
  80ea80:	e0bfff15 	stw	r2,-4(fp)
  80ea84:	e0bfff17 	ldw	r2,-4(fp)
  80ea88:	10c00a04 	addi	r3,r2,40
  80ea8c:	e0bffe17 	ldw	r2,-8(fp)
  80ea90:	10800217 	ldw	r2,8(r2)
  80ea94:	100f883a 	mov	r7,r2
  80ea98:	e1bffc17 	ldw	r6,-16(fp)
  80ea9c:	e17ffd17 	ldw	r5,-12(fp)
  80eaa0:	1809883a 	mov	r4,r3
  80eaa4:	080f2480 	call	80f248 <altera_avalon_jtag_uart_write>
  80eaa8:	e037883a 	mov	sp,fp
  80eaac:	dfc00117 	ldw	ra,4(sp)
  80eab0:	df000017 	ldw	fp,0(sp)
  80eab4:	dec00204 	addi	sp,sp,8
  80eab8:	f800283a 	ret

0080eabc <altera_avalon_jtag_uart_close_fd>:
  80eabc:	defffc04 	addi	sp,sp,-16
  80eac0:	dfc00315 	stw	ra,12(sp)
  80eac4:	df000215 	stw	fp,8(sp)
  80eac8:	df000204 	addi	fp,sp,8
  80eacc:	e13ffe15 	stw	r4,-8(fp)
  80ead0:	e0bffe17 	ldw	r2,-8(fp)
  80ead4:	10800017 	ldw	r2,0(r2)
  80ead8:	e0bfff15 	stw	r2,-4(fp)
  80eadc:	e0bfff17 	ldw	r2,-4(fp)
  80eae0:	10c00a04 	addi	r3,r2,40
  80eae4:	e0bffe17 	ldw	r2,-8(fp)
  80eae8:	10800217 	ldw	r2,8(r2)
  80eaec:	100b883a 	mov	r5,r2
  80eaf0:	1809883a 	mov	r4,r3
  80eaf4:	080eecc0 	call	80eecc <altera_avalon_jtag_uart_close>
  80eaf8:	e037883a 	mov	sp,fp
  80eafc:	dfc00117 	ldw	ra,4(sp)
  80eb00:	df000017 	ldw	fp,0(sp)
  80eb04:	dec00204 	addi	sp,sp,8
  80eb08:	f800283a 	ret

0080eb0c <altera_avalon_jtag_uart_ioctl_fd>:
  80eb0c:	defffa04 	addi	sp,sp,-24
  80eb10:	dfc00515 	stw	ra,20(sp)
  80eb14:	df000415 	stw	fp,16(sp)
  80eb18:	df000404 	addi	fp,sp,16
  80eb1c:	e13ffe15 	stw	r4,-8(fp)
  80eb20:	e17ffd15 	stw	r5,-12(fp)
  80eb24:	e1bffc15 	stw	r6,-16(fp)
  80eb28:	e0bffe17 	ldw	r2,-8(fp)
  80eb2c:	10800017 	ldw	r2,0(r2)
  80eb30:	e0bfff15 	stw	r2,-4(fp)
  80eb34:	e0bfff17 	ldw	r2,-4(fp)
  80eb38:	10800a04 	addi	r2,r2,40
  80eb3c:	e1bffc17 	ldw	r6,-16(fp)
  80eb40:	e17ffd17 	ldw	r5,-12(fp)
  80eb44:	1009883a 	mov	r4,r2
  80eb48:	080ef340 	call	80ef34 <altera_avalon_jtag_uart_ioctl>
  80eb4c:	e037883a 	mov	sp,fp
  80eb50:	dfc00117 	ldw	ra,4(sp)
  80eb54:	df000017 	ldw	fp,0(sp)
  80eb58:	dec00204 	addi	sp,sp,8
  80eb5c:	f800283a 	ret

0080eb60 <altera_avalon_jtag_uart_init>:
  80eb60:	defffa04 	addi	sp,sp,-24
  80eb64:	dfc00515 	stw	ra,20(sp)
  80eb68:	df000415 	stw	fp,16(sp)
  80eb6c:	df000404 	addi	fp,sp,16
  80eb70:	e13fff15 	stw	r4,-4(fp)
  80eb74:	e17ffe15 	stw	r5,-8(fp)
  80eb78:	e1bffd15 	stw	r6,-12(fp)
  80eb7c:	e0bfff17 	ldw	r2,-4(fp)
  80eb80:	00c00044 	movi	r3,1
  80eb84:	10c00815 	stw	r3,32(r2)
  80eb88:	e0bfff17 	ldw	r2,-4(fp)
  80eb8c:	10800017 	ldw	r2,0(r2)
  80eb90:	10800104 	addi	r2,r2,4
  80eb94:	1007883a 	mov	r3,r2
  80eb98:	e0bfff17 	ldw	r2,-4(fp)
  80eb9c:	10800817 	ldw	r2,32(r2)
  80eba0:	18800035 	stwio	r2,0(r3)
  80eba4:	e0bffe17 	ldw	r2,-8(fp)
  80eba8:	e0fffd17 	ldw	r3,-12(fp)
  80ebac:	d8000015 	stw	zero,0(sp)
  80ebb0:	e1ffff17 	ldw	r7,-4(fp)
  80ebb4:	01802074 	movhi	r6,129
  80ebb8:	31bb0804 	addi	r6,r6,-5088
  80ebbc:	180b883a 	mov	r5,r3
  80ebc0:	1009883a 	mov	r4,r2
  80ebc4:	080f8d00 	call	80f8d0 <alt_ic_isr_register>
  80ebc8:	e0bfff17 	ldw	r2,-4(fp)
  80ebcc:	10000915 	stw	zero,36(r2)
  80ebd0:	e0bfff17 	ldw	r2,-4(fp)
  80ebd4:	10800204 	addi	r2,r2,8
  80ebd8:	d0e70c17 	ldw	r3,-25552(gp)
  80ebdc:	e1ffff17 	ldw	r7,-4(fp)
  80ebe0:	01802074 	movhi	r6,129
  80ebe4:	31bb8b04 	addi	r6,r6,-4564
  80ebe8:	180b883a 	mov	r5,r3
  80ebec:	1009883a 	mov	r4,r2
  80ebf0:	080f5700 	call	80f570 <alt_alarm_start>
  80ebf4:	1000040e 	bge	r2,zero,80ec08 <altera_avalon_jtag_uart_init+0xa8>
  80ebf8:	e0ffff17 	ldw	r3,-4(fp)
  80ebfc:	00a00034 	movhi	r2,32768
  80ec00:	10bfffc4 	addi	r2,r2,-1
  80ec04:	18800115 	stw	r2,4(r3)
  80ec08:	0001883a 	nop
  80ec0c:	e037883a 	mov	sp,fp
  80ec10:	dfc00117 	ldw	ra,4(sp)
  80ec14:	df000017 	ldw	fp,0(sp)
  80ec18:	dec00204 	addi	sp,sp,8
  80ec1c:	f800283a 	ret

0080ec20 <altera_avalon_jtag_uart_irq>:
  80ec20:	defff804 	addi	sp,sp,-32
  80ec24:	df000715 	stw	fp,28(sp)
  80ec28:	df000704 	addi	fp,sp,28
  80ec2c:	e13ff915 	stw	r4,-28(fp)
  80ec30:	e0bff917 	ldw	r2,-28(fp)
  80ec34:	e0bffd15 	stw	r2,-12(fp)
  80ec38:	e0bffd17 	ldw	r2,-12(fp)
  80ec3c:	10800017 	ldw	r2,0(r2)
  80ec40:	e0bffc15 	stw	r2,-16(fp)
  80ec44:	e0bffc17 	ldw	r2,-16(fp)
  80ec48:	10800104 	addi	r2,r2,4
  80ec4c:	10800037 	ldwio	r2,0(r2)
  80ec50:	e0bffb15 	stw	r2,-20(fp)
  80ec54:	e0bffb17 	ldw	r2,-20(fp)
  80ec58:	1080c00c 	andi	r2,r2,768
  80ec5c:	10006d26 	beq	r2,zero,80ee14 <altera_avalon_jtag_uart_irq+0x1f4>
  80ec60:	e0bffb17 	ldw	r2,-20(fp)
  80ec64:	1080400c 	andi	r2,r2,256
  80ec68:	10003526 	beq	r2,zero,80ed40 <altera_avalon_jtag_uart_irq+0x120>
  80ec6c:	00800074 	movhi	r2,1
  80ec70:	e0bfff15 	stw	r2,-4(fp)
  80ec74:	e0bffd17 	ldw	r2,-12(fp)
  80ec78:	10800a17 	ldw	r2,40(r2)
  80ec7c:	10800044 	addi	r2,r2,1
  80ec80:	1081ffcc 	andi	r2,r2,2047
  80ec84:	e0bffa15 	stw	r2,-24(fp)
  80ec88:	e0bffd17 	ldw	r2,-12(fp)
  80ec8c:	10800b17 	ldw	r2,44(r2)
  80ec90:	e0fffa17 	ldw	r3,-24(fp)
  80ec94:	18801526 	beq	r3,r2,80ecec <altera_avalon_jtag_uart_irq+0xcc>
  80ec98:	e0bffc17 	ldw	r2,-16(fp)
  80ec9c:	10800037 	ldwio	r2,0(r2)
  80eca0:	e0bfff15 	stw	r2,-4(fp)
  80eca4:	e0bfff17 	ldw	r2,-4(fp)
  80eca8:	10a0000c 	andi	r2,r2,32768
  80ecac:	10001126 	beq	r2,zero,80ecf4 <altera_avalon_jtag_uart_irq+0xd4>
  80ecb0:	e0bffd17 	ldw	r2,-12(fp)
  80ecb4:	10800a17 	ldw	r2,40(r2)
  80ecb8:	e0ffff17 	ldw	r3,-4(fp)
  80ecbc:	1809883a 	mov	r4,r3
  80ecc0:	e0fffd17 	ldw	r3,-12(fp)
  80ecc4:	1885883a 	add	r2,r3,r2
  80ecc8:	11000e05 	stb	r4,56(r2)
  80eccc:	e0bffd17 	ldw	r2,-12(fp)
  80ecd0:	10800a17 	ldw	r2,40(r2)
  80ecd4:	10800044 	addi	r2,r2,1
  80ecd8:	10c1ffcc 	andi	r3,r2,2047
  80ecdc:	e0bffd17 	ldw	r2,-12(fp)
  80ece0:	10c00a15 	stw	r3,40(r2)
  80ece4:	0001883a 	nop
  80ece8:	003fe206 	br	80ec74 <altera_avalon_jtag_uart_irq+0x54>
  80ecec:	0001883a 	nop
  80ecf0:	00000106 	br	80ecf8 <altera_avalon_jtag_uart_irq+0xd8>
  80ecf4:	0001883a 	nop
  80ecf8:	e0bfff17 	ldw	r2,-4(fp)
  80ecfc:	10bfffec 	andhi	r2,r2,65535
  80ed00:	10000f26 	beq	r2,zero,80ed40 <altera_avalon_jtag_uart_irq+0x120>
  80ed04:	e0bffd17 	ldw	r2,-12(fp)
  80ed08:	10c00817 	ldw	r3,32(r2)
  80ed0c:	00bfff84 	movi	r2,-2
  80ed10:	1886703a 	and	r3,r3,r2
  80ed14:	e0bffd17 	ldw	r2,-12(fp)
  80ed18:	10c00815 	stw	r3,32(r2)
  80ed1c:	e0bffc17 	ldw	r2,-16(fp)
  80ed20:	10800104 	addi	r2,r2,4
  80ed24:	1007883a 	mov	r3,r2
  80ed28:	e0bffd17 	ldw	r2,-12(fp)
  80ed2c:	10800817 	ldw	r2,32(r2)
  80ed30:	18800035 	stwio	r2,0(r3)
  80ed34:	e0bffc17 	ldw	r2,-16(fp)
  80ed38:	10800104 	addi	r2,r2,4
  80ed3c:	10800037 	ldwio	r2,0(r2)
  80ed40:	e0bffb17 	ldw	r2,-20(fp)
  80ed44:	1080800c 	andi	r2,r2,512
  80ed48:	103fbe26 	beq	r2,zero,80ec44 <altera_avalon_jtag_uart_irq+0x24>
  80ed4c:	e0bffb17 	ldw	r2,-20(fp)
  80ed50:	1004d43a 	srli	r2,r2,16
  80ed54:	e0bffe15 	stw	r2,-8(fp)
  80ed58:	00001406 	br	80edac <altera_avalon_jtag_uart_irq+0x18c>
  80ed5c:	e0bffc17 	ldw	r2,-16(fp)
  80ed60:	e0fffd17 	ldw	r3,-12(fp)
  80ed64:	18c00d17 	ldw	r3,52(r3)
  80ed68:	e13ffd17 	ldw	r4,-12(fp)
  80ed6c:	20c7883a 	add	r3,r4,r3
  80ed70:	18c20e03 	ldbu	r3,2104(r3)
  80ed74:	18c03fcc 	andi	r3,r3,255
  80ed78:	18c0201c 	xori	r3,r3,128
  80ed7c:	18ffe004 	addi	r3,r3,-128
  80ed80:	10c00035 	stwio	r3,0(r2)
  80ed84:	e0bffd17 	ldw	r2,-12(fp)
  80ed88:	10800d17 	ldw	r2,52(r2)
  80ed8c:	10800044 	addi	r2,r2,1
  80ed90:	10c1ffcc 	andi	r3,r2,2047
  80ed94:	e0bffd17 	ldw	r2,-12(fp)
  80ed98:	10c00d15 	stw	r3,52(r2)
  80ed9c:	0001883a 	nop
  80eda0:	e0bffe17 	ldw	r2,-8(fp)
  80eda4:	10bfffc4 	addi	r2,r2,-1
  80eda8:	e0bffe15 	stw	r2,-8(fp)
  80edac:	e0bffe17 	ldw	r2,-8(fp)
  80edb0:	10000526 	beq	r2,zero,80edc8 <altera_avalon_jtag_uart_irq+0x1a8>
  80edb4:	e0bffd17 	ldw	r2,-12(fp)
  80edb8:	10c00d17 	ldw	r3,52(r2)
  80edbc:	e0bffd17 	ldw	r2,-12(fp)
  80edc0:	10800c17 	ldw	r2,48(r2)
  80edc4:	18bfe51e 	bne	r3,r2,80ed5c <altera_avalon_jtag_uart_irq+0x13c>
  80edc8:	e0bffe17 	ldw	r2,-8(fp)
  80edcc:	103f9d26 	beq	r2,zero,80ec44 <altera_avalon_jtag_uart_irq+0x24>
  80edd0:	e0bffd17 	ldw	r2,-12(fp)
  80edd4:	10c00817 	ldw	r3,32(r2)
  80edd8:	00bfff44 	movi	r2,-3
  80eddc:	1886703a 	and	r3,r3,r2
  80ede0:	e0bffd17 	ldw	r2,-12(fp)
  80ede4:	10c00815 	stw	r3,32(r2)
  80ede8:	e0bffd17 	ldw	r2,-12(fp)
  80edec:	10800017 	ldw	r2,0(r2)
  80edf0:	10800104 	addi	r2,r2,4
  80edf4:	1007883a 	mov	r3,r2
  80edf8:	e0bffd17 	ldw	r2,-12(fp)
  80edfc:	10800817 	ldw	r2,32(r2)
  80ee00:	18800035 	stwio	r2,0(r3)
  80ee04:	e0bffc17 	ldw	r2,-16(fp)
  80ee08:	10800104 	addi	r2,r2,4
  80ee0c:	10800037 	ldwio	r2,0(r2)
  80ee10:	003f8c06 	br	80ec44 <altera_avalon_jtag_uart_irq+0x24>
  80ee14:	0001883a 	nop
  80ee18:	0001883a 	nop
  80ee1c:	e037883a 	mov	sp,fp
  80ee20:	df000017 	ldw	fp,0(sp)
  80ee24:	dec00104 	addi	sp,sp,4
  80ee28:	f800283a 	ret

0080ee2c <altera_avalon_jtag_uart_timeout>:
  80ee2c:	defffc04 	addi	sp,sp,-16
  80ee30:	df000315 	stw	fp,12(sp)
  80ee34:	df000304 	addi	fp,sp,12
  80ee38:	e13ffd15 	stw	r4,-12(fp)
  80ee3c:	e0bffd17 	ldw	r2,-12(fp)
  80ee40:	e0bfff15 	stw	r2,-4(fp)
  80ee44:	e0bfff17 	ldw	r2,-4(fp)
  80ee48:	10800017 	ldw	r2,0(r2)
  80ee4c:	10800104 	addi	r2,r2,4
  80ee50:	10800037 	ldwio	r2,0(r2)
  80ee54:	e0bffe15 	stw	r2,-8(fp)
  80ee58:	e0bffe17 	ldw	r2,-8(fp)
  80ee5c:	1081000c 	andi	r2,r2,1024
  80ee60:	10000b26 	beq	r2,zero,80ee90 <altera_avalon_jtag_uart_timeout+0x64>
  80ee64:	e0bfff17 	ldw	r2,-4(fp)
  80ee68:	10800017 	ldw	r2,0(r2)
  80ee6c:	10800104 	addi	r2,r2,4
  80ee70:	1007883a 	mov	r3,r2
  80ee74:	e0bfff17 	ldw	r2,-4(fp)
  80ee78:	10800817 	ldw	r2,32(r2)
  80ee7c:	10810014 	ori	r2,r2,1024
  80ee80:	18800035 	stwio	r2,0(r3)
  80ee84:	e0bfff17 	ldw	r2,-4(fp)
  80ee88:	10000915 	stw	zero,36(r2)
  80ee8c:	00000a06 	br	80eeb8 <altera_avalon_jtag_uart_timeout+0x8c>
  80ee90:	e0bfff17 	ldw	r2,-4(fp)
  80ee94:	10c00917 	ldw	r3,36(r2)
  80ee98:	00a00034 	movhi	r2,32768
  80ee9c:	10bfff04 	addi	r2,r2,-4
  80eea0:	10c00536 	bltu	r2,r3,80eeb8 <altera_avalon_jtag_uart_timeout+0x8c>
  80eea4:	e0bfff17 	ldw	r2,-4(fp)
  80eea8:	10800917 	ldw	r2,36(r2)
  80eeac:	10c00044 	addi	r3,r2,1
  80eeb0:	e0bfff17 	ldw	r2,-4(fp)
  80eeb4:	10c00915 	stw	r3,36(r2)
  80eeb8:	d0a70c17 	ldw	r2,-25552(gp)
  80eebc:	e037883a 	mov	sp,fp
  80eec0:	df000017 	ldw	fp,0(sp)
  80eec4:	dec00104 	addi	sp,sp,4
  80eec8:	f800283a 	ret

0080eecc <altera_avalon_jtag_uart_close>:
  80eecc:	defffd04 	addi	sp,sp,-12
  80eed0:	df000215 	stw	fp,8(sp)
  80eed4:	df000204 	addi	fp,sp,8
  80eed8:	e13fff15 	stw	r4,-4(fp)
  80eedc:	e17ffe15 	stw	r5,-8(fp)
  80eee0:	00000506 	br	80eef8 <altera_avalon_jtag_uart_close+0x2c>
  80eee4:	e0bffe17 	ldw	r2,-8(fp)
  80eee8:	1090000c 	andi	r2,r2,16384
  80eeec:	10000226 	beq	r2,zero,80eef8 <altera_avalon_jtag_uart_close+0x2c>
  80eef0:	00bffd44 	movi	r2,-11
  80eef4:	00000b06 	br	80ef24 <altera_avalon_jtag_uart_close+0x58>
  80eef8:	e0bfff17 	ldw	r2,-4(fp)
  80eefc:	10c00d17 	ldw	r3,52(r2)
  80ef00:	e0bfff17 	ldw	r2,-4(fp)
  80ef04:	10800c17 	ldw	r2,48(r2)
  80ef08:	18800526 	beq	r3,r2,80ef20 <altera_avalon_jtag_uart_close+0x54>
  80ef0c:	e0bfff17 	ldw	r2,-4(fp)
  80ef10:	10c00917 	ldw	r3,36(r2)
  80ef14:	e0bfff17 	ldw	r2,-4(fp)
  80ef18:	10800117 	ldw	r2,4(r2)
  80ef1c:	18bff136 	bltu	r3,r2,80eee4 <altera_avalon_jtag_uart_close+0x18>
  80ef20:	0005883a 	mov	r2,zero
  80ef24:	e037883a 	mov	sp,fp
  80ef28:	df000017 	ldw	fp,0(sp)
  80ef2c:	dec00104 	addi	sp,sp,4
  80ef30:	f800283a 	ret

0080ef34 <altera_avalon_jtag_uart_ioctl>:
  80ef34:	defffa04 	addi	sp,sp,-24
  80ef38:	df000515 	stw	fp,20(sp)
  80ef3c:	df000504 	addi	fp,sp,20
  80ef40:	e13ffd15 	stw	r4,-12(fp)
  80ef44:	e17ffc15 	stw	r5,-16(fp)
  80ef48:	e1bffb15 	stw	r6,-20(fp)
  80ef4c:	00bff9c4 	movi	r2,-25
  80ef50:	e0bfff15 	stw	r2,-4(fp)
  80ef54:	e0bffc17 	ldw	r2,-16(fp)
  80ef58:	109a8060 	cmpeqi	r2,r2,27137
  80ef5c:	1000041e 	bne	r2,zero,80ef70 <altera_avalon_jtag_uart_ioctl+0x3c>
  80ef60:	e0bffc17 	ldw	r2,-16(fp)
  80ef64:	109a80a0 	cmpeqi	r2,r2,27138
  80ef68:	1000181e 	bne	r2,zero,80efcc <altera_avalon_jtag_uart_ioctl+0x98>
  80ef6c:	00002906 	br	80f014 <altera_avalon_jtag_uart_ioctl+0xe0>
  80ef70:	e0bffd17 	ldw	r2,-12(fp)
  80ef74:	10c00117 	ldw	r3,4(r2)
  80ef78:	00a00034 	movhi	r2,32768
  80ef7c:	10bfffc4 	addi	r2,r2,-1
  80ef80:	18802126 	beq	r3,r2,80f008 <altera_avalon_jtag_uart_ioctl+0xd4>
  80ef84:	e0bffb17 	ldw	r2,-20(fp)
  80ef88:	10800017 	ldw	r2,0(r2)
  80ef8c:	e0bffe15 	stw	r2,-8(fp)
  80ef90:	e0bffe17 	ldw	r2,-8(fp)
  80ef94:	10800090 	cmplti	r2,r2,2
  80ef98:	1000061e 	bne	r2,zero,80efb4 <altera_avalon_jtag_uart_ioctl+0x80>
  80ef9c:	e0fffe17 	ldw	r3,-8(fp)
  80efa0:	00a00034 	movhi	r2,32768
  80efa4:	10bfffc4 	addi	r2,r2,-1
  80efa8:	18800226 	beq	r3,r2,80efb4 <altera_avalon_jtag_uart_ioctl+0x80>
  80efac:	e0bffe17 	ldw	r2,-8(fp)
  80efb0:	00000206 	br	80efbc <altera_avalon_jtag_uart_ioctl+0x88>
  80efb4:	00a00034 	movhi	r2,32768
  80efb8:	10bfff84 	addi	r2,r2,-2
  80efbc:	e0fffd17 	ldw	r3,-12(fp)
  80efc0:	18800115 	stw	r2,4(r3)
  80efc4:	e03fff15 	stw	zero,-4(fp)
  80efc8:	00000f06 	br	80f008 <altera_avalon_jtag_uart_ioctl+0xd4>
  80efcc:	e0bffd17 	ldw	r2,-12(fp)
  80efd0:	10c00117 	ldw	r3,4(r2)
  80efd4:	00a00034 	movhi	r2,32768
  80efd8:	10bfffc4 	addi	r2,r2,-1
  80efdc:	18800c26 	beq	r3,r2,80f010 <altera_avalon_jtag_uart_ioctl+0xdc>
  80efe0:	e0bffd17 	ldw	r2,-12(fp)
  80efe4:	10c00917 	ldw	r3,36(r2)
  80efe8:	e0bffd17 	ldw	r2,-12(fp)
  80efec:	10800117 	ldw	r2,4(r2)
  80eff0:	1885803a 	cmpltu	r2,r3,r2
  80eff4:	10c03fcc 	andi	r3,r2,255
  80eff8:	e0bffb17 	ldw	r2,-20(fp)
  80effc:	10c00015 	stw	r3,0(r2)
  80f000:	e03fff15 	stw	zero,-4(fp)
  80f004:	00000206 	br	80f010 <altera_avalon_jtag_uart_ioctl+0xdc>
  80f008:	0001883a 	nop
  80f00c:	00000106 	br	80f014 <altera_avalon_jtag_uart_ioctl+0xe0>
  80f010:	0001883a 	nop
  80f014:	e0bfff17 	ldw	r2,-4(fp)
  80f018:	e037883a 	mov	sp,fp
  80f01c:	df000017 	ldw	fp,0(sp)
  80f020:	dec00104 	addi	sp,sp,4
  80f024:	f800283a 	ret

0080f028 <altera_avalon_jtag_uart_read>:
  80f028:	defff304 	addi	sp,sp,-52
  80f02c:	dfc00c15 	stw	ra,48(sp)
  80f030:	df000b15 	stw	fp,44(sp)
  80f034:	df000b04 	addi	fp,sp,44
  80f038:	e13ff815 	stw	r4,-32(fp)
  80f03c:	e17ff715 	stw	r5,-36(fp)
  80f040:	e1bff615 	stw	r6,-40(fp)
  80f044:	e1fff515 	stw	r7,-44(fp)
  80f048:	e0bff717 	ldw	r2,-36(fp)
  80f04c:	e0bfff15 	stw	r2,-4(fp)
  80f050:	00004706 	br	80f170 <altera_avalon_jtag_uart_read+0x148>
  80f054:	e0bff817 	ldw	r2,-32(fp)
  80f058:	10800a17 	ldw	r2,40(r2)
  80f05c:	e0bffd15 	stw	r2,-12(fp)
  80f060:	e0bff817 	ldw	r2,-32(fp)
  80f064:	10800b17 	ldw	r2,44(r2)
  80f068:	e0bffc15 	stw	r2,-16(fp)
  80f06c:	e0fffd17 	ldw	r3,-12(fp)
  80f070:	e0bffc17 	ldw	r2,-16(fp)
  80f074:	18800536 	bltu	r3,r2,80f08c <altera_avalon_jtag_uart_read+0x64>
  80f078:	e0fffd17 	ldw	r3,-12(fp)
  80f07c:	e0bffc17 	ldw	r2,-16(fp)
  80f080:	1885c83a 	sub	r2,r3,r2
  80f084:	e0bffe15 	stw	r2,-8(fp)
  80f088:	00000406 	br	80f09c <altera_avalon_jtag_uart_read+0x74>
  80f08c:	00c20004 	movi	r3,2048
  80f090:	e0bffc17 	ldw	r2,-16(fp)
  80f094:	1885c83a 	sub	r2,r3,r2
  80f098:	e0bffe15 	stw	r2,-8(fp)
  80f09c:	e0bffe17 	ldw	r2,-8(fp)
  80f0a0:	10001e26 	beq	r2,zero,80f11c <altera_avalon_jtag_uart_read+0xf4>
  80f0a4:	e0fff617 	ldw	r3,-40(fp)
  80f0a8:	e0bffe17 	ldw	r2,-8(fp)
  80f0ac:	1880022e 	bgeu	r3,r2,80f0b8 <altera_avalon_jtag_uart_read+0x90>
  80f0b0:	e0bff617 	ldw	r2,-40(fp)
  80f0b4:	e0bffe15 	stw	r2,-8(fp)
  80f0b8:	e0bff817 	ldw	r2,-32(fp)
  80f0bc:	10c00e04 	addi	r3,r2,56
  80f0c0:	e0bffc17 	ldw	r2,-16(fp)
  80f0c4:	1885883a 	add	r2,r3,r2
  80f0c8:	e1bffe17 	ldw	r6,-8(fp)
  80f0cc:	100b883a 	mov	r5,r2
  80f0d0:	e13fff17 	ldw	r4,-4(fp)
  80f0d4:	08070300 	call	807030 <memcpy>
  80f0d8:	e0ffff17 	ldw	r3,-4(fp)
  80f0dc:	e0bffe17 	ldw	r2,-8(fp)
  80f0e0:	1885883a 	add	r2,r3,r2
  80f0e4:	e0bfff15 	stw	r2,-4(fp)
  80f0e8:	e0fff617 	ldw	r3,-40(fp)
  80f0ec:	e0bffe17 	ldw	r2,-8(fp)
  80f0f0:	1885c83a 	sub	r2,r3,r2
  80f0f4:	e0bff615 	stw	r2,-40(fp)
  80f0f8:	e0fffc17 	ldw	r3,-16(fp)
  80f0fc:	e0bffe17 	ldw	r2,-8(fp)
  80f100:	1885883a 	add	r2,r3,r2
  80f104:	10c1ffcc 	andi	r3,r2,2047
  80f108:	e0bff817 	ldw	r2,-32(fp)
  80f10c:	10c00b15 	stw	r3,44(r2)
  80f110:	e0bff617 	ldw	r2,-40(fp)
  80f114:	00bfcf16 	blt	zero,r2,80f054 <altera_avalon_jtag_uart_read+0x2c>
  80f118:	00000106 	br	80f120 <altera_avalon_jtag_uart_read+0xf8>
  80f11c:	0001883a 	nop
  80f120:	e0ffff17 	ldw	r3,-4(fp)
  80f124:	e0bff717 	ldw	r2,-36(fp)
  80f128:	1880141e 	bne	r3,r2,80f17c <altera_avalon_jtag_uart_read+0x154>
  80f12c:	e0bff517 	ldw	r2,-44(fp)
  80f130:	1090000c 	andi	r2,r2,16384
  80f134:	1000131e 	bne	r2,zero,80f184 <altera_avalon_jtag_uart_read+0x15c>
  80f138:	0001883a 	nop
  80f13c:	e0bff817 	ldw	r2,-32(fp)
  80f140:	10800a17 	ldw	r2,40(r2)
  80f144:	e0fffd17 	ldw	r3,-12(fp)
  80f148:	1880051e 	bne	r3,r2,80f160 <altera_avalon_jtag_uart_read+0x138>
  80f14c:	e0bff817 	ldw	r2,-32(fp)
  80f150:	10c00917 	ldw	r3,36(r2)
  80f154:	e0bff817 	ldw	r2,-32(fp)
  80f158:	10800117 	ldw	r2,4(r2)
  80f15c:	18bff736 	bltu	r3,r2,80f13c <altera_avalon_jtag_uart_read+0x114>
  80f160:	e0bff817 	ldw	r2,-32(fp)
  80f164:	10800a17 	ldw	r2,40(r2)
  80f168:	e0fffd17 	ldw	r3,-12(fp)
  80f16c:	18800726 	beq	r3,r2,80f18c <altera_avalon_jtag_uart_read+0x164>
  80f170:	e0bff617 	ldw	r2,-40(fp)
  80f174:	00bfb716 	blt	zero,r2,80f054 <altera_avalon_jtag_uart_read+0x2c>
  80f178:	00000506 	br	80f190 <altera_avalon_jtag_uart_read+0x168>
  80f17c:	0001883a 	nop
  80f180:	00000306 	br	80f190 <altera_avalon_jtag_uart_read+0x168>
  80f184:	0001883a 	nop
  80f188:	00000106 	br	80f190 <altera_avalon_jtag_uart_read+0x168>
  80f18c:	0001883a 	nop
  80f190:	e0ffff17 	ldw	r3,-4(fp)
  80f194:	e0bff717 	ldw	r2,-36(fp)
  80f198:	18801926 	beq	r3,r2,80f200 <altera_avalon_jtag_uart_read+0x1d8>
  80f19c:	0005303a 	rdctl	r2,status
  80f1a0:	e0bff915 	stw	r2,-28(fp)
  80f1a4:	e0fff917 	ldw	r3,-28(fp)
  80f1a8:	00bfff84 	movi	r2,-2
  80f1ac:	1884703a 	and	r2,r3,r2
  80f1b0:	1001703a 	wrctl	status,r2
  80f1b4:	e0bff917 	ldw	r2,-28(fp)
  80f1b8:	e0bffb15 	stw	r2,-20(fp)
  80f1bc:	e0bff817 	ldw	r2,-32(fp)
  80f1c0:	10800817 	ldw	r2,32(r2)
  80f1c4:	10c00054 	ori	r3,r2,1
  80f1c8:	e0bff817 	ldw	r2,-32(fp)
  80f1cc:	10c00815 	stw	r3,32(r2)
  80f1d0:	e0bff817 	ldw	r2,-32(fp)
  80f1d4:	10800017 	ldw	r2,0(r2)
  80f1d8:	10800104 	addi	r2,r2,4
  80f1dc:	1007883a 	mov	r3,r2
  80f1e0:	e0bff817 	ldw	r2,-32(fp)
  80f1e4:	10800817 	ldw	r2,32(r2)
  80f1e8:	18800035 	stwio	r2,0(r3)
  80f1ec:	e0bffb17 	ldw	r2,-20(fp)
  80f1f0:	e0bffa15 	stw	r2,-24(fp)
  80f1f4:	e0bffa17 	ldw	r2,-24(fp)
  80f1f8:	1001703a 	wrctl	status,r2
  80f1fc:	0001883a 	nop
  80f200:	e0ffff17 	ldw	r3,-4(fp)
  80f204:	e0bff717 	ldw	r2,-36(fp)
  80f208:	18800426 	beq	r3,r2,80f21c <altera_avalon_jtag_uart_read+0x1f4>
  80f20c:	e0ffff17 	ldw	r3,-4(fp)
  80f210:	e0bff717 	ldw	r2,-36(fp)
  80f214:	1885c83a 	sub	r2,r3,r2
  80f218:	00000606 	br	80f234 <altera_avalon_jtag_uart_read+0x20c>
  80f21c:	e0bff517 	ldw	r2,-44(fp)
  80f220:	1090000c 	andi	r2,r2,16384
  80f224:	10000226 	beq	r2,zero,80f230 <altera_avalon_jtag_uart_read+0x208>
  80f228:	00bffd44 	movi	r2,-11
  80f22c:	00000106 	br	80f234 <altera_avalon_jtag_uart_read+0x20c>
  80f230:	00bffec4 	movi	r2,-5
  80f234:	e037883a 	mov	sp,fp
  80f238:	dfc00117 	ldw	ra,4(sp)
  80f23c:	df000017 	ldw	fp,0(sp)
  80f240:	dec00204 	addi	sp,sp,8
  80f244:	f800283a 	ret

0080f248 <altera_avalon_jtag_uart_write>:
  80f248:	defff304 	addi	sp,sp,-52
  80f24c:	dfc00c15 	stw	ra,48(sp)
  80f250:	df000b15 	stw	fp,44(sp)
  80f254:	df000b04 	addi	fp,sp,44
  80f258:	e13ff815 	stw	r4,-32(fp)
  80f25c:	e17ff715 	stw	r5,-36(fp)
  80f260:	e1bff615 	stw	r6,-40(fp)
  80f264:	e1fff515 	stw	r7,-44(fp)
  80f268:	e03fff15 	stw	zero,-4(fp)
  80f26c:	e0bff717 	ldw	r2,-36(fp)
  80f270:	e0bffd15 	stw	r2,-12(fp)
  80f274:	00003706 	br	80f354 <altera_avalon_jtag_uart_write+0x10c>
  80f278:	e0bff817 	ldw	r2,-32(fp)
  80f27c:	10800c17 	ldw	r2,48(r2)
  80f280:	e0bffc15 	stw	r2,-16(fp)
  80f284:	e0bff817 	ldw	r2,-32(fp)
  80f288:	10800d17 	ldw	r2,52(r2)
  80f28c:	e0bfff15 	stw	r2,-4(fp)
  80f290:	e0fffc17 	ldw	r3,-16(fp)
  80f294:	e0bfff17 	ldw	r2,-4(fp)
  80f298:	1880062e 	bgeu	r3,r2,80f2b4 <altera_avalon_jtag_uart_write+0x6c>
  80f29c:	e0ffff17 	ldw	r3,-4(fp)
  80f2a0:	e0bffc17 	ldw	r2,-16(fp)
  80f2a4:	1885c83a 	sub	r2,r3,r2
  80f2a8:	10bfffc4 	addi	r2,r2,-1
  80f2ac:	e0bffe15 	stw	r2,-8(fp)
  80f2b0:	00000b06 	br	80f2e0 <altera_avalon_jtag_uart_write+0x98>
  80f2b4:	e0bfff17 	ldw	r2,-4(fp)
  80f2b8:	10000526 	beq	r2,zero,80f2d0 <altera_avalon_jtag_uart_write+0x88>
  80f2bc:	00c20004 	movi	r3,2048
  80f2c0:	e0bffc17 	ldw	r2,-16(fp)
  80f2c4:	1885c83a 	sub	r2,r3,r2
  80f2c8:	e0bffe15 	stw	r2,-8(fp)
  80f2cc:	00000406 	br	80f2e0 <altera_avalon_jtag_uart_write+0x98>
  80f2d0:	00c1ffc4 	movi	r3,2047
  80f2d4:	e0bffc17 	ldw	r2,-16(fp)
  80f2d8:	1885c83a 	sub	r2,r3,r2
  80f2dc:	e0bffe15 	stw	r2,-8(fp)
  80f2e0:	e0bffe17 	ldw	r2,-8(fp)
  80f2e4:	10001e26 	beq	r2,zero,80f360 <altera_avalon_jtag_uart_write+0x118>
  80f2e8:	e0fff617 	ldw	r3,-40(fp)
  80f2ec:	e0bffe17 	ldw	r2,-8(fp)
  80f2f0:	1880022e 	bgeu	r3,r2,80f2fc <altera_avalon_jtag_uart_write+0xb4>
  80f2f4:	e0bff617 	ldw	r2,-40(fp)
  80f2f8:	e0bffe15 	stw	r2,-8(fp)
  80f2fc:	e0bff817 	ldw	r2,-32(fp)
  80f300:	10c20e04 	addi	r3,r2,2104
  80f304:	e0bffc17 	ldw	r2,-16(fp)
  80f308:	1885883a 	add	r2,r3,r2
  80f30c:	e1bffe17 	ldw	r6,-8(fp)
  80f310:	e17ff717 	ldw	r5,-36(fp)
  80f314:	1009883a 	mov	r4,r2
  80f318:	08070300 	call	807030 <memcpy>
  80f31c:	e0fff717 	ldw	r3,-36(fp)
  80f320:	e0bffe17 	ldw	r2,-8(fp)
  80f324:	1885883a 	add	r2,r3,r2
  80f328:	e0bff715 	stw	r2,-36(fp)
  80f32c:	e0fff617 	ldw	r3,-40(fp)
  80f330:	e0bffe17 	ldw	r2,-8(fp)
  80f334:	1885c83a 	sub	r2,r3,r2
  80f338:	e0bff615 	stw	r2,-40(fp)
  80f33c:	e0fffc17 	ldw	r3,-16(fp)
  80f340:	e0bffe17 	ldw	r2,-8(fp)
  80f344:	1885883a 	add	r2,r3,r2
  80f348:	10c1ffcc 	andi	r3,r2,2047
  80f34c:	e0bff817 	ldw	r2,-32(fp)
  80f350:	10c00c15 	stw	r3,48(r2)
  80f354:	e0bff617 	ldw	r2,-40(fp)
  80f358:	00bfc716 	blt	zero,r2,80f278 <altera_avalon_jtag_uart_write+0x30>
  80f35c:	00000106 	br	80f364 <altera_avalon_jtag_uart_write+0x11c>
  80f360:	0001883a 	nop
  80f364:	0005303a 	rdctl	r2,status
  80f368:	e0bff915 	stw	r2,-28(fp)
  80f36c:	e0fff917 	ldw	r3,-28(fp)
  80f370:	00bfff84 	movi	r2,-2
  80f374:	1884703a 	and	r2,r3,r2
  80f378:	1001703a 	wrctl	status,r2
  80f37c:	e0bff917 	ldw	r2,-28(fp)
  80f380:	e0bffb15 	stw	r2,-20(fp)
  80f384:	e0bff817 	ldw	r2,-32(fp)
  80f388:	10800817 	ldw	r2,32(r2)
  80f38c:	10c00094 	ori	r3,r2,2
  80f390:	e0bff817 	ldw	r2,-32(fp)
  80f394:	10c00815 	stw	r3,32(r2)
  80f398:	e0bff817 	ldw	r2,-32(fp)
  80f39c:	10800017 	ldw	r2,0(r2)
  80f3a0:	10800104 	addi	r2,r2,4
  80f3a4:	1007883a 	mov	r3,r2
  80f3a8:	e0bff817 	ldw	r2,-32(fp)
  80f3ac:	10800817 	ldw	r2,32(r2)
  80f3b0:	18800035 	stwio	r2,0(r3)
  80f3b4:	e0bffb17 	ldw	r2,-20(fp)
  80f3b8:	e0bffa15 	stw	r2,-24(fp)
  80f3bc:	e0bffa17 	ldw	r2,-24(fp)
  80f3c0:	1001703a 	wrctl	status,r2
  80f3c4:	0001883a 	nop
  80f3c8:	e0bff617 	ldw	r2,-40(fp)
  80f3cc:	0080100e 	bge	zero,r2,80f410 <altera_avalon_jtag_uart_write+0x1c8>
  80f3d0:	e0bff517 	ldw	r2,-44(fp)
  80f3d4:	1090000c 	andi	r2,r2,16384
  80f3d8:	1000101e 	bne	r2,zero,80f41c <altera_avalon_jtag_uart_write+0x1d4>
  80f3dc:	0001883a 	nop
  80f3e0:	e0bff817 	ldw	r2,-32(fp)
  80f3e4:	10800d17 	ldw	r2,52(r2)
  80f3e8:	e0ffff17 	ldw	r3,-4(fp)
  80f3ec:	1880051e 	bne	r3,r2,80f404 <altera_avalon_jtag_uart_write+0x1bc>
  80f3f0:	e0bff817 	ldw	r2,-32(fp)
  80f3f4:	10c00917 	ldw	r3,36(r2)
  80f3f8:	e0bff817 	ldw	r2,-32(fp)
  80f3fc:	10800117 	ldw	r2,4(r2)
  80f400:	18bff736 	bltu	r3,r2,80f3e0 <altera_avalon_jtag_uart_write+0x198>
  80f404:	e0bff817 	ldw	r2,-32(fp)
  80f408:	10800917 	ldw	r2,36(r2)
  80f40c:	1000051e 	bne	r2,zero,80f424 <altera_avalon_jtag_uart_write+0x1dc>
  80f410:	e0bff617 	ldw	r2,-40(fp)
  80f414:	00bfcf16 	blt	zero,r2,80f354 <altera_avalon_jtag_uart_write+0x10c>
  80f418:	00000306 	br	80f428 <altera_avalon_jtag_uart_write+0x1e0>
  80f41c:	0001883a 	nop
  80f420:	00000106 	br	80f428 <altera_avalon_jtag_uart_write+0x1e0>
  80f424:	0001883a 	nop
  80f428:	e0fff717 	ldw	r3,-36(fp)
  80f42c:	e0bffd17 	ldw	r2,-12(fp)
  80f430:	18800426 	beq	r3,r2,80f444 <altera_avalon_jtag_uart_write+0x1fc>
  80f434:	e0fff717 	ldw	r3,-36(fp)
  80f438:	e0bffd17 	ldw	r2,-12(fp)
  80f43c:	1885c83a 	sub	r2,r3,r2
  80f440:	00000606 	br	80f45c <altera_avalon_jtag_uart_write+0x214>
  80f444:	e0bff517 	ldw	r2,-44(fp)
  80f448:	1090000c 	andi	r2,r2,16384
  80f44c:	10000226 	beq	r2,zero,80f458 <altera_avalon_jtag_uart_write+0x210>
  80f450:	00bffd44 	movi	r2,-11
  80f454:	00000106 	br	80f45c <altera_avalon_jtag_uart_write+0x214>
  80f458:	00bffec4 	movi	r2,-5
  80f45c:	e037883a 	mov	sp,fp
  80f460:	dfc00117 	ldw	ra,4(sp)
  80f464:	df000017 	ldw	fp,0(sp)
  80f468:	dec00204 	addi	sp,sp,8
  80f46c:	f800283a 	ret

0080f470 <alt_avalon_timer_sc_irq>:
  80f470:	defffa04 	addi	sp,sp,-24
  80f474:	dfc00515 	stw	ra,20(sp)
  80f478:	df000415 	stw	fp,16(sp)
  80f47c:	df000404 	addi	fp,sp,16
  80f480:	e13ffc15 	stw	r4,-16(fp)
  80f484:	0007883a 	mov	r3,zero
  80f488:	e0bffc17 	ldw	r2,-16(fp)
  80f48c:	10c00035 	stwio	r3,0(r2)
  80f490:	e0bffc17 	ldw	r2,-16(fp)
  80f494:	10800104 	addi	r2,r2,4
  80f498:	10800037 	ldwio	r2,0(r2)
  80f49c:	0005303a 	rdctl	r2,status
  80f4a0:	e0bffd15 	stw	r2,-12(fp)
  80f4a4:	e0fffd17 	ldw	r3,-12(fp)
  80f4a8:	00bfff84 	movi	r2,-2
  80f4ac:	1884703a 	and	r2,r3,r2
  80f4b0:	1001703a 	wrctl	status,r2
  80f4b4:	e0bffd17 	ldw	r2,-12(fp)
  80f4b8:	e0bfff15 	stw	r2,-4(fp)
  80f4bc:	080e6e00 	call	80e6e0 <alt_tick>
  80f4c0:	e0bfff17 	ldw	r2,-4(fp)
  80f4c4:	e0bffe15 	stw	r2,-8(fp)
  80f4c8:	e0bffe17 	ldw	r2,-8(fp)
  80f4cc:	1001703a 	wrctl	status,r2
  80f4d0:	0001883a 	nop
  80f4d4:	0001883a 	nop
  80f4d8:	e037883a 	mov	sp,fp
  80f4dc:	dfc00117 	ldw	ra,4(sp)
  80f4e0:	df000017 	ldw	fp,0(sp)
  80f4e4:	dec00204 	addi	sp,sp,8
  80f4e8:	f800283a 	ret

0080f4ec <alt_avalon_timer_sc_init>:
  80f4ec:	defff804 	addi	sp,sp,-32
  80f4f0:	dfc00715 	stw	ra,28(sp)
  80f4f4:	df000615 	stw	fp,24(sp)
  80f4f8:	df000604 	addi	fp,sp,24
  80f4fc:	e13ffe15 	stw	r4,-8(fp)
  80f500:	e17ffd15 	stw	r5,-12(fp)
  80f504:	e1bffc15 	stw	r6,-16(fp)
  80f508:	e1fffb15 	stw	r7,-20(fp)
  80f50c:	e0bffb17 	ldw	r2,-20(fp)
  80f510:	e0bfff15 	stw	r2,-4(fp)
  80f514:	d0a70c17 	ldw	r2,-25552(gp)
  80f518:	1000031e 	bne	r2,zero,80f528 <alt_avalon_timer_sc_init+0x3c>
  80f51c:	e0bfff17 	ldw	r2,-4(fp)
  80f520:	d0a70c15 	stw	r2,-25552(gp)
  80f524:	00000106 	br	80f52c <alt_avalon_timer_sc_init+0x40>
  80f528:	0001883a 	nop
  80f52c:	e0bffe17 	ldw	r2,-8(fp)
  80f530:	10800104 	addi	r2,r2,4
  80f534:	00c001c4 	movi	r3,7
  80f538:	10c00035 	stwio	r3,0(r2)
  80f53c:	d8000015 	stw	zero,0(sp)
  80f540:	e1fffe17 	ldw	r7,-8(fp)
  80f544:	01802074 	movhi	r6,129
  80f548:	31bd1c04 	addi	r6,r6,-2960
  80f54c:	e17ffc17 	ldw	r5,-16(fp)
  80f550:	e13ffd17 	ldw	r4,-12(fp)
  80f554:	080f8d00 	call	80f8d0 <alt_ic_isr_register>
  80f558:	0001883a 	nop
  80f55c:	e037883a 	mov	sp,fp
  80f560:	dfc00117 	ldw	ra,4(sp)
  80f564:	df000017 	ldw	fp,0(sp)
  80f568:	dec00204 	addi	sp,sp,8
  80f56c:	f800283a 	ret

0080f570 <alt_alarm_start>:
  80f570:	defff504 	addi	sp,sp,-44
  80f574:	df000a15 	stw	fp,40(sp)
  80f578:	df000a04 	addi	fp,sp,40
  80f57c:	e13ff915 	stw	r4,-28(fp)
  80f580:	e17ff815 	stw	r5,-32(fp)
  80f584:	e1bff715 	stw	r6,-36(fp)
  80f588:	e1fff615 	stw	r7,-40(fp)
  80f58c:	e03fff15 	stw	zero,-4(fp)
  80f590:	d0a70c17 	ldw	r2,-25552(gp)
  80f594:	10003e26 	beq	r2,zero,80f690 <alt_alarm_start+0x120>
  80f598:	e0bff917 	ldw	r2,-28(fp)
  80f59c:	10003a26 	beq	r2,zero,80f688 <alt_alarm_start+0x118>
  80f5a0:	e0bff917 	ldw	r2,-28(fp)
  80f5a4:	e0fff717 	ldw	r3,-36(fp)
  80f5a8:	10c00315 	stw	r3,12(r2)
  80f5ac:	e0bff917 	ldw	r2,-28(fp)
  80f5b0:	e0fff617 	ldw	r3,-40(fp)
  80f5b4:	10c00515 	stw	r3,20(r2)
  80f5b8:	0005303a 	rdctl	r2,status
  80f5bc:	e0bffd15 	stw	r2,-12(fp)
  80f5c0:	e0fffd17 	ldw	r3,-12(fp)
  80f5c4:	00bfff84 	movi	r2,-2
  80f5c8:	1884703a 	and	r2,r3,r2
  80f5cc:	1001703a 	wrctl	status,r2
  80f5d0:	e0bffd17 	ldw	r2,-12(fp)
  80f5d4:	e0bffe15 	stw	r2,-8(fp)
  80f5d8:	d0a70d17 	ldw	r2,-25548(gp)
  80f5dc:	e0bfff15 	stw	r2,-4(fp)
  80f5e0:	e0fff817 	ldw	r3,-32(fp)
  80f5e4:	e0bfff17 	ldw	r2,-4(fp)
  80f5e8:	1885883a 	add	r2,r3,r2
  80f5ec:	10c00044 	addi	r3,r2,1
  80f5f0:	e0bff917 	ldw	r2,-28(fp)
  80f5f4:	10c00215 	stw	r3,8(r2)
  80f5f8:	e0bff917 	ldw	r2,-28(fp)
  80f5fc:	10c00217 	ldw	r3,8(r2)
  80f600:	e0bfff17 	ldw	r2,-4(fp)
  80f604:	1880042e 	bgeu	r3,r2,80f618 <alt_alarm_start+0xa8>
  80f608:	e0bff917 	ldw	r2,-28(fp)
  80f60c:	00c00044 	movi	r3,1
  80f610:	10c00405 	stb	r3,16(r2)
  80f614:	00000206 	br	80f620 <alt_alarm_start+0xb0>
  80f618:	e0bff917 	ldw	r2,-28(fp)
  80f61c:	10000405 	stb	zero,16(r2)
  80f620:	e0bff917 	ldw	r2,-28(fp)
  80f624:	d0e00b04 	addi	r3,gp,-32724
  80f628:	e0fffb15 	stw	r3,-20(fp)
  80f62c:	e0bffa15 	stw	r2,-24(fp)
  80f630:	e0bffa17 	ldw	r2,-24(fp)
  80f634:	e0fffb17 	ldw	r3,-20(fp)
  80f638:	10c00115 	stw	r3,4(r2)
  80f63c:	e0bffb17 	ldw	r2,-20(fp)
  80f640:	10c00017 	ldw	r3,0(r2)
  80f644:	e0bffa17 	ldw	r2,-24(fp)
  80f648:	10c00015 	stw	r3,0(r2)
  80f64c:	e0bffb17 	ldw	r2,-20(fp)
  80f650:	10800017 	ldw	r2,0(r2)
  80f654:	e0fffa17 	ldw	r3,-24(fp)
  80f658:	10c00115 	stw	r3,4(r2)
  80f65c:	e0bffb17 	ldw	r2,-20(fp)
  80f660:	e0fffa17 	ldw	r3,-24(fp)
  80f664:	10c00015 	stw	r3,0(r2)
  80f668:	0001883a 	nop
  80f66c:	e0bffe17 	ldw	r2,-8(fp)
  80f670:	e0bffc15 	stw	r2,-16(fp)
  80f674:	e0bffc17 	ldw	r2,-16(fp)
  80f678:	1001703a 	wrctl	status,r2
  80f67c:	0001883a 	nop
  80f680:	0005883a 	mov	r2,zero
  80f684:	00000306 	br	80f694 <alt_alarm_start+0x124>
  80f688:	00bffa84 	movi	r2,-22
  80f68c:	00000106 	br	80f694 <alt_alarm_start+0x124>
  80f690:	00bfde84 	movi	r2,-134
  80f694:	e037883a 	mov	sp,fp
  80f698:	df000017 	ldw	fp,0(sp)
  80f69c:	dec00104 	addi	sp,sp,4
  80f6a0:	f800283a 	ret

0080f6a4 <alt_dcache_flush_all>:
  80f6a4:	defffe04 	addi	sp,sp,-8
  80f6a8:	df000115 	stw	fp,4(sp)
  80f6ac:	df000104 	addi	fp,sp,4
  80f6b0:	e03fff15 	stw	zero,-4(fp)
  80f6b4:	00000506 	br	80f6cc <alt_dcache_flush_all+0x28>
  80f6b8:	e0bfff17 	ldw	r2,-4(fp)
  80f6bc:	1000003b 	flushd	0(r2)
  80f6c0:	e0bfff17 	ldw	r2,-4(fp)
  80f6c4:	10800804 	addi	r2,r2,32
  80f6c8:	e0bfff15 	stw	r2,-4(fp)
  80f6cc:	e0bfff17 	ldw	r2,-4(fp)
  80f6d0:	10820030 	cmpltui	r2,r2,2048
  80f6d4:	103ff81e 	bne	r2,zero,80f6b8 <alt_dcache_flush_all+0x14>
  80f6d8:	0001883a 	nop
  80f6dc:	0001883a 	nop
  80f6e0:	e037883a 	mov	sp,fp
  80f6e4:	df000017 	ldw	fp,0(sp)
  80f6e8:	dec00104 	addi	sp,sp,4
  80f6ec:	f800283a 	ret

0080f6f0 <alt_get_errno>:
  80f6f0:	defffe04 	addi	sp,sp,-8
  80f6f4:	dfc00115 	stw	ra,4(sp)
  80f6f8:	df000015 	stw	fp,0(sp)
  80f6fc:	d839883a 	mov	fp,sp
  80f700:	d0a00917 	ldw	r2,-32732(gp)
  80f704:	10000326 	beq	r2,zero,80f714 <alt_get_errno+0x24>
  80f708:	d0a00917 	ldw	r2,-32732(gp)
  80f70c:	103ee83a 	callr	r2
  80f710:	00000106 	br	80f718 <alt_get_errno+0x28>
  80f714:	d0a70704 	addi	r2,gp,-25572
  80f718:	e037883a 	mov	sp,fp
  80f71c:	dfc00117 	ldw	ra,4(sp)
  80f720:	df000017 	ldw	fp,0(sp)
  80f724:	dec00204 	addi	sp,sp,8
  80f728:	f800283a 	ret

0080f72c <alt_dev_llist_insert>:
  80f72c:	defffa04 	addi	sp,sp,-24
  80f730:	dfc00515 	stw	ra,20(sp)
  80f734:	df000415 	stw	fp,16(sp)
  80f738:	df000404 	addi	fp,sp,16
  80f73c:	e13ffd15 	stw	r4,-12(fp)
  80f740:	e17ffc15 	stw	r5,-16(fp)
  80f744:	e0bffd17 	ldw	r2,-12(fp)
  80f748:	10000326 	beq	r2,zero,80f758 <alt_dev_llist_insert+0x2c>
  80f74c:	e0bffd17 	ldw	r2,-12(fp)
  80f750:	10800217 	ldw	r2,8(r2)
  80f754:	1000061e 	bne	r2,zero,80f770 <alt_dev_llist_insert+0x44>
  80f758:	080f6f00 	call	80f6f0 <alt_get_errno>
  80f75c:	1007883a 	mov	r3,r2
  80f760:	00800584 	movi	r2,22
  80f764:	18800015 	stw	r2,0(r3)
  80f768:	00bffa84 	movi	r2,-22
  80f76c:	00001406 	br	80f7c0 <alt_dev_llist_insert+0x94>
  80f770:	e0bffd17 	ldw	r2,-12(fp)
  80f774:	e0fffc17 	ldw	r3,-16(fp)
  80f778:	e0ffff15 	stw	r3,-4(fp)
  80f77c:	e0bffe15 	stw	r2,-8(fp)
  80f780:	e0bffe17 	ldw	r2,-8(fp)
  80f784:	e0ffff17 	ldw	r3,-4(fp)
  80f788:	10c00115 	stw	r3,4(r2)
  80f78c:	e0bfff17 	ldw	r2,-4(fp)
  80f790:	10c00017 	ldw	r3,0(r2)
  80f794:	e0bffe17 	ldw	r2,-8(fp)
  80f798:	10c00015 	stw	r3,0(r2)
  80f79c:	e0bfff17 	ldw	r2,-4(fp)
  80f7a0:	10800017 	ldw	r2,0(r2)
  80f7a4:	e0fffe17 	ldw	r3,-8(fp)
  80f7a8:	10c00115 	stw	r3,4(r2)
  80f7ac:	e0bfff17 	ldw	r2,-4(fp)
  80f7b0:	e0fffe17 	ldw	r3,-8(fp)
  80f7b4:	10c00015 	stw	r3,0(r2)
  80f7b8:	0001883a 	nop
  80f7bc:	0005883a 	mov	r2,zero
  80f7c0:	e037883a 	mov	sp,fp
  80f7c4:	dfc00117 	ldw	ra,4(sp)
  80f7c8:	df000017 	ldw	fp,0(sp)
  80f7cc:	dec00204 	addi	sp,sp,8
  80f7d0:	f800283a 	ret

0080f7d4 <_do_ctors>:
  80f7d4:	defffd04 	addi	sp,sp,-12
  80f7d8:	dfc00215 	stw	ra,8(sp)
  80f7dc:	df000115 	stw	fp,4(sp)
  80f7e0:	df000104 	addi	fp,sp,4
  80f7e4:	00802074 	movhi	r2,129
  80f7e8:	10814e04 	addi	r2,r2,1336
  80f7ec:	e0bfff15 	stw	r2,-4(fp)
  80f7f0:	00000606 	br	80f80c <_do_ctors+0x38>
  80f7f4:	e0bfff17 	ldw	r2,-4(fp)
  80f7f8:	10800017 	ldw	r2,0(r2)
  80f7fc:	103ee83a 	callr	r2
  80f800:	e0bfff17 	ldw	r2,-4(fp)
  80f804:	10bfff04 	addi	r2,r2,-4
  80f808:	e0bfff15 	stw	r2,-4(fp)
  80f80c:	e0ffff17 	ldw	r3,-4(fp)
  80f810:	00802074 	movhi	r2,129
  80f814:	10814f04 	addi	r2,r2,1340
  80f818:	18bff62e 	bgeu	r3,r2,80f7f4 <_do_ctors+0x20>
  80f81c:	0001883a 	nop
  80f820:	0001883a 	nop
  80f824:	e037883a 	mov	sp,fp
  80f828:	dfc00117 	ldw	ra,4(sp)
  80f82c:	df000017 	ldw	fp,0(sp)
  80f830:	dec00204 	addi	sp,sp,8
  80f834:	f800283a 	ret

0080f838 <_do_dtors>:
  80f838:	defffd04 	addi	sp,sp,-12
  80f83c:	dfc00215 	stw	ra,8(sp)
  80f840:	df000115 	stw	fp,4(sp)
  80f844:	df000104 	addi	fp,sp,4
  80f848:	00802074 	movhi	r2,129
  80f84c:	10814e04 	addi	r2,r2,1336
  80f850:	e0bfff15 	stw	r2,-4(fp)
  80f854:	00000606 	br	80f870 <_do_dtors+0x38>
  80f858:	e0bfff17 	ldw	r2,-4(fp)
  80f85c:	10800017 	ldw	r2,0(r2)
  80f860:	103ee83a 	callr	r2
  80f864:	e0bfff17 	ldw	r2,-4(fp)
  80f868:	10bfff04 	addi	r2,r2,-4
  80f86c:	e0bfff15 	stw	r2,-4(fp)
  80f870:	e0ffff17 	ldw	r3,-4(fp)
  80f874:	00802074 	movhi	r2,129
  80f878:	10814f04 	addi	r2,r2,1340
  80f87c:	18bff62e 	bgeu	r3,r2,80f858 <_do_dtors+0x20>
  80f880:	0001883a 	nop
  80f884:	0001883a 	nop
  80f888:	e037883a 	mov	sp,fp
  80f88c:	dfc00117 	ldw	ra,4(sp)
  80f890:	df000017 	ldw	fp,0(sp)
  80f894:	dec00204 	addi	sp,sp,8
  80f898:	f800283a 	ret

0080f89c <alt_icache_flush_all>:
  80f89c:	defffe04 	addi	sp,sp,-8
  80f8a0:	dfc00115 	stw	ra,4(sp)
  80f8a4:	df000015 	stw	fp,0(sp)
  80f8a8:	d839883a 	mov	fp,sp
  80f8ac:	01420004 	movi	r5,2048
  80f8b0:	0009883a 	mov	r4,zero
  80f8b4:	08101a40 	call	8101a4 <alt_icache_flush>
  80f8b8:	0001883a 	nop
  80f8bc:	e037883a 	mov	sp,fp
  80f8c0:	dfc00117 	ldw	ra,4(sp)
  80f8c4:	df000017 	ldw	fp,0(sp)
  80f8c8:	dec00204 	addi	sp,sp,8
  80f8cc:	f800283a 	ret

0080f8d0 <alt_ic_isr_register>:
  80f8d0:	defff904 	addi	sp,sp,-28
  80f8d4:	dfc00615 	stw	ra,24(sp)
  80f8d8:	df000515 	stw	fp,20(sp)
  80f8dc:	df000504 	addi	fp,sp,20
  80f8e0:	e13fff15 	stw	r4,-4(fp)
  80f8e4:	e17ffe15 	stw	r5,-8(fp)
  80f8e8:	e1bffd15 	stw	r6,-12(fp)
  80f8ec:	e1fffc15 	stw	r7,-16(fp)
  80f8f0:	e0800217 	ldw	r2,8(fp)
  80f8f4:	d8800015 	stw	r2,0(sp)
  80f8f8:	e1fffc17 	ldw	r7,-16(fp)
  80f8fc:	e1bffd17 	ldw	r6,-12(fp)
  80f900:	e17ffe17 	ldw	r5,-8(fp)
  80f904:	e13fff17 	ldw	r4,-4(fp)
  80f908:	080fa800 	call	80fa80 <alt_iic_isr_register>
  80f90c:	e037883a 	mov	sp,fp
  80f910:	dfc00117 	ldw	ra,4(sp)
  80f914:	df000017 	ldw	fp,0(sp)
  80f918:	dec00204 	addi	sp,sp,8
  80f91c:	f800283a 	ret

0080f920 <alt_ic_irq_enable>:
  80f920:	defff904 	addi	sp,sp,-28
  80f924:	df000615 	stw	fp,24(sp)
  80f928:	df000604 	addi	fp,sp,24
  80f92c:	e13ffb15 	stw	r4,-20(fp)
  80f930:	e17ffa15 	stw	r5,-24(fp)
  80f934:	e0bffa17 	ldw	r2,-24(fp)
  80f938:	e0bfff15 	stw	r2,-4(fp)
  80f93c:	0005303a 	rdctl	r2,status
  80f940:	e0bffe15 	stw	r2,-8(fp)
  80f944:	e0fffe17 	ldw	r3,-8(fp)
  80f948:	00bfff84 	movi	r2,-2
  80f94c:	1884703a 	and	r2,r3,r2
  80f950:	1001703a 	wrctl	status,r2
  80f954:	e0bffe17 	ldw	r2,-8(fp)
  80f958:	e0bffd15 	stw	r2,-12(fp)
  80f95c:	00c00044 	movi	r3,1
  80f960:	e0bfff17 	ldw	r2,-4(fp)
  80f964:	1884983a 	sll	r2,r3,r2
  80f968:	1007883a 	mov	r3,r2
  80f96c:	d0a70e17 	ldw	r2,-25544(gp)
  80f970:	1884b03a 	or	r2,r3,r2
  80f974:	d0a70e15 	stw	r2,-25544(gp)
  80f978:	d0a70e17 	ldw	r2,-25544(gp)
  80f97c:	100170fa 	wrctl	ienable,r2
  80f980:	e0bffd17 	ldw	r2,-12(fp)
  80f984:	e0bffc15 	stw	r2,-16(fp)
  80f988:	e0bffc17 	ldw	r2,-16(fp)
  80f98c:	1001703a 	wrctl	status,r2
  80f990:	0001883a 	nop
  80f994:	0005883a 	mov	r2,zero
  80f998:	e037883a 	mov	sp,fp
  80f99c:	df000017 	ldw	fp,0(sp)
  80f9a0:	dec00104 	addi	sp,sp,4
  80f9a4:	f800283a 	ret

0080f9a8 <alt_ic_irq_disable>:
  80f9a8:	defff904 	addi	sp,sp,-28
  80f9ac:	df000615 	stw	fp,24(sp)
  80f9b0:	df000604 	addi	fp,sp,24
  80f9b4:	e13ffb15 	stw	r4,-20(fp)
  80f9b8:	e17ffa15 	stw	r5,-24(fp)
  80f9bc:	e0bffa17 	ldw	r2,-24(fp)
  80f9c0:	e0bfff15 	stw	r2,-4(fp)
  80f9c4:	0005303a 	rdctl	r2,status
  80f9c8:	e0bffe15 	stw	r2,-8(fp)
  80f9cc:	e0fffe17 	ldw	r3,-8(fp)
  80f9d0:	00bfff84 	movi	r2,-2
  80f9d4:	1884703a 	and	r2,r3,r2
  80f9d8:	1001703a 	wrctl	status,r2
  80f9dc:	e0bffe17 	ldw	r2,-8(fp)
  80f9e0:	e0bffd15 	stw	r2,-12(fp)
  80f9e4:	00c00044 	movi	r3,1
  80f9e8:	e0bfff17 	ldw	r2,-4(fp)
  80f9ec:	1884983a 	sll	r2,r3,r2
  80f9f0:	0084303a 	nor	r2,zero,r2
  80f9f4:	1007883a 	mov	r3,r2
  80f9f8:	d0a70e17 	ldw	r2,-25544(gp)
  80f9fc:	1884703a 	and	r2,r3,r2
  80fa00:	d0a70e15 	stw	r2,-25544(gp)
  80fa04:	d0a70e17 	ldw	r2,-25544(gp)
  80fa08:	100170fa 	wrctl	ienable,r2
  80fa0c:	e0bffd17 	ldw	r2,-12(fp)
  80fa10:	e0bffc15 	stw	r2,-16(fp)
  80fa14:	e0bffc17 	ldw	r2,-16(fp)
  80fa18:	1001703a 	wrctl	status,r2
  80fa1c:	0001883a 	nop
  80fa20:	0005883a 	mov	r2,zero
  80fa24:	e037883a 	mov	sp,fp
  80fa28:	df000017 	ldw	fp,0(sp)
  80fa2c:	dec00104 	addi	sp,sp,4
  80fa30:	f800283a 	ret

0080fa34 <alt_ic_irq_enabled>:
  80fa34:	defffc04 	addi	sp,sp,-16
  80fa38:	df000315 	stw	fp,12(sp)
  80fa3c:	df000304 	addi	fp,sp,12
  80fa40:	e13ffe15 	stw	r4,-8(fp)
  80fa44:	e17ffd15 	stw	r5,-12(fp)
  80fa48:	000530fa 	rdctl	r2,ienable
  80fa4c:	e0bfff15 	stw	r2,-4(fp)
  80fa50:	00c00044 	movi	r3,1
  80fa54:	e0bffd17 	ldw	r2,-12(fp)
  80fa58:	1884983a 	sll	r2,r3,r2
  80fa5c:	1007883a 	mov	r3,r2
  80fa60:	e0bfff17 	ldw	r2,-4(fp)
  80fa64:	1884703a 	and	r2,r3,r2
  80fa68:	1004c03a 	cmpne	r2,r2,zero
  80fa6c:	10803fcc 	andi	r2,r2,255
  80fa70:	e037883a 	mov	sp,fp
  80fa74:	df000017 	ldw	fp,0(sp)
  80fa78:	dec00104 	addi	sp,sp,4
  80fa7c:	f800283a 	ret

0080fa80 <alt_iic_isr_register>:
  80fa80:	defff504 	addi	sp,sp,-44
  80fa84:	dfc00a15 	stw	ra,40(sp)
  80fa88:	df000915 	stw	fp,36(sp)
  80fa8c:	df000904 	addi	fp,sp,36
  80fa90:	e13ffa15 	stw	r4,-24(fp)
  80fa94:	e17ff915 	stw	r5,-28(fp)
  80fa98:	e1bff815 	stw	r6,-32(fp)
  80fa9c:	e1fff715 	stw	r7,-36(fp)
  80faa0:	00bffa84 	movi	r2,-22
  80faa4:	e0bfff15 	stw	r2,-4(fp)
  80faa8:	e0bff917 	ldw	r2,-28(fp)
  80faac:	e0bffe15 	stw	r2,-8(fp)
  80fab0:	e0bffe17 	ldw	r2,-8(fp)
  80fab4:	10800808 	cmpgei	r2,r2,32
  80fab8:	1000251e 	bne	r2,zero,80fb50 <alt_iic_isr_register+0xd0>
  80fabc:	0005303a 	rdctl	r2,status
  80fac0:	e0bffc15 	stw	r2,-16(fp)
  80fac4:	e0fffc17 	ldw	r3,-16(fp)
  80fac8:	00bfff84 	movi	r2,-2
  80facc:	1884703a 	and	r2,r3,r2
  80fad0:	1001703a 	wrctl	status,r2
  80fad4:	e0bffc17 	ldw	r2,-16(fp)
  80fad8:	e0bffd15 	stw	r2,-12(fp)
  80fadc:	e0bffe17 	ldw	r2,-8(fp)
  80fae0:	100890fa 	slli	r4,r2,3
  80fae4:	e0fff817 	ldw	r3,-32(fp)
  80fae8:	00802074 	movhi	r2,129
  80faec:	2085883a 	add	r2,r4,r2
  80faf0:	10d0fa15 	stw	r3,17384(r2)
  80faf4:	e0bffe17 	ldw	r2,-8(fp)
  80faf8:	100890fa 	slli	r4,r2,3
  80fafc:	e0fff717 	ldw	r3,-36(fp)
  80fb00:	00802074 	movhi	r2,129
  80fb04:	2085883a 	add	r2,r4,r2
  80fb08:	10d0fb15 	stw	r3,17388(r2)
  80fb0c:	e0bff817 	ldw	r2,-32(fp)
  80fb10:	10000526 	beq	r2,zero,80fb28 <alt_iic_isr_register+0xa8>
  80fb14:	e0bffe17 	ldw	r2,-8(fp)
  80fb18:	100b883a 	mov	r5,r2
  80fb1c:	e13ffa17 	ldw	r4,-24(fp)
  80fb20:	080f9200 	call	80f920 <alt_ic_irq_enable>
  80fb24:	00000406 	br	80fb38 <alt_iic_isr_register+0xb8>
  80fb28:	e0bffe17 	ldw	r2,-8(fp)
  80fb2c:	100b883a 	mov	r5,r2
  80fb30:	e13ffa17 	ldw	r4,-24(fp)
  80fb34:	080f9a80 	call	80f9a8 <alt_ic_irq_disable>
  80fb38:	e0bfff15 	stw	r2,-4(fp)
  80fb3c:	e0bffd17 	ldw	r2,-12(fp)
  80fb40:	e0bffb15 	stw	r2,-20(fp)
  80fb44:	e0bffb17 	ldw	r2,-20(fp)
  80fb48:	1001703a 	wrctl	status,r2
  80fb4c:	0001883a 	nop
  80fb50:	e0bfff17 	ldw	r2,-4(fp)
  80fb54:	e037883a 	mov	sp,fp
  80fb58:	dfc00117 	ldw	ra,4(sp)
  80fb5c:	df000017 	ldw	fp,0(sp)
  80fb60:	dec00204 	addi	sp,sp,8
  80fb64:	f800283a 	ret

0080fb68 <alt_open_fd>:
  80fb68:	defff904 	addi	sp,sp,-28
  80fb6c:	dfc00615 	stw	ra,24(sp)
  80fb70:	df000515 	stw	fp,20(sp)
  80fb74:	df000504 	addi	fp,sp,20
  80fb78:	e13ffe15 	stw	r4,-8(fp)
  80fb7c:	e17ffd15 	stw	r5,-12(fp)
  80fb80:	e1bffc15 	stw	r6,-16(fp)
  80fb84:	e1fffb15 	stw	r7,-20(fp)
  80fb88:	e1bffb17 	ldw	r6,-20(fp)
  80fb8c:	e17ffc17 	ldw	r5,-16(fp)
  80fb90:	e13ffd17 	ldw	r4,-12(fp)
  80fb94:	080fdd00 	call	80fdd0 <open>
  80fb98:	e0bfff15 	stw	r2,-4(fp)
  80fb9c:	e0bfff17 	ldw	r2,-4(fp)
  80fba0:	10002016 	blt	r2,zero,80fc24 <alt_open_fd+0xbc>
  80fba4:	e0ffff17 	ldw	r3,-4(fp)
  80fba8:	1805883a 	mov	r2,r3
  80fbac:	1085883a 	add	r2,r2,r2
  80fbb0:	10c5883a 	add	r2,r2,r3
  80fbb4:	100490ba 	slli	r2,r2,2
  80fbb8:	00c02074 	movhi	r3,129
  80fbbc:	10c7883a 	add	r3,r2,r3
  80fbc0:	18c56817 	ldw	r3,5536(r3)
  80fbc4:	e0bffe17 	ldw	r2,-8(fp)
  80fbc8:	10c00015 	stw	r3,0(r2)
  80fbcc:	e0ffff17 	ldw	r3,-4(fp)
  80fbd0:	1805883a 	mov	r2,r3
  80fbd4:	1085883a 	add	r2,r2,r2
  80fbd8:	10c5883a 	add	r2,r2,r3
  80fbdc:	100490ba 	slli	r2,r2,2
  80fbe0:	00c02074 	movhi	r3,129
  80fbe4:	10c7883a 	add	r3,r2,r3
  80fbe8:	18c56917 	ldw	r3,5540(r3)
  80fbec:	e0bffe17 	ldw	r2,-8(fp)
  80fbf0:	10c00115 	stw	r3,4(r2)
  80fbf4:	e0ffff17 	ldw	r3,-4(fp)
  80fbf8:	1805883a 	mov	r2,r3
  80fbfc:	1085883a 	add	r2,r2,r2
  80fc00:	10c5883a 	add	r2,r2,r3
  80fc04:	100490ba 	slli	r2,r2,2
  80fc08:	00c02074 	movhi	r3,129
  80fc0c:	10c7883a 	add	r3,r2,r3
  80fc10:	18c56a17 	ldw	r3,5544(r3)
  80fc14:	e0bffe17 	ldw	r2,-8(fp)
  80fc18:	10c00215 	stw	r3,8(r2)
  80fc1c:	e13fff17 	ldw	r4,-4(fp)
  80fc20:	080e5140 	call	80e514 <alt_release_fd>
  80fc24:	0001883a 	nop
  80fc28:	e037883a 	mov	sp,fp
  80fc2c:	dfc00117 	ldw	ra,4(sp)
  80fc30:	df000017 	ldw	fp,0(sp)
  80fc34:	dec00204 	addi	sp,sp,8
  80fc38:	f800283a 	ret

0080fc3c <alt_io_redirect>:
  80fc3c:	defffb04 	addi	sp,sp,-20
  80fc40:	dfc00415 	stw	ra,16(sp)
  80fc44:	df000315 	stw	fp,12(sp)
  80fc48:	df000304 	addi	fp,sp,12
  80fc4c:	e13fff15 	stw	r4,-4(fp)
  80fc50:	e17ffe15 	stw	r5,-8(fp)
  80fc54:	e1bffd15 	stw	r6,-12(fp)
  80fc58:	01c07fc4 	movi	r7,511
  80fc5c:	01800044 	movi	r6,1
  80fc60:	e17fff17 	ldw	r5,-4(fp)
  80fc64:	01002074 	movhi	r4,129
  80fc68:	21056b04 	addi	r4,r4,5548
  80fc6c:	080fb680 	call	80fb68 <alt_open_fd>
  80fc70:	01c07fc4 	movi	r7,511
  80fc74:	000d883a 	mov	r6,zero
  80fc78:	e17ffe17 	ldw	r5,-8(fp)
  80fc7c:	01002074 	movhi	r4,129
  80fc80:	21056804 	addi	r4,r4,5536
  80fc84:	080fb680 	call	80fb68 <alt_open_fd>
  80fc88:	01c07fc4 	movi	r7,511
  80fc8c:	01800044 	movi	r6,1
  80fc90:	e17ffd17 	ldw	r5,-12(fp)
  80fc94:	01002074 	movhi	r4,129
  80fc98:	21056e04 	addi	r4,r4,5560
  80fc9c:	080fb680 	call	80fb68 <alt_open_fd>
  80fca0:	0001883a 	nop
  80fca4:	e037883a 	mov	sp,fp
  80fca8:	dfc00117 	ldw	ra,4(sp)
  80fcac:	df000017 	ldw	fp,0(sp)
  80fcb0:	dec00204 	addi	sp,sp,8
  80fcb4:	f800283a 	ret

0080fcb8 <alt_get_errno>:
  80fcb8:	defffe04 	addi	sp,sp,-8
  80fcbc:	dfc00115 	stw	ra,4(sp)
  80fcc0:	df000015 	stw	fp,0(sp)
  80fcc4:	d839883a 	mov	fp,sp
  80fcc8:	d0a00917 	ldw	r2,-32732(gp)
  80fccc:	10000326 	beq	r2,zero,80fcdc <alt_get_errno+0x24>
  80fcd0:	d0a00917 	ldw	r2,-32732(gp)
  80fcd4:	103ee83a 	callr	r2
  80fcd8:	00000106 	br	80fce0 <alt_get_errno+0x28>
  80fcdc:	d0a70704 	addi	r2,gp,-25572
  80fce0:	e037883a 	mov	sp,fp
  80fce4:	dfc00117 	ldw	ra,4(sp)
  80fce8:	df000017 	ldw	fp,0(sp)
  80fcec:	dec00204 	addi	sp,sp,8
  80fcf0:	f800283a 	ret

0080fcf4 <alt_file_locked>:
  80fcf4:	defffd04 	addi	sp,sp,-12
  80fcf8:	df000215 	stw	fp,8(sp)
  80fcfc:	df000204 	addi	fp,sp,8
  80fd00:	e13ffe15 	stw	r4,-8(fp)
  80fd04:	e0bffe17 	ldw	r2,-8(fp)
  80fd08:	10800217 	ldw	r2,8(r2)
  80fd0c:	10d00034 	orhi	r3,r2,16384
  80fd10:	e0bffe17 	ldw	r2,-8(fp)
  80fd14:	10c00215 	stw	r3,8(r2)
  80fd18:	e03fff15 	stw	zero,-4(fp)
  80fd1c:	00002306 	br	80fdac <alt_file_locked+0xb8>
  80fd20:	e0ffff17 	ldw	r3,-4(fp)
  80fd24:	1805883a 	mov	r2,r3
  80fd28:	1085883a 	add	r2,r2,r2
  80fd2c:	10c5883a 	add	r2,r2,r3
  80fd30:	100490ba 	slli	r2,r2,2
  80fd34:	00c02074 	movhi	r3,129
  80fd38:	10c7883a 	add	r3,r2,r3
  80fd3c:	18c56817 	ldw	r3,5536(r3)
  80fd40:	e0bffe17 	ldw	r2,-8(fp)
  80fd44:	10800017 	ldw	r2,0(r2)
  80fd48:	1880151e 	bne	r3,r2,80fda0 <alt_file_locked+0xac>
  80fd4c:	e0ffff17 	ldw	r3,-4(fp)
  80fd50:	1805883a 	mov	r2,r3
  80fd54:	1085883a 	add	r2,r2,r2
  80fd58:	10c5883a 	add	r2,r2,r3
  80fd5c:	100490ba 	slli	r2,r2,2
  80fd60:	00c02074 	movhi	r3,129
  80fd64:	10c7883a 	add	r3,r2,r3
  80fd68:	18856a17 	ldw	r2,5544(r3)
  80fd6c:	10000c0e 	bge	r2,zero,80fda0 <alt_file_locked+0xac>
  80fd70:	e0ffff17 	ldw	r3,-4(fp)
  80fd74:	1805883a 	mov	r2,r3
  80fd78:	1085883a 	add	r2,r2,r2
  80fd7c:	10c5883a 	add	r2,r2,r3
  80fd80:	100490ba 	slli	r2,r2,2
  80fd84:	00c02074 	movhi	r3,129
  80fd88:	18c56804 	addi	r3,r3,5536
  80fd8c:	10c5883a 	add	r2,r2,r3
  80fd90:	e0fffe17 	ldw	r3,-8(fp)
  80fd94:	18800226 	beq	r3,r2,80fda0 <alt_file_locked+0xac>
  80fd98:	00bffcc4 	movi	r2,-13
  80fd9c:	00000806 	br	80fdc0 <alt_file_locked+0xcc>
  80fda0:	e0bfff17 	ldw	r2,-4(fp)
  80fda4:	10800044 	addi	r2,r2,1
  80fda8:	e0bfff15 	stw	r2,-4(fp)
  80fdac:	d0a00817 	ldw	r2,-32736(gp)
  80fdb0:	1007883a 	mov	r3,r2
  80fdb4:	e0bfff17 	ldw	r2,-4(fp)
  80fdb8:	18bfd92e 	bgeu	r3,r2,80fd20 <alt_file_locked+0x2c>
  80fdbc:	0005883a 	mov	r2,zero
  80fdc0:	e037883a 	mov	sp,fp
  80fdc4:	df000017 	ldw	fp,0(sp)
  80fdc8:	dec00104 	addi	sp,sp,4
  80fdcc:	f800283a 	ret

0080fdd0 <open>:
  80fdd0:	defff604 	addi	sp,sp,-40
  80fdd4:	dfc00915 	stw	ra,36(sp)
  80fdd8:	df000815 	stw	fp,32(sp)
  80fddc:	df000804 	addi	fp,sp,32
  80fde0:	e13ffa15 	stw	r4,-24(fp)
  80fde4:	e17ff915 	stw	r5,-28(fp)
  80fde8:	e1bff815 	stw	r6,-32(fp)
  80fdec:	00bfffc4 	movi	r2,-1
  80fdf0:	e0bffe15 	stw	r2,-8(fp)
  80fdf4:	00bffb44 	movi	r2,-19
  80fdf8:	e0bffd15 	stw	r2,-12(fp)
  80fdfc:	e03ffc15 	stw	zero,-16(fp)
  80fe00:	d1600604 	addi	r5,gp,-32744
  80fe04:	e13ffa17 	ldw	r4,-24(fp)
  80fe08:	080ff540 	call	80ff54 <alt_find_dev>
  80fe0c:	e0bfff15 	stw	r2,-4(fp)
  80fe10:	e0bfff17 	ldw	r2,-4(fp)
  80fe14:	1000051e 	bne	r2,zero,80fe2c <open+0x5c>
  80fe18:	e13ffa17 	ldw	r4,-24(fp)
  80fe1c:	080ffe40 	call	80ffe4 <alt_find_file>
  80fe20:	e0bfff15 	stw	r2,-4(fp)
  80fe24:	00800044 	movi	r2,1
  80fe28:	e0bffc15 	stw	r2,-16(fp)
  80fe2c:	e0bfff17 	ldw	r2,-4(fp)
  80fe30:	10002c26 	beq	r2,zero,80fee4 <open+0x114>
  80fe34:	e13fff17 	ldw	r4,-4(fp)
  80fe38:	08100ec0 	call	8100ec <alt_get_fd>
  80fe3c:	e0bffe15 	stw	r2,-8(fp)
  80fe40:	e0bffe17 	ldw	r2,-8(fp)
  80fe44:	1000030e 	bge	r2,zero,80fe54 <open+0x84>
  80fe48:	e0bffe17 	ldw	r2,-8(fp)
  80fe4c:	e0bffd15 	stw	r2,-12(fp)
  80fe50:	00002606 	br	80feec <open+0x11c>
  80fe54:	e0fffe17 	ldw	r3,-8(fp)
  80fe58:	1805883a 	mov	r2,r3
  80fe5c:	1085883a 	add	r2,r2,r2
  80fe60:	10c5883a 	add	r2,r2,r3
  80fe64:	100490ba 	slli	r2,r2,2
  80fe68:	00c02074 	movhi	r3,129
  80fe6c:	18c56804 	addi	r3,r3,5536
  80fe70:	10c5883a 	add	r2,r2,r3
  80fe74:	e0bffb15 	stw	r2,-20(fp)
  80fe78:	e0fff917 	ldw	r3,-28(fp)
  80fe7c:	00900034 	movhi	r2,16384
  80fe80:	10bfffc4 	addi	r2,r2,-1
  80fe84:	1886703a 	and	r3,r3,r2
  80fe88:	e0bffb17 	ldw	r2,-20(fp)
  80fe8c:	10c00215 	stw	r3,8(r2)
  80fe90:	e0bffc17 	ldw	r2,-16(fp)
  80fe94:	1000051e 	bne	r2,zero,80feac <open+0xdc>
  80fe98:	e13ffb17 	ldw	r4,-20(fp)
  80fe9c:	080fcf40 	call	80fcf4 <alt_file_locked>
  80fea0:	e0bffd15 	stw	r2,-12(fp)
  80fea4:	e0bffd17 	ldw	r2,-12(fp)
  80fea8:	10001016 	blt	r2,zero,80feec <open+0x11c>
  80feac:	e0bfff17 	ldw	r2,-4(fp)
  80feb0:	10800317 	ldw	r2,12(r2)
  80feb4:	10000826 	beq	r2,zero,80fed8 <open+0x108>
  80feb8:	e0bfff17 	ldw	r2,-4(fp)
  80febc:	10800317 	ldw	r2,12(r2)
  80fec0:	e1fff817 	ldw	r7,-32(fp)
  80fec4:	e1bff917 	ldw	r6,-28(fp)
  80fec8:	e17ffa17 	ldw	r5,-24(fp)
  80fecc:	e13ffb17 	ldw	r4,-20(fp)
  80fed0:	103ee83a 	callr	r2
  80fed4:	00000106 	br	80fedc <open+0x10c>
  80fed8:	0005883a 	mov	r2,zero
  80fedc:	e0bffd15 	stw	r2,-12(fp)
  80fee0:	00000206 	br	80feec <open+0x11c>
  80fee4:	00bffb44 	movi	r2,-19
  80fee8:	e0bffd15 	stw	r2,-12(fp)
  80feec:	e0bffd17 	ldw	r2,-12(fp)
  80fef0:	1000090e 	bge	r2,zero,80ff18 <open+0x148>
  80fef4:	e13ffe17 	ldw	r4,-8(fp)
  80fef8:	080e5140 	call	80e514 <alt_release_fd>
  80fefc:	080fcb80 	call	80fcb8 <alt_get_errno>
  80ff00:	1007883a 	mov	r3,r2
  80ff04:	e0bffd17 	ldw	r2,-12(fp)
  80ff08:	0085c83a 	sub	r2,zero,r2
  80ff0c:	18800015 	stw	r2,0(r3)
  80ff10:	00bfffc4 	movi	r2,-1
  80ff14:	00000106 	br	80ff1c <open+0x14c>
  80ff18:	e0bffe17 	ldw	r2,-8(fp)
  80ff1c:	e037883a 	mov	sp,fp
  80ff20:	dfc00117 	ldw	ra,4(sp)
  80ff24:	df000017 	ldw	fp,0(sp)
  80ff28:	dec00204 	addi	sp,sp,8
  80ff2c:	f800283a 	ret

0080ff30 <altera_nios2_gen2_irq_init>:
  80ff30:	deffff04 	addi	sp,sp,-4
  80ff34:	df000015 	stw	fp,0(sp)
  80ff38:	d839883a 	mov	fp,sp
  80ff3c:	000170fa 	wrctl	ienable,zero
  80ff40:	0001883a 	nop
  80ff44:	e037883a 	mov	sp,fp
  80ff48:	df000017 	ldw	fp,0(sp)
  80ff4c:	dec00104 	addi	sp,sp,4
  80ff50:	f800283a 	ret

0080ff54 <alt_find_dev>:
  80ff54:	defffa04 	addi	sp,sp,-24
  80ff58:	dfc00515 	stw	ra,20(sp)
  80ff5c:	df000415 	stw	fp,16(sp)
  80ff60:	df000404 	addi	fp,sp,16
  80ff64:	e13ffd15 	stw	r4,-12(fp)
  80ff68:	e17ffc15 	stw	r5,-16(fp)
  80ff6c:	e0bffc17 	ldw	r2,-16(fp)
  80ff70:	10800017 	ldw	r2,0(r2)
  80ff74:	e0bfff15 	stw	r2,-4(fp)
  80ff78:	e13ffd17 	ldw	r4,-12(fp)
  80ff7c:	08018300 	call	801830 <strlen>
  80ff80:	10800044 	addi	r2,r2,1
  80ff84:	e0bffe15 	stw	r2,-8(fp)
  80ff88:	00000d06 	br	80ffc0 <alt_find_dev+0x6c>
  80ff8c:	e0bfff17 	ldw	r2,-4(fp)
  80ff90:	10800217 	ldw	r2,8(r2)
  80ff94:	e0fffe17 	ldw	r3,-8(fp)
  80ff98:	180d883a 	mov	r6,r3
  80ff9c:	e17ffd17 	ldw	r5,-12(fp)
  80ffa0:	1009883a 	mov	r4,r2
  80ffa4:	08103140 	call	810314 <memcmp>
  80ffa8:	1000021e 	bne	r2,zero,80ffb4 <alt_find_dev+0x60>
  80ffac:	e0bfff17 	ldw	r2,-4(fp)
  80ffb0:	00000706 	br	80ffd0 <alt_find_dev+0x7c>
  80ffb4:	e0bfff17 	ldw	r2,-4(fp)
  80ffb8:	10800017 	ldw	r2,0(r2)
  80ffbc:	e0bfff15 	stw	r2,-4(fp)
  80ffc0:	e0ffff17 	ldw	r3,-4(fp)
  80ffc4:	e0bffc17 	ldw	r2,-16(fp)
  80ffc8:	18bff01e 	bne	r3,r2,80ff8c <alt_find_dev+0x38>
  80ffcc:	0005883a 	mov	r2,zero
  80ffd0:	e037883a 	mov	sp,fp
  80ffd4:	dfc00117 	ldw	ra,4(sp)
  80ffd8:	df000017 	ldw	fp,0(sp)
  80ffdc:	dec00204 	addi	sp,sp,8
  80ffe0:	f800283a 	ret

0080ffe4 <alt_find_file>:
  80ffe4:	defffb04 	addi	sp,sp,-20
  80ffe8:	dfc00415 	stw	ra,16(sp)
  80ffec:	df000315 	stw	fp,12(sp)
  80fff0:	df000304 	addi	fp,sp,12
  80fff4:	e13ffd15 	stw	r4,-12(fp)
  80fff8:	d0a00417 	ldw	r2,-32752(gp)
  80fffc:	e0bfff15 	stw	r2,-4(fp)
  810000:	00003106 	br	8100c8 <alt_find_file+0xe4>
  810004:	e0bfff17 	ldw	r2,-4(fp)
  810008:	10800217 	ldw	r2,8(r2)
  81000c:	1009883a 	mov	r4,r2
  810010:	08018300 	call	801830 <strlen>
  810014:	e0bffe15 	stw	r2,-8(fp)
  810018:	e0bfff17 	ldw	r2,-4(fp)
  81001c:	10c00217 	ldw	r3,8(r2)
  810020:	e0bffe17 	ldw	r2,-8(fp)
  810024:	10bfffc4 	addi	r2,r2,-1
  810028:	1885883a 	add	r2,r3,r2
  81002c:	10800003 	ldbu	r2,0(r2)
  810030:	10803fcc 	andi	r2,r2,255
  810034:	1080201c 	xori	r2,r2,128
  810038:	10bfe004 	addi	r2,r2,-128
  81003c:	10800bd8 	cmpnei	r2,r2,47
  810040:	1000031e 	bne	r2,zero,810050 <alt_find_file+0x6c>
  810044:	e0bffe17 	ldw	r2,-8(fp)
  810048:	10bfffc4 	addi	r2,r2,-1
  81004c:	e0bffe15 	stw	r2,-8(fp)
  810050:	e0bffe17 	ldw	r2,-8(fp)
  810054:	e0fffd17 	ldw	r3,-12(fp)
  810058:	1885883a 	add	r2,r3,r2
  81005c:	10800003 	ldbu	r2,0(r2)
  810060:	10803fcc 	andi	r2,r2,255
  810064:	1080201c 	xori	r2,r2,128
  810068:	10bfe004 	addi	r2,r2,-128
  81006c:	10800be0 	cmpeqi	r2,r2,47
  810070:	1000081e 	bne	r2,zero,810094 <alt_find_file+0xb0>
  810074:	e0bffe17 	ldw	r2,-8(fp)
  810078:	e0fffd17 	ldw	r3,-12(fp)
  81007c:	1885883a 	add	r2,r3,r2
  810080:	10800003 	ldbu	r2,0(r2)
  810084:	10803fcc 	andi	r2,r2,255
  810088:	1080201c 	xori	r2,r2,128
  81008c:	10bfe004 	addi	r2,r2,-128
  810090:	10000a1e 	bne	r2,zero,8100bc <alt_find_file+0xd8>
  810094:	e0bfff17 	ldw	r2,-4(fp)
  810098:	10800217 	ldw	r2,8(r2)
  81009c:	e0fffe17 	ldw	r3,-8(fp)
  8100a0:	180d883a 	mov	r6,r3
  8100a4:	e17ffd17 	ldw	r5,-12(fp)
  8100a8:	1009883a 	mov	r4,r2
  8100ac:	08103140 	call	810314 <memcmp>
  8100b0:	1000021e 	bne	r2,zero,8100bc <alt_find_file+0xd8>
  8100b4:	e0bfff17 	ldw	r2,-4(fp)
  8100b8:	00000706 	br	8100d8 <alt_find_file+0xf4>
  8100bc:	e0bfff17 	ldw	r2,-4(fp)
  8100c0:	10800017 	ldw	r2,0(r2)
  8100c4:	e0bfff15 	stw	r2,-4(fp)
  8100c8:	e0ffff17 	ldw	r3,-4(fp)
  8100cc:	d0a00404 	addi	r2,gp,-32752
  8100d0:	18bfcc1e 	bne	r3,r2,810004 <alt_find_file+0x20>
  8100d4:	0005883a 	mov	r2,zero
  8100d8:	e037883a 	mov	sp,fp
  8100dc:	dfc00117 	ldw	ra,4(sp)
  8100e0:	df000017 	ldw	fp,0(sp)
  8100e4:	dec00204 	addi	sp,sp,8
  8100e8:	f800283a 	ret

008100ec <alt_get_fd>:
  8100ec:	defffc04 	addi	sp,sp,-16
  8100f0:	df000315 	stw	fp,12(sp)
  8100f4:	df000304 	addi	fp,sp,12
  8100f8:	e13ffd15 	stw	r4,-12(fp)
  8100fc:	00bffa04 	movi	r2,-24
  810100:	e0bffe15 	stw	r2,-8(fp)
  810104:	e03fff15 	stw	zero,-4(fp)
  810108:	00001d06 	br	810180 <alt_get_fd+0x94>
  81010c:	e0ffff17 	ldw	r3,-4(fp)
  810110:	1805883a 	mov	r2,r3
  810114:	1085883a 	add	r2,r2,r2
  810118:	10c5883a 	add	r2,r2,r3
  81011c:	100490ba 	slli	r2,r2,2
  810120:	00c02074 	movhi	r3,129
  810124:	10c7883a 	add	r3,r2,r3
  810128:	18856817 	ldw	r2,5536(r3)
  81012c:	1000111e 	bne	r2,zero,810174 <alt_get_fd+0x88>
  810130:	e0ffff17 	ldw	r3,-4(fp)
  810134:	1805883a 	mov	r2,r3
  810138:	1085883a 	add	r2,r2,r2
  81013c:	10c5883a 	add	r2,r2,r3
  810140:	100490ba 	slli	r2,r2,2
  810144:	e13ffd17 	ldw	r4,-12(fp)
  810148:	00c02074 	movhi	r3,129
  81014c:	10c7883a 	add	r3,r2,r3
  810150:	19056815 	stw	r4,5536(r3)
  810154:	d0e00817 	ldw	r3,-32736(gp)
  810158:	e0bfff17 	ldw	r2,-4(fp)
  81015c:	1880020e 	bge	r3,r2,810168 <alt_get_fd+0x7c>
  810160:	e0bfff17 	ldw	r2,-4(fp)
  810164:	d0a00815 	stw	r2,-32736(gp)
  810168:	e0bfff17 	ldw	r2,-4(fp)
  81016c:	e0bffe15 	stw	r2,-8(fp)
  810170:	00000706 	br	810190 <alt_get_fd+0xa4>
  810174:	e0bfff17 	ldw	r2,-4(fp)
  810178:	10800044 	addi	r2,r2,1
  81017c:	e0bfff15 	stw	r2,-4(fp)
  810180:	e0bfff17 	ldw	r2,-4(fp)
  810184:	10800810 	cmplti	r2,r2,32
  810188:	103fe01e 	bne	r2,zero,81010c <alt_get_fd+0x20>
  81018c:	0001883a 	nop
  810190:	e0bffe17 	ldw	r2,-8(fp)
  810194:	e037883a 	mov	sp,fp
  810198:	df000017 	ldw	fp,0(sp)
  81019c:	dec00104 	addi	sp,sp,4
  8101a0:	f800283a 	ret

008101a4 <alt_icache_flush>:
  8101a4:	defffb04 	addi	sp,sp,-20
  8101a8:	df000415 	stw	fp,16(sp)
  8101ac:	df000404 	addi	fp,sp,16
  8101b0:	e13ffd15 	stw	r4,-12(fp)
  8101b4:	e17ffc15 	stw	r5,-16(fp)
  8101b8:	e0bffc17 	ldw	r2,-16(fp)
  8101bc:	10820070 	cmpltui	r2,r2,2049
  8101c0:	1000021e 	bne	r2,zero,8101cc <alt_icache_flush+0x28>
  8101c4:	00820004 	movi	r2,2048
  8101c8:	e0bffc15 	stw	r2,-16(fp)
  8101cc:	e0fffd17 	ldw	r3,-12(fp)
  8101d0:	e0bffc17 	ldw	r2,-16(fp)
  8101d4:	1885883a 	add	r2,r3,r2
  8101d8:	e0bffe15 	stw	r2,-8(fp)
  8101dc:	e0bffd17 	ldw	r2,-12(fp)
  8101e0:	e0bfff15 	stw	r2,-4(fp)
  8101e4:	00000506 	br	8101fc <alt_icache_flush+0x58>
  8101e8:	e0bfff17 	ldw	r2,-4(fp)
  8101ec:	1000603a 	flushi	r2
  8101f0:	e0bfff17 	ldw	r2,-4(fp)
  8101f4:	10800804 	addi	r2,r2,32
  8101f8:	e0bfff15 	stw	r2,-4(fp)
  8101fc:	e0ffff17 	ldw	r3,-4(fp)
  810200:	e0bffe17 	ldw	r2,-8(fp)
  810204:	18bff836 	bltu	r3,r2,8101e8 <alt_icache_flush+0x44>
  810208:	e0bffd17 	ldw	r2,-12(fp)
  81020c:	108007cc 	andi	r2,r2,31
  810210:	10000226 	beq	r2,zero,81021c <alt_icache_flush+0x78>
  810214:	e0bfff17 	ldw	r2,-4(fp)
  810218:	1000603a 	flushi	r2
  81021c:	0000203a 	flushp
  810220:	0001883a 	nop
  810224:	e037883a 	mov	sp,fp
  810228:	df000017 	ldw	fp,0(sp)
  81022c:	dec00104 	addi	sp,sp,4
  810230:	f800283a 	ret

00810234 <alt_exception_cause_generated_bad_addr>:
  810234:	defffe04 	addi	sp,sp,-8
  810238:	df000115 	stw	fp,4(sp)
  81023c:	df000104 	addi	fp,sp,4
  810240:	e13fff15 	stw	r4,-4(fp)
  810244:	e0bfff17 	ldw	r2,-4(fp)
  810248:	10bffe84 	addi	r2,r2,-6
  81024c:	10c00428 	cmpgeui	r3,r2,16
  810250:	1800191e 	bne	r3,zero,8102b8 <alt_exception_cause_generated_bad_addr+0x84>
  810254:	100690ba 	slli	r3,r2,2
  810258:	00802074 	movhi	r2,129
  81025c:	1885883a 	add	r2,r3,r2
  810260:	10809a17 	ldw	r2,616(r2)
  810264:	1000683a 	jmp	r2
  810268:	008102a8 	cmpgeui	r2,zero,1034
  81026c:	008102a8 	cmpgeui	r2,zero,1034
  810270:	008102b8 	rdprs	r2,zero,1034
  810274:	008102b8 	rdprs	r2,zero,1034
  810278:	008102b8 	rdprs	r2,zero,1034
  81027c:	008102a8 	cmpgeui	r2,zero,1034
  810280:	008102b0 	cmpltui	r2,zero,1034
  810284:	008102b8 	rdprs	r2,zero,1034
  810288:	008102a8 	cmpgeui	r2,zero,1034
  81028c:	008102a8 	cmpgeui	r2,zero,1034
  810290:	008102b8 	rdprs	r2,zero,1034
  810294:	008102a8 	cmpgeui	r2,zero,1034
  810298:	008102b0 	cmpltui	r2,zero,1034
  81029c:	008102b8 	rdprs	r2,zero,1034
  8102a0:	008102b8 	rdprs	r2,zero,1034
  8102a4:	008102a8 	cmpgeui	r2,zero,1034
  8102a8:	00800044 	movi	r2,1
  8102ac:	00000306 	br	8102bc <alt_exception_cause_generated_bad_addr+0x88>
  8102b0:	0005883a 	mov	r2,zero
  8102b4:	00000106 	br	8102bc <alt_exception_cause_generated_bad_addr+0x88>
  8102b8:	0005883a 	mov	r2,zero
  8102bc:	e037883a 	mov	sp,fp
  8102c0:	df000017 	ldw	fp,0(sp)
  8102c4:	dec00104 	addi	sp,sp,4
  8102c8:	f800283a 	ret

008102cc <atexit>:
  8102cc:	200b883a 	mov	r5,r4
  8102d0:	000f883a 	mov	r7,zero
  8102d4:	000d883a 	mov	r6,zero
  8102d8:	0009883a 	mov	r4,zero
  8102dc:	081038c1 	jmpi	81038c <__register_exitproc>

008102e0 <exit>:
  8102e0:	defffe04 	addi	sp,sp,-8
  8102e4:	000b883a 	mov	r5,zero
  8102e8:	dc000015 	stw	r16,0(sp)
  8102ec:	dfc00115 	stw	ra,4(sp)
  8102f0:	2021883a 	mov	r16,r4
  8102f4:	081041c0 	call	81041c <__call_exitprocs>
  8102f8:	00802074 	movhi	r2,129
  8102fc:	1109e017 	ldw	r4,10112(r2)
  810300:	20800f17 	ldw	r2,60(r4)
  810304:	10000126 	beq	r2,zero,81030c <exit+0x2c>
  810308:	103ee83a 	callr	r2
  81030c:	8009883a 	mov	r4,r16
  810310:	080dd600 	call	80dd60 <_exit>

00810314 <memcmp>:
  810314:	30800130 	cmpltui	r2,r6,4
  810318:	10000b1e 	bne	r2,zero,810348 <memcmp+0x34>
  81031c:	2144b03a 	or	r2,r4,r5
  810320:	108000cc 	andi	r2,r2,3
  810324:	1000171e 	bne	r2,zero,810384 <memcmp+0x70>
  810328:	20c00017 	ldw	r3,0(r4)
  81032c:	28800017 	ldw	r2,0(r5)
  810330:	1880141e 	bne	r3,r2,810384 <memcmp+0x70>
  810334:	31bfff04 	addi	r6,r6,-4
  810338:	30800128 	cmpgeui	r2,r6,4
  81033c:	21000104 	addi	r4,r4,4
  810340:	29400104 	addi	r5,r5,4
  810344:	103ff81e 	bne	r2,zero,810328 <memcmp+0x14>
  810348:	30bfffc4 	addi	r2,r6,-1
  81034c:	30000b26 	beq	r6,zero,81037c <memcmp+0x68>
  810350:	11800044 	addi	r6,r2,1
  810354:	298d883a 	add	r6,r5,r6
  810358:	00000106 	br	810360 <memcmp+0x4c>
  81035c:	29800726 	beq	r5,r6,81037c <memcmp+0x68>
  810360:	20800003 	ldbu	r2,0(r4)
  810364:	28c00003 	ldbu	r3,0(r5)
  810368:	21000044 	addi	r4,r4,1
  81036c:	29400044 	addi	r5,r5,1
  810370:	10fffa26 	beq	r2,r3,81035c <memcmp+0x48>
  810374:	10c5c83a 	sub	r2,r2,r3
  810378:	f800283a 	ret
  81037c:	0005883a 	mov	r2,zero
  810380:	f800283a 	ret
  810384:	30bfffc4 	addi	r2,r6,-1
  810388:	003ff106 	br	810350 <memcmp+0x3c>

0081038c <__register_exitproc>:
  81038c:	00802074 	movhi	r2,129
  810390:	10c9e017 	ldw	r3,10112(r2)
  810394:	18805217 	ldw	r2,328(r3)
  810398:	10001726 	beq	r2,zero,8103f8 <__register_exitproc+0x6c>
  81039c:	10c00117 	ldw	r3,4(r2)
  8103a0:	1a000808 	cmpgei	r8,r3,32
  8103a4:	40001b1e 	bne	r8,zero,810414 <__register_exitproc+0x88>
  8103a8:	20000b26 	beq	r4,zero,8103d8 <__register_exitproc+0x4c>
  8103ac:	181090ba 	slli	r8,r3,2
  8103b0:	02400044 	movi	r9,1
  8103b4:	48d2983a 	sll	r9,r9,r3
  8103b8:	1211883a 	add	r8,r2,r8
  8103bc:	41802215 	stw	r6,136(r8)
  8103c0:	11806217 	ldw	r6,392(r2)
  8103c4:	21000098 	cmpnei	r4,r4,2
  8103c8:	324cb03a 	or	r6,r6,r9
  8103cc:	11806215 	stw	r6,392(r2)
  8103d0:	41c04215 	stw	r7,264(r8)
  8103d4:	20000b26 	beq	r4,zero,810404 <__register_exitproc+0x78>
  8103d8:	19000084 	addi	r4,r3,2
  8103dc:	200890ba 	slli	r4,r4,2
  8103e0:	18c00044 	addi	r3,r3,1
  8103e4:	10c00115 	stw	r3,4(r2)
  8103e8:	1105883a 	add	r2,r2,r4
  8103ec:	11400015 	stw	r5,0(r2)
  8103f0:	0005883a 	mov	r2,zero
  8103f4:	f800283a 	ret
  8103f8:	18805304 	addi	r2,r3,332
  8103fc:	18805215 	stw	r2,328(r3)
  810400:	003fe606 	br	81039c <__register_exitproc+0x10>
  810404:	11006317 	ldw	r4,396(r2)
  810408:	2252b03a 	or	r9,r4,r9
  81040c:	12406315 	stw	r9,396(r2)
  810410:	003ff106 	br	8103d8 <__register_exitproc+0x4c>
  810414:	00bfffc4 	movi	r2,-1
  810418:	f800283a 	ret

0081041c <__call_exitprocs>:
  81041c:	defff704 	addi	sp,sp,-36
  810420:	00802074 	movhi	r2,129
  810424:	dcc00315 	stw	r19,12(sp)
  810428:	14c9e017 	ldw	r19,10112(r2)
  81042c:	dc800215 	stw	r18,8(sp)
  810430:	dfc00815 	stw	ra,32(sp)
  810434:	9c805217 	ldw	r18,328(r19)
  810438:	ddc00715 	stw	r23,28(sp)
  81043c:	dd800615 	stw	r22,24(sp)
  810440:	dd400515 	stw	r21,20(sp)
  810444:	dd000415 	stw	r20,16(sp)
  810448:	dc400115 	stw	r17,4(sp)
  81044c:	dc000015 	stw	r16,0(sp)
  810450:	90001026 	beq	r18,zero,810494 <__call_exitprocs+0x78>
  810454:	202b883a 	mov	r21,r4
  810458:	282d883a 	mov	r22,r5
  81045c:	05000044 	movi	r20,1
  810460:	94000117 	ldw	r16,4(r18)
  810464:	847fffc4 	addi	r17,r16,-1
  810468:	88000a16 	blt	r17,zero,810494 <__call_exitprocs+0x78>
  81046c:	84000044 	addi	r16,r16,1
  810470:	802090ba 	slli	r16,r16,2
  810474:	9421883a 	add	r16,r18,r16
  810478:	b0001126 	beq	r22,zero,8104c0 <__call_exitprocs+0xa4>
  81047c:	80804017 	ldw	r2,256(r16)
  810480:	15800f26 	beq	r2,r22,8104c0 <__call_exitprocs+0xa4>
  810484:	8c7fffc4 	addi	r17,r17,-1
  810488:	88bfffd8 	cmpnei	r2,r17,-1
  81048c:	843fff04 	addi	r16,r16,-4
  810490:	103ff91e 	bne	r2,zero,810478 <__call_exitprocs+0x5c>
  810494:	dfc00817 	ldw	ra,32(sp)
  810498:	ddc00717 	ldw	r23,28(sp)
  81049c:	dd800617 	ldw	r22,24(sp)
  8104a0:	dd400517 	ldw	r21,20(sp)
  8104a4:	dd000417 	ldw	r20,16(sp)
  8104a8:	dcc00317 	ldw	r19,12(sp)
  8104ac:	dc800217 	ldw	r18,8(sp)
  8104b0:	dc400117 	ldw	r17,4(sp)
  8104b4:	dc000017 	ldw	r16,0(sp)
  8104b8:	dec00904 	addi	sp,sp,36
  8104bc:	f800283a 	ret
  8104c0:	90800117 	ldw	r2,4(r18)
  8104c4:	81800017 	ldw	r6,0(r16)
  8104c8:	10bfffc4 	addi	r2,r2,-1
  8104cc:	14401726 	beq	r2,r17,81052c <__call_exitprocs+0x110>
  8104d0:	80000015 	stw	zero,0(r16)
  8104d4:	303feb26 	beq	r6,zero,810484 <__call_exitprocs+0x68>
  8104d8:	a446983a 	sll	r3,r20,r17
  8104dc:	90806217 	ldw	r2,392(r18)
  8104e0:	95c00117 	ldw	r23,4(r18)
  8104e4:	1884703a 	and	r2,r3,r2
  8104e8:	1000081e 	bne	r2,zero,81050c <__call_exitprocs+0xf0>
  8104ec:	303ee83a 	callr	r6
  8104f0:	90c00117 	ldw	r3,4(r18)
  8104f4:	98805217 	ldw	r2,328(r19)
  8104f8:	1dc0011e 	bne	r3,r23,810500 <__call_exitprocs+0xe4>
  8104fc:	90bfe126 	beq	r18,r2,810484 <__call_exitprocs+0x68>
  810500:	103fe426 	beq	r2,zero,810494 <__call_exitprocs+0x78>
  810504:	1025883a 	mov	r18,r2
  810508:	003fd506 	br	810460 <__call_exitprocs+0x44>
  81050c:	90806317 	ldw	r2,396(r18)
  810510:	81002017 	ldw	r4,128(r16)
  810514:	1886703a 	and	r3,r3,r2
  810518:	1800061e 	bne	r3,zero,810534 <__call_exitprocs+0x118>
  81051c:	200b883a 	mov	r5,r4
  810520:	a809883a 	mov	r4,r21
  810524:	303ee83a 	callr	r6
  810528:	003ff106 	br	8104f0 <__call_exitprocs+0xd4>
  81052c:	94400115 	stw	r17,4(r18)
  810530:	003fe806 	br	8104d4 <__call_exitprocs+0xb8>
  810534:	303ee83a 	callr	r6
  810538:	003fed06 	br	8104f0 <__call_exitprocs+0xd4>
