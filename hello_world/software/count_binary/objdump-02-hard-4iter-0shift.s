
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
  800390:	21014f04 	addi	r4,r4,1340
  800394:	da37883a 	add	sp,sp,r8
  800398:	08010780 	call	801078 <puts>
  80039c:	01002074 	movhi	r4,129
  8003a0:	21015104 	addi	r4,r4,1348
  8003a4:	01400044 	movi	r5,1
  8003a8:	0800f740 	call	800f74 <printf>
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
  8003f4:	08004e40 	call	8004e4 <__addsf3>
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
  800430:	08009400 	call	800940 <__mulsf3>
  800434:	880b883a 	mov	r5,r17
  800438:	1009883a 	mov	r4,r2
  80043c:	08004e40 	call	8004e4 <__addsf3>
  800440:	9009883a 	mov	r4,r18
  800444:	100b883a 	mov	r5,r2
  800448:	08004e40 	call	8004e4 <__addsf3>
  80044c:	1025883a 	mov	r18,r2
  800450:	9c3ff31e 	bne	r19,r16,800420 <main+0xbc>
  800454:	a53fffc4 	addi	r20,r20,-1
  800458:	a03fef1e 	bne	r20,zero,800418 <main+0xb4>
  80045c:	1009883a 	mov	r4,r2
  800460:	0800dcc0 	call	800dcc <__extendsfdf2>
  800464:	01002074 	movhi	r4,129
  800468:	d4270d17 	ldw	r16,-25548(gp)
  80046c:	180d883a 	mov	r6,r3
  800470:	100b883a 	mov	r5,r2
  800474:	21015604 	addi	r4,r4,1368
  800478:	0800f740 	call	800f74 <printf>
  80047c:	856bc83a 	sub	r21,r16,r21
  800480:	01002074 	movhi	r4,129
  800484:	a80b883a 	mov	r5,r21
  800488:	01800044 	movi	r6,1
  80048c:	21015904 	addi	r4,r4,1380
  800490:	0800f740 	call	800f74 <printf>
  800494:	a809883a 	mov	r4,r21
  800498:	0800d3c0 	call	800d3c <__floatunsidf>
  80049c:	01002074 	movhi	r4,129
  8004a0:	100b883a 	mov	r5,r2
  8004a4:	180d883a 	mov	r6,r3
  8004a8:	21016104 	addi	r4,r4,1412
  8004ac:	0800f740 	call	800f74 <printf>
  8004b0:	0005883a 	mov	r2,zero
  8004b4:	02000434 	movhi	r8,16
  8004b8:	423c0204 	addi	r8,r8,-4088
  8004bc:	da37883a 	add	sp,sp,r8
  8004c0:	dfc00617 	ldw	ra,24(sp)
  8004c4:	dd400517 	ldw	r21,20(sp)
  8004c8:	dd000417 	ldw	r20,16(sp)
  8004cc:	dcc00317 	ldw	r19,12(sp)
  8004d0:	dc800217 	ldw	r18,8(sp)
  8004d4:	dc400117 	ldw	r17,4(sp)
  8004d8:	dc000017 	ldw	r16,0(sp)
  8004dc:	dec00704 	addi	sp,sp,28
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
  800588:	0800ec80 	call	800ec8 <__clzsi2>
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
  800b20:	0800f1c0 	call	800f1c <__mulsi3>
  800b24:	9826d43a 	srli	r19,r19,16
  800b28:	900b883a 	mov	r5,r18
  800b2c:	a009883a 	mov	r4,r20
  800b30:	1025883a 	mov	r18,r2
  800b34:	0800f1c0 	call	800f1c <__mulsi3>
  800b38:	980b883a 	mov	r5,r19
  800b3c:	a009883a 	mov	r4,r20
  800b40:	1029883a 	mov	r20,r2
  800b44:	0800f1c0 	call	800f1c <__mulsi3>
  800b48:	9809883a 	mov	r4,r19
  800b4c:	800b883a 	mov	r5,r16
  800b50:	1027883a 	mov	r19,r2
  800b54:	0800f1c0 	call	800f1c <__mulsi3>
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
  800c14:	0800ec80 	call	800ec8 <__clzsi2>
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
  800c48:	0800ec80 	call	800ec8 <__clzsi2>
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

00800d3c <__floatunsidf>:
  800d3c:	defffe04 	addi	sp,sp,-8
  800d40:	dc000015 	stw	r16,0(sp)
  800d44:	dfc00115 	stw	ra,4(sp)
  800d48:	2021883a 	mov	r16,r4
  800d4c:	20000f26 	beq	r4,zero,800d8c <__floatunsidf+0x50>
  800d50:	0800ec80 	call	800ec8 <__clzsi2>
  800d54:	00c10784 	movi	r3,1054
  800d58:	1887c83a 	sub	r3,r3,r2
  800d5c:	110002c8 	cmpgei	r4,r2,11
  800d60:	18c1ffcc 	andi	r3,r3,2047
  800d64:	2000121e 	bne	r4,zero,800db0 <__floatunsidf+0x74>
  800d68:	014002c4 	movi	r5,11
  800d6c:	288bc83a 	sub	r5,r5,r2
  800d70:	814ad83a 	srl	r5,r16,r5
  800d74:	01000434 	movhi	r4,16
  800d78:	10800544 	addi	r2,r2,21
  800d7c:	213fffc4 	addi	r4,r4,-1
  800d80:	80a0983a 	sll	r16,r16,r2
  800d84:	290a703a 	and	r5,r5,r4
  800d88:	00000206 	br	800d94 <__floatunsidf+0x58>
  800d8c:	0007883a 	mov	r3,zero
  800d90:	000b883a 	mov	r5,zero
  800d94:	1806953a 	slli	r3,r3,20
  800d98:	8005883a 	mov	r2,r16
  800d9c:	1946b03a 	or	r3,r3,r5
  800da0:	dfc00117 	ldw	ra,4(sp)
  800da4:	dc000017 	ldw	r16,0(sp)
  800da8:	dec00204 	addi	sp,sp,8
  800dac:	f800283a 	ret
  800db0:	10bffd44 	addi	r2,r2,-11
  800db4:	808a983a 	sll	r5,r16,r2
  800db8:	00800434 	movhi	r2,16
  800dbc:	10bfffc4 	addi	r2,r2,-1
  800dc0:	288a703a 	and	r5,r5,r2
  800dc4:	0021883a 	mov	r16,zero
  800dc8:	003ff206 	br	800d94 <__floatunsidf+0x58>

00800dcc <__extendsfdf2>:
  800dcc:	200ad5fa 	srli	r5,r4,23
  800dd0:	defffd04 	addi	sp,sp,-12
  800dd4:	dc000015 	stw	r16,0(sp)
  800dd8:	29403fcc 	andi	r5,r5,255
  800ddc:	04002034 	movhi	r16,128
  800de0:	28800044 	addi	r2,r5,1
  800de4:	dc400115 	stw	r17,4(sp)
  800de8:	843fffc4 	addi	r16,r16,-1
  800dec:	dfc00215 	stw	ra,8(sp)
  800df0:	10803f8c 	andi	r2,r2,254
  800df4:	2022d7fa 	srli	r17,r4,31
  800df8:	8120703a 	and	r16,r16,r4
  800dfc:	10000d26 	beq	r2,zero,800e34 <__extendsfdf2+0x68>
  800e00:	8008d0fa 	srli	r4,r16,3
  800e04:	8020977a 	slli	r16,r16,29
  800e08:	28c0e004 	addi	r3,r5,896
  800e0c:	180a953a 	slli	r5,r3,20
  800e10:	880697fa 	slli	r3,r17,31
  800e14:	8005883a 	mov	r2,r16
  800e18:	290ab03a 	or	r5,r5,r4
  800e1c:	28c6b03a 	or	r3,r5,r3
  800e20:	dfc00217 	ldw	ra,8(sp)
  800e24:	dc400117 	ldw	r17,4(sp)
  800e28:	dc000017 	ldw	r16,0(sp)
  800e2c:	dec00304 	addi	sp,sp,12
  800e30:	f800283a 	ret
  800e34:	2800111e 	bne	r5,zero,800e7c <__extendsfdf2+0xb0>
  800e38:	80001926 	beq	r16,zero,800ea0 <__extendsfdf2+0xd4>
  800e3c:	8009883a 	mov	r4,r16
  800e40:	0800ec80 	call	800ec8 <__clzsi2>
  800e44:	10c002c8 	cmpgei	r3,r2,11
  800e48:	18001b1e 	bne	r3,zero,800eb8 <__extendsfdf2+0xec>
  800e4c:	010002c4 	movi	r4,11
  800e50:	2089c83a 	sub	r4,r4,r2
  800e54:	10c00544 	addi	r3,r2,21
  800e58:	810ad83a 	srl	r5,r16,r4
  800e5c:	80e0983a 	sll	r16,r16,r3
  800e60:	00c0e244 	movi	r3,905
  800e64:	01000434 	movhi	r4,16
  800e68:	213fffc4 	addi	r4,r4,-1
  800e6c:	1885c83a 	sub	r2,r3,r2
  800e70:	2908703a 	and	r4,r5,r4
  800e74:	10c1ffcc 	andi	r3,r2,2047
  800e78:	003fe406 	br	800e0c <__extendsfdf2+0x40>
  800e7c:	80000b26 	beq	r16,zero,800eac <__extendsfdf2+0xe0>
  800e80:	800ad0fa 	srli	r5,r16,3
  800e84:	00800434 	movhi	r2,16
  800e88:	10bfffc4 	addi	r2,r2,-1
  800e8c:	29000234 	orhi	r4,r5,8
  800e90:	8020977a 	slli	r16,r16,29
  800e94:	2088703a 	and	r4,r4,r2
  800e98:	00c1ffc4 	movi	r3,2047
  800e9c:	003fdb06 	br	800e0c <__extendsfdf2+0x40>
  800ea0:	0007883a 	mov	r3,zero
  800ea4:	0009883a 	mov	r4,zero
  800ea8:	003fd806 	br	800e0c <__extendsfdf2+0x40>
  800eac:	00c1ffc4 	movi	r3,2047
  800eb0:	0009883a 	mov	r4,zero
  800eb4:	003fd506 	br	800e0c <__extendsfdf2+0x40>
  800eb8:	113ffd44 	addi	r4,r2,-11
  800ebc:	810a983a 	sll	r5,r16,r4
  800ec0:	0021883a 	mov	r16,zero
  800ec4:	003fe606 	br	800e60 <__extendsfdf2+0x94>

00800ec8 <__clzsi2>:
  800ec8:	00bfffd4 	movui	r2,65535
  800ecc:	11000436 	bltu	r2,r4,800ee0 <__clzsi2+0x18>
  800ed0:	20804030 	cmpltui	r2,r4,256
  800ed4:	10000e26 	beq	r2,zero,800f10 <__clzsi2+0x48>
  800ed8:	01400804 	movi	r5,32
  800edc:	00000406 	br	800ef0 <__clzsi2+0x28>
  800ee0:	00804034 	movhi	r2,256
  800ee4:	20800736 	bltu	r4,r2,800f04 <__clzsi2+0x3c>
  800ee8:	2008d63a 	srli	r4,r4,24
  800eec:	01400204 	movi	r5,8
  800ef0:	00c02074 	movhi	r3,129
  800ef4:	20c7883a 	add	r3,r4,r3
  800ef8:	18816503 	ldbu	r2,1428(r3)
  800efc:	2885c83a 	sub	r2,r5,r2
  800f00:	f800283a 	ret
  800f04:	2008d43a 	srli	r4,r4,16
  800f08:	01400404 	movi	r5,16
  800f0c:	003ff806 	br	800ef0 <__clzsi2+0x28>
  800f10:	2008d23a 	srli	r4,r4,8
  800f14:	01400604 	movi	r5,24
  800f18:	003ff506 	br	800ef0 <__clzsi2+0x28>

00800f1c <__mulsi3>:
  800f1c:	0005883a 	mov	r2,zero
  800f20:	20000726 	beq	r4,zero,800f40 <__mulsi3+0x24>
  800f24:	20c0004c 	andi	r3,r4,1
  800f28:	2008d07a 	srli	r4,r4,1
  800f2c:	18000126 	beq	r3,zero,800f34 <__mulsi3+0x18>
  800f30:	1145883a 	add	r2,r2,r5
  800f34:	294b883a 	add	r5,r5,r5
  800f38:	203ffa1e 	bne	r4,zero,800f24 <__mulsi3+0x8>
  800f3c:	f800283a 	ret
  800f40:	f800283a 	ret

00800f44 <_printf_r>:
  800f44:	defffd04 	addi	sp,sp,-12
  800f48:	2805883a 	mov	r2,r5
  800f4c:	dfc00015 	stw	ra,0(sp)
  800f50:	d9800115 	stw	r6,4(sp)
  800f54:	d9c00215 	stw	r7,8(sp)
  800f58:	21400217 	ldw	r5,8(r4)
  800f5c:	d9c00104 	addi	r7,sp,4
  800f60:	100d883a 	mov	r6,r2
  800f64:	08011200 	call	801120 <___vfprintf_internal_r>
  800f68:	dfc00017 	ldw	ra,0(sp)
  800f6c:	dec00304 	addi	sp,sp,12
  800f70:	f800283a 	ret

00800f74 <printf>:
  800f74:	defffc04 	addi	sp,sp,-16
  800f78:	dfc00015 	stw	ra,0(sp)
  800f7c:	d9400115 	stw	r5,4(sp)
  800f80:	d9800215 	stw	r6,8(sp)
  800f84:	d9c00315 	stw	r7,12(sp)
  800f88:	00802074 	movhi	r2,129
  800f8c:	1089e117 	ldw	r2,10116(r2)
  800f90:	200b883a 	mov	r5,r4
  800f94:	d9800104 	addi	r6,sp,4
  800f98:	11000217 	ldw	r4,8(r2)
  800f9c:	080320c0 	call	80320c <__vfprintf_internal>
  800fa0:	dfc00017 	ldw	ra,0(sp)
  800fa4:	dec00404 	addi	sp,sp,16
  800fa8:	f800283a 	ret

00800fac <_puts_r>:
  800fac:	defff504 	addi	sp,sp,-44
  800fb0:	dc000815 	stw	r16,32(sp)
  800fb4:	2021883a 	mov	r16,r4
  800fb8:	2809883a 	mov	r4,r5
  800fbc:	dc400915 	stw	r17,36(sp)
  800fc0:	dfc00a15 	stw	ra,40(sp)
  800fc4:	2823883a 	mov	r17,r5
  800fc8:	08010880 	call	801088 <strlen>
  800fcc:	11000044 	addi	r4,r2,1
  800fd0:	d8800515 	stw	r2,20(sp)
  800fd4:	00800044 	movi	r2,1
  800fd8:	00c02074 	movhi	r3,129
  800fdc:	d8800715 	stw	r2,28(sp)
  800fe0:	d8800404 	addi	r2,sp,16
  800fe4:	18c15504 	addi	r3,r3,1364
  800fe8:	d8800115 	stw	r2,4(sp)
  800fec:	00800084 	movi	r2,2
  800ff0:	dc400415 	stw	r17,16(sp)
  800ff4:	d8c00615 	stw	r3,24(sp)
  800ff8:	d9000315 	stw	r4,12(sp)
  800ffc:	d8800215 	stw	r2,8(sp)
  801000:	81400217 	ldw	r5,8(r16)
  801004:	80000226 	beq	r16,zero,801010 <_puts_r+0x64>
  801008:	80800e17 	ldw	r2,56(r16)
  80100c:	10001326 	beq	r2,zero,80105c <_puts_r+0xb0>
  801010:	2880030b 	ldhu	r2,12(r5)
  801014:	10c8000c 	andi	r3,r2,8192
  801018:	1800061e 	bne	r3,zero,801034 <_puts_r+0x88>
  80101c:	28c01917 	ldw	r3,100(r5)
  801020:	0137ffc4 	movi	r4,-8193
  801024:	10880014 	ori	r2,r2,8192
  801028:	1906703a 	and	r3,r3,r4
  80102c:	2880030d 	sth	r2,12(r5)
  801030:	28c01915 	stw	r3,100(r5)
  801034:	d9800104 	addi	r6,sp,4
  801038:	8009883a 	mov	r4,r16
  80103c:	08057d00 	call	8057d0 <__sfvwrite_r>
  801040:	10000b1e 	bne	r2,zero,801070 <_puts_r+0xc4>
  801044:	00800284 	movi	r2,10
  801048:	dfc00a17 	ldw	ra,40(sp)
  80104c:	dc400917 	ldw	r17,36(sp)
  801050:	dc000817 	ldw	r16,32(sp)
  801054:	dec00b04 	addi	sp,sp,44
  801058:	f800283a 	ret
  80105c:	8009883a 	mov	r4,r16
  801060:	d9400015 	stw	r5,0(sp)
  801064:	08053700 	call	805370 <__sinit>
  801068:	d9400017 	ldw	r5,0(sp)
  80106c:	003fe806 	br	801010 <_puts_r+0x64>
  801070:	00bfffc4 	movi	r2,-1
  801074:	003ff406 	br	801048 <_puts_r+0x9c>

00801078 <puts>:
  801078:	00802074 	movhi	r2,129
  80107c:	200b883a 	mov	r5,r4
  801080:	1109e117 	ldw	r4,10116(r2)
  801084:	0800fac1 	jmpi	800fac <_puts_r>

00801088 <strlen>:
  801088:	208000cc 	andi	r2,r4,3
  80108c:	10000926 	beq	r2,zero,8010b4 <strlen+0x2c>
  801090:	2005883a 	mov	r2,r4
  801094:	00000306 	br	8010a4 <strlen+0x1c>
  801098:	10800044 	addi	r2,r2,1
  80109c:	10c000cc 	andi	r3,r2,3
  8010a0:	18000526 	beq	r3,zero,8010b8 <strlen+0x30>
  8010a4:	10c00007 	ldb	r3,0(r2)
  8010a8:	183ffb1e 	bne	r3,zero,801098 <strlen+0x10>
  8010ac:	1105c83a 	sub	r2,r2,r4
  8010b0:	f800283a 	ret
  8010b4:	2005883a 	mov	r2,r4
  8010b8:	11400017 	ldw	r5,0(r2)
  8010bc:	01ffbff4 	movhi	r7,65279
  8010c0:	39ffbfc4 	addi	r7,r7,-257
  8010c4:	29c7883a 	add	r3,r5,r7
  8010c8:	01a02074 	movhi	r6,32897
  8010cc:	014a303a 	nor	r5,zero,r5
  8010d0:	1946703a 	and	r3,r3,r5
  8010d4:	31a02004 	addi	r6,r6,-32640
  8010d8:	1986703a 	and	r3,r3,r6
  8010dc:	1800071e 	bne	r3,zero,8010fc <strlen+0x74>
  8010e0:	11400117 	ldw	r5,4(r2)
  8010e4:	10800104 	addi	r2,r2,4
  8010e8:	29c7883a 	add	r3,r5,r7
  8010ec:	014a303a 	nor	r5,zero,r5
  8010f0:	1946703a 	and	r3,r3,r5
  8010f4:	1986703a 	and	r3,r3,r6
  8010f8:	183ff926 	beq	r3,zero,8010e0 <strlen+0x58>
  8010fc:	10c00007 	ldb	r3,0(r2)
  801100:	183fea26 	beq	r3,zero,8010ac <strlen+0x24>
  801104:	10c00047 	ldb	r3,1(r2)
  801108:	10800044 	addi	r2,r2,1
  80110c:	183fe726 	beq	r3,zero,8010ac <strlen+0x24>
  801110:	10c00047 	ldb	r3,1(r2)
  801114:	10800044 	addi	r2,r2,1
  801118:	183ffa1e 	bne	r3,zero,801104 <strlen+0x7c>
  80111c:	003fe306 	br	8010ac <strlen+0x24>

00801120 <___vfprintf_internal_r>:
  801120:	deffbf04 	addi	sp,sp,-260
  801124:	dfc04015 	stw	ra,256(sp)
  801128:	dd803d15 	stw	r22,244(sp)
  80112c:	dcc03a15 	stw	r19,232(sp)
  801130:	dc803915 	stw	r18,228(sp)
  801134:	2027883a 	mov	r19,r4
  801138:	2825883a 	mov	r18,r5
  80113c:	302d883a 	mov	r22,r6
  801140:	d9c00615 	stw	r7,24(sp)
  801144:	df003f15 	stw	fp,252(sp)
  801148:	ddc03e15 	stw	r23,248(sp)
  80114c:	dd403c15 	stw	r21,240(sp)
  801150:	dd003b15 	stw	r20,236(sp)
  801154:	dc403815 	stw	r17,224(sp)
  801158:	dc003715 	stw	r16,220(sp)
  80115c:	0805de40 	call	805de4 <_localeconv_r>
  801160:	10800017 	ldw	r2,0(r2)
  801164:	1009883a 	mov	r4,r2
  801168:	d8800d15 	stw	r2,52(sp)
  80116c:	08010880 	call	801088 <strlen>
  801170:	d8800b15 	stw	r2,44(sp)
  801174:	98000226 	beq	r19,zero,801180 <___vfprintf_internal_r+0x60>
  801178:	98800e17 	ldw	r2,56(r19)
  80117c:	1001d726 	beq	r2,zero,8018dc <___vfprintf_internal_r+0x7bc>
  801180:	9080030b 	ldhu	r2,12(r18)
  801184:	10c8000c 	andi	r3,r2,8192
  801188:	1800061e 	bne	r3,zero,8011a4 <___vfprintf_internal_r+0x84>
  80118c:	90c01917 	ldw	r3,100(r18)
  801190:	0137ffc4 	movi	r4,-8193
  801194:	10880014 	ori	r2,r2,8192
  801198:	1906703a 	and	r3,r3,r4
  80119c:	9080030d 	sth	r2,12(r18)
  8011a0:	90c01915 	stw	r3,100(r18)
  8011a4:	10c0020c 	andi	r3,r2,8
  8011a8:	1800fc26 	beq	r3,zero,80159c <___vfprintf_internal_r+0x47c>
  8011ac:	90c00417 	ldw	r3,16(r18)
  8011b0:	1800fa26 	beq	r3,zero,80159c <___vfprintf_internal_r+0x47c>
  8011b4:	1080068c 	andi	r2,r2,26
  8011b8:	10800298 	cmpnei	r2,r2,10
  8011bc:	1000ff26 	beq	r2,zero,8015bc <___vfprintf_internal_r+0x49c>
  8011c0:	d8802704 	addi	r2,sp,156
  8011c4:	b02f883a 	mov	r23,r22
  8011c8:	d8801a15 	stw	r2,104(sp)
  8011cc:	d8001c15 	stw	zero,112(sp)
  8011d0:	d8001b15 	stw	zero,108(sp)
  8011d4:	d8000815 	stw	zero,32(sp)
  8011d8:	d8000915 	stw	zero,36(sp)
  8011dc:	d8000a15 	stw	zero,40(sp)
  8011e0:	d8000c15 	stw	zero,48(sp)
  8011e4:	d8001015 	stw	zero,64(sp)
  8011e8:	d8000515 	stw	zero,20(sp)
  8011ec:	102d883a 	mov	r22,r2
  8011f0:	b8800007 	ldb	r2,0(r23)
  8011f4:	1000d726 	beq	r2,zero,801554 <___vfprintf_internal_r+0x434>
  8011f8:	b821883a 	mov	r16,r23
  8011fc:	00000306 	br	80120c <___vfprintf_internal_r+0xec>
  801200:	80800047 	ldb	r2,1(r16)
  801204:	84000044 	addi	r16,r16,1
  801208:	10011926 	beq	r2,zero,801670 <___vfprintf_internal_r+0x550>
  80120c:	10800958 	cmpnei	r2,r2,37
  801210:	103ffb1e 	bne	r2,zero,801200 <___vfprintf_internal_r+0xe0>
  801214:	85e3c83a 	sub	r17,r16,r23
  801218:	85c1171e 	bne	r16,r23,801678 <___vfprintf_internal_r+0x558>
  80121c:	80800003 	ldbu	r2,0(r16)
  801220:	10803fcc 	andi	r2,r2,255
  801224:	1080201c 	xori	r2,r2,128
  801228:	10bfe004 	addi	r2,r2,-128
  80122c:	1000c926 	beq	r2,zero,801554 <___vfprintf_internal_r+0x434>
  801230:	82c00047 	ldb	r11,1(r16)
  801234:	85c00044 	addi	r23,r16,1
  801238:	d8001345 	stb	zero,77(sp)
  80123c:	0009883a 	mov	r4,zero
  801240:	000b883a 	mov	r5,zero
  801244:	023fffc4 	movi	r8,-1
  801248:	0021883a 	mov	r16,zero
  80124c:	0019883a 	mov	r12,zero
  801250:	bdc00044 	addi	r23,r23,1
  801254:	5839883a 	mov	fp,r11
  801258:	e0bff804 	addi	r2,fp,-32
  80125c:	10c01668 	cmpgeui	r3,r2,89
  801260:	18006c1e 	bne	r3,zero,801414 <___vfprintf_internal_r+0x2f4>
  801264:	100490ba 	slli	r2,r2,2
  801268:	00c02034 	movhi	r3,128
  80126c:	10c7883a 	add	r3,r2,r3
  801270:	18849e17 	ldw	r2,4728(r3)
  801274:	1000683a 	jmp	r2
  801278:	00801c64 	muli	r2,zero,113
  80127c:	00801414 	movui	r2,80
  801280:	00801414 	movui	r2,80
  801284:	00801c58 	cmpnei	r2,zero,113
  801288:	00801414 	movui	r2,80
  80128c:	00801414 	movui	r2,80
  801290:	00801414 	movui	r2,80
  801294:	00801414 	movui	r2,80
  801298:	00801414 	movui	r2,80
  80129c:	00801414 	movui	r2,80
  8012a0:	00801c30 	cmpltui	r2,zero,112
  8012a4:	00801c20 	cmpeqi	r2,zero,112
  8012a8:	00801414 	movui	r2,80
  8012ac:	00801c08 	cmpgei	r2,zero,112
  8012b0:	00801bbc 	xorhi	r2,zero,110
  8012b4:	00801414 	movui	r2,80
  8012b8:	00801bb0 	cmpltui	r2,zero,110
  8012bc:	008013dc 	xori	r2,zero,79
  8012c0:	008013dc 	xori	r2,zero,79
  8012c4:	008013dc 	xori	r2,zero,79
  8012c8:	008013dc 	xori	r2,zero,79
  8012cc:	008013dc 	xori	r2,zero,79
  8012d0:	008013dc 	xori	r2,zero,79
  8012d4:	008013dc 	xori	r2,zero,79
  8012d8:	008013dc 	xori	r2,zero,79
  8012dc:	008013dc 	xori	r2,zero,79
  8012e0:	00801414 	movui	r2,80
  8012e4:	00801414 	movui	r2,80
  8012e8:	00801414 	movui	r2,80
  8012ec:	00801414 	movui	r2,80
  8012f0:	00801414 	movui	r2,80
  8012f4:	00801414 	movui	r2,80
  8012f8:	00801414 	movui	r2,80
  8012fc:	00801414 	movui	r2,80
  801300:	00801414 	movui	r2,80
  801304:	00801414 	movui	r2,80
  801308:	00801aa4 	muli	r2,zero,106
  80130c:	008016d4 	movui	r2,91
  801310:	00801414 	movui	r2,80
  801314:	008016d4 	movui	r2,91
  801318:	00801414 	movui	r2,80
  80131c:	00801414 	movui	r2,80
  801320:	00801414 	movui	r2,80
  801324:	00801414 	movui	r2,80
  801328:	00801c90 	cmplti	r2,zero,114
  80132c:	00801414 	movui	r2,80
  801330:	00801414 	movui	r2,80
  801334:	00801608 	cmpgei	r2,zero,88
  801338:	00801414 	movui	r2,80
  80133c:	00801414 	movui	r2,80
  801340:	00801414 	movui	r2,80
  801344:	00801414 	movui	r2,80
  801348:	00801414 	movui	r2,80
  80134c:	008015e0 	cmpeqi	r2,zero,87
  801350:	00801414 	movui	r2,80
  801354:	00801414 	movui	r2,80
  801358:	00801cc4 	movi	r2,115
  80135c:	00801414 	movui	r2,80
  801360:	00801414 	movui	r2,80
  801364:	00801414 	movui	r2,80
  801368:	00801414 	movui	r2,80
  80136c:	00801414 	movui	r2,80
  801370:	00801414 	movui	r2,80
  801374:	00801414 	movui	r2,80
  801378:	00801414 	movui	r2,80
  80137c:	00801414 	movui	r2,80
  801380:	00801414 	movui	r2,80
  801384:	00801c9c 	xori	r2,zero,114
  801388:	008018e8 	cmpgeui	r2,zero,99
  80138c:	008016d4 	movui	r2,91
  801390:	008016d4 	movui	r2,91
  801394:	008016d4 	movui	r2,91
  801398:	0080195c 	xori	r2,zero,101
  80139c:	008018e8 	cmpgeui	r2,zero,99
  8013a0:	00801414 	movui	r2,80
  8013a4:	00801414 	movui	r2,80
  8013a8:	00801a90 	cmplti	r2,zero,106
  8013ac:	00801414 	movui	r2,80
  8013b0:	00801a54 	movui	r2,105
  8013b4:	0080160c 	andi	r2,zero,88
  8013b8:	00801a14 	movui	r2,104
  8013bc:	00801a08 	cmpgei	r2,zero,104
  8013c0:	00801414 	movui	r2,80
  8013c4:	008019b0 	cmpltui	r2,zero,102
  8013c8:	00801414 	movui	r2,80
  8013cc:	008015e4 	muli	r2,zero,87
  8013d0:	00801414 	movui	r2,80
  8013d4:	00801414 	movui	r2,80
  8013d8:	00801968 	cmpgeui	r2,zero,101
  8013dc:	0021883a 	mov	r16,zero
  8013e0:	e0fff404 	addi	r3,fp,-48
  8013e4:	800490ba 	slli	r2,r16,2
  8013e8:	bf000007 	ldb	fp,0(r23)
  8013ec:	bdc00044 	addi	r23,r23,1
  8013f0:	1421883a 	add	r16,r2,r16
  8013f4:	8421883a 	add	r16,r16,r16
  8013f8:	1c21883a 	add	r16,r3,r16
  8013fc:	e0fff404 	addi	r3,fp,-48
  801400:	188002b0 	cmpltui	r2,r3,10
  801404:	103ff71e 	bne	r2,zero,8013e4 <___vfprintf_internal_r+0x2c4>
  801408:	e0bff804 	addi	r2,fp,-32
  80140c:	10c01668 	cmpgeui	r3,r2,89
  801410:	183f9426 	beq	r3,zero,801264 <___vfprintf_internal_r+0x144>
  801414:	21003fcc 	andi	r4,r4,255
  801418:	20068f1e 	bne	r4,zero,802e58 <___vfprintf_internal_r+0x1d38>
  80141c:	e0004d26 	beq	fp,zero,801554 <___vfprintf_internal_r+0x434>
  801420:	df001d05 	stb	fp,116(sp)
  801424:	d8001345 	stb	zero,77(sp)
  801428:	05000044 	movi	r20,1
  80142c:	05400044 	movi	r21,1
  801430:	dc401d04 	addi	r17,sp,116
  801434:	db000415 	stw	r12,16(sp)
  801438:	0011883a 	mov	r8,zero
  80143c:	d8000715 	stw	zero,28(sp)
  801440:	d8800417 	ldw	r2,16(sp)
  801444:	1380008c 	andi	r14,r2,2
  801448:	70000126 	beq	r14,zero,801450 <___vfprintf_internal_r+0x330>
  80144c:	a5000084 	addi	r20,r20,2
  801450:	d8800417 	ldw	r2,16(sp)
  801454:	d8c01c17 	ldw	r3,112(sp)
  801458:	1340210c 	andi	r13,r2,132
  80145c:	6800021e 	bne	r13,zero,801468 <___vfprintf_internal_r+0x348>
  801460:	850fc83a 	sub	r7,r16,r20
  801464:	01c36016 	blt	zero,r7,8021e8 <___vfprintf_internal_r+0x10c8>
  801468:	d8801347 	ldb	r2,77(sp)
  80146c:	10000c26 	beq	r2,zero,8014a0 <___vfprintf_internal_r+0x380>
  801470:	d8801b17 	ldw	r2,108(sp)
  801474:	d9001344 	addi	r4,sp,77
  801478:	18c00044 	addi	r3,r3,1
  80147c:	10800044 	addi	r2,r2,1
  801480:	b1000015 	stw	r4,0(r22)
  801484:	01000044 	movi	r4,1
  801488:	d8801b15 	stw	r2,108(sp)
  80148c:	b1000115 	stw	r4,4(r22)
  801490:	d8c01c15 	stw	r3,112(sp)
  801494:	10800208 	cmpgei	r2,r2,8
  801498:	1003a01e 	bne	r2,zero,80231c <___vfprintf_internal_r+0x11fc>
  80149c:	b5800204 	addi	r22,r22,8
  8014a0:	70000c26 	beq	r14,zero,8014d4 <___vfprintf_internal_r+0x3b4>
  8014a4:	d8801b17 	ldw	r2,108(sp)
  8014a8:	d9001384 	addi	r4,sp,78
  8014ac:	18c00084 	addi	r3,r3,2
  8014b0:	10800044 	addi	r2,r2,1
  8014b4:	b1000015 	stw	r4,0(r22)
  8014b8:	01000084 	movi	r4,2
  8014bc:	d8801b15 	stw	r2,108(sp)
  8014c0:	b1000115 	stw	r4,4(r22)
  8014c4:	d8c01c15 	stw	r3,112(sp)
  8014c8:	10800208 	cmpgei	r2,r2,8
  8014cc:	1003871e 	bne	r2,zero,8022ec <___vfprintf_internal_r+0x11cc>
  8014d0:	b5800204 	addi	r22,r22,8
  8014d4:	6b402018 	cmpnei	r13,r13,128
  8014d8:	68025226 	beq	r13,zero,801e24 <___vfprintf_internal_r+0xd04>
  8014dc:	4551c83a 	sub	r8,r8,r21
  8014e0:	02028a16 	blt	zero,r8,801f0c <___vfprintf_internal_r+0xdec>
  8014e4:	d8800417 	ldw	r2,16(sp)
  8014e8:	1080400c 	andi	r2,r2,256
  8014ec:	1002071e 	bne	r2,zero,801d0c <___vfprintf_internal_r+0xbec>
  8014f0:	d8801b17 	ldw	r2,108(sp)
  8014f4:	1d47883a 	add	r3,r3,r21
  8014f8:	b4400015 	stw	r17,0(r22)
  8014fc:	10800044 	addi	r2,r2,1
  801500:	b5400115 	stw	r21,4(r22)
  801504:	d8801b15 	stw	r2,108(sp)
  801508:	d8c01c15 	stw	r3,112(sp)
  80150c:	10800208 	cmpgei	r2,r2,8
  801510:	1002ee1e 	bne	r2,zero,8020cc <___vfprintf_internal_r+0xfac>
  801514:	b5800204 	addi	r22,r22,8
  801518:	d8800417 	ldw	r2,16(sp)
  80151c:	1440010c 	andi	r17,r2,4
  801520:	88000226 	beq	r17,zero,80152c <___vfprintf_internal_r+0x40c>
  801524:	8523c83a 	sub	r17,r16,r20
  801528:	0440bd16 	blt	zero,r17,801820 <___vfprintf_internal_r+0x700>
  80152c:	8500010e 	bge	r16,r20,801534 <___vfprintf_internal_r+0x414>
  801530:	a021883a 	mov	r16,r20
  801534:	d8800517 	ldw	r2,20(sp)
  801538:	1405883a 	add	r2,r2,r16
  80153c:	d8800515 	stw	r2,20(sp)
  801540:	1802b91e 	bne	r3,zero,802028 <___vfprintf_internal_r+0xf08>
  801544:	b8800007 	ldb	r2,0(r23)
  801548:	d8001b15 	stw	zero,108(sp)
  80154c:	dd802704 	addi	r22,sp,156
  801550:	103f291e 	bne	r2,zero,8011f8 <___vfprintf_internal_r+0xd8>
  801554:	d8801c17 	ldw	r2,112(sp)
  801558:	10063a1e 	bne	r2,zero,802e44 <___vfprintf_internal_r+0x1d24>
  80155c:	9080030b 	ldhu	r2,12(r18)
  801560:	1080100c 	andi	r2,r2,64
  801564:	1006c91e 	bne	r2,zero,80308c <___vfprintf_internal_r+0x1f6c>
  801568:	d8800517 	ldw	r2,20(sp)
  80156c:	dfc04017 	ldw	ra,256(sp)
  801570:	df003f17 	ldw	fp,252(sp)
  801574:	ddc03e17 	ldw	r23,248(sp)
  801578:	dd803d17 	ldw	r22,244(sp)
  80157c:	dd403c17 	ldw	r21,240(sp)
  801580:	dd003b17 	ldw	r20,236(sp)
  801584:	dcc03a17 	ldw	r19,232(sp)
  801588:	dc803917 	ldw	r18,228(sp)
  80158c:	dc403817 	ldw	r17,224(sp)
  801590:	dc003717 	ldw	r16,220(sp)
  801594:	dec04104 	addi	sp,sp,260
  801598:	f800283a 	ret
  80159c:	900b883a 	mov	r5,r18
  8015a0:	9809883a 	mov	r4,r19
  8015a4:	08032e80 	call	8032e8 <__swsetup_r>
  8015a8:	1006b81e 	bne	r2,zero,80308c <___vfprintf_internal_r+0x1f6c>
  8015ac:	9080030b 	ldhu	r2,12(r18)
  8015b0:	1080068c 	andi	r2,r2,26
  8015b4:	10800298 	cmpnei	r2,r2,10
  8015b8:	103f011e 	bne	r2,zero,8011c0 <___vfprintf_internal_r+0xa0>
  8015bc:	9080038f 	ldh	r2,14(r18)
  8015c0:	103eff16 	blt	r2,zero,8011c0 <___vfprintf_internal_r+0xa0>
  8015c4:	d9c00617 	ldw	r7,24(sp)
  8015c8:	b00d883a 	mov	r6,r22
  8015cc:	900b883a 	mov	r5,r18
  8015d0:	9809883a 	mov	r4,r19
  8015d4:	08032280 	call	803228 <__sbprintf>
  8015d8:	d8800515 	stw	r2,20(sp)
  8015dc:	003fe206 	br	801568 <___vfprintf_internal_r+0x448>
  8015e0:	63000414 	ori	r12,r12,16
  8015e4:	6080080c 	andi	r2,r12,32
  8015e8:	10008126 	beq	r2,zero,8017f0 <___vfprintf_internal_r+0x6d0>
  8015ec:	d8c00617 	ldw	r3,24(sp)
  8015f0:	00800044 	movi	r2,1
  8015f4:	1d000017 	ldw	r20,0(r3)
  8015f8:	1d400117 	ldw	r21,4(r3)
  8015fc:	18c00204 	addi	r3,r3,8
  801600:	d8c00615 	stw	r3,24(sp)
  801604:	00000906 	br	80162c <___vfprintf_internal_r+0x50c>
  801608:	63000414 	ori	r12,r12,16
  80160c:	6080080c 	andi	r2,r12,32
  801610:	10006b26 	beq	r2,zero,8017c0 <___vfprintf_internal_r+0x6a0>
  801614:	d8c00617 	ldw	r3,24(sp)
  801618:	0005883a 	mov	r2,zero
  80161c:	1d000017 	ldw	r20,0(r3)
  801620:	1d400117 	ldw	r21,4(r3)
  801624:	18c00204 	addi	r3,r3,8
  801628:	d8c00615 	stw	r3,24(sp)
  80162c:	d8001345 	stb	zero,77(sp)
  801630:	40ffffe0 	cmpeqi	r3,r8,-1
  801634:	001b883a 	mov	r13,zero
  801638:	1801351e 	bne	r3,zero,801b10 <___vfprintf_internal_r+0x9f0>
  80163c:	047fdfc4 	movi	r17,-129
  801640:	6448703a 	and	r4,r12,r17
  801644:	a546b03a 	or	r3,r20,r21
  801648:	d9000415 	stw	r4,16(sp)
  80164c:	1802e41e 	bne	r3,zero,8021e0 <___vfprintf_internal_r+0x10c0>
  801650:	40025f1e 	bne	r8,zero,801fd0 <___vfprintf_internal_r+0xeb0>
  801654:	1003a61e 	bne	r2,zero,8024f0 <___vfprintf_internal_r+0x13d0>
  801658:	6540004c 	andi	r21,r12,1
  80165c:	a803d426 	beq	r21,zero,8025b0 <___vfprintf_internal_r+0x1490>
  801660:	00800c04 	movi	r2,48
  801664:	d88026c5 	stb	r2,155(sp)
  801668:	dc4026c4 	addi	r17,sp,155
  80166c:	00014606 	br	801b88 <___vfprintf_internal_r+0xa68>
  801670:	85e3c83a 	sub	r17,r16,r23
  801674:	85ffb726 	beq	r16,r23,801554 <___vfprintf_internal_r+0x434>
  801678:	d8c01c17 	ldw	r3,112(sp)
  80167c:	d8801b17 	ldw	r2,108(sp)
  801680:	b5c00015 	stw	r23,0(r22)
  801684:	1c47883a 	add	r3,r3,r17
  801688:	10800044 	addi	r2,r2,1
  80168c:	d8801b15 	stw	r2,108(sp)
  801690:	b4400115 	stw	r17,4(r22)
  801694:	d8c01c15 	stw	r3,112(sp)
  801698:	10800208 	cmpgei	r2,r2,8
  80169c:	1000061e 	bne	r2,zero,8016b8 <___vfprintf_internal_r+0x598>
  8016a0:	b5800204 	addi	r22,r22,8
  8016a4:	d8c00517 	ldw	r3,20(sp)
  8016a8:	80800003 	ldbu	r2,0(r16)
  8016ac:	1c47883a 	add	r3,r3,r17
  8016b0:	d8c00515 	stw	r3,20(sp)
  8016b4:	003eda06 	br	801220 <___vfprintf_internal_r+0x100>
  8016b8:	d9801a04 	addi	r6,sp,104
  8016bc:	900b883a 	mov	r5,r18
  8016c0:	9809883a 	mov	r4,r19
  8016c4:	08084cc0 	call	8084cc <__sprint_r>
  8016c8:	103fa41e 	bne	r2,zero,80155c <___vfprintf_internal_r+0x43c>
  8016cc:	dd802704 	addi	r22,sp,156
  8016d0:	003ff406 	br	8016a4 <___vfprintf_internal_r+0x584>
  8016d4:	21003fcc 	andi	r4,r4,255
  8016d8:	20066a1e 	bne	r4,zero,803084 <___vfprintf_internal_r+0x1f64>
  8016dc:	d8c00617 	ldw	r3,24(sp)
  8016e0:	6080020c 	andi	r2,r12,8
  8016e4:	19000204 	addi	r4,r3,8
  8016e8:	d9000e15 	stw	r4,56(sp)
  8016ec:	1003d01e 	bne	r2,zero,802630 <___vfprintf_internal_r+0x1510>
  8016f0:	d8800617 	ldw	r2,24(sp)
  8016f4:	10c00017 	ldw	r3,0(r2)
  8016f8:	10800117 	ldw	r2,4(r2)
  8016fc:	d8c00915 	stw	r3,36(sp)
  801700:	d8800a15 	stw	r2,40(sp)
  801704:	dd400a17 	ldw	r21,40(sp)
  801708:	dd000917 	ldw	r20,36(sp)
  80170c:	00a00034 	movhi	r2,32768
  801710:	10bfffc4 	addi	r2,r2,-1
  801714:	a8a2703a 	and	r17,r21,r2
  801718:	01dffc34 	movhi	r7,32752
  80171c:	01bfffc4 	movi	r6,-1
  801720:	39ffffc4 	addi	r7,r7,-1
  801724:	a009883a 	mov	r4,r20
  801728:	880b883a 	mov	r5,r17
  80172c:	da000615 	stw	r8,24(sp)
  801730:	db000415 	stw	r12,16(sp)
  801734:	080da8c0 	call	80da8c <__unorddf2>
  801738:	db000417 	ldw	r12,16(sp)
  80173c:	da000617 	ldw	r8,24(sp)
  801740:	1004701e 	bne	r2,zero,802904 <___vfprintf_internal_r+0x17e4>
  801744:	01dffc34 	movhi	r7,32752
  801748:	01bfffc4 	movi	r6,-1
  80174c:	39ffffc4 	addi	r7,r7,-1
  801750:	a009883a 	mov	r4,r20
  801754:	880b883a 	mov	r5,r17
  801758:	080c8c00 	call	80c8c0 <__ledf2>
  80175c:	db000417 	ldw	r12,16(sp)
  801760:	da000617 	ldw	r8,24(sp)
  801764:	0084670e 	bge	zero,r2,802904 <___vfprintf_internal_r+0x17e4>
  801768:	000d883a 	mov	r6,zero
  80176c:	000f883a 	mov	r7,zero
  801770:	a009883a 	mov	r4,r20
  801774:	a80b883a 	mov	r5,r21
  801778:	080c8c00 	call	80c8c0 <__ledf2>
  80177c:	db000417 	ldw	r12,16(sp)
  801780:	10059d16 	blt	r2,zero,802df8 <___vfprintf_internal_r+0x1cd8>
  801784:	db401343 	ldbu	r13,77(sp)
  801788:	e0801210 	cmplti	r2,fp,72
  80178c:	1005741e 	bne	r2,zero,802d60 <___vfprintf_internal_r+0x1c40>
  801790:	04402074 	movhi	r17,129
  801794:	8c41a604 	addi	r17,r17,1688
  801798:	00bfdfc4 	movi	r2,-129
  80179c:	6084703a 	and	r2,r12,r2
  8017a0:	d8800415 	stw	r2,16(sp)
  8017a4:	d8800e17 	ldw	r2,56(sp)
  8017a8:	050000c4 	movi	r20,3
  8017ac:	054000c4 	movi	r21,3
  8017b0:	d8800615 	stw	r2,24(sp)
  8017b4:	0011883a 	mov	r8,zero
  8017b8:	d8000715 	stw	zero,28(sp)
  8017bc:	0000f606 	br	801b98 <___vfprintf_internal_r+0xa78>
  8017c0:	d9000617 	ldw	r4,24(sp)
  8017c4:	6080040c 	andi	r2,r12,16
  8017c8:	20c00104 	addi	r3,r4,4
  8017cc:	1003891e 	bne	r2,zero,8025f4 <___vfprintf_internal_r+0x14d4>
  8017d0:	6080100c 	andi	r2,r12,64
  8017d4:	10056b26 	beq	r2,zero,802d84 <___vfprintf_internal_r+0x1c64>
  8017d8:	d8800617 	ldw	r2,24(sp)
  8017dc:	002b883a 	mov	r21,zero
  8017e0:	d8c00615 	stw	r3,24(sp)
  8017e4:	1500000b 	ldhu	r20,0(r2)
  8017e8:	0005883a 	mov	r2,zero
  8017ec:	003f8f06 	br	80162c <___vfprintf_internal_r+0x50c>
  8017f0:	d9000617 	ldw	r4,24(sp)
  8017f4:	6080040c 	andi	r2,r12,16
  8017f8:	20c00104 	addi	r3,r4,4
  8017fc:	1003821e 	bne	r2,zero,802608 <___vfprintf_internal_r+0x14e8>
  801800:	6080100c 	andi	r2,r12,64
  801804:	10056526 	beq	r2,zero,802d9c <___vfprintf_internal_r+0x1c7c>
  801808:	d8800617 	ldw	r2,24(sp)
  80180c:	002b883a 	mov	r21,zero
  801810:	d8c00615 	stw	r3,24(sp)
  801814:	1500000b 	ldhu	r20,0(r2)
  801818:	00800044 	movi	r2,1
  80181c:	003f8306 	br	80162c <___vfprintf_internal_r+0x50c>
  801820:	03002074 	movhi	r12,129
  801824:	89000450 	cmplti	r4,r17,17
  801828:	d8801b17 	ldw	r2,108(sp)
  80182c:	6301ba04 	addi	r12,r12,1768
  801830:	20001b1e 	bne	r4,zero,8018a0 <___vfprintf_internal_r+0x780>
  801834:	05400404 	movi	r21,16
  801838:	6039883a 	mov	fp,r12
  80183c:	00000406 	br	801850 <___vfprintf_internal_r+0x730>
  801840:	8c7ffc04 	addi	r17,r17,-16
  801844:	89000448 	cmpgei	r4,r17,17
  801848:	b5800204 	addi	r22,r22,8
  80184c:	20001326 	beq	r4,zero,80189c <___vfprintf_internal_r+0x77c>
  801850:	10800044 	addi	r2,r2,1
  801854:	18c00404 	addi	r3,r3,16
  801858:	b7000015 	stw	fp,0(r22)
  80185c:	b5400115 	stw	r21,4(r22)
  801860:	d8c01c15 	stw	r3,112(sp)
  801864:	d8801b15 	stw	r2,108(sp)
  801868:	11000208 	cmpgei	r4,r2,8
  80186c:	203ff426 	beq	r4,zero,801840 <___vfprintf_internal_r+0x720>
  801870:	d9801a04 	addi	r6,sp,104
  801874:	900b883a 	mov	r5,r18
  801878:	9809883a 	mov	r4,r19
  80187c:	08084cc0 	call	8084cc <__sprint_r>
  801880:	103f361e 	bne	r2,zero,80155c <___vfprintf_internal_r+0x43c>
  801884:	8c7ffc04 	addi	r17,r17,-16
  801888:	89000448 	cmpgei	r4,r17,17
  80188c:	d8c01c17 	ldw	r3,112(sp)
  801890:	d8801b17 	ldw	r2,108(sp)
  801894:	dd802704 	addi	r22,sp,156
  801898:	203fed1e 	bne	r4,zero,801850 <___vfprintf_internal_r+0x730>
  80189c:	e019883a 	mov	r12,fp
  8018a0:	10800044 	addi	r2,r2,1
  8018a4:	1c47883a 	add	r3,r3,r17
  8018a8:	d8801b15 	stw	r2,108(sp)
  8018ac:	b3000015 	stw	r12,0(r22)
  8018b0:	b4400115 	stw	r17,4(r22)
  8018b4:	d8c01c15 	stw	r3,112(sp)
  8018b8:	10800210 	cmplti	r2,r2,8
  8018bc:	103f1b1e 	bne	r2,zero,80152c <___vfprintf_internal_r+0x40c>
  8018c0:	d9801a04 	addi	r6,sp,104
  8018c4:	900b883a 	mov	r5,r18
  8018c8:	9809883a 	mov	r4,r19
  8018cc:	08084cc0 	call	8084cc <__sprint_r>
  8018d0:	103f221e 	bne	r2,zero,80155c <___vfprintf_internal_r+0x43c>
  8018d4:	d8c01c17 	ldw	r3,112(sp)
  8018d8:	003f1406 	br	80152c <___vfprintf_internal_r+0x40c>
  8018dc:	9809883a 	mov	r4,r19
  8018e0:	08053700 	call	805370 <__sinit>
  8018e4:	003e2606 	br	801180 <___vfprintf_internal_r+0x60>
  8018e8:	21003fcc 	andi	r4,r4,255
  8018ec:	2005db1e 	bne	r4,zero,80305c <___vfprintf_internal_r+0x1f3c>
  8018f0:	6080080c 	andi	r2,r12,32
  8018f4:	10007026 	beq	r2,zero,801ab8 <___vfprintf_internal_r+0x998>
  8018f8:	d8c00617 	ldw	r3,24(sp)
  8018fc:	18800117 	ldw	r2,4(r3)
  801900:	1d000017 	ldw	r20,0(r3)
  801904:	18c00204 	addi	r3,r3,8
  801908:	d8c00615 	stw	r3,24(sp)
  80190c:	102b883a 	mov	r21,r2
  801910:	10007516 	blt	r2,zero,801ae8 <___vfprintf_internal_r+0x9c8>
  801914:	40bfffd8 	cmpnei	r2,r8,-1
  801918:	10034a26 	beq	r2,zero,802644 <___vfprintf_internal_r+0x1524>
  80191c:	047fdfc4 	movi	r17,-129
  801920:	6446703a 	and	r3,r12,r17
  801924:	a544b03a 	or	r2,r20,r21
  801928:	d8c00415 	stw	r3,16(sp)
  80192c:	db401343 	ldbu	r13,77(sp)
  801930:	1002ee26 	beq	r2,zero,8024ec <___vfprintf_internal_r+0x13cc>
  801934:	db000417 	ldw	r12,16(sp)
  801938:	a803441e 	bne	r21,zero,80264c <___vfprintf_internal_r+0x152c>
  80193c:	a08002a8 	cmpgeui	r2,r20,10
  801940:	1003421e 	bne	r2,zero,80264c <___vfprintf_internal_r+0x152c>
  801944:	a5000c04 	addi	r20,r20,48
  801948:	dd0026c5 	stb	r20,155(sp)
  80194c:	db000415 	stw	r12,16(sp)
  801950:	05400044 	movi	r21,1
  801954:	dc4026c4 	addi	r17,sp,155
  801958:	00008b06 	br	801b88 <___vfprintf_internal_r+0xa68>
  80195c:	bac00007 	ldb	r11,0(r23)
  801960:	63001014 	ori	r12,r12,64
  801964:	003e3a06 	br	801250 <___vfprintf_internal_r+0x130>
  801968:	21003fcc 	andi	r4,r4,255
  80196c:	2005c11e 	bne	r4,zero,803074 <___vfprintf_internal_r+0x1f54>
  801970:	00802074 	movhi	r2,129
  801974:	1081ae04 	addi	r2,r2,1720
  801978:	d8800c15 	stw	r2,48(sp)
  80197c:	6080080c 	andi	r2,r12,32
  801980:	1000d726 	beq	r2,zero,801ce0 <___vfprintf_internal_r+0xbc0>
  801984:	d8800617 	ldw	r2,24(sp)
  801988:	15000017 	ldw	r20,0(r2)
  80198c:	15400117 	ldw	r21,4(r2)
  801990:	10800204 	addi	r2,r2,8
  801994:	d8800615 	stw	r2,24(sp)
  801998:	6080004c 	andi	r2,r12,1
  80199c:	10000226 	beq	r2,zero,8019a8 <___vfprintf_internal_r+0x888>
  8019a0:	a544b03a 	or	r2,r20,r21
  8019a4:	1003091e 	bne	r2,zero,8025cc <___vfprintf_internal_r+0x14ac>
  8019a8:	00800084 	movi	r2,2
  8019ac:	003f1f06 	br	80162c <___vfprintf_internal_r+0x50c>
  8019b0:	d8800617 	ldw	r2,24(sp)
  8019b4:	d8001345 	stb	zero,77(sp)
  8019b8:	14400017 	ldw	r17,0(r2)
  8019bc:	10c00104 	addi	r3,r2,4
  8019c0:	88037726 	beq	r17,zero,8027a0 <___vfprintf_internal_r+0x1680>
  8019c4:	40bfffe0 	cmpeqi	r2,r8,-1
  8019c8:	1004661e 	bne	r2,zero,802b64 <___vfprintf_internal_r+0x1a44>
  8019cc:	400d883a 	mov	r6,r8
  8019d0:	000b883a 	mov	r5,zero
  8019d4:	8809883a 	mov	r4,r17
  8019d8:	d8c00715 	stw	r3,28(sp)
  8019dc:	db000615 	stw	r12,24(sp)
  8019e0:	da000415 	stw	r8,16(sp)
  8019e4:	08067b40 	call	8067b4 <memchr>
  8019e8:	da000417 	ldw	r8,16(sp)
  8019ec:	db000617 	ldw	r12,24(sp)
  8019f0:	d8c00717 	ldw	r3,28(sp)
  8019f4:	10058926 	beq	r2,zero,80301c <___vfprintf_internal_r+0x1efc>
  8019f8:	146bc83a 	sub	r21,r2,r17
  8019fc:	a829883a 	mov	r20,r21
  801a00:	d8c00615 	stw	r3,24(sp)
  801a04:	003e8b06 	br	801434 <___vfprintf_internal_r+0x314>
  801a08:	bac00007 	ldb	r11,0(r23)
  801a0c:	63000814 	ori	r12,r12,32
  801a10:	003e0f06 	br	801250 <___vfprintf_internal_r+0x130>
  801a14:	d8c00617 	ldw	r3,24(sp)
  801a18:	00800c04 	movi	r2,48
  801a1c:	d8801385 	stb	r2,78(sp)
  801a20:	00801e04 	movi	r2,120
  801a24:	01002074 	movhi	r4,129
  801a28:	d88013c5 	stb	r2,79(sp)
  801a2c:	18800104 	addi	r2,r3,4
  801a30:	d8800615 	stw	r2,24(sp)
  801a34:	2081ae04 	addi	r2,r4,1720
  801a38:	d8800c15 	stw	r2,48(sp)
  801a3c:	1d000017 	ldw	r20,0(r3)
  801a40:	002b883a 	mov	r21,zero
  801a44:	63000094 	ori	r12,r12,2
  801a48:	00800084 	movi	r2,2
  801a4c:	07001e04 	movi	fp,120
  801a50:	003ef606 	br	80162c <___vfprintf_internal_r+0x50c>
  801a54:	21003fcc 	andi	r4,r4,255
  801a58:	2005881e 	bne	r4,zero,80307c <___vfprintf_internal_r+0x1f5c>
  801a5c:	d9000617 	ldw	r4,24(sp)
  801a60:	6080080c 	andi	r2,r12,32
  801a64:	20c00017 	ldw	r3,0(r4)
  801a68:	21000104 	addi	r4,r4,4
  801a6c:	d9000615 	stw	r4,24(sp)
  801a70:	1002d11e 	bne	r2,zero,8025b8 <___vfprintf_internal_r+0x1498>
  801a74:	6080040c 	andi	r2,r12,16
  801a78:	10036f1e 	bne	r2,zero,802838 <___vfprintf_internal_r+0x1718>
  801a7c:	6300100c 	andi	r12,r12,64
  801a80:	60036d26 	beq	r12,zero,802838 <___vfprintf_internal_r+0x1718>
  801a84:	d8800517 	ldw	r2,20(sp)
  801a88:	1880000d 	sth	r2,0(r3)
  801a8c:	003dd806 	br	8011f0 <___vfprintf_internal_r+0xd0>
  801a90:	bac00007 	ldb	r11,0(r23)
  801a94:	58801b18 	cmpnei	r2,r11,108
  801a98:	10033026 	beq	r2,zero,80275c <___vfprintf_internal_r+0x163c>
  801a9c:	63000414 	ori	r12,r12,16
  801aa0:	003deb06 	br	801250 <___vfprintf_internal_r+0x130>
  801aa4:	21003fcc 	andi	r4,r4,255
  801aa8:	2005701e 	bne	r4,zero,80306c <___vfprintf_internal_r+0x1f4c>
  801aac:	63000414 	ori	r12,r12,16
  801ab0:	6080080c 	andi	r2,r12,32
  801ab4:	103f901e 	bne	r2,zero,8018f8 <___vfprintf_internal_r+0x7d8>
  801ab8:	d9000617 	ldw	r4,24(sp)
  801abc:	6080040c 	andi	r2,r12,16
  801ac0:	20c00104 	addi	r3,r4,4
  801ac4:	1002d51e 	bne	r2,zero,80261c <___vfprintf_internal_r+0x14fc>
  801ac8:	6080100c 	andi	r2,r12,64
  801acc:	1004a726 	beq	r2,zero,802d6c <___vfprintf_internal_r+0x1c4c>
  801ad0:	d8800617 	ldw	r2,24(sp)
  801ad4:	d8c00615 	stw	r3,24(sp)
  801ad8:	1500000f 	ldh	r20,0(r2)
  801adc:	a02bd7fa 	srai	r21,r20,31
  801ae0:	a805883a 	mov	r2,r21
  801ae4:	103f8b0e 	bge	r2,zero,801914 <___vfprintf_internal_r+0x7f4>
  801ae8:	a004c03a 	cmpne	r2,r20,zero
  801aec:	056bc83a 	sub	r21,zero,r21
  801af0:	a8abc83a 	sub	r21,r21,r2
  801af4:	00800b44 	movi	r2,45
  801af8:	d8801345 	stb	r2,77(sp)
  801afc:	40ffffe0 	cmpeqi	r3,r8,-1
  801b00:	0529c83a 	sub	r20,zero,r20
  801b04:	03400b44 	movi	r13,45
  801b08:	00800044 	movi	r2,1
  801b0c:	183ecb26 	beq	r3,zero,80163c <___vfprintf_internal_r+0x51c>
  801b10:	10c00060 	cmpeqi	r3,r2,1
  801b14:	183f881e 	bne	r3,zero,801938 <___vfprintf_internal_r+0x818>
  801b18:	108000a0 	cmpeqi	r2,r2,2
  801b1c:	1001311e 	bne	r2,zero,801fe4 <___vfprintf_internal_r+0xec4>
  801b20:	dc402704 	addi	r17,sp,156
  801b24:	a004d0fa 	srli	r2,r20,3
  801b28:	a806977a 	slli	r3,r21,29
  801b2c:	a82ad0fa 	srli	r21,r21,3
  801b30:	a50001cc 	andi	r20,r20,7
  801b34:	a1000c04 	addi	r4,r20,48
  801b38:	18a8b03a 	or	r20,r3,r2
  801b3c:	893fffc5 	stb	r4,-1(r17)
  801b40:	a544b03a 	or	r2,r20,r21
  801b44:	880b883a 	mov	r5,r17
  801b48:	8c7fffc4 	addi	r17,r17,-1
  801b4c:	103ff51e 	bne	r2,zero,801b24 <___vfprintf_internal_r+0xa04>
  801b50:	6080004c 	andi	r2,r12,1
  801b54:	10013026 	beq	r2,zero,802018 <___vfprintf_internal_r+0xef8>
  801b58:	21003fcc 	andi	r4,r4,255
  801b5c:	2100201c 	xori	r4,r4,128
  801b60:	213fe004 	addi	r4,r4,-128
  801b64:	20800c18 	cmpnei	r2,r4,48
  801b68:	10012b26 	beq	r2,zero,802018 <___vfprintf_internal_r+0xef8>
  801b6c:	00800c04 	movi	r2,48
  801b70:	297fff84 	addi	r5,r5,-2
  801b74:	88bfffc5 	stb	r2,-1(r17)
  801b78:	d8802704 	addi	r2,sp,156
  801b7c:	116bc83a 	sub	r21,r2,r5
  801b80:	db000415 	stw	r12,16(sp)
  801b84:	2823883a 	mov	r17,r5
  801b88:	4029883a 	mov	r20,r8
  801b8c:	4540010e 	bge	r8,r21,801b94 <___vfprintf_internal_r+0xa74>
  801b90:	a829883a 	mov	r20,r21
  801b94:	d8000715 	stw	zero,28(sp)
  801b98:	6b403fcc 	andi	r13,r13,255
  801b9c:	6b40201c 	xori	r13,r13,128
  801ba0:	6b7fe004 	addi	r13,r13,-128
  801ba4:	683e2626 	beq	r13,zero,801440 <___vfprintf_internal_r+0x320>
  801ba8:	a5000044 	addi	r20,r20,1
  801bac:	003e2406 	br	801440 <___vfprintf_internal_r+0x320>
  801bb0:	bac00007 	ldb	r11,0(r23)
  801bb4:	63002014 	ori	r12,r12,128
  801bb8:	003da506 	br	801250 <___vfprintf_internal_r+0x130>
  801bbc:	bf000007 	ldb	fp,0(r23)
  801bc0:	b8800044 	addi	r2,r23,1
  801bc4:	e0c00aa0 	cmpeqi	r3,fp,42
  801bc8:	1805841e 	bne	r3,zero,8031dc <___vfprintf_internal_r+0x20bc>
  801bcc:	e0fff404 	addi	r3,fp,-48
  801bd0:	198002b0 	cmpltui	r6,r3,10
  801bd4:	102f883a 	mov	r23,r2
  801bd8:	0011883a 	mov	r8,zero
  801bdc:	303d9e26 	beq	r6,zero,801258 <___vfprintf_internal_r+0x138>
  801be0:	400490ba 	slli	r2,r8,2
  801be4:	bf000007 	ldb	fp,0(r23)
  801be8:	bdc00044 	addi	r23,r23,1
  801bec:	1211883a 	add	r8,r2,r8
  801bf0:	4211883a 	add	r8,r8,r8
  801bf4:	40d1883a 	add	r8,r8,r3
  801bf8:	e0fff404 	addi	r3,fp,-48
  801bfc:	188002b0 	cmpltui	r2,r3,10
  801c00:	103ff71e 	bne	r2,zero,801be0 <___vfprintf_internal_r+0xac0>
  801c04:	003d9406 	br	801258 <___vfprintf_internal_r+0x138>
  801c08:	bf000003 	ldbu	fp,0(r23)
  801c0c:	e2c03fcc 	andi	r11,fp,255
  801c10:	5ac0201c 	xori	r11,r11,128
  801c14:	63000114 	ori	r12,r12,4
  801c18:	5affe004 	addi	r11,r11,-128
  801c1c:	003d8c06 	br	801250 <___vfprintf_internal_r+0x130>
  801c20:	bac00007 	ldb	r11,0(r23)
  801c24:	01000044 	movi	r4,1
  801c28:	01400ac4 	movi	r5,43
  801c2c:	003d8806 	br	801250 <___vfprintf_internal_r+0x130>
  801c30:	d8800617 	ldw	r2,24(sp)
  801c34:	bf000003 	ldbu	fp,0(r23)
  801c38:	14000017 	ldw	r16,0(r2)
  801c3c:	10800104 	addi	r2,r2,4
  801c40:	8002aa16 	blt	r16,zero,8026ec <___vfprintf_internal_r+0x15cc>
  801c44:	d8800615 	stw	r2,24(sp)
  801c48:	e2c03fcc 	andi	r11,fp,255
  801c4c:	5ac0201c 	xori	r11,r11,128
  801c50:	5affe004 	addi	r11,r11,-128
  801c54:	003d7e06 	br	801250 <___vfprintf_internal_r+0x130>
  801c58:	bac00007 	ldb	r11,0(r23)
  801c5c:	63000054 	ori	r12,r12,1
  801c60:	003d7b06 	br	801250 <___vfprintf_internal_r+0x130>
  801c64:	28803fcc 	andi	r2,r5,255
  801c68:	1080201c 	xori	r2,r2,128
  801c6c:	10bfe004 	addi	r2,r2,-128
  801c70:	bf000003 	ldbu	fp,0(r23)
  801c74:	103ff41e 	bne	r2,zero,801c48 <___vfprintf_internal_r+0xb28>
  801c78:	e2c03fcc 	andi	r11,fp,255
  801c7c:	5ac0201c 	xori	r11,r11,128
  801c80:	01000044 	movi	r4,1
  801c84:	01400804 	movi	r5,32
  801c88:	5affe004 	addi	r11,r11,-128
  801c8c:	003d7006 	br	801250 <___vfprintf_internal_r+0x130>
  801c90:	bac00007 	ldb	r11,0(r23)
  801c94:	63000214 	ori	r12,r12,8
  801c98:	003d6d06 	br	801250 <___vfprintf_internal_r+0x130>
  801c9c:	d8c00617 	ldw	r3,24(sp)
  801ca0:	d8001345 	stb	zero,77(sp)
  801ca4:	05000044 	movi	r20,1
  801ca8:	18800017 	ldw	r2,0(r3)
  801cac:	18c00104 	addi	r3,r3,4
  801cb0:	d8c00615 	stw	r3,24(sp)
  801cb4:	d8801d05 	stb	r2,116(sp)
  801cb8:	05400044 	movi	r21,1
  801cbc:	dc401d04 	addi	r17,sp,116
  801cc0:	003ddc06 	br	801434 <___vfprintf_internal_r+0x314>
  801cc4:	21003fcc 	andi	r4,r4,255
  801cc8:	2004e61e 	bne	r4,zero,803064 <___vfprintf_internal_r+0x1f44>
  801ccc:	00802074 	movhi	r2,129
  801cd0:	1081a904 	addi	r2,r2,1700
  801cd4:	d8800c15 	stw	r2,48(sp)
  801cd8:	6080080c 	andi	r2,r12,32
  801cdc:	103f291e 	bne	r2,zero,801984 <___vfprintf_internal_r+0x864>
  801ce0:	d9000617 	ldw	r4,24(sp)
  801ce4:	6080040c 	andi	r2,r12,16
  801ce8:	20c00104 	addi	r3,r4,4
  801cec:	10023d1e 	bne	r2,zero,8025e4 <___vfprintf_internal_r+0x14c4>
  801cf0:	6080100c 	andi	r2,r12,64
  801cf4:	10042f26 	beq	r2,zero,802db4 <___vfprintf_internal_r+0x1c94>
  801cf8:	d8800617 	ldw	r2,24(sp)
  801cfc:	002b883a 	mov	r21,zero
  801d00:	d8c00615 	stw	r3,24(sp)
  801d04:	1500000b 	ldhu	r20,0(r2)
  801d08:	003f2306 	br	801998 <___vfprintf_internal_r+0x878>
  801d0c:	e2c01990 	cmplti	r11,fp,102
  801d10:	5800f61e 	bne	r11,zero,8020ec <___vfprintf_internal_r+0xfcc>
  801d14:	d9000917 	ldw	r4,36(sp)
  801d18:	d9400a17 	ldw	r5,40(sp)
  801d1c:	000d883a 	mov	r6,zero
  801d20:	000f883a 	mov	r7,zero
  801d24:	d8c00e15 	stw	r3,56(sp)
  801d28:	080c7500 	call	80c750 <__eqdf2>
  801d2c:	d8c00e17 	ldw	r3,56(sp)
  801d30:	1001881e 	bne	r2,zero,802354 <___vfprintf_internal_r+0x1234>
  801d34:	d8801b17 	ldw	r2,108(sp)
  801d38:	01002074 	movhi	r4,129
  801d3c:	2101b504 	addi	r4,r4,1748
  801d40:	10800044 	addi	r2,r2,1
  801d44:	18c00044 	addi	r3,r3,1
  801d48:	b1000015 	stw	r4,0(r22)
  801d4c:	01000044 	movi	r4,1
  801d50:	d8801b15 	stw	r2,108(sp)
  801d54:	b1000115 	stw	r4,4(r22)
  801d58:	d8c01c15 	stw	r3,112(sp)
  801d5c:	10800208 	cmpgei	r2,r2,8
  801d60:	10036e1e 	bne	r2,zero,802b1c <___vfprintf_internal_r+0x19fc>
  801d64:	b5800204 	addi	r22,r22,8
  801d68:	d8801417 	ldw	r2,80(sp)
  801d6c:	d9000817 	ldw	r4,32(sp)
  801d70:	11020b0e 	bge	r2,r4,8025a0 <___vfprintf_internal_r+0x1480>
  801d74:	d8800d17 	ldw	r2,52(sp)
  801d78:	d9000b17 	ldw	r4,44(sp)
  801d7c:	b0800015 	stw	r2,0(r22)
  801d80:	d8801b17 	ldw	r2,108(sp)
  801d84:	1907883a 	add	r3,r3,r4
  801d88:	b1000115 	stw	r4,4(r22)
  801d8c:	10800044 	addi	r2,r2,1
  801d90:	d8801b15 	stw	r2,108(sp)
  801d94:	d8c01c15 	stw	r3,112(sp)
  801d98:	10800208 	cmpgei	r2,r2,8
  801d9c:	1002761e 	bne	r2,zero,802778 <___vfprintf_internal_r+0x1658>
  801da0:	b5800204 	addi	r22,r22,8
  801da4:	d8800817 	ldw	r2,32(sp)
  801da8:	157fffc4 	addi	r21,r2,-1
  801dac:	057dda0e 	bge	zero,r21,801518 <___vfprintf_internal_r+0x3f8>
  801db0:	01c02074 	movhi	r7,129
  801db4:	a9000450 	cmplti	r4,r21,17
  801db8:	d8801b17 	ldw	r2,108(sp)
  801dbc:	39c1b604 	addi	r7,r7,1752
  801dc0:	2003521e 	bne	r4,zero,802b0c <___vfprintf_internal_r+0x19ec>
  801dc4:	07000404 	movi	fp,16
  801dc8:	3823883a 	mov	r17,r7
  801dcc:	00000406 	br	801de0 <___vfprintf_internal_r+0xcc0>
  801dd0:	b5800204 	addi	r22,r22,8
  801dd4:	ad7ffc04 	addi	r21,r21,-16
  801dd8:	a9000448 	cmpgei	r4,r21,17
  801ddc:	20034a26 	beq	r4,zero,802b08 <___vfprintf_internal_r+0x19e8>
  801de0:	10800044 	addi	r2,r2,1
  801de4:	18c00404 	addi	r3,r3,16
  801de8:	b4400015 	stw	r17,0(r22)
  801dec:	b7000115 	stw	fp,4(r22)
  801df0:	d8c01c15 	stw	r3,112(sp)
  801df4:	d8801b15 	stw	r2,108(sp)
  801df8:	11000208 	cmpgei	r4,r2,8
  801dfc:	203ff426 	beq	r4,zero,801dd0 <___vfprintf_internal_r+0xcb0>
  801e00:	d9801a04 	addi	r6,sp,104
  801e04:	900b883a 	mov	r5,r18
  801e08:	9809883a 	mov	r4,r19
  801e0c:	08084cc0 	call	8084cc <__sprint_r>
  801e10:	103dd21e 	bne	r2,zero,80155c <___vfprintf_internal_r+0x43c>
  801e14:	d8c01c17 	ldw	r3,112(sp)
  801e18:	d8801b17 	ldw	r2,108(sp)
  801e1c:	dd802704 	addi	r22,sp,156
  801e20:	003fec06 	br	801dd4 <___vfprintf_internal_r+0xcb4>
  801e24:	8519c83a 	sub	r12,r16,r20
  801e28:	033dac0e 	bge	zero,r12,8014dc <___vfprintf_internal_r+0x3bc>
  801e2c:	01c02074 	movhi	r7,129
  801e30:	61000450 	cmplti	r4,r12,17
  801e34:	d8801b17 	ldw	r2,108(sp)
  801e38:	39c1b604 	addi	r7,r7,1752
  801e3c:	2000281e 	bne	r4,zero,801ee0 <___vfprintf_internal_r+0xdc0>
  801e40:	dc400e15 	stw	r17,56(sp)
  801e44:	dc000f15 	stw	r16,60(sp)
  801e48:	b009883a 	mov	r4,r22
  801e4c:	03400404 	movi	r13,16
  801e50:	a02d883a 	mov	r22,r20
  801e54:	6021883a 	mov	r16,r12
  801e58:	4029883a 	mov	r20,r8
  801e5c:	3823883a 	mov	r17,r7
  801e60:	00000406 	br	801e74 <___vfprintf_internal_r+0xd54>
  801e64:	843ffc04 	addi	r16,r16,-16
  801e68:	81400448 	cmpgei	r5,r16,17
  801e6c:	21000204 	addi	r4,r4,8
  801e70:	28001426 	beq	r5,zero,801ec4 <___vfprintf_internal_r+0xda4>
  801e74:	10800044 	addi	r2,r2,1
  801e78:	18c00404 	addi	r3,r3,16
  801e7c:	24400015 	stw	r17,0(r4)
  801e80:	23400115 	stw	r13,4(r4)
  801e84:	d8c01c15 	stw	r3,112(sp)
  801e88:	d8801b15 	stw	r2,108(sp)
  801e8c:	11400208 	cmpgei	r5,r2,8
  801e90:	283ff426 	beq	r5,zero,801e64 <___vfprintf_internal_r+0xd44>
  801e94:	d9801a04 	addi	r6,sp,104
  801e98:	900b883a 	mov	r5,r18
  801e9c:	9809883a 	mov	r4,r19
  801ea0:	08084cc0 	call	8084cc <__sprint_r>
  801ea4:	103dad1e 	bne	r2,zero,80155c <___vfprintf_internal_r+0x43c>
  801ea8:	843ffc04 	addi	r16,r16,-16
  801eac:	81400448 	cmpgei	r5,r16,17
  801eb0:	d8c01c17 	ldw	r3,112(sp)
  801eb4:	d8801b17 	ldw	r2,108(sp)
  801eb8:	d9002704 	addi	r4,sp,156
  801ebc:	03400404 	movi	r13,16
  801ec0:	283fec1e 	bne	r5,zero,801e74 <___vfprintf_internal_r+0xd54>
  801ec4:	8019883a 	mov	r12,r16
  801ec8:	880f883a 	mov	r7,r17
  801ecc:	dc000f17 	ldw	r16,60(sp)
  801ed0:	dc400e17 	ldw	r17,56(sp)
  801ed4:	a011883a 	mov	r8,r20
  801ed8:	b029883a 	mov	r20,r22
  801edc:	202d883a 	mov	r22,r4
  801ee0:	10800044 	addi	r2,r2,1
  801ee4:	1b07883a 	add	r3,r3,r12
  801ee8:	d8801b15 	stw	r2,108(sp)
  801eec:	b1c00015 	stw	r7,0(r22)
  801ef0:	b3000115 	stw	r12,4(r22)
  801ef4:	d8c01c15 	stw	r3,112(sp)
  801ef8:	10800208 	cmpgei	r2,r2,8
  801efc:	10030f1e 	bne	r2,zero,802b3c <___vfprintf_internal_r+0x1a1c>
  801f00:	4551c83a 	sub	r8,r8,r21
  801f04:	b5800204 	addi	r22,r22,8
  801f08:	023d760e 	bge	zero,r8,8014e4 <___vfprintf_internal_r+0x3c4>
  801f0c:	01c02074 	movhi	r7,129
  801f10:	41000450 	cmplti	r4,r8,17
  801f14:	d8801b17 	ldw	r2,108(sp)
  801f18:	39c1b604 	addi	r7,r7,1752
  801f1c:	2000221e 	bne	r4,zero,801fa8 <___vfprintf_internal_r+0xe88>
  801f20:	dc400e15 	stw	r17,56(sp)
  801f24:	dc000f15 	stw	r16,60(sp)
  801f28:	03000404 	movi	r12,16
  801f2c:	4021883a 	mov	r16,r8
  801f30:	3823883a 	mov	r17,r7
  801f34:	00000406 	br	801f48 <___vfprintf_internal_r+0xe28>
  801f38:	843ffc04 	addi	r16,r16,-16
  801f3c:	81000448 	cmpgei	r4,r16,17
  801f40:	b5800204 	addi	r22,r22,8
  801f44:	20001426 	beq	r4,zero,801f98 <___vfprintf_internal_r+0xe78>
  801f48:	10800044 	addi	r2,r2,1
  801f4c:	18c00404 	addi	r3,r3,16
  801f50:	b4400015 	stw	r17,0(r22)
  801f54:	b3000115 	stw	r12,4(r22)
  801f58:	d8c01c15 	stw	r3,112(sp)
  801f5c:	d8801b15 	stw	r2,108(sp)
  801f60:	11000208 	cmpgei	r4,r2,8
  801f64:	203ff426 	beq	r4,zero,801f38 <___vfprintf_internal_r+0xe18>
  801f68:	d9801a04 	addi	r6,sp,104
  801f6c:	900b883a 	mov	r5,r18
  801f70:	9809883a 	mov	r4,r19
  801f74:	08084cc0 	call	8084cc <__sprint_r>
  801f78:	103d781e 	bne	r2,zero,80155c <___vfprintf_internal_r+0x43c>
  801f7c:	843ffc04 	addi	r16,r16,-16
  801f80:	81000448 	cmpgei	r4,r16,17
  801f84:	d8c01c17 	ldw	r3,112(sp)
  801f88:	d8801b17 	ldw	r2,108(sp)
  801f8c:	dd802704 	addi	r22,sp,156
  801f90:	03000404 	movi	r12,16
  801f94:	203fec1e 	bne	r4,zero,801f48 <___vfprintf_internal_r+0xe28>
  801f98:	8011883a 	mov	r8,r16
  801f9c:	880f883a 	mov	r7,r17
  801fa0:	dc000f17 	ldw	r16,60(sp)
  801fa4:	dc400e17 	ldw	r17,56(sp)
  801fa8:	10800044 	addi	r2,r2,1
  801fac:	1a07883a 	add	r3,r3,r8
  801fb0:	d8801b15 	stw	r2,108(sp)
  801fb4:	b1c00015 	stw	r7,0(r22)
  801fb8:	b2000115 	stw	r8,4(r22)
  801fbc:	d8c01c15 	stw	r3,112(sp)
  801fc0:	10800208 	cmpgei	r2,r2,8
  801fc4:	10016e1e 	bne	r2,zero,802580 <___vfprintf_internal_r+0x1460>
  801fc8:	b5800204 	addi	r22,r22,8
  801fcc:	003d4506 	br	8014e4 <___vfprintf_internal_r+0x3c4>
  801fd0:	10c00060 	cmpeqi	r3,r2,1
  801fd4:	1803c81e 	bne	r3,zero,802ef8 <___vfprintf_internal_r+0x1dd8>
  801fd8:	108000a0 	cmpeqi	r2,r2,2
  801fdc:	db000417 	ldw	r12,16(sp)
  801fe0:	103ecf26 	beq	r2,zero,801b20 <___vfprintf_internal_r+0xa00>
  801fe4:	d9000c17 	ldw	r4,48(sp)
  801fe8:	dc402704 	addi	r17,sp,156
  801fec:	a08003cc 	andi	r2,r20,15
  801ff0:	a806973a 	slli	r3,r21,28
  801ff4:	a028d13a 	srli	r20,r20,4
  801ff8:	2085883a 	add	r2,r4,r2
  801ffc:	10800003 	ldbu	r2,0(r2)
  802000:	a82ad13a 	srli	r21,r21,4
  802004:	1d28b03a 	or	r20,r3,r20
  802008:	88bfffc5 	stb	r2,-1(r17)
  80200c:	a544b03a 	or	r2,r20,r21
  802010:	8c7fffc4 	addi	r17,r17,-1
  802014:	103ff51e 	bne	r2,zero,801fec <___vfprintf_internal_r+0xecc>
  802018:	d8802704 	addi	r2,sp,156
  80201c:	146bc83a 	sub	r21,r2,r17
  802020:	db000415 	stw	r12,16(sp)
  802024:	003ed806 	br	801b88 <___vfprintf_internal_r+0xa68>
  802028:	d9801a04 	addi	r6,sp,104
  80202c:	900b883a 	mov	r5,r18
  802030:	9809883a 	mov	r4,r19
  802034:	08084cc0 	call	8084cc <__sprint_r>
  802038:	103d4226 	beq	r2,zero,801544 <___vfprintf_internal_r+0x424>
  80203c:	003d4706 	br	80155c <___vfprintf_internal_r+0x43c>
  802040:	d9801a04 	addi	r6,sp,104
  802044:	900b883a 	mov	r5,r18
  802048:	9809883a 	mov	r4,r19
  80204c:	08084cc0 	call	8084cc <__sprint_r>
  802050:	103d421e 	bne	r2,zero,80155c <___vfprintf_internal_r+0x43c>
  802054:	d9401417 	ldw	r5,80(sp)
  802058:	d8c01c17 	ldw	r3,112(sp)
  80205c:	dd802704 	addi	r22,sp,156
  802060:	2802c81e 	bne	r5,zero,802b84 <___vfprintf_internal_r+0x1a64>
  802064:	d8800417 	ldw	r2,16(sp)
  802068:	d9000817 	ldw	r4,32(sp)
  80206c:	1080004c 	andi	r2,r2,1
  802070:	1104b03a 	or	r2,r2,r4
  802074:	103d2826 	beq	r2,zero,801518 <___vfprintf_internal_r+0x3f8>
  802078:	d8800d17 	ldw	r2,52(sp)
  80207c:	d9000b17 	ldw	r4,44(sp)
  802080:	b0800015 	stw	r2,0(r22)
  802084:	d8801b17 	ldw	r2,108(sp)
  802088:	20c7883a 	add	r3,r4,r3
  80208c:	b1000115 	stw	r4,4(r22)
  802090:	10800044 	addi	r2,r2,1
  802094:	d8c01c15 	stw	r3,112(sp)
  802098:	d8801b15 	stw	r2,108(sp)
  80209c:	11000208 	cmpgei	r4,r2,8
  8020a0:	2003821e 	bne	r4,zero,802eac <___vfprintf_internal_r+0x1d8c>
  8020a4:	b5800204 	addi	r22,r22,8
  8020a8:	d9000817 	ldw	r4,32(sp)
  8020ac:	10800044 	addi	r2,r2,1
  8020b0:	d8801b15 	stw	r2,108(sp)
  8020b4:	20c7883a 	add	r3,r4,r3
  8020b8:	b4400015 	stw	r17,0(r22)
  8020bc:	b1000115 	stw	r4,4(r22)
  8020c0:	d8c01c15 	stw	r3,112(sp)
  8020c4:	10800208 	cmpgei	r2,r2,8
  8020c8:	103d1226 	beq	r2,zero,801514 <___vfprintf_internal_r+0x3f4>
  8020cc:	d9801a04 	addi	r6,sp,104
  8020d0:	900b883a 	mov	r5,r18
  8020d4:	9809883a 	mov	r4,r19
  8020d8:	08084cc0 	call	8084cc <__sprint_r>
  8020dc:	103d1f1e 	bne	r2,zero,80155c <___vfprintf_internal_r+0x43c>
  8020e0:	d8c01c17 	ldw	r3,112(sp)
  8020e4:	dd802704 	addi	r22,sp,156
  8020e8:	003d0b06 	br	801518 <___vfprintf_internal_r+0x3f8>
  8020ec:	d8800817 	ldw	r2,32(sp)
  8020f0:	da001b17 	ldw	r8,108(sp)
  8020f4:	18c00044 	addi	r3,r3,1
  8020f8:	10800088 	cmpgei	r2,r2,2
  8020fc:	45400044 	addi	r21,r8,1
  802100:	b7000204 	addi	fp,r22,8
  802104:	1000ec26 	beq	r2,zero,8024b8 <___vfprintf_internal_r+0x1398>
  802108:	00800044 	movi	r2,1
  80210c:	b0800115 	stw	r2,4(r22)
  802110:	b4400015 	stw	r17,0(r22)
  802114:	d8c01c15 	stw	r3,112(sp)
  802118:	dd401b15 	stw	r21,108(sp)
  80211c:	a8800210 	cmplti	r2,r21,8
  802120:	1001d126 	beq	r2,zero,802868 <___vfprintf_internal_r+0x1748>
  802124:	d8800b17 	ldw	r2,44(sp)
  802128:	d9000d17 	ldw	r4,52(sp)
  80212c:	ad400044 	addi	r21,r21,1
  802130:	1887883a 	add	r3,r3,r2
  802134:	e0800115 	stw	r2,4(fp)
  802138:	e1000015 	stw	r4,0(fp)
  80213c:	d8c01c15 	stw	r3,112(sp)
  802140:	dd401b15 	stw	r21,108(sp)
  802144:	a8800208 	cmpgei	r2,r21,8
  802148:	1001be1e 	bne	r2,zero,802844 <___vfprintf_internal_r+0x1724>
  80214c:	e7000204 	addi	fp,fp,8
  802150:	d9000917 	ldw	r4,36(sp)
  802154:	d9400a17 	ldw	r5,40(sp)
  802158:	aa000044 	addi	r8,r21,1
  80215c:	000d883a 	mov	r6,zero
  802160:	000f883a 	mov	r7,zero
  802164:	d8c00e15 	stw	r3,56(sp)
  802168:	da000715 	stw	r8,28(sp)
  80216c:	080c7500 	call	80c750 <__eqdf2>
  802170:	d8c00817 	ldw	r3,32(sp)
  802174:	da000717 	ldw	r8,28(sp)
  802178:	e5800204 	addi	r22,fp,8
  80217c:	1affffc4 	addi	r11,r3,-1
  802180:	d8c00e17 	ldw	r3,56(sp)
  802184:	1000de26 	beq	r2,zero,802500 <___vfprintf_internal_r+0x13e0>
  802188:	8a400044 	addi	r9,r17,1
  80218c:	1ac7883a 	add	r3,r3,r11
  802190:	da001b15 	stw	r8,108(sp)
  802194:	e2400015 	stw	r9,0(fp)
  802198:	e2c00115 	stw	r11,4(fp)
  80219c:	d8c01c15 	stw	r3,112(sp)
  8021a0:	42000208 	cmpgei	r8,r8,8
  8021a4:	4001621e 	bne	r8,zero,802730 <___vfprintf_internal_r+0x1610>
  8021a8:	e0800404 	addi	r2,fp,16
  8021ac:	aa000084 	addi	r8,r21,2
  8021b0:	b039883a 	mov	fp,r22
  8021b4:	102d883a 	mov	r22,r2
  8021b8:	d9001017 	ldw	r4,64(sp)
  8021bc:	d8801644 	addi	r2,sp,89
  8021c0:	da001b15 	stw	r8,108(sp)
  8021c4:	20c7883a 	add	r3,r4,r3
  8021c8:	e0800015 	stw	r2,0(fp)
  8021cc:	e1000115 	stw	r4,4(fp)
  8021d0:	d8c01c15 	stw	r3,112(sp)
  8021d4:	42000210 	cmplti	r8,r8,8
  8021d8:	403ccf1e 	bne	r8,zero,801518 <___vfprintf_internal_r+0x3f8>
  8021dc:	003fbb06 	br	8020cc <___vfprintf_internal_r+0xfac>
  8021e0:	db000417 	ldw	r12,16(sp)
  8021e4:	003e4a06 	br	801b10 <___vfprintf_internal_r+0x9f0>
  8021e8:	03002074 	movhi	r12,129
  8021ec:	39000450 	cmplti	r4,r7,17
  8021f0:	d8801b17 	ldw	r2,108(sp)
  8021f4:	6301ba04 	addi	r12,r12,1768
  8021f8:	2000321e 	bne	r4,zero,8022c4 <___vfprintf_internal_r+0x11a4>
  8021fc:	dc401115 	stw	r17,68(sp)
  802200:	b009883a 	mov	r4,r22
  802204:	9023883a 	mov	r17,r18
  802208:	a82d883a 	mov	r22,r21
  80220c:	ddc01215 	stw	r23,72(sp)
  802210:	03c00404 	movi	r15,16
  802214:	a02f883a 	mov	r23,r20
  802218:	db800e15 	stw	r14,56(sp)
  80221c:	8029883a 	mov	r20,r16
  802220:	db400f15 	stw	r13,60(sp)
  802224:	402b883a 	mov	r21,r8
  802228:	3821883a 	mov	r16,r7
  80222c:	6025883a 	mov	r18,r12
  802230:	00000406 	br	802244 <___vfprintf_internal_r+0x1124>
  802234:	843ffc04 	addi	r16,r16,-16
  802238:	81800448 	cmpgei	r6,r16,17
  80223c:	21000204 	addi	r4,r4,8
  802240:	30001426 	beq	r6,zero,802294 <___vfprintf_internal_r+0x1174>
  802244:	10800044 	addi	r2,r2,1
  802248:	18c00404 	addi	r3,r3,16
  80224c:	24800015 	stw	r18,0(r4)
  802250:	23c00115 	stw	r15,4(r4)
  802254:	d8c01c15 	stw	r3,112(sp)
  802258:	d8801b15 	stw	r2,108(sp)
  80225c:	11800208 	cmpgei	r6,r2,8
  802260:	303ff426 	beq	r6,zero,802234 <___vfprintf_internal_r+0x1114>
  802264:	d9801a04 	addi	r6,sp,104
  802268:	880b883a 	mov	r5,r17
  80226c:	9809883a 	mov	r4,r19
  802270:	08084cc0 	call	8084cc <__sprint_r>
  802274:	1001a11e 	bne	r2,zero,8028fc <___vfprintf_internal_r+0x17dc>
  802278:	843ffc04 	addi	r16,r16,-16
  80227c:	81800448 	cmpgei	r6,r16,17
  802280:	d8c01c17 	ldw	r3,112(sp)
  802284:	d8801b17 	ldw	r2,108(sp)
  802288:	d9002704 	addi	r4,sp,156
  80228c:	03c00404 	movi	r15,16
  802290:	303fec1e 	bne	r6,zero,802244 <___vfprintf_internal_r+0x1124>
  802294:	800f883a 	mov	r7,r16
  802298:	9019883a 	mov	r12,r18
  80229c:	a021883a 	mov	r16,r20
  8022a0:	8825883a 	mov	r18,r17
  8022a4:	b829883a 	mov	r20,r23
  8022a8:	db800e17 	ldw	r14,56(sp)
  8022ac:	db400f17 	ldw	r13,60(sp)
  8022b0:	ddc01217 	ldw	r23,72(sp)
  8022b4:	dc401117 	ldw	r17,68(sp)
  8022b8:	a811883a 	mov	r8,r21
  8022bc:	b02b883a 	mov	r21,r22
  8022c0:	202d883a 	mov	r22,r4
  8022c4:	10800044 	addi	r2,r2,1
  8022c8:	19c7883a 	add	r3,r3,r7
  8022cc:	d8801b15 	stw	r2,108(sp)
  8022d0:	b3000015 	stw	r12,0(r22)
  8022d4:	b1c00115 	stw	r7,4(r22)
  8022d8:	d8c01c15 	stw	r3,112(sp)
  8022dc:	10800208 	cmpgei	r2,r2,8
  8022e0:	1001781e 	bne	r2,zero,8028c4 <___vfprintf_internal_r+0x17a4>
  8022e4:	b5800204 	addi	r22,r22,8
  8022e8:	003c5f06 	br	801468 <___vfprintf_internal_r+0x348>
  8022ec:	d9801a04 	addi	r6,sp,104
  8022f0:	900b883a 	mov	r5,r18
  8022f4:	9809883a 	mov	r4,r19
  8022f8:	da000f15 	stw	r8,60(sp)
  8022fc:	db400e15 	stw	r13,56(sp)
  802300:	08084cc0 	call	8084cc <__sprint_r>
  802304:	103c951e 	bne	r2,zero,80155c <___vfprintf_internal_r+0x43c>
  802308:	d8c01c17 	ldw	r3,112(sp)
  80230c:	da000f17 	ldw	r8,60(sp)
  802310:	db400e17 	ldw	r13,56(sp)
  802314:	dd802704 	addi	r22,sp,156
  802318:	003c6e06 	br	8014d4 <___vfprintf_internal_r+0x3b4>
  80231c:	d9801a04 	addi	r6,sp,104
  802320:	900b883a 	mov	r5,r18
  802324:	9809883a 	mov	r4,r19
  802328:	da001115 	stw	r8,68(sp)
  80232c:	db400f15 	stw	r13,60(sp)
  802330:	db800e15 	stw	r14,56(sp)
  802334:	08084cc0 	call	8084cc <__sprint_r>
  802338:	103c881e 	bne	r2,zero,80155c <___vfprintf_internal_r+0x43c>
  80233c:	d8c01c17 	ldw	r3,112(sp)
  802340:	da001117 	ldw	r8,68(sp)
  802344:	db400f17 	ldw	r13,60(sp)
  802348:	db800e17 	ldw	r14,56(sp)
  80234c:	dd802704 	addi	r22,sp,156
  802350:	003c5306 	br	8014a0 <___vfprintf_internal_r+0x380>
  802354:	d9401417 	ldw	r5,80(sp)
  802358:	01414c0e 	bge	zero,r5,80288c <___vfprintf_internal_r+0x176c>
  80235c:	d8800717 	ldw	r2,28(sp)
  802360:	d9000817 	ldw	r4,32(sp)
  802364:	102b883a 	mov	r21,r2
  802368:	2080e316 	blt	r4,r2,8026f8 <___vfprintf_internal_r+0x15d8>
  80236c:	05400a0e 	bge	zero,r21,802398 <___vfprintf_internal_r+0x1278>
  802370:	d8801b17 	ldw	r2,108(sp)
  802374:	1d47883a 	add	r3,r3,r21
  802378:	b4400015 	stw	r17,0(r22)
  80237c:	10800044 	addi	r2,r2,1
  802380:	d8801b15 	stw	r2,108(sp)
  802384:	b5400115 	stw	r21,4(r22)
  802388:	d8c01c15 	stw	r3,112(sp)
  80238c:	10800208 	cmpgei	r2,r2,8
  802390:	10030c1e 	bne	r2,zero,802fc4 <___vfprintf_internal_r+0x1ea4>
  802394:	b5800204 	addi	r22,r22,8
  802398:	a800ff16 	blt	r21,zero,802798 <___vfprintf_internal_r+0x1678>
  80239c:	d8800717 	ldw	r2,28(sp)
  8023a0:	156bc83a 	sub	r21,r2,r21
  8023a4:	05410616 	blt	zero,r21,8027c0 <___vfprintf_internal_r+0x16a0>
  8023a8:	dd401417 	ldw	r21,80(sp)
  8023ac:	d8800817 	ldw	r2,32(sp)
  8023b0:	a880d40e 	bge	r21,r2,802704 <___vfprintf_internal_r+0x15e4>
  8023b4:	d8800d17 	ldw	r2,52(sp)
  8023b8:	d9000b17 	ldw	r4,44(sp)
  8023bc:	b0800015 	stw	r2,0(r22)
  8023c0:	d8801b17 	ldw	r2,108(sp)
  8023c4:	1907883a 	add	r3,r3,r4
  8023c8:	b1000115 	stw	r4,4(r22)
  8023cc:	10800044 	addi	r2,r2,1
  8023d0:	d8801b15 	stw	r2,108(sp)
  8023d4:	d8c01c15 	stw	r3,112(sp)
  8023d8:	10800208 	cmpgei	r2,r2,8
  8023dc:	10028e1e 	bne	r2,zero,802e18 <___vfprintf_internal_r+0x1cf8>
  8023e0:	b5800204 	addi	r22,r22,8
  8023e4:	d9000817 	ldw	r4,32(sp)
  8023e8:	d9400717 	ldw	r5,28(sp)
  8023ec:	2545c83a 	sub	r2,r4,r21
  8023f0:	2149c83a 	sub	r4,r4,r5
  8023f4:	102b883a 	mov	r21,r2
  8023f8:	2080010e 	bge	r4,r2,802400 <___vfprintf_internal_r+0x12e0>
  8023fc:	202b883a 	mov	r21,r4
  802400:	05400c0e 	bge	zero,r21,802434 <___vfprintf_internal_r+0x1314>
  802404:	d9000717 	ldw	r4,28(sp)
  802408:	1d47883a 	add	r3,r3,r21
  80240c:	b5400115 	stw	r21,4(r22)
  802410:	8913883a 	add	r9,r17,r4
  802414:	d9001b17 	ldw	r4,108(sp)
  802418:	b2400015 	stw	r9,0(r22)
  80241c:	d8c01c15 	stw	r3,112(sp)
  802420:	21000044 	addi	r4,r4,1
  802424:	d9001b15 	stw	r4,108(sp)
  802428:	21000208 	cmpgei	r4,r4,8
  80242c:	2002f01e 	bne	r4,zero,802ff0 <___vfprintf_internal_r+0x1ed0>
  802430:	b5800204 	addi	r22,r22,8
  802434:	a800010e 	bge	r21,zero,80243c <___vfprintf_internal_r+0x131c>
  802438:	002b883a 	mov	r21,zero
  80243c:	156bc83a 	sub	r21,r2,r21
  802440:	057c350e 	bge	zero,r21,801518 <___vfprintf_internal_r+0x3f8>
  802444:	01c02074 	movhi	r7,129
  802448:	a9000450 	cmplti	r4,r21,17
  80244c:	d8801b17 	ldw	r2,108(sp)
  802450:	39c1b604 	addi	r7,r7,1752
  802454:	2001ad1e 	bne	r4,zero,802b0c <___vfprintf_internal_r+0x19ec>
  802458:	07000404 	movi	fp,16
  80245c:	3823883a 	mov	r17,r7
  802460:	00000406 	br	802474 <___vfprintf_internal_r+0x1354>
  802464:	b5800204 	addi	r22,r22,8
  802468:	ad7ffc04 	addi	r21,r21,-16
  80246c:	a9000448 	cmpgei	r4,r21,17
  802470:	2001a526 	beq	r4,zero,802b08 <___vfprintf_internal_r+0x19e8>
  802474:	10800044 	addi	r2,r2,1
  802478:	18c00404 	addi	r3,r3,16
  80247c:	b4400015 	stw	r17,0(r22)
  802480:	b7000115 	stw	fp,4(r22)
  802484:	d8c01c15 	stw	r3,112(sp)
  802488:	d8801b15 	stw	r2,108(sp)
  80248c:	11000208 	cmpgei	r4,r2,8
  802490:	203ff426 	beq	r4,zero,802464 <___vfprintf_internal_r+0x1344>
  802494:	d9801a04 	addi	r6,sp,104
  802498:	900b883a 	mov	r5,r18
  80249c:	9809883a 	mov	r4,r19
  8024a0:	08084cc0 	call	8084cc <__sprint_r>
  8024a4:	103c2d1e 	bne	r2,zero,80155c <___vfprintf_internal_r+0x43c>
  8024a8:	d8c01c17 	ldw	r3,112(sp)
  8024ac:	d8801b17 	ldw	r2,108(sp)
  8024b0:	dd802704 	addi	r22,sp,156
  8024b4:	003fec06 	br	802468 <___vfprintf_internal_r+0x1348>
  8024b8:	d8800417 	ldw	r2,16(sp)
  8024bc:	1080004c 	andi	r2,r2,1
  8024c0:	103f111e 	bne	r2,zero,802108 <___vfprintf_internal_r+0xfe8>
  8024c4:	00800044 	movi	r2,1
  8024c8:	dd401b15 	stw	r21,108(sp)
  8024cc:	b4400015 	stw	r17,0(r22)
  8024d0:	b0800115 	stw	r2,4(r22)
  8024d4:	d8c01c15 	stw	r3,112(sp)
  8024d8:	ad400208 	cmpgei	r21,r21,8
  8024dc:	a800941e 	bne	r21,zero,802730 <___vfprintf_internal_r+0x1610>
  8024e0:	42000084 	addi	r8,r8,2
  8024e4:	b5800404 	addi	r22,r22,16
  8024e8:	003f3306 	br	8021b8 <___vfprintf_internal_r+0x1098>
  8024ec:	4002821e 	bne	r8,zero,802ef8 <___vfprintf_internal_r+0x1dd8>
  8024f0:	0011883a 	mov	r8,zero
  8024f4:	002b883a 	mov	r21,zero
  8024f8:	dc402704 	addi	r17,sp,156
  8024fc:	003da206 	br	801b88 <___vfprintf_internal_r+0xa68>
  802500:	02ff2d0e 	bge	zero,r11,8021b8 <___vfprintf_internal_r+0x1098>
  802504:	58800450 	cmplti	r2,r11,17
  802508:	01c02074 	movhi	r7,129
  80250c:	1003261e 	bne	r2,zero,8031a8 <___vfprintf_internal_r+0x2088>
  802510:	39c1b604 	addi	r7,r7,1752
  802514:	dc000715 	stw	r16,28(sp)
  802518:	05800404 	movi	r22,16
  80251c:	5823883a 	mov	r17,r11
  802520:	402b883a 	mov	r21,r8
  802524:	3821883a 	mov	r16,r7
  802528:	00000506 	br	802540 <___vfprintf_internal_r+0x1420>
  80252c:	e7000204 	addi	fp,fp,8
  802530:	8c7ffc04 	addi	r17,r17,-16
  802534:	88800448 	cmpgei	r2,r17,17
  802538:	1001be26 	beq	r2,zero,802c34 <___vfprintf_internal_r+0x1b14>
  80253c:	ad400044 	addi	r21,r21,1
  802540:	18c00404 	addi	r3,r3,16
  802544:	e4000015 	stw	r16,0(fp)
  802548:	e5800115 	stw	r22,4(fp)
  80254c:	d8c01c15 	stw	r3,112(sp)
  802550:	dd401b15 	stw	r21,108(sp)
  802554:	a8800208 	cmpgei	r2,r21,8
  802558:	103ff426 	beq	r2,zero,80252c <___vfprintf_internal_r+0x140c>
  80255c:	d9801a04 	addi	r6,sp,104
  802560:	900b883a 	mov	r5,r18
  802564:	9809883a 	mov	r4,r19
  802568:	08084cc0 	call	8084cc <__sprint_r>
  80256c:	103bfb1e 	bne	r2,zero,80155c <___vfprintf_internal_r+0x43c>
  802570:	dd401b17 	ldw	r21,108(sp)
  802574:	d8c01c17 	ldw	r3,112(sp)
  802578:	df002704 	addi	fp,sp,156
  80257c:	003fec06 	br	802530 <___vfprintf_internal_r+0x1410>
  802580:	d9801a04 	addi	r6,sp,104
  802584:	900b883a 	mov	r5,r18
  802588:	9809883a 	mov	r4,r19
  80258c:	08084cc0 	call	8084cc <__sprint_r>
  802590:	103bf21e 	bne	r2,zero,80155c <___vfprintf_internal_r+0x43c>
  802594:	d8c01c17 	ldw	r3,112(sp)
  802598:	dd802704 	addi	r22,sp,156
  80259c:	003bd106 	br	8014e4 <___vfprintf_internal_r+0x3c4>
  8025a0:	d8800417 	ldw	r2,16(sp)
  8025a4:	1080004c 	andi	r2,r2,1
  8025a8:	103bdb26 	beq	r2,zero,801518 <___vfprintf_internal_r+0x3f8>
  8025ac:	003df106 	br	801d74 <___vfprintf_internal_r+0xc54>
  8025b0:	dc402704 	addi	r17,sp,156
  8025b4:	003d7406 	br	801b88 <___vfprintf_internal_r+0xa68>
  8025b8:	d9000517 	ldw	r4,20(sp)
  8025bc:	2005d7fa 	srai	r2,r4,31
  8025c0:	19000015 	stw	r4,0(r3)
  8025c4:	18800115 	stw	r2,4(r3)
  8025c8:	003b0906 	br	8011f0 <___vfprintf_internal_r+0xd0>
  8025cc:	00800c04 	movi	r2,48
  8025d0:	d8801385 	stb	r2,78(sp)
  8025d4:	df0013c5 	stb	fp,79(sp)
  8025d8:	63000094 	ori	r12,r12,2
  8025dc:	00800084 	movi	r2,2
  8025e0:	003c1206 	br	80162c <___vfprintf_internal_r+0x50c>
  8025e4:	25000017 	ldw	r20,0(r4)
  8025e8:	002b883a 	mov	r21,zero
  8025ec:	d8c00615 	stw	r3,24(sp)
  8025f0:	003ce906 	br	801998 <___vfprintf_internal_r+0x878>
  8025f4:	25000017 	ldw	r20,0(r4)
  8025f8:	002b883a 	mov	r21,zero
  8025fc:	d8c00615 	stw	r3,24(sp)
  802600:	0005883a 	mov	r2,zero
  802604:	003c0906 	br	80162c <___vfprintf_internal_r+0x50c>
  802608:	25000017 	ldw	r20,0(r4)
  80260c:	002b883a 	mov	r21,zero
  802610:	d8c00615 	stw	r3,24(sp)
  802614:	00800044 	movi	r2,1
  802618:	003c0406 	br	80162c <___vfprintf_internal_r+0x50c>
  80261c:	25000017 	ldw	r20,0(r4)
  802620:	d8c00615 	stw	r3,24(sp)
  802624:	a02bd7fa 	srai	r21,r20,31
  802628:	a805883a 	mov	r2,r21
  80262c:	003cb806 	br	801910 <___vfprintf_internal_r+0x7f0>
  802630:	18800017 	ldw	r2,0(r3)
  802634:	d8800915 	stw	r2,36(sp)
  802638:	18800117 	ldw	r2,4(r3)
  80263c:	d8800a15 	stw	r2,40(sp)
  802640:	003c3006 	br	801704 <___vfprintf_internal_r+0x5e4>
  802644:	db401343 	ldbu	r13,77(sp)
  802648:	a83cbc26 	beq	r21,zero,80193c <___vfprintf_internal_r+0x81c>
  80264c:	dc402704 	addi	r17,sp,156
  802650:	a805883a 	mov	r2,r21
  802654:	dc000715 	stw	r16,28(sp)
  802658:	902b883a 	mov	r21,r18
  80265c:	8821883a 	mov	r16,r17
  802660:	db000415 	stw	r12,16(sp)
  802664:	a023883a 	mov	r17,r20
  802668:	da000e15 	stw	r8,56(sp)
  80266c:	9829883a 	mov	r20,r19
  802670:	1025883a 	mov	r18,r2
  802674:	6827883a 	mov	r19,r13
  802678:	8809883a 	mov	r4,r17
  80267c:	900b883a 	mov	r5,r18
  802680:	01800284 	movi	r6,10
  802684:	000f883a 	mov	r7,zero
  802688:	080ad2c0 	call	80ad2c <__umoddi3>
  80268c:	10800c04 	addi	r2,r2,48
  802690:	8809883a 	mov	r4,r17
  802694:	900b883a 	mov	r5,r18
  802698:	01800284 	movi	r6,10
  80269c:	000f883a 	mov	r7,zero
  8026a0:	80bfffc5 	stb	r2,-1(r16)
  8026a4:	080a7100 	call	80a710 <__udivdi3>
  8026a8:	900d883a 	mov	r6,r18
  8026ac:	880f883a 	mov	r7,r17
  8026b0:	843fffc4 	addi	r16,r16,-1
  8026b4:	1023883a 	mov	r17,r2
  8026b8:	1825883a 	mov	r18,r3
  8026bc:	303fee1e 	bne	r6,zero,802678 <___vfprintf_internal_r+0x1558>
  8026c0:	39c002a8 	cmpgeui	r7,r7,10
  8026c4:	383fec1e 	bne	r7,zero,802678 <___vfprintf_internal_r+0x1558>
  8026c8:	8023883a 	mov	r17,r16
  8026cc:	d8802704 	addi	r2,sp,156
  8026d0:	981b883a 	mov	r13,r19
  8026d4:	a825883a 	mov	r18,r21
  8026d8:	dc000717 	ldw	r16,28(sp)
  8026dc:	da000e17 	ldw	r8,56(sp)
  8026e0:	a027883a 	mov	r19,r20
  8026e4:	146bc83a 	sub	r21,r2,r17
  8026e8:	003d2706 	br	801b88 <___vfprintf_internal_r+0xa68>
  8026ec:	0421c83a 	sub	r16,zero,r16
  8026f0:	d8800615 	stw	r2,24(sp)
  8026f4:	003d4506 	br	801c0c <___vfprintf_internal_r+0xaec>
  8026f8:	202b883a 	mov	r21,r4
  8026fc:	057f1c16 	blt	zero,r21,802370 <___vfprintf_internal_r+0x1250>
  802700:	003f2506 	br	802398 <___vfprintf_internal_r+0x1278>
  802704:	d8800417 	ldw	r2,16(sp)
  802708:	1080004c 	andi	r2,r2,1
  80270c:	103f291e 	bne	r2,zero,8023b4 <___vfprintf_internal_r+0x1294>
  802710:	d9000817 	ldw	r4,32(sp)
  802714:	d9400717 	ldw	r5,28(sp)
  802718:	2545c83a 	sub	r2,r4,r21
  80271c:	2179c83a 	sub	fp,r4,r5
  802720:	102b883a 	mov	r21,r2
  802724:	e0bf430e 	bge	fp,r2,802434 <___vfprintf_internal_r+0x1314>
  802728:	e02b883a 	mov	r21,fp
  80272c:	003f4106 	br	802434 <___vfprintf_internal_r+0x1314>
  802730:	d9801a04 	addi	r6,sp,104
  802734:	900b883a 	mov	r5,r18
  802738:	9809883a 	mov	r4,r19
  80273c:	08084cc0 	call	8084cc <__sprint_r>
  802740:	103b861e 	bne	r2,zero,80155c <___vfprintf_internal_r+0x43c>
  802744:	da001b17 	ldw	r8,108(sp)
  802748:	d8c01c17 	ldw	r3,112(sp)
  80274c:	dd802904 	addi	r22,sp,164
  802750:	42000044 	addi	r8,r8,1
  802754:	df002704 	addi	fp,sp,156
  802758:	003e9706 	br	8021b8 <___vfprintf_internal_r+0x1098>
  80275c:	bf000043 	ldbu	fp,1(r23)
  802760:	63000814 	ori	r12,r12,32
  802764:	bdc00044 	addi	r23,r23,1
  802768:	e2c03fcc 	andi	r11,fp,255
  80276c:	5ac0201c 	xori	r11,r11,128
  802770:	5affe004 	addi	r11,r11,-128
  802774:	003ab606 	br	801250 <___vfprintf_internal_r+0x130>
  802778:	d9801a04 	addi	r6,sp,104
  80277c:	900b883a 	mov	r5,r18
  802780:	9809883a 	mov	r4,r19
  802784:	08084cc0 	call	8084cc <__sprint_r>
  802788:	103b741e 	bne	r2,zero,80155c <___vfprintf_internal_r+0x43c>
  80278c:	d8c01c17 	ldw	r3,112(sp)
  802790:	dd802704 	addi	r22,sp,156
  802794:	003d8306 	br	801da4 <___vfprintf_internal_r+0xc84>
  802798:	002b883a 	mov	r21,zero
  80279c:	003eff06 	br	80239c <___vfprintf_internal_r+0x127c>
  8027a0:	408001f0 	cmpltui	r2,r8,7
  8027a4:	402b883a 	mov	r21,r8
  8027a8:	1001a426 	beq	r2,zero,802e3c <___vfprintf_internal_r+0x1d1c>
  8027ac:	04402074 	movhi	r17,129
  8027b0:	a829883a 	mov	r20,r21
  8027b4:	d8c00615 	stw	r3,24(sp)
  8027b8:	8c41b304 	addi	r17,r17,1740
  8027bc:	003b1d06 	br	801434 <___vfprintf_internal_r+0x314>
  8027c0:	01c02074 	movhi	r7,129
  8027c4:	a9000450 	cmplti	r4,r21,17
  8027c8:	d8801b17 	ldw	r2,108(sp)
  8027cc:	39c1b604 	addi	r7,r7,1752
  8027d0:	20017f1e 	bne	r4,zero,802dd0 <___vfprintf_internal_r+0x1cb0>
  8027d4:	dc000e15 	stw	r16,56(sp)
  8027d8:	07000404 	movi	fp,16
  8027dc:	3821883a 	mov	r16,r7
  8027e0:	00000406 	br	8027f4 <___vfprintf_internal_r+0x16d4>
  8027e4:	b5800204 	addi	r22,r22,8
  8027e8:	ad7ffc04 	addi	r21,r21,-16
  8027ec:	a9000448 	cmpgei	r4,r21,17
  8027f0:	20017526 	beq	r4,zero,802dc8 <___vfprintf_internal_r+0x1ca8>
  8027f4:	10800044 	addi	r2,r2,1
  8027f8:	18c00404 	addi	r3,r3,16
  8027fc:	b4000015 	stw	r16,0(r22)
  802800:	b7000115 	stw	fp,4(r22)
  802804:	d8c01c15 	stw	r3,112(sp)
  802808:	d8801b15 	stw	r2,108(sp)
  80280c:	11000208 	cmpgei	r4,r2,8
  802810:	203ff426 	beq	r4,zero,8027e4 <___vfprintf_internal_r+0x16c4>
  802814:	d9801a04 	addi	r6,sp,104
  802818:	900b883a 	mov	r5,r18
  80281c:	9809883a 	mov	r4,r19
  802820:	08084cc0 	call	8084cc <__sprint_r>
  802824:	103b4d1e 	bne	r2,zero,80155c <___vfprintf_internal_r+0x43c>
  802828:	d8c01c17 	ldw	r3,112(sp)
  80282c:	d8801b17 	ldw	r2,108(sp)
  802830:	dd802704 	addi	r22,sp,156
  802834:	003fec06 	br	8027e8 <___vfprintf_internal_r+0x16c8>
  802838:	d8800517 	ldw	r2,20(sp)
  80283c:	18800015 	stw	r2,0(r3)
  802840:	003a6b06 	br	8011f0 <___vfprintf_internal_r+0xd0>
  802844:	d9801a04 	addi	r6,sp,104
  802848:	900b883a 	mov	r5,r18
  80284c:	9809883a 	mov	r4,r19
  802850:	08084cc0 	call	8084cc <__sprint_r>
  802854:	103b411e 	bne	r2,zero,80155c <___vfprintf_internal_r+0x43c>
  802858:	d8c01c17 	ldw	r3,112(sp)
  80285c:	dd401b17 	ldw	r21,108(sp)
  802860:	df002704 	addi	fp,sp,156
  802864:	003e3a06 	br	802150 <___vfprintf_internal_r+0x1030>
  802868:	d9801a04 	addi	r6,sp,104
  80286c:	900b883a 	mov	r5,r18
  802870:	9809883a 	mov	r4,r19
  802874:	08084cc0 	call	8084cc <__sprint_r>
  802878:	103b381e 	bne	r2,zero,80155c <___vfprintf_internal_r+0x43c>
  80287c:	d8c01c17 	ldw	r3,112(sp)
  802880:	dd401b17 	ldw	r21,108(sp)
  802884:	df002704 	addi	fp,sp,156
  802888:	003e2606 	br	802124 <___vfprintf_internal_r+0x1004>
  80288c:	d8801b17 	ldw	r2,108(sp)
  802890:	01002074 	movhi	r4,129
  802894:	2101b504 	addi	r4,r4,1748
  802898:	10800044 	addi	r2,r2,1
  80289c:	18c00044 	addi	r3,r3,1
  8028a0:	b1000015 	stw	r4,0(r22)
  8028a4:	01000044 	movi	r4,1
  8028a8:	d8801b15 	stw	r2,108(sp)
  8028ac:	b1000115 	stw	r4,4(r22)
  8028b0:	d8c01c15 	stw	r3,112(sp)
  8028b4:	10800208 	cmpgei	r2,r2,8
  8028b8:	103de11e 	bne	r2,zero,802040 <___vfprintf_internal_r+0xf20>
  8028bc:	b5800204 	addi	r22,r22,8
  8028c0:	003de706 	br	802060 <___vfprintf_internal_r+0xf40>
  8028c4:	d9801a04 	addi	r6,sp,104
  8028c8:	900b883a 	mov	r5,r18
  8028cc:	9809883a 	mov	r4,r19
  8028d0:	da001115 	stw	r8,68(sp)
  8028d4:	db400f15 	stw	r13,60(sp)
  8028d8:	db800e15 	stw	r14,56(sp)
  8028dc:	08084cc0 	call	8084cc <__sprint_r>
  8028e0:	103b1e1e 	bne	r2,zero,80155c <___vfprintf_internal_r+0x43c>
  8028e4:	d8c01c17 	ldw	r3,112(sp)
  8028e8:	da001117 	ldw	r8,68(sp)
  8028ec:	db400f17 	ldw	r13,60(sp)
  8028f0:	db800e17 	ldw	r14,56(sp)
  8028f4:	dd802704 	addi	r22,sp,156
  8028f8:	003adb06 	br	801468 <___vfprintf_internal_r+0x348>
  8028fc:	8825883a 	mov	r18,r17
  802900:	003b1606 	br	80155c <___vfprintf_internal_r+0x43c>
  802904:	d9000917 	ldw	r4,36(sp)
  802908:	d9400a17 	ldw	r5,40(sp)
  80290c:	da000615 	stw	r8,24(sp)
  802910:	200d883a 	mov	r6,r4
  802914:	280f883a 	mov	r7,r5
  802918:	db000415 	stw	r12,16(sp)
  80291c:	080da8c0 	call	80da8c <__unorddf2>
  802920:	db000417 	ldw	r12,16(sp)
  802924:	da000617 	ldw	r8,24(sp)
  802928:	1002091e 	bne	r2,zero,803150 <___vfprintf_internal_r+0x2030>
  80292c:	057ff7c4 	movi	r21,-33
  802930:	40bfffe0 	cmpeqi	r2,r8,-1
  802934:	e56a703a 	and	r21,fp,r21
  802938:	1001ab1e 	bne	r2,zero,802fe8 <___vfprintf_internal_r+0x1ec8>
  80293c:	a88011d8 	cmpnei	r2,r21,71
  802940:	10015726 	beq	r2,zero,802ea0 <___vfprintf_internal_r+0x1d80>
  802944:	60804014 	ori	r2,r12,256
  802948:	d8800415 	stw	r2,16(sp)
  80294c:	d8800a17 	ldw	r2,40(sp)
  802950:	10012d16 	blt	r2,zero,802e08 <___vfprintf_internal_r+0x1ce8>
  802954:	dd000a17 	ldw	r20,40(sp)
  802958:	d8000605 	stb	zero,24(sp)
  80295c:	e08019a0 	cmpeqi	r2,fp,102
  802960:	d8800f15 	stw	r2,60(sp)
  802964:	1000c31e 	bne	r2,zero,802c74 <___vfprintf_internal_r+0x1b54>
  802968:	e08011a0 	cmpeqi	r2,fp,70
  80296c:	1000c11e 	bne	r2,zero,802c74 <___vfprintf_internal_r+0x1b54>
  802970:	a8801158 	cmpnei	r2,r21,69
  802974:	10016226 	beq	r2,zero,802f00 <___vfprintf_internal_r+0x1de0>
  802978:	d8801804 	addi	r2,sp,96
  80297c:	d8800315 	stw	r2,12(sp)
  802980:	d9400917 	ldw	r5,36(sp)
  802984:	d8801504 	addi	r2,sp,84
  802988:	d8800215 	stw	r2,8(sp)
  80298c:	d8801404 	addi	r2,sp,80
  802990:	da000015 	stw	r8,0(sp)
  802994:	9809883a 	mov	r4,r19
  802998:	d8800115 	stw	r2,4(sp)
  80299c:	01c00084 	movi	r7,2
  8029a0:	a00d883a 	mov	r6,r20
  8029a4:	db000815 	stw	r12,32(sp)
  8029a8:	da000715 	stw	r8,28(sp)
  8029ac:	08036640 	call	803664 <_dtoa_r>
  8029b0:	da000717 	ldw	r8,28(sp)
  8029b4:	e10019d8 	cmpnei	r4,fp,103
  8029b8:	db000817 	ldw	r12,32(sp)
  8029bc:	1023883a 	mov	r17,r2
  8029c0:	4007883a 	mov	r3,r8
  8029c4:	2001621e 	bne	r4,zero,802f50 <___vfprintf_internal_r+0x1e30>
  8029c8:	6080004c 	andi	r2,r12,1
  8029cc:	1001621e 	bne	r2,zero,802f58 <___vfprintf_internal_r+0x1e38>
  8029d0:	d8801417 	ldw	r2,80(sp)
  8029d4:	ad4011e0 	cmpeqi	r21,r21,71
  8029d8:	d8800715 	stw	r2,28(sp)
  8029dc:	d8801817 	ldw	r2,96(sp)
  8029e0:	1445c83a 	sub	r2,r2,r17
  8029e4:	d8800815 	stw	r2,32(sp)
  8029e8:	a8000526 	beq	r21,zero,802a00 <___vfprintf_internal_r+0x18e0>
  8029ec:	d8c00717 	ldw	r3,28(sp)
  8029f0:	18bfff50 	cmplti	r2,r3,-3
  8029f4:	1000011e 	bne	r2,zero,8029fc <___vfprintf_internal_r+0x18dc>
  8029f8:	40c1670e 	bge	r8,r3,802f98 <___vfprintf_internal_r+0x1e78>
  8029fc:	e73fff84 	addi	fp,fp,-2
  802a00:	d8800717 	ldw	r2,28(sp)
  802a04:	df001645 	stb	fp,89(sp)
  802a08:	157fffc4 	addi	r21,r2,-1
  802a0c:	dd401415 	stw	r21,80(sp)
  802a10:	a801c316 	blt	r21,zero,803120 <___vfprintf_internal_r+0x2000>
  802a14:	00800ac4 	movi	r2,43
  802a18:	d8801685 	stb	r2,90(sp)
  802a1c:	a8800290 	cmplti	r2,r21,10
  802a20:	1001b81e 	bne	r2,zero,803104 <___vfprintf_internal_r+0x1fe4>
  802a24:	d98019c4 	addi	r6,sp,103
  802a28:	9029883a 	mov	r20,r18
  802a2c:	dc400715 	stw	r17,28(sp)
  802a30:	8025883a 	mov	r18,r16
  802a34:	db000f15 	stw	r12,60(sp)
  802a38:	3021883a 	mov	r16,r6
  802a3c:	a809883a 	mov	r4,r21
  802a40:	01400284 	movi	r5,10
  802a44:	080b3700 	call	80b370 <__modsi3>
  802a48:	10800c04 	addi	r2,r2,48
  802a4c:	a809883a 	mov	r4,r21
  802a50:	80bfffc5 	stb	r2,-1(r16)
  802a54:	01400284 	movi	r5,10
  802a58:	080b2f00 	call	80b2f0 <__divsi3>
  802a5c:	a9001908 	cmpgei	r4,r21,100
  802a60:	8023883a 	mov	r17,r16
  802a64:	102b883a 	mov	r21,r2
  802a68:	843fffc4 	addi	r16,r16,-1
  802a6c:	203ff31e 	bne	r4,zero,802a3c <___vfprintf_internal_r+0x191c>
  802a70:	800d883a 	mov	r6,r16
  802a74:	11000c04 	addi	r4,r2,48
  802a78:	9021883a 	mov	r16,r18
  802a7c:	a025883a 	mov	r18,r20
  802a80:	8829883a 	mov	r20,r17
  802a84:	a0bfff84 	addi	r2,r20,-2
  802a88:	313fffc5 	stb	r4,-1(r6)
  802a8c:	d8c019c4 	addi	r3,sp,103
  802a90:	db000f17 	ldw	r12,60(sp)
  802a94:	dc400717 	ldw	r17,28(sp)
  802a98:	10c1cd2e 	bgeu	r2,r3,8031d0 <___vfprintf_internal_r+0x20b0>
  802a9c:	d8c016c4 	addi	r3,sp,91
  802aa0:	00000106 	br	802aa8 <___vfprintf_internal_r+0x1988>
  802aa4:	11000003 	ldbu	r4,0(r2)
  802aa8:	19000005 	stb	r4,0(r3)
  802aac:	10800044 	addi	r2,r2,1
  802ab0:	d90019c4 	addi	r4,sp,103
  802ab4:	18c00044 	addi	r3,r3,1
  802ab8:	113ffa1e 	bne	r2,r4,802aa4 <___vfprintf_internal_r+0x1984>
  802abc:	d8801a44 	addi	r2,sp,105
  802ac0:	d8c016c4 	addi	r3,sp,91
  802ac4:	1505c83a 	sub	r2,r2,r20
  802ac8:	1885883a 	add	r2,r3,r2
  802acc:	d8c01644 	addi	r3,sp,89
  802ad0:	10c5c83a 	sub	r2,r2,r3
  802ad4:	d8801015 	stw	r2,64(sp)
  802ad8:	d8c00817 	ldw	r3,32(sp)
  802adc:	d9001017 	ldw	r4,64(sp)
  802ae0:	18800088 	cmpgei	r2,r3,2
  802ae4:	20eb883a 	add	r21,r4,r3
  802ae8:	10019226 	beq	r2,zero,803134 <___vfprintf_internal_r+0x2014>
  802aec:	d8800b17 	ldw	r2,44(sp)
  802af0:	a8ab883a 	add	r21,r21,r2
  802af4:	a829883a 	mov	r20,r21
  802af8:	a800010e 	bge	r21,zero,802b00 <___vfprintf_internal_r+0x19e0>
  802afc:	0029883a 	mov	r20,zero
  802b00:	d8000715 	stw	zero,28(sp)
  802b04:	00008e06 	br	802d40 <___vfprintf_internal_r+0x1c20>
  802b08:	880f883a 	mov	r7,r17
  802b0c:	10800044 	addi	r2,r2,1
  802b10:	1d47883a 	add	r3,r3,r21
  802b14:	b1c00015 	stw	r7,0(r22)
  802b18:	003a7906 	br	801500 <___vfprintf_internal_r+0x3e0>
  802b1c:	d9801a04 	addi	r6,sp,104
  802b20:	900b883a 	mov	r5,r18
  802b24:	9809883a 	mov	r4,r19
  802b28:	08084cc0 	call	8084cc <__sprint_r>
  802b2c:	103a8b1e 	bne	r2,zero,80155c <___vfprintf_internal_r+0x43c>
  802b30:	d8c01c17 	ldw	r3,112(sp)
  802b34:	dd802704 	addi	r22,sp,156
  802b38:	003c8b06 	br	801d68 <___vfprintf_internal_r+0xc48>
  802b3c:	d9801a04 	addi	r6,sp,104
  802b40:	900b883a 	mov	r5,r18
  802b44:	9809883a 	mov	r4,r19
  802b48:	da000e15 	stw	r8,56(sp)
  802b4c:	08084cc0 	call	8084cc <__sprint_r>
  802b50:	103a821e 	bne	r2,zero,80155c <___vfprintf_internal_r+0x43c>
  802b54:	d8c01c17 	ldw	r3,112(sp)
  802b58:	da000e17 	ldw	r8,56(sp)
  802b5c:	dd802704 	addi	r22,sp,156
  802b60:	003a5e06 	br	8014dc <___vfprintf_internal_r+0x3bc>
  802b64:	8809883a 	mov	r4,r17
  802b68:	db000415 	stw	r12,16(sp)
  802b6c:	d8c00615 	stw	r3,24(sp)
  802b70:	08010880 	call	801088 <strlen>
  802b74:	db000417 	ldw	r12,16(sp)
  802b78:	102b883a 	mov	r21,r2
  802b7c:	1029883a 	mov	r20,r2
  802b80:	003a2c06 	br	801434 <___vfprintf_internal_r+0x314>
  802b84:	d8800d17 	ldw	r2,52(sp)
  802b88:	d9000b17 	ldw	r4,44(sp)
  802b8c:	b0800015 	stw	r2,0(r22)
  802b90:	d8801b17 	ldw	r2,108(sp)
  802b94:	20c7883a 	add	r3,r4,r3
  802b98:	b1000115 	stw	r4,4(r22)
  802b9c:	10800044 	addi	r2,r2,1
  802ba0:	d8c01c15 	stw	r3,112(sp)
  802ba4:	d8801b15 	stw	r2,108(sp)
  802ba8:	11000208 	cmpgei	r4,r2,8
  802bac:	2000bf1e 	bne	r4,zero,802eac <___vfprintf_internal_r+0x1d8c>
  802bb0:	b5800204 	addi	r22,r22,8
  802bb4:	283d3c0e 	bge	r5,zero,8020a8 <___vfprintf_internal_r+0xf88>
  802bb8:	01c02074 	movhi	r7,129
  802bbc:	293ffc08 	cmpgei	r4,r5,-16
  802bc0:	39c1b604 	addi	r7,r7,1752
  802bc4:	0179c83a 	sub	fp,zero,r5
  802bc8:	2001361e 	bne	r4,zero,8030a4 <___vfprintf_internal_r+0x1f84>
  802bcc:	dc000715 	stw	r16,28(sp)
  802bd0:	05400404 	movi	r21,16
  802bd4:	9021883a 	mov	r16,r18
  802bd8:	3825883a 	mov	r18,r7
  802bdc:	00000406 	br	802bf0 <___vfprintf_internal_r+0x1ad0>
  802be0:	b5800204 	addi	r22,r22,8
  802be4:	e73ffc04 	addi	fp,fp,-16
  802be8:	e1800448 	cmpgei	r6,fp,17
  802bec:	30012a26 	beq	r6,zero,803098 <___vfprintf_internal_r+0x1f78>
  802bf0:	10800044 	addi	r2,r2,1
  802bf4:	18c00404 	addi	r3,r3,16
  802bf8:	b4800015 	stw	r18,0(r22)
  802bfc:	b5400115 	stw	r21,4(r22)
  802c00:	d8c01c15 	stw	r3,112(sp)
  802c04:	d8801b15 	stw	r2,108(sp)
  802c08:	11800208 	cmpgei	r6,r2,8
  802c0c:	303ff426 	beq	r6,zero,802be0 <___vfprintf_internal_r+0x1ac0>
  802c10:	d9801a04 	addi	r6,sp,104
  802c14:	800b883a 	mov	r5,r16
  802c18:	9809883a 	mov	r4,r19
  802c1c:	08084cc0 	call	8084cc <__sprint_r>
  802c20:	10015f1e 	bne	r2,zero,8031a0 <___vfprintf_internal_r+0x2080>
  802c24:	d8c01c17 	ldw	r3,112(sp)
  802c28:	d8801b17 	ldw	r2,108(sp)
  802c2c:	dd802704 	addi	r22,sp,156
  802c30:	003fec06 	br	802be4 <___vfprintf_internal_r+0x1ac4>
  802c34:	800f883a 	mov	r7,r16
  802c38:	dc000717 	ldw	r16,28(sp)
  802c3c:	8817883a 	mov	r11,r17
  802c40:	aa000044 	addi	r8,r21,1
  802c44:	e0800204 	addi	r2,fp,8
  802c48:	1ac7883a 	add	r3,r3,r11
  802c4c:	e1c00015 	stw	r7,0(fp)
  802c50:	e2c00115 	stw	r11,4(fp)
  802c54:	d8c01c15 	stw	r3,112(sp)
  802c58:	da001b15 	stw	r8,108(sp)
  802c5c:	41000208 	cmpgei	r4,r8,8
  802c60:	203eb31e 	bne	r4,zero,802730 <___vfprintf_internal_r+0x1610>
  802c64:	42000044 	addi	r8,r8,1
  802c68:	15800204 	addi	r22,r2,8
  802c6c:	1039883a 	mov	fp,r2
  802c70:	003d5106 	br	8021b8 <___vfprintf_internal_r+0x1098>
  802c74:	d8801804 	addi	r2,sp,96
  802c78:	d8800315 	stw	r2,12(sp)
  802c7c:	d9400917 	ldw	r5,36(sp)
  802c80:	d8801504 	addi	r2,sp,84
  802c84:	d8800215 	stw	r2,8(sp)
  802c88:	d8801404 	addi	r2,sp,80
  802c8c:	da000015 	stw	r8,0(sp)
  802c90:	d8800115 	stw	r2,4(sp)
  802c94:	01c000c4 	movi	r7,3
  802c98:	a00d883a 	mov	r6,r20
  802c9c:	9809883a 	mov	r4,r19
  802ca0:	db000815 	stw	r12,32(sp)
  802ca4:	da000715 	stw	r8,28(sp)
  802ca8:	08036640 	call	803664 <_dtoa_r>
  802cac:	da000717 	ldw	r8,28(sp)
  802cb0:	1023883a 	mov	r17,r2
  802cb4:	db000817 	ldw	r12,32(sp)
  802cb8:	1207883a 	add	r3,r2,r8
  802cbc:	88800007 	ldb	r2,0(r17)
  802cc0:	10800c20 	cmpeqi	r2,r2,48
  802cc4:	1000661e 	bne	r2,zero,802e60 <___vfprintf_internal_r+0x1d40>
  802cc8:	d8801417 	ldw	r2,80(sp)
  802ccc:	1893883a 	add	r9,r3,r2
  802cd0:	d9000917 	ldw	r4,36(sp)
  802cd4:	000d883a 	mov	r6,zero
  802cd8:	000f883a 	mov	r7,zero
  802cdc:	a00b883a 	mov	r5,r20
  802ce0:	da401115 	stw	r9,68(sp)
  802ce4:	da000815 	stw	r8,32(sp)
  802ce8:	db000715 	stw	r12,28(sp)
  802cec:	080c7500 	call	80c750 <__eqdf2>
  802cf0:	db000717 	ldw	r12,28(sp)
  802cf4:	da000817 	ldw	r8,32(sp)
  802cf8:	da401117 	ldw	r9,68(sp)
  802cfc:	1000981e 	bne	r2,zero,802f60 <___vfprintf_internal_r+0x1e40>
  802d00:	4805883a 	mov	r2,r9
  802d04:	d8c01417 	ldw	r3,80(sp)
  802d08:	1445c83a 	sub	r2,r2,r17
  802d0c:	ad4011d8 	cmpnei	r21,r21,71
  802d10:	d8c00715 	stw	r3,28(sp)
  802d14:	d8800815 	stw	r2,32(sp)
  802d18:	a83f3426 	beq	r21,zero,8029ec <___vfprintf_internal_r+0x18cc>
  802d1c:	d8800f17 	ldw	r2,60(sp)
  802d20:	103f3726 	beq	r2,zero,802a00 <___vfprintf_internal_r+0x18e0>
  802d24:	d8c00717 	ldw	r3,28(sp)
  802d28:	6080004c 	andi	r2,r12,1
  802d2c:	1204b03a 	or	r2,r2,r8
  802d30:	00c1130e 	bge	zero,r3,803180 <___vfprintf_internal_r+0x2060>
  802d34:	10010e1e 	bne	r2,zero,803170 <___vfprintf_internal_r+0x2050>
  802d38:	dd400717 	ldw	r21,28(sp)
  802d3c:	a829883a 	mov	r20,r21
  802d40:	d8800607 	ldb	r2,24(sp)
  802d44:	10008f26 	beq	r2,zero,802f84 <___vfprintf_internal_r+0x1e64>
  802d48:	00800b44 	movi	r2,45
  802d4c:	d8801345 	stb	r2,77(sp)
  802d50:	d8800e17 	ldw	r2,56(sp)
  802d54:	0011883a 	mov	r8,zero
  802d58:	d8800615 	stw	r2,24(sp)
  802d5c:	003b9206 	br	801ba8 <___vfprintf_internal_r+0xa88>
  802d60:	04402074 	movhi	r17,129
  802d64:	8c41a504 	addi	r17,r17,1684
  802d68:	003a8b06 	br	801798 <___vfprintf_internal_r+0x678>
  802d6c:	d8800617 	ldw	r2,24(sp)
  802d70:	d8c00615 	stw	r3,24(sp)
  802d74:	15000017 	ldw	r20,0(r2)
  802d78:	a02bd7fa 	srai	r21,r20,31
  802d7c:	a805883a 	mov	r2,r21
  802d80:	003ae306 	br	801910 <___vfprintf_internal_r+0x7f0>
  802d84:	d8800617 	ldw	r2,24(sp)
  802d88:	002b883a 	mov	r21,zero
  802d8c:	d8c00615 	stw	r3,24(sp)
  802d90:	15000017 	ldw	r20,0(r2)
  802d94:	0005883a 	mov	r2,zero
  802d98:	003a2406 	br	80162c <___vfprintf_internal_r+0x50c>
  802d9c:	d8800617 	ldw	r2,24(sp)
  802da0:	002b883a 	mov	r21,zero
  802da4:	d8c00615 	stw	r3,24(sp)
  802da8:	15000017 	ldw	r20,0(r2)
  802dac:	00800044 	movi	r2,1
  802db0:	003a1e06 	br	80162c <___vfprintf_internal_r+0x50c>
  802db4:	d8800617 	ldw	r2,24(sp)
  802db8:	002b883a 	mov	r21,zero
  802dbc:	d8c00615 	stw	r3,24(sp)
  802dc0:	15000017 	ldw	r20,0(r2)
  802dc4:	003af406 	br	801998 <___vfprintf_internal_r+0x878>
  802dc8:	800f883a 	mov	r7,r16
  802dcc:	dc000e17 	ldw	r16,56(sp)
  802dd0:	10800044 	addi	r2,r2,1
  802dd4:	1d47883a 	add	r3,r3,r21
  802dd8:	d8801b15 	stw	r2,108(sp)
  802ddc:	b1c00015 	stw	r7,0(r22)
  802de0:	b5400115 	stw	r21,4(r22)
  802de4:	d8c01c15 	stw	r3,112(sp)
  802de8:	10800208 	cmpgei	r2,r2,8
  802dec:	10003a1e 	bne	r2,zero,802ed8 <___vfprintf_internal_r+0x1db8>
  802df0:	b5800204 	addi	r22,r22,8
  802df4:	003d6c06 	br	8023a8 <___vfprintf_internal_r+0x1288>
  802df8:	00800b44 	movi	r2,45
  802dfc:	d8801345 	stb	r2,77(sp)
  802e00:	03400b44 	movi	r13,45
  802e04:	003a6006 	br	801788 <___vfprintf_internal_r+0x668>
  802e08:	1520003c 	xorhi	r20,r2,32768
  802e0c:	00800b44 	movi	r2,45
  802e10:	d8800605 	stb	r2,24(sp)
  802e14:	003ed106 	br	80295c <___vfprintf_internal_r+0x183c>
  802e18:	d9801a04 	addi	r6,sp,104
  802e1c:	900b883a 	mov	r5,r18
  802e20:	9809883a 	mov	r4,r19
  802e24:	08084cc0 	call	8084cc <__sprint_r>
  802e28:	1039cc1e 	bne	r2,zero,80155c <___vfprintf_internal_r+0x43c>
  802e2c:	dd401417 	ldw	r21,80(sp)
  802e30:	d8c01c17 	ldw	r3,112(sp)
  802e34:	dd802704 	addi	r22,sp,156
  802e38:	003d6a06 	br	8023e4 <___vfprintf_internal_r+0x12c4>
  802e3c:	05400184 	movi	r21,6
  802e40:	003e5a06 	br	8027ac <___vfprintf_internal_r+0x168c>
  802e44:	d9801a04 	addi	r6,sp,104
  802e48:	900b883a 	mov	r5,r18
  802e4c:	9809883a 	mov	r4,r19
  802e50:	08084cc0 	call	8084cc <__sprint_r>
  802e54:	0039c106 	br	80155c <___vfprintf_internal_r+0x43c>
  802e58:	d9401345 	stb	r5,77(sp)
  802e5c:	00396f06 	br	80141c <___vfprintf_internal_r+0x2fc>
  802e60:	d9000917 	ldw	r4,36(sp)
  802e64:	000d883a 	mov	r6,zero
  802e68:	000f883a 	mov	r7,zero
  802e6c:	a00b883a 	mov	r5,r20
  802e70:	d8c01115 	stw	r3,68(sp)
  802e74:	da000815 	stw	r8,32(sp)
  802e78:	db000715 	stw	r12,28(sp)
  802e7c:	080c7500 	call	80c750 <__eqdf2>
  802e80:	db000717 	ldw	r12,28(sp)
  802e84:	da000817 	ldw	r8,32(sp)
  802e88:	d8c01117 	ldw	r3,68(sp)
  802e8c:	103f8e26 	beq	r2,zero,802cc8 <___vfprintf_internal_r+0x1ba8>
  802e90:	00800044 	movi	r2,1
  802e94:	1205c83a 	sub	r2,r2,r8
  802e98:	d8801415 	stw	r2,80(sp)
  802e9c:	003f8b06 	br	802ccc <___vfprintf_internal_r+0x1bac>
  802ea0:	403ea81e 	bne	r8,zero,802944 <___vfprintf_internal_r+0x1824>
  802ea4:	02000044 	movi	r8,1
  802ea8:	003ea606 	br	802944 <___vfprintf_internal_r+0x1824>
  802eac:	d9801a04 	addi	r6,sp,104
  802eb0:	900b883a 	mov	r5,r18
  802eb4:	9809883a 	mov	r4,r19
  802eb8:	08084cc0 	call	8084cc <__sprint_r>
  802ebc:	1039a71e 	bne	r2,zero,80155c <___vfprintf_internal_r+0x43c>
  802ec0:	d9401417 	ldw	r5,80(sp)
  802ec4:	d8c01c17 	ldw	r3,112(sp)
  802ec8:	d8801b17 	ldw	r2,108(sp)
  802ecc:	dd802704 	addi	r22,sp,156
  802ed0:	283c750e 	bge	r5,zero,8020a8 <___vfprintf_internal_r+0xf88>
  802ed4:	003f3806 	br	802bb8 <___vfprintf_internal_r+0x1a98>
  802ed8:	d9801a04 	addi	r6,sp,104
  802edc:	900b883a 	mov	r5,r18
  802ee0:	9809883a 	mov	r4,r19
  802ee4:	08084cc0 	call	8084cc <__sprint_r>
  802ee8:	10399c1e 	bne	r2,zero,80155c <___vfprintf_internal_r+0x43c>
  802eec:	d8c01c17 	ldw	r3,112(sp)
  802ef0:	dd802704 	addi	r22,sp,156
  802ef4:	003d2c06 	br	8023a8 <___vfprintf_internal_r+0x1288>
  802ef8:	db000417 	ldw	r12,16(sp)
  802efc:	003a9106 	br	801944 <___vfprintf_internal_r+0x824>
  802f00:	d8801804 	addi	r2,sp,96
  802f04:	d8800315 	stw	r2,12(sp)
  802f08:	d9400917 	ldw	r5,36(sp)
  802f0c:	d8801504 	addi	r2,sp,84
  802f10:	40c00044 	addi	r3,r8,1
  802f14:	d8800215 	stw	r2,8(sp)
  802f18:	d8801404 	addi	r2,sp,80
  802f1c:	d8c00015 	stw	r3,0(sp)
  802f20:	d8800115 	stw	r2,4(sp)
  802f24:	01c00084 	movi	r7,2
  802f28:	a00d883a 	mov	r6,r20
  802f2c:	9809883a 	mov	r4,r19
  802f30:	db001115 	stw	r12,68(sp)
  802f34:	da000815 	stw	r8,32(sp)
  802f38:	d8c00715 	stw	r3,28(sp)
  802f3c:	08036640 	call	803664 <_dtoa_r>
  802f40:	d8c00717 	ldw	r3,28(sp)
  802f44:	da000817 	ldw	r8,32(sp)
  802f48:	db001117 	ldw	r12,68(sp)
  802f4c:	1023883a 	mov	r17,r2
  802f50:	e08011d8 	cmpnei	r2,fp,71
  802f54:	103e9c26 	beq	r2,zero,8029c8 <___vfprintf_internal_r+0x18a8>
  802f58:	88d3883a 	add	r9,r17,r3
  802f5c:	003f5c06 	br	802cd0 <___vfprintf_internal_r+0x1bb0>
  802f60:	d8801817 	ldw	r2,96(sp)
  802f64:	127f672e 	bgeu	r2,r9,802d04 <___vfprintf_internal_r+0x1be4>
  802f68:	01000c04 	movi	r4,48
  802f6c:	10c00044 	addi	r3,r2,1
  802f70:	d8c01815 	stw	r3,96(sp)
  802f74:	11000005 	stb	r4,0(r2)
  802f78:	d8801817 	ldw	r2,96(sp)
  802f7c:	127ffb36 	bltu	r2,r9,802f6c <___vfprintf_internal_r+0x1e4c>
  802f80:	003f6006 	br	802d04 <___vfprintf_internal_r+0x1be4>
  802f84:	d8800e17 	ldw	r2,56(sp)
  802f88:	db401343 	ldbu	r13,77(sp)
  802f8c:	0011883a 	mov	r8,zero
  802f90:	d8800615 	stw	r2,24(sp)
  802f94:	003b0006 	br	801b98 <___vfprintf_internal_r+0xa78>
  802f98:	d8800717 	ldw	r2,28(sp)
  802f9c:	d8c00817 	ldw	r3,32(sp)
  802fa0:	10c02216 	blt	r2,r3,80302c <___vfprintf_internal_r+0x1f0c>
  802fa4:	6300004c 	andi	r12,r12,1
  802fa8:	60004f1e 	bne	r12,zero,8030e8 <___vfprintf_internal_r+0x1fc8>
  802fac:	1029883a 	mov	r20,r2
  802fb0:	1000010e 	bge	r2,zero,802fb8 <___vfprintf_internal_r+0x1e98>
  802fb4:	0029883a 	mov	r20,zero
  802fb8:	dd400717 	ldw	r21,28(sp)
  802fbc:	070019c4 	movi	fp,103
  802fc0:	003f5f06 	br	802d40 <___vfprintf_internal_r+0x1c20>
  802fc4:	d9801a04 	addi	r6,sp,104
  802fc8:	900b883a 	mov	r5,r18
  802fcc:	9809883a 	mov	r4,r19
  802fd0:	08084cc0 	call	8084cc <__sprint_r>
  802fd4:	1039611e 	bne	r2,zero,80155c <___vfprintf_internal_r+0x43c>
  802fd8:	d8c01c17 	ldw	r3,112(sp)
  802fdc:	dd802704 	addi	r22,sp,156
  802fe0:	a83cee0e 	bge	r21,zero,80239c <___vfprintf_internal_r+0x127c>
  802fe4:	003dec06 	br	802798 <___vfprintf_internal_r+0x1678>
  802fe8:	02000184 	movi	r8,6
  802fec:	003e5506 	br	802944 <___vfprintf_internal_r+0x1824>
  802ff0:	d9801a04 	addi	r6,sp,104
  802ff4:	900b883a 	mov	r5,r18
  802ff8:	9809883a 	mov	r4,r19
  802ffc:	08084cc0 	call	8084cc <__sprint_r>
  803000:	1039561e 	bne	r2,zero,80155c <___vfprintf_internal_r+0x43c>
  803004:	d8801417 	ldw	r2,80(sp)
  803008:	d9000817 	ldw	r4,32(sp)
  80300c:	d8c01c17 	ldw	r3,112(sp)
  803010:	dd802704 	addi	r22,sp,156
  803014:	2085c83a 	sub	r2,r4,r2
  803018:	003d0606 	br	802434 <___vfprintf_internal_r+0x1314>
  80301c:	4029883a 	mov	r20,r8
  803020:	d8c00615 	stw	r3,24(sp)
  803024:	402b883a 	mov	r21,r8
  803028:	00390206 	br	801434 <___vfprintf_internal_r+0x314>
  80302c:	d8800817 	ldw	r2,32(sp)
  803030:	d8c00b17 	ldw	r3,44(sp)
  803034:	10eb883a 	add	r21,r2,r3
  803038:	d8800717 	ldw	r2,28(sp)
  80303c:	00800316 	blt	zero,r2,80304c <___vfprintf_internal_r+0x1f2c>
  803040:	d8800717 	ldw	r2,28(sp)
  803044:	a8abc83a 	sub	r21,r21,r2
  803048:	ad400044 	addi	r21,r21,1
  80304c:	a829883a 	mov	r20,r21
  803050:	a8002a16 	blt	r21,zero,8030fc <___vfprintf_internal_r+0x1fdc>
  803054:	070019c4 	movi	fp,103
  803058:	003f3906 	br	802d40 <___vfprintf_internal_r+0x1c20>
  80305c:	d9401345 	stb	r5,77(sp)
  803060:	003a2306 	br	8018f0 <___vfprintf_internal_r+0x7d0>
  803064:	d9401345 	stb	r5,77(sp)
  803068:	003b1806 	br	801ccc <___vfprintf_internal_r+0xbac>
  80306c:	d9401345 	stb	r5,77(sp)
  803070:	003a8e06 	br	801aac <___vfprintf_internal_r+0x98c>
  803074:	d9401345 	stb	r5,77(sp)
  803078:	003a3d06 	br	801970 <___vfprintf_internal_r+0x850>
  80307c:	d9401345 	stb	r5,77(sp)
  803080:	003a7606 	br	801a5c <___vfprintf_internal_r+0x93c>
  803084:	d9401345 	stb	r5,77(sp)
  803088:	00399406 	br	8016dc <___vfprintf_internal_r+0x5bc>
  80308c:	00bfffc4 	movi	r2,-1
  803090:	d8800515 	stw	r2,20(sp)
  803094:	00393406 	br	801568 <___vfprintf_internal_r+0x448>
  803098:	900f883a 	mov	r7,r18
  80309c:	8025883a 	mov	r18,r16
  8030a0:	dc000717 	ldw	r16,28(sp)
  8030a4:	10800044 	addi	r2,r2,1
  8030a8:	1f07883a 	add	r3,r3,fp
  8030ac:	b1c00015 	stw	r7,0(r22)
  8030b0:	b7000115 	stw	fp,4(r22)
  8030b4:	d8c01c15 	stw	r3,112(sp)
  8030b8:	d8801b15 	stw	r2,108(sp)
  8030bc:	11000208 	cmpgei	r4,r2,8
  8030c0:	203bf826 	beq	r4,zero,8020a4 <___vfprintf_internal_r+0xf84>
  8030c4:	d9801a04 	addi	r6,sp,104
  8030c8:	900b883a 	mov	r5,r18
  8030cc:	9809883a 	mov	r4,r19
  8030d0:	08084cc0 	call	8084cc <__sprint_r>
  8030d4:	1039211e 	bne	r2,zero,80155c <___vfprintf_internal_r+0x43c>
  8030d8:	d8c01c17 	ldw	r3,112(sp)
  8030dc:	d8801b17 	ldw	r2,108(sp)
  8030e0:	dd802704 	addi	r22,sp,156
  8030e4:	003bf006 	br	8020a8 <___vfprintf_internal_r+0xf88>
  8030e8:	d8800717 	ldw	r2,28(sp)
  8030ec:	d8c00b17 	ldw	r3,44(sp)
  8030f0:	10eb883a 	add	r21,r2,r3
  8030f4:	a829883a 	mov	r20,r21
  8030f8:	a83fd60e 	bge	r21,zero,803054 <___vfprintf_internal_r+0x1f34>
  8030fc:	0029883a 	mov	r20,zero
  803100:	003fd406 	br	803054 <___vfprintf_internal_r+0x1f34>
  803104:	00800c04 	movi	r2,48
  803108:	ad400c04 	addi	r21,r21,48
  80310c:	d88016c5 	stb	r2,91(sp)
  803110:	00800104 	movi	r2,4
  803114:	dd401705 	stb	r21,92(sp)
  803118:	d8801015 	stw	r2,64(sp)
  80311c:	003e6e06 	br	802ad8 <___vfprintf_internal_r+0x19b8>
  803120:	05400044 	movi	r21,1
  803124:	a8abc83a 	sub	r21,r21,r2
  803128:	00800b44 	movi	r2,45
  80312c:	d8801685 	stb	r2,90(sp)
  803130:	003e3a06 	br	802a1c <___vfprintf_internal_r+0x18fc>
  803134:	6080004c 	andi	r2,r12,1
  803138:	d8800715 	stw	r2,28(sp)
  80313c:	103e6b1e 	bne	r2,zero,802aec <___vfprintf_internal_r+0x19cc>
  803140:	a829883a 	mov	r20,r21
  803144:	a83efe0e 	bge	r21,zero,802d40 <___vfprintf_internal_r+0x1c20>
  803148:	0029883a 	mov	r20,zero
  80314c:	003efc06 	br	802d40 <___vfprintf_internal_r+0x1c20>
  803150:	d8800a17 	ldw	r2,40(sp)
  803154:	10001a16 	blt	r2,zero,8031c0 <___vfprintf_internal_r+0x20a0>
  803158:	db401343 	ldbu	r13,77(sp)
  80315c:	e0801210 	cmplti	r2,fp,72
  803160:	1000141e 	bne	r2,zero,8031b4 <___vfprintf_internal_r+0x2094>
  803164:	04402074 	movhi	r17,129
  803168:	8c41a804 	addi	r17,r17,1696
  80316c:	00398a06 	br	801798 <___vfprintf_internal_r+0x678>
  803170:	d8800b17 	ldw	r2,44(sp)
  803174:	18ab883a 	add	r21,r3,r2
  803178:	aa2b883a 	add	r21,r21,r8
  80317c:	003ff006 	br	803140 <___vfprintf_internal_r+0x2020>
  803180:	1000031e 	bne	r2,zero,803190 <___vfprintf_internal_r+0x2070>
  803184:	05000044 	movi	r20,1
  803188:	05400044 	movi	r21,1
  80318c:	003eec06 	br	802d40 <___vfprintf_internal_r+0x1c20>
  803190:	d8800b17 	ldw	r2,44(sp)
  803194:	15400044 	addi	r21,r2,1
  803198:	aa2b883a 	add	r21,r21,r8
  80319c:	003fe806 	br	803140 <___vfprintf_internal_r+0x2020>
  8031a0:	8025883a 	mov	r18,r16
  8031a4:	0038ed06 	br	80155c <___vfprintf_internal_r+0x43c>
  8031a8:	b005883a 	mov	r2,r22
  8031ac:	39c1b604 	addi	r7,r7,1752
  8031b0:	003ea506 	br	802c48 <___vfprintf_internal_r+0x1b28>
  8031b4:	04402074 	movhi	r17,129
  8031b8:	8c41a704 	addi	r17,r17,1692
  8031bc:	00397606 	br	801798 <___vfprintf_internal_r+0x678>
  8031c0:	00800b44 	movi	r2,45
  8031c4:	d8801345 	stb	r2,77(sp)
  8031c8:	03400b44 	movi	r13,45
  8031cc:	003fe306 	br	80315c <___vfprintf_internal_r+0x203c>
  8031d0:	00800084 	movi	r2,2
  8031d4:	d8801015 	stw	r2,64(sp)
  8031d8:	003e3f06 	br	802ad8 <___vfprintf_internal_r+0x19b8>
  8031dc:	d8c00617 	ldw	r3,24(sp)
  8031e0:	1a000017 	ldw	r8,0(r3)
  8031e4:	18c00104 	addi	r3,r3,4
  8031e8:	4000010e 	bge	r8,zero,8031f0 <___vfprintf_internal_r+0x20d0>
  8031ec:	023fffc4 	movi	r8,-1
  8031f0:	bf000043 	ldbu	fp,1(r23)
  8031f4:	d8c00615 	stw	r3,24(sp)
  8031f8:	102f883a 	mov	r23,r2
  8031fc:	e2c03fcc 	andi	r11,fp,255
  803200:	5ac0201c 	xori	r11,r11,128
  803204:	5affe004 	addi	r11,r11,-128
  803208:	00381106 	br	801250 <___vfprintf_internal_r+0x130>

0080320c <__vfprintf_internal>:
  80320c:	00c02074 	movhi	r3,129
  803210:	2005883a 	mov	r2,r4
  803214:	1909e117 	ldw	r4,10116(r3)
  803218:	300f883a 	mov	r7,r6
  80321c:	280d883a 	mov	r6,r5
  803220:	100b883a 	mov	r5,r2
  803224:	08011201 	jmpi	801120 <___vfprintf_internal_r>

00803228 <__sbprintf>:
  803228:	2880030b 	ldhu	r2,12(r5)
  80322c:	2b001917 	ldw	r12,100(r5)
  803230:	2ac0038b 	ldhu	r11,14(r5)
  803234:	2a800717 	ldw	r10,28(r5)
  803238:	2a400917 	ldw	r9,36(r5)
  80323c:	defee204 	addi	sp,sp,-1144
  803240:	da001a04 	addi	r8,sp,104
  803244:	00c10004 	movi	r3,1024
  803248:	dc011a15 	stw	r16,1128(sp)
  80324c:	10bfff4c 	andi	r2,r2,65533
  803250:	2821883a 	mov	r16,r5
  803254:	d80b883a 	mov	r5,sp
  803258:	dc811c15 	stw	r18,1136(sp)
  80325c:	dc411b15 	stw	r17,1132(sp)
  803260:	dfc11d15 	stw	ra,1140(sp)
  803264:	2025883a 	mov	r18,r4
  803268:	d880030d 	sth	r2,12(sp)
  80326c:	db001915 	stw	r12,100(sp)
  803270:	dac0038d 	sth	r11,14(sp)
  803274:	da800715 	stw	r10,28(sp)
  803278:	da400915 	stw	r9,36(sp)
  80327c:	da000015 	stw	r8,0(sp)
  803280:	da000415 	stw	r8,16(sp)
  803284:	d8c00215 	stw	r3,8(sp)
  803288:	d8c00515 	stw	r3,20(sp)
  80328c:	d8000615 	stw	zero,24(sp)
  803290:	08011200 	call	801120 <___vfprintf_internal_r>
  803294:	1023883a 	mov	r17,r2
  803298:	10000d0e 	bge	r2,zero,8032d0 <__sbprintf+0xa8>
  80329c:	d880030b 	ldhu	r2,12(sp)
  8032a0:	1080100c 	andi	r2,r2,64
  8032a4:	10000326 	beq	r2,zero,8032b4 <__sbprintf+0x8c>
  8032a8:	8080030b 	ldhu	r2,12(r16)
  8032ac:	10801014 	ori	r2,r2,64
  8032b0:	8080030d 	sth	r2,12(r16)
  8032b4:	8805883a 	mov	r2,r17
  8032b8:	dfc11d17 	ldw	ra,1140(sp)
  8032bc:	dc811c17 	ldw	r18,1136(sp)
  8032c0:	dc411b17 	ldw	r17,1132(sp)
  8032c4:	dc011a17 	ldw	r16,1128(sp)
  8032c8:	dec11e04 	addi	sp,sp,1144
  8032cc:	f800283a 	ret
  8032d0:	d80b883a 	mov	r5,sp
  8032d4:	9009883a 	mov	r4,r18
  8032d8:	0804fdc0 	call	804fdc <_fflush_r>
  8032dc:	103fef26 	beq	r2,zero,80329c <__sbprintf+0x74>
  8032e0:	047fffc4 	movi	r17,-1
  8032e4:	003fed06 	br	80329c <__sbprintf+0x74>

008032e8 <__swsetup_r>:
  8032e8:	00802074 	movhi	r2,129
  8032ec:	1089e117 	ldw	r2,10116(r2)
  8032f0:	defffd04 	addi	sp,sp,-12
  8032f4:	dc400115 	stw	r17,4(sp)
  8032f8:	dc000015 	stw	r16,0(sp)
  8032fc:	dfc00215 	stw	ra,8(sp)
  803300:	2023883a 	mov	r17,r4
  803304:	2821883a 	mov	r16,r5
  803308:	10000226 	beq	r2,zero,803314 <__swsetup_r+0x2c>
  80330c:	10c00e17 	ldw	r3,56(r2)
  803310:	18003326 	beq	r3,zero,8033e0 <__swsetup_r+0xf8>
  803314:	8180030b 	ldhu	r6,12(r16)
  803318:	30c0020c 	andi	r3,r6,8
  80331c:	3005883a 	mov	r2,r6
  803320:	18000f26 	beq	r3,zero,803360 <__swsetup_r+0x78>
  803324:	80c00417 	ldw	r3,16(r16)
  803328:	18001626 	beq	r3,zero,803384 <__swsetup_r+0x9c>
  80332c:	1100004c 	andi	r4,r2,1
  803330:	20001f1e 	bne	r4,zero,8033b0 <__swsetup_r+0xc8>
  803334:	1100008c 	andi	r4,r2,2
  803338:	20002c1e 	bne	r4,zero,8033ec <__swsetup_r+0x104>
  80333c:	81000517 	ldw	r4,20(r16)
  803340:	81000215 	stw	r4,8(r16)
  803344:	18001f26 	beq	r3,zero,8033c4 <__swsetup_r+0xdc>
  803348:	0005883a 	mov	r2,zero
  80334c:	dfc00217 	ldw	ra,8(sp)
  803350:	dc400117 	ldw	r17,4(sp)
  803354:	dc000017 	ldw	r16,0(sp)
  803358:	dec00304 	addi	sp,sp,12
  80335c:	f800283a 	ret
  803360:	3080040c 	andi	r2,r6,16
  803364:	10003126 	beq	r2,zero,80342c <__swsetup_r+0x144>
  803368:	3080010c 	andi	r2,r6,4
  80336c:	1000211e 	bne	r2,zero,8033f4 <__swsetup_r+0x10c>
  803370:	80c00417 	ldw	r3,16(r16)
  803374:	30800214 	ori	r2,r6,8
  803378:	8080030d 	sth	r2,12(r16)
  80337c:	100d883a 	mov	r6,r2
  803380:	183fea1e 	bne	r3,zero,80332c <__swsetup_r+0x44>
  803384:	1100a00c 	andi	r4,r2,640
  803388:	21008020 	cmpeqi	r4,r4,512
  80338c:	203fe71e 	bne	r4,zero,80332c <__swsetup_r+0x44>
  803390:	8809883a 	mov	r4,r17
  803394:	800b883a 	mov	r5,r16
  803398:	0805e940 	call	805e94 <__smakebuf_r>
  80339c:	8180030b 	ldhu	r6,12(r16)
  8033a0:	80c00417 	ldw	r3,16(r16)
  8033a4:	3005883a 	mov	r2,r6
  8033a8:	1100004c 	andi	r4,r2,1
  8033ac:	203fe126 	beq	r4,zero,803334 <__swsetup_r+0x4c>
  8033b0:	81000517 	ldw	r4,20(r16)
  8033b4:	80000215 	stw	zero,8(r16)
  8033b8:	0109c83a 	sub	r4,zero,r4
  8033bc:	81000615 	stw	r4,24(r16)
  8033c0:	183fe11e 	bne	r3,zero,803348 <__swsetup_r+0x60>
  8033c4:	10c0200c 	andi	r3,r2,128
  8033c8:	0005883a 	mov	r2,zero
  8033cc:	183fdf26 	beq	r3,zero,80334c <__swsetup_r+0x64>
  8033d0:	31801014 	ori	r6,r6,64
  8033d4:	8180030d 	sth	r6,12(r16)
  8033d8:	00bfffc4 	movi	r2,-1
  8033dc:	003fdb06 	br	80334c <__swsetup_r+0x64>
  8033e0:	1009883a 	mov	r4,r2
  8033e4:	08053700 	call	805370 <__sinit>
  8033e8:	003fca06 	br	803314 <__swsetup_r+0x2c>
  8033ec:	0009883a 	mov	r4,zero
  8033f0:	003fd306 	br	803340 <__swsetup_r+0x58>
  8033f4:	81400c17 	ldw	r5,48(r16)
  8033f8:	28000626 	beq	r5,zero,803414 <__swsetup_r+0x12c>
  8033fc:	80801004 	addi	r2,r16,64
  803400:	28800326 	beq	r5,r2,803410 <__swsetup_r+0x128>
  803404:	8809883a 	mov	r4,r17
  803408:	08054d40 	call	8054d4 <_free_r>
  80340c:	8180030b 	ldhu	r6,12(r16)
  803410:	80000c15 	stw	zero,48(r16)
  803414:	80c00417 	ldw	r3,16(r16)
  803418:	00bff6c4 	movi	r2,-37
  80341c:	118c703a 	and	r6,r2,r6
  803420:	80000115 	stw	zero,4(r16)
  803424:	80c00015 	stw	r3,0(r16)
  803428:	003fd206 	br	803374 <__swsetup_r+0x8c>
  80342c:	00800244 	movi	r2,9
  803430:	88800015 	stw	r2,0(r17)
  803434:	31801014 	ori	r6,r6,64
  803438:	8180030d 	sth	r6,12(r16)
  80343c:	00bfffc4 	movi	r2,-1
  803440:	003fc206 	br	80334c <__swsetup_r+0x64>

00803444 <quorem>:
  803444:	defff204 	addi	sp,sp,-56
  803448:	dc400515 	stw	r17,20(sp)
  80344c:	20800417 	ldw	r2,16(r4)
  803450:	2c400417 	ldw	r17,16(r5)
  803454:	dfc00d15 	stw	ra,52(sp)
  803458:	df000c15 	stw	fp,48(sp)
  80345c:	ddc00b15 	stw	r23,44(sp)
  803460:	dd800a15 	stw	r22,40(sp)
  803464:	dd400915 	stw	r21,36(sp)
  803468:	dd000815 	stw	r20,32(sp)
  80346c:	dcc00715 	stw	r19,28(sp)
  803470:	dc800615 	stw	r18,24(sp)
  803474:	dc000415 	stw	r16,16(sp)
  803478:	d9000115 	stw	r4,4(sp)
  80347c:	d9400215 	stw	r5,8(sp)
  803480:	14407616 	blt	r2,r17,80365c <quorem+0x218>
  803484:	8c7fffc4 	addi	r17,r17,-1
  803488:	882a90ba 	slli	r21,r17,2
  80348c:	2f000504 	addi	fp,r5,20
  803490:	25800504 	addi	r22,r4,20
  803494:	e565883a 	add	r18,fp,r21
  803498:	b545883a 	add	r2,r22,r21
  80349c:	95c00017 	ldw	r23,0(r18)
  8034a0:	15000017 	ldw	r20,0(r2)
  8034a4:	dd800015 	stw	r22,0(sp)
  8034a8:	bdc00044 	addi	r23,r23,1
  8034ac:	b80b883a 	mov	r5,r23
  8034b0:	a009883a 	mov	r4,r20
  8034b4:	d8800315 	stw	r2,12(sp)
  8034b8:	080b3e40 	call	80b3e4 <__udivsi3>
  8034bc:	1021883a 	mov	r16,r2
  8034c0:	a5c02f36 	bltu	r20,r23,803580 <quorem+0x13c>
  8034c4:	e029883a 	mov	r20,fp
  8034c8:	002b883a 	mov	r21,zero
  8034cc:	002f883a 	mov	r23,zero
  8034d0:	a4c00017 	ldw	r19,0(r20)
  8034d4:	800b883a 	mov	r5,r16
  8034d8:	b5800104 	addi	r22,r22,4
  8034dc:	993fffcc 	andi	r4,r19,65535
  8034e0:	0800f1c0 	call	800f1c <__mulsi3>
  8034e4:	9808d43a 	srli	r4,r19,16
  8034e8:	800b883a 	mov	r5,r16
  8034ec:	156b883a 	add	r21,r2,r21
  8034f0:	0800f1c0 	call	800f1c <__mulsi3>
  8034f4:	b0ffff17 	ldw	r3,-4(r22)
  8034f8:	a80ad43a 	srli	r5,r21,16
  8034fc:	a93fffcc 	andi	r4,r21,65535
  803500:	19bfffcc 	andi	r6,r3,65535
  803504:	b909c83a 	sub	r4,r23,r4
  803508:	2189883a 	add	r4,r4,r6
  80350c:	1806d43a 	srli	r3,r3,16
  803510:	1145883a 	add	r2,r2,r5
  803514:	200bd43a 	srai	r5,r4,16
  803518:	11bfffcc 	andi	r6,r2,65535
  80351c:	1987c83a 	sub	r3,r3,r6
  803520:	1947883a 	add	r3,r3,r5
  803524:	180a943a 	slli	r5,r3,16
  803528:	213fffcc 	andi	r4,r4,65535
  80352c:	a5000104 	addi	r20,r20,4
  803530:	2908b03a 	or	r4,r5,r4
  803534:	b13fff15 	stw	r4,-4(r22)
  803538:	102ad43a 	srli	r21,r2,16
  80353c:	182fd43a 	srai	r23,r3,16
  803540:	953fe32e 	bgeu	r18,r20,8034d0 <quorem+0x8c>
  803544:	d8c00317 	ldw	r3,12(sp)
  803548:	18800017 	ldw	r2,0(r3)
  80354c:	10000c1e 	bne	r2,zero,803580 <quorem+0x13c>
  803550:	d8800017 	ldw	r2,0(sp)
  803554:	1d7fff04 	addi	r21,r3,-4
  803558:	15400436 	bltu	r2,r21,80356c <quorem+0x128>
  80355c:	00000606 	br	803578 <quorem+0x134>
  803560:	d8800017 	ldw	r2,0(sp)
  803564:	8c7fffc4 	addi	r17,r17,-1
  803568:	1540032e 	bgeu	r2,r21,803578 <quorem+0x134>
  80356c:	a8800017 	ldw	r2,0(r21)
  803570:	ad7fff04 	addi	r21,r21,-4
  803574:	103ffa26 	beq	r2,zero,803560 <quorem+0x11c>
  803578:	d8800117 	ldw	r2,4(sp)
  80357c:	14400415 	stw	r17,16(r2)
  803580:	d9400217 	ldw	r5,8(sp)
  803584:	d9000117 	ldw	r4,4(sp)
  803588:	08075b40 	call	8075b4 <__mcmp>
  80358c:	10002616 	blt	r2,zero,803628 <quorem+0x1e4>
  803590:	d9800017 	ldw	r6,0(sp)
  803594:	84000044 	addi	r16,r16,1
  803598:	0007883a 	mov	r3,zero
  80359c:	e1000017 	ldw	r4,0(fp)
  8035a0:	31400017 	ldw	r5,0(r6)
  8035a4:	31800104 	addi	r6,r6,4
  8035a8:	20bfffcc 	andi	r2,r4,65535
  8035ac:	1887c83a 	sub	r3,r3,r2
  8035b0:	28bfffcc 	andi	r2,r5,65535
  8035b4:	1885883a 	add	r2,r3,r2
  8035b8:	2008d43a 	srli	r4,r4,16
  8035bc:	2806d43a 	srli	r3,r5,16
  8035c0:	100fd43a 	srai	r7,r2,16
  8035c4:	117fffcc 	andi	r5,r2,65535
  8035c8:	1907c83a 	sub	r3,r3,r4
  8035cc:	19c7883a 	add	r3,r3,r7
  8035d0:	1804943a 	slli	r2,r3,16
  8035d4:	e7000104 	addi	fp,fp,4
  8035d8:	1807d43a 	srai	r3,r3,16
  8035dc:	1144b03a 	or	r2,r2,r5
  8035e0:	30bfff15 	stw	r2,-4(r6)
  8035e4:	973fed2e 	bgeu	r18,fp,80359c <quorem+0x158>
  8035e8:	880490ba 	slli	r2,r17,2
  8035ec:	d9000017 	ldw	r4,0(sp)
  8035f0:	2085883a 	add	r2,r4,r2
  8035f4:	10c00017 	ldw	r3,0(r2)
  8035f8:	18000b1e 	bne	r3,zero,803628 <quorem+0x1e4>
  8035fc:	10bfff04 	addi	r2,r2,-4
  803600:	20800436 	bltu	r4,r2,803614 <quorem+0x1d0>
  803604:	00000606 	br	803620 <quorem+0x1dc>
  803608:	d8c00017 	ldw	r3,0(sp)
  80360c:	8c7fffc4 	addi	r17,r17,-1
  803610:	1880032e 	bgeu	r3,r2,803620 <quorem+0x1dc>
  803614:	10c00017 	ldw	r3,0(r2)
  803618:	10bfff04 	addi	r2,r2,-4
  80361c:	183ffa26 	beq	r3,zero,803608 <quorem+0x1c4>
  803620:	d8800117 	ldw	r2,4(sp)
  803624:	14400415 	stw	r17,16(r2)
  803628:	8005883a 	mov	r2,r16
  80362c:	dfc00d17 	ldw	ra,52(sp)
  803630:	df000c17 	ldw	fp,48(sp)
  803634:	ddc00b17 	ldw	r23,44(sp)
  803638:	dd800a17 	ldw	r22,40(sp)
  80363c:	dd400917 	ldw	r21,36(sp)
  803640:	dd000817 	ldw	r20,32(sp)
  803644:	dcc00717 	ldw	r19,28(sp)
  803648:	dc800617 	ldw	r18,24(sp)
  80364c:	dc400517 	ldw	r17,20(sp)
  803650:	dc000417 	ldw	r16,16(sp)
  803654:	dec00e04 	addi	sp,sp,56
  803658:	f800283a 	ret
  80365c:	0005883a 	mov	r2,zero
  803660:	003ff206 	br	80362c <quorem+0x1e8>

00803664 <_dtoa_r>:
  803664:	20801017 	ldw	r2,64(r4)
  803668:	deffe204 	addi	sp,sp,-120
  80366c:	ddc01b15 	stw	r23,108(sp)
  803670:	dd001815 	stw	r20,96(sp)
  803674:	dc801615 	stw	r18,88(sp)
  803678:	dc401515 	stw	r17,84(sp)
  80367c:	dc001415 	stw	r16,80(sp)
  803680:	dfc01d15 	stw	ra,116(sp)
  803684:	df001c15 	stw	fp,112(sp)
  803688:	dd801a15 	stw	r22,104(sp)
  80368c:	dd401915 	stw	r21,100(sp)
  803690:	dcc01715 	stw	r19,92(sp)
  803694:	d9c00115 	stw	r7,4(sp)
  803698:	dc002017 	ldw	r16,128(sp)
  80369c:	202f883a 	mov	r23,r4
  8036a0:	3025883a 	mov	r18,r6
  8036a4:	2829883a 	mov	r20,r5
  8036a8:	3023883a 	mov	r17,r6
  8036ac:	10000826 	beq	r2,zero,8036d0 <_dtoa_r+0x6c>
  8036b0:	21801117 	ldw	r6,68(r4)
  8036b4:	00c00044 	movi	r3,1
  8036b8:	100b883a 	mov	r5,r2
  8036bc:	1986983a 	sll	r3,r3,r6
  8036c0:	11800115 	stw	r6,4(r2)
  8036c4:	10c00215 	stw	r3,8(r2)
  8036c8:	0806c480 	call	806c48 <_Bfree>
  8036cc:	b8001015 	stw	zero,64(r23)
  8036d0:	90018616 	blt	r18,zero,803cec <_dtoa_r+0x688>
  8036d4:	80000015 	stw	zero,0(r16)
  8036d8:	909ffc2c 	andhi	r2,r18,32752
  8036dc:	00dffc34 	movhi	r3,32752
  8036e0:	10c18b26 	beq	r2,r3,803d10 <_dtoa_r+0x6ac>
  8036e4:	000d883a 	mov	r6,zero
  8036e8:	000f883a 	mov	r7,zero
  8036ec:	a009883a 	mov	r4,r20
  8036f0:	880b883a 	mov	r5,r17
  8036f4:	080c7500 	call	80c750 <__eqdf2>
  8036f8:	1000181e 	bne	r2,zero,80375c <_dtoa_r+0xf8>
  8036fc:	d8c01f17 	ldw	r3,124(sp)
  803700:	00800044 	movi	r2,1
  803704:	18800015 	stw	r2,0(r3)
  803708:	d8802117 	ldw	r2,132(sp)
  80370c:	10030b26 	beq	r2,zero,80433c <_dtoa_r+0xcd8>
  803710:	d8c02117 	ldw	r3,132(sp)
  803714:	00802074 	movhi	r2,129
  803718:	1081b544 	addi	r2,r2,1749
  80371c:	07002074 	movhi	fp,129
  803720:	18800015 	stw	r2,0(r3)
  803724:	e701b504 	addi	fp,fp,1748
  803728:	e005883a 	mov	r2,fp
  80372c:	dfc01d17 	ldw	ra,116(sp)
  803730:	df001c17 	ldw	fp,112(sp)
  803734:	ddc01b17 	ldw	r23,108(sp)
  803738:	dd801a17 	ldw	r22,104(sp)
  80373c:	dd401917 	ldw	r21,100(sp)
  803740:	dd001817 	ldw	r20,96(sp)
  803744:	dcc01717 	ldw	r19,92(sp)
  803748:	dc801617 	ldw	r18,88(sp)
  80374c:	dc401517 	ldw	r17,84(sp)
  803750:	dc001417 	ldw	r16,80(sp)
  803754:	dec01e04 	addi	sp,sp,120
  803758:	f800283a 	ret
  80375c:	d8801204 	addi	r2,sp,72
  803760:	9020d53a 	srli	r16,r18,20
  803764:	d8800015 	stw	r2,0(sp)
  803768:	d9c01304 	addi	r7,sp,76
  80376c:	a00b883a 	mov	r5,r20
  803770:	880d883a 	mov	r6,r17
  803774:	b809883a 	mov	r4,r23
  803778:	08079980 	call	807998 <__d2b>
  80377c:	102d883a 	mov	r22,r2
  803780:	8001741e 	bne	r16,zero,803d54 <_dtoa_r+0x6f0>
  803784:	df001217 	ldw	fp,72(sp)
  803788:	dc001317 	ldw	r16,76(sp)
  80378c:	e421883a 	add	r16,fp,r16
  803790:	80810c84 	addi	r2,r16,1074
  803794:	10c00850 	cmplti	r3,r2,33
  803798:	1802f81e 	bne	r3,zero,80437c <_dtoa_r+0xd18>
  80379c:	01001004 	movi	r4,64
  8037a0:	2085c83a 	sub	r2,r4,r2
  8037a4:	81010484 	addi	r4,r16,1042
  8037a8:	90a4983a 	sll	r18,r18,r2
  8037ac:	a108d83a 	srl	r4,r20,r4
  8037b0:	9108b03a 	or	r4,r18,r4
  8037b4:	0800d3c0 	call	800d3c <__floatunsidf>
  8037b8:	1009883a 	mov	r4,r2
  8037bc:	017f8434 	movhi	r5,65040
  8037c0:	00800044 	movi	r2,1
  8037c4:	194b883a 	add	r5,r3,r5
  8037c8:	843fffc4 	addi	r16,r16,-1
  8037cc:	d8800915 	stw	r2,36(sp)
  8037d0:	000d883a 	mov	r6,zero
  8037d4:	01cffe34 	movhi	r7,16376
  8037d8:	080d1580 	call	80d158 <__subdf3>
  8037dc:	0198dbf4 	movhi	r6,25455
  8037e0:	01cff4f4 	movhi	r7,16339
  8037e4:	3190d844 	addi	r6,r6,17249
  8037e8:	39e1e9c4 	addi	r7,r7,-30809
  8037ec:	1009883a 	mov	r4,r2
  8037f0:	180b883a 	mov	r5,r3
  8037f4:	080c9b00 	call	80c9b0 <__muldf3>
  8037f8:	01a2d874 	movhi	r6,35681
  8037fc:	01cff1f4 	movhi	r7,16327
  803800:	31b22cc4 	addi	r6,r6,-14157
  803804:	39e28a04 	addi	r7,r7,-30168
  803808:	180b883a 	mov	r5,r3
  80380c:	1009883a 	mov	r4,r2
  803810:	080b4a40 	call	80b4a4 <__adddf3>
  803814:	8009883a 	mov	r4,r16
  803818:	1027883a 	mov	r19,r2
  80381c:	1825883a 	mov	r18,r3
  803820:	080db600 	call	80db60 <__floatsidf>
  803824:	019427f4 	movhi	r6,20639
  803828:	01cff4f4 	movhi	r7,16339
  80382c:	319e7ec4 	addi	r6,r6,31227
  803830:	39d104c4 	addi	r7,r7,17427
  803834:	1009883a 	mov	r4,r2
  803838:	180b883a 	mov	r5,r3
  80383c:	080c9b00 	call	80c9b0 <__muldf3>
  803840:	100d883a 	mov	r6,r2
  803844:	180f883a 	mov	r7,r3
  803848:	9809883a 	mov	r4,r19
  80384c:	900b883a 	mov	r5,r18
  803850:	080b4a40 	call	80b4a4 <__adddf3>
  803854:	1009883a 	mov	r4,r2
  803858:	180b883a 	mov	r5,r3
  80385c:	1025883a 	mov	r18,r2
  803860:	182b883a 	mov	r21,r3
  803864:	080dae00 	call	80dae0 <__fixdfsi>
  803868:	000d883a 	mov	r6,zero
  80386c:	000f883a 	mov	r7,zero
  803870:	9009883a 	mov	r4,r18
  803874:	a80b883a 	mov	r5,r21
  803878:	1027883a 	mov	r19,r2
  80387c:	080c8c00 	call	80c8c0 <__ledf2>
  803880:	1002a416 	blt	r2,zero,804314 <_dtoa_r+0xcb0>
  803884:	e439c83a 	sub	fp,fp,r16
  803888:	e0ffffc4 	addi	r3,fp,-1
  80388c:	988005e8 	cmpgeui	r2,r19,23
  803890:	d8c00215 	stw	r3,8(sp)
  803894:	1002961e 	bne	r2,zero,8042f0 <_dtoa_r+0xc8c>
  803898:	980690fa 	slli	r3,r19,3
  80389c:	00802074 	movhi	r2,129
  8038a0:	1081fe04 	addi	r2,r2,2040
  8038a4:	10c5883a 	add	r2,r2,r3
  8038a8:	11800017 	ldw	r6,0(r2)
  8038ac:	11c00117 	ldw	r7,4(r2)
  8038b0:	a009883a 	mov	r4,r20
  8038b4:	880b883a 	mov	r5,r17
  8038b8:	080c8c00 	call	80c8c0 <__ledf2>
  8038bc:	1002670e 	bge	r2,zero,80425c <_dtoa_r+0xbf8>
  8038c0:	d8000815 	stw	zero,32(sp)
  8038c4:	e0bfffc4 	addi	r2,fp,-1
  8038c8:	9cffffc4 	addi	r19,r19,-1
  8038cc:	10028c16 	blt	r2,zero,804300 <_dtoa_r+0xc9c>
  8038d0:	d8000515 	stw	zero,20(sp)
  8038d4:	9802650e 	bge	r19,zero,80426c <_dtoa_r+0xc08>
  8038d8:	d8800517 	ldw	r2,20(sp)
  8038dc:	d8c00117 	ldw	r3,4(sp)
  8038e0:	dcc00315 	stw	r19,12(sp)
  8038e4:	14c5c83a 	sub	r2,r2,r19
  8038e8:	d8800515 	stw	r2,20(sp)
  8038ec:	04c5c83a 	sub	r2,zero,r19
  8038f0:	d8800715 	stw	r2,28(sp)
  8038f4:	188002a8 	cmpgeui	r2,r3,10
  8038f8:	0027883a 	mov	r19,zero
  8038fc:	1002631e 	bne	r2,zero,80428c <_dtoa_r+0xc28>
  803900:	18800190 	cmplti	r2,r3,6
  803904:	1002a11e 	bne	r2,zero,80438c <_dtoa_r+0xd28>
  803908:	18bfff04 	addi	r2,r3,-4
  80390c:	d8800115 	stw	r2,4(sp)
  803910:	0021883a 	mov	r16,zero
  803914:	d8c00117 	ldw	r3,4(sp)
  803918:	18800120 	cmpeqi	r2,r3,4
  80391c:	1003721e 	bne	r2,zero,8046e8 <_dtoa_r+0x1084>
  803920:	18800160 	cmpeqi	r2,r3,5
  803924:	10032f1e 	bne	r2,zero,8045e4 <_dtoa_r+0xf80>
  803928:	188000a0 	cmpeqi	r2,r3,2
  80392c:	10026326 	beq	r2,zero,8042bc <_dtoa_r+0xc58>
  803930:	d8000615 	stw	zero,24(sp)
  803934:	d8801e17 	ldw	r2,120(sp)
  803938:	00833c0e 	bge	zero,r2,80462c <_dtoa_r+0xfc8>
  80393c:	d8800b15 	stw	r2,44(sp)
  803940:	d8800415 	stw	r2,16(sp)
  803944:	100d883a 	mov	r6,r2
  803948:	b8001115 	stw	zero,68(r23)
  80394c:	30800610 	cmplti	r2,r6,24
  803950:	1005161e 	bne	r2,zero,804dac <_dtoa_r+0x1748>
  803954:	00c00044 	movi	r3,1
  803958:	00800104 	movi	r2,4
  80395c:	1085883a 	add	r2,r2,r2
  803960:	11000504 	addi	r4,r2,20
  803964:	180b883a 	mov	r5,r3
  803968:	18c00044 	addi	r3,r3,1
  80396c:	313ffb2e 	bgeu	r6,r4,80395c <_dtoa_r+0x2f8>
  803970:	b9401115 	stw	r5,68(r23)
  803974:	b809883a 	mov	r4,r23
  803978:	0806ba40 	call	806ba4 <_Balloc>
  80397c:	1039883a 	mov	fp,r2
  803980:	1004f526 	beq	r2,zero,804d58 <_dtoa_r+0x16f4>
  803984:	b8801015 	stw	r2,64(r23)
  803988:	d8800417 	ldw	r2,16(sp)
  80398c:	108003e8 	cmpgeui	r2,r2,15
  803990:	10010b1e 	bne	r2,zero,803dc0 <_dtoa_r+0x75c>
  803994:	80010a26 	beq	r16,zero,803dc0 <_dtoa_r+0x75c>
  803998:	d9000317 	ldw	r4,12(sp)
  80399c:	0103a30e 	bge	zero,r4,80482c <_dtoa_r+0x11c8>
  8039a0:	208003cc 	andi	r2,r4,15
  8039a4:	100690fa 	slli	r3,r2,3
  8039a8:	202bd13a 	srai	r21,r4,4
  8039ac:	00802074 	movhi	r2,129
  8039b0:	1081fe04 	addi	r2,r2,2040
  8039b4:	10c5883a 	add	r2,r2,r3
  8039b8:	a8c0040c 	andi	r3,r21,16
  8039bc:	12800017 	ldw	r10,0(r2)
  8039c0:	12400117 	ldw	r9,4(r2)
  8039c4:	18034226 	beq	r3,zero,8046d0 <_dtoa_r+0x106c>
  8039c8:	00802074 	movhi	r2,129
  8039cc:	1081f404 	addi	r2,r2,2000
  8039d0:	11800817 	ldw	r6,32(r2)
  8039d4:	11c00917 	ldw	r7,36(r2)
  8039d8:	a009883a 	mov	r4,r20
  8039dc:	880b883a 	mov	r5,r17
  8039e0:	da400e15 	stw	r9,56(sp)
  8039e4:	da800d15 	stw	r10,52(sp)
  8039e8:	080be1c0 	call	80be1c <__divdf3>
  8039ec:	da800d17 	ldw	r10,52(sp)
  8039f0:	da400e17 	ldw	r9,56(sp)
  8039f4:	ad4003cc 	andi	r21,r21,15
  8039f8:	d8800a15 	stw	r2,40(sp)
  8039fc:	d8c00c15 	stw	r3,48(sp)
  803a00:	040000c4 	movi	r16,3
  803a04:	a8001126 	beq	r21,zero,803a4c <_dtoa_r+0x3e8>
  803a08:	04802074 	movhi	r18,129
  803a0c:	9481f404 	addi	r18,r18,2000
  803a10:	5009883a 	mov	r4,r10
  803a14:	480b883a 	mov	r5,r9
  803a18:	a980004c 	andi	r6,r21,1
  803a1c:	30000626 	beq	r6,zero,803a38 <_dtoa_r+0x3d4>
  803a20:	91800017 	ldw	r6,0(r18)
  803a24:	91c00117 	ldw	r7,4(r18)
  803a28:	84000044 	addi	r16,r16,1
  803a2c:	080c9b00 	call	80c9b0 <__muldf3>
  803a30:	1009883a 	mov	r4,r2
  803a34:	180b883a 	mov	r5,r3
  803a38:	a82bd07a 	srai	r21,r21,1
  803a3c:	94800204 	addi	r18,r18,8
  803a40:	a83ff51e 	bne	r21,zero,803a18 <_dtoa_r+0x3b4>
  803a44:	2015883a 	mov	r10,r4
  803a48:	2813883a 	mov	r9,r5
  803a4c:	d9000a17 	ldw	r4,40(sp)
  803a50:	d9400c17 	ldw	r5,48(sp)
  803a54:	500d883a 	mov	r6,r10
  803a58:	480f883a 	mov	r7,r9
  803a5c:	080be1c0 	call	80be1c <__divdf3>
  803a60:	1025883a 	mov	r18,r2
  803a64:	d8c00a15 	stw	r3,40(sp)
  803a68:	d8800817 	ldw	r2,32(sp)
  803a6c:	10000726 	beq	r2,zero,803a8c <_dtoa_r+0x428>
  803a70:	dd400a17 	ldw	r21,40(sp)
  803a74:	000d883a 	mov	r6,zero
  803a78:	01cffc34 	movhi	r7,16368
  803a7c:	9009883a 	mov	r4,r18
  803a80:	a80b883a 	mov	r5,r21
  803a84:	080c8c00 	call	80c8c0 <__ledf2>
  803a88:	10045516 	blt	r2,zero,804be0 <_dtoa_r+0x157c>
  803a8c:	8009883a 	mov	r4,r16
  803a90:	080db600 	call	80db60 <__floatsidf>
  803a94:	d9c00a17 	ldw	r7,40(sp)
  803a98:	900d883a 	mov	r6,r18
  803a9c:	1009883a 	mov	r4,r2
  803aa0:	180b883a 	mov	r5,r3
  803aa4:	080c9b00 	call	80c9b0 <__muldf3>
  803aa8:	000d883a 	mov	r6,zero
  803aac:	01d00734 	movhi	r7,16412
  803ab0:	1009883a 	mov	r4,r2
  803ab4:	180b883a 	mov	r5,r3
  803ab8:	080b4a40 	call	80b4a4 <__adddf3>
  803abc:	d8800c15 	stw	r2,48(sp)
  803ac0:	00bf3034 	movhi	r2,64704
  803ac4:	1885883a 	add	r2,r3,r2
  803ac8:	d8800d15 	stw	r2,52(sp)
  803acc:	d8800417 	ldw	r2,16(sp)
  803ad0:	10033926 	beq	r2,zero,8047b8 <_dtoa_r+0x1154>
  803ad4:	d8800317 	ldw	r2,12(sp)
  803ad8:	d8801115 	stw	r2,68(sp)
  803adc:	d8800417 	ldw	r2,16(sp)
  803ae0:	d8800e15 	stw	r2,56(sp)
  803ae4:	dc000a17 	ldw	r16,40(sp)
  803ae8:	9009883a 	mov	r4,r18
  803aec:	800b883a 	mov	r5,r16
  803af0:	080dae00 	call	80dae0 <__fixdfsi>
  803af4:	d8c00e17 	ldw	r3,56(sp)
  803af8:	d8801015 	stw	r2,64(sp)
  803afc:	18ffffc4 	addi	r3,r3,-1
  803b00:	180890fa 	slli	r4,r3,3
  803b04:	00c02074 	movhi	r3,129
  803b08:	18c1fe04 	addi	r3,r3,2040
  803b0c:	1907883a 	add	r3,r3,r4
  803b10:	1b000017 	ldw	r12,0(r3)
  803b14:	1b400117 	ldw	r13,4(r3)
  803b18:	1009883a 	mov	r4,r2
  803b1c:	db000f15 	stw	r12,60(sp)
  803b20:	db400a15 	stw	r13,40(sp)
  803b24:	080db600 	call	80db60 <__floatsidf>
  803b28:	9009883a 	mov	r4,r18
  803b2c:	800b883a 	mov	r5,r16
  803b30:	100d883a 	mov	r6,r2
  803b34:	180f883a 	mov	r7,r3
  803b38:	080d1580 	call	80d158 <__subdf3>
  803b3c:	dac01017 	ldw	r11,64(sp)
  803b40:	102b883a 	mov	r21,r2
  803b44:	d8800617 	ldw	r2,24(sp)
  803b48:	db400a17 	ldw	r13,40(sp)
  803b4c:	db000f17 	ldw	r12,60(sp)
  803b50:	e4000044 	addi	r16,fp,1
  803b54:	1825883a 	mov	r18,r3
  803b58:	5ac00c04 	addi	r11,r11,48
  803b5c:	1003c626 	beq	r2,zero,804a78 <_dtoa_r+0x1414>
  803b60:	600d883a 	mov	r6,r12
  803b64:	680f883a 	mov	r7,r13
  803b68:	0009883a 	mov	r4,zero
  803b6c:	014ff834 	movhi	r5,16352
  803b70:	dac00f15 	stw	r11,60(sp)
  803b74:	080be1c0 	call	80be1c <__divdf3>
  803b78:	d9800c17 	ldw	r6,48(sp)
  803b7c:	d9c00d17 	ldw	r7,52(sp)
  803b80:	1009883a 	mov	r4,r2
  803b84:	180b883a 	mov	r5,r3
  803b88:	080d1580 	call	80d158 <__subdf3>
  803b8c:	dac00f17 	ldw	r11,60(sp)
  803b90:	a80d883a 	mov	r6,r21
  803b94:	900f883a 	mov	r7,r18
  803b98:	e2c00005 	stb	r11,0(fp)
  803b9c:	1009883a 	mov	r4,r2
  803ba0:	180b883a 	mov	r5,r3
  803ba4:	d8800a15 	stw	r2,40(sp)
  803ba8:	d8c00c15 	stw	r3,48(sp)
  803bac:	080c7d00 	call	80c7d0 <__gedf2>
  803bb0:	00844116 	blt	zero,r2,804cb8 <_dtoa_r+0x1654>
  803bb4:	0005883a 	mov	r2,zero
  803bb8:	dcc00f15 	stw	r19,60(sp)
  803bbc:	dd800d15 	stw	r22,52(sp)
  803bc0:	dcc00c17 	ldw	r19,48(sp)
  803bc4:	dd800e17 	ldw	r22,56(sp)
  803bc8:	dc400c15 	stw	r17,48(sp)
  803bcc:	ddc00e15 	stw	r23,56(sp)
  803bd0:	dc400a17 	ldw	r17,40(sp)
  803bd4:	dd000a15 	stw	r20,40(sp)
  803bd8:	1029883a 	mov	r20,r2
  803bdc:	00002606 	br	803c78 <_dtoa_r+0x614>
  803be0:	a5000044 	addi	r20,r20,1
  803be4:	a5843d0e 	bge	r20,r22,804cdc <_dtoa_r+0x1678>
  803be8:	8809883a 	mov	r4,r17
  803bec:	980b883a 	mov	r5,r19
  803bf0:	000d883a 	mov	r6,zero
  803bf4:	01d00934 	movhi	r7,16420
  803bf8:	080c9b00 	call	80c9b0 <__muldf3>
  803bfc:	000d883a 	mov	r6,zero
  803c00:	01d00934 	movhi	r7,16420
  803c04:	a809883a 	mov	r4,r21
  803c08:	900b883a 	mov	r5,r18
  803c0c:	1023883a 	mov	r17,r2
  803c10:	1827883a 	mov	r19,r3
  803c14:	080c9b00 	call	80c9b0 <__muldf3>
  803c18:	180b883a 	mov	r5,r3
  803c1c:	1009883a 	mov	r4,r2
  803c20:	1825883a 	mov	r18,r3
  803c24:	102b883a 	mov	r21,r2
  803c28:	080dae00 	call	80dae0 <__fixdfsi>
  803c2c:	1009883a 	mov	r4,r2
  803c30:	102f883a 	mov	r23,r2
  803c34:	080db600 	call	80db60 <__floatsidf>
  803c38:	a809883a 	mov	r4,r21
  803c3c:	900b883a 	mov	r5,r18
  803c40:	100d883a 	mov	r6,r2
  803c44:	180f883a 	mov	r7,r3
  803c48:	080d1580 	call	80d158 <__subdf3>
  803c4c:	84000044 	addi	r16,r16,1
  803c50:	ba000c04 	addi	r8,r23,48
  803c54:	823fffc5 	stb	r8,-1(r16)
  803c58:	880d883a 	mov	r6,r17
  803c5c:	980f883a 	mov	r7,r19
  803c60:	1009883a 	mov	r4,r2
  803c64:	180b883a 	mov	r5,r3
  803c68:	102b883a 	mov	r21,r2
  803c6c:	1825883a 	mov	r18,r3
  803c70:	080c8c00 	call	80c8c0 <__ledf2>
  803c74:	10040e16 	blt	r2,zero,804cb0 <_dtoa_r+0x164c>
  803c78:	a80d883a 	mov	r6,r21
  803c7c:	900f883a 	mov	r7,r18
  803c80:	0009883a 	mov	r4,zero
  803c84:	014ffc34 	movhi	r5,16368
  803c88:	080d1580 	call	80d158 <__subdf3>
  803c8c:	880d883a 	mov	r6,r17
  803c90:	980f883a 	mov	r7,r19
  803c94:	1009883a 	mov	r4,r2
  803c98:	180b883a 	mov	r5,r3
  803c9c:	080c8c00 	call	80c8c0 <__ledf2>
  803ca0:	103fcf0e 	bge	r2,zero,803be0 <_dtoa_r+0x57c>
  803ca4:	dd800d17 	ldw	r22,52(sp)
  803ca8:	ddc00e17 	ldw	r23,56(sp)
  803cac:	d8801117 	ldw	r2,68(sp)
  803cb0:	10800044 	addi	r2,r2,1
  803cb4:	d8800315 	stw	r2,12(sp)
  803cb8:	00000106 	br	803cc0 <_dtoa_r+0x65c>
  803cbc:	e403ee26 	beq	fp,r16,804c78 <_dtoa_r+0x1614>
  803cc0:	80ffffc3 	ldbu	r3,-1(r16)
  803cc4:	8025883a 	mov	r18,r16
  803cc8:	843fffc4 	addi	r16,r16,-1
  803ccc:	18803fcc 	andi	r2,r3,255
  803cd0:	1080201c 	xori	r2,r2,128
  803cd4:	10bfe004 	addi	r2,r2,-128
  803cd8:	10800e60 	cmpeqi	r2,r2,57
  803cdc:	103ff71e 	bne	r2,zero,803cbc <_dtoa_r+0x658>
  803ce0:	18c00044 	addi	r3,r3,1
  803ce4:	80c00005 	stb	r3,0(r16)
  803ce8:	00015106 	br	804230 <_dtoa_r+0xbcc>
  803cec:	04600034 	movhi	r17,32768
  803cf0:	8c7fffc4 	addi	r17,r17,-1
  803cf4:	9462703a 	and	r17,r18,r17
  803cf8:	00800044 	movi	r2,1
  803cfc:	8825883a 	mov	r18,r17
  803d00:	80800015 	stw	r2,0(r16)
  803d04:	00dffc34 	movhi	r3,32752
  803d08:	909ffc2c 	andhi	r2,r18,32752
  803d0c:	10fe751e 	bne	r2,r3,8036e4 <_dtoa_r+0x80>
  803d10:	d8c01f17 	ldw	r3,124(sp)
  803d14:	00800434 	movhi	r2,16
  803d18:	10bfffc4 	addi	r2,r2,-1
  803d1c:	90a4703a 	and	r18,r18,r2
  803d20:	0089c3c4 	movi	r2,9999
  803d24:	18800015 	stw	r2,0(r3)
  803d28:	9528b03a 	or	r20,r18,r20
  803d2c:	a000121e 	bne	r20,zero,803d78 <_dtoa_r+0x714>
  803d30:	d8802117 	ldw	r2,132(sp)
  803d34:	07002074 	movhi	fp,129
  803d38:	10041526 	beq	r2,zero,804d90 <_dtoa_r+0x172c>
  803d3c:	00802074 	movhi	r2,129
  803d40:	e701bf04 	addi	fp,fp,1788
  803d44:	1081c104 	addi	r2,r2,1796
  803d48:	d8c02117 	ldw	r3,132(sp)
  803d4c:	18800015 	stw	r2,0(r3)
  803d50:	003e7506 	br	803728 <_dtoa_r+0xc4>
  803d54:	01400434 	movhi	r5,16
  803d58:	297fffc4 	addi	r5,r5,-1
  803d5c:	894a703a 	and	r5,r17,r5
  803d60:	df001217 	ldw	fp,72(sp)
  803d64:	a009883a 	mov	r4,r20
  803d68:	294ffc34 	orhi	r5,r5,16368
  803d6c:	843f0044 	addi	r16,r16,-1023
  803d70:	d8000915 	stw	zero,36(sp)
  803d74:	003e9606 	br	8037d0 <_dtoa_r+0x16c>
  803d78:	d8802117 	ldw	r2,132(sp)
  803d7c:	07002074 	movhi	fp,129
  803d80:	1002141e 	bne	r2,zero,8045d4 <_dtoa_r+0xf70>
  803d84:	e701be04 	addi	fp,fp,1784
  803d88:	003e6706 	br	803728 <_dtoa_r+0xc4>
  803d8c:	b8001115 	stw	zero,68(r23)
  803d90:	000b883a 	mov	r5,zero
  803d94:	b809883a 	mov	r4,r23
  803d98:	0806ba40 	call	806ba4 <_Balloc>
  803d9c:	1039883a 	mov	fp,r2
  803da0:	1003ed26 	beq	r2,zero,804d58 <_dtoa_r+0x16f4>
  803da4:	b8801015 	stw	r2,64(r23)
  803da8:	00bfffc4 	movi	r2,-1
  803dac:	d8800415 	stw	r2,16(sp)
  803db0:	d8800b15 	stw	r2,44(sp)
  803db4:	00800044 	movi	r2,1
  803db8:	d8001e15 	stw	zero,120(sp)
  803dbc:	d8800615 	stw	r2,24(sp)
  803dc0:	d8801317 	ldw	r2,76(sp)
  803dc4:	10007216 	blt	r2,zero,803f90 <_dtoa_r+0x92c>
  803dc8:	d9000317 	ldw	r4,12(sp)
  803dcc:	20c003c8 	cmpgei	r3,r4,15
  803dd0:	18006f1e 	bne	r3,zero,803f90 <_dtoa_r+0x92c>
  803dd4:	200690fa 	slli	r3,r4,3
  803dd8:	00802074 	movhi	r2,129
  803ddc:	1081fe04 	addi	r2,r2,2040
  803de0:	10c5883a 	add	r2,r2,r3
  803de4:	10c00017 	ldw	r3,0(r2)
  803de8:	14800117 	ldw	r18,4(r2)
  803dec:	d8801e17 	ldw	r2,120(sp)
  803df0:	d8c00115 	stw	r3,4(sp)
  803df4:	1000150e 	bge	r2,zero,803e4c <_dtoa_r+0x7e8>
  803df8:	d8800417 	ldw	r2,16(sp)
  803dfc:	00801316 	blt	zero,r2,803e4c <_dtoa_r+0x7e8>
  803e00:	d8800417 	ldw	r2,16(sp)
  803e04:	1002801e 	bne	r2,zero,804808 <_dtoa_r+0x11a4>
  803e08:	d9000117 	ldw	r4,4(sp)
  803e0c:	000d883a 	mov	r6,zero
  803e10:	01d00534 	movhi	r7,16404
  803e14:	900b883a 	mov	r5,r18
  803e18:	080c9b00 	call	80c9b0 <__muldf3>
  803e1c:	100d883a 	mov	r6,r2
  803e20:	180f883a 	mov	r7,r3
  803e24:	a009883a 	mov	r4,r20
  803e28:	880b883a 	mov	r5,r17
  803e2c:	080c8c00 	call	80c8c0 <__ledf2>
  803e30:	002b883a 	mov	r21,zero
  803e34:	0021883a 	mov	r16,zero
  803e38:	00820f16 	blt	zero,r2,804678 <_dtoa_r+0x1014>
  803e3c:	d8801e17 	ldw	r2,120(sp)
  803e40:	e025883a 	mov	r18,fp
  803e44:	00a2303a 	nor	r17,zero,r2
  803e48:	00021006 	br	80468c <_dtoa_r+0x1028>
  803e4c:	dd400117 	ldw	r21,4(sp)
  803e50:	900f883a 	mov	r7,r18
  803e54:	a009883a 	mov	r4,r20
  803e58:	a80d883a 	mov	r6,r21
  803e5c:	880b883a 	mov	r5,r17
  803e60:	080be1c0 	call	80be1c <__divdf3>
  803e64:	180b883a 	mov	r5,r3
  803e68:	1009883a 	mov	r4,r2
  803e6c:	080dae00 	call	80dae0 <__fixdfsi>
  803e70:	1009883a 	mov	r4,r2
  803e74:	1027883a 	mov	r19,r2
  803e78:	080db600 	call	80db60 <__floatsidf>
  803e7c:	a80d883a 	mov	r6,r21
  803e80:	900f883a 	mov	r7,r18
  803e84:	1009883a 	mov	r4,r2
  803e88:	180b883a 	mov	r5,r3
  803e8c:	080c9b00 	call	80c9b0 <__muldf3>
  803e90:	100d883a 	mov	r6,r2
  803e94:	a009883a 	mov	r4,r20
  803e98:	880b883a 	mov	r5,r17
  803e9c:	180f883a 	mov	r7,r3
  803ea0:	080d1580 	call	80d158 <__subdf3>
  803ea4:	d9800417 	ldw	r6,16(sp)
  803ea8:	1009883a 	mov	r4,r2
  803eac:	98800c04 	addi	r2,r19,48
  803eb0:	e0800005 	stb	r2,0(fp)
  803eb4:	30800060 	cmpeqi	r2,r6,1
  803eb8:	180b883a 	mov	r5,r3
  803ebc:	e4000044 	addi	r16,fp,1
  803ec0:	1002a91e 	bne	r2,zero,804968 <_dtoa_r+0x1304>
  803ec4:	04400044 	movi	r17,1
  803ec8:	3027883a 	mov	r19,r6
  803ecc:	dd800215 	stw	r22,8(sp)
  803ed0:	ddc00415 	stw	r23,16(sp)
  803ed4:	00001c06 	br	803f48 <_dtoa_r+0x8e4>
  803ed8:	a80d883a 	mov	r6,r21
  803edc:	900f883a 	mov	r7,r18
  803ee0:	b809883a 	mov	r4,r23
  803ee4:	a00b883a 	mov	r5,r20
  803ee8:	080be1c0 	call	80be1c <__divdf3>
  803eec:	180b883a 	mov	r5,r3
  803ef0:	1009883a 	mov	r4,r2
  803ef4:	080dae00 	call	80dae0 <__fixdfsi>
  803ef8:	1009883a 	mov	r4,r2
  803efc:	102d883a 	mov	r22,r2
  803f00:	080db600 	call	80db60 <__floatsidf>
  803f04:	a80d883a 	mov	r6,r21
  803f08:	900f883a 	mov	r7,r18
  803f0c:	1009883a 	mov	r4,r2
  803f10:	180b883a 	mov	r5,r3
  803f14:	080c9b00 	call	80c9b0 <__muldf3>
  803f18:	b809883a 	mov	r4,r23
  803f1c:	a00b883a 	mov	r5,r20
  803f20:	100d883a 	mov	r6,r2
  803f24:	180f883a 	mov	r7,r3
  803f28:	080d1580 	call	80d158 <__subdf3>
  803f2c:	b1000c04 	addi	r4,r22,48
  803f30:	81000005 	stb	r4,0(r16)
  803f34:	8c400044 	addi	r17,r17,1
  803f38:	84000044 	addi	r16,r16,1
  803f3c:	1009883a 	mov	r4,r2
  803f40:	180b883a 	mov	r5,r3
  803f44:	9c428526 	beq	r19,r17,80495c <_dtoa_r+0x12f8>
  803f48:	000d883a 	mov	r6,zero
  803f4c:	01d00934 	movhi	r7,16420
  803f50:	080c9b00 	call	80c9b0 <__muldf3>
  803f54:	000d883a 	mov	r6,zero
  803f58:	000f883a 	mov	r7,zero
  803f5c:	1009883a 	mov	r4,r2
  803f60:	180b883a 	mov	r5,r3
  803f64:	102f883a 	mov	r23,r2
  803f68:	1829883a 	mov	r20,r3
  803f6c:	080c7500 	call	80c750 <__eqdf2>
  803f70:	103fd91e 	bne	r2,zero,803ed8 <_dtoa_r+0x874>
  803f74:	d8800317 	ldw	r2,12(sp)
  803f78:	dd800217 	ldw	r22,8(sp)
  803f7c:	ddc00417 	ldw	r23,16(sp)
  803f80:	10800044 	addi	r2,r2,1
  803f84:	d8800315 	stw	r2,12(sp)
  803f88:	8025883a 	mov	r18,r16
  803f8c:	0000a806 	br	804230 <_dtoa_r+0xbcc>
  803f90:	d8c00617 	ldw	r3,24(sp)
  803f94:	1800ec26 	beq	r3,zero,804348 <_dtoa_r+0xce4>
  803f98:	d8c00117 	ldw	r3,4(sp)
  803f9c:	18c00088 	cmpgei	r3,r3,2
  803fa0:	1801e926 	beq	r3,zero,804748 <_dtoa_r+0x10e4>
  803fa4:	d8800417 	ldw	r2,16(sp)
  803fa8:	157fffc4 	addi	r21,r2,-1
  803fac:	d8800717 	ldw	r2,28(sp)
  803fb0:	1541c50e 	bge	r2,r21,8046c8 <_dtoa_r+0x1064>
  803fb4:	d8800717 	ldw	r2,28(sp)
  803fb8:	dd400715 	stw	r21,28(sp)
  803fbc:	a885c83a 	sub	r2,r21,r2
  803fc0:	98a7883a 	add	r19,r19,r2
  803fc4:	002b883a 	mov	r21,zero
  803fc8:	d8800417 	ldw	r2,16(sp)
  803fcc:	10029516 	blt	r2,zero,804a24 <_dtoa_r+0x13c0>
  803fd0:	d8c00517 	ldw	r3,20(sp)
  803fd4:	d9000217 	ldw	r4,8(sp)
  803fd8:	1825883a 	mov	r18,r3
  803fdc:	2089883a 	add	r4,r4,r2
  803fe0:	10c5883a 	add	r2,r2,r3
  803fe4:	d9000215 	stw	r4,8(sp)
  803fe8:	d8800515 	stw	r2,20(sp)
  803fec:	01400044 	movi	r5,1
  803ff0:	b809883a 	mov	r4,r23
  803ff4:	08070140 	call	807014 <__i2b>
  803ff8:	1021883a 	mov	r16,r2
  803ffc:	04800b0e 	bge	zero,r18,80402c <_dtoa_r+0x9c8>
  804000:	d8c00217 	ldw	r3,8(sp)
  804004:	00c0090e 	bge	zero,r3,80402c <_dtoa_r+0x9c8>
  804008:	9005883a 	mov	r2,r18
  80400c:	1c81a616 	blt	r3,r18,8046a8 <_dtoa_r+0x1044>
  804010:	d8c00517 	ldw	r3,20(sp)
  804014:	90a5c83a 	sub	r18,r18,r2
  804018:	1887c83a 	sub	r3,r3,r2
  80401c:	d8c00515 	stw	r3,20(sp)
  804020:	d8c00217 	ldw	r3,8(sp)
  804024:	1885c83a 	sub	r2,r3,r2
  804028:	d8800215 	stw	r2,8(sp)
  80402c:	d8800717 	ldw	r2,28(sp)
  804030:	10001526 	beq	r2,zero,804088 <_dtoa_r+0xa24>
  804034:	d8800617 	ldw	r2,24(sp)
  804038:	1001f626 	beq	r2,zero,804814 <_dtoa_r+0x11b0>
  80403c:	05400f0e 	bge	zero,r21,80407c <_dtoa_r+0xa18>
  804040:	800b883a 	mov	r5,r16
  804044:	a80d883a 	mov	r6,r21
  804048:	b809883a 	mov	r4,r23
  80404c:	08073140 	call	807314 <__pow5mult>
  804050:	b00d883a 	mov	r6,r22
  804054:	100b883a 	mov	r5,r2
  804058:	b809883a 	mov	r4,r23
  80405c:	1021883a 	mov	r16,r2
  804060:	08070680 	call	807068 <__multiply>
  804064:	b00b883a 	mov	r5,r22
  804068:	b809883a 	mov	r4,r23
  80406c:	d8800915 	stw	r2,36(sp)
  804070:	0806c480 	call	806c48 <_Bfree>
  804074:	d8800917 	ldw	r2,36(sp)
  804078:	102d883a 	mov	r22,r2
  80407c:	d8800717 	ldw	r2,28(sp)
  804080:	154dc83a 	sub	r6,r2,r21
  804084:	1542621e 	bne	r2,r21,804a10 <_dtoa_r+0x13ac>
  804088:	01400044 	movi	r5,1
  80408c:	b809883a 	mov	r4,r23
  804090:	08070140 	call	807014 <__i2b>
  804094:	102b883a 	mov	r21,r2
  804098:	04c0be16 	blt	zero,r19,804394 <_dtoa_r+0xd30>
  80409c:	d8800117 	ldw	r2,4(sp)
  8040a0:	10800088 	cmpgei	r2,r2,2
  8040a4:	10015226 	beq	r2,zero,8045f0 <_dtoa_r+0xf8c>
  8040a8:	0023883a 	mov	r17,zero
  8040ac:	00800044 	movi	r2,1
  8040b0:	9800c11e 	bne	r19,zero,8043b8 <_dtoa_r+0xd54>
  8040b4:	d9400217 	ldw	r5,8(sp)
  8040b8:	1145883a 	add	r2,r2,r5
  8040bc:	108007cc 	andi	r2,r2,31
  8040c0:	1000a526 	beq	r2,zero,804358 <_dtoa_r+0xcf4>
  8040c4:	00c00804 	movi	r3,32
  8040c8:	1887c83a 	sub	r3,r3,r2
  8040cc:	19000150 	cmplti	r4,r3,5
  8040d0:	2003311e 	bne	r4,zero,804d98 <_dtoa_r+0x1734>
  8040d4:	00c00704 	movi	r3,28
  8040d8:	1885c83a 	sub	r2,r3,r2
  8040dc:	d8c00517 	ldw	r3,20(sp)
  8040e0:	90a5883a 	add	r18,r18,r2
  8040e4:	1887883a 	add	r3,r3,r2
  8040e8:	2885883a 	add	r2,r5,r2
  8040ec:	d8c00515 	stw	r3,20(sp)
  8040f0:	d8800215 	stw	r2,8(sp)
  8040f4:	d8800517 	ldw	r2,20(sp)
  8040f8:	0080050e 	bge	zero,r2,804110 <_dtoa_r+0xaac>
  8040fc:	b00b883a 	mov	r5,r22
  804100:	100d883a 	mov	r6,r2
  804104:	b809883a 	mov	r4,r23
  804108:	080742c0 	call	80742c <__lshift>
  80410c:	102d883a 	mov	r22,r2
  804110:	d8800217 	ldw	r2,8(sp)
  804114:	0080050e 	bge	zero,r2,80412c <_dtoa_r+0xac8>
  804118:	a80b883a 	mov	r5,r21
  80411c:	100d883a 	mov	r6,r2
  804120:	b809883a 	mov	r4,r23
  804124:	080742c0 	call	80742c <__lshift>
  804128:	102b883a 	mov	r21,r2
  80412c:	d8800817 	ldw	r2,32(sp)
  804130:	1001161e 	bne	r2,zero,80458c <_dtoa_r+0xf28>
  804134:	d8800417 	ldw	r2,16(sp)
  804138:	0081040e 	bge	zero,r2,80454c <_dtoa_r+0xee8>
  80413c:	d8800617 	ldw	r2,24(sp)
  804140:	1000b01e 	bne	r2,zero,804404 <_dtoa_r+0xda0>
  804144:	d8800317 	ldw	r2,12(sp)
  804148:	10800044 	addi	r2,r2,1
  80414c:	d8800315 	stw	r2,12(sp)
  804150:	dc800417 	ldw	r18,16(sp)
  804154:	04400044 	movi	r17,1
  804158:	00000706 	br	804178 <_dtoa_r+0xb14>
  80415c:	b00b883a 	mov	r5,r22
  804160:	000f883a 	mov	r7,zero
  804164:	01800284 	movi	r6,10
  804168:	b809883a 	mov	r4,r23
  80416c:	0806c6c0 	call	806c6c <__multadd>
  804170:	102d883a 	mov	r22,r2
  804174:	8c400044 	addi	r17,r17,1
  804178:	a80b883a 	mov	r5,r21
  80417c:	b009883a 	mov	r4,r22
  804180:	08034440 	call	803444 <quorem>
  804184:	10c00c04 	addi	r3,r2,48
  804188:	e445883a 	add	r2,fp,r17
  80418c:	10ffffc5 	stb	r3,-1(r2)
  804190:	8cbff216 	blt	r17,r18,80415c <_dtoa_r+0xaf8>
  804194:	d8800417 	ldw	r2,16(sp)
  804198:	0081510e 	bge	zero,r2,8046e0 <_dtoa_r+0x107c>
  80419c:	e0a5883a 	add	r18,fp,r2
  8041a0:	0023883a 	mov	r17,zero
  8041a4:	b00b883a 	mov	r5,r22
  8041a8:	01800044 	movi	r6,1
  8041ac:	b809883a 	mov	r4,r23
  8041b0:	d8c00115 	stw	r3,4(sp)
  8041b4:	080742c0 	call	80742c <__lshift>
  8041b8:	1009883a 	mov	r4,r2
  8041bc:	a80b883a 	mov	r5,r21
  8041c0:	102d883a 	mov	r22,r2
  8041c4:	08075b40 	call	8075b4 <__mcmp>
  8041c8:	913fffc3 	ldbu	r4,-1(r18)
  8041cc:	00800416 	blt	zero,r2,8041e0 <_dtoa_r+0xb7c>
  8041d0:	00014806 	br	8046f4 <_dtoa_r+0x1090>
  8041d4:	e0c15626 	beq	fp,r3,804730 <_dtoa_r+0x10cc>
  8041d8:	193fffc3 	ldbu	r4,-1(r3)
  8041dc:	1825883a 	mov	r18,r3
  8041e0:	20803fcc 	andi	r2,r4,255
  8041e4:	1080201c 	xori	r2,r2,128
  8041e8:	10bfe004 	addi	r2,r2,-128
  8041ec:	10800e60 	cmpeqi	r2,r2,57
  8041f0:	90ffffc4 	addi	r3,r18,-1
  8041f4:	103ff71e 	bne	r2,zero,8041d4 <_dtoa_r+0xb70>
  8041f8:	21000044 	addi	r4,r4,1
  8041fc:	19000005 	stb	r4,0(r3)
  804200:	a80b883a 	mov	r5,r21
  804204:	b809883a 	mov	r4,r23
  804208:	0806c480 	call	806c48 <_Bfree>
  80420c:	80000826 	beq	r16,zero,804230 <_dtoa_r+0xbcc>
  804210:	88000426 	beq	r17,zero,804224 <_dtoa_r+0xbc0>
  804214:	8c000326 	beq	r17,r16,804224 <_dtoa_r+0xbc0>
  804218:	880b883a 	mov	r5,r17
  80421c:	b809883a 	mov	r4,r23
  804220:	0806c480 	call	806c48 <_Bfree>
  804224:	800b883a 	mov	r5,r16
  804228:	b809883a 	mov	r4,r23
  80422c:	0806c480 	call	806c48 <_Bfree>
  804230:	b00b883a 	mov	r5,r22
  804234:	b809883a 	mov	r4,r23
  804238:	0806c480 	call	806c48 <_Bfree>
  80423c:	d8801f17 	ldw	r2,124(sp)
  804240:	d8c00317 	ldw	r3,12(sp)
  804244:	90000005 	stb	zero,0(r18)
  804248:	10c00015 	stw	r3,0(r2)
  80424c:	d8802117 	ldw	r2,132(sp)
  804250:	103d3526 	beq	r2,zero,803728 <_dtoa_r+0xc4>
  804254:	14800015 	stw	r18,0(r2)
  804258:	003d3306 	br	803728 <_dtoa_r+0xc4>
  80425c:	e0bfffc4 	addi	r2,fp,-1
  804260:	d8000815 	stw	zero,32(sp)
  804264:	10002616 	blt	r2,zero,804300 <_dtoa_r+0xc9c>
  804268:	d8000515 	stw	zero,20(sp)
  80426c:	d8800217 	ldw	r2,8(sp)
  804270:	d8c00117 	ldw	r3,4(sp)
  804274:	dcc00315 	stw	r19,12(sp)
  804278:	14c5883a 	add	r2,r2,r19
  80427c:	d8800215 	stw	r2,8(sp)
  804280:	d8000715 	stw	zero,28(sp)
  804284:	188002a8 	cmpgeui	r2,r3,10
  804288:	103d9d26 	beq	r2,zero,803900 <_dtoa_r+0x29c>
  80428c:	00800044 	movi	r2,1
  804290:	d8800615 	stw	r2,24(sp)
  804294:	00bfffc4 	movi	r2,-1
  804298:	04000044 	movi	r16,1
  80429c:	d8000115 	stw	zero,4(sp)
  8042a0:	d8800415 	stw	r2,16(sp)
  8042a4:	d8001e15 	stw	zero,120(sp)
  8042a8:	d8800417 	ldw	r2,16(sp)
  8042ac:	b8001115 	stw	zero,68(r23)
  8042b0:	000b883a 	mov	r5,zero
  8042b4:	d8800b15 	stw	r2,44(sp)
  8042b8:	003dae06 	br	803974 <_dtoa_r+0x310>
  8042bc:	188000e0 	cmpeqi	r2,r3,3
  8042c0:	d8000615 	stw	zero,24(sp)
  8042c4:	103eb126 	beq	r2,zero,803d8c <_dtoa_r+0x728>
  8042c8:	d8801e17 	ldw	r2,120(sp)
  8042cc:	d8c00317 	ldw	r3,12(sp)
  8042d0:	10c5883a 	add	r2,r2,r3
  8042d4:	d8800b15 	stw	r2,44(sp)
  8042d8:	10800044 	addi	r2,r2,1
  8042dc:	d8800415 	stw	r2,16(sp)
  8042e0:	100d883a 	mov	r6,r2
  8042e4:	00bd9816 	blt	zero,r2,803948 <_dtoa_r+0x2e4>
  8042e8:	01800044 	movi	r6,1
  8042ec:	003d9606 	br	803948 <_dtoa_r+0x2e4>
  8042f0:	00800044 	movi	r2,1
  8042f4:	d8800815 	stw	r2,32(sp)
  8042f8:	e0bfffc4 	addi	r2,fp,-1
  8042fc:	103d740e 	bge	r2,zero,8038d0 <_dtoa_r+0x26c>
  804300:	00800044 	movi	r2,1
  804304:	1705c83a 	sub	r2,r2,fp
  804308:	d8800515 	stw	r2,20(sp)
  80430c:	d8000215 	stw	zero,8(sp)
  804310:	003d7006 	br	8038d4 <_dtoa_r+0x270>
  804314:	9809883a 	mov	r4,r19
  804318:	080db600 	call	80db60 <__floatsidf>
  80431c:	900d883a 	mov	r6,r18
  804320:	a80f883a 	mov	r7,r21
  804324:	1009883a 	mov	r4,r2
  804328:	180b883a 	mov	r5,r3
  80432c:	080c7500 	call	80c750 <__eqdf2>
  804330:	103d5426 	beq	r2,zero,803884 <_dtoa_r+0x220>
  804334:	9cffffc4 	addi	r19,r19,-1
  804338:	003d5206 	br	803884 <_dtoa_r+0x220>
  80433c:	07002074 	movhi	fp,129
  804340:	e701b504 	addi	fp,fp,1748
  804344:	003cf806 	br	803728 <_dtoa_r+0xc4>
  804348:	dd400717 	ldw	r21,28(sp)
  80434c:	dc800517 	ldw	r18,20(sp)
  804350:	0021883a 	mov	r16,zero
  804354:	003f2906 	br	803ffc <_dtoa_r+0x998>
  804358:	00800704 	movi	r2,28
  80435c:	d8c00517 	ldw	r3,20(sp)
  804360:	90a5883a 	add	r18,r18,r2
  804364:	1887883a 	add	r3,r3,r2
  804368:	d8c00515 	stw	r3,20(sp)
  80436c:	d8c00217 	ldw	r3,8(sp)
  804370:	1885883a 	add	r2,r3,r2
  804374:	d8800215 	stw	r2,8(sp)
  804378:	003f5e06 	br	8040f4 <_dtoa_r+0xa90>
  80437c:	01000804 	movi	r4,32
  804380:	2089c83a 	sub	r4,r4,r2
  804384:	a108983a 	sll	r4,r20,r4
  804388:	003d0a06 	br	8037b4 <_dtoa_r+0x150>
  80438c:	04000044 	movi	r16,1
  804390:	003d6006 	br	803914 <_dtoa_r+0x2b0>
  804394:	100b883a 	mov	r5,r2
  804398:	980d883a 	mov	r6,r19
  80439c:	b809883a 	mov	r4,r23
  8043a0:	08073140 	call	807314 <__pow5mult>
  8043a4:	d8c00117 	ldw	r3,4(sp)
  8043a8:	102b883a 	mov	r21,r2
  8043ac:	18c00090 	cmplti	r3,r3,2
  8043b0:	18014b1e 	bne	r3,zero,8048e0 <_dtoa_r+0x127c>
  8043b4:	0023883a 	mov	r17,zero
  8043b8:	a8800417 	ldw	r2,16(r21)
  8043bc:	10800104 	addi	r2,r2,4
  8043c0:	100490ba 	slli	r2,r2,2
  8043c4:	a885883a 	add	r2,r21,r2
  8043c8:	11000017 	ldw	r4,0(r2)
  8043cc:	0806f000 	call	806f00 <__hi0bits>
  8043d0:	00c00804 	movi	r3,32
  8043d4:	1885c83a 	sub	r2,r3,r2
  8043d8:	003f3606 	br	8040b4 <_dtoa_r+0xa50>
  8043dc:	800b883a 	mov	r5,r16
  8043e0:	000f883a 	mov	r7,zero
  8043e4:	01800284 	movi	r6,10
  8043e8:	b809883a 	mov	r4,r23
  8043ec:	0806c6c0 	call	806c6c <__multadd>
  8043f0:	1021883a 	mov	r16,r2
  8043f4:	d8800b17 	ldw	r2,44(sp)
  8043f8:	00824d0e 	bge	zero,r2,804d30 <_dtoa_r+0x16cc>
  8043fc:	dcc00315 	stw	r19,12(sp)
  804400:	d8800415 	stw	r2,16(sp)
  804404:	0480aa16 	blt	zero,r18,8046b0 <_dtoa_r+0x104c>
  804408:	8801701e 	bne	r17,zero,8049cc <_dtoa_r+0x1368>
  80440c:	8027883a 	mov	r19,r16
  804410:	d9000417 	ldw	r4,16(sp)
  804414:	e0bfffc4 	addi	r2,fp,-1
  804418:	a0c0004c 	andi	r3,r20,1
  80441c:	1105883a 	add	r2,r2,r4
  804420:	d8800415 	stw	r2,16(sp)
  804424:	d8800117 	ldw	r2,4(sp)
  804428:	d8c00715 	stw	r3,28(sp)
  80442c:	e029883a 	mov	r20,fp
  804430:	1884b03a 	or	r2,r3,r2
  804434:	d8800615 	stw	r2,24(sp)
  804438:	df000815 	stw	fp,32(sp)
  80443c:	00002906 	br	8044e4 <_dtoa_r+0xe80>
  804440:	b009883a 	mov	r4,r22
  804444:	08075b40 	call	8075b4 <__mcmp>
  804448:	900b883a 	mov	r5,r18
  80444c:	b809883a 	mov	r4,r23
  804450:	d8800215 	stw	r2,8(sp)
  804454:	0806c480 	call	806c48 <_Bfree>
  804458:	d8800217 	ldw	r2,8(sp)
  80445c:	1000021e 	bne	r2,zero,804468 <_dtoa_r+0xe04>
  804460:	d8c00617 	ldw	r3,24(sp)
  804464:	18022326 	beq	r3,zero,804cf4 <_dtoa_r+0x1690>
  804468:	a4800044 	addi	r18,r20,1
  80446c:	88012216 	blt	r17,zero,8048f8 <_dtoa_r+0x1294>
  804470:	d8c00117 	ldw	r3,4(sp)
  804474:	1c62b03a 	or	r17,r3,r17
  804478:	d8c00717 	ldw	r3,28(sp)
  80447c:	1c62b03a 	or	r17,r3,r17
  804480:	88011d26 	beq	r17,zero,8048f8 <_dtoa_r+0x1294>
  804484:	00816b16 	blt	zero,r2,804a34 <_dtoa_r+0x13d0>
  804488:	d8800417 	ldw	r2,16(sp)
  80448c:	a7000005 	stb	fp,0(r20)
  804490:	15017126 	beq	r2,r20,804a58 <_dtoa_r+0x13f4>
  804494:	b00b883a 	mov	r5,r22
  804498:	000f883a 	mov	r7,zero
  80449c:	01800284 	movi	r6,10
  8044a0:	b809883a 	mov	r4,r23
  8044a4:	0806c6c0 	call	806c6c <__multadd>
  8044a8:	102d883a 	mov	r22,r2
  8044ac:	800b883a 	mov	r5,r16
  8044b0:	000f883a 	mov	r7,zero
  8044b4:	01800284 	movi	r6,10
  8044b8:	b809883a 	mov	r4,r23
  8044bc:	84c01f26 	beq	r16,r19,80453c <_dtoa_r+0xed8>
  8044c0:	0806c6c0 	call	806c6c <__multadd>
  8044c4:	980b883a 	mov	r5,r19
  8044c8:	000f883a 	mov	r7,zero
  8044cc:	01800284 	movi	r6,10
  8044d0:	b809883a 	mov	r4,r23
  8044d4:	1021883a 	mov	r16,r2
  8044d8:	0806c6c0 	call	806c6c <__multadd>
  8044dc:	1027883a 	mov	r19,r2
  8044e0:	9029883a 	mov	r20,r18
  8044e4:	a80b883a 	mov	r5,r21
  8044e8:	b009883a 	mov	r4,r22
  8044ec:	08034440 	call	803444 <quorem>
  8044f0:	800b883a 	mov	r5,r16
  8044f4:	b009883a 	mov	r4,r22
  8044f8:	1039883a 	mov	fp,r2
  8044fc:	d8800515 	stw	r2,20(sp)
  804500:	08075b40 	call	8075b4 <__mcmp>
  804504:	a80b883a 	mov	r5,r21
  804508:	980d883a 	mov	r6,r19
  80450c:	b809883a 	mov	r4,r23
  804510:	1023883a 	mov	r17,r2
  804514:	080760c0 	call	80760c <__mdiff>
  804518:	1025883a 	mov	r18,r2
  80451c:	10800317 	ldw	r2,12(r2)
  804520:	e7000c04 	addi	fp,fp,48
  804524:	900b883a 	mov	r5,r18
  804528:	103fc526 	beq	r2,zero,804440 <_dtoa_r+0xddc>
  80452c:	b809883a 	mov	r4,r23
  804530:	0806c480 	call	806c48 <_Bfree>
  804534:	00800044 	movi	r2,1
  804538:	003fcb06 	br	804468 <_dtoa_r+0xe04>
  80453c:	0806c6c0 	call	806c6c <__multadd>
  804540:	1021883a 	mov	r16,r2
  804544:	1027883a 	mov	r19,r2
  804548:	003fe506 	br	8044e0 <_dtoa_r+0xe7c>
  80454c:	d8800117 	ldw	r2,4(sp)
  804550:	108000d0 	cmplti	r2,r2,3
  804554:	10003c26 	beq	r2,zero,804648 <_dtoa_r+0xfe4>
  804558:	d8800617 	ldw	r2,24(sp)
  80455c:	103fa91e 	bne	r2,zero,804404 <_dtoa_r+0xda0>
  804560:	a80b883a 	mov	r5,r21
  804564:	b009883a 	mov	r4,r22
  804568:	08034440 	call	803444 <quorem>
  80456c:	10c00c04 	addi	r3,r2,48
  804570:	d8800317 	ldw	r2,12(sp)
  804574:	e4800044 	addi	r18,fp,1
  804578:	e0c00005 	stb	r3,0(fp)
  80457c:	10800044 	addi	r2,r2,1
  804580:	d8800315 	stw	r2,12(sp)
  804584:	0023883a 	mov	r17,zero
  804588:	003f0606 	br	8041a4 <_dtoa_r+0xb40>
  80458c:	a80b883a 	mov	r5,r21
  804590:	b009883a 	mov	r4,r22
  804594:	08075b40 	call	8075b4 <__mcmp>
  804598:	103ee60e 	bge	r2,zero,804134 <_dtoa_r+0xad0>
  80459c:	b00b883a 	mov	r5,r22
  8045a0:	000f883a 	mov	r7,zero
  8045a4:	01800284 	movi	r6,10
  8045a8:	b809883a 	mov	r4,r23
  8045ac:	0806c6c0 	call	806c6c <__multadd>
  8045b0:	d8c00317 	ldw	r3,12(sp)
  8045b4:	102d883a 	mov	r22,r2
  8045b8:	d8800617 	ldw	r2,24(sp)
  8045bc:	1cffffc4 	addi	r19,r3,-1
  8045c0:	103f861e 	bne	r2,zero,8043dc <_dtoa_r+0xd78>
  8045c4:	d8800b17 	ldw	r2,44(sp)
  8045c8:	0081d40e 	bge	zero,r2,804d1c <_dtoa_r+0x16b8>
  8045cc:	d8800415 	stw	r2,16(sp)
  8045d0:	003edf06 	br	804150 <_dtoa_r+0xaec>
  8045d4:	00802074 	movhi	r2,129
  8045d8:	e701be04 	addi	fp,fp,1784
  8045dc:	1081bec4 	addi	r2,r2,1787
  8045e0:	003dd906 	br	803d48 <_dtoa_r+0x6e4>
  8045e4:	00800044 	movi	r2,1
  8045e8:	d8800615 	stw	r2,24(sp)
  8045ec:	003f3606 	br	8042c8 <_dtoa_r+0xc64>
  8045f0:	a03ead1e 	bne	r20,zero,8040a8 <_dtoa_r+0xa44>
  8045f4:	00800434 	movhi	r2,16
  8045f8:	10bfffc4 	addi	r2,r2,-1
  8045fc:	8884703a 	and	r2,r17,r2
  804600:	103ea91e 	bne	r2,zero,8040a8 <_dtoa_r+0xa44>
  804604:	8c5ffc2c 	andhi	r17,r17,32752
  804608:	883ea726 	beq	r17,zero,8040a8 <_dtoa_r+0xa44>
  80460c:	d8800517 	ldw	r2,20(sp)
  804610:	04400044 	movi	r17,1
  804614:	10800044 	addi	r2,r2,1
  804618:	d8800515 	stw	r2,20(sp)
  80461c:	d8800217 	ldw	r2,8(sp)
  804620:	10800044 	addi	r2,r2,1
  804624:	d8800215 	stw	r2,8(sp)
  804628:	003ea006 	br	8040ac <_dtoa_r+0xa48>
  80462c:	00800044 	movi	r2,1
  804630:	d8800415 	stw	r2,16(sp)
  804634:	d8801e15 	stw	r2,120(sp)
  804638:	003f1b06 	br	8042a8 <_dtoa_r+0xc44>
  80463c:	d8800b17 	ldw	r2,44(sp)
  804640:	dcc00315 	stw	r19,12(sp)
  804644:	d8800415 	stw	r2,16(sp)
  804648:	d8800417 	ldw	r2,16(sp)
  80464c:	103dfb1e 	bne	r2,zero,803e3c <_dtoa_r+0x7d8>
  804650:	a80b883a 	mov	r5,r21
  804654:	b809883a 	mov	r4,r23
  804658:	000f883a 	mov	r7,zero
  80465c:	01800144 	movi	r6,5
  804660:	0806c6c0 	call	806c6c <__multadd>
  804664:	100b883a 	mov	r5,r2
  804668:	b009883a 	mov	r4,r22
  80466c:	102b883a 	mov	r21,r2
  804670:	08075b40 	call	8075b4 <__mcmp>
  804674:	00bdf10e 	bge	zero,r2,803e3c <_dtoa_r+0x7d8>
  804678:	00800c44 	movi	r2,49
  80467c:	e0800005 	stb	r2,0(fp)
  804680:	d8800317 	ldw	r2,12(sp)
  804684:	e4800044 	addi	r18,fp,1
  804688:	14400044 	addi	r17,r2,1
  80468c:	a80b883a 	mov	r5,r21
  804690:	b809883a 	mov	r4,r23
  804694:	0806c480 	call	806c48 <_Bfree>
  804698:	88800044 	addi	r2,r17,1
  80469c:	d8800315 	stw	r2,12(sp)
  8046a0:	803ee01e 	bne	r16,zero,804224 <_dtoa_r+0xbc0>
  8046a4:	003ee206 	br	804230 <_dtoa_r+0xbcc>
  8046a8:	1805883a 	mov	r2,r3
  8046ac:	003e5806 	br	804010 <_dtoa_r+0x9ac>
  8046b0:	800b883a 	mov	r5,r16
  8046b4:	900d883a 	mov	r6,r18
  8046b8:	b809883a 	mov	r4,r23
  8046bc:	080742c0 	call	80742c <__lshift>
  8046c0:	1021883a 	mov	r16,r2
  8046c4:	003f5006 	br	804408 <_dtoa_r+0xda4>
  8046c8:	156bc83a 	sub	r21,r2,r21
  8046cc:	003e3e06 	br	803fc8 <_dtoa_r+0x964>
  8046d0:	dd000a15 	stw	r20,40(sp)
  8046d4:	dc400c15 	stw	r17,48(sp)
  8046d8:	04000084 	movi	r16,2
  8046dc:	003cc906 	br	803a04 <_dtoa_r+0x3a0>
  8046e0:	00800044 	movi	r2,1
  8046e4:	003ead06 	br	80419c <_dtoa_r+0xb38>
  8046e8:	00800044 	movi	r2,1
  8046ec:	d8800615 	stw	r2,24(sp)
  8046f0:	003c9006 	br	803934 <_dtoa_r+0x2d0>
  8046f4:	1000031e 	bne	r2,zero,804704 <_dtoa_r+0x10a0>
  8046f8:	d8c00117 	ldw	r3,4(sp)
  8046fc:	18c0004c 	andi	r3,r3,1
  804700:	183eb71e 	bne	r3,zero,8041e0 <_dtoa_r+0xb7c>
  804704:	2005883a 	mov	r2,r4
  804708:	00000206 	br	804714 <_dtoa_r+0x10b0>
  80470c:	90bfff83 	ldbu	r2,-2(r18)
  804710:	1825883a 	mov	r18,r3
  804714:	10803fcc 	andi	r2,r2,255
  804718:	1080201c 	xori	r2,r2,128
  80471c:	10bfe004 	addi	r2,r2,-128
  804720:	10800c18 	cmpnei	r2,r2,48
  804724:	90ffffc4 	addi	r3,r18,-1
  804728:	103ff826 	beq	r2,zero,80470c <_dtoa_r+0x10a8>
  80472c:	003eb406 	br	804200 <_dtoa_r+0xb9c>
  804730:	00800c44 	movi	r2,49
  804734:	e0800005 	stb	r2,0(fp)
  804738:	d8800317 	ldw	r2,12(sp)
  80473c:	10800044 	addi	r2,r2,1
  804740:	d8800315 	stw	r2,12(sp)
  804744:	003eae06 	br	804200 <_dtoa_r+0xb9c>
  804748:	d8c00917 	ldw	r3,36(sp)
  80474c:	18011826 	beq	r3,zero,804bb0 <_dtoa_r+0x154c>
  804750:	d8c00517 	ldw	r3,20(sp)
  804754:	d9000217 	ldw	r4,8(sp)
  804758:	10810cc4 	addi	r2,r2,1075
  80475c:	dd400717 	ldw	r21,28(sp)
  804760:	2089883a 	add	r4,r4,r2
  804764:	1885883a 	add	r2,r3,r2
  804768:	1825883a 	mov	r18,r3
  80476c:	d9000215 	stw	r4,8(sp)
  804770:	d8800515 	stw	r2,20(sp)
  804774:	003e1d06 	br	803fec <_dtoa_r+0x988>
  804778:	8009883a 	mov	r4,r16
  80477c:	080db600 	call	80db60 <__floatsidf>
  804780:	d9c00a17 	ldw	r7,40(sp)
  804784:	900d883a 	mov	r6,r18
  804788:	1009883a 	mov	r4,r2
  80478c:	180b883a 	mov	r5,r3
  804790:	080c9b00 	call	80c9b0 <__muldf3>
  804794:	000d883a 	mov	r6,zero
  804798:	01d00734 	movhi	r7,16412
  80479c:	1009883a 	mov	r4,r2
  8047a0:	180b883a 	mov	r5,r3
  8047a4:	080b4a40 	call	80b4a4 <__adddf3>
  8047a8:	d8800c15 	stw	r2,48(sp)
  8047ac:	00bf3034 	movhi	r2,64704
  8047b0:	1885883a 	add	r2,r3,r2
  8047b4:	d8800d15 	stw	r2,52(sp)
  8047b8:	d9400a17 	ldw	r5,40(sp)
  8047bc:	9009883a 	mov	r4,r18
  8047c0:	000d883a 	mov	r6,zero
  8047c4:	01d00534 	movhi	r7,16404
  8047c8:	080d1580 	call	80d158 <__subdf3>
  8047cc:	dd400d17 	ldw	r21,52(sp)
  8047d0:	d9800c17 	ldw	r6,48(sp)
  8047d4:	1009883a 	mov	r4,r2
  8047d8:	a80f883a 	mov	r7,r21
  8047dc:	180b883a 	mov	r5,r3
  8047e0:	1025883a 	mov	r18,r2
  8047e4:	1821883a 	mov	r16,r3
  8047e8:	080c7d00 	call	80c7d0 <__gedf2>
  8047ec:	00812d16 	blt	zero,r2,804ca4 <_dtoa_r+0x1640>
  8047f0:	d9800c17 	ldw	r6,48(sp)
  8047f4:	a9e0003c 	xorhi	r7,r21,32768
  8047f8:	9009883a 	mov	r4,r18
  8047fc:	800b883a 	mov	r5,r16
  804800:	080c8c00 	call	80c8c0 <__ledf2>
  804804:	103d6e0e 	bge	r2,zero,803dc0 <_dtoa_r+0x75c>
  804808:	002b883a 	mov	r21,zero
  80480c:	0021883a 	mov	r16,zero
  804810:	003d8a06 	br	803e3c <_dtoa_r+0x7d8>
  804814:	d9800717 	ldw	r6,28(sp)
  804818:	b00b883a 	mov	r5,r22
  80481c:	b809883a 	mov	r4,r23
  804820:	08073140 	call	807314 <__pow5mult>
  804824:	102d883a 	mov	r22,r2
  804828:	003e1706 	br	804088 <_dtoa_r+0xa24>
  80482c:	d8800317 	ldw	r2,12(sp)
  804830:	10010d26 	beq	r2,zero,804c68 <_dtoa_r+0x1604>
  804834:	00abc83a 	sub	r21,zero,r2
  804838:	a88003cc 	andi	r2,r21,15
  80483c:	100690fa 	slli	r3,r2,3
  804840:	00802074 	movhi	r2,129
  804844:	1081fe04 	addi	r2,r2,2040
  804848:	10c5883a 	add	r2,r2,r3
  80484c:	11800017 	ldw	r6,0(r2)
  804850:	11c00117 	ldw	r7,4(r2)
  804854:	a009883a 	mov	r4,r20
  804858:	880b883a 	mov	r5,r17
  80485c:	a82bd13a 	srai	r21,r21,4
  804860:	080c9b00 	call	80c9b0 <__muldf3>
  804864:	d8c00a15 	stw	r3,40(sp)
  804868:	1025883a 	mov	r18,r2
  80486c:	a8013826 	beq	r21,zero,804d50 <_dtoa_r+0x16ec>
  804870:	02002074 	movhi	r8,129
  804874:	04000084 	movi	r16,2
  804878:	4201f404 	addi	r8,r8,2000
  80487c:	180b883a 	mov	r5,r3
  804880:	dc400c15 	stw	r17,48(sp)
  804884:	1009883a 	mov	r4,r2
  804888:	8023883a 	mov	r17,r16
  80488c:	0007883a 	mov	r3,zero
  804890:	4021883a 	mov	r16,r8
  804894:	a980004c 	andi	r6,r21,1
  804898:	30000726 	beq	r6,zero,8048b8 <_dtoa_r+0x1254>
  80489c:	81800017 	ldw	r6,0(r16)
  8048a0:	81c00117 	ldw	r7,4(r16)
  8048a4:	8c400044 	addi	r17,r17,1
  8048a8:	080c9b00 	call	80c9b0 <__muldf3>
  8048ac:	180b883a 	mov	r5,r3
  8048b0:	1009883a 	mov	r4,r2
  8048b4:	00c00044 	movi	r3,1
  8048b8:	a82bd07a 	srai	r21,r21,1
  8048bc:	84000204 	addi	r16,r16,8
  8048c0:	a83ff41e 	bne	r21,zero,804894 <_dtoa_r+0x1230>
  8048c4:	18c03fcc 	andi	r3,r3,255
  8048c8:	8821883a 	mov	r16,r17
  8048cc:	dc400c17 	ldw	r17,48(sp)
  8048d0:	183c6526 	beq	r3,zero,803a68 <_dtoa_r+0x404>
  8048d4:	2025883a 	mov	r18,r4
  8048d8:	d9400a15 	stw	r5,40(sp)
  8048dc:	003c6206 	br	803a68 <_dtoa_r+0x404>
  8048e0:	a03eb41e 	bne	r20,zero,8043b4 <_dtoa_r+0xd50>
  8048e4:	00800434 	movhi	r2,16
  8048e8:	10bfffc4 	addi	r2,r2,-1
  8048ec:	8884703a 	and	r2,r17,r2
  8048f0:	103f4426 	beq	r2,zero,804604 <_dtoa_r+0xfa0>
  8048f4:	003eaf06 	br	8043b4 <_dtoa_r+0xd50>
  8048f8:	d9000317 	ldw	r4,12(sp)
  8048fc:	e007883a 	mov	r3,fp
  804900:	df000817 	ldw	fp,32(sp)
  804904:	21000044 	addi	r4,r4,1
  804908:	d9000315 	stw	r4,12(sp)
  80490c:	00800f0e 	bge	zero,r2,80494c <_dtoa_r+0x12e8>
  804910:	b00b883a 	mov	r5,r22
  804914:	01800044 	movi	r6,1
  804918:	b809883a 	mov	r4,r23
  80491c:	d8c00115 	stw	r3,4(sp)
  804920:	080742c0 	call	80742c <__lshift>
  804924:	a80b883a 	mov	r5,r21
  804928:	1009883a 	mov	r4,r2
  80492c:	102d883a 	mov	r22,r2
  804930:	08075b40 	call	8075b4 <__mcmp>
  804934:	d8c00117 	ldw	r3,4(sp)
  804938:	0080e40e 	bge	zero,r2,804ccc <_dtoa_r+0x1668>
  80493c:	18c00e60 	cmpeqi	r3,r3,57
  804940:	1800d21e 	bne	r3,zero,804c8c <_dtoa_r+0x1628>
  804944:	d8800517 	ldw	r2,20(sp)
  804948:	10c00c44 	addi	r3,r2,49
  80494c:	8023883a 	mov	r17,r16
  804950:	a0c00005 	stb	r3,0(r20)
  804954:	9821883a 	mov	r16,r19
  804958:	003e2906 	br	804200 <_dtoa_r+0xb9c>
  80495c:	b027883a 	mov	r19,r22
  804960:	ddc00417 	ldw	r23,16(sp)
  804964:	dd800217 	ldw	r22,8(sp)
  804968:	200d883a 	mov	r6,r4
  80496c:	280f883a 	mov	r7,r5
  804970:	080b4a40 	call	80b4a4 <__adddf3>
  804974:	dd400117 	ldw	r21,4(sp)
  804978:	180b883a 	mov	r5,r3
  80497c:	900f883a 	mov	r7,r18
  804980:	a80d883a 	mov	r6,r21
  804984:	1009883a 	mov	r4,r2
  804988:	1823883a 	mov	r17,r3
  80498c:	1029883a 	mov	r20,r2
  804990:	080c7d00 	call	80c7d0 <__gedf2>
  804994:	d8c00317 	ldw	r3,12(sp)
  804998:	18c00044 	addi	r3,r3,1
  80499c:	d8c00315 	stw	r3,12(sp)
  8049a0:	00bcc716 	blt	zero,r2,803cc0 <_dtoa_r+0x65c>
  8049a4:	a80d883a 	mov	r6,r21
  8049a8:	900f883a 	mov	r7,r18
  8049ac:	a009883a 	mov	r4,r20
  8049b0:	880b883a 	mov	r5,r17
  8049b4:	080c7500 	call	80c750 <__eqdf2>
  8049b8:	1000021e 	bne	r2,zero,8049c4 <_dtoa_r+0x1360>
  8049bc:	9cc0004c 	andi	r19,r19,1
  8049c0:	983cbf1e 	bne	r19,zero,803cc0 <_dtoa_r+0x65c>
  8049c4:	8025883a 	mov	r18,r16
  8049c8:	003e1906 	br	804230 <_dtoa_r+0xbcc>
  8049cc:	81400117 	ldw	r5,4(r16)
  8049d0:	b809883a 	mov	r4,r23
  8049d4:	0806ba40 	call	806ba4 <_Balloc>
  8049d8:	1023883a 	mov	r17,r2
  8049dc:	1000e526 	beq	r2,zero,804d74 <_dtoa_r+0x1710>
  8049e0:	81800417 	ldw	r6,16(r16)
  8049e4:	81400304 	addi	r5,r16,12
  8049e8:	11000304 	addi	r4,r2,12
  8049ec:	31800084 	addi	r6,r6,2
  8049f0:	300c90ba 	slli	r6,r6,2
  8049f4:	08068880 	call	806888 <memcpy>
  8049f8:	01800044 	movi	r6,1
  8049fc:	880b883a 	mov	r5,r17
  804a00:	b809883a 	mov	r4,r23
  804a04:	080742c0 	call	80742c <__lshift>
  804a08:	1027883a 	mov	r19,r2
  804a0c:	003e8006 	br	804410 <_dtoa_r+0xdac>
  804a10:	b00b883a 	mov	r5,r22
  804a14:	b809883a 	mov	r4,r23
  804a18:	08073140 	call	807314 <__pow5mult>
  804a1c:	102d883a 	mov	r22,r2
  804a20:	003d9906 	br	804088 <_dtoa_r+0xa24>
  804a24:	d8800517 	ldw	r2,20(sp)
  804a28:	d8c00417 	ldw	r3,16(sp)
  804a2c:	10e5c83a 	sub	r18,r2,r3
  804a30:	003d6e06 	br	803fec <_dtoa_r+0x988>
  804a34:	d9000317 	ldw	r4,12(sp)
  804a38:	e007883a 	mov	r3,fp
  804a3c:	18800e58 	cmpnei	r2,r3,57
  804a40:	21000044 	addi	r4,r4,1
  804a44:	d9000315 	stw	r4,12(sp)
  804a48:	df000817 	ldw	fp,32(sp)
  804a4c:	10008f26 	beq	r2,zero,804c8c <_dtoa_r+0x1628>
  804a50:	18c00044 	addi	r3,r3,1
  804a54:	003fbd06 	br	80494c <_dtoa_r+0x12e8>
  804a58:	d8800317 	ldw	r2,12(sp)
  804a5c:	e007883a 	mov	r3,fp
  804a60:	8023883a 	mov	r17,r16
  804a64:	10800044 	addi	r2,r2,1
  804a68:	df000817 	ldw	fp,32(sp)
  804a6c:	d8800315 	stw	r2,12(sp)
  804a70:	9821883a 	mov	r16,r19
  804a74:	003dcb06 	br	8041a4 <_dtoa_r+0xb40>
  804a78:	d9000c17 	ldw	r4,48(sp)
  804a7c:	d9400d17 	ldw	r5,52(sp)
  804a80:	600d883a 	mov	r6,r12
  804a84:	680f883a 	mov	r7,r13
  804a88:	dac00a15 	stw	r11,40(sp)
  804a8c:	080c9b00 	call	80c9b0 <__muldf3>
  804a90:	dac00a17 	ldw	r11,40(sp)
  804a94:	d9400e17 	ldw	r5,56(sp)
  804a98:	d8800a15 	stw	r2,40(sp)
  804a9c:	e2c00005 	stb	r11,0(fp)
  804aa0:	29000058 	cmpnei	r4,r5,1
  804aa4:	d8c00c15 	stw	r3,48(sp)
  804aa8:	e145883a 	add	r2,fp,r5
  804aac:	20002126 	beq	r4,zero,804b34 <_dtoa_r+0x14d0>
  804ab0:	dc400e15 	stw	r17,56(sp)
  804ab4:	dcc00d15 	stw	r19,52(sp)
  804ab8:	8023883a 	mov	r17,r16
  804abc:	a809883a 	mov	r4,r21
  804ac0:	900b883a 	mov	r5,r18
  804ac4:	1021883a 	mov	r16,r2
  804ac8:	000d883a 	mov	r6,zero
  804acc:	01d00934 	movhi	r7,16420
  804ad0:	080c9b00 	call	80c9b0 <__muldf3>
  804ad4:	180b883a 	mov	r5,r3
  804ad8:	1009883a 	mov	r4,r2
  804adc:	182b883a 	mov	r21,r3
  804ae0:	1027883a 	mov	r19,r2
  804ae4:	080dae00 	call	80dae0 <__fixdfsi>
  804ae8:	1009883a 	mov	r4,r2
  804aec:	1025883a 	mov	r18,r2
  804af0:	080db600 	call	80db60 <__floatsidf>
  804af4:	9809883a 	mov	r4,r19
  804af8:	a80b883a 	mov	r5,r21
  804afc:	100d883a 	mov	r6,r2
  804b00:	180f883a 	mov	r7,r3
  804b04:	8c400044 	addi	r17,r17,1
  804b08:	94800c04 	addi	r18,r18,48
  804b0c:	080d1580 	call	80d158 <__subdf3>
  804b10:	8cbfffc5 	stb	r18,-1(r17)
  804b14:	1009883a 	mov	r4,r2
  804b18:	180b883a 	mov	r5,r3
  804b1c:	847fea1e 	bne	r16,r17,804ac8 <_dtoa_r+0x1464>
  804b20:	8821883a 	mov	r16,r17
  804b24:	dcc00d17 	ldw	r19,52(sp)
  804b28:	dc400e17 	ldw	r17,56(sp)
  804b2c:	102b883a 	mov	r21,r2
  804b30:	1825883a 	mov	r18,r3
  804b34:	d9000a17 	ldw	r4,40(sp)
  804b38:	d9400c17 	ldw	r5,48(sp)
  804b3c:	000d883a 	mov	r6,zero
  804b40:	01cff834 	movhi	r7,16352
  804b44:	080b4a40 	call	80b4a4 <__adddf3>
  804b48:	a80d883a 	mov	r6,r21
  804b4c:	900f883a 	mov	r7,r18
  804b50:	1009883a 	mov	r4,r2
  804b54:	180b883a 	mov	r5,r3
  804b58:	080c8c00 	call	80c8c0 <__ledf2>
  804b5c:	103c5316 	blt	r2,zero,803cac <_dtoa_r+0x648>
  804b60:	d9800a17 	ldw	r6,40(sp)
  804b64:	d9c00c17 	ldw	r7,48(sp)
  804b68:	0009883a 	mov	r4,zero
  804b6c:	014ff834 	movhi	r5,16352
  804b70:	080d1580 	call	80d158 <__subdf3>
  804b74:	a80d883a 	mov	r6,r21
  804b78:	900f883a 	mov	r7,r18
  804b7c:	1009883a 	mov	r4,r2
  804b80:	180b883a 	mov	r5,r3
  804b84:	080c7d00 	call	80c7d0 <__gedf2>
  804b88:	00bc8d0e 	bge	zero,r2,803dc0 <_dtoa_r+0x75c>
  804b8c:	80bfffc7 	ldb	r2,-1(r16)
  804b90:	8025883a 	mov	r18,r16
  804b94:	843fffc4 	addi	r16,r16,-1
  804b98:	10800c20 	cmpeqi	r2,r2,48
  804b9c:	103ffb1e 	bne	r2,zero,804b8c <_dtoa_r+0x1528>
  804ba0:	d8801117 	ldw	r2,68(sp)
  804ba4:	10800044 	addi	r2,r2,1
  804ba8:	d8800315 	stw	r2,12(sp)
  804bac:	003da006 	br	804230 <_dtoa_r+0xbcc>
  804bb0:	d8c01217 	ldw	r3,72(sp)
  804bb4:	00800d84 	movi	r2,54
  804bb8:	d9000517 	ldw	r4,20(sp)
  804bbc:	10c5c83a 	sub	r2,r2,r3
  804bc0:	d8c00217 	ldw	r3,8(sp)
  804bc4:	dd400717 	ldw	r21,28(sp)
  804bc8:	2025883a 	mov	r18,r4
  804bcc:	1887883a 	add	r3,r3,r2
  804bd0:	2085883a 	add	r2,r4,r2
  804bd4:	d8c00215 	stw	r3,8(sp)
  804bd8:	d8800515 	stw	r2,20(sp)
  804bdc:	003d0306 	br	803fec <_dtoa_r+0x988>
  804be0:	d8800417 	ldw	r2,16(sp)
  804be4:	103ee426 	beq	r2,zero,804778 <_dtoa_r+0x1114>
  804be8:	d8800b17 	ldw	r2,44(sp)
  804bec:	00bc740e 	bge	zero,r2,803dc0 <_dtoa_r+0x75c>
  804bf0:	a80b883a 	mov	r5,r21
  804bf4:	9009883a 	mov	r4,r18
  804bf8:	000d883a 	mov	r6,zero
  804bfc:	01d00934 	movhi	r7,16420
  804c00:	080c9b00 	call	80c9b0 <__muldf3>
  804c04:	81000044 	addi	r4,r16,1
  804c08:	1025883a 	mov	r18,r2
  804c0c:	182b883a 	mov	r21,r3
  804c10:	d8c00a15 	stw	r3,40(sp)
  804c14:	080db600 	call	80db60 <__floatsidf>
  804c18:	900d883a 	mov	r6,r18
  804c1c:	a80f883a 	mov	r7,r21
  804c20:	1009883a 	mov	r4,r2
  804c24:	180b883a 	mov	r5,r3
  804c28:	080c9b00 	call	80c9b0 <__muldf3>
  804c2c:	1009883a 	mov	r4,r2
  804c30:	000d883a 	mov	r6,zero
  804c34:	01d00734 	movhi	r7,16412
  804c38:	180b883a 	mov	r5,r3
  804c3c:	080b4a40 	call	80b4a4 <__adddf3>
  804c40:	d9000317 	ldw	r4,12(sp)
  804c44:	d8800c15 	stw	r2,48(sp)
  804c48:	00bf3034 	movhi	r2,64704
  804c4c:	1887883a 	add	r3,r3,r2
  804c50:	d8800b17 	ldw	r2,44(sp)
  804c54:	213fffc4 	addi	r4,r4,-1
  804c58:	d9001115 	stw	r4,68(sp)
  804c5c:	d8c00d15 	stw	r3,52(sp)
  804c60:	d8800e15 	stw	r2,56(sp)
  804c64:	003b9f06 	br	803ae4 <_dtoa_r+0x480>
  804c68:	a025883a 	mov	r18,r20
  804c6c:	dc400a15 	stw	r17,40(sp)
  804c70:	04000084 	movi	r16,2
  804c74:	003b7c06 	br	803a68 <_dtoa_r+0x404>
  804c78:	d8800317 	ldw	r2,12(sp)
  804c7c:	00c00c44 	movi	r3,49
  804c80:	10800044 	addi	r2,r2,1
  804c84:	d8800315 	stw	r2,12(sp)
  804c88:	003c1606 	br	803ce4 <_dtoa_r+0x680>
  804c8c:	00800e44 	movi	r2,57
  804c90:	8023883a 	mov	r17,r16
  804c94:	a0800005 	stb	r2,0(r20)
  804c98:	9821883a 	mov	r16,r19
  804c9c:	01000e44 	movi	r4,57
  804ca0:	003d4f06 	br	8041e0 <_dtoa_r+0xb7c>
  804ca4:	002b883a 	mov	r21,zero
  804ca8:	0021883a 	mov	r16,zero
  804cac:	003e7206 	br	804678 <_dtoa_r+0x1014>
  804cb0:	dd800d17 	ldw	r22,52(sp)
  804cb4:	ddc00e17 	ldw	r23,56(sp)
  804cb8:	d8801117 	ldw	r2,68(sp)
  804cbc:	8025883a 	mov	r18,r16
  804cc0:	10800044 	addi	r2,r2,1
  804cc4:	d8800315 	stw	r2,12(sp)
  804cc8:	003d5906 	br	804230 <_dtoa_r+0xbcc>
  804ccc:	103f1f1e 	bne	r2,zero,80494c <_dtoa_r+0x12e8>
  804cd0:	1880004c 	andi	r2,r3,1
  804cd4:	103f191e 	bne	r2,zero,80493c <_dtoa_r+0x12d8>
  804cd8:	003f1c06 	br	80494c <_dtoa_r+0x12e8>
  804cdc:	dcc00f17 	ldw	r19,60(sp)
  804ce0:	dd800d17 	ldw	r22,52(sp)
  804ce4:	ddc00e17 	ldw	r23,56(sp)
  804ce8:	dc400c17 	ldw	r17,48(sp)
  804cec:	dd000a17 	ldw	r20,40(sp)
  804cf0:	003c3306 	br	803dc0 <_dtoa_r+0x75c>
  804cf4:	d9000317 	ldw	r4,12(sp)
  804cf8:	e007883a 	mov	r3,fp
  804cfc:	18800e60 	cmpeqi	r2,r3,57
  804d00:	21000044 	addi	r4,r4,1
  804d04:	d9000315 	stw	r4,12(sp)
  804d08:	df000817 	ldw	fp,32(sp)
  804d0c:	a4800044 	addi	r18,r20,1
  804d10:	103fde1e 	bne	r2,zero,804c8c <_dtoa_r+0x1628>
  804d14:	047f0b16 	blt	zero,r17,804944 <_dtoa_r+0x12e0>
  804d18:	003f0c06 	br	80494c <_dtoa_r+0x12e8>
  804d1c:	d8800117 	ldw	r2,4(sp)
  804d20:	108000c8 	cmpgei	r2,r2,3
  804d24:	103e451e 	bne	r2,zero,80463c <_dtoa_r+0xfd8>
  804d28:	dcc00315 	stw	r19,12(sp)
  804d2c:	003e0c06 	br	804560 <_dtoa_r+0xefc>
  804d30:	d8800117 	ldw	r2,4(sp)
  804d34:	108000c8 	cmpgei	r2,r2,3
  804d38:	103e401e 	bne	r2,zero,80463c <_dtoa_r+0xfd8>
  804d3c:	d8800b17 	ldw	r2,44(sp)
  804d40:	dcc00315 	stw	r19,12(sp)
  804d44:	d8800415 	stw	r2,16(sp)
  804d48:	04bdaf0e 	bge	zero,r18,804408 <_dtoa_r+0xda4>
  804d4c:	003e5806 	br	8046b0 <_dtoa_r+0x104c>
  804d50:	04000084 	movi	r16,2
  804d54:	003b4406 	br	803a68 <_dtoa_r+0x404>
  804d58:	01c02074 	movhi	r7,129
  804d5c:	01002074 	movhi	r4,129
  804d60:	39c1c204 	addi	r7,r7,1800
  804d64:	000d883a 	mov	r6,zero
  804d68:	01406a84 	movi	r5,426
  804d6c:	2101c704 	addi	r4,r4,1820
  804d70:	08099900 	call	809990 <__assert_func>
  804d74:	01c02074 	movhi	r7,129
  804d78:	01002074 	movhi	r4,129
  804d7c:	39c1c204 	addi	r7,r7,1800
  804d80:	000d883a 	mov	r6,zero
  804d84:	0140ba84 	movi	r5,746
  804d88:	2101c704 	addi	r4,r4,1820
  804d8c:	08099900 	call	809990 <__assert_func>
  804d90:	e701bf04 	addi	fp,fp,1788
  804d94:	003a6406 	br	803728 <_dtoa_r+0xc4>
  804d98:	18c00120 	cmpeqi	r3,r3,4
  804d9c:	183cd51e 	bne	r3,zero,8040f4 <_dtoa_r+0xa90>
  804da0:	00c00f04 	movi	r3,60
  804da4:	1885c83a 	sub	r2,r3,r2
  804da8:	003d6c06 	br	80435c <_dtoa_r+0xcf8>
  804dac:	000b883a 	mov	r5,zero
  804db0:	003af006 	br	803974 <_dtoa_r+0x310>

00804db4 <__sflush_r>:
  804db4:	2880030b 	ldhu	r2,12(r5)
  804db8:	defffb04 	addi	sp,sp,-20
  804dbc:	dcc00315 	stw	r19,12(sp)
  804dc0:	dc000015 	stw	r16,0(sp)
  804dc4:	dfc00415 	stw	ra,16(sp)
  804dc8:	dc800215 	stw	r18,8(sp)
  804dcc:	dc400115 	stw	r17,4(sp)
  804dd0:	10c0020c 	andi	r3,r2,8
  804dd4:	2821883a 	mov	r16,r5
  804dd8:	2027883a 	mov	r19,r4
  804ddc:	18003f1e 	bne	r3,zero,804edc <__sflush_r+0x128>
  804de0:	28c00117 	ldw	r3,4(r5)
  804de4:	10820014 	ori	r2,r2,2048
  804de8:	2880030d 	sth	r2,12(r5)
  804dec:	00c0550e 	bge	zero,r3,804f44 <__sflush_r+0x190>
  804df0:	82000a17 	ldw	r8,40(r16)
  804df4:	40003126 	beq	r8,zero,804ebc <__sflush_r+0x108>
  804df8:	9c400017 	ldw	r17,0(r19)
  804dfc:	1104000c 	andi	r4,r2,4096
  804e00:	98000015 	stw	zero,0(r19)
  804e04:	81400717 	ldw	r5,28(r16)
  804e08:	1007883a 	mov	r3,r2
  804e0c:	2000521e 	bne	r4,zero,804f58 <__sflush_r+0x1a4>
  804e10:	01c00044 	movi	r7,1
  804e14:	000d883a 	mov	r6,zero
  804e18:	9809883a 	mov	r4,r19
  804e1c:	403ee83a 	callr	r8
  804e20:	10ffffd8 	cmpnei	r3,r2,-1
  804e24:	18005826 	beq	r3,zero,804f88 <__sflush_r+0x1d4>
  804e28:	80c0030b 	ldhu	r3,12(r16)
  804e2c:	82000a17 	ldw	r8,40(r16)
  804e30:	81400717 	ldw	r5,28(r16)
  804e34:	18c0010c 	andi	r3,r3,4
  804e38:	18000626 	beq	r3,zero,804e54 <__sflush_r+0xa0>
  804e3c:	81000117 	ldw	r4,4(r16)
  804e40:	80c00c17 	ldw	r3,48(r16)
  804e44:	1105c83a 	sub	r2,r2,r4
  804e48:	18000226 	beq	r3,zero,804e54 <__sflush_r+0xa0>
  804e4c:	80c00f17 	ldw	r3,60(r16)
  804e50:	10c5c83a 	sub	r2,r2,r3
  804e54:	100d883a 	mov	r6,r2
  804e58:	000f883a 	mov	r7,zero
  804e5c:	9809883a 	mov	r4,r19
  804e60:	403ee83a 	callr	r8
  804e64:	10ffffd8 	cmpnei	r3,r2,-1
  804e68:	18003d1e 	bne	r3,zero,804f60 <__sflush_r+0x1ac>
  804e6c:	99000017 	ldw	r4,0(r19)
  804e70:	80c0030b 	ldhu	r3,12(r16)
  804e74:	20004e26 	beq	r4,zero,804fb0 <__sflush_r+0x1fc>
  804e78:	21400760 	cmpeqi	r5,r4,29
  804e7c:	2800021e 	bne	r5,zero,804e88 <__sflush_r+0xd4>
  804e80:	210005a0 	cmpeqi	r4,r4,22
  804e84:	20002c26 	beq	r4,zero,804f38 <__sflush_r+0x184>
  804e88:	80800417 	ldw	r2,16(r16)
  804e8c:	18fdffcc 	andi	r3,r3,63487
  804e90:	80c0030d 	sth	r3,12(r16)
  804e94:	80000115 	stw	zero,4(r16)
  804e98:	80800015 	stw	r2,0(r16)
  804e9c:	81400c17 	ldw	r5,48(r16)
  804ea0:	9c400015 	stw	r17,0(r19)
  804ea4:	28000526 	beq	r5,zero,804ebc <__sflush_r+0x108>
  804ea8:	80801004 	addi	r2,r16,64
  804eac:	28800226 	beq	r5,r2,804eb8 <__sflush_r+0x104>
  804eb0:	9809883a 	mov	r4,r19
  804eb4:	08054d40 	call	8054d4 <_free_r>
  804eb8:	80000c15 	stw	zero,48(r16)
  804ebc:	0005883a 	mov	r2,zero
  804ec0:	dfc00417 	ldw	ra,16(sp)
  804ec4:	dcc00317 	ldw	r19,12(sp)
  804ec8:	dc800217 	ldw	r18,8(sp)
  804ecc:	dc400117 	ldw	r17,4(sp)
  804ed0:	dc000017 	ldw	r16,0(sp)
  804ed4:	dec00504 	addi	sp,sp,20
  804ed8:	f800283a 	ret
  804edc:	2c800417 	ldw	r18,16(r5)
  804ee0:	903ff626 	beq	r18,zero,804ebc <__sflush_r+0x108>
  804ee4:	2c400017 	ldw	r17,0(r5)
  804ee8:	108000cc 	andi	r2,r2,3
  804eec:	2c800015 	stw	r18,0(r5)
  804ef0:	8ca3c83a 	sub	r17,r17,r18
  804ef4:	1000161e 	bne	r2,zero,804f50 <__sflush_r+0x19c>
  804ef8:	28800517 	ldw	r2,20(r5)
  804efc:	80800215 	stw	r2,8(r16)
  804f00:	04400316 	blt	zero,r17,804f10 <__sflush_r+0x15c>
  804f04:	003fed06 	br	804ebc <__sflush_r+0x108>
  804f08:	90a5883a 	add	r18,r18,r2
  804f0c:	047feb0e 	bge	zero,r17,804ebc <__sflush_r+0x108>
  804f10:	80800917 	ldw	r2,36(r16)
  804f14:	81400717 	ldw	r5,28(r16)
  804f18:	880f883a 	mov	r7,r17
  804f1c:	900d883a 	mov	r6,r18
  804f20:	9809883a 	mov	r4,r19
  804f24:	103ee83a 	callr	r2
  804f28:	88a3c83a 	sub	r17,r17,r2
  804f2c:	00bff616 	blt	zero,r2,804f08 <__sflush_r+0x154>
  804f30:	80c0030b 	ldhu	r3,12(r16)
  804f34:	00bfffc4 	movi	r2,-1
  804f38:	18c01014 	ori	r3,r3,64
  804f3c:	80c0030d 	sth	r3,12(r16)
  804f40:	003fdf06 	br	804ec0 <__sflush_r+0x10c>
  804f44:	28c00f17 	ldw	r3,60(r5)
  804f48:	00ffa916 	blt	zero,r3,804df0 <__sflush_r+0x3c>
  804f4c:	003fdb06 	br	804ebc <__sflush_r+0x108>
  804f50:	0005883a 	mov	r2,zero
  804f54:	003fe906 	br	804efc <__sflush_r+0x148>
  804f58:	80801417 	ldw	r2,80(r16)
  804f5c:	003fb506 	br	804e34 <__sflush_r+0x80>
  804f60:	80c0030b 	ldhu	r3,12(r16)
  804f64:	81000417 	ldw	r4,16(r16)
  804f68:	80000115 	stw	zero,4(r16)
  804f6c:	197dffcc 	andi	r5,r3,63487
  804f70:	8140030d 	sth	r5,12(r16)
  804f74:	81000015 	stw	r4,0(r16)
  804f78:	18c4000c 	andi	r3,r3,4096
  804f7c:	183fc726 	beq	r3,zero,804e9c <__sflush_r+0xe8>
  804f80:	80801415 	stw	r2,80(r16)
  804f84:	003fc506 	br	804e9c <__sflush_r+0xe8>
  804f88:	98c00017 	ldw	r3,0(r19)
  804f8c:	183fa626 	beq	r3,zero,804e28 <__sflush_r+0x74>
  804f90:	19000760 	cmpeqi	r4,r3,29
  804f94:	20000e1e 	bne	r4,zero,804fd0 <__sflush_r+0x21c>
  804f98:	18c00598 	cmpnei	r3,r3,22
  804f9c:	18000c26 	beq	r3,zero,804fd0 <__sflush_r+0x21c>
  804fa0:	80c0030b 	ldhu	r3,12(r16)
  804fa4:	18c01014 	ori	r3,r3,64
  804fa8:	80c0030d 	sth	r3,12(r16)
  804fac:	003fc406 	br	804ec0 <__sflush_r+0x10c>
  804fb0:	81000417 	ldw	r4,16(r16)
  804fb4:	197dffcc 	andi	r5,r3,63487
  804fb8:	8140030d 	sth	r5,12(r16)
  804fbc:	80000115 	stw	zero,4(r16)
  804fc0:	81000015 	stw	r4,0(r16)
  804fc4:	18c4000c 	andi	r3,r3,4096
  804fc8:	183fb426 	beq	r3,zero,804e9c <__sflush_r+0xe8>
  804fcc:	003fec06 	br	804f80 <__sflush_r+0x1cc>
  804fd0:	9c400015 	stw	r17,0(r19)
  804fd4:	0005883a 	mov	r2,zero
  804fd8:	003fb906 	br	804ec0 <__sflush_r+0x10c>

00804fdc <_fflush_r>:
  804fdc:	defffd04 	addi	sp,sp,-12
  804fe0:	dc000115 	stw	r16,4(sp)
  804fe4:	dfc00215 	stw	ra,8(sp)
  804fe8:	2021883a 	mov	r16,r4
  804fec:	20000226 	beq	r4,zero,804ff8 <_fflush_r+0x1c>
  804ff0:	20800e17 	ldw	r2,56(r4)
  804ff4:	10000726 	beq	r2,zero,805014 <_fflush_r+0x38>
  804ff8:	2880030f 	ldh	r2,12(r5)
  804ffc:	10000a1e 	bne	r2,zero,805028 <_fflush_r+0x4c>
  805000:	0005883a 	mov	r2,zero
  805004:	dfc00217 	ldw	ra,8(sp)
  805008:	dc000117 	ldw	r16,4(sp)
  80500c:	dec00304 	addi	sp,sp,12
  805010:	f800283a 	ret
  805014:	d9400015 	stw	r5,0(sp)
  805018:	08053700 	call	805370 <__sinit>
  80501c:	d9400017 	ldw	r5,0(sp)
  805020:	2880030f 	ldh	r2,12(r5)
  805024:	103ff626 	beq	r2,zero,805000 <_fflush_r+0x24>
  805028:	8009883a 	mov	r4,r16
  80502c:	dfc00217 	ldw	ra,8(sp)
  805030:	dc000117 	ldw	r16,4(sp)
  805034:	dec00304 	addi	sp,sp,12
  805038:	0804db41 	jmpi	804db4 <__sflush_r>

0080503c <fflush>:
  80503c:	200b883a 	mov	r5,r4
  805040:	20000326 	beq	r4,zero,805050 <fflush+0x14>
  805044:	00802074 	movhi	r2,129
  805048:	1109e117 	ldw	r4,10116(r2)
  80504c:	0804fdc1 	jmpi	804fdc <_fflush_r>
  805050:	00802074 	movhi	r2,129
  805054:	1109e017 	ldw	r4,10112(r2)
  805058:	01402034 	movhi	r5,128
  80505c:	2953f704 	addi	r5,r5,20444
  805060:	0805d341 	jmpi	805d34 <_fwalk_reent>

00805064 <__fp_lock>:
  805064:	0005883a 	mov	r2,zero
  805068:	f800283a 	ret

0080506c <_cleanup_r>:
  80506c:	01402074 	movhi	r5,129
  805070:	2966b304 	addi	r5,r5,-25908
  805074:	0805d341 	jmpi	805d34 <_fwalk_reent>

00805078 <__sinit.part.0>:
  805078:	00c02034 	movhi	r3,128
  80507c:	20800117 	ldw	r2,4(r4)
  805080:	18d41b04 	addi	r3,r3,20588
  805084:	20c00f15 	stw	r3,60(r4)
  805088:	2140bb04 	addi	r5,r4,748
  80508c:	00c000c4 	movi	r3,3
  805090:	20c0b915 	stw	r3,740(r4)
  805094:	2140ba15 	stw	r5,744(r4)
  805098:	2000b815 	stw	zero,736(r4)
  80509c:	10001705 	stb	zero,92(r2)
  8050a0:	10001745 	stb	zero,93(r2)
  8050a4:	10001785 	stb	zero,94(r2)
  8050a8:	100017c5 	stb	zero,95(r2)
  8050ac:	10001805 	stb	zero,96(r2)
  8050b0:	10001845 	stb	zero,97(r2)
  8050b4:	10001885 	stb	zero,98(r2)
  8050b8:	100018c5 	stb	zero,99(r2)
  8050bc:	00c00104 	movi	r3,4
  8050c0:	10c00315 	stw	r3,12(r2)
  8050c4:	02002074 	movhi	r8,129
  8050c8:	20c00217 	ldw	r3,8(r4)
  8050cc:	01c02074 	movhi	r7,129
  8050d0:	01802074 	movhi	r6,129
  8050d4:	01402074 	movhi	r5,129
  8050d8:	4220a604 	addi	r8,r8,-32104
  8050dc:	39e0bd04 	addi	r7,r7,-32012
  8050e0:	31a0dd04 	addi	r6,r6,-31884
  8050e4:	2960f404 	addi	r5,r5,-31792
  8050e8:	02400074 	movhi	r9,1
  8050ec:	10001915 	stw	zero,100(r2)
  8050f0:	10000015 	stw	zero,0(r2)
  8050f4:	10000115 	stw	zero,4(r2)
  8050f8:	10000215 	stw	zero,8(r2)
  8050fc:	10000415 	stw	zero,16(r2)
  805100:	10000515 	stw	zero,20(r2)
  805104:	10000615 	stw	zero,24(r2)
  805108:	10800715 	stw	r2,28(r2)
  80510c:	12000815 	stw	r8,32(r2)
  805110:	11c00915 	stw	r7,36(r2)
  805114:	11800a15 	stw	r6,40(r2)
  805118:	11400b15 	stw	r5,44(r2)
  80511c:	4a400284 	addi	r9,r9,10
  805120:	1a400315 	stw	r9,12(r3)
  805124:	18001915 	stw	zero,100(r3)
  805128:	18000015 	stw	zero,0(r3)
  80512c:	18000115 	stw	zero,4(r3)
  805130:	18000215 	stw	zero,8(r3)
  805134:	18000415 	stw	zero,16(r3)
  805138:	18001705 	stb	zero,92(r3)
  80513c:	18001745 	stb	zero,93(r3)
  805140:	18001785 	stb	zero,94(r3)
  805144:	180017c5 	stb	zero,95(r3)
  805148:	18001805 	stb	zero,96(r3)
  80514c:	18001845 	stb	zero,97(r3)
  805150:	18001885 	stb	zero,98(r3)
  805154:	180018c5 	stb	zero,99(r3)
  805158:	20800317 	ldw	r2,12(r4)
  80515c:	024000b4 	movhi	r9,2
  805160:	18000515 	stw	zero,20(r3)
  805164:	18000615 	stw	zero,24(r3)
  805168:	18c00715 	stw	r3,28(r3)
  80516c:	1a000815 	stw	r8,32(r3)
  805170:	19c00915 	stw	r7,36(r3)
  805174:	19800a15 	stw	r6,40(r3)
  805178:	19400b15 	stw	r5,44(r3)
  80517c:	4a400484 	addi	r9,r9,18
  805180:	10001915 	stw	zero,100(r2)
  805184:	10000015 	stw	zero,0(r2)
  805188:	10000115 	stw	zero,4(r2)
  80518c:	10000215 	stw	zero,8(r2)
  805190:	12400315 	stw	r9,12(r2)
  805194:	10000415 	stw	zero,16(r2)
  805198:	10000515 	stw	zero,20(r2)
  80519c:	10000615 	stw	zero,24(r2)
  8051a0:	10001705 	stb	zero,92(r2)
  8051a4:	10001745 	stb	zero,93(r2)
  8051a8:	10001785 	stb	zero,94(r2)
  8051ac:	100017c5 	stb	zero,95(r2)
  8051b0:	10001805 	stb	zero,96(r2)
  8051b4:	10001845 	stb	zero,97(r2)
  8051b8:	10001885 	stb	zero,98(r2)
  8051bc:	100018c5 	stb	zero,99(r2)
  8051c0:	10800715 	stw	r2,28(r2)
  8051c4:	12000815 	stw	r8,32(r2)
  8051c8:	11c00915 	stw	r7,36(r2)
  8051cc:	11800a15 	stw	r6,40(r2)
  8051d0:	11400b15 	stw	r5,44(r2)
  8051d4:	00800044 	movi	r2,1
  8051d8:	20800e15 	stw	r2,56(r4)
  8051dc:	f800283a 	ret

008051e0 <__fp_unlock>:
  8051e0:	0005883a 	mov	r2,zero
  8051e4:	f800283a 	ret

008051e8 <__sfmoreglue>:
  8051e8:	defffc04 	addi	sp,sp,-16
  8051ec:	dc800215 	stw	r18,8(sp)
  8051f0:	2825883a 	mov	r18,r5
  8051f4:	dc000015 	stw	r16,0(sp)
  8051f8:	01401a04 	movi	r5,104
  8051fc:	2021883a 	mov	r16,r4
  805200:	913fffc4 	addi	r4,r18,-1
  805204:	dfc00315 	stw	ra,12(sp)
  805208:	dc400115 	stw	r17,4(sp)
  80520c:	0800f1c0 	call	800f1c <__mulsi3>
  805210:	8009883a 	mov	r4,r16
  805214:	11401d04 	addi	r5,r2,116
  805218:	1023883a 	mov	r17,r2
  80521c:	0805fd40 	call	805fd4 <_malloc_r>
  805220:	1021883a 	mov	r16,r2
  805224:	10000726 	beq	r2,zero,805244 <__sfmoreglue+0x5c>
  805228:	11000304 	addi	r4,r2,12
  80522c:	10000015 	stw	zero,0(r2)
  805230:	14800115 	stw	r18,4(r2)
  805234:	11000215 	stw	r4,8(r2)
  805238:	89801a04 	addi	r6,r17,104
  80523c:	000b883a 	mov	r5,zero
  805240:	0806ab40 	call	806ab4 <memset>
  805244:	8005883a 	mov	r2,r16
  805248:	dfc00317 	ldw	ra,12(sp)
  80524c:	dc800217 	ldw	r18,8(sp)
  805250:	dc400117 	ldw	r17,4(sp)
  805254:	dc000017 	ldw	r16,0(sp)
  805258:	dec00404 	addi	sp,sp,16
  80525c:	f800283a 	ret

00805260 <__sfp>:
  805260:	defffd04 	addi	sp,sp,-12
  805264:	00802074 	movhi	r2,129
  805268:	dc000015 	stw	r16,0(sp)
  80526c:	1409e017 	ldw	r16,10112(r2)
  805270:	dc400115 	stw	r17,4(sp)
  805274:	dfc00215 	stw	ra,8(sp)
  805278:	80800e17 	ldw	r2,56(r16)
  80527c:	2023883a 	mov	r17,r4
  805280:	10002b26 	beq	r2,zero,805330 <__sfp+0xd0>
  805284:	8400b804 	addi	r16,r16,736
  805288:	80c00117 	ldw	r3,4(r16)
  80528c:	80800217 	ldw	r2,8(r16)
  805290:	18ffffc4 	addi	r3,r3,-1
  805294:	1800030e 	bge	r3,zero,8052a4 <__sfp+0x44>
  805298:	00002106 	br	805320 <__sfp+0xc0>
  80529c:	10801a04 	addi	r2,r2,104
  8052a0:	30001f26 	beq	r6,zero,805320 <__sfp+0xc0>
  8052a4:	1140030f 	ldh	r5,12(r2)
  8052a8:	18ffffc4 	addi	r3,r3,-1
  8052ac:	19bfffd8 	cmpnei	r6,r3,-1
  8052b0:	283ffa1e 	bne	r5,zero,80529c <__sfp+0x3c>
  8052b4:	00fffff4 	movhi	r3,65535
  8052b8:	18c00044 	addi	r3,r3,1
  8052bc:	10001915 	stw	zero,100(r2)
  8052c0:	10000015 	stw	zero,0(r2)
  8052c4:	10000115 	stw	zero,4(r2)
  8052c8:	10000215 	stw	zero,8(r2)
  8052cc:	10c00315 	stw	r3,12(r2)
  8052d0:	10000415 	stw	zero,16(r2)
  8052d4:	10000515 	stw	zero,20(r2)
  8052d8:	10000615 	stw	zero,24(r2)
  8052dc:	10001705 	stb	zero,92(r2)
  8052e0:	10001745 	stb	zero,93(r2)
  8052e4:	10001785 	stb	zero,94(r2)
  8052e8:	100017c5 	stb	zero,95(r2)
  8052ec:	10001805 	stb	zero,96(r2)
  8052f0:	10001845 	stb	zero,97(r2)
  8052f4:	10001885 	stb	zero,98(r2)
  8052f8:	100018c5 	stb	zero,99(r2)
  8052fc:	10000c15 	stw	zero,48(r2)
  805300:	10000d15 	stw	zero,52(r2)
  805304:	10001115 	stw	zero,68(r2)
  805308:	10001215 	stw	zero,72(r2)
  80530c:	dfc00217 	ldw	ra,8(sp)
  805310:	dc400117 	ldw	r17,4(sp)
  805314:	dc000017 	ldw	r16,0(sp)
  805318:	dec00304 	addi	sp,sp,12
  80531c:	f800283a 	ret
  805320:	80800017 	ldw	r2,0(r16)
  805324:	10000526 	beq	r2,zero,80533c <__sfp+0xdc>
  805328:	1021883a 	mov	r16,r2
  80532c:	003fd606 	br	805288 <__sfp+0x28>
  805330:	8009883a 	mov	r4,r16
  805334:	08050780 	call	805078 <__sinit.part.0>
  805338:	003fd206 	br	805284 <__sfp+0x24>
  80533c:	01400104 	movi	r5,4
  805340:	8809883a 	mov	r4,r17
  805344:	08051e80 	call	8051e8 <__sfmoreglue>
  805348:	80800015 	stw	r2,0(r16)
  80534c:	103ff61e 	bne	r2,zero,805328 <__sfp+0xc8>
  805350:	00c00304 	movi	r3,12
  805354:	88c00015 	stw	r3,0(r17)
  805358:	003fec06 	br	80530c <__sfp+0xac>

0080535c <_cleanup>:
  80535c:	00802074 	movhi	r2,129
  805360:	1109e017 	ldw	r4,10112(r2)
  805364:	01402074 	movhi	r5,129
  805368:	2966b304 	addi	r5,r5,-25908
  80536c:	0805d341 	jmpi	805d34 <_fwalk_reent>

00805370 <__sinit>:
  805370:	20800e17 	ldw	r2,56(r4)
  805374:	10000126 	beq	r2,zero,80537c <__sinit+0xc>
  805378:	f800283a 	ret
  80537c:	08050781 	jmpi	805078 <__sinit.part.0>

00805380 <__sfp_lock_acquire>:
  805380:	f800283a 	ret

00805384 <__sfp_lock_release>:
  805384:	f800283a 	ret

00805388 <__sinit_lock_acquire>:
  805388:	f800283a 	ret

0080538c <__sinit_lock_release>:
  80538c:	f800283a 	ret

00805390 <__fp_lock_all>:
  805390:	00802074 	movhi	r2,129
  805394:	1109e117 	ldw	r4,10116(r2)
  805398:	01402034 	movhi	r5,128
  80539c:	29541904 	addi	r5,r5,20580
  8053a0:	0805c9c1 	jmpi	805c9c <_fwalk>

008053a4 <__fp_unlock_all>:
  8053a4:	00802074 	movhi	r2,129
  8053a8:	1109e117 	ldw	r4,10116(r2)
  8053ac:	01402034 	movhi	r5,128
  8053b0:	29547804 	addi	r5,r5,20960
  8053b4:	0805c9c1 	jmpi	805c9c <_fwalk>

008053b8 <_malloc_trim_r>:
  8053b8:	defffb04 	addi	sp,sp,-20
  8053bc:	dcc00315 	stw	r19,12(sp)
  8053c0:	04c02074 	movhi	r19,129
  8053c4:	dc800215 	stw	r18,8(sp)
  8053c8:	dc400115 	stw	r17,4(sp)
  8053cc:	dc000015 	stw	r16,0(sp)
  8053d0:	dfc00415 	stw	ra,16(sp)
  8053d4:	2821883a 	mov	r16,r5
  8053d8:	9cc40104 	addi	r19,r19,4100
  8053dc:	2025883a 	mov	r18,r4
  8053e0:	080e3880 	call	80e388 <__malloc_lock>
  8053e4:	98800217 	ldw	r2,8(r19)
  8053e8:	14400117 	ldw	r17,4(r2)
  8053ec:	00bfff04 	movi	r2,-4
  8053f0:	88a2703a 	and	r17,r17,r2
  8053f4:	8c21c83a 	sub	r16,r17,r16
  8053f8:	8403fbc4 	addi	r16,r16,4079
  8053fc:	8020d33a 	srli	r16,r16,12
  805400:	843fffc4 	addi	r16,r16,-1
  805404:	8020933a 	slli	r16,r16,12
  805408:	80840008 	cmpgei	r2,r16,4096
  80540c:	10000626 	beq	r2,zero,805428 <_malloc_trim_r+0x70>
  805410:	000b883a 	mov	r5,zero
  805414:	9009883a 	mov	r4,r18
  805418:	08082400 	call	808240 <_sbrk_r>
  80541c:	98c00217 	ldw	r3,8(r19)
  805420:	1c47883a 	add	r3,r3,r17
  805424:	10c00a26 	beq	r2,r3,805450 <_malloc_trim_r+0x98>
  805428:	9009883a 	mov	r4,r18
  80542c:	080e3ac0 	call	80e3ac <__malloc_unlock>
  805430:	0005883a 	mov	r2,zero
  805434:	dfc00417 	ldw	ra,16(sp)
  805438:	dcc00317 	ldw	r19,12(sp)
  80543c:	dc800217 	ldw	r18,8(sp)
  805440:	dc400117 	ldw	r17,4(sp)
  805444:	dc000017 	ldw	r16,0(sp)
  805448:	dec00504 	addi	sp,sp,20
  80544c:	f800283a 	ret
  805450:	040bc83a 	sub	r5,zero,r16
  805454:	9009883a 	mov	r4,r18
  805458:	08082400 	call	808240 <_sbrk_r>
  80545c:	10bfffd8 	cmpnei	r2,r2,-1
  805460:	10000d26 	beq	r2,zero,805498 <_malloc_trim_r+0xe0>
  805464:	00802074 	movhi	r2,129
  805468:	1090f017 	ldw	r2,17344(r2)
  80546c:	98c00217 	ldw	r3,8(r19)
  805470:	8c23c83a 	sub	r17,r17,r16
  805474:	8c400054 	ori	r17,r17,1
  805478:	1421c83a 	sub	r16,r2,r16
  80547c:	1c400115 	stw	r17,4(r3)
  805480:	00802074 	movhi	r2,129
  805484:	9009883a 	mov	r4,r18
  805488:	1410f015 	stw	r16,17344(r2)
  80548c:	080e3ac0 	call	80e3ac <__malloc_unlock>
  805490:	00800044 	movi	r2,1
  805494:	003fe706 	br	805434 <_malloc_trim_r+0x7c>
  805498:	000b883a 	mov	r5,zero
  80549c:	9009883a 	mov	r4,r18
  8054a0:	08082400 	call	808240 <_sbrk_r>
  8054a4:	99000217 	ldw	r4,8(r19)
  8054a8:	1107c83a 	sub	r3,r2,r4
  8054ac:	19400410 	cmplti	r5,r3,16
  8054b0:	283fdd1e 	bne	r5,zero,805428 <_malloc_trim_r+0x70>
  8054b4:	01402074 	movhi	r5,129
  8054b8:	2949e217 	ldw	r5,10120(r5)
  8054bc:	18c00054 	ori	r3,r3,1
  8054c0:	20c00115 	stw	r3,4(r4)
  8054c4:	1145c83a 	sub	r2,r2,r5
  8054c8:	01402074 	movhi	r5,129
  8054cc:	2890f015 	stw	r2,17344(r5)
  8054d0:	003fd506 	br	805428 <_malloc_trim_r+0x70>

008054d4 <_free_r>:
  8054d4:	28004f26 	beq	r5,zero,805614 <_free_r+0x140>
  8054d8:	defffd04 	addi	sp,sp,-12
  8054dc:	dc400115 	stw	r17,4(sp)
  8054e0:	dc000015 	stw	r16,0(sp)
  8054e4:	2023883a 	mov	r17,r4
  8054e8:	2821883a 	mov	r16,r5
  8054ec:	dfc00215 	stw	ra,8(sp)
  8054f0:	080e3880 	call	80e388 <__malloc_lock>
  8054f4:	81ffff17 	ldw	r7,-4(r16)
  8054f8:	00bfff84 	movi	r2,-2
  8054fc:	80fffe04 	addi	r3,r16,-8
  805500:	3884703a 	and	r2,r7,r2
  805504:	01002074 	movhi	r4,129
  805508:	188d883a 	add	r6,r3,r2
  80550c:	21040104 	addi	r4,r4,4100
  805510:	31400117 	ldw	r5,4(r6)
  805514:	22000217 	ldw	r8,8(r4)
  805518:	027fff04 	movi	r9,-4
  80551c:	2a4a703a 	and	r5,r5,r9
  805520:	41806426 	beq	r8,r6,8056b4 <_free_r+0x1e0>
  805524:	31400115 	stw	r5,4(r6)
  805528:	39c0004c 	andi	r7,r7,1
  80552c:	3151883a 	add	r8,r6,r5
  805530:	3800281e 	bne	r7,zero,8055d4 <_free_r+0x100>
  805534:	82bffe17 	ldw	r10,-8(r16)
  805538:	42000117 	ldw	r8,4(r8)
  80553c:	01c02074 	movhi	r7,129
  805540:	1a87c83a 	sub	r3,r3,r10
  805544:	1a400217 	ldw	r9,8(r3)
  805548:	39c40304 	addi	r7,r7,4108
  80554c:	1285883a 	add	r2,r2,r10
  805550:	4200004c 	andi	r8,r8,1
  805554:	49c04c26 	beq	r9,r7,805688 <_free_r+0x1b4>
  805558:	1a800317 	ldw	r10,12(r3)
  80555c:	4a800315 	stw	r10,12(r9)
  805560:	52400215 	stw	r9,8(r10)
  805564:	40007126 	beq	r8,zero,80572c <_free_r+0x258>
  805568:	11400054 	ori	r5,r2,1
  80556c:	19400115 	stw	r5,4(r3)
  805570:	30800015 	stw	r2,0(r6)
  805574:	11408028 	cmpgeui	r5,r2,512
  805578:	28002c1e 	bne	r5,zero,80562c <_free_r+0x158>
  80557c:	100ad0fa 	srli	r5,r2,3
  805580:	100cd17a 	srli	r6,r2,5
  805584:	00800044 	movi	r2,1
  805588:	29400044 	addi	r5,r5,1
  80558c:	280a90fa 	slli	r5,r5,3
  805590:	21c00117 	ldw	r7,4(r4)
  805594:	1184983a 	sll	r2,r2,r6
  805598:	214b883a 	add	r5,r4,r5
  80559c:	29800017 	ldw	r6,0(r5)
  8055a0:	11c4b03a 	or	r2,r2,r7
  8055a4:	29fffe04 	addi	r7,r5,-8
  8055a8:	19c00315 	stw	r7,12(r3)
  8055ac:	19800215 	stw	r6,8(r3)
  8055b0:	20800115 	stw	r2,4(r4)
  8055b4:	28c00015 	stw	r3,0(r5)
  8055b8:	30c00315 	stw	r3,12(r6)
  8055bc:	8809883a 	mov	r4,r17
  8055c0:	dfc00217 	ldw	ra,8(sp)
  8055c4:	dc400117 	ldw	r17,4(sp)
  8055c8:	dc000017 	ldw	r16,0(sp)
  8055cc:	dec00304 	addi	sp,sp,12
  8055d0:	080e3ac1 	jmpi	80e3ac <__malloc_unlock>
  8055d4:	41c00117 	ldw	r7,4(r8)
  8055d8:	39c0004c 	andi	r7,r7,1
  8055dc:	38000e1e 	bne	r7,zero,805618 <_free_r+0x144>
  8055e0:	01c02074 	movhi	r7,129
  8055e4:	1145883a 	add	r2,r2,r5
  8055e8:	39c40304 	addi	r7,r7,4108
  8055ec:	31400217 	ldw	r5,8(r6)
  8055f0:	12400054 	ori	r9,r2,1
  8055f4:	1891883a 	add	r8,r3,r2
  8055f8:	29c05226 	beq	r5,r7,805744 <_free_r+0x270>
  8055fc:	31800317 	ldw	r6,12(r6)
  805600:	29800315 	stw	r6,12(r5)
  805604:	31400215 	stw	r5,8(r6)
  805608:	1a400115 	stw	r9,4(r3)
  80560c:	40800015 	stw	r2,0(r8)
  805610:	003fd806 	br	805574 <_free_r+0xa0>
  805614:	f800283a 	ret
  805618:	11400054 	ori	r5,r2,1
  80561c:	817fff15 	stw	r5,-4(r16)
  805620:	30800015 	stw	r2,0(r6)
  805624:	11408028 	cmpgeui	r5,r2,512
  805628:	283fd426 	beq	r5,zero,80557c <_free_r+0xa8>
  80562c:	100ad27a 	srli	r5,r2,9
  805630:	29800168 	cmpgeui	r6,r5,5
  805634:	3000341e 	bne	r6,zero,805708 <_free_r+0x234>
  805638:	100ad1ba 	srli	r5,r2,6
  80563c:	29800e44 	addi	r6,r5,57
  805640:	300c90fa 	slli	r6,r6,3
  805644:	29c00e04 	addi	r7,r5,56
  805648:	218d883a 	add	r6,r4,r6
  80564c:	31400017 	ldw	r5,0(r6)
  805650:	31bffe04 	addi	r6,r6,-8
  805654:	31404226 	beq	r6,r5,805760 <_free_r+0x28c>
  805658:	01ffff04 	movi	r7,-4
  80565c:	29000117 	ldw	r4,4(r5)
  805660:	21c8703a 	and	r4,r4,r7
  805664:	1100022e 	bgeu	r2,r4,805670 <_free_r+0x19c>
  805668:	29400217 	ldw	r5,8(r5)
  80566c:	317ffb1e 	bne	r6,r5,80565c <_free_r+0x188>
  805670:	29800317 	ldw	r6,12(r5)
  805674:	19800315 	stw	r6,12(r3)
  805678:	19400215 	stw	r5,8(r3)
  80567c:	30c00215 	stw	r3,8(r6)
  805680:	28c00315 	stw	r3,12(r5)
  805684:	003fcd06 	br	8055bc <_free_r+0xe8>
  805688:	40004d1e 	bne	r8,zero,8057c0 <_free_r+0x2ec>
  80568c:	31000317 	ldw	r4,12(r6)
  805690:	31800217 	ldw	r6,8(r6)
  805694:	2885883a 	add	r2,r5,r2
  805698:	11400054 	ori	r5,r2,1
  80569c:	31000315 	stw	r4,12(r6)
  8056a0:	21800215 	stw	r6,8(r4)
  8056a4:	19400115 	stw	r5,4(r3)
  8056a8:	1887883a 	add	r3,r3,r2
  8056ac:	18800015 	stw	r2,0(r3)
  8056b0:	003fc206 	br	8055bc <_free_r+0xe8>
  8056b4:	39c0004c 	andi	r7,r7,1
  8056b8:	1145883a 	add	r2,r2,r5
  8056bc:	3800071e 	bne	r7,zero,8056dc <_free_r+0x208>
  8056c0:	81fffe17 	ldw	r7,-8(r16)
  8056c4:	19c7c83a 	sub	r3,r3,r7
  8056c8:	19400317 	ldw	r5,12(r3)
  8056cc:	19800217 	ldw	r6,8(r3)
  8056d0:	11c5883a 	add	r2,r2,r7
  8056d4:	31400315 	stw	r5,12(r6)
  8056d8:	29800215 	stw	r6,8(r5)
  8056dc:	01402074 	movhi	r5,129
  8056e0:	11800054 	ori	r6,r2,1
  8056e4:	2949e317 	ldw	r5,10124(r5)
  8056e8:	19800115 	stw	r6,4(r3)
  8056ec:	20c00215 	stw	r3,8(r4)
  8056f0:	117fb236 	bltu	r2,r5,8055bc <_free_r+0xe8>
  8056f4:	00802074 	movhi	r2,129
  8056f8:	1150e617 	ldw	r5,17304(r2)
  8056fc:	8809883a 	mov	r4,r17
  805700:	08053b80 	call	8053b8 <_malloc_trim_r>
  805704:	003fad06 	br	8055bc <_free_r+0xe8>
  805708:	29800568 	cmpgeui	r6,r5,21
  80570c:	30000926 	beq	r6,zero,805734 <_free_r+0x260>
  805710:	29801568 	cmpgeui	r6,r5,85
  805714:	3000191e 	bne	r6,zero,80577c <_free_r+0x2a8>
  805718:	100ad33a 	srli	r5,r2,12
  80571c:	29801bc4 	addi	r6,r5,111
  805720:	300c90fa 	slli	r6,r6,3
  805724:	29c01b84 	addi	r7,r5,110
  805728:	003fc706 	br	805648 <_free_r+0x174>
  80572c:	1145883a 	add	r2,r2,r5
  805730:	003fae06 	br	8055ec <_free_r+0x118>
  805734:	29801704 	addi	r6,r5,92
  805738:	300c90fa 	slli	r6,r6,3
  80573c:	29c016c4 	addi	r7,r5,91
  805740:	003fc106 	br	805648 <_free_r+0x174>
  805744:	20c00515 	stw	r3,20(r4)
  805748:	20c00415 	stw	r3,16(r4)
  80574c:	19c00315 	stw	r7,12(r3)
  805750:	19c00215 	stw	r7,8(r3)
  805754:	1a400115 	stw	r9,4(r3)
  805758:	40800015 	stw	r2,0(r8)
  80575c:	003f9706 	br	8055bc <_free_r+0xe8>
  805760:	380fd0ba 	srai	r7,r7,2
  805764:	00800044 	movi	r2,1
  805768:	22000117 	ldw	r8,4(r4)
  80576c:	11ce983a 	sll	r7,r2,r7
  805770:	3a0eb03a 	or	r7,r7,r8
  805774:	21c00115 	stw	r7,4(r4)
  805778:	003fbe06 	br	805674 <_free_r+0x1a0>
  80577c:	29805568 	cmpgeui	r6,r5,341
  805780:	3000051e 	bne	r6,zero,805798 <_free_r+0x2c4>
  805784:	100ad3fa 	srli	r5,r2,15
  805788:	29801e04 	addi	r6,r5,120
  80578c:	300c90fa 	slli	r6,r6,3
  805790:	29c01dc4 	addi	r7,r5,119
  805794:	003fac06 	br	805648 <_free_r+0x174>
  805798:	29415568 	cmpgeui	r5,r5,1365
  80579c:	2800051e 	bne	r5,zero,8057b4 <_free_r+0x2e0>
  8057a0:	100ad4ba 	srli	r5,r2,18
  8057a4:	29801f44 	addi	r6,r5,125
  8057a8:	300c90fa 	slli	r6,r6,3
  8057ac:	29c01f04 	addi	r7,r5,124
  8057b0:	003fa506 	br	805648 <_free_r+0x174>
  8057b4:	0180fe04 	movi	r6,1016
  8057b8:	01c01f84 	movi	r7,126
  8057bc:	003fa206 	br	805648 <_free_r+0x174>
  8057c0:	11000054 	ori	r4,r2,1
  8057c4:	19000115 	stw	r4,4(r3)
  8057c8:	30800015 	stw	r2,0(r6)
  8057cc:	003f7b06 	br	8055bc <_free_r+0xe8>

008057d0 <__sfvwrite_r>:
  8057d0:	30800217 	ldw	r2,8(r6)
  8057d4:	1000c826 	beq	r2,zero,805af8 <__sfvwrite_r+0x328>
  8057d8:	29c0030b 	ldhu	r7,12(r5)
  8057dc:	defff404 	addi	sp,sp,-48
  8057e0:	dd800815 	stw	r22,32(sp)
  8057e4:	dd400715 	stw	r21,28(sp)
  8057e8:	dc000215 	stw	r16,8(sp)
  8057ec:	dfc00b15 	stw	ra,44(sp)
  8057f0:	df000a15 	stw	fp,40(sp)
  8057f4:	ddc00915 	stw	r23,36(sp)
  8057f8:	dd000615 	stw	r20,24(sp)
  8057fc:	dcc00515 	stw	r19,20(sp)
  805800:	dc800415 	stw	r18,16(sp)
  805804:	dc400315 	stw	r17,12(sp)
  805808:	3880020c 	andi	r2,r7,8
  80580c:	302d883a 	mov	r22,r6
  805810:	202b883a 	mov	r21,r4
  805814:	2821883a 	mov	r16,r5
  805818:	10002226 	beq	r2,zero,8058a4 <__sfvwrite_r+0xd4>
  80581c:	28800417 	ldw	r2,16(r5)
  805820:	10002026 	beq	r2,zero,8058a4 <__sfvwrite_r+0xd4>
  805824:	3880008c 	andi	r2,r7,2
  805828:	b4400017 	ldw	r17,0(r22)
  80582c:	10002526 	beq	r2,zero,8058c4 <__sfvwrite_r+0xf4>
  805830:	80800917 	ldw	r2,36(r16)
  805834:	81400717 	ldw	r5,28(r16)
  805838:	05200034 	movhi	r20,32768
  80583c:	0027883a 	mov	r19,zero
  805840:	0025883a 	mov	r18,zero
  805844:	a53f0004 	addi	r20,r20,-1024
  805848:	980d883a 	mov	r6,r19
  80584c:	a809883a 	mov	r4,r21
  805850:	90001026 	beq	r18,zero,805894 <__sfvwrite_r+0xc4>
  805854:	900f883a 	mov	r7,r18
  805858:	a480012e 	bgeu	r20,r18,805860 <__sfvwrite_r+0x90>
  80585c:	a00f883a 	mov	r7,r20
  805860:	103ee83a 	callr	r2
  805864:	00809f0e 	bge	zero,r2,805ae4 <__sfvwrite_r+0x314>
  805868:	b1000217 	ldw	r4,8(r22)
  80586c:	98a7883a 	add	r19,r19,r2
  805870:	90a5c83a 	sub	r18,r18,r2
  805874:	2085c83a 	sub	r2,r4,r2
  805878:	b0800215 	stw	r2,8(r22)
  80587c:	10006326 	beq	r2,zero,805a0c <__sfvwrite_r+0x23c>
  805880:	80800917 	ldw	r2,36(r16)
  805884:	81400717 	ldw	r5,28(r16)
  805888:	980d883a 	mov	r6,r19
  80588c:	a809883a 	mov	r4,r21
  805890:	903ff01e 	bne	r18,zero,805854 <__sfvwrite_r+0x84>
  805894:	8cc00017 	ldw	r19,0(r17)
  805898:	8c800117 	ldw	r18,4(r17)
  80589c:	8c400204 	addi	r17,r17,8
  8058a0:	003fe906 	br	805848 <__sfvwrite_r+0x78>
  8058a4:	800b883a 	mov	r5,r16
  8058a8:	a809883a 	mov	r4,r21
  8058ac:	08032e80 	call	8032e8 <__swsetup_r>
  8058b0:	1000f81e 	bne	r2,zero,805c94 <__sfvwrite_r+0x4c4>
  8058b4:	81c0030b 	ldhu	r7,12(r16)
  8058b8:	b4400017 	ldw	r17,0(r22)
  8058bc:	3880008c 	andi	r2,r7,2
  8058c0:	103fdb1e 	bne	r2,zero,805830 <__sfvwrite_r+0x60>
  8058c4:	3880004c 	andi	r2,r7,1
  8058c8:	84800217 	ldw	r18,8(r16)
  8058cc:	82000017 	ldw	r8,0(r16)
  8058d0:	10008b1e 	bne	r2,zero,805b00 <__sfvwrite_r+0x330>
  8058d4:	00a00034 	movhi	r2,32768
  8058d8:	10bfff84 	addi	r2,r2,-2
  8058dc:	00e00034 	movhi	r3,32768
  8058e0:	d8800015 	stw	r2,0(sp)
  8058e4:	18bfffc4 	addi	r2,r3,-1
  8058e8:	0039883a 	mov	fp,zero
  8058ec:	0027883a 	mov	r19,zero
  8058f0:	d8800115 	stw	r2,4(sp)
  8058f4:	98004126 	beq	r19,zero,8059fc <__sfvwrite_r+0x22c>
  8058f8:	3880800c 	andi	r2,r7,512
  8058fc:	10009326 	beq	r2,zero,805b4c <__sfvwrite_r+0x37c>
  805900:	902f883a 	mov	r23,r18
  805904:	9c80ba36 	bltu	r19,r18,805bf0 <__sfvwrite_r+0x420>
  805908:	3881200c 	andi	r2,r7,1152
  80590c:	10002626 	beq	r2,zero,8059a8 <__sfvwrite_r+0x1d8>
  805910:	81800517 	ldw	r6,20(r16)
  805914:	81400417 	ldw	r5,16(r16)
  805918:	98800044 	addi	r2,r19,1
  80591c:	3189883a 	add	r4,r6,r6
  805920:	2189883a 	add	r4,r4,r6
  805924:	2028d7fa 	srli	r20,r4,31
  805928:	4165c83a 	sub	r18,r8,r5
  80592c:	1485883a 	add	r2,r2,r18
  805930:	a109883a 	add	r4,r20,r4
  805934:	2029d07a 	srai	r20,r4,1
  805938:	a00d883a 	mov	r6,r20
  80593c:	a080022e 	bgeu	r20,r2,805948 <__sfvwrite_r+0x178>
  805940:	1029883a 	mov	r20,r2
  805944:	100d883a 	mov	r6,r2
  805948:	39c1000c 	andi	r7,r7,1024
  80594c:	3800c126 	beq	r7,zero,805c54 <__sfvwrite_r+0x484>
  805950:	a809883a 	mov	r4,r21
  805954:	300b883a 	mov	r5,r6
  805958:	0805fd40 	call	805fd4 <_malloc_r>
  80595c:	1009883a 	mov	r4,r2
  805960:	1000c826 	beq	r2,zero,805c84 <__sfvwrite_r+0x4b4>
  805964:	81400417 	ldw	r5,16(r16)
  805968:	900d883a 	mov	r6,r18
  80596c:	08068880 	call	806888 <memcpy>
  805970:	1009883a 	mov	r4,r2
  805974:	8080030b 	ldhu	r2,12(r16)
  805978:	00fedfc4 	movi	r3,-1153
  80597c:	10c4703a 	and	r2,r2,r3
  805980:	10802014 	ori	r2,r2,128
  805984:	8080030d 	sth	r2,12(r16)
  805988:	2491883a 	add	r8,r4,r18
  80598c:	a485c83a 	sub	r2,r20,r18
  805990:	81000415 	stw	r4,16(r16)
  805994:	82000015 	stw	r8,0(r16)
  805998:	85000515 	stw	r20,20(r16)
  80599c:	9825883a 	mov	r18,r19
  8059a0:	80800215 	stw	r2,8(r16)
  8059a4:	982f883a 	mov	r23,r19
  8059a8:	4009883a 	mov	r4,r8
  8059ac:	b80d883a 	mov	r6,r23
  8059b0:	e00b883a 	mov	r5,fp
  8059b4:	08069880 	call	806988 <memmove>
  8059b8:	81000217 	ldw	r4,8(r16)
  8059bc:	80800017 	ldw	r2,0(r16)
  8059c0:	9829883a 	mov	r20,r19
  8059c4:	24a5c83a 	sub	r18,r4,r18
  8059c8:	15c5883a 	add	r2,r2,r23
  8059cc:	84800215 	stw	r18,8(r16)
  8059d0:	80800015 	stw	r2,0(r16)
  8059d4:	0027883a 	mov	r19,zero
  8059d8:	b0800217 	ldw	r2,8(r22)
  8059dc:	e539883a 	add	fp,fp,r20
  8059e0:	1529c83a 	sub	r20,r2,r20
  8059e4:	b5000215 	stw	r20,8(r22)
  8059e8:	a0000826 	beq	r20,zero,805a0c <__sfvwrite_r+0x23c>
  8059ec:	81c0030b 	ldhu	r7,12(r16)
  8059f0:	84800217 	ldw	r18,8(r16)
  8059f4:	82000017 	ldw	r8,0(r16)
  8059f8:	983fbf1e 	bne	r19,zero,8058f8 <__sfvwrite_r+0x128>
  8059fc:	8f000017 	ldw	fp,0(r17)
  805a00:	8cc00117 	ldw	r19,4(r17)
  805a04:	8c400204 	addi	r17,r17,8
  805a08:	003fba06 	br	8058f4 <__sfvwrite_r+0x124>
  805a0c:	0005883a 	mov	r2,zero
  805a10:	dfc00b17 	ldw	ra,44(sp)
  805a14:	df000a17 	ldw	fp,40(sp)
  805a18:	ddc00917 	ldw	r23,36(sp)
  805a1c:	dd800817 	ldw	r22,32(sp)
  805a20:	dd400717 	ldw	r21,28(sp)
  805a24:	dd000617 	ldw	r20,24(sp)
  805a28:	dcc00517 	ldw	r19,20(sp)
  805a2c:	dc800417 	ldw	r18,16(sp)
  805a30:	dc400317 	ldw	r17,12(sp)
  805a34:	dc000217 	ldw	r16,8(sp)
  805a38:	dec00c04 	addi	sp,sp,48
  805a3c:	f800283a 	ret
  805a40:	e1c07316 	blt	fp,r7,805c10 <__sfvwrite_r+0x440>
  805a44:	80800917 	ldw	r2,36(r16)
  805a48:	81400717 	ldw	r5,28(r16)
  805a4c:	b80d883a 	mov	r6,r23
  805a50:	a809883a 	mov	r4,r21
  805a54:	103ee83a 	callr	r2
  805a58:	1025883a 	mov	r18,r2
  805a5c:	0080210e 	bge	zero,r2,805ae4 <__sfvwrite_r+0x314>
  805a60:	a4a9c83a 	sub	r20,r20,r18
  805a64:	a0006526 	beq	r20,zero,805bfc <__sfvwrite_r+0x42c>
  805a68:	00800044 	movi	r2,1
  805a6c:	b1800217 	ldw	r6,8(r22)
  805a70:	bcaf883a 	add	r23,r23,r18
  805a74:	9ca7c83a 	sub	r19,r19,r18
  805a78:	34a5c83a 	sub	r18,r6,r18
  805a7c:	b4800215 	stw	r18,8(r22)
  805a80:	903fe226 	beq	r18,zero,805a0c <__sfvwrite_r+0x23c>
  805a84:	84800217 	ldw	r18,8(r16)
  805a88:	82000017 	ldw	r8,0(r16)
  805a8c:	98002126 	beq	r19,zero,805b14 <__sfvwrite_r+0x344>
  805a90:	10002426 	beq	r2,zero,805b24 <__sfvwrite_r+0x354>
  805a94:	a005883a 	mov	r2,r20
  805a98:	9839883a 	mov	fp,r19
  805a9c:	14c0012e 	bgeu	r2,r19,805aa4 <__sfvwrite_r+0x2d4>
  805aa0:	1039883a 	mov	fp,r2
  805aa4:	80800417 	ldw	r2,16(r16)
  805aa8:	81c00517 	ldw	r7,20(r16)
  805aac:	123fe42e 	bgeu	r2,r8,805a40 <__sfvwrite_r+0x270>
  805ab0:	3ca5883a 	add	r18,r7,r18
  805ab4:	973fe20e 	bge	r18,fp,805a40 <__sfvwrite_r+0x270>
  805ab8:	b80b883a 	mov	r5,r23
  805abc:	4009883a 	mov	r4,r8
  805ac0:	900d883a 	mov	r6,r18
  805ac4:	08069880 	call	806988 <memmove>
  805ac8:	80800017 	ldw	r2,0(r16)
  805acc:	800b883a 	mov	r5,r16
  805ad0:	a809883a 	mov	r4,r21
  805ad4:	1485883a 	add	r2,r2,r18
  805ad8:	80800015 	stw	r2,0(r16)
  805adc:	0804fdc0 	call	804fdc <_fflush_r>
  805ae0:	103fdf26 	beq	r2,zero,805a60 <__sfvwrite_r+0x290>
  805ae4:	8080030b 	ldhu	r2,12(r16)
  805ae8:	10801014 	ori	r2,r2,64
  805aec:	8080030d 	sth	r2,12(r16)
  805af0:	00bfffc4 	movi	r2,-1
  805af4:	003fc606 	br	805a10 <__sfvwrite_r+0x240>
  805af8:	0005883a 	mov	r2,zero
  805afc:	f800283a 	ret
  805b00:	0027883a 	mov	r19,zero
  805b04:	0029883a 	mov	r20,zero
  805b08:	0005883a 	mov	r2,zero
  805b0c:	002f883a 	mov	r23,zero
  805b10:	983fdf1e 	bne	r19,zero,805a90 <__sfvwrite_r+0x2c0>
  805b14:	8cc00117 	ldw	r19,4(r17)
  805b18:	8dc00017 	ldw	r23,0(r17)
  805b1c:	8c400204 	addi	r17,r17,8
  805b20:	983ffc26 	beq	r19,zero,805b14 <__sfvwrite_r+0x344>
  805b24:	980d883a 	mov	r6,r19
  805b28:	01400284 	movi	r5,10
  805b2c:	b809883a 	mov	r4,r23
  805b30:	da000015 	stw	r8,0(sp)
  805b34:	08067b40 	call	8067b4 <memchr>
  805b38:	da000017 	ldw	r8,0(sp)
  805b3c:	10004226 	beq	r2,zero,805c48 <__sfvwrite_r+0x478>
  805b40:	10800044 	addi	r2,r2,1
  805b44:	15e9c83a 	sub	r20,r2,r23
  805b48:	003fd206 	br	805a94 <__sfvwrite_r+0x2c4>
  805b4c:	80800417 	ldw	r2,16(r16)
  805b50:	12001436 	bltu	r2,r8,805ba4 <__sfvwrite_r+0x3d4>
  805b54:	85000517 	ldw	r20,20(r16)
  805b58:	9d001236 	bltu	r19,r20,805ba4 <__sfvwrite_r+0x3d4>
  805b5c:	d8800017 	ldw	r2,0(sp)
  805b60:	14c0372e 	bgeu	r2,r19,805c40 <__sfvwrite_r+0x470>
  805b64:	d9000117 	ldw	r4,4(sp)
  805b68:	a00b883a 	mov	r5,r20
  805b6c:	080b2f00 	call	80b2f0 <__divsi3>
  805b70:	a00b883a 	mov	r5,r20
  805b74:	1009883a 	mov	r4,r2
  805b78:	0800f1c0 	call	800f1c <__mulsi3>
  805b7c:	82000917 	ldw	r8,36(r16)
  805b80:	81400717 	ldw	r5,28(r16)
  805b84:	100f883a 	mov	r7,r2
  805b88:	e00d883a 	mov	r6,fp
  805b8c:	a809883a 	mov	r4,r21
  805b90:	403ee83a 	callr	r8
  805b94:	1029883a 	mov	r20,r2
  805b98:	00bfd20e 	bge	zero,r2,805ae4 <__sfvwrite_r+0x314>
  805b9c:	9d27c83a 	sub	r19,r19,r20
  805ba0:	003f8d06 	br	8059d8 <__sfvwrite_r+0x208>
  805ba4:	9029883a 	mov	r20,r18
  805ba8:	9c80012e 	bgeu	r19,r18,805bb0 <__sfvwrite_r+0x3e0>
  805bac:	9829883a 	mov	r20,r19
  805bb0:	4009883a 	mov	r4,r8
  805bb4:	a00d883a 	mov	r6,r20
  805bb8:	e00b883a 	mov	r5,fp
  805bbc:	08069880 	call	806988 <memmove>
  805bc0:	80800217 	ldw	r2,8(r16)
  805bc4:	81000017 	ldw	r4,0(r16)
  805bc8:	1505c83a 	sub	r2,r2,r20
  805bcc:	2509883a 	add	r4,r4,r20
  805bd0:	80800215 	stw	r2,8(r16)
  805bd4:	81000015 	stw	r4,0(r16)
  805bd8:	103ff01e 	bne	r2,zero,805b9c <__sfvwrite_r+0x3cc>
  805bdc:	800b883a 	mov	r5,r16
  805be0:	a809883a 	mov	r4,r21
  805be4:	0804fdc0 	call	804fdc <_fflush_r>
  805be8:	103fec26 	beq	r2,zero,805b9c <__sfvwrite_r+0x3cc>
  805bec:	003fbd06 	br	805ae4 <__sfvwrite_r+0x314>
  805bf0:	9825883a 	mov	r18,r19
  805bf4:	982f883a 	mov	r23,r19
  805bf8:	003f6b06 	br	8059a8 <__sfvwrite_r+0x1d8>
  805bfc:	800b883a 	mov	r5,r16
  805c00:	a809883a 	mov	r4,r21
  805c04:	0804fdc0 	call	804fdc <_fflush_r>
  805c08:	103f9826 	beq	r2,zero,805a6c <__sfvwrite_r+0x29c>
  805c0c:	003fb506 	br	805ae4 <__sfvwrite_r+0x314>
  805c10:	e00d883a 	mov	r6,fp
  805c14:	b80b883a 	mov	r5,r23
  805c18:	4009883a 	mov	r4,r8
  805c1c:	08069880 	call	806988 <memmove>
  805c20:	80800217 	ldw	r2,8(r16)
  805c24:	81800017 	ldw	r6,0(r16)
  805c28:	e025883a 	mov	r18,fp
  805c2c:	1705c83a 	sub	r2,r2,fp
  805c30:	370d883a 	add	r6,r6,fp
  805c34:	80800215 	stw	r2,8(r16)
  805c38:	81800015 	stw	r6,0(r16)
  805c3c:	003f8806 	br	805a60 <__sfvwrite_r+0x290>
  805c40:	9809883a 	mov	r4,r19
  805c44:	003fc806 	br	805b68 <__sfvwrite_r+0x398>
  805c48:	98800044 	addi	r2,r19,1
  805c4c:	1029883a 	mov	r20,r2
  805c50:	003f9106 	br	805a98 <__sfvwrite_r+0x2c8>
  805c54:	a809883a 	mov	r4,r21
  805c58:	0807cdc0 	call	807cdc <_realloc_r>
  805c5c:	1009883a 	mov	r4,r2
  805c60:	103f491e 	bne	r2,zero,805988 <__sfvwrite_r+0x1b8>
  805c64:	81400417 	ldw	r5,16(r16)
  805c68:	a809883a 	mov	r4,r21
  805c6c:	08054d40 	call	8054d4 <_free_r>
  805c70:	8080030b 	ldhu	r2,12(r16)
  805c74:	00c00304 	movi	r3,12
  805c78:	a8c00015 	stw	r3,0(r21)
  805c7c:	10bfdfcc 	andi	r2,r2,65407
  805c80:	003f9906 	br	805ae8 <__sfvwrite_r+0x318>
  805c84:	00c00304 	movi	r3,12
  805c88:	8080030b 	ldhu	r2,12(r16)
  805c8c:	a8c00015 	stw	r3,0(r21)
  805c90:	003f9506 	br	805ae8 <__sfvwrite_r+0x318>
  805c94:	00bfffc4 	movi	r2,-1
  805c98:	003f5d06 	br	805a10 <__sfvwrite_r+0x240>

00805c9c <_fwalk>:
  805c9c:	defffa04 	addi	sp,sp,-24
  805ca0:	dd000415 	stw	r20,16(sp)
  805ca4:	dcc00315 	stw	r19,12(sp)
  805ca8:	dc800215 	stw	r18,8(sp)
  805cac:	dfc00515 	stw	ra,20(sp)
  805cb0:	dc400115 	stw	r17,4(sp)
  805cb4:	dc000015 	stw	r16,0(sp)
  805cb8:	2827883a 	mov	r19,r5
  805cbc:	2480b804 	addi	r18,r4,736
  805cc0:	0029883a 	mov	r20,zero
  805cc4:	94400117 	ldw	r17,4(r18)
  805cc8:	94000217 	ldw	r16,8(r18)
  805ccc:	8c7fffc4 	addi	r17,r17,-1
  805cd0:	88000d16 	blt	r17,zero,805d08 <_fwalk+0x6c>
  805cd4:	8080030b 	ldhu	r2,12(r16)
  805cd8:	8c7fffc4 	addi	r17,r17,-1
  805cdc:	108000b0 	cmpltui	r2,r2,2
  805ce0:	1000061e 	bne	r2,zero,805cfc <_fwalk+0x60>
  805ce4:	8080038f 	ldh	r2,14(r16)
  805ce8:	8009883a 	mov	r4,r16
  805cec:	10bfffe0 	cmpeqi	r2,r2,-1
  805cf0:	1000021e 	bne	r2,zero,805cfc <_fwalk+0x60>
  805cf4:	983ee83a 	callr	r19
  805cf8:	a0a8b03a 	or	r20,r20,r2
  805cfc:	88bfffd8 	cmpnei	r2,r17,-1
  805d00:	84001a04 	addi	r16,r16,104
  805d04:	103ff31e 	bne	r2,zero,805cd4 <_fwalk+0x38>
  805d08:	94800017 	ldw	r18,0(r18)
  805d0c:	903fed1e 	bne	r18,zero,805cc4 <_fwalk+0x28>
  805d10:	a005883a 	mov	r2,r20
  805d14:	dfc00517 	ldw	ra,20(sp)
  805d18:	dd000417 	ldw	r20,16(sp)
  805d1c:	dcc00317 	ldw	r19,12(sp)
  805d20:	dc800217 	ldw	r18,8(sp)
  805d24:	dc400117 	ldw	r17,4(sp)
  805d28:	dc000017 	ldw	r16,0(sp)
  805d2c:	dec00604 	addi	sp,sp,24
  805d30:	f800283a 	ret

00805d34 <_fwalk_reent>:
  805d34:	defff904 	addi	sp,sp,-28
  805d38:	dd400515 	stw	r21,20(sp)
  805d3c:	dd000415 	stw	r20,16(sp)
  805d40:	dcc00315 	stw	r19,12(sp)
  805d44:	dc800215 	stw	r18,8(sp)
  805d48:	dfc00615 	stw	ra,24(sp)
  805d4c:	dc400115 	stw	r17,4(sp)
  805d50:	dc000015 	stw	r16,0(sp)
  805d54:	202b883a 	mov	r21,r4
  805d58:	2827883a 	mov	r19,r5
  805d5c:	2480b804 	addi	r18,r4,736
  805d60:	0029883a 	mov	r20,zero
  805d64:	94400117 	ldw	r17,4(r18)
  805d68:	94000217 	ldw	r16,8(r18)
  805d6c:	8c7fffc4 	addi	r17,r17,-1
  805d70:	88000e16 	blt	r17,zero,805dac <_fwalk_reent+0x78>
  805d74:	8080030b 	ldhu	r2,12(r16)
  805d78:	8c7fffc4 	addi	r17,r17,-1
  805d7c:	108000b0 	cmpltui	r2,r2,2
  805d80:	1000071e 	bne	r2,zero,805da0 <_fwalk_reent+0x6c>
  805d84:	8080038f 	ldh	r2,14(r16)
  805d88:	800b883a 	mov	r5,r16
  805d8c:	a809883a 	mov	r4,r21
  805d90:	10bfffe0 	cmpeqi	r2,r2,-1
  805d94:	1000021e 	bne	r2,zero,805da0 <_fwalk_reent+0x6c>
  805d98:	983ee83a 	callr	r19
  805d9c:	a0a8b03a 	or	r20,r20,r2
  805da0:	88bfffd8 	cmpnei	r2,r17,-1
  805da4:	84001a04 	addi	r16,r16,104
  805da8:	103ff21e 	bne	r2,zero,805d74 <_fwalk_reent+0x40>
  805dac:	94800017 	ldw	r18,0(r18)
  805db0:	903fec1e 	bne	r18,zero,805d64 <_fwalk_reent+0x30>
  805db4:	a005883a 	mov	r2,r20
  805db8:	dfc00617 	ldw	ra,24(sp)
  805dbc:	dd400517 	ldw	r21,20(sp)
  805dc0:	dd000417 	ldw	r20,16(sp)
  805dc4:	dcc00317 	ldw	r19,12(sp)
  805dc8:	dc800217 	ldw	r18,8(sp)
  805dcc:	dc400117 	ldw	r17,4(sp)
  805dd0:	dc000017 	ldw	r16,0(sp)
  805dd4:	dec00704 	addi	sp,sp,28
  805dd8:	f800283a 	ret

00805ddc <__localeconv_l>:
  805ddc:	20803c04 	addi	r2,r4,240
  805de0:	f800283a 	ret

00805de4 <_localeconv_r>:
  805de4:	00802074 	movhi	r2,129
  805de8:	10853f04 	addi	r2,r2,5372
  805dec:	f800283a 	ret

00805df0 <localeconv>:
  805df0:	00802074 	movhi	r2,129
  805df4:	10853f04 	addi	r2,r2,5372
  805df8:	f800283a 	ret

00805dfc <__swhatbuf_r>:
  805dfc:	deffea04 	addi	sp,sp,-88
  805e00:	dc001215 	stw	r16,72(sp)
  805e04:	2821883a 	mov	r16,r5
  805e08:	2940038f 	ldh	r5,14(r5)
  805e0c:	dc801415 	stw	r18,80(sp)
  805e10:	dc401315 	stw	r17,76(sp)
  805e14:	dfc01515 	stw	ra,84(sp)
  805e18:	3023883a 	mov	r17,r6
  805e1c:	3825883a 	mov	r18,r7
  805e20:	28001016 	blt	r5,zero,805e64 <__swhatbuf_r+0x68>
  805e24:	d80d883a 	mov	r6,sp
  805e28:	0809e2c0 	call	809e2c <_fstat_r>
  805e2c:	10000d16 	blt	r2,zero,805e64 <__swhatbuf_r+0x68>
  805e30:	d8c00117 	ldw	r3,4(sp)
  805e34:	00820004 	movi	r2,2048
  805e38:	18fc000c 	andi	r3,r3,61440
  805e3c:	18c80020 	cmpeqi	r3,r3,8192
  805e40:	90c00015 	stw	r3,0(r18)
  805e44:	00c10004 	movi	r3,1024
  805e48:	88c00015 	stw	r3,0(r17)
  805e4c:	dfc01517 	ldw	ra,84(sp)
  805e50:	dc801417 	ldw	r18,80(sp)
  805e54:	dc401317 	ldw	r17,76(sp)
  805e58:	dc001217 	ldw	r16,72(sp)
  805e5c:	dec01604 	addi	sp,sp,88
  805e60:	f800283a 	ret
  805e64:	8080030b 	ldhu	r2,12(r16)
  805e68:	90000015 	stw	zero,0(r18)
  805e6c:	1080200c 	andi	r2,r2,128
  805e70:	10000426 	beq	r2,zero,805e84 <__swhatbuf_r+0x88>
  805e74:	00801004 	movi	r2,64
  805e78:	88800015 	stw	r2,0(r17)
  805e7c:	0005883a 	mov	r2,zero
  805e80:	003ff206 	br	805e4c <__swhatbuf_r+0x50>
  805e84:	00810004 	movi	r2,1024
  805e88:	88800015 	stw	r2,0(r17)
  805e8c:	0005883a 	mov	r2,zero
  805e90:	003fee06 	br	805e4c <__swhatbuf_r+0x50>

00805e94 <__smakebuf_r>:
  805e94:	2880030b 	ldhu	r2,12(r5)
  805e98:	defffa04 	addi	sp,sp,-24
  805e9c:	dc000215 	stw	r16,8(sp)
  805ea0:	dfc00515 	stw	ra,20(sp)
  805ea4:	dc800415 	stw	r18,16(sp)
  805ea8:	dc400315 	stw	r17,12(sp)
  805eac:	1080008c 	andi	r2,r2,2
  805eb0:	2821883a 	mov	r16,r5
  805eb4:	10000b26 	beq	r2,zero,805ee4 <__smakebuf_r+0x50>
  805eb8:	288010c4 	addi	r2,r5,67
  805ebc:	28800015 	stw	r2,0(r5)
  805ec0:	28800415 	stw	r2,16(r5)
  805ec4:	00800044 	movi	r2,1
  805ec8:	28800515 	stw	r2,20(r5)
  805ecc:	dfc00517 	ldw	ra,20(sp)
  805ed0:	dc800417 	ldw	r18,16(sp)
  805ed4:	dc400317 	ldw	r17,12(sp)
  805ed8:	dc000217 	ldw	r16,8(sp)
  805edc:	dec00604 	addi	sp,sp,24
  805ee0:	f800283a 	ret
  805ee4:	d9c00104 	addi	r7,sp,4
  805ee8:	d80d883a 	mov	r6,sp
  805eec:	2023883a 	mov	r17,r4
  805ef0:	0805dfc0 	call	805dfc <__swhatbuf_r>
  805ef4:	d9000117 	ldw	r4,4(sp)
  805ef8:	1025883a 	mov	r18,r2
  805efc:	2000131e 	bne	r4,zero,805f4c <__smakebuf_r+0xb8>
  805f00:	d9400017 	ldw	r5,0(sp)
  805f04:	8809883a 	mov	r4,r17
  805f08:	0805fd40 	call	805fd4 <_malloc_r>
  805f0c:	10001c26 	beq	r2,zero,805f80 <__smakebuf_r+0xec>
  805f10:	01002034 	movhi	r4,128
  805f14:	21141b04 	addi	r4,r4,20588
  805f18:	80c0030b 	ldhu	r3,12(r16)
  805f1c:	89000f15 	stw	r4,60(r17)
  805f20:	80800015 	stw	r2,0(r16)
  805f24:	80800415 	stw	r2,16(r16)
  805f28:	d8800017 	ldw	r2,0(sp)
  805f2c:	d9400117 	ldw	r5,4(sp)
  805f30:	18c02014 	ori	r3,r3,128
  805f34:	80c0030d 	sth	r3,12(r16)
  805f38:	80800515 	stw	r2,20(r16)
  805f3c:	28001d1e 	bne	r5,zero,805fb4 <__smakebuf_r+0x120>
  805f40:	90c6b03a 	or	r3,r18,r3
  805f44:	80c0030d 	sth	r3,12(r16)
  805f48:	003fe006 	br	805ecc <__smakebuf_r+0x38>
  805f4c:	8140038f 	ldh	r5,14(r16)
  805f50:	8809883a 	mov	r4,r17
  805f54:	0809e8c0 	call	809e8c <_isatty_r>
  805f58:	103fe926 	beq	r2,zero,805f00 <__smakebuf_r+0x6c>
  805f5c:	8080030b 	ldhu	r2,12(r16)
  805f60:	80c010c4 	addi	r3,r16,67
  805f64:	80c00015 	stw	r3,0(r16)
  805f68:	10800054 	ori	r2,r2,1
  805f6c:	8080030d 	sth	r2,12(r16)
  805f70:	00800044 	movi	r2,1
  805f74:	80c00415 	stw	r3,16(r16)
  805f78:	80800515 	stw	r2,20(r16)
  805f7c:	003fe006 	br	805f00 <__smakebuf_r+0x6c>
  805f80:	8080030b 	ldhu	r2,12(r16)
  805f84:	10c0800c 	andi	r3,r2,512
  805f88:	183fd01e 	bne	r3,zero,805ecc <__smakebuf_r+0x38>
  805f8c:	00ffff04 	movi	r3,-4
  805f90:	10c4703a 	and	r2,r2,r3
  805f94:	10800094 	ori	r2,r2,2
  805f98:	80c010c4 	addi	r3,r16,67
  805f9c:	8080030d 	sth	r2,12(r16)
  805fa0:	00800044 	movi	r2,1
  805fa4:	80c00015 	stw	r3,0(r16)
  805fa8:	80c00415 	stw	r3,16(r16)
  805fac:	80800515 	stw	r2,20(r16)
  805fb0:	003fc606 	br	805ecc <__smakebuf_r+0x38>
  805fb4:	8140038f 	ldh	r5,14(r16)
  805fb8:	8809883a 	mov	r4,r17
  805fbc:	0809e8c0 	call	809e8c <_isatty_r>
  805fc0:	80c0030b 	ldhu	r3,12(r16)
  805fc4:	103fde26 	beq	r2,zero,805f40 <__smakebuf_r+0xac>
  805fc8:	18ffff0c 	andi	r3,r3,65532
  805fcc:	18c00054 	ori	r3,r3,1
  805fd0:	003fdb06 	br	805f40 <__smakebuf_r+0xac>

00805fd4 <_malloc_r>:
  805fd4:	defff604 	addi	sp,sp,-40
  805fd8:	dc400115 	stw	r17,4(sp)
  805fdc:	2c4002c4 	addi	r17,r5,11
  805fe0:	dc800215 	stw	r18,8(sp)
  805fe4:	dfc00915 	stw	ra,36(sp)
  805fe8:	df000815 	stw	fp,32(sp)
  805fec:	ddc00715 	stw	r23,28(sp)
  805ff0:	dd800615 	stw	r22,24(sp)
  805ff4:	dd400515 	stw	r21,20(sp)
  805ff8:	dd000415 	stw	r20,16(sp)
  805ffc:	dcc00315 	stw	r19,12(sp)
  806000:	dc000015 	stw	r16,0(sp)
  806004:	888005e8 	cmpgeui	r2,r17,23
  806008:	2025883a 	mov	r18,r4
  80600c:	10001b1e 	bne	r2,zero,80607c <_malloc_r+0xa8>
  806010:	29400468 	cmpgeui	r5,r5,17
  806014:	2800821e 	bne	r5,zero,806220 <_malloc_r+0x24c>
  806018:	080e3880 	call	80e388 <__malloc_lock>
  80601c:	04400404 	movi	r17,16
  806020:	01c00084 	movi	r7,2
  806024:	00800604 	movi	r2,24
  806028:	04c02074 	movhi	r19,129
  80602c:	9cc40104 	addi	r19,r19,4100
  806030:	9885883a 	add	r2,r19,r2
  806034:	14000117 	ldw	r16,4(r2)
  806038:	10fffe04 	addi	r3,r2,-8
  80603c:	80c08b26 	beq	r16,r3,80626c <_malloc_r+0x298>
  806040:	80800117 	ldw	r2,4(r16)
  806044:	81000317 	ldw	r4,12(r16)
  806048:	00ffff04 	movi	r3,-4
  80604c:	10c4703a 	and	r2,r2,r3
  806050:	81400217 	ldw	r5,8(r16)
  806054:	8085883a 	add	r2,r16,r2
  806058:	10c00117 	ldw	r3,4(r2)
  80605c:	29000315 	stw	r4,12(r5)
  806060:	21400215 	stw	r5,8(r4)
  806064:	18c00054 	ori	r3,r3,1
  806068:	10c00115 	stw	r3,4(r2)
  80606c:	9009883a 	mov	r4,r18
  806070:	080e3ac0 	call	80e3ac <__malloc_unlock>
  806074:	80800204 	addi	r2,r16,8
  806078:	00006c06 	br	80622c <_malloc_r+0x258>
  80607c:	00bffe04 	movi	r2,-8
  806080:	88a2703a 	and	r17,r17,r2
  806084:	88006616 	blt	r17,zero,806220 <_malloc_r+0x24c>
  806088:	89406536 	bltu	r17,r5,806220 <_malloc_r+0x24c>
  80608c:	080e3880 	call	80e388 <__malloc_lock>
  806090:	88807e28 	cmpgeui	r2,r17,504
  806094:	10012226 	beq	r2,zero,806520 <_malloc_r+0x54c>
  806098:	8804d27a 	srli	r2,r17,9
  80609c:	10006f26 	beq	r2,zero,80625c <_malloc_r+0x288>
  8060a0:	10c00168 	cmpgeui	r3,r2,5
  8060a4:	1800fe1e 	bne	r3,zero,8064a0 <_malloc_r+0x4cc>
  8060a8:	8804d1ba 	srli	r2,r17,6
  8060ac:	11c00e44 	addi	r7,r2,57
  8060b0:	380890fa 	slli	r4,r7,3
  8060b4:	12000e04 	addi	r8,r2,56
  8060b8:	04c02074 	movhi	r19,129
  8060bc:	9cc40104 	addi	r19,r19,4100
  8060c0:	9909883a 	add	r4,r19,r4
  8060c4:	24000117 	ldw	r16,4(r4)
  8060c8:	213ffe04 	addi	r4,r4,-8
  8060cc:	24000b26 	beq	r4,r16,8060fc <_malloc_r+0x128>
  8060d0:	01bfff04 	movi	r6,-4
  8060d4:	00000306 	br	8060e4 <_malloc_r+0x110>
  8060d8:	1800d60e 	bge	r3,zero,806434 <_malloc_r+0x460>
  8060dc:	84000317 	ldw	r16,12(r16)
  8060e0:	24000626 	beq	r4,r16,8060fc <_malloc_r+0x128>
  8060e4:	80800117 	ldw	r2,4(r16)
  8060e8:	1184703a 	and	r2,r2,r6
  8060ec:	1447c83a 	sub	r3,r2,r17
  8060f0:	19400408 	cmpgei	r5,r3,16
  8060f4:	283ff826 	beq	r5,zero,8060d8 <_malloc_r+0x104>
  8060f8:	400f883a 	mov	r7,r8
  8060fc:	9c000417 	ldw	r16,16(r19)
  806100:	02402074 	movhi	r9,129
  806104:	4a440304 	addi	r9,r9,4108
  806108:	82405f26 	beq	r16,r9,806288 <_malloc_r+0x2b4>
  80610c:	80c00117 	ldw	r3,4(r16)
  806110:	00bfff04 	movi	r2,-4
  806114:	1884703a 	and	r2,r3,r2
  806118:	1447c83a 	sub	r3,r2,r17
  80611c:	19000410 	cmplti	r4,r3,16
  806120:	20010a26 	beq	r4,zero,80654c <_malloc_r+0x578>
  806124:	9a400515 	stw	r9,20(r19)
  806128:	9a400415 	stw	r9,16(r19)
  80612c:	1800ff0e 	bge	r3,zero,80652c <_malloc_r+0x558>
  806130:	10c08028 	cmpgeui	r3,r2,512
  806134:	1800c11e 	bne	r3,zero,80643c <_malloc_r+0x468>
  806138:	1006d0fa 	srli	r3,r2,3
  80613c:	1008d17a 	srli	r4,r2,5
  806140:	00800044 	movi	r2,1
  806144:	18c00044 	addi	r3,r3,1
  806148:	180690fa 	slli	r3,r3,3
  80614c:	99400117 	ldw	r5,4(r19)
  806150:	1104983a 	sll	r2,r2,r4
  806154:	98c7883a 	add	r3,r19,r3
  806158:	19000017 	ldw	r4,0(r3)
  80615c:	1144b03a 	or	r2,r2,r5
  806160:	197ffe04 	addi	r5,r3,-8
  806164:	81400315 	stw	r5,12(r16)
  806168:	81000215 	stw	r4,8(r16)
  80616c:	98800115 	stw	r2,4(r19)
  806170:	1c000015 	stw	r16,0(r3)
  806174:	24000315 	stw	r16,12(r4)
  806178:	3807d0ba 	srai	r3,r7,2
  80617c:	01000044 	movi	r4,1
  806180:	20c8983a 	sll	r4,r4,r3
  806184:	11004536 	bltu	r2,r4,80629c <_malloc_r+0x2c8>
  806188:	2086703a 	and	r3,r4,r2
  80618c:	18000a1e 	bne	r3,zero,8061b8 <_malloc_r+0x1e4>
  806190:	00ffff04 	movi	r3,-4
  806194:	2109883a 	add	r4,r4,r4
  806198:	38ce703a 	and	r7,r7,r3
  80619c:	2086703a 	and	r3,r4,r2
  8061a0:	39c00104 	addi	r7,r7,4
  8061a4:	1800041e 	bne	r3,zero,8061b8 <_malloc_r+0x1e4>
  8061a8:	2109883a 	add	r4,r4,r4
  8061ac:	2086703a 	and	r3,r4,r2
  8061b0:	39c00104 	addi	r7,r7,4
  8061b4:	183ffc26 	beq	r3,zero,8061a8 <_malloc_r+0x1d4>
  8061b8:	02bfff04 	movi	r10,-4
  8061bc:	381690fa 	slli	r11,r7,3
  8061c0:	3819883a 	mov	r12,r7
  8061c4:	9ad7883a 	add	r11,r19,r11
  8061c8:	5811883a 	mov	r8,r11
  8061cc:	40800317 	ldw	r2,12(r8)
  8061d0:	4080bc26 	beq	r8,r2,8064c4 <_malloc_r+0x4f0>
  8061d4:	10c00117 	ldw	r3,4(r2)
  8061d8:	1021883a 	mov	r16,r2
  8061dc:	10800317 	ldw	r2,12(r2)
  8061e0:	1a86703a 	and	r3,r3,r10
  8061e4:	1c4bc83a 	sub	r5,r3,r17
  8061e8:	29800410 	cmplti	r6,r5,16
  8061ec:	3000ba26 	beq	r6,zero,8064d8 <_malloc_r+0x504>
  8061f0:	283ff716 	blt	r5,zero,8061d0 <_malloc_r+0x1fc>
  8061f4:	80c7883a 	add	r3,r16,r3
  8061f8:	19400117 	ldw	r5,4(r3)
  8061fc:	81800217 	ldw	r6,8(r16)
  806200:	9009883a 	mov	r4,r18
  806204:	29400054 	ori	r5,r5,1
  806208:	19400115 	stw	r5,4(r3)
  80620c:	30800315 	stw	r2,12(r6)
  806210:	11800215 	stw	r6,8(r2)
  806214:	080e3ac0 	call	80e3ac <__malloc_unlock>
  806218:	80800204 	addi	r2,r16,8
  80621c:	00000306 	br	80622c <_malloc_r+0x258>
  806220:	00800304 	movi	r2,12
  806224:	90800015 	stw	r2,0(r18)
  806228:	0005883a 	mov	r2,zero
  80622c:	dfc00917 	ldw	ra,36(sp)
  806230:	df000817 	ldw	fp,32(sp)
  806234:	ddc00717 	ldw	r23,28(sp)
  806238:	dd800617 	ldw	r22,24(sp)
  80623c:	dd400517 	ldw	r21,20(sp)
  806240:	dd000417 	ldw	r20,16(sp)
  806244:	dcc00317 	ldw	r19,12(sp)
  806248:	dc800217 	ldw	r18,8(sp)
  80624c:	dc400117 	ldw	r17,4(sp)
  806250:	dc000017 	ldw	r16,0(sp)
  806254:	dec00a04 	addi	sp,sp,40
  806258:	f800283a 	ret
  80625c:	01008004 	movi	r4,512
  806260:	01c01004 	movi	r7,64
  806264:	02000fc4 	movi	r8,63
  806268:	003f9306 	br	8060b8 <_malloc_r+0xe4>
  80626c:	14000317 	ldw	r16,12(r2)
  806270:	39c00084 	addi	r7,r7,2
  806274:	143f721e 	bne	r2,r16,806040 <_malloc_r+0x6c>
  806278:	9c000417 	ldw	r16,16(r19)
  80627c:	02402074 	movhi	r9,129
  806280:	4a440304 	addi	r9,r9,4108
  806284:	827fa11e 	bne	r16,r9,80610c <_malloc_r+0x138>
  806288:	3807d0ba 	srai	r3,r7,2
  80628c:	01000044 	movi	r4,1
  806290:	98800117 	ldw	r2,4(r19)
  806294:	20c8983a 	sll	r4,r4,r3
  806298:	113fbb2e 	bgeu	r2,r4,806188 <_malloc_r+0x1b4>
  80629c:	9c000217 	ldw	r16,8(r19)
  8062a0:	00bfff04 	movi	r2,-4
  8062a4:	85400117 	ldw	r21,4(r16)
  8062a8:	a8ac703a 	and	r22,r21,r2
  8062ac:	b4400336 	bltu	r22,r17,8062bc <_malloc_r+0x2e8>
  8062b0:	b445c83a 	sub	r2,r22,r17
  8062b4:	10c00408 	cmpgei	r3,r2,16
  8062b8:	1800541e 	bne	r3,zero,80640c <_malloc_r+0x438>
  8062bc:	00802074 	movhi	r2,129
  8062c0:	1089e217 	ldw	r2,10120(r2)
  8062c4:	00c02074 	movhi	r3,129
  8062c8:	1d50e617 	ldw	r21,17304(r3)
  8062cc:	10bfffd8 	cmpnei	r2,r2,-1
  8062d0:	85b9883a 	add	fp,r16,r22
  8062d4:	8d6b883a 	add	r21,r17,r21
  8062d8:	1000d626 	beq	r2,zero,806634 <_malloc_r+0x660>
  8062dc:	ad4403c4 	addi	r21,r21,4111
  8062e0:	00bc0004 	movi	r2,-4096
  8062e4:	a8aa703a 	and	r21,r21,r2
  8062e8:	a80b883a 	mov	r5,r21
  8062ec:	9009883a 	mov	r4,r18
  8062f0:	08082400 	call	808240 <_sbrk_r>
  8062f4:	102f883a 	mov	r23,r2
  8062f8:	10bfffd8 	cmpnei	r2,r2,-1
  8062fc:	1000a826 	beq	r2,zero,8065a0 <_malloc_r+0x5cc>
  806300:	bf00a636 	bltu	r23,fp,80659c <_malloc_r+0x5c8>
  806304:	00802074 	movhi	r2,129
  806308:	1510f017 	ldw	r20,17344(r2)
  80630c:	ad29883a 	add	r20,r21,r20
  806310:	1510f015 	stw	r20,17344(r2)
  806314:	a007883a 	mov	r3,r20
  806318:	e5c0ec26 	beq	fp,r23,8066cc <_malloc_r+0x6f8>
  80631c:	00802074 	movhi	r2,129
  806320:	1089e217 	ldw	r2,10120(r2)
  806324:	10bfffd8 	cmpnei	r2,r2,-1
  806328:	1000ef26 	beq	r2,zero,8066e8 <_malloc_r+0x714>
  80632c:	bf39c83a 	sub	fp,r23,fp
  806330:	e0c7883a 	add	r3,fp,r3
  806334:	00802074 	movhi	r2,129
  806338:	10d0f015 	stw	r3,17344(r2)
  80633c:	bf0001cc 	andi	fp,r23,7
  806340:	e000c526 	beq	fp,zero,806658 <_malloc_r+0x684>
  806344:	bf2fc83a 	sub	r23,r23,fp
  806348:	bdc00204 	addi	r23,r23,8
  80634c:	05040204 	movi	r20,4104
  806350:	a729c83a 	sub	r20,r20,fp
  806354:	bd6b883a 	add	r21,r23,r21
  806358:	a569c83a 	sub	r20,r20,r21
  80635c:	a503ffcc 	andi	r20,r20,4095
  806360:	a00b883a 	mov	r5,r20
  806364:	9009883a 	mov	r4,r18
  806368:	08082400 	call	808240 <_sbrk_r>
  80636c:	10ffffe0 	cmpeqi	r3,r2,-1
  806370:	1800f31e 	bne	r3,zero,806740 <_malloc_r+0x76c>
  806374:	15c5c83a 	sub	r2,r2,r23
  806378:	152b883a 	add	r21,r2,r20
  80637c:	00802074 	movhi	r2,129
  806380:	1150f017 	ldw	r5,17344(r2)
  806384:	9dc00215 	stw	r23,8(r19)
  806388:	ad400054 	ori	r21,r21,1
  80638c:	a169883a 	add	r20,r20,r5
  806390:	1510f015 	stw	r20,17344(r2)
  806394:	bd400115 	stw	r21,4(r23)
  806398:	84c0d626 	beq	r16,r19,8066f4 <_malloc_r+0x720>
  80639c:	b0800428 	cmpgeui	r2,r22,16
  8063a0:	1000d626 	beq	r2,zero,8066fc <_malloc_r+0x728>
  8063a4:	80c00117 	ldw	r3,4(r16)
  8063a8:	013ffe04 	movi	r4,-8
  8063ac:	b0bffd04 	addi	r2,r22,-12
  8063b0:	1104703a 	and	r2,r2,r4
  8063b4:	18c0004c 	andi	r3,r3,1
  8063b8:	1886b03a 	or	r3,r3,r2
  8063bc:	80c00115 	stw	r3,4(r16)
  8063c0:	01000144 	movi	r4,5
  8063c4:	8087883a 	add	r3,r16,r2
  8063c8:	19000115 	stw	r4,4(r3)
  8063cc:	19000215 	stw	r4,8(r3)
  8063d0:	10800428 	cmpgeui	r2,r2,16
  8063d4:	1000df1e 	bne	r2,zero,806754 <_malloc_r+0x780>
  8063d8:	bd400117 	ldw	r21,4(r23)
  8063dc:	b821883a 	mov	r16,r23
  8063e0:	00802074 	movhi	r2,129
  8063e4:	1090e517 	ldw	r2,17300(r2)
  8063e8:	1500022e 	bgeu	r2,r20,8063f4 <_malloc_r+0x420>
  8063ec:	00802074 	movhi	r2,129
  8063f0:	1510e515 	stw	r20,17300(r2)
  8063f4:	00802074 	movhi	r2,129
  8063f8:	1090e417 	ldw	r2,17296(r2)
  8063fc:	15006a2e 	bgeu	r2,r20,8065a8 <_malloc_r+0x5d4>
  806400:	00802074 	movhi	r2,129
  806404:	1510e415 	stw	r20,17296(r2)
  806408:	00006706 	br	8065a8 <_malloc_r+0x5d4>
  80640c:	88c00054 	ori	r3,r17,1
  806410:	80c00115 	stw	r3,4(r16)
  806414:	8463883a 	add	r17,r16,r17
  806418:	10800054 	ori	r2,r2,1
  80641c:	9c400215 	stw	r17,8(r19)
  806420:	88800115 	stw	r2,4(r17)
  806424:	9009883a 	mov	r4,r18
  806428:	080e3ac0 	call	80e3ac <__malloc_unlock>
  80642c:	80800204 	addi	r2,r16,8
  806430:	003f7e06 	br	80622c <_malloc_r+0x258>
  806434:	81000317 	ldw	r4,12(r16)
  806438:	003f0506 	br	806050 <_malloc_r+0x7c>
  80643c:	1006d27a 	srli	r3,r2,9
  806440:	19000168 	cmpgeui	r4,r3,5
  806444:	20005026 	beq	r4,zero,806588 <_malloc_r+0x5b4>
  806448:	19000568 	cmpgeui	r4,r3,21
  80644c:	20008c1e 	bne	r4,zero,806680 <_malloc_r+0x6ac>
  806450:	19401704 	addi	r5,r3,92
  806454:	280a90fa 	slli	r5,r5,3
  806458:	190016c4 	addi	r4,r3,91
  80645c:	994b883a 	add	r5,r19,r5
  806460:	28c00017 	ldw	r3,0(r5)
  806464:	297ffe04 	addi	r5,r5,-8
  806468:	28c07426 	beq	r5,r3,80663c <_malloc_r+0x668>
  80646c:	01bfff04 	movi	r6,-4
  806470:	19000117 	ldw	r4,4(r3)
  806474:	2188703a 	and	r4,r4,r6
  806478:	1100022e 	bgeu	r2,r4,806484 <_malloc_r+0x4b0>
  80647c:	18c00217 	ldw	r3,8(r3)
  806480:	28fffb1e 	bne	r5,r3,806470 <_malloc_r+0x49c>
  806484:	19400317 	ldw	r5,12(r3)
  806488:	98800117 	ldw	r2,4(r19)
  80648c:	81400315 	stw	r5,12(r16)
  806490:	80c00215 	stw	r3,8(r16)
  806494:	2c000215 	stw	r16,8(r5)
  806498:	1c000315 	stw	r16,12(r3)
  80649c:	003f3606 	br	806178 <_malloc_r+0x1a4>
  8064a0:	10c00568 	cmpgeui	r3,r2,21
  8064a4:	18004a26 	beq	r3,zero,8065d0 <_malloc_r+0x5fc>
  8064a8:	10c01568 	cmpgeui	r3,r2,85
  8064ac:	18007b1e 	bne	r3,zero,80669c <_malloc_r+0x6c8>
  8064b0:	8804d33a 	srli	r2,r17,12
  8064b4:	11c01bc4 	addi	r7,r2,111
  8064b8:	380890fa 	slli	r4,r7,3
  8064bc:	12001b84 	addi	r8,r2,110
  8064c0:	003efd06 	br	8060b8 <_malloc_r+0xe4>
  8064c4:	63000044 	addi	r12,r12,1
  8064c8:	608000cc 	andi	r2,r12,3
  8064cc:	42000204 	addi	r8,r8,8
  8064d0:	103f3e1e 	bne	r2,zero,8061cc <_malloc_r+0x1f8>
  8064d4:	00004506 	br	8065ec <_malloc_r+0x618>
  8064d8:	81000217 	ldw	r4,8(r16)
  8064dc:	89800054 	ori	r6,r17,1
  8064e0:	81800115 	stw	r6,4(r16)
  8064e4:	20800315 	stw	r2,12(r4)
  8064e8:	11000215 	stw	r4,8(r2)
  8064ec:	8463883a 	add	r17,r16,r17
  8064f0:	9c400515 	stw	r17,20(r19)
  8064f4:	9c400415 	stw	r17,16(r19)
  8064f8:	28800054 	ori	r2,r5,1
  8064fc:	88800115 	stw	r2,4(r17)
  806500:	8a400315 	stw	r9,12(r17)
  806504:	8a400215 	stw	r9,8(r17)
  806508:	80c7883a 	add	r3,r16,r3
  80650c:	19400015 	stw	r5,0(r3)
  806510:	9009883a 	mov	r4,r18
  806514:	080e3ac0 	call	80e3ac <__malloc_unlock>
  806518:	80800204 	addi	r2,r16,8
  80651c:	003f4306 	br	80622c <_malloc_r+0x258>
  806520:	880ed0fa 	srli	r7,r17,3
  806524:	88800204 	addi	r2,r17,8
  806528:	003ebf06 	br	806028 <_malloc_r+0x54>
  80652c:	8085883a 	add	r2,r16,r2
  806530:	10c00117 	ldw	r3,4(r2)
  806534:	9009883a 	mov	r4,r18
  806538:	18c00054 	ori	r3,r3,1
  80653c:	10c00115 	stw	r3,4(r2)
  806540:	080e3ac0 	call	80e3ac <__malloc_unlock>
  806544:	80800204 	addi	r2,r16,8
  806548:	003f3806 	br	80622c <_malloc_r+0x258>
  80654c:	89000054 	ori	r4,r17,1
  806550:	81000115 	stw	r4,4(r16)
  806554:	8463883a 	add	r17,r16,r17
  806558:	9c400515 	stw	r17,20(r19)
  80655c:	9c400415 	stw	r17,16(r19)
  806560:	19000054 	ori	r4,r3,1
  806564:	89000115 	stw	r4,4(r17)
  806568:	8085883a 	add	r2,r16,r2
  80656c:	8a400315 	stw	r9,12(r17)
  806570:	8a400215 	stw	r9,8(r17)
  806574:	10c00015 	stw	r3,0(r2)
  806578:	9009883a 	mov	r4,r18
  80657c:	080e3ac0 	call	80e3ac <__malloc_unlock>
  806580:	80800204 	addi	r2,r16,8
  806584:	003f2906 	br	80622c <_malloc_r+0x258>
  806588:	1006d1ba 	srli	r3,r2,6
  80658c:	19400e44 	addi	r5,r3,57
  806590:	280a90fa 	slli	r5,r5,3
  806594:	19000e04 	addi	r4,r3,56
  806598:	003fb006 	br	80645c <_malloc_r+0x488>
  80659c:	84c04626 	beq	r16,r19,8066b8 <_malloc_r+0x6e4>
  8065a0:	9c000217 	ldw	r16,8(r19)
  8065a4:	85400117 	ldw	r21,4(r16)
  8065a8:	00bfff04 	movi	r2,-4
  8065ac:	a8aa703a 	and	r21,r21,r2
  8065b0:	ac45c83a 	sub	r2,r21,r17
  8065b4:	ac400236 	bltu	r21,r17,8065c0 <_malloc_r+0x5ec>
  8065b8:	10c00408 	cmpgei	r3,r2,16
  8065bc:	183f931e 	bne	r3,zero,80640c <_malloc_r+0x438>
  8065c0:	9009883a 	mov	r4,r18
  8065c4:	080e3ac0 	call	80e3ac <__malloc_unlock>
  8065c8:	0005883a 	mov	r2,zero
  8065cc:	003f1706 	br	80622c <_malloc_r+0x258>
  8065d0:	11c01704 	addi	r7,r2,92
  8065d4:	380890fa 	slli	r4,r7,3
  8065d8:	120016c4 	addi	r8,r2,91
  8065dc:	003eb606 	br	8060b8 <_malloc_r+0xe4>
  8065e0:	58800217 	ldw	r2,8(r11)
  8065e4:	39ffffc4 	addi	r7,r7,-1
  8065e8:	12c0701e 	bne	r2,r11,8067ac <_malloc_r+0x7d8>
  8065ec:	388000cc 	andi	r2,r7,3
  8065f0:	5afffe04 	addi	r11,r11,-8
  8065f4:	103ffa1e 	bne	r2,zero,8065e0 <_malloc_r+0x60c>
  8065f8:	98c00117 	ldw	r3,4(r19)
  8065fc:	0104303a 	nor	r2,zero,r4
  806600:	10c4703a 	and	r2,r2,r3
  806604:	98800115 	stw	r2,4(r19)
  806608:	2109883a 	add	r4,r4,r4
  80660c:	113f2336 	bltu	r2,r4,80629c <_malloc_r+0x2c8>
  806610:	203f2226 	beq	r4,zero,80629c <_malloc_r+0x2c8>
  806614:	2086703a 	and	r3,r4,r2
  806618:	1800041e 	bne	r3,zero,80662c <_malloc_r+0x658>
  80661c:	2109883a 	add	r4,r4,r4
  806620:	2086703a 	and	r3,r4,r2
  806624:	63000104 	addi	r12,r12,4
  806628:	183ffc26 	beq	r3,zero,80661c <_malloc_r+0x648>
  80662c:	600f883a 	mov	r7,r12
  806630:	003ee206 	br	8061bc <_malloc_r+0x1e8>
  806634:	ad400404 	addi	r21,r21,16
  806638:	003f2b06 	br	8062e8 <_malloc_r+0x314>
  80663c:	2009d0ba 	srai	r4,r4,2
  806640:	00800044 	movi	r2,1
  806644:	99800117 	ldw	r6,4(r19)
  806648:	1104983a 	sll	r2,r2,r4
  80664c:	1184b03a 	or	r2,r2,r6
  806650:	98800115 	stw	r2,4(r19)
  806654:	003f8d06 	br	80648c <_malloc_r+0x4b8>
  806658:	bd69883a 	add	r20,r23,r21
  80665c:	0529c83a 	sub	r20,zero,r20
  806660:	a503ffcc 	andi	r20,r20,4095
  806664:	a00b883a 	mov	r5,r20
  806668:	9009883a 	mov	r4,r18
  80666c:	08082400 	call	808240 <_sbrk_r>
  806670:	10ffffe0 	cmpeqi	r3,r2,-1
  806674:	183f3f26 	beq	r3,zero,806374 <_malloc_r+0x3a0>
  806678:	0029883a 	mov	r20,zero
  80667c:	003f3f06 	br	80637c <_malloc_r+0x3a8>
  806680:	19001568 	cmpgeui	r4,r3,85
  806684:	2000201e 	bne	r4,zero,806708 <_malloc_r+0x734>
  806688:	1006d33a 	srli	r3,r2,12
  80668c:	19401bc4 	addi	r5,r3,111
  806690:	280a90fa 	slli	r5,r5,3
  806694:	19001b84 	addi	r4,r3,110
  806698:	003f7006 	br	80645c <_malloc_r+0x488>
  80669c:	10c05568 	cmpgeui	r3,r2,341
  8066a0:	1800201e 	bne	r3,zero,806724 <_malloc_r+0x750>
  8066a4:	8804d3fa 	srli	r2,r17,15
  8066a8:	11c01e04 	addi	r7,r2,120
  8066ac:	380890fa 	slli	r4,r7,3
  8066b0:	12001dc4 	addi	r8,r2,119
  8066b4:	003e8006 	br	8060b8 <_malloc_r+0xe4>
  8066b8:	00802074 	movhi	r2,129
  8066bc:	10d0f017 	ldw	r3,17344(r2)
  8066c0:	a8c7883a 	add	r3,r21,r3
  8066c4:	10d0f015 	stw	r3,17344(r2)
  8066c8:	003f1406 	br	80631c <_malloc_r+0x348>
  8066cc:	e083ffcc 	andi	r2,fp,4095
  8066d0:	103f121e 	bne	r2,zero,80631c <_malloc_r+0x348>
  8066d4:	9c000217 	ldw	r16,8(r19)
  8066d8:	b56b883a 	add	r21,r22,r21
  8066dc:	ad400054 	ori	r21,r21,1
  8066e0:	85400115 	stw	r21,4(r16)
  8066e4:	003f3e06 	br	8063e0 <_malloc_r+0x40c>
  8066e8:	00802074 	movhi	r2,129
  8066ec:	15c9e215 	stw	r23,10120(r2)
  8066f0:	003f1206 	br	80633c <_malloc_r+0x368>
  8066f4:	b821883a 	mov	r16,r23
  8066f8:	003f3906 	br	8063e0 <_malloc_r+0x40c>
  8066fc:	00800044 	movi	r2,1
  806700:	b8800115 	stw	r2,4(r23)
  806704:	003fae06 	br	8065c0 <_malloc_r+0x5ec>
  806708:	19005568 	cmpgeui	r4,r3,341
  80670c:	2000191e 	bne	r4,zero,806774 <_malloc_r+0x7a0>
  806710:	1006d3fa 	srli	r3,r2,15
  806714:	19401e04 	addi	r5,r3,120
  806718:	280a90fa 	slli	r5,r5,3
  80671c:	19001dc4 	addi	r4,r3,119
  806720:	003f4e06 	br	80645c <_malloc_r+0x488>
  806724:	10815568 	cmpgeui	r2,r2,1365
  806728:	1000191e 	bne	r2,zero,806790 <_malloc_r+0x7bc>
  80672c:	8804d4ba 	srli	r2,r17,18
  806730:	11c01f44 	addi	r7,r2,125
  806734:	380890fa 	slli	r4,r7,3
  806738:	12001f04 	addi	r8,r2,124
  80673c:	003e5e06 	br	8060b8 <_malloc_r+0xe4>
  806740:	e73ffe04 	addi	fp,fp,-8
  806744:	af2b883a 	add	r21,r21,fp
  806748:	adebc83a 	sub	r21,r21,r23
  80674c:	0029883a 	mov	r20,zero
  806750:	003f0a06 	br	80637c <_malloc_r+0x3a8>
  806754:	81400204 	addi	r5,r16,8
  806758:	9009883a 	mov	r4,r18
  80675c:	08054d40 	call	8054d4 <_free_r>
  806760:	9c000217 	ldw	r16,8(r19)
  806764:	00802074 	movhi	r2,129
  806768:	1510f017 	ldw	r20,17344(r2)
  80676c:	85400117 	ldw	r21,4(r16)
  806770:	003f1b06 	br	8063e0 <_malloc_r+0x40c>
  806774:	18c15568 	cmpgeui	r3,r3,1365
  806778:	1800091e 	bne	r3,zero,8067a0 <_malloc_r+0x7cc>
  80677c:	1006d4ba 	srli	r3,r2,18
  806780:	19401f44 	addi	r5,r3,125
  806784:	280a90fa 	slli	r5,r5,3
  806788:	19001f04 	addi	r4,r3,124
  80678c:	003f3306 	br	80645c <_malloc_r+0x488>
  806790:	0100fe04 	movi	r4,1016
  806794:	01c01fc4 	movi	r7,127
  806798:	02001f84 	movi	r8,126
  80679c:	003e4606 	br	8060b8 <_malloc_r+0xe4>
  8067a0:	0140fe04 	movi	r5,1016
  8067a4:	01001f84 	movi	r4,126
  8067a8:	003f2c06 	br	80645c <_malloc_r+0x488>
  8067ac:	98800117 	ldw	r2,4(r19)
  8067b0:	003f9506 	br	806608 <_malloc_r+0x634>

008067b4 <memchr>:
  8067b4:	208000cc 	andi	r2,r4,3
  8067b8:	280f883a 	mov	r7,r5
  8067bc:	10000e26 	beq	r2,zero,8067f8 <memchr+0x44>
  8067c0:	30bfffc4 	addi	r2,r6,-1
  8067c4:	30001726 	beq	r6,zero,806824 <memchr+0x70>
  8067c8:	29803fcc 	andi	r6,r5,255
  8067cc:	00000606 	br	8067e8 <memchr+0x34>
  8067d0:	21000044 	addi	r4,r4,1
  8067d4:	20c000cc 	andi	r3,r4,3
  8067d8:	18000826 	beq	r3,zero,8067fc <memchr+0x48>
  8067dc:	10bfffc4 	addi	r2,r2,-1
  8067e0:	10ffffe0 	cmpeqi	r3,r2,-1
  8067e4:	18000f1e 	bne	r3,zero,806824 <memchr+0x70>
  8067e8:	20c00003 	ldbu	r3,0(r4)
  8067ec:	19bff81e 	bne	r3,r6,8067d0 <memchr+0x1c>
  8067f0:	2005883a 	mov	r2,r4
  8067f4:	f800283a 	ret
  8067f8:	3005883a 	mov	r2,r6
  8067fc:	10c00128 	cmpgeui	r3,r2,4
  806800:	18000a1e 	bne	r3,zero,80682c <memchr+0x78>
  806804:	10001f26 	beq	r2,zero,806884 <memchr+0xd0>
  806808:	2087883a 	add	r3,r4,r2
  80680c:	39803fcc 	andi	r6,r7,255
  806810:	2005883a 	mov	r2,r4
  806814:	11000003 	ldbu	r4,0(r2)
  806818:	21bff626 	beq	r4,r6,8067f4 <memchr+0x40>
  80681c:	10800044 	addi	r2,r2,1
  806820:	18bffc1e 	bne	r3,r2,806814 <memchr+0x60>
  806824:	0005883a 	mov	r2,zero
  806828:	f800283a 	ret
  80682c:	2810923a 	slli	r8,r5,8
  806830:	29403fcc 	andi	r5,r5,255
  806834:	027fbff4 	movhi	r9,65279
  806838:	423fffcc 	andi	r8,r8,65535
  80683c:	414ab03a 	or	r5,r8,r5
  806840:	2810943a 	slli	r8,r5,16
  806844:	01a02074 	movhi	r6,32897
  806848:	4a7fbfc4 	addi	r9,r9,-257
  80684c:	4150b03a 	or	r8,r8,r5
  806850:	31a02004 	addi	r6,r6,-32640
  806854:	20c00017 	ldw	r3,0(r4)
  806858:	40c6f03a 	xor	r3,r8,r3
  80685c:	1a4b883a 	add	r5,r3,r9
  806860:	00c6303a 	nor	r3,zero,r3
  806864:	28c6703a 	and	r3,r5,r3
  806868:	1986703a 	and	r3,r3,r6
  80686c:	183fe61e 	bne	r3,zero,806808 <memchr+0x54>
  806870:	10bfff04 	addi	r2,r2,-4
  806874:	10c00128 	cmpgeui	r3,r2,4
  806878:	21000104 	addi	r4,r4,4
  80687c:	183ff51e 	bne	r3,zero,806854 <memchr+0xa0>
  806880:	003fe006 	br	806804 <memchr+0x50>
  806884:	f800283a 	ret

00806888 <memcpy>:
  806888:	30c00430 	cmpltui	r3,r6,16
  80688c:	2005883a 	mov	r2,r4
  806890:	18002d1e 	bne	r3,zero,806948 <memcpy+0xc0>
  806894:	2906b03a 	or	r3,r5,r4
  806898:	18c000cc 	andi	r3,r3,3
  80689c:	1800351e 	bne	r3,zero,806974 <memcpy+0xec>
  8068a0:	32fffc04 	addi	r11,r6,-16
  8068a4:	5816d13a 	srli	r11,r11,4
  8068a8:	280f883a 	mov	r7,r5
  8068ac:	2007883a 	mov	r3,r4
  8068b0:	5ac00044 	addi	r11,r11,1
  8068b4:	5816913a 	slli	r11,r11,4
  8068b8:	22d5883a 	add	r10,r4,r11
  8068bc:	39000117 	ldw	r4,4(r7)
  8068c0:	3a400017 	ldw	r9,0(r7)
  8068c4:	3a000217 	ldw	r8,8(r7)
  8068c8:	19000115 	stw	r4,4(r3)
  8068cc:	39000317 	ldw	r4,12(r7)
  8068d0:	1a400015 	stw	r9,0(r3)
  8068d4:	1a000215 	stw	r8,8(r3)
  8068d8:	19000315 	stw	r4,12(r3)
  8068dc:	18c00404 	addi	r3,r3,16
  8068e0:	39c00404 	addi	r7,r7,16
  8068e4:	50fff51e 	bne	r10,r3,8068bc <memcpy+0x34>
  8068e8:	3100030c 	andi	r4,r6,12
  8068ec:	2acb883a 	add	r5,r5,r11
  8068f0:	320003cc 	andi	r8,r6,15
  8068f4:	20002226 	beq	r4,zero,806980 <memcpy+0xf8>
  8068f8:	280f883a 	mov	r7,r5
  8068fc:	1813883a 	mov	r9,r3
  806900:	39c00104 	addi	r7,r7,4
  806904:	3abfff17 	ldw	r10,-4(r7)
  806908:	41c9c83a 	sub	r4,r8,r7
  80690c:	2909883a 	add	r4,r5,r4
  806910:	4a800015 	stw	r10,0(r9)
  806914:	21000128 	cmpgeui	r4,r4,4
  806918:	4a400104 	addi	r9,r9,4
  80691c:	203ff81e 	bne	r4,zero,806900 <memcpy+0x78>
  806920:	413fff04 	addi	r4,r8,-4
  806924:	2008d0ba 	srli	r4,r4,2
  806928:	318000cc 	andi	r6,r6,3
  80692c:	31ffffc4 	addi	r7,r6,-1
  806930:	21000044 	addi	r4,r4,1
  806934:	200890ba 	slli	r4,r4,2
  806938:	1907883a 	add	r3,r3,r4
  80693c:	290b883a 	add	r5,r5,r4
  806940:	3000041e 	bne	r6,zero,806954 <memcpy+0xcc>
  806944:	f800283a 	ret
  806948:	2007883a 	mov	r3,r4
  80694c:	31ffffc4 	addi	r7,r6,-1
  806950:	303ffc26 	beq	r6,zero,806944 <memcpy+0xbc>
  806954:	39c00044 	addi	r7,r7,1
  806958:	19cf883a 	add	r7,r3,r7
  80695c:	29800003 	ldbu	r6,0(r5)
  806960:	18c00044 	addi	r3,r3,1
  806964:	29400044 	addi	r5,r5,1
  806968:	19bfffc5 	stb	r6,-1(r3)
  80696c:	38fffb1e 	bne	r7,r3,80695c <memcpy+0xd4>
  806970:	f800283a 	ret
  806974:	31ffffc4 	addi	r7,r6,-1
  806978:	2007883a 	mov	r3,r4
  80697c:	003ff506 	br	806954 <memcpy+0xcc>
  806980:	400d883a 	mov	r6,r8
  806984:	003ff106 	br	80694c <memcpy+0xc4>

00806988 <memmove>:
  806988:	2005883a 	mov	r2,r4
  80698c:	29000a2e 	bgeu	r5,r4,8069b8 <memmove+0x30>
  806990:	2989883a 	add	r4,r5,r6
  806994:	1100082e 	bgeu	r2,r4,8069b8 <memmove+0x30>
  806998:	1187883a 	add	r3,r2,r6
  80699c:	30003e26 	beq	r6,zero,806a98 <memmove+0x110>
  8069a0:	217fffc3 	ldbu	r5,-1(r4)
  8069a4:	18ffffc4 	addi	r3,r3,-1
  8069a8:	213fffc4 	addi	r4,r4,-1
  8069ac:	19400005 	stb	r5,0(r3)
  8069b0:	10fffb1e 	bne	r2,r3,8069a0 <memmove+0x18>
  8069b4:	f800283a 	ret
  8069b8:	30c00430 	cmpltui	r3,r6,16
  8069bc:	18000b26 	beq	r3,zero,8069ec <memmove+0x64>
  8069c0:	1007883a 	mov	r3,r2
  8069c4:	31ffffc4 	addi	r7,r6,-1
  8069c8:	30003726 	beq	r6,zero,806aa8 <memmove+0x120>
  8069cc:	39c00044 	addi	r7,r7,1
  8069d0:	29cf883a 	add	r7,r5,r7
  8069d4:	29800003 	ldbu	r6,0(r5)
  8069d8:	29400044 	addi	r5,r5,1
  8069dc:	18c00044 	addi	r3,r3,1
  8069e0:	19bfffc5 	stb	r6,-1(r3)
  8069e4:	29fffb1e 	bne	r5,r7,8069d4 <memmove+0x4c>
  8069e8:	f800283a 	ret
  8069ec:	2886b03a 	or	r3,r5,r2
  8069f0:	18c000cc 	andi	r3,r3,3
  8069f4:	1800291e 	bne	r3,zero,806a9c <memmove+0x114>
  8069f8:	327ffc04 	addi	r9,r6,-16
  8069fc:	4812d13a 	srli	r9,r9,4
  806a00:	280f883a 	mov	r7,r5
  806a04:	1007883a 	mov	r3,r2
  806a08:	4a400044 	addi	r9,r9,1
  806a0c:	4812913a 	slli	r9,r9,4
  806a10:	1251883a 	add	r8,r2,r9
  806a14:	39000017 	ldw	r4,0(r7)
  806a18:	39c00404 	addi	r7,r7,16
  806a1c:	18c00404 	addi	r3,r3,16
  806a20:	193ffc15 	stw	r4,-16(r3)
  806a24:	393ffd17 	ldw	r4,-12(r7)
  806a28:	193ffd15 	stw	r4,-12(r3)
  806a2c:	393ffe17 	ldw	r4,-8(r7)
  806a30:	193ffe15 	stw	r4,-8(r3)
  806a34:	393fff17 	ldw	r4,-4(r7)
  806a38:	193fff15 	stw	r4,-4(r3)
  806a3c:	40fff51e 	bne	r8,r3,806a14 <memmove+0x8c>
  806a40:	3100030c 	andi	r4,r6,12
  806a44:	2a4b883a 	add	r5,r5,r9
  806a48:	320003cc 	andi	r8,r6,15
  806a4c:	20001726 	beq	r4,zero,806aac <memmove+0x124>
  806a50:	2813883a 	mov	r9,r5
  806a54:	180f883a 	mov	r7,r3
  806a58:	4a800017 	ldw	r10,0(r9)
  806a5c:	39c00104 	addi	r7,r7,4
  806a60:	41c9c83a 	sub	r4,r8,r7
  806a64:	1909883a 	add	r4,r3,r4
  806a68:	21000128 	cmpgeui	r4,r4,4
  806a6c:	3abfff15 	stw	r10,-4(r7)
  806a70:	4a400104 	addi	r9,r9,4
  806a74:	203ff81e 	bne	r4,zero,806a58 <memmove+0xd0>
  806a78:	413fff04 	addi	r4,r8,-4
  806a7c:	2008d0ba 	srli	r4,r4,2
  806a80:	318000cc 	andi	r6,r6,3
  806a84:	21000044 	addi	r4,r4,1
  806a88:	200890ba 	slli	r4,r4,2
  806a8c:	1907883a 	add	r3,r3,r4
  806a90:	290b883a 	add	r5,r5,r4
  806a94:	003fcb06 	br	8069c4 <memmove+0x3c>
  806a98:	f800283a 	ret
  806a9c:	31ffffc4 	addi	r7,r6,-1
  806aa0:	1007883a 	mov	r3,r2
  806aa4:	003fc906 	br	8069cc <memmove+0x44>
  806aa8:	f800283a 	ret
  806aac:	400d883a 	mov	r6,r8
  806ab0:	003fc406 	br	8069c4 <memmove+0x3c>

00806ab4 <memset>:
  806ab4:	20c000cc 	andi	r3,r4,3
  806ab8:	2005883a 	mov	r2,r4
  806abc:	18003626 	beq	r3,zero,806b98 <memset+0xe4>
  806ac0:	31ffffc4 	addi	r7,r6,-1
  806ac4:	30003326 	beq	r6,zero,806b94 <memset+0xe0>
  806ac8:	2811883a 	mov	r8,r5
  806acc:	2007883a 	mov	r3,r4
  806ad0:	00000306 	br	806ae0 <memset+0x2c>
  806ad4:	39ffffc4 	addi	r7,r7,-1
  806ad8:	39bfffe0 	cmpeqi	r6,r7,-1
  806adc:	30002d1e 	bne	r6,zero,806b94 <memset+0xe0>
  806ae0:	18c00044 	addi	r3,r3,1
  806ae4:	198000cc 	andi	r6,r3,3
  806ae8:	1a3fffc5 	stb	r8,-1(r3)
  806aec:	303ff91e 	bne	r6,zero,806ad4 <memset+0x20>
  806af0:	39000130 	cmpltui	r4,r7,4
  806af4:	2000221e 	bne	r4,zero,806b80 <memset+0xcc>
  806af8:	29003fcc 	andi	r4,r5,255
  806afc:	200c923a 	slli	r6,r4,8
  806b00:	3a000430 	cmpltui	r8,r7,16
  806b04:	3108b03a 	or	r4,r6,r4
  806b08:	200c943a 	slli	r6,r4,16
  806b0c:	310cb03a 	or	r6,r6,r4
  806b10:	40000e1e 	bne	r8,zero,806b4c <memset+0x98>
  806b14:	393ffc04 	addi	r4,r7,-16
  806b18:	2008d13a 	srli	r4,r4,4
  806b1c:	21000044 	addi	r4,r4,1
  806b20:	2008913a 	slli	r4,r4,4
  806b24:	1909883a 	add	r4,r3,r4
  806b28:	19800015 	stw	r6,0(r3)
  806b2c:	19800115 	stw	r6,4(r3)
  806b30:	19800215 	stw	r6,8(r3)
  806b34:	19800315 	stw	r6,12(r3)
  806b38:	18c00404 	addi	r3,r3,16
  806b3c:	20fffa1e 	bne	r4,r3,806b28 <memset+0x74>
  806b40:	3900030c 	andi	r4,r7,12
  806b44:	39c003cc 	andi	r7,r7,15
  806b48:	20000d26 	beq	r4,zero,806b80 <memset+0xcc>
  806b4c:	1811883a 	mov	r8,r3
  806b50:	42000104 	addi	r8,r8,4
  806b54:	3a09c83a 	sub	r4,r7,r8
  806b58:	1909883a 	add	r4,r3,r4
  806b5c:	21000128 	cmpgeui	r4,r4,4
  806b60:	41bfff15 	stw	r6,-4(r8)
  806b64:	203ffa1e 	bne	r4,zero,806b50 <memset+0x9c>
  806b68:	393fff04 	addi	r4,r7,-4
  806b6c:	2008d0ba 	srli	r4,r4,2
  806b70:	39c000cc 	andi	r7,r7,3
  806b74:	21000044 	addi	r4,r4,1
  806b78:	200890ba 	slli	r4,r4,2
  806b7c:	1907883a 	add	r3,r3,r4
  806b80:	38000426 	beq	r7,zero,806b94 <memset+0xe0>
  806b84:	19cf883a 	add	r7,r3,r7
  806b88:	18c00044 	addi	r3,r3,1
  806b8c:	197fffc5 	stb	r5,-1(r3)
  806b90:	38fffd1e 	bne	r7,r3,806b88 <memset+0xd4>
  806b94:	f800283a 	ret
  806b98:	2007883a 	mov	r3,r4
  806b9c:	300f883a 	mov	r7,r6
  806ba0:	003fd306 	br	806af0 <memset+0x3c>

00806ba4 <_Balloc>:
  806ba4:	20801317 	ldw	r2,76(r4)
  806ba8:	defffc04 	addi	sp,sp,-16
  806bac:	dc400115 	stw	r17,4(sp)
  806bb0:	dc000015 	stw	r16,0(sp)
  806bb4:	dfc00315 	stw	ra,12(sp)
  806bb8:	dc800215 	stw	r18,8(sp)
  806bbc:	2021883a 	mov	r16,r4
  806bc0:	2823883a 	mov	r17,r5
  806bc4:	10000e26 	beq	r2,zero,806c00 <_Balloc+0x5c>
  806bc8:	880690ba 	slli	r3,r17,2
  806bcc:	10c7883a 	add	r3,r2,r3
  806bd0:	18800017 	ldw	r2,0(r3)
  806bd4:	10001126 	beq	r2,zero,806c1c <_Balloc+0x78>
  806bd8:	11000017 	ldw	r4,0(r2)
  806bdc:	19000015 	stw	r4,0(r3)
  806be0:	10000415 	stw	zero,16(r2)
  806be4:	10000315 	stw	zero,12(r2)
  806be8:	dfc00317 	ldw	ra,12(sp)
  806bec:	dc800217 	ldw	r18,8(sp)
  806bf0:	dc400117 	ldw	r17,4(sp)
  806bf4:	dc000017 	ldw	r16,0(sp)
  806bf8:	dec00404 	addi	sp,sp,16
  806bfc:	f800283a 	ret
  806c00:	01800844 	movi	r6,33
  806c04:	01400104 	movi	r5,4
  806c08:	0809a080 	call	809a08 <_calloc_r>
  806c0c:	80801315 	stw	r2,76(r16)
  806c10:	103fed1e 	bne	r2,zero,806bc8 <_Balloc+0x24>
  806c14:	0005883a 	mov	r2,zero
  806c18:	003ff306 	br	806be8 <_Balloc+0x44>
  806c1c:	04800044 	movi	r18,1
  806c20:	9464983a 	sll	r18,r18,r17
  806c24:	01400044 	movi	r5,1
  806c28:	8009883a 	mov	r4,r16
  806c2c:	91800144 	addi	r6,r18,5
  806c30:	300c90ba 	slli	r6,r6,2
  806c34:	0809a080 	call	809a08 <_calloc_r>
  806c38:	103ff626 	beq	r2,zero,806c14 <_Balloc+0x70>
  806c3c:	14400115 	stw	r17,4(r2)
  806c40:	14800215 	stw	r18,8(r2)
  806c44:	003fe606 	br	806be0 <_Balloc+0x3c>

00806c48 <_Bfree>:
  806c48:	28000726 	beq	r5,zero,806c68 <_Bfree+0x20>
  806c4c:	28c00117 	ldw	r3,4(r5)
  806c50:	20801317 	ldw	r2,76(r4)
  806c54:	180690ba 	slli	r3,r3,2
  806c58:	10c5883a 	add	r2,r2,r3
  806c5c:	10c00017 	ldw	r3,0(r2)
  806c60:	28c00015 	stw	r3,0(r5)
  806c64:	11400015 	stw	r5,0(r2)
  806c68:	f800283a 	ret

00806c6c <__multadd>:
  806c6c:	defff704 	addi	sp,sp,-36
  806c70:	dc800215 	stw	r18,8(sp)
  806c74:	2c800417 	ldw	r18,16(r5)
  806c78:	ddc00715 	stw	r23,28(sp)
  806c7c:	dd800615 	stw	r22,24(sp)
  806c80:	dd400515 	stw	r21,20(sp)
  806c84:	dd000415 	stw	r20,16(sp)
  806c88:	dcc00315 	stw	r19,12(sp)
  806c8c:	dc400115 	stw	r17,4(sp)
  806c90:	dfc00815 	stw	ra,32(sp)
  806c94:	dc000015 	stw	r16,0(sp)
  806c98:	2827883a 	mov	r19,r5
  806c9c:	2029883a 	mov	r20,r4
  806ca0:	302b883a 	mov	r21,r6
  806ca4:	3823883a 	mov	r17,r7
  806ca8:	2d800504 	addi	r22,r5,20
  806cac:	002f883a 	mov	r23,zero
  806cb0:	b4000017 	ldw	r16,0(r22)
  806cb4:	a80b883a 	mov	r5,r21
  806cb8:	b5800104 	addi	r22,r22,4
  806cbc:	813fffcc 	andi	r4,r16,65535
  806cc0:	0800f1c0 	call	800f1c <__mulsi3>
  806cc4:	8008d43a 	srli	r4,r16,16
  806cc8:	a80b883a 	mov	r5,r21
  806ccc:	1461883a 	add	r16,r2,r17
  806cd0:	0800f1c0 	call	800f1c <__mulsi3>
  806cd4:	800ed43a 	srli	r7,r16,16
  806cd8:	843fffcc 	andi	r16,r16,65535
  806cdc:	bdc00044 	addi	r23,r23,1
  806ce0:	11c5883a 	add	r2,r2,r7
  806ce4:	1006943a 	slli	r3,r2,16
  806ce8:	1022d43a 	srli	r17,r2,16
  806cec:	1c21883a 	add	r16,r3,r16
  806cf0:	b43fff15 	stw	r16,-4(r22)
  806cf4:	bcbfee16 	blt	r23,r18,806cb0 <__multadd+0x44>
  806cf8:	88000826 	beq	r17,zero,806d1c <__multadd+0xb0>
  806cfc:	98800217 	ldw	r2,8(r19)
  806d00:	9080120e 	bge	r18,r2,806d4c <__multadd+0xe0>
  806d04:	90800144 	addi	r2,r18,5
  806d08:	100490ba 	slli	r2,r2,2
  806d0c:	94800044 	addi	r18,r18,1
  806d10:	9885883a 	add	r2,r19,r2
  806d14:	14400015 	stw	r17,0(r2)
  806d18:	9c800415 	stw	r18,16(r19)
  806d1c:	9805883a 	mov	r2,r19
  806d20:	dfc00817 	ldw	ra,32(sp)
  806d24:	ddc00717 	ldw	r23,28(sp)
  806d28:	dd800617 	ldw	r22,24(sp)
  806d2c:	dd400517 	ldw	r21,20(sp)
  806d30:	dd000417 	ldw	r20,16(sp)
  806d34:	dcc00317 	ldw	r19,12(sp)
  806d38:	dc800217 	ldw	r18,8(sp)
  806d3c:	dc400117 	ldw	r17,4(sp)
  806d40:	dc000017 	ldw	r16,0(sp)
  806d44:	dec00904 	addi	sp,sp,36
  806d48:	f800283a 	ret
  806d4c:	99400117 	ldw	r5,4(r19)
  806d50:	a009883a 	mov	r4,r20
  806d54:	29400044 	addi	r5,r5,1
  806d58:	0806ba40 	call	806ba4 <_Balloc>
  806d5c:	1021883a 	mov	r16,r2
  806d60:	10001226 	beq	r2,zero,806dac <__multadd+0x140>
  806d64:	99800417 	ldw	r6,16(r19)
  806d68:	99400304 	addi	r5,r19,12
  806d6c:	11000304 	addi	r4,r2,12
  806d70:	31800084 	addi	r6,r6,2
  806d74:	300c90ba 	slli	r6,r6,2
  806d78:	08068880 	call	806888 <memcpy>
  806d7c:	98000926 	beq	r19,zero,806da4 <__multadd+0x138>
  806d80:	98c00117 	ldw	r3,4(r19)
  806d84:	a0801317 	ldw	r2,76(r20)
  806d88:	180690ba 	slli	r3,r3,2
  806d8c:	10c5883a 	add	r2,r2,r3
  806d90:	10c00017 	ldw	r3,0(r2)
  806d94:	98c00015 	stw	r3,0(r19)
  806d98:	14c00015 	stw	r19,0(r2)
  806d9c:	8027883a 	mov	r19,r16
  806da0:	003fd806 	br	806d04 <__multadd+0x98>
  806da4:	8027883a 	mov	r19,r16
  806da8:	003fd606 	br	806d04 <__multadd+0x98>
  806dac:	01c02074 	movhi	r7,129
  806db0:	01002074 	movhi	r4,129
  806db4:	39c1c204 	addi	r7,r7,1800
  806db8:	000d883a 	mov	r6,zero
  806dbc:	01402d44 	movi	r5,181
  806dc0:	2101d704 	addi	r4,r4,1884
  806dc4:	08099900 	call	809990 <__assert_func>

00806dc8 <__s2b>:
  806dc8:	defff904 	addi	sp,sp,-28
  806dcc:	dc800215 	stw	r18,8(sp)
  806dd0:	dc000015 	stw	r16,0(sp)
  806dd4:	2025883a 	mov	r18,r4
  806dd8:	2821883a 	mov	r16,r5
  806ddc:	39000204 	addi	r4,r7,8
  806de0:	01400244 	movi	r5,9
  806de4:	dcc00315 	stw	r19,12(sp)
  806de8:	dc400115 	stw	r17,4(sp)
  806dec:	dfc00615 	stw	ra,24(sp)
  806df0:	3823883a 	mov	r17,r7
  806df4:	dd400515 	stw	r21,20(sp)
  806df8:	dd000415 	stw	r20,16(sp)
  806dfc:	3027883a 	mov	r19,r6
  806e00:	080b2f00 	call	80b2f0 <__divsi3>
  806e04:	88c00290 	cmplti	r3,r17,10
  806e08:	1800341e 	bne	r3,zero,806edc <__s2b+0x114>
  806e0c:	00c00044 	movi	r3,1
  806e10:	000b883a 	mov	r5,zero
  806e14:	18c7883a 	add	r3,r3,r3
  806e18:	29400044 	addi	r5,r5,1
  806e1c:	18bffd16 	blt	r3,r2,806e14 <__s2b+0x4c>
  806e20:	9009883a 	mov	r4,r18
  806e24:	0806ba40 	call	806ba4 <_Balloc>
  806e28:	100b883a 	mov	r5,r2
  806e2c:	10002d26 	beq	r2,zero,806ee4 <__s2b+0x11c>
  806e30:	d8800717 	ldw	r2,28(sp)
  806e34:	28800515 	stw	r2,20(r5)
  806e38:	00800044 	movi	r2,1
  806e3c:	28800415 	stw	r2,16(r5)
  806e40:	98800290 	cmplti	r2,r19,10
  806e44:	1000221e 	bne	r2,zero,806ed0 <__s2b+0x108>
  806e48:	85400244 	addi	r21,r16,9
  806e4c:	a829883a 	mov	r20,r21
  806e50:	84e1883a 	add	r16,r16,r19
  806e54:	a1c00007 	ldb	r7,0(r20)
  806e58:	01800284 	movi	r6,10
  806e5c:	9009883a 	mov	r4,r18
  806e60:	39fff404 	addi	r7,r7,-48
  806e64:	0806c6c0 	call	806c6c <__multadd>
  806e68:	a5000044 	addi	r20,r20,1
  806e6c:	100b883a 	mov	r5,r2
  806e70:	a43ff81e 	bne	r20,r16,806e54 <__s2b+0x8c>
  806e74:	9c3ffe04 	addi	r16,r19,-8
  806e78:	ac21883a 	add	r16,r21,r16
  806e7c:	9c400a0e 	bge	r19,r17,806ea8 <__s2b+0xe0>
  806e80:	8ce3c83a 	sub	r17,r17,r19
  806e84:	8463883a 	add	r17,r16,r17
  806e88:	81c00007 	ldb	r7,0(r16)
  806e8c:	01800284 	movi	r6,10
  806e90:	9009883a 	mov	r4,r18
  806e94:	39fff404 	addi	r7,r7,-48
  806e98:	0806c6c0 	call	806c6c <__multadd>
  806e9c:	84000044 	addi	r16,r16,1
  806ea0:	100b883a 	mov	r5,r2
  806ea4:	8c3ff81e 	bne	r17,r16,806e88 <__s2b+0xc0>
  806ea8:	2805883a 	mov	r2,r5
  806eac:	dfc00617 	ldw	ra,24(sp)
  806eb0:	dd400517 	ldw	r21,20(sp)
  806eb4:	dd000417 	ldw	r20,16(sp)
  806eb8:	dcc00317 	ldw	r19,12(sp)
  806ebc:	dc800217 	ldw	r18,8(sp)
  806ec0:	dc400117 	ldw	r17,4(sp)
  806ec4:	dc000017 	ldw	r16,0(sp)
  806ec8:	dec00704 	addi	sp,sp,28
  806ecc:	f800283a 	ret
  806ed0:	84000284 	addi	r16,r16,10
  806ed4:	04c00244 	movi	r19,9
  806ed8:	003fe806 	br	806e7c <__s2b+0xb4>
  806edc:	000b883a 	mov	r5,zero
  806ee0:	003fcf06 	br	806e20 <__s2b+0x58>
  806ee4:	01c02074 	movhi	r7,129
  806ee8:	01002074 	movhi	r4,129
  806eec:	39c1c204 	addi	r7,r7,1800
  806ef0:	000d883a 	mov	r6,zero
  806ef4:	01403384 	movi	r5,206
  806ef8:	2101d704 	addi	r4,r4,1884
  806efc:	08099900 	call	809990 <__assert_func>

00806f00 <__hi0bits>:
  806f00:	20bfffec 	andhi	r2,r4,65535
  806f04:	1000131e 	bne	r2,zero,806f54 <__hi0bits+0x54>
  806f08:	2008943a 	slli	r4,r4,16
  806f0c:	00800404 	movi	r2,16
  806f10:	20ffc02c 	andhi	r3,r4,65280
  806f14:	1800021e 	bne	r3,zero,806f20 <__hi0bits+0x20>
  806f18:	2008923a 	slli	r4,r4,8
  806f1c:	10800204 	addi	r2,r2,8
  806f20:	20fc002c 	andhi	r3,r4,61440
  806f24:	1800021e 	bne	r3,zero,806f30 <__hi0bits+0x30>
  806f28:	2008913a 	slli	r4,r4,4
  806f2c:	10800104 	addi	r2,r2,4
  806f30:	20f0002c 	andhi	r3,r4,49152
  806f34:	1800021e 	bne	r3,zero,806f40 <__hi0bits+0x40>
  806f38:	200890ba 	slli	r4,r4,2
  806f3c:	10800084 	addi	r2,r2,2
  806f40:	20000316 	blt	r4,zero,806f50 <__hi0bits+0x50>
  806f44:	2110002c 	andhi	r4,r4,16384
  806f48:	10800044 	addi	r2,r2,1
  806f4c:	20000326 	beq	r4,zero,806f5c <__hi0bits+0x5c>
  806f50:	f800283a 	ret
  806f54:	0005883a 	mov	r2,zero
  806f58:	003fed06 	br	806f10 <__hi0bits+0x10>
  806f5c:	00800804 	movi	r2,32
  806f60:	f800283a 	ret

00806f64 <__lo0bits>:
  806f64:	20c00017 	ldw	r3,0(r4)
  806f68:	188001cc 	andi	r2,r3,7
  806f6c:	10000826 	beq	r2,zero,806f90 <__lo0bits+0x2c>
  806f70:	1880004c 	andi	r2,r3,1
  806f74:	10001f1e 	bne	r2,zero,806ff4 <__lo0bits+0x90>
  806f78:	1880008c 	andi	r2,r3,2
  806f7c:	10002126 	beq	r2,zero,807004 <__lo0bits+0xa0>
  806f80:	1806d07a 	srli	r3,r3,1
  806f84:	00800044 	movi	r2,1
  806f88:	20c00015 	stw	r3,0(r4)
  806f8c:	f800283a 	ret
  806f90:	18bfffcc 	andi	r2,r3,65535
  806f94:	10001426 	beq	r2,zero,806fe8 <__lo0bits+0x84>
  806f98:	0005883a 	mov	r2,zero
  806f9c:	19403fcc 	andi	r5,r3,255
  806fa0:	2800021e 	bne	r5,zero,806fac <__lo0bits+0x48>
  806fa4:	1806d23a 	srli	r3,r3,8
  806fa8:	10800204 	addi	r2,r2,8
  806fac:	194003cc 	andi	r5,r3,15
  806fb0:	2800021e 	bne	r5,zero,806fbc <__lo0bits+0x58>
  806fb4:	1806d13a 	srli	r3,r3,4
  806fb8:	10800104 	addi	r2,r2,4
  806fbc:	194000cc 	andi	r5,r3,3
  806fc0:	2800021e 	bne	r5,zero,806fcc <__lo0bits+0x68>
  806fc4:	1806d0ba 	srli	r3,r3,2
  806fc8:	10800084 	addi	r2,r2,2
  806fcc:	1940004c 	andi	r5,r3,1
  806fd0:	2800031e 	bne	r5,zero,806fe0 <__lo0bits+0x7c>
  806fd4:	1806d07a 	srli	r3,r3,1
  806fd8:	10800044 	addi	r2,r2,1
  806fdc:	18000726 	beq	r3,zero,806ffc <__lo0bits+0x98>
  806fe0:	20c00015 	stw	r3,0(r4)
  806fe4:	f800283a 	ret
  806fe8:	1806d43a 	srli	r3,r3,16
  806fec:	00800404 	movi	r2,16
  806ff0:	003fea06 	br	806f9c <__lo0bits+0x38>
  806ff4:	0005883a 	mov	r2,zero
  806ff8:	f800283a 	ret
  806ffc:	00800804 	movi	r2,32
  807000:	f800283a 	ret
  807004:	1806d0ba 	srli	r3,r3,2
  807008:	00800084 	movi	r2,2
  80700c:	20c00015 	stw	r3,0(r4)
  807010:	f800283a 	ret

00807014 <__i2b>:
  807014:	defffe04 	addi	sp,sp,-8
  807018:	dc000015 	stw	r16,0(sp)
  80701c:	2821883a 	mov	r16,r5
  807020:	01400044 	movi	r5,1
  807024:	dfc00115 	stw	ra,4(sp)
  807028:	0806ba40 	call	806ba4 <_Balloc>
  80702c:	10000726 	beq	r2,zero,80704c <__i2b+0x38>
  807030:	01000044 	movi	r4,1
  807034:	14000515 	stw	r16,20(r2)
  807038:	11000415 	stw	r4,16(r2)
  80703c:	dfc00117 	ldw	ra,4(sp)
  807040:	dc000017 	ldw	r16,0(sp)
  807044:	dec00204 	addi	sp,sp,8
  807048:	f800283a 	ret
  80704c:	01c02074 	movhi	r7,129
  807050:	01002074 	movhi	r4,129
  807054:	39c1c204 	addi	r7,r7,1800
  807058:	000d883a 	mov	r6,zero
  80705c:	01405004 	movi	r5,320
  807060:	2101d704 	addi	r4,r4,1884
  807064:	08099900 	call	809990 <__assert_func>

00807068 <__multiply>:
  807068:	defff004 	addi	sp,sp,-64
  80706c:	dd800c15 	stw	r22,48(sp)
  807070:	dc400715 	stw	r17,28(sp)
  807074:	2d800417 	ldw	r22,16(r5)
  807078:	34400417 	ldw	r17,16(r6)
  80707c:	dc800815 	stw	r18,32(sp)
  807080:	dc000615 	stw	r16,24(sp)
  807084:	dfc00f15 	stw	ra,60(sp)
  807088:	df000e15 	stw	fp,56(sp)
  80708c:	ddc00d15 	stw	r23,52(sp)
  807090:	dd400b15 	stw	r21,44(sp)
  807094:	dd000a15 	stw	r20,40(sp)
  807098:	dcc00915 	stw	r19,36(sp)
  80709c:	2825883a 	mov	r18,r5
  8070a0:	3021883a 	mov	r16,r6
  8070a4:	b4400516 	blt	r22,r17,8070bc <__multiply+0x54>
  8070a8:	8807883a 	mov	r3,r17
  8070ac:	2821883a 	mov	r16,r5
  8070b0:	b023883a 	mov	r17,r22
  8070b4:	3025883a 	mov	r18,r6
  8070b8:	182d883a 	mov	r22,r3
  8070bc:	80800217 	ldw	r2,8(r16)
  8070c0:	8d87883a 	add	r3,r17,r22
  8070c4:	d8c00115 	stw	r3,4(sp)
  8070c8:	81400117 	ldw	r5,4(r16)
  8070cc:	10c0010e 	bge	r2,r3,8070d4 <__multiply+0x6c>
  8070d0:	29400044 	addi	r5,r5,1
  8070d4:	0806ba40 	call	806ba4 <_Balloc>
  8070d8:	d8800515 	stw	r2,20(sp)
  8070dc:	10008626 	beq	r2,zero,8072f8 <__multiply+0x290>
  8070e0:	d8800117 	ldw	r2,4(sp)
  8070e4:	102690ba 	slli	r19,r2,2
  8070e8:	d8800517 	ldw	r2,20(sp)
  8070ec:	10c00504 	addi	r3,r2,20
  8070f0:	d8c00015 	stw	r3,0(sp)
  8070f4:	1ce7883a 	add	r19,r3,r19
  8070f8:	1805883a 	mov	r2,r3
  8070fc:	1cc0032e 	bgeu	r3,r19,80710c <__multiply+0xa4>
  807100:	10000015 	stw	zero,0(r2)
  807104:	10800104 	addi	r2,r2,4
  807108:	14fffd36 	bltu	r2,r19,807100 <__multiply+0x98>
  80710c:	b02c90ba 	slli	r22,r22,2
  807110:	882290ba 	slli	r17,r17,2
  807114:	94800504 	addi	r18,r18,20
  807118:	80800504 	addi	r2,r16,20
  80711c:	9587883a 	add	r3,r18,r22
  807120:	d8800315 	stw	r2,12(sp)
  807124:	d8c00215 	stw	r3,8(sp)
  807128:	1463883a 	add	r17,r2,r17
  80712c:	90c0342e 	bgeu	r18,r3,807200 <__multiply+0x198>
  807130:	80800544 	addi	r2,r16,21
  807134:	88804b36 	bltu	r17,r2,807264 <__multiply+0x1fc>
  807138:	8c05c83a 	sub	r2,r17,r16
  80713c:	10bffac4 	addi	r2,r2,-21
  807140:	1004d0ba 	srli	r2,r2,2
  807144:	10800044 	addi	r2,r2,1
  807148:	100490ba 	slli	r2,r2,2
  80714c:	d8800415 	stw	r2,16(sp)
  807150:	00000606 	br	80716c <__multiply+0x104>
  807154:	d8800017 	ldw	r2,0(sp)
  807158:	94800104 	addi	r18,r18,4
  80715c:	10800104 	addi	r2,r2,4
  807160:	d8800015 	stw	r2,0(sp)
  807164:	d8800217 	ldw	r2,8(sp)
  807168:	9080252e 	bgeu	r18,r2,807200 <__multiply+0x198>
  80716c:	90800017 	ldw	r2,0(r18)
  807170:	15ffffcc 	andi	r23,r2,65535
  807174:	b800401e 	bne	r23,zero,807278 <__multiply+0x210>
  807178:	1028d43a 	srli	r20,r2,16
  80717c:	a03ff526 	beq	r20,zero,807154 <__multiply+0xec>
  807180:	dd400017 	ldw	r21,0(sp)
  807184:	dd800317 	ldw	r22,12(sp)
  807188:	0039883a 	mov	fp,zero
  80718c:	adc00017 	ldw	r23,0(r21)
  807190:	b821883a 	mov	r16,r23
  807194:	b100000b 	ldhu	r4,0(r22)
  807198:	a00b883a 	mov	r5,r20
  80719c:	ad400104 	addi	r21,r21,4
  8071a0:	0800f1c0 	call	800f1c <__mulsi3>
  8071a4:	800cd43a 	srli	r6,r16,16
  8071a8:	b8ffffcc 	andi	r3,r23,65535
  8071ac:	b5800104 	addi	r22,r22,4
  8071b0:	118d883a 	add	r6,r2,r6
  8071b4:	3739883a 	add	fp,r6,fp
  8071b8:	e004943a 	slli	r2,fp,16
  8071bc:	ac000017 	ldw	r16,0(r21)
  8071c0:	a00b883a 	mov	r5,r20
  8071c4:	10c6b03a 	or	r3,r2,r3
  8071c8:	a8ffff15 	stw	r3,-4(r21)
  8071cc:	b13fff8b 	ldhu	r4,-2(r22)
  8071d0:	0800f1c0 	call	800f1c <__mulsi3>
  8071d4:	e00cd43a 	srli	r6,fp,16
  8071d8:	80ffffcc 	andi	r3,r16,65535
  8071dc:	10c7883a 	add	r3,r2,r3
  8071e0:	19af883a 	add	r23,r3,r6
  8071e4:	b838d43a 	srli	fp,r23,16
  8071e8:	b47fea36 	bltu	r22,r17,807194 <__multiply+0x12c>
  8071ec:	d8800017 	ldw	r2,0(sp)
  8071f0:	d8c00417 	ldw	r3,16(sp)
  8071f4:	10c5883a 	add	r2,r2,r3
  8071f8:	15c00015 	stw	r23,0(r2)
  8071fc:	003fd506 	br	807154 <__multiply+0xec>
  807200:	d8800117 	ldw	r2,4(sp)
  807204:	00800516 	blt	zero,r2,80721c <__multiply+0x1b4>
  807208:	00000706 	br	807228 <__multiply+0x1c0>
  80720c:	d8800117 	ldw	r2,4(sp)
  807210:	10bfffc4 	addi	r2,r2,-1
  807214:	d8800115 	stw	r2,4(sp)
  807218:	10000326 	beq	r2,zero,807228 <__multiply+0x1c0>
  80721c:	98bfff17 	ldw	r2,-4(r19)
  807220:	9cffff04 	addi	r19,r19,-4
  807224:	103ff926 	beq	r2,zero,80720c <__multiply+0x1a4>
  807228:	d8800517 	ldw	r2,20(sp)
  80722c:	d8c00117 	ldw	r3,4(sp)
  807230:	10c00415 	stw	r3,16(r2)
  807234:	dfc00f17 	ldw	ra,60(sp)
  807238:	df000e17 	ldw	fp,56(sp)
  80723c:	ddc00d17 	ldw	r23,52(sp)
  807240:	dd800c17 	ldw	r22,48(sp)
  807244:	dd400b17 	ldw	r21,44(sp)
  807248:	dd000a17 	ldw	r20,40(sp)
  80724c:	dcc00917 	ldw	r19,36(sp)
  807250:	dc800817 	ldw	r18,32(sp)
  807254:	dc400717 	ldw	r17,28(sp)
  807258:	dc000617 	ldw	r16,24(sp)
  80725c:	dec01004 	addi	sp,sp,64
  807260:	f800283a 	ret
  807264:	00800104 	movi	r2,4
  807268:	d8800415 	stw	r2,16(sp)
  80726c:	90800017 	ldw	r2,0(r18)
  807270:	15ffffcc 	andi	r23,r2,65535
  807274:	b83fc026 	beq	r23,zero,807178 <__multiply+0x110>
  807278:	dd800017 	ldw	r22,0(sp)
  80727c:	dd400317 	ldw	r21,12(sp)
  807280:	0029883a 	mov	r20,zero
  807284:	af000017 	ldw	fp,0(r21)
  807288:	b4000017 	ldw	r16,0(r22)
  80728c:	b80b883a 	mov	r5,r23
  807290:	e13fffcc 	andi	r4,fp,65535
  807294:	0800f1c0 	call	800f1c <__mulsi3>
  807298:	e008d43a 	srli	r4,fp,16
  80729c:	823fffcc 	andi	r8,r16,65535
  8072a0:	1205883a 	add	r2,r2,r8
  8072a4:	b80b883a 	mov	r5,r23
  8072a8:	1529883a 	add	r20,r2,r20
  8072ac:	8020d43a 	srli	r16,r16,16
  8072b0:	0800f1c0 	call	800f1c <__mulsi3>
  8072b4:	a008d43a 	srli	r4,r20,16
  8072b8:	1405883a 	add	r2,r2,r16
  8072bc:	a0ffffcc 	andi	r3,r20,65535
  8072c0:	1105883a 	add	r2,r2,r4
  8072c4:	1008943a 	slli	r4,r2,16
  8072c8:	b5800104 	addi	r22,r22,4
  8072cc:	ad400104 	addi	r21,r21,4
  8072d0:	20c6b03a 	or	r3,r4,r3
  8072d4:	b0ffff15 	stw	r3,-4(r22)
  8072d8:	1028d43a 	srli	r20,r2,16
  8072dc:	ac7fe936 	bltu	r21,r17,807284 <__multiply+0x21c>
  8072e0:	d8800017 	ldw	r2,0(sp)
  8072e4:	d8c00417 	ldw	r3,16(sp)
  8072e8:	10c5883a 	add	r2,r2,r3
  8072ec:	15000015 	stw	r20,0(r2)
  8072f0:	90800017 	ldw	r2,0(r18)
  8072f4:	003fa006 	br	807178 <__multiply+0x110>
  8072f8:	01c02074 	movhi	r7,129
  8072fc:	01002074 	movhi	r4,129
  807300:	39c1c204 	addi	r7,r7,1800
  807304:	000d883a 	mov	r6,zero
  807308:	01405744 	movi	r5,349
  80730c:	2101d704 	addi	r4,r4,1884
  807310:	08099900 	call	809990 <__assert_func>

00807314 <__pow5mult>:
  807314:	defffb04 	addi	sp,sp,-20
  807318:	dcc00315 	stw	r19,12(sp)
  80731c:	dc000015 	stw	r16,0(sp)
  807320:	dfc00415 	stw	ra,16(sp)
  807324:	dc800215 	stw	r18,8(sp)
  807328:	dc400115 	stw	r17,4(sp)
  80732c:	308000cc 	andi	r2,r6,3
  807330:	3021883a 	mov	r16,r6
  807334:	2027883a 	mov	r19,r4
  807338:	10002d1e 	bne	r2,zero,8073f0 <__pow5mult+0xdc>
  80733c:	2825883a 	mov	r18,r5
  807340:	8021d0ba 	srai	r16,r16,2
  807344:	80001926 	beq	r16,zero,8073ac <__pow5mult+0x98>
  807348:	9c401217 	ldw	r17,72(r19)
  80734c:	8800061e 	bne	r17,zero,807368 <__pow5mult+0x54>
  807350:	00002f06 	br	807410 <__pow5mult+0xfc>
  807354:	8021d07a 	srai	r16,r16,1
  807358:	80001426 	beq	r16,zero,8073ac <__pow5mult+0x98>
  80735c:	88800017 	ldw	r2,0(r17)
  807360:	10001a26 	beq	r2,zero,8073cc <__pow5mult+0xb8>
  807364:	1023883a 	mov	r17,r2
  807368:	8080004c 	andi	r2,r16,1
  80736c:	103ff926 	beq	r2,zero,807354 <__pow5mult+0x40>
  807370:	880d883a 	mov	r6,r17
  807374:	900b883a 	mov	r5,r18
  807378:	9809883a 	mov	r4,r19
  80737c:	08070680 	call	807068 <__multiply>
  807380:	90001926 	beq	r18,zero,8073e8 <__pow5mult+0xd4>
  807384:	91000117 	ldw	r4,4(r18)
  807388:	98c01317 	ldw	r3,76(r19)
  80738c:	8021d07a 	srai	r16,r16,1
  807390:	200890ba 	slli	r4,r4,2
  807394:	1907883a 	add	r3,r3,r4
  807398:	19000017 	ldw	r4,0(r3)
  80739c:	91000015 	stw	r4,0(r18)
  8073a0:	1c800015 	stw	r18,0(r3)
  8073a4:	1025883a 	mov	r18,r2
  8073a8:	803fec1e 	bne	r16,zero,80735c <__pow5mult+0x48>
  8073ac:	9005883a 	mov	r2,r18
  8073b0:	dfc00417 	ldw	ra,16(sp)
  8073b4:	dcc00317 	ldw	r19,12(sp)
  8073b8:	dc800217 	ldw	r18,8(sp)
  8073bc:	dc400117 	ldw	r17,4(sp)
  8073c0:	dc000017 	ldw	r16,0(sp)
  8073c4:	dec00504 	addi	sp,sp,20
  8073c8:	f800283a 	ret
  8073cc:	880d883a 	mov	r6,r17
  8073d0:	880b883a 	mov	r5,r17
  8073d4:	9809883a 	mov	r4,r19
  8073d8:	08070680 	call	807068 <__multiply>
  8073dc:	88800015 	stw	r2,0(r17)
  8073e0:	10000015 	stw	zero,0(r2)
  8073e4:	003fdf06 	br	807364 <__pow5mult+0x50>
  8073e8:	1025883a 	mov	r18,r2
  8073ec:	003fd906 	br	807354 <__pow5mult+0x40>
  8073f0:	100490ba 	slli	r2,r2,2
  8073f4:	00c02074 	movhi	r3,129
  8073f8:	000f883a 	mov	r7,zero
  8073fc:	10c7883a 	add	r3,r2,r3
  807400:	1981e617 	ldw	r6,1944(r3)
  807404:	0806c6c0 	call	806c6c <__multadd>
  807408:	1025883a 	mov	r18,r2
  80740c:	003fcc06 	br	807340 <__pow5mult+0x2c>
  807410:	01409c44 	movi	r5,625
  807414:	9809883a 	mov	r4,r19
  807418:	08070140 	call	807014 <__i2b>
  80741c:	98801215 	stw	r2,72(r19)
  807420:	1023883a 	mov	r17,r2
  807424:	10000015 	stw	zero,0(r2)
  807428:	003fcf06 	br	807368 <__pow5mult+0x54>

0080742c <__lshift>:
  80742c:	defff904 	addi	sp,sp,-28
  807430:	dd400515 	stw	r21,20(sp)
  807434:	dc800215 	stw	r18,8(sp)
  807438:	302bd17a 	srai	r21,r6,5
  80743c:	2c800417 	ldw	r18,16(r5)
  807440:	28800217 	ldw	r2,8(r5)
  807444:	dd000415 	stw	r20,16(sp)
  807448:	aca5883a 	add	r18,r21,r18
  80744c:	dcc00315 	stw	r19,12(sp)
  807450:	dc400115 	stw	r17,4(sp)
  807454:	dc000015 	stw	r16,0(sp)
  807458:	dfc00615 	stw	ra,24(sp)
  80745c:	94400044 	addi	r17,r18,1
  807460:	2821883a 	mov	r16,r5
  807464:	3029883a 	mov	r20,r6
  807468:	29400117 	ldw	r5,4(r5)
  80746c:	2027883a 	mov	r19,r4
  807470:	1440030e 	bge	r2,r17,807480 <__lshift+0x54>
  807474:	1085883a 	add	r2,r2,r2
  807478:	29400044 	addi	r5,r5,1
  80747c:	147ffd16 	blt	r2,r17,807474 <__lshift+0x48>
  807480:	9809883a 	mov	r4,r19
  807484:	0806ba40 	call	806ba4 <_Balloc>
  807488:	10004326 	beq	r2,zero,807598 <__lshift+0x16c>
  80748c:	12000504 	addi	r8,r2,20
  807490:	0540090e 	bge	zero,r21,8074b8 <__lshift+0x8c>
  807494:	ad400144 	addi	r21,r21,5
  807498:	a82a90ba 	slli	r21,r21,2
  80749c:	4007883a 	mov	r3,r8
  8074a0:	1549883a 	add	r4,r2,r21
  8074a4:	18c00104 	addi	r3,r3,4
  8074a8:	183fff15 	stw	zero,-4(r3)
  8074ac:	193ffd1e 	bne	r3,r4,8074a4 <__lshift+0x78>
  8074b0:	ad7ffb04 	addi	r21,r21,-20
  8074b4:	4551883a 	add	r8,r8,r21
  8074b8:	82400417 	ldw	r9,16(r16)
  8074bc:	80c00504 	addi	r3,r16,20
  8074c0:	a14007cc 	andi	r5,r20,31
  8074c4:	481290ba 	slli	r9,r9,2
  8074c8:	1a53883a 	add	r9,r3,r9
  8074cc:	28002a26 	beq	r5,zero,807578 <__lshift+0x14c>
  8074d0:	02800804 	movi	r10,32
  8074d4:	5155c83a 	sub	r10,r10,r5
  8074d8:	4009883a 	mov	r4,r8
  8074dc:	000f883a 	mov	r7,zero
  8074e0:	19800017 	ldw	r6,0(r3)
  8074e4:	21000104 	addi	r4,r4,4
  8074e8:	18c00104 	addi	r3,r3,4
  8074ec:	314c983a 	sll	r6,r6,r5
  8074f0:	31ccb03a 	or	r6,r6,r7
  8074f4:	21bfff15 	stw	r6,-4(r4)
  8074f8:	19bfff17 	ldw	r6,-4(r3)
  8074fc:	328ed83a 	srl	r7,r6,r10
  807500:	1a7ff736 	bltu	r3,r9,8074e0 <__lshift+0xb4>
  807504:	80c00544 	addi	r3,r16,21
  807508:	48c02136 	bltu	r9,r3,807590 <__lshift+0x164>
  80750c:	4c07c83a 	sub	r3,r9,r16
  807510:	18fffac4 	addi	r3,r3,-21
  807514:	1806d0ba 	srli	r3,r3,2
  807518:	18c00044 	addi	r3,r3,1
  80751c:	180690ba 	slli	r3,r3,2
  807520:	40d1883a 	add	r8,r8,r3
  807524:	41c00015 	stw	r7,0(r8)
  807528:	38000126 	beq	r7,zero,807530 <__lshift+0x104>
  80752c:	8825883a 	mov	r18,r17
  807530:	14800415 	stw	r18,16(r2)
  807534:	80000726 	beq	r16,zero,807554 <__lshift+0x128>
  807538:	81000117 	ldw	r4,4(r16)
  80753c:	98c01317 	ldw	r3,76(r19)
  807540:	200890ba 	slli	r4,r4,2
  807544:	1907883a 	add	r3,r3,r4
  807548:	19000017 	ldw	r4,0(r3)
  80754c:	81000015 	stw	r4,0(r16)
  807550:	1c000015 	stw	r16,0(r3)
  807554:	dfc00617 	ldw	ra,24(sp)
  807558:	dd400517 	ldw	r21,20(sp)
  80755c:	dd000417 	ldw	r20,16(sp)
  807560:	dcc00317 	ldw	r19,12(sp)
  807564:	dc800217 	ldw	r18,8(sp)
  807568:	dc400117 	ldw	r17,4(sp)
  80756c:	dc000017 	ldw	r16,0(sp)
  807570:	dec00704 	addi	sp,sp,28
  807574:	f800283a 	ret
  807578:	19000017 	ldw	r4,0(r3)
  80757c:	18c00104 	addi	r3,r3,4
  807580:	42000104 	addi	r8,r8,4
  807584:	413fff15 	stw	r4,-4(r8)
  807588:	1a7ffb36 	bltu	r3,r9,807578 <__lshift+0x14c>
  80758c:	003fe806 	br	807530 <__lshift+0x104>
  807590:	00c00104 	movi	r3,4
  807594:	003fe206 	br	807520 <__lshift+0xf4>
  807598:	01c02074 	movhi	r7,129
  80759c:	01002074 	movhi	r4,129
  8075a0:	39c1c204 	addi	r7,r7,1800
  8075a4:	000d883a 	mov	r6,zero
  8075a8:	01407644 	movi	r5,473
  8075ac:	2101d704 	addi	r4,r4,1884
  8075b0:	08099900 	call	809990 <__assert_func>

008075b4 <__mcmp>:
  8075b4:	21800417 	ldw	r6,16(r4)
  8075b8:	28c00417 	ldw	r3,16(r5)
  8075bc:	30c5c83a 	sub	r2,r6,r3
  8075c0:	30c00e1e 	bne	r6,r3,8075fc <__mcmp+0x48>
  8075c4:	180690ba 	slli	r3,r3,2
  8075c8:	21c00504 	addi	r7,r4,20
  8075cc:	29400504 	addi	r5,r5,20
  8075d0:	38c9883a 	add	r4,r7,r3
  8075d4:	28c7883a 	add	r3,r5,r3
  8075d8:	00000106 	br	8075e0 <__mcmp+0x2c>
  8075dc:	3900082e 	bgeu	r7,r4,807600 <__mcmp+0x4c>
  8075e0:	21bfff17 	ldw	r6,-4(r4)
  8075e4:	197fff17 	ldw	r5,-4(r3)
  8075e8:	213fff04 	addi	r4,r4,-4
  8075ec:	18ffff04 	addi	r3,r3,-4
  8075f0:	317ffa26 	beq	r6,r5,8075dc <__mcmp+0x28>
  8075f4:	3140032e 	bgeu	r6,r5,807604 <__mcmp+0x50>
  8075f8:	00bfffc4 	movi	r2,-1
  8075fc:	f800283a 	ret
  807600:	f800283a 	ret
  807604:	00800044 	movi	r2,1
  807608:	f800283a 	ret

0080760c <__mdiff>:
  80760c:	28800417 	ldw	r2,16(r5)
  807610:	30c00417 	ldw	r3,16(r6)
  807614:	defffc04 	addi	sp,sp,-16
  807618:	dc800215 	stw	r18,8(sp)
  80761c:	dc400115 	stw	r17,4(sp)
  807620:	dc000015 	stw	r16,0(sp)
  807624:	dfc00315 	stw	ra,12(sp)
  807628:	2823883a 	mov	r17,r5
  80762c:	3021883a 	mov	r16,r6
  807630:	10e5c83a 	sub	r18,r2,r3
  807634:	10c0641e 	bne	r2,r3,8077c8 <__mdiff+0x1bc>
  807638:	180c90ba 	slli	r6,r3,2
  80763c:	29400504 	addi	r5,r5,20
  807640:	80c00504 	addi	r3,r16,20
  807644:	2985883a 	add	r2,r5,r6
  807648:	1987883a 	add	r3,r3,r6
  80764c:	00000106 	br	807654 <__mdiff+0x48>
  807650:	2880642e 	bgeu	r5,r2,8077e4 <__mdiff+0x1d8>
  807654:	11ffff17 	ldw	r7,-4(r2)
  807658:	19bfff17 	ldw	r6,-4(r3)
  80765c:	10bfff04 	addi	r2,r2,-4
  807660:	18ffff04 	addi	r3,r3,-4
  807664:	39bffa26 	beq	r7,r6,807650 <__mdiff+0x44>
  807668:	39805236 	bltu	r7,r6,8077b4 <__mdiff+0x1a8>
  80766c:	89400117 	ldw	r5,4(r17)
  807670:	0806ba40 	call	806ba4 <_Balloc>
  807674:	10006226 	beq	r2,zero,807800 <__mdiff+0x1f4>
  807678:	8a400417 	ldw	r9,16(r17)
  80767c:	83000417 	ldw	r12,16(r16)
  807680:	8ac00504 	addi	r11,r17,20
  807684:	481090ba 	slli	r8,r9,2
  807688:	601890ba 	slli	r12,r12,2
  80768c:	81800504 	addi	r6,r16,20
  807690:	13400504 	addi	r13,r2,20
  807694:	14800315 	stw	r18,12(r2)
  807698:	5a11883a 	add	r8,r11,r8
  80769c:	3319883a 	add	r12,r6,r12
  8076a0:	681d883a 	mov	r14,r13
  8076a4:	5815883a 	mov	r10,r11
  8076a8:	0007883a 	mov	r3,zero
  8076ac:	51000017 	ldw	r4,0(r10)
  8076b0:	31c00017 	ldw	r7,0(r6)
  8076b4:	73800104 	addi	r14,r14,4
  8076b8:	217fffcc 	andi	r5,r4,65535
  8076bc:	28cb883a 	add	r5,r5,r3
  8076c0:	38ffffcc 	andi	r3,r7,65535
  8076c4:	28cbc83a 	sub	r5,r5,r3
  8076c8:	380ed43a 	srli	r7,r7,16
  8076cc:	2006d43a 	srli	r3,r4,16
  8076d0:	2809d43a 	srai	r4,r5,16
  8076d4:	297fffcc 	andi	r5,r5,65535
  8076d8:	19c7c83a 	sub	r3,r3,r7
  8076dc:	1907883a 	add	r3,r3,r4
  8076e0:	1808943a 	slli	r4,r3,16
  8076e4:	31800104 	addi	r6,r6,4
  8076e8:	1807d43a 	srai	r3,r3,16
  8076ec:	214ab03a 	or	r5,r4,r5
  8076f0:	717fff15 	stw	r5,-4(r14)
  8076f4:	52800104 	addi	r10,r10,4
  8076f8:	333fec36 	bltu	r6,r12,8076ac <__mdiff+0xa0>
  8076fc:	640fc83a 	sub	r7,r12,r16
  807700:	39fffac4 	addi	r7,r7,-21
  807704:	84000544 	addi	r16,r16,21
  807708:	380ed0ba 	srli	r7,r7,2
  80770c:	64003336 	bltu	r12,r16,8077dc <__mdiff+0x1d0>
  807710:	380890ba 	slli	r4,r7,2
  807714:	6909883a 	add	r4,r13,r4
  807718:	64002e36 	bltu	r12,r16,8077d4 <__mdiff+0x1c8>
  80771c:	39800044 	addi	r6,r7,1
  807720:	300c90ba 	slli	r6,r6,2
  807724:	5997883a 	add	r11,r11,r6
  807728:	699b883a 	add	r13,r13,r6
  80772c:	5a00152e 	bgeu	r11,r8,807784 <__mdiff+0x178>
  807730:	680f883a 	mov	r7,r13
  807734:	580d883a 	mov	r6,r11
  807738:	31000017 	ldw	r4,0(r6)
  80773c:	39c00104 	addi	r7,r7,4
  807740:	31800104 	addi	r6,r6,4
  807744:	217fffcc 	andi	r5,r4,65535
  807748:	28cb883a 	add	r5,r5,r3
  80774c:	2815d43a 	srai	r10,r5,16
  807750:	2006d43a 	srli	r3,r4,16
  807754:	297fffcc 	andi	r5,r5,65535
  807758:	1a87883a 	add	r3,r3,r10
  80775c:	1814943a 	slli	r10,r3,16
  807760:	1807d43a 	srai	r3,r3,16
  807764:	514ab03a 	or	r5,r10,r5
  807768:	397fff15 	stw	r5,-4(r7)
  80776c:	323ff236 	bltu	r6,r8,807738 <__mdiff+0x12c>
  807770:	413fffc4 	addi	r4,r8,-1
  807774:	22c9c83a 	sub	r4,r4,r11
  807778:	2008d0ba 	srli	r4,r4,2
  80777c:	200890ba 	slli	r4,r4,2
  807780:	6909883a 	add	r4,r13,r4
  807784:	2800041e 	bne	r5,zero,807798 <__mdiff+0x18c>
  807788:	20ffff17 	ldw	r3,-4(r4)
  80778c:	4a7fffc4 	addi	r9,r9,-1
  807790:	213fff04 	addi	r4,r4,-4
  807794:	183ffc26 	beq	r3,zero,807788 <__mdiff+0x17c>
  807798:	12400415 	stw	r9,16(r2)
  80779c:	dfc00317 	ldw	ra,12(sp)
  8077a0:	dc800217 	ldw	r18,8(sp)
  8077a4:	dc400117 	ldw	r17,4(sp)
  8077a8:	dc000017 	ldw	r16,0(sp)
  8077ac:	dec00404 	addi	sp,sp,16
  8077b0:	f800283a 	ret
  8077b4:	8805883a 	mov	r2,r17
  8077b8:	04800044 	movi	r18,1
  8077bc:	8023883a 	mov	r17,r16
  8077c0:	1021883a 	mov	r16,r2
  8077c4:	003fa906 	br	80766c <__mdiff+0x60>
  8077c8:	903ffa16 	blt	r18,zero,8077b4 <__mdiff+0x1a8>
  8077cc:	0025883a 	mov	r18,zero
  8077d0:	003fa606 	br	80766c <__mdiff+0x60>
  8077d4:	01800104 	movi	r6,4
  8077d8:	003fd206 	br	807724 <__mdiff+0x118>
  8077dc:	0009883a 	mov	r4,zero
  8077e0:	003fcc06 	br	807714 <__mdiff+0x108>
  8077e4:	000b883a 	mov	r5,zero
  8077e8:	0806ba40 	call	806ba4 <_Balloc>
  8077ec:	10000b26 	beq	r2,zero,80781c <__mdiff+0x210>
  8077f0:	00c00044 	movi	r3,1
  8077f4:	10c00415 	stw	r3,16(r2)
  8077f8:	10000515 	stw	zero,20(r2)
  8077fc:	003fe706 	br	80779c <__mdiff+0x190>
  807800:	01c02074 	movhi	r7,129
  807804:	01002074 	movhi	r4,129
  807808:	39c1c204 	addi	r7,r7,1800
  80780c:	000d883a 	mov	r6,zero
  807810:	01409004 	movi	r5,576
  807814:	2101d704 	addi	r4,r4,1884
  807818:	08099900 	call	809990 <__assert_func>
  80781c:	01c02074 	movhi	r7,129
  807820:	01002074 	movhi	r4,129
  807824:	39c1c204 	addi	r7,r7,1800
  807828:	000d883a 	mov	r6,zero
  80782c:	01408c84 	movi	r5,562
  807830:	2101d704 	addi	r4,r4,1884
  807834:	08099900 	call	809990 <__assert_func>

00807838 <__ulp>:
  807838:	28dffc2c 	andhi	r3,r5,32752
  80783c:	017f3034 	movhi	r5,64704
  807840:	1947883a 	add	r3,r3,r5
  807844:	00c0020e 	bge	zero,r3,807850 <__ulp+0x18>
  807848:	0005883a 	mov	r2,zero
  80784c:	f800283a 	ret
  807850:	00c7c83a 	sub	r3,zero,r3
  807854:	1807d53a 	srai	r3,r3,20
  807858:	18800508 	cmpgei	r2,r3,20
  80785c:	1000041e 	bne	r2,zero,807870 <__ulp+0x38>
  807860:	00800234 	movhi	r2,8
  807864:	10c7d83a 	sra	r3,r2,r3
  807868:	0005883a 	mov	r2,zero
  80786c:	f800283a 	ret
  807870:	193ffb04 	addi	r4,r3,-20
  807874:	208007c8 	cmpgei	r2,r4,31
  807878:	0007883a 	mov	r3,zero
  80787c:	1000031e 	bne	r2,zero,80788c <__ulp+0x54>
  807880:	00a00034 	movhi	r2,32768
  807884:	1104d83a 	srl	r2,r2,r4
  807888:	f800283a 	ret
  80788c:	00800044 	movi	r2,1
  807890:	f800283a 	ret

00807894 <__b2d>:
  807894:	defffa04 	addi	sp,sp,-24
  807898:	dc400115 	stw	r17,4(sp)
  80789c:	24400417 	ldw	r17,16(r4)
  8078a0:	dc000015 	stw	r16,0(sp)
  8078a4:	24000504 	addi	r16,r4,20
  8078a8:	882290ba 	slli	r17,r17,2
  8078ac:	dc800215 	stw	r18,8(sp)
  8078b0:	dd000415 	stw	r20,16(sp)
  8078b4:	8463883a 	add	r17,r16,r17
  8078b8:	8cbfff17 	ldw	r18,-4(r17)
  8078bc:	dcc00315 	stw	r19,12(sp)
  8078c0:	dfc00515 	stw	ra,20(sp)
  8078c4:	9009883a 	mov	r4,r18
  8078c8:	2827883a 	mov	r19,r5
  8078cc:	0806f000 	call	806f00 <__hi0bits>
  8078d0:	01000804 	movi	r4,32
  8078d4:	2087c83a 	sub	r3,r4,r2
  8078d8:	98c00015 	stw	r3,0(r19)
  8078dc:	10c002c8 	cmpgei	r3,r2,11
  8078e0:	8d3fff04 	addi	r20,r17,-4
  8078e4:	18001f26 	beq	r3,zero,807964 <__b2d+0xd0>
  8078e8:	10fffd44 	addi	r3,r2,-11
  8078ec:	85000e2e 	bgeu	r16,r20,807928 <__b2d+0x94>
  8078f0:	88bffe17 	ldw	r2,-8(r17)
  8078f4:	18001226 	beq	r3,zero,807940 <__b2d+0xac>
  8078f8:	20c9c83a 	sub	r4,r4,r3
  8078fc:	110cd83a 	srl	r6,r2,r4
  807900:	90e4983a 	sll	r18,r18,r3
  807904:	10c4983a 	sll	r2,r2,r3
  807908:	897ffe04 	addi	r5,r17,-8
  80790c:	9186b03a 	or	r3,r18,r6
  807910:	18cffc34 	orhi	r3,r3,16368
  807914:	81400b2e 	bgeu	r16,r5,807944 <__b2d+0xb0>
  807918:	897ffd17 	ldw	r5,-12(r17)
  80791c:	2908d83a 	srl	r4,r5,r4
  807920:	1104b03a 	or	r2,r2,r4
  807924:	00000706 	br	807944 <__b2d+0xb0>
  807928:	18000426 	beq	r3,zero,80793c <__b2d+0xa8>
  80792c:	90c6983a 	sll	r3,r18,r3
  807930:	0005883a 	mov	r2,zero
  807934:	18cffc34 	orhi	r3,r3,16368
  807938:	00000206 	br	807944 <__b2d+0xb0>
  80793c:	0005883a 	mov	r2,zero
  807940:	90cffc34 	orhi	r3,r18,16368
  807944:	dfc00517 	ldw	ra,20(sp)
  807948:	dd000417 	ldw	r20,16(sp)
  80794c:	dcc00317 	ldw	r19,12(sp)
  807950:	dc800217 	ldw	r18,8(sp)
  807954:	dc400117 	ldw	r17,4(sp)
  807958:	dc000017 	ldw	r16,0(sp)
  80795c:	dec00604 	addi	sp,sp,24
  807960:	f800283a 	ret
  807964:	014002c4 	movi	r5,11
  807968:	2889c83a 	sub	r4,r5,r2
  80796c:	9106d83a 	srl	r3,r18,r4
  807970:	18cffc34 	orhi	r3,r3,16368
  807974:	85000536 	bltu	r16,r20,80798c <__b2d+0xf8>
  807978:	000b883a 	mov	r5,zero
  80797c:	10800544 	addi	r2,r2,21
  807980:	9084983a 	sll	r2,r18,r2
  807984:	1144b03a 	or	r2,r2,r5
  807988:	003fee06 	br	807944 <__b2d+0xb0>
  80798c:	897ffe17 	ldw	r5,-8(r17)
  807990:	290ad83a 	srl	r5,r5,r4
  807994:	003ff906 	br	80797c <__b2d+0xe8>

00807998 <__d2b>:
  807998:	defff804 	addi	sp,sp,-32
  80799c:	dd000615 	stw	r20,24(sp)
  8079a0:	2829883a 	mov	r20,r5
  8079a4:	01400044 	movi	r5,1
  8079a8:	dcc00515 	stw	r19,20(sp)
  8079ac:	dc000215 	stw	r16,8(sp)
  8079b0:	dfc00715 	stw	ra,28(sp)
  8079b4:	dc800415 	stw	r18,16(sp)
  8079b8:	dc400315 	stw	r17,12(sp)
  8079bc:	3021883a 	mov	r16,r6
  8079c0:	3827883a 	mov	r19,r7
  8079c4:	0806ba40 	call	806ba4 <_Balloc>
  8079c8:	10004526 	beq	r2,zero,807ae0 <__d2b+0x148>
  8079cc:	8024d53a 	srli	r18,r16,20
  8079d0:	01800434 	movhi	r6,16
  8079d4:	31bfffc4 	addi	r6,r6,-1
  8079d8:	9481ffcc 	andi	r18,r18,2047
  8079dc:	1023883a 	mov	r17,r2
  8079e0:	81a0703a 	and	r16,r16,r6
  8079e4:	90000126 	beq	r18,zero,8079ec <__d2b+0x54>
  8079e8:	84000434 	orhi	r16,r16,16
  8079ec:	dc000115 	stw	r16,4(sp)
  8079f0:	a0002226 	beq	r20,zero,807a7c <__d2b+0xe4>
  8079f4:	d809883a 	mov	r4,sp
  8079f8:	dd000015 	stw	r20,0(sp)
  8079fc:	0806f640 	call	806f64 <__lo0bits>
  807a00:	d8c00117 	ldw	r3,4(sp)
  807a04:	10003326 	beq	r2,zero,807ad4 <__d2b+0x13c>
  807a08:	01000804 	movi	r4,32
  807a0c:	2089c83a 	sub	r4,r4,r2
  807a10:	1908983a 	sll	r4,r3,r4
  807a14:	d9400017 	ldw	r5,0(sp)
  807a18:	1886d83a 	srl	r3,r3,r2
  807a1c:	2148b03a 	or	r4,r4,r5
  807a20:	89000515 	stw	r4,20(r17)
  807a24:	d8c00115 	stw	r3,4(sp)
  807a28:	88c00615 	stw	r3,24(r17)
  807a2c:	1800271e 	bne	r3,zero,807acc <__d2b+0x134>
  807a30:	04000044 	movi	r16,1
  807a34:	8c000415 	stw	r16,16(r17)
  807a38:	90001926 	beq	r18,zero,807aa0 <__d2b+0x108>
  807a3c:	00c00d44 	movi	r3,53
  807a40:	94bef344 	addi	r18,r18,-1075
  807a44:	90a5883a 	add	r18,r18,r2
  807a48:	1885c83a 	sub	r2,r3,r2
  807a4c:	d8c00817 	ldw	r3,32(sp)
  807a50:	9c800015 	stw	r18,0(r19)
  807a54:	18800015 	stw	r2,0(r3)
  807a58:	8805883a 	mov	r2,r17
  807a5c:	dfc00717 	ldw	ra,28(sp)
  807a60:	dd000617 	ldw	r20,24(sp)
  807a64:	dcc00517 	ldw	r19,20(sp)
  807a68:	dc800417 	ldw	r18,16(sp)
  807a6c:	dc400317 	ldw	r17,12(sp)
  807a70:	dc000217 	ldw	r16,8(sp)
  807a74:	dec00804 	addi	sp,sp,32
  807a78:	f800283a 	ret
  807a7c:	d9000104 	addi	r4,sp,4
  807a80:	0806f640 	call	806f64 <__lo0bits>
  807a84:	00c00044 	movi	r3,1
  807a88:	88c00415 	stw	r3,16(r17)
  807a8c:	d8c00117 	ldw	r3,4(sp)
  807a90:	10800804 	addi	r2,r2,32
  807a94:	04000044 	movi	r16,1
  807a98:	88c00515 	stw	r3,20(r17)
  807a9c:	903fe71e 	bne	r18,zero,807a3c <__d2b+0xa4>
  807aa0:	800690ba 	slli	r3,r16,2
  807aa4:	10bef384 	addi	r2,r2,-1074
  807aa8:	98800015 	stw	r2,0(r19)
  807aac:	88c5883a 	add	r2,r17,r3
  807ab0:	11000417 	ldw	r4,16(r2)
  807ab4:	8020917a 	slli	r16,r16,5
  807ab8:	0806f000 	call	806f00 <__hi0bits>
  807abc:	80a1c83a 	sub	r16,r16,r2
  807ac0:	d8800817 	ldw	r2,32(sp)
  807ac4:	14000015 	stw	r16,0(r2)
  807ac8:	003fe306 	br	807a58 <__d2b+0xc0>
  807acc:	04000084 	movi	r16,2
  807ad0:	003fd806 	br	807a34 <__d2b+0x9c>
  807ad4:	d9000017 	ldw	r4,0(sp)
  807ad8:	89000515 	stw	r4,20(r17)
  807adc:	003fd206 	br	807a28 <__d2b+0x90>
  807ae0:	01c02074 	movhi	r7,129
  807ae4:	01002074 	movhi	r4,129
  807ae8:	39c1c204 	addi	r7,r7,1800
  807aec:	000d883a 	mov	r6,zero
  807af0:	0140c284 	movi	r5,778
  807af4:	2101d704 	addi	r4,r4,1884
  807af8:	08099900 	call	809990 <__assert_func>

00807afc <__ratio>:
  807afc:	defff904 	addi	sp,sp,-28
  807b00:	dc400315 	stw	r17,12(sp)
  807b04:	2823883a 	mov	r17,r5
  807b08:	d80b883a 	mov	r5,sp
  807b0c:	dfc00615 	stw	ra,24(sp)
  807b10:	dcc00515 	stw	r19,20(sp)
  807b14:	dc800415 	stw	r18,16(sp)
  807b18:	2027883a 	mov	r19,r4
  807b1c:	dc000215 	stw	r16,8(sp)
  807b20:	08078940 	call	807894 <__b2d>
  807b24:	d9400104 	addi	r5,sp,4
  807b28:	8809883a 	mov	r4,r17
  807b2c:	1025883a 	mov	r18,r2
  807b30:	1821883a 	mov	r16,r3
  807b34:	08078940 	call	807894 <__b2d>
  807b38:	89400417 	ldw	r5,16(r17)
  807b3c:	99000417 	ldw	r4,16(r19)
  807b40:	d9800117 	ldw	r6,4(sp)
  807b44:	180f883a 	mov	r7,r3
  807b48:	2149c83a 	sub	r4,r4,r5
  807b4c:	d9400017 	ldw	r5,0(sp)
  807b50:	2008917a 	slli	r4,r4,5
  807b54:	298bc83a 	sub	r5,r5,r6
  807b58:	2149883a 	add	r4,r4,r5
  807b5c:	100d883a 	mov	r6,r2
  807b60:	01000c0e 	bge	zero,r4,807b94 <__ratio+0x98>
  807b64:	2008953a 	slli	r4,r4,20
  807b68:	2421883a 	add	r16,r4,r16
  807b6c:	9009883a 	mov	r4,r18
  807b70:	800b883a 	mov	r5,r16
  807b74:	080be1c0 	call	80be1c <__divdf3>
  807b78:	dfc00617 	ldw	ra,24(sp)
  807b7c:	dcc00517 	ldw	r19,20(sp)
  807b80:	dc800417 	ldw	r18,16(sp)
  807b84:	dc400317 	ldw	r17,12(sp)
  807b88:	dc000217 	ldw	r16,8(sp)
  807b8c:	dec00704 	addi	sp,sp,28
  807b90:	f800283a 	ret
  807b94:	2008953a 	slli	r4,r4,20
  807b98:	190fc83a 	sub	r7,r3,r4
  807b9c:	003ff306 	br	807b6c <__ratio+0x70>

00807ba0 <_mprec_log10>:
  807ba0:	defffe04 	addi	sp,sp,-8
  807ba4:	dc000015 	stw	r16,0(sp)
  807ba8:	dfc00115 	stw	ra,4(sp)
  807bac:	20800608 	cmpgei	r2,r4,24
  807bb0:	2021883a 	mov	r16,r4
  807bb4:	10000f26 	beq	r2,zero,807bf4 <_mprec_log10+0x54>
  807bb8:	0009883a 	mov	r4,zero
  807bbc:	014ffc34 	movhi	r5,16368
  807bc0:	000d883a 	mov	r6,zero
  807bc4:	01d00934 	movhi	r7,16420
  807bc8:	080c9b00 	call	80c9b0 <__muldf3>
  807bcc:	843fffc4 	addi	r16,r16,-1
  807bd0:	1009883a 	mov	r4,r2
  807bd4:	180b883a 	mov	r5,r3
  807bd8:	803ff91e 	bne	r16,zero,807bc0 <_mprec_log10+0x20>
  807bdc:	2005883a 	mov	r2,r4
  807be0:	2807883a 	mov	r3,r5
  807be4:	dfc00117 	ldw	ra,4(sp)
  807be8:	dc000017 	ldw	r16,0(sp)
  807bec:	dec00204 	addi	sp,sp,8
  807bf0:	f800283a 	ret
  807bf4:	202090fa 	slli	r16,r4,3
  807bf8:	00802074 	movhi	r2,129
  807bfc:	1081fe04 	addi	r2,r2,2040
  807c00:	1421883a 	add	r16,r2,r16
  807c04:	81000017 	ldw	r4,0(r16)
  807c08:	81400117 	ldw	r5,4(r16)
  807c0c:	003ff306 	br	807bdc <_mprec_log10+0x3c>

00807c10 <__copybits>:
  807c10:	297fffc4 	addi	r5,r5,-1
  807c14:	280fd17a 	srai	r7,r5,5
  807c18:	31400417 	ldw	r5,16(r6)
  807c1c:	30800504 	addi	r2,r6,20
  807c20:	39c00044 	addi	r7,r7,1
  807c24:	280a90ba 	slli	r5,r5,2
  807c28:	380e90ba 	slli	r7,r7,2
  807c2c:	114b883a 	add	r5,r2,r5
  807c30:	21cf883a 	add	r7,r4,r7
  807c34:	11400c2e 	bgeu	r2,r5,807c68 <__copybits+0x58>
  807c38:	2007883a 	mov	r3,r4
  807c3c:	12000017 	ldw	r8,0(r2)
  807c40:	10800104 	addi	r2,r2,4
  807c44:	18c00104 	addi	r3,r3,4
  807c48:	1a3fff15 	stw	r8,-4(r3)
  807c4c:	117ffb36 	bltu	r2,r5,807c3c <__copybits+0x2c>
  807c50:	2985c83a 	sub	r2,r5,r6
  807c54:	10bffac4 	addi	r2,r2,-21
  807c58:	1004d0ba 	srli	r2,r2,2
  807c5c:	10800044 	addi	r2,r2,1
  807c60:	100490ba 	slli	r2,r2,2
  807c64:	2089883a 	add	r4,r4,r2
  807c68:	21c0032e 	bgeu	r4,r7,807c78 <__copybits+0x68>
  807c6c:	21000104 	addi	r4,r4,4
  807c70:	203fff15 	stw	zero,-4(r4)
  807c74:	21fffd36 	bltu	r4,r7,807c6c <__copybits+0x5c>
  807c78:	f800283a 	ret

00807c7c <__any_on>:
  807c7c:	20c00417 	ldw	r3,16(r4)
  807c80:	280dd17a 	srai	r6,r5,5
  807c84:	21000504 	addi	r4,r4,20
  807c88:	1980080e 	bge	r3,r6,807cac <__any_on+0x30>
  807c8c:	180490ba 	slli	r2,r3,2
  807c90:	2085883a 	add	r2,r4,r2
  807c94:	20800f2e 	bgeu	r4,r2,807cd4 <__any_on+0x58>
  807c98:	10ffff17 	ldw	r3,-4(r2)
  807c9c:	10bfff04 	addi	r2,r2,-4
  807ca0:	183ffc26 	beq	r3,zero,807c94 <__any_on+0x18>
  807ca4:	00800044 	movi	r2,1
  807ca8:	f800283a 	ret
  807cac:	300490ba 	slli	r2,r6,2
  807cb0:	2085883a 	add	r2,r4,r2
  807cb4:	30fff70e 	bge	r6,r3,807c94 <__any_on+0x18>
  807cb8:	294007cc 	andi	r5,r5,31
  807cbc:	283ff526 	beq	r5,zero,807c94 <__any_on+0x18>
  807cc0:	11800017 	ldw	r6,0(r2)
  807cc4:	3146d83a 	srl	r3,r6,r5
  807cc8:	194a983a 	sll	r5,r3,r5
  807ccc:	317ff51e 	bne	r6,r5,807ca4 <__any_on+0x28>
  807cd0:	003ff006 	br	807c94 <__any_on+0x18>
  807cd4:	0005883a 	mov	r2,zero
  807cd8:	f800283a 	ret

00807cdc <_realloc_r>:
  807cdc:	defff504 	addi	sp,sp,-44
  807ce0:	dc800315 	stw	r18,12(sp)
  807ce4:	dfc00a15 	stw	ra,40(sp)
  807ce8:	df000915 	stw	fp,36(sp)
  807cec:	ddc00815 	stw	r23,32(sp)
  807cf0:	dd800715 	stw	r22,28(sp)
  807cf4:	dd400615 	stw	r21,24(sp)
  807cf8:	dd000515 	stw	r20,20(sp)
  807cfc:	dcc00415 	stw	r19,16(sp)
  807d00:	dc400215 	stw	r17,8(sp)
  807d04:	dc000115 	stw	r16,4(sp)
  807d08:	3025883a 	mov	r18,r6
  807d0c:	28008b26 	beq	r5,zero,807f3c <_realloc_r+0x260>
  807d10:	2821883a 	mov	r16,r5
  807d14:	2027883a 	mov	r19,r4
  807d18:	944002c4 	addi	r17,r18,11
  807d1c:	080e3880 	call	80e388 <__malloc_lock>
  807d20:	888005f0 	cmpltui	r2,r17,23
  807d24:	1000521e 	bne	r2,zero,807e70 <_realloc_r+0x194>
  807d28:	017ffe04 	movi	r5,-8
  807d2c:	8962703a 	and	r17,r17,r5
  807d30:	8807883a 	mov	r3,r17
  807d34:	88005116 	blt	r17,zero,807e7c <_realloc_r+0x1a0>
  807d38:	8c805036 	bltu	r17,r18,807e7c <_realloc_r+0x1a0>
  807d3c:	80bfff17 	ldw	r2,-4(r16)
  807d40:	017fff04 	movi	r5,-4
  807d44:	857ffe04 	addi	r21,r16,-8
  807d48:	1168703a 	and	r20,r2,r5
  807d4c:	ad2d883a 	add	r22,r21,r20
  807d50:	a0c0390e 	bge	r20,r3,807e38 <_realloc_r+0x15c>
  807d54:	07002074 	movhi	fp,129
  807d58:	e7040104 	addi	fp,fp,4100
  807d5c:	e2000217 	ldw	r8,8(fp)
  807d60:	b1000117 	ldw	r4,4(r22)
  807d64:	45808e26 	beq	r8,r22,807fa0 <_realloc_r+0x2c4>
  807d68:	01bfff84 	movi	r6,-2
  807d6c:	218c703a 	and	r6,r4,r6
  807d70:	b18d883a 	add	r6,r22,r6
  807d74:	31800117 	ldw	r6,4(r6)
  807d78:	3180004c 	andi	r6,r6,1
  807d7c:	30004f1e 	bne	r6,zero,807ebc <_realloc_r+0x1e0>
  807d80:	2148703a 	and	r4,r4,r5
  807d84:	a10b883a 	add	r5,r20,r4
  807d88:	28c0bf0e 	bge	r5,r3,808088 <_realloc_r+0x3ac>
  807d8c:	1080004c 	andi	r2,r2,1
  807d90:	10004c1e 	bne	r2,zero,807ec4 <_realloc_r+0x1e8>
  807d94:	81fffe17 	ldw	r7,-8(r16)
  807d98:	00bfff04 	movi	r2,-4
  807d9c:	a9cfc83a 	sub	r7,r21,r7
  807da0:	39400117 	ldw	r5,4(r7)
  807da4:	288a703a 	and	r5,r5,r2
  807da8:	b0000426 	beq	r22,zero,807dbc <_realloc_r+0xe0>
  807dac:	a16f883a 	add	r23,r20,r5
  807db0:	b92f883a 	add	r23,r23,r4
  807db4:	4580bf26 	beq	r8,r22,8080b4 <_realloc_r+0x3d8>
  807db8:	b8c0930e 	bge	r23,r3,808008 <_realloc_r+0x32c>
  807dbc:	38004126 	beq	r7,zero,807ec4 <_realloc_r+0x1e8>
  807dc0:	a16f883a 	add	r23,r20,r5
  807dc4:	b8c03f16 	blt	r23,r3,807ec4 <_realloc_r+0x1e8>
  807dc8:	38800317 	ldw	r2,12(r7)
  807dcc:	38c00217 	ldw	r3,8(r7)
  807dd0:	a1bfff04 	addi	r6,r20,-4
  807dd4:	31400968 	cmpgeui	r5,r6,37
  807dd8:	18800315 	stw	r2,12(r3)
  807ddc:	10c00215 	stw	r3,8(r2)
  807de0:	39000204 	addi	r4,r7,8
  807de4:	3ded883a 	add	r22,r7,r23
  807de8:	2800941e 	bne	r5,zero,80803c <_realloc_r+0x360>
  807dec:	30800530 	cmpltui	r2,r6,20
  807df0:	80c00017 	ldw	r3,0(r16)
  807df4:	1000df1e 	bne	r2,zero,808174 <_realloc_r+0x498>
  807df8:	38c00215 	stw	r3,8(r7)
  807dfc:	80c00117 	ldw	r3,4(r16)
  807e00:	30800728 	cmpgeui	r2,r6,28
  807e04:	38c00315 	stw	r3,12(r7)
  807e08:	1000dc1e 	bne	r2,zero,80817c <_realloc_r+0x4a0>
  807e0c:	80c00217 	ldw	r3,8(r16)
  807e10:	38800404 	addi	r2,r7,16
  807e14:	84000204 	addi	r16,r16,8
  807e18:	10c00015 	stw	r3,0(r2)
  807e1c:	80c00117 	ldw	r3,4(r16)
  807e20:	b829883a 	mov	r20,r23
  807e24:	382b883a 	mov	r21,r7
  807e28:	10c00115 	stw	r3,4(r2)
  807e2c:	80c00217 	ldw	r3,8(r16)
  807e30:	2021883a 	mov	r16,r4
  807e34:	10c00215 	stw	r3,8(r2)
  807e38:	a9800117 	ldw	r6,4(r21)
  807e3c:	a445c83a 	sub	r2,r20,r17
  807e40:	10c00430 	cmpltui	r3,r2,16
  807e44:	3180004c 	andi	r6,r6,1
  807e48:	18004926 	beq	r3,zero,807f70 <_realloc_r+0x294>
  807e4c:	a18cb03a 	or	r6,r20,r6
  807e50:	a9800115 	stw	r6,4(r21)
  807e54:	b0800117 	ldw	r2,4(r22)
  807e58:	10800054 	ori	r2,r2,1
  807e5c:	b0800115 	stw	r2,4(r22)
  807e60:	9809883a 	mov	r4,r19
  807e64:	080e3ac0 	call	80e3ac <__malloc_unlock>
  807e68:	8025883a 	mov	r18,r16
  807e6c:	00000606 	br	807e88 <_realloc_r+0x1ac>
  807e70:	04400404 	movi	r17,16
  807e74:	00c00404 	movi	r3,16
  807e78:	8cbfb02e 	bgeu	r17,r18,807d3c <_realloc_r+0x60>
  807e7c:	00800304 	movi	r2,12
  807e80:	98800015 	stw	r2,0(r19)
  807e84:	0025883a 	mov	r18,zero
  807e88:	9005883a 	mov	r2,r18
  807e8c:	dfc00a17 	ldw	ra,40(sp)
  807e90:	df000917 	ldw	fp,36(sp)
  807e94:	ddc00817 	ldw	r23,32(sp)
  807e98:	dd800717 	ldw	r22,28(sp)
  807e9c:	dd400617 	ldw	r21,24(sp)
  807ea0:	dd000517 	ldw	r20,20(sp)
  807ea4:	dcc00417 	ldw	r19,16(sp)
  807ea8:	dc800317 	ldw	r18,12(sp)
  807eac:	dc400217 	ldw	r17,8(sp)
  807eb0:	dc000117 	ldw	r16,4(sp)
  807eb4:	dec00b04 	addi	sp,sp,44
  807eb8:	f800283a 	ret
  807ebc:	1080004c 	andi	r2,r2,1
  807ec0:	10006c26 	beq	r2,zero,808074 <_realloc_r+0x398>
  807ec4:	900b883a 	mov	r5,r18
  807ec8:	9809883a 	mov	r4,r19
  807ecc:	0805fd40 	call	805fd4 <_malloc_r>
  807ed0:	1025883a 	mov	r18,r2
  807ed4:	10001626 	beq	r2,zero,807f30 <_realloc_r+0x254>
  807ed8:	80bfff17 	ldw	r2,-4(r16)
  807edc:	013fff84 	movi	r4,-2
  807ee0:	90fffe04 	addi	r3,r18,-8
  807ee4:	1104703a 	and	r2,r2,r4
  807ee8:	a885883a 	add	r2,r21,r2
  807eec:	10c05b26 	beq	r2,r3,80805c <_realloc_r+0x380>
  807ef0:	a1bfff04 	addi	r6,r20,-4
  807ef4:	30800968 	cmpgeui	r2,r6,37
  807ef8:	10006a1e 	bne	r2,zero,8080a4 <_realloc_r+0x3c8>
  807efc:	30800530 	cmpltui	r2,r6,20
  807f00:	81000017 	ldw	r4,0(r16)
  807f04:	10003726 	beq	r2,zero,807fe4 <_realloc_r+0x308>
  807f08:	9005883a 	mov	r2,r18
  807f0c:	8007883a 	mov	r3,r16
  807f10:	11000015 	stw	r4,0(r2)
  807f14:	19000117 	ldw	r4,4(r3)
  807f18:	11000115 	stw	r4,4(r2)
  807f1c:	18c00217 	ldw	r3,8(r3)
  807f20:	10c00215 	stw	r3,8(r2)
  807f24:	800b883a 	mov	r5,r16
  807f28:	9809883a 	mov	r4,r19
  807f2c:	08054d40 	call	8054d4 <_free_r>
  807f30:	9809883a 	mov	r4,r19
  807f34:	080e3ac0 	call	80e3ac <__malloc_unlock>
  807f38:	003fd306 	br	807e88 <_realloc_r+0x1ac>
  807f3c:	300b883a 	mov	r5,r6
  807f40:	dfc00a17 	ldw	ra,40(sp)
  807f44:	df000917 	ldw	fp,36(sp)
  807f48:	ddc00817 	ldw	r23,32(sp)
  807f4c:	dd800717 	ldw	r22,28(sp)
  807f50:	dd400617 	ldw	r21,24(sp)
  807f54:	dd000517 	ldw	r20,20(sp)
  807f58:	dcc00417 	ldw	r19,16(sp)
  807f5c:	dc800317 	ldw	r18,12(sp)
  807f60:	dc400217 	ldw	r17,8(sp)
  807f64:	dc000117 	ldw	r16,4(sp)
  807f68:	dec00b04 	addi	sp,sp,44
  807f6c:	0805fd41 	jmpi	805fd4 <_malloc_r>
  807f70:	344cb03a 	or	r6,r6,r17
  807f74:	a9800115 	stw	r6,4(r21)
  807f78:	ac4b883a 	add	r5,r21,r17
  807f7c:	10800054 	ori	r2,r2,1
  807f80:	28800115 	stw	r2,4(r5)
  807f84:	b0800117 	ldw	r2,4(r22)
  807f88:	29400204 	addi	r5,r5,8
  807f8c:	9809883a 	mov	r4,r19
  807f90:	10800054 	ori	r2,r2,1
  807f94:	b0800115 	stw	r2,4(r22)
  807f98:	08054d40 	call	8054d4 <_free_r>
  807f9c:	003fb006 	br	807e60 <_realloc_r+0x184>
  807fa0:	2148703a 	and	r4,r4,r5
  807fa4:	a10b883a 	add	r5,r20,r4
  807fa8:	89800404 	addi	r6,r17,16
  807fac:	29bf7716 	blt	r5,r6,807d8c <_realloc_r+0xb0>
  807fb0:	ac6b883a 	add	r21,r21,r17
  807fb4:	2c45c83a 	sub	r2,r5,r17
  807fb8:	e5400215 	stw	r21,8(fp)
  807fbc:	10800054 	ori	r2,r2,1
  807fc0:	a8800115 	stw	r2,4(r21)
  807fc4:	80bfff17 	ldw	r2,-4(r16)
  807fc8:	9809883a 	mov	r4,r19
  807fcc:	8025883a 	mov	r18,r16
  807fd0:	1080004c 	andi	r2,r2,1
  807fd4:	1462b03a 	or	r17,r2,r17
  807fd8:	847fff15 	stw	r17,-4(r16)
  807fdc:	080e3ac0 	call	80e3ac <__malloc_unlock>
  807fe0:	003fa906 	br	807e88 <_realloc_r+0x1ac>
  807fe4:	91000015 	stw	r4,0(r18)
  807fe8:	80c00117 	ldw	r3,4(r16)
  807fec:	30800728 	cmpgeui	r2,r6,28
  807ff0:	90c00115 	stw	r3,4(r18)
  807ff4:	1000551e 	bne	r2,zero,80814c <_realloc_r+0x470>
  807ff8:	81000217 	ldw	r4,8(r16)
  807ffc:	80c00204 	addi	r3,r16,8
  808000:	90800204 	addi	r2,r18,8
  808004:	003fc206 	br	807f10 <_realloc_r+0x234>
  808008:	b0800317 	ldw	r2,12(r22)
  80800c:	b0c00217 	ldw	r3,8(r22)
  808010:	a1bfff04 	addi	r6,r20,-4
  808014:	31400968 	cmpgeui	r5,r6,37
  808018:	18800315 	stw	r2,12(r3)
  80801c:	10c00215 	stw	r3,8(r2)
  808020:	38c00217 	ldw	r3,8(r7)
  808024:	38800317 	ldw	r2,12(r7)
  808028:	39000204 	addi	r4,r7,8
  80802c:	3ded883a 	add	r22,r7,r23
  808030:	18800315 	stw	r2,12(r3)
  808034:	10c00215 	stw	r3,8(r2)
  808038:	283f6c26 	beq	r5,zero,807dec <_realloc_r+0x110>
  80803c:	800b883a 	mov	r5,r16
  808040:	d9c00015 	stw	r7,0(sp)
  808044:	08069880 	call	806988 <memmove>
  808048:	d9c00017 	ldw	r7,0(sp)
  80804c:	1021883a 	mov	r16,r2
  808050:	b829883a 	mov	r20,r23
  808054:	382b883a 	mov	r21,r7
  808058:	003f7706 	br	807e38 <_realloc_r+0x15c>
  80805c:	90bfff17 	ldw	r2,-4(r18)
  808060:	00ffff04 	movi	r3,-4
  808064:	10c4703a 	and	r2,r2,r3
  808068:	a0a9883a 	add	r20,r20,r2
  80806c:	ad2d883a 	add	r22,r21,r20
  808070:	003f7106 	br	807e38 <_realloc_r+0x15c>
  808074:	81fffe17 	ldw	r7,-8(r16)
  808078:	a9cfc83a 	sub	r7,r21,r7
  80807c:	39000117 	ldw	r4,4(r7)
  808080:	214a703a 	and	r5,r4,r5
  808084:	003f4d06 	br	807dbc <_realloc_r+0xe0>
  808088:	b0800317 	ldw	r2,12(r22)
  80808c:	b0c00217 	ldw	r3,8(r22)
  808090:	2829883a 	mov	r20,r5
  808094:	a96d883a 	add	r22,r21,r5
  808098:	18800315 	stw	r2,12(r3)
  80809c:	10c00215 	stw	r3,8(r2)
  8080a0:	003f6506 	br	807e38 <_realloc_r+0x15c>
  8080a4:	800b883a 	mov	r5,r16
  8080a8:	9009883a 	mov	r4,r18
  8080ac:	08069880 	call	806988 <memmove>
  8080b0:	003f9c06 	br	807f24 <_realloc_r+0x248>
  8080b4:	88800404 	addi	r2,r17,16
  8080b8:	b8bf4016 	blt	r23,r2,807dbc <_realloc_r+0xe0>
  8080bc:	38800317 	ldw	r2,12(r7)
  8080c0:	38c00217 	ldw	r3,8(r7)
  8080c4:	a1bfff04 	addi	r6,r20,-4
  8080c8:	31000968 	cmpgeui	r4,r6,37
  8080cc:	18800315 	stw	r2,12(r3)
  8080d0:	10c00215 	stw	r3,8(r2)
  8080d4:	3c800204 	addi	r18,r7,8
  8080d8:	20003b1e 	bne	r4,zero,8081c8 <_realloc_r+0x4ec>
  8080dc:	30800530 	cmpltui	r2,r6,20
  8080e0:	80c00017 	ldw	r3,0(r16)
  8080e4:	1000361e 	bne	r2,zero,8081c0 <_realloc_r+0x4e4>
  8080e8:	38c00215 	stw	r3,8(r7)
  8080ec:	80c00117 	ldw	r3,4(r16)
  8080f0:	30800728 	cmpgeui	r2,r6,28
  8080f4:	38c00315 	stw	r3,12(r7)
  8080f8:	1000401e 	bne	r2,zero,8081fc <_realloc_r+0x520>
  8080fc:	80c00217 	ldw	r3,8(r16)
  808100:	38800404 	addi	r2,r7,16
  808104:	84000204 	addi	r16,r16,8
  808108:	10c00015 	stw	r3,0(r2)
  80810c:	80c00117 	ldw	r3,4(r16)
  808110:	10c00115 	stw	r3,4(r2)
  808114:	80c00217 	ldw	r3,8(r16)
  808118:	10c00215 	stw	r3,8(r2)
  80811c:	3c47883a 	add	r3,r7,r17
  808120:	bc45c83a 	sub	r2,r23,r17
  808124:	e0c00215 	stw	r3,8(fp)
  808128:	10800054 	ori	r2,r2,1
  80812c:	18800115 	stw	r2,4(r3)
  808130:	38800117 	ldw	r2,4(r7)
  808134:	9809883a 	mov	r4,r19
  808138:	1080004c 	andi	r2,r2,1
  80813c:	1462b03a 	or	r17,r2,r17
  808140:	3c400115 	stw	r17,4(r7)
  808144:	080e3ac0 	call	80e3ac <__malloc_unlock>
  808148:	003f4f06 	br	807e88 <_realloc_r+0x1ac>
  80814c:	80800217 	ldw	r2,8(r16)
  808150:	31800920 	cmpeqi	r6,r6,36
  808154:	90800215 	stw	r2,8(r18)
  808158:	80800317 	ldw	r2,12(r16)
  80815c:	90800315 	stw	r2,12(r18)
  808160:	81000417 	ldw	r4,16(r16)
  808164:	30000f1e 	bne	r6,zero,8081a4 <_realloc_r+0x4c8>
  808168:	80c00404 	addi	r3,r16,16
  80816c:	90800404 	addi	r2,r18,16
  808170:	003f6706 	br	807f10 <_realloc_r+0x234>
  808174:	2005883a 	mov	r2,r4
  808178:	003f2706 	br	807e18 <_realloc_r+0x13c>
  80817c:	80800217 	ldw	r2,8(r16)
  808180:	31800920 	cmpeqi	r6,r6,36
  808184:	38800415 	stw	r2,16(r7)
  808188:	80800317 	ldw	r2,12(r16)
  80818c:	38800515 	stw	r2,20(r7)
  808190:	80c00417 	ldw	r3,16(r16)
  808194:	3000121e 	bne	r6,zero,8081e0 <_realloc_r+0x504>
  808198:	38800604 	addi	r2,r7,24
  80819c:	84000404 	addi	r16,r16,16
  8081a0:	003f1d06 	br	807e18 <_realloc_r+0x13c>
  8081a4:	91000415 	stw	r4,16(r18)
  8081a8:	81000517 	ldw	r4,20(r16)
  8081ac:	80c00604 	addi	r3,r16,24
  8081b0:	90800604 	addi	r2,r18,24
  8081b4:	91000515 	stw	r4,20(r18)
  8081b8:	81000617 	ldw	r4,24(r16)
  8081bc:	003f5406 	br	807f10 <_realloc_r+0x234>
  8081c0:	9005883a 	mov	r2,r18
  8081c4:	003fd006 	br	808108 <_realloc_r+0x42c>
  8081c8:	800b883a 	mov	r5,r16
  8081cc:	9009883a 	mov	r4,r18
  8081d0:	d9c00015 	stw	r7,0(sp)
  8081d4:	08069880 	call	806988 <memmove>
  8081d8:	d9c00017 	ldw	r7,0(sp)
  8081dc:	003fcf06 	br	80811c <_realloc_r+0x440>
  8081e0:	84000604 	addi	r16,r16,24
  8081e4:	38c00615 	stw	r3,24(r7)
  8081e8:	80ffff17 	ldw	r3,-4(r16)
  8081ec:	38800804 	addi	r2,r7,32
  8081f0:	38c00715 	stw	r3,28(r7)
  8081f4:	80c00017 	ldw	r3,0(r16)
  8081f8:	003f0706 	br	807e18 <_realloc_r+0x13c>
  8081fc:	80800217 	ldw	r2,8(r16)
  808200:	31800920 	cmpeqi	r6,r6,36
  808204:	38800415 	stw	r2,16(r7)
  808208:	80800317 	ldw	r2,12(r16)
  80820c:	38800515 	stw	r2,20(r7)
  808210:	80c00417 	ldw	r3,16(r16)
  808214:	3000031e 	bne	r6,zero,808224 <_realloc_r+0x548>
  808218:	38800604 	addi	r2,r7,24
  80821c:	84000404 	addi	r16,r16,16
  808220:	003fb906 	br	808108 <_realloc_r+0x42c>
  808224:	84000604 	addi	r16,r16,24
  808228:	38c00615 	stw	r3,24(r7)
  80822c:	80ffff17 	ldw	r3,-4(r16)
  808230:	38800804 	addi	r2,r7,32
  808234:	38c00715 	stw	r3,28(r7)
  808238:	80c00017 	ldw	r3,0(r16)
  80823c:	003fb206 	br	808108 <_realloc_r+0x42c>

00808240 <_sbrk_r>:
  808240:	defffe04 	addi	sp,sp,-8
  808244:	dc000015 	stw	r16,0(sp)
  808248:	00802074 	movhi	r2,129
  80824c:	2021883a 	mov	r16,r4
  808250:	2809883a 	mov	r4,r5
  808254:	dfc00115 	stw	ra,4(sp)
  808258:	1010e715 	stw	zero,17308(r2)
  80825c:	080e5840 	call	80e584 <sbrk>
  808260:	10ffffd8 	cmpnei	r3,r2,-1
  808264:	18000426 	beq	r3,zero,808278 <_sbrk_r+0x38>
  808268:	dfc00117 	ldw	ra,4(sp)
  80826c:	dc000017 	ldw	r16,0(sp)
  808270:	dec00204 	addi	sp,sp,8
  808274:	f800283a 	ret
  808278:	00c02074 	movhi	r3,129
  80827c:	18d0e717 	ldw	r3,17308(r3)
  808280:	183ff926 	beq	r3,zero,808268 <_sbrk_r+0x28>
  808284:	80c00015 	stw	r3,0(r16)
  808288:	dfc00117 	ldw	ra,4(sp)
  80828c:	dc000017 	ldw	r16,0(sp)
  808290:	dec00204 	addi	sp,sp,8
  808294:	f800283a 	ret

00808298 <__sread>:
  808298:	defffe04 	addi	sp,sp,-8
  80829c:	dc000015 	stw	r16,0(sp)
  8082a0:	2821883a 	mov	r16,r5
  8082a4:	2940038f 	ldh	r5,14(r5)
  8082a8:	dfc00115 	stw	ra,4(sp)
  8082ac:	080a0300 	call	80a030 <_read_r>
  8082b0:	10000716 	blt	r2,zero,8082d0 <__sread+0x38>
  8082b4:	80c01417 	ldw	r3,80(r16)
  8082b8:	1887883a 	add	r3,r3,r2
  8082bc:	80c01415 	stw	r3,80(r16)
  8082c0:	dfc00117 	ldw	ra,4(sp)
  8082c4:	dc000017 	ldw	r16,0(sp)
  8082c8:	dec00204 	addi	sp,sp,8
  8082cc:	f800283a 	ret
  8082d0:	80c0030b 	ldhu	r3,12(r16)
  8082d4:	18fbffcc 	andi	r3,r3,61439
  8082d8:	80c0030d 	sth	r3,12(r16)
  8082dc:	dfc00117 	ldw	ra,4(sp)
  8082e0:	dc000017 	ldw	r16,0(sp)
  8082e4:	dec00204 	addi	sp,sp,8
  8082e8:	f800283a 	ret

008082ec <__seofread>:
  8082ec:	0005883a 	mov	r2,zero
  8082f0:	f800283a 	ret

008082f4 <__swrite>:
  8082f4:	2880030b 	ldhu	r2,12(r5)
  8082f8:	defffb04 	addi	sp,sp,-20
  8082fc:	dcc00315 	stw	r19,12(sp)
  808300:	dc800215 	stw	r18,8(sp)
  808304:	dc400115 	stw	r17,4(sp)
  808308:	dc000015 	stw	r16,0(sp)
  80830c:	dfc00415 	stw	ra,16(sp)
  808310:	10c0400c 	andi	r3,r2,256
  808314:	2821883a 	mov	r16,r5
  808318:	2023883a 	mov	r17,r4
  80831c:	2940038f 	ldh	r5,14(r5)
  808320:	3025883a 	mov	r18,r6
  808324:	3827883a 	mov	r19,r7
  808328:	18000c1e 	bne	r3,zero,80835c <__swrite+0x68>
  80832c:	10bbffcc 	andi	r2,r2,61439
  808330:	980f883a 	mov	r7,r19
  808334:	900d883a 	mov	r6,r18
  808338:	8809883a 	mov	r4,r17
  80833c:	8080030d 	sth	r2,12(r16)
  808340:	dfc00417 	ldw	ra,16(sp)
  808344:	dcc00317 	ldw	r19,12(sp)
  808348:	dc800217 	ldw	r18,8(sp)
  80834c:	dc400117 	ldw	r17,4(sp)
  808350:	dc000017 	ldw	r16,0(sp)
  808354:	dec00504 	addi	sp,sp,20
  808358:	08098d41 	jmpi	8098d4 <_write_r>
  80835c:	01c00084 	movi	r7,2
  808360:	000d883a 	mov	r6,zero
  808364:	0809f7c0 	call	809f7c <_lseek_r>
  808368:	8080030b 	ldhu	r2,12(r16)
  80836c:	8140038f 	ldh	r5,14(r16)
  808370:	003fee06 	br	80832c <__swrite+0x38>

00808374 <__sseek>:
  808374:	defffe04 	addi	sp,sp,-8
  808378:	dc000015 	stw	r16,0(sp)
  80837c:	2821883a 	mov	r16,r5
  808380:	2940038f 	ldh	r5,14(r5)
  808384:	dfc00115 	stw	ra,4(sp)
  808388:	0809f7c0 	call	809f7c <_lseek_r>
  80838c:	10ffffd8 	cmpnei	r3,r2,-1
  808390:	18000826 	beq	r3,zero,8083b4 <__sseek+0x40>
  808394:	80c0030b 	ldhu	r3,12(r16)
  808398:	80801415 	stw	r2,80(r16)
  80839c:	18c40014 	ori	r3,r3,4096
  8083a0:	80c0030d 	sth	r3,12(r16)
  8083a4:	dfc00117 	ldw	ra,4(sp)
  8083a8:	dc000017 	ldw	r16,0(sp)
  8083ac:	dec00204 	addi	sp,sp,8
  8083b0:	f800283a 	ret
  8083b4:	80c0030b 	ldhu	r3,12(r16)
  8083b8:	18fbffcc 	andi	r3,r3,61439
  8083bc:	80c0030d 	sth	r3,12(r16)
  8083c0:	dfc00117 	ldw	ra,4(sp)
  8083c4:	dc000017 	ldw	r16,0(sp)
  8083c8:	dec00204 	addi	sp,sp,8
  8083cc:	f800283a 	ret

008083d0 <__sclose>:
  8083d0:	2940038f 	ldh	r5,14(r5)
  8083d4:	08099381 	jmpi	809938 <_close_r>

008083d8 <__sprint_r.part.0>:
  8083d8:	28801917 	ldw	r2,100(r5)
  8083dc:	defff604 	addi	sp,sp,-40
  8083e0:	dcc00315 	stw	r19,12(sp)
  8083e4:	dfc00915 	stw	ra,36(sp)
  8083e8:	df000815 	stw	fp,32(sp)
  8083ec:	ddc00715 	stw	r23,28(sp)
  8083f0:	dd800615 	stw	r22,24(sp)
  8083f4:	dd400515 	stw	r21,20(sp)
  8083f8:	dd000415 	stw	r20,16(sp)
  8083fc:	dc800215 	stw	r18,8(sp)
  808400:	dc400115 	stw	r17,4(sp)
  808404:	dc000015 	stw	r16,0(sp)
  808408:	1088000c 	andi	r2,r2,8192
  80840c:	3027883a 	mov	r19,r6
  808410:	10002c26 	beq	r2,zero,8084c4 <__sprint_r.part.0+0xec>
  808414:	30800217 	ldw	r2,8(r6)
  808418:	35000017 	ldw	r20,0(r6)
  80841c:	2821883a 	mov	r16,r5
  808420:	2023883a 	mov	r17,r4
  808424:	05bfff04 	movi	r22,-4
  808428:	10002426 	beq	r2,zero,8084bc <__sprint_r.part.0+0xe4>
  80842c:	a5400117 	ldw	r21,4(r20)
  808430:	a5c00017 	ldw	r23,0(r20)
  808434:	a824d0ba 	srli	r18,r21,2
  808438:	90001b26 	beq	r18,zero,8084a8 <__sprint_r.part.0+0xd0>
  80843c:	0039883a 	mov	fp,zero
  808440:	00000206 	br	80844c <__sprint_r.part.0+0x74>
  808444:	bdc00104 	addi	r23,r23,4
  808448:	97001626 	beq	r18,fp,8084a4 <__sprint_r.part.0+0xcc>
  80844c:	b9400017 	ldw	r5,0(r23)
  808450:	800d883a 	mov	r6,r16
  808454:	8809883a 	mov	r4,r17
  808458:	0809d900 	call	809d90 <_fputwc_r>
  80845c:	10bfffe0 	cmpeqi	r2,r2,-1
  808460:	e7000044 	addi	fp,fp,1
  808464:	103ff726 	beq	r2,zero,808444 <__sprint_r.part.0+0x6c>
  808468:	00bfffc4 	movi	r2,-1
  80846c:	98000215 	stw	zero,8(r19)
  808470:	98000115 	stw	zero,4(r19)
  808474:	dfc00917 	ldw	ra,36(sp)
  808478:	df000817 	ldw	fp,32(sp)
  80847c:	ddc00717 	ldw	r23,28(sp)
  808480:	dd800617 	ldw	r22,24(sp)
  808484:	dd400517 	ldw	r21,20(sp)
  808488:	dd000417 	ldw	r20,16(sp)
  80848c:	dcc00317 	ldw	r19,12(sp)
  808490:	dc800217 	ldw	r18,8(sp)
  808494:	dc400117 	ldw	r17,4(sp)
  808498:	dc000017 	ldw	r16,0(sp)
  80849c:	dec00a04 	addi	sp,sp,40
  8084a0:	f800283a 	ret
  8084a4:	98800217 	ldw	r2,8(r19)
  8084a8:	adaa703a 	and	r21,r21,r22
  8084ac:	1545c83a 	sub	r2,r2,r21
  8084b0:	98800215 	stw	r2,8(r19)
  8084b4:	a5000204 	addi	r20,r20,8
  8084b8:	103fdc1e 	bne	r2,zero,80842c <__sprint_r.part.0+0x54>
  8084bc:	0005883a 	mov	r2,zero
  8084c0:	003fea06 	br	80846c <__sprint_r.part.0+0x94>
  8084c4:	08057d00 	call	8057d0 <__sfvwrite_r>
  8084c8:	003fe806 	br	80846c <__sprint_r.part.0+0x94>

008084cc <__sprint_r>:
  8084cc:	30c00217 	ldw	r3,8(r6)
  8084d0:	18000126 	beq	r3,zero,8084d8 <__sprint_r+0xc>
  8084d4:	08083d81 	jmpi	8083d8 <__sprint_r.part.0>
  8084d8:	30000115 	stw	zero,4(r6)
  8084dc:	0005883a 	mov	r2,zero
  8084e0:	f800283a 	ret

008084e4 <___vfiprintf_internal_r>:
  8084e4:	deffcf04 	addi	sp,sp,-196
  8084e8:	dd802d15 	stw	r22,180(sp)
  8084ec:	dd402c15 	stw	r21,176(sp)
  8084f0:	dd002b15 	stw	r20,172(sp)
  8084f4:	dfc03015 	stw	ra,192(sp)
  8084f8:	df002f15 	stw	fp,188(sp)
  8084fc:	ddc02e15 	stw	r23,184(sp)
  808500:	dcc02a15 	stw	r19,168(sp)
  808504:	dc802915 	stw	r18,164(sp)
  808508:	dc402815 	stw	r17,160(sp)
  80850c:	dc002715 	stw	r16,156(sp)
  808510:	d9c00415 	stw	r7,16(sp)
  808514:	202d883a 	mov	r22,r4
  808518:	282b883a 	mov	r21,r5
  80851c:	3029883a 	mov	r20,r6
  808520:	20000226 	beq	r4,zero,80852c <___vfiprintf_internal_r+0x48>
  808524:	20800e17 	ldw	r2,56(r4)
  808528:	1001b426 	beq	r2,zero,808bfc <___vfiprintf_internal_r+0x718>
  80852c:	a880030b 	ldhu	r2,12(r21)
  808530:	10c8000c 	andi	r3,r2,8192
  808534:	1800061e 	bne	r3,zero,808550 <___vfiprintf_internal_r+0x6c>
  808538:	a8c01917 	ldw	r3,100(r21)
  80853c:	0137ffc4 	movi	r4,-8193
  808540:	10880014 	ori	r2,r2,8192
  808544:	1906703a 	and	r3,r3,r4
  808548:	a880030d 	sth	r2,12(r21)
  80854c:	a8c01915 	stw	r3,100(r21)
  808550:	10c0020c 	andi	r3,r2,8
  808554:	18010826 	beq	r3,zero,808978 <___vfiprintf_internal_r+0x494>
  808558:	a8c00417 	ldw	r3,16(r21)
  80855c:	18010626 	beq	r3,zero,808978 <___vfiprintf_internal_r+0x494>
  808560:	1080068c 	andi	r2,r2,26
  808564:	10800298 	cmpnei	r2,r2,10
  808568:	10010b26 	beq	r2,zero,808998 <___vfiprintf_internal_r+0x4b4>
  80856c:	dc801704 	addi	r18,sp,92
  808570:	dc800a15 	stw	r18,40(sp)
  808574:	d8000c15 	stw	zero,48(sp)
  808578:	d8000b15 	stw	zero,44(sp)
  80857c:	9021883a 	mov	r16,r18
  808580:	d8000515 	stw	zero,20(sp)
  808584:	d8000115 	stw	zero,4(sp)
  808588:	a0c00007 	ldb	r3,0(r20)
  80858c:	1800e826 	beq	r3,zero,808930 <___vfiprintf_internal_r+0x44c>
  808590:	a023883a 	mov	r17,r20
  808594:	00000306 	br	8085a4 <___vfiprintf_internal_r+0xc0>
  808598:	88c00047 	ldb	r3,1(r17)
  80859c:	8c400044 	addi	r17,r17,1
  8085a0:	18012a26 	beq	r3,zero,808a4c <___vfiprintf_internal_r+0x568>
  8085a4:	18c00958 	cmpnei	r3,r3,37
  8085a8:	183ffb1e 	bne	r3,zero,808598 <___vfiprintf_internal_r+0xb4>
  8085ac:	8d27c83a 	sub	r19,r17,r20
  8085b0:	8d01281e 	bne	r17,r20,808a54 <___vfiprintf_internal_r+0x570>
  8085b4:	88800003 	ldbu	r2,0(r17)
  8085b8:	10803fcc 	andi	r2,r2,255
  8085bc:	1080201c 	xori	r2,r2,128
  8085c0:	10bfe004 	addi	r2,r2,-128
  8085c4:	1000da26 	beq	r2,zero,808930 <___vfiprintf_internal_r+0x44c>
  8085c8:	88800047 	ldb	r2,1(r17)
  8085cc:	8d000044 	addi	r20,r17,1
  8085d0:	d8000945 	stb	zero,37(sp)
  8085d4:	000b883a 	mov	r5,zero
  8085d8:	000d883a 	mov	r6,zero
  8085dc:	023fffc4 	movi	r8,-1
  8085e0:	0023883a 	mov	r17,zero
  8085e4:	001b883a 	mov	r13,zero
  8085e8:	a5000044 	addi	r20,r20,1
  8085ec:	10fff804 	addi	r3,r2,-32
  8085f0:	19001668 	cmpgeui	r4,r3,89
  8085f4:	20006c1e 	bne	r4,zero,8087a8 <___vfiprintf_internal_r+0x2c4>
  8085f8:	180690ba 	slli	r3,r3,2
  8085fc:	01002074 	movhi	r4,129
  808600:	1909883a 	add	r4,r3,r4
  808604:	20e18317 	ldw	r3,-31220(r4)
  808608:	1800683a 	jmp	r3
  80860c:	00808f0c 	andi	r2,zero,572
  808610:	008087a8 	cmpgeui	r2,zero,542
  808614:	008087a8 	cmpgeui	r2,zero,542
  808618:	00808f00 	call	808f0 <__alt_mem_sdram-0x77f710>
  80861c:	008087a8 	cmpgeui	r2,zero,542
  808620:	008087a8 	cmpgeui	r2,zero,542
  808624:	008087a8 	cmpgeui	r2,zero,542
  808628:	008087a8 	cmpgeui	r2,zero,542
  80862c:	008087a8 	cmpgeui	r2,zero,542
  808630:	008087a8 	cmpgeui	r2,zero,542
  808634:	00808ed8 	cmpnei	r2,zero,571
  808638:	00808ec8 	cmpgei	r2,zero,571
  80863c:	008087a8 	cmpgeui	r2,zero,542
  808640:	00808eb0 	cmpltui	r2,zero,570
  808644:	00808e64 	muli	r2,zero,569
  808648:	008087a8 	cmpgeui	r2,zero,542
  80864c:	00808e58 	cmpnei	r2,zero,569
  808650:	00808770 	cmpltui	r2,zero,541
  808654:	00808770 	cmpltui	r2,zero,541
  808658:	00808770 	cmpltui	r2,zero,541
  80865c:	00808770 	cmpltui	r2,zero,541
  808660:	00808770 	cmpltui	r2,zero,541
  808664:	00808770 	cmpltui	r2,zero,541
  808668:	00808770 	cmpltui	r2,zero,541
  80866c:	00808770 	cmpltui	r2,zero,541
  808670:	00808770 	cmpltui	r2,zero,541
  808674:	008087a8 	cmpgeui	r2,zero,542
  808678:	008087a8 	cmpgeui	r2,zero,542
  80867c:	008087a8 	cmpgeui	r2,zero,542
  808680:	008087a8 	cmpgeui	r2,zero,542
  808684:	008087a8 	cmpgeui	r2,zero,542
  808688:	008087a8 	cmpgeui	r2,zero,542
  80868c:	008087a8 	cmpgeui	r2,zero,542
  808690:	008087a8 	cmpgeui	r2,zero,542
  808694:	008087a8 	cmpgeui	r2,zero,542
  808698:	008087a8 	cmpgeui	r2,zero,542
  80869c:	00808d74 	movhi	r2,565
  8086a0:	008087a8 	cmpgeui	r2,zero,542
  8086a4:	008087a8 	cmpgeui	r2,zero,542
  8086a8:	008087a8 	cmpgeui	r2,zero,542
  8086ac:	008087a8 	cmpgeui	r2,zero,542
  8086b0:	008087a8 	cmpgeui	r2,zero,542
  8086b4:	008087a8 	cmpgeui	r2,zero,542
  8086b8:	008087a8 	cmpgeui	r2,zero,542
  8086bc:	008087a8 	cmpgeui	r2,zero,542
  8086c0:	008087a8 	cmpgeui	r2,zero,542
  8086c4:	008087a8 	cmpgeui	r2,zero,542
  8086c8:	008089e4 	muli	r2,zero,551
  8086cc:	008087a8 	cmpgeui	r2,zero,542
  8086d0:	008087a8 	cmpgeui	r2,zero,542
  8086d4:	008087a8 	cmpgeui	r2,zero,542
  8086d8:	008087a8 	cmpgeui	r2,zero,542
  8086dc:	008087a8 	cmpgeui	r2,zero,542
  8086e0:	008089bc 	xorhi	r2,zero,550
  8086e4:	008087a8 	cmpgeui	r2,zero,542
  8086e8:	008087a8 	cmpgeui	r2,zero,542
  8086ec:	00808d2c 	andhi	r2,zero,564
  8086f0:	008087a8 	cmpgeui	r2,zero,542
  8086f4:	008087a8 	cmpgeui	r2,zero,542
  8086f8:	008087a8 	cmpgeui	r2,zero,542
  8086fc:	008087a8 	cmpgeui	r2,zero,542
  808700:	008087a8 	cmpgeui	r2,zero,542
  808704:	008087a8 	cmpgeui	r2,zero,542
  808708:	008087a8 	cmpgeui	r2,zero,542
  80870c:	008087a8 	cmpgeui	r2,zero,542
  808710:	008087a8 	cmpgeui	r2,zero,542
  808714:	008087a8 	cmpgeui	r2,zero,542
  808718:	00808d04 	movi	r2,564
  80871c:	00808c04 	movi	r2,560
  808720:	008087a8 	cmpgeui	r2,zero,542
  808724:	008087a8 	cmpgeui	r2,zero,542
  808728:	008087a8 	cmpgeui	r2,zero,542
  80872c:	00808ca8 	cmpgeui	r2,zero,562
  808730:	00808c04 	movi	r2,560
  808734:	008087a8 	cmpgeui	r2,zero,542
  808738:	008087a8 	cmpgeui	r2,zero,542
  80873c:	00808cf0 	cmpltui	r2,zero,563
  808740:	008087a8 	cmpgeui	r2,zero,542
  808744:	00808cb4 	movhi	r2,562
  808748:	008089e8 	cmpgeui	r2,zero,551
  80874c:	00808fe4 	muli	r2,zero,575
  808750:	00808fd8 	cmpnei	r2,zero,575
  808754:	008087a8 	cmpgeui	r2,zero,542
  808758:	00808f80 	call	808f8 <__alt_mem_sdram-0x77f708>
  80875c:	008087a8 	cmpgeui	r2,zero,542
  808760:	008089c0 	call	8089c <__alt_mem_sdram-0x77f764>
  808764:	008087a8 	cmpgeui	r2,zero,542
  808768:	008087a8 	cmpgeui	r2,zero,542
  80876c:	00808f38 	rdprs	r2,zero,572
  808770:	0023883a 	mov	r17,zero
  808774:	113ff404 	addi	r4,r2,-48
  808778:	880690ba 	slli	r3,r17,2
  80877c:	a0800007 	ldb	r2,0(r20)
  808780:	a5000044 	addi	r20,r20,1
  808784:	1c63883a 	add	r17,r3,r17
  808788:	8c63883a 	add	r17,r17,r17
  80878c:	2463883a 	add	r17,r4,r17
  808790:	113ff404 	addi	r4,r2,-48
  808794:	20c002b0 	cmpltui	r3,r4,10
  808798:	183ff71e 	bne	r3,zero,808778 <___vfiprintf_internal_r+0x294>
  80879c:	10fff804 	addi	r3,r2,-32
  8087a0:	19001668 	cmpgeui	r4,r3,89
  8087a4:	203f9426 	beq	r4,zero,8085f8 <___vfiprintf_internal_r+0x114>
  8087a8:	29403fcc 	andi	r5,r5,255
  8087ac:	2803e31e 	bne	r5,zero,80973c <___vfiprintf_internal_r+0x1258>
  8087b0:	10005f26 	beq	r2,zero,808930 <___vfiprintf_internal_r+0x44c>
  8087b4:	d8800d05 	stb	r2,52(sp)
  8087b8:	d8000945 	stb	zero,37(sp)
  8087bc:	05c00044 	movi	r23,1
  8087c0:	07000044 	movi	fp,1
  8087c4:	dcc00d04 	addi	r19,sp,52
  8087c8:	db400015 	stw	r13,0(sp)
  8087cc:	0011883a 	mov	r8,zero
  8087d0:	d8800017 	ldw	r2,0(sp)
  8087d4:	1380008c 	andi	r14,r2,2
  8087d8:	70000126 	beq	r14,zero,8087e0 <___vfiprintf_internal_r+0x2fc>
  8087dc:	bdc00084 	addi	r23,r23,2
  8087e0:	d8800017 	ldw	r2,0(sp)
  8087e4:	d9000b17 	ldw	r4,44(sp)
  8087e8:	1340210c 	andi	r13,r2,132
  8087ec:	21800044 	addi	r6,r4,1
  8087f0:	d8800c17 	ldw	r2,48(sp)
  8087f4:	300b883a 	mov	r5,r6
  8087f8:	6800021e 	bne	r13,zero,808804 <___vfiprintf_internal_r+0x320>
  8087fc:	8dc7c83a 	sub	r3,r17,r23
  808800:	00c2d716 	blt	zero,r3,809360 <___vfiprintf_internal_r+0xe7c>
  808804:	d8c00947 	ldb	r3,37(sp)
  808808:	81800204 	addi	r6,r16,8
  80880c:	18000d26 	beq	r3,zero,808844 <___vfiprintf_internal_r+0x360>
  808810:	d8c00944 	addi	r3,sp,37
  808814:	10800044 	addi	r2,r2,1
  808818:	80c00015 	stw	r3,0(r16)
  80881c:	00c00044 	movi	r3,1
  808820:	80c00115 	stw	r3,4(r16)
  808824:	d8800c15 	stw	r2,48(sp)
  808828:	d9400b15 	stw	r5,44(sp)
  80882c:	28c00208 	cmpgei	r3,r5,8
  808830:	1802ac1e 	bne	r3,zero,8092e4 <___vfiprintf_internal_r+0xe00>
  808834:	2809883a 	mov	r4,r5
  808838:	3021883a 	mov	r16,r6
  80883c:	29400044 	addi	r5,r5,1
  808840:	31800204 	addi	r6,r6,8
  808844:	70001826 	beq	r14,zero,8088a8 <___vfiprintf_internal_r+0x3c4>
  808848:	d8c00984 	addi	r3,sp,38
  80884c:	10800084 	addi	r2,r2,2
  808850:	80c00015 	stw	r3,0(r16)
  808854:	00c00084 	movi	r3,2
  808858:	80c00115 	stw	r3,4(r16)
  80885c:	d8800c15 	stw	r2,48(sp)
  808860:	d9400b15 	stw	r5,44(sp)
  808864:	28c00208 	cmpgei	r3,r5,8
  808868:	1802b626 	beq	r3,zero,809344 <___vfiprintf_internal_r+0xe60>
  80886c:	10031226 	beq	r2,zero,8094b8 <___vfiprintf_internal_r+0xfd4>
  808870:	d9800a04 	addi	r6,sp,40
  808874:	a80b883a 	mov	r5,r21
  808878:	b009883a 	mov	r4,r22
  80887c:	da000315 	stw	r8,12(sp)
  808880:	db400215 	stw	r13,8(sp)
  808884:	08083d80 	call	8083d8 <__sprint_r.part.0>
  808888:	10002b1e 	bne	r2,zero,808938 <___vfiprintf_internal_r+0x454>
  80888c:	d9000b17 	ldw	r4,44(sp)
  808890:	d8800c17 	ldw	r2,48(sp)
  808894:	da000317 	ldw	r8,12(sp)
  808898:	db400217 	ldw	r13,8(sp)
  80889c:	d9801904 	addi	r6,sp,100
  8088a0:	21400044 	addi	r5,r4,1
  8088a4:	9021883a 	mov	r16,r18
  8088a8:	6b402018 	cmpnei	r13,r13,128
  8088ac:	68020c26 	beq	r13,zero,8090e0 <___vfiprintf_internal_r+0xbfc>
  8088b0:	4711c83a 	sub	r8,r8,fp
  8088b4:	02024b16 	blt	zero,r8,8091e4 <___vfiprintf_internal_r+0xd00>
  8088b8:	e085883a 	add	r2,fp,r2
  8088bc:	d9400b15 	stw	r5,44(sp)
  8088c0:	84c00015 	stw	r19,0(r16)
  8088c4:	87000115 	stw	fp,4(r16)
  8088c8:	d8800c15 	stw	r2,48(sp)
  8088cc:	29400210 	cmplti	r5,r5,8
  8088d0:	2800081e 	bne	r5,zero,8088f4 <___vfiprintf_internal_r+0x410>
  8088d4:	10008f26 	beq	r2,zero,808b14 <___vfiprintf_internal_r+0x630>
  8088d8:	d9800a04 	addi	r6,sp,40
  8088dc:	a80b883a 	mov	r5,r21
  8088e0:	b009883a 	mov	r4,r22
  8088e4:	08083d80 	call	8083d8 <__sprint_r.part.0>
  8088e8:	1000131e 	bne	r2,zero,808938 <___vfiprintf_internal_r+0x454>
  8088ec:	d8800c17 	ldw	r2,48(sp)
  8088f0:	900d883a 	mov	r6,r18
  8088f4:	d8c00017 	ldw	r3,0(sp)
  8088f8:	1cc0010c 	andi	r19,r3,4
  8088fc:	98000226 	beq	r19,zero,808908 <___vfiprintf_internal_r+0x424>
  808900:	8de1c83a 	sub	r16,r17,r23
  808904:	04008a16 	blt	zero,r16,808b30 <___vfiprintf_internal_r+0x64c>
  808908:	8dc0010e 	bge	r17,r23,808910 <___vfiprintf_internal_r+0x42c>
  80890c:	b823883a 	mov	r17,r23
  808910:	d8c00117 	ldw	r3,4(sp)
  808914:	1c47883a 	add	r3,r3,r17
  808918:	d8c00115 	stw	r3,4(sp)
  80891c:	1002671e 	bne	r2,zero,8092bc <___vfiprintf_internal_r+0xdd8>
  808920:	a0c00007 	ldb	r3,0(r20)
  808924:	d8000b15 	stw	zero,44(sp)
  808928:	9021883a 	mov	r16,r18
  80892c:	183f181e 	bne	r3,zero,808590 <___vfiprintf_internal_r+0xac>
  808930:	d8800c17 	ldw	r2,48(sp)
  808934:	1003831e 	bne	r2,zero,809744 <___vfiprintf_internal_r+0x1260>
  808938:	a880030b 	ldhu	r2,12(r21)
  80893c:	1080100c 	andi	r2,r2,64
  808940:	10039e1e 	bne	r2,zero,8097bc <___vfiprintf_internal_r+0x12d8>
  808944:	d8800117 	ldw	r2,4(sp)
  808948:	dfc03017 	ldw	ra,192(sp)
  80894c:	df002f17 	ldw	fp,188(sp)
  808950:	ddc02e17 	ldw	r23,184(sp)
  808954:	dd802d17 	ldw	r22,180(sp)
  808958:	dd402c17 	ldw	r21,176(sp)
  80895c:	dd002b17 	ldw	r20,172(sp)
  808960:	dcc02a17 	ldw	r19,168(sp)
  808964:	dc802917 	ldw	r18,164(sp)
  808968:	dc402817 	ldw	r17,160(sp)
  80896c:	dc002717 	ldw	r16,156(sp)
  808970:	dec03104 	addi	sp,sp,196
  808974:	f800283a 	ret
  808978:	a80b883a 	mov	r5,r21
  80897c:	b009883a 	mov	r4,r22
  808980:	08032e80 	call	8032e8 <__swsetup_r>
  808984:	10038d1e 	bne	r2,zero,8097bc <___vfiprintf_internal_r+0x12d8>
  808988:	a880030b 	ldhu	r2,12(r21)
  80898c:	1080068c 	andi	r2,r2,26
  808990:	10800298 	cmpnei	r2,r2,10
  808994:	103ef51e 	bne	r2,zero,80856c <___vfiprintf_internal_r+0x88>
  808998:	a880038f 	ldh	r2,14(r21)
  80899c:	103ef316 	blt	r2,zero,80856c <___vfiprintf_internal_r+0x88>
  8089a0:	d9c00417 	ldw	r7,16(sp)
  8089a4:	a00d883a 	mov	r6,r20
  8089a8:	a80b883a 	mov	r5,r21
  8089ac:	b009883a 	mov	r4,r22
  8089b0:	08098140 	call	809814 <__sbprintf>
  8089b4:	d8800115 	stw	r2,4(sp)
  8089b8:	003fe206 	br	808944 <___vfiprintf_internal_r+0x460>
  8089bc:	6b400414 	ori	r13,r13,16
  8089c0:	6880080c 	andi	r2,r13,32
  8089c4:	10004726 	beq	r2,zero,808ae4 <___vfiprintf_internal_r+0x600>
  8089c8:	d8c00417 	ldw	r3,16(sp)
  8089cc:	00800044 	movi	r2,1
  8089d0:	1dc00017 	ldw	r23,0(r3)
  8089d4:	1f000117 	ldw	fp,4(r3)
  8089d8:	18c00204 	addi	r3,r3,8
  8089dc:	d8c00415 	stw	r3,16(sp)
  8089e0:	00000906 	br	808a08 <___vfiprintf_internal_r+0x524>
  8089e4:	6b400414 	ori	r13,r13,16
  8089e8:	6880080c 	andi	r2,r13,32
  8089ec:	10003126 	beq	r2,zero,808ab4 <___vfiprintf_internal_r+0x5d0>
  8089f0:	d8c00417 	ldw	r3,16(sp)
  8089f4:	0005883a 	mov	r2,zero
  8089f8:	1dc00017 	ldw	r23,0(r3)
  8089fc:	1f000117 	ldw	fp,4(r3)
  808a00:	18c00204 	addi	r3,r3,8
  808a04:	d8c00415 	stw	r3,16(sp)
  808a08:	d8000945 	stb	zero,37(sp)
  808a0c:	40ffffe0 	cmpeqi	r3,r8,-1
  808a10:	001d883a 	mov	r14,zero
  808a14:	1800f21e 	bne	r3,zero,808de0 <___vfiprintf_internal_r+0x8fc>
  808a18:	04ffdfc4 	movi	r19,-129
  808a1c:	6cc8703a 	and	r4,r13,r19
  808a20:	bf06b03a 	or	r3,r23,fp
  808a24:	d9000015 	stw	r4,0(sp)
  808a28:	18024b1e 	bne	r3,zero,809358 <___vfiprintf_internal_r+0xe74>
  808a2c:	4003091e 	bne	r8,zero,809654 <___vfiprintf_internal_r+0x1170>
  808a30:	1002a61e 	bne	r2,zero,8094cc <___vfiprintf_internal_r+0xfe8>
  808a34:	6f00004c 	andi	fp,r13,1
  808a38:	e002b826 	beq	fp,zero,80951c <___vfiprintf_internal_r+0x1038>
  808a3c:	00800c04 	movi	r2,48
  808a40:	d88016c5 	stb	r2,91(sp)
  808a44:	dcc016c4 	addi	r19,sp,91
  808a48:	00008e06 	br	808c84 <___vfiprintf_internal_r+0x7a0>
  808a4c:	8d27c83a 	sub	r19,r17,r20
  808a50:	8d3fb726 	beq	r17,r20,808930 <___vfiprintf_internal_r+0x44c>
  808a54:	d8c00c17 	ldw	r3,48(sp)
  808a58:	d8800b17 	ldw	r2,44(sp)
  808a5c:	85000015 	stw	r20,0(r16)
  808a60:	98c7883a 	add	r3,r19,r3
  808a64:	10800044 	addi	r2,r2,1
  808a68:	d8800b15 	stw	r2,44(sp)
  808a6c:	84c00115 	stw	r19,4(r16)
  808a70:	d8c00c15 	stw	r3,48(sp)
  808a74:	10800208 	cmpgei	r2,r2,8
  808a78:	1000061e 	bne	r2,zero,808a94 <___vfiprintf_internal_r+0x5b0>
  808a7c:	84000204 	addi	r16,r16,8
  808a80:	d8c00117 	ldw	r3,4(sp)
  808a84:	88800003 	ldbu	r2,0(r17)
  808a88:	1cc7883a 	add	r3,r3,r19
  808a8c:	d8c00115 	stw	r3,4(sp)
  808a90:	003ec906 	br	8085b8 <___vfiprintf_internal_r+0xd4>
  808a94:	18027f26 	beq	r3,zero,809494 <___vfiprintf_internal_r+0xfb0>
  808a98:	d9800a04 	addi	r6,sp,40
  808a9c:	a80b883a 	mov	r5,r21
  808aa0:	b009883a 	mov	r4,r22
  808aa4:	08083d80 	call	8083d8 <__sprint_r.part.0>
  808aa8:	103fa31e 	bne	r2,zero,808938 <___vfiprintf_internal_r+0x454>
  808aac:	9021883a 	mov	r16,r18
  808ab0:	003ff306 	br	808a80 <___vfiprintf_internal_r+0x59c>
  808ab4:	d9000417 	ldw	r4,16(sp)
  808ab8:	6880040c 	andi	r2,r13,16
  808abc:	20c00104 	addi	r3,r4,4
  808ac0:	1002a31e 	bne	r2,zero,809550 <___vfiprintf_internal_r+0x106c>
  808ac4:	6880100c 	andi	r2,r13,64
  808ac8:	1002f626 	beq	r2,zero,8096a4 <___vfiprintf_internal_r+0x11c0>
  808acc:	d8800417 	ldw	r2,16(sp)
  808ad0:	0039883a 	mov	fp,zero
  808ad4:	d8c00415 	stw	r3,16(sp)
  808ad8:	15c0000b 	ldhu	r23,0(r2)
  808adc:	0005883a 	mov	r2,zero
  808ae0:	003fc906 	br	808a08 <___vfiprintf_internal_r+0x524>
  808ae4:	d9000417 	ldw	r4,16(sp)
  808ae8:	6880040c 	andi	r2,r13,16
  808aec:	20c00104 	addi	r3,r4,4
  808af0:	1002ab1e 	bne	r2,zero,8095a0 <___vfiprintf_internal_r+0x10bc>
  808af4:	6880100c 	andi	r2,r13,64
  808af8:	1002f026 	beq	r2,zero,8096bc <___vfiprintf_internal_r+0x11d8>
  808afc:	d8800417 	ldw	r2,16(sp)
  808b00:	0039883a 	mov	fp,zero
  808b04:	d8c00415 	stw	r3,16(sp)
  808b08:	15c0000b 	ldhu	r23,0(r2)
  808b0c:	00800044 	movi	r2,1
  808b10:	003fbd06 	br	808a08 <___vfiprintf_internal_r+0x524>
  808b14:	d8c00017 	ldw	r3,0(sp)
  808b18:	d8000b15 	stw	zero,44(sp)
  808b1c:	1cc0010c 	andi	r19,r3,4
  808b20:	98024a26 	beq	r19,zero,80944c <___vfiprintf_internal_r+0xf68>
  808b24:	8de1c83a 	sub	r16,r17,r23
  808b28:	0402480e 	bge	zero,r16,80944c <___vfiprintf_internal_r+0xf68>
  808b2c:	900d883a 	mov	r6,r18
  808b30:	80c00450 	cmplti	r3,r16,17
  808b34:	d9000b17 	ldw	r4,44(sp)
  808b38:	01c02074 	movhi	r7,129
  808b3c:	1803171e 	bne	r3,zero,80979c <___vfiprintf_internal_r+0x12b8>
  808b40:	39c23404 	addi	r7,r7,2256
  808b44:	04c00404 	movi	r19,16
  808b48:	00000606 	br	808b64 <___vfiprintf_internal_r+0x680>
  808b4c:	21400084 	addi	r5,r4,2
  808b50:	31800204 	addi	r6,r6,8
  808b54:	1809883a 	mov	r4,r3
  808b58:	843ffc04 	addi	r16,r16,-16
  808b5c:	80c00448 	cmpgei	r3,r16,17
  808b60:	18001726 	beq	r3,zero,808bc0 <___vfiprintf_internal_r+0x6dc>
  808b64:	20c00044 	addi	r3,r4,1
  808b68:	10800404 	addi	r2,r2,16
  808b6c:	31c00015 	stw	r7,0(r6)
  808b70:	34c00115 	stw	r19,4(r6)
  808b74:	d8800c15 	stw	r2,48(sp)
  808b78:	d8c00b15 	stw	r3,44(sp)
  808b7c:	19400208 	cmpgei	r5,r3,8
  808b80:	283ff226 	beq	r5,zero,808b4c <___vfiprintf_internal_r+0x668>
  808b84:	d9800a04 	addi	r6,sp,40
  808b88:	a80b883a 	mov	r5,r21
  808b8c:	b009883a 	mov	r4,r22
  808b90:	10014f26 	beq	r2,zero,8090d0 <___vfiprintf_internal_r+0xbec>
  808b94:	d9c00015 	stw	r7,0(sp)
  808b98:	08083d80 	call	8083d8 <__sprint_r.part.0>
  808b9c:	103f661e 	bne	r2,zero,808938 <___vfiprintf_internal_r+0x454>
  808ba0:	d9000b17 	ldw	r4,44(sp)
  808ba4:	843ffc04 	addi	r16,r16,-16
  808ba8:	80c00448 	cmpgei	r3,r16,17
  808bac:	d8800c17 	ldw	r2,48(sp)
  808bb0:	d9c00017 	ldw	r7,0(sp)
  808bb4:	900d883a 	mov	r6,r18
  808bb8:	21400044 	addi	r5,r4,1
  808bbc:	183fe91e 	bne	r3,zero,808b64 <___vfiprintf_internal_r+0x680>
  808bc0:	1405883a 	add	r2,r2,r16
  808bc4:	d9400b15 	stw	r5,44(sp)
  808bc8:	31c00015 	stw	r7,0(r6)
  808bcc:	34000115 	stw	r16,4(r6)
  808bd0:	d8800c15 	stw	r2,48(sp)
  808bd4:	29400210 	cmplti	r5,r5,8
  808bd8:	283f4b1e 	bne	r5,zero,808908 <___vfiprintf_internal_r+0x424>
  808bdc:	10021b26 	beq	r2,zero,80944c <___vfiprintf_internal_r+0xf68>
  808be0:	d9800a04 	addi	r6,sp,40
  808be4:	a80b883a 	mov	r5,r21
  808be8:	b009883a 	mov	r4,r22
  808bec:	08083d80 	call	8083d8 <__sprint_r.part.0>
  808bf0:	103f511e 	bne	r2,zero,808938 <___vfiprintf_internal_r+0x454>
  808bf4:	d8800c17 	ldw	r2,48(sp)
  808bf8:	003f4306 	br	808908 <___vfiprintf_internal_r+0x424>
  808bfc:	08053700 	call	805370 <__sinit>
  808c00:	003e4a06 	br	80852c <___vfiprintf_internal_r+0x48>
  808c04:	29403fcc 	andi	r5,r5,255
  808c08:	2802e01e 	bne	r5,zero,80978c <___vfiprintf_internal_r+0x12a8>
  808c0c:	6880080c 	andi	r2,r13,32
  808c10:	10005d26 	beq	r2,zero,808d88 <___vfiprintf_internal_r+0x8a4>
  808c14:	d8c00417 	ldw	r3,16(sp)
  808c18:	18800117 	ldw	r2,4(r3)
  808c1c:	1dc00017 	ldw	r23,0(r3)
  808c20:	18c00204 	addi	r3,r3,8
  808c24:	d8c00415 	stw	r3,16(sp)
  808c28:	1039883a 	mov	fp,r2
  808c2c:	10006216 	blt	r2,zero,808db8 <___vfiprintf_internal_r+0x8d4>
  808c30:	40bfffd8 	cmpnei	r2,r8,-1
  808c34:	10000a26 	beq	r2,zero,808c60 <___vfiprintf_internal_r+0x77c>
  808c38:	00ffdfc4 	movi	r3,-129
  808c3c:	bf04b03a 	or	r2,r23,fp
  808c40:	db800943 	ldbu	r14,37(sp)
  808c44:	68da703a 	and	r13,r13,r3
  808c48:	1000061e 	bne	r2,zero,808c64 <___vfiprintf_internal_r+0x780>
  808c4c:	4000081e 	bne	r8,zero,808c70 <___vfiprintf_internal_r+0x78c>
  808c50:	0039883a 	mov	fp,zero
  808c54:	db400015 	stw	r13,0(sp)
  808c58:	9027883a 	mov	r19,r18
  808c5c:	00000906 	br	808c84 <___vfiprintf_internal_r+0x7a0>
  808c60:	db800943 	ldbu	r14,37(sp)
  808c64:	e000ee1e 	bne	fp,zero,809020 <___vfiprintf_internal_r+0xb3c>
  808c68:	b88002a8 	cmpgeui	r2,r23,10
  808c6c:	1000ec1e 	bne	r2,zero,809020 <___vfiprintf_internal_r+0xb3c>
  808c70:	bdc00c04 	addi	r23,r23,48
  808c74:	ddc016c5 	stb	r23,91(sp)
  808c78:	db400015 	stw	r13,0(sp)
  808c7c:	07000044 	movi	fp,1
  808c80:	dcc016c4 	addi	r19,sp,91
  808c84:	402f883a 	mov	r23,r8
  808c88:	4700010e 	bge	r8,fp,808c90 <___vfiprintf_internal_r+0x7ac>
  808c8c:	e02f883a 	mov	r23,fp
  808c90:	73803fcc 	andi	r14,r14,255
  808c94:	7380201c 	xori	r14,r14,128
  808c98:	73bfe004 	addi	r14,r14,-128
  808c9c:	703ecc26 	beq	r14,zero,8087d0 <___vfiprintf_internal_r+0x2ec>
  808ca0:	bdc00044 	addi	r23,r23,1
  808ca4:	003eca06 	br	8087d0 <___vfiprintf_internal_r+0x2ec>
  808ca8:	a0800007 	ldb	r2,0(r20)
  808cac:	6b401014 	ori	r13,r13,64
  808cb0:	003e4d06 	br	8085e8 <___vfiprintf_internal_r+0x104>
  808cb4:	29403fcc 	andi	r5,r5,255
  808cb8:	2802b21e 	bne	r5,zero,809784 <___vfiprintf_internal_r+0x12a0>
  808cbc:	d9000417 	ldw	r4,16(sp)
  808cc0:	6880080c 	andi	r2,r13,32
  808cc4:	20c00017 	ldw	r3,0(r4)
  808cc8:	21000104 	addi	r4,r4,4
  808ccc:	1002251e 	bne	r2,zero,809564 <___vfiprintf_internal_r+0x1080>
  808cd0:	6880040c 	andi	r2,r13,16
  808cd4:	1002531e 	bne	r2,zero,809624 <___vfiprintf_internal_r+0x1140>
  808cd8:	6b40100c 	andi	r13,r13,64
  808cdc:	68025126 	beq	r13,zero,809624 <___vfiprintf_internal_r+0x1140>
  808ce0:	d8800117 	ldw	r2,4(sp)
  808ce4:	d9000415 	stw	r4,16(sp)
  808ce8:	1880000d 	sth	r2,0(r3)
  808cec:	003e2606 	br	808588 <___vfiprintf_internal_r+0xa4>
  808cf0:	a0800007 	ldb	r2,0(r20)
  808cf4:	10c01b18 	cmpnei	r3,r2,108
  808cf8:	18025a26 	beq	r3,zero,809664 <___vfiprintf_internal_r+0x1180>
  808cfc:	6b400414 	ori	r13,r13,16
  808d00:	003e3906 	br	8085e8 <___vfiprintf_internal_r+0x104>
  808d04:	d8c00417 	ldw	r3,16(sp)
  808d08:	d8000945 	stb	zero,37(sp)
  808d0c:	05c00044 	movi	r23,1
  808d10:	18800017 	ldw	r2,0(r3)
  808d14:	18c00104 	addi	r3,r3,4
  808d18:	d8c00415 	stw	r3,16(sp)
  808d1c:	d8800d05 	stb	r2,52(sp)
  808d20:	07000044 	movi	fp,1
  808d24:	dcc00d04 	addi	r19,sp,52
  808d28:	003ea706 	br	8087c8 <___vfiprintf_internal_r+0x2e4>
  808d2c:	29403fcc 	andi	r5,r5,255
  808d30:	2802981e 	bne	r5,zero,809794 <___vfiprintf_internal_r+0x12b0>
  808d34:	00c02074 	movhi	r3,129
  808d38:	18c1a904 	addi	r3,r3,1700
  808d3c:	d8c00515 	stw	r3,20(sp)
  808d40:	68c0080c 	andi	r3,r13,32
  808d44:	18008326 	beq	r3,zero,808f54 <___vfiprintf_internal_r+0xa70>
  808d48:	d8c00417 	ldw	r3,16(sp)
  808d4c:	1dc00017 	ldw	r23,0(r3)
  808d50:	1f000117 	ldw	fp,4(r3)
  808d54:	18c00204 	addi	r3,r3,8
  808d58:	d8c00415 	stw	r3,16(sp)
  808d5c:	68c0004c 	andi	r3,r13,1
  808d60:	18000226 	beq	r3,zero,808d6c <___vfiprintf_internal_r+0x888>
  808d64:	bf06b03a 	or	r3,r23,fp
  808d68:	1801f31e 	bne	r3,zero,809538 <___vfiprintf_internal_r+0x1054>
  808d6c:	00800084 	movi	r2,2
  808d70:	003f2506 	br	808a08 <___vfiprintf_internal_r+0x524>
  808d74:	29403fcc 	andi	r5,r5,255
  808d78:	2802801e 	bne	r5,zero,80977c <___vfiprintf_internal_r+0x1298>
  808d7c:	6b400414 	ori	r13,r13,16
  808d80:	6880080c 	andi	r2,r13,32
  808d84:	103fa31e 	bne	r2,zero,808c14 <___vfiprintf_internal_r+0x730>
  808d88:	d9000417 	ldw	r4,16(sp)
  808d8c:	6880040c 	andi	r2,r13,16
  808d90:	20c00104 	addi	r3,r4,4
  808d94:	1001f91e 	bne	r2,zero,80957c <___vfiprintf_internal_r+0x1098>
  808d98:	6880100c 	andi	r2,r13,64
  808d9c:	10025226 	beq	r2,zero,8096e8 <___vfiprintf_internal_r+0x1204>
  808da0:	d8800417 	ldw	r2,16(sp)
  808da4:	d8c00415 	stw	r3,16(sp)
  808da8:	15c0000f 	ldh	r23,0(r2)
  808dac:	b839d7fa 	srai	fp,r23,31
  808db0:	e005883a 	mov	r2,fp
  808db4:	103f9e0e 	bge	r2,zero,808c30 <___vfiprintf_internal_r+0x74c>
  808db8:	b804c03a 	cmpne	r2,r23,zero
  808dbc:	0739c83a 	sub	fp,zero,fp
  808dc0:	e0b9c83a 	sub	fp,fp,r2
  808dc4:	00800b44 	movi	r2,45
  808dc8:	d8800945 	stb	r2,37(sp)
  808dcc:	40ffffe0 	cmpeqi	r3,r8,-1
  808dd0:	05efc83a 	sub	r23,zero,r23
  808dd4:	03800b44 	movi	r14,45
  808dd8:	00800044 	movi	r2,1
  808ddc:	183f0e26 	beq	r3,zero,808a18 <___vfiprintf_internal_r+0x534>
  808de0:	10c00060 	cmpeqi	r3,r2,1
  808de4:	183f9f1e 	bne	r3,zero,808c64 <___vfiprintf_internal_r+0x780>
  808de8:	108000a0 	cmpeqi	r2,r2,2
  808dec:	9027883a 	mov	r19,r18
  808df0:	1000a81e 	bne	r2,zero,809094 <___vfiprintf_internal_r+0xbb0>
  808df4:	e006977a 	slli	r3,fp,29
  808df8:	b804d0fa 	srli	r2,r23,3
  808dfc:	e038d0fa 	srli	fp,fp,3
  808e00:	b90001cc 	andi	r4,r23,7
  808e04:	21000c04 	addi	r4,r4,48
  808e08:	18aeb03a 	or	r23,r3,r2
  808e0c:	993fffc5 	stb	r4,-1(r19)
  808e10:	bf04b03a 	or	r2,r23,fp
  808e14:	980b883a 	mov	r5,r19
  808e18:	9cffffc4 	addi	r19,r19,-1
  808e1c:	103ff51e 	bne	r2,zero,808df4 <___vfiprintf_internal_r+0x910>
  808e20:	6880004c 	andi	r2,r13,1
  808e24:	1000a726 	beq	r2,zero,8090c4 <___vfiprintf_internal_r+0xbe0>
  808e28:	21003fcc 	andi	r4,r4,255
  808e2c:	2100201c 	xori	r4,r4,128
  808e30:	213fe004 	addi	r4,r4,-128
  808e34:	20800c18 	cmpnei	r2,r4,48
  808e38:	1000a226 	beq	r2,zero,8090c4 <___vfiprintf_internal_r+0xbe0>
  808e3c:	297fff84 	addi	r5,r5,-2
  808e40:	00800c04 	movi	r2,48
  808e44:	98bfffc5 	stb	r2,-1(r19)
  808e48:	9179c83a 	sub	fp,r18,r5
  808e4c:	db400015 	stw	r13,0(sp)
  808e50:	2827883a 	mov	r19,r5
  808e54:	003f8b06 	br	808c84 <___vfiprintf_internal_r+0x7a0>
  808e58:	a0800007 	ldb	r2,0(r20)
  808e5c:	6b402014 	ori	r13,r13,128
  808e60:	003de106 	br	8085e8 <___vfiprintf_internal_r+0x104>
  808e64:	a0800007 	ldb	r2,0(r20)
  808e68:	a0c00044 	addi	r3,r20,1
  808e6c:	11000aa0 	cmpeqi	r4,r2,42
  808e70:	2002551e 	bne	r4,zero,8097c8 <___vfiprintf_internal_r+0x12e4>
  808e74:	113ff404 	addi	r4,r2,-48
  808e78:	21c002b0 	cmpltui	r7,r4,10
  808e7c:	1829883a 	mov	r20,r3
  808e80:	0011883a 	mov	r8,zero
  808e84:	383dd926 	beq	r7,zero,8085ec <___vfiprintf_internal_r+0x108>
  808e88:	400690ba 	slli	r3,r8,2
  808e8c:	a0800007 	ldb	r2,0(r20)
  808e90:	a5000044 	addi	r20,r20,1
  808e94:	1a11883a 	add	r8,r3,r8
  808e98:	4211883a 	add	r8,r8,r8
  808e9c:	4111883a 	add	r8,r8,r4
  808ea0:	113ff404 	addi	r4,r2,-48
  808ea4:	20c002b0 	cmpltui	r3,r4,10
  808ea8:	183ff71e 	bne	r3,zero,808e88 <___vfiprintf_internal_r+0x9a4>
  808eac:	003dcf06 	br	8085ec <___vfiprintf_internal_r+0x108>
  808eb0:	a0800003 	ldbu	r2,0(r20)
  808eb4:	10803fcc 	andi	r2,r2,255
  808eb8:	1080201c 	xori	r2,r2,128
  808ebc:	6b400114 	ori	r13,r13,4
  808ec0:	10bfe004 	addi	r2,r2,-128
  808ec4:	003dc806 	br	8085e8 <___vfiprintf_internal_r+0x104>
  808ec8:	a0800007 	ldb	r2,0(r20)
  808ecc:	01400044 	movi	r5,1
  808ed0:	01800ac4 	movi	r6,43
  808ed4:	003dc406 	br	8085e8 <___vfiprintf_internal_r+0x104>
  808ed8:	d8c00417 	ldw	r3,16(sp)
  808edc:	a0800003 	ldbu	r2,0(r20)
  808ee0:	1c400017 	ldw	r17,0(r3)
  808ee4:	18c00104 	addi	r3,r3,4
  808ee8:	8801b916 	blt	r17,zero,8095d0 <___vfiprintf_internal_r+0x10ec>
  808eec:	d8c00415 	stw	r3,16(sp)
  808ef0:	10803fcc 	andi	r2,r2,255
  808ef4:	1080201c 	xori	r2,r2,128
  808ef8:	10bfe004 	addi	r2,r2,-128
  808efc:	003dba06 	br	8085e8 <___vfiprintf_internal_r+0x104>
  808f00:	a0800007 	ldb	r2,0(r20)
  808f04:	6b400054 	ori	r13,r13,1
  808f08:	003db706 	br	8085e8 <___vfiprintf_internal_r+0x104>
  808f0c:	30c03fcc 	andi	r3,r6,255
  808f10:	18c0201c 	xori	r3,r3,128
  808f14:	18ffe004 	addi	r3,r3,-128
  808f18:	a0800003 	ldbu	r2,0(r20)
  808f1c:	183ff41e 	bne	r3,zero,808ef0 <___vfiprintf_internal_r+0xa0c>
  808f20:	10803fcc 	andi	r2,r2,255
  808f24:	1080201c 	xori	r2,r2,128
  808f28:	01400044 	movi	r5,1
  808f2c:	01800804 	movi	r6,32
  808f30:	10bfe004 	addi	r2,r2,-128
  808f34:	003dac06 	br	8085e8 <___vfiprintf_internal_r+0x104>
  808f38:	29403fcc 	andi	r5,r5,255
  808f3c:	28020a1e 	bne	r5,zero,809768 <___vfiprintf_internal_r+0x1284>
  808f40:	00c02074 	movhi	r3,129
  808f44:	18c1ae04 	addi	r3,r3,1720
  808f48:	d8c00515 	stw	r3,20(sp)
  808f4c:	68c0080c 	andi	r3,r13,32
  808f50:	183f7d1e 	bne	r3,zero,808d48 <___vfiprintf_internal_r+0x864>
  808f54:	d9400417 	ldw	r5,16(sp)
  808f58:	68c0040c 	andi	r3,r13,16
  808f5c:	29000104 	addi	r4,r5,4
  808f60:	18018b1e 	bne	r3,zero,809590 <___vfiprintf_internal_r+0x10ac>
  808f64:	68c0100c 	andi	r3,r13,64
  808f68:	1801da26 	beq	r3,zero,8096d4 <___vfiprintf_internal_r+0x11f0>
  808f6c:	d8c00417 	ldw	r3,16(sp)
  808f70:	0039883a 	mov	fp,zero
  808f74:	d9000415 	stw	r4,16(sp)
  808f78:	1dc0000b 	ldhu	r23,0(r3)
  808f7c:	003f7706 	br	808d5c <___vfiprintf_internal_r+0x878>
  808f80:	d8800417 	ldw	r2,16(sp)
  808f84:	d8000945 	stb	zero,37(sp)
  808f88:	14c00017 	ldw	r19,0(r2)
  808f8c:	10c00104 	addi	r3,r2,4
  808f90:	9801bb26 	beq	r19,zero,809680 <___vfiprintf_internal_r+0x119c>
  808f94:	40bfffe0 	cmpeqi	r2,r8,-1
  808f98:	1001901e 	bne	r2,zero,8095dc <___vfiprintf_internal_r+0x10f8>
  808f9c:	400d883a 	mov	r6,r8
  808fa0:	000b883a 	mov	r5,zero
  808fa4:	9809883a 	mov	r4,r19
  808fa8:	d8c00315 	stw	r3,12(sp)
  808fac:	db400215 	stw	r13,8(sp)
  808fb0:	da000015 	stw	r8,0(sp)
  808fb4:	08067b40 	call	8067b4 <memchr>
  808fb8:	da000017 	ldw	r8,0(sp)
  808fbc:	db400217 	ldw	r13,8(sp)
  808fc0:	d8c00317 	ldw	r3,12(sp)
  808fc4:	1001e426 	beq	r2,zero,809758 <___vfiprintf_internal_r+0x1274>
  808fc8:	14f9c83a 	sub	fp,r2,r19
  808fcc:	e02f883a 	mov	r23,fp
  808fd0:	d8c00415 	stw	r3,16(sp)
  808fd4:	003dfc06 	br	8087c8 <___vfiprintf_internal_r+0x2e4>
  808fd8:	a0800007 	ldb	r2,0(r20)
  808fdc:	6b400814 	ori	r13,r13,32
  808fe0:	003d8106 	br	8085e8 <___vfiprintf_internal_r+0x104>
  808fe4:	d8c00417 	ldw	r3,16(sp)
  808fe8:	00800c04 	movi	r2,48
  808fec:	d8800985 	stb	r2,38(sp)
  808ff0:	00801e04 	movi	r2,120
  808ff4:	01002074 	movhi	r4,129
  808ff8:	d88009c5 	stb	r2,39(sp)
  808ffc:	18800104 	addi	r2,r3,4
  809000:	d8800415 	stw	r2,16(sp)
  809004:	2081ae04 	addi	r2,r4,1720
  809008:	d8800515 	stw	r2,20(sp)
  80900c:	1dc00017 	ldw	r23,0(r3)
  809010:	0039883a 	mov	fp,zero
  809014:	6b400094 	ori	r13,r13,2
  809018:	00800084 	movi	r2,2
  80901c:	003e7a06 	br	808a08 <___vfiprintf_internal_r+0x524>
  809020:	9027883a 	mov	r19,r18
  809024:	b809883a 	mov	r4,r23
  809028:	e00b883a 	mov	r5,fp
  80902c:	01800284 	movi	r6,10
  809030:	000f883a 	mov	r7,zero
  809034:	db800315 	stw	r14,12(sp)
  809038:	da000215 	stw	r8,8(sp)
  80903c:	db400015 	stw	r13,0(sp)
  809040:	080ad2c0 	call	80ad2c <__umoddi3>
  809044:	10800c04 	addi	r2,r2,48
  809048:	b809883a 	mov	r4,r23
  80904c:	e00b883a 	mov	r5,fp
  809050:	98bfffc5 	stb	r2,-1(r19)
  809054:	01800284 	movi	r6,10
  809058:	000f883a 	mov	r7,zero
  80905c:	080a7100 	call	80a710 <__udivdi3>
  809060:	e009883a 	mov	r4,fp
  809064:	b80b883a 	mov	r5,r23
  809068:	db400017 	ldw	r13,0(sp)
  80906c:	da000217 	ldw	r8,8(sp)
  809070:	db800317 	ldw	r14,12(sp)
  809074:	9cffffc4 	addi	r19,r19,-1
  809078:	102f883a 	mov	r23,r2
  80907c:	1839883a 	mov	fp,r3
  809080:	203fe81e 	bne	r4,zero,809024 <___vfiprintf_internal_r+0xb40>
  809084:	294002a8 	cmpgeui	r5,r5,10
  809088:	283fe61e 	bne	r5,zero,809024 <___vfiprintf_internal_r+0xb40>
  80908c:	94f9c83a 	sub	fp,r18,r19
  809090:	003efc06 	br	808c84 <___vfiprintf_internal_r+0x7a0>
  809094:	d9000517 	ldw	r4,20(sp)
  809098:	b88003cc 	andi	r2,r23,15
  80909c:	e006973a 	slli	r3,fp,28
  8090a0:	b82ed13a 	srli	r23,r23,4
  8090a4:	2085883a 	add	r2,r4,r2
  8090a8:	10800003 	ldbu	r2,0(r2)
  8090ac:	e038d13a 	srli	fp,fp,4
  8090b0:	1deeb03a 	or	r23,r3,r23
  8090b4:	98bfffc5 	stb	r2,-1(r19)
  8090b8:	bf04b03a 	or	r2,r23,fp
  8090bc:	9cffffc4 	addi	r19,r19,-1
  8090c0:	103ff41e 	bne	r2,zero,809094 <___vfiprintf_internal_r+0xbb0>
  8090c4:	94f9c83a 	sub	fp,r18,r19
  8090c8:	db400015 	stw	r13,0(sp)
  8090cc:	003eed06 	br	808c84 <___vfiprintf_internal_r+0x7a0>
  8090d0:	01400044 	movi	r5,1
  8090d4:	0009883a 	mov	r4,zero
  8090d8:	900d883a 	mov	r6,r18
  8090dc:	003e9e06 	br	808b58 <___vfiprintf_internal_r+0x674>
  8090e0:	8dc7c83a 	sub	r3,r17,r23
  8090e4:	00fdf20e 	bge	zero,r3,8088b0 <___vfiprintf_internal_r+0x3cc>
  8090e8:	19c00450 	cmplti	r7,r3,17
  8090ec:	3801ae1e 	bne	r7,zero,8097a8 <___vfiprintf_internal_r+0x12c4>
  8090f0:	01c02074 	movhi	r7,129
  8090f4:	39c23004 	addi	r7,r7,2240
  8090f8:	03400404 	movi	r13,16
  8090fc:	00000606 	br	809118 <___vfiprintf_internal_r+0xc34>
  809100:	23800084 	addi	r14,r4,2
  809104:	84000204 	addi	r16,r16,8
  809108:	2809883a 	mov	r4,r5
  80910c:	18fffc04 	addi	r3,r3,-16
  809110:	19400448 	cmpgei	r5,r3,17
  809114:	28001c26 	beq	r5,zero,809188 <___vfiprintf_internal_r+0xca4>
  809118:	21400044 	addi	r5,r4,1
  80911c:	10800404 	addi	r2,r2,16
  809120:	81c00015 	stw	r7,0(r16)
  809124:	83400115 	stw	r13,4(r16)
  809128:	d8800c15 	stw	r2,48(sp)
  80912c:	d9400b15 	stw	r5,44(sp)
  809130:	29800208 	cmpgei	r6,r5,8
  809134:	303ff226 	beq	r6,zero,809100 <___vfiprintf_internal_r+0xc1c>
  809138:	d9800a04 	addi	r6,sp,40
  80913c:	a80b883a 	mov	r5,r21
  809140:	b009883a 	mov	r4,r22
  809144:	10006326 	beq	r2,zero,8092d4 <___vfiprintf_internal_r+0xdf0>
  809148:	d9c00615 	stw	r7,24(sp)
  80914c:	d8c00315 	stw	r3,12(sp)
  809150:	da000215 	stw	r8,8(sp)
  809154:	08083d80 	call	8083d8 <__sprint_r.part.0>
  809158:	103df71e 	bne	r2,zero,808938 <___vfiprintf_internal_r+0x454>
  80915c:	d8c00317 	ldw	r3,12(sp)
  809160:	d9000b17 	ldw	r4,44(sp)
  809164:	d8800c17 	ldw	r2,48(sp)
  809168:	18fffc04 	addi	r3,r3,-16
  80916c:	19400448 	cmpgei	r5,r3,17
  809170:	d9c00617 	ldw	r7,24(sp)
  809174:	da000217 	ldw	r8,8(sp)
  809178:	9021883a 	mov	r16,r18
  80917c:	23800044 	addi	r14,r4,1
  809180:	03400404 	movi	r13,16
  809184:	283fe41e 	bne	r5,zero,809118 <___vfiprintf_internal_r+0xc34>
  809188:	83400204 	addi	r13,r16,8
  80918c:	10c5883a 	add	r2,r2,r3
  809190:	80c00115 	stw	r3,4(r16)
  809194:	81c00015 	stw	r7,0(r16)
  809198:	d8800c15 	stw	r2,48(sp)
  80919c:	db800b15 	stw	r14,44(sp)
  8091a0:	70c00208 	cmpgei	r3,r14,8
  8091a4:	1800df26 	beq	r3,zero,809524 <___vfiprintf_internal_r+0x1040>
  8091a8:	10015826 	beq	r2,zero,80970c <___vfiprintf_internal_r+0x1228>
  8091ac:	d9800a04 	addi	r6,sp,40
  8091b0:	a80b883a 	mov	r5,r21
  8091b4:	b009883a 	mov	r4,r22
  8091b8:	da000215 	stw	r8,8(sp)
  8091bc:	08083d80 	call	8083d8 <__sprint_r.part.0>
  8091c0:	103ddd1e 	bne	r2,zero,808938 <___vfiprintf_internal_r+0x454>
  8091c4:	da000217 	ldw	r8,8(sp)
  8091c8:	d9000b17 	ldw	r4,44(sp)
  8091cc:	d8800c17 	ldw	r2,48(sp)
  8091d0:	4711c83a 	sub	r8,r8,fp
  8091d4:	d9801904 	addi	r6,sp,100
  8091d8:	21400044 	addi	r5,r4,1
  8091dc:	9021883a 	mov	r16,r18
  8091e0:	023db50e 	bge	zero,r8,8088b8 <___vfiprintf_internal_r+0x3d4>
  8091e4:	40c00450 	cmplti	r3,r8,17
  8091e8:	01c02074 	movhi	r7,129
  8091ec:	1801441e 	bne	r3,zero,809700 <___vfiprintf_internal_r+0x121c>
  8091f0:	39c23004 	addi	r7,r7,2240
  8091f4:	03400404 	movi	r13,16
  8091f8:	00000606 	br	809214 <___vfiprintf_internal_r+0xd30>
  8091fc:	21400084 	addi	r5,r4,2
  809200:	84000204 	addi	r16,r16,8
  809204:	1809883a 	mov	r4,r3
  809208:	423ffc04 	addi	r8,r8,-16
  80920c:	40c00448 	cmpgei	r3,r8,17
  809210:	18001a26 	beq	r3,zero,80927c <___vfiprintf_internal_r+0xd98>
  809214:	20c00044 	addi	r3,r4,1
  809218:	10800404 	addi	r2,r2,16
  80921c:	81c00015 	stw	r7,0(r16)
  809220:	83400115 	stw	r13,4(r16)
  809224:	d8800c15 	stw	r2,48(sp)
  809228:	d8c00b15 	stw	r3,44(sp)
  80922c:	19400208 	cmpgei	r5,r3,8
  809230:	283ff226 	beq	r5,zero,8091fc <___vfiprintf_internal_r+0xd18>
  809234:	d9800a04 	addi	r6,sp,40
  809238:	a80b883a 	mov	r5,r21
  80923c:	b009883a 	mov	r4,r22
  809240:	10001a26 	beq	r2,zero,8092ac <___vfiprintf_internal_r+0xdc8>
  809244:	d9c00315 	stw	r7,12(sp)
  809248:	da000215 	stw	r8,8(sp)
  80924c:	08083d80 	call	8083d8 <__sprint_r.part.0>
  809250:	103db91e 	bne	r2,zero,808938 <___vfiprintf_internal_r+0x454>
  809254:	da000217 	ldw	r8,8(sp)
  809258:	d9000b17 	ldw	r4,44(sp)
  80925c:	d8800c17 	ldw	r2,48(sp)
  809260:	423ffc04 	addi	r8,r8,-16
  809264:	40c00448 	cmpgei	r3,r8,17
  809268:	d9c00317 	ldw	r7,12(sp)
  80926c:	9021883a 	mov	r16,r18
  809270:	21400044 	addi	r5,r4,1
  809274:	03400404 	movi	r13,16
  809278:	183fe61e 	bne	r3,zero,809214 <___vfiprintf_internal_r+0xd30>
  80927c:	81000204 	addi	r4,r16,8
  809280:	1205883a 	add	r2,r2,r8
  809284:	81c00015 	stw	r7,0(r16)
  809288:	82000115 	stw	r8,4(r16)
  80928c:	d8800c15 	stw	r2,48(sp)
  809290:	d9400b15 	stw	r5,44(sp)
  809294:	28c00208 	cmpgei	r3,r5,8
  809298:	1800721e 	bne	r3,zero,809464 <___vfiprintf_internal_r+0xf80>
  80929c:	29400044 	addi	r5,r5,1
  8092a0:	21800204 	addi	r6,r4,8
  8092a4:	2021883a 	mov	r16,r4
  8092a8:	003d8306 	br	8088b8 <___vfiprintf_internal_r+0x3d4>
  8092ac:	01400044 	movi	r5,1
  8092b0:	0009883a 	mov	r4,zero
  8092b4:	9021883a 	mov	r16,r18
  8092b8:	003fd306 	br	809208 <___vfiprintf_internal_r+0xd24>
  8092bc:	d9800a04 	addi	r6,sp,40
  8092c0:	a80b883a 	mov	r5,r21
  8092c4:	b009883a 	mov	r4,r22
  8092c8:	08083d80 	call	8083d8 <__sprint_r.part.0>
  8092cc:	103d9426 	beq	r2,zero,808920 <___vfiprintf_internal_r+0x43c>
  8092d0:	003d9906 	br	808938 <___vfiprintf_internal_r+0x454>
  8092d4:	03800044 	movi	r14,1
  8092d8:	0009883a 	mov	r4,zero
  8092dc:	9021883a 	mov	r16,r18
  8092e0:	003f8a06 	br	80910c <___vfiprintf_internal_r+0xc28>
  8092e4:	10006e26 	beq	r2,zero,8094a0 <___vfiprintf_internal_r+0xfbc>
  8092e8:	d9800a04 	addi	r6,sp,40
  8092ec:	a80b883a 	mov	r5,r21
  8092f0:	b009883a 	mov	r4,r22
  8092f4:	da000615 	stw	r8,24(sp)
  8092f8:	db400315 	stw	r13,12(sp)
  8092fc:	db800215 	stw	r14,8(sp)
  809300:	08083d80 	call	8083d8 <__sprint_r.part.0>
  809304:	103d8c1e 	bne	r2,zero,808938 <___vfiprintf_internal_r+0x454>
  809308:	d9000b17 	ldw	r4,44(sp)
  80930c:	d8800c17 	ldw	r2,48(sp)
  809310:	da000617 	ldw	r8,24(sp)
  809314:	db400317 	ldw	r13,12(sp)
  809318:	db800217 	ldw	r14,8(sp)
  80931c:	d9801904 	addi	r6,sp,100
  809320:	21400044 	addi	r5,r4,1
  809324:	9021883a 	mov	r16,r18
  809328:	003d4606 	br	808844 <___vfiprintf_internal_r+0x360>
  80932c:	d8800984 	addi	r2,sp,38
  809330:	d8801715 	stw	r2,92(sp)
  809334:	00800084 	movi	r2,2
  809338:	d8801815 	stw	r2,96(sp)
  80933c:	d9801904 	addi	r6,sp,100
  809340:	01400044 	movi	r5,1
  809344:	3021883a 	mov	r16,r6
  809348:	2809883a 	mov	r4,r5
  80934c:	21400044 	addi	r5,r4,1
  809350:	81800204 	addi	r6,r16,8
  809354:	003d5406 	br	8088a8 <___vfiprintf_internal_r+0x3c4>
  809358:	db400017 	ldw	r13,0(sp)
  80935c:	003ea006 	br	808de0 <___vfiprintf_internal_r+0x8fc>
  809360:	19400450 	cmplti	r5,r3,17
  809364:	01c02074 	movhi	r7,129
  809368:	2801011e 	bne	r5,zero,809770 <___vfiprintf_internal_r+0x128c>
  80936c:	39c23404 	addi	r7,r7,2256
  809370:	03c00404 	movi	r15,16
  809374:	00000706 	br	809394 <___vfiprintf_internal_r+0xeb0>
  809378:	27c00084 	addi	ra,r4,2
  80937c:	84000204 	addi	r16,r16,8
  809380:	3009883a 	mov	r4,r6
  809384:	18fffc04 	addi	r3,r3,-16
  809388:	19400448 	cmpgei	r5,r3,17
  80938c:	28002026 	beq	r5,zero,809410 <___vfiprintf_internal_r+0xf2c>
  809390:	21800044 	addi	r6,r4,1
  809394:	10800404 	addi	r2,r2,16
  809398:	81c00015 	stw	r7,0(r16)
  80939c:	83c00115 	stw	r15,4(r16)
  8093a0:	d8800c15 	stw	r2,48(sp)
  8093a4:	d9800b15 	stw	r6,44(sp)
  8093a8:	31400208 	cmpgei	r5,r6,8
  8093ac:	283ff226 	beq	r5,zero,809378 <___vfiprintf_internal_r+0xe94>
  8093b0:	d9800a04 	addi	r6,sp,40
  8093b4:	a80b883a 	mov	r5,r21
  8093b8:	b009883a 	mov	r4,r22
  8093bc:	10001f26 	beq	r2,zero,80943c <___vfiprintf_internal_r+0xf58>
  8093c0:	d9c00815 	stw	r7,32(sp)
  8093c4:	d8c00715 	stw	r3,28(sp)
  8093c8:	da000615 	stw	r8,24(sp)
  8093cc:	db400315 	stw	r13,12(sp)
  8093d0:	db800215 	stw	r14,8(sp)
  8093d4:	08083d80 	call	8083d8 <__sprint_r.part.0>
  8093d8:	103d571e 	bne	r2,zero,808938 <___vfiprintf_internal_r+0x454>
  8093dc:	d8c00717 	ldw	r3,28(sp)
  8093e0:	d9000b17 	ldw	r4,44(sp)
  8093e4:	d8800c17 	ldw	r2,48(sp)
  8093e8:	18fffc04 	addi	r3,r3,-16
  8093ec:	19400448 	cmpgei	r5,r3,17
  8093f0:	d9c00817 	ldw	r7,32(sp)
  8093f4:	da000617 	ldw	r8,24(sp)
  8093f8:	db400317 	ldw	r13,12(sp)
  8093fc:	db800217 	ldw	r14,8(sp)
  809400:	9021883a 	mov	r16,r18
  809404:	27c00044 	addi	ra,r4,1
  809408:	03c00404 	movi	r15,16
  80940c:	283fe01e 	bne	r5,zero,809390 <___vfiprintf_internal_r+0xeac>
  809410:	10c5883a 	add	r2,r2,r3
  809414:	80c00115 	stw	r3,4(r16)
  809418:	81c00015 	stw	r7,0(r16)
  80941c:	d8800c15 	stw	r2,48(sp)
  809420:	dfc00b15 	stw	ra,44(sp)
  809424:	f8c00208 	cmpgei	r3,ra,8
  809428:	18002b1e 	bne	r3,zero,8094d8 <___vfiprintf_internal_r+0xff4>
  80942c:	84000204 	addi	r16,r16,8
  809430:	f9400044 	addi	r5,ra,1
  809434:	f809883a 	mov	r4,ra
  809438:	003cf206 	br	808804 <___vfiprintf_internal_r+0x320>
  80943c:	0009883a 	mov	r4,zero
  809440:	07c00044 	movi	ra,1
  809444:	9021883a 	mov	r16,r18
  809448:	003fce06 	br	809384 <___vfiprintf_internal_r+0xea0>
  80944c:	8dc0010e 	bge	r17,r23,809454 <___vfiprintf_internal_r+0xf70>
  809450:	b823883a 	mov	r17,r23
  809454:	d8800117 	ldw	r2,4(sp)
  809458:	1445883a 	add	r2,r2,r17
  80945c:	d8800115 	stw	r2,4(sp)
  809460:	003d2f06 	br	808920 <___vfiprintf_internal_r+0x43c>
  809464:	10007326 	beq	r2,zero,809634 <___vfiprintf_internal_r+0x1150>
  809468:	d9800a04 	addi	r6,sp,40
  80946c:	a80b883a 	mov	r5,r21
  809470:	b009883a 	mov	r4,r22
  809474:	08083d80 	call	8083d8 <__sprint_r.part.0>
  809478:	103d2f1e 	bne	r2,zero,808938 <___vfiprintf_internal_r+0x454>
  80947c:	d9400b17 	ldw	r5,44(sp)
  809480:	d8800c17 	ldw	r2,48(sp)
  809484:	d9801904 	addi	r6,sp,100
  809488:	29400044 	addi	r5,r5,1
  80948c:	9021883a 	mov	r16,r18
  809490:	003d0906 	br	8088b8 <___vfiprintf_internal_r+0x3d4>
  809494:	d8000b15 	stw	zero,44(sp)
  809498:	9021883a 	mov	r16,r18
  80949c:	003d7806 	br	808a80 <___vfiprintf_internal_r+0x59c>
  8094a0:	7000441e 	bne	r14,zero,8095b4 <___vfiprintf_internal_r+0x10d0>
  8094a4:	0009883a 	mov	r4,zero
  8094a8:	d9801904 	addi	r6,sp,100
  8094ac:	01400044 	movi	r5,1
  8094b0:	9021883a 	mov	r16,r18
  8094b4:	003cfc06 	br	8088a8 <___vfiprintf_internal_r+0x3c4>
  8094b8:	d9801904 	addi	r6,sp,100
  8094bc:	01400044 	movi	r5,1
  8094c0:	0009883a 	mov	r4,zero
  8094c4:	9021883a 	mov	r16,r18
  8094c8:	003cf706 	br	8088a8 <___vfiprintf_internal_r+0x3c4>
  8094cc:	0039883a 	mov	fp,zero
  8094d0:	9027883a 	mov	r19,r18
  8094d4:	003deb06 	br	808c84 <___vfiprintf_internal_r+0x7a0>
  8094d8:	10004a26 	beq	r2,zero,809604 <___vfiprintf_internal_r+0x1120>
  8094dc:	d9800a04 	addi	r6,sp,40
  8094e0:	a80b883a 	mov	r5,r21
  8094e4:	b009883a 	mov	r4,r22
  8094e8:	da000615 	stw	r8,24(sp)
  8094ec:	db400315 	stw	r13,12(sp)
  8094f0:	db800215 	stw	r14,8(sp)
  8094f4:	08083d80 	call	8083d8 <__sprint_r.part.0>
  8094f8:	103d0f1e 	bne	r2,zero,808938 <___vfiprintf_internal_r+0x454>
  8094fc:	d9000b17 	ldw	r4,44(sp)
  809500:	d8800c17 	ldw	r2,48(sp)
  809504:	da000617 	ldw	r8,24(sp)
  809508:	db400317 	ldw	r13,12(sp)
  80950c:	db800217 	ldw	r14,8(sp)
  809510:	9021883a 	mov	r16,r18
  809514:	21400044 	addi	r5,r4,1
  809518:	003cba06 	br	808804 <___vfiprintf_internal_r+0x320>
  80951c:	9027883a 	mov	r19,r18
  809520:	003dd806 	br	808c84 <___vfiprintf_internal_r+0x7a0>
  809524:	71400044 	addi	r5,r14,1
  809528:	69800204 	addi	r6,r13,8
  80952c:	7009883a 	mov	r4,r14
  809530:	6821883a 	mov	r16,r13
  809534:	003cde06 	br	8088b0 <___vfiprintf_internal_r+0x3cc>
  809538:	00c00c04 	movi	r3,48
  80953c:	d88009c5 	stb	r2,39(sp)
  809540:	d8c00985 	stb	r3,38(sp)
  809544:	6b400094 	ori	r13,r13,2
  809548:	00800084 	movi	r2,2
  80954c:	003d2e06 	br	808a08 <___vfiprintf_internal_r+0x524>
  809550:	25c00017 	ldw	r23,0(r4)
  809554:	0039883a 	mov	fp,zero
  809558:	d8c00415 	stw	r3,16(sp)
  80955c:	0005883a 	mov	r2,zero
  809560:	003d2906 	br	808a08 <___vfiprintf_internal_r+0x524>
  809564:	d9400117 	ldw	r5,4(sp)
  809568:	d9000415 	stw	r4,16(sp)
  80956c:	2805d7fa 	srai	r2,r5,31
  809570:	19400015 	stw	r5,0(r3)
  809574:	18800115 	stw	r2,4(r3)
  809578:	003c0306 	br	808588 <___vfiprintf_internal_r+0xa4>
  80957c:	25c00017 	ldw	r23,0(r4)
  809580:	d8c00415 	stw	r3,16(sp)
  809584:	b839d7fa 	srai	fp,r23,31
  809588:	e005883a 	mov	r2,fp
  80958c:	003da706 	br	808c2c <___vfiprintf_internal_r+0x748>
  809590:	2dc00017 	ldw	r23,0(r5)
  809594:	0039883a 	mov	fp,zero
  809598:	d9000415 	stw	r4,16(sp)
  80959c:	003def06 	br	808d5c <___vfiprintf_internal_r+0x878>
  8095a0:	25c00017 	ldw	r23,0(r4)
  8095a4:	0039883a 	mov	fp,zero
  8095a8:	d8c00415 	stw	r3,16(sp)
  8095ac:	00800044 	movi	r2,1
  8095b0:	003d1506 	br	808a08 <___vfiprintf_internal_r+0x524>
  8095b4:	d8800984 	addi	r2,sp,38
  8095b8:	d8801715 	stw	r2,92(sp)
  8095bc:	00800084 	movi	r2,2
  8095c0:	d8801815 	stw	r2,96(sp)
  8095c4:	dc001904 	addi	r16,sp,100
  8095c8:	01000044 	movi	r4,1
  8095cc:	003f5f06 	br	80934c <___vfiprintf_internal_r+0xe68>
  8095d0:	0463c83a 	sub	r17,zero,r17
  8095d4:	d8c00415 	stw	r3,16(sp)
  8095d8:	003e3606 	br	808eb4 <___vfiprintf_internal_r+0x9d0>
  8095dc:	9809883a 	mov	r4,r19
  8095e0:	d8c00215 	stw	r3,8(sp)
  8095e4:	db400015 	stw	r13,0(sp)
  8095e8:	08010880 	call	801088 <strlen>
  8095ec:	d8c00217 	ldw	r3,8(sp)
  8095f0:	db400017 	ldw	r13,0(sp)
  8095f4:	1039883a 	mov	fp,r2
  8095f8:	102f883a 	mov	r23,r2
  8095fc:	d8c00415 	stw	r3,16(sp)
  809600:	003c7106 	br	8087c8 <___vfiprintf_internal_r+0x2e4>
  809604:	d8c00947 	ldb	r3,37(sp)
  809608:	1800451e 	bne	r3,zero,809720 <___vfiprintf_internal_r+0x123c>
  80960c:	703f471e 	bne	r14,zero,80932c <___vfiprintf_internal_r+0xe48>
  809610:	0009883a 	mov	r4,zero
  809614:	d9801904 	addi	r6,sp,100
  809618:	01400044 	movi	r5,1
  80961c:	9021883a 	mov	r16,r18
  809620:	003ca306 	br	8088b0 <___vfiprintf_internal_r+0x3cc>
  809624:	d8800117 	ldw	r2,4(sp)
  809628:	18800015 	stw	r2,0(r3)
  80962c:	d9000415 	stw	r4,16(sp)
  809630:	003bd506 	br	808588 <___vfiprintf_internal_r+0xa4>
  809634:	00c00044 	movi	r3,1
  809638:	e005883a 	mov	r2,fp
  80963c:	dcc01715 	stw	r19,92(sp)
  809640:	df001815 	stw	fp,96(sp)
  809644:	df000c15 	stw	fp,48(sp)
  809648:	d8c00b15 	stw	r3,44(sp)
  80964c:	d9801904 	addi	r6,sp,100
  809650:	003ca806 	br	8088f4 <___vfiprintf_internal_r+0x410>
  809654:	10c00060 	cmpeqi	r3,r2,1
  809658:	db400017 	ldw	r13,0(sp)
  80965c:	183de226 	beq	r3,zero,808de8 <___vfiprintf_internal_r+0x904>
  809660:	003d8306 	br	808c70 <___vfiprintf_internal_r+0x78c>
  809664:	a0800043 	ldbu	r2,1(r20)
  809668:	6b400814 	ori	r13,r13,32
  80966c:	a5000044 	addi	r20,r20,1
  809670:	10803fcc 	andi	r2,r2,255
  809674:	1080201c 	xori	r2,r2,128
  809678:	10bfe004 	addi	r2,r2,-128
  80967c:	003bda06 	br	8085e8 <___vfiprintf_internal_r+0x104>
  809680:	408001f0 	cmpltui	r2,r8,7
  809684:	4039883a 	mov	fp,r8
  809688:	1000011e 	bne	r2,zero,809690 <___vfiprintf_internal_r+0x11ac>
  80968c:	07000184 	movi	fp,6
  809690:	04c02074 	movhi	r19,129
  809694:	e02f883a 	mov	r23,fp
  809698:	d8c00415 	stw	r3,16(sp)
  80969c:	9cc1b304 	addi	r19,r19,1740
  8096a0:	003c4906 	br	8087c8 <___vfiprintf_internal_r+0x2e4>
  8096a4:	d8800417 	ldw	r2,16(sp)
  8096a8:	0039883a 	mov	fp,zero
  8096ac:	d8c00415 	stw	r3,16(sp)
  8096b0:	15c00017 	ldw	r23,0(r2)
  8096b4:	0005883a 	mov	r2,zero
  8096b8:	003cd306 	br	808a08 <___vfiprintf_internal_r+0x524>
  8096bc:	d8800417 	ldw	r2,16(sp)
  8096c0:	0039883a 	mov	fp,zero
  8096c4:	d8c00415 	stw	r3,16(sp)
  8096c8:	15c00017 	ldw	r23,0(r2)
  8096cc:	00800044 	movi	r2,1
  8096d0:	003ccd06 	br	808a08 <___vfiprintf_internal_r+0x524>
  8096d4:	d8c00417 	ldw	r3,16(sp)
  8096d8:	0039883a 	mov	fp,zero
  8096dc:	d9000415 	stw	r4,16(sp)
  8096e0:	1dc00017 	ldw	r23,0(r3)
  8096e4:	003d9d06 	br	808d5c <___vfiprintf_internal_r+0x878>
  8096e8:	d8800417 	ldw	r2,16(sp)
  8096ec:	d8c00415 	stw	r3,16(sp)
  8096f0:	15c00017 	ldw	r23,0(r2)
  8096f4:	b839d7fa 	srai	fp,r23,31
  8096f8:	e005883a 	mov	r2,fp
  8096fc:	003d4b06 	br	808c2c <___vfiprintf_internal_r+0x748>
  809700:	3009883a 	mov	r4,r6
  809704:	39c23004 	addi	r7,r7,2240
  809708:	003edd06 	br	809280 <___vfiprintf_internal_r+0xd9c>
  80970c:	d9801904 	addi	r6,sp,100
  809710:	01400044 	movi	r5,1
  809714:	0009883a 	mov	r4,zero
  809718:	9021883a 	mov	r16,r18
  80971c:	003c6406 	br	8088b0 <___vfiprintf_internal_r+0x3cc>
  809720:	d8800944 	addi	r2,sp,37
  809724:	d8801715 	stw	r2,92(sp)
  809728:	00800044 	movi	r2,1
  80972c:	d8801815 	stw	r2,96(sp)
  809730:	d9801904 	addi	r6,sp,100
  809734:	01400044 	movi	r5,1
  809738:	003c3e06 	br	808834 <___vfiprintf_internal_r+0x350>
  80973c:	d9800945 	stb	r6,37(sp)
  809740:	003c1b06 	br	8087b0 <___vfiprintf_internal_r+0x2cc>
  809744:	d9800a04 	addi	r6,sp,40
  809748:	a80b883a 	mov	r5,r21
  80974c:	b009883a 	mov	r4,r22
  809750:	08083d80 	call	8083d8 <__sprint_r.part.0>
  809754:	003c7806 	br	808938 <___vfiprintf_internal_r+0x454>
  809758:	402f883a 	mov	r23,r8
  80975c:	d8c00415 	stw	r3,16(sp)
  809760:	4039883a 	mov	fp,r8
  809764:	003c1806 	br	8087c8 <___vfiprintf_internal_r+0x2e4>
  809768:	d9800945 	stb	r6,37(sp)
  80976c:	003df406 	br	808f40 <___vfiprintf_internal_r+0xa5c>
  809770:	303f883a 	mov	ra,r6
  809774:	39c23404 	addi	r7,r7,2256
  809778:	003f2506 	br	809410 <___vfiprintf_internal_r+0xf2c>
  80977c:	d9800945 	stb	r6,37(sp)
  809780:	003d7e06 	br	808d7c <___vfiprintf_internal_r+0x898>
  809784:	d9800945 	stb	r6,37(sp)
  809788:	003d4c06 	br	808cbc <___vfiprintf_internal_r+0x7d8>
  80978c:	d9800945 	stb	r6,37(sp)
  809790:	003d1e06 	br	808c0c <___vfiprintf_internal_r+0x728>
  809794:	d9800945 	stb	r6,37(sp)
  809798:	003d6606 	br	808d34 <___vfiprintf_internal_r+0x850>
  80979c:	21400044 	addi	r5,r4,1
  8097a0:	39c23404 	addi	r7,r7,2256
  8097a4:	003d0606 	br	808bc0 <___vfiprintf_internal_r+0x6dc>
  8097a8:	01c02074 	movhi	r7,129
  8097ac:	301b883a 	mov	r13,r6
  8097b0:	281d883a 	mov	r14,r5
  8097b4:	39c23004 	addi	r7,r7,2240
  8097b8:	003e7406 	br	80918c <___vfiprintf_internal_r+0xca8>
  8097bc:	00bfffc4 	movi	r2,-1
  8097c0:	d8800115 	stw	r2,4(sp)
  8097c4:	003c5f06 	br	808944 <___vfiprintf_internal_r+0x460>
  8097c8:	d8800417 	ldw	r2,16(sp)
  8097cc:	12000017 	ldw	r8,0(r2)
  8097d0:	11000104 	addi	r4,r2,4
  8097d4:	4000010e 	bge	r8,zero,8097dc <___vfiprintf_internal_r+0x12f8>
  8097d8:	023fffc4 	movi	r8,-1
  8097dc:	a0800043 	ldbu	r2,1(r20)
  8097e0:	d9000415 	stw	r4,16(sp)
  8097e4:	1829883a 	mov	r20,r3
  8097e8:	10803fcc 	andi	r2,r2,255
  8097ec:	1080201c 	xori	r2,r2,128
  8097f0:	10bfe004 	addi	r2,r2,-128
  8097f4:	003b7c06 	br	8085e8 <___vfiprintf_internal_r+0x104>

008097f8 <__vfiprintf_internal>:
  8097f8:	00c02074 	movhi	r3,129
  8097fc:	2005883a 	mov	r2,r4
  809800:	1909e117 	ldw	r4,10116(r3)
  809804:	300f883a 	mov	r7,r6
  809808:	280d883a 	mov	r6,r5
  80980c:	100b883a 	mov	r5,r2
  809810:	08084e41 	jmpi	8084e4 <___vfiprintf_internal_r>

00809814 <__sbprintf>:
  809814:	2880030b 	ldhu	r2,12(r5)
  809818:	2b001917 	ldw	r12,100(r5)
  80981c:	2ac0038b 	ldhu	r11,14(r5)
  809820:	2a800717 	ldw	r10,28(r5)
  809824:	2a400917 	ldw	r9,36(r5)
  809828:	defee204 	addi	sp,sp,-1144
  80982c:	da001a04 	addi	r8,sp,104
  809830:	00c10004 	movi	r3,1024
  809834:	dc011a15 	stw	r16,1128(sp)
  809838:	10bfff4c 	andi	r2,r2,65533
  80983c:	2821883a 	mov	r16,r5
  809840:	d80b883a 	mov	r5,sp
  809844:	dc811c15 	stw	r18,1136(sp)
  809848:	dc411b15 	stw	r17,1132(sp)
  80984c:	dfc11d15 	stw	ra,1140(sp)
  809850:	2025883a 	mov	r18,r4
  809854:	d880030d 	sth	r2,12(sp)
  809858:	db001915 	stw	r12,100(sp)
  80985c:	dac0038d 	sth	r11,14(sp)
  809860:	da800715 	stw	r10,28(sp)
  809864:	da400915 	stw	r9,36(sp)
  809868:	da000015 	stw	r8,0(sp)
  80986c:	da000415 	stw	r8,16(sp)
  809870:	d8c00215 	stw	r3,8(sp)
  809874:	d8c00515 	stw	r3,20(sp)
  809878:	d8000615 	stw	zero,24(sp)
  80987c:	08084e40 	call	8084e4 <___vfiprintf_internal_r>
  809880:	1023883a 	mov	r17,r2
  809884:	10000d0e 	bge	r2,zero,8098bc <__sbprintf+0xa8>
  809888:	d880030b 	ldhu	r2,12(sp)
  80988c:	1080100c 	andi	r2,r2,64
  809890:	10000326 	beq	r2,zero,8098a0 <__sbprintf+0x8c>
  809894:	8080030b 	ldhu	r2,12(r16)
  809898:	10801014 	ori	r2,r2,64
  80989c:	8080030d 	sth	r2,12(r16)
  8098a0:	8805883a 	mov	r2,r17
  8098a4:	dfc11d17 	ldw	ra,1140(sp)
  8098a8:	dc811c17 	ldw	r18,1136(sp)
  8098ac:	dc411b17 	ldw	r17,1132(sp)
  8098b0:	dc011a17 	ldw	r16,1128(sp)
  8098b4:	dec11e04 	addi	sp,sp,1144
  8098b8:	f800283a 	ret
  8098bc:	d80b883a 	mov	r5,sp
  8098c0:	9009883a 	mov	r4,r18
  8098c4:	0804fdc0 	call	804fdc <_fflush_r>
  8098c8:	103fef26 	beq	r2,zero,809888 <__sbprintf+0x74>
  8098cc:	047fffc4 	movi	r17,-1
  8098d0:	003fed06 	br	809888 <__sbprintf+0x74>

008098d4 <_write_r>:
  8098d4:	2807883a 	mov	r3,r5
  8098d8:	defffe04 	addi	sp,sp,-8
  8098dc:	dc000015 	stw	r16,0(sp)
  8098e0:	300b883a 	mov	r5,r6
  8098e4:	00802074 	movhi	r2,129
  8098e8:	380d883a 	mov	r6,r7
  8098ec:	2021883a 	mov	r16,r4
  8098f0:	1809883a 	mov	r4,r3
  8098f4:	dfc00115 	stw	ra,4(sp)
  8098f8:	1010e715 	stw	zero,17308(r2)
  8098fc:	080e8240 	call	80e824 <write>
  809900:	10ffffd8 	cmpnei	r3,r2,-1
  809904:	18000426 	beq	r3,zero,809918 <_write_r+0x44>
  809908:	dfc00117 	ldw	ra,4(sp)
  80990c:	dc000017 	ldw	r16,0(sp)
  809910:	dec00204 	addi	sp,sp,8
  809914:	f800283a 	ret
  809918:	00c02074 	movhi	r3,129
  80991c:	18d0e717 	ldw	r3,17308(r3)
  809920:	183ff926 	beq	r3,zero,809908 <_write_r+0x34>
  809924:	80c00015 	stw	r3,0(r16)
  809928:	dfc00117 	ldw	ra,4(sp)
  80992c:	dc000017 	ldw	r16,0(sp)
  809930:	dec00204 	addi	sp,sp,8
  809934:	f800283a 	ret

00809938 <_close_r>:
  809938:	defffe04 	addi	sp,sp,-8
  80993c:	dc000015 	stw	r16,0(sp)
  809940:	00802074 	movhi	r2,129
  809944:	2021883a 	mov	r16,r4
  809948:	2809883a 	mov	r4,r5
  80994c:	dfc00115 	stw	ra,4(sp)
  809950:	1010e715 	stw	zero,17308(r2)
  809954:	080dc580 	call	80dc58 <close>
  809958:	10ffffd8 	cmpnei	r3,r2,-1
  80995c:	18000426 	beq	r3,zero,809970 <_close_r+0x38>
  809960:	dfc00117 	ldw	ra,4(sp)
  809964:	dc000017 	ldw	r16,0(sp)
  809968:	dec00204 	addi	sp,sp,8
  80996c:	f800283a 	ret
  809970:	00c02074 	movhi	r3,129
  809974:	18d0e717 	ldw	r3,17308(r3)
  809978:	183ff926 	beq	r3,zero,809960 <_close_r+0x28>
  80997c:	80c00015 	stw	r3,0(r16)
  809980:	dfc00117 	ldw	ra,4(sp)
  809984:	dc000017 	ldw	r16,0(sp)
  809988:	dec00204 	addi	sp,sp,8
  80998c:	f800283a 	ret

00809990 <__assert_func>:
  809990:	00802074 	movhi	r2,129
  809994:	1209e117 	ldw	r8,10116(r2)
  809998:	defffc04 	addi	sp,sp,-16
  80999c:	3807883a 	mov	r3,r7
  8099a0:	3005883a 	mov	r2,r6
  8099a4:	dfc00315 	stw	ra,12(sp)
  8099a8:	42400317 	ldw	r9,12(r8)
  8099ac:	200f883a 	mov	r7,r4
  8099b0:	2811883a 	mov	r8,r5
  8099b4:	180d883a 	mov	r6,r3
  8099b8:	10000a26 	beq	r2,zero,8099e4 <__assert_func+0x54>
  8099bc:	00c02074 	movhi	r3,129
  8099c0:	18c23804 	addi	r3,r3,2272
  8099c4:	01402074 	movhi	r5,129
  8099c8:	29423c04 	addi	r5,r5,2288
  8099cc:	4809883a 	mov	r4,r9
  8099d0:	d8c00115 	stw	r3,4(sp)
  8099d4:	da000015 	stw	r8,0(sp)
  8099d8:	d8800215 	stw	r2,8(sp)
  8099dc:	0809bf40 	call	809bf4 <fiprintf>
  8099e0:	080a3e00 	call	80a3e0 <abort>
  8099e4:	00c02074 	movhi	r3,129
  8099e8:	18c16004 	addi	r3,r3,1408
  8099ec:	1805883a 	mov	r2,r3
  8099f0:	003ff406 	br	8099c4 <__assert_func+0x34>

008099f4 <__assert>:
  8099f4:	deffff04 	addi	sp,sp,-4
  8099f8:	300f883a 	mov	r7,r6
  8099fc:	000d883a 	mov	r6,zero
  809a00:	dfc00015 	stw	ra,0(sp)
  809a04:	08099900 	call	809990 <__assert_func>

00809a08 <_calloc_r>:
  809a08:	defffe04 	addi	sp,sp,-8
  809a0c:	dc000015 	stw	r16,0(sp)
  809a10:	2021883a 	mov	r16,r4
  809a14:	2809883a 	mov	r4,r5
  809a18:	300b883a 	mov	r5,r6
  809a1c:	dfc00115 	stw	ra,4(sp)
  809a20:	0800f1c0 	call	800f1c <__mulsi3>
  809a24:	8009883a 	mov	r4,r16
  809a28:	100b883a 	mov	r5,r2
  809a2c:	0805fd40 	call	805fd4 <_malloc_r>
  809a30:	1009883a 	mov	r4,r2
  809a34:	10000c26 	beq	r2,zero,809a68 <_calloc_r+0x60>
  809a38:	11bfff17 	ldw	r6,-4(r2)
  809a3c:	00bfff04 	movi	r2,-4
  809a40:	308c703a 	and	r6,r6,r2
  809a44:	31bfff04 	addi	r6,r6,-4
  809a48:	30800968 	cmpgeui	r2,r6,37
  809a4c:	1000151e 	bne	r2,zero,809aa4 <_calloc_r+0x9c>
  809a50:	30800530 	cmpltui	r2,r6,20
  809a54:	10000926 	beq	r2,zero,809a7c <_calloc_r+0x74>
  809a58:	2005883a 	mov	r2,r4
  809a5c:	10000015 	stw	zero,0(r2)
  809a60:	10000115 	stw	zero,4(r2)
  809a64:	10000215 	stw	zero,8(r2)
  809a68:	2005883a 	mov	r2,r4
  809a6c:	dfc00117 	ldw	ra,4(sp)
  809a70:	dc000017 	ldw	r16,0(sp)
  809a74:	dec00204 	addi	sp,sp,8
  809a78:	f800283a 	ret
  809a7c:	20000015 	stw	zero,0(r4)
  809a80:	20000115 	stw	zero,4(r4)
  809a84:	30800728 	cmpgeui	r2,r6,28
  809a88:	10000a26 	beq	r2,zero,809ab4 <_calloc_r+0xac>
  809a8c:	20000215 	stw	zero,8(r4)
  809a90:	20000315 	stw	zero,12(r4)
  809a94:	31800920 	cmpeqi	r6,r6,36
  809a98:	3000081e 	bne	r6,zero,809abc <_calloc_r+0xb4>
  809a9c:	20800404 	addi	r2,r4,16
  809aa0:	003fee06 	br	809a5c <_calloc_r+0x54>
  809aa4:	000b883a 	mov	r5,zero
  809aa8:	0806ab40 	call	806ab4 <memset>
  809aac:	1009883a 	mov	r4,r2
  809ab0:	003fed06 	br	809a68 <_calloc_r+0x60>
  809ab4:	20800204 	addi	r2,r4,8
  809ab8:	003fe806 	br	809a5c <_calloc_r+0x54>
  809abc:	20000415 	stw	zero,16(r4)
  809ac0:	20800604 	addi	r2,r4,24
  809ac4:	20000515 	stw	zero,20(r4)
  809ac8:	003fe406 	br	809a5c <_calloc_r+0x54>

00809acc <_fclose_r>:
  809acc:	defffc04 	addi	sp,sp,-16
  809ad0:	dfc00315 	stw	ra,12(sp)
  809ad4:	dc800215 	stw	r18,8(sp)
  809ad8:	dc400115 	stw	r17,4(sp)
  809adc:	dc000015 	stw	r16,0(sp)
  809ae0:	28000726 	beq	r5,zero,809b00 <_fclose_r+0x34>
  809ae4:	2821883a 	mov	r16,r5
  809ae8:	2023883a 	mov	r17,r4
  809aec:	20000226 	beq	r4,zero,809af8 <_fclose_r+0x2c>
  809af0:	20800e17 	ldw	r2,56(r4)
  809af4:	10002726 	beq	r2,zero,809b94 <_fclose_r+0xc8>
  809af8:	8080030f 	ldh	r2,12(r16)
  809afc:	1000081e 	bne	r2,zero,809b20 <_fclose_r+0x54>
  809b00:	0025883a 	mov	r18,zero
  809b04:	9005883a 	mov	r2,r18
  809b08:	dfc00317 	ldw	ra,12(sp)
  809b0c:	dc800217 	ldw	r18,8(sp)
  809b10:	dc400117 	ldw	r17,4(sp)
  809b14:	dc000017 	ldw	r16,0(sp)
  809b18:	dec00404 	addi	sp,sp,16
  809b1c:	f800283a 	ret
  809b20:	800b883a 	mov	r5,r16
  809b24:	8809883a 	mov	r4,r17
  809b28:	0804db40 	call	804db4 <__sflush_r>
  809b2c:	80c00b17 	ldw	r3,44(r16)
  809b30:	1025883a 	mov	r18,r2
  809b34:	18000426 	beq	r3,zero,809b48 <_fclose_r+0x7c>
  809b38:	81400717 	ldw	r5,28(r16)
  809b3c:	8809883a 	mov	r4,r17
  809b40:	183ee83a 	callr	r3
  809b44:	10001716 	blt	r2,zero,809ba4 <_fclose_r+0xd8>
  809b48:	8080030b 	ldhu	r2,12(r16)
  809b4c:	1080200c 	andi	r2,r2,128
  809b50:	1000181e 	bne	r2,zero,809bb4 <_fclose_r+0xe8>
  809b54:	81400c17 	ldw	r5,48(r16)
  809b58:	28000526 	beq	r5,zero,809b70 <_fclose_r+0xa4>
  809b5c:	80801004 	addi	r2,r16,64
  809b60:	28800226 	beq	r5,r2,809b6c <_fclose_r+0xa0>
  809b64:	8809883a 	mov	r4,r17
  809b68:	08054d40 	call	8054d4 <_free_r>
  809b6c:	80000c15 	stw	zero,48(r16)
  809b70:	81401117 	ldw	r5,68(r16)
  809b74:	28000326 	beq	r5,zero,809b84 <_fclose_r+0xb8>
  809b78:	8809883a 	mov	r4,r17
  809b7c:	08054d40 	call	8054d4 <_free_r>
  809b80:	80001115 	stw	zero,68(r16)
  809b84:	08053800 	call	805380 <__sfp_lock_acquire>
  809b88:	8000030d 	sth	zero,12(r16)
  809b8c:	08053840 	call	805384 <__sfp_lock_release>
  809b90:	003fdc06 	br	809b04 <_fclose_r+0x38>
  809b94:	08053700 	call	805370 <__sinit>
  809b98:	8080030f 	ldh	r2,12(r16)
  809b9c:	103fd826 	beq	r2,zero,809b00 <_fclose_r+0x34>
  809ba0:	003fdf06 	br	809b20 <_fclose_r+0x54>
  809ba4:	8080030b 	ldhu	r2,12(r16)
  809ba8:	04bfffc4 	movi	r18,-1
  809bac:	1080200c 	andi	r2,r2,128
  809bb0:	103fe826 	beq	r2,zero,809b54 <_fclose_r+0x88>
  809bb4:	81400417 	ldw	r5,16(r16)
  809bb8:	8809883a 	mov	r4,r17
  809bbc:	08054d40 	call	8054d4 <_free_r>
  809bc0:	003fe406 	br	809b54 <_fclose_r+0x88>

00809bc4 <fclose>:
  809bc4:	00802074 	movhi	r2,129
  809bc8:	200b883a 	mov	r5,r4
  809bcc:	1109e117 	ldw	r4,10116(r2)
  809bd0:	0809acc1 	jmpi	809acc <_fclose_r>

00809bd4 <_fiprintf_r>:
  809bd4:	defffe04 	addi	sp,sp,-8
  809bd8:	dfc00015 	stw	ra,0(sp)
  809bdc:	d9c00115 	stw	r7,4(sp)
  809be0:	d9c00104 	addi	r7,sp,4
  809be4:	080a14c0 	call	80a14c <_vfiprintf_r>
  809be8:	dfc00017 	ldw	ra,0(sp)
  809bec:	dec00204 	addi	sp,sp,8
  809bf0:	f800283a 	ret

00809bf4 <fiprintf>:
  809bf4:	defffd04 	addi	sp,sp,-12
  809bf8:	2005883a 	mov	r2,r4
  809bfc:	dfc00015 	stw	ra,0(sp)
  809c00:	d9800115 	stw	r6,4(sp)
  809c04:	d9c00215 	stw	r7,8(sp)
  809c08:	00c02074 	movhi	r3,129
  809c0c:	1909e117 	ldw	r4,10116(r3)
  809c10:	280d883a 	mov	r6,r5
  809c14:	d9c00104 	addi	r7,sp,4
  809c18:	100b883a 	mov	r5,r2
  809c1c:	080a14c0 	call	80a14c <_vfiprintf_r>
  809c20:	dfc00017 	ldw	ra,0(sp)
  809c24:	dec00304 	addi	sp,sp,12
  809c28:	f800283a 	ret

00809c2c <__fputwc>:
  809c2c:	defff904 	addi	sp,sp,-28
  809c30:	dcc00415 	stw	r19,16(sp)
  809c34:	dc800315 	stw	r18,12(sp)
  809c38:	dc000115 	stw	r16,4(sp)
  809c3c:	dfc00615 	stw	ra,24(sp)
  809c40:	dd000515 	stw	r20,20(sp)
  809c44:	dc400215 	stw	r17,8(sp)
  809c48:	2025883a 	mov	r18,r4
  809c4c:	2827883a 	mov	r19,r5
  809c50:	3021883a 	mov	r16,r6
  809c54:	0809f580 	call	809f58 <__locale_mb_cur_max>
  809c58:	10800058 	cmpnei	r2,r2,1
  809c5c:	1000071e 	bne	r2,zero,809c7c <__fputwc+0x50>
  809c60:	98bfffc4 	addi	r2,r19,-1
  809c64:	10803fe8 	cmpgeui	r2,r2,255
  809c68:	1000041e 	bne	r2,zero,809c7c <__fputwc+0x50>
  809c6c:	980b883a 	mov	r5,r19
  809c70:	dcc000c5 	stb	r19,3(sp)
  809c74:	05000044 	movi	r20,1
  809c78:	00000a06 	br	809ca4 <__fputwc+0x78>
  809c7c:	81c01704 	addi	r7,r16,92
  809c80:	980d883a 	mov	r6,r19
  809c84:	d94000c4 	addi	r5,sp,3
  809c88:	9009883a 	mov	r4,r18
  809c8c:	080a2b00 	call	80a2b0 <_wcrtomb_r>
  809c90:	1029883a 	mov	r20,r2
  809c94:	10bfffd8 	cmpnei	r2,r2,-1
  809c98:	10003926 	beq	r2,zero,809d80 <__fputwc+0x154>
  809c9c:	a0001f26 	beq	r20,zero,809d1c <__fputwc+0xf0>
  809ca0:	d94000c3 	ldbu	r5,3(sp)
  809ca4:	0023883a 	mov	r17,zero
  809ca8:	00000a06 	br	809cd4 <__fputwc+0xa8>
  809cac:	80800017 	ldw	r2,0(r16)
  809cb0:	11400005 	stb	r5,0(r2)
  809cb4:	80c00017 	ldw	r3,0(r16)
  809cb8:	18c00044 	addi	r3,r3,1
  809cbc:	80c00015 	stw	r3,0(r16)
  809cc0:	8c400044 	addi	r17,r17,1
  809cc4:	d88000c4 	addi	r2,sp,3
  809cc8:	1447883a 	add	r3,r2,r17
  809ccc:	8d00132e 	bgeu	r17,r20,809d1c <__fputwc+0xf0>
  809cd0:	19400003 	ldbu	r5,0(r3)
  809cd4:	80c00217 	ldw	r3,8(r16)
  809cd8:	18ffffc4 	addi	r3,r3,-1
  809cdc:	80c00215 	stw	r3,8(r16)
  809ce0:	183ff20e 	bge	r3,zero,809cac <__fputwc+0x80>
  809ce4:	80800617 	ldw	r2,24(r16)
  809ce8:	18801616 	blt	r3,r2,809d44 <__fputwc+0x118>
  809cec:	80800017 	ldw	r2,0(r16)
  809cf0:	11400005 	stb	r5,0(r2)
  809cf4:	80800017 	ldw	r2,0(r16)
  809cf8:	10c00003 	ldbu	r3,0(r2)
  809cfc:	10800044 	addi	r2,r2,1
  809d00:	18c002a0 	cmpeqi	r3,r3,10
  809d04:	1800181e 	bne	r3,zero,809d68 <__fputwc+0x13c>
  809d08:	80800015 	stw	r2,0(r16)
  809d0c:	8c400044 	addi	r17,r17,1
  809d10:	d88000c4 	addi	r2,sp,3
  809d14:	1447883a 	add	r3,r2,r17
  809d18:	8d3fed36 	bltu	r17,r20,809cd0 <__fputwc+0xa4>
  809d1c:	9829883a 	mov	r20,r19
  809d20:	a005883a 	mov	r2,r20
  809d24:	dfc00617 	ldw	ra,24(sp)
  809d28:	dd000517 	ldw	r20,20(sp)
  809d2c:	dcc00417 	ldw	r19,16(sp)
  809d30:	dc800317 	ldw	r18,12(sp)
  809d34:	dc400217 	ldw	r17,8(sp)
  809d38:	dc000117 	ldw	r16,4(sp)
  809d3c:	dec00704 	addi	sp,sp,28
  809d40:	f800283a 	ret
  809d44:	29403fcc 	andi	r5,r5,255
  809d48:	800d883a 	mov	r6,r16
  809d4c:	9009883a 	mov	r4,r18
  809d50:	080a1500 	call	80a150 <__swbuf_r>
  809d54:	10ffffe0 	cmpeqi	r3,r2,-1
  809d58:	18c03fcc 	andi	r3,r3,255
  809d5c:	183fd826 	beq	r3,zero,809cc0 <__fputwc+0x94>
  809d60:	053fffc4 	movi	r20,-1
  809d64:	003fee06 	br	809d20 <__fputwc+0xf4>
  809d68:	800d883a 	mov	r6,r16
  809d6c:	01400284 	movi	r5,10
  809d70:	9009883a 	mov	r4,r18
  809d74:	080a1500 	call	80a150 <__swbuf_r>
  809d78:	10ffffe0 	cmpeqi	r3,r2,-1
  809d7c:	003ff606 	br	809d58 <__fputwc+0x12c>
  809d80:	8080030b 	ldhu	r2,12(r16)
  809d84:	10801014 	ori	r2,r2,64
  809d88:	8080030d 	sth	r2,12(r16)
  809d8c:	003fe406 	br	809d20 <__fputwc+0xf4>

00809d90 <_fputwc_r>:
  809d90:	3080030b 	ldhu	r2,12(r6)
  809d94:	10c8000c 	andi	r3,r2,8192
  809d98:	1800051e 	bne	r3,zero,809db0 <_fputwc_r+0x20>
  809d9c:	30c01917 	ldw	r3,100(r6)
  809da0:	10880014 	ori	r2,r2,8192
  809da4:	3080030d 	sth	r2,12(r6)
  809da8:	18880014 	ori	r2,r3,8192
  809dac:	30801915 	stw	r2,100(r6)
  809db0:	0809c2c1 	jmpi	809c2c <__fputwc>

00809db4 <fputwc>:
  809db4:	defffc04 	addi	sp,sp,-16
  809db8:	00802074 	movhi	r2,129
  809dbc:	dc000215 	stw	r16,8(sp)
  809dc0:	1409e117 	ldw	r16,10116(r2)
  809dc4:	dfc00315 	stw	ra,12(sp)
  809dc8:	280d883a 	mov	r6,r5
  809dcc:	200b883a 	mov	r5,r4
  809dd0:	80000226 	beq	r16,zero,809ddc <fputwc+0x28>
  809dd4:	80800e17 	ldw	r2,56(r16)
  809dd8:	10000d26 	beq	r2,zero,809e10 <fputwc+0x5c>
  809ddc:	3080030b 	ldhu	r2,12(r6)
  809de0:	10c8000c 	andi	r3,r2,8192
  809de4:	1800051e 	bne	r3,zero,809dfc <fputwc+0x48>
  809de8:	30c01917 	ldw	r3,100(r6)
  809dec:	10880014 	ori	r2,r2,8192
  809df0:	3080030d 	sth	r2,12(r6)
  809df4:	18880014 	ori	r2,r3,8192
  809df8:	30801915 	stw	r2,100(r6)
  809dfc:	8009883a 	mov	r4,r16
  809e00:	dfc00317 	ldw	ra,12(sp)
  809e04:	dc000217 	ldw	r16,8(sp)
  809e08:	dec00404 	addi	sp,sp,16
  809e0c:	0809c2c1 	jmpi	809c2c <__fputwc>
  809e10:	d9000015 	stw	r4,0(sp)
  809e14:	8009883a 	mov	r4,r16
  809e18:	d9800115 	stw	r6,4(sp)
  809e1c:	08053700 	call	805370 <__sinit>
  809e20:	d9800117 	ldw	r6,4(sp)
  809e24:	d9400017 	ldw	r5,0(sp)
  809e28:	003fec06 	br	809ddc <fputwc+0x28>

00809e2c <_fstat_r>:
  809e2c:	2807883a 	mov	r3,r5
  809e30:	defffe04 	addi	sp,sp,-8
  809e34:	dc000015 	stw	r16,0(sp)
  809e38:	00802074 	movhi	r2,129
  809e3c:	300b883a 	mov	r5,r6
  809e40:	2021883a 	mov	r16,r4
  809e44:	1809883a 	mov	r4,r3
  809e48:	dfc00115 	stw	ra,4(sp)
  809e4c:	1010e715 	stw	zero,17308(r2)
  809e50:	080ddd40 	call	80ddd4 <fstat>
  809e54:	10ffffd8 	cmpnei	r3,r2,-1
  809e58:	18000426 	beq	r3,zero,809e6c <_fstat_r+0x40>
  809e5c:	dfc00117 	ldw	ra,4(sp)
  809e60:	dc000017 	ldw	r16,0(sp)
  809e64:	dec00204 	addi	sp,sp,8
  809e68:	f800283a 	ret
  809e6c:	00c02074 	movhi	r3,129
  809e70:	18d0e717 	ldw	r3,17308(r3)
  809e74:	183ff926 	beq	r3,zero,809e5c <_fstat_r+0x30>
  809e78:	80c00015 	stw	r3,0(r16)
  809e7c:	dfc00117 	ldw	ra,4(sp)
  809e80:	dc000017 	ldw	r16,0(sp)
  809e84:	dec00204 	addi	sp,sp,8
  809e88:	f800283a 	ret

00809e8c <_isatty_r>:
  809e8c:	defffe04 	addi	sp,sp,-8
  809e90:	dc000015 	stw	r16,0(sp)
  809e94:	00802074 	movhi	r2,129
  809e98:	2021883a 	mov	r16,r4
  809e9c:	2809883a 	mov	r4,r5
  809ea0:	dfc00115 	stw	ra,4(sp)
  809ea4:	1010e715 	stw	zero,17308(r2)
  809ea8:	080deec0 	call	80deec <isatty>
  809eac:	10ffffd8 	cmpnei	r3,r2,-1
  809eb0:	18000426 	beq	r3,zero,809ec4 <_isatty_r+0x38>
  809eb4:	dfc00117 	ldw	ra,4(sp)
  809eb8:	dc000017 	ldw	r16,0(sp)
  809ebc:	dec00204 	addi	sp,sp,8
  809ec0:	f800283a 	ret
  809ec4:	00c02074 	movhi	r3,129
  809ec8:	18d0e717 	ldw	r3,17308(r3)
  809ecc:	183ff926 	beq	r3,zero,809eb4 <_isatty_r+0x28>
  809ed0:	80c00015 	stw	r3,0(r16)
  809ed4:	dfc00117 	ldw	ra,4(sp)
  809ed8:	dc000017 	ldw	r16,0(sp)
  809edc:	dec00204 	addi	sp,sp,8
  809ee0:	f800283a 	ret

00809ee4 <_setlocale_r>:
  809ee4:	30001626 	beq	r6,zero,809f40 <_setlocale_r+0x5c>
  809ee8:	01402074 	movhi	r5,129
  809eec:	defffe04 	addi	sp,sp,-8
  809ef0:	29424904 	addi	r5,r5,2340
  809ef4:	3009883a 	mov	r4,r6
  809ef8:	dc000015 	stw	r16,0(sp)
  809efc:	dfc00115 	stw	ra,4(sp)
  809f00:	3021883a 	mov	r16,r6
  809f04:	080a0940 	call	80a094 <strcmp>
  809f08:	1000061e 	bne	r2,zero,809f24 <_setlocale_r+0x40>
  809f0c:	00802074 	movhi	r2,129
  809f10:	10824804 	addi	r2,r2,2336
  809f14:	dfc00117 	ldw	ra,4(sp)
  809f18:	dc000017 	ldw	r16,0(sp)
  809f1c:	dec00204 	addi	sp,sp,8
  809f20:	f800283a 	ret
  809f24:	80800003 	ldbu	r2,0(r16)
  809f28:	10bfef44 	addi	r2,r2,-67
  809f2c:	10000726 	beq	r2,zero,809f4c <_setlocale_r+0x68>
  809f30:	80800003 	ldbu	r2,0(r16)
  809f34:	103ff526 	beq	r2,zero,809f0c <_setlocale_r+0x28>
  809f38:	0005883a 	mov	r2,zero
  809f3c:	003ff506 	br	809f14 <_setlocale_r+0x30>
  809f40:	00802074 	movhi	r2,129
  809f44:	10824804 	addi	r2,r2,2336
  809f48:	f800283a 	ret
  809f4c:	80800043 	ldbu	r2,1(r16)
  809f50:	103fee26 	beq	r2,zero,809f0c <_setlocale_r+0x28>
  809f54:	003ff606 	br	809f30 <_setlocale_r+0x4c>

00809f58 <__locale_mb_cur_max>:
  809f58:	00802074 	movhi	r2,129
  809f5c:	10854d07 	ldb	r2,5428(r2)
  809f60:	f800283a 	ret

00809f64 <setlocale>:
  809f64:	00c02074 	movhi	r3,129
  809f68:	2005883a 	mov	r2,r4
  809f6c:	1909e117 	ldw	r4,10116(r3)
  809f70:	280d883a 	mov	r6,r5
  809f74:	100b883a 	mov	r5,r2
  809f78:	0809ee41 	jmpi	809ee4 <_setlocale_r>

00809f7c <_lseek_r>:
  809f7c:	2807883a 	mov	r3,r5
  809f80:	defffe04 	addi	sp,sp,-8
  809f84:	dc000015 	stw	r16,0(sp)
  809f88:	300b883a 	mov	r5,r6
  809f8c:	00802074 	movhi	r2,129
  809f90:	380d883a 	mov	r6,r7
  809f94:	2021883a 	mov	r16,r4
  809f98:	1809883a 	mov	r4,r3
  809f9c:	dfc00115 	stw	ra,4(sp)
  809fa0:	1010e715 	stw	zero,17308(r2)
  809fa4:	080e22c0 	call	80e22c <lseek>
  809fa8:	10ffffd8 	cmpnei	r3,r2,-1
  809fac:	18000426 	beq	r3,zero,809fc0 <_lseek_r+0x44>
  809fb0:	dfc00117 	ldw	ra,4(sp)
  809fb4:	dc000017 	ldw	r16,0(sp)
  809fb8:	dec00204 	addi	sp,sp,8
  809fbc:	f800283a 	ret
  809fc0:	00c02074 	movhi	r3,129
  809fc4:	18d0e717 	ldw	r3,17308(r3)
  809fc8:	183ff926 	beq	r3,zero,809fb0 <_lseek_r+0x34>
  809fcc:	80c00015 	stw	r3,0(r16)
  809fd0:	dfc00117 	ldw	ra,4(sp)
  809fd4:	dc000017 	ldw	r16,0(sp)
  809fd8:	dec00204 	addi	sp,sp,8
  809fdc:	f800283a 	ret

00809fe0 <_mbtowc_r>:
  809fe0:	00802074 	movhi	r2,129
  809fe4:	10853c17 	ldw	r2,5360(r2)
  809fe8:	1000683a 	jmp	r2

00809fec <__ascii_mbtowc>:
  809fec:	deffff04 	addi	sp,sp,-4
  809ff0:	28000826 	beq	r5,zero,80a014 <__ascii_mbtowc+0x28>
  809ff4:	30000926 	beq	r6,zero,80a01c <__ascii_mbtowc+0x30>
  809ff8:	38000b26 	beq	r7,zero,80a028 <__ascii_mbtowc+0x3c>
  809ffc:	30800003 	ldbu	r2,0(r6)
  80a000:	28800015 	stw	r2,0(r5)
  80a004:	30800003 	ldbu	r2,0(r6)
  80a008:	1004c03a 	cmpne	r2,r2,zero
  80a00c:	dec00104 	addi	sp,sp,4
  80a010:	f800283a 	ret
  80a014:	d80b883a 	mov	r5,sp
  80a018:	303ff71e 	bne	r6,zero,809ff8 <__ascii_mbtowc+0xc>
  80a01c:	0005883a 	mov	r2,zero
  80a020:	dec00104 	addi	sp,sp,4
  80a024:	f800283a 	ret
  80a028:	00bfff84 	movi	r2,-2
  80a02c:	003ff706 	br	80a00c <__ascii_mbtowc+0x20>

0080a030 <_read_r>:
  80a030:	2807883a 	mov	r3,r5
  80a034:	defffe04 	addi	sp,sp,-8
  80a038:	dc000015 	stw	r16,0(sp)
  80a03c:	300b883a 	mov	r5,r6
  80a040:	00802074 	movhi	r2,129
  80a044:	380d883a 	mov	r6,r7
  80a048:	2021883a 	mov	r16,r4
  80a04c:	1809883a 	mov	r4,r3
  80a050:	dfc00115 	stw	ra,4(sp)
  80a054:	1010e715 	stw	zero,17308(r2)
  80a058:	080e40c0 	call	80e40c <read>
  80a05c:	10ffffd8 	cmpnei	r3,r2,-1
  80a060:	18000426 	beq	r3,zero,80a074 <_read_r+0x44>
  80a064:	dfc00117 	ldw	ra,4(sp)
  80a068:	dc000017 	ldw	r16,0(sp)
  80a06c:	dec00204 	addi	sp,sp,8
  80a070:	f800283a 	ret
  80a074:	00c02074 	movhi	r3,129
  80a078:	18d0e717 	ldw	r3,17308(r3)
  80a07c:	183ff926 	beq	r3,zero,80a064 <_read_r+0x34>
  80a080:	80c00015 	stw	r3,0(r16)
  80a084:	dfc00117 	ldw	ra,4(sp)
  80a088:	dc000017 	ldw	r16,0(sp)
  80a08c:	dec00204 	addi	sp,sp,8
  80a090:	f800283a 	ret

0080a094 <strcmp>:
  80a094:	2144b03a 	or	r2,r4,r5
  80a098:	108000cc 	andi	r2,r2,3
  80a09c:	1000141e 	bne	r2,zero,80a0f0 <strcmp+0x5c>
  80a0a0:	20800017 	ldw	r2,0(r4)
  80a0a4:	28c00017 	ldw	r3,0(r5)
  80a0a8:	10c0111e 	bne	r2,r3,80a0f0 <strcmp+0x5c>
  80a0ac:	01ffbff4 	movhi	r7,65279
  80a0b0:	01a02074 	movhi	r6,32897
  80a0b4:	39ffbfc4 	addi	r7,r7,-257
  80a0b8:	31a02004 	addi	r6,r6,-32640
  80a0bc:	00000306 	br	80a0cc <strcmp+0x38>
  80a0c0:	20800017 	ldw	r2,0(r4)
  80a0c4:	28c00017 	ldw	r3,0(r5)
  80a0c8:	10c0091e 	bne	r2,r3,80a0f0 <strcmp+0x5c>
  80a0cc:	11c7883a 	add	r3,r2,r7
  80a0d0:	0084303a 	nor	r2,zero,r2
  80a0d4:	1884703a 	and	r2,r3,r2
  80a0d8:	1184703a 	and	r2,r2,r6
  80a0dc:	21000104 	addi	r4,r4,4
  80a0e0:	29400104 	addi	r5,r5,4
  80a0e4:	103ff626 	beq	r2,zero,80a0c0 <strcmp+0x2c>
  80a0e8:	0005883a 	mov	r2,zero
  80a0ec:	f800283a 	ret
  80a0f0:	20c00003 	ldbu	r3,0(r4)
  80a0f4:	18803fcc 	andi	r2,r3,255
  80a0f8:	1080201c 	xori	r2,r2,128
  80a0fc:	10bfe004 	addi	r2,r2,-128
  80a100:	1000071e 	bne	r2,zero,80a120 <strcmp+0x8c>
  80a104:	00000a06 	br	80a130 <strcmp+0x9c>
  80a108:	20c00003 	ldbu	r3,0(r4)
  80a10c:	29400044 	addi	r5,r5,1
  80a110:	18803fcc 	andi	r2,r3,255
  80a114:	1080201c 	xori	r2,r2,128
  80a118:	10bfe004 	addi	r2,r2,-128
  80a11c:	10000726 	beq	r2,zero,80a13c <strcmp+0xa8>
  80a120:	29800007 	ldb	r6,0(r5)
  80a124:	21000044 	addi	r4,r4,1
  80a128:	30bff726 	beq	r6,r2,80a108 <strcmp+0x74>
  80a12c:	18803fcc 	andi	r2,r3,255
  80a130:	28c00003 	ldbu	r3,0(r5)
  80a134:	10c5c83a 	sub	r2,r2,r3
  80a138:	f800283a 	ret
  80a13c:	28c00003 	ldbu	r3,0(r5)
  80a140:	0005883a 	mov	r2,zero
  80a144:	10c5c83a 	sub	r2,r2,r3
  80a148:	f800283a 	ret

0080a14c <_vfiprintf_r>:
  80a14c:	08084e41 	jmpi	8084e4 <___vfiprintf_internal_r>

0080a150 <__swbuf_r>:
  80a150:	defffb04 	addi	sp,sp,-20
  80a154:	dcc00315 	stw	r19,12(sp)
  80a158:	dc400115 	stw	r17,4(sp)
  80a15c:	dc000015 	stw	r16,0(sp)
  80a160:	dfc00415 	stw	ra,16(sp)
  80a164:	dc800215 	stw	r18,8(sp)
  80a168:	2027883a 	mov	r19,r4
  80a16c:	2823883a 	mov	r17,r5
  80a170:	3021883a 	mov	r16,r6
  80a174:	20000226 	beq	r4,zero,80a180 <__swbuf_r+0x30>
  80a178:	20800e17 	ldw	r2,56(r4)
  80a17c:	10003e26 	beq	r2,zero,80a278 <__swbuf_r+0x128>
  80a180:	80800617 	ldw	r2,24(r16)
  80a184:	80c0030b 	ldhu	r3,12(r16)
  80a188:	80800215 	stw	r2,8(r16)
  80a18c:	1880020c 	andi	r2,r3,8
  80a190:	10001f26 	beq	r2,zero,80a210 <__swbuf_r+0xc0>
  80a194:	80800417 	ldw	r2,16(r16)
  80a198:	10001d26 	beq	r2,zero,80a210 <__swbuf_r+0xc0>
  80a19c:	1948000c 	andi	r5,r3,8192
  80a1a0:	8c803fcc 	andi	r18,r17,255
  80a1a4:	28002326 	beq	r5,zero,80a234 <__swbuf_r+0xe4>
  80a1a8:	80c00017 	ldw	r3,0(r16)
  80a1ac:	81000517 	ldw	r4,20(r16)
  80a1b0:	1885c83a 	sub	r2,r3,r2
  80a1b4:	1100290e 	bge	r2,r4,80a25c <__swbuf_r+0x10c>
  80a1b8:	10800044 	addi	r2,r2,1
  80a1bc:	81400217 	ldw	r5,8(r16)
  80a1c0:	19000044 	addi	r4,r3,1
  80a1c4:	81000015 	stw	r4,0(r16)
  80a1c8:	297fffc4 	addi	r5,r5,-1
  80a1cc:	81400215 	stw	r5,8(r16)
  80a1d0:	1c400005 	stb	r17,0(r3)
  80a1d4:	80c00517 	ldw	r3,20(r16)
  80a1d8:	18802926 	beq	r3,r2,80a280 <__swbuf_r+0x130>
  80a1dc:	8080030b 	ldhu	r2,12(r16)
  80a1e0:	1080004c 	andi	r2,r2,1
  80a1e4:	10000226 	beq	r2,zero,80a1f0 <__swbuf_r+0xa0>
  80a1e8:	90800298 	cmpnei	r2,r18,10
  80a1ec:	10002426 	beq	r2,zero,80a280 <__swbuf_r+0x130>
  80a1f0:	9005883a 	mov	r2,r18
  80a1f4:	dfc00417 	ldw	ra,16(sp)
  80a1f8:	dcc00317 	ldw	r19,12(sp)
  80a1fc:	dc800217 	ldw	r18,8(sp)
  80a200:	dc400117 	ldw	r17,4(sp)
  80a204:	dc000017 	ldw	r16,0(sp)
  80a208:	dec00504 	addi	sp,sp,20
  80a20c:	f800283a 	ret
  80a210:	800b883a 	mov	r5,r16
  80a214:	9809883a 	mov	r4,r19
  80a218:	08032e80 	call	8032e8 <__swsetup_r>
  80a21c:	10001c1e 	bne	r2,zero,80a290 <__swbuf_r+0x140>
  80a220:	80c0030b 	ldhu	r3,12(r16)
  80a224:	80800417 	ldw	r2,16(r16)
  80a228:	8c803fcc 	andi	r18,r17,255
  80a22c:	1948000c 	andi	r5,r3,8192
  80a230:	283fdd1e 	bne	r5,zero,80a1a8 <__swbuf_r+0x58>
  80a234:	81001917 	ldw	r4,100(r16)
  80a238:	18c80014 	ori	r3,r3,8192
  80a23c:	0177ffc4 	movi	r5,-8193
  80a240:	2148703a 	and	r4,r4,r5
  80a244:	80c0030d 	sth	r3,12(r16)
  80a248:	80c00017 	ldw	r3,0(r16)
  80a24c:	81001915 	stw	r4,100(r16)
  80a250:	81000517 	ldw	r4,20(r16)
  80a254:	1885c83a 	sub	r2,r3,r2
  80a258:	113fd716 	blt	r2,r4,80a1b8 <__swbuf_r+0x68>
  80a25c:	800b883a 	mov	r5,r16
  80a260:	9809883a 	mov	r4,r19
  80a264:	0804fdc0 	call	804fdc <_fflush_r>
  80a268:	1000091e 	bne	r2,zero,80a290 <__swbuf_r+0x140>
  80a26c:	80c00017 	ldw	r3,0(r16)
  80a270:	00800044 	movi	r2,1
  80a274:	003fd106 	br	80a1bc <__swbuf_r+0x6c>
  80a278:	08053700 	call	805370 <__sinit>
  80a27c:	003fc006 	br	80a180 <__swbuf_r+0x30>
  80a280:	800b883a 	mov	r5,r16
  80a284:	9809883a 	mov	r4,r19
  80a288:	0804fdc0 	call	804fdc <_fflush_r>
  80a28c:	103fd826 	beq	r2,zero,80a1f0 <__swbuf_r+0xa0>
  80a290:	04bfffc4 	movi	r18,-1
  80a294:	003fd606 	br	80a1f0 <__swbuf_r+0xa0>

0080a298 <__swbuf>:
  80a298:	00c02074 	movhi	r3,129
  80a29c:	2005883a 	mov	r2,r4
  80a2a0:	1909e117 	ldw	r4,10116(r3)
  80a2a4:	280d883a 	mov	r6,r5
  80a2a8:	100b883a 	mov	r5,r2
  80a2ac:	080a1501 	jmpi	80a150 <__swbuf_r>

0080a2b0 <_wcrtomb_r>:
  80a2b0:	defffa04 	addi	sp,sp,-24
  80a2b4:	dc400415 	stw	r17,16(sp)
  80a2b8:	dc000315 	stw	r16,12(sp)
  80a2bc:	00802074 	movhi	r2,129
  80a2c0:	dfc00515 	stw	ra,20(sp)
  80a2c4:	10853b17 	ldw	r2,5356(r2)
  80a2c8:	2023883a 	mov	r17,r4
  80a2cc:	3821883a 	mov	r16,r7
  80a2d0:	28000826 	beq	r5,zero,80a2f4 <_wcrtomb_r+0x44>
  80a2d4:	103ee83a 	callr	r2
  80a2d8:	10ffffd8 	cmpnei	r3,r2,-1
  80a2dc:	18000a26 	beq	r3,zero,80a308 <_wcrtomb_r+0x58>
  80a2e0:	dfc00517 	ldw	ra,20(sp)
  80a2e4:	dc400417 	ldw	r17,16(sp)
  80a2e8:	dc000317 	ldw	r16,12(sp)
  80a2ec:	dec00604 	addi	sp,sp,24
  80a2f0:	f800283a 	ret
  80a2f4:	000d883a 	mov	r6,zero
  80a2f8:	d9400084 	addi	r5,sp,2
  80a2fc:	103ee83a 	callr	r2
  80a300:	10ffffd8 	cmpnei	r3,r2,-1
  80a304:	183ff61e 	bne	r3,zero,80a2e0 <_wcrtomb_r+0x30>
  80a308:	00802284 	movi	r2,138
  80a30c:	80000015 	stw	zero,0(r16)
  80a310:	88800015 	stw	r2,0(r17)
  80a314:	00bfffc4 	movi	r2,-1
  80a318:	003ff106 	br	80a2e0 <_wcrtomb_r+0x30>

0080a31c <wcrtomb>:
  80a31c:	defffa04 	addi	sp,sp,-24
  80a320:	00c02074 	movhi	r3,129
  80a324:	dc400415 	stw	r17,16(sp)
  80a328:	dc000315 	stw	r16,12(sp)
  80a32c:	1c49e117 	ldw	r17,10116(r3)
  80a330:	dfc00515 	stw	ra,20(sp)
  80a334:	00c02074 	movhi	r3,129
  80a338:	18c53b17 	ldw	r3,5356(r3)
  80a33c:	3021883a 	mov	r16,r6
  80a340:	20000c26 	beq	r4,zero,80a374 <wcrtomb+0x58>
  80a344:	280d883a 	mov	r6,r5
  80a348:	800f883a 	mov	r7,r16
  80a34c:	200b883a 	mov	r5,r4
  80a350:	8809883a 	mov	r4,r17
  80a354:	183ee83a 	callr	r3
  80a358:	10ffffd8 	cmpnei	r3,r2,-1
  80a35c:	18000c26 	beq	r3,zero,80a390 <wcrtomb+0x74>
  80a360:	dfc00517 	ldw	ra,20(sp)
  80a364:	dc400417 	ldw	r17,16(sp)
  80a368:	dc000317 	ldw	r16,12(sp)
  80a36c:	dec00604 	addi	sp,sp,24
  80a370:	f800283a 	ret
  80a374:	300f883a 	mov	r7,r6
  80a378:	d9400084 	addi	r5,sp,2
  80a37c:	000d883a 	mov	r6,zero
  80a380:	8809883a 	mov	r4,r17
  80a384:	183ee83a 	callr	r3
  80a388:	10ffffd8 	cmpnei	r3,r2,-1
  80a38c:	183ff41e 	bne	r3,zero,80a360 <wcrtomb+0x44>
  80a390:	00802284 	movi	r2,138
  80a394:	80000015 	stw	zero,0(r16)
  80a398:	88800015 	stw	r2,0(r17)
  80a39c:	00bfffc4 	movi	r2,-1
  80a3a0:	003fef06 	br	80a360 <wcrtomb+0x44>

0080a3a4 <_wctomb_r>:
  80a3a4:	00802074 	movhi	r2,129
  80a3a8:	10853b17 	ldw	r2,5356(r2)
  80a3ac:	1000683a 	jmp	r2

0080a3b0 <__ascii_wctomb>:
  80a3b0:	28000926 	beq	r5,zero,80a3d8 <__ascii_wctomb+0x28>
  80a3b4:	30804030 	cmpltui	r2,r6,256
  80a3b8:	10000326 	beq	r2,zero,80a3c8 <__ascii_wctomb+0x18>
  80a3bc:	29800005 	stb	r6,0(r5)
  80a3c0:	00800044 	movi	r2,1
  80a3c4:	f800283a 	ret
  80a3c8:	00802284 	movi	r2,138
  80a3cc:	20800015 	stw	r2,0(r4)
  80a3d0:	00bfffc4 	movi	r2,-1
  80a3d4:	f800283a 	ret
  80a3d8:	0005883a 	mov	r2,zero
  80a3dc:	f800283a 	ret

0080a3e0 <abort>:
  80a3e0:	deffff04 	addi	sp,sp,-4
  80a3e4:	01000184 	movi	r4,6
  80a3e8:	dfc00015 	stw	ra,0(sp)
  80a3ec:	080a6580 	call	80a658 <raise>
  80a3f0:	01000044 	movi	r4,1
  80a3f4:	080dd600 	call	80dd60 <_exit>

0080a3f8 <_init_signal_r.part.0>:
  80a3f8:	defffe04 	addi	sp,sp,-8
  80a3fc:	01402004 	movi	r5,128
  80a400:	dc000015 	stw	r16,0(sp)
  80a404:	dfc00115 	stw	ra,4(sp)
  80a408:	2021883a 	mov	r16,r4
  80a40c:	0805fd40 	call	805fd4 <_malloc_r>
  80a410:	8080b715 	stw	r2,732(r16)
  80a414:	10000926 	beq	r2,zero,80a43c <_init_signal_r.part.0+0x44>
  80a418:	10c02004 	addi	r3,r2,128
  80a41c:	10000015 	stw	zero,0(r2)
  80a420:	10800104 	addi	r2,r2,4
  80a424:	10fffd1e 	bne	r2,r3,80a41c <_init_signal_r.part.0+0x24>
  80a428:	0005883a 	mov	r2,zero
  80a42c:	dfc00117 	ldw	ra,4(sp)
  80a430:	dc000017 	ldw	r16,0(sp)
  80a434:	dec00204 	addi	sp,sp,8
  80a438:	f800283a 	ret
  80a43c:	00bfffc4 	movi	r2,-1
  80a440:	003ffa06 	br	80a42c <_init_signal_r.part.0+0x34>

0080a444 <_init_signal_r>:
  80a444:	2080b717 	ldw	r2,732(r4)
  80a448:	10000226 	beq	r2,zero,80a454 <_init_signal_r+0x10>
  80a44c:	0005883a 	mov	r2,zero
  80a450:	f800283a 	ret
  80a454:	080a3f81 	jmpi	80a3f8 <_init_signal_r.part.0>

0080a458 <_signal_r>:
  80a458:	defffc04 	addi	sp,sp,-16
  80a45c:	dc000215 	stw	r16,8(sp)
  80a460:	dfc00315 	stw	ra,12(sp)
  80a464:	28800830 	cmpltui	r2,r5,32
  80a468:	2021883a 	mov	r16,r4
  80a46c:	10000a26 	beq	r2,zero,80a498 <_signal_r+0x40>
  80a470:	2080b717 	ldw	r2,732(r4)
  80a474:	10000f26 	beq	r2,zero,80a4b4 <_signal_r+0x5c>
  80a478:	280a90ba 	slli	r5,r5,2
  80a47c:	114b883a 	add	r5,r2,r5
  80a480:	28800017 	ldw	r2,0(r5)
  80a484:	29800015 	stw	r6,0(r5)
  80a488:	dfc00317 	ldw	ra,12(sp)
  80a48c:	dc000217 	ldw	r16,8(sp)
  80a490:	dec00404 	addi	sp,sp,16
  80a494:	f800283a 	ret
  80a498:	00800584 	movi	r2,22
  80a49c:	20800015 	stw	r2,0(r4)
  80a4a0:	00bfffc4 	movi	r2,-1
  80a4a4:	dfc00317 	ldw	ra,12(sp)
  80a4a8:	dc000217 	ldw	r16,8(sp)
  80a4ac:	dec00404 	addi	sp,sp,16
  80a4b0:	f800283a 	ret
  80a4b4:	d9800115 	stw	r6,4(sp)
  80a4b8:	d9400015 	stw	r5,0(sp)
  80a4bc:	080a3f80 	call	80a3f8 <_init_signal_r.part.0>
  80a4c0:	1000041e 	bne	r2,zero,80a4d4 <_signal_r+0x7c>
  80a4c4:	8080b717 	ldw	r2,732(r16)
  80a4c8:	d9800117 	ldw	r6,4(sp)
  80a4cc:	d9400017 	ldw	r5,0(sp)
  80a4d0:	003fe906 	br	80a478 <_signal_r+0x20>
  80a4d4:	00bfffc4 	movi	r2,-1
  80a4d8:	003feb06 	br	80a488 <_signal_r+0x30>

0080a4dc <_raise_r>:
  80a4dc:	28800830 	cmpltui	r2,r5,32
  80a4e0:	10002b26 	beq	r2,zero,80a590 <_raise_r+0xb4>
  80a4e4:	2080b717 	ldw	r2,732(r4)
  80a4e8:	defffd04 	addi	sp,sp,-12
  80a4ec:	dc000115 	stw	r16,4(sp)
  80a4f0:	dfc00215 	stw	ra,8(sp)
  80a4f4:	2821883a 	mov	r16,r5
  80a4f8:	10001026 	beq	r2,zero,80a53c <_raise_r+0x60>
  80a4fc:	280690ba 	slli	r3,r5,2
  80a500:	10c5883a 	add	r2,r2,r3
  80a504:	10c00017 	ldw	r3,0(r2)
  80a508:	18000c26 	beq	r3,zero,80a53c <_raise_r+0x60>
  80a50c:	19400060 	cmpeqi	r5,r3,1
  80a510:	28001a1e 	bne	r5,zero,80a57c <_raise_r+0xa0>
  80a514:	197fffd8 	cmpnei	r5,r3,-1
  80a518:	28001126 	beq	r5,zero,80a560 <_raise_r+0x84>
  80a51c:	10000015 	stw	zero,0(r2)
  80a520:	8009883a 	mov	r4,r16
  80a524:	183ee83a 	callr	r3
  80a528:	0005883a 	mov	r2,zero
  80a52c:	dfc00217 	ldw	ra,8(sp)
  80a530:	dc000117 	ldw	r16,4(sp)
  80a534:	dec00304 	addi	sp,sp,12
  80a538:	f800283a 	ret
  80a53c:	d9000015 	stw	r4,0(sp)
  80a540:	080a70c0 	call	80a70c <_getpid_r>
  80a544:	d9000017 	ldw	r4,0(sp)
  80a548:	800d883a 	mov	r6,r16
  80a54c:	100b883a 	mov	r5,r2
  80a550:	dfc00217 	ldw	ra,8(sp)
  80a554:	dc000117 	ldw	r16,4(sp)
  80a558:	dec00304 	addi	sp,sp,12
  80a55c:	080a6ac1 	jmpi	80a6ac <_kill_r>
  80a560:	00800584 	movi	r2,22
  80a564:	20800015 	stw	r2,0(r4)
  80a568:	00800044 	movi	r2,1
  80a56c:	dfc00217 	ldw	ra,8(sp)
  80a570:	dc000117 	ldw	r16,4(sp)
  80a574:	dec00304 	addi	sp,sp,12
  80a578:	f800283a 	ret
  80a57c:	0005883a 	mov	r2,zero
  80a580:	dfc00217 	ldw	ra,8(sp)
  80a584:	dc000117 	ldw	r16,4(sp)
  80a588:	dec00304 	addi	sp,sp,12
  80a58c:	f800283a 	ret
  80a590:	00800584 	movi	r2,22
  80a594:	20800015 	stw	r2,0(r4)
  80a598:	00bfffc4 	movi	r2,-1
  80a59c:	f800283a 	ret

0080a5a0 <__sigtramp_r>:
  80a5a0:	28800830 	cmpltui	r2,r5,32
  80a5a4:	10002a26 	beq	r2,zero,80a650 <__sigtramp_r+0xb0>
  80a5a8:	2080b717 	ldw	r2,732(r4)
  80a5ac:	defffd04 	addi	sp,sp,-12
  80a5b0:	dc400115 	stw	r17,4(sp)
  80a5b4:	dfc00215 	stw	ra,8(sp)
  80a5b8:	2023883a 	mov	r17,r4
  80a5bc:	10001526 	beq	r2,zero,80a614 <__sigtramp_r+0x74>
  80a5c0:	280690ba 	slli	r3,r5,2
  80a5c4:	10c5883a 	add	r2,r2,r3
  80a5c8:	10c00017 	ldw	r3,0(r2)
  80a5cc:	18000c26 	beq	r3,zero,80a600 <__sigtramp_r+0x60>
  80a5d0:	193fffe0 	cmpeqi	r4,r3,-1
  80a5d4:	20001a1e 	bne	r4,zero,80a640 <__sigtramp_r+0xa0>
  80a5d8:	19000060 	cmpeqi	r4,r3,1
  80a5dc:	2000131e 	bne	r4,zero,80a62c <__sigtramp_r+0x8c>
  80a5e0:	10000015 	stw	zero,0(r2)
  80a5e4:	2809883a 	mov	r4,r5
  80a5e8:	183ee83a 	callr	r3
  80a5ec:	0005883a 	mov	r2,zero
  80a5f0:	dfc00217 	ldw	ra,8(sp)
  80a5f4:	dc400117 	ldw	r17,4(sp)
  80a5f8:	dec00304 	addi	sp,sp,12
  80a5fc:	f800283a 	ret
  80a600:	00800044 	movi	r2,1
  80a604:	dfc00217 	ldw	ra,8(sp)
  80a608:	dc400117 	ldw	r17,4(sp)
  80a60c:	dec00304 	addi	sp,sp,12
  80a610:	f800283a 	ret
  80a614:	d9400015 	stw	r5,0(sp)
  80a618:	080a3f80 	call	80a3f8 <_init_signal_r.part.0>
  80a61c:	10000a1e 	bne	r2,zero,80a648 <__sigtramp_r+0xa8>
  80a620:	8880b717 	ldw	r2,732(r17)
  80a624:	d9400017 	ldw	r5,0(sp)
  80a628:	003fe506 	br	80a5c0 <__sigtramp_r+0x20>
  80a62c:	008000c4 	movi	r2,3
  80a630:	dfc00217 	ldw	ra,8(sp)
  80a634:	dc400117 	ldw	r17,4(sp)
  80a638:	dec00304 	addi	sp,sp,12
  80a63c:	f800283a 	ret
  80a640:	00800084 	movi	r2,2
  80a644:	003fea06 	br	80a5f0 <__sigtramp_r+0x50>
  80a648:	00bfffc4 	movi	r2,-1
  80a64c:	003fe806 	br	80a5f0 <__sigtramp_r+0x50>
  80a650:	00bfffc4 	movi	r2,-1
  80a654:	f800283a 	ret

0080a658 <raise>:
  80a658:	00802074 	movhi	r2,129
  80a65c:	200b883a 	mov	r5,r4
  80a660:	1109e117 	ldw	r4,10116(r2)
  80a664:	080a4dc1 	jmpi	80a4dc <_raise_r>

0080a668 <signal>:
  80a668:	00c02074 	movhi	r3,129
  80a66c:	2005883a 	mov	r2,r4
  80a670:	1909e117 	ldw	r4,10116(r3)
  80a674:	280d883a 	mov	r6,r5
  80a678:	100b883a 	mov	r5,r2
  80a67c:	080a4581 	jmpi	80a458 <_signal_r>

0080a680 <_init_signal>:
  80a680:	00802074 	movhi	r2,129
  80a684:	1109e117 	ldw	r4,10116(r2)
  80a688:	2080b717 	ldw	r2,732(r4)
  80a68c:	10000226 	beq	r2,zero,80a698 <_init_signal+0x18>
  80a690:	0005883a 	mov	r2,zero
  80a694:	f800283a 	ret
  80a698:	080a3f81 	jmpi	80a3f8 <_init_signal_r.part.0>

0080a69c <__sigtramp>:
  80a69c:	00802074 	movhi	r2,129
  80a6a0:	200b883a 	mov	r5,r4
  80a6a4:	1109e117 	ldw	r4,10116(r2)
  80a6a8:	080a5a01 	jmpi	80a5a0 <__sigtramp_r>

0080a6ac <_kill_r>:
  80a6ac:	2807883a 	mov	r3,r5
  80a6b0:	defffe04 	addi	sp,sp,-8
  80a6b4:	dc000015 	stw	r16,0(sp)
  80a6b8:	00802074 	movhi	r2,129
  80a6bc:	300b883a 	mov	r5,r6
  80a6c0:	2021883a 	mov	r16,r4
  80a6c4:	1809883a 	mov	r4,r3
  80a6c8:	dfc00115 	stw	ra,4(sp)
  80a6cc:	1010e715 	stw	zero,17308(r2)
  80a6d0:	080dfd80 	call	80dfd8 <kill>
  80a6d4:	10ffffd8 	cmpnei	r3,r2,-1
  80a6d8:	18000426 	beq	r3,zero,80a6ec <_kill_r+0x40>
  80a6dc:	dfc00117 	ldw	ra,4(sp)
  80a6e0:	dc000017 	ldw	r16,0(sp)
  80a6e4:	dec00204 	addi	sp,sp,8
  80a6e8:	f800283a 	ret
  80a6ec:	00c02074 	movhi	r3,129
  80a6f0:	18d0e717 	ldw	r3,17308(r3)
  80a6f4:	183ff926 	beq	r3,zero,80a6dc <_kill_r+0x30>
  80a6f8:	80c00015 	stw	r3,0(r16)
  80a6fc:	dfc00117 	ldw	ra,4(sp)
  80a700:	dc000017 	ldw	r16,0(sp)
  80a704:	dec00204 	addi	sp,sp,8
  80a708:	f800283a 	ret

0080a70c <_getpid_r>:
  80a70c:	080de901 	jmpi	80de90 <getpid>

0080a710 <__udivdi3>:
  80a710:	defff504 	addi	sp,sp,-44
  80a714:	dd000515 	stw	r20,20(sp)
  80a718:	dc800315 	stw	r18,12(sp)
  80a71c:	dfc00a15 	stw	ra,40(sp)
  80a720:	df000915 	stw	fp,36(sp)
  80a724:	ddc00815 	stw	r23,32(sp)
  80a728:	dd800715 	stw	r22,28(sp)
  80a72c:	dd400615 	stw	r21,24(sp)
  80a730:	dcc00415 	stw	r19,16(sp)
  80a734:	dc400215 	stw	r17,8(sp)
  80a738:	dc000115 	stw	r16,4(sp)
  80a73c:	2029883a 	mov	r20,r4
  80a740:	2825883a 	mov	r18,r5
  80a744:	3800461e 	bne	r7,zero,80a860 <__udivdi3+0x150>
  80a748:	3823883a 	mov	r17,r7
  80a74c:	3021883a 	mov	r16,r6
  80a750:	2027883a 	mov	r19,r4
  80a754:	2980622e 	bgeu	r5,r6,80a8e0 <__udivdi3+0x1d0>
  80a758:	00bfffd4 	movui	r2,65535
  80a75c:	282b883a 	mov	r21,r5
  80a760:	1180aa2e 	bgeu	r2,r6,80aa0c <__udivdi3+0x2fc>
  80a764:	00804034 	movhi	r2,256
  80a768:	30815936 	bltu	r6,r2,80acd0 <__udivdi3+0x5c0>
  80a76c:	3006d63a 	srli	r3,r6,24
  80a770:	04400604 	movi	r17,24
  80a774:	00802074 	movhi	r2,129
  80a778:	1885883a 	add	r2,r3,r2
  80a77c:	11016503 	ldbu	r4,1428(r2)
  80a780:	00800804 	movi	r2,32
  80a784:	2463883a 	add	r17,r4,r17
  80a788:	1449c83a 	sub	r4,r2,r17
  80a78c:	14400526 	beq	r2,r17,80a7a4 <__udivdi3+0x94>
  80a790:	9106983a 	sll	r3,r18,r4
  80a794:	a462d83a 	srl	r17,r20,r17
  80a798:	3120983a 	sll	r16,r6,r4
  80a79c:	a126983a 	sll	r19,r20,r4
  80a7a0:	88eab03a 	or	r21,r17,r3
  80a7a4:	802cd43a 	srli	r22,r16,16
  80a7a8:	a809883a 	mov	r4,r21
  80a7ac:	853fffcc 	andi	r20,r16,65535
  80a7b0:	b00b883a 	mov	r5,r22
  80a7b4:	080b4480 	call	80b448 <__umodsi3>
  80a7b8:	a809883a 	mov	r4,r21
  80a7bc:	b00b883a 	mov	r5,r22
  80a7c0:	1025883a 	mov	r18,r2
  80a7c4:	080b3e40 	call	80b3e4 <__udivsi3>
  80a7c8:	a009883a 	mov	r4,r20
  80a7cc:	100b883a 	mov	r5,r2
  80a7d0:	102b883a 	mov	r21,r2
  80a7d4:	0800f1c0 	call	800f1c <__mulsi3>
  80a7d8:	9024943a 	slli	r18,r18,16
  80a7dc:	9808d43a 	srli	r4,r19,16
  80a7e0:	9108b03a 	or	r4,r18,r4
  80a7e4:	2080052e 	bgeu	r4,r2,80a7fc <__udivdi3+0xec>
  80a7e8:	2409883a 	add	r4,r4,r16
  80a7ec:	a8ffffc4 	addi	r3,r21,-1
  80a7f0:	24000136 	bltu	r4,r16,80a7f8 <__udivdi3+0xe8>
  80a7f4:	20814736 	bltu	r4,r2,80ad14 <__udivdi3+0x604>
  80a7f8:	182b883a 	mov	r21,r3
  80a7fc:	20a3c83a 	sub	r17,r4,r2
  80a800:	8809883a 	mov	r4,r17
  80a804:	b00b883a 	mov	r5,r22
  80a808:	080b4480 	call	80b448 <__umodsi3>
  80a80c:	8809883a 	mov	r4,r17
  80a810:	1023883a 	mov	r17,r2
  80a814:	b00b883a 	mov	r5,r22
  80a818:	8822943a 	slli	r17,r17,16
  80a81c:	080b3e40 	call	80b3e4 <__udivsi3>
  80a820:	100b883a 	mov	r5,r2
  80a824:	a009883a 	mov	r4,r20
  80a828:	9cffffcc 	andi	r19,r19,65535
  80a82c:	1025883a 	mov	r18,r2
  80a830:	8ce6b03a 	or	r19,r17,r19
  80a834:	0800f1c0 	call	800f1c <__mulsi3>
  80a838:	9880052e 	bgeu	r19,r2,80a850 <__udivdi3+0x140>
  80a83c:	84e7883a 	add	r19,r16,r19
  80a840:	90ffffc4 	addi	r3,r18,-1
  80a844:	9c000136 	bltu	r19,r16,80a84c <__udivdi3+0x13c>
  80a848:	98813036 	bltu	r19,r2,80ad0c <__udivdi3+0x5fc>
  80a84c:	1825883a 	mov	r18,r3
  80a850:	a80c943a 	slli	r6,r21,16
  80a854:	0007883a 	mov	r3,zero
  80a858:	3484b03a 	or	r2,r6,r18
  80a85c:	00000306 	br	80a86c <__udivdi3+0x15c>
  80a860:	29c00e2e 	bgeu	r5,r7,80a89c <__udivdi3+0x18c>
  80a864:	0007883a 	mov	r3,zero
  80a868:	0005883a 	mov	r2,zero
  80a86c:	dfc00a17 	ldw	ra,40(sp)
  80a870:	df000917 	ldw	fp,36(sp)
  80a874:	ddc00817 	ldw	r23,32(sp)
  80a878:	dd800717 	ldw	r22,28(sp)
  80a87c:	dd400617 	ldw	r21,24(sp)
  80a880:	dd000517 	ldw	r20,20(sp)
  80a884:	dcc00417 	ldw	r19,16(sp)
  80a888:	dc800317 	ldw	r18,12(sp)
  80a88c:	dc400217 	ldw	r17,8(sp)
  80a890:	dc000117 	ldw	r16,4(sp)
  80a894:	dec00b04 	addi	sp,sp,44
  80a898:	f800283a 	ret
  80a89c:	00bfffd4 	movui	r2,65535
  80a8a0:	11c05f2e 	bgeu	r2,r7,80aa20 <__udivdi3+0x310>
  80a8a4:	00804034 	movhi	r2,256
  80a8a8:	3880fb36 	bltu	r7,r2,80ac98 <__udivdi3+0x588>
  80a8ac:	3806d63a 	srli	r3,r7,24
  80a8b0:	01000604 	movi	r4,24
  80a8b4:	00802074 	movhi	r2,129
  80a8b8:	1885883a 	add	r2,r3,r2
  80a8bc:	10c16503 	ldbu	r3,1428(r2)
  80a8c0:	00800804 	movi	r2,32
  80a8c4:	1907883a 	add	r3,r3,r4
  80a8c8:	10e3c83a 	sub	r17,r2,r3
  80a8cc:	10c0901e 	bne	r2,r3,80ab10 <__udivdi3+0x400>
  80a8d0:	3c80f636 	bltu	r7,r18,80acac <__udivdi3+0x59c>
  80a8d4:	a185403a 	cmpgeu	r2,r20,r6
  80a8d8:	0007883a 	mov	r3,zero
  80a8dc:	003fe306 	br	80a86c <__udivdi3+0x15c>
  80a8e0:	3000041e 	bne	r6,zero,80a8f4 <__udivdi3+0x1e4>
  80a8e4:	000b883a 	mov	r5,zero
  80a8e8:	01000044 	movi	r4,1
  80a8ec:	080b3e40 	call	80b3e4 <__udivsi3>
  80a8f0:	1021883a 	mov	r16,r2
  80a8f4:	00bfffd4 	movui	r2,65535
  80a8f8:	14003f2e 	bgeu	r2,r16,80a9f8 <__udivdi3+0x2e8>
  80a8fc:	00804034 	movhi	r2,256
  80a900:	8080f036 	bltu	r16,r2,80acc4 <__udivdi3+0x5b4>
  80a904:	8006d63a 	srli	r3,r16,24
  80a908:	04400604 	movi	r17,24
  80a90c:	00802074 	movhi	r2,129
  80a910:	1885883a 	add	r2,r3,r2
  80a914:	10816503 	ldbu	r2,1428(r2)
  80a918:	00c00804 	movi	r3,32
  80a91c:	1463883a 	add	r17,r2,r17
  80a920:	1c45c83a 	sub	r2,r3,r17
  80a924:	1c40431e 	bne	r3,r17,80aa34 <__udivdi3+0x324>
  80a928:	802cd43a 	srli	r22,r16,16
  80a92c:	9423c83a 	sub	r17,r18,r16
  80a930:	853fffcc 	andi	r20,r16,65535
  80a934:	00c00044 	movi	r3,1
  80a938:	b00b883a 	mov	r5,r22
  80a93c:	8809883a 	mov	r4,r17
  80a940:	d8c00015 	stw	r3,0(sp)
  80a944:	080b4480 	call	80b448 <__umodsi3>
  80a948:	b00b883a 	mov	r5,r22
  80a94c:	8809883a 	mov	r4,r17
  80a950:	1025883a 	mov	r18,r2
  80a954:	080b3e40 	call	80b3e4 <__udivsi3>
  80a958:	1009883a 	mov	r4,r2
  80a95c:	a00b883a 	mov	r5,r20
  80a960:	102b883a 	mov	r21,r2
  80a964:	0800f1c0 	call	800f1c <__mulsi3>
  80a968:	9024943a 	slli	r18,r18,16
  80a96c:	9808d43a 	srli	r4,r19,16
  80a970:	d8c00017 	ldw	r3,0(sp)
  80a974:	9108b03a 	or	r4,r18,r4
  80a978:	2080052e 	bgeu	r4,r2,80a990 <__udivdi3+0x280>
  80a97c:	2409883a 	add	r4,r4,r16
  80a980:	a97fffc4 	addi	r5,r21,-1
  80a984:	24000136 	bltu	r4,r16,80a98c <__udivdi3+0x27c>
  80a988:	2080e536 	bltu	r4,r2,80ad20 <__udivdi3+0x610>
  80a98c:	282b883a 	mov	r21,r5
  80a990:	20a3c83a 	sub	r17,r4,r2
  80a994:	8809883a 	mov	r4,r17
  80a998:	b00b883a 	mov	r5,r22
  80a99c:	d8c00015 	stw	r3,0(sp)
  80a9a0:	080b4480 	call	80b448 <__umodsi3>
  80a9a4:	8809883a 	mov	r4,r17
  80a9a8:	1023883a 	mov	r17,r2
  80a9ac:	b00b883a 	mov	r5,r22
  80a9b0:	8822943a 	slli	r17,r17,16
  80a9b4:	080b3e40 	call	80b3e4 <__udivsi3>
  80a9b8:	a00b883a 	mov	r5,r20
  80a9bc:	1009883a 	mov	r4,r2
  80a9c0:	9cffffcc 	andi	r19,r19,65535
  80a9c4:	1025883a 	mov	r18,r2
  80a9c8:	8ce6b03a 	or	r19,r17,r19
  80a9cc:	0800f1c0 	call	800f1c <__mulsi3>
  80a9d0:	d8c00017 	ldw	r3,0(sp)
  80a9d4:	9880052e 	bgeu	r19,r2,80a9ec <__udivdi3+0x2dc>
  80a9d8:	84e7883a 	add	r19,r16,r19
  80a9dc:	913fffc4 	addi	r4,r18,-1
  80a9e0:	9c000136 	bltu	r19,r16,80a9e8 <__udivdi3+0x2d8>
  80a9e4:	9880c736 	bltu	r19,r2,80ad04 <__udivdi3+0x5f4>
  80a9e8:	2025883a 	mov	r18,r4
  80a9ec:	a80c943a 	slli	r6,r21,16
  80a9f0:	3484b03a 	or	r2,r6,r18
  80a9f4:	003f9d06 	br	80a86c <__udivdi3+0x15c>
  80a9f8:	80804030 	cmpltui	r2,r16,256
  80a9fc:	1000b71e 	bne	r2,zero,80acdc <__udivdi3+0x5cc>
  80aa00:	8006d23a 	srli	r3,r16,8
  80aa04:	04400204 	movi	r17,8
  80aa08:	003fc006 	br	80a90c <__udivdi3+0x1fc>
  80aa0c:	30804030 	cmpltui	r2,r6,256
  80aa10:	1000a41e 	bne	r2,zero,80aca4 <__udivdi3+0x594>
  80aa14:	3006d23a 	srli	r3,r6,8
  80aa18:	04400204 	movi	r17,8
  80aa1c:	003f5506 	br	80a774 <__udivdi3+0x64>
  80aa20:	38804030 	cmpltui	r2,r7,256
  80aa24:	1000a41e 	bne	r2,zero,80acb8 <__udivdi3+0x5a8>
  80aa28:	3806d23a 	srli	r3,r7,8
  80aa2c:	01000204 	movi	r4,8
  80aa30:	003fa006 	br	80a8b4 <__udivdi3+0x1a4>
  80aa34:	80a0983a 	sll	r16,r16,r2
  80aa38:	946ed83a 	srl	r23,r18,r17
  80aa3c:	9086983a 	sll	r3,r18,r2
  80aa40:	802cd43a 	srli	r22,r16,16
  80aa44:	a462d83a 	srl	r17,r20,r17
  80aa48:	b809883a 	mov	r4,r23
  80aa4c:	b00b883a 	mov	r5,r22
  80aa50:	88eab03a 	or	r21,r17,r3
  80aa54:	a0a6983a 	sll	r19,r20,r2
  80aa58:	080b4480 	call	80b448 <__umodsi3>
  80aa5c:	b809883a 	mov	r4,r23
  80aa60:	b00b883a 	mov	r5,r22
  80aa64:	1025883a 	mov	r18,r2
  80aa68:	853fffcc 	andi	r20,r16,65535
  80aa6c:	080b3e40 	call	80b3e4 <__udivsi3>
  80aa70:	a009883a 	mov	r4,r20
  80aa74:	100b883a 	mov	r5,r2
  80aa78:	102f883a 	mov	r23,r2
  80aa7c:	0800f1c0 	call	800f1c <__mulsi3>
  80aa80:	9024943a 	slli	r18,r18,16
  80aa84:	a808d43a 	srli	r4,r21,16
  80aa88:	9108b03a 	or	r4,r18,r4
  80aa8c:	2080062e 	bgeu	r4,r2,80aaa8 <__udivdi3+0x398>
  80aa90:	2409883a 	add	r4,r4,r16
  80aa94:	b8ffffc4 	addi	r3,r23,-1
  80aa98:	24009836 	bltu	r4,r16,80acfc <__udivdi3+0x5ec>
  80aa9c:	2080972e 	bgeu	r4,r2,80acfc <__udivdi3+0x5ec>
  80aaa0:	bdffff84 	addi	r23,r23,-2
  80aaa4:	2409883a 	add	r4,r4,r16
  80aaa8:	20a3c83a 	sub	r17,r4,r2
  80aaac:	8809883a 	mov	r4,r17
  80aab0:	b00b883a 	mov	r5,r22
  80aab4:	080b4480 	call	80b448 <__umodsi3>
  80aab8:	1025883a 	mov	r18,r2
  80aabc:	8809883a 	mov	r4,r17
  80aac0:	b00b883a 	mov	r5,r22
  80aac4:	9024943a 	slli	r18,r18,16
  80aac8:	080b3e40 	call	80b3e4 <__udivsi3>
  80aacc:	100b883a 	mov	r5,r2
  80aad0:	a009883a 	mov	r4,r20
  80aad4:	ac7fffcc 	andi	r17,r21,65535
  80aad8:	1039883a 	mov	fp,r2
  80aadc:	9462b03a 	or	r17,r18,r17
  80aae0:	0800f1c0 	call	800f1c <__mulsi3>
  80aae4:	8880062e 	bgeu	r17,r2,80ab00 <__udivdi3+0x3f0>
  80aae8:	8c23883a 	add	r17,r17,r16
  80aaec:	e0ffffc4 	addi	r3,fp,-1
  80aaf0:	8c007e36 	bltu	r17,r16,80acec <__udivdi3+0x5dc>
  80aaf4:	88807d2e 	bgeu	r17,r2,80acec <__udivdi3+0x5dc>
  80aaf8:	e73fff84 	addi	fp,fp,-2
  80aafc:	8c23883a 	add	r17,r17,r16
  80ab00:	b806943a 	slli	r3,r23,16
  80ab04:	88a3c83a 	sub	r17,r17,r2
  80ab08:	1f06b03a 	or	r3,r3,fp
  80ab0c:	003f8a06 	br	80a938 <__udivdi3+0x228>
  80ab10:	30e6d83a 	srl	r19,r6,r3
  80ab14:	3c4e983a 	sll	r7,r7,r17
  80ab18:	90e0d83a 	srl	r16,r18,r3
  80ab1c:	a0c4d83a 	srl	r2,r20,r3
  80ab20:	99e6b03a 	or	r19,r19,r7
  80ab24:	9446983a 	sll	r3,r18,r17
  80ab28:	9838d43a 	srli	fp,r19,16
  80ab2c:	8009883a 	mov	r4,r16
  80ab30:	10eab03a 	or	r21,r2,r3
  80ab34:	e00b883a 	mov	r5,fp
  80ab38:	346c983a 	sll	r22,r6,r17
  80ab3c:	dd400015 	stw	r21,0(sp)
  80ab40:	080b4480 	call	80b448 <__umodsi3>
  80ab44:	8009883a 	mov	r4,r16
  80ab48:	e00b883a 	mov	r5,fp
  80ab4c:	102f883a 	mov	r23,r2
  80ab50:	9cbfffcc 	andi	r18,r19,65535
  80ab54:	080b3e40 	call	80b3e4 <__udivsi3>
  80ab58:	9009883a 	mov	r4,r18
  80ab5c:	100b883a 	mov	r5,r2
  80ab60:	1021883a 	mov	r16,r2
  80ab64:	0800f1c0 	call	800f1c <__mulsi3>
  80ab68:	b82e943a 	slli	r23,r23,16
  80ab6c:	a808d43a 	srli	r4,r21,16
  80ab70:	b908b03a 	or	r4,r23,r4
  80ab74:	2080062e 	bgeu	r4,r2,80ab90 <__udivdi3+0x480>
  80ab78:	24c9883a 	add	r4,r4,r19
  80ab7c:	817fffc4 	addi	r5,r16,-1
  80ab80:	24c05c36 	bltu	r4,r19,80acf4 <__udivdi3+0x5e4>
  80ab84:	20805b2e 	bgeu	r4,r2,80acf4 <__udivdi3+0x5e4>
  80ab88:	843fff84 	addi	r16,r16,-2
  80ab8c:	24c9883a 	add	r4,r4,r19
  80ab90:	20abc83a 	sub	r21,r4,r2
  80ab94:	a809883a 	mov	r4,r21
  80ab98:	e00b883a 	mov	r5,fp
  80ab9c:	080b4480 	call	80b448 <__umodsi3>
  80aba0:	a809883a 	mov	r4,r21
  80aba4:	e00b883a 	mov	r5,fp
  80aba8:	102b883a 	mov	r21,r2
  80abac:	080b3e40 	call	80b3e4 <__udivsi3>
  80abb0:	9009883a 	mov	r4,r18
  80abb4:	100b883a 	mov	r5,r2
  80abb8:	102f883a 	mov	r23,r2
  80abbc:	0800f1c0 	call	800f1c <__mulsi3>
  80abc0:	d8c00017 	ldw	r3,0(sp)
  80abc4:	a82a943a 	slli	r21,r21,16
  80abc8:	1cbfffcc 	andi	r18,r3,65535
  80abcc:	aca4b03a 	or	r18,r21,r18
  80abd0:	9080062e 	bgeu	r18,r2,80abec <__udivdi3+0x4dc>
  80abd4:	94e5883a 	add	r18,r18,r19
  80abd8:	b8ffffc4 	addi	r3,r23,-1
  80abdc:	94c04136 	bltu	r18,r19,80ace4 <__udivdi3+0x5d4>
  80abe0:	9080402e 	bgeu	r18,r2,80ace4 <__udivdi3+0x5d4>
  80abe4:	bdffff84 	addi	r23,r23,-2
  80abe8:	94e5883a 	add	r18,r18,r19
  80abec:	8020943a 	slli	r16,r16,16
  80abf0:	bd7fffcc 	andi	r21,r23,65535
  80abf4:	b73fffcc 	andi	fp,r22,65535
  80abf8:	85e0b03a 	or	r16,r16,r23
  80abfc:	8026d43a 	srli	r19,r16,16
  80ac00:	a809883a 	mov	r4,r21
  80ac04:	e00b883a 	mov	r5,fp
  80ac08:	b02cd43a 	srli	r22,r22,16
  80ac0c:	90a5c83a 	sub	r18,r18,r2
  80ac10:	0800f1c0 	call	800f1c <__mulsi3>
  80ac14:	9809883a 	mov	r4,r19
  80ac18:	e00b883a 	mov	r5,fp
  80ac1c:	102f883a 	mov	r23,r2
  80ac20:	0800f1c0 	call	800f1c <__mulsi3>
  80ac24:	9809883a 	mov	r4,r19
  80ac28:	b00b883a 	mov	r5,r22
  80ac2c:	1027883a 	mov	r19,r2
  80ac30:	0800f1c0 	call	800f1c <__mulsi3>
  80ac34:	a809883a 	mov	r4,r21
  80ac38:	b00b883a 	mov	r5,r22
  80ac3c:	102b883a 	mov	r21,r2
  80ac40:	0800f1c0 	call	800f1c <__mulsi3>
  80ac44:	b806d43a 	srli	r3,r23,16
  80ac48:	14c5883a 	add	r2,r2,r19
  80ac4c:	1887883a 	add	r3,r3,r2
  80ac50:	1cc0022e 	bgeu	r3,r19,80ac5c <__udivdi3+0x54c>
  80ac54:	00800074 	movhi	r2,1
  80ac58:	a8ab883a 	add	r21,r21,r2
  80ac5c:	1804d43a 	srli	r2,r3,16
  80ac60:	156b883a 	add	r21,r2,r21
  80ac64:	95400936 	bltu	r18,r21,80ac8c <__udivdi3+0x57c>
  80ac68:	95400326 	beq	r18,r21,80ac78 <__udivdi3+0x568>
  80ac6c:	8005883a 	mov	r2,r16
  80ac70:	0007883a 	mov	r3,zero
  80ac74:	003efd06 	br	80a86c <__udivdi3+0x15c>
  80ac78:	1806943a 	slli	r3,r3,16
  80ac7c:	a44c983a 	sll	r6,r20,r17
  80ac80:	bdffffcc 	andi	r23,r23,65535
  80ac84:	1dc7883a 	add	r3,r3,r23
  80ac88:	30fff82e 	bgeu	r6,r3,80ac6c <__udivdi3+0x55c>
  80ac8c:	80bfffc4 	addi	r2,r16,-1
  80ac90:	0007883a 	mov	r3,zero
  80ac94:	003ef506 	br	80a86c <__udivdi3+0x15c>
  80ac98:	3806d43a 	srli	r3,r7,16
  80ac9c:	01000404 	movi	r4,16
  80aca0:	003f0406 	br	80a8b4 <__udivdi3+0x1a4>
  80aca4:	3007883a 	mov	r3,r6
  80aca8:	003eb206 	br	80a774 <__udivdi3+0x64>
  80acac:	0007883a 	mov	r3,zero
  80acb0:	00800044 	movi	r2,1
  80acb4:	003eed06 	br	80a86c <__udivdi3+0x15c>
  80acb8:	3807883a 	mov	r3,r7
  80acbc:	0009883a 	mov	r4,zero
  80acc0:	003efc06 	br	80a8b4 <__udivdi3+0x1a4>
  80acc4:	8006d43a 	srli	r3,r16,16
  80acc8:	04400404 	movi	r17,16
  80accc:	003f0f06 	br	80a90c <__udivdi3+0x1fc>
  80acd0:	3006d43a 	srli	r3,r6,16
  80acd4:	04400404 	movi	r17,16
  80acd8:	003ea606 	br	80a774 <__udivdi3+0x64>
  80acdc:	8007883a 	mov	r3,r16
  80ace0:	003f0a06 	br	80a90c <__udivdi3+0x1fc>
  80ace4:	182f883a 	mov	r23,r3
  80ace8:	003fc006 	br	80abec <__udivdi3+0x4dc>
  80acec:	1839883a 	mov	fp,r3
  80acf0:	003f8306 	br	80ab00 <__udivdi3+0x3f0>
  80acf4:	2821883a 	mov	r16,r5
  80acf8:	003fa506 	br	80ab90 <__udivdi3+0x480>
  80acfc:	182f883a 	mov	r23,r3
  80ad00:	003f6906 	br	80aaa8 <__udivdi3+0x398>
  80ad04:	94bfff84 	addi	r18,r18,-2
  80ad08:	003f3806 	br	80a9ec <__udivdi3+0x2dc>
  80ad0c:	94bfff84 	addi	r18,r18,-2
  80ad10:	003ecf06 	br	80a850 <__udivdi3+0x140>
  80ad14:	ad7fff84 	addi	r21,r21,-2
  80ad18:	2409883a 	add	r4,r4,r16
  80ad1c:	003eb706 	br	80a7fc <__udivdi3+0xec>
  80ad20:	ad7fff84 	addi	r21,r21,-2
  80ad24:	2409883a 	add	r4,r4,r16
  80ad28:	003f1906 	br	80a990 <__udivdi3+0x280>

0080ad2c <__umoddi3>:
  80ad2c:	defff304 	addi	sp,sp,-52
  80ad30:	dc400415 	stw	r17,16(sp)
  80ad34:	dc000315 	stw	r16,12(sp)
  80ad38:	dfc00c15 	stw	ra,48(sp)
  80ad3c:	df000b15 	stw	fp,44(sp)
  80ad40:	ddc00a15 	stw	r23,40(sp)
  80ad44:	dd800915 	stw	r22,36(sp)
  80ad48:	dd400815 	stw	r21,32(sp)
  80ad4c:	dd000715 	stw	r20,28(sp)
  80ad50:	dcc00615 	stw	r19,24(sp)
  80ad54:	dc800515 	stw	r18,20(sp)
  80ad58:	2823883a 	mov	r17,r5
  80ad5c:	2021883a 	mov	r16,r4
  80ad60:	38003b1e 	bne	r7,zero,80ae50 <__umoddi3+0x124>
  80ad64:	3825883a 	mov	r18,r7
  80ad68:	3029883a 	mov	r20,r6
  80ad6c:	2027883a 	mov	r19,r4
  80ad70:	29805b2e 	bgeu	r5,r6,80aee0 <__umoddi3+0x1b4>
  80ad74:	00bfffd4 	movui	r2,65535
  80ad78:	282d883a 	mov	r22,r5
  80ad7c:	11809a2e 	bgeu	r2,r6,80afe8 <__umoddi3+0x2bc>
  80ad80:	00804034 	movhi	r2,256
  80ad84:	30814436 	bltu	r6,r2,80b298 <__umoddi3+0x56c>
  80ad88:	3006d63a 	srli	r3,r6,24
  80ad8c:	04800604 	movi	r18,24
  80ad90:	00802074 	movhi	r2,129
  80ad94:	1885883a 	add	r2,r3,r2
  80ad98:	11016503 	ldbu	r4,1428(r2)
  80ad9c:	00800804 	movi	r2,32
  80ada0:	2489883a 	add	r4,r4,r18
  80ada4:	1125c83a 	sub	r18,r2,r4
  80ada8:	11000526 	beq	r2,r4,80adc0 <__umoddi3+0x94>
  80adac:	8ca2983a 	sll	r17,r17,r18
  80adb0:	8108d83a 	srl	r4,r16,r4
  80adb4:	34a8983a 	sll	r20,r6,r18
  80adb8:	84a6983a 	sll	r19,r16,r18
  80adbc:	246cb03a 	or	r22,r4,r17
  80adc0:	a02ed43a 	srli	r23,r20,16
  80adc4:	b009883a 	mov	r4,r22
  80adc8:	a57fffcc 	andi	r21,r20,65535
  80adcc:	b80b883a 	mov	r5,r23
  80add0:	080b4480 	call	80b448 <__umodsi3>
  80add4:	b80b883a 	mov	r5,r23
  80add8:	b009883a 	mov	r4,r22
  80addc:	1023883a 	mov	r17,r2
  80ade0:	080b3e40 	call	80b3e4 <__udivsi3>
  80ade4:	a809883a 	mov	r4,r21
  80ade8:	100b883a 	mov	r5,r2
  80adec:	0800f1c0 	call	800f1c <__mulsi3>
  80adf0:	8822943a 	slli	r17,r17,16
  80adf4:	9808d43a 	srli	r4,r19,16
  80adf8:	8908b03a 	or	r4,r17,r4
  80adfc:	2080042e 	bgeu	r4,r2,80ae10 <__umoddi3+0xe4>
  80ae00:	2509883a 	add	r4,r4,r20
  80ae04:	25000236 	bltu	r4,r20,80ae10 <__umoddi3+0xe4>
  80ae08:	2080012e 	bgeu	r4,r2,80ae10 <__umoddi3+0xe4>
  80ae0c:	2509883a 	add	r4,r4,r20
  80ae10:	20a1c83a 	sub	r16,r4,r2
  80ae14:	b80b883a 	mov	r5,r23
  80ae18:	8009883a 	mov	r4,r16
  80ae1c:	080b4480 	call	80b448 <__umodsi3>
  80ae20:	b80b883a 	mov	r5,r23
  80ae24:	8009883a 	mov	r4,r16
  80ae28:	1023883a 	mov	r17,r2
  80ae2c:	080b3e40 	call	80b3e4 <__udivsi3>
  80ae30:	8822943a 	slli	r17,r17,16
  80ae34:	100b883a 	mov	r5,r2
  80ae38:	a809883a 	mov	r4,r21
  80ae3c:	0800f1c0 	call	800f1c <__mulsi3>
  80ae40:	98ffffcc 	andi	r3,r19,65535
  80ae44:	88c6b03a 	or	r3,r17,r3
  80ae48:	18805e2e 	bgeu	r3,r2,80afc4 <__umoddi3+0x298>
  80ae4c:	00005906 	br	80afb4 <__umoddi3+0x288>
  80ae50:	2005883a 	mov	r2,r4
  80ae54:	29c00d2e 	bgeu	r5,r7,80ae8c <__umoddi3+0x160>
  80ae58:	2807883a 	mov	r3,r5
  80ae5c:	dfc00c17 	ldw	ra,48(sp)
  80ae60:	df000b17 	ldw	fp,44(sp)
  80ae64:	ddc00a17 	ldw	r23,40(sp)
  80ae68:	dd800917 	ldw	r22,36(sp)
  80ae6c:	dd400817 	ldw	r21,32(sp)
  80ae70:	dd000717 	ldw	r20,28(sp)
  80ae74:	dcc00617 	ldw	r19,24(sp)
  80ae78:	dc800517 	ldw	r18,20(sp)
  80ae7c:	dc400417 	ldw	r17,16(sp)
  80ae80:	dc000317 	ldw	r16,12(sp)
  80ae84:	dec00d04 	addi	sp,sp,52
  80ae88:	f800283a 	ret
  80ae8c:	013fffd4 	movui	r4,65535
  80ae90:	2807883a 	mov	r3,r5
  80ae94:	21c0592e 	bgeu	r4,r7,80affc <__umoddi3+0x2d0>
  80ae98:	01004034 	movhi	r4,256
  80ae9c:	39010336 	bltu	r7,r4,80b2ac <__umoddi3+0x580>
  80aea0:	3808d63a 	srli	r4,r7,24
  80aea4:	02000604 	movi	r8,24
  80aea8:	01402074 	movhi	r5,129
  80aeac:	214b883a 	add	r5,r4,r5
  80aeb0:	2d016503 	ldbu	r20,1428(r5)
  80aeb4:	01000804 	movi	r4,32
  80aeb8:	a229883a 	add	r20,r20,r8
  80aebc:	252bc83a 	sub	r21,r4,r20
  80aec0:	2500531e 	bne	r4,r20,80b010 <__umoddi3+0x2e4>
  80aec4:	3c400136 	bltu	r7,r17,80aecc <__umoddi3+0x1a0>
  80aec8:	81bfe436 	bltu	r16,r6,80ae5c <__umoddi3+0x130>
  80aecc:	8185c83a 	sub	r2,r16,r6
  80aed0:	89cfc83a 	sub	r7,r17,r7
  80aed4:	8087803a 	cmpltu	r3,r16,r2
  80aed8:	38c7c83a 	sub	r3,r7,r3
  80aedc:	003fdf06 	br	80ae5c <__umoddi3+0x130>
  80aee0:	3000041e 	bne	r6,zero,80aef4 <__umoddi3+0x1c8>
  80aee4:	000b883a 	mov	r5,zero
  80aee8:	01000044 	movi	r4,1
  80aeec:	080b3e40 	call	80b3e4 <__udivsi3>
  80aef0:	1029883a 	mov	r20,r2
  80aef4:	00bfffd4 	movui	r2,65535
  80aef8:	1500362e 	bgeu	r2,r20,80afd4 <__umoddi3+0x2a8>
  80aefc:	00804034 	movhi	r2,256
  80af00:	a080ed36 	bltu	r20,r2,80b2b8 <__umoddi3+0x58c>
  80af04:	a006d63a 	srli	r3,r20,24
  80af08:	04800604 	movi	r18,24
  80af0c:	00802074 	movhi	r2,129
  80af10:	1885883a 	add	r2,r3,r2
  80af14:	15816503 	ldbu	r22,1428(r2)
  80af18:	00800804 	movi	r2,32
  80af1c:	b4ad883a 	add	r22,r22,r18
  80af20:	15a5c83a 	sub	r18,r2,r22
  80af24:	1580a51e 	bne	r2,r22,80b1bc <__umoddi3+0x490>
  80af28:	a02ed43a 	srli	r23,r20,16
  80af2c:	8d23c83a 	sub	r17,r17,r20
  80af30:	a57fffcc 	andi	r21,r20,65535
  80af34:	8809883a 	mov	r4,r17
  80af38:	b80b883a 	mov	r5,r23
  80af3c:	080b4480 	call	80b448 <__umodsi3>
  80af40:	8809883a 	mov	r4,r17
  80af44:	b80b883a 	mov	r5,r23
  80af48:	1023883a 	mov	r17,r2
  80af4c:	080b3e40 	call	80b3e4 <__udivsi3>
  80af50:	1009883a 	mov	r4,r2
  80af54:	a80b883a 	mov	r5,r21
  80af58:	0800f1c0 	call	800f1c <__mulsi3>
  80af5c:	8822943a 	slli	r17,r17,16
  80af60:	9808d43a 	srli	r4,r19,16
  80af64:	8908b03a 	or	r4,r17,r4
  80af68:	2080032e 	bgeu	r4,r2,80af78 <__umoddi3+0x24c>
  80af6c:	2509883a 	add	r4,r4,r20
  80af70:	25000136 	bltu	r4,r20,80af78 <__umoddi3+0x24c>
  80af74:	2080dc36 	bltu	r4,r2,80b2e8 <__umoddi3+0x5bc>
  80af78:	20a1c83a 	sub	r16,r4,r2
  80af7c:	b80b883a 	mov	r5,r23
  80af80:	8009883a 	mov	r4,r16
  80af84:	080b4480 	call	80b448 <__umodsi3>
  80af88:	b80b883a 	mov	r5,r23
  80af8c:	8009883a 	mov	r4,r16
  80af90:	1023883a 	mov	r17,r2
  80af94:	8822943a 	slli	r17,r17,16
  80af98:	080b3e40 	call	80b3e4 <__udivsi3>
  80af9c:	a80b883a 	mov	r5,r21
  80afa0:	1009883a 	mov	r4,r2
  80afa4:	0800f1c0 	call	800f1c <__mulsi3>
  80afa8:	9cffffcc 	andi	r19,r19,65535
  80afac:	8cc6b03a 	or	r3,r17,r19
  80afb0:	1880042e 	bgeu	r3,r2,80afc4 <__umoddi3+0x298>
  80afb4:	1d07883a 	add	r3,r3,r20
  80afb8:	1d000236 	bltu	r3,r20,80afc4 <__umoddi3+0x298>
  80afbc:	1880012e 	bgeu	r3,r2,80afc4 <__umoddi3+0x298>
  80afc0:	1d07883a 	add	r3,r3,r20
  80afc4:	1885c83a 	sub	r2,r3,r2
  80afc8:	1484d83a 	srl	r2,r2,r18
  80afcc:	0007883a 	mov	r3,zero
  80afd0:	003fa206 	br	80ae5c <__umoddi3+0x130>
  80afd4:	a0804030 	cmpltui	r2,r20,256
  80afd8:	1000ba1e 	bne	r2,zero,80b2c4 <__umoddi3+0x598>
  80afdc:	a006d23a 	srli	r3,r20,8
  80afe0:	04800204 	movi	r18,8
  80afe4:	003fc906 	br	80af0c <__umoddi3+0x1e0>
  80afe8:	30804030 	cmpltui	r2,r6,256
  80afec:	1000ad1e 	bne	r2,zero,80b2a4 <__umoddi3+0x578>
  80aff0:	3006d23a 	srli	r3,r6,8
  80aff4:	04800204 	movi	r18,8
  80aff8:	003f6506 	br	80ad90 <__umoddi3+0x64>
  80affc:	39004030 	cmpltui	r4,r7,256
  80b000:	2000b21e 	bne	r4,zero,80b2cc <__umoddi3+0x5a0>
  80b004:	3808d23a 	srli	r4,r7,8
  80b008:	02000204 	movi	r8,8
  80b00c:	003fa606 	br	80aea8 <__umoddi3+0x17c>
  80b010:	3d4e983a 	sll	r7,r7,r21
  80b014:	3508d83a 	srl	r4,r6,r20
  80b018:	8d2cd83a 	srl	r22,r17,r20
  80b01c:	8504d83a 	srl	r2,r16,r20
  80b020:	21e4b03a 	or	r18,r4,r7
  80b024:	8d62983a 	sll	r17,r17,r21
  80b028:	9026d43a 	srli	r19,r18,16
  80b02c:	354c983a 	sll	r6,r6,r21
  80b030:	1444b03a 	or	r2,r2,r17
  80b034:	b009883a 	mov	r4,r22
  80b038:	980b883a 	mov	r5,r19
  80b03c:	d9800115 	stw	r6,4(sp)
  80b040:	d8800015 	stw	r2,0(sp)
  80b044:	080b4480 	call	80b448 <__umodsi3>
  80b048:	980b883a 	mov	r5,r19
  80b04c:	b009883a 	mov	r4,r22
  80b050:	102f883a 	mov	r23,r2
  80b054:	947fffcc 	andi	r17,r18,65535
  80b058:	080b3e40 	call	80b3e4 <__udivsi3>
  80b05c:	8809883a 	mov	r4,r17
  80b060:	100b883a 	mov	r5,r2
  80b064:	1039883a 	mov	fp,r2
  80b068:	0800f1c0 	call	800f1c <__mulsi3>
  80b06c:	d8c00017 	ldw	r3,0(sp)
  80b070:	b82e943a 	slli	r23,r23,16
  80b074:	8560983a 	sll	r16,r16,r21
  80b078:	1808d43a 	srli	r4,r3,16
  80b07c:	b908b03a 	or	r4,r23,r4
  80b080:	2080062e 	bgeu	r4,r2,80b09c <__umoddi3+0x370>
  80b084:	2489883a 	add	r4,r4,r18
  80b088:	e17fffc4 	addi	r5,fp,-1
  80b08c:	24809436 	bltu	r4,r18,80b2e0 <__umoddi3+0x5b4>
  80b090:	2080932e 	bgeu	r4,r2,80b2e0 <__umoddi3+0x5b4>
  80b094:	e73fff84 	addi	fp,fp,-2
  80b098:	2489883a 	add	r4,r4,r18
  80b09c:	20adc83a 	sub	r22,r4,r2
  80b0a0:	980b883a 	mov	r5,r19
  80b0a4:	b009883a 	mov	r4,r22
  80b0a8:	080b4480 	call	80b448 <__umodsi3>
  80b0ac:	980b883a 	mov	r5,r19
  80b0b0:	b009883a 	mov	r4,r22
  80b0b4:	102f883a 	mov	r23,r2
  80b0b8:	080b3e40 	call	80b3e4 <__udivsi3>
  80b0bc:	100b883a 	mov	r5,r2
  80b0c0:	8809883a 	mov	r4,r17
  80b0c4:	d8800215 	stw	r2,8(sp)
  80b0c8:	0800f1c0 	call	800f1c <__mulsi3>
  80b0cc:	d8c00017 	ldw	r3,0(sp)
  80b0d0:	b82e943a 	slli	r23,r23,16
  80b0d4:	d9400217 	ldw	r5,8(sp)
  80b0d8:	1c7fffcc 	andi	r17,r3,65535
  80b0dc:	bc62b03a 	or	r17,r23,r17
  80b0e0:	8880062e 	bgeu	r17,r2,80b0fc <__umoddi3+0x3d0>
  80b0e4:	8ca3883a 	add	r17,r17,r18
  80b0e8:	28ffffc4 	addi	r3,r5,-1
  80b0ec:	8c807a36 	bltu	r17,r18,80b2d8 <__umoddi3+0x5ac>
  80b0f0:	8880792e 	bgeu	r17,r2,80b2d8 <__umoddi3+0x5ac>
  80b0f4:	297fff84 	addi	r5,r5,-2
  80b0f8:	8ca3883a 	add	r17,r17,r18
  80b0fc:	e02c943a 	slli	r22,fp,16
  80b100:	d9c00117 	ldw	r7,4(sp)
  80b104:	29bfffcc 	andi	r6,r5,65535
  80b108:	b16cb03a 	or	r22,r22,r5
  80b10c:	38ffffcc 	andi	r3,r7,65535
  80b110:	b02cd43a 	srli	r22,r22,16
  80b114:	180b883a 	mov	r5,r3
  80b118:	3009883a 	mov	r4,r6
  80b11c:	3838d43a 	srli	fp,r7,16
  80b120:	182f883a 	mov	r23,r3
  80b124:	d9800015 	stw	r6,0(sp)
  80b128:	88a3c83a 	sub	r17,r17,r2
  80b12c:	0800f1c0 	call	800f1c <__mulsi3>
  80b130:	b80b883a 	mov	r5,r23
  80b134:	b009883a 	mov	r4,r22
  80b138:	102f883a 	mov	r23,r2
  80b13c:	0800f1c0 	call	800f1c <__mulsi3>
  80b140:	e00b883a 	mov	r5,fp
  80b144:	b009883a 	mov	r4,r22
  80b148:	102d883a 	mov	r22,r2
  80b14c:	0800f1c0 	call	800f1c <__mulsi3>
  80b150:	d9800017 	ldw	r6,0(sp)
  80b154:	e00b883a 	mov	r5,fp
  80b158:	1039883a 	mov	fp,r2
  80b15c:	3009883a 	mov	r4,r6
  80b160:	0800f1c0 	call	800f1c <__mulsi3>
  80b164:	b808d43a 	srli	r4,r23,16
  80b168:	1585883a 	add	r2,r2,r22
  80b16c:	2089883a 	add	r4,r4,r2
  80b170:	2580022e 	bgeu	r4,r22,80b17c <__umoddi3+0x450>
  80b174:	00800074 	movhi	r2,1
  80b178:	e0b9883a 	add	fp,fp,r2
  80b17c:	2006d43a 	srli	r3,r4,16
  80b180:	2008943a 	slli	r4,r4,16
  80b184:	bdffffcc 	andi	r23,r23,65535
  80b188:	1f07883a 	add	r3,r3,fp
  80b18c:	25c9883a 	add	r4,r4,r23
  80b190:	88c03a36 	bltu	r17,r3,80b27c <__umoddi3+0x550>
  80b194:	88c03826 	beq	r17,r3,80b278 <__umoddi3+0x54c>
  80b198:	8109c83a 	sub	r4,r16,r4
  80b19c:	8121803a 	cmpltu	r16,r16,r4
  80b1a0:	88c7c83a 	sub	r3,r17,r3
  80b1a4:	1c07c83a 	sub	r3,r3,r16
  80b1a8:	1d04983a 	sll	r2,r3,r20
  80b1ac:	2548d83a 	srl	r4,r4,r21
  80b1b0:	1d46d83a 	srl	r3,r3,r21
  80b1b4:	1104b03a 	or	r2,r2,r4
  80b1b8:	003f2806 	br	80ae5c <__umoddi3+0x130>
  80b1bc:	a4a8983a 	sll	r20,r20,r18
  80b1c0:	8da6d83a 	srl	r19,r17,r22
  80b1c4:	8ca2983a 	sll	r17,r17,r18
  80b1c8:	a02ed43a 	srli	r23,r20,16
  80b1cc:	9809883a 	mov	r4,r19
  80b1d0:	85acd83a 	srl	r22,r16,r22
  80b1d4:	b80b883a 	mov	r5,r23
  80b1d8:	080b4480 	call	80b448 <__umodsi3>
  80b1dc:	9809883a 	mov	r4,r19
  80b1e0:	b80b883a 	mov	r5,r23
  80b1e4:	b46cb03a 	or	r22,r22,r17
  80b1e8:	a57fffcc 	andi	r21,r20,65535
  80b1ec:	1023883a 	mov	r17,r2
  80b1f0:	080b3e40 	call	80b3e4 <__udivsi3>
  80b1f4:	a809883a 	mov	r4,r21
  80b1f8:	100b883a 	mov	r5,r2
  80b1fc:	0800f1c0 	call	800f1c <__mulsi3>
  80b200:	8822943a 	slli	r17,r17,16
  80b204:	b008d43a 	srli	r4,r22,16
  80b208:	84a6983a 	sll	r19,r16,r18
  80b20c:	8908b03a 	or	r4,r17,r4
  80b210:	2080042e 	bgeu	r4,r2,80b224 <__umoddi3+0x4f8>
  80b214:	2509883a 	add	r4,r4,r20
  80b218:	25000236 	bltu	r4,r20,80b224 <__umoddi3+0x4f8>
  80b21c:	2080012e 	bgeu	r4,r2,80b224 <__umoddi3+0x4f8>
  80b220:	2509883a 	add	r4,r4,r20
  80b224:	20a1c83a 	sub	r16,r4,r2
  80b228:	8009883a 	mov	r4,r16
  80b22c:	b80b883a 	mov	r5,r23
  80b230:	080b4480 	call	80b448 <__umodsi3>
  80b234:	8009883a 	mov	r4,r16
  80b238:	1021883a 	mov	r16,r2
  80b23c:	b80b883a 	mov	r5,r23
  80b240:	8020943a 	slli	r16,r16,16
  80b244:	080b3e40 	call	80b3e4 <__udivsi3>
  80b248:	100b883a 	mov	r5,r2
  80b24c:	a809883a 	mov	r4,r21
  80b250:	b47fffcc 	andi	r17,r22,65535
  80b254:	0800f1c0 	call	800f1c <__mulsi3>
  80b258:	8462b03a 	or	r17,r16,r17
  80b25c:	8880042e 	bgeu	r17,r2,80b270 <__umoddi3+0x544>
  80b260:	8d23883a 	add	r17,r17,r20
  80b264:	8d000236 	bltu	r17,r20,80b270 <__umoddi3+0x544>
  80b268:	8880012e 	bgeu	r17,r2,80b270 <__umoddi3+0x544>
  80b26c:	8d23883a 	add	r17,r17,r20
  80b270:	88a3c83a 	sub	r17,r17,r2
  80b274:	003f2f06 	br	80af34 <__umoddi3+0x208>
  80b278:	813fc72e 	bgeu	r16,r4,80b198 <__umoddi3+0x46c>
  80b27c:	d8800117 	ldw	r2,4(sp)
  80b280:	20a7c83a 	sub	r19,r4,r2
  80b284:	24c9803a 	cmpltu	r4,r4,r19
  80b288:	2489883a 	add	r4,r4,r18
  80b28c:	1907c83a 	sub	r3,r3,r4
  80b290:	9809883a 	mov	r4,r19
  80b294:	003fc006 	br	80b198 <__umoddi3+0x46c>
  80b298:	3006d43a 	srli	r3,r6,16
  80b29c:	04800404 	movi	r18,16
  80b2a0:	003ebb06 	br	80ad90 <__umoddi3+0x64>
  80b2a4:	3007883a 	mov	r3,r6
  80b2a8:	003eb906 	br	80ad90 <__umoddi3+0x64>
  80b2ac:	3808d43a 	srli	r4,r7,16
  80b2b0:	02000404 	movi	r8,16
  80b2b4:	003efc06 	br	80aea8 <__umoddi3+0x17c>
  80b2b8:	a006d43a 	srli	r3,r20,16
  80b2bc:	04800404 	movi	r18,16
  80b2c0:	003f1206 	br	80af0c <__umoddi3+0x1e0>
  80b2c4:	a007883a 	mov	r3,r20
  80b2c8:	003f1006 	br	80af0c <__umoddi3+0x1e0>
  80b2cc:	3809883a 	mov	r4,r7
  80b2d0:	0011883a 	mov	r8,zero
  80b2d4:	003ef406 	br	80aea8 <__umoddi3+0x17c>
  80b2d8:	180b883a 	mov	r5,r3
  80b2dc:	003f8706 	br	80b0fc <__umoddi3+0x3d0>
  80b2e0:	2839883a 	mov	fp,r5
  80b2e4:	003f6d06 	br	80b09c <__umoddi3+0x370>
  80b2e8:	2509883a 	add	r4,r4,r20
  80b2ec:	003f2206 	br	80af78 <__umoddi3+0x24c>

0080b2f0 <__divsi3>:
  80b2f0:	20001a16 	blt	r4,zero,80b35c <__divsi3+0x6c>
  80b2f4:	000f883a 	mov	r7,zero
  80b2f8:	2800020e 	bge	r5,zero,80b304 <__divsi3+0x14>
  80b2fc:	014bc83a 	sub	r5,zero,r5
  80b300:	39c0005c 	xori	r7,r7,1
  80b304:	200d883a 	mov	r6,r4
  80b308:	00c00044 	movi	r3,1
  80b30c:	2900092e 	bgeu	r5,r4,80b334 <__divsi3+0x44>
  80b310:	00800804 	movi	r2,32
  80b314:	00c00044 	movi	r3,1
  80b318:	00000106 	br	80b320 <__divsi3+0x30>
  80b31c:	10001226 	beq	r2,zero,80b368 <__divsi3+0x78>
  80b320:	294b883a 	add	r5,r5,r5
  80b324:	10bfffc4 	addi	r2,r2,-1
  80b328:	18c7883a 	add	r3,r3,r3
  80b32c:	293ffb36 	bltu	r5,r4,80b31c <__divsi3+0x2c>
  80b330:	18000d26 	beq	r3,zero,80b368 <__divsi3+0x78>
  80b334:	0005883a 	mov	r2,zero
  80b338:	31400236 	bltu	r6,r5,80b344 <__divsi3+0x54>
  80b33c:	314dc83a 	sub	r6,r6,r5
  80b340:	10c4b03a 	or	r2,r2,r3
  80b344:	1806d07a 	srli	r3,r3,1
  80b348:	280ad07a 	srli	r5,r5,1
  80b34c:	183ffa1e 	bne	r3,zero,80b338 <__divsi3+0x48>
  80b350:	38000126 	beq	r7,zero,80b358 <__divsi3+0x68>
  80b354:	0085c83a 	sub	r2,zero,r2
  80b358:	f800283a 	ret
  80b35c:	0109c83a 	sub	r4,zero,r4
  80b360:	01c00044 	movi	r7,1
  80b364:	003fe406 	br	80b2f8 <__divsi3+0x8>
  80b368:	0005883a 	mov	r2,zero
  80b36c:	003ff806 	br	80b350 <__divsi3+0x60>

0080b370 <__modsi3>:
  80b370:	20001916 	blt	r4,zero,80b3d8 <__modsi3+0x68>
  80b374:	000f883a 	mov	r7,zero
  80b378:	2005883a 	mov	r2,r4
  80b37c:	2800010e 	bge	r5,zero,80b384 <__modsi3+0x14>
  80b380:	014bc83a 	sub	r5,zero,r5
  80b384:	00c00044 	movi	r3,1
  80b388:	2900092e 	bgeu	r5,r4,80b3b0 <__modsi3+0x40>
  80b38c:	01800804 	movi	r6,32
  80b390:	00c00044 	movi	r3,1
  80b394:	00000106 	br	80b39c <__modsi3+0x2c>
  80b398:	30000d26 	beq	r6,zero,80b3d0 <__modsi3+0x60>
  80b39c:	294b883a 	add	r5,r5,r5
  80b3a0:	31bfffc4 	addi	r6,r6,-1
  80b3a4:	18c7883a 	add	r3,r3,r3
  80b3a8:	293ffb36 	bltu	r5,r4,80b398 <__modsi3+0x28>
  80b3ac:	18000826 	beq	r3,zero,80b3d0 <__modsi3+0x60>
  80b3b0:	1806d07a 	srli	r3,r3,1
  80b3b4:	11400136 	bltu	r2,r5,80b3bc <__modsi3+0x4c>
  80b3b8:	1145c83a 	sub	r2,r2,r5
  80b3bc:	280ad07a 	srli	r5,r5,1
  80b3c0:	183ffb1e 	bne	r3,zero,80b3b0 <__modsi3+0x40>
  80b3c4:	38000126 	beq	r7,zero,80b3cc <__modsi3+0x5c>
  80b3c8:	0085c83a 	sub	r2,zero,r2
  80b3cc:	f800283a 	ret
  80b3d0:	2005883a 	mov	r2,r4
  80b3d4:	003ffb06 	br	80b3c4 <__modsi3+0x54>
  80b3d8:	0109c83a 	sub	r4,zero,r4
  80b3dc:	01c00044 	movi	r7,1
  80b3e0:	003fe506 	br	80b378 <__modsi3+0x8>

0080b3e4 <__udivsi3>:
  80b3e4:	200d883a 	mov	r6,r4
  80b3e8:	2900152e 	bgeu	r5,r4,80b440 <__udivsi3+0x5c>
  80b3ec:	28001416 	blt	r5,zero,80b440 <__udivsi3+0x5c>
  80b3f0:	00800804 	movi	r2,32
  80b3f4:	00c00044 	movi	r3,1
  80b3f8:	00000206 	br	80b404 <__udivsi3+0x20>
  80b3fc:	10000e26 	beq	r2,zero,80b438 <__udivsi3+0x54>
  80b400:	28000516 	blt	r5,zero,80b418 <__udivsi3+0x34>
  80b404:	294b883a 	add	r5,r5,r5
  80b408:	10bfffc4 	addi	r2,r2,-1
  80b40c:	18c7883a 	add	r3,r3,r3
  80b410:	293ffa36 	bltu	r5,r4,80b3fc <__udivsi3+0x18>
  80b414:	18000826 	beq	r3,zero,80b438 <__udivsi3+0x54>
  80b418:	0005883a 	mov	r2,zero
  80b41c:	31400236 	bltu	r6,r5,80b428 <__udivsi3+0x44>
  80b420:	314dc83a 	sub	r6,r6,r5
  80b424:	10c4b03a 	or	r2,r2,r3
  80b428:	1806d07a 	srli	r3,r3,1
  80b42c:	280ad07a 	srli	r5,r5,1
  80b430:	183ffa1e 	bne	r3,zero,80b41c <__udivsi3+0x38>
  80b434:	f800283a 	ret
  80b438:	0005883a 	mov	r2,zero
  80b43c:	f800283a 	ret
  80b440:	00c00044 	movi	r3,1
  80b444:	003ff406 	br	80b418 <__udivsi3+0x34>

0080b448 <__umodsi3>:
  80b448:	2005883a 	mov	r2,r4
  80b44c:	2900132e 	bgeu	r5,r4,80b49c <__umodsi3+0x54>
  80b450:	28001216 	blt	r5,zero,80b49c <__umodsi3+0x54>
  80b454:	01800804 	movi	r6,32
  80b458:	00c00044 	movi	r3,1
  80b45c:	00000206 	br	80b468 <__umodsi3+0x20>
  80b460:	30000c26 	beq	r6,zero,80b494 <__umodsi3+0x4c>
  80b464:	28000516 	blt	r5,zero,80b47c <__umodsi3+0x34>
  80b468:	294b883a 	add	r5,r5,r5
  80b46c:	31bfffc4 	addi	r6,r6,-1
  80b470:	18c7883a 	add	r3,r3,r3
  80b474:	293ffa36 	bltu	r5,r4,80b460 <__umodsi3+0x18>
  80b478:	18000626 	beq	r3,zero,80b494 <__umodsi3+0x4c>
  80b47c:	1806d07a 	srli	r3,r3,1
  80b480:	11400136 	bltu	r2,r5,80b488 <__umodsi3+0x40>
  80b484:	1145c83a 	sub	r2,r2,r5
  80b488:	280ad07a 	srli	r5,r5,1
  80b48c:	183ffb1e 	bne	r3,zero,80b47c <__umodsi3+0x34>
  80b490:	f800283a 	ret
  80b494:	2005883a 	mov	r2,r4
  80b498:	f800283a 	ret
  80b49c:	00c00044 	movi	r3,1
  80b4a0:	003ff606 	br	80b47c <__umodsi3+0x34>

0080b4a4 <__adddf3>:
  80b4a4:	02000434 	movhi	r8,16
  80b4a8:	423fffc4 	addi	r8,r8,-1
  80b4ac:	3a12703a 	and	r9,r7,r8
  80b4b0:	2a06703a 	and	r3,r5,r8
  80b4b4:	2818d53a 	srli	r12,r5,20
  80b4b8:	3804d53a 	srli	r2,r7,20
  80b4bc:	481490fa 	slli	r10,r9,3
  80b4c0:	280ad7fa 	srli	r5,r5,31
  80b4c4:	180690fa 	slli	r3,r3,3
  80b4c8:	2016d77a 	srli	r11,r4,29
  80b4cc:	3012d77a 	srli	r9,r6,29
  80b4d0:	380ed7fa 	srli	r7,r7,31
  80b4d4:	defffb04 	addi	sp,sp,-20
  80b4d8:	dc400115 	stw	r17,4(sp)
  80b4dc:	dc000015 	stw	r16,0(sp)
  80b4e0:	dfc00415 	stw	ra,16(sp)
  80b4e4:	dcc00315 	stw	r19,12(sp)
  80b4e8:	dc800215 	stw	r18,8(sp)
  80b4ec:	201c90fa 	slli	r14,r4,3
  80b4f0:	301a90fa 	slli	r13,r6,3
  80b4f4:	6441ffcc 	andi	r17,r12,2047
  80b4f8:	2821883a 	mov	r16,r5
  80b4fc:	58c6b03a 	or	r3,r11,r3
  80b500:	1081ffcc 	andi	r2,r2,2047
  80b504:	4a92b03a 	or	r9,r9,r10
  80b508:	29c06326 	beq	r5,r7,80b698 <__adddf3+0x1f4>
  80b50c:	888bc83a 	sub	r5,r17,r2
  80b510:	0140560e 	bge	zero,r5,80b66c <__adddf3+0x1c8>
  80b514:	10007526 	beq	r2,zero,80b6ec <__adddf3+0x248>
  80b518:	8881ffd8 	cmpnei	r2,r17,2047
  80b51c:	10012d26 	beq	r2,zero,80b9d4 <__adddf3+0x530>
  80b520:	4a402034 	orhi	r9,r9,128
  80b524:	28800e48 	cmpgei	r2,r5,57
  80b528:	1000f41e 	bne	r2,zero,80b8fc <__adddf3+0x458>
  80b52c:	28800808 	cmpgei	r2,r5,32
  80b530:	1001471e 	bne	r2,zero,80ba50 <__adddf3+0x5ac>
  80b534:	00800804 	movi	r2,32
  80b538:	1145c83a 	sub	r2,r2,r5
  80b53c:	6948d83a 	srl	r4,r13,r5
  80b540:	48a4983a 	sll	r18,r9,r2
  80b544:	6884983a 	sll	r2,r13,r2
  80b548:	494ad83a 	srl	r5,r9,r5
  80b54c:	9124b03a 	or	r18,r18,r4
  80b550:	101ac03a 	cmpne	r13,r2,zero
  80b554:	9364b03a 	or	r18,r18,r13
  80b558:	1947c83a 	sub	r3,r3,r5
  80b55c:	74a5c83a 	sub	r18,r14,r18
  80b560:	7489803a 	cmpltu	r4,r14,r18
  80b564:	1909c83a 	sub	r4,r3,r4
  80b568:	2080202c 	andhi	r2,r4,128
  80b56c:	10008626 	beq	r2,zero,80b788 <__adddf3+0x2e4>
  80b570:	00802034 	movhi	r2,128
  80b574:	10bfffc4 	addi	r2,r2,-1
  80b578:	20a6703a 	and	r19,r4,r2
  80b57c:	9800d626 	beq	r19,zero,80b8d8 <__adddf3+0x434>
  80b580:	9809883a 	mov	r4,r19
  80b584:	0800ec80 	call	800ec8 <__clzsi2>
  80b588:	133ffe04 	addi	r12,r2,-8
  80b58c:	01000804 	movi	r4,32
  80b590:	2309c83a 	sub	r4,r4,r12
  80b594:	9108d83a 	srl	r4,r18,r4
  80b598:	9b04983a 	sll	r2,r19,r12
  80b59c:	9324983a 	sll	r18,r18,r12
  80b5a0:	2088b03a 	or	r4,r4,r2
  80b5a4:	6440c716 	blt	r12,r17,80b8c4 <__adddf3+0x420>
  80b5a8:	6459c83a 	sub	r12,r12,r17
  80b5ac:	62000044 	addi	r8,r12,1
  80b5b0:	40800808 	cmpgei	r2,r8,32
  80b5b4:	1001191e 	bne	r2,zero,80ba1c <__adddf3+0x578>
  80b5b8:	00800804 	movi	r2,32
  80b5bc:	1205c83a 	sub	r2,r2,r8
  80b5c0:	9206d83a 	srl	r3,r18,r8
  80b5c4:	90a4983a 	sll	r18,r18,r2
  80b5c8:	2084983a 	sll	r2,r4,r2
  80b5cc:	2208d83a 	srl	r4,r4,r8
  80b5d0:	9024c03a 	cmpne	r18,r18,zero
  80b5d4:	10c4b03a 	or	r2,r2,r3
  80b5d8:	14a4b03a 	or	r18,r2,r18
  80b5dc:	0023883a 	mov	r17,zero
  80b5e0:	908001cc 	andi	r2,r18,7
  80b5e4:	10000726 	beq	r2,zero,80b604 <__adddf3+0x160>
  80b5e8:	908003cc 	andi	r2,r18,15
  80b5ec:	10800120 	cmpeqi	r2,r2,4
  80b5f0:	1000041e 	bne	r2,zero,80b604 <__adddf3+0x160>
  80b5f4:	90c00104 	addi	r3,r18,4
  80b5f8:	1ca5803a 	cmpltu	r18,r3,r18
  80b5fc:	2489883a 	add	r4,r4,r18
  80b600:	1825883a 	mov	r18,r3
  80b604:	2080202c 	andhi	r2,r4,128
  80b608:	10006126 	beq	r2,zero,80b790 <__adddf3+0x2ec>
  80b60c:	89400044 	addi	r5,r17,1
  80b610:	2881ffe0 	cmpeqi	r2,r5,2047
  80b614:	2941ffcc 	andi	r5,r5,2047
  80b618:	1000731e 	bne	r2,zero,80b7e8 <__adddf3+0x344>
  80b61c:	023fe034 	movhi	r8,65408
  80b620:	423fffc4 	addi	r8,r8,-1
  80b624:	2210703a 	and	r8,r4,r8
  80b628:	4006927a 	slli	r3,r8,9
  80b62c:	9024d0fa 	srli	r18,r18,3
  80b630:	4004977a 	slli	r2,r8,29
  80b634:	1806d33a 	srli	r3,r3,12
  80b638:	1484b03a 	or	r2,r2,r18
  80b63c:	280a953a 	slli	r5,r5,20
  80b640:	84003fcc 	andi	r16,r16,255
  80b644:	802097fa 	slli	r16,r16,31
  80b648:	28c6b03a 	or	r3,r5,r3
  80b64c:	1c06b03a 	or	r3,r3,r16
  80b650:	dfc00417 	ldw	ra,16(sp)
  80b654:	dcc00317 	ldw	r19,12(sp)
  80b658:	dc800217 	ldw	r18,8(sp)
  80b65c:	dc400117 	ldw	r17,4(sp)
  80b660:	dc000017 	ldw	r16,0(sp)
  80b664:	dec00504 	addi	sp,sp,20
  80b668:	f800283a 	ret
  80b66c:	28002726 	beq	r5,zero,80b70c <__adddf3+0x268>
  80b670:	144bc83a 	sub	r5,r2,r17
  80b674:	8800be1e 	bne	r17,zero,80b970 <__adddf3+0x4cc>
  80b678:	1b88b03a 	or	r4,r3,r14
  80b67c:	20013126 	beq	r4,zero,80bb44 <__adddf3+0x6a0>
  80b680:	293fffc4 	addi	r4,r5,-1
  80b684:	20017226 	beq	r4,zero,80bc50 <__adddf3+0x7ac>
  80b688:	2941ffd8 	cmpnei	r5,r5,2047
  80b68c:	2801c226 	beq	r5,zero,80bd98 <__adddf3+0x8f4>
  80b690:	200b883a 	mov	r5,r4
  80b694:	0000b906 	br	80b97c <__adddf3+0x4d8>
  80b698:	888bc83a 	sub	r5,r17,r2
  80b69c:	0140700e 	bge	zero,r5,80b860 <__adddf3+0x3bc>
  80b6a0:	10002a26 	beq	r2,zero,80b74c <__adddf3+0x2a8>
  80b6a4:	8881ffd8 	cmpnei	r2,r17,2047
  80b6a8:	1000ca26 	beq	r2,zero,80b9d4 <__adddf3+0x530>
  80b6ac:	4a402034 	orhi	r9,r9,128
  80b6b0:	28800e48 	cmpgei	r2,r5,57
  80b6b4:	1000421e 	bne	r2,zero,80b7c0 <__adddf3+0x31c>
  80b6b8:	28800808 	cmpgei	r2,r5,32
  80b6bc:	1000ff26 	beq	r2,zero,80babc <__adddf3+0x618>
  80b6c0:	2cbff804 	addi	r18,r5,-32
  80b6c4:	29000820 	cmpeqi	r4,r5,32
  80b6c8:	4c84d83a 	srl	r2,r9,r18
  80b6cc:	2000041e 	bne	r4,zero,80b6e0 <__adddf3+0x23c>
  80b6d0:	01001004 	movi	r4,64
  80b6d4:	214bc83a 	sub	r5,r4,r5
  80b6d8:	4952983a 	sll	r9,r9,r5
  80b6dc:	6a5ab03a 	or	r13,r13,r9
  80b6e0:	6824c03a 	cmpne	r18,r13,zero
  80b6e4:	90a4b03a 	or	r18,r18,r2
  80b6e8:	00003706 	br	80b7c8 <__adddf3+0x324>
  80b6ec:	4b44b03a 	or	r2,r9,r13
  80b6f0:	1000b126 	beq	r2,zero,80b9b8 <__adddf3+0x514>
  80b6f4:	28bfffc4 	addi	r2,r5,-1
  80b6f8:	10011a26 	beq	r2,zero,80bb64 <__adddf3+0x6c0>
  80b6fc:	2941ffd8 	cmpnei	r5,r5,2047
  80b700:	28012526 	beq	r5,zero,80bb98 <__adddf3+0x6f4>
  80b704:	100b883a 	mov	r5,r2
  80b708:	003f8606 	br	80b524 <__adddf3+0x80>
  80b70c:	8a800044 	addi	r10,r17,1
  80b710:	5281ff8c 	andi	r10,r10,2046
  80b714:	50008b1e 	bne	r10,zero,80b944 <__adddf3+0x4a0>
  80b718:	1b96b03a 	or	r11,r3,r14
  80b71c:	4b44b03a 	or	r2,r9,r13
  80b720:	8801031e 	bne	r17,zero,80bb30 <__adddf3+0x68c>
  80b724:	58014126 	beq	r11,zero,80bc2c <__adddf3+0x788>
  80b728:	1001571e 	bne	r2,zero,80bc88 <__adddf3+0x7e4>
  80b72c:	1804977a 	slli	r2,r3,29
  80b730:	01480034 	movhi	r5,8192
  80b734:	297fffc4 	addi	r5,r5,-1
  80b738:	2148703a 	and	r4,r4,r5
  80b73c:	1810d0fa 	srli	r8,r3,3
  80b740:	1104b03a 	or	r2,r2,r4
  80b744:	500b883a 	mov	r5,r10
  80b748:	00001806 	br	80b7ac <__adddf3+0x308>
  80b74c:	4b44b03a 	or	r2,r9,r13
  80b750:	10010a26 	beq	r2,zero,80bb7c <__adddf3+0x6d8>
  80b754:	28bfffc4 	addi	r2,r5,-1
  80b758:	10000426 	beq	r2,zero,80b76c <__adddf3+0x2c8>
  80b75c:	2941ffd8 	cmpnei	r5,r5,2047
  80b760:	28014226 	beq	r5,zero,80bc6c <__adddf3+0x7c8>
  80b764:	100b883a 	mov	r5,r2
  80b768:	003fd106 	br	80b6b0 <__adddf3+0x20c>
  80b76c:	7365883a 	add	r18,r14,r13
  80b770:	1a47883a 	add	r3,r3,r9
  80b774:	9389803a 	cmpltu	r4,r18,r14
  80b778:	1909883a 	add	r4,r3,r4
  80b77c:	2080202c 	andhi	r2,r4,128
  80b780:	10009b1e 	bne	r2,zero,80b9f0 <__adddf3+0x54c>
  80b784:	04400044 	movi	r17,1
  80b788:	908001cc 	andi	r2,r18,7
  80b78c:	103f961e 	bne	r2,zero,80b5e8 <__adddf3+0x144>
  80b790:	9024d0fa 	srli	r18,r18,3
  80b794:	2004977a 	slli	r2,r4,29
  80b798:	2010d0fa 	srli	r8,r4,3
  80b79c:	880b883a 	mov	r5,r17
  80b7a0:	9084b03a 	or	r2,r18,r2
  80b7a4:	28c1ffe0 	cmpeqi	r3,r5,2047
  80b7a8:	1800251e 	bne	r3,zero,80b840 <__adddf3+0x39c>
  80b7ac:	00c00434 	movhi	r3,16
  80b7b0:	18ffffc4 	addi	r3,r3,-1
  80b7b4:	40c6703a 	and	r3,r8,r3
  80b7b8:	2941ffcc 	andi	r5,r5,2047
  80b7bc:	003f9f06 	br	80b63c <__adddf3+0x198>
  80b7c0:	4b64b03a 	or	r18,r9,r13
  80b7c4:	9024c03a 	cmpne	r18,r18,zero
  80b7c8:	93a5883a 	add	r18,r18,r14
  80b7cc:	9389803a 	cmpltu	r4,r18,r14
  80b7d0:	20c9883a 	add	r4,r4,r3
  80b7d4:	2080202c 	andhi	r2,r4,128
  80b7d8:	103feb26 	beq	r2,zero,80b788 <__adddf3+0x2e4>
  80b7dc:	8c400044 	addi	r17,r17,1
  80b7e0:	8881ffe0 	cmpeqi	r2,r17,2047
  80b7e4:	10008326 	beq	r2,zero,80b9f4 <__adddf3+0x550>
  80b7e8:	0141ffc4 	movi	r5,2047
  80b7ec:	0007883a 	mov	r3,zero
  80b7f0:	0005883a 	mov	r2,zero
  80b7f4:	003f9106 	br	80b63c <__adddf3+0x198>
  80b7f8:	4b44b03a 	or	r2,r9,r13
  80b7fc:	180a977a 	slli	r5,r3,29
  80b800:	1810d0fa 	srli	r8,r3,3
  80b804:	10016c26 	beq	r2,zero,80bdb8 <__adddf3+0x914>
  80b808:	00c80034 	movhi	r3,8192
  80b80c:	18ffffc4 	addi	r3,r3,-1
  80b810:	20c4703a 	and	r2,r4,r3
  80b814:	4100022c 	andhi	r4,r8,8
  80b818:	1144b03a 	or	r2,r2,r5
  80b81c:	20000826 	beq	r4,zero,80b840 <__adddf3+0x39c>
  80b820:	4808d0fa 	srli	r4,r9,3
  80b824:	2140022c 	andhi	r5,r4,8
  80b828:	2800051e 	bne	r5,zero,80b840 <__adddf3+0x39c>
  80b82c:	4804977a 	slli	r2,r9,29
  80b830:	30cc703a 	and	r6,r6,r3
  80b834:	3821883a 	mov	r16,r7
  80b838:	3084b03a 	or	r2,r6,r2
  80b83c:	2011883a 	mov	r8,r4
  80b840:	4086b03a 	or	r3,r8,r2
  80b844:	18017126 	beq	r3,zero,80be0c <__adddf3+0x968>
  80b848:	01000434 	movhi	r4,16
  80b84c:	40c00234 	orhi	r3,r8,8
  80b850:	213fffc4 	addi	r4,r4,-1
  80b854:	1906703a 	and	r3,r3,r4
  80b858:	0141ffc4 	movi	r5,2047
  80b85c:	003f7706 	br	80b63c <__adddf3+0x198>
  80b860:	28002926 	beq	r5,zero,80b908 <__adddf3+0x464>
  80b864:	144bc83a 	sub	r5,r2,r17
  80b868:	88008c26 	beq	r17,zero,80ba9c <__adddf3+0x5f8>
  80b86c:	1101ffd8 	cmpnei	r4,r2,2047
  80b870:	20011126 	beq	r4,zero,80bcb8 <__adddf3+0x814>
  80b874:	18c02034 	orhi	r3,r3,128
  80b878:	29000e48 	cmpgei	r4,r5,57
  80b87c:	2000d51e 	bne	r4,zero,80bbd4 <__adddf3+0x730>
  80b880:	29000808 	cmpgei	r4,r5,32
  80b884:	2001511e 	bne	r4,zero,80bdcc <__adddf3+0x928>
  80b888:	01000804 	movi	r4,32
  80b88c:	2149c83a 	sub	r4,r4,r5
  80b890:	1924983a 	sll	r18,r3,r4
  80b894:	714cd83a 	srl	r6,r14,r5
  80b898:	7108983a 	sll	r4,r14,r4
  80b89c:	194ad83a 	srl	r5,r3,r5
  80b8a0:	91a4b03a 	or	r18,r18,r6
  80b8a4:	2006c03a 	cmpne	r3,r4,zero
  80b8a8:	90e4b03a 	or	r18,r18,r3
  80b8ac:	4953883a 	add	r9,r9,r5
  80b8b0:	9365883a 	add	r18,r18,r13
  80b8b4:	9349803a 	cmpltu	r4,r18,r13
  80b8b8:	2249883a 	add	r4,r4,r9
  80b8bc:	1023883a 	mov	r17,r2
  80b8c0:	003fc406 	br	80b7d4 <__adddf3+0x330>
  80b8c4:	023fe034 	movhi	r8,65408
  80b8c8:	423fffc4 	addi	r8,r8,-1
  80b8cc:	8b23c83a 	sub	r17,r17,r12
  80b8d0:	2208703a 	and	r4,r4,r8
  80b8d4:	003f4206 	br	80b5e0 <__adddf3+0x13c>
  80b8d8:	9009883a 	mov	r4,r18
  80b8dc:	0800ec80 	call	800ec8 <__clzsi2>
  80b8e0:	13000604 	addi	r12,r2,24
  80b8e4:	60c00808 	cmpgei	r3,r12,32
  80b8e8:	183f2826 	beq	r3,zero,80b58c <__adddf3+0xe8>
  80b8ec:	113ffe04 	addi	r4,r2,-8
  80b8f0:	9108983a 	sll	r4,r18,r4
  80b8f4:	0025883a 	mov	r18,zero
  80b8f8:	003f2a06 	br	80b5a4 <__adddf3+0x100>
  80b8fc:	4b64b03a 	or	r18,r9,r13
  80b900:	9024c03a 	cmpne	r18,r18,zero
  80b904:	003f1506 	br	80b55c <__adddf3+0xb8>
  80b908:	8a000044 	addi	r8,r17,1
  80b90c:	4081ff8c 	andi	r2,r8,2046
  80b910:	1000751e 	bne	r2,zero,80bae8 <__adddf3+0x644>
  80b914:	1b84b03a 	or	r2,r3,r14
  80b918:	8800bc1e 	bne	r17,zero,80bc0c <__adddf3+0x768>
  80b91c:	10010c26 	beq	r2,zero,80bd50 <__adddf3+0x8ac>
  80b920:	4b44b03a 	or	r2,r9,r13
  80b924:	1001111e 	bne	r2,zero,80bd6c <__adddf3+0x8c8>
  80b928:	180c977a 	slli	r6,r3,29
  80b92c:	00880034 	movhi	r2,8192
  80b930:	10bfffc4 	addi	r2,r2,-1
  80b934:	2084703a 	and	r2,r4,r2
  80b938:	1810d0fa 	srli	r8,r3,3
  80b93c:	1184b03a 	or	r2,r2,r6
  80b940:	003f9a06 	br	80b7ac <__adddf3+0x308>
  80b944:	7365c83a 	sub	r18,r14,r13
  80b948:	1a67c83a 	sub	r19,r3,r9
  80b94c:	7489803a 	cmpltu	r4,r14,r18
  80b950:	9927c83a 	sub	r19,r19,r4
  80b954:	9880202c 	andhi	r2,r19,128
  80b958:	10006f1e 	bne	r2,zero,80bb18 <__adddf3+0x674>
  80b95c:	94c4b03a 	or	r2,r18,r19
  80b960:	103f061e 	bne	r2,zero,80b57c <__adddf3+0xd8>
  80b964:	0011883a 	mov	r8,zero
  80b968:	0021883a 	mov	r16,zero
  80b96c:	003f8f06 	br	80b7ac <__adddf3+0x308>
  80b970:	1101ffd8 	cmpnei	r4,r2,2047
  80b974:	20008f26 	beq	r4,zero,80bbb4 <__adddf3+0x710>
  80b978:	18c02034 	orhi	r3,r3,128
  80b97c:	29000e48 	cmpgei	r4,r5,57
  80b980:	20003e1e 	bne	r4,zero,80ba7c <__adddf3+0x5d8>
  80b984:	29000808 	cmpgei	r4,r5,32
  80b988:	2000951e 	bne	r4,zero,80bbe0 <__adddf3+0x73c>
  80b98c:	01000804 	movi	r4,32
  80b990:	2149c83a 	sub	r4,r4,r5
  80b994:	1924983a 	sll	r18,r3,r4
  80b998:	714cd83a 	srl	r6,r14,r5
  80b99c:	711c983a 	sll	r14,r14,r4
  80b9a0:	1946d83a 	srl	r3,r3,r5
  80b9a4:	91a4b03a 	or	r18,r18,r6
  80b9a8:	701cc03a 	cmpne	r14,r14,zero
  80b9ac:	93a4b03a 	or	r18,r18,r14
  80b9b0:	48d3c83a 	sub	r9,r9,r3
  80b9b4:	00003306 	br	80ba84 <__adddf3+0x5e0>
  80b9b8:	1824977a 	slli	r18,r3,29
  80b9bc:	01880034 	movhi	r6,8192
  80b9c0:	31bfffc4 	addi	r6,r6,-1
  80b9c4:	2184703a 	and	r2,r4,r6
  80b9c8:	1810d0fa 	srli	r8,r3,3
  80b9cc:	1484b03a 	or	r2,r2,r18
  80b9d0:	003f7406 	br	80b7a4 <__adddf3+0x300>
  80b9d4:	1804977a 	slli	r2,r3,29
  80b9d8:	01480034 	movhi	r5,8192
  80b9dc:	297fffc4 	addi	r5,r5,-1
  80b9e0:	2148703a 	and	r4,r4,r5
  80b9e4:	1810d0fa 	srli	r8,r3,3
  80b9e8:	1104b03a 	or	r2,r2,r4
  80b9ec:	003f9406 	br	80b840 <__adddf3+0x39c>
  80b9f0:	04400084 	movi	r17,2
  80b9f4:	00bfe034 	movhi	r2,65408
  80b9f8:	10bfffc4 	addi	r2,r2,-1
  80b9fc:	9006d07a 	srli	r3,r18,1
  80ba00:	2088703a 	and	r4,r4,r2
  80ba04:	200497fa 	slli	r2,r4,31
  80ba08:	9480004c 	andi	r18,r18,1
  80ba0c:	1ca4b03a 	or	r18,r3,r18
  80ba10:	2008d07a 	srli	r4,r4,1
  80ba14:	14a4b03a 	or	r18,r2,r18
  80ba18:	003ef106 	br	80b5e0 <__adddf3+0x13c>
  80ba1c:	633ff844 	addi	r12,r12,-31
  80ba20:	40800820 	cmpeqi	r2,r8,32
  80ba24:	2318d83a 	srl	r12,r4,r12
  80ba28:	1000041e 	bne	r2,zero,80ba3c <__adddf3+0x598>
  80ba2c:	00801004 	movi	r2,64
  80ba30:	1211c83a 	sub	r8,r2,r8
  80ba34:	2208983a 	sll	r4,r4,r8
  80ba38:	9124b03a 	or	r18,r18,r4
  80ba3c:	9024c03a 	cmpne	r18,r18,zero
  80ba40:	9324b03a 	or	r18,r18,r12
  80ba44:	0009883a 	mov	r4,zero
  80ba48:	0023883a 	mov	r17,zero
  80ba4c:	003f4e06 	br	80b788 <__adddf3+0x2e4>
  80ba50:	2cbff804 	addi	r18,r5,-32
  80ba54:	29000820 	cmpeqi	r4,r5,32
  80ba58:	4c84d83a 	srl	r2,r9,r18
  80ba5c:	2000041e 	bne	r4,zero,80ba70 <__adddf3+0x5cc>
  80ba60:	01001004 	movi	r4,64
  80ba64:	214bc83a 	sub	r5,r4,r5
  80ba68:	4952983a 	sll	r9,r9,r5
  80ba6c:	6a5ab03a 	or	r13,r13,r9
  80ba70:	6824c03a 	cmpne	r18,r13,zero
  80ba74:	90a4b03a 	or	r18,r18,r2
  80ba78:	003eb806 	br	80b55c <__adddf3+0xb8>
  80ba7c:	1b88b03a 	or	r4,r3,r14
  80ba80:	2024c03a 	cmpne	r18,r4,zero
  80ba84:	6ca5c83a 	sub	r18,r13,r18
  80ba88:	6c89803a 	cmpltu	r4,r13,r18
  80ba8c:	4909c83a 	sub	r4,r9,r4
  80ba90:	3821883a 	mov	r16,r7
  80ba94:	1023883a 	mov	r17,r2
  80ba98:	003eb306 	br	80b568 <__adddf3+0xc4>
  80ba9c:	1b88b03a 	or	r4,r3,r14
  80baa0:	20008c26 	beq	r4,zero,80bcd4 <__adddf3+0x830>
  80baa4:	293fffc4 	addi	r4,r5,-1
  80baa8:	2000d326 	beq	r4,zero,80bdf8 <__adddf3+0x954>
  80baac:	2941ffd8 	cmpnei	r5,r5,2047
  80bab0:	28008126 	beq	r5,zero,80bcb8 <__adddf3+0x814>
  80bab4:	200b883a 	mov	r5,r4
  80bab8:	003f6f06 	br	80b878 <__adddf3+0x3d4>
  80babc:	00800804 	movi	r2,32
  80bac0:	1145c83a 	sub	r2,r2,r5
  80bac4:	6948d83a 	srl	r4,r13,r5
  80bac8:	48a4983a 	sll	r18,r9,r2
  80bacc:	6884983a 	sll	r2,r13,r2
  80bad0:	494ad83a 	srl	r5,r9,r5
  80bad4:	9124b03a 	or	r18,r18,r4
  80bad8:	101ac03a 	cmpne	r13,r2,zero
  80badc:	9364b03a 	or	r18,r18,r13
  80bae0:	1947883a 	add	r3,r3,r5
  80bae4:	003f3806 	br	80b7c8 <__adddf3+0x324>
  80bae8:	4081ffe0 	cmpeqi	r2,r8,2047
  80baec:	103f3e1e 	bne	r2,zero,80b7e8 <__adddf3+0x344>
  80baf0:	7345883a 	add	r2,r14,r13
  80baf4:	139d803a 	cmpltu	r14,r2,r14
  80baf8:	1a49883a 	add	r4,r3,r9
  80bafc:	2389883a 	add	r4,r4,r14
  80bb00:	202497fa 	slli	r18,r4,31
  80bb04:	1004d07a 	srli	r2,r2,1
  80bb08:	2008d07a 	srli	r4,r4,1
  80bb0c:	4023883a 	mov	r17,r8
  80bb10:	90a4b03a 	or	r18,r18,r2
  80bb14:	003f1c06 	br	80b788 <__adddf3+0x2e4>
  80bb18:	6ba5c83a 	sub	r18,r13,r14
  80bb1c:	48c9c83a 	sub	r4,r9,r3
  80bb20:	6c85803a 	cmpltu	r2,r13,r18
  80bb24:	20a7c83a 	sub	r19,r4,r2
  80bb28:	3821883a 	mov	r16,r7
  80bb2c:	003e9306 	br	80b57c <__adddf3+0xd8>
  80bb30:	58006f1e 	bne	r11,zero,80bcf0 <__adddf3+0x84c>
  80bb34:	10001f1e 	bne	r2,zero,80bbb4 <__adddf3+0x710>
  80bb38:	00bfffc4 	movi	r2,-1
  80bb3c:	0021883a 	mov	r16,zero
  80bb40:	003f4106 	br	80b848 <__adddf3+0x3a4>
  80bb44:	4808977a 	slli	r4,r9,29
  80bb48:	00c80034 	movhi	r3,8192
  80bb4c:	18ffffc4 	addi	r3,r3,-1
  80bb50:	30c4703a 	and	r2,r6,r3
  80bb54:	4810d0fa 	srli	r8,r9,3
  80bb58:	1104b03a 	or	r2,r2,r4
  80bb5c:	3821883a 	mov	r16,r7
  80bb60:	003f1006 	br	80b7a4 <__adddf3+0x300>
  80bb64:	7365c83a 	sub	r18,r14,r13
  80bb68:	1a47c83a 	sub	r3,r3,r9
  80bb6c:	7489803a 	cmpltu	r4,r14,r18
  80bb70:	1909c83a 	sub	r4,r3,r4
  80bb74:	04400044 	movi	r17,1
  80bb78:	003e7b06 	br	80b568 <__adddf3+0xc4>
  80bb7c:	1824977a 	slli	r18,r3,29
  80bb80:	01c80034 	movhi	r7,8192
  80bb84:	39ffffc4 	addi	r7,r7,-1
  80bb88:	21c4703a 	and	r2,r4,r7
  80bb8c:	1810d0fa 	srli	r8,r3,3
  80bb90:	1484b03a 	or	r2,r2,r18
  80bb94:	003f0306 	br	80b7a4 <__adddf3+0x300>
  80bb98:	1824977a 	slli	r18,r3,29
  80bb9c:	01480034 	movhi	r5,8192
  80bba0:	297fffc4 	addi	r5,r5,-1
  80bba4:	2144703a 	and	r2,r4,r5
  80bba8:	1810d0fa 	srli	r8,r3,3
  80bbac:	1484b03a 	or	r2,r2,r18
  80bbb0:	003f2306 	br	80b840 <__adddf3+0x39c>
  80bbb4:	4806977a 	slli	r3,r9,29
  80bbb8:	00880034 	movhi	r2,8192
  80bbbc:	10bfffc4 	addi	r2,r2,-1
  80bbc0:	3084703a 	and	r2,r6,r2
  80bbc4:	4810d0fa 	srli	r8,r9,3
  80bbc8:	10c4b03a 	or	r2,r2,r3
  80bbcc:	3821883a 	mov	r16,r7
  80bbd0:	003f1b06 	br	80b840 <__adddf3+0x39c>
  80bbd4:	1b88b03a 	or	r4,r3,r14
  80bbd8:	2024c03a 	cmpne	r18,r4,zero
  80bbdc:	003f3406 	br	80b8b0 <__adddf3+0x40c>
  80bbe0:	2cbff804 	addi	r18,r5,-32
  80bbe4:	29800820 	cmpeqi	r6,r5,32
  80bbe8:	1c88d83a 	srl	r4,r3,r18
  80bbec:	3000041e 	bne	r6,zero,80bc00 <__adddf3+0x75c>
  80bbf0:	01801004 	movi	r6,64
  80bbf4:	314bc83a 	sub	r5,r6,r5
  80bbf8:	1946983a 	sll	r3,r3,r5
  80bbfc:	70dcb03a 	or	r14,r14,r3
  80bc00:	7024c03a 	cmpne	r18,r14,zero
  80bc04:	9124b03a 	or	r18,r18,r4
  80bc08:	003f9e06 	br	80ba84 <__adddf3+0x5e0>
  80bc0c:	103efa1e 	bne	r2,zero,80b7f8 <__adddf3+0x354>
  80bc10:	4804977a 	slli	r2,r9,29
  80bc14:	00c80034 	movhi	r3,8192
  80bc18:	18ffffc4 	addi	r3,r3,-1
  80bc1c:	30cc703a 	and	r6,r6,r3
  80bc20:	4810d0fa 	srli	r8,r9,3
  80bc24:	1184b03a 	or	r2,r2,r6
  80bc28:	003f0506 	br	80b840 <__adddf3+0x39c>
  80bc2c:	10004426 	beq	r2,zero,80bd40 <__adddf3+0x89c>
  80bc30:	4806977a 	slli	r3,r9,29
  80bc34:	00880034 	movhi	r2,8192
  80bc38:	10bfffc4 	addi	r2,r2,-1
  80bc3c:	3084703a 	and	r2,r6,r2
  80bc40:	4810d0fa 	srli	r8,r9,3
  80bc44:	10c4b03a 	or	r2,r2,r3
  80bc48:	3821883a 	mov	r16,r7
  80bc4c:	003ed706 	br	80b7ac <__adddf3+0x308>
  80bc50:	6ba5c83a 	sub	r18,r13,r14
  80bc54:	48c7c83a 	sub	r3,r9,r3
  80bc58:	6c85803a 	cmpltu	r2,r13,r18
  80bc5c:	1889c83a 	sub	r4,r3,r2
  80bc60:	3821883a 	mov	r16,r7
  80bc64:	04400044 	movi	r17,1
  80bc68:	003e3f06 	br	80b568 <__adddf3+0xc4>
  80bc6c:	180a977a 	slli	r5,r3,29
  80bc70:	00880034 	movhi	r2,8192
  80bc74:	10bfffc4 	addi	r2,r2,-1
  80bc78:	2084703a 	and	r2,r4,r2
  80bc7c:	1810d0fa 	srli	r8,r3,3
  80bc80:	1144b03a 	or	r2,r2,r5
  80bc84:	003eee06 	br	80b840 <__adddf3+0x39c>
  80bc88:	7365c83a 	sub	r18,r14,r13
  80bc8c:	7485803a 	cmpltu	r2,r14,r18
  80bc90:	1a49c83a 	sub	r4,r3,r9
  80bc94:	2089c83a 	sub	r4,r4,r2
  80bc98:	2080202c 	andhi	r2,r4,128
  80bc9c:	10002626 	beq	r2,zero,80bd38 <__adddf3+0x894>
  80bca0:	6ba5c83a 	sub	r18,r13,r14
  80bca4:	48c7c83a 	sub	r3,r9,r3
  80bca8:	6c85803a 	cmpltu	r2,r13,r18
  80bcac:	1889c83a 	sub	r4,r3,r2
  80bcb0:	3821883a 	mov	r16,r7
  80bcb4:	003e4a06 	br	80b5e0 <__adddf3+0x13c>
  80bcb8:	4806977a 	slli	r3,r9,29
  80bcbc:	00880034 	movhi	r2,8192
  80bcc0:	10bfffc4 	addi	r2,r2,-1
  80bcc4:	3084703a 	and	r2,r6,r2
  80bcc8:	4810d0fa 	srli	r8,r9,3
  80bccc:	10c4b03a 	or	r2,r2,r3
  80bcd0:	003edb06 	br	80b840 <__adddf3+0x39c>
  80bcd4:	4806977a 	slli	r3,r9,29
  80bcd8:	00880034 	movhi	r2,8192
  80bcdc:	10bfffc4 	addi	r2,r2,-1
  80bce0:	3084703a 	and	r2,r6,r2
  80bce4:	4810d0fa 	srli	r8,r9,3
  80bce8:	10c4b03a 	or	r2,r2,r3
  80bcec:	003ead06 	br	80b7a4 <__adddf3+0x300>
  80bcf0:	180a977a 	slli	r5,r3,29
  80bcf4:	1810d0fa 	srli	r8,r3,3
  80bcf8:	10002f26 	beq	r2,zero,80bdb8 <__adddf3+0x914>
  80bcfc:	00c80034 	movhi	r3,8192
  80bd00:	18ffffc4 	addi	r3,r3,-1
  80bd04:	20c4703a 	and	r2,r4,r3
  80bd08:	4100022c 	andhi	r4,r8,8
  80bd0c:	1144b03a 	or	r2,r2,r5
  80bd10:	203ecb26 	beq	r4,zero,80b840 <__adddf3+0x39c>
  80bd14:	4808d0fa 	srli	r4,r9,3
  80bd18:	2140022c 	andhi	r5,r4,8
  80bd1c:	283ec81e 	bne	r5,zero,80b840 <__adddf3+0x39c>
  80bd20:	4812977a 	slli	r9,r9,29
  80bd24:	30c4703a 	and	r2,r6,r3
  80bd28:	3821883a 	mov	r16,r7
  80bd2c:	1244b03a 	or	r2,r2,r9
  80bd30:	2011883a 	mov	r8,r4
  80bd34:	003ec206 	br	80b840 <__adddf3+0x39c>
  80bd38:	9104b03a 	or	r2,r18,r4
  80bd3c:	103e921e 	bne	r2,zero,80b788 <__adddf3+0x2e4>
  80bd40:	0011883a 	mov	r8,zero
  80bd44:	100b883a 	mov	r5,r2
  80bd48:	0021883a 	mov	r16,zero
  80bd4c:	003e9706 	br	80b7ac <__adddf3+0x308>
  80bd50:	4804977a 	slli	r2,r9,29
  80bd54:	00c80034 	movhi	r3,8192
  80bd58:	18ffffc4 	addi	r3,r3,-1
  80bd5c:	30cc703a 	and	r6,r6,r3
  80bd60:	4810d0fa 	srli	r8,r9,3
  80bd64:	1184b03a 	or	r2,r2,r6
  80bd68:	003e9006 	br	80b7ac <__adddf3+0x308>
  80bd6c:	7365883a 	add	r18,r14,r13
  80bd70:	1a47883a 	add	r3,r3,r9
  80bd74:	9389803a 	cmpltu	r4,r18,r14
  80bd78:	1909883a 	add	r4,r3,r4
  80bd7c:	2080202c 	andhi	r2,r4,128
  80bd80:	103e8126 	beq	r2,zero,80b788 <__adddf3+0x2e4>
  80bd84:	00bfe034 	movhi	r2,65408
  80bd88:	10bfffc4 	addi	r2,r2,-1
  80bd8c:	2088703a 	and	r4,r4,r2
  80bd90:	04400044 	movi	r17,1
  80bd94:	003e7c06 	br	80b788 <__adddf3+0x2e4>
  80bd98:	4804977a 	slli	r2,r9,29
  80bd9c:	00c80034 	movhi	r3,8192
  80bda0:	18ffffc4 	addi	r3,r3,-1
  80bda4:	30cc703a 	and	r6,r6,r3
  80bda8:	4810d0fa 	srli	r8,r9,3
  80bdac:	1184b03a 	or	r2,r2,r6
  80bdb0:	3821883a 	mov	r16,r7
  80bdb4:	003ea206 	br	80b840 <__adddf3+0x39c>
  80bdb8:	00880034 	movhi	r2,8192
  80bdbc:	10bfffc4 	addi	r2,r2,-1
  80bdc0:	2084703a 	and	r2,r4,r2
  80bdc4:	1144b03a 	or	r2,r2,r5
  80bdc8:	003e9d06 	br	80b840 <__adddf3+0x39c>
  80bdcc:	293ff804 	addi	r4,r5,-32
  80bdd0:	29800820 	cmpeqi	r6,r5,32
  80bdd4:	1908d83a 	srl	r4,r3,r4
  80bdd8:	3000041e 	bne	r6,zero,80bdec <__adddf3+0x948>
  80bddc:	01801004 	movi	r6,64
  80bde0:	314bc83a 	sub	r5,r6,r5
  80bde4:	1946983a 	sll	r3,r3,r5
  80bde8:	70dcb03a 	or	r14,r14,r3
  80bdec:	7024c03a 	cmpne	r18,r14,zero
  80bdf0:	9124b03a 	or	r18,r18,r4
  80bdf4:	003eae06 	br	80b8b0 <__adddf3+0x40c>
  80bdf8:	7365883a 	add	r18,r14,r13
  80bdfc:	1a47883a 	add	r3,r3,r9
  80be00:	9345803a 	cmpltu	r2,r18,r13
  80be04:	1889883a 	add	r4,r3,r2
  80be08:	003e5c06 	br	80b77c <__adddf3+0x2d8>
  80be0c:	0005883a 	mov	r2,zero
  80be10:	0141ffc4 	movi	r5,2047
  80be14:	0007883a 	mov	r3,zero
  80be18:	003e0806 	br	80b63c <__adddf3+0x198>

0080be1c <__divdf3>:
  80be1c:	2810d53a 	srli	r8,r5,20
  80be20:	defff004 	addi	sp,sp,-64
  80be24:	dc000615 	stw	r16,24(sp)
  80be28:	04000434 	movhi	r16,16
  80be2c:	df000e15 	stw	fp,56(sp)
  80be30:	ddc00d15 	stw	r23,52(sp)
  80be34:	dd800c15 	stw	r22,48(sp)
  80be38:	dd000a15 	stw	r20,40(sp)
  80be3c:	843fffc4 	addi	r16,r16,-1
  80be40:	dfc00f15 	stw	ra,60(sp)
  80be44:	dd400b15 	stw	r21,44(sp)
  80be48:	dcc00915 	stw	r19,36(sp)
  80be4c:	dc800815 	stw	r18,32(sp)
  80be50:	dc400715 	stw	r17,28(sp)
  80be54:	4201ffcc 	andi	r8,r8,2047
  80be58:	282ed7fa 	srli	r23,r5,31
  80be5c:	3039883a 	mov	fp,r6
  80be60:	382d883a 	mov	r22,r7
  80be64:	2029883a 	mov	r20,r4
  80be68:	2c20703a 	and	r16,r5,r16
  80be6c:	40005326 	beq	r8,zero,80bfbc <__divdf3+0x1a0>
  80be70:	4081ffe0 	cmpeqi	r2,r8,2047
  80be74:	1000641e 	bne	r2,zero,80c008 <__divdf3+0x1ec>
  80be78:	2026d77a 	srli	r19,r4,29
  80be7c:	800a90fa 	slli	r5,r16,3
  80be80:	202890fa 	slli	r20,r4,3
  80be84:	44bf0044 	addi	r18,r8,-1023
  80be88:	994ab03a 	or	r5,r19,r5
  80be8c:	2cc02034 	orhi	r19,r5,128
  80be90:	0021883a 	mov	r16,zero
  80be94:	0023883a 	mov	r17,zero
  80be98:	b010d53a 	srli	r8,r22,20
  80be9c:	00c00434 	movhi	r3,16
  80bea0:	18ffffc4 	addi	r3,r3,-1
  80bea4:	4201ffcc 	andi	r8,r8,2047
  80bea8:	b02ad7fa 	srli	r21,r22,31
  80beac:	b0ec703a 	and	r22,r22,r3
  80beb0:	40005c26 	beq	r8,zero,80c024 <__divdf3+0x208>
  80beb4:	4081ffe0 	cmpeqi	r2,r8,2047
  80beb8:	1000201e 	bne	r2,zero,80bf3c <__divdf3+0x120>
  80bebc:	b00690fa 	slli	r3,r22,3
  80bec0:	e004d77a 	srli	r2,fp,29
  80bec4:	e01490fa 	slli	r10,fp,3
  80bec8:	423f0044 	addi	r8,r8,-1023
  80becc:	10c6b03a 	or	r3,r2,r3
  80bed0:	1d802034 	orhi	r22,r3,128
  80bed4:	9225c83a 	sub	r18,r18,r8
  80bed8:	0007883a 	mov	r3,zero
  80bedc:	80800428 	cmpgeui	r2,r16,16
  80bee0:	bd52f03a 	xor	r9,r23,r21
  80bee4:	1000a81e 	bne	r2,zero,80c188 <__divdf3+0x36c>
  80bee8:	800c90ba 	slli	r6,r16,2
  80beec:	00802074 	movhi	r2,129
  80bef0:	3085883a 	add	r2,r6,r2
  80bef4:	10afbf17 	ldw	r2,-16644(r2)
  80bef8:	1000683a 	jmp	r2
  80befc:	0080c188 	cmpgei	r2,zero,774
  80bf00:	0080bfac 	andhi	r2,zero,766
  80bf04:	0080bf58 	cmpnei	r2,zero,765
  80bf08:	0080c0d0 	cmplti	r2,zero,771
  80bf0c:	0080bf58 	cmpnei	r2,zero,765
  80bf10:	0080c12c 	andhi	r2,zero,772
  80bf14:	0080bf58 	cmpnei	r2,zero,765
  80bf18:	0080c0d0 	cmplti	r2,zero,771
  80bf1c:	0080bfac 	andhi	r2,zero,766
  80bf20:	0080bfac 	andhi	r2,zero,766
  80bf24:	0080c12c 	andhi	r2,zero,772
  80bf28:	0080c0d0 	cmplti	r2,zero,771
  80bf2c:	0080c068 	cmpgeui	r2,zero,769
  80bf30:	0080c068 	cmpgeui	r2,zero,769
  80bf34:	0080c068 	cmpgeui	r2,zero,769
  80bf38:	0080c144 	movi	r2,773
  80bf3c:	b714b03a 	or	r10,r22,fp
  80bf40:	94be0044 	addi	r18,r18,-2047
  80bf44:	5000671e 	bne	r10,zero,80c0e4 <__divdf3+0x2c8>
  80bf48:	84000094 	ori	r16,r16,2
  80bf4c:	002d883a 	mov	r22,zero
  80bf50:	00c00084 	movi	r3,2
  80bf54:	003fe106 	br	80bedc <__divdf3+0xc0>
  80bf58:	0007883a 	mov	r3,zero
  80bf5c:	000b883a 	mov	r5,zero
  80bf60:	0029883a 	mov	r20,zero
  80bf64:	1806953a 	slli	r3,r3,20
  80bf68:	4a403fcc 	andi	r9,r9,255
  80bf6c:	481297fa 	slli	r9,r9,31
  80bf70:	1946b03a 	or	r3,r3,r5
  80bf74:	a005883a 	mov	r2,r20
  80bf78:	1a46b03a 	or	r3,r3,r9
  80bf7c:	dfc00f17 	ldw	ra,60(sp)
  80bf80:	df000e17 	ldw	fp,56(sp)
  80bf84:	ddc00d17 	ldw	r23,52(sp)
  80bf88:	dd800c17 	ldw	r22,48(sp)
  80bf8c:	dd400b17 	ldw	r21,44(sp)
  80bf90:	dd000a17 	ldw	r20,40(sp)
  80bf94:	dcc00917 	ldw	r19,36(sp)
  80bf98:	dc800817 	ldw	r18,32(sp)
  80bf9c:	dc400717 	ldw	r17,28(sp)
  80bfa0:	dc000617 	ldw	r16,24(sp)
  80bfa4:	dec01004 	addi	sp,sp,64
  80bfa8:	f800283a 	ret
  80bfac:	00c1ffc4 	movi	r3,2047
  80bfb0:	000b883a 	mov	r5,zero
  80bfb4:	0029883a 	mov	r20,zero
  80bfb8:	003fea06 	br	80bf64 <__divdf3+0x148>
  80bfbc:	2426b03a 	or	r19,r4,r16
  80bfc0:	2023883a 	mov	r17,r4
  80bfc4:	98004f26 	beq	r19,zero,80c104 <__divdf3+0x2e8>
  80bfc8:	80017b26 	beq	r16,zero,80c5b8 <__divdf3+0x79c>
  80bfcc:	8009883a 	mov	r4,r16
  80bfd0:	0800ec80 	call	800ec8 <__clzsi2>
  80bfd4:	113ffd44 	addi	r4,r2,-11
  80bfd8:	00c00744 	movi	r3,29
  80bfdc:	14fffe04 	addi	r19,r2,-8
  80bfe0:	1907c83a 	sub	r3,r3,r4
  80bfe4:	84ca983a 	sll	r5,r16,r19
  80bfe8:	88c6d83a 	srl	r3,r17,r3
  80bfec:	8ce8983a 	sll	r20,r17,r19
  80bff0:	1966b03a 	or	r19,r3,r5
  80bff4:	023f0344 	movi	r8,-1011
  80bff8:	40a5c83a 	sub	r18,r8,r2
  80bffc:	0021883a 	mov	r16,zero
  80c000:	0023883a 	mov	r17,zero
  80c004:	003fa406 	br	80be98 <__divdf3+0x7c>
  80c008:	2426b03a 	or	r19,r4,r16
  80c00c:	9800421e 	bne	r19,zero,80c118 <__divdf3+0x2fc>
  80c010:	0029883a 	mov	r20,zero
  80c014:	04000204 	movi	r16,8
  80c018:	0481ffc4 	movi	r18,2047
  80c01c:	04400084 	movi	r17,2
  80c020:	003f9d06 	br	80be98 <__divdf3+0x7c>
  80c024:	b714b03a 	or	r10,r22,fp
  80c028:	50003226 	beq	r10,zero,80c0f4 <__divdf3+0x2d8>
  80c02c:	b0016c26 	beq	r22,zero,80c5e0 <__divdf3+0x7c4>
  80c030:	b009883a 	mov	r4,r22
  80c034:	0800ec80 	call	800ec8 <__clzsi2>
  80c038:	117ffd44 	addi	r5,r2,-11
  80c03c:	01000744 	movi	r4,29
  80c040:	12bffe04 	addi	r10,r2,-8
  80c044:	2149c83a 	sub	r4,r4,r5
  80c048:	b286983a 	sll	r3,r22,r10
  80c04c:	e108d83a 	srl	r4,fp,r4
  80c050:	e294983a 	sll	r10,fp,r10
  80c054:	20ecb03a 	or	r22,r4,r3
  80c058:	1491883a 	add	r8,r2,r18
  80c05c:	4480fcc4 	addi	r18,r8,1011
  80c060:	0007883a 	mov	r3,zero
  80c064:	003f9d06 	br	80bedc <__divdf3+0xc0>
  80c068:	b813883a 	mov	r9,r23
  80c06c:	888000a0 	cmpeqi	r2,r17,2
  80c070:	103fce1e 	bne	r2,zero,80bfac <__divdf3+0x190>
  80c074:	888000e0 	cmpeqi	r2,r17,3
  80c078:	1001ac1e 	bne	r2,zero,80c72c <__divdf3+0x910>
  80c07c:	88800060 	cmpeqi	r2,r17,1
  80c080:	103fb51e 	bne	r2,zero,80bf58 <__divdf3+0x13c>
  80c084:	9440ffc4 	addi	r17,r18,1023
  80c088:	04411c0e 	bge	zero,r17,80c4fc <__divdf3+0x6e0>
  80c08c:	a08001cc 	andi	r2,r20,7
  80c090:	1001831e 	bne	r2,zero,80c6a0 <__divdf3+0x884>
  80c094:	a008d0fa 	srli	r4,r20,3
  80c098:	9880402c 	andhi	r2,r19,256
  80c09c:	10000426 	beq	r2,zero,80c0b0 <__divdf3+0x294>
  80c0a0:	00bfc034 	movhi	r2,65280
  80c0a4:	10bfffc4 	addi	r2,r2,-1
  80c0a8:	98a6703a 	and	r19,r19,r2
  80c0ac:	94410004 	addi	r17,r18,1024
  80c0b0:	8881ffc8 	cmpgei	r2,r17,2047
  80c0b4:	103fbd1e 	bne	r2,zero,80bfac <__divdf3+0x190>
  80c0b8:	9828977a 	slli	r20,r19,29
  80c0bc:	980a927a 	slli	r5,r19,9
  80c0c0:	88c1ffcc 	andi	r3,r17,2047
  80c0c4:	a128b03a 	or	r20,r20,r4
  80c0c8:	280ad33a 	srli	r5,r5,12
  80c0cc:	003fa506 	br	80bf64 <__divdf3+0x148>
  80c0d0:	a813883a 	mov	r9,r21
  80c0d4:	b027883a 	mov	r19,r22
  80c0d8:	5029883a 	mov	r20,r10
  80c0dc:	1823883a 	mov	r17,r3
  80c0e0:	003fe206 	br	80c06c <__divdf3+0x250>
  80c0e4:	840000d4 	ori	r16,r16,3
  80c0e8:	e015883a 	mov	r10,fp
  80c0ec:	00c000c4 	movi	r3,3
  80c0f0:	003f7a06 	br	80bedc <__divdf3+0xc0>
  80c0f4:	84000054 	ori	r16,r16,1
  80c0f8:	002d883a 	mov	r22,zero
  80c0fc:	00c00044 	movi	r3,1
  80c100:	003f7606 	br	80bedc <__divdf3+0xc0>
  80c104:	0029883a 	mov	r20,zero
  80c108:	04000104 	movi	r16,4
  80c10c:	0025883a 	mov	r18,zero
  80c110:	04400044 	movi	r17,1
  80c114:	003f6006 	br	80be98 <__divdf3+0x7c>
  80c118:	8027883a 	mov	r19,r16
  80c11c:	0481ffc4 	movi	r18,2047
  80c120:	04000304 	movi	r16,12
  80c124:	044000c4 	movi	r17,3
  80c128:	003f5b06 	br	80be98 <__divdf3+0x7c>
  80c12c:	01400434 	movhi	r5,16
  80c130:	0013883a 	mov	r9,zero
  80c134:	297fffc4 	addi	r5,r5,-1
  80c138:	053fffc4 	movi	r20,-1
  80c13c:	00c1ffc4 	movi	r3,2047
  80c140:	003f8806 	br	80bf64 <__divdf3+0x148>
  80c144:	9880022c 	andhi	r2,r19,8
  80c148:	10000926 	beq	r2,zero,80c170 <__divdf3+0x354>
  80c14c:	b080022c 	andhi	r2,r22,8
  80c150:	1000071e 	bne	r2,zero,80c170 <__divdf3+0x354>
  80c154:	00800434 	movhi	r2,16
  80c158:	b1400234 	orhi	r5,r22,8
  80c15c:	10bfffc4 	addi	r2,r2,-1
  80c160:	288a703a 	and	r5,r5,r2
  80c164:	a813883a 	mov	r9,r21
  80c168:	5029883a 	mov	r20,r10
  80c16c:	003ff306 	br	80c13c <__divdf3+0x320>
  80c170:	00800434 	movhi	r2,16
  80c174:	99400234 	orhi	r5,r19,8
  80c178:	10bfffc4 	addi	r2,r2,-1
  80c17c:	288a703a 	and	r5,r5,r2
  80c180:	b813883a 	mov	r9,r23
  80c184:	003fed06 	br	80c13c <__divdf3+0x320>
  80c188:	b4c10536 	bltu	r22,r19,80c5a0 <__divdf3+0x784>
  80c18c:	b4c10326 	beq	r22,r19,80c59c <__divdf3+0x780>
  80c190:	94bfffc4 	addi	r18,r18,-1
  80c194:	a039883a 	mov	fp,r20
  80c198:	9821883a 	mov	r16,r19
  80c19c:	0023883a 	mov	r17,zero
  80c1a0:	b006923a 	slli	r3,r22,8
  80c1a4:	502cd63a 	srli	r22,r10,24
  80c1a8:	8009883a 	mov	r4,r16
  80c1ac:	182ed43a 	srli	r23,r3,16
  80c1b0:	b0ecb03a 	or	r22,r22,r3
  80c1b4:	da400015 	stw	r9,0(sp)
  80c1b8:	b80b883a 	mov	r5,r23
  80c1bc:	502a923a 	slli	r21,r10,8
  80c1c0:	b53fffcc 	andi	r20,r22,65535
  80c1c4:	080b3e40 	call	80b3e4 <__udivsi3>
  80c1c8:	100b883a 	mov	r5,r2
  80c1cc:	a009883a 	mov	r4,r20
  80c1d0:	1027883a 	mov	r19,r2
  80c1d4:	0800f1c0 	call	800f1c <__mulsi3>
  80c1d8:	8009883a 	mov	r4,r16
  80c1dc:	b80b883a 	mov	r5,r23
  80c1e0:	1021883a 	mov	r16,r2
  80c1e4:	080b4480 	call	80b448 <__umodsi3>
  80c1e8:	1004943a 	slli	r2,r2,16
  80c1ec:	e008d43a 	srli	r4,fp,16
  80c1f0:	da400017 	ldw	r9,0(sp)
  80c1f4:	2088b03a 	or	r4,r4,r2
  80c1f8:	2400042e 	bgeu	r4,r16,80c20c <__divdf3+0x3f0>
  80c1fc:	2589883a 	add	r4,r4,r22
  80c200:	98bfffc4 	addi	r2,r19,-1
  80c204:	2581082e 	bgeu	r4,r22,80c628 <__divdf3+0x80c>
  80c208:	1027883a 	mov	r19,r2
  80c20c:	2421c83a 	sub	r16,r4,r16
  80c210:	b80b883a 	mov	r5,r23
  80c214:	8009883a 	mov	r4,r16
  80c218:	da400215 	stw	r9,8(sp)
  80c21c:	080b3e40 	call	80b3e4 <__udivsi3>
  80c220:	100b883a 	mov	r5,r2
  80c224:	a009883a 	mov	r4,r20
  80c228:	d8800115 	stw	r2,4(sp)
  80c22c:	0800f1c0 	call	800f1c <__mulsi3>
  80c230:	b80b883a 	mov	r5,r23
  80c234:	8009883a 	mov	r4,r16
  80c238:	d8800015 	stw	r2,0(sp)
  80c23c:	080b4480 	call	80b448 <__umodsi3>
  80c240:	100c943a 	slli	r6,r2,16
  80c244:	d8c00017 	ldw	r3,0(sp)
  80c248:	e73fffcc 	andi	fp,fp,65535
  80c24c:	e18cb03a 	or	r6,fp,r6
  80c250:	d9c00117 	ldw	r7,4(sp)
  80c254:	da400217 	ldw	r9,8(sp)
  80c258:	30c0042e 	bgeu	r6,r3,80c26c <__divdf3+0x450>
  80c25c:	358d883a 	add	r6,r6,r22
  80c260:	38bfffc4 	addi	r2,r7,-1
  80c264:	3580ec2e 	bgeu	r6,r22,80c618 <__divdf3+0x7fc>
  80c268:	100f883a 	mov	r7,r2
  80c26c:	9826943a 	slli	r19,r19,16
  80c270:	af3fffcc 	andi	fp,r21,65535
  80c274:	30c7c83a 	sub	r3,r6,r3
  80c278:	99e6b03a 	or	r19,r19,r7
  80c27c:	980ed43a 	srli	r7,r19,16
  80c280:	9abfffcc 	andi	r10,r19,65535
  80c284:	5009883a 	mov	r4,r10
  80c288:	e00b883a 	mov	r5,fp
  80c28c:	da400515 	stw	r9,20(sp)
  80c290:	d8c00315 	stw	r3,12(sp)
  80c294:	da800415 	stw	r10,16(sp)
  80c298:	d9c00015 	stw	r7,0(sp)
  80c29c:	0800f1c0 	call	800f1c <__mulsi3>
  80c2a0:	d9c00017 	ldw	r7,0(sp)
  80c2a4:	e00b883a 	mov	r5,fp
  80c2a8:	d8800215 	stw	r2,8(sp)
  80c2ac:	3809883a 	mov	r4,r7
  80c2b0:	0800f1c0 	call	800f1c <__mulsi3>
  80c2b4:	d9c00017 	ldw	r7,0(sp)
  80c2b8:	a820d43a 	srli	r16,r21,16
  80c2bc:	d8800115 	stw	r2,4(sp)
  80c2c0:	3809883a 	mov	r4,r7
  80c2c4:	800b883a 	mov	r5,r16
  80c2c8:	0800f1c0 	call	800f1c <__mulsi3>
  80c2cc:	da800417 	ldw	r10,16(sp)
  80c2d0:	8009883a 	mov	r4,r16
  80c2d4:	d8800015 	stw	r2,0(sp)
  80c2d8:	500b883a 	mov	r5,r10
  80c2dc:	0800f1c0 	call	800f1c <__mulsi3>
  80c2e0:	d9800217 	ldw	r6,8(sp)
  80c2e4:	d9c00117 	ldw	r7,4(sp)
  80c2e8:	da000017 	ldw	r8,0(sp)
  80c2ec:	3008d43a 	srli	r4,r6,16
  80c2f0:	11c5883a 	add	r2,r2,r7
  80c2f4:	d8c00317 	ldw	r3,12(sp)
  80c2f8:	2089883a 	add	r4,r4,r2
  80c2fc:	da400517 	ldw	r9,20(sp)
  80c300:	21c0022e 	bgeu	r4,r7,80c30c <__divdf3+0x4f0>
  80c304:	00800074 	movhi	r2,1
  80c308:	4091883a 	add	r8,r8,r2
  80c30c:	200ad43a 	srli	r5,r4,16
  80c310:	2008943a 	slli	r4,r4,16
  80c314:	31bfffcc 	andi	r6,r6,65535
  80c318:	2a0b883a 	add	r5,r5,r8
  80c31c:	218d883a 	add	r6,r4,r6
  80c320:	19409436 	bltu	r3,r5,80c574 <__divdf3+0x758>
  80c324:	19409226 	beq	r3,r5,80c570 <__divdf3+0x754>
  80c328:	898dc83a 	sub	r6,r17,r6
  80c32c:	89a3803a 	cmpltu	r17,r17,r6
  80c330:	1947c83a 	sub	r3,r3,r5
  80c334:	1c47c83a 	sub	r3,r3,r17
  80c338:	9440ffc4 	addi	r17,r18,1023
  80c33c:	b0c0d326 	beq	r22,r3,80c68c <__divdf3+0x870>
  80c340:	1809883a 	mov	r4,r3
  80c344:	b80b883a 	mov	r5,r23
  80c348:	d9800315 	stw	r6,12(sp)
  80c34c:	da400215 	stw	r9,8(sp)
  80c350:	d8c00015 	stw	r3,0(sp)
  80c354:	080b3e40 	call	80b3e4 <__udivsi3>
  80c358:	100b883a 	mov	r5,r2
  80c35c:	a009883a 	mov	r4,r20
  80c360:	d8800115 	stw	r2,4(sp)
  80c364:	0800f1c0 	call	800f1c <__mulsi3>
  80c368:	d8c00017 	ldw	r3,0(sp)
  80c36c:	b80b883a 	mov	r5,r23
  80c370:	d8800015 	stw	r2,0(sp)
  80c374:	1809883a 	mov	r4,r3
  80c378:	080b4480 	call	80b448 <__umodsi3>
  80c37c:	d9800317 	ldw	r6,12(sp)
  80c380:	1006943a 	slli	r3,r2,16
  80c384:	da000017 	ldw	r8,0(sp)
  80c388:	3008d43a 	srli	r4,r6,16
  80c38c:	d9c00117 	ldw	r7,4(sp)
  80c390:	da400217 	ldw	r9,8(sp)
  80c394:	20c6b03a 	or	r3,r4,r3
  80c398:	1a00062e 	bgeu	r3,r8,80c3b4 <__divdf3+0x598>
  80c39c:	1d87883a 	add	r3,r3,r22
  80c3a0:	38bfffc4 	addi	r2,r7,-1
  80c3a4:	1d80c836 	bltu	r3,r22,80c6c8 <__divdf3+0x8ac>
  80c3a8:	1a00c72e 	bgeu	r3,r8,80c6c8 <__divdf3+0x8ac>
  80c3ac:	39ffff84 	addi	r7,r7,-2
  80c3b0:	1d87883a 	add	r3,r3,r22
  80c3b4:	1a07c83a 	sub	r3,r3,r8
  80c3b8:	1809883a 	mov	r4,r3
  80c3bc:	b80b883a 	mov	r5,r23
  80c3c0:	d9800415 	stw	r6,16(sp)
  80c3c4:	da400315 	stw	r9,12(sp)
  80c3c8:	d9c00215 	stw	r7,8(sp)
  80c3cc:	d8c00115 	stw	r3,4(sp)
  80c3d0:	080b3e40 	call	80b3e4 <__udivsi3>
  80c3d4:	100b883a 	mov	r5,r2
  80c3d8:	a009883a 	mov	r4,r20
  80c3dc:	d8800015 	stw	r2,0(sp)
  80c3e0:	0800f1c0 	call	800f1c <__mulsi3>
  80c3e4:	d8c00117 	ldw	r3,4(sp)
  80c3e8:	b80b883a 	mov	r5,r23
  80c3ec:	102f883a 	mov	r23,r2
  80c3f0:	1809883a 	mov	r4,r3
  80c3f4:	080b4480 	call	80b448 <__umodsi3>
  80c3f8:	d9800417 	ldw	r6,16(sp)
  80c3fc:	1004943a 	slli	r2,r2,16
  80c400:	da000017 	ldw	r8,0(sp)
  80c404:	31bfffcc 	andi	r6,r6,65535
  80c408:	308cb03a 	or	r6,r6,r2
  80c40c:	d9c00217 	ldw	r7,8(sp)
  80c410:	da400317 	ldw	r9,12(sp)
  80c414:	35c0062e 	bgeu	r6,r23,80c430 <__divdf3+0x614>
  80c418:	358d883a 	add	r6,r6,r22
  80c41c:	40bfffc4 	addi	r2,r8,-1
  80c420:	3580a736 	bltu	r6,r22,80c6c0 <__divdf3+0x8a4>
  80c424:	35c0a62e 	bgeu	r6,r23,80c6c0 <__divdf3+0x8a4>
  80c428:	423fff84 	addi	r8,r8,-2
  80c42c:	358d883a 	add	r6,r6,r22
  80c430:	3828943a 	slli	r20,r7,16
  80c434:	35d5c83a 	sub	r10,r6,r23
  80c438:	e009883a 	mov	r4,fp
  80c43c:	a228b03a 	or	r20,r20,r8
  80c440:	a1ffffcc 	andi	r7,r20,65535
  80c444:	a02ed43a 	srli	r23,r20,16
  80c448:	380b883a 	mov	r5,r7
  80c44c:	da400315 	stw	r9,12(sp)
  80c450:	da800215 	stw	r10,8(sp)
  80c454:	d9c00115 	stw	r7,4(sp)
  80c458:	0800f1c0 	call	800f1c <__mulsi3>
  80c45c:	e00b883a 	mov	r5,fp
  80c460:	b809883a 	mov	r4,r23
  80c464:	1039883a 	mov	fp,r2
  80c468:	0800f1c0 	call	800f1c <__mulsi3>
  80c46c:	8009883a 	mov	r4,r16
  80c470:	b80b883a 	mov	r5,r23
  80c474:	d8800015 	stw	r2,0(sp)
  80c478:	0800f1c0 	call	800f1c <__mulsi3>
  80c47c:	d9c00117 	ldw	r7,4(sp)
  80c480:	8009883a 	mov	r4,r16
  80c484:	1021883a 	mov	r16,r2
  80c488:	380b883a 	mov	r5,r7
  80c48c:	0800f1c0 	call	800f1c <__mulsi3>
  80c490:	d9800017 	ldw	r6,0(sp)
  80c494:	e006d43a 	srli	r3,fp,16
  80c498:	da800217 	ldw	r10,8(sp)
  80c49c:	1185883a 	add	r2,r2,r6
  80c4a0:	1887883a 	add	r3,r3,r2
  80c4a4:	da400317 	ldw	r9,12(sp)
  80c4a8:	1980022e 	bgeu	r3,r6,80c4b4 <__divdf3+0x698>
  80c4ac:	00800074 	movhi	r2,1
  80c4b0:	80a1883a 	add	r16,r16,r2
  80c4b4:	1808d43a 	srli	r4,r3,16
  80c4b8:	1806943a 	slli	r3,r3,16
  80c4bc:	e73fffcc 	andi	fp,fp,65535
  80c4c0:	2409883a 	add	r4,r4,r16
  80c4c4:	1f07883a 	add	r3,r3,fp
  80c4c8:	51000436 	bltu	r10,r4,80c4dc <__divdf3+0x6c0>
  80c4cc:	51000226 	beq	r10,r4,80c4d8 <__divdf3+0x6bc>
  80c4d0:	a5000054 	ori	r20,r20,1
  80c4d4:	003eec06 	br	80c088 <__divdf3+0x26c>
  80c4d8:	183eeb26 	beq	r3,zero,80c088 <__divdf3+0x26c>
  80c4dc:	b28d883a 	add	r6,r22,r10
  80c4e0:	a0bfffc4 	addi	r2,r20,-1
  80c4e4:	35806536 	bltu	r6,r22,80c67c <__divdf3+0x860>
  80c4e8:	31008036 	bltu	r6,r4,80c6ec <__divdf3+0x8d0>
  80c4ec:	31009426 	beq	r6,r4,80c740 <__divdf3+0x924>
  80c4f0:	1029883a 	mov	r20,r2
  80c4f4:	003ff606 	br	80c4d0 <__divdf3+0x6b4>
  80c4f8:	053fffc4 	movi	r20,-1
  80c4fc:	01400044 	movi	r5,1
  80c500:	2c4bc83a 	sub	r5,r5,r17
  80c504:	28800e48 	cmpgei	r2,r5,57
  80c508:	103e931e 	bne	r2,zero,80bf58 <__divdf3+0x13c>
  80c50c:	28800808 	cmpgei	r2,r5,32
  80c510:	1000491e 	bne	r2,zero,80c638 <__divdf3+0x81c>
  80c514:	92010784 	addi	r8,r18,1054
  80c518:	9a04983a 	sll	r2,r19,r8
  80c51c:	a146d83a 	srl	r3,r20,r5
  80c520:	a210983a 	sll	r8,r20,r8
  80c524:	994ad83a 	srl	r5,r19,r5
  80c528:	10e8b03a 	or	r20,r2,r3
  80c52c:	4010c03a 	cmpne	r8,r8,zero
  80c530:	a228b03a 	or	r20,r20,r8
  80c534:	a08001cc 	andi	r2,r20,7
  80c538:	10000726 	beq	r2,zero,80c558 <__divdf3+0x73c>
  80c53c:	a08003cc 	andi	r2,r20,15
  80c540:	10800120 	cmpeqi	r2,r2,4
  80c544:	1000041e 	bne	r2,zero,80c558 <__divdf3+0x73c>
  80c548:	a0800104 	addi	r2,r20,4
  80c54c:	1529803a 	cmpltu	r20,r2,r20
  80c550:	2d0b883a 	add	r5,r5,r20
  80c554:	1029883a 	mov	r20,r2
  80c558:	2880202c 	andhi	r2,r5,128
  80c55c:	10006f26 	beq	r2,zero,80c71c <__divdf3+0x900>
  80c560:	00c00044 	movi	r3,1
  80c564:	000b883a 	mov	r5,zero
  80c568:	0029883a 	mov	r20,zero
  80c56c:	003e7d06 	br	80bf64 <__divdf3+0x148>
  80c570:	89bf6d2e 	bgeu	r17,r6,80c328 <__divdf3+0x50c>
  80c574:	8d63883a 	add	r17,r17,r21
  80c578:	8d45803a 	cmpltu	r2,r17,r21
  80c57c:	1585883a 	add	r2,r2,r22
  80c580:	1887883a 	add	r3,r3,r2
  80c584:	98bfffc4 	addi	r2,r19,-1
  80c588:	b0c0202e 	bgeu	r22,r3,80c60c <__divdf3+0x7f0>
  80c58c:	19405136 	bltu	r3,r5,80c6d4 <__divdf3+0x8b8>
  80c590:	28c04f26 	beq	r5,r3,80c6d0 <__divdf3+0x8b4>
  80c594:	1027883a 	mov	r19,r2
  80c598:	003f6306 	br	80c328 <__divdf3+0x50c>
  80c59c:	a2befc36 	bltu	r20,r10,80c190 <__divdf3+0x374>
  80c5a0:	983897fa 	slli	fp,r19,31
  80c5a4:	a004d07a 	srli	r2,r20,1
  80c5a8:	9820d07a 	srli	r16,r19,1
  80c5ac:	a02297fa 	slli	r17,r20,31
  80c5b0:	e0b8b03a 	or	fp,fp,r2
  80c5b4:	003efa06 	br	80c1a0 <__divdf3+0x384>
  80c5b8:	0800ec80 	call	800ec8 <__clzsi2>
  80c5bc:	11000544 	addi	r4,r2,21
  80c5c0:	20c00748 	cmpgei	r3,r4,29
  80c5c4:	100b883a 	mov	r5,r2
  80c5c8:	10800804 	addi	r2,r2,32
  80c5cc:	183e8226 	beq	r3,zero,80bfd8 <__divdf3+0x1bc>
  80c5d0:	297ffe04 	addi	r5,r5,-8
  80c5d4:	a166983a 	sll	r19,r20,r5
  80c5d8:	0029883a 	mov	r20,zero
  80c5dc:	003e8506 	br	80bff4 <__divdf3+0x1d8>
  80c5e0:	e009883a 	mov	r4,fp
  80c5e4:	0800ec80 	call	800ec8 <__clzsi2>
  80c5e8:	11400544 	addi	r5,r2,21
  80c5ec:	29000748 	cmpgei	r4,r5,29
  80c5f0:	1007883a 	mov	r3,r2
  80c5f4:	10800804 	addi	r2,r2,32
  80c5f8:	203e9026 	beq	r4,zero,80c03c <__divdf3+0x220>
  80c5fc:	18fffe04 	addi	r3,r3,-8
  80c600:	e0ec983a 	sll	r22,fp,r3
  80c604:	0015883a 	mov	r10,zero
  80c608:	003e9306 	br	80c058 <__divdf3+0x23c>
  80c60c:	b0ffe11e 	bne	r22,r3,80c594 <__divdf3+0x778>
  80c610:	8d7fe036 	bltu	r17,r21,80c594 <__divdf3+0x778>
  80c614:	003fdd06 	br	80c58c <__divdf3+0x770>
  80c618:	30ff132e 	bgeu	r6,r3,80c268 <__divdf3+0x44c>
  80c61c:	39ffff84 	addi	r7,r7,-2
  80c620:	358d883a 	add	r6,r6,r22
  80c624:	003f1106 	br	80c26c <__divdf3+0x450>
  80c628:	243ef72e 	bgeu	r4,r16,80c208 <__divdf3+0x3ec>
  80c62c:	9cffff84 	addi	r19,r19,-2
  80c630:	2589883a 	add	r4,r4,r22
  80c634:	003ef506 	br	80c20c <__divdf3+0x3f0>
  80c638:	00fff844 	movi	r3,-31
  80c63c:	1c47c83a 	sub	r3,r3,r17
  80c640:	29400820 	cmpeqi	r5,r5,32
  80c644:	98c6d83a 	srl	r3,r19,r3
  80c648:	2800031e 	bne	r5,zero,80c658 <__divdf3+0x83c>
  80c64c:	91410f84 	addi	r5,r18,1086
  80c650:	994a983a 	sll	r5,r19,r5
  80c654:	a168b03a 	or	r20,r20,r5
  80c658:	a028c03a 	cmpne	r20,r20,zero
  80c65c:	a0e8b03a 	or	r20,r20,r3
  80c660:	a4c001cc 	andi	r19,r20,7
  80c664:	9800291e 	bne	r19,zero,80c70c <__divdf3+0x8f0>
  80c668:	000b883a 	mov	r5,zero
  80c66c:	a028d0fa 	srli	r20,r20,3
  80c670:	0007883a 	mov	r3,zero
  80c674:	a4e8b03a 	or	r20,r20,r19
  80c678:	003e3a06 	br	80bf64 <__divdf3+0x148>
  80c67c:	1029883a 	mov	r20,r2
  80c680:	313f931e 	bne	r6,r4,80c4d0 <__divdf3+0x6b4>
  80c684:	1d7f921e 	bne	r3,r21,80c4d0 <__divdf3+0x6b4>
  80c688:	003e7f06 	br	80c088 <__divdf3+0x26c>
  80c68c:	047f9a0e 	bge	zero,r17,80c4f8 <__divdf3+0x6dc>
  80c690:	0009883a 	mov	r4,zero
  80c694:	05000044 	movi	r20,1
  80c698:	9d27883a 	add	r19,r19,r20
  80c69c:	003e7e06 	br	80c098 <__divdf3+0x27c>
  80c6a0:	a08003cc 	andi	r2,r20,15
  80c6a4:	10800118 	cmpnei	r2,r2,4
  80c6a8:	103e7a26 	beq	r2,zero,80c094 <__divdf3+0x278>
  80c6ac:	a1000104 	addi	r4,r20,4
  80c6b0:	00bffec4 	movi	r2,-5
  80c6b4:	2008d0fa 	srli	r4,r4,3
  80c6b8:	1529803a 	cmpltu	r20,r2,r20
  80c6bc:	003ff606 	br	80c698 <__divdf3+0x87c>
  80c6c0:	1011883a 	mov	r8,r2
  80c6c4:	003f5a06 	br	80c430 <__divdf3+0x614>
  80c6c8:	100f883a 	mov	r7,r2
  80c6cc:	003f3906 	br	80c3b4 <__divdf3+0x598>
  80c6d0:	89bfb02e 	bgeu	r17,r6,80c594 <__divdf3+0x778>
  80c6d4:	8d63883a 	add	r17,r17,r21
  80c6d8:	8d45803a 	cmpltu	r2,r17,r21
  80c6dc:	1585883a 	add	r2,r2,r22
  80c6e0:	9cffff84 	addi	r19,r19,-2
  80c6e4:	1887883a 	add	r3,r3,r2
  80c6e8:	003f0f06 	br	80c328 <__divdf3+0x50c>
  80c6ec:	ad45883a 	add	r2,r21,r21
  80c6f0:	156b803a 	cmpltu	r21,r2,r21
  80c6f4:	adad883a 	add	r22,r21,r22
  80c6f8:	358d883a 	add	r6,r6,r22
  80c6fc:	a53fff84 	addi	r20,r20,-2
  80c700:	102b883a 	mov	r21,r2
  80c704:	313fdf26 	beq	r6,r4,80c684 <__divdf3+0x868>
  80c708:	003f7106 	br	80c4d0 <__divdf3+0x6b4>
  80c70c:	a08003cc 	andi	r2,r20,15
  80c710:	10800118 	cmpnei	r2,r2,4
  80c714:	000b883a 	mov	r5,zero
  80c718:	103f8b1e 	bne	r2,zero,80c548 <__divdf3+0x72c>
  80c71c:	2804927a 	slli	r2,r5,9
  80c720:	2826977a 	slli	r19,r5,29
  80c724:	100ad33a 	srli	r5,r2,12
  80c728:	003fd006 	br	80c66c <__divdf3+0x850>
  80c72c:	00800434 	movhi	r2,16
  80c730:	99400234 	orhi	r5,r19,8
  80c734:	10bfffc4 	addi	r2,r2,-1
  80c738:	288a703a 	and	r5,r5,r2
  80c73c:	003e7f06 	br	80c13c <__divdf3+0x320>
  80c740:	a8ffea36 	bltu	r21,r3,80c6ec <__divdf3+0x8d0>
  80c744:	1029883a 	mov	r20,r2
  80c748:	1d7f611e 	bne	r3,r21,80c4d0 <__divdf3+0x6b4>
  80c74c:	003e4e06 	br	80c088 <__divdf3+0x26c>

0080c750 <__eqdf2>:
  80c750:	2810d53a 	srli	r8,r5,20
  80c754:	3806d53a 	srli	r3,r7,20
  80c758:	00800434 	movhi	r2,16
  80c75c:	4201ffcc 	andi	r8,r8,2047
  80c760:	10bfffc4 	addi	r2,r2,-1
  80c764:	4241ffd8 	cmpnei	r9,r8,2047
  80c768:	2814d7fa 	srli	r10,r5,31
  80c76c:	3816d7fa 	srli	r11,r7,31
  80c770:	288a703a 	and	r5,r5,r2
  80c774:	388e703a 	and	r7,r7,r2
  80c778:	1881ffcc 	andi	r2,r3,2047
  80c77c:	48000626 	beq	r9,zero,80c798 <__eqdf2+0x48>
  80c780:	10c1ffe0 	cmpeqi	r3,r2,2047
  80c784:	1800021e 	bne	r3,zero,80c790 <__eqdf2+0x40>
  80c788:	4080011e 	bne	r8,r2,80c790 <__eqdf2+0x40>
  80c78c:	29c00826 	beq	r5,r7,80c7b0 <__eqdf2+0x60>
  80c790:	00800044 	movi	r2,1
  80c794:	f800283a 	ret
  80c798:	2906b03a 	or	r3,r5,r4
  80c79c:	183ffc1e 	bne	r3,zero,80c790 <__eqdf2+0x40>
  80c7a0:	1081ffd8 	cmpnei	r2,r2,2047
  80c7a4:	103ffa1e 	bne	r2,zero,80c790 <__eqdf2+0x40>
  80c7a8:	398eb03a 	or	r7,r7,r6
  80c7ac:	383ff81e 	bne	r7,zero,80c790 <__eqdf2+0x40>
  80c7b0:	21bff71e 	bne	r4,r6,80c790 <__eqdf2+0x40>
  80c7b4:	52c00426 	beq	r10,r11,80c7c8 <__eqdf2+0x78>
  80c7b8:	403ff51e 	bne	r8,zero,80c790 <__eqdf2+0x40>
  80c7bc:	290ab03a 	or	r5,r5,r4
  80c7c0:	2804c03a 	cmpne	r2,r5,zero
  80c7c4:	f800283a 	ret
  80c7c8:	0005883a 	mov	r2,zero
  80c7cc:	f800283a 	ret

0080c7d0 <__gedf2>:
  80c7d0:	2810d53a 	srli	r8,r5,20
  80c7d4:	3812d53a 	srli	r9,r7,20
  80c7d8:	00c00434 	movhi	r3,16
  80c7dc:	4201ffcc 	andi	r8,r8,2047
  80c7e0:	18ffffc4 	addi	r3,r3,-1
  80c7e4:	4281ffd8 	cmpnei	r10,r8,2047
  80c7e8:	2816d7fa 	srli	r11,r5,31
  80c7ec:	3804d7fa 	srli	r2,r7,31
  80c7f0:	28ca703a 	and	r5,r5,r3
  80c7f4:	38ce703a 	and	r7,r7,r3
  80c7f8:	48c1ffcc 	andi	r3,r9,2047
  80c7fc:	50000b26 	beq	r10,zero,80c82c <__gedf2+0x5c>
  80c800:	1a41ffd8 	cmpnei	r9,r3,2047
  80c804:	48000d26 	beq	r9,zero,80c83c <__gedf2+0x6c>
  80c808:	4000191e 	bne	r8,zero,80c870 <__gedf2+0xa0>
  80c80c:	2914b03a 	or	r10,r5,r4
  80c810:	5013003a 	cmpeq	r9,r10,zero
  80c814:	1800131e 	bne	r3,zero,80c864 <__gedf2+0x94>
  80c818:	3998b03a 	or	r12,r7,r6
  80c81c:	6000111e 	bne	r12,zero,80c864 <__gedf2+0x94>
  80c820:	50000a1e 	bne	r10,zero,80c84c <__gedf2+0x7c>
  80c824:	0005883a 	mov	r2,zero
  80c828:	f800283a 	ret
  80c82c:	2912b03a 	or	r9,r5,r4
  80c830:	48001e1e 	bne	r9,zero,80c8ac <__gedf2+0xdc>
  80c834:	1a41ffe0 	cmpeqi	r9,r3,2047
  80c838:	48000d26 	beq	r9,zero,80c870 <__gedf2+0xa0>
  80c83c:	3992b03a 	or	r9,r7,r6
  80c840:	48001a1e 	bne	r9,zero,80c8ac <__gedf2+0xdc>
  80c844:	40000526 	beq	r8,zero,80c85c <__gedf2+0x8c>
  80c848:	58800d26 	beq	r11,r2,80c880 <__gedf2+0xb0>
  80c84c:	00800044 	movi	r2,1
  80c850:	58000626 	beq	r11,zero,80c86c <__gedf2+0x9c>
  80c854:	00bfffc4 	movi	r2,-1
  80c858:	f800283a 	ret
  80c85c:	2912b03a 	or	r9,r5,r4
  80c860:	4813003a 	cmpeq	r9,r9,zero
  80c864:	483ff826 	beq	r9,zero,80c848 <__gedf2+0x78>
  80c868:	103ffa26 	beq	r2,zero,80c854 <__gedf2+0x84>
  80c86c:	f800283a 	ret
  80c870:	183ff51e 	bne	r3,zero,80c848 <__gedf2+0x78>
  80c874:	3992b03a 	or	r9,r7,r6
  80c878:	483ff31e 	bne	r9,zero,80c848 <__gedf2+0x78>
  80c87c:	003ff306 	br	80c84c <__gedf2+0x7c>
  80c880:	1a000716 	blt	r3,r8,80c8a0 <__gedf2+0xd0>
  80c884:	40fff816 	blt	r8,r3,80c868 <__gedf2+0x98>
  80c888:	397ff036 	bltu	r7,r5,80c84c <__gedf2+0x7c>
  80c88c:	29c00926 	beq	r5,r7,80c8b4 <__gedf2+0xe4>
  80c890:	29ffe42e 	bgeu	r5,r7,80c824 <__gedf2+0x54>
  80c894:	583fef26 	beq	r11,zero,80c854 <__gedf2+0x84>
  80c898:	5805883a 	mov	r2,r11
  80c89c:	f800283a 	ret
  80c8a0:	103fec1e 	bne	r2,zero,80c854 <__gedf2+0x84>
  80c8a4:	00800044 	movi	r2,1
  80c8a8:	f800283a 	ret
  80c8ac:	00bfff84 	movi	r2,-2
  80c8b0:	f800283a 	ret
  80c8b4:	313fe536 	bltu	r6,r4,80c84c <__gedf2+0x7c>
  80c8b8:	21bfda2e 	bgeu	r4,r6,80c824 <__gedf2+0x54>
  80c8bc:	003ff506 	br	80c894 <__gedf2+0xc4>

0080c8c0 <__ledf2>:
  80c8c0:	2810d53a 	srli	r8,r5,20
  80c8c4:	3812d53a 	srli	r9,r7,20
  80c8c8:	00c00434 	movhi	r3,16
  80c8cc:	4201ffcc 	andi	r8,r8,2047
  80c8d0:	18ffffc4 	addi	r3,r3,-1
  80c8d4:	4281ffd8 	cmpnei	r10,r8,2047
  80c8d8:	2816d7fa 	srli	r11,r5,31
  80c8dc:	3804d7fa 	srli	r2,r7,31
  80c8e0:	28ca703a 	and	r5,r5,r3
  80c8e4:	38ce703a 	and	r7,r7,r3
  80c8e8:	48c1ffcc 	andi	r3,r9,2047
  80c8ec:	50000b26 	beq	r10,zero,80c91c <__ledf2+0x5c>
  80c8f0:	1a41ffd8 	cmpnei	r9,r3,2047
  80c8f4:	48000d26 	beq	r9,zero,80c92c <__ledf2+0x6c>
  80c8f8:	40001b1e 	bne	r8,zero,80c968 <__ledf2+0xa8>
  80c8fc:	2914b03a 	or	r10,r5,r4
  80c900:	5013003a 	cmpeq	r9,r10,zero
  80c904:	18000e1e 	bne	r3,zero,80c940 <__ledf2+0x80>
  80c908:	3998b03a 	or	r12,r7,r6
  80c90c:	60000c1e 	bne	r12,zero,80c940 <__ledf2+0x80>
  80c910:	50000d1e 	bne	r10,zero,80c948 <__ledf2+0x88>
  80c914:	0005883a 	mov	r2,zero
  80c918:	f800283a 	ret
  80c91c:	2912b03a 	or	r9,r5,r4
  80c920:	48000d1e 	bne	r9,zero,80c958 <__ledf2+0x98>
  80c924:	1a41ffe0 	cmpeqi	r9,r3,2047
  80c928:	48000f26 	beq	r9,zero,80c968 <__ledf2+0xa8>
  80c92c:	3992b03a 	or	r9,r7,r6
  80c930:	4800091e 	bne	r9,zero,80c958 <__ledf2+0x98>
  80c934:	4000031e 	bne	r8,zero,80c944 <__ledf2+0x84>
  80c938:	2912b03a 	or	r9,r5,r4
  80c93c:	4813003a 	cmpeq	r9,r9,zero
  80c940:	4800071e 	bne	r9,zero,80c960 <__ledf2+0xa0>
  80c944:	58800c26 	beq	r11,r2,80c978 <__ledf2+0xb8>
  80c948:	00800044 	movi	r2,1
  80c94c:	58000526 	beq	r11,zero,80c964 <__ledf2+0xa4>
  80c950:	00bfffc4 	movi	r2,-1
  80c954:	f800283a 	ret
  80c958:	00800084 	movi	r2,2
  80c95c:	f800283a 	ret
  80c960:	103ffb26 	beq	r2,zero,80c950 <__ledf2+0x90>
  80c964:	f800283a 	ret
  80c968:	183ff61e 	bne	r3,zero,80c944 <__ledf2+0x84>
  80c96c:	3992b03a 	or	r9,r7,r6
  80c970:	483ff41e 	bne	r9,zero,80c944 <__ledf2+0x84>
  80c974:	003ff406 	br	80c948 <__ledf2+0x88>
  80c978:	1a00030e 	bge	r3,r8,80c988 <__ledf2+0xc8>
  80c97c:	103ff41e 	bne	r2,zero,80c950 <__ledf2+0x90>
  80c980:	00800044 	movi	r2,1
  80c984:	f800283a 	ret
  80c988:	40fff516 	blt	r8,r3,80c960 <__ledf2+0xa0>
  80c98c:	397fee36 	bltu	r7,r5,80c948 <__ledf2+0x88>
  80c990:	29c00426 	beq	r5,r7,80c9a4 <__ledf2+0xe4>
  80c994:	29ffdf2e 	bgeu	r5,r7,80c914 <__ledf2+0x54>
  80c998:	583fed26 	beq	r11,zero,80c950 <__ledf2+0x90>
  80c99c:	5805883a 	mov	r2,r11
  80c9a0:	f800283a 	ret
  80c9a4:	313fe836 	bltu	r6,r4,80c948 <__ledf2+0x88>
  80c9a8:	21bfda2e 	bgeu	r4,r6,80c914 <__ledf2+0x54>
  80c9ac:	003ffa06 	br	80c998 <__ledf2+0xd8>

0080c9b0 <__muldf3>:
  80c9b0:	2810d53a 	srli	r8,r5,20
  80c9b4:	defff004 	addi	sp,sp,-64
  80c9b8:	00800434 	movhi	r2,16
  80c9bc:	df000e15 	stw	fp,56(sp)
  80c9c0:	dd000a15 	stw	r20,40(sp)
  80c9c4:	dcc00915 	stw	r19,36(sp)
  80c9c8:	dc400715 	stw	r17,28(sp)
  80c9cc:	10bfffc4 	addi	r2,r2,-1
  80c9d0:	dfc00f15 	stw	ra,60(sp)
  80c9d4:	ddc00d15 	stw	r23,52(sp)
  80c9d8:	dd800c15 	stw	r22,48(sp)
  80c9dc:	dd400b15 	stw	r21,44(sp)
  80c9e0:	dc800815 	stw	r18,32(sp)
  80c9e4:	dc000615 	stw	r16,24(sp)
  80c9e8:	4201ffcc 	andi	r8,r8,2047
  80c9ec:	2828d7fa 	srli	r20,r5,31
  80c9f0:	2023883a 	mov	r17,r4
  80c9f4:	3039883a 	mov	fp,r6
  80c9f8:	28a6703a 	and	r19,r5,r2
  80c9fc:	40005a26 	beq	r8,zero,80cb68 <__muldf3+0x1b8>
  80ca00:	4081ffe0 	cmpeqi	r2,r8,2047
  80ca04:	10006c1e 	bne	r2,zero,80cbb8 <__muldf3+0x208>
  80ca08:	980a90fa 	slli	r5,r19,3
  80ca0c:	2026d77a 	srli	r19,r4,29
  80ca10:	202490fa 	slli	r18,r4,3
  80ca14:	423f0044 	addi	r8,r8,-1023
  80ca18:	9966b03a 	or	r19,r19,r5
  80ca1c:	9cc02034 	orhi	r19,r19,128
  80ca20:	002b883a 	mov	r21,zero
  80ca24:	002d883a 	mov	r22,zero
  80ca28:	3804d53a 	srli	r2,r7,20
  80ca2c:	00c00434 	movhi	r3,16
  80ca30:	18ffffc4 	addi	r3,r3,-1
  80ca34:	1081ffcc 	andi	r2,r2,2047
  80ca38:	382ed7fa 	srli	r23,r7,31
  80ca3c:	38e0703a 	and	r16,r7,r3
  80ca40:	10006426 	beq	r2,zero,80cbd4 <__muldf3+0x224>
  80ca44:	10c1ffe0 	cmpeqi	r3,r2,2047
  80ca48:	1800211e 	bne	r3,zero,80cad0 <__muldf3+0x120>
  80ca4c:	e008d77a 	srli	r4,fp,29
  80ca50:	802090fa 	slli	r16,r16,3
  80ca54:	e02290fa 	slli	r17,fp,3
  80ca58:	10bf0044 	addi	r2,r2,-1023
  80ca5c:	2420b03a 	or	r16,r4,r16
  80ca60:	84002034 	orhi	r16,r16,128
  80ca64:	4091883a 	add	r8,r8,r2
  80ca68:	0009883a 	mov	r4,zero
  80ca6c:	a8800428 	cmpgeui	r2,r21,16
  80ca70:	a5ccf03a 	xor	r6,r20,r23
  80ca74:	41c00044 	addi	r7,r8,1
  80ca78:	10006d1e 	bne	r2,zero,80cc30 <__muldf3+0x280>
  80ca7c:	a80490ba 	slli	r2,r21,2
  80ca80:	00c02074 	movhi	r3,129
  80ca84:	10c7883a 	add	r3,r2,r3
  80ca88:	18b2a417 	ldw	r2,-13680(r3)
  80ca8c:	1000683a 	jmp	r2
  80ca90:	0080cc30 	cmpltui	r2,zero,816
  80ca94:	0080caf0 	cmpltui	r2,zero,811
  80ca98:	0080caf0 	cmpltui	r2,zero,811
  80ca9c:	0080caec 	andhi	r2,zero,811
  80caa0:	0080cafc 	xorhi	r2,zero,811
  80caa4:	0080cafc 	xorhi	r2,zero,811
  80caa8:	0080cfac 	andhi	r2,zero,830
  80caac:	0080caec 	andhi	r2,zero,811
  80cab0:	0080cafc 	xorhi	r2,zero,811
  80cab4:	0080cfac 	andhi	r2,zero,830
  80cab8:	0080cafc 	xorhi	r2,zero,811
  80cabc:	0080caec 	andhi	r2,zero,811
  80cac0:	0080cf5c 	xori	r2,zero,829
  80cac4:	0080cf5c 	xori	r2,zero,829
  80cac8:	0080cf5c 	xori	r2,zero,829
  80cacc:	0080d038 	rdprs	r2,zero,832
  80cad0:	e422b03a 	or	r17,fp,r16
  80cad4:	4201ffc4 	addi	r8,r8,2047
  80cad8:	8801221e 	bne	r17,zero,80cf64 <__muldf3+0x5b4>
  80cadc:	ad400094 	ori	r21,r21,2
  80cae0:	0021883a 	mov	r16,zero
  80cae4:	01000084 	movi	r4,2
  80cae8:	003fe006 	br	80ca6c <__muldf3+0xbc>
  80caec:	b80d883a 	mov	r6,r23
  80caf0:	8027883a 	mov	r19,r16
  80caf4:	8825883a 	mov	r18,r17
  80caf8:	202d883a 	mov	r22,r4
  80cafc:	b08000a0 	cmpeqi	r2,r22,2
  80cb00:	1000471e 	bne	r2,zero,80cc20 <__muldf3+0x270>
  80cb04:	b08000e0 	cmpeqi	r2,r22,3
  80cb08:	10018e1e 	bne	r2,zero,80d144 <__muldf3+0x794>
  80cb0c:	b0800060 	cmpeqi	r2,r22,1
  80cb10:	1000f826 	beq	r2,zero,80cef4 <__muldf3+0x544>
  80cb14:	0007883a 	mov	r3,zero
  80cb18:	0027883a 	mov	r19,zero
  80cb1c:	0025883a 	mov	r18,zero
  80cb20:	1806953a 	slli	r3,r3,20
  80cb24:	31803fcc 	andi	r6,r6,255
  80cb28:	300c97fa 	slli	r6,r6,31
  80cb2c:	1cc6b03a 	or	r3,r3,r19
  80cb30:	9005883a 	mov	r2,r18
  80cb34:	1986b03a 	or	r3,r3,r6
  80cb38:	dfc00f17 	ldw	ra,60(sp)
  80cb3c:	df000e17 	ldw	fp,56(sp)
  80cb40:	ddc00d17 	ldw	r23,52(sp)
  80cb44:	dd800c17 	ldw	r22,48(sp)
  80cb48:	dd400b17 	ldw	r21,44(sp)
  80cb4c:	dd000a17 	ldw	r20,40(sp)
  80cb50:	dcc00917 	ldw	r19,36(sp)
  80cb54:	dc800817 	ldw	r18,32(sp)
  80cb58:	dc400717 	ldw	r17,28(sp)
  80cb5c:	dc000617 	ldw	r16,24(sp)
  80cb60:	dec01004 	addi	sp,sp,64
  80cb64:	f800283a 	ret
  80cb68:	9924b03a 	or	r18,r19,r4
  80cb6c:	90010a26 	beq	r18,zero,80cf98 <__muldf3+0x5e8>
  80cb70:	d9c00015 	stw	r7,0(sp)
  80cb74:	98014d26 	beq	r19,zero,80d0ac <__muldf3+0x6fc>
  80cb78:	9809883a 	mov	r4,r19
  80cb7c:	0800ec80 	call	800ec8 <__clzsi2>
  80cb80:	d9c00017 	ldw	r7,0(sp)
  80cb84:	113ffd44 	addi	r4,r2,-11
  80cb88:	00c00744 	movi	r3,29
  80cb8c:	14bffe04 	addi	r18,r2,-8
  80cb90:	1907c83a 	sub	r3,r3,r4
  80cb94:	9ca6983a 	sll	r19,r19,r18
  80cb98:	88c6d83a 	srl	r3,r17,r3
  80cb9c:	8ca4983a 	sll	r18,r17,r18
  80cba0:	1ce6b03a 	or	r19,r3,r19
  80cba4:	023f0344 	movi	r8,-1011
  80cba8:	4091c83a 	sub	r8,r8,r2
  80cbac:	002b883a 	mov	r21,zero
  80cbb0:	002d883a 	mov	r22,zero
  80cbb4:	003f9c06 	br	80ca28 <__muldf3+0x78>
  80cbb8:	9924b03a 	or	r18,r19,r4
  80cbbc:	9000f11e 	bne	r18,zero,80cf84 <__muldf3+0x5d4>
  80cbc0:	0027883a 	mov	r19,zero
  80cbc4:	05400204 	movi	r21,8
  80cbc8:	0201ffc4 	movi	r8,2047
  80cbcc:	05800084 	movi	r22,2
  80cbd0:	003f9506 	br	80ca28 <__muldf3+0x78>
  80cbd4:	e422b03a 	or	r17,fp,r16
  80cbd8:	8800e626 	beq	r17,zero,80cf74 <__muldf3+0x5c4>
  80cbdc:	da000015 	stw	r8,0(sp)
  80cbe0:	80012626 	beq	r16,zero,80d07c <__muldf3+0x6cc>
  80cbe4:	8009883a 	mov	r4,r16
  80cbe8:	0800ec80 	call	800ec8 <__clzsi2>
  80cbec:	da000017 	ldw	r8,0(sp)
  80cbf0:	117ffd44 	addi	r5,r2,-11
  80cbf4:	01000744 	movi	r4,29
  80cbf8:	147ffe04 	addi	r17,r2,-8
  80cbfc:	2149c83a 	sub	r4,r4,r5
  80cc00:	8460983a 	sll	r16,r16,r17
  80cc04:	e108d83a 	srl	r4,fp,r4
  80cc08:	e462983a 	sll	r17,fp,r17
  80cc0c:	2420b03a 	or	r16,r4,r16
  80cc10:	4091c83a 	sub	r8,r8,r2
  80cc14:	423f0344 	addi	r8,r8,-1011
  80cc18:	0009883a 	mov	r4,zero
  80cc1c:	003f9306 	br	80ca6c <__muldf3+0xbc>
  80cc20:	00c1ffc4 	movi	r3,2047
  80cc24:	0027883a 	mov	r19,zero
  80cc28:	0025883a 	mov	r18,zero
  80cc2c:	003fbc06 	br	80cb20 <__muldf3+0x170>
  80cc30:	9028d43a 	srli	r20,r18,16
  80cc34:	8f3fffcc 	andi	fp,r17,65535
  80cc38:	957fffcc 	andi	r21,r18,65535
  80cc3c:	a80b883a 	mov	r5,r21
  80cc40:	e009883a 	mov	r4,fp
  80cc44:	d9800315 	stw	r6,12(sp)
  80cc48:	da000215 	stw	r8,8(sp)
  80cc4c:	d9c00115 	stw	r7,4(sp)
  80cc50:	8822d43a 	srli	r17,r17,16
  80cc54:	0800f1c0 	call	800f1c <__mulsi3>
  80cc58:	e00b883a 	mov	r5,fp
  80cc5c:	a009883a 	mov	r4,r20
  80cc60:	102d883a 	mov	r22,r2
  80cc64:	0800f1c0 	call	800f1c <__mulsi3>
  80cc68:	880b883a 	mov	r5,r17
  80cc6c:	a009883a 	mov	r4,r20
  80cc70:	102f883a 	mov	r23,r2
  80cc74:	0800f1c0 	call	800f1c <__mulsi3>
  80cc78:	a80b883a 	mov	r5,r21
  80cc7c:	8809883a 	mov	r4,r17
  80cc80:	d8800015 	stw	r2,0(sp)
  80cc84:	0800f1c0 	call	800f1c <__mulsi3>
  80cc88:	b006d43a 	srli	r3,r22,16
  80cc8c:	15e5883a 	add	r18,r2,r23
  80cc90:	d9c00117 	ldw	r7,4(sp)
  80cc94:	1c87883a 	add	r3,r3,r18
  80cc98:	da000217 	ldw	r8,8(sp)
  80cc9c:	d9800317 	ldw	r6,12(sp)
  80cca0:	1dc0042e 	bgeu	r3,r23,80ccb4 <__muldf3+0x304>
  80cca4:	d9000017 	ldw	r4,0(sp)
  80cca8:	00800074 	movhi	r2,1
  80ccac:	2085883a 	add	r2,r4,r2
  80ccb0:	d8800015 	stw	r2,0(sp)
  80ccb4:	1804943a 	slli	r2,r3,16
  80ccb8:	85ffffcc 	andi	r23,r16,65535
  80ccbc:	b5bfffcc 	andi	r22,r22,65535
  80ccc0:	1585883a 	add	r2,r2,r22
  80ccc4:	a80b883a 	mov	r5,r21
  80ccc8:	b809883a 	mov	r4,r23
  80cccc:	1824d43a 	srli	r18,r3,16
  80ccd0:	d9800515 	stw	r6,20(sp)
  80ccd4:	da000415 	stw	r8,16(sp)
  80ccd8:	d9c00315 	stw	r7,12(sp)
  80ccdc:	8020d43a 	srli	r16,r16,16
  80cce0:	d8800115 	stw	r2,4(sp)
  80cce4:	0800f1c0 	call	800f1c <__mulsi3>
  80cce8:	a009883a 	mov	r4,r20
  80ccec:	b80b883a 	mov	r5,r23
  80ccf0:	d8800215 	stw	r2,8(sp)
  80ccf4:	0800f1c0 	call	800f1c <__mulsi3>
  80ccf8:	a009883a 	mov	r4,r20
  80ccfc:	800b883a 	mov	r5,r16
  80cd00:	102d883a 	mov	r22,r2
  80cd04:	0800f1c0 	call	800f1c <__mulsi3>
  80cd08:	a80b883a 	mov	r5,r21
  80cd0c:	8009883a 	mov	r4,r16
  80cd10:	1029883a 	mov	r20,r2
  80cd14:	0800f1c0 	call	800f1c <__mulsi3>
  80cd18:	da800217 	ldw	r10,8(sp)
  80cd1c:	1585883a 	add	r2,r2,r22
  80cd20:	d9c00317 	ldw	r7,12(sp)
  80cd24:	5006d43a 	srli	r3,r10,16
  80cd28:	da000417 	ldw	r8,16(sp)
  80cd2c:	d9800517 	ldw	r6,20(sp)
  80cd30:	1887883a 	add	r3,r3,r2
  80cd34:	1d80022e 	bgeu	r3,r22,80cd40 <__muldf3+0x390>
  80cd38:	00800074 	movhi	r2,1
  80cd3c:	a0a9883a 	add	r20,r20,r2
  80cd40:	1804d43a 	srli	r2,r3,16
  80cd44:	1806943a 	slli	r3,r3,16
  80cd48:	982cd43a 	srli	r22,r19,16
  80cd4c:	9d7fffcc 	andi	r21,r19,65535
  80cd50:	e009883a 	mov	r4,fp
  80cd54:	54ffffcc 	andi	r19,r10,65535
  80cd58:	a80b883a 	mov	r5,r21
  80cd5c:	1ce7883a 	add	r19,r3,r19
  80cd60:	d9800515 	stw	r6,20(sp)
  80cd64:	da000415 	stw	r8,16(sp)
  80cd68:	d9c00315 	stw	r7,12(sp)
  80cd6c:	1529883a 	add	r20,r2,r20
  80cd70:	0800f1c0 	call	800f1c <__mulsi3>
  80cd74:	e00b883a 	mov	r5,fp
  80cd78:	b009883a 	mov	r4,r22
  80cd7c:	d8800215 	stw	r2,8(sp)
  80cd80:	0800f1c0 	call	800f1c <__mulsi3>
  80cd84:	8809883a 	mov	r4,r17
  80cd88:	b00b883a 	mov	r5,r22
  80cd8c:	1039883a 	mov	fp,r2
  80cd90:	0800f1c0 	call	800f1c <__mulsi3>
  80cd94:	8809883a 	mov	r4,r17
  80cd98:	a80b883a 	mov	r5,r21
  80cd9c:	1023883a 	mov	r17,r2
  80cda0:	0800f1c0 	call	800f1c <__mulsi3>
  80cda4:	d8c00217 	ldw	r3,8(sp)
  80cda8:	1705883a 	add	r2,r2,fp
  80cdac:	d9c00317 	ldw	r7,12(sp)
  80cdb0:	1808d43a 	srli	r4,r3,16
  80cdb4:	da000417 	ldw	r8,16(sp)
  80cdb8:	d9800517 	ldw	r6,20(sp)
  80cdbc:	2089883a 	add	r4,r4,r2
  80cdc0:	94e5883a 	add	r18,r18,r19
  80cdc4:	2700022e 	bgeu	r4,fp,80cdd0 <__muldf3+0x420>
  80cdc8:	00800074 	movhi	r2,1
  80cdcc:	88a3883a 	add	r17,r17,r2
  80cdd0:	2004d43a 	srli	r2,r4,16
  80cdd4:	2038943a 	slli	fp,r4,16
  80cdd8:	18ffffcc 	andi	r3,r3,65535
  80cddc:	b809883a 	mov	r4,r23
  80cde0:	a80b883a 	mov	r5,r21
  80cde4:	d9800415 	stw	r6,16(sp)
  80cde8:	da000315 	stw	r8,12(sp)
  80cdec:	d9c00215 	stw	r7,8(sp)
  80cdf0:	e0f9883a 	add	fp,fp,r3
  80cdf4:	1463883a 	add	r17,r2,r17
  80cdf8:	0800f1c0 	call	800f1c <__mulsi3>
  80cdfc:	b80b883a 	mov	r5,r23
  80ce00:	b009883a 	mov	r4,r22
  80ce04:	102f883a 	mov	r23,r2
  80ce08:	0800f1c0 	call	800f1c <__mulsi3>
  80ce0c:	b00b883a 	mov	r5,r22
  80ce10:	8009883a 	mov	r4,r16
  80ce14:	102d883a 	mov	r22,r2
  80ce18:	0800f1c0 	call	800f1c <__mulsi3>
  80ce1c:	a80b883a 	mov	r5,r21
  80ce20:	8009883a 	mov	r4,r16
  80ce24:	1021883a 	mov	r16,r2
  80ce28:	0800f1c0 	call	800f1c <__mulsi3>
  80ce2c:	b80ad43a 	srli	r5,r23,16
  80ce30:	1585883a 	add	r2,r2,r22
  80ce34:	d9c00217 	ldw	r7,8(sp)
  80ce38:	288b883a 	add	r5,r5,r2
  80ce3c:	da000317 	ldw	r8,12(sp)
  80ce40:	d9800417 	ldw	r6,16(sp)
  80ce44:	2d80022e 	bgeu	r5,r22,80ce50 <__muldf3+0x4a0>
  80ce48:	00800074 	movhi	r2,1
  80ce4c:	80a1883a 	add	r16,r16,r2
  80ce50:	2806943a 	slli	r3,r5,16
  80ce54:	d8800017 	ldw	r2,0(sp)
  80ce58:	bdffffcc 	andi	r23,r23,65535
  80ce5c:	1dc7883a 	add	r3,r3,r23
  80ce60:	90ab883a 	add	r21,r18,r2
  80ce64:	acd5803a 	cmpltu	r10,r21,r19
  80ce68:	1d07883a 	add	r3,r3,r20
  80ce6c:	af2b883a 	add	r21,r21,fp
  80ce70:	1a97883a 	add	r11,r3,r10
  80ce74:	af09803a 	cmpltu	r4,r21,fp
  80ce78:	2826d43a 	srli	r19,r5,16
  80ce7c:	5c53883a 	add	r9,r11,r17
  80ce80:	4905883a 	add	r2,r9,r4
  80ce84:	1d29803a 	cmpltu	r20,r3,r20
  80ce88:	5a95803a 	cmpltu	r10,r11,r10
  80ce8c:	1109803a 	cmpltu	r4,r2,r4
  80ce90:	a2a8b03a 	or	r20,r20,r10
  80ce94:	4c63803a 	cmpltu	r17,r9,r17
  80ce98:	a4e7883a 	add	r19,r20,r19
  80ce9c:	8908b03a 	or	r4,r17,r4
  80cea0:	a824927a 	slli	r18,r21,9
  80cea4:	d8c00117 	ldw	r3,4(sp)
  80cea8:	9927883a 	add	r19,r19,r4
  80ceac:	9c27883a 	add	r19,r19,r16
  80ceb0:	9826927a 	slli	r19,r19,9
  80ceb4:	a82ad5fa 	srli	r21,r21,23
  80ceb8:	100ad5fa 	srli	r5,r2,23
  80cebc:	90e4b03a 	or	r18,r18,r3
  80cec0:	1004927a 	slli	r2,r2,9
  80cec4:	9024c03a 	cmpne	r18,r18,zero
  80cec8:	9564b03a 	or	r18,r18,r21
  80cecc:	98c0402c 	andhi	r3,r19,256
  80ced0:	90a4b03a 	or	r18,r18,r2
  80ced4:	9966b03a 	or	r19,r19,r5
  80ced8:	18007f26 	beq	r3,zero,80d0d8 <__muldf3+0x728>
  80cedc:	9006d07a 	srli	r3,r18,1
  80cee0:	980497fa 	slli	r2,r19,31
  80cee4:	9480004c 	andi	r18,r18,1
  80cee8:	9826d07a 	srli	r19,r19,1
  80ceec:	1c86b03a 	or	r3,r3,r18
  80cef0:	18a4b03a 	or	r18,r3,r2
  80cef4:	3900ffc4 	addi	r4,r7,1023
  80cef8:	0100320e 	bge	zero,r4,80cfc4 <__muldf3+0x614>
  80cefc:	908001cc 	andi	r2,r18,7
  80cf00:	10000726 	beq	r2,zero,80cf20 <__muldf3+0x570>
  80cf04:	908003cc 	andi	r2,r18,15
  80cf08:	10800120 	cmpeqi	r2,r2,4
  80cf0c:	1000041e 	bne	r2,zero,80cf20 <__muldf3+0x570>
  80cf10:	90800104 	addi	r2,r18,4
  80cf14:	14a5803a 	cmpltu	r18,r2,r18
  80cf18:	9ca7883a 	add	r19,r19,r18
  80cf1c:	1025883a 	mov	r18,r2
  80cf20:	9880402c 	andhi	r2,r19,256
  80cf24:	10000426 	beq	r2,zero,80cf38 <__muldf3+0x588>
  80cf28:	00bfc034 	movhi	r2,65280
  80cf2c:	10bfffc4 	addi	r2,r2,-1
  80cf30:	98a6703a 	and	r19,r19,r2
  80cf34:	39010004 	addi	r4,r7,1024
  80cf38:	2081ffc8 	cmpgei	r2,r4,2047
  80cf3c:	103f381e 	bne	r2,zero,80cc20 <__muldf3+0x270>
  80cf40:	9804977a 	slli	r2,r19,29
  80cf44:	9024d0fa 	srli	r18,r18,3
  80cf48:	9826927a 	slli	r19,r19,9
  80cf4c:	20c1ffcc 	andi	r3,r4,2047
  80cf50:	14a4b03a 	or	r18,r2,r18
  80cf54:	9826d33a 	srli	r19,r19,12
  80cf58:	003ef106 	br	80cb20 <__muldf3+0x170>
  80cf5c:	a00d883a 	mov	r6,r20
  80cf60:	003ee606 	br	80cafc <__muldf3+0x14c>
  80cf64:	ad4000d4 	ori	r21,r21,3
  80cf68:	e023883a 	mov	r17,fp
  80cf6c:	010000c4 	movi	r4,3
  80cf70:	003ebe06 	br	80ca6c <__muldf3+0xbc>
  80cf74:	ad400054 	ori	r21,r21,1
  80cf78:	0021883a 	mov	r16,zero
  80cf7c:	01000044 	movi	r4,1
  80cf80:	003eba06 	br	80ca6c <__muldf3+0xbc>
  80cf84:	2025883a 	mov	r18,r4
  80cf88:	05400304 	movi	r21,12
  80cf8c:	0201ffc4 	movi	r8,2047
  80cf90:	058000c4 	movi	r22,3
  80cf94:	003ea406 	br	80ca28 <__muldf3+0x78>
  80cf98:	0027883a 	mov	r19,zero
  80cf9c:	05400104 	movi	r21,4
  80cfa0:	0011883a 	mov	r8,zero
  80cfa4:	05800044 	movi	r22,1
  80cfa8:	003e9f06 	br	80ca28 <__muldf3+0x78>
  80cfac:	04c00434 	movhi	r19,16
  80cfb0:	000d883a 	mov	r6,zero
  80cfb4:	9cffffc4 	addi	r19,r19,-1
  80cfb8:	04bfffc4 	movi	r18,-1
  80cfbc:	00c1ffc4 	movi	r3,2047
  80cfc0:	003ed706 	br	80cb20 <__muldf3+0x170>
  80cfc4:	00800044 	movi	r2,1
  80cfc8:	1105c83a 	sub	r2,r2,r4
  80cfcc:	10c00e48 	cmpgei	r3,r2,57
  80cfd0:	183ed01e 	bne	r3,zero,80cb14 <__muldf3+0x164>
  80cfd4:	10c00808 	cmpgei	r3,r2,32
  80cfd8:	1800411e 	bne	r3,zero,80d0e0 <__muldf3+0x730>
  80cfdc:	39c10784 	addi	r7,r7,1054
  80cfe0:	99c6983a 	sll	r3,r19,r7
  80cfe4:	9088d83a 	srl	r4,r18,r2
  80cfe8:	91ce983a 	sll	r7,r18,r7
  80cfec:	98a6d83a 	srl	r19,r19,r2
  80cff0:	1904b03a 	or	r2,r3,r4
  80cff4:	3824c03a 	cmpne	r18,r7,zero
  80cff8:	1484b03a 	or	r2,r2,r18
  80cffc:	10c001cc 	andi	r3,r2,7
  80d000:	18000726 	beq	r3,zero,80d020 <__muldf3+0x670>
  80d004:	10c003cc 	andi	r3,r2,15
  80d008:	18c00120 	cmpeqi	r3,r3,4
  80d00c:	1800041e 	bne	r3,zero,80d020 <__muldf3+0x670>
  80d010:	10c00104 	addi	r3,r2,4
  80d014:	1885803a 	cmpltu	r2,r3,r2
  80d018:	98a7883a 	add	r19,r19,r2
  80d01c:	1805883a 	mov	r2,r3
  80d020:	98c0202c 	andhi	r3,r19,128
  80d024:	18004326 	beq	r3,zero,80d134 <__muldf3+0x784>
  80d028:	00c00044 	movi	r3,1
  80d02c:	0027883a 	mov	r19,zero
  80d030:	0025883a 	mov	r18,zero
  80d034:	003eba06 	br	80cb20 <__muldf3+0x170>
  80d038:	9880022c 	andhi	r2,r19,8
  80d03c:	10000926 	beq	r2,zero,80d064 <__muldf3+0x6b4>
  80d040:	8080022c 	andhi	r2,r16,8
  80d044:	1000071e 	bne	r2,zero,80d064 <__muldf3+0x6b4>
  80d048:	00800434 	movhi	r2,16
  80d04c:	84c00234 	orhi	r19,r16,8
  80d050:	10bfffc4 	addi	r2,r2,-1
  80d054:	98a6703a 	and	r19,r19,r2
  80d058:	b80d883a 	mov	r6,r23
  80d05c:	8825883a 	mov	r18,r17
  80d060:	003fd606 	br	80cfbc <__muldf3+0x60c>
  80d064:	00800434 	movhi	r2,16
  80d068:	9cc00234 	orhi	r19,r19,8
  80d06c:	10bfffc4 	addi	r2,r2,-1
  80d070:	98a6703a 	and	r19,r19,r2
  80d074:	a00d883a 	mov	r6,r20
  80d078:	003fd006 	br	80cfbc <__muldf3+0x60c>
  80d07c:	e009883a 	mov	r4,fp
  80d080:	0800ec80 	call	800ec8 <__clzsi2>
  80d084:	11400544 	addi	r5,r2,21
  80d088:	29000748 	cmpgei	r4,r5,29
  80d08c:	1007883a 	mov	r3,r2
  80d090:	da000017 	ldw	r8,0(sp)
  80d094:	10800804 	addi	r2,r2,32
  80d098:	203ed626 	beq	r4,zero,80cbf4 <__muldf3+0x244>
  80d09c:	1c3ffe04 	addi	r16,r3,-8
  80d0a0:	e420983a 	sll	r16,fp,r16
  80d0a4:	0023883a 	mov	r17,zero
  80d0a8:	003ed906 	br	80cc10 <__muldf3+0x260>
  80d0ac:	0800ec80 	call	800ec8 <__clzsi2>
  80d0b0:	11000544 	addi	r4,r2,21
  80d0b4:	21400748 	cmpgei	r5,r4,29
  80d0b8:	1007883a 	mov	r3,r2
  80d0bc:	d9c00017 	ldw	r7,0(sp)
  80d0c0:	10800804 	addi	r2,r2,32
  80d0c4:	283eb026 	beq	r5,zero,80cb88 <__muldf3+0x1d8>
  80d0c8:	1cfffe04 	addi	r19,r3,-8
  80d0cc:	8ce6983a 	sll	r19,r17,r19
  80d0d0:	0025883a 	mov	r18,zero
  80d0d4:	003eb306 	br	80cba4 <__muldf3+0x1f4>
  80d0d8:	400f883a 	mov	r7,r8
  80d0dc:	003f8506 	br	80cef4 <__muldf3+0x544>
  80d0e0:	00fff844 	movi	r3,-31
  80d0e4:	1907c83a 	sub	r3,r3,r4
  80d0e8:	10800820 	cmpeqi	r2,r2,32
  80d0ec:	98c6d83a 	srl	r3,r19,r3
  80d0f0:	1000031e 	bne	r2,zero,80d100 <__muldf3+0x750>
  80d0f4:	39c10f84 	addi	r7,r7,1086
  80d0f8:	99e6983a 	sll	r19,r19,r7
  80d0fc:	94e4b03a 	or	r18,r18,r19
  80d100:	9024c03a 	cmpne	r18,r18,zero
  80d104:	90c4b03a 	or	r2,r18,r3
  80d108:	148001cc 	andi	r18,r2,7
  80d10c:	9000051e 	bne	r18,zero,80d124 <__muldf3+0x774>
  80d110:	0027883a 	mov	r19,zero
  80d114:	1004d0fa 	srli	r2,r2,3
  80d118:	0007883a 	mov	r3,zero
  80d11c:	14a4b03a 	or	r18,r2,r18
  80d120:	003e7f06 	br	80cb20 <__muldf3+0x170>
  80d124:	10c003cc 	andi	r3,r2,15
  80d128:	18c00118 	cmpnei	r3,r3,4
  80d12c:	0027883a 	mov	r19,zero
  80d130:	183fb71e 	bne	r3,zero,80d010 <__muldf3+0x660>
  80d134:	9806927a 	slli	r3,r19,9
  80d138:	9824977a 	slli	r18,r19,29
  80d13c:	1826d33a 	srli	r19,r3,12
  80d140:	003ff406 	br	80d114 <__muldf3+0x764>
  80d144:	00800434 	movhi	r2,16
  80d148:	9cc00234 	orhi	r19,r19,8
  80d14c:	10bfffc4 	addi	r2,r2,-1
  80d150:	98a6703a 	and	r19,r19,r2
  80d154:	003f9906 	br	80cfbc <__muldf3+0x60c>

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
  80d248:	0800ec80 	call	800ec8 <__clzsi2>
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
  80d5b4:	0800ec80 	call	800ec8 <__clzsi2>
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
  80db84:	0800ec80 	call	800ec8 <__clzsi2>
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
  80f0d4:	08068880 	call	806888 <memcpy>
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
  80f318:	08068880 	call	806888 <memcpy>
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
  80ff7c:	08010880 	call	801088 <strlen>
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
  810010:	08010880 	call	801088 <strlen>
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
