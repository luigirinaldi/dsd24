
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
  80014c:	10d0ff17 	ldw	r3,17404(r2)
  800150:	e0bffd17 	ldw	r2,-12(fp)
  800154:	100890fa 	slli	r4,r2,3
  800158:	00802074 	movhi	r2,129
  80015c:	2085883a 	add	r2,r4,r2
  800160:	10910017 	ldw	r2,17408(r2)
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
  800254:	d6a9e514 	ori	gp,gp,42900
  800258:	00802074 	movhi	r2,129
  80025c:	1090e914 	ori	r2,r2,17316
  800260:	00c02074 	movhi	r3,129
  800264:	18d13f14 	ori	r3,r3,17660
  800268:	10c00326 	beq	r2,r3,800278 <_start+0x40>
  80026c:	10000015 	stw	zero,0(r2)
  800270:	10800104 	addi	r2,r2,4
  800274:	10fffd36 	bltu	r2,r3,80026c <_start+0x34>
  800278:	080e1800 	call	80e180 <alt_load>
  80027c:	080e3200 	call	80e320 <alt_main>

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
  8002bc:	08004f80 	call	8004f8 <__addsf3>
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
  800318:	08009540 	call	800954 <__mulsf3>
  80031c:	900b883a 	mov	r5,r18
  800320:	1009883a 	mov	r4,r2
  800324:	08004f80 	call	8004f8 <__addsf3>
  800328:	8809883a 	mov	r4,r17
  80032c:	100b883a 	mov	r5,r2
  800330:	08004f80 	call	8004f8 <__addsf3>
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
  800390:	21015404 	addi	r4,r4,1360
  800394:	da37883a 	add	sp,sp,r8
  800398:	08018340 	call	801834 <puts>
  80039c:	01002074 	movhi	r4,129
  8003a0:	21015604 	addi	r4,r4,1368
  8003a4:	01400104 	movi	r5,4
  8003a8:	08017300 	call	801730 <printf>
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
  8003f4:	08004f80 	call	8004f8 <__addsf3>
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
  800430:	08009540 	call	800954 <__mulsf3>
  800434:	880b883a 	mov	r5,r17
  800438:	1009883a 	mov	r4,r2
  80043c:	08004f80 	call	8004f8 <__addsf3>
  800440:	9009883a 	mov	r4,r18
  800444:	100b883a 	mov	r5,r2
  800448:	08004f80 	call	8004f8 <__addsf3>
  80044c:	1025883a 	mov	r18,r2
  800450:	9c3ff31e 	bne	r19,r16,800420 <main+0xbc>
  800454:	a53fffc4 	addi	r20,r20,-1
  800458:	a03fef1e 	bne	r20,zero,800418 <main+0xb4>
  80045c:	1009883a 	mov	r4,r2
  800460:	08015880 	call	801588 <__extendsfdf2>
  800464:	01002074 	movhi	r4,129
  800468:	d4270d17 	ldw	r16,-25548(gp)
  80046c:	180d883a 	mov	r6,r3
  800470:	100b883a 	mov	r5,r2
  800474:	21015b04 	addi	r4,r4,1388
  800478:	08017300 	call	801730 <printf>
  80047c:	856bc83a 	sub	r21,r16,r21
  800480:	01002074 	movhi	r4,129
  800484:	a80b883a 	mov	r5,r21
  800488:	01800104 	movi	r6,4
  80048c:	21015e04 	addi	r4,r4,1400
  800490:	08017300 	call	801730 <printf>
  800494:	a809883a 	mov	r4,r21
  800498:	08014f80 	call	8014f8 <__floatunsidf>
  80049c:	01cff434 	movhi	r7,16336
  8004a0:	1009883a 	mov	r4,r2
  8004a4:	000d883a 	mov	r6,zero
  8004a8:	180b883a 	mov	r5,r3
  8004ac:	0800d500 	call	800d50 <__muldf3>
  8004b0:	01002074 	movhi	r4,129
  8004b4:	100b883a 	mov	r5,r2
  8004b8:	180d883a 	mov	r6,r3
  8004bc:	21016604 	addi	r4,r4,1432
  8004c0:	08017300 	call	801730 <printf>
  8004c4:	0005883a 	mov	r2,zero
  8004c8:	02000434 	movhi	r8,16
  8004cc:	423c0204 	addi	r8,r8,-4088
  8004d0:	da37883a 	add	sp,sp,r8
  8004d4:	dfc00617 	ldw	ra,24(sp)
  8004d8:	dd400517 	ldw	r21,20(sp)
  8004dc:	dd000417 	ldw	r20,16(sp)
  8004e0:	dcc00317 	ldw	r19,12(sp)
  8004e4:	dc800217 	ldw	r18,8(sp)
  8004e8:	dc400117 	ldw	r17,4(sp)
  8004ec:	dc000017 	ldw	r16,0(sp)
  8004f0:	dec00704 	addi	sp,sp,28
  8004f4:	f800283a 	ret

008004f8 <__addsf3>:
  8004f8:	280cd5fa 	srli	r6,r5,23
  8004fc:	2006d5fa 	srli	r3,r4,23
  800500:	2010d7fa 	srli	r8,r4,31
  800504:	01c02034 	movhi	r7,128
  800508:	2818d7fa 	srli	r12,r5,31
  80050c:	defffc04 	addi	sp,sp,-16
  800510:	39ffffc4 	addi	r7,r7,-1
  800514:	3914703a 	and	r10,r7,r4
  800518:	32403fcc 	andi	r9,r6,255
  80051c:	dc800215 	stw	r18,8(sp)
  800520:	dc400115 	stw	r17,4(sp)
  800524:	395a703a 	and	r13,r7,r5
  800528:	1c403fcc 	andi	r17,r3,255
  80052c:	dfc00315 	stw	ra,12(sp)
  800530:	dc000015 	stw	r16,0(sp)
  800534:	501c90fa 	slli	r14,r10,3
  800538:	681690fa 	slli	r11,r13,3
  80053c:	500d883a 	mov	r6,r10
  800540:	4025883a 	mov	r18,r8
  800544:	8a45c83a 	sub	r2,r17,r9
  800548:	43004b26 	beq	r8,r12,800678 <__addsf3+0x180>
  80054c:	0080390e 	bge	zero,r2,800634 <__addsf3+0x13c>
  800550:	48006326 	beq	r9,zero,8006e0 <__addsf3+0x1e8>
  800554:	88c03fe0 	cmpeqi	r3,r17,255
  800558:	1800401e 	bne	r3,zero,80065c <__addsf3+0x164>
  80055c:	5ac10034 	orhi	r11,r11,1024
  800560:	10c00708 	cmpgei	r3,r2,28
  800564:	1800ab1e 	bne	r3,zero,800814 <__addsf3+0x31c>
  800568:	01000804 	movi	r4,32
  80056c:	2089c83a 	sub	r4,r4,r2
  800570:	5908983a 	sll	r4,r11,r4
  800574:	5884d83a 	srl	r2,r11,r2
  800578:	2008c03a 	cmpne	r4,r4,zero
  80057c:	1104b03a 	or	r2,r2,r4
  800580:	7085c83a 	sub	r2,r14,r2
  800584:	10c1002c 	andhi	r3,r2,1024
  800588:	18008526 	beq	r3,zero,8007a0 <__addsf3+0x2a8>
  80058c:	04010034 	movhi	r16,1024
  800590:	843fffc4 	addi	r16,r16,-1
  800594:	1420703a 	and	r16,r2,r16
  800598:	8009883a 	mov	r4,r16
  80059c:	08016840 	call	801684 <__clzsi2>
  8005a0:	10fffec4 	addi	r3,r2,-5
  8005a4:	80c4983a 	sll	r2,r16,r3
  8005a8:	1c409516 	blt	r3,r17,800800 <__addsf3+0x308>
  8005ac:	1c47c83a 	sub	r3,r3,r17
  8005b0:	1c000044 	addi	r16,r3,1
  8005b4:	01000804 	movi	r4,32
  8005b8:	2409c83a 	sub	r4,r4,r16
  8005bc:	1108983a 	sll	r4,r2,r4
  8005c0:	1404d83a 	srl	r2,r2,r16
  8005c4:	0023883a 	mov	r17,zero
  8005c8:	2008c03a 	cmpne	r4,r4,zero
  8005cc:	1104b03a 	or	r2,r2,r4
  8005d0:	10c001cc 	andi	r3,r2,7
  8005d4:	18000426 	beq	r3,zero,8005e8 <__addsf3+0xf0>
  8005d8:	10c003cc 	andi	r3,r2,15
  8005dc:	18c00120 	cmpeqi	r3,r3,4
  8005e0:	1800011e 	bne	r3,zero,8005e8 <__addsf3+0xf0>
  8005e4:	10800104 	addi	r2,r2,4
  8005e8:	10c1002c 	andhi	r3,r2,1024
  8005ec:	18006e26 	beq	r3,zero,8007a8 <__addsf3+0x2b0>
  8005f0:	88c00044 	addi	r3,r17,1
  8005f4:	19003fe0 	cmpeqi	r4,r3,255
  8005f8:	20006d1e 	bne	r4,zero,8007b0 <__addsf3+0x2b8>
  8005fc:	100491ba 	slli	r2,r2,6
  800600:	100cd27a 	srli	r6,r2,9
  800604:	18803fcc 	andi	r2,r3,255
  800608:	100495fa 	slli	r2,r2,23
  80060c:	94803fcc 	andi	r18,r18,255
  800610:	902497fa 	slli	r18,r18,31
  800614:	1184b03a 	or	r2,r2,r6
  800618:	1484b03a 	or	r2,r2,r18
  80061c:	dfc00317 	ldw	ra,12(sp)
  800620:	dc800217 	ldw	r18,8(sp)
  800624:	dc400117 	ldw	r17,4(sp)
  800628:	dc000017 	ldw	r16,0(sp)
  80062c:	dec00404 	addi	sp,sp,16
  800630:	f800283a 	ret
  800634:	10003026 	beq	r2,zero,8006f8 <__addsf3+0x200>
  800638:	4c49c83a 	sub	r4,r9,r17
  80063c:	88007f1e 	bne	r17,zero,80083c <__addsf3+0x344>
  800640:	70003f26 	beq	r14,zero,800740 <__addsf3+0x248>
  800644:	213fffc4 	addi	r4,r4,-1
  800648:	2000b326 	beq	r4,zero,800918 <__addsf3+0x420>
  80064c:	48803fe0 	cmpeqi	r2,r9,255
  800650:	10007d26 	beq	r2,zero,800848 <__addsf3+0x350>
  800654:	6025883a 	mov	r18,r12
  800658:	6815883a 	mov	r10,r13
  80065c:	50005426 	beq	r10,zero,8007b0 <__addsf3+0x2b8>
  800660:	00802034 	movhi	r2,128
  800664:	51801034 	orhi	r6,r10,64
  800668:	10bfffc4 	addi	r2,r2,-1
  80066c:	308c703a 	and	r6,r6,r2
  800670:	00ffffc4 	movi	r3,-1
  800674:	003fe306 	br	800604 <__addsf3+0x10c>
  800678:	0080500e 	bge	zero,r2,8007bc <__addsf3+0x2c4>
  80067c:	48002a26 	beq	r9,zero,800728 <__addsf3+0x230>
  800680:	88c03fe0 	cmpeqi	r3,r17,255
  800684:	183ff51e 	bne	r3,zero,80065c <__addsf3+0x164>
  800688:	5ac10034 	orhi	r11,r11,1024
  80068c:	10c00708 	cmpgei	r3,r2,28
  800690:	1800741e 	bne	r3,zero,800864 <__addsf3+0x36c>
  800694:	00c00804 	movi	r3,32
  800698:	1887c83a 	sub	r3,r3,r2
  80069c:	58c6983a 	sll	r3,r11,r3
  8006a0:	5884d83a 	srl	r2,r11,r2
  8006a4:	1806c03a 	cmpne	r3,r3,zero
  8006a8:	10c4b03a 	or	r2,r2,r3
  8006ac:	1385883a 	add	r2,r2,r14
  8006b0:	10c1002c 	andhi	r3,r2,1024
  8006b4:	18003a26 	beq	r3,zero,8007a0 <__addsf3+0x2a8>
  8006b8:	8c400044 	addi	r17,r17,1
  8006bc:	88c03fe0 	cmpeqi	r3,r17,255
  8006c0:	18003b1e 	bne	r3,zero,8007b0 <__addsf3+0x2b8>
  8006c4:	1008d07a 	srli	r4,r2,1
  8006c8:	00df8034 	movhi	r3,32256
  8006cc:	18ffffc4 	addi	r3,r3,-1
  8006d0:	1080004c 	andi	r2,r2,1
  8006d4:	20c8703a 	and	r4,r4,r3
  8006d8:	2084b03a 	or	r2,r4,r2
  8006dc:	003fbc06 	br	8005d0 <__addsf3+0xd8>
  8006e0:	58001a26 	beq	r11,zero,80074c <__addsf3+0x254>
  8006e4:	10bfffc4 	addi	r2,r2,-1
  8006e8:	10007c26 	beq	r2,zero,8008dc <__addsf3+0x3e4>
  8006ec:	88c03fe0 	cmpeqi	r3,r17,255
  8006f0:	183f9b26 	beq	r3,zero,800560 <__addsf3+0x68>
  8006f4:	003fd906 	br	80065c <__addsf3+0x164>
  8006f8:	88800044 	addi	r2,r17,1
  8006fc:	10803f8c 	andi	r2,r2,254
  800700:	1000461e 	bne	r2,zero,80081c <__addsf3+0x324>
  800704:	88006e1e 	bne	r17,zero,8008c0 <__addsf3+0x3c8>
  800708:	70007f26 	beq	r14,zero,800908 <__addsf3+0x410>
  80070c:	583fbd26 	beq	r11,zero,800604 <__addsf3+0x10c>
  800710:	72c5c83a 	sub	r2,r14,r11
  800714:	1101002c 	andhi	r4,r2,1024
  800718:	20008326 	beq	r4,zero,800928 <__addsf3+0x430>
  80071c:	5b85c83a 	sub	r2,r11,r14
  800720:	6025883a 	mov	r18,r12
  800724:	003faa06 	br	8005d0 <__addsf3+0xd8>
  800728:	58000826 	beq	r11,zero,80074c <__addsf3+0x254>
  80072c:	10bfffc4 	addi	r2,r2,-1
  800730:	10006826 	beq	r2,zero,8008d4 <__addsf3+0x3dc>
  800734:	88c03fe0 	cmpeqi	r3,r17,255
  800738:	183fd426 	beq	r3,zero,80068c <__addsf3+0x194>
  80073c:	003fc706 	br	80065c <__addsf3+0x164>
  800740:	6025883a 	mov	r18,r12
  800744:	6815883a 	mov	r10,r13
  800748:	4823883a 	mov	r17,r9
  80074c:	88803fe0 	cmpeqi	r2,r17,255
  800750:	103fc21e 	bne	r2,zero,80065c <__addsf3+0x164>
  800754:	00802034 	movhi	r2,128
  800758:	10bfffc4 	addi	r2,r2,-1
  80075c:	508c703a 	and	r6,r10,r2
  800760:	8807883a 	mov	r3,r17
  800764:	003fa706 	br	800604 <__addsf3+0x10c>
  800768:	881f883a 	mov	r15,r17
  80076c:	8c400044 	addi	r17,r17,1
  800770:	88803f8c 	andi	r2,r17,254
  800774:	10004a1e 	bne	r2,zero,8008a0 <__addsf3+0x3a8>
  800778:	78005a1e 	bne	r15,zero,8008e4 <__addsf3+0x3ec>
  80077c:	70006e26 	beq	r14,zero,800938 <__addsf3+0x440>
  800780:	583fa026 	beq	r11,zero,800604 <__addsf3+0x10c>
  800784:	72c5883a 	add	r2,r14,r11
  800788:	10c1002c 	andhi	r3,r2,1024
  80078c:	18006f26 	beq	r3,zero,80094c <__addsf3+0x454>
  800790:	00ff0034 	movhi	r3,64512
  800794:	18ffffc4 	addi	r3,r3,-1
  800798:	10c4703a 	and	r2,r2,r3
  80079c:	04400044 	movi	r17,1
  8007a0:	10c001cc 	andi	r3,r2,7
  8007a4:	183f8c1e 	bne	r3,zero,8005d8 <__addsf3+0xe0>
  8007a8:	1014d0fa 	srli	r10,r2,3
  8007ac:	003fe706 	br	80074c <__addsf3+0x254>
  8007b0:	00ffffc4 	movi	r3,-1
  8007b4:	000d883a 	mov	r6,zero
  8007b8:	003f9206 	br	800604 <__addsf3+0x10c>
  8007bc:	103fea26 	beq	r2,zero,800768 <__addsf3+0x270>
  8007c0:	4c49c83a 	sub	r4,r9,r17
  8007c4:	88003026 	beq	r17,zero,800888 <__addsf3+0x390>
  8007c8:	48803fe0 	cmpeqi	r2,r9,255
  8007cc:	103fa21e 	bne	r2,zero,800658 <__addsf3+0x160>
  8007d0:	73810034 	orhi	r14,r14,1024
  8007d4:	20800708 	cmpgei	r2,r4,28
  8007d8:	1000491e 	bne	r2,zero,800900 <__addsf3+0x408>
  8007dc:	00800804 	movi	r2,32
  8007e0:	1105c83a 	sub	r2,r2,r4
  8007e4:	7084983a 	sll	r2,r14,r2
  8007e8:	7108d83a 	srl	r4,r14,r4
  8007ec:	1004c03a 	cmpne	r2,r2,zero
  8007f0:	2088b03a 	or	r4,r4,r2
  8007f4:	22c5883a 	add	r2,r4,r11
  8007f8:	4823883a 	mov	r17,r9
  8007fc:	003fac06 	br	8006b0 <__addsf3+0x1b8>
  800800:	013f0034 	movhi	r4,64512
  800804:	213fffc4 	addi	r4,r4,-1
  800808:	88e3c83a 	sub	r17,r17,r3
  80080c:	1104703a 	and	r2,r2,r4
  800810:	003f6f06 	br	8005d0 <__addsf3+0xd8>
  800814:	00800044 	movi	r2,1
  800818:	003f5906 	br	800580 <__addsf3+0x88>
  80081c:	72e1c83a 	sub	r16,r14,r11
  800820:	8081002c 	andhi	r2,r16,1024
  800824:	1000231e 	bne	r2,zero,8008b4 <__addsf3+0x3bc>
  800828:	803f5b1e 	bne	r16,zero,800598 <__addsf3+0xa0>
  80082c:	0025883a 	mov	r18,zero
  800830:	0007883a 	mov	r3,zero
  800834:	000d883a 	mov	r6,zero
  800838:	003f7206 	br	800604 <__addsf3+0x10c>
  80083c:	48803fe0 	cmpeqi	r2,r9,255
  800840:	103f841e 	bne	r2,zero,800654 <__addsf3+0x15c>
  800844:	73810034 	orhi	r14,r14,1024
  800848:	20800708 	cmpgei	r2,r4,28
  80084c:	10000726 	beq	r2,zero,80086c <__addsf3+0x374>
  800850:	01000044 	movi	r4,1
  800854:	5905c83a 	sub	r2,r11,r4
  800858:	6025883a 	mov	r18,r12
  80085c:	4823883a 	mov	r17,r9
  800860:	003f4806 	br	800584 <__addsf3+0x8c>
  800864:	00800044 	movi	r2,1
  800868:	003f9006 	br	8006ac <__addsf3+0x1b4>
  80086c:	00800804 	movi	r2,32
  800870:	1105c83a 	sub	r2,r2,r4
  800874:	7084983a 	sll	r2,r14,r2
  800878:	7108d83a 	srl	r4,r14,r4
  80087c:	1004c03a 	cmpne	r2,r2,zero
  800880:	2088b03a 	or	r4,r4,r2
  800884:	003ff306 	br	800854 <__addsf3+0x35c>
  800888:	703fae26 	beq	r14,zero,800744 <__addsf3+0x24c>
  80088c:	213fffc4 	addi	r4,r4,-1
  800890:	20002b26 	beq	r4,zero,800940 <__addsf3+0x448>
  800894:	48803fe0 	cmpeqi	r2,r9,255
  800898:	103fce26 	beq	r2,zero,8007d4 <__addsf3+0x2dc>
  80089c:	003f6e06 	br	800658 <__addsf3+0x160>
  8008a0:	88803fe0 	cmpeqi	r2,r17,255
  8008a4:	103fc21e 	bne	r2,zero,8007b0 <__addsf3+0x2b8>
  8008a8:	72c5883a 	add	r2,r14,r11
  8008ac:	1004d07a 	srli	r2,r2,1
  8008b0:	003fbb06 	br	8007a0 <__addsf3+0x2a8>
  8008b4:	5ba1c83a 	sub	r16,r11,r14
  8008b8:	6025883a 	mov	r18,r12
  8008bc:	003f3606 	br	800598 <__addsf3+0xa0>
  8008c0:	7000091e 	bne	r14,zero,8008e8 <__addsf3+0x3f0>
  8008c4:	583f631e 	bne	r11,zero,800654 <__addsf3+0x15c>
  8008c8:	0025883a 	mov	r18,zero
  8008cc:	380d883a 	mov	r6,r7
  8008d0:	003f6706 	br	800670 <__addsf3+0x178>
  8008d4:	72c5883a 	add	r2,r14,r11
  8008d8:	003f7506 	br	8006b0 <__addsf3+0x1b8>
  8008dc:	72c5c83a 	sub	r2,r14,r11
  8008e0:	003f2806 	br	800584 <__addsf3+0x8c>
  8008e4:	703f5c26 	beq	r14,zero,800658 <__addsf3+0x160>
  8008e8:	583f5c26 	beq	r11,zero,80065c <__addsf3+0x164>
  8008ec:	20c0102c 	andhi	r3,r4,64
  8008f0:	183f5a26 	beq	r3,zero,80065c <__addsf3+0x164>
  8008f4:	2940102c 	andhi	r5,r5,64
  8008f8:	283f581e 	bne	r5,zero,80065c <__addsf3+0x164>
  8008fc:	003f5506 	br	800654 <__addsf3+0x15c>
  800900:	01000044 	movi	r4,1
  800904:	003fbb06 	br	8007f4 <__addsf3+0x2fc>
  800908:	58000826 	beq	r11,zero,80092c <__addsf3+0x434>
  80090c:	6025883a 	mov	r18,r12
  800910:	680d883a 	mov	r6,r13
  800914:	003f3b06 	br	800604 <__addsf3+0x10c>
  800918:	5b85c83a 	sub	r2,r11,r14
  80091c:	6025883a 	mov	r18,r12
  800920:	4823883a 	mov	r17,r9
  800924:	003f1706 	br	800584 <__addsf3+0x8c>
  800928:	103f9d1e 	bne	r2,zero,8007a0 <__addsf3+0x2a8>
  80092c:	0025883a 	mov	r18,zero
  800930:	000d883a 	mov	r6,zero
  800934:	003f3306 	br	800604 <__addsf3+0x10c>
  800938:	680d883a 	mov	r6,r13
  80093c:	003f3106 	br	800604 <__addsf3+0x10c>
  800940:	72c5883a 	add	r2,r14,r11
  800944:	4823883a 	mov	r17,r9
  800948:	003f5906 	br	8006b0 <__addsf3+0x1b8>
  80094c:	0023883a 	mov	r17,zero
  800950:	003f9306 	br	8007a0 <__addsf3+0x2a8>

00800954 <__mulsf3>:
  800954:	defff504 	addi	sp,sp,-44
  800958:	dc400215 	stw	r17,8(sp)
  80095c:	2022d5fa 	srli	r17,r4,23
  800960:	dc000115 	stw	r16,4(sp)
  800964:	04002034 	movhi	r16,128
  800968:	dd800715 	stw	r22,28(sp)
  80096c:	843fffc4 	addi	r16,r16,-1
  800970:	dfc00a15 	stw	ra,40(sp)
  800974:	df000915 	stw	fp,36(sp)
  800978:	ddc00815 	stw	r23,32(sp)
  80097c:	dd400615 	stw	r21,24(sp)
  800980:	dd000515 	stw	r20,20(sp)
  800984:	dcc00415 	stw	r19,16(sp)
  800988:	dc800315 	stw	r18,12(sp)
  80098c:	8c403fcc 	andi	r17,r17,255
  800990:	202cd7fa 	srli	r22,r4,31
  800994:	8120703a 	and	r16,r16,r4
  800998:	88005026 	beq	r17,zero,800adc <__mulsf3+0x188>
  80099c:	88803fe0 	cmpeqi	r2,r17,255
  8009a0:	1000531e 	bne	r2,zero,800af0 <__mulsf3+0x19c>
  8009a4:	802090fa 	slli	r16,r16,3
  8009a8:	8c7fe044 	addi	r17,r17,-127
  8009ac:	0025883a 	mov	r18,zero
  8009b0:	84010034 	orhi	r16,r16,1024
  8009b4:	0029883a 	mov	r20,zero
  8009b8:	2804d5fa 	srli	r2,r5,23
  8009bc:	01002034 	movhi	r4,128
  8009c0:	213fffc4 	addi	r4,r4,-1
  8009c4:	10803fcc 	andi	r2,r2,255
  8009c8:	282ed7fa 	srli	r23,r5,31
  8009cc:	2166703a 	and	r19,r4,r5
  8009d0:	10004c26 	beq	r2,zero,800b04 <__mulsf3+0x1b0>
  8009d4:	10c03fe0 	cmpeqi	r3,r2,255
  8009d8:	18001e1e 	bne	r3,zero,800a54 <__mulsf3+0x100>
  8009dc:	980890fa 	slli	r4,r19,3
  8009e0:	10bfe044 	addi	r2,r2,-127
  8009e4:	88a3883a 	add	r17,r17,r2
  8009e8:	24c10034 	orhi	r19,r4,1024
  8009ec:	0007883a 	mov	r3,zero
  8009f0:	90800428 	cmpgeui	r2,r18,16
  8009f4:	b5eaf03a 	xor	r21,r22,r23
  8009f8:	8f000044 	addi	fp,r17,1
  8009fc:	1000481e 	bne	r2,zero,800b20 <__mulsf3+0x1cc>
  800a00:	902490ba 	slli	r18,r18,2
  800a04:	00802034 	movhi	r2,128
  800a08:	9085883a 	add	r2,r18,r2
  800a0c:	10828517 	ldw	r2,2580(r2)
  800a10:	1000683a 	jmp	r2
  800a14:	00800b20 	cmpeqi	r2,zero,44
  800a18:	00800a6c 	andhi	r2,zero,41
  800a1c:	00800a6c 	andhi	r2,zero,41
  800a20:	00800a68 	cmpgeui	r2,zero,41
  800a24:	00800a74 	movhi	r2,41
  800a28:	00800a74 	movhi	r2,41
  800a2c:	00800c80 	call	800c8 <__alt_mem_sdram-0x77ff38>
  800a30:	00800a68 	cmpgeui	r2,zero,41
  800a34:	00800a74 	movhi	r2,41
  800a38:	00800c80 	call	800c8 <__alt_mem_sdram-0x77ff38>
  800a3c:	00800a74 	movhi	r2,41
  800a40:	00800a68 	cmpgeui	r2,zero,41
  800a44:	00800c10 	cmplti	r2,zero,48
  800a48:	00800c10 	cmplti	r2,zero,48
  800a4c:	00800c10 	cmplti	r2,zero,48
  800a50:	00800ce4 	muli	r2,zero,51
  800a54:	8c403fc4 	addi	r17,r17,255
  800a58:	98006f1e 	bne	r19,zero,800c18 <__mulsf3+0x2c4>
  800a5c:	94800094 	ori	r18,r18,2
  800a60:	00c00084 	movi	r3,2
  800a64:	003fe206 	br	8009f0 <__mulsf3+0x9c>
  800a68:	b82b883a 	mov	r21,r23
  800a6c:	9821883a 	mov	r16,r19
  800a70:	1829883a 	mov	r20,r3
  800a74:	a08000a0 	cmpeqi	r2,r20,2
  800a78:	1000261e 	bne	r2,zero,800b14 <__mulsf3+0x1c0>
  800a7c:	a08000e0 	cmpeqi	r2,r20,3
  800a80:	1000ae1e 	bne	r2,zero,800d3c <__mulsf3+0x3e8>
  800a84:	a0800060 	cmpeqi	r2,r20,1
  800a88:	10004e26 	beq	r2,zero,800bc4 <__mulsf3+0x270>
  800a8c:	0007883a 	mov	r3,zero
  800a90:	0009883a 	mov	r4,zero
  800a94:	1c003fcc 	andi	r16,r3,255
  800a98:	a8803fcc 	andi	r2,r21,255
  800a9c:	802095fa 	slli	r16,r16,23
  800aa0:	100497fa 	slli	r2,r2,31
  800aa4:	8120b03a 	or	r16,r16,r4
  800aa8:	8084b03a 	or	r2,r16,r2
  800aac:	dfc00a17 	ldw	ra,40(sp)
  800ab0:	df000917 	ldw	fp,36(sp)
  800ab4:	ddc00817 	ldw	r23,32(sp)
  800ab8:	dd800717 	ldw	r22,28(sp)
  800abc:	dd400617 	ldw	r21,24(sp)
  800ac0:	dd000517 	ldw	r20,20(sp)
  800ac4:	dcc00417 	ldw	r19,16(sp)
  800ac8:	dc800317 	ldw	r18,12(sp)
  800acc:	dc400217 	ldw	r17,8(sp)
  800ad0:	dc000117 	ldw	r16,4(sp)
  800ad4:	dec00b04 	addi	sp,sp,44
  800ad8:	f800283a 	ret
  800adc:	80005d1e 	bne	r16,zero,800c54 <__mulsf3+0x300>
  800ae0:	04800104 	movi	r18,4
  800ae4:	0023883a 	mov	r17,zero
  800ae8:	05000044 	movi	r20,1
  800aec:	003fb206 	br	8009b8 <__mulsf3+0x64>
  800af0:	8000541e 	bne	r16,zero,800c44 <__mulsf3+0x2f0>
  800af4:	04800204 	movi	r18,8
  800af8:	04403fc4 	movi	r17,255
  800afc:	05000084 	movi	r20,2
  800b00:	003fad06 	br	8009b8 <__mulsf3+0x64>
  800b04:	9800471e 	bne	r19,zero,800c24 <__mulsf3+0x2d0>
  800b08:	94800054 	ori	r18,r18,1
  800b0c:	00c00044 	movi	r3,1
  800b10:	003fb706 	br	8009f0 <__mulsf3+0x9c>
  800b14:	00ffffc4 	movi	r3,-1
  800b18:	0009883a 	mov	r4,zero
  800b1c:	003fdd06 	br	800a94 <__mulsf3+0x140>
  800b20:	8028d43a 	srli	r20,r16,16
  800b24:	9cbfffcc 	andi	r18,r19,65535
  800b28:	843fffcc 	andi	r16,r16,65535
  800b2c:	900b883a 	mov	r5,r18
  800b30:	8009883a 	mov	r4,r16
  800b34:	08016d80 	call	8016d8 <__mulsi3>
  800b38:	9826d43a 	srli	r19,r19,16
  800b3c:	900b883a 	mov	r5,r18
  800b40:	a009883a 	mov	r4,r20
  800b44:	1025883a 	mov	r18,r2
  800b48:	08016d80 	call	8016d8 <__mulsi3>
  800b4c:	980b883a 	mov	r5,r19
  800b50:	a009883a 	mov	r4,r20
  800b54:	1029883a 	mov	r20,r2
  800b58:	08016d80 	call	8016d8 <__mulsi3>
  800b5c:	9809883a 	mov	r4,r19
  800b60:	800b883a 	mov	r5,r16
  800b64:	1027883a 	mov	r19,r2
  800b68:	08016d80 	call	8016d8 <__mulsi3>
  800b6c:	9006d43a 	srli	r3,r18,16
  800b70:	1505883a 	add	r2,r2,r20
  800b74:	1887883a 	add	r3,r3,r2
  800b78:	1d00022e 	bgeu	r3,r20,800b84 <__mulsf3+0x230>
  800b7c:	00800074 	movhi	r2,1
  800b80:	98a7883a 	add	r19,r19,r2
  800b84:	1808943a 	slli	r4,r3,16
  800b88:	1820d43a 	srli	r16,r3,16
  800b8c:	94bfffcc 	andi	r18,r18,65535
  800b90:	2489883a 	add	r4,r4,r18
  800b94:	200a91ba 	slli	r5,r4,6
  800b98:	84e1883a 	add	r16,r16,r19
  800b9c:	802091ba 	slli	r16,r16,6
  800ba0:	2008d6ba 	srli	r4,r4,26
  800ba4:	2804c03a 	cmpne	r2,r5,zero
  800ba8:	80c2002c 	andhi	r3,r16,2048
  800bac:	1108b03a 	or	r4,r2,r4
  800bb0:	8120b03a 	or	r16,r16,r4
  800bb4:	18005b26 	beq	r3,zero,800d24 <__mulsf3+0x3d0>
  800bb8:	8004d07a 	srli	r2,r16,1
  800bbc:	8400004c 	andi	r16,r16,1
  800bc0:	1420b03a 	or	r16,r2,r16
  800bc4:	e0c01fc4 	addi	r3,fp,127
  800bc8:	00c0320e 	bge	zero,r3,800c94 <__mulsf3+0x340>
  800bcc:	808001cc 	andi	r2,r16,7
  800bd0:	10000426 	beq	r2,zero,800be4 <__mulsf3+0x290>
  800bd4:	808003cc 	andi	r2,r16,15
  800bd8:	10800120 	cmpeqi	r2,r2,4
  800bdc:	1000011e 	bne	r2,zero,800be4 <__mulsf3+0x290>
  800be0:	84000104 	addi	r16,r16,4
  800be4:	8082002c 	andhi	r2,r16,2048
  800be8:	10000426 	beq	r2,zero,800bfc <__mulsf3+0x2a8>
  800bec:	00be0034 	movhi	r2,63488
  800bf0:	10bfffc4 	addi	r2,r2,-1
  800bf4:	80a0703a 	and	r16,r16,r2
  800bf8:	e0c02004 	addi	r3,fp,128
  800bfc:	18803fc8 	cmpgei	r2,r3,255
  800c00:	103fc41e 	bne	r2,zero,800b14 <__mulsf3+0x1c0>
  800c04:	802091ba 	slli	r16,r16,6
  800c08:	8008d27a 	srli	r4,r16,9
  800c0c:	003fa106 	br	800a94 <__mulsf3+0x140>
  800c10:	b02b883a 	mov	r21,r22
  800c14:	003f9706 	br	800a74 <__mulsf3+0x120>
  800c18:	948000d4 	ori	r18,r18,3
  800c1c:	00c000c4 	movi	r3,3
  800c20:	003f7306 	br	8009f0 <__mulsf3+0x9c>
  800c24:	9809883a 	mov	r4,r19
  800c28:	08016840 	call	801684 <__clzsi2>
  800c2c:	10fffec4 	addi	r3,r2,-5
  800c30:	88a3c83a 	sub	r17,r17,r2
  800c34:	98e6983a 	sll	r19,r19,r3
  800c38:	8c7fe284 	addi	r17,r17,-118
  800c3c:	0007883a 	mov	r3,zero
  800c40:	003f6b06 	br	8009f0 <__mulsf3+0x9c>
  800c44:	04800304 	movi	r18,12
  800c48:	04403fc4 	movi	r17,255
  800c4c:	050000c4 	movi	r20,3
  800c50:	003f5906 	br	8009b8 <__mulsf3+0x64>
  800c54:	8009883a 	mov	r4,r16
  800c58:	d9400015 	stw	r5,0(sp)
  800c5c:	08016840 	call	801684 <__clzsi2>
  800c60:	10fffec4 	addi	r3,r2,-5
  800c64:	047fe284 	movi	r17,-118
  800c68:	80e0983a 	sll	r16,r16,r3
  800c6c:	d9400017 	ldw	r5,0(sp)
  800c70:	88a3c83a 	sub	r17,r17,r2
  800c74:	0025883a 	mov	r18,zero
  800c78:	0029883a 	mov	r20,zero
  800c7c:	003f4e06 	br	8009b8 <__mulsf3+0x64>
  800c80:	01002034 	movhi	r4,128
  800c84:	002b883a 	mov	r21,zero
  800c88:	213fffc4 	addi	r4,r4,-1
  800c8c:	00ffffc4 	movi	r3,-1
  800c90:	003f8006 	br	800a94 <__mulsf3+0x140>
  800c94:	00800044 	movi	r2,1
  800c98:	10c7c83a 	sub	r3,r2,r3
  800c9c:	18800708 	cmpgei	r2,r3,28
  800ca0:	103f7a1e 	bne	r2,zero,800a8c <__mulsf3+0x138>
  800ca4:	e1002784 	addi	r4,fp,158
  800ca8:	8108983a 	sll	r4,r16,r4
  800cac:	80e0d83a 	srl	r16,r16,r3
  800cb0:	2008c03a 	cmpne	r4,r4,zero
  800cb4:	8120b03a 	or	r16,r16,r4
  800cb8:	808001cc 	andi	r2,r16,7
  800cbc:	10000426 	beq	r2,zero,800cd0 <__mulsf3+0x37c>
  800cc0:	808003cc 	andi	r2,r16,15
  800cc4:	10800120 	cmpeqi	r2,r2,4
  800cc8:	1000011e 	bne	r2,zero,800cd0 <__mulsf3+0x37c>
  800ccc:	84000104 	addi	r16,r16,4
  800cd0:	8081002c 	andhi	r2,r16,1024
  800cd4:	10001526 	beq	r2,zero,800d2c <__mulsf3+0x3d8>
  800cd8:	00c00044 	movi	r3,1
  800cdc:	0009883a 	mov	r4,zero
  800ce0:	003f6c06 	br	800a94 <__mulsf3+0x140>
  800ce4:	8080102c 	andhi	r2,r16,64
  800ce8:	10000826 	beq	r2,zero,800d0c <__mulsf3+0x3b8>
  800cec:	9880102c 	andhi	r2,r19,64
  800cf0:	1000061e 	bne	r2,zero,800d0c <__mulsf3+0x3b8>
  800cf4:	00802034 	movhi	r2,128
  800cf8:	99001034 	orhi	r4,r19,64
  800cfc:	10bfffc4 	addi	r2,r2,-1
  800d00:	2088703a 	and	r4,r4,r2
  800d04:	b82b883a 	mov	r21,r23
  800d08:	003fe006 	br	800c8c <__mulsf3+0x338>
  800d0c:	00802034 	movhi	r2,128
  800d10:	81001034 	orhi	r4,r16,64
  800d14:	10bfffc4 	addi	r2,r2,-1
  800d18:	2088703a 	and	r4,r4,r2
  800d1c:	b02b883a 	mov	r21,r22
  800d20:	003fda06 	br	800c8c <__mulsf3+0x338>
  800d24:	8839883a 	mov	fp,r17
  800d28:	003fa606 	br	800bc4 <__mulsf3+0x270>
  800d2c:	802091ba 	slli	r16,r16,6
  800d30:	0007883a 	mov	r3,zero
  800d34:	8008d27a 	srli	r4,r16,9
  800d38:	003f5606 	br	800a94 <__mulsf3+0x140>
  800d3c:	00802034 	movhi	r2,128
  800d40:	81001034 	orhi	r4,r16,64
  800d44:	10bfffc4 	addi	r2,r2,-1
  800d48:	2088703a 	and	r4,r4,r2
  800d4c:	003fcf06 	br	800c8c <__mulsf3+0x338>

00800d50 <__muldf3>:
  800d50:	2810d53a 	srli	r8,r5,20
  800d54:	defff004 	addi	sp,sp,-64
  800d58:	00800434 	movhi	r2,16
  800d5c:	df000e15 	stw	fp,56(sp)
  800d60:	dd000a15 	stw	r20,40(sp)
  800d64:	dcc00915 	stw	r19,36(sp)
  800d68:	dc400715 	stw	r17,28(sp)
  800d6c:	10bfffc4 	addi	r2,r2,-1
  800d70:	dfc00f15 	stw	ra,60(sp)
  800d74:	ddc00d15 	stw	r23,52(sp)
  800d78:	dd800c15 	stw	r22,48(sp)
  800d7c:	dd400b15 	stw	r21,44(sp)
  800d80:	dc800815 	stw	r18,32(sp)
  800d84:	dc000615 	stw	r16,24(sp)
  800d88:	4201ffcc 	andi	r8,r8,2047
  800d8c:	2828d7fa 	srli	r20,r5,31
  800d90:	2023883a 	mov	r17,r4
  800d94:	3039883a 	mov	fp,r6
  800d98:	28a6703a 	and	r19,r5,r2
  800d9c:	40005a26 	beq	r8,zero,800f08 <__muldf3+0x1b8>
  800da0:	4081ffe0 	cmpeqi	r2,r8,2047
  800da4:	10006c1e 	bne	r2,zero,800f58 <__muldf3+0x208>
  800da8:	980a90fa 	slli	r5,r19,3
  800dac:	2026d77a 	srli	r19,r4,29
  800db0:	202490fa 	slli	r18,r4,3
  800db4:	423f0044 	addi	r8,r8,-1023
  800db8:	9966b03a 	or	r19,r19,r5
  800dbc:	9cc02034 	orhi	r19,r19,128
  800dc0:	002b883a 	mov	r21,zero
  800dc4:	002d883a 	mov	r22,zero
  800dc8:	3804d53a 	srli	r2,r7,20
  800dcc:	00c00434 	movhi	r3,16
  800dd0:	18ffffc4 	addi	r3,r3,-1
  800dd4:	1081ffcc 	andi	r2,r2,2047
  800dd8:	382ed7fa 	srli	r23,r7,31
  800ddc:	38e0703a 	and	r16,r7,r3
  800de0:	10006426 	beq	r2,zero,800f74 <__muldf3+0x224>
  800de4:	10c1ffe0 	cmpeqi	r3,r2,2047
  800de8:	1800211e 	bne	r3,zero,800e70 <__muldf3+0x120>
  800dec:	e008d77a 	srli	r4,fp,29
  800df0:	802090fa 	slli	r16,r16,3
  800df4:	e02290fa 	slli	r17,fp,3
  800df8:	10bf0044 	addi	r2,r2,-1023
  800dfc:	2420b03a 	or	r16,r4,r16
  800e00:	84002034 	orhi	r16,r16,128
  800e04:	4091883a 	add	r8,r8,r2
  800e08:	0009883a 	mov	r4,zero
  800e0c:	a8800428 	cmpgeui	r2,r21,16
  800e10:	a5ccf03a 	xor	r6,r20,r23
  800e14:	41c00044 	addi	r7,r8,1
  800e18:	10006d1e 	bne	r2,zero,800fd0 <__muldf3+0x280>
  800e1c:	a80490ba 	slli	r2,r21,2
  800e20:	00c02034 	movhi	r3,128
  800e24:	10c7883a 	add	r3,r2,r3
  800e28:	18838c17 	ldw	r2,3632(r3)
  800e2c:	1000683a 	jmp	r2
  800e30:	00800fd0 	cmplti	r2,zero,63
  800e34:	00800e90 	cmplti	r2,zero,58
  800e38:	00800e90 	cmplti	r2,zero,58
  800e3c:	00800e8c 	andi	r2,zero,58
  800e40:	00800e9c 	xori	r2,zero,58
  800e44:	00800e9c 	xori	r2,zero,58
  800e48:	0080134c 	andi	r2,zero,77
  800e4c:	00800e8c 	andi	r2,zero,58
  800e50:	00800e9c 	xori	r2,zero,58
  800e54:	0080134c 	andi	r2,zero,77
  800e58:	00800e9c 	xori	r2,zero,58
  800e5c:	00800e8c 	andi	r2,zero,58
  800e60:	008012fc 	xorhi	r2,zero,75
  800e64:	008012fc 	xorhi	r2,zero,75
  800e68:	008012fc 	xorhi	r2,zero,75
  800e6c:	008013d8 	cmpnei	r2,zero,79
  800e70:	e422b03a 	or	r17,fp,r16
  800e74:	4201ffc4 	addi	r8,r8,2047
  800e78:	8801221e 	bne	r17,zero,801304 <__muldf3+0x5b4>
  800e7c:	ad400094 	ori	r21,r21,2
  800e80:	0021883a 	mov	r16,zero
  800e84:	01000084 	movi	r4,2
  800e88:	003fe006 	br	800e0c <__muldf3+0xbc>
  800e8c:	b80d883a 	mov	r6,r23
  800e90:	8027883a 	mov	r19,r16
  800e94:	8825883a 	mov	r18,r17
  800e98:	202d883a 	mov	r22,r4
  800e9c:	b08000a0 	cmpeqi	r2,r22,2
  800ea0:	1000471e 	bne	r2,zero,800fc0 <__muldf3+0x270>
  800ea4:	b08000e0 	cmpeqi	r2,r22,3
  800ea8:	10018e1e 	bne	r2,zero,8014e4 <__muldf3+0x794>
  800eac:	b0800060 	cmpeqi	r2,r22,1
  800eb0:	1000f826 	beq	r2,zero,801294 <__muldf3+0x544>
  800eb4:	0007883a 	mov	r3,zero
  800eb8:	0027883a 	mov	r19,zero
  800ebc:	0025883a 	mov	r18,zero
  800ec0:	1806953a 	slli	r3,r3,20
  800ec4:	31803fcc 	andi	r6,r6,255
  800ec8:	300c97fa 	slli	r6,r6,31
  800ecc:	1cc6b03a 	or	r3,r3,r19
  800ed0:	9005883a 	mov	r2,r18
  800ed4:	1986b03a 	or	r3,r3,r6
  800ed8:	dfc00f17 	ldw	ra,60(sp)
  800edc:	df000e17 	ldw	fp,56(sp)
  800ee0:	ddc00d17 	ldw	r23,52(sp)
  800ee4:	dd800c17 	ldw	r22,48(sp)
  800ee8:	dd400b17 	ldw	r21,44(sp)
  800eec:	dd000a17 	ldw	r20,40(sp)
  800ef0:	dcc00917 	ldw	r19,36(sp)
  800ef4:	dc800817 	ldw	r18,32(sp)
  800ef8:	dc400717 	ldw	r17,28(sp)
  800efc:	dc000617 	ldw	r16,24(sp)
  800f00:	dec01004 	addi	sp,sp,64
  800f04:	f800283a 	ret
  800f08:	9924b03a 	or	r18,r19,r4
  800f0c:	90010a26 	beq	r18,zero,801338 <__muldf3+0x5e8>
  800f10:	d9c00015 	stw	r7,0(sp)
  800f14:	98014d26 	beq	r19,zero,80144c <__muldf3+0x6fc>
  800f18:	9809883a 	mov	r4,r19
  800f1c:	08016840 	call	801684 <__clzsi2>
  800f20:	d9c00017 	ldw	r7,0(sp)
  800f24:	113ffd44 	addi	r4,r2,-11
  800f28:	00c00744 	movi	r3,29
  800f2c:	14bffe04 	addi	r18,r2,-8
  800f30:	1907c83a 	sub	r3,r3,r4
  800f34:	9ca6983a 	sll	r19,r19,r18
  800f38:	88c6d83a 	srl	r3,r17,r3
  800f3c:	8ca4983a 	sll	r18,r17,r18
  800f40:	1ce6b03a 	or	r19,r3,r19
  800f44:	023f0344 	movi	r8,-1011
  800f48:	4091c83a 	sub	r8,r8,r2
  800f4c:	002b883a 	mov	r21,zero
  800f50:	002d883a 	mov	r22,zero
  800f54:	003f9c06 	br	800dc8 <__muldf3+0x78>
  800f58:	9924b03a 	or	r18,r19,r4
  800f5c:	9000f11e 	bne	r18,zero,801324 <__muldf3+0x5d4>
  800f60:	0027883a 	mov	r19,zero
  800f64:	05400204 	movi	r21,8
  800f68:	0201ffc4 	movi	r8,2047
  800f6c:	05800084 	movi	r22,2
  800f70:	003f9506 	br	800dc8 <__muldf3+0x78>
  800f74:	e422b03a 	or	r17,fp,r16
  800f78:	8800e626 	beq	r17,zero,801314 <__muldf3+0x5c4>
  800f7c:	da000015 	stw	r8,0(sp)
  800f80:	80012626 	beq	r16,zero,80141c <__muldf3+0x6cc>
  800f84:	8009883a 	mov	r4,r16
  800f88:	08016840 	call	801684 <__clzsi2>
  800f8c:	da000017 	ldw	r8,0(sp)
  800f90:	117ffd44 	addi	r5,r2,-11
  800f94:	01000744 	movi	r4,29
  800f98:	147ffe04 	addi	r17,r2,-8
  800f9c:	2149c83a 	sub	r4,r4,r5
  800fa0:	8460983a 	sll	r16,r16,r17
  800fa4:	e108d83a 	srl	r4,fp,r4
  800fa8:	e462983a 	sll	r17,fp,r17
  800fac:	2420b03a 	or	r16,r4,r16
  800fb0:	4091c83a 	sub	r8,r8,r2
  800fb4:	423f0344 	addi	r8,r8,-1011
  800fb8:	0009883a 	mov	r4,zero
  800fbc:	003f9306 	br	800e0c <__muldf3+0xbc>
  800fc0:	00c1ffc4 	movi	r3,2047
  800fc4:	0027883a 	mov	r19,zero
  800fc8:	0025883a 	mov	r18,zero
  800fcc:	003fbc06 	br	800ec0 <__muldf3+0x170>
  800fd0:	9028d43a 	srli	r20,r18,16
  800fd4:	8f3fffcc 	andi	fp,r17,65535
  800fd8:	957fffcc 	andi	r21,r18,65535
  800fdc:	a80b883a 	mov	r5,r21
  800fe0:	e009883a 	mov	r4,fp
  800fe4:	d9800315 	stw	r6,12(sp)
  800fe8:	da000215 	stw	r8,8(sp)
  800fec:	d9c00115 	stw	r7,4(sp)
  800ff0:	8822d43a 	srli	r17,r17,16
  800ff4:	08016d80 	call	8016d8 <__mulsi3>
  800ff8:	e00b883a 	mov	r5,fp
  800ffc:	a009883a 	mov	r4,r20
  801000:	102d883a 	mov	r22,r2
  801004:	08016d80 	call	8016d8 <__mulsi3>
  801008:	880b883a 	mov	r5,r17
  80100c:	a009883a 	mov	r4,r20
  801010:	102f883a 	mov	r23,r2
  801014:	08016d80 	call	8016d8 <__mulsi3>
  801018:	a80b883a 	mov	r5,r21
  80101c:	8809883a 	mov	r4,r17
  801020:	d8800015 	stw	r2,0(sp)
  801024:	08016d80 	call	8016d8 <__mulsi3>
  801028:	b006d43a 	srli	r3,r22,16
  80102c:	15e5883a 	add	r18,r2,r23
  801030:	d9c00117 	ldw	r7,4(sp)
  801034:	1c87883a 	add	r3,r3,r18
  801038:	da000217 	ldw	r8,8(sp)
  80103c:	d9800317 	ldw	r6,12(sp)
  801040:	1dc0042e 	bgeu	r3,r23,801054 <__muldf3+0x304>
  801044:	d9000017 	ldw	r4,0(sp)
  801048:	00800074 	movhi	r2,1
  80104c:	2085883a 	add	r2,r4,r2
  801050:	d8800015 	stw	r2,0(sp)
  801054:	1804943a 	slli	r2,r3,16
  801058:	85ffffcc 	andi	r23,r16,65535
  80105c:	b5bfffcc 	andi	r22,r22,65535
  801060:	1585883a 	add	r2,r2,r22
  801064:	a80b883a 	mov	r5,r21
  801068:	b809883a 	mov	r4,r23
  80106c:	1824d43a 	srli	r18,r3,16
  801070:	d9800515 	stw	r6,20(sp)
  801074:	da000415 	stw	r8,16(sp)
  801078:	d9c00315 	stw	r7,12(sp)
  80107c:	8020d43a 	srli	r16,r16,16
  801080:	d8800115 	stw	r2,4(sp)
  801084:	08016d80 	call	8016d8 <__mulsi3>
  801088:	a009883a 	mov	r4,r20
  80108c:	b80b883a 	mov	r5,r23
  801090:	d8800215 	stw	r2,8(sp)
  801094:	08016d80 	call	8016d8 <__mulsi3>
  801098:	a009883a 	mov	r4,r20
  80109c:	800b883a 	mov	r5,r16
  8010a0:	102d883a 	mov	r22,r2
  8010a4:	08016d80 	call	8016d8 <__mulsi3>
  8010a8:	a80b883a 	mov	r5,r21
  8010ac:	8009883a 	mov	r4,r16
  8010b0:	1029883a 	mov	r20,r2
  8010b4:	08016d80 	call	8016d8 <__mulsi3>
  8010b8:	da800217 	ldw	r10,8(sp)
  8010bc:	1585883a 	add	r2,r2,r22
  8010c0:	d9c00317 	ldw	r7,12(sp)
  8010c4:	5006d43a 	srli	r3,r10,16
  8010c8:	da000417 	ldw	r8,16(sp)
  8010cc:	d9800517 	ldw	r6,20(sp)
  8010d0:	1887883a 	add	r3,r3,r2
  8010d4:	1d80022e 	bgeu	r3,r22,8010e0 <__muldf3+0x390>
  8010d8:	00800074 	movhi	r2,1
  8010dc:	a0a9883a 	add	r20,r20,r2
  8010e0:	1804d43a 	srli	r2,r3,16
  8010e4:	1806943a 	slli	r3,r3,16
  8010e8:	982cd43a 	srli	r22,r19,16
  8010ec:	9d7fffcc 	andi	r21,r19,65535
  8010f0:	e009883a 	mov	r4,fp
  8010f4:	54ffffcc 	andi	r19,r10,65535
  8010f8:	a80b883a 	mov	r5,r21
  8010fc:	1ce7883a 	add	r19,r3,r19
  801100:	d9800515 	stw	r6,20(sp)
  801104:	da000415 	stw	r8,16(sp)
  801108:	d9c00315 	stw	r7,12(sp)
  80110c:	1529883a 	add	r20,r2,r20
  801110:	08016d80 	call	8016d8 <__mulsi3>
  801114:	e00b883a 	mov	r5,fp
  801118:	b009883a 	mov	r4,r22
  80111c:	d8800215 	stw	r2,8(sp)
  801120:	08016d80 	call	8016d8 <__mulsi3>
  801124:	8809883a 	mov	r4,r17
  801128:	b00b883a 	mov	r5,r22
  80112c:	1039883a 	mov	fp,r2
  801130:	08016d80 	call	8016d8 <__mulsi3>
  801134:	8809883a 	mov	r4,r17
  801138:	a80b883a 	mov	r5,r21
  80113c:	1023883a 	mov	r17,r2
  801140:	08016d80 	call	8016d8 <__mulsi3>
  801144:	d8c00217 	ldw	r3,8(sp)
  801148:	1705883a 	add	r2,r2,fp
  80114c:	d9c00317 	ldw	r7,12(sp)
  801150:	1808d43a 	srli	r4,r3,16
  801154:	da000417 	ldw	r8,16(sp)
  801158:	d9800517 	ldw	r6,20(sp)
  80115c:	2089883a 	add	r4,r4,r2
  801160:	94e5883a 	add	r18,r18,r19
  801164:	2700022e 	bgeu	r4,fp,801170 <__muldf3+0x420>
  801168:	00800074 	movhi	r2,1
  80116c:	88a3883a 	add	r17,r17,r2
  801170:	2004d43a 	srli	r2,r4,16
  801174:	2038943a 	slli	fp,r4,16
  801178:	18ffffcc 	andi	r3,r3,65535
  80117c:	b809883a 	mov	r4,r23
  801180:	a80b883a 	mov	r5,r21
  801184:	d9800415 	stw	r6,16(sp)
  801188:	da000315 	stw	r8,12(sp)
  80118c:	d9c00215 	stw	r7,8(sp)
  801190:	e0f9883a 	add	fp,fp,r3
  801194:	1463883a 	add	r17,r2,r17
  801198:	08016d80 	call	8016d8 <__mulsi3>
  80119c:	b80b883a 	mov	r5,r23
  8011a0:	b009883a 	mov	r4,r22
  8011a4:	102f883a 	mov	r23,r2
  8011a8:	08016d80 	call	8016d8 <__mulsi3>
  8011ac:	b00b883a 	mov	r5,r22
  8011b0:	8009883a 	mov	r4,r16
  8011b4:	102d883a 	mov	r22,r2
  8011b8:	08016d80 	call	8016d8 <__mulsi3>
  8011bc:	a80b883a 	mov	r5,r21
  8011c0:	8009883a 	mov	r4,r16
  8011c4:	1021883a 	mov	r16,r2
  8011c8:	08016d80 	call	8016d8 <__mulsi3>
  8011cc:	b80ad43a 	srli	r5,r23,16
  8011d0:	1585883a 	add	r2,r2,r22
  8011d4:	d9c00217 	ldw	r7,8(sp)
  8011d8:	288b883a 	add	r5,r5,r2
  8011dc:	da000317 	ldw	r8,12(sp)
  8011e0:	d9800417 	ldw	r6,16(sp)
  8011e4:	2d80022e 	bgeu	r5,r22,8011f0 <__muldf3+0x4a0>
  8011e8:	00800074 	movhi	r2,1
  8011ec:	80a1883a 	add	r16,r16,r2
  8011f0:	2806943a 	slli	r3,r5,16
  8011f4:	d8800017 	ldw	r2,0(sp)
  8011f8:	bdffffcc 	andi	r23,r23,65535
  8011fc:	1dc7883a 	add	r3,r3,r23
  801200:	90ab883a 	add	r21,r18,r2
  801204:	acd5803a 	cmpltu	r10,r21,r19
  801208:	1d07883a 	add	r3,r3,r20
  80120c:	af2b883a 	add	r21,r21,fp
  801210:	1a97883a 	add	r11,r3,r10
  801214:	af09803a 	cmpltu	r4,r21,fp
  801218:	2826d43a 	srli	r19,r5,16
  80121c:	5c53883a 	add	r9,r11,r17
  801220:	4905883a 	add	r2,r9,r4
  801224:	1d29803a 	cmpltu	r20,r3,r20
  801228:	5a95803a 	cmpltu	r10,r11,r10
  80122c:	1109803a 	cmpltu	r4,r2,r4
  801230:	a2a8b03a 	or	r20,r20,r10
  801234:	4c63803a 	cmpltu	r17,r9,r17
  801238:	a4e7883a 	add	r19,r20,r19
  80123c:	8908b03a 	or	r4,r17,r4
  801240:	a824927a 	slli	r18,r21,9
  801244:	d8c00117 	ldw	r3,4(sp)
  801248:	9927883a 	add	r19,r19,r4
  80124c:	9c27883a 	add	r19,r19,r16
  801250:	9826927a 	slli	r19,r19,9
  801254:	a82ad5fa 	srli	r21,r21,23
  801258:	100ad5fa 	srli	r5,r2,23
  80125c:	90e4b03a 	or	r18,r18,r3
  801260:	1004927a 	slli	r2,r2,9
  801264:	9024c03a 	cmpne	r18,r18,zero
  801268:	9564b03a 	or	r18,r18,r21
  80126c:	98c0402c 	andhi	r3,r19,256
  801270:	90a4b03a 	or	r18,r18,r2
  801274:	9966b03a 	or	r19,r19,r5
  801278:	18007f26 	beq	r3,zero,801478 <__muldf3+0x728>
  80127c:	9006d07a 	srli	r3,r18,1
  801280:	980497fa 	slli	r2,r19,31
  801284:	9480004c 	andi	r18,r18,1
  801288:	9826d07a 	srli	r19,r19,1
  80128c:	1c86b03a 	or	r3,r3,r18
  801290:	18a4b03a 	or	r18,r3,r2
  801294:	3900ffc4 	addi	r4,r7,1023
  801298:	0100320e 	bge	zero,r4,801364 <__muldf3+0x614>
  80129c:	908001cc 	andi	r2,r18,7
  8012a0:	10000726 	beq	r2,zero,8012c0 <__muldf3+0x570>
  8012a4:	908003cc 	andi	r2,r18,15
  8012a8:	10800120 	cmpeqi	r2,r2,4
  8012ac:	1000041e 	bne	r2,zero,8012c0 <__muldf3+0x570>
  8012b0:	90800104 	addi	r2,r18,4
  8012b4:	14a5803a 	cmpltu	r18,r2,r18
  8012b8:	9ca7883a 	add	r19,r19,r18
  8012bc:	1025883a 	mov	r18,r2
  8012c0:	9880402c 	andhi	r2,r19,256
  8012c4:	10000426 	beq	r2,zero,8012d8 <__muldf3+0x588>
  8012c8:	00bfc034 	movhi	r2,65280
  8012cc:	10bfffc4 	addi	r2,r2,-1
  8012d0:	98a6703a 	and	r19,r19,r2
  8012d4:	39010004 	addi	r4,r7,1024
  8012d8:	2081ffc8 	cmpgei	r2,r4,2047
  8012dc:	103f381e 	bne	r2,zero,800fc0 <__muldf3+0x270>
  8012e0:	9804977a 	slli	r2,r19,29
  8012e4:	9024d0fa 	srli	r18,r18,3
  8012e8:	9826927a 	slli	r19,r19,9
  8012ec:	20c1ffcc 	andi	r3,r4,2047
  8012f0:	14a4b03a 	or	r18,r2,r18
  8012f4:	9826d33a 	srli	r19,r19,12
  8012f8:	003ef106 	br	800ec0 <__muldf3+0x170>
  8012fc:	a00d883a 	mov	r6,r20
  801300:	003ee606 	br	800e9c <__muldf3+0x14c>
  801304:	ad4000d4 	ori	r21,r21,3
  801308:	e023883a 	mov	r17,fp
  80130c:	010000c4 	movi	r4,3
  801310:	003ebe06 	br	800e0c <__muldf3+0xbc>
  801314:	ad400054 	ori	r21,r21,1
  801318:	0021883a 	mov	r16,zero
  80131c:	01000044 	movi	r4,1
  801320:	003eba06 	br	800e0c <__muldf3+0xbc>
  801324:	2025883a 	mov	r18,r4
  801328:	05400304 	movi	r21,12
  80132c:	0201ffc4 	movi	r8,2047
  801330:	058000c4 	movi	r22,3
  801334:	003ea406 	br	800dc8 <__muldf3+0x78>
  801338:	0027883a 	mov	r19,zero
  80133c:	05400104 	movi	r21,4
  801340:	0011883a 	mov	r8,zero
  801344:	05800044 	movi	r22,1
  801348:	003e9f06 	br	800dc8 <__muldf3+0x78>
  80134c:	04c00434 	movhi	r19,16
  801350:	000d883a 	mov	r6,zero
  801354:	9cffffc4 	addi	r19,r19,-1
  801358:	04bfffc4 	movi	r18,-1
  80135c:	00c1ffc4 	movi	r3,2047
  801360:	003ed706 	br	800ec0 <__muldf3+0x170>
  801364:	00800044 	movi	r2,1
  801368:	1105c83a 	sub	r2,r2,r4
  80136c:	10c00e48 	cmpgei	r3,r2,57
  801370:	183ed01e 	bne	r3,zero,800eb4 <__muldf3+0x164>
  801374:	10c00808 	cmpgei	r3,r2,32
  801378:	1800411e 	bne	r3,zero,801480 <__muldf3+0x730>
  80137c:	39c10784 	addi	r7,r7,1054
  801380:	99c6983a 	sll	r3,r19,r7
  801384:	9088d83a 	srl	r4,r18,r2
  801388:	91ce983a 	sll	r7,r18,r7
  80138c:	98a6d83a 	srl	r19,r19,r2
  801390:	1904b03a 	or	r2,r3,r4
  801394:	3824c03a 	cmpne	r18,r7,zero
  801398:	1484b03a 	or	r2,r2,r18
  80139c:	10c001cc 	andi	r3,r2,7
  8013a0:	18000726 	beq	r3,zero,8013c0 <__muldf3+0x670>
  8013a4:	10c003cc 	andi	r3,r2,15
  8013a8:	18c00120 	cmpeqi	r3,r3,4
  8013ac:	1800041e 	bne	r3,zero,8013c0 <__muldf3+0x670>
  8013b0:	10c00104 	addi	r3,r2,4
  8013b4:	1885803a 	cmpltu	r2,r3,r2
  8013b8:	98a7883a 	add	r19,r19,r2
  8013bc:	1805883a 	mov	r2,r3
  8013c0:	98c0202c 	andhi	r3,r19,128
  8013c4:	18004326 	beq	r3,zero,8014d4 <__muldf3+0x784>
  8013c8:	00c00044 	movi	r3,1
  8013cc:	0027883a 	mov	r19,zero
  8013d0:	0025883a 	mov	r18,zero
  8013d4:	003eba06 	br	800ec0 <__muldf3+0x170>
  8013d8:	9880022c 	andhi	r2,r19,8
  8013dc:	10000926 	beq	r2,zero,801404 <__muldf3+0x6b4>
  8013e0:	8080022c 	andhi	r2,r16,8
  8013e4:	1000071e 	bne	r2,zero,801404 <__muldf3+0x6b4>
  8013e8:	00800434 	movhi	r2,16
  8013ec:	84c00234 	orhi	r19,r16,8
  8013f0:	10bfffc4 	addi	r2,r2,-1
  8013f4:	98a6703a 	and	r19,r19,r2
  8013f8:	b80d883a 	mov	r6,r23
  8013fc:	8825883a 	mov	r18,r17
  801400:	003fd606 	br	80135c <__muldf3+0x60c>
  801404:	00800434 	movhi	r2,16
  801408:	9cc00234 	orhi	r19,r19,8
  80140c:	10bfffc4 	addi	r2,r2,-1
  801410:	98a6703a 	and	r19,r19,r2
  801414:	a00d883a 	mov	r6,r20
  801418:	003fd006 	br	80135c <__muldf3+0x60c>
  80141c:	e009883a 	mov	r4,fp
  801420:	08016840 	call	801684 <__clzsi2>
  801424:	11400544 	addi	r5,r2,21
  801428:	29000748 	cmpgei	r4,r5,29
  80142c:	1007883a 	mov	r3,r2
  801430:	da000017 	ldw	r8,0(sp)
  801434:	10800804 	addi	r2,r2,32
  801438:	203ed626 	beq	r4,zero,800f94 <__muldf3+0x244>
  80143c:	1c3ffe04 	addi	r16,r3,-8
  801440:	e420983a 	sll	r16,fp,r16
  801444:	0023883a 	mov	r17,zero
  801448:	003ed906 	br	800fb0 <__muldf3+0x260>
  80144c:	08016840 	call	801684 <__clzsi2>
  801450:	11000544 	addi	r4,r2,21
  801454:	21400748 	cmpgei	r5,r4,29
  801458:	1007883a 	mov	r3,r2
  80145c:	d9c00017 	ldw	r7,0(sp)
  801460:	10800804 	addi	r2,r2,32
  801464:	283eb026 	beq	r5,zero,800f28 <__muldf3+0x1d8>
  801468:	1cfffe04 	addi	r19,r3,-8
  80146c:	8ce6983a 	sll	r19,r17,r19
  801470:	0025883a 	mov	r18,zero
  801474:	003eb306 	br	800f44 <__muldf3+0x1f4>
  801478:	400f883a 	mov	r7,r8
  80147c:	003f8506 	br	801294 <__muldf3+0x544>
  801480:	00fff844 	movi	r3,-31
  801484:	1907c83a 	sub	r3,r3,r4
  801488:	10800820 	cmpeqi	r2,r2,32
  80148c:	98c6d83a 	srl	r3,r19,r3
  801490:	1000031e 	bne	r2,zero,8014a0 <__muldf3+0x750>
  801494:	39c10f84 	addi	r7,r7,1086
  801498:	99e6983a 	sll	r19,r19,r7
  80149c:	94e4b03a 	or	r18,r18,r19
  8014a0:	9024c03a 	cmpne	r18,r18,zero
  8014a4:	90c4b03a 	or	r2,r18,r3
  8014a8:	148001cc 	andi	r18,r2,7
  8014ac:	9000051e 	bne	r18,zero,8014c4 <__muldf3+0x774>
  8014b0:	0027883a 	mov	r19,zero
  8014b4:	1004d0fa 	srli	r2,r2,3
  8014b8:	0007883a 	mov	r3,zero
  8014bc:	14a4b03a 	or	r18,r2,r18
  8014c0:	003e7f06 	br	800ec0 <__muldf3+0x170>
  8014c4:	10c003cc 	andi	r3,r2,15
  8014c8:	18c00118 	cmpnei	r3,r3,4
  8014cc:	0027883a 	mov	r19,zero
  8014d0:	183fb71e 	bne	r3,zero,8013b0 <__muldf3+0x660>
  8014d4:	9806927a 	slli	r3,r19,9
  8014d8:	9824977a 	slli	r18,r19,29
  8014dc:	1826d33a 	srli	r19,r3,12
  8014e0:	003ff406 	br	8014b4 <__muldf3+0x764>
  8014e4:	00800434 	movhi	r2,16
  8014e8:	9cc00234 	orhi	r19,r19,8
  8014ec:	10bfffc4 	addi	r2,r2,-1
  8014f0:	98a6703a 	and	r19,r19,r2
  8014f4:	003f9906 	br	80135c <__muldf3+0x60c>

008014f8 <__floatunsidf>:
  8014f8:	defffe04 	addi	sp,sp,-8
  8014fc:	dc000015 	stw	r16,0(sp)
  801500:	dfc00115 	stw	ra,4(sp)
  801504:	2021883a 	mov	r16,r4
  801508:	20000f26 	beq	r4,zero,801548 <__floatunsidf+0x50>
  80150c:	08016840 	call	801684 <__clzsi2>
  801510:	00c10784 	movi	r3,1054
  801514:	1887c83a 	sub	r3,r3,r2
  801518:	110002c8 	cmpgei	r4,r2,11
  80151c:	18c1ffcc 	andi	r3,r3,2047
  801520:	2000121e 	bne	r4,zero,80156c <__floatunsidf+0x74>
  801524:	014002c4 	movi	r5,11
  801528:	288bc83a 	sub	r5,r5,r2
  80152c:	814ad83a 	srl	r5,r16,r5
  801530:	01000434 	movhi	r4,16
  801534:	10800544 	addi	r2,r2,21
  801538:	213fffc4 	addi	r4,r4,-1
  80153c:	80a0983a 	sll	r16,r16,r2
  801540:	290a703a 	and	r5,r5,r4
  801544:	00000206 	br	801550 <__floatunsidf+0x58>
  801548:	0007883a 	mov	r3,zero
  80154c:	000b883a 	mov	r5,zero
  801550:	1806953a 	slli	r3,r3,20
  801554:	8005883a 	mov	r2,r16
  801558:	1946b03a 	or	r3,r3,r5
  80155c:	dfc00117 	ldw	ra,4(sp)
  801560:	dc000017 	ldw	r16,0(sp)
  801564:	dec00204 	addi	sp,sp,8
  801568:	f800283a 	ret
  80156c:	10bffd44 	addi	r2,r2,-11
  801570:	808a983a 	sll	r5,r16,r2
  801574:	00800434 	movhi	r2,16
  801578:	10bfffc4 	addi	r2,r2,-1
  80157c:	288a703a 	and	r5,r5,r2
  801580:	0021883a 	mov	r16,zero
  801584:	003ff206 	br	801550 <__floatunsidf+0x58>

00801588 <__extendsfdf2>:
  801588:	200ad5fa 	srli	r5,r4,23
  80158c:	defffd04 	addi	sp,sp,-12
  801590:	dc000015 	stw	r16,0(sp)
  801594:	29403fcc 	andi	r5,r5,255
  801598:	04002034 	movhi	r16,128
  80159c:	28800044 	addi	r2,r5,1
  8015a0:	dc400115 	stw	r17,4(sp)
  8015a4:	843fffc4 	addi	r16,r16,-1
  8015a8:	dfc00215 	stw	ra,8(sp)
  8015ac:	10803f8c 	andi	r2,r2,254
  8015b0:	2022d7fa 	srli	r17,r4,31
  8015b4:	8120703a 	and	r16,r16,r4
  8015b8:	10000d26 	beq	r2,zero,8015f0 <__extendsfdf2+0x68>
  8015bc:	8008d0fa 	srli	r4,r16,3
  8015c0:	8020977a 	slli	r16,r16,29
  8015c4:	28c0e004 	addi	r3,r5,896
  8015c8:	180a953a 	slli	r5,r3,20
  8015cc:	880697fa 	slli	r3,r17,31
  8015d0:	8005883a 	mov	r2,r16
  8015d4:	290ab03a 	or	r5,r5,r4
  8015d8:	28c6b03a 	or	r3,r5,r3
  8015dc:	dfc00217 	ldw	ra,8(sp)
  8015e0:	dc400117 	ldw	r17,4(sp)
  8015e4:	dc000017 	ldw	r16,0(sp)
  8015e8:	dec00304 	addi	sp,sp,12
  8015ec:	f800283a 	ret
  8015f0:	2800111e 	bne	r5,zero,801638 <__extendsfdf2+0xb0>
  8015f4:	80001926 	beq	r16,zero,80165c <__extendsfdf2+0xd4>
  8015f8:	8009883a 	mov	r4,r16
  8015fc:	08016840 	call	801684 <__clzsi2>
  801600:	10c002c8 	cmpgei	r3,r2,11
  801604:	18001b1e 	bne	r3,zero,801674 <__extendsfdf2+0xec>
  801608:	010002c4 	movi	r4,11
  80160c:	2089c83a 	sub	r4,r4,r2
  801610:	10c00544 	addi	r3,r2,21
  801614:	810ad83a 	srl	r5,r16,r4
  801618:	80e0983a 	sll	r16,r16,r3
  80161c:	00c0e244 	movi	r3,905
  801620:	01000434 	movhi	r4,16
  801624:	213fffc4 	addi	r4,r4,-1
  801628:	1885c83a 	sub	r2,r3,r2
  80162c:	2908703a 	and	r4,r5,r4
  801630:	10c1ffcc 	andi	r3,r2,2047
  801634:	003fe406 	br	8015c8 <__extendsfdf2+0x40>
  801638:	80000b26 	beq	r16,zero,801668 <__extendsfdf2+0xe0>
  80163c:	800ad0fa 	srli	r5,r16,3
  801640:	00800434 	movhi	r2,16
  801644:	10bfffc4 	addi	r2,r2,-1
  801648:	29000234 	orhi	r4,r5,8
  80164c:	8020977a 	slli	r16,r16,29
  801650:	2088703a 	and	r4,r4,r2
  801654:	00c1ffc4 	movi	r3,2047
  801658:	003fdb06 	br	8015c8 <__extendsfdf2+0x40>
  80165c:	0007883a 	mov	r3,zero
  801660:	0009883a 	mov	r4,zero
  801664:	003fd806 	br	8015c8 <__extendsfdf2+0x40>
  801668:	00c1ffc4 	movi	r3,2047
  80166c:	0009883a 	mov	r4,zero
  801670:	003fd506 	br	8015c8 <__extendsfdf2+0x40>
  801674:	113ffd44 	addi	r4,r2,-11
  801678:	810a983a 	sll	r5,r16,r4
  80167c:	0021883a 	mov	r16,zero
  801680:	003fe606 	br	80161c <__extendsfdf2+0x94>

00801684 <__clzsi2>:
  801684:	00bfffd4 	movui	r2,65535
  801688:	11000436 	bltu	r2,r4,80169c <__clzsi2+0x18>
  80168c:	20804030 	cmpltui	r2,r4,256
  801690:	10000e26 	beq	r2,zero,8016cc <__clzsi2+0x48>
  801694:	01400804 	movi	r5,32
  801698:	00000406 	br	8016ac <__clzsi2+0x28>
  80169c:	00804034 	movhi	r2,256
  8016a0:	20800736 	bltu	r4,r2,8016c0 <__clzsi2+0x3c>
  8016a4:	2008d63a 	srli	r4,r4,24
  8016a8:	01400204 	movi	r5,8
  8016ac:	00c02074 	movhi	r3,129
  8016b0:	20c7883a 	add	r3,r4,r3
  8016b4:	18816a03 	ldbu	r2,1448(r3)
  8016b8:	2885c83a 	sub	r2,r5,r2
  8016bc:	f800283a 	ret
  8016c0:	2008d43a 	srli	r4,r4,16
  8016c4:	01400404 	movi	r5,16
  8016c8:	003ff806 	br	8016ac <__clzsi2+0x28>
  8016cc:	2008d23a 	srli	r4,r4,8
  8016d0:	01400604 	movi	r5,24
  8016d4:	003ff506 	br	8016ac <__clzsi2+0x28>

008016d8 <__mulsi3>:
  8016d8:	0005883a 	mov	r2,zero
  8016dc:	20000726 	beq	r4,zero,8016fc <__mulsi3+0x24>
  8016e0:	20c0004c 	andi	r3,r4,1
  8016e4:	2008d07a 	srli	r4,r4,1
  8016e8:	18000126 	beq	r3,zero,8016f0 <__mulsi3+0x18>
  8016ec:	1145883a 	add	r2,r2,r5
  8016f0:	294b883a 	add	r5,r5,r5
  8016f4:	203ffa1e 	bne	r4,zero,8016e0 <__mulsi3+0x8>
  8016f8:	f800283a 	ret
  8016fc:	f800283a 	ret

00801700 <_printf_r>:
  801700:	defffd04 	addi	sp,sp,-12
  801704:	2805883a 	mov	r2,r5
  801708:	dfc00015 	stw	ra,0(sp)
  80170c:	d9800115 	stw	r6,4(sp)
  801710:	d9c00215 	stw	r7,8(sp)
  801714:	21400217 	ldw	r5,8(r4)
  801718:	d9c00104 	addi	r7,sp,4
  80171c:	100d883a 	mov	r6,r2
  801720:	08018dc0 	call	8018dc <___vfprintf_internal_r>
  801724:	dfc00017 	ldw	ra,0(sp)
  801728:	dec00304 	addi	sp,sp,12
  80172c:	f800283a 	ret

00801730 <printf>:
  801730:	defffc04 	addi	sp,sp,-16
  801734:	dfc00015 	stw	ra,0(sp)
  801738:	d9400115 	stw	r5,4(sp)
  80173c:	d9800215 	stw	r6,8(sp)
  801740:	d9c00315 	stw	r7,12(sp)
  801744:	00802074 	movhi	r2,129
  801748:	1089e617 	ldw	r2,10136(r2)
  80174c:	200b883a 	mov	r5,r4
  801750:	d9800104 	addi	r6,sp,4
  801754:	11000217 	ldw	r4,8(r2)
  801758:	08039c80 	call	8039c8 <__vfprintf_internal>
  80175c:	dfc00017 	ldw	ra,0(sp)
  801760:	dec00404 	addi	sp,sp,16
  801764:	f800283a 	ret

00801768 <_puts_r>:
  801768:	defff504 	addi	sp,sp,-44
  80176c:	dc000815 	stw	r16,32(sp)
  801770:	2021883a 	mov	r16,r4
  801774:	2809883a 	mov	r4,r5
  801778:	dc400915 	stw	r17,36(sp)
  80177c:	dfc00a15 	stw	ra,40(sp)
  801780:	2823883a 	mov	r17,r5
  801784:	08018440 	call	801844 <strlen>
  801788:	11000044 	addi	r4,r2,1
  80178c:	d8800515 	stw	r2,20(sp)
  801790:	00800044 	movi	r2,1
  801794:	00c02074 	movhi	r3,129
  801798:	d8800715 	stw	r2,28(sp)
  80179c:	d8800404 	addi	r2,sp,16
  8017a0:	18c15a04 	addi	r3,r3,1384
  8017a4:	d8800115 	stw	r2,4(sp)
  8017a8:	00800084 	movi	r2,2
  8017ac:	dc400415 	stw	r17,16(sp)
  8017b0:	d8c00615 	stw	r3,24(sp)
  8017b4:	d9000315 	stw	r4,12(sp)
  8017b8:	d8800215 	stw	r2,8(sp)
  8017bc:	81400217 	ldw	r5,8(r16)
  8017c0:	80000226 	beq	r16,zero,8017cc <_puts_r+0x64>
  8017c4:	80800e17 	ldw	r2,56(r16)
  8017c8:	10001326 	beq	r2,zero,801818 <_puts_r+0xb0>
  8017cc:	2880030b 	ldhu	r2,12(r5)
  8017d0:	10c8000c 	andi	r3,r2,8192
  8017d4:	1800061e 	bne	r3,zero,8017f0 <_puts_r+0x88>
  8017d8:	28c01917 	ldw	r3,100(r5)
  8017dc:	0137ffc4 	movi	r4,-8193
  8017e0:	10880014 	ori	r2,r2,8192
  8017e4:	1906703a 	and	r3,r3,r4
  8017e8:	2880030d 	sth	r2,12(r5)
  8017ec:	28c01915 	stw	r3,100(r5)
  8017f0:	d9800104 	addi	r6,sp,4
  8017f4:	8009883a 	mov	r4,r16
  8017f8:	0805f8c0 	call	805f8c <__sfvwrite_r>
  8017fc:	10000b1e 	bne	r2,zero,80182c <_puts_r+0xc4>
  801800:	00800284 	movi	r2,10
  801804:	dfc00a17 	ldw	ra,40(sp)
  801808:	dc400917 	ldw	r17,36(sp)
  80180c:	dc000817 	ldw	r16,32(sp)
  801810:	dec00b04 	addi	sp,sp,44
  801814:	f800283a 	ret
  801818:	8009883a 	mov	r4,r16
  80181c:	d9400015 	stw	r5,0(sp)
  801820:	0805b2c0 	call	805b2c <__sinit>
  801824:	d9400017 	ldw	r5,0(sp)
  801828:	003fe806 	br	8017cc <_puts_r+0x64>
  80182c:	00bfffc4 	movi	r2,-1
  801830:	003ff406 	br	801804 <_puts_r+0x9c>

00801834 <puts>:
  801834:	00802074 	movhi	r2,129
  801838:	200b883a 	mov	r5,r4
  80183c:	1109e617 	ldw	r4,10136(r2)
  801840:	08017681 	jmpi	801768 <_puts_r>

00801844 <strlen>:
  801844:	208000cc 	andi	r2,r4,3
  801848:	10000926 	beq	r2,zero,801870 <strlen+0x2c>
  80184c:	2005883a 	mov	r2,r4
  801850:	00000306 	br	801860 <strlen+0x1c>
  801854:	10800044 	addi	r2,r2,1
  801858:	10c000cc 	andi	r3,r2,3
  80185c:	18000526 	beq	r3,zero,801874 <strlen+0x30>
  801860:	10c00007 	ldb	r3,0(r2)
  801864:	183ffb1e 	bne	r3,zero,801854 <strlen+0x10>
  801868:	1105c83a 	sub	r2,r2,r4
  80186c:	f800283a 	ret
  801870:	2005883a 	mov	r2,r4
  801874:	11400017 	ldw	r5,0(r2)
  801878:	01ffbff4 	movhi	r7,65279
  80187c:	39ffbfc4 	addi	r7,r7,-257
  801880:	29c7883a 	add	r3,r5,r7
  801884:	01a02074 	movhi	r6,32897
  801888:	014a303a 	nor	r5,zero,r5
  80188c:	1946703a 	and	r3,r3,r5
  801890:	31a02004 	addi	r6,r6,-32640
  801894:	1986703a 	and	r3,r3,r6
  801898:	1800071e 	bne	r3,zero,8018b8 <strlen+0x74>
  80189c:	11400117 	ldw	r5,4(r2)
  8018a0:	10800104 	addi	r2,r2,4
  8018a4:	29c7883a 	add	r3,r5,r7
  8018a8:	014a303a 	nor	r5,zero,r5
  8018ac:	1946703a 	and	r3,r3,r5
  8018b0:	1986703a 	and	r3,r3,r6
  8018b4:	183ff926 	beq	r3,zero,80189c <strlen+0x58>
  8018b8:	10c00007 	ldb	r3,0(r2)
  8018bc:	183fea26 	beq	r3,zero,801868 <strlen+0x24>
  8018c0:	10c00047 	ldb	r3,1(r2)
  8018c4:	10800044 	addi	r2,r2,1
  8018c8:	183fe726 	beq	r3,zero,801868 <strlen+0x24>
  8018cc:	10c00047 	ldb	r3,1(r2)
  8018d0:	10800044 	addi	r2,r2,1
  8018d4:	183ffa1e 	bne	r3,zero,8018c0 <strlen+0x7c>
  8018d8:	003fe306 	br	801868 <strlen+0x24>

008018dc <___vfprintf_internal_r>:
  8018dc:	deffbf04 	addi	sp,sp,-260
  8018e0:	dfc04015 	stw	ra,256(sp)
  8018e4:	dd803d15 	stw	r22,244(sp)
  8018e8:	dcc03a15 	stw	r19,232(sp)
  8018ec:	dc803915 	stw	r18,228(sp)
  8018f0:	2027883a 	mov	r19,r4
  8018f4:	2825883a 	mov	r18,r5
  8018f8:	302d883a 	mov	r22,r6
  8018fc:	d9c00615 	stw	r7,24(sp)
  801900:	df003f15 	stw	fp,252(sp)
  801904:	ddc03e15 	stw	r23,248(sp)
  801908:	dd403c15 	stw	r21,240(sp)
  80190c:	dd003b15 	stw	r20,236(sp)
  801910:	dc403815 	stw	r17,224(sp)
  801914:	dc003715 	stw	r16,220(sp)
  801918:	08065a00 	call	8065a0 <_localeconv_r>
  80191c:	10800017 	ldw	r2,0(r2)
  801920:	1009883a 	mov	r4,r2
  801924:	d8800d15 	stw	r2,52(sp)
  801928:	08018440 	call	801844 <strlen>
  80192c:	d8800b15 	stw	r2,44(sp)
  801930:	98000226 	beq	r19,zero,80193c <___vfprintf_internal_r+0x60>
  801934:	98800e17 	ldw	r2,56(r19)
  801938:	1001d726 	beq	r2,zero,802098 <___vfprintf_internal_r+0x7bc>
  80193c:	9080030b 	ldhu	r2,12(r18)
  801940:	10c8000c 	andi	r3,r2,8192
  801944:	1800061e 	bne	r3,zero,801960 <___vfprintf_internal_r+0x84>
  801948:	90c01917 	ldw	r3,100(r18)
  80194c:	0137ffc4 	movi	r4,-8193
  801950:	10880014 	ori	r2,r2,8192
  801954:	1906703a 	and	r3,r3,r4
  801958:	9080030d 	sth	r2,12(r18)
  80195c:	90c01915 	stw	r3,100(r18)
  801960:	10c0020c 	andi	r3,r2,8
  801964:	1800fc26 	beq	r3,zero,801d58 <___vfprintf_internal_r+0x47c>
  801968:	90c00417 	ldw	r3,16(r18)
  80196c:	1800fa26 	beq	r3,zero,801d58 <___vfprintf_internal_r+0x47c>
  801970:	1080068c 	andi	r2,r2,26
  801974:	10800298 	cmpnei	r2,r2,10
  801978:	1000ff26 	beq	r2,zero,801d78 <___vfprintf_internal_r+0x49c>
  80197c:	d8802704 	addi	r2,sp,156
  801980:	b02f883a 	mov	r23,r22
  801984:	d8801a15 	stw	r2,104(sp)
  801988:	d8001c15 	stw	zero,112(sp)
  80198c:	d8001b15 	stw	zero,108(sp)
  801990:	d8000815 	stw	zero,32(sp)
  801994:	d8000915 	stw	zero,36(sp)
  801998:	d8000a15 	stw	zero,40(sp)
  80199c:	d8000c15 	stw	zero,48(sp)
  8019a0:	d8001015 	stw	zero,64(sp)
  8019a4:	d8000515 	stw	zero,20(sp)
  8019a8:	102d883a 	mov	r22,r2
  8019ac:	b8800007 	ldb	r2,0(r23)
  8019b0:	1000d726 	beq	r2,zero,801d10 <___vfprintf_internal_r+0x434>
  8019b4:	b821883a 	mov	r16,r23
  8019b8:	00000306 	br	8019c8 <___vfprintf_internal_r+0xec>
  8019bc:	80800047 	ldb	r2,1(r16)
  8019c0:	84000044 	addi	r16,r16,1
  8019c4:	10011926 	beq	r2,zero,801e2c <___vfprintf_internal_r+0x550>
  8019c8:	10800958 	cmpnei	r2,r2,37
  8019cc:	103ffb1e 	bne	r2,zero,8019bc <___vfprintf_internal_r+0xe0>
  8019d0:	85e3c83a 	sub	r17,r16,r23
  8019d4:	85c1171e 	bne	r16,r23,801e34 <___vfprintf_internal_r+0x558>
  8019d8:	80800003 	ldbu	r2,0(r16)
  8019dc:	10803fcc 	andi	r2,r2,255
  8019e0:	1080201c 	xori	r2,r2,128
  8019e4:	10bfe004 	addi	r2,r2,-128
  8019e8:	1000c926 	beq	r2,zero,801d10 <___vfprintf_internal_r+0x434>
  8019ec:	82c00047 	ldb	r11,1(r16)
  8019f0:	85c00044 	addi	r23,r16,1
  8019f4:	d8001345 	stb	zero,77(sp)
  8019f8:	0009883a 	mov	r4,zero
  8019fc:	000b883a 	mov	r5,zero
  801a00:	023fffc4 	movi	r8,-1
  801a04:	0021883a 	mov	r16,zero
  801a08:	0019883a 	mov	r12,zero
  801a0c:	bdc00044 	addi	r23,r23,1
  801a10:	5839883a 	mov	fp,r11
  801a14:	e0bff804 	addi	r2,fp,-32
  801a18:	10c01668 	cmpgeui	r3,r2,89
  801a1c:	18006c1e 	bne	r3,zero,801bd0 <___vfprintf_internal_r+0x2f4>
  801a20:	100490ba 	slli	r2,r2,2
  801a24:	00c02034 	movhi	r3,128
  801a28:	10c7883a 	add	r3,r2,r3
  801a2c:	18868d17 	ldw	r2,6708(r3)
  801a30:	1000683a 	jmp	r2
  801a34:	00802420 	cmpeqi	r2,zero,144
  801a38:	00801bd0 	cmplti	r2,zero,111
  801a3c:	00801bd0 	cmplti	r2,zero,111
  801a40:	00802414 	movui	r2,144
  801a44:	00801bd0 	cmplti	r2,zero,111
  801a48:	00801bd0 	cmplti	r2,zero,111
  801a4c:	00801bd0 	cmplti	r2,zero,111
  801a50:	00801bd0 	cmplti	r2,zero,111
  801a54:	00801bd0 	cmplti	r2,zero,111
  801a58:	00801bd0 	cmplti	r2,zero,111
  801a5c:	008023ec 	andhi	r2,zero,143
  801a60:	008023dc 	xori	r2,zero,143
  801a64:	00801bd0 	cmplti	r2,zero,111
  801a68:	008023c4 	movi	r2,143
  801a6c:	00802378 	rdprs	r2,zero,141
  801a70:	00801bd0 	cmplti	r2,zero,111
  801a74:	0080236c 	andhi	r2,zero,141
  801a78:	00801b98 	cmpnei	r2,zero,110
  801a7c:	00801b98 	cmpnei	r2,zero,110
  801a80:	00801b98 	cmpnei	r2,zero,110
  801a84:	00801b98 	cmpnei	r2,zero,110
  801a88:	00801b98 	cmpnei	r2,zero,110
  801a8c:	00801b98 	cmpnei	r2,zero,110
  801a90:	00801b98 	cmpnei	r2,zero,110
  801a94:	00801b98 	cmpnei	r2,zero,110
  801a98:	00801b98 	cmpnei	r2,zero,110
  801a9c:	00801bd0 	cmplti	r2,zero,111
  801aa0:	00801bd0 	cmplti	r2,zero,111
  801aa4:	00801bd0 	cmplti	r2,zero,111
  801aa8:	00801bd0 	cmplti	r2,zero,111
  801aac:	00801bd0 	cmplti	r2,zero,111
  801ab0:	00801bd0 	cmplti	r2,zero,111
  801ab4:	00801bd0 	cmplti	r2,zero,111
  801ab8:	00801bd0 	cmplti	r2,zero,111
  801abc:	00801bd0 	cmplti	r2,zero,111
  801ac0:	00801bd0 	cmplti	r2,zero,111
  801ac4:	00802260 	cmpeqi	r2,zero,137
  801ac8:	00801e90 	cmplti	r2,zero,122
  801acc:	00801bd0 	cmplti	r2,zero,111
  801ad0:	00801e90 	cmplti	r2,zero,122
  801ad4:	00801bd0 	cmplti	r2,zero,111
  801ad8:	00801bd0 	cmplti	r2,zero,111
  801adc:	00801bd0 	cmplti	r2,zero,111
  801ae0:	00801bd0 	cmplti	r2,zero,111
  801ae4:	0080244c 	andi	r2,zero,145
  801ae8:	00801bd0 	cmplti	r2,zero,111
  801aec:	00801bd0 	cmplti	r2,zero,111
  801af0:	00801dc4 	movi	r2,119
  801af4:	00801bd0 	cmplti	r2,zero,111
  801af8:	00801bd0 	cmplti	r2,zero,111
  801afc:	00801bd0 	cmplti	r2,zero,111
  801b00:	00801bd0 	cmplti	r2,zero,111
  801b04:	00801bd0 	cmplti	r2,zero,111
  801b08:	00801d9c 	xori	r2,zero,118
  801b0c:	00801bd0 	cmplti	r2,zero,111
  801b10:	00801bd0 	cmplti	r2,zero,111
  801b14:	00802480 	call	80248 <__alt_mem_sdram-0x77fdb8>
  801b18:	00801bd0 	cmplti	r2,zero,111
  801b1c:	00801bd0 	cmplti	r2,zero,111
  801b20:	00801bd0 	cmplti	r2,zero,111
  801b24:	00801bd0 	cmplti	r2,zero,111
  801b28:	00801bd0 	cmplti	r2,zero,111
  801b2c:	00801bd0 	cmplti	r2,zero,111
  801b30:	00801bd0 	cmplti	r2,zero,111
  801b34:	00801bd0 	cmplti	r2,zero,111
  801b38:	00801bd0 	cmplti	r2,zero,111
  801b3c:	00801bd0 	cmplti	r2,zero,111
  801b40:	00802458 	cmpnei	r2,zero,145
  801b44:	008020a4 	muli	r2,zero,130
  801b48:	00801e90 	cmplti	r2,zero,122
  801b4c:	00801e90 	cmplti	r2,zero,122
  801b50:	00801e90 	cmplti	r2,zero,122
  801b54:	00802118 	cmpnei	r2,zero,132
  801b58:	008020a4 	muli	r2,zero,130
  801b5c:	00801bd0 	cmplti	r2,zero,111
  801b60:	00801bd0 	cmplti	r2,zero,111
  801b64:	0080224c 	andi	r2,zero,137
  801b68:	00801bd0 	cmplti	r2,zero,111
  801b6c:	00802210 	cmplti	r2,zero,136
  801b70:	00801dc8 	cmpgei	r2,zero,119
  801b74:	008021d0 	cmplti	r2,zero,135
  801b78:	008021c4 	movi	r2,135
  801b7c:	00801bd0 	cmplti	r2,zero,111
  801b80:	0080216c 	andhi	r2,zero,133
  801b84:	00801bd0 	cmplti	r2,zero,111
  801b88:	00801da0 	cmpeqi	r2,zero,118
  801b8c:	00801bd0 	cmplti	r2,zero,111
  801b90:	00801bd0 	cmplti	r2,zero,111
  801b94:	00802124 	muli	r2,zero,132
  801b98:	0021883a 	mov	r16,zero
  801b9c:	e0fff404 	addi	r3,fp,-48
  801ba0:	800490ba 	slli	r2,r16,2
  801ba4:	bf000007 	ldb	fp,0(r23)
  801ba8:	bdc00044 	addi	r23,r23,1
  801bac:	1421883a 	add	r16,r2,r16
  801bb0:	8421883a 	add	r16,r16,r16
  801bb4:	1c21883a 	add	r16,r3,r16
  801bb8:	e0fff404 	addi	r3,fp,-48
  801bbc:	188002b0 	cmpltui	r2,r3,10
  801bc0:	103ff71e 	bne	r2,zero,801ba0 <___vfprintf_internal_r+0x2c4>
  801bc4:	e0bff804 	addi	r2,fp,-32
  801bc8:	10c01668 	cmpgeui	r3,r2,89
  801bcc:	183f9426 	beq	r3,zero,801a20 <___vfprintf_internal_r+0x144>
  801bd0:	21003fcc 	andi	r4,r4,255
  801bd4:	20068f1e 	bne	r4,zero,803614 <___vfprintf_internal_r+0x1d38>
  801bd8:	e0004d26 	beq	fp,zero,801d10 <___vfprintf_internal_r+0x434>
  801bdc:	df001d05 	stb	fp,116(sp)
  801be0:	d8001345 	stb	zero,77(sp)
  801be4:	05000044 	movi	r20,1
  801be8:	05400044 	movi	r21,1
  801bec:	dc401d04 	addi	r17,sp,116
  801bf0:	db000415 	stw	r12,16(sp)
  801bf4:	0011883a 	mov	r8,zero
  801bf8:	d8000715 	stw	zero,28(sp)
  801bfc:	d8800417 	ldw	r2,16(sp)
  801c00:	1380008c 	andi	r14,r2,2
  801c04:	70000126 	beq	r14,zero,801c0c <___vfprintf_internal_r+0x330>
  801c08:	a5000084 	addi	r20,r20,2
  801c0c:	d8800417 	ldw	r2,16(sp)
  801c10:	d8c01c17 	ldw	r3,112(sp)
  801c14:	1340210c 	andi	r13,r2,132
  801c18:	6800021e 	bne	r13,zero,801c24 <___vfprintf_internal_r+0x348>
  801c1c:	850fc83a 	sub	r7,r16,r20
  801c20:	01c36016 	blt	zero,r7,8029a4 <___vfprintf_internal_r+0x10c8>
  801c24:	d8801347 	ldb	r2,77(sp)
  801c28:	10000c26 	beq	r2,zero,801c5c <___vfprintf_internal_r+0x380>
  801c2c:	d8801b17 	ldw	r2,108(sp)
  801c30:	d9001344 	addi	r4,sp,77
  801c34:	18c00044 	addi	r3,r3,1
  801c38:	10800044 	addi	r2,r2,1
  801c3c:	b1000015 	stw	r4,0(r22)
  801c40:	01000044 	movi	r4,1
  801c44:	d8801b15 	stw	r2,108(sp)
  801c48:	b1000115 	stw	r4,4(r22)
  801c4c:	d8c01c15 	stw	r3,112(sp)
  801c50:	10800208 	cmpgei	r2,r2,8
  801c54:	1003a01e 	bne	r2,zero,802ad8 <___vfprintf_internal_r+0x11fc>
  801c58:	b5800204 	addi	r22,r22,8
  801c5c:	70000c26 	beq	r14,zero,801c90 <___vfprintf_internal_r+0x3b4>
  801c60:	d8801b17 	ldw	r2,108(sp)
  801c64:	d9001384 	addi	r4,sp,78
  801c68:	18c00084 	addi	r3,r3,2
  801c6c:	10800044 	addi	r2,r2,1
  801c70:	b1000015 	stw	r4,0(r22)
  801c74:	01000084 	movi	r4,2
  801c78:	d8801b15 	stw	r2,108(sp)
  801c7c:	b1000115 	stw	r4,4(r22)
  801c80:	d8c01c15 	stw	r3,112(sp)
  801c84:	10800208 	cmpgei	r2,r2,8
  801c88:	1003871e 	bne	r2,zero,802aa8 <___vfprintf_internal_r+0x11cc>
  801c8c:	b5800204 	addi	r22,r22,8
  801c90:	6b402018 	cmpnei	r13,r13,128
  801c94:	68025226 	beq	r13,zero,8025e0 <___vfprintf_internal_r+0xd04>
  801c98:	4551c83a 	sub	r8,r8,r21
  801c9c:	02028a16 	blt	zero,r8,8026c8 <___vfprintf_internal_r+0xdec>
  801ca0:	d8800417 	ldw	r2,16(sp)
  801ca4:	1080400c 	andi	r2,r2,256
  801ca8:	1002071e 	bne	r2,zero,8024c8 <___vfprintf_internal_r+0xbec>
  801cac:	d8801b17 	ldw	r2,108(sp)
  801cb0:	1d47883a 	add	r3,r3,r21
  801cb4:	b4400015 	stw	r17,0(r22)
  801cb8:	10800044 	addi	r2,r2,1
  801cbc:	b5400115 	stw	r21,4(r22)
  801cc0:	d8801b15 	stw	r2,108(sp)
  801cc4:	d8c01c15 	stw	r3,112(sp)
  801cc8:	10800208 	cmpgei	r2,r2,8
  801ccc:	1002ee1e 	bne	r2,zero,802888 <___vfprintf_internal_r+0xfac>
  801cd0:	b5800204 	addi	r22,r22,8
  801cd4:	d8800417 	ldw	r2,16(sp)
  801cd8:	1440010c 	andi	r17,r2,4
  801cdc:	88000226 	beq	r17,zero,801ce8 <___vfprintf_internal_r+0x40c>
  801ce0:	8523c83a 	sub	r17,r16,r20
  801ce4:	0440bd16 	blt	zero,r17,801fdc <___vfprintf_internal_r+0x700>
  801ce8:	8500010e 	bge	r16,r20,801cf0 <___vfprintf_internal_r+0x414>
  801cec:	a021883a 	mov	r16,r20
  801cf0:	d8800517 	ldw	r2,20(sp)
  801cf4:	1405883a 	add	r2,r2,r16
  801cf8:	d8800515 	stw	r2,20(sp)
  801cfc:	1802b91e 	bne	r3,zero,8027e4 <___vfprintf_internal_r+0xf08>
  801d00:	b8800007 	ldb	r2,0(r23)
  801d04:	d8001b15 	stw	zero,108(sp)
  801d08:	dd802704 	addi	r22,sp,156
  801d0c:	103f291e 	bne	r2,zero,8019b4 <___vfprintf_internal_r+0xd8>
  801d10:	d8801c17 	ldw	r2,112(sp)
  801d14:	10063a1e 	bne	r2,zero,803600 <___vfprintf_internal_r+0x1d24>
  801d18:	9080030b 	ldhu	r2,12(r18)
  801d1c:	1080100c 	andi	r2,r2,64
  801d20:	1006c91e 	bne	r2,zero,803848 <___vfprintf_internal_r+0x1f6c>
  801d24:	d8800517 	ldw	r2,20(sp)
  801d28:	dfc04017 	ldw	ra,256(sp)
  801d2c:	df003f17 	ldw	fp,252(sp)
  801d30:	ddc03e17 	ldw	r23,248(sp)
  801d34:	dd803d17 	ldw	r22,244(sp)
  801d38:	dd403c17 	ldw	r21,240(sp)
  801d3c:	dd003b17 	ldw	r20,236(sp)
  801d40:	dcc03a17 	ldw	r19,232(sp)
  801d44:	dc803917 	ldw	r18,228(sp)
  801d48:	dc403817 	ldw	r17,224(sp)
  801d4c:	dc003717 	ldw	r16,220(sp)
  801d50:	dec04104 	addi	sp,sp,260
  801d54:	f800283a 	ret
  801d58:	900b883a 	mov	r5,r18
  801d5c:	9809883a 	mov	r4,r19
  801d60:	0803aa40 	call	803aa4 <__swsetup_r>
  801d64:	1006b81e 	bne	r2,zero,803848 <___vfprintf_internal_r+0x1f6c>
  801d68:	9080030b 	ldhu	r2,12(r18)
  801d6c:	1080068c 	andi	r2,r2,26
  801d70:	10800298 	cmpnei	r2,r2,10
  801d74:	103f011e 	bne	r2,zero,80197c <___vfprintf_internal_r+0xa0>
  801d78:	9080038f 	ldh	r2,14(r18)
  801d7c:	103eff16 	blt	r2,zero,80197c <___vfprintf_internal_r+0xa0>
  801d80:	d9c00617 	ldw	r7,24(sp)
  801d84:	b00d883a 	mov	r6,r22
  801d88:	900b883a 	mov	r5,r18
  801d8c:	9809883a 	mov	r4,r19
  801d90:	08039e40 	call	8039e4 <__sbprintf>
  801d94:	d8800515 	stw	r2,20(sp)
  801d98:	003fe206 	br	801d24 <___vfprintf_internal_r+0x448>
  801d9c:	63000414 	ori	r12,r12,16
  801da0:	6080080c 	andi	r2,r12,32
  801da4:	10008126 	beq	r2,zero,801fac <___vfprintf_internal_r+0x6d0>
  801da8:	d8c00617 	ldw	r3,24(sp)
  801dac:	00800044 	movi	r2,1
  801db0:	1d000017 	ldw	r20,0(r3)
  801db4:	1d400117 	ldw	r21,4(r3)
  801db8:	18c00204 	addi	r3,r3,8
  801dbc:	d8c00615 	stw	r3,24(sp)
  801dc0:	00000906 	br	801de8 <___vfprintf_internal_r+0x50c>
  801dc4:	63000414 	ori	r12,r12,16
  801dc8:	6080080c 	andi	r2,r12,32
  801dcc:	10006b26 	beq	r2,zero,801f7c <___vfprintf_internal_r+0x6a0>
  801dd0:	d8c00617 	ldw	r3,24(sp)
  801dd4:	0005883a 	mov	r2,zero
  801dd8:	1d000017 	ldw	r20,0(r3)
  801ddc:	1d400117 	ldw	r21,4(r3)
  801de0:	18c00204 	addi	r3,r3,8
  801de4:	d8c00615 	stw	r3,24(sp)
  801de8:	d8001345 	stb	zero,77(sp)
  801dec:	40ffffe0 	cmpeqi	r3,r8,-1
  801df0:	001b883a 	mov	r13,zero
  801df4:	1801351e 	bne	r3,zero,8022cc <___vfprintf_internal_r+0x9f0>
  801df8:	047fdfc4 	movi	r17,-129
  801dfc:	6448703a 	and	r4,r12,r17
  801e00:	a546b03a 	or	r3,r20,r21
  801e04:	d9000415 	stw	r4,16(sp)
  801e08:	1802e41e 	bne	r3,zero,80299c <___vfprintf_internal_r+0x10c0>
  801e0c:	40025f1e 	bne	r8,zero,80278c <___vfprintf_internal_r+0xeb0>
  801e10:	1003a61e 	bne	r2,zero,802cac <___vfprintf_internal_r+0x13d0>
  801e14:	6540004c 	andi	r21,r12,1
  801e18:	a803d426 	beq	r21,zero,802d6c <___vfprintf_internal_r+0x1490>
  801e1c:	00800c04 	movi	r2,48
  801e20:	d88026c5 	stb	r2,155(sp)
  801e24:	dc4026c4 	addi	r17,sp,155
  801e28:	00014606 	br	802344 <___vfprintf_internal_r+0xa68>
  801e2c:	85e3c83a 	sub	r17,r16,r23
  801e30:	85ffb726 	beq	r16,r23,801d10 <___vfprintf_internal_r+0x434>
  801e34:	d8c01c17 	ldw	r3,112(sp)
  801e38:	d8801b17 	ldw	r2,108(sp)
  801e3c:	b5c00015 	stw	r23,0(r22)
  801e40:	1c47883a 	add	r3,r3,r17
  801e44:	10800044 	addi	r2,r2,1
  801e48:	d8801b15 	stw	r2,108(sp)
  801e4c:	b4400115 	stw	r17,4(r22)
  801e50:	d8c01c15 	stw	r3,112(sp)
  801e54:	10800208 	cmpgei	r2,r2,8
  801e58:	1000061e 	bne	r2,zero,801e74 <___vfprintf_internal_r+0x598>
  801e5c:	b5800204 	addi	r22,r22,8
  801e60:	d8c00517 	ldw	r3,20(sp)
  801e64:	80800003 	ldbu	r2,0(r16)
  801e68:	1c47883a 	add	r3,r3,r17
  801e6c:	d8c00515 	stw	r3,20(sp)
  801e70:	003eda06 	br	8019dc <___vfprintf_internal_r+0x100>
  801e74:	d9801a04 	addi	r6,sp,104
  801e78:	900b883a 	mov	r5,r18
  801e7c:	9809883a 	mov	r4,r19
  801e80:	0808c880 	call	808c88 <__sprint_r>
  801e84:	103fa41e 	bne	r2,zero,801d18 <___vfprintf_internal_r+0x43c>
  801e88:	dd802704 	addi	r22,sp,156
  801e8c:	003ff406 	br	801e60 <___vfprintf_internal_r+0x584>
  801e90:	21003fcc 	andi	r4,r4,255
  801e94:	20066a1e 	bne	r4,zero,803840 <___vfprintf_internal_r+0x1f64>
  801e98:	d8c00617 	ldw	r3,24(sp)
  801e9c:	6080020c 	andi	r2,r12,8
  801ea0:	19000204 	addi	r4,r3,8
  801ea4:	d9000e15 	stw	r4,56(sp)
  801ea8:	1003d01e 	bne	r2,zero,802dec <___vfprintf_internal_r+0x1510>
  801eac:	d8800617 	ldw	r2,24(sp)
  801eb0:	10c00017 	ldw	r3,0(r2)
  801eb4:	10800117 	ldw	r2,4(r2)
  801eb8:	d8c00915 	stw	r3,36(sp)
  801ebc:	d8800a15 	stw	r2,40(sp)
  801ec0:	dd400a17 	ldw	r21,40(sp)
  801ec4:	dd000917 	ldw	r20,36(sp)
  801ec8:	00a00034 	movhi	r2,32768
  801ecc:	10bfffc4 	addi	r2,r2,-1
  801ed0:	a8a2703a 	and	r17,r21,r2
  801ed4:	01dffc34 	movhi	r7,32752
  801ed8:	01bfffc4 	movi	r6,-1
  801edc:	39ffffc4 	addi	r7,r7,-1
  801ee0:	a009883a 	mov	r4,r20
  801ee4:	880b883a 	mov	r5,r17
  801ee8:	da000615 	stw	r8,24(sp)
  801eec:	db000415 	stw	r12,16(sp)
  801ef0:	080daa00 	call	80daa0 <__unorddf2>
  801ef4:	db000417 	ldw	r12,16(sp)
  801ef8:	da000617 	ldw	r8,24(sp)
  801efc:	1004701e 	bne	r2,zero,8030c0 <___vfprintf_internal_r+0x17e4>
  801f00:	01dffc34 	movhi	r7,32752
  801f04:	01bfffc4 	movi	r6,-1
  801f08:	39ffffc4 	addi	r7,r7,-1
  801f0c:	a009883a 	mov	r4,r20
  801f10:	880b883a 	mov	r5,r17
  801f14:	080d07c0 	call	80d07c <__ledf2>
  801f18:	db000417 	ldw	r12,16(sp)
  801f1c:	da000617 	ldw	r8,24(sp)
  801f20:	0084670e 	bge	zero,r2,8030c0 <___vfprintf_internal_r+0x17e4>
  801f24:	000d883a 	mov	r6,zero
  801f28:	000f883a 	mov	r7,zero
  801f2c:	a009883a 	mov	r4,r20
  801f30:	a80b883a 	mov	r5,r21
  801f34:	080d07c0 	call	80d07c <__ledf2>
  801f38:	db000417 	ldw	r12,16(sp)
  801f3c:	10059d16 	blt	r2,zero,8035b4 <___vfprintf_internal_r+0x1cd8>
  801f40:	db401343 	ldbu	r13,77(sp)
  801f44:	e0801210 	cmplti	r2,fp,72
  801f48:	1005741e 	bne	r2,zero,80351c <___vfprintf_internal_r+0x1c40>
  801f4c:	04402074 	movhi	r17,129
  801f50:	8c41ab04 	addi	r17,r17,1708
  801f54:	00bfdfc4 	movi	r2,-129
  801f58:	6084703a 	and	r2,r12,r2
  801f5c:	d8800415 	stw	r2,16(sp)
  801f60:	d8800e17 	ldw	r2,56(sp)
  801f64:	050000c4 	movi	r20,3
  801f68:	054000c4 	movi	r21,3
  801f6c:	d8800615 	stw	r2,24(sp)
  801f70:	0011883a 	mov	r8,zero
  801f74:	d8000715 	stw	zero,28(sp)
  801f78:	0000f606 	br	802354 <___vfprintf_internal_r+0xa78>
  801f7c:	d9000617 	ldw	r4,24(sp)
  801f80:	6080040c 	andi	r2,r12,16
  801f84:	20c00104 	addi	r3,r4,4
  801f88:	1003891e 	bne	r2,zero,802db0 <___vfprintf_internal_r+0x14d4>
  801f8c:	6080100c 	andi	r2,r12,64
  801f90:	10056b26 	beq	r2,zero,803540 <___vfprintf_internal_r+0x1c64>
  801f94:	d8800617 	ldw	r2,24(sp)
  801f98:	002b883a 	mov	r21,zero
  801f9c:	d8c00615 	stw	r3,24(sp)
  801fa0:	1500000b 	ldhu	r20,0(r2)
  801fa4:	0005883a 	mov	r2,zero
  801fa8:	003f8f06 	br	801de8 <___vfprintf_internal_r+0x50c>
  801fac:	d9000617 	ldw	r4,24(sp)
  801fb0:	6080040c 	andi	r2,r12,16
  801fb4:	20c00104 	addi	r3,r4,4
  801fb8:	1003821e 	bne	r2,zero,802dc4 <___vfprintf_internal_r+0x14e8>
  801fbc:	6080100c 	andi	r2,r12,64
  801fc0:	10056526 	beq	r2,zero,803558 <___vfprintf_internal_r+0x1c7c>
  801fc4:	d8800617 	ldw	r2,24(sp)
  801fc8:	002b883a 	mov	r21,zero
  801fcc:	d8c00615 	stw	r3,24(sp)
  801fd0:	1500000b 	ldhu	r20,0(r2)
  801fd4:	00800044 	movi	r2,1
  801fd8:	003f8306 	br	801de8 <___vfprintf_internal_r+0x50c>
  801fdc:	03002074 	movhi	r12,129
  801fe0:	89000450 	cmplti	r4,r17,17
  801fe4:	d8801b17 	ldw	r2,108(sp)
  801fe8:	6301bf04 	addi	r12,r12,1788
  801fec:	20001b1e 	bne	r4,zero,80205c <___vfprintf_internal_r+0x780>
  801ff0:	05400404 	movi	r21,16
  801ff4:	6039883a 	mov	fp,r12
  801ff8:	00000406 	br	80200c <___vfprintf_internal_r+0x730>
  801ffc:	8c7ffc04 	addi	r17,r17,-16
  802000:	89000448 	cmpgei	r4,r17,17
  802004:	b5800204 	addi	r22,r22,8
  802008:	20001326 	beq	r4,zero,802058 <___vfprintf_internal_r+0x77c>
  80200c:	10800044 	addi	r2,r2,1
  802010:	18c00404 	addi	r3,r3,16
  802014:	b7000015 	stw	fp,0(r22)
  802018:	b5400115 	stw	r21,4(r22)
  80201c:	d8c01c15 	stw	r3,112(sp)
  802020:	d8801b15 	stw	r2,108(sp)
  802024:	11000208 	cmpgei	r4,r2,8
  802028:	203ff426 	beq	r4,zero,801ffc <___vfprintf_internal_r+0x720>
  80202c:	d9801a04 	addi	r6,sp,104
  802030:	900b883a 	mov	r5,r18
  802034:	9809883a 	mov	r4,r19
  802038:	0808c880 	call	808c88 <__sprint_r>
  80203c:	103f361e 	bne	r2,zero,801d18 <___vfprintf_internal_r+0x43c>
  802040:	8c7ffc04 	addi	r17,r17,-16
  802044:	89000448 	cmpgei	r4,r17,17
  802048:	d8c01c17 	ldw	r3,112(sp)
  80204c:	d8801b17 	ldw	r2,108(sp)
  802050:	dd802704 	addi	r22,sp,156
  802054:	203fed1e 	bne	r4,zero,80200c <___vfprintf_internal_r+0x730>
  802058:	e019883a 	mov	r12,fp
  80205c:	10800044 	addi	r2,r2,1
  802060:	1c47883a 	add	r3,r3,r17
  802064:	d8801b15 	stw	r2,108(sp)
  802068:	b3000015 	stw	r12,0(r22)
  80206c:	b4400115 	stw	r17,4(r22)
  802070:	d8c01c15 	stw	r3,112(sp)
  802074:	10800210 	cmplti	r2,r2,8
  802078:	103f1b1e 	bne	r2,zero,801ce8 <___vfprintf_internal_r+0x40c>
  80207c:	d9801a04 	addi	r6,sp,104
  802080:	900b883a 	mov	r5,r18
  802084:	9809883a 	mov	r4,r19
  802088:	0808c880 	call	808c88 <__sprint_r>
  80208c:	103f221e 	bne	r2,zero,801d18 <___vfprintf_internal_r+0x43c>
  802090:	d8c01c17 	ldw	r3,112(sp)
  802094:	003f1406 	br	801ce8 <___vfprintf_internal_r+0x40c>
  802098:	9809883a 	mov	r4,r19
  80209c:	0805b2c0 	call	805b2c <__sinit>
  8020a0:	003e2606 	br	80193c <___vfprintf_internal_r+0x60>
  8020a4:	21003fcc 	andi	r4,r4,255
  8020a8:	2005db1e 	bne	r4,zero,803818 <___vfprintf_internal_r+0x1f3c>
  8020ac:	6080080c 	andi	r2,r12,32
  8020b0:	10007026 	beq	r2,zero,802274 <___vfprintf_internal_r+0x998>
  8020b4:	d8c00617 	ldw	r3,24(sp)
  8020b8:	18800117 	ldw	r2,4(r3)
  8020bc:	1d000017 	ldw	r20,0(r3)
  8020c0:	18c00204 	addi	r3,r3,8
  8020c4:	d8c00615 	stw	r3,24(sp)
  8020c8:	102b883a 	mov	r21,r2
  8020cc:	10007516 	blt	r2,zero,8022a4 <___vfprintf_internal_r+0x9c8>
  8020d0:	40bfffd8 	cmpnei	r2,r8,-1
  8020d4:	10034a26 	beq	r2,zero,802e00 <___vfprintf_internal_r+0x1524>
  8020d8:	047fdfc4 	movi	r17,-129
  8020dc:	6446703a 	and	r3,r12,r17
  8020e0:	a544b03a 	or	r2,r20,r21
  8020e4:	d8c00415 	stw	r3,16(sp)
  8020e8:	db401343 	ldbu	r13,77(sp)
  8020ec:	1002ee26 	beq	r2,zero,802ca8 <___vfprintf_internal_r+0x13cc>
  8020f0:	db000417 	ldw	r12,16(sp)
  8020f4:	a803441e 	bne	r21,zero,802e08 <___vfprintf_internal_r+0x152c>
  8020f8:	a08002a8 	cmpgeui	r2,r20,10
  8020fc:	1003421e 	bne	r2,zero,802e08 <___vfprintf_internal_r+0x152c>
  802100:	a5000c04 	addi	r20,r20,48
  802104:	dd0026c5 	stb	r20,155(sp)
  802108:	db000415 	stw	r12,16(sp)
  80210c:	05400044 	movi	r21,1
  802110:	dc4026c4 	addi	r17,sp,155
  802114:	00008b06 	br	802344 <___vfprintf_internal_r+0xa68>
  802118:	bac00007 	ldb	r11,0(r23)
  80211c:	63001014 	ori	r12,r12,64
  802120:	003e3a06 	br	801a0c <___vfprintf_internal_r+0x130>
  802124:	21003fcc 	andi	r4,r4,255
  802128:	2005c11e 	bne	r4,zero,803830 <___vfprintf_internal_r+0x1f54>
  80212c:	00802074 	movhi	r2,129
  802130:	1081b304 	addi	r2,r2,1740
  802134:	d8800c15 	stw	r2,48(sp)
  802138:	6080080c 	andi	r2,r12,32
  80213c:	1000d726 	beq	r2,zero,80249c <___vfprintf_internal_r+0xbc0>
  802140:	d8800617 	ldw	r2,24(sp)
  802144:	15000017 	ldw	r20,0(r2)
  802148:	15400117 	ldw	r21,4(r2)
  80214c:	10800204 	addi	r2,r2,8
  802150:	d8800615 	stw	r2,24(sp)
  802154:	6080004c 	andi	r2,r12,1
  802158:	10000226 	beq	r2,zero,802164 <___vfprintf_internal_r+0x888>
  80215c:	a544b03a 	or	r2,r20,r21
  802160:	1003091e 	bne	r2,zero,802d88 <___vfprintf_internal_r+0x14ac>
  802164:	00800084 	movi	r2,2
  802168:	003f1f06 	br	801de8 <___vfprintf_internal_r+0x50c>
  80216c:	d8800617 	ldw	r2,24(sp)
  802170:	d8001345 	stb	zero,77(sp)
  802174:	14400017 	ldw	r17,0(r2)
  802178:	10c00104 	addi	r3,r2,4
  80217c:	88037726 	beq	r17,zero,802f5c <___vfprintf_internal_r+0x1680>
  802180:	40bfffe0 	cmpeqi	r2,r8,-1
  802184:	1004661e 	bne	r2,zero,803320 <___vfprintf_internal_r+0x1a44>
  802188:	400d883a 	mov	r6,r8
  80218c:	000b883a 	mov	r5,zero
  802190:	8809883a 	mov	r4,r17
  802194:	d8c00715 	stw	r3,28(sp)
  802198:	db000615 	stw	r12,24(sp)
  80219c:	da000415 	stw	r8,16(sp)
  8021a0:	0806f700 	call	806f70 <memchr>
  8021a4:	da000417 	ldw	r8,16(sp)
  8021a8:	db000617 	ldw	r12,24(sp)
  8021ac:	d8c00717 	ldw	r3,28(sp)
  8021b0:	10058926 	beq	r2,zero,8037d8 <___vfprintf_internal_r+0x1efc>
  8021b4:	146bc83a 	sub	r21,r2,r17
  8021b8:	a829883a 	mov	r20,r21
  8021bc:	d8c00615 	stw	r3,24(sp)
  8021c0:	003e8b06 	br	801bf0 <___vfprintf_internal_r+0x314>
  8021c4:	bac00007 	ldb	r11,0(r23)
  8021c8:	63000814 	ori	r12,r12,32
  8021cc:	003e0f06 	br	801a0c <___vfprintf_internal_r+0x130>
  8021d0:	d8c00617 	ldw	r3,24(sp)
  8021d4:	00800c04 	movi	r2,48
  8021d8:	d8801385 	stb	r2,78(sp)
  8021dc:	00801e04 	movi	r2,120
  8021e0:	01002074 	movhi	r4,129
  8021e4:	d88013c5 	stb	r2,79(sp)
  8021e8:	18800104 	addi	r2,r3,4
  8021ec:	d8800615 	stw	r2,24(sp)
  8021f0:	2081b304 	addi	r2,r4,1740
  8021f4:	d8800c15 	stw	r2,48(sp)
  8021f8:	1d000017 	ldw	r20,0(r3)
  8021fc:	002b883a 	mov	r21,zero
  802200:	63000094 	ori	r12,r12,2
  802204:	00800084 	movi	r2,2
  802208:	07001e04 	movi	fp,120
  80220c:	003ef606 	br	801de8 <___vfprintf_internal_r+0x50c>
  802210:	21003fcc 	andi	r4,r4,255
  802214:	2005881e 	bne	r4,zero,803838 <___vfprintf_internal_r+0x1f5c>
  802218:	d9000617 	ldw	r4,24(sp)
  80221c:	6080080c 	andi	r2,r12,32
  802220:	20c00017 	ldw	r3,0(r4)
  802224:	21000104 	addi	r4,r4,4
  802228:	d9000615 	stw	r4,24(sp)
  80222c:	1002d11e 	bne	r2,zero,802d74 <___vfprintf_internal_r+0x1498>
  802230:	6080040c 	andi	r2,r12,16
  802234:	10036f1e 	bne	r2,zero,802ff4 <___vfprintf_internal_r+0x1718>
  802238:	6300100c 	andi	r12,r12,64
  80223c:	60036d26 	beq	r12,zero,802ff4 <___vfprintf_internal_r+0x1718>
  802240:	d8800517 	ldw	r2,20(sp)
  802244:	1880000d 	sth	r2,0(r3)
  802248:	003dd806 	br	8019ac <___vfprintf_internal_r+0xd0>
  80224c:	bac00007 	ldb	r11,0(r23)
  802250:	58801b18 	cmpnei	r2,r11,108
  802254:	10033026 	beq	r2,zero,802f18 <___vfprintf_internal_r+0x163c>
  802258:	63000414 	ori	r12,r12,16
  80225c:	003deb06 	br	801a0c <___vfprintf_internal_r+0x130>
  802260:	21003fcc 	andi	r4,r4,255
  802264:	2005701e 	bne	r4,zero,803828 <___vfprintf_internal_r+0x1f4c>
  802268:	63000414 	ori	r12,r12,16
  80226c:	6080080c 	andi	r2,r12,32
  802270:	103f901e 	bne	r2,zero,8020b4 <___vfprintf_internal_r+0x7d8>
  802274:	d9000617 	ldw	r4,24(sp)
  802278:	6080040c 	andi	r2,r12,16
  80227c:	20c00104 	addi	r3,r4,4
  802280:	1002d51e 	bne	r2,zero,802dd8 <___vfprintf_internal_r+0x14fc>
  802284:	6080100c 	andi	r2,r12,64
  802288:	1004a726 	beq	r2,zero,803528 <___vfprintf_internal_r+0x1c4c>
  80228c:	d8800617 	ldw	r2,24(sp)
  802290:	d8c00615 	stw	r3,24(sp)
  802294:	1500000f 	ldh	r20,0(r2)
  802298:	a02bd7fa 	srai	r21,r20,31
  80229c:	a805883a 	mov	r2,r21
  8022a0:	103f8b0e 	bge	r2,zero,8020d0 <___vfprintf_internal_r+0x7f4>
  8022a4:	a004c03a 	cmpne	r2,r20,zero
  8022a8:	056bc83a 	sub	r21,zero,r21
  8022ac:	a8abc83a 	sub	r21,r21,r2
  8022b0:	00800b44 	movi	r2,45
  8022b4:	d8801345 	stb	r2,77(sp)
  8022b8:	40ffffe0 	cmpeqi	r3,r8,-1
  8022bc:	0529c83a 	sub	r20,zero,r20
  8022c0:	03400b44 	movi	r13,45
  8022c4:	00800044 	movi	r2,1
  8022c8:	183ecb26 	beq	r3,zero,801df8 <___vfprintf_internal_r+0x51c>
  8022cc:	10c00060 	cmpeqi	r3,r2,1
  8022d0:	183f881e 	bne	r3,zero,8020f4 <___vfprintf_internal_r+0x818>
  8022d4:	108000a0 	cmpeqi	r2,r2,2
  8022d8:	1001311e 	bne	r2,zero,8027a0 <___vfprintf_internal_r+0xec4>
  8022dc:	dc402704 	addi	r17,sp,156
  8022e0:	a004d0fa 	srli	r2,r20,3
  8022e4:	a806977a 	slli	r3,r21,29
  8022e8:	a82ad0fa 	srli	r21,r21,3
  8022ec:	a50001cc 	andi	r20,r20,7
  8022f0:	a1000c04 	addi	r4,r20,48
  8022f4:	18a8b03a 	or	r20,r3,r2
  8022f8:	893fffc5 	stb	r4,-1(r17)
  8022fc:	a544b03a 	or	r2,r20,r21
  802300:	880b883a 	mov	r5,r17
  802304:	8c7fffc4 	addi	r17,r17,-1
  802308:	103ff51e 	bne	r2,zero,8022e0 <___vfprintf_internal_r+0xa04>
  80230c:	6080004c 	andi	r2,r12,1
  802310:	10013026 	beq	r2,zero,8027d4 <___vfprintf_internal_r+0xef8>
  802314:	21003fcc 	andi	r4,r4,255
  802318:	2100201c 	xori	r4,r4,128
  80231c:	213fe004 	addi	r4,r4,-128
  802320:	20800c18 	cmpnei	r2,r4,48
  802324:	10012b26 	beq	r2,zero,8027d4 <___vfprintf_internal_r+0xef8>
  802328:	00800c04 	movi	r2,48
  80232c:	297fff84 	addi	r5,r5,-2
  802330:	88bfffc5 	stb	r2,-1(r17)
  802334:	d8802704 	addi	r2,sp,156
  802338:	116bc83a 	sub	r21,r2,r5
  80233c:	db000415 	stw	r12,16(sp)
  802340:	2823883a 	mov	r17,r5
  802344:	4029883a 	mov	r20,r8
  802348:	4540010e 	bge	r8,r21,802350 <___vfprintf_internal_r+0xa74>
  80234c:	a829883a 	mov	r20,r21
  802350:	d8000715 	stw	zero,28(sp)
  802354:	6b403fcc 	andi	r13,r13,255
  802358:	6b40201c 	xori	r13,r13,128
  80235c:	6b7fe004 	addi	r13,r13,-128
  802360:	683e2626 	beq	r13,zero,801bfc <___vfprintf_internal_r+0x320>
  802364:	a5000044 	addi	r20,r20,1
  802368:	003e2406 	br	801bfc <___vfprintf_internal_r+0x320>
  80236c:	bac00007 	ldb	r11,0(r23)
  802370:	63002014 	ori	r12,r12,128
  802374:	003da506 	br	801a0c <___vfprintf_internal_r+0x130>
  802378:	bf000007 	ldb	fp,0(r23)
  80237c:	b8800044 	addi	r2,r23,1
  802380:	e0c00aa0 	cmpeqi	r3,fp,42
  802384:	1805841e 	bne	r3,zero,803998 <___vfprintf_internal_r+0x20bc>
  802388:	e0fff404 	addi	r3,fp,-48
  80238c:	198002b0 	cmpltui	r6,r3,10
  802390:	102f883a 	mov	r23,r2
  802394:	0011883a 	mov	r8,zero
  802398:	303d9e26 	beq	r6,zero,801a14 <___vfprintf_internal_r+0x138>
  80239c:	400490ba 	slli	r2,r8,2
  8023a0:	bf000007 	ldb	fp,0(r23)
  8023a4:	bdc00044 	addi	r23,r23,1
  8023a8:	1211883a 	add	r8,r2,r8
  8023ac:	4211883a 	add	r8,r8,r8
  8023b0:	40d1883a 	add	r8,r8,r3
  8023b4:	e0fff404 	addi	r3,fp,-48
  8023b8:	188002b0 	cmpltui	r2,r3,10
  8023bc:	103ff71e 	bne	r2,zero,80239c <___vfprintf_internal_r+0xac0>
  8023c0:	003d9406 	br	801a14 <___vfprintf_internal_r+0x138>
  8023c4:	bf000003 	ldbu	fp,0(r23)
  8023c8:	e2c03fcc 	andi	r11,fp,255
  8023cc:	5ac0201c 	xori	r11,r11,128
  8023d0:	63000114 	ori	r12,r12,4
  8023d4:	5affe004 	addi	r11,r11,-128
  8023d8:	003d8c06 	br	801a0c <___vfprintf_internal_r+0x130>
  8023dc:	bac00007 	ldb	r11,0(r23)
  8023e0:	01000044 	movi	r4,1
  8023e4:	01400ac4 	movi	r5,43
  8023e8:	003d8806 	br	801a0c <___vfprintf_internal_r+0x130>
  8023ec:	d8800617 	ldw	r2,24(sp)
  8023f0:	bf000003 	ldbu	fp,0(r23)
  8023f4:	14000017 	ldw	r16,0(r2)
  8023f8:	10800104 	addi	r2,r2,4
  8023fc:	8002aa16 	blt	r16,zero,802ea8 <___vfprintf_internal_r+0x15cc>
  802400:	d8800615 	stw	r2,24(sp)
  802404:	e2c03fcc 	andi	r11,fp,255
  802408:	5ac0201c 	xori	r11,r11,128
  80240c:	5affe004 	addi	r11,r11,-128
  802410:	003d7e06 	br	801a0c <___vfprintf_internal_r+0x130>
  802414:	bac00007 	ldb	r11,0(r23)
  802418:	63000054 	ori	r12,r12,1
  80241c:	003d7b06 	br	801a0c <___vfprintf_internal_r+0x130>
  802420:	28803fcc 	andi	r2,r5,255
  802424:	1080201c 	xori	r2,r2,128
  802428:	10bfe004 	addi	r2,r2,-128
  80242c:	bf000003 	ldbu	fp,0(r23)
  802430:	103ff41e 	bne	r2,zero,802404 <___vfprintf_internal_r+0xb28>
  802434:	e2c03fcc 	andi	r11,fp,255
  802438:	5ac0201c 	xori	r11,r11,128
  80243c:	01000044 	movi	r4,1
  802440:	01400804 	movi	r5,32
  802444:	5affe004 	addi	r11,r11,-128
  802448:	003d7006 	br	801a0c <___vfprintf_internal_r+0x130>
  80244c:	bac00007 	ldb	r11,0(r23)
  802450:	63000214 	ori	r12,r12,8
  802454:	003d6d06 	br	801a0c <___vfprintf_internal_r+0x130>
  802458:	d8c00617 	ldw	r3,24(sp)
  80245c:	d8001345 	stb	zero,77(sp)
  802460:	05000044 	movi	r20,1
  802464:	18800017 	ldw	r2,0(r3)
  802468:	18c00104 	addi	r3,r3,4
  80246c:	d8c00615 	stw	r3,24(sp)
  802470:	d8801d05 	stb	r2,116(sp)
  802474:	05400044 	movi	r21,1
  802478:	dc401d04 	addi	r17,sp,116
  80247c:	003ddc06 	br	801bf0 <___vfprintf_internal_r+0x314>
  802480:	21003fcc 	andi	r4,r4,255
  802484:	2004e61e 	bne	r4,zero,803820 <___vfprintf_internal_r+0x1f44>
  802488:	00802074 	movhi	r2,129
  80248c:	1081ae04 	addi	r2,r2,1720
  802490:	d8800c15 	stw	r2,48(sp)
  802494:	6080080c 	andi	r2,r12,32
  802498:	103f291e 	bne	r2,zero,802140 <___vfprintf_internal_r+0x864>
  80249c:	d9000617 	ldw	r4,24(sp)
  8024a0:	6080040c 	andi	r2,r12,16
  8024a4:	20c00104 	addi	r3,r4,4
  8024a8:	10023d1e 	bne	r2,zero,802da0 <___vfprintf_internal_r+0x14c4>
  8024ac:	6080100c 	andi	r2,r12,64
  8024b0:	10042f26 	beq	r2,zero,803570 <___vfprintf_internal_r+0x1c94>
  8024b4:	d8800617 	ldw	r2,24(sp)
  8024b8:	002b883a 	mov	r21,zero
  8024bc:	d8c00615 	stw	r3,24(sp)
  8024c0:	1500000b 	ldhu	r20,0(r2)
  8024c4:	003f2306 	br	802154 <___vfprintf_internal_r+0x878>
  8024c8:	e2c01990 	cmplti	r11,fp,102
  8024cc:	5800f61e 	bne	r11,zero,8028a8 <___vfprintf_internal_r+0xfcc>
  8024d0:	d9000917 	ldw	r4,36(sp)
  8024d4:	d9400a17 	ldw	r5,40(sp)
  8024d8:	000d883a 	mov	r6,zero
  8024dc:	000f883a 	mov	r7,zero
  8024e0:	d8c00e15 	stw	r3,56(sp)
  8024e4:	080cf0c0 	call	80cf0c <__eqdf2>
  8024e8:	d8c00e17 	ldw	r3,56(sp)
  8024ec:	1001881e 	bne	r2,zero,802b10 <___vfprintf_internal_r+0x1234>
  8024f0:	d8801b17 	ldw	r2,108(sp)
  8024f4:	01002074 	movhi	r4,129
  8024f8:	2101ba04 	addi	r4,r4,1768
  8024fc:	10800044 	addi	r2,r2,1
  802500:	18c00044 	addi	r3,r3,1
  802504:	b1000015 	stw	r4,0(r22)
  802508:	01000044 	movi	r4,1
  80250c:	d8801b15 	stw	r2,108(sp)
  802510:	b1000115 	stw	r4,4(r22)
  802514:	d8c01c15 	stw	r3,112(sp)
  802518:	10800208 	cmpgei	r2,r2,8
  80251c:	10036e1e 	bne	r2,zero,8032d8 <___vfprintf_internal_r+0x19fc>
  802520:	b5800204 	addi	r22,r22,8
  802524:	d8801417 	ldw	r2,80(sp)
  802528:	d9000817 	ldw	r4,32(sp)
  80252c:	11020b0e 	bge	r2,r4,802d5c <___vfprintf_internal_r+0x1480>
  802530:	d8800d17 	ldw	r2,52(sp)
  802534:	d9000b17 	ldw	r4,44(sp)
  802538:	b0800015 	stw	r2,0(r22)
  80253c:	d8801b17 	ldw	r2,108(sp)
  802540:	1907883a 	add	r3,r3,r4
  802544:	b1000115 	stw	r4,4(r22)
  802548:	10800044 	addi	r2,r2,1
  80254c:	d8801b15 	stw	r2,108(sp)
  802550:	d8c01c15 	stw	r3,112(sp)
  802554:	10800208 	cmpgei	r2,r2,8
  802558:	1002761e 	bne	r2,zero,802f34 <___vfprintf_internal_r+0x1658>
  80255c:	b5800204 	addi	r22,r22,8
  802560:	d8800817 	ldw	r2,32(sp)
  802564:	157fffc4 	addi	r21,r2,-1
  802568:	057dda0e 	bge	zero,r21,801cd4 <___vfprintf_internal_r+0x3f8>
  80256c:	01c02074 	movhi	r7,129
  802570:	a9000450 	cmplti	r4,r21,17
  802574:	d8801b17 	ldw	r2,108(sp)
  802578:	39c1bb04 	addi	r7,r7,1772
  80257c:	2003521e 	bne	r4,zero,8032c8 <___vfprintf_internal_r+0x19ec>
  802580:	07000404 	movi	fp,16
  802584:	3823883a 	mov	r17,r7
  802588:	00000406 	br	80259c <___vfprintf_internal_r+0xcc0>
  80258c:	b5800204 	addi	r22,r22,8
  802590:	ad7ffc04 	addi	r21,r21,-16
  802594:	a9000448 	cmpgei	r4,r21,17
  802598:	20034a26 	beq	r4,zero,8032c4 <___vfprintf_internal_r+0x19e8>
  80259c:	10800044 	addi	r2,r2,1
  8025a0:	18c00404 	addi	r3,r3,16
  8025a4:	b4400015 	stw	r17,0(r22)
  8025a8:	b7000115 	stw	fp,4(r22)
  8025ac:	d8c01c15 	stw	r3,112(sp)
  8025b0:	d8801b15 	stw	r2,108(sp)
  8025b4:	11000208 	cmpgei	r4,r2,8
  8025b8:	203ff426 	beq	r4,zero,80258c <___vfprintf_internal_r+0xcb0>
  8025bc:	d9801a04 	addi	r6,sp,104
  8025c0:	900b883a 	mov	r5,r18
  8025c4:	9809883a 	mov	r4,r19
  8025c8:	0808c880 	call	808c88 <__sprint_r>
  8025cc:	103dd21e 	bne	r2,zero,801d18 <___vfprintf_internal_r+0x43c>
  8025d0:	d8c01c17 	ldw	r3,112(sp)
  8025d4:	d8801b17 	ldw	r2,108(sp)
  8025d8:	dd802704 	addi	r22,sp,156
  8025dc:	003fec06 	br	802590 <___vfprintf_internal_r+0xcb4>
  8025e0:	8519c83a 	sub	r12,r16,r20
  8025e4:	033dac0e 	bge	zero,r12,801c98 <___vfprintf_internal_r+0x3bc>
  8025e8:	01c02074 	movhi	r7,129
  8025ec:	61000450 	cmplti	r4,r12,17
  8025f0:	d8801b17 	ldw	r2,108(sp)
  8025f4:	39c1bb04 	addi	r7,r7,1772
  8025f8:	2000281e 	bne	r4,zero,80269c <___vfprintf_internal_r+0xdc0>
  8025fc:	dc400e15 	stw	r17,56(sp)
  802600:	dc000f15 	stw	r16,60(sp)
  802604:	b009883a 	mov	r4,r22
  802608:	03400404 	movi	r13,16
  80260c:	a02d883a 	mov	r22,r20
  802610:	6021883a 	mov	r16,r12
  802614:	4029883a 	mov	r20,r8
  802618:	3823883a 	mov	r17,r7
  80261c:	00000406 	br	802630 <___vfprintf_internal_r+0xd54>
  802620:	843ffc04 	addi	r16,r16,-16
  802624:	81400448 	cmpgei	r5,r16,17
  802628:	21000204 	addi	r4,r4,8
  80262c:	28001426 	beq	r5,zero,802680 <___vfprintf_internal_r+0xda4>
  802630:	10800044 	addi	r2,r2,1
  802634:	18c00404 	addi	r3,r3,16
  802638:	24400015 	stw	r17,0(r4)
  80263c:	23400115 	stw	r13,4(r4)
  802640:	d8c01c15 	stw	r3,112(sp)
  802644:	d8801b15 	stw	r2,108(sp)
  802648:	11400208 	cmpgei	r5,r2,8
  80264c:	283ff426 	beq	r5,zero,802620 <___vfprintf_internal_r+0xd44>
  802650:	d9801a04 	addi	r6,sp,104
  802654:	900b883a 	mov	r5,r18
  802658:	9809883a 	mov	r4,r19
  80265c:	0808c880 	call	808c88 <__sprint_r>
  802660:	103dad1e 	bne	r2,zero,801d18 <___vfprintf_internal_r+0x43c>
  802664:	843ffc04 	addi	r16,r16,-16
  802668:	81400448 	cmpgei	r5,r16,17
  80266c:	d8c01c17 	ldw	r3,112(sp)
  802670:	d8801b17 	ldw	r2,108(sp)
  802674:	d9002704 	addi	r4,sp,156
  802678:	03400404 	movi	r13,16
  80267c:	283fec1e 	bne	r5,zero,802630 <___vfprintf_internal_r+0xd54>
  802680:	8019883a 	mov	r12,r16
  802684:	880f883a 	mov	r7,r17
  802688:	dc000f17 	ldw	r16,60(sp)
  80268c:	dc400e17 	ldw	r17,56(sp)
  802690:	a011883a 	mov	r8,r20
  802694:	b029883a 	mov	r20,r22
  802698:	202d883a 	mov	r22,r4
  80269c:	10800044 	addi	r2,r2,1
  8026a0:	1b07883a 	add	r3,r3,r12
  8026a4:	d8801b15 	stw	r2,108(sp)
  8026a8:	b1c00015 	stw	r7,0(r22)
  8026ac:	b3000115 	stw	r12,4(r22)
  8026b0:	d8c01c15 	stw	r3,112(sp)
  8026b4:	10800208 	cmpgei	r2,r2,8
  8026b8:	10030f1e 	bne	r2,zero,8032f8 <___vfprintf_internal_r+0x1a1c>
  8026bc:	4551c83a 	sub	r8,r8,r21
  8026c0:	b5800204 	addi	r22,r22,8
  8026c4:	023d760e 	bge	zero,r8,801ca0 <___vfprintf_internal_r+0x3c4>
  8026c8:	01c02074 	movhi	r7,129
  8026cc:	41000450 	cmplti	r4,r8,17
  8026d0:	d8801b17 	ldw	r2,108(sp)
  8026d4:	39c1bb04 	addi	r7,r7,1772
  8026d8:	2000221e 	bne	r4,zero,802764 <___vfprintf_internal_r+0xe88>
  8026dc:	dc400e15 	stw	r17,56(sp)
  8026e0:	dc000f15 	stw	r16,60(sp)
  8026e4:	03000404 	movi	r12,16
  8026e8:	4021883a 	mov	r16,r8
  8026ec:	3823883a 	mov	r17,r7
  8026f0:	00000406 	br	802704 <___vfprintf_internal_r+0xe28>
  8026f4:	843ffc04 	addi	r16,r16,-16
  8026f8:	81000448 	cmpgei	r4,r16,17
  8026fc:	b5800204 	addi	r22,r22,8
  802700:	20001426 	beq	r4,zero,802754 <___vfprintf_internal_r+0xe78>
  802704:	10800044 	addi	r2,r2,1
  802708:	18c00404 	addi	r3,r3,16
  80270c:	b4400015 	stw	r17,0(r22)
  802710:	b3000115 	stw	r12,4(r22)
  802714:	d8c01c15 	stw	r3,112(sp)
  802718:	d8801b15 	stw	r2,108(sp)
  80271c:	11000208 	cmpgei	r4,r2,8
  802720:	203ff426 	beq	r4,zero,8026f4 <___vfprintf_internal_r+0xe18>
  802724:	d9801a04 	addi	r6,sp,104
  802728:	900b883a 	mov	r5,r18
  80272c:	9809883a 	mov	r4,r19
  802730:	0808c880 	call	808c88 <__sprint_r>
  802734:	103d781e 	bne	r2,zero,801d18 <___vfprintf_internal_r+0x43c>
  802738:	843ffc04 	addi	r16,r16,-16
  80273c:	81000448 	cmpgei	r4,r16,17
  802740:	d8c01c17 	ldw	r3,112(sp)
  802744:	d8801b17 	ldw	r2,108(sp)
  802748:	dd802704 	addi	r22,sp,156
  80274c:	03000404 	movi	r12,16
  802750:	203fec1e 	bne	r4,zero,802704 <___vfprintf_internal_r+0xe28>
  802754:	8011883a 	mov	r8,r16
  802758:	880f883a 	mov	r7,r17
  80275c:	dc000f17 	ldw	r16,60(sp)
  802760:	dc400e17 	ldw	r17,56(sp)
  802764:	10800044 	addi	r2,r2,1
  802768:	1a07883a 	add	r3,r3,r8
  80276c:	d8801b15 	stw	r2,108(sp)
  802770:	b1c00015 	stw	r7,0(r22)
  802774:	b2000115 	stw	r8,4(r22)
  802778:	d8c01c15 	stw	r3,112(sp)
  80277c:	10800208 	cmpgei	r2,r2,8
  802780:	10016e1e 	bne	r2,zero,802d3c <___vfprintf_internal_r+0x1460>
  802784:	b5800204 	addi	r22,r22,8
  802788:	003d4506 	br	801ca0 <___vfprintf_internal_r+0x3c4>
  80278c:	10c00060 	cmpeqi	r3,r2,1
  802790:	1803c81e 	bne	r3,zero,8036b4 <___vfprintf_internal_r+0x1dd8>
  802794:	108000a0 	cmpeqi	r2,r2,2
  802798:	db000417 	ldw	r12,16(sp)
  80279c:	103ecf26 	beq	r2,zero,8022dc <___vfprintf_internal_r+0xa00>
  8027a0:	d9000c17 	ldw	r4,48(sp)
  8027a4:	dc402704 	addi	r17,sp,156
  8027a8:	a08003cc 	andi	r2,r20,15
  8027ac:	a806973a 	slli	r3,r21,28
  8027b0:	a028d13a 	srli	r20,r20,4
  8027b4:	2085883a 	add	r2,r4,r2
  8027b8:	10800003 	ldbu	r2,0(r2)
  8027bc:	a82ad13a 	srli	r21,r21,4
  8027c0:	1d28b03a 	or	r20,r3,r20
  8027c4:	88bfffc5 	stb	r2,-1(r17)
  8027c8:	a544b03a 	or	r2,r20,r21
  8027cc:	8c7fffc4 	addi	r17,r17,-1
  8027d0:	103ff51e 	bne	r2,zero,8027a8 <___vfprintf_internal_r+0xecc>
  8027d4:	d8802704 	addi	r2,sp,156
  8027d8:	146bc83a 	sub	r21,r2,r17
  8027dc:	db000415 	stw	r12,16(sp)
  8027e0:	003ed806 	br	802344 <___vfprintf_internal_r+0xa68>
  8027e4:	d9801a04 	addi	r6,sp,104
  8027e8:	900b883a 	mov	r5,r18
  8027ec:	9809883a 	mov	r4,r19
  8027f0:	0808c880 	call	808c88 <__sprint_r>
  8027f4:	103d4226 	beq	r2,zero,801d00 <___vfprintf_internal_r+0x424>
  8027f8:	003d4706 	br	801d18 <___vfprintf_internal_r+0x43c>
  8027fc:	d9801a04 	addi	r6,sp,104
  802800:	900b883a 	mov	r5,r18
  802804:	9809883a 	mov	r4,r19
  802808:	0808c880 	call	808c88 <__sprint_r>
  80280c:	103d421e 	bne	r2,zero,801d18 <___vfprintf_internal_r+0x43c>
  802810:	d9401417 	ldw	r5,80(sp)
  802814:	d8c01c17 	ldw	r3,112(sp)
  802818:	dd802704 	addi	r22,sp,156
  80281c:	2802c81e 	bne	r5,zero,803340 <___vfprintf_internal_r+0x1a64>
  802820:	d8800417 	ldw	r2,16(sp)
  802824:	d9000817 	ldw	r4,32(sp)
  802828:	1080004c 	andi	r2,r2,1
  80282c:	1104b03a 	or	r2,r2,r4
  802830:	103d2826 	beq	r2,zero,801cd4 <___vfprintf_internal_r+0x3f8>
  802834:	d8800d17 	ldw	r2,52(sp)
  802838:	d9000b17 	ldw	r4,44(sp)
  80283c:	b0800015 	stw	r2,0(r22)
  802840:	d8801b17 	ldw	r2,108(sp)
  802844:	20c7883a 	add	r3,r4,r3
  802848:	b1000115 	stw	r4,4(r22)
  80284c:	10800044 	addi	r2,r2,1
  802850:	d8c01c15 	stw	r3,112(sp)
  802854:	d8801b15 	stw	r2,108(sp)
  802858:	11000208 	cmpgei	r4,r2,8
  80285c:	2003821e 	bne	r4,zero,803668 <___vfprintf_internal_r+0x1d8c>
  802860:	b5800204 	addi	r22,r22,8
  802864:	d9000817 	ldw	r4,32(sp)
  802868:	10800044 	addi	r2,r2,1
  80286c:	d8801b15 	stw	r2,108(sp)
  802870:	20c7883a 	add	r3,r4,r3
  802874:	b4400015 	stw	r17,0(r22)
  802878:	b1000115 	stw	r4,4(r22)
  80287c:	d8c01c15 	stw	r3,112(sp)
  802880:	10800208 	cmpgei	r2,r2,8
  802884:	103d1226 	beq	r2,zero,801cd0 <___vfprintf_internal_r+0x3f4>
  802888:	d9801a04 	addi	r6,sp,104
  80288c:	900b883a 	mov	r5,r18
  802890:	9809883a 	mov	r4,r19
  802894:	0808c880 	call	808c88 <__sprint_r>
  802898:	103d1f1e 	bne	r2,zero,801d18 <___vfprintf_internal_r+0x43c>
  80289c:	d8c01c17 	ldw	r3,112(sp)
  8028a0:	dd802704 	addi	r22,sp,156
  8028a4:	003d0b06 	br	801cd4 <___vfprintf_internal_r+0x3f8>
  8028a8:	d8800817 	ldw	r2,32(sp)
  8028ac:	da001b17 	ldw	r8,108(sp)
  8028b0:	18c00044 	addi	r3,r3,1
  8028b4:	10800088 	cmpgei	r2,r2,2
  8028b8:	45400044 	addi	r21,r8,1
  8028bc:	b7000204 	addi	fp,r22,8
  8028c0:	1000ec26 	beq	r2,zero,802c74 <___vfprintf_internal_r+0x1398>
  8028c4:	00800044 	movi	r2,1
  8028c8:	b0800115 	stw	r2,4(r22)
  8028cc:	b4400015 	stw	r17,0(r22)
  8028d0:	d8c01c15 	stw	r3,112(sp)
  8028d4:	dd401b15 	stw	r21,108(sp)
  8028d8:	a8800210 	cmplti	r2,r21,8
  8028dc:	1001d126 	beq	r2,zero,803024 <___vfprintf_internal_r+0x1748>
  8028e0:	d8800b17 	ldw	r2,44(sp)
  8028e4:	d9000d17 	ldw	r4,52(sp)
  8028e8:	ad400044 	addi	r21,r21,1
  8028ec:	1887883a 	add	r3,r3,r2
  8028f0:	e0800115 	stw	r2,4(fp)
  8028f4:	e1000015 	stw	r4,0(fp)
  8028f8:	d8c01c15 	stw	r3,112(sp)
  8028fc:	dd401b15 	stw	r21,108(sp)
  802900:	a8800208 	cmpgei	r2,r21,8
  802904:	1001be1e 	bne	r2,zero,803000 <___vfprintf_internal_r+0x1724>
  802908:	e7000204 	addi	fp,fp,8
  80290c:	d9000917 	ldw	r4,36(sp)
  802910:	d9400a17 	ldw	r5,40(sp)
  802914:	aa000044 	addi	r8,r21,1
  802918:	000d883a 	mov	r6,zero
  80291c:	000f883a 	mov	r7,zero
  802920:	d8c00e15 	stw	r3,56(sp)
  802924:	da000715 	stw	r8,28(sp)
  802928:	080cf0c0 	call	80cf0c <__eqdf2>
  80292c:	d8c00817 	ldw	r3,32(sp)
  802930:	da000717 	ldw	r8,28(sp)
  802934:	e5800204 	addi	r22,fp,8
  802938:	1affffc4 	addi	r11,r3,-1
  80293c:	d8c00e17 	ldw	r3,56(sp)
  802940:	1000de26 	beq	r2,zero,802cbc <___vfprintf_internal_r+0x13e0>
  802944:	8a400044 	addi	r9,r17,1
  802948:	1ac7883a 	add	r3,r3,r11
  80294c:	da001b15 	stw	r8,108(sp)
  802950:	e2400015 	stw	r9,0(fp)
  802954:	e2c00115 	stw	r11,4(fp)
  802958:	d8c01c15 	stw	r3,112(sp)
  80295c:	42000208 	cmpgei	r8,r8,8
  802960:	4001621e 	bne	r8,zero,802eec <___vfprintf_internal_r+0x1610>
  802964:	e0800404 	addi	r2,fp,16
  802968:	aa000084 	addi	r8,r21,2
  80296c:	b039883a 	mov	fp,r22
  802970:	102d883a 	mov	r22,r2
  802974:	d9001017 	ldw	r4,64(sp)
  802978:	d8801644 	addi	r2,sp,89
  80297c:	da001b15 	stw	r8,108(sp)
  802980:	20c7883a 	add	r3,r4,r3
  802984:	e0800015 	stw	r2,0(fp)
  802988:	e1000115 	stw	r4,4(fp)
  80298c:	d8c01c15 	stw	r3,112(sp)
  802990:	42000210 	cmplti	r8,r8,8
  802994:	403ccf1e 	bne	r8,zero,801cd4 <___vfprintf_internal_r+0x3f8>
  802998:	003fbb06 	br	802888 <___vfprintf_internal_r+0xfac>
  80299c:	db000417 	ldw	r12,16(sp)
  8029a0:	003e4a06 	br	8022cc <___vfprintf_internal_r+0x9f0>
  8029a4:	03002074 	movhi	r12,129
  8029a8:	39000450 	cmplti	r4,r7,17
  8029ac:	d8801b17 	ldw	r2,108(sp)
  8029b0:	6301bf04 	addi	r12,r12,1788
  8029b4:	2000321e 	bne	r4,zero,802a80 <___vfprintf_internal_r+0x11a4>
  8029b8:	dc401115 	stw	r17,68(sp)
  8029bc:	b009883a 	mov	r4,r22
  8029c0:	9023883a 	mov	r17,r18
  8029c4:	a82d883a 	mov	r22,r21
  8029c8:	ddc01215 	stw	r23,72(sp)
  8029cc:	03c00404 	movi	r15,16
  8029d0:	a02f883a 	mov	r23,r20
  8029d4:	db800e15 	stw	r14,56(sp)
  8029d8:	8029883a 	mov	r20,r16
  8029dc:	db400f15 	stw	r13,60(sp)
  8029e0:	402b883a 	mov	r21,r8
  8029e4:	3821883a 	mov	r16,r7
  8029e8:	6025883a 	mov	r18,r12
  8029ec:	00000406 	br	802a00 <___vfprintf_internal_r+0x1124>
  8029f0:	843ffc04 	addi	r16,r16,-16
  8029f4:	81800448 	cmpgei	r6,r16,17
  8029f8:	21000204 	addi	r4,r4,8
  8029fc:	30001426 	beq	r6,zero,802a50 <___vfprintf_internal_r+0x1174>
  802a00:	10800044 	addi	r2,r2,1
  802a04:	18c00404 	addi	r3,r3,16
  802a08:	24800015 	stw	r18,0(r4)
  802a0c:	23c00115 	stw	r15,4(r4)
  802a10:	d8c01c15 	stw	r3,112(sp)
  802a14:	d8801b15 	stw	r2,108(sp)
  802a18:	11800208 	cmpgei	r6,r2,8
  802a1c:	303ff426 	beq	r6,zero,8029f0 <___vfprintf_internal_r+0x1114>
  802a20:	d9801a04 	addi	r6,sp,104
  802a24:	880b883a 	mov	r5,r17
  802a28:	9809883a 	mov	r4,r19
  802a2c:	0808c880 	call	808c88 <__sprint_r>
  802a30:	1001a11e 	bne	r2,zero,8030b8 <___vfprintf_internal_r+0x17dc>
  802a34:	843ffc04 	addi	r16,r16,-16
  802a38:	81800448 	cmpgei	r6,r16,17
  802a3c:	d8c01c17 	ldw	r3,112(sp)
  802a40:	d8801b17 	ldw	r2,108(sp)
  802a44:	d9002704 	addi	r4,sp,156
  802a48:	03c00404 	movi	r15,16
  802a4c:	303fec1e 	bne	r6,zero,802a00 <___vfprintf_internal_r+0x1124>
  802a50:	800f883a 	mov	r7,r16
  802a54:	9019883a 	mov	r12,r18
  802a58:	a021883a 	mov	r16,r20
  802a5c:	8825883a 	mov	r18,r17
  802a60:	b829883a 	mov	r20,r23
  802a64:	db800e17 	ldw	r14,56(sp)
  802a68:	db400f17 	ldw	r13,60(sp)
  802a6c:	ddc01217 	ldw	r23,72(sp)
  802a70:	dc401117 	ldw	r17,68(sp)
  802a74:	a811883a 	mov	r8,r21
  802a78:	b02b883a 	mov	r21,r22
  802a7c:	202d883a 	mov	r22,r4
  802a80:	10800044 	addi	r2,r2,1
  802a84:	19c7883a 	add	r3,r3,r7
  802a88:	d8801b15 	stw	r2,108(sp)
  802a8c:	b3000015 	stw	r12,0(r22)
  802a90:	b1c00115 	stw	r7,4(r22)
  802a94:	d8c01c15 	stw	r3,112(sp)
  802a98:	10800208 	cmpgei	r2,r2,8
  802a9c:	1001781e 	bne	r2,zero,803080 <___vfprintf_internal_r+0x17a4>
  802aa0:	b5800204 	addi	r22,r22,8
  802aa4:	003c5f06 	br	801c24 <___vfprintf_internal_r+0x348>
  802aa8:	d9801a04 	addi	r6,sp,104
  802aac:	900b883a 	mov	r5,r18
  802ab0:	9809883a 	mov	r4,r19
  802ab4:	da000f15 	stw	r8,60(sp)
  802ab8:	db400e15 	stw	r13,56(sp)
  802abc:	0808c880 	call	808c88 <__sprint_r>
  802ac0:	103c951e 	bne	r2,zero,801d18 <___vfprintf_internal_r+0x43c>
  802ac4:	d8c01c17 	ldw	r3,112(sp)
  802ac8:	da000f17 	ldw	r8,60(sp)
  802acc:	db400e17 	ldw	r13,56(sp)
  802ad0:	dd802704 	addi	r22,sp,156
  802ad4:	003c6e06 	br	801c90 <___vfprintf_internal_r+0x3b4>
  802ad8:	d9801a04 	addi	r6,sp,104
  802adc:	900b883a 	mov	r5,r18
  802ae0:	9809883a 	mov	r4,r19
  802ae4:	da001115 	stw	r8,68(sp)
  802ae8:	db400f15 	stw	r13,60(sp)
  802aec:	db800e15 	stw	r14,56(sp)
  802af0:	0808c880 	call	808c88 <__sprint_r>
  802af4:	103c881e 	bne	r2,zero,801d18 <___vfprintf_internal_r+0x43c>
  802af8:	d8c01c17 	ldw	r3,112(sp)
  802afc:	da001117 	ldw	r8,68(sp)
  802b00:	db400f17 	ldw	r13,60(sp)
  802b04:	db800e17 	ldw	r14,56(sp)
  802b08:	dd802704 	addi	r22,sp,156
  802b0c:	003c5306 	br	801c5c <___vfprintf_internal_r+0x380>
  802b10:	d9401417 	ldw	r5,80(sp)
  802b14:	01414c0e 	bge	zero,r5,803048 <___vfprintf_internal_r+0x176c>
  802b18:	d8800717 	ldw	r2,28(sp)
  802b1c:	d9000817 	ldw	r4,32(sp)
  802b20:	102b883a 	mov	r21,r2
  802b24:	2080e316 	blt	r4,r2,802eb4 <___vfprintf_internal_r+0x15d8>
  802b28:	05400a0e 	bge	zero,r21,802b54 <___vfprintf_internal_r+0x1278>
  802b2c:	d8801b17 	ldw	r2,108(sp)
  802b30:	1d47883a 	add	r3,r3,r21
  802b34:	b4400015 	stw	r17,0(r22)
  802b38:	10800044 	addi	r2,r2,1
  802b3c:	d8801b15 	stw	r2,108(sp)
  802b40:	b5400115 	stw	r21,4(r22)
  802b44:	d8c01c15 	stw	r3,112(sp)
  802b48:	10800208 	cmpgei	r2,r2,8
  802b4c:	10030c1e 	bne	r2,zero,803780 <___vfprintf_internal_r+0x1ea4>
  802b50:	b5800204 	addi	r22,r22,8
  802b54:	a800ff16 	blt	r21,zero,802f54 <___vfprintf_internal_r+0x1678>
  802b58:	d8800717 	ldw	r2,28(sp)
  802b5c:	156bc83a 	sub	r21,r2,r21
  802b60:	05410616 	blt	zero,r21,802f7c <___vfprintf_internal_r+0x16a0>
  802b64:	dd401417 	ldw	r21,80(sp)
  802b68:	d8800817 	ldw	r2,32(sp)
  802b6c:	a880d40e 	bge	r21,r2,802ec0 <___vfprintf_internal_r+0x15e4>
  802b70:	d8800d17 	ldw	r2,52(sp)
  802b74:	d9000b17 	ldw	r4,44(sp)
  802b78:	b0800015 	stw	r2,0(r22)
  802b7c:	d8801b17 	ldw	r2,108(sp)
  802b80:	1907883a 	add	r3,r3,r4
  802b84:	b1000115 	stw	r4,4(r22)
  802b88:	10800044 	addi	r2,r2,1
  802b8c:	d8801b15 	stw	r2,108(sp)
  802b90:	d8c01c15 	stw	r3,112(sp)
  802b94:	10800208 	cmpgei	r2,r2,8
  802b98:	10028e1e 	bne	r2,zero,8035d4 <___vfprintf_internal_r+0x1cf8>
  802b9c:	b5800204 	addi	r22,r22,8
  802ba0:	d9000817 	ldw	r4,32(sp)
  802ba4:	d9400717 	ldw	r5,28(sp)
  802ba8:	2545c83a 	sub	r2,r4,r21
  802bac:	2149c83a 	sub	r4,r4,r5
  802bb0:	102b883a 	mov	r21,r2
  802bb4:	2080010e 	bge	r4,r2,802bbc <___vfprintf_internal_r+0x12e0>
  802bb8:	202b883a 	mov	r21,r4
  802bbc:	05400c0e 	bge	zero,r21,802bf0 <___vfprintf_internal_r+0x1314>
  802bc0:	d9000717 	ldw	r4,28(sp)
  802bc4:	1d47883a 	add	r3,r3,r21
  802bc8:	b5400115 	stw	r21,4(r22)
  802bcc:	8913883a 	add	r9,r17,r4
  802bd0:	d9001b17 	ldw	r4,108(sp)
  802bd4:	b2400015 	stw	r9,0(r22)
  802bd8:	d8c01c15 	stw	r3,112(sp)
  802bdc:	21000044 	addi	r4,r4,1
  802be0:	d9001b15 	stw	r4,108(sp)
  802be4:	21000208 	cmpgei	r4,r4,8
  802be8:	2002f01e 	bne	r4,zero,8037ac <___vfprintf_internal_r+0x1ed0>
  802bec:	b5800204 	addi	r22,r22,8
  802bf0:	a800010e 	bge	r21,zero,802bf8 <___vfprintf_internal_r+0x131c>
  802bf4:	002b883a 	mov	r21,zero
  802bf8:	156bc83a 	sub	r21,r2,r21
  802bfc:	057c350e 	bge	zero,r21,801cd4 <___vfprintf_internal_r+0x3f8>
  802c00:	01c02074 	movhi	r7,129
  802c04:	a9000450 	cmplti	r4,r21,17
  802c08:	d8801b17 	ldw	r2,108(sp)
  802c0c:	39c1bb04 	addi	r7,r7,1772
  802c10:	2001ad1e 	bne	r4,zero,8032c8 <___vfprintf_internal_r+0x19ec>
  802c14:	07000404 	movi	fp,16
  802c18:	3823883a 	mov	r17,r7
  802c1c:	00000406 	br	802c30 <___vfprintf_internal_r+0x1354>
  802c20:	b5800204 	addi	r22,r22,8
  802c24:	ad7ffc04 	addi	r21,r21,-16
  802c28:	a9000448 	cmpgei	r4,r21,17
  802c2c:	2001a526 	beq	r4,zero,8032c4 <___vfprintf_internal_r+0x19e8>
  802c30:	10800044 	addi	r2,r2,1
  802c34:	18c00404 	addi	r3,r3,16
  802c38:	b4400015 	stw	r17,0(r22)
  802c3c:	b7000115 	stw	fp,4(r22)
  802c40:	d8c01c15 	stw	r3,112(sp)
  802c44:	d8801b15 	stw	r2,108(sp)
  802c48:	11000208 	cmpgei	r4,r2,8
  802c4c:	203ff426 	beq	r4,zero,802c20 <___vfprintf_internal_r+0x1344>
  802c50:	d9801a04 	addi	r6,sp,104
  802c54:	900b883a 	mov	r5,r18
  802c58:	9809883a 	mov	r4,r19
  802c5c:	0808c880 	call	808c88 <__sprint_r>
  802c60:	103c2d1e 	bne	r2,zero,801d18 <___vfprintf_internal_r+0x43c>
  802c64:	d8c01c17 	ldw	r3,112(sp)
  802c68:	d8801b17 	ldw	r2,108(sp)
  802c6c:	dd802704 	addi	r22,sp,156
  802c70:	003fec06 	br	802c24 <___vfprintf_internal_r+0x1348>
  802c74:	d8800417 	ldw	r2,16(sp)
  802c78:	1080004c 	andi	r2,r2,1
  802c7c:	103f111e 	bne	r2,zero,8028c4 <___vfprintf_internal_r+0xfe8>
  802c80:	00800044 	movi	r2,1
  802c84:	dd401b15 	stw	r21,108(sp)
  802c88:	b4400015 	stw	r17,0(r22)
  802c8c:	b0800115 	stw	r2,4(r22)
  802c90:	d8c01c15 	stw	r3,112(sp)
  802c94:	ad400208 	cmpgei	r21,r21,8
  802c98:	a800941e 	bne	r21,zero,802eec <___vfprintf_internal_r+0x1610>
  802c9c:	42000084 	addi	r8,r8,2
  802ca0:	b5800404 	addi	r22,r22,16
  802ca4:	003f3306 	br	802974 <___vfprintf_internal_r+0x1098>
  802ca8:	4002821e 	bne	r8,zero,8036b4 <___vfprintf_internal_r+0x1dd8>
  802cac:	0011883a 	mov	r8,zero
  802cb0:	002b883a 	mov	r21,zero
  802cb4:	dc402704 	addi	r17,sp,156
  802cb8:	003da206 	br	802344 <___vfprintf_internal_r+0xa68>
  802cbc:	02ff2d0e 	bge	zero,r11,802974 <___vfprintf_internal_r+0x1098>
  802cc0:	58800450 	cmplti	r2,r11,17
  802cc4:	01c02074 	movhi	r7,129
  802cc8:	1003261e 	bne	r2,zero,803964 <___vfprintf_internal_r+0x2088>
  802ccc:	39c1bb04 	addi	r7,r7,1772
  802cd0:	dc000715 	stw	r16,28(sp)
  802cd4:	05800404 	movi	r22,16
  802cd8:	5823883a 	mov	r17,r11
  802cdc:	402b883a 	mov	r21,r8
  802ce0:	3821883a 	mov	r16,r7
  802ce4:	00000506 	br	802cfc <___vfprintf_internal_r+0x1420>
  802ce8:	e7000204 	addi	fp,fp,8
  802cec:	8c7ffc04 	addi	r17,r17,-16
  802cf0:	88800448 	cmpgei	r2,r17,17
  802cf4:	1001be26 	beq	r2,zero,8033f0 <___vfprintf_internal_r+0x1b14>
  802cf8:	ad400044 	addi	r21,r21,1
  802cfc:	18c00404 	addi	r3,r3,16
  802d00:	e4000015 	stw	r16,0(fp)
  802d04:	e5800115 	stw	r22,4(fp)
  802d08:	d8c01c15 	stw	r3,112(sp)
  802d0c:	dd401b15 	stw	r21,108(sp)
  802d10:	a8800208 	cmpgei	r2,r21,8
  802d14:	103ff426 	beq	r2,zero,802ce8 <___vfprintf_internal_r+0x140c>
  802d18:	d9801a04 	addi	r6,sp,104
  802d1c:	900b883a 	mov	r5,r18
  802d20:	9809883a 	mov	r4,r19
  802d24:	0808c880 	call	808c88 <__sprint_r>
  802d28:	103bfb1e 	bne	r2,zero,801d18 <___vfprintf_internal_r+0x43c>
  802d2c:	dd401b17 	ldw	r21,108(sp)
  802d30:	d8c01c17 	ldw	r3,112(sp)
  802d34:	df002704 	addi	fp,sp,156
  802d38:	003fec06 	br	802cec <___vfprintf_internal_r+0x1410>
  802d3c:	d9801a04 	addi	r6,sp,104
  802d40:	900b883a 	mov	r5,r18
  802d44:	9809883a 	mov	r4,r19
  802d48:	0808c880 	call	808c88 <__sprint_r>
  802d4c:	103bf21e 	bne	r2,zero,801d18 <___vfprintf_internal_r+0x43c>
  802d50:	d8c01c17 	ldw	r3,112(sp)
  802d54:	dd802704 	addi	r22,sp,156
  802d58:	003bd106 	br	801ca0 <___vfprintf_internal_r+0x3c4>
  802d5c:	d8800417 	ldw	r2,16(sp)
  802d60:	1080004c 	andi	r2,r2,1
  802d64:	103bdb26 	beq	r2,zero,801cd4 <___vfprintf_internal_r+0x3f8>
  802d68:	003df106 	br	802530 <___vfprintf_internal_r+0xc54>
  802d6c:	dc402704 	addi	r17,sp,156
  802d70:	003d7406 	br	802344 <___vfprintf_internal_r+0xa68>
  802d74:	d9000517 	ldw	r4,20(sp)
  802d78:	2005d7fa 	srai	r2,r4,31
  802d7c:	19000015 	stw	r4,0(r3)
  802d80:	18800115 	stw	r2,4(r3)
  802d84:	003b0906 	br	8019ac <___vfprintf_internal_r+0xd0>
  802d88:	00800c04 	movi	r2,48
  802d8c:	d8801385 	stb	r2,78(sp)
  802d90:	df0013c5 	stb	fp,79(sp)
  802d94:	63000094 	ori	r12,r12,2
  802d98:	00800084 	movi	r2,2
  802d9c:	003c1206 	br	801de8 <___vfprintf_internal_r+0x50c>
  802da0:	25000017 	ldw	r20,0(r4)
  802da4:	002b883a 	mov	r21,zero
  802da8:	d8c00615 	stw	r3,24(sp)
  802dac:	003ce906 	br	802154 <___vfprintf_internal_r+0x878>
  802db0:	25000017 	ldw	r20,0(r4)
  802db4:	002b883a 	mov	r21,zero
  802db8:	d8c00615 	stw	r3,24(sp)
  802dbc:	0005883a 	mov	r2,zero
  802dc0:	003c0906 	br	801de8 <___vfprintf_internal_r+0x50c>
  802dc4:	25000017 	ldw	r20,0(r4)
  802dc8:	002b883a 	mov	r21,zero
  802dcc:	d8c00615 	stw	r3,24(sp)
  802dd0:	00800044 	movi	r2,1
  802dd4:	003c0406 	br	801de8 <___vfprintf_internal_r+0x50c>
  802dd8:	25000017 	ldw	r20,0(r4)
  802ddc:	d8c00615 	stw	r3,24(sp)
  802de0:	a02bd7fa 	srai	r21,r20,31
  802de4:	a805883a 	mov	r2,r21
  802de8:	003cb806 	br	8020cc <___vfprintf_internal_r+0x7f0>
  802dec:	18800017 	ldw	r2,0(r3)
  802df0:	d8800915 	stw	r2,36(sp)
  802df4:	18800117 	ldw	r2,4(r3)
  802df8:	d8800a15 	stw	r2,40(sp)
  802dfc:	003c3006 	br	801ec0 <___vfprintf_internal_r+0x5e4>
  802e00:	db401343 	ldbu	r13,77(sp)
  802e04:	a83cbc26 	beq	r21,zero,8020f8 <___vfprintf_internal_r+0x81c>
  802e08:	dc402704 	addi	r17,sp,156
  802e0c:	a805883a 	mov	r2,r21
  802e10:	dc000715 	stw	r16,28(sp)
  802e14:	902b883a 	mov	r21,r18
  802e18:	8821883a 	mov	r16,r17
  802e1c:	db000415 	stw	r12,16(sp)
  802e20:	a023883a 	mov	r17,r20
  802e24:	da000e15 	stw	r8,56(sp)
  802e28:	9829883a 	mov	r20,r19
  802e2c:	1025883a 	mov	r18,r2
  802e30:	6827883a 	mov	r19,r13
  802e34:	8809883a 	mov	r4,r17
  802e38:	900b883a 	mov	r5,r18
  802e3c:	01800284 	movi	r6,10
  802e40:	000f883a 	mov	r7,zero
  802e44:	080b4e80 	call	80b4e8 <__umoddi3>
  802e48:	10800c04 	addi	r2,r2,48
  802e4c:	8809883a 	mov	r4,r17
  802e50:	900b883a 	mov	r5,r18
  802e54:	01800284 	movi	r6,10
  802e58:	000f883a 	mov	r7,zero
  802e5c:	80bfffc5 	stb	r2,-1(r16)
  802e60:	080aecc0 	call	80aecc <__udivdi3>
  802e64:	900d883a 	mov	r6,r18
  802e68:	880f883a 	mov	r7,r17
  802e6c:	843fffc4 	addi	r16,r16,-1
  802e70:	1023883a 	mov	r17,r2
  802e74:	1825883a 	mov	r18,r3
  802e78:	303fee1e 	bne	r6,zero,802e34 <___vfprintf_internal_r+0x1558>
  802e7c:	39c002a8 	cmpgeui	r7,r7,10
  802e80:	383fec1e 	bne	r7,zero,802e34 <___vfprintf_internal_r+0x1558>
  802e84:	8023883a 	mov	r17,r16
  802e88:	d8802704 	addi	r2,sp,156
  802e8c:	981b883a 	mov	r13,r19
  802e90:	a825883a 	mov	r18,r21
  802e94:	dc000717 	ldw	r16,28(sp)
  802e98:	da000e17 	ldw	r8,56(sp)
  802e9c:	a027883a 	mov	r19,r20
  802ea0:	146bc83a 	sub	r21,r2,r17
  802ea4:	003d2706 	br	802344 <___vfprintf_internal_r+0xa68>
  802ea8:	0421c83a 	sub	r16,zero,r16
  802eac:	d8800615 	stw	r2,24(sp)
  802eb0:	003d4506 	br	8023c8 <___vfprintf_internal_r+0xaec>
  802eb4:	202b883a 	mov	r21,r4
  802eb8:	057f1c16 	blt	zero,r21,802b2c <___vfprintf_internal_r+0x1250>
  802ebc:	003f2506 	br	802b54 <___vfprintf_internal_r+0x1278>
  802ec0:	d8800417 	ldw	r2,16(sp)
  802ec4:	1080004c 	andi	r2,r2,1
  802ec8:	103f291e 	bne	r2,zero,802b70 <___vfprintf_internal_r+0x1294>
  802ecc:	d9000817 	ldw	r4,32(sp)
  802ed0:	d9400717 	ldw	r5,28(sp)
  802ed4:	2545c83a 	sub	r2,r4,r21
  802ed8:	2179c83a 	sub	fp,r4,r5
  802edc:	102b883a 	mov	r21,r2
  802ee0:	e0bf430e 	bge	fp,r2,802bf0 <___vfprintf_internal_r+0x1314>
  802ee4:	e02b883a 	mov	r21,fp
  802ee8:	003f4106 	br	802bf0 <___vfprintf_internal_r+0x1314>
  802eec:	d9801a04 	addi	r6,sp,104
  802ef0:	900b883a 	mov	r5,r18
  802ef4:	9809883a 	mov	r4,r19
  802ef8:	0808c880 	call	808c88 <__sprint_r>
  802efc:	103b861e 	bne	r2,zero,801d18 <___vfprintf_internal_r+0x43c>
  802f00:	da001b17 	ldw	r8,108(sp)
  802f04:	d8c01c17 	ldw	r3,112(sp)
  802f08:	dd802904 	addi	r22,sp,164
  802f0c:	42000044 	addi	r8,r8,1
  802f10:	df002704 	addi	fp,sp,156
  802f14:	003e9706 	br	802974 <___vfprintf_internal_r+0x1098>
  802f18:	bf000043 	ldbu	fp,1(r23)
  802f1c:	63000814 	ori	r12,r12,32
  802f20:	bdc00044 	addi	r23,r23,1
  802f24:	e2c03fcc 	andi	r11,fp,255
  802f28:	5ac0201c 	xori	r11,r11,128
  802f2c:	5affe004 	addi	r11,r11,-128
  802f30:	003ab606 	br	801a0c <___vfprintf_internal_r+0x130>
  802f34:	d9801a04 	addi	r6,sp,104
  802f38:	900b883a 	mov	r5,r18
  802f3c:	9809883a 	mov	r4,r19
  802f40:	0808c880 	call	808c88 <__sprint_r>
  802f44:	103b741e 	bne	r2,zero,801d18 <___vfprintf_internal_r+0x43c>
  802f48:	d8c01c17 	ldw	r3,112(sp)
  802f4c:	dd802704 	addi	r22,sp,156
  802f50:	003d8306 	br	802560 <___vfprintf_internal_r+0xc84>
  802f54:	002b883a 	mov	r21,zero
  802f58:	003eff06 	br	802b58 <___vfprintf_internal_r+0x127c>
  802f5c:	408001f0 	cmpltui	r2,r8,7
  802f60:	402b883a 	mov	r21,r8
  802f64:	1001a426 	beq	r2,zero,8035f8 <___vfprintf_internal_r+0x1d1c>
  802f68:	04402074 	movhi	r17,129
  802f6c:	a829883a 	mov	r20,r21
  802f70:	d8c00615 	stw	r3,24(sp)
  802f74:	8c41b804 	addi	r17,r17,1760
  802f78:	003b1d06 	br	801bf0 <___vfprintf_internal_r+0x314>
  802f7c:	01c02074 	movhi	r7,129
  802f80:	a9000450 	cmplti	r4,r21,17
  802f84:	d8801b17 	ldw	r2,108(sp)
  802f88:	39c1bb04 	addi	r7,r7,1772
  802f8c:	20017f1e 	bne	r4,zero,80358c <___vfprintf_internal_r+0x1cb0>
  802f90:	dc000e15 	stw	r16,56(sp)
  802f94:	07000404 	movi	fp,16
  802f98:	3821883a 	mov	r16,r7
  802f9c:	00000406 	br	802fb0 <___vfprintf_internal_r+0x16d4>
  802fa0:	b5800204 	addi	r22,r22,8
  802fa4:	ad7ffc04 	addi	r21,r21,-16
  802fa8:	a9000448 	cmpgei	r4,r21,17
  802fac:	20017526 	beq	r4,zero,803584 <___vfprintf_internal_r+0x1ca8>
  802fb0:	10800044 	addi	r2,r2,1
  802fb4:	18c00404 	addi	r3,r3,16
  802fb8:	b4000015 	stw	r16,0(r22)
  802fbc:	b7000115 	stw	fp,4(r22)
  802fc0:	d8c01c15 	stw	r3,112(sp)
  802fc4:	d8801b15 	stw	r2,108(sp)
  802fc8:	11000208 	cmpgei	r4,r2,8
  802fcc:	203ff426 	beq	r4,zero,802fa0 <___vfprintf_internal_r+0x16c4>
  802fd0:	d9801a04 	addi	r6,sp,104
  802fd4:	900b883a 	mov	r5,r18
  802fd8:	9809883a 	mov	r4,r19
  802fdc:	0808c880 	call	808c88 <__sprint_r>
  802fe0:	103b4d1e 	bne	r2,zero,801d18 <___vfprintf_internal_r+0x43c>
  802fe4:	d8c01c17 	ldw	r3,112(sp)
  802fe8:	d8801b17 	ldw	r2,108(sp)
  802fec:	dd802704 	addi	r22,sp,156
  802ff0:	003fec06 	br	802fa4 <___vfprintf_internal_r+0x16c8>
  802ff4:	d8800517 	ldw	r2,20(sp)
  802ff8:	18800015 	stw	r2,0(r3)
  802ffc:	003a6b06 	br	8019ac <___vfprintf_internal_r+0xd0>
  803000:	d9801a04 	addi	r6,sp,104
  803004:	900b883a 	mov	r5,r18
  803008:	9809883a 	mov	r4,r19
  80300c:	0808c880 	call	808c88 <__sprint_r>
  803010:	103b411e 	bne	r2,zero,801d18 <___vfprintf_internal_r+0x43c>
  803014:	d8c01c17 	ldw	r3,112(sp)
  803018:	dd401b17 	ldw	r21,108(sp)
  80301c:	df002704 	addi	fp,sp,156
  803020:	003e3a06 	br	80290c <___vfprintf_internal_r+0x1030>
  803024:	d9801a04 	addi	r6,sp,104
  803028:	900b883a 	mov	r5,r18
  80302c:	9809883a 	mov	r4,r19
  803030:	0808c880 	call	808c88 <__sprint_r>
  803034:	103b381e 	bne	r2,zero,801d18 <___vfprintf_internal_r+0x43c>
  803038:	d8c01c17 	ldw	r3,112(sp)
  80303c:	dd401b17 	ldw	r21,108(sp)
  803040:	df002704 	addi	fp,sp,156
  803044:	003e2606 	br	8028e0 <___vfprintf_internal_r+0x1004>
  803048:	d8801b17 	ldw	r2,108(sp)
  80304c:	01002074 	movhi	r4,129
  803050:	2101ba04 	addi	r4,r4,1768
  803054:	10800044 	addi	r2,r2,1
  803058:	18c00044 	addi	r3,r3,1
  80305c:	b1000015 	stw	r4,0(r22)
  803060:	01000044 	movi	r4,1
  803064:	d8801b15 	stw	r2,108(sp)
  803068:	b1000115 	stw	r4,4(r22)
  80306c:	d8c01c15 	stw	r3,112(sp)
  803070:	10800208 	cmpgei	r2,r2,8
  803074:	103de11e 	bne	r2,zero,8027fc <___vfprintf_internal_r+0xf20>
  803078:	b5800204 	addi	r22,r22,8
  80307c:	003de706 	br	80281c <___vfprintf_internal_r+0xf40>
  803080:	d9801a04 	addi	r6,sp,104
  803084:	900b883a 	mov	r5,r18
  803088:	9809883a 	mov	r4,r19
  80308c:	da001115 	stw	r8,68(sp)
  803090:	db400f15 	stw	r13,60(sp)
  803094:	db800e15 	stw	r14,56(sp)
  803098:	0808c880 	call	808c88 <__sprint_r>
  80309c:	103b1e1e 	bne	r2,zero,801d18 <___vfprintf_internal_r+0x43c>
  8030a0:	d8c01c17 	ldw	r3,112(sp)
  8030a4:	da001117 	ldw	r8,68(sp)
  8030a8:	db400f17 	ldw	r13,60(sp)
  8030ac:	db800e17 	ldw	r14,56(sp)
  8030b0:	dd802704 	addi	r22,sp,156
  8030b4:	003adb06 	br	801c24 <___vfprintf_internal_r+0x348>
  8030b8:	8825883a 	mov	r18,r17
  8030bc:	003b1606 	br	801d18 <___vfprintf_internal_r+0x43c>
  8030c0:	d9000917 	ldw	r4,36(sp)
  8030c4:	d9400a17 	ldw	r5,40(sp)
  8030c8:	da000615 	stw	r8,24(sp)
  8030cc:	200d883a 	mov	r6,r4
  8030d0:	280f883a 	mov	r7,r5
  8030d4:	db000415 	stw	r12,16(sp)
  8030d8:	080daa00 	call	80daa0 <__unorddf2>
  8030dc:	db000417 	ldw	r12,16(sp)
  8030e0:	da000617 	ldw	r8,24(sp)
  8030e4:	1002091e 	bne	r2,zero,80390c <___vfprintf_internal_r+0x2030>
  8030e8:	057ff7c4 	movi	r21,-33
  8030ec:	40bfffe0 	cmpeqi	r2,r8,-1
  8030f0:	e56a703a 	and	r21,fp,r21
  8030f4:	1001ab1e 	bne	r2,zero,8037a4 <___vfprintf_internal_r+0x1ec8>
  8030f8:	a88011d8 	cmpnei	r2,r21,71
  8030fc:	10015726 	beq	r2,zero,80365c <___vfprintf_internal_r+0x1d80>
  803100:	60804014 	ori	r2,r12,256
  803104:	d8800415 	stw	r2,16(sp)
  803108:	d8800a17 	ldw	r2,40(sp)
  80310c:	10012d16 	blt	r2,zero,8035c4 <___vfprintf_internal_r+0x1ce8>
  803110:	dd000a17 	ldw	r20,40(sp)
  803114:	d8000605 	stb	zero,24(sp)
  803118:	e08019a0 	cmpeqi	r2,fp,102
  80311c:	d8800f15 	stw	r2,60(sp)
  803120:	1000c31e 	bne	r2,zero,803430 <___vfprintf_internal_r+0x1b54>
  803124:	e08011a0 	cmpeqi	r2,fp,70
  803128:	1000c11e 	bne	r2,zero,803430 <___vfprintf_internal_r+0x1b54>
  80312c:	a8801158 	cmpnei	r2,r21,69
  803130:	10016226 	beq	r2,zero,8036bc <___vfprintf_internal_r+0x1de0>
  803134:	d8801804 	addi	r2,sp,96
  803138:	d8800315 	stw	r2,12(sp)
  80313c:	d9400917 	ldw	r5,36(sp)
  803140:	d8801504 	addi	r2,sp,84
  803144:	d8800215 	stw	r2,8(sp)
  803148:	d8801404 	addi	r2,sp,80
  80314c:	da000015 	stw	r8,0(sp)
  803150:	9809883a 	mov	r4,r19
  803154:	d8800115 	stw	r2,4(sp)
  803158:	01c00084 	movi	r7,2
  80315c:	a00d883a 	mov	r6,r20
  803160:	db000815 	stw	r12,32(sp)
  803164:	da000715 	stw	r8,28(sp)
  803168:	0803e200 	call	803e20 <_dtoa_r>
  80316c:	da000717 	ldw	r8,28(sp)
  803170:	e10019d8 	cmpnei	r4,fp,103
  803174:	db000817 	ldw	r12,32(sp)
  803178:	1023883a 	mov	r17,r2
  80317c:	4007883a 	mov	r3,r8
  803180:	2001621e 	bne	r4,zero,80370c <___vfprintf_internal_r+0x1e30>
  803184:	6080004c 	andi	r2,r12,1
  803188:	1001621e 	bne	r2,zero,803714 <___vfprintf_internal_r+0x1e38>
  80318c:	d8801417 	ldw	r2,80(sp)
  803190:	ad4011e0 	cmpeqi	r21,r21,71
  803194:	d8800715 	stw	r2,28(sp)
  803198:	d8801817 	ldw	r2,96(sp)
  80319c:	1445c83a 	sub	r2,r2,r17
  8031a0:	d8800815 	stw	r2,32(sp)
  8031a4:	a8000526 	beq	r21,zero,8031bc <___vfprintf_internal_r+0x18e0>
  8031a8:	d8c00717 	ldw	r3,28(sp)
  8031ac:	18bfff50 	cmplti	r2,r3,-3
  8031b0:	1000011e 	bne	r2,zero,8031b8 <___vfprintf_internal_r+0x18dc>
  8031b4:	40c1670e 	bge	r8,r3,803754 <___vfprintf_internal_r+0x1e78>
  8031b8:	e73fff84 	addi	fp,fp,-2
  8031bc:	d8800717 	ldw	r2,28(sp)
  8031c0:	df001645 	stb	fp,89(sp)
  8031c4:	157fffc4 	addi	r21,r2,-1
  8031c8:	dd401415 	stw	r21,80(sp)
  8031cc:	a801c316 	blt	r21,zero,8038dc <___vfprintf_internal_r+0x2000>
  8031d0:	00800ac4 	movi	r2,43
  8031d4:	d8801685 	stb	r2,90(sp)
  8031d8:	a8800290 	cmplti	r2,r21,10
  8031dc:	1001b81e 	bne	r2,zero,8038c0 <___vfprintf_internal_r+0x1fe4>
  8031e0:	d98019c4 	addi	r6,sp,103
  8031e4:	9029883a 	mov	r20,r18
  8031e8:	dc400715 	stw	r17,28(sp)
  8031ec:	8025883a 	mov	r18,r16
  8031f0:	db000f15 	stw	r12,60(sp)
  8031f4:	3021883a 	mov	r16,r6
  8031f8:	a809883a 	mov	r4,r21
  8031fc:	01400284 	movi	r5,10
  803200:	080bb2c0 	call	80bb2c <__modsi3>
  803204:	10800c04 	addi	r2,r2,48
  803208:	a809883a 	mov	r4,r21
  80320c:	80bfffc5 	stb	r2,-1(r16)
  803210:	01400284 	movi	r5,10
  803214:	080baac0 	call	80baac <__divsi3>
  803218:	a9001908 	cmpgei	r4,r21,100
  80321c:	8023883a 	mov	r17,r16
  803220:	102b883a 	mov	r21,r2
  803224:	843fffc4 	addi	r16,r16,-1
  803228:	203ff31e 	bne	r4,zero,8031f8 <___vfprintf_internal_r+0x191c>
  80322c:	800d883a 	mov	r6,r16
  803230:	11000c04 	addi	r4,r2,48
  803234:	9021883a 	mov	r16,r18
  803238:	a025883a 	mov	r18,r20
  80323c:	8829883a 	mov	r20,r17
  803240:	a0bfff84 	addi	r2,r20,-2
  803244:	313fffc5 	stb	r4,-1(r6)
  803248:	d8c019c4 	addi	r3,sp,103
  80324c:	db000f17 	ldw	r12,60(sp)
  803250:	dc400717 	ldw	r17,28(sp)
  803254:	10c1cd2e 	bgeu	r2,r3,80398c <___vfprintf_internal_r+0x20b0>
  803258:	d8c016c4 	addi	r3,sp,91
  80325c:	00000106 	br	803264 <___vfprintf_internal_r+0x1988>
  803260:	11000003 	ldbu	r4,0(r2)
  803264:	19000005 	stb	r4,0(r3)
  803268:	10800044 	addi	r2,r2,1
  80326c:	d90019c4 	addi	r4,sp,103
  803270:	18c00044 	addi	r3,r3,1
  803274:	113ffa1e 	bne	r2,r4,803260 <___vfprintf_internal_r+0x1984>
  803278:	d8801a44 	addi	r2,sp,105
  80327c:	d8c016c4 	addi	r3,sp,91
  803280:	1505c83a 	sub	r2,r2,r20
  803284:	1885883a 	add	r2,r3,r2
  803288:	d8c01644 	addi	r3,sp,89
  80328c:	10c5c83a 	sub	r2,r2,r3
  803290:	d8801015 	stw	r2,64(sp)
  803294:	d8c00817 	ldw	r3,32(sp)
  803298:	d9001017 	ldw	r4,64(sp)
  80329c:	18800088 	cmpgei	r2,r3,2
  8032a0:	20eb883a 	add	r21,r4,r3
  8032a4:	10019226 	beq	r2,zero,8038f0 <___vfprintf_internal_r+0x2014>
  8032a8:	d8800b17 	ldw	r2,44(sp)
  8032ac:	a8ab883a 	add	r21,r21,r2
  8032b0:	a829883a 	mov	r20,r21
  8032b4:	a800010e 	bge	r21,zero,8032bc <___vfprintf_internal_r+0x19e0>
  8032b8:	0029883a 	mov	r20,zero
  8032bc:	d8000715 	stw	zero,28(sp)
  8032c0:	00008e06 	br	8034fc <___vfprintf_internal_r+0x1c20>
  8032c4:	880f883a 	mov	r7,r17
  8032c8:	10800044 	addi	r2,r2,1
  8032cc:	1d47883a 	add	r3,r3,r21
  8032d0:	b1c00015 	stw	r7,0(r22)
  8032d4:	003a7906 	br	801cbc <___vfprintf_internal_r+0x3e0>
  8032d8:	d9801a04 	addi	r6,sp,104
  8032dc:	900b883a 	mov	r5,r18
  8032e0:	9809883a 	mov	r4,r19
  8032e4:	0808c880 	call	808c88 <__sprint_r>
  8032e8:	103a8b1e 	bne	r2,zero,801d18 <___vfprintf_internal_r+0x43c>
  8032ec:	d8c01c17 	ldw	r3,112(sp)
  8032f0:	dd802704 	addi	r22,sp,156
  8032f4:	003c8b06 	br	802524 <___vfprintf_internal_r+0xc48>
  8032f8:	d9801a04 	addi	r6,sp,104
  8032fc:	900b883a 	mov	r5,r18
  803300:	9809883a 	mov	r4,r19
  803304:	da000e15 	stw	r8,56(sp)
  803308:	0808c880 	call	808c88 <__sprint_r>
  80330c:	103a821e 	bne	r2,zero,801d18 <___vfprintf_internal_r+0x43c>
  803310:	d8c01c17 	ldw	r3,112(sp)
  803314:	da000e17 	ldw	r8,56(sp)
  803318:	dd802704 	addi	r22,sp,156
  80331c:	003a5e06 	br	801c98 <___vfprintf_internal_r+0x3bc>
  803320:	8809883a 	mov	r4,r17
  803324:	db000415 	stw	r12,16(sp)
  803328:	d8c00615 	stw	r3,24(sp)
  80332c:	08018440 	call	801844 <strlen>
  803330:	db000417 	ldw	r12,16(sp)
  803334:	102b883a 	mov	r21,r2
  803338:	1029883a 	mov	r20,r2
  80333c:	003a2c06 	br	801bf0 <___vfprintf_internal_r+0x314>
  803340:	d8800d17 	ldw	r2,52(sp)
  803344:	d9000b17 	ldw	r4,44(sp)
  803348:	b0800015 	stw	r2,0(r22)
  80334c:	d8801b17 	ldw	r2,108(sp)
  803350:	20c7883a 	add	r3,r4,r3
  803354:	b1000115 	stw	r4,4(r22)
  803358:	10800044 	addi	r2,r2,1
  80335c:	d8c01c15 	stw	r3,112(sp)
  803360:	d8801b15 	stw	r2,108(sp)
  803364:	11000208 	cmpgei	r4,r2,8
  803368:	2000bf1e 	bne	r4,zero,803668 <___vfprintf_internal_r+0x1d8c>
  80336c:	b5800204 	addi	r22,r22,8
  803370:	283d3c0e 	bge	r5,zero,802864 <___vfprintf_internal_r+0xf88>
  803374:	01c02074 	movhi	r7,129
  803378:	293ffc08 	cmpgei	r4,r5,-16
  80337c:	39c1bb04 	addi	r7,r7,1772
  803380:	0179c83a 	sub	fp,zero,r5
  803384:	2001361e 	bne	r4,zero,803860 <___vfprintf_internal_r+0x1f84>
  803388:	dc000715 	stw	r16,28(sp)
  80338c:	05400404 	movi	r21,16
  803390:	9021883a 	mov	r16,r18
  803394:	3825883a 	mov	r18,r7
  803398:	00000406 	br	8033ac <___vfprintf_internal_r+0x1ad0>
  80339c:	b5800204 	addi	r22,r22,8
  8033a0:	e73ffc04 	addi	fp,fp,-16
  8033a4:	e1800448 	cmpgei	r6,fp,17
  8033a8:	30012a26 	beq	r6,zero,803854 <___vfprintf_internal_r+0x1f78>
  8033ac:	10800044 	addi	r2,r2,1
  8033b0:	18c00404 	addi	r3,r3,16
  8033b4:	b4800015 	stw	r18,0(r22)
  8033b8:	b5400115 	stw	r21,4(r22)
  8033bc:	d8c01c15 	stw	r3,112(sp)
  8033c0:	d8801b15 	stw	r2,108(sp)
  8033c4:	11800208 	cmpgei	r6,r2,8
  8033c8:	303ff426 	beq	r6,zero,80339c <___vfprintf_internal_r+0x1ac0>
  8033cc:	d9801a04 	addi	r6,sp,104
  8033d0:	800b883a 	mov	r5,r16
  8033d4:	9809883a 	mov	r4,r19
  8033d8:	0808c880 	call	808c88 <__sprint_r>
  8033dc:	10015f1e 	bne	r2,zero,80395c <___vfprintf_internal_r+0x2080>
  8033e0:	d8c01c17 	ldw	r3,112(sp)
  8033e4:	d8801b17 	ldw	r2,108(sp)
  8033e8:	dd802704 	addi	r22,sp,156
  8033ec:	003fec06 	br	8033a0 <___vfprintf_internal_r+0x1ac4>
  8033f0:	800f883a 	mov	r7,r16
  8033f4:	dc000717 	ldw	r16,28(sp)
  8033f8:	8817883a 	mov	r11,r17
  8033fc:	aa000044 	addi	r8,r21,1
  803400:	e0800204 	addi	r2,fp,8
  803404:	1ac7883a 	add	r3,r3,r11
  803408:	e1c00015 	stw	r7,0(fp)
  80340c:	e2c00115 	stw	r11,4(fp)
  803410:	d8c01c15 	stw	r3,112(sp)
  803414:	da001b15 	stw	r8,108(sp)
  803418:	41000208 	cmpgei	r4,r8,8
  80341c:	203eb31e 	bne	r4,zero,802eec <___vfprintf_internal_r+0x1610>
  803420:	42000044 	addi	r8,r8,1
  803424:	15800204 	addi	r22,r2,8
  803428:	1039883a 	mov	fp,r2
  80342c:	003d5106 	br	802974 <___vfprintf_internal_r+0x1098>
  803430:	d8801804 	addi	r2,sp,96
  803434:	d8800315 	stw	r2,12(sp)
  803438:	d9400917 	ldw	r5,36(sp)
  80343c:	d8801504 	addi	r2,sp,84
  803440:	d8800215 	stw	r2,8(sp)
  803444:	d8801404 	addi	r2,sp,80
  803448:	da000015 	stw	r8,0(sp)
  80344c:	d8800115 	stw	r2,4(sp)
  803450:	01c000c4 	movi	r7,3
  803454:	a00d883a 	mov	r6,r20
  803458:	9809883a 	mov	r4,r19
  80345c:	db000815 	stw	r12,32(sp)
  803460:	da000715 	stw	r8,28(sp)
  803464:	0803e200 	call	803e20 <_dtoa_r>
  803468:	da000717 	ldw	r8,28(sp)
  80346c:	1023883a 	mov	r17,r2
  803470:	db000817 	ldw	r12,32(sp)
  803474:	1207883a 	add	r3,r2,r8
  803478:	88800007 	ldb	r2,0(r17)
  80347c:	10800c20 	cmpeqi	r2,r2,48
  803480:	1000661e 	bne	r2,zero,80361c <___vfprintf_internal_r+0x1d40>
  803484:	d8801417 	ldw	r2,80(sp)
  803488:	1893883a 	add	r9,r3,r2
  80348c:	d9000917 	ldw	r4,36(sp)
  803490:	000d883a 	mov	r6,zero
  803494:	000f883a 	mov	r7,zero
  803498:	a00b883a 	mov	r5,r20
  80349c:	da401115 	stw	r9,68(sp)
  8034a0:	da000815 	stw	r8,32(sp)
  8034a4:	db000715 	stw	r12,28(sp)
  8034a8:	080cf0c0 	call	80cf0c <__eqdf2>
  8034ac:	db000717 	ldw	r12,28(sp)
  8034b0:	da000817 	ldw	r8,32(sp)
  8034b4:	da401117 	ldw	r9,68(sp)
  8034b8:	1000981e 	bne	r2,zero,80371c <___vfprintf_internal_r+0x1e40>
  8034bc:	4805883a 	mov	r2,r9
  8034c0:	d8c01417 	ldw	r3,80(sp)
  8034c4:	1445c83a 	sub	r2,r2,r17
  8034c8:	ad4011d8 	cmpnei	r21,r21,71
  8034cc:	d8c00715 	stw	r3,28(sp)
  8034d0:	d8800815 	stw	r2,32(sp)
  8034d4:	a83f3426 	beq	r21,zero,8031a8 <___vfprintf_internal_r+0x18cc>
  8034d8:	d8800f17 	ldw	r2,60(sp)
  8034dc:	103f3726 	beq	r2,zero,8031bc <___vfprintf_internal_r+0x18e0>
  8034e0:	d8c00717 	ldw	r3,28(sp)
  8034e4:	6080004c 	andi	r2,r12,1
  8034e8:	1204b03a 	or	r2,r2,r8
  8034ec:	00c1130e 	bge	zero,r3,80393c <___vfprintf_internal_r+0x2060>
  8034f0:	10010e1e 	bne	r2,zero,80392c <___vfprintf_internal_r+0x2050>
  8034f4:	dd400717 	ldw	r21,28(sp)
  8034f8:	a829883a 	mov	r20,r21
  8034fc:	d8800607 	ldb	r2,24(sp)
  803500:	10008f26 	beq	r2,zero,803740 <___vfprintf_internal_r+0x1e64>
  803504:	00800b44 	movi	r2,45
  803508:	d8801345 	stb	r2,77(sp)
  80350c:	d8800e17 	ldw	r2,56(sp)
  803510:	0011883a 	mov	r8,zero
  803514:	d8800615 	stw	r2,24(sp)
  803518:	003b9206 	br	802364 <___vfprintf_internal_r+0xa88>
  80351c:	04402074 	movhi	r17,129
  803520:	8c41aa04 	addi	r17,r17,1704
  803524:	003a8b06 	br	801f54 <___vfprintf_internal_r+0x678>
  803528:	d8800617 	ldw	r2,24(sp)
  80352c:	d8c00615 	stw	r3,24(sp)
  803530:	15000017 	ldw	r20,0(r2)
  803534:	a02bd7fa 	srai	r21,r20,31
  803538:	a805883a 	mov	r2,r21
  80353c:	003ae306 	br	8020cc <___vfprintf_internal_r+0x7f0>
  803540:	d8800617 	ldw	r2,24(sp)
  803544:	002b883a 	mov	r21,zero
  803548:	d8c00615 	stw	r3,24(sp)
  80354c:	15000017 	ldw	r20,0(r2)
  803550:	0005883a 	mov	r2,zero
  803554:	003a2406 	br	801de8 <___vfprintf_internal_r+0x50c>
  803558:	d8800617 	ldw	r2,24(sp)
  80355c:	002b883a 	mov	r21,zero
  803560:	d8c00615 	stw	r3,24(sp)
  803564:	15000017 	ldw	r20,0(r2)
  803568:	00800044 	movi	r2,1
  80356c:	003a1e06 	br	801de8 <___vfprintf_internal_r+0x50c>
  803570:	d8800617 	ldw	r2,24(sp)
  803574:	002b883a 	mov	r21,zero
  803578:	d8c00615 	stw	r3,24(sp)
  80357c:	15000017 	ldw	r20,0(r2)
  803580:	003af406 	br	802154 <___vfprintf_internal_r+0x878>
  803584:	800f883a 	mov	r7,r16
  803588:	dc000e17 	ldw	r16,56(sp)
  80358c:	10800044 	addi	r2,r2,1
  803590:	1d47883a 	add	r3,r3,r21
  803594:	d8801b15 	stw	r2,108(sp)
  803598:	b1c00015 	stw	r7,0(r22)
  80359c:	b5400115 	stw	r21,4(r22)
  8035a0:	d8c01c15 	stw	r3,112(sp)
  8035a4:	10800208 	cmpgei	r2,r2,8
  8035a8:	10003a1e 	bne	r2,zero,803694 <___vfprintf_internal_r+0x1db8>
  8035ac:	b5800204 	addi	r22,r22,8
  8035b0:	003d6c06 	br	802b64 <___vfprintf_internal_r+0x1288>
  8035b4:	00800b44 	movi	r2,45
  8035b8:	d8801345 	stb	r2,77(sp)
  8035bc:	03400b44 	movi	r13,45
  8035c0:	003a6006 	br	801f44 <___vfprintf_internal_r+0x668>
  8035c4:	1520003c 	xorhi	r20,r2,32768
  8035c8:	00800b44 	movi	r2,45
  8035cc:	d8800605 	stb	r2,24(sp)
  8035d0:	003ed106 	br	803118 <___vfprintf_internal_r+0x183c>
  8035d4:	d9801a04 	addi	r6,sp,104
  8035d8:	900b883a 	mov	r5,r18
  8035dc:	9809883a 	mov	r4,r19
  8035e0:	0808c880 	call	808c88 <__sprint_r>
  8035e4:	1039cc1e 	bne	r2,zero,801d18 <___vfprintf_internal_r+0x43c>
  8035e8:	dd401417 	ldw	r21,80(sp)
  8035ec:	d8c01c17 	ldw	r3,112(sp)
  8035f0:	dd802704 	addi	r22,sp,156
  8035f4:	003d6a06 	br	802ba0 <___vfprintf_internal_r+0x12c4>
  8035f8:	05400184 	movi	r21,6
  8035fc:	003e5a06 	br	802f68 <___vfprintf_internal_r+0x168c>
  803600:	d9801a04 	addi	r6,sp,104
  803604:	900b883a 	mov	r5,r18
  803608:	9809883a 	mov	r4,r19
  80360c:	0808c880 	call	808c88 <__sprint_r>
  803610:	0039c106 	br	801d18 <___vfprintf_internal_r+0x43c>
  803614:	d9401345 	stb	r5,77(sp)
  803618:	00396f06 	br	801bd8 <___vfprintf_internal_r+0x2fc>
  80361c:	d9000917 	ldw	r4,36(sp)
  803620:	000d883a 	mov	r6,zero
  803624:	000f883a 	mov	r7,zero
  803628:	a00b883a 	mov	r5,r20
  80362c:	d8c01115 	stw	r3,68(sp)
  803630:	da000815 	stw	r8,32(sp)
  803634:	db000715 	stw	r12,28(sp)
  803638:	080cf0c0 	call	80cf0c <__eqdf2>
  80363c:	db000717 	ldw	r12,28(sp)
  803640:	da000817 	ldw	r8,32(sp)
  803644:	d8c01117 	ldw	r3,68(sp)
  803648:	103f8e26 	beq	r2,zero,803484 <___vfprintf_internal_r+0x1ba8>
  80364c:	00800044 	movi	r2,1
  803650:	1205c83a 	sub	r2,r2,r8
  803654:	d8801415 	stw	r2,80(sp)
  803658:	003f8b06 	br	803488 <___vfprintf_internal_r+0x1bac>
  80365c:	403ea81e 	bne	r8,zero,803100 <___vfprintf_internal_r+0x1824>
  803660:	02000044 	movi	r8,1
  803664:	003ea606 	br	803100 <___vfprintf_internal_r+0x1824>
  803668:	d9801a04 	addi	r6,sp,104
  80366c:	900b883a 	mov	r5,r18
  803670:	9809883a 	mov	r4,r19
  803674:	0808c880 	call	808c88 <__sprint_r>
  803678:	1039a71e 	bne	r2,zero,801d18 <___vfprintf_internal_r+0x43c>
  80367c:	d9401417 	ldw	r5,80(sp)
  803680:	d8c01c17 	ldw	r3,112(sp)
  803684:	d8801b17 	ldw	r2,108(sp)
  803688:	dd802704 	addi	r22,sp,156
  80368c:	283c750e 	bge	r5,zero,802864 <___vfprintf_internal_r+0xf88>
  803690:	003f3806 	br	803374 <___vfprintf_internal_r+0x1a98>
  803694:	d9801a04 	addi	r6,sp,104
  803698:	900b883a 	mov	r5,r18
  80369c:	9809883a 	mov	r4,r19
  8036a0:	0808c880 	call	808c88 <__sprint_r>
  8036a4:	10399c1e 	bne	r2,zero,801d18 <___vfprintf_internal_r+0x43c>
  8036a8:	d8c01c17 	ldw	r3,112(sp)
  8036ac:	dd802704 	addi	r22,sp,156
  8036b0:	003d2c06 	br	802b64 <___vfprintf_internal_r+0x1288>
  8036b4:	db000417 	ldw	r12,16(sp)
  8036b8:	003a9106 	br	802100 <___vfprintf_internal_r+0x824>
  8036bc:	d8801804 	addi	r2,sp,96
  8036c0:	d8800315 	stw	r2,12(sp)
  8036c4:	d9400917 	ldw	r5,36(sp)
  8036c8:	d8801504 	addi	r2,sp,84
  8036cc:	40c00044 	addi	r3,r8,1
  8036d0:	d8800215 	stw	r2,8(sp)
  8036d4:	d8801404 	addi	r2,sp,80
  8036d8:	d8c00015 	stw	r3,0(sp)
  8036dc:	d8800115 	stw	r2,4(sp)
  8036e0:	01c00084 	movi	r7,2
  8036e4:	a00d883a 	mov	r6,r20
  8036e8:	9809883a 	mov	r4,r19
  8036ec:	db001115 	stw	r12,68(sp)
  8036f0:	da000815 	stw	r8,32(sp)
  8036f4:	d8c00715 	stw	r3,28(sp)
  8036f8:	0803e200 	call	803e20 <_dtoa_r>
  8036fc:	d8c00717 	ldw	r3,28(sp)
  803700:	da000817 	ldw	r8,32(sp)
  803704:	db001117 	ldw	r12,68(sp)
  803708:	1023883a 	mov	r17,r2
  80370c:	e08011d8 	cmpnei	r2,fp,71
  803710:	103e9c26 	beq	r2,zero,803184 <___vfprintf_internal_r+0x18a8>
  803714:	88d3883a 	add	r9,r17,r3
  803718:	003f5c06 	br	80348c <___vfprintf_internal_r+0x1bb0>
  80371c:	d8801817 	ldw	r2,96(sp)
  803720:	127f672e 	bgeu	r2,r9,8034c0 <___vfprintf_internal_r+0x1be4>
  803724:	01000c04 	movi	r4,48
  803728:	10c00044 	addi	r3,r2,1
  80372c:	d8c01815 	stw	r3,96(sp)
  803730:	11000005 	stb	r4,0(r2)
  803734:	d8801817 	ldw	r2,96(sp)
  803738:	127ffb36 	bltu	r2,r9,803728 <___vfprintf_internal_r+0x1e4c>
  80373c:	003f6006 	br	8034c0 <___vfprintf_internal_r+0x1be4>
  803740:	d8800e17 	ldw	r2,56(sp)
  803744:	db401343 	ldbu	r13,77(sp)
  803748:	0011883a 	mov	r8,zero
  80374c:	d8800615 	stw	r2,24(sp)
  803750:	003b0006 	br	802354 <___vfprintf_internal_r+0xa78>
  803754:	d8800717 	ldw	r2,28(sp)
  803758:	d8c00817 	ldw	r3,32(sp)
  80375c:	10c02216 	blt	r2,r3,8037e8 <___vfprintf_internal_r+0x1f0c>
  803760:	6300004c 	andi	r12,r12,1
  803764:	60004f1e 	bne	r12,zero,8038a4 <___vfprintf_internal_r+0x1fc8>
  803768:	1029883a 	mov	r20,r2
  80376c:	1000010e 	bge	r2,zero,803774 <___vfprintf_internal_r+0x1e98>
  803770:	0029883a 	mov	r20,zero
  803774:	dd400717 	ldw	r21,28(sp)
  803778:	070019c4 	movi	fp,103
  80377c:	003f5f06 	br	8034fc <___vfprintf_internal_r+0x1c20>
  803780:	d9801a04 	addi	r6,sp,104
  803784:	900b883a 	mov	r5,r18
  803788:	9809883a 	mov	r4,r19
  80378c:	0808c880 	call	808c88 <__sprint_r>
  803790:	1039611e 	bne	r2,zero,801d18 <___vfprintf_internal_r+0x43c>
  803794:	d8c01c17 	ldw	r3,112(sp)
  803798:	dd802704 	addi	r22,sp,156
  80379c:	a83cee0e 	bge	r21,zero,802b58 <___vfprintf_internal_r+0x127c>
  8037a0:	003dec06 	br	802f54 <___vfprintf_internal_r+0x1678>
  8037a4:	02000184 	movi	r8,6
  8037a8:	003e5506 	br	803100 <___vfprintf_internal_r+0x1824>
  8037ac:	d9801a04 	addi	r6,sp,104
  8037b0:	900b883a 	mov	r5,r18
  8037b4:	9809883a 	mov	r4,r19
  8037b8:	0808c880 	call	808c88 <__sprint_r>
  8037bc:	1039561e 	bne	r2,zero,801d18 <___vfprintf_internal_r+0x43c>
  8037c0:	d8801417 	ldw	r2,80(sp)
  8037c4:	d9000817 	ldw	r4,32(sp)
  8037c8:	d8c01c17 	ldw	r3,112(sp)
  8037cc:	dd802704 	addi	r22,sp,156
  8037d0:	2085c83a 	sub	r2,r4,r2
  8037d4:	003d0606 	br	802bf0 <___vfprintf_internal_r+0x1314>
  8037d8:	4029883a 	mov	r20,r8
  8037dc:	d8c00615 	stw	r3,24(sp)
  8037e0:	402b883a 	mov	r21,r8
  8037e4:	00390206 	br	801bf0 <___vfprintf_internal_r+0x314>
  8037e8:	d8800817 	ldw	r2,32(sp)
  8037ec:	d8c00b17 	ldw	r3,44(sp)
  8037f0:	10eb883a 	add	r21,r2,r3
  8037f4:	d8800717 	ldw	r2,28(sp)
  8037f8:	00800316 	blt	zero,r2,803808 <___vfprintf_internal_r+0x1f2c>
  8037fc:	d8800717 	ldw	r2,28(sp)
  803800:	a8abc83a 	sub	r21,r21,r2
  803804:	ad400044 	addi	r21,r21,1
  803808:	a829883a 	mov	r20,r21
  80380c:	a8002a16 	blt	r21,zero,8038b8 <___vfprintf_internal_r+0x1fdc>
  803810:	070019c4 	movi	fp,103
  803814:	003f3906 	br	8034fc <___vfprintf_internal_r+0x1c20>
  803818:	d9401345 	stb	r5,77(sp)
  80381c:	003a2306 	br	8020ac <___vfprintf_internal_r+0x7d0>
  803820:	d9401345 	stb	r5,77(sp)
  803824:	003b1806 	br	802488 <___vfprintf_internal_r+0xbac>
  803828:	d9401345 	stb	r5,77(sp)
  80382c:	003a8e06 	br	802268 <___vfprintf_internal_r+0x98c>
  803830:	d9401345 	stb	r5,77(sp)
  803834:	003a3d06 	br	80212c <___vfprintf_internal_r+0x850>
  803838:	d9401345 	stb	r5,77(sp)
  80383c:	003a7606 	br	802218 <___vfprintf_internal_r+0x93c>
  803840:	d9401345 	stb	r5,77(sp)
  803844:	00399406 	br	801e98 <___vfprintf_internal_r+0x5bc>
  803848:	00bfffc4 	movi	r2,-1
  80384c:	d8800515 	stw	r2,20(sp)
  803850:	00393406 	br	801d24 <___vfprintf_internal_r+0x448>
  803854:	900f883a 	mov	r7,r18
  803858:	8025883a 	mov	r18,r16
  80385c:	dc000717 	ldw	r16,28(sp)
  803860:	10800044 	addi	r2,r2,1
  803864:	1f07883a 	add	r3,r3,fp
  803868:	b1c00015 	stw	r7,0(r22)
  80386c:	b7000115 	stw	fp,4(r22)
  803870:	d8c01c15 	stw	r3,112(sp)
  803874:	d8801b15 	stw	r2,108(sp)
  803878:	11000208 	cmpgei	r4,r2,8
  80387c:	203bf826 	beq	r4,zero,802860 <___vfprintf_internal_r+0xf84>
  803880:	d9801a04 	addi	r6,sp,104
  803884:	900b883a 	mov	r5,r18
  803888:	9809883a 	mov	r4,r19
  80388c:	0808c880 	call	808c88 <__sprint_r>
  803890:	1039211e 	bne	r2,zero,801d18 <___vfprintf_internal_r+0x43c>
  803894:	d8c01c17 	ldw	r3,112(sp)
  803898:	d8801b17 	ldw	r2,108(sp)
  80389c:	dd802704 	addi	r22,sp,156
  8038a0:	003bf006 	br	802864 <___vfprintf_internal_r+0xf88>
  8038a4:	d8800717 	ldw	r2,28(sp)
  8038a8:	d8c00b17 	ldw	r3,44(sp)
  8038ac:	10eb883a 	add	r21,r2,r3
  8038b0:	a829883a 	mov	r20,r21
  8038b4:	a83fd60e 	bge	r21,zero,803810 <___vfprintf_internal_r+0x1f34>
  8038b8:	0029883a 	mov	r20,zero
  8038bc:	003fd406 	br	803810 <___vfprintf_internal_r+0x1f34>
  8038c0:	00800c04 	movi	r2,48
  8038c4:	ad400c04 	addi	r21,r21,48
  8038c8:	d88016c5 	stb	r2,91(sp)
  8038cc:	00800104 	movi	r2,4
  8038d0:	dd401705 	stb	r21,92(sp)
  8038d4:	d8801015 	stw	r2,64(sp)
  8038d8:	003e6e06 	br	803294 <___vfprintf_internal_r+0x19b8>
  8038dc:	05400044 	movi	r21,1
  8038e0:	a8abc83a 	sub	r21,r21,r2
  8038e4:	00800b44 	movi	r2,45
  8038e8:	d8801685 	stb	r2,90(sp)
  8038ec:	003e3a06 	br	8031d8 <___vfprintf_internal_r+0x18fc>
  8038f0:	6080004c 	andi	r2,r12,1
  8038f4:	d8800715 	stw	r2,28(sp)
  8038f8:	103e6b1e 	bne	r2,zero,8032a8 <___vfprintf_internal_r+0x19cc>
  8038fc:	a829883a 	mov	r20,r21
  803900:	a83efe0e 	bge	r21,zero,8034fc <___vfprintf_internal_r+0x1c20>
  803904:	0029883a 	mov	r20,zero
  803908:	003efc06 	br	8034fc <___vfprintf_internal_r+0x1c20>
  80390c:	d8800a17 	ldw	r2,40(sp)
  803910:	10001a16 	blt	r2,zero,80397c <___vfprintf_internal_r+0x20a0>
  803914:	db401343 	ldbu	r13,77(sp)
  803918:	e0801210 	cmplti	r2,fp,72
  80391c:	1000141e 	bne	r2,zero,803970 <___vfprintf_internal_r+0x2094>
  803920:	04402074 	movhi	r17,129
  803924:	8c41ad04 	addi	r17,r17,1716
  803928:	00398a06 	br	801f54 <___vfprintf_internal_r+0x678>
  80392c:	d8800b17 	ldw	r2,44(sp)
  803930:	18ab883a 	add	r21,r3,r2
  803934:	aa2b883a 	add	r21,r21,r8
  803938:	003ff006 	br	8038fc <___vfprintf_internal_r+0x2020>
  80393c:	1000031e 	bne	r2,zero,80394c <___vfprintf_internal_r+0x2070>
  803940:	05000044 	movi	r20,1
  803944:	05400044 	movi	r21,1
  803948:	003eec06 	br	8034fc <___vfprintf_internal_r+0x1c20>
  80394c:	d8800b17 	ldw	r2,44(sp)
  803950:	15400044 	addi	r21,r2,1
  803954:	aa2b883a 	add	r21,r21,r8
  803958:	003fe806 	br	8038fc <___vfprintf_internal_r+0x2020>
  80395c:	8025883a 	mov	r18,r16
  803960:	0038ed06 	br	801d18 <___vfprintf_internal_r+0x43c>
  803964:	b005883a 	mov	r2,r22
  803968:	39c1bb04 	addi	r7,r7,1772
  80396c:	003ea506 	br	803404 <___vfprintf_internal_r+0x1b28>
  803970:	04402074 	movhi	r17,129
  803974:	8c41ac04 	addi	r17,r17,1712
  803978:	00397606 	br	801f54 <___vfprintf_internal_r+0x678>
  80397c:	00800b44 	movi	r2,45
  803980:	d8801345 	stb	r2,77(sp)
  803984:	03400b44 	movi	r13,45
  803988:	003fe306 	br	803918 <___vfprintf_internal_r+0x203c>
  80398c:	00800084 	movi	r2,2
  803990:	d8801015 	stw	r2,64(sp)
  803994:	003e3f06 	br	803294 <___vfprintf_internal_r+0x19b8>
  803998:	d8c00617 	ldw	r3,24(sp)
  80399c:	1a000017 	ldw	r8,0(r3)
  8039a0:	18c00104 	addi	r3,r3,4
  8039a4:	4000010e 	bge	r8,zero,8039ac <___vfprintf_internal_r+0x20d0>
  8039a8:	023fffc4 	movi	r8,-1
  8039ac:	bf000043 	ldbu	fp,1(r23)
  8039b0:	d8c00615 	stw	r3,24(sp)
  8039b4:	102f883a 	mov	r23,r2
  8039b8:	e2c03fcc 	andi	r11,fp,255
  8039bc:	5ac0201c 	xori	r11,r11,128
  8039c0:	5affe004 	addi	r11,r11,-128
  8039c4:	00381106 	br	801a0c <___vfprintf_internal_r+0x130>

008039c8 <__vfprintf_internal>:
  8039c8:	00c02074 	movhi	r3,129
  8039cc:	2005883a 	mov	r2,r4
  8039d0:	1909e617 	ldw	r4,10136(r3)
  8039d4:	300f883a 	mov	r7,r6
  8039d8:	280d883a 	mov	r6,r5
  8039dc:	100b883a 	mov	r5,r2
  8039e0:	08018dc1 	jmpi	8018dc <___vfprintf_internal_r>

008039e4 <__sbprintf>:
  8039e4:	2880030b 	ldhu	r2,12(r5)
  8039e8:	2b001917 	ldw	r12,100(r5)
  8039ec:	2ac0038b 	ldhu	r11,14(r5)
  8039f0:	2a800717 	ldw	r10,28(r5)
  8039f4:	2a400917 	ldw	r9,36(r5)
  8039f8:	defee204 	addi	sp,sp,-1144
  8039fc:	da001a04 	addi	r8,sp,104
  803a00:	00c10004 	movi	r3,1024
  803a04:	dc011a15 	stw	r16,1128(sp)
  803a08:	10bfff4c 	andi	r2,r2,65533
  803a0c:	2821883a 	mov	r16,r5
  803a10:	d80b883a 	mov	r5,sp
  803a14:	dc811c15 	stw	r18,1136(sp)
  803a18:	dc411b15 	stw	r17,1132(sp)
  803a1c:	dfc11d15 	stw	ra,1140(sp)
  803a20:	2025883a 	mov	r18,r4
  803a24:	d880030d 	sth	r2,12(sp)
  803a28:	db001915 	stw	r12,100(sp)
  803a2c:	dac0038d 	sth	r11,14(sp)
  803a30:	da800715 	stw	r10,28(sp)
  803a34:	da400915 	stw	r9,36(sp)
  803a38:	da000015 	stw	r8,0(sp)
  803a3c:	da000415 	stw	r8,16(sp)
  803a40:	d8c00215 	stw	r3,8(sp)
  803a44:	d8c00515 	stw	r3,20(sp)
  803a48:	d8000615 	stw	zero,24(sp)
  803a4c:	08018dc0 	call	8018dc <___vfprintf_internal_r>
  803a50:	1023883a 	mov	r17,r2
  803a54:	10000d0e 	bge	r2,zero,803a8c <__sbprintf+0xa8>
  803a58:	d880030b 	ldhu	r2,12(sp)
  803a5c:	1080100c 	andi	r2,r2,64
  803a60:	10000326 	beq	r2,zero,803a70 <__sbprintf+0x8c>
  803a64:	8080030b 	ldhu	r2,12(r16)
  803a68:	10801014 	ori	r2,r2,64
  803a6c:	8080030d 	sth	r2,12(r16)
  803a70:	8805883a 	mov	r2,r17
  803a74:	dfc11d17 	ldw	ra,1140(sp)
  803a78:	dc811c17 	ldw	r18,1136(sp)
  803a7c:	dc411b17 	ldw	r17,1132(sp)
  803a80:	dc011a17 	ldw	r16,1128(sp)
  803a84:	dec11e04 	addi	sp,sp,1144
  803a88:	f800283a 	ret
  803a8c:	d80b883a 	mov	r5,sp
  803a90:	9009883a 	mov	r4,r18
  803a94:	08057980 	call	805798 <_fflush_r>
  803a98:	103fef26 	beq	r2,zero,803a58 <__sbprintf+0x74>
  803a9c:	047fffc4 	movi	r17,-1
  803aa0:	003fed06 	br	803a58 <__sbprintf+0x74>

00803aa4 <__swsetup_r>:
  803aa4:	00802074 	movhi	r2,129
  803aa8:	1089e617 	ldw	r2,10136(r2)
  803aac:	defffd04 	addi	sp,sp,-12
  803ab0:	dc400115 	stw	r17,4(sp)
  803ab4:	dc000015 	stw	r16,0(sp)
  803ab8:	dfc00215 	stw	ra,8(sp)
  803abc:	2023883a 	mov	r17,r4
  803ac0:	2821883a 	mov	r16,r5
  803ac4:	10000226 	beq	r2,zero,803ad0 <__swsetup_r+0x2c>
  803ac8:	10c00e17 	ldw	r3,56(r2)
  803acc:	18003326 	beq	r3,zero,803b9c <__swsetup_r+0xf8>
  803ad0:	8180030b 	ldhu	r6,12(r16)
  803ad4:	30c0020c 	andi	r3,r6,8
  803ad8:	3005883a 	mov	r2,r6
  803adc:	18000f26 	beq	r3,zero,803b1c <__swsetup_r+0x78>
  803ae0:	80c00417 	ldw	r3,16(r16)
  803ae4:	18001626 	beq	r3,zero,803b40 <__swsetup_r+0x9c>
  803ae8:	1100004c 	andi	r4,r2,1
  803aec:	20001f1e 	bne	r4,zero,803b6c <__swsetup_r+0xc8>
  803af0:	1100008c 	andi	r4,r2,2
  803af4:	20002c1e 	bne	r4,zero,803ba8 <__swsetup_r+0x104>
  803af8:	81000517 	ldw	r4,20(r16)
  803afc:	81000215 	stw	r4,8(r16)
  803b00:	18001f26 	beq	r3,zero,803b80 <__swsetup_r+0xdc>
  803b04:	0005883a 	mov	r2,zero
  803b08:	dfc00217 	ldw	ra,8(sp)
  803b0c:	dc400117 	ldw	r17,4(sp)
  803b10:	dc000017 	ldw	r16,0(sp)
  803b14:	dec00304 	addi	sp,sp,12
  803b18:	f800283a 	ret
  803b1c:	3080040c 	andi	r2,r6,16
  803b20:	10003126 	beq	r2,zero,803be8 <__swsetup_r+0x144>
  803b24:	3080010c 	andi	r2,r6,4
  803b28:	1000211e 	bne	r2,zero,803bb0 <__swsetup_r+0x10c>
  803b2c:	80c00417 	ldw	r3,16(r16)
  803b30:	30800214 	ori	r2,r6,8
  803b34:	8080030d 	sth	r2,12(r16)
  803b38:	100d883a 	mov	r6,r2
  803b3c:	183fea1e 	bne	r3,zero,803ae8 <__swsetup_r+0x44>
  803b40:	1100a00c 	andi	r4,r2,640
  803b44:	21008020 	cmpeqi	r4,r4,512
  803b48:	203fe71e 	bne	r4,zero,803ae8 <__swsetup_r+0x44>
  803b4c:	8809883a 	mov	r4,r17
  803b50:	800b883a 	mov	r5,r16
  803b54:	08066500 	call	806650 <__smakebuf_r>
  803b58:	8180030b 	ldhu	r6,12(r16)
  803b5c:	80c00417 	ldw	r3,16(r16)
  803b60:	3005883a 	mov	r2,r6
  803b64:	1100004c 	andi	r4,r2,1
  803b68:	203fe126 	beq	r4,zero,803af0 <__swsetup_r+0x4c>
  803b6c:	81000517 	ldw	r4,20(r16)
  803b70:	80000215 	stw	zero,8(r16)
  803b74:	0109c83a 	sub	r4,zero,r4
  803b78:	81000615 	stw	r4,24(r16)
  803b7c:	183fe11e 	bne	r3,zero,803b04 <__swsetup_r+0x60>
  803b80:	10c0200c 	andi	r3,r2,128
  803b84:	0005883a 	mov	r2,zero
  803b88:	183fdf26 	beq	r3,zero,803b08 <__swsetup_r+0x64>
  803b8c:	31801014 	ori	r6,r6,64
  803b90:	8180030d 	sth	r6,12(r16)
  803b94:	00bfffc4 	movi	r2,-1
  803b98:	003fdb06 	br	803b08 <__swsetup_r+0x64>
  803b9c:	1009883a 	mov	r4,r2
  803ba0:	0805b2c0 	call	805b2c <__sinit>
  803ba4:	003fca06 	br	803ad0 <__swsetup_r+0x2c>
  803ba8:	0009883a 	mov	r4,zero
  803bac:	003fd306 	br	803afc <__swsetup_r+0x58>
  803bb0:	81400c17 	ldw	r5,48(r16)
  803bb4:	28000626 	beq	r5,zero,803bd0 <__swsetup_r+0x12c>
  803bb8:	80801004 	addi	r2,r16,64
  803bbc:	28800326 	beq	r5,r2,803bcc <__swsetup_r+0x128>
  803bc0:	8809883a 	mov	r4,r17
  803bc4:	0805c900 	call	805c90 <_free_r>
  803bc8:	8180030b 	ldhu	r6,12(r16)
  803bcc:	80000c15 	stw	zero,48(r16)
  803bd0:	80c00417 	ldw	r3,16(r16)
  803bd4:	00bff6c4 	movi	r2,-37
  803bd8:	118c703a 	and	r6,r2,r6
  803bdc:	80000115 	stw	zero,4(r16)
  803be0:	80c00015 	stw	r3,0(r16)
  803be4:	003fd206 	br	803b30 <__swsetup_r+0x8c>
  803be8:	00800244 	movi	r2,9
  803bec:	88800015 	stw	r2,0(r17)
  803bf0:	31801014 	ori	r6,r6,64
  803bf4:	8180030d 	sth	r6,12(r16)
  803bf8:	00bfffc4 	movi	r2,-1
  803bfc:	003fc206 	br	803b08 <__swsetup_r+0x64>

00803c00 <quorem>:
  803c00:	defff204 	addi	sp,sp,-56
  803c04:	dc400515 	stw	r17,20(sp)
  803c08:	20800417 	ldw	r2,16(r4)
  803c0c:	2c400417 	ldw	r17,16(r5)
  803c10:	dfc00d15 	stw	ra,52(sp)
  803c14:	df000c15 	stw	fp,48(sp)
  803c18:	ddc00b15 	stw	r23,44(sp)
  803c1c:	dd800a15 	stw	r22,40(sp)
  803c20:	dd400915 	stw	r21,36(sp)
  803c24:	dd000815 	stw	r20,32(sp)
  803c28:	dcc00715 	stw	r19,28(sp)
  803c2c:	dc800615 	stw	r18,24(sp)
  803c30:	dc000415 	stw	r16,16(sp)
  803c34:	d9000115 	stw	r4,4(sp)
  803c38:	d9400215 	stw	r5,8(sp)
  803c3c:	14407616 	blt	r2,r17,803e18 <quorem+0x218>
  803c40:	8c7fffc4 	addi	r17,r17,-1
  803c44:	882a90ba 	slli	r21,r17,2
  803c48:	2f000504 	addi	fp,r5,20
  803c4c:	25800504 	addi	r22,r4,20
  803c50:	e565883a 	add	r18,fp,r21
  803c54:	b545883a 	add	r2,r22,r21
  803c58:	95c00017 	ldw	r23,0(r18)
  803c5c:	15000017 	ldw	r20,0(r2)
  803c60:	dd800015 	stw	r22,0(sp)
  803c64:	bdc00044 	addi	r23,r23,1
  803c68:	b80b883a 	mov	r5,r23
  803c6c:	a009883a 	mov	r4,r20
  803c70:	d8800315 	stw	r2,12(sp)
  803c74:	080bba00 	call	80bba0 <__udivsi3>
  803c78:	1021883a 	mov	r16,r2
  803c7c:	a5c02f36 	bltu	r20,r23,803d3c <quorem+0x13c>
  803c80:	e029883a 	mov	r20,fp
  803c84:	002b883a 	mov	r21,zero
  803c88:	002f883a 	mov	r23,zero
  803c8c:	a4c00017 	ldw	r19,0(r20)
  803c90:	800b883a 	mov	r5,r16
  803c94:	b5800104 	addi	r22,r22,4
  803c98:	993fffcc 	andi	r4,r19,65535
  803c9c:	08016d80 	call	8016d8 <__mulsi3>
  803ca0:	9808d43a 	srli	r4,r19,16
  803ca4:	800b883a 	mov	r5,r16
  803ca8:	156b883a 	add	r21,r2,r21
  803cac:	08016d80 	call	8016d8 <__mulsi3>
  803cb0:	b0ffff17 	ldw	r3,-4(r22)
  803cb4:	a80ad43a 	srli	r5,r21,16
  803cb8:	a93fffcc 	andi	r4,r21,65535
  803cbc:	19bfffcc 	andi	r6,r3,65535
  803cc0:	b909c83a 	sub	r4,r23,r4
  803cc4:	2189883a 	add	r4,r4,r6
  803cc8:	1806d43a 	srli	r3,r3,16
  803ccc:	1145883a 	add	r2,r2,r5
  803cd0:	200bd43a 	srai	r5,r4,16
  803cd4:	11bfffcc 	andi	r6,r2,65535
  803cd8:	1987c83a 	sub	r3,r3,r6
  803cdc:	1947883a 	add	r3,r3,r5
  803ce0:	180a943a 	slli	r5,r3,16
  803ce4:	213fffcc 	andi	r4,r4,65535
  803ce8:	a5000104 	addi	r20,r20,4
  803cec:	2908b03a 	or	r4,r5,r4
  803cf0:	b13fff15 	stw	r4,-4(r22)
  803cf4:	102ad43a 	srli	r21,r2,16
  803cf8:	182fd43a 	srai	r23,r3,16
  803cfc:	953fe32e 	bgeu	r18,r20,803c8c <quorem+0x8c>
  803d00:	d8c00317 	ldw	r3,12(sp)
  803d04:	18800017 	ldw	r2,0(r3)
  803d08:	10000c1e 	bne	r2,zero,803d3c <quorem+0x13c>
  803d0c:	d8800017 	ldw	r2,0(sp)
  803d10:	1d7fff04 	addi	r21,r3,-4
  803d14:	15400436 	bltu	r2,r21,803d28 <quorem+0x128>
  803d18:	00000606 	br	803d34 <quorem+0x134>
  803d1c:	d8800017 	ldw	r2,0(sp)
  803d20:	8c7fffc4 	addi	r17,r17,-1
  803d24:	1540032e 	bgeu	r2,r21,803d34 <quorem+0x134>
  803d28:	a8800017 	ldw	r2,0(r21)
  803d2c:	ad7fff04 	addi	r21,r21,-4
  803d30:	103ffa26 	beq	r2,zero,803d1c <quorem+0x11c>
  803d34:	d8800117 	ldw	r2,4(sp)
  803d38:	14400415 	stw	r17,16(r2)
  803d3c:	d9400217 	ldw	r5,8(sp)
  803d40:	d9000117 	ldw	r4,4(sp)
  803d44:	0807d700 	call	807d70 <__mcmp>
  803d48:	10002616 	blt	r2,zero,803de4 <quorem+0x1e4>
  803d4c:	d9800017 	ldw	r6,0(sp)
  803d50:	84000044 	addi	r16,r16,1
  803d54:	0007883a 	mov	r3,zero
  803d58:	e1000017 	ldw	r4,0(fp)
  803d5c:	31400017 	ldw	r5,0(r6)
  803d60:	31800104 	addi	r6,r6,4
  803d64:	20bfffcc 	andi	r2,r4,65535
  803d68:	1887c83a 	sub	r3,r3,r2
  803d6c:	28bfffcc 	andi	r2,r5,65535
  803d70:	1885883a 	add	r2,r3,r2
  803d74:	2008d43a 	srli	r4,r4,16
  803d78:	2806d43a 	srli	r3,r5,16
  803d7c:	100fd43a 	srai	r7,r2,16
  803d80:	117fffcc 	andi	r5,r2,65535
  803d84:	1907c83a 	sub	r3,r3,r4
  803d88:	19c7883a 	add	r3,r3,r7
  803d8c:	1804943a 	slli	r2,r3,16
  803d90:	e7000104 	addi	fp,fp,4
  803d94:	1807d43a 	srai	r3,r3,16
  803d98:	1144b03a 	or	r2,r2,r5
  803d9c:	30bfff15 	stw	r2,-4(r6)
  803da0:	973fed2e 	bgeu	r18,fp,803d58 <quorem+0x158>
  803da4:	880490ba 	slli	r2,r17,2
  803da8:	d9000017 	ldw	r4,0(sp)
  803dac:	2085883a 	add	r2,r4,r2
  803db0:	10c00017 	ldw	r3,0(r2)
  803db4:	18000b1e 	bne	r3,zero,803de4 <quorem+0x1e4>
  803db8:	10bfff04 	addi	r2,r2,-4
  803dbc:	20800436 	bltu	r4,r2,803dd0 <quorem+0x1d0>
  803dc0:	00000606 	br	803ddc <quorem+0x1dc>
  803dc4:	d8c00017 	ldw	r3,0(sp)
  803dc8:	8c7fffc4 	addi	r17,r17,-1
  803dcc:	1880032e 	bgeu	r3,r2,803ddc <quorem+0x1dc>
  803dd0:	10c00017 	ldw	r3,0(r2)
  803dd4:	10bfff04 	addi	r2,r2,-4
  803dd8:	183ffa26 	beq	r3,zero,803dc4 <quorem+0x1c4>
  803ddc:	d8800117 	ldw	r2,4(sp)
  803de0:	14400415 	stw	r17,16(r2)
  803de4:	8005883a 	mov	r2,r16
  803de8:	dfc00d17 	ldw	ra,52(sp)
  803dec:	df000c17 	ldw	fp,48(sp)
  803df0:	ddc00b17 	ldw	r23,44(sp)
  803df4:	dd800a17 	ldw	r22,40(sp)
  803df8:	dd400917 	ldw	r21,36(sp)
  803dfc:	dd000817 	ldw	r20,32(sp)
  803e00:	dcc00717 	ldw	r19,28(sp)
  803e04:	dc800617 	ldw	r18,24(sp)
  803e08:	dc400517 	ldw	r17,20(sp)
  803e0c:	dc000417 	ldw	r16,16(sp)
  803e10:	dec00e04 	addi	sp,sp,56
  803e14:	f800283a 	ret
  803e18:	0005883a 	mov	r2,zero
  803e1c:	003ff206 	br	803de8 <quorem+0x1e8>

00803e20 <_dtoa_r>:
  803e20:	20801017 	ldw	r2,64(r4)
  803e24:	deffe204 	addi	sp,sp,-120
  803e28:	ddc01b15 	stw	r23,108(sp)
  803e2c:	dd001815 	stw	r20,96(sp)
  803e30:	dc801615 	stw	r18,88(sp)
  803e34:	dc401515 	stw	r17,84(sp)
  803e38:	dc001415 	stw	r16,80(sp)
  803e3c:	dfc01d15 	stw	ra,116(sp)
  803e40:	df001c15 	stw	fp,112(sp)
  803e44:	dd801a15 	stw	r22,104(sp)
  803e48:	dd401915 	stw	r21,100(sp)
  803e4c:	dcc01715 	stw	r19,92(sp)
  803e50:	d9c00115 	stw	r7,4(sp)
  803e54:	dc002017 	ldw	r16,128(sp)
  803e58:	202f883a 	mov	r23,r4
  803e5c:	3025883a 	mov	r18,r6
  803e60:	2829883a 	mov	r20,r5
  803e64:	3023883a 	mov	r17,r6
  803e68:	10000826 	beq	r2,zero,803e8c <_dtoa_r+0x6c>
  803e6c:	21801117 	ldw	r6,68(r4)
  803e70:	00c00044 	movi	r3,1
  803e74:	100b883a 	mov	r5,r2
  803e78:	1986983a 	sll	r3,r3,r6
  803e7c:	11800115 	stw	r6,4(r2)
  803e80:	10c00215 	stw	r3,8(r2)
  803e84:	08074040 	call	807404 <_Bfree>
  803e88:	b8001015 	stw	zero,64(r23)
  803e8c:	90018616 	blt	r18,zero,8044a8 <_dtoa_r+0x688>
  803e90:	80000015 	stw	zero,0(r16)
  803e94:	909ffc2c 	andhi	r2,r18,32752
  803e98:	00dffc34 	movhi	r3,32752
  803e9c:	10c18b26 	beq	r2,r3,8044cc <_dtoa_r+0x6ac>
  803ea0:	000d883a 	mov	r6,zero
  803ea4:	000f883a 	mov	r7,zero
  803ea8:	a009883a 	mov	r4,r20
  803eac:	880b883a 	mov	r5,r17
  803eb0:	080cf0c0 	call	80cf0c <__eqdf2>
  803eb4:	1000181e 	bne	r2,zero,803f18 <_dtoa_r+0xf8>
  803eb8:	d8c01f17 	ldw	r3,124(sp)
  803ebc:	00800044 	movi	r2,1
  803ec0:	18800015 	stw	r2,0(r3)
  803ec4:	d8802117 	ldw	r2,132(sp)
  803ec8:	10030b26 	beq	r2,zero,804af8 <_dtoa_r+0xcd8>
  803ecc:	d8c02117 	ldw	r3,132(sp)
  803ed0:	00802074 	movhi	r2,129
  803ed4:	1081ba44 	addi	r2,r2,1769
  803ed8:	07002074 	movhi	fp,129
  803edc:	18800015 	stw	r2,0(r3)
  803ee0:	e701ba04 	addi	fp,fp,1768
  803ee4:	e005883a 	mov	r2,fp
  803ee8:	dfc01d17 	ldw	ra,116(sp)
  803eec:	df001c17 	ldw	fp,112(sp)
  803ef0:	ddc01b17 	ldw	r23,108(sp)
  803ef4:	dd801a17 	ldw	r22,104(sp)
  803ef8:	dd401917 	ldw	r21,100(sp)
  803efc:	dd001817 	ldw	r20,96(sp)
  803f00:	dcc01717 	ldw	r19,92(sp)
  803f04:	dc801617 	ldw	r18,88(sp)
  803f08:	dc401517 	ldw	r17,84(sp)
  803f0c:	dc001417 	ldw	r16,80(sp)
  803f10:	dec01e04 	addi	sp,sp,120
  803f14:	f800283a 	ret
  803f18:	d8801204 	addi	r2,sp,72
  803f1c:	9020d53a 	srli	r16,r18,20
  803f20:	d8800015 	stw	r2,0(sp)
  803f24:	d9c01304 	addi	r7,sp,76
  803f28:	a00b883a 	mov	r5,r20
  803f2c:	880d883a 	mov	r6,r17
  803f30:	b809883a 	mov	r4,r23
  803f34:	08081540 	call	808154 <__d2b>
  803f38:	102d883a 	mov	r22,r2
  803f3c:	8001741e 	bne	r16,zero,804510 <_dtoa_r+0x6f0>
  803f40:	df001217 	ldw	fp,72(sp)
  803f44:	dc001317 	ldw	r16,76(sp)
  803f48:	e421883a 	add	r16,fp,r16
  803f4c:	80810c84 	addi	r2,r16,1074
  803f50:	10c00850 	cmplti	r3,r2,33
  803f54:	1802f81e 	bne	r3,zero,804b38 <_dtoa_r+0xd18>
  803f58:	01001004 	movi	r4,64
  803f5c:	2085c83a 	sub	r2,r4,r2
  803f60:	81010484 	addi	r4,r16,1042
  803f64:	90a4983a 	sll	r18,r18,r2
  803f68:	a108d83a 	srl	r4,r20,r4
  803f6c:	9108b03a 	or	r4,r18,r4
  803f70:	08014f80 	call	8014f8 <__floatunsidf>
  803f74:	1009883a 	mov	r4,r2
  803f78:	017f8434 	movhi	r5,65040
  803f7c:	00800044 	movi	r2,1
  803f80:	194b883a 	add	r5,r3,r5
  803f84:	843fffc4 	addi	r16,r16,-1
  803f88:	d8800915 	stw	r2,36(sp)
  803f8c:	000d883a 	mov	r6,zero
  803f90:	01cffe34 	movhi	r7,16376
  803f94:	080d16c0 	call	80d16c <__subdf3>
  803f98:	0198dbf4 	movhi	r6,25455
  803f9c:	01cff4f4 	movhi	r7,16339
  803fa0:	3190d844 	addi	r6,r6,17249
  803fa4:	39e1e9c4 	addi	r7,r7,-30809
  803fa8:	1009883a 	mov	r4,r2
  803fac:	180b883a 	mov	r5,r3
  803fb0:	0800d500 	call	800d50 <__muldf3>
  803fb4:	01a2d874 	movhi	r6,35681
  803fb8:	01cff1f4 	movhi	r7,16327
  803fbc:	31b22cc4 	addi	r6,r6,-14157
  803fc0:	39e28a04 	addi	r7,r7,-30168
  803fc4:	180b883a 	mov	r5,r3
  803fc8:	1009883a 	mov	r4,r2
  803fcc:	080bc600 	call	80bc60 <__adddf3>
  803fd0:	8009883a 	mov	r4,r16
  803fd4:	1027883a 	mov	r19,r2
  803fd8:	1825883a 	mov	r18,r3
  803fdc:	080db740 	call	80db74 <__floatsidf>
  803fe0:	019427f4 	movhi	r6,20639
  803fe4:	01cff4f4 	movhi	r7,16339
  803fe8:	319e7ec4 	addi	r6,r6,31227
  803fec:	39d104c4 	addi	r7,r7,17427
  803ff0:	1009883a 	mov	r4,r2
  803ff4:	180b883a 	mov	r5,r3
  803ff8:	0800d500 	call	800d50 <__muldf3>
  803ffc:	100d883a 	mov	r6,r2
  804000:	180f883a 	mov	r7,r3
  804004:	9809883a 	mov	r4,r19
  804008:	900b883a 	mov	r5,r18
  80400c:	080bc600 	call	80bc60 <__adddf3>
  804010:	1009883a 	mov	r4,r2
  804014:	180b883a 	mov	r5,r3
  804018:	1025883a 	mov	r18,r2
  80401c:	182b883a 	mov	r21,r3
  804020:	080daf40 	call	80daf4 <__fixdfsi>
  804024:	000d883a 	mov	r6,zero
  804028:	000f883a 	mov	r7,zero
  80402c:	9009883a 	mov	r4,r18
  804030:	a80b883a 	mov	r5,r21
  804034:	1027883a 	mov	r19,r2
  804038:	080d07c0 	call	80d07c <__ledf2>
  80403c:	1002a416 	blt	r2,zero,804ad0 <_dtoa_r+0xcb0>
  804040:	e439c83a 	sub	fp,fp,r16
  804044:	e0ffffc4 	addi	r3,fp,-1
  804048:	988005e8 	cmpgeui	r2,r19,23
  80404c:	d8c00215 	stw	r3,8(sp)
  804050:	1002961e 	bne	r2,zero,804aac <_dtoa_r+0xc8c>
  804054:	980690fa 	slli	r3,r19,3
  804058:	00802074 	movhi	r2,129
  80405c:	10820304 	addi	r2,r2,2060
  804060:	10c5883a 	add	r2,r2,r3
  804064:	11800017 	ldw	r6,0(r2)
  804068:	11c00117 	ldw	r7,4(r2)
  80406c:	a009883a 	mov	r4,r20
  804070:	880b883a 	mov	r5,r17
  804074:	080d07c0 	call	80d07c <__ledf2>
  804078:	1002670e 	bge	r2,zero,804a18 <_dtoa_r+0xbf8>
  80407c:	d8000815 	stw	zero,32(sp)
  804080:	e0bfffc4 	addi	r2,fp,-1
  804084:	9cffffc4 	addi	r19,r19,-1
  804088:	10028c16 	blt	r2,zero,804abc <_dtoa_r+0xc9c>
  80408c:	d8000515 	stw	zero,20(sp)
  804090:	9802650e 	bge	r19,zero,804a28 <_dtoa_r+0xc08>
  804094:	d8800517 	ldw	r2,20(sp)
  804098:	d8c00117 	ldw	r3,4(sp)
  80409c:	dcc00315 	stw	r19,12(sp)
  8040a0:	14c5c83a 	sub	r2,r2,r19
  8040a4:	d8800515 	stw	r2,20(sp)
  8040a8:	04c5c83a 	sub	r2,zero,r19
  8040ac:	d8800715 	stw	r2,28(sp)
  8040b0:	188002a8 	cmpgeui	r2,r3,10
  8040b4:	0027883a 	mov	r19,zero
  8040b8:	1002631e 	bne	r2,zero,804a48 <_dtoa_r+0xc28>
  8040bc:	18800190 	cmplti	r2,r3,6
  8040c0:	1002a11e 	bne	r2,zero,804b48 <_dtoa_r+0xd28>
  8040c4:	18bfff04 	addi	r2,r3,-4
  8040c8:	d8800115 	stw	r2,4(sp)
  8040cc:	0021883a 	mov	r16,zero
  8040d0:	d8c00117 	ldw	r3,4(sp)
  8040d4:	18800120 	cmpeqi	r2,r3,4
  8040d8:	1003721e 	bne	r2,zero,804ea4 <_dtoa_r+0x1084>
  8040dc:	18800160 	cmpeqi	r2,r3,5
  8040e0:	10032f1e 	bne	r2,zero,804da0 <_dtoa_r+0xf80>
  8040e4:	188000a0 	cmpeqi	r2,r3,2
  8040e8:	10026326 	beq	r2,zero,804a78 <_dtoa_r+0xc58>
  8040ec:	d8000615 	stw	zero,24(sp)
  8040f0:	d8801e17 	ldw	r2,120(sp)
  8040f4:	00833c0e 	bge	zero,r2,804de8 <_dtoa_r+0xfc8>
  8040f8:	d8800b15 	stw	r2,44(sp)
  8040fc:	d8800415 	stw	r2,16(sp)
  804100:	100d883a 	mov	r6,r2
  804104:	b8001115 	stw	zero,68(r23)
  804108:	30800610 	cmplti	r2,r6,24
  80410c:	1005161e 	bne	r2,zero,805568 <_dtoa_r+0x1748>
  804110:	00c00044 	movi	r3,1
  804114:	00800104 	movi	r2,4
  804118:	1085883a 	add	r2,r2,r2
  80411c:	11000504 	addi	r4,r2,20
  804120:	180b883a 	mov	r5,r3
  804124:	18c00044 	addi	r3,r3,1
  804128:	313ffb2e 	bgeu	r6,r4,804118 <_dtoa_r+0x2f8>
  80412c:	b9401115 	stw	r5,68(r23)
  804130:	b809883a 	mov	r4,r23
  804134:	08073600 	call	807360 <_Balloc>
  804138:	1039883a 	mov	fp,r2
  80413c:	1004f526 	beq	r2,zero,805514 <_dtoa_r+0x16f4>
  804140:	b8801015 	stw	r2,64(r23)
  804144:	d8800417 	ldw	r2,16(sp)
  804148:	108003e8 	cmpgeui	r2,r2,15
  80414c:	10010b1e 	bne	r2,zero,80457c <_dtoa_r+0x75c>
  804150:	80010a26 	beq	r16,zero,80457c <_dtoa_r+0x75c>
  804154:	d9000317 	ldw	r4,12(sp)
  804158:	0103a30e 	bge	zero,r4,804fe8 <_dtoa_r+0x11c8>
  80415c:	208003cc 	andi	r2,r4,15
  804160:	100690fa 	slli	r3,r2,3
  804164:	202bd13a 	srai	r21,r4,4
  804168:	00802074 	movhi	r2,129
  80416c:	10820304 	addi	r2,r2,2060
  804170:	10c5883a 	add	r2,r2,r3
  804174:	a8c0040c 	andi	r3,r21,16
  804178:	12800017 	ldw	r10,0(r2)
  80417c:	12400117 	ldw	r9,4(r2)
  804180:	18034226 	beq	r3,zero,804e8c <_dtoa_r+0x106c>
  804184:	00802074 	movhi	r2,129
  804188:	1081f904 	addi	r2,r2,2020
  80418c:	11800817 	ldw	r6,32(r2)
  804190:	11c00917 	ldw	r7,36(r2)
  804194:	a009883a 	mov	r4,r20
  804198:	880b883a 	mov	r5,r17
  80419c:	da400e15 	stw	r9,56(sp)
  8041a0:	da800d15 	stw	r10,52(sp)
  8041a4:	080c5d80 	call	80c5d8 <__divdf3>
  8041a8:	da800d17 	ldw	r10,52(sp)
  8041ac:	da400e17 	ldw	r9,56(sp)
  8041b0:	ad4003cc 	andi	r21,r21,15
  8041b4:	d8800a15 	stw	r2,40(sp)
  8041b8:	d8c00c15 	stw	r3,48(sp)
  8041bc:	040000c4 	movi	r16,3
  8041c0:	a8001126 	beq	r21,zero,804208 <_dtoa_r+0x3e8>
  8041c4:	04802074 	movhi	r18,129
  8041c8:	9481f904 	addi	r18,r18,2020
  8041cc:	5009883a 	mov	r4,r10
  8041d0:	480b883a 	mov	r5,r9
  8041d4:	a980004c 	andi	r6,r21,1
  8041d8:	30000626 	beq	r6,zero,8041f4 <_dtoa_r+0x3d4>
  8041dc:	91800017 	ldw	r6,0(r18)
  8041e0:	91c00117 	ldw	r7,4(r18)
  8041e4:	84000044 	addi	r16,r16,1
  8041e8:	0800d500 	call	800d50 <__muldf3>
  8041ec:	1009883a 	mov	r4,r2
  8041f0:	180b883a 	mov	r5,r3
  8041f4:	a82bd07a 	srai	r21,r21,1
  8041f8:	94800204 	addi	r18,r18,8
  8041fc:	a83ff51e 	bne	r21,zero,8041d4 <_dtoa_r+0x3b4>
  804200:	2015883a 	mov	r10,r4
  804204:	2813883a 	mov	r9,r5
  804208:	d9000a17 	ldw	r4,40(sp)
  80420c:	d9400c17 	ldw	r5,48(sp)
  804210:	500d883a 	mov	r6,r10
  804214:	480f883a 	mov	r7,r9
  804218:	080c5d80 	call	80c5d8 <__divdf3>
  80421c:	1025883a 	mov	r18,r2
  804220:	d8c00a15 	stw	r3,40(sp)
  804224:	d8800817 	ldw	r2,32(sp)
  804228:	10000726 	beq	r2,zero,804248 <_dtoa_r+0x428>
  80422c:	dd400a17 	ldw	r21,40(sp)
  804230:	000d883a 	mov	r6,zero
  804234:	01cffc34 	movhi	r7,16368
  804238:	9009883a 	mov	r4,r18
  80423c:	a80b883a 	mov	r5,r21
  804240:	080d07c0 	call	80d07c <__ledf2>
  804244:	10045516 	blt	r2,zero,80539c <_dtoa_r+0x157c>
  804248:	8009883a 	mov	r4,r16
  80424c:	080db740 	call	80db74 <__floatsidf>
  804250:	d9c00a17 	ldw	r7,40(sp)
  804254:	900d883a 	mov	r6,r18
  804258:	1009883a 	mov	r4,r2
  80425c:	180b883a 	mov	r5,r3
  804260:	0800d500 	call	800d50 <__muldf3>
  804264:	000d883a 	mov	r6,zero
  804268:	01d00734 	movhi	r7,16412
  80426c:	1009883a 	mov	r4,r2
  804270:	180b883a 	mov	r5,r3
  804274:	080bc600 	call	80bc60 <__adddf3>
  804278:	d8800c15 	stw	r2,48(sp)
  80427c:	00bf3034 	movhi	r2,64704
  804280:	1885883a 	add	r2,r3,r2
  804284:	d8800d15 	stw	r2,52(sp)
  804288:	d8800417 	ldw	r2,16(sp)
  80428c:	10033926 	beq	r2,zero,804f74 <_dtoa_r+0x1154>
  804290:	d8800317 	ldw	r2,12(sp)
  804294:	d8801115 	stw	r2,68(sp)
  804298:	d8800417 	ldw	r2,16(sp)
  80429c:	d8800e15 	stw	r2,56(sp)
  8042a0:	dc000a17 	ldw	r16,40(sp)
  8042a4:	9009883a 	mov	r4,r18
  8042a8:	800b883a 	mov	r5,r16
  8042ac:	080daf40 	call	80daf4 <__fixdfsi>
  8042b0:	d8c00e17 	ldw	r3,56(sp)
  8042b4:	d8801015 	stw	r2,64(sp)
  8042b8:	18ffffc4 	addi	r3,r3,-1
  8042bc:	180890fa 	slli	r4,r3,3
  8042c0:	00c02074 	movhi	r3,129
  8042c4:	18c20304 	addi	r3,r3,2060
  8042c8:	1907883a 	add	r3,r3,r4
  8042cc:	1b000017 	ldw	r12,0(r3)
  8042d0:	1b400117 	ldw	r13,4(r3)
  8042d4:	1009883a 	mov	r4,r2
  8042d8:	db000f15 	stw	r12,60(sp)
  8042dc:	db400a15 	stw	r13,40(sp)
  8042e0:	080db740 	call	80db74 <__floatsidf>
  8042e4:	9009883a 	mov	r4,r18
  8042e8:	800b883a 	mov	r5,r16
  8042ec:	100d883a 	mov	r6,r2
  8042f0:	180f883a 	mov	r7,r3
  8042f4:	080d16c0 	call	80d16c <__subdf3>
  8042f8:	dac01017 	ldw	r11,64(sp)
  8042fc:	102b883a 	mov	r21,r2
  804300:	d8800617 	ldw	r2,24(sp)
  804304:	db400a17 	ldw	r13,40(sp)
  804308:	db000f17 	ldw	r12,60(sp)
  80430c:	e4000044 	addi	r16,fp,1
  804310:	1825883a 	mov	r18,r3
  804314:	5ac00c04 	addi	r11,r11,48
  804318:	1003c626 	beq	r2,zero,805234 <_dtoa_r+0x1414>
  80431c:	600d883a 	mov	r6,r12
  804320:	680f883a 	mov	r7,r13
  804324:	0009883a 	mov	r4,zero
  804328:	014ff834 	movhi	r5,16352
  80432c:	dac00f15 	stw	r11,60(sp)
  804330:	080c5d80 	call	80c5d8 <__divdf3>
  804334:	d9800c17 	ldw	r6,48(sp)
  804338:	d9c00d17 	ldw	r7,52(sp)
  80433c:	1009883a 	mov	r4,r2
  804340:	180b883a 	mov	r5,r3
  804344:	080d16c0 	call	80d16c <__subdf3>
  804348:	dac00f17 	ldw	r11,60(sp)
  80434c:	a80d883a 	mov	r6,r21
  804350:	900f883a 	mov	r7,r18
  804354:	e2c00005 	stb	r11,0(fp)
  804358:	1009883a 	mov	r4,r2
  80435c:	180b883a 	mov	r5,r3
  804360:	d8800a15 	stw	r2,40(sp)
  804364:	d8c00c15 	stw	r3,48(sp)
  804368:	080cf8c0 	call	80cf8c <__gedf2>
  80436c:	00844116 	blt	zero,r2,805474 <_dtoa_r+0x1654>
  804370:	0005883a 	mov	r2,zero
  804374:	dcc00f15 	stw	r19,60(sp)
  804378:	dd800d15 	stw	r22,52(sp)
  80437c:	dcc00c17 	ldw	r19,48(sp)
  804380:	dd800e17 	ldw	r22,56(sp)
  804384:	dc400c15 	stw	r17,48(sp)
  804388:	ddc00e15 	stw	r23,56(sp)
  80438c:	dc400a17 	ldw	r17,40(sp)
  804390:	dd000a15 	stw	r20,40(sp)
  804394:	1029883a 	mov	r20,r2
  804398:	00002606 	br	804434 <_dtoa_r+0x614>
  80439c:	a5000044 	addi	r20,r20,1
  8043a0:	a5843d0e 	bge	r20,r22,805498 <_dtoa_r+0x1678>
  8043a4:	8809883a 	mov	r4,r17
  8043a8:	980b883a 	mov	r5,r19
  8043ac:	000d883a 	mov	r6,zero
  8043b0:	01d00934 	movhi	r7,16420
  8043b4:	0800d500 	call	800d50 <__muldf3>
  8043b8:	000d883a 	mov	r6,zero
  8043bc:	01d00934 	movhi	r7,16420
  8043c0:	a809883a 	mov	r4,r21
  8043c4:	900b883a 	mov	r5,r18
  8043c8:	1023883a 	mov	r17,r2
  8043cc:	1827883a 	mov	r19,r3
  8043d0:	0800d500 	call	800d50 <__muldf3>
  8043d4:	180b883a 	mov	r5,r3
  8043d8:	1009883a 	mov	r4,r2
  8043dc:	1825883a 	mov	r18,r3
  8043e0:	102b883a 	mov	r21,r2
  8043e4:	080daf40 	call	80daf4 <__fixdfsi>
  8043e8:	1009883a 	mov	r4,r2
  8043ec:	102f883a 	mov	r23,r2
  8043f0:	080db740 	call	80db74 <__floatsidf>
  8043f4:	a809883a 	mov	r4,r21
  8043f8:	900b883a 	mov	r5,r18
  8043fc:	100d883a 	mov	r6,r2
  804400:	180f883a 	mov	r7,r3
  804404:	080d16c0 	call	80d16c <__subdf3>
  804408:	84000044 	addi	r16,r16,1
  80440c:	ba000c04 	addi	r8,r23,48
  804410:	823fffc5 	stb	r8,-1(r16)
  804414:	880d883a 	mov	r6,r17
  804418:	980f883a 	mov	r7,r19
  80441c:	1009883a 	mov	r4,r2
  804420:	180b883a 	mov	r5,r3
  804424:	102b883a 	mov	r21,r2
  804428:	1825883a 	mov	r18,r3
  80442c:	080d07c0 	call	80d07c <__ledf2>
  804430:	10040e16 	blt	r2,zero,80546c <_dtoa_r+0x164c>
  804434:	a80d883a 	mov	r6,r21
  804438:	900f883a 	mov	r7,r18
  80443c:	0009883a 	mov	r4,zero
  804440:	014ffc34 	movhi	r5,16368
  804444:	080d16c0 	call	80d16c <__subdf3>
  804448:	880d883a 	mov	r6,r17
  80444c:	980f883a 	mov	r7,r19
  804450:	1009883a 	mov	r4,r2
  804454:	180b883a 	mov	r5,r3
  804458:	080d07c0 	call	80d07c <__ledf2>
  80445c:	103fcf0e 	bge	r2,zero,80439c <_dtoa_r+0x57c>
  804460:	dd800d17 	ldw	r22,52(sp)
  804464:	ddc00e17 	ldw	r23,56(sp)
  804468:	d8801117 	ldw	r2,68(sp)
  80446c:	10800044 	addi	r2,r2,1
  804470:	d8800315 	stw	r2,12(sp)
  804474:	00000106 	br	80447c <_dtoa_r+0x65c>
  804478:	e403ee26 	beq	fp,r16,805434 <_dtoa_r+0x1614>
  80447c:	80ffffc3 	ldbu	r3,-1(r16)
  804480:	8025883a 	mov	r18,r16
  804484:	843fffc4 	addi	r16,r16,-1
  804488:	18803fcc 	andi	r2,r3,255
  80448c:	1080201c 	xori	r2,r2,128
  804490:	10bfe004 	addi	r2,r2,-128
  804494:	10800e60 	cmpeqi	r2,r2,57
  804498:	103ff71e 	bne	r2,zero,804478 <_dtoa_r+0x658>
  80449c:	18c00044 	addi	r3,r3,1
  8044a0:	80c00005 	stb	r3,0(r16)
  8044a4:	00015106 	br	8049ec <_dtoa_r+0xbcc>
  8044a8:	04600034 	movhi	r17,32768
  8044ac:	8c7fffc4 	addi	r17,r17,-1
  8044b0:	9462703a 	and	r17,r18,r17
  8044b4:	00800044 	movi	r2,1
  8044b8:	8825883a 	mov	r18,r17
  8044bc:	80800015 	stw	r2,0(r16)
  8044c0:	00dffc34 	movhi	r3,32752
  8044c4:	909ffc2c 	andhi	r2,r18,32752
  8044c8:	10fe751e 	bne	r2,r3,803ea0 <_dtoa_r+0x80>
  8044cc:	d8c01f17 	ldw	r3,124(sp)
  8044d0:	00800434 	movhi	r2,16
  8044d4:	10bfffc4 	addi	r2,r2,-1
  8044d8:	90a4703a 	and	r18,r18,r2
  8044dc:	0089c3c4 	movi	r2,9999
  8044e0:	18800015 	stw	r2,0(r3)
  8044e4:	9528b03a 	or	r20,r18,r20
  8044e8:	a000121e 	bne	r20,zero,804534 <_dtoa_r+0x714>
  8044ec:	d8802117 	ldw	r2,132(sp)
  8044f0:	07002074 	movhi	fp,129
  8044f4:	10041526 	beq	r2,zero,80554c <_dtoa_r+0x172c>
  8044f8:	00802074 	movhi	r2,129
  8044fc:	e701c404 	addi	fp,fp,1808
  804500:	1081c604 	addi	r2,r2,1816
  804504:	d8c02117 	ldw	r3,132(sp)
  804508:	18800015 	stw	r2,0(r3)
  80450c:	003e7506 	br	803ee4 <_dtoa_r+0xc4>
  804510:	01400434 	movhi	r5,16
  804514:	297fffc4 	addi	r5,r5,-1
  804518:	894a703a 	and	r5,r17,r5
  80451c:	df001217 	ldw	fp,72(sp)
  804520:	a009883a 	mov	r4,r20
  804524:	294ffc34 	orhi	r5,r5,16368
  804528:	843f0044 	addi	r16,r16,-1023
  80452c:	d8000915 	stw	zero,36(sp)
  804530:	003e9606 	br	803f8c <_dtoa_r+0x16c>
  804534:	d8802117 	ldw	r2,132(sp)
  804538:	07002074 	movhi	fp,129
  80453c:	1002141e 	bne	r2,zero,804d90 <_dtoa_r+0xf70>
  804540:	e701c304 	addi	fp,fp,1804
  804544:	003e6706 	br	803ee4 <_dtoa_r+0xc4>
  804548:	b8001115 	stw	zero,68(r23)
  80454c:	000b883a 	mov	r5,zero
  804550:	b809883a 	mov	r4,r23
  804554:	08073600 	call	807360 <_Balloc>
  804558:	1039883a 	mov	fp,r2
  80455c:	1003ed26 	beq	r2,zero,805514 <_dtoa_r+0x16f4>
  804560:	b8801015 	stw	r2,64(r23)
  804564:	00bfffc4 	movi	r2,-1
  804568:	d8800415 	stw	r2,16(sp)
  80456c:	d8800b15 	stw	r2,44(sp)
  804570:	00800044 	movi	r2,1
  804574:	d8001e15 	stw	zero,120(sp)
  804578:	d8800615 	stw	r2,24(sp)
  80457c:	d8801317 	ldw	r2,76(sp)
  804580:	10007216 	blt	r2,zero,80474c <_dtoa_r+0x92c>
  804584:	d9000317 	ldw	r4,12(sp)
  804588:	20c003c8 	cmpgei	r3,r4,15
  80458c:	18006f1e 	bne	r3,zero,80474c <_dtoa_r+0x92c>
  804590:	200690fa 	slli	r3,r4,3
  804594:	00802074 	movhi	r2,129
  804598:	10820304 	addi	r2,r2,2060
  80459c:	10c5883a 	add	r2,r2,r3
  8045a0:	10c00017 	ldw	r3,0(r2)
  8045a4:	14800117 	ldw	r18,4(r2)
  8045a8:	d8801e17 	ldw	r2,120(sp)
  8045ac:	d8c00115 	stw	r3,4(sp)
  8045b0:	1000150e 	bge	r2,zero,804608 <_dtoa_r+0x7e8>
  8045b4:	d8800417 	ldw	r2,16(sp)
  8045b8:	00801316 	blt	zero,r2,804608 <_dtoa_r+0x7e8>
  8045bc:	d8800417 	ldw	r2,16(sp)
  8045c0:	1002801e 	bne	r2,zero,804fc4 <_dtoa_r+0x11a4>
  8045c4:	d9000117 	ldw	r4,4(sp)
  8045c8:	000d883a 	mov	r6,zero
  8045cc:	01d00534 	movhi	r7,16404
  8045d0:	900b883a 	mov	r5,r18
  8045d4:	0800d500 	call	800d50 <__muldf3>
  8045d8:	100d883a 	mov	r6,r2
  8045dc:	180f883a 	mov	r7,r3
  8045e0:	a009883a 	mov	r4,r20
  8045e4:	880b883a 	mov	r5,r17
  8045e8:	080d07c0 	call	80d07c <__ledf2>
  8045ec:	002b883a 	mov	r21,zero
  8045f0:	0021883a 	mov	r16,zero
  8045f4:	00820f16 	blt	zero,r2,804e34 <_dtoa_r+0x1014>
  8045f8:	d8801e17 	ldw	r2,120(sp)
  8045fc:	e025883a 	mov	r18,fp
  804600:	00a2303a 	nor	r17,zero,r2
  804604:	00021006 	br	804e48 <_dtoa_r+0x1028>
  804608:	dd400117 	ldw	r21,4(sp)
  80460c:	900f883a 	mov	r7,r18
  804610:	a009883a 	mov	r4,r20
  804614:	a80d883a 	mov	r6,r21
  804618:	880b883a 	mov	r5,r17
  80461c:	080c5d80 	call	80c5d8 <__divdf3>
  804620:	180b883a 	mov	r5,r3
  804624:	1009883a 	mov	r4,r2
  804628:	080daf40 	call	80daf4 <__fixdfsi>
  80462c:	1009883a 	mov	r4,r2
  804630:	1027883a 	mov	r19,r2
  804634:	080db740 	call	80db74 <__floatsidf>
  804638:	a80d883a 	mov	r6,r21
  80463c:	900f883a 	mov	r7,r18
  804640:	1009883a 	mov	r4,r2
  804644:	180b883a 	mov	r5,r3
  804648:	0800d500 	call	800d50 <__muldf3>
  80464c:	100d883a 	mov	r6,r2
  804650:	a009883a 	mov	r4,r20
  804654:	880b883a 	mov	r5,r17
  804658:	180f883a 	mov	r7,r3
  80465c:	080d16c0 	call	80d16c <__subdf3>
  804660:	d9800417 	ldw	r6,16(sp)
  804664:	1009883a 	mov	r4,r2
  804668:	98800c04 	addi	r2,r19,48
  80466c:	e0800005 	stb	r2,0(fp)
  804670:	30800060 	cmpeqi	r2,r6,1
  804674:	180b883a 	mov	r5,r3
  804678:	e4000044 	addi	r16,fp,1
  80467c:	1002a91e 	bne	r2,zero,805124 <_dtoa_r+0x1304>
  804680:	04400044 	movi	r17,1
  804684:	3027883a 	mov	r19,r6
  804688:	dd800215 	stw	r22,8(sp)
  80468c:	ddc00415 	stw	r23,16(sp)
  804690:	00001c06 	br	804704 <_dtoa_r+0x8e4>
  804694:	a80d883a 	mov	r6,r21
  804698:	900f883a 	mov	r7,r18
  80469c:	b809883a 	mov	r4,r23
  8046a0:	a00b883a 	mov	r5,r20
  8046a4:	080c5d80 	call	80c5d8 <__divdf3>
  8046a8:	180b883a 	mov	r5,r3
  8046ac:	1009883a 	mov	r4,r2
  8046b0:	080daf40 	call	80daf4 <__fixdfsi>
  8046b4:	1009883a 	mov	r4,r2
  8046b8:	102d883a 	mov	r22,r2
  8046bc:	080db740 	call	80db74 <__floatsidf>
  8046c0:	a80d883a 	mov	r6,r21
  8046c4:	900f883a 	mov	r7,r18
  8046c8:	1009883a 	mov	r4,r2
  8046cc:	180b883a 	mov	r5,r3
  8046d0:	0800d500 	call	800d50 <__muldf3>
  8046d4:	b809883a 	mov	r4,r23
  8046d8:	a00b883a 	mov	r5,r20
  8046dc:	100d883a 	mov	r6,r2
  8046e0:	180f883a 	mov	r7,r3
  8046e4:	080d16c0 	call	80d16c <__subdf3>
  8046e8:	b1000c04 	addi	r4,r22,48
  8046ec:	81000005 	stb	r4,0(r16)
  8046f0:	8c400044 	addi	r17,r17,1
  8046f4:	84000044 	addi	r16,r16,1
  8046f8:	1009883a 	mov	r4,r2
  8046fc:	180b883a 	mov	r5,r3
  804700:	9c428526 	beq	r19,r17,805118 <_dtoa_r+0x12f8>
  804704:	000d883a 	mov	r6,zero
  804708:	01d00934 	movhi	r7,16420
  80470c:	0800d500 	call	800d50 <__muldf3>
  804710:	000d883a 	mov	r6,zero
  804714:	000f883a 	mov	r7,zero
  804718:	1009883a 	mov	r4,r2
  80471c:	180b883a 	mov	r5,r3
  804720:	102f883a 	mov	r23,r2
  804724:	1829883a 	mov	r20,r3
  804728:	080cf0c0 	call	80cf0c <__eqdf2>
  80472c:	103fd91e 	bne	r2,zero,804694 <_dtoa_r+0x874>
  804730:	d8800317 	ldw	r2,12(sp)
  804734:	dd800217 	ldw	r22,8(sp)
  804738:	ddc00417 	ldw	r23,16(sp)
  80473c:	10800044 	addi	r2,r2,1
  804740:	d8800315 	stw	r2,12(sp)
  804744:	8025883a 	mov	r18,r16
  804748:	0000a806 	br	8049ec <_dtoa_r+0xbcc>
  80474c:	d8c00617 	ldw	r3,24(sp)
  804750:	1800ec26 	beq	r3,zero,804b04 <_dtoa_r+0xce4>
  804754:	d8c00117 	ldw	r3,4(sp)
  804758:	18c00088 	cmpgei	r3,r3,2
  80475c:	1801e926 	beq	r3,zero,804f04 <_dtoa_r+0x10e4>
  804760:	d8800417 	ldw	r2,16(sp)
  804764:	157fffc4 	addi	r21,r2,-1
  804768:	d8800717 	ldw	r2,28(sp)
  80476c:	1541c50e 	bge	r2,r21,804e84 <_dtoa_r+0x1064>
  804770:	d8800717 	ldw	r2,28(sp)
  804774:	dd400715 	stw	r21,28(sp)
  804778:	a885c83a 	sub	r2,r21,r2
  80477c:	98a7883a 	add	r19,r19,r2
  804780:	002b883a 	mov	r21,zero
  804784:	d8800417 	ldw	r2,16(sp)
  804788:	10029516 	blt	r2,zero,8051e0 <_dtoa_r+0x13c0>
  80478c:	d8c00517 	ldw	r3,20(sp)
  804790:	d9000217 	ldw	r4,8(sp)
  804794:	1825883a 	mov	r18,r3
  804798:	2089883a 	add	r4,r4,r2
  80479c:	10c5883a 	add	r2,r2,r3
  8047a0:	d9000215 	stw	r4,8(sp)
  8047a4:	d8800515 	stw	r2,20(sp)
  8047a8:	01400044 	movi	r5,1
  8047ac:	b809883a 	mov	r4,r23
  8047b0:	08077d00 	call	8077d0 <__i2b>
  8047b4:	1021883a 	mov	r16,r2
  8047b8:	04800b0e 	bge	zero,r18,8047e8 <_dtoa_r+0x9c8>
  8047bc:	d8c00217 	ldw	r3,8(sp)
  8047c0:	00c0090e 	bge	zero,r3,8047e8 <_dtoa_r+0x9c8>
  8047c4:	9005883a 	mov	r2,r18
  8047c8:	1c81a616 	blt	r3,r18,804e64 <_dtoa_r+0x1044>
  8047cc:	d8c00517 	ldw	r3,20(sp)
  8047d0:	90a5c83a 	sub	r18,r18,r2
  8047d4:	1887c83a 	sub	r3,r3,r2
  8047d8:	d8c00515 	stw	r3,20(sp)
  8047dc:	d8c00217 	ldw	r3,8(sp)
  8047e0:	1885c83a 	sub	r2,r3,r2
  8047e4:	d8800215 	stw	r2,8(sp)
  8047e8:	d8800717 	ldw	r2,28(sp)
  8047ec:	10001526 	beq	r2,zero,804844 <_dtoa_r+0xa24>
  8047f0:	d8800617 	ldw	r2,24(sp)
  8047f4:	1001f626 	beq	r2,zero,804fd0 <_dtoa_r+0x11b0>
  8047f8:	05400f0e 	bge	zero,r21,804838 <_dtoa_r+0xa18>
  8047fc:	800b883a 	mov	r5,r16
  804800:	a80d883a 	mov	r6,r21
  804804:	b809883a 	mov	r4,r23
  804808:	0807ad00 	call	807ad0 <__pow5mult>
  80480c:	b00d883a 	mov	r6,r22
  804810:	100b883a 	mov	r5,r2
  804814:	b809883a 	mov	r4,r23
  804818:	1021883a 	mov	r16,r2
  80481c:	08078240 	call	807824 <__multiply>
  804820:	b00b883a 	mov	r5,r22
  804824:	b809883a 	mov	r4,r23
  804828:	d8800915 	stw	r2,36(sp)
  80482c:	08074040 	call	807404 <_Bfree>
  804830:	d8800917 	ldw	r2,36(sp)
  804834:	102d883a 	mov	r22,r2
  804838:	d8800717 	ldw	r2,28(sp)
  80483c:	154dc83a 	sub	r6,r2,r21
  804840:	1542621e 	bne	r2,r21,8051cc <_dtoa_r+0x13ac>
  804844:	01400044 	movi	r5,1
  804848:	b809883a 	mov	r4,r23
  80484c:	08077d00 	call	8077d0 <__i2b>
  804850:	102b883a 	mov	r21,r2
  804854:	04c0be16 	blt	zero,r19,804b50 <_dtoa_r+0xd30>
  804858:	d8800117 	ldw	r2,4(sp)
  80485c:	10800088 	cmpgei	r2,r2,2
  804860:	10015226 	beq	r2,zero,804dac <_dtoa_r+0xf8c>
  804864:	0023883a 	mov	r17,zero
  804868:	00800044 	movi	r2,1
  80486c:	9800c11e 	bne	r19,zero,804b74 <_dtoa_r+0xd54>
  804870:	d9400217 	ldw	r5,8(sp)
  804874:	1145883a 	add	r2,r2,r5
  804878:	108007cc 	andi	r2,r2,31
  80487c:	1000a526 	beq	r2,zero,804b14 <_dtoa_r+0xcf4>
  804880:	00c00804 	movi	r3,32
  804884:	1887c83a 	sub	r3,r3,r2
  804888:	19000150 	cmplti	r4,r3,5
  80488c:	2003311e 	bne	r4,zero,805554 <_dtoa_r+0x1734>
  804890:	00c00704 	movi	r3,28
  804894:	1885c83a 	sub	r2,r3,r2
  804898:	d8c00517 	ldw	r3,20(sp)
  80489c:	90a5883a 	add	r18,r18,r2
  8048a0:	1887883a 	add	r3,r3,r2
  8048a4:	2885883a 	add	r2,r5,r2
  8048a8:	d8c00515 	stw	r3,20(sp)
  8048ac:	d8800215 	stw	r2,8(sp)
  8048b0:	d8800517 	ldw	r2,20(sp)
  8048b4:	0080050e 	bge	zero,r2,8048cc <_dtoa_r+0xaac>
  8048b8:	b00b883a 	mov	r5,r22
  8048bc:	100d883a 	mov	r6,r2
  8048c0:	b809883a 	mov	r4,r23
  8048c4:	0807be80 	call	807be8 <__lshift>
  8048c8:	102d883a 	mov	r22,r2
  8048cc:	d8800217 	ldw	r2,8(sp)
  8048d0:	0080050e 	bge	zero,r2,8048e8 <_dtoa_r+0xac8>
  8048d4:	a80b883a 	mov	r5,r21
  8048d8:	100d883a 	mov	r6,r2
  8048dc:	b809883a 	mov	r4,r23
  8048e0:	0807be80 	call	807be8 <__lshift>
  8048e4:	102b883a 	mov	r21,r2
  8048e8:	d8800817 	ldw	r2,32(sp)
  8048ec:	1001161e 	bne	r2,zero,804d48 <_dtoa_r+0xf28>
  8048f0:	d8800417 	ldw	r2,16(sp)
  8048f4:	0081040e 	bge	zero,r2,804d08 <_dtoa_r+0xee8>
  8048f8:	d8800617 	ldw	r2,24(sp)
  8048fc:	1000b01e 	bne	r2,zero,804bc0 <_dtoa_r+0xda0>
  804900:	d8800317 	ldw	r2,12(sp)
  804904:	10800044 	addi	r2,r2,1
  804908:	d8800315 	stw	r2,12(sp)
  80490c:	dc800417 	ldw	r18,16(sp)
  804910:	04400044 	movi	r17,1
  804914:	00000706 	br	804934 <_dtoa_r+0xb14>
  804918:	b00b883a 	mov	r5,r22
  80491c:	000f883a 	mov	r7,zero
  804920:	01800284 	movi	r6,10
  804924:	b809883a 	mov	r4,r23
  804928:	08074280 	call	807428 <__multadd>
  80492c:	102d883a 	mov	r22,r2
  804930:	8c400044 	addi	r17,r17,1
  804934:	a80b883a 	mov	r5,r21
  804938:	b009883a 	mov	r4,r22
  80493c:	0803c000 	call	803c00 <quorem>
  804940:	10c00c04 	addi	r3,r2,48
  804944:	e445883a 	add	r2,fp,r17
  804948:	10ffffc5 	stb	r3,-1(r2)
  80494c:	8cbff216 	blt	r17,r18,804918 <_dtoa_r+0xaf8>
  804950:	d8800417 	ldw	r2,16(sp)
  804954:	0081510e 	bge	zero,r2,804e9c <_dtoa_r+0x107c>
  804958:	e0a5883a 	add	r18,fp,r2
  80495c:	0023883a 	mov	r17,zero
  804960:	b00b883a 	mov	r5,r22
  804964:	01800044 	movi	r6,1
  804968:	b809883a 	mov	r4,r23
  80496c:	d8c00115 	stw	r3,4(sp)
  804970:	0807be80 	call	807be8 <__lshift>
  804974:	1009883a 	mov	r4,r2
  804978:	a80b883a 	mov	r5,r21
  80497c:	102d883a 	mov	r22,r2
  804980:	0807d700 	call	807d70 <__mcmp>
  804984:	913fffc3 	ldbu	r4,-1(r18)
  804988:	00800416 	blt	zero,r2,80499c <_dtoa_r+0xb7c>
  80498c:	00014806 	br	804eb0 <_dtoa_r+0x1090>
  804990:	e0c15626 	beq	fp,r3,804eec <_dtoa_r+0x10cc>
  804994:	193fffc3 	ldbu	r4,-1(r3)
  804998:	1825883a 	mov	r18,r3
  80499c:	20803fcc 	andi	r2,r4,255
  8049a0:	1080201c 	xori	r2,r2,128
  8049a4:	10bfe004 	addi	r2,r2,-128
  8049a8:	10800e60 	cmpeqi	r2,r2,57
  8049ac:	90ffffc4 	addi	r3,r18,-1
  8049b0:	103ff71e 	bne	r2,zero,804990 <_dtoa_r+0xb70>
  8049b4:	21000044 	addi	r4,r4,1
  8049b8:	19000005 	stb	r4,0(r3)
  8049bc:	a80b883a 	mov	r5,r21
  8049c0:	b809883a 	mov	r4,r23
  8049c4:	08074040 	call	807404 <_Bfree>
  8049c8:	80000826 	beq	r16,zero,8049ec <_dtoa_r+0xbcc>
  8049cc:	88000426 	beq	r17,zero,8049e0 <_dtoa_r+0xbc0>
  8049d0:	8c000326 	beq	r17,r16,8049e0 <_dtoa_r+0xbc0>
  8049d4:	880b883a 	mov	r5,r17
  8049d8:	b809883a 	mov	r4,r23
  8049dc:	08074040 	call	807404 <_Bfree>
  8049e0:	800b883a 	mov	r5,r16
  8049e4:	b809883a 	mov	r4,r23
  8049e8:	08074040 	call	807404 <_Bfree>
  8049ec:	b00b883a 	mov	r5,r22
  8049f0:	b809883a 	mov	r4,r23
  8049f4:	08074040 	call	807404 <_Bfree>
  8049f8:	d8801f17 	ldw	r2,124(sp)
  8049fc:	d8c00317 	ldw	r3,12(sp)
  804a00:	90000005 	stb	zero,0(r18)
  804a04:	10c00015 	stw	r3,0(r2)
  804a08:	d8802117 	ldw	r2,132(sp)
  804a0c:	103d3526 	beq	r2,zero,803ee4 <_dtoa_r+0xc4>
  804a10:	14800015 	stw	r18,0(r2)
  804a14:	003d3306 	br	803ee4 <_dtoa_r+0xc4>
  804a18:	e0bfffc4 	addi	r2,fp,-1
  804a1c:	d8000815 	stw	zero,32(sp)
  804a20:	10002616 	blt	r2,zero,804abc <_dtoa_r+0xc9c>
  804a24:	d8000515 	stw	zero,20(sp)
  804a28:	d8800217 	ldw	r2,8(sp)
  804a2c:	d8c00117 	ldw	r3,4(sp)
  804a30:	dcc00315 	stw	r19,12(sp)
  804a34:	14c5883a 	add	r2,r2,r19
  804a38:	d8800215 	stw	r2,8(sp)
  804a3c:	d8000715 	stw	zero,28(sp)
  804a40:	188002a8 	cmpgeui	r2,r3,10
  804a44:	103d9d26 	beq	r2,zero,8040bc <_dtoa_r+0x29c>
  804a48:	00800044 	movi	r2,1
  804a4c:	d8800615 	stw	r2,24(sp)
  804a50:	00bfffc4 	movi	r2,-1
  804a54:	04000044 	movi	r16,1
  804a58:	d8000115 	stw	zero,4(sp)
  804a5c:	d8800415 	stw	r2,16(sp)
  804a60:	d8001e15 	stw	zero,120(sp)
  804a64:	d8800417 	ldw	r2,16(sp)
  804a68:	b8001115 	stw	zero,68(r23)
  804a6c:	000b883a 	mov	r5,zero
  804a70:	d8800b15 	stw	r2,44(sp)
  804a74:	003dae06 	br	804130 <_dtoa_r+0x310>
  804a78:	188000e0 	cmpeqi	r2,r3,3
  804a7c:	d8000615 	stw	zero,24(sp)
  804a80:	103eb126 	beq	r2,zero,804548 <_dtoa_r+0x728>
  804a84:	d8801e17 	ldw	r2,120(sp)
  804a88:	d8c00317 	ldw	r3,12(sp)
  804a8c:	10c5883a 	add	r2,r2,r3
  804a90:	d8800b15 	stw	r2,44(sp)
  804a94:	10800044 	addi	r2,r2,1
  804a98:	d8800415 	stw	r2,16(sp)
  804a9c:	100d883a 	mov	r6,r2
  804aa0:	00bd9816 	blt	zero,r2,804104 <_dtoa_r+0x2e4>
  804aa4:	01800044 	movi	r6,1
  804aa8:	003d9606 	br	804104 <_dtoa_r+0x2e4>
  804aac:	00800044 	movi	r2,1
  804ab0:	d8800815 	stw	r2,32(sp)
  804ab4:	e0bfffc4 	addi	r2,fp,-1
  804ab8:	103d740e 	bge	r2,zero,80408c <_dtoa_r+0x26c>
  804abc:	00800044 	movi	r2,1
  804ac0:	1705c83a 	sub	r2,r2,fp
  804ac4:	d8800515 	stw	r2,20(sp)
  804ac8:	d8000215 	stw	zero,8(sp)
  804acc:	003d7006 	br	804090 <_dtoa_r+0x270>
  804ad0:	9809883a 	mov	r4,r19
  804ad4:	080db740 	call	80db74 <__floatsidf>
  804ad8:	900d883a 	mov	r6,r18
  804adc:	a80f883a 	mov	r7,r21
  804ae0:	1009883a 	mov	r4,r2
  804ae4:	180b883a 	mov	r5,r3
  804ae8:	080cf0c0 	call	80cf0c <__eqdf2>
  804aec:	103d5426 	beq	r2,zero,804040 <_dtoa_r+0x220>
  804af0:	9cffffc4 	addi	r19,r19,-1
  804af4:	003d5206 	br	804040 <_dtoa_r+0x220>
  804af8:	07002074 	movhi	fp,129
  804afc:	e701ba04 	addi	fp,fp,1768
  804b00:	003cf806 	br	803ee4 <_dtoa_r+0xc4>
  804b04:	dd400717 	ldw	r21,28(sp)
  804b08:	dc800517 	ldw	r18,20(sp)
  804b0c:	0021883a 	mov	r16,zero
  804b10:	003f2906 	br	8047b8 <_dtoa_r+0x998>
  804b14:	00800704 	movi	r2,28
  804b18:	d8c00517 	ldw	r3,20(sp)
  804b1c:	90a5883a 	add	r18,r18,r2
  804b20:	1887883a 	add	r3,r3,r2
  804b24:	d8c00515 	stw	r3,20(sp)
  804b28:	d8c00217 	ldw	r3,8(sp)
  804b2c:	1885883a 	add	r2,r3,r2
  804b30:	d8800215 	stw	r2,8(sp)
  804b34:	003f5e06 	br	8048b0 <_dtoa_r+0xa90>
  804b38:	01000804 	movi	r4,32
  804b3c:	2089c83a 	sub	r4,r4,r2
  804b40:	a108983a 	sll	r4,r20,r4
  804b44:	003d0a06 	br	803f70 <_dtoa_r+0x150>
  804b48:	04000044 	movi	r16,1
  804b4c:	003d6006 	br	8040d0 <_dtoa_r+0x2b0>
  804b50:	100b883a 	mov	r5,r2
  804b54:	980d883a 	mov	r6,r19
  804b58:	b809883a 	mov	r4,r23
  804b5c:	0807ad00 	call	807ad0 <__pow5mult>
  804b60:	d8c00117 	ldw	r3,4(sp)
  804b64:	102b883a 	mov	r21,r2
  804b68:	18c00090 	cmplti	r3,r3,2
  804b6c:	18014b1e 	bne	r3,zero,80509c <_dtoa_r+0x127c>
  804b70:	0023883a 	mov	r17,zero
  804b74:	a8800417 	ldw	r2,16(r21)
  804b78:	10800104 	addi	r2,r2,4
  804b7c:	100490ba 	slli	r2,r2,2
  804b80:	a885883a 	add	r2,r21,r2
  804b84:	11000017 	ldw	r4,0(r2)
  804b88:	08076bc0 	call	8076bc <__hi0bits>
  804b8c:	00c00804 	movi	r3,32
  804b90:	1885c83a 	sub	r2,r3,r2
  804b94:	003f3606 	br	804870 <_dtoa_r+0xa50>
  804b98:	800b883a 	mov	r5,r16
  804b9c:	000f883a 	mov	r7,zero
  804ba0:	01800284 	movi	r6,10
  804ba4:	b809883a 	mov	r4,r23
  804ba8:	08074280 	call	807428 <__multadd>
  804bac:	1021883a 	mov	r16,r2
  804bb0:	d8800b17 	ldw	r2,44(sp)
  804bb4:	00824d0e 	bge	zero,r2,8054ec <_dtoa_r+0x16cc>
  804bb8:	dcc00315 	stw	r19,12(sp)
  804bbc:	d8800415 	stw	r2,16(sp)
  804bc0:	0480aa16 	blt	zero,r18,804e6c <_dtoa_r+0x104c>
  804bc4:	8801701e 	bne	r17,zero,805188 <_dtoa_r+0x1368>
  804bc8:	8027883a 	mov	r19,r16
  804bcc:	d9000417 	ldw	r4,16(sp)
  804bd0:	e0bfffc4 	addi	r2,fp,-1
  804bd4:	a0c0004c 	andi	r3,r20,1
  804bd8:	1105883a 	add	r2,r2,r4
  804bdc:	d8800415 	stw	r2,16(sp)
  804be0:	d8800117 	ldw	r2,4(sp)
  804be4:	d8c00715 	stw	r3,28(sp)
  804be8:	e029883a 	mov	r20,fp
  804bec:	1884b03a 	or	r2,r3,r2
  804bf0:	d8800615 	stw	r2,24(sp)
  804bf4:	df000815 	stw	fp,32(sp)
  804bf8:	00002906 	br	804ca0 <_dtoa_r+0xe80>
  804bfc:	b009883a 	mov	r4,r22
  804c00:	0807d700 	call	807d70 <__mcmp>
  804c04:	900b883a 	mov	r5,r18
  804c08:	b809883a 	mov	r4,r23
  804c0c:	d8800215 	stw	r2,8(sp)
  804c10:	08074040 	call	807404 <_Bfree>
  804c14:	d8800217 	ldw	r2,8(sp)
  804c18:	1000021e 	bne	r2,zero,804c24 <_dtoa_r+0xe04>
  804c1c:	d8c00617 	ldw	r3,24(sp)
  804c20:	18022326 	beq	r3,zero,8054b0 <_dtoa_r+0x1690>
  804c24:	a4800044 	addi	r18,r20,1
  804c28:	88012216 	blt	r17,zero,8050b4 <_dtoa_r+0x1294>
  804c2c:	d8c00117 	ldw	r3,4(sp)
  804c30:	1c62b03a 	or	r17,r3,r17
  804c34:	d8c00717 	ldw	r3,28(sp)
  804c38:	1c62b03a 	or	r17,r3,r17
  804c3c:	88011d26 	beq	r17,zero,8050b4 <_dtoa_r+0x1294>
  804c40:	00816b16 	blt	zero,r2,8051f0 <_dtoa_r+0x13d0>
  804c44:	d8800417 	ldw	r2,16(sp)
  804c48:	a7000005 	stb	fp,0(r20)
  804c4c:	15017126 	beq	r2,r20,805214 <_dtoa_r+0x13f4>
  804c50:	b00b883a 	mov	r5,r22
  804c54:	000f883a 	mov	r7,zero
  804c58:	01800284 	movi	r6,10
  804c5c:	b809883a 	mov	r4,r23
  804c60:	08074280 	call	807428 <__multadd>
  804c64:	102d883a 	mov	r22,r2
  804c68:	800b883a 	mov	r5,r16
  804c6c:	000f883a 	mov	r7,zero
  804c70:	01800284 	movi	r6,10
  804c74:	b809883a 	mov	r4,r23
  804c78:	84c01f26 	beq	r16,r19,804cf8 <_dtoa_r+0xed8>
  804c7c:	08074280 	call	807428 <__multadd>
  804c80:	980b883a 	mov	r5,r19
  804c84:	000f883a 	mov	r7,zero
  804c88:	01800284 	movi	r6,10
  804c8c:	b809883a 	mov	r4,r23
  804c90:	1021883a 	mov	r16,r2
  804c94:	08074280 	call	807428 <__multadd>
  804c98:	1027883a 	mov	r19,r2
  804c9c:	9029883a 	mov	r20,r18
  804ca0:	a80b883a 	mov	r5,r21
  804ca4:	b009883a 	mov	r4,r22
  804ca8:	0803c000 	call	803c00 <quorem>
  804cac:	800b883a 	mov	r5,r16
  804cb0:	b009883a 	mov	r4,r22
  804cb4:	1039883a 	mov	fp,r2
  804cb8:	d8800515 	stw	r2,20(sp)
  804cbc:	0807d700 	call	807d70 <__mcmp>
  804cc0:	a80b883a 	mov	r5,r21
  804cc4:	980d883a 	mov	r6,r19
  804cc8:	b809883a 	mov	r4,r23
  804ccc:	1023883a 	mov	r17,r2
  804cd0:	0807dc80 	call	807dc8 <__mdiff>
  804cd4:	1025883a 	mov	r18,r2
  804cd8:	10800317 	ldw	r2,12(r2)
  804cdc:	e7000c04 	addi	fp,fp,48
  804ce0:	900b883a 	mov	r5,r18
  804ce4:	103fc526 	beq	r2,zero,804bfc <_dtoa_r+0xddc>
  804ce8:	b809883a 	mov	r4,r23
  804cec:	08074040 	call	807404 <_Bfree>
  804cf0:	00800044 	movi	r2,1
  804cf4:	003fcb06 	br	804c24 <_dtoa_r+0xe04>
  804cf8:	08074280 	call	807428 <__multadd>
  804cfc:	1021883a 	mov	r16,r2
  804d00:	1027883a 	mov	r19,r2
  804d04:	003fe506 	br	804c9c <_dtoa_r+0xe7c>
  804d08:	d8800117 	ldw	r2,4(sp)
  804d0c:	108000d0 	cmplti	r2,r2,3
  804d10:	10003c26 	beq	r2,zero,804e04 <_dtoa_r+0xfe4>
  804d14:	d8800617 	ldw	r2,24(sp)
  804d18:	103fa91e 	bne	r2,zero,804bc0 <_dtoa_r+0xda0>
  804d1c:	a80b883a 	mov	r5,r21
  804d20:	b009883a 	mov	r4,r22
  804d24:	0803c000 	call	803c00 <quorem>
  804d28:	10c00c04 	addi	r3,r2,48
  804d2c:	d8800317 	ldw	r2,12(sp)
  804d30:	e4800044 	addi	r18,fp,1
  804d34:	e0c00005 	stb	r3,0(fp)
  804d38:	10800044 	addi	r2,r2,1
  804d3c:	d8800315 	stw	r2,12(sp)
  804d40:	0023883a 	mov	r17,zero
  804d44:	003f0606 	br	804960 <_dtoa_r+0xb40>
  804d48:	a80b883a 	mov	r5,r21
  804d4c:	b009883a 	mov	r4,r22
  804d50:	0807d700 	call	807d70 <__mcmp>
  804d54:	103ee60e 	bge	r2,zero,8048f0 <_dtoa_r+0xad0>
  804d58:	b00b883a 	mov	r5,r22
  804d5c:	000f883a 	mov	r7,zero
  804d60:	01800284 	movi	r6,10
  804d64:	b809883a 	mov	r4,r23
  804d68:	08074280 	call	807428 <__multadd>
  804d6c:	d8c00317 	ldw	r3,12(sp)
  804d70:	102d883a 	mov	r22,r2
  804d74:	d8800617 	ldw	r2,24(sp)
  804d78:	1cffffc4 	addi	r19,r3,-1
  804d7c:	103f861e 	bne	r2,zero,804b98 <_dtoa_r+0xd78>
  804d80:	d8800b17 	ldw	r2,44(sp)
  804d84:	0081d40e 	bge	zero,r2,8054d8 <_dtoa_r+0x16b8>
  804d88:	d8800415 	stw	r2,16(sp)
  804d8c:	003edf06 	br	80490c <_dtoa_r+0xaec>
  804d90:	00802074 	movhi	r2,129
  804d94:	e701c304 	addi	fp,fp,1804
  804d98:	1081c3c4 	addi	r2,r2,1807
  804d9c:	003dd906 	br	804504 <_dtoa_r+0x6e4>
  804da0:	00800044 	movi	r2,1
  804da4:	d8800615 	stw	r2,24(sp)
  804da8:	003f3606 	br	804a84 <_dtoa_r+0xc64>
  804dac:	a03ead1e 	bne	r20,zero,804864 <_dtoa_r+0xa44>
  804db0:	00800434 	movhi	r2,16
  804db4:	10bfffc4 	addi	r2,r2,-1
  804db8:	8884703a 	and	r2,r17,r2
  804dbc:	103ea91e 	bne	r2,zero,804864 <_dtoa_r+0xa44>
  804dc0:	8c5ffc2c 	andhi	r17,r17,32752
  804dc4:	883ea726 	beq	r17,zero,804864 <_dtoa_r+0xa44>
  804dc8:	d8800517 	ldw	r2,20(sp)
  804dcc:	04400044 	movi	r17,1
  804dd0:	10800044 	addi	r2,r2,1
  804dd4:	d8800515 	stw	r2,20(sp)
  804dd8:	d8800217 	ldw	r2,8(sp)
  804ddc:	10800044 	addi	r2,r2,1
  804de0:	d8800215 	stw	r2,8(sp)
  804de4:	003ea006 	br	804868 <_dtoa_r+0xa48>
  804de8:	00800044 	movi	r2,1
  804dec:	d8800415 	stw	r2,16(sp)
  804df0:	d8801e15 	stw	r2,120(sp)
  804df4:	003f1b06 	br	804a64 <_dtoa_r+0xc44>
  804df8:	d8800b17 	ldw	r2,44(sp)
  804dfc:	dcc00315 	stw	r19,12(sp)
  804e00:	d8800415 	stw	r2,16(sp)
  804e04:	d8800417 	ldw	r2,16(sp)
  804e08:	103dfb1e 	bne	r2,zero,8045f8 <_dtoa_r+0x7d8>
  804e0c:	a80b883a 	mov	r5,r21
  804e10:	b809883a 	mov	r4,r23
  804e14:	000f883a 	mov	r7,zero
  804e18:	01800144 	movi	r6,5
  804e1c:	08074280 	call	807428 <__multadd>
  804e20:	100b883a 	mov	r5,r2
  804e24:	b009883a 	mov	r4,r22
  804e28:	102b883a 	mov	r21,r2
  804e2c:	0807d700 	call	807d70 <__mcmp>
  804e30:	00bdf10e 	bge	zero,r2,8045f8 <_dtoa_r+0x7d8>
  804e34:	00800c44 	movi	r2,49
  804e38:	e0800005 	stb	r2,0(fp)
  804e3c:	d8800317 	ldw	r2,12(sp)
  804e40:	e4800044 	addi	r18,fp,1
  804e44:	14400044 	addi	r17,r2,1
  804e48:	a80b883a 	mov	r5,r21
  804e4c:	b809883a 	mov	r4,r23
  804e50:	08074040 	call	807404 <_Bfree>
  804e54:	88800044 	addi	r2,r17,1
  804e58:	d8800315 	stw	r2,12(sp)
  804e5c:	803ee01e 	bne	r16,zero,8049e0 <_dtoa_r+0xbc0>
  804e60:	003ee206 	br	8049ec <_dtoa_r+0xbcc>
  804e64:	1805883a 	mov	r2,r3
  804e68:	003e5806 	br	8047cc <_dtoa_r+0x9ac>
  804e6c:	800b883a 	mov	r5,r16
  804e70:	900d883a 	mov	r6,r18
  804e74:	b809883a 	mov	r4,r23
  804e78:	0807be80 	call	807be8 <__lshift>
  804e7c:	1021883a 	mov	r16,r2
  804e80:	003f5006 	br	804bc4 <_dtoa_r+0xda4>
  804e84:	156bc83a 	sub	r21,r2,r21
  804e88:	003e3e06 	br	804784 <_dtoa_r+0x964>
  804e8c:	dd000a15 	stw	r20,40(sp)
  804e90:	dc400c15 	stw	r17,48(sp)
  804e94:	04000084 	movi	r16,2
  804e98:	003cc906 	br	8041c0 <_dtoa_r+0x3a0>
  804e9c:	00800044 	movi	r2,1
  804ea0:	003ead06 	br	804958 <_dtoa_r+0xb38>
  804ea4:	00800044 	movi	r2,1
  804ea8:	d8800615 	stw	r2,24(sp)
  804eac:	003c9006 	br	8040f0 <_dtoa_r+0x2d0>
  804eb0:	1000031e 	bne	r2,zero,804ec0 <_dtoa_r+0x10a0>
  804eb4:	d8c00117 	ldw	r3,4(sp)
  804eb8:	18c0004c 	andi	r3,r3,1
  804ebc:	183eb71e 	bne	r3,zero,80499c <_dtoa_r+0xb7c>
  804ec0:	2005883a 	mov	r2,r4
  804ec4:	00000206 	br	804ed0 <_dtoa_r+0x10b0>
  804ec8:	90bfff83 	ldbu	r2,-2(r18)
  804ecc:	1825883a 	mov	r18,r3
  804ed0:	10803fcc 	andi	r2,r2,255
  804ed4:	1080201c 	xori	r2,r2,128
  804ed8:	10bfe004 	addi	r2,r2,-128
  804edc:	10800c18 	cmpnei	r2,r2,48
  804ee0:	90ffffc4 	addi	r3,r18,-1
  804ee4:	103ff826 	beq	r2,zero,804ec8 <_dtoa_r+0x10a8>
  804ee8:	003eb406 	br	8049bc <_dtoa_r+0xb9c>
  804eec:	00800c44 	movi	r2,49
  804ef0:	e0800005 	stb	r2,0(fp)
  804ef4:	d8800317 	ldw	r2,12(sp)
  804ef8:	10800044 	addi	r2,r2,1
  804efc:	d8800315 	stw	r2,12(sp)
  804f00:	003eae06 	br	8049bc <_dtoa_r+0xb9c>
  804f04:	d8c00917 	ldw	r3,36(sp)
  804f08:	18011826 	beq	r3,zero,80536c <_dtoa_r+0x154c>
  804f0c:	d8c00517 	ldw	r3,20(sp)
  804f10:	d9000217 	ldw	r4,8(sp)
  804f14:	10810cc4 	addi	r2,r2,1075
  804f18:	dd400717 	ldw	r21,28(sp)
  804f1c:	2089883a 	add	r4,r4,r2
  804f20:	1885883a 	add	r2,r3,r2
  804f24:	1825883a 	mov	r18,r3
  804f28:	d9000215 	stw	r4,8(sp)
  804f2c:	d8800515 	stw	r2,20(sp)
  804f30:	003e1d06 	br	8047a8 <_dtoa_r+0x988>
  804f34:	8009883a 	mov	r4,r16
  804f38:	080db740 	call	80db74 <__floatsidf>
  804f3c:	d9c00a17 	ldw	r7,40(sp)
  804f40:	900d883a 	mov	r6,r18
  804f44:	1009883a 	mov	r4,r2
  804f48:	180b883a 	mov	r5,r3
  804f4c:	0800d500 	call	800d50 <__muldf3>
  804f50:	000d883a 	mov	r6,zero
  804f54:	01d00734 	movhi	r7,16412
  804f58:	1009883a 	mov	r4,r2
  804f5c:	180b883a 	mov	r5,r3
  804f60:	080bc600 	call	80bc60 <__adddf3>
  804f64:	d8800c15 	stw	r2,48(sp)
  804f68:	00bf3034 	movhi	r2,64704
  804f6c:	1885883a 	add	r2,r3,r2
  804f70:	d8800d15 	stw	r2,52(sp)
  804f74:	d9400a17 	ldw	r5,40(sp)
  804f78:	9009883a 	mov	r4,r18
  804f7c:	000d883a 	mov	r6,zero
  804f80:	01d00534 	movhi	r7,16404
  804f84:	080d16c0 	call	80d16c <__subdf3>
  804f88:	dd400d17 	ldw	r21,52(sp)
  804f8c:	d9800c17 	ldw	r6,48(sp)
  804f90:	1009883a 	mov	r4,r2
  804f94:	a80f883a 	mov	r7,r21
  804f98:	180b883a 	mov	r5,r3
  804f9c:	1025883a 	mov	r18,r2
  804fa0:	1821883a 	mov	r16,r3
  804fa4:	080cf8c0 	call	80cf8c <__gedf2>
  804fa8:	00812d16 	blt	zero,r2,805460 <_dtoa_r+0x1640>
  804fac:	d9800c17 	ldw	r6,48(sp)
  804fb0:	a9e0003c 	xorhi	r7,r21,32768
  804fb4:	9009883a 	mov	r4,r18
  804fb8:	800b883a 	mov	r5,r16
  804fbc:	080d07c0 	call	80d07c <__ledf2>
  804fc0:	103d6e0e 	bge	r2,zero,80457c <_dtoa_r+0x75c>
  804fc4:	002b883a 	mov	r21,zero
  804fc8:	0021883a 	mov	r16,zero
  804fcc:	003d8a06 	br	8045f8 <_dtoa_r+0x7d8>
  804fd0:	d9800717 	ldw	r6,28(sp)
  804fd4:	b00b883a 	mov	r5,r22
  804fd8:	b809883a 	mov	r4,r23
  804fdc:	0807ad00 	call	807ad0 <__pow5mult>
  804fe0:	102d883a 	mov	r22,r2
  804fe4:	003e1706 	br	804844 <_dtoa_r+0xa24>
  804fe8:	d8800317 	ldw	r2,12(sp)
  804fec:	10010d26 	beq	r2,zero,805424 <_dtoa_r+0x1604>
  804ff0:	00abc83a 	sub	r21,zero,r2
  804ff4:	a88003cc 	andi	r2,r21,15
  804ff8:	100690fa 	slli	r3,r2,3
  804ffc:	00802074 	movhi	r2,129
  805000:	10820304 	addi	r2,r2,2060
  805004:	10c5883a 	add	r2,r2,r3
  805008:	11800017 	ldw	r6,0(r2)
  80500c:	11c00117 	ldw	r7,4(r2)
  805010:	a009883a 	mov	r4,r20
  805014:	880b883a 	mov	r5,r17
  805018:	a82bd13a 	srai	r21,r21,4
  80501c:	0800d500 	call	800d50 <__muldf3>
  805020:	d8c00a15 	stw	r3,40(sp)
  805024:	1025883a 	mov	r18,r2
  805028:	a8013826 	beq	r21,zero,80550c <_dtoa_r+0x16ec>
  80502c:	02002074 	movhi	r8,129
  805030:	04000084 	movi	r16,2
  805034:	4201f904 	addi	r8,r8,2020
  805038:	180b883a 	mov	r5,r3
  80503c:	dc400c15 	stw	r17,48(sp)
  805040:	1009883a 	mov	r4,r2
  805044:	8023883a 	mov	r17,r16
  805048:	0007883a 	mov	r3,zero
  80504c:	4021883a 	mov	r16,r8
  805050:	a980004c 	andi	r6,r21,1
  805054:	30000726 	beq	r6,zero,805074 <_dtoa_r+0x1254>
  805058:	81800017 	ldw	r6,0(r16)
  80505c:	81c00117 	ldw	r7,4(r16)
  805060:	8c400044 	addi	r17,r17,1
  805064:	0800d500 	call	800d50 <__muldf3>
  805068:	180b883a 	mov	r5,r3
  80506c:	1009883a 	mov	r4,r2
  805070:	00c00044 	movi	r3,1
  805074:	a82bd07a 	srai	r21,r21,1
  805078:	84000204 	addi	r16,r16,8
  80507c:	a83ff41e 	bne	r21,zero,805050 <_dtoa_r+0x1230>
  805080:	18c03fcc 	andi	r3,r3,255
  805084:	8821883a 	mov	r16,r17
  805088:	dc400c17 	ldw	r17,48(sp)
  80508c:	183c6526 	beq	r3,zero,804224 <_dtoa_r+0x404>
  805090:	2025883a 	mov	r18,r4
  805094:	d9400a15 	stw	r5,40(sp)
  805098:	003c6206 	br	804224 <_dtoa_r+0x404>
  80509c:	a03eb41e 	bne	r20,zero,804b70 <_dtoa_r+0xd50>
  8050a0:	00800434 	movhi	r2,16
  8050a4:	10bfffc4 	addi	r2,r2,-1
  8050a8:	8884703a 	and	r2,r17,r2
  8050ac:	103f4426 	beq	r2,zero,804dc0 <_dtoa_r+0xfa0>
  8050b0:	003eaf06 	br	804b70 <_dtoa_r+0xd50>
  8050b4:	d9000317 	ldw	r4,12(sp)
  8050b8:	e007883a 	mov	r3,fp
  8050bc:	df000817 	ldw	fp,32(sp)
  8050c0:	21000044 	addi	r4,r4,1
  8050c4:	d9000315 	stw	r4,12(sp)
  8050c8:	00800f0e 	bge	zero,r2,805108 <_dtoa_r+0x12e8>
  8050cc:	b00b883a 	mov	r5,r22
  8050d0:	01800044 	movi	r6,1
  8050d4:	b809883a 	mov	r4,r23
  8050d8:	d8c00115 	stw	r3,4(sp)
  8050dc:	0807be80 	call	807be8 <__lshift>
  8050e0:	a80b883a 	mov	r5,r21
  8050e4:	1009883a 	mov	r4,r2
  8050e8:	102d883a 	mov	r22,r2
  8050ec:	0807d700 	call	807d70 <__mcmp>
  8050f0:	d8c00117 	ldw	r3,4(sp)
  8050f4:	0080e40e 	bge	zero,r2,805488 <_dtoa_r+0x1668>
  8050f8:	18c00e60 	cmpeqi	r3,r3,57
  8050fc:	1800d21e 	bne	r3,zero,805448 <_dtoa_r+0x1628>
  805100:	d8800517 	ldw	r2,20(sp)
  805104:	10c00c44 	addi	r3,r2,49
  805108:	8023883a 	mov	r17,r16
  80510c:	a0c00005 	stb	r3,0(r20)
  805110:	9821883a 	mov	r16,r19
  805114:	003e2906 	br	8049bc <_dtoa_r+0xb9c>
  805118:	b027883a 	mov	r19,r22
  80511c:	ddc00417 	ldw	r23,16(sp)
  805120:	dd800217 	ldw	r22,8(sp)
  805124:	200d883a 	mov	r6,r4
  805128:	280f883a 	mov	r7,r5
  80512c:	080bc600 	call	80bc60 <__adddf3>
  805130:	dd400117 	ldw	r21,4(sp)
  805134:	180b883a 	mov	r5,r3
  805138:	900f883a 	mov	r7,r18
  80513c:	a80d883a 	mov	r6,r21
  805140:	1009883a 	mov	r4,r2
  805144:	1823883a 	mov	r17,r3
  805148:	1029883a 	mov	r20,r2
  80514c:	080cf8c0 	call	80cf8c <__gedf2>
  805150:	d8c00317 	ldw	r3,12(sp)
  805154:	18c00044 	addi	r3,r3,1
  805158:	d8c00315 	stw	r3,12(sp)
  80515c:	00bcc716 	blt	zero,r2,80447c <_dtoa_r+0x65c>
  805160:	a80d883a 	mov	r6,r21
  805164:	900f883a 	mov	r7,r18
  805168:	a009883a 	mov	r4,r20
  80516c:	880b883a 	mov	r5,r17
  805170:	080cf0c0 	call	80cf0c <__eqdf2>
  805174:	1000021e 	bne	r2,zero,805180 <_dtoa_r+0x1360>
  805178:	9cc0004c 	andi	r19,r19,1
  80517c:	983cbf1e 	bne	r19,zero,80447c <_dtoa_r+0x65c>
  805180:	8025883a 	mov	r18,r16
  805184:	003e1906 	br	8049ec <_dtoa_r+0xbcc>
  805188:	81400117 	ldw	r5,4(r16)
  80518c:	b809883a 	mov	r4,r23
  805190:	08073600 	call	807360 <_Balloc>
  805194:	1023883a 	mov	r17,r2
  805198:	1000e526 	beq	r2,zero,805530 <_dtoa_r+0x1710>
  80519c:	81800417 	ldw	r6,16(r16)
  8051a0:	81400304 	addi	r5,r16,12
  8051a4:	11000304 	addi	r4,r2,12
  8051a8:	31800084 	addi	r6,r6,2
  8051ac:	300c90ba 	slli	r6,r6,2
  8051b0:	08070440 	call	807044 <memcpy>
  8051b4:	01800044 	movi	r6,1
  8051b8:	880b883a 	mov	r5,r17
  8051bc:	b809883a 	mov	r4,r23
  8051c0:	0807be80 	call	807be8 <__lshift>
  8051c4:	1027883a 	mov	r19,r2
  8051c8:	003e8006 	br	804bcc <_dtoa_r+0xdac>
  8051cc:	b00b883a 	mov	r5,r22
  8051d0:	b809883a 	mov	r4,r23
  8051d4:	0807ad00 	call	807ad0 <__pow5mult>
  8051d8:	102d883a 	mov	r22,r2
  8051dc:	003d9906 	br	804844 <_dtoa_r+0xa24>
  8051e0:	d8800517 	ldw	r2,20(sp)
  8051e4:	d8c00417 	ldw	r3,16(sp)
  8051e8:	10e5c83a 	sub	r18,r2,r3
  8051ec:	003d6e06 	br	8047a8 <_dtoa_r+0x988>
  8051f0:	d9000317 	ldw	r4,12(sp)
  8051f4:	e007883a 	mov	r3,fp
  8051f8:	18800e58 	cmpnei	r2,r3,57
  8051fc:	21000044 	addi	r4,r4,1
  805200:	d9000315 	stw	r4,12(sp)
  805204:	df000817 	ldw	fp,32(sp)
  805208:	10008f26 	beq	r2,zero,805448 <_dtoa_r+0x1628>
  80520c:	18c00044 	addi	r3,r3,1
  805210:	003fbd06 	br	805108 <_dtoa_r+0x12e8>
  805214:	d8800317 	ldw	r2,12(sp)
  805218:	e007883a 	mov	r3,fp
  80521c:	8023883a 	mov	r17,r16
  805220:	10800044 	addi	r2,r2,1
  805224:	df000817 	ldw	fp,32(sp)
  805228:	d8800315 	stw	r2,12(sp)
  80522c:	9821883a 	mov	r16,r19
  805230:	003dcb06 	br	804960 <_dtoa_r+0xb40>
  805234:	d9000c17 	ldw	r4,48(sp)
  805238:	d9400d17 	ldw	r5,52(sp)
  80523c:	600d883a 	mov	r6,r12
  805240:	680f883a 	mov	r7,r13
  805244:	dac00a15 	stw	r11,40(sp)
  805248:	0800d500 	call	800d50 <__muldf3>
  80524c:	dac00a17 	ldw	r11,40(sp)
  805250:	d9400e17 	ldw	r5,56(sp)
  805254:	d8800a15 	stw	r2,40(sp)
  805258:	e2c00005 	stb	r11,0(fp)
  80525c:	29000058 	cmpnei	r4,r5,1
  805260:	d8c00c15 	stw	r3,48(sp)
  805264:	e145883a 	add	r2,fp,r5
  805268:	20002126 	beq	r4,zero,8052f0 <_dtoa_r+0x14d0>
  80526c:	dc400e15 	stw	r17,56(sp)
  805270:	dcc00d15 	stw	r19,52(sp)
  805274:	8023883a 	mov	r17,r16
  805278:	a809883a 	mov	r4,r21
  80527c:	900b883a 	mov	r5,r18
  805280:	1021883a 	mov	r16,r2
  805284:	000d883a 	mov	r6,zero
  805288:	01d00934 	movhi	r7,16420
  80528c:	0800d500 	call	800d50 <__muldf3>
  805290:	180b883a 	mov	r5,r3
  805294:	1009883a 	mov	r4,r2
  805298:	182b883a 	mov	r21,r3
  80529c:	1027883a 	mov	r19,r2
  8052a0:	080daf40 	call	80daf4 <__fixdfsi>
  8052a4:	1009883a 	mov	r4,r2
  8052a8:	1025883a 	mov	r18,r2
  8052ac:	080db740 	call	80db74 <__floatsidf>
  8052b0:	9809883a 	mov	r4,r19
  8052b4:	a80b883a 	mov	r5,r21
  8052b8:	100d883a 	mov	r6,r2
  8052bc:	180f883a 	mov	r7,r3
  8052c0:	8c400044 	addi	r17,r17,1
  8052c4:	94800c04 	addi	r18,r18,48
  8052c8:	080d16c0 	call	80d16c <__subdf3>
  8052cc:	8cbfffc5 	stb	r18,-1(r17)
  8052d0:	1009883a 	mov	r4,r2
  8052d4:	180b883a 	mov	r5,r3
  8052d8:	847fea1e 	bne	r16,r17,805284 <_dtoa_r+0x1464>
  8052dc:	8821883a 	mov	r16,r17
  8052e0:	dcc00d17 	ldw	r19,52(sp)
  8052e4:	dc400e17 	ldw	r17,56(sp)
  8052e8:	102b883a 	mov	r21,r2
  8052ec:	1825883a 	mov	r18,r3
  8052f0:	d9000a17 	ldw	r4,40(sp)
  8052f4:	d9400c17 	ldw	r5,48(sp)
  8052f8:	000d883a 	mov	r6,zero
  8052fc:	01cff834 	movhi	r7,16352
  805300:	080bc600 	call	80bc60 <__adddf3>
  805304:	a80d883a 	mov	r6,r21
  805308:	900f883a 	mov	r7,r18
  80530c:	1009883a 	mov	r4,r2
  805310:	180b883a 	mov	r5,r3
  805314:	080d07c0 	call	80d07c <__ledf2>
  805318:	103c5316 	blt	r2,zero,804468 <_dtoa_r+0x648>
  80531c:	d9800a17 	ldw	r6,40(sp)
  805320:	d9c00c17 	ldw	r7,48(sp)
  805324:	0009883a 	mov	r4,zero
  805328:	014ff834 	movhi	r5,16352
  80532c:	080d16c0 	call	80d16c <__subdf3>
  805330:	a80d883a 	mov	r6,r21
  805334:	900f883a 	mov	r7,r18
  805338:	1009883a 	mov	r4,r2
  80533c:	180b883a 	mov	r5,r3
  805340:	080cf8c0 	call	80cf8c <__gedf2>
  805344:	00bc8d0e 	bge	zero,r2,80457c <_dtoa_r+0x75c>
  805348:	80bfffc7 	ldb	r2,-1(r16)
  80534c:	8025883a 	mov	r18,r16
  805350:	843fffc4 	addi	r16,r16,-1
  805354:	10800c20 	cmpeqi	r2,r2,48
  805358:	103ffb1e 	bne	r2,zero,805348 <_dtoa_r+0x1528>
  80535c:	d8801117 	ldw	r2,68(sp)
  805360:	10800044 	addi	r2,r2,1
  805364:	d8800315 	stw	r2,12(sp)
  805368:	003da006 	br	8049ec <_dtoa_r+0xbcc>
  80536c:	d8c01217 	ldw	r3,72(sp)
  805370:	00800d84 	movi	r2,54
  805374:	d9000517 	ldw	r4,20(sp)
  805378:	10c5c83a 	sub	r2,r2,r3
  80537c:	d8c00217 	ldw	r3,8(sp)
  805380:	dd400717 	ldw	r21,28(sp)
  805384:	2025883a 	mov	r18,r4
  805388:	1887883a 	add	r3,r3,r2
  80538c:	2085883a 	add	r2,r4,r2
  805390:	d8c00215 	stw	r3,8(sp)
  805394:	d8800515 	stw	r2,20(sp)
  805398:	003d0306 	br	8047a8 <_dtoa_r+0x988>
  80539c:	d8800417 	ldw	r2,16(sp)
  8053a0:	103ee426 	beq	r2,zero,804f34 <_dtoa_r+0x1114>
  8053a4:	d8800b17 	ldw	r2,44(sp)
  8053a8:	00bc740e 	bge	zero,r2,80457c <_dtoa_r+0x75c>
  8053ac:	a80b883a 	mov	r5,r21
  8053b0:	9009883a 	mov	r4,r18
  8053b4:	000d883a 	mov	r6,zero
  8053b8:	01d00934 	movhi	r7,16420
  8053bc:	0800d500 	call	800d50 <__muldf3>
  8053c0:	81000044 	addi	r4,r16,1
  8053c4:	1025883a 	mov	r18,r2
  8053c8:	182b883a 	mov	r21,r3
  8053cc:	d8c00a15 	stw	r3,40(sp)
  8053d0:	080db740 	call	80db74 <__floatsidf>
  8053d4:	900d883a 	mov	r6,r18
  8053d8:	a80f883a 	mov	r7,r21
  8053dc:	1009883a 	mov	r4,r2
  8053e0:	180b883a 	mov	r5,r3
  8053e4:	0800d500 	call	800d50 <__muldf3>
  8053e8:	1009883a 	mov	r4,r2
  8053ec:	000d883a 	mov	r6,zero
  8053f0:	01d00734 	movhi	r7,16412
  8053f4:	180b883a 	mov	r5,r3
  8053f8:	080bc600 	call	80bc60 <__adddf3>
  8053fc:	d9000317 	ldw	r4,12(sp)
  805400:	d8800c15 	stw	r2,48(sp)
  805404:	00bf3034 	movhi	r2,64704
  805408:	1887883a 	add	r3,r3,r2
  80540c:	d8800b17 	ldw	r2,44(sp)
  805410:	213fffc4 	addi	r4,r4,-1
  805414:	d9001115 	stw	r4,68(sp)
  805418:	d8c00d15 	stw	r3,52(sp)
  80541c:	d8800e15 	stw	r2,56(sp)
  805420:	003b9f06 	br	8042a0 <_dtoa_r+0x480>
  805424:	a025883a 	mov	r18,r20
  805428:	dc400a15 	stw	r17,40(sp)
  80542c:	04000084 	movi	r16,2
  805430:	003b7c06 	br	804224 <_dtoa_r+0x404>
  805434:	d8800317 	ldw	r2,12(sp)
  805438:	00c00c44 	movi	r3,49
  80543c:	10800044 	addi	r2,r2,1
  805440:	d8800315 	stw	r2,12(sp)
  805444:	003c1606 	br	8044a0 <_dtoa_r+0x680>
  805448:	00800e44 	movi	r2,57
  80544c:	8023883a 	mov	r17,r16
  805450:	a0800005 	stb	r2,0(r20)
  805454:	9821883a 	mov	r16,r19
  805458:	01000e44 	movi	r4,57
  80545c:	003d4f06 	br	80499c <_dtoa_r+0xb7c>
  805460:	002b883a 	mov	r21,zero
  805464:	0021883a 	mov	r16,zero
  805468:	003e7206 	br	804e34 <_dtoa_r+0x1014>
  80546c:	dd800d17 	ldw	r22,52(sp)
  805470:	ddc00e17 	ldw	r23,56(sp)
  805474:	d8801117 	ldw	r2,68(sp)
  805478:	8025883a 	mov	r18,r16
  80547c:	10800044 	addi	r2,r2,1
  805480:	d8800315 	stw	r2,12(sp)
  805484:	003d5906 	br	8049ec <_dtoa_r+0xbcc>
  805488:	103f1f1e 	bne	r2,zero,805108 <_dtoa_r+0x12e8>
  80548c:	1880004c 	andi	r2,r3,1
  805490:	103f191e 	bne	r2,zero,8050f8 <_dtoa_r+0x12d8>
  805494:	003f1c06 	br	805108 <_dtoa_r+0x12e8>
  805498:	dcc00f17 	ldw	r19,60(sp)
  80549c:	dd800d17 	ldw	r22,52(sp)
  8054a0:	ddc00e17 	ldw	r23,56(sp)
  8054a4:	dc400c17 	ldw	r17,48(sp)
  8054a8:	dd000a17 	ldw	r20,40(sp)
  8054ac:	003c3306 	br	80457c <_dtoa_r+0x75c>
  8054b0:	d9000317 	ldw	r4,12(sp)
  8054b4:	e007883a 	mov	r3,fp
  8054b8:	18800e60 	cmpeqi	r2,r3,57
  8054bc:	21000044 	addi	r4,r4,1
  8054c0:	d9000315 	stw	r4,12(sp)
  8054c4:	df000817 	ldw	fp,32(sp)
  8054c8:	a4800044 	addi	r18,r20,1
  8054cc:	103fde1e 	bne	r2,zero,805448 <_dtoa_r+0x1628>
  8054d0:	047f0b16 	blt	zero,r17,805100 <_dtoa_r+0x12e0>
  8054d4:	003f0c06 	br	805108 <_dtoa_r+0x12e8>
  8054d8:	d8800117 	ldw	r2,4(sp)
  8054dc:	108000c8 	cmpgei	r2,r2,3
  8054e0:	103e451e 	bne	r2,zero,804df8 <_dtoa_r+0xfd8>
  8054e4:	dcc00315 	stw	r19,12(sp)
  8054e8:	003e0c06 	br	804d1c <_dtoa_r+0xefc>
  8054ec:	d8800117 	ldw	r2,4(sp)
  8054f0:	108000c8 	cmpgei	r2,r2,3
  8054f4:	103e401e 	bne	r2,zero,804df8 <_dtoa_r+0xfd8>
  8054f8:	d8800b17 	ldw	r2,44(sp)
  8054fc:	dcc00315 	stw	r19,12(sp)
  805500:	d8800415 	stw	r2,16(sp)
  805504:	04bdaf0e 	bge	zero,r18,804bc4 <_dtoa_r+0xda4>
  805508:	003e5806 	br	804e6c <_dtoa_r+0x104c>
  80550c:	04000084 	movi	r16,2
  805510:	003b4406 	br	804224 <_dtoa_r+0x404>
  805514:	01c02074 	movhi	r7,129
  805518:	01002074 	movhi	r4,129
  80551c:	39c1c704 	addi	r7,r7,1820
  805520:	000d883a 	mov	r6,zero
  805524:	01406a84 	movi	r5,426
  805528:	2101cc04 	addi	r4,r4,1840
  80552c:	080a14c0 	call	80a14c <__assert_func>
  805530:	01c02074 	movhi	r7,129
  805534:	01002074 	movhi	r4,129
  805538:	39c1c704 	addi	r7,r7,1820
  80553c:	000d883a 	mov	r6,zero
  805540:	0140ba84 	movi	r5,746
  805544:	2101cc04 	addi	r4,r4,1840
  805548:	080a14c0 	call	80a14c <__assert_func>
  80554c:	e701c404 	addi	fp,fp,1808
  805550:	003a6406 	br	803ee4 <_dtoa_r+0xc4>
  805554:	18c00120 	cmpeqi	r3,r3,4
  805558:	183cd51e 	bne	r3,zero,8048b0 <_dtoa_r+0xa90>
  80555c:	00c00f04 	movi	r3,60
  805560:	1885c83a 	sub	r2,r3,r2
  805564:	003d6c06 	br	804b18 <_dtoa_r+0xcf8>
  805568:	000b883a 	mov	r5,zero
  80556c:	003af006 	br	804130 <_dtoa_r+0x310>

00805570 <__sflush_r>:
  805570:	2880030b 	ldhu	r2,12(r5)
  805574:	defffb04 	addi	sp,sp,-20
  805578:	dcc00315 	stw	r19,12(sp)
  80557c:	dc000015 	stw	r16,0(sp)
  805580:	dfc00415 	stw	ra,16(sp)
  805584:	dc800215 	stw	r18,8(sp)
  805588:	dc400115 	stw	r17,4(sp)
  80558c:	10c0020c 	andi	r3,r2,8
  805590:	2821883a 	mov	r16,r5
  805594:	2027883a 	mov	r19,r4
  805598:	18003f1e 	bne	r3,zero,805698 <__sflush_r+0x128>
  80559c:	28c00117 	ldw	r3,4(r5)
  8055a0:	10820014 	ori	r2,r2,2048
  8055a4:	2880030d 	sth	r2,12(r5)
  8055a8:	00c0550e 	bge	zero,r3,805700 <__sflush_r+0x190>
  8055ac:	82000a17 	ldw	r8,40(r16)
  8055b0:	40003126 	beq	r8,zero,805678 <__sflush_r+0x108>
  8055b4:	9c400017 	ldw	r17,0(r19)
  8055b8:	1104000c 	andi	r4,r2,4096
  8055bc:	98000015 	stw	zero,0(r19)
  8055c0:	81400717 	ldw	r5,28(r16)
  8055c4:	1007883a 	mov	r3,r2
  8055c8:	2000521e 	bne	r4,zero,805714 <__sflush_r+0x1a4>
  8055cc:	01c00044 	movi	r7,1
  8055d0:	000d883a 	mov	r6,zero
  8055d4:	9809883a 	mov	r4,r19
  8055d8:	403ee83a 	callr	r8
  8055dc:	10ffffd8 	cmpnei	r3,r2,-1
  8055e0:	18005826 	beq	r3,zero,805744 <__sflush_r+0x1d4>
  8055e4:	80c0030b 	ldhu	r3,12(r16)
  8055e8:	82000a17 	ldw	r8,40(r16)
  8055ec:	81400717 	ldw	r5,28(r16)
  8055f0:	18c0010c 	andi	r3,r3,4
  8055f4:	18000626 	beq	r3,zero,805610 <__sflush_r+0xa0>
  8055f8:	81000117 	ldw	r4,4(r16)
  8055fc:	80c00c17 	ldw	r3,48(r16)
  805600:	1105c83a 	sub	r2,r2,r4
  805604:	18000226 	beq	r3,zero,805610 <__sflush_r+0xa0>
  805608:	80c00f17 	ldw	r3,60(r16)
  80560c:	10c5c83a 	sub	r2,r2,r3
  805610:	100d883a 	mov	r6,r2
  805614:	000f883a 	mov	r7,zero
  805618:	9809883a 	mov	r4,r19
  80561c:	403ee83a 	callr	r8
  805620:	10ffffd8 	cmpnei	r3,r2,-1
  805624:	18003d1e 	bne	r3,zero,80571c <__sflush_r+0x1ac>
  805628:	99000017 	ldw	r4,0(r19)
  80562c:	80c0030b 	ldhu	r3,12(r16)
  805630:	20004e26 	beq	r4,zero,80576c <__sflush_r+0x1fc>
  805634:	21400760 	cmpeqi	r5,r4,29
  805638:	2800021e 	bne	r5,zero,805644 <__sflush_r+0xd4>
  80563c:	210005a0 	cmpeqi	r4,r4,22
  805640:	20002c26 	beq	r4,zero,8056f4 <__sflush_r+0x184>
  805644:	80800417 	ldw	r2,16(r16)
  805648:	18fdffcc 	andi	r3,r3,63487
  80564c:	80c0030d 	sth	r3,12(r16)
  805650:	80000115 	stw	zero,4(r16)
  805654:	80800015 	stw	r2,0(r16)
  805658:	81400c17 	ldw	r5,48(r16)
  80565c:	9c400015 	stw	r17,0(r19)
  805660:	28000526 	beq	r5,zero,805678 <__sflush_r+0x108>
  805664:	80801004 	addi	r2,r16,64
  805668:	28800226 	beq	r5,r2,805674 <__sflush_r+0x104>
  80566c:	9809883a 	mov	r4,r19
  805670:	0805c900 	call	805c90 <_free_r>
  805674:	80000c15 	stw	zero,48(r16)
  805678:	0005883a 	mov	r2,zero
  80567c:	dfc00417 	ldw	ra,16(sp)
  805680:	dcc00317 	ldw	r19,12(sp)
  805684:	dc800217 	ldw	r18,8(sp)
  805688:	dc400117 	ldw	r17,4(sp)
  80568c:	dc000017 	ldw	r16,0(sp)
  805690:	dec00504 	addi	sp,sp,20
  805694:	f800283a 	ret
  805698:	2c800417 	ldw	r18,16(r5)
  80569c:	903ff626 	beq	r18,zero,805678 <__sflush_r+0x108>
  8056a0:	2c400017 	ldw	r17,0(r5)
  8056a4:	108000cc 	andi	r2,r2,3
  8056a8:	2c800015 	stw	r18,0(r5)
  8056ac:	8ca3c83a 	sub	r17,r17,r18
  8056b0:	1000161e 	bne	r2,zero,80570c <__sflush_r+0x19c>
  8056b4:	28800517 	ldw	r2,20(r5)
  8056b8:	80800215 	stw	r2,8(r16)
  8056bc:	04400316 	blt	zero,r17,8056cc <__sflush_r+0x15c>
  8056c0:	003fed06 	br	805678 <__sflush_r+0x108>
  8056c4:	90a5883a 	add	r18,r18,r2
  8056c8:	047feb0e 	bge	zero,r17,805678 <__sflush_r+0x108>
  8056cc:	80800917 	ldw	r2,36(r16)
  8056d0:	81400717 	ldw	r5,28(r16)
  8056d4:	880f883a 	mov	r7,r17
  8056d8:	900d883a 	mov	r6,r18
  8056dc:	9809883a 	mov	r4,r19
  8056e0:	103ee83a 	callr	r2
  8056e4:	88a3c83a 	sub	r17,r17,r2
  8056e8:	00bff616 	blt	zero,r2,8056c4 <__sflush_r+0x154>
  8056ec:	80c0030b 	ldhu	r3,12(r16)
  8056f0:	00bfffc4 	movi	r2,-1
  8056f4:	18c01014 	ori	r3,r3,64
  8056f8:	80c0030d 	sth	r3,12(r16)
  8056fc:	003fdf06 	br	80567c <__sflush_r+0x10c>
  805700:	28c00f17 	ldw	r3,60(r5)
  805704:	00ffa916 	blt	zero,r3,8055ac <__sflush_r+0x3c>
  805708:	003fdb06 	br	805678 <__sflush_r+0x108>
  80570c:	0005883a 	mov	r2,zero
  805710:	003fe906 	br	8056b8 <__sflush_r+0x148>
  805714:	80801417 	ldw	r2,80(r16)
  805718:	003fb506 	br	8055f0 <__sflush_r+0x80>
  80571c:	80c0030b 	ldhu	r3,12(r16)
  805720:	81000417 	ldw	r4,16(r16)
  805724:	80000115 	stw	zero,4(r16)
  805728:	197dffcc 	andi	r5,r3,63487
  80572c:	8140030d 	sth	r5,12(r16)
  805730:	81000015 	stw	r4,0(r16)
  805734:	18c4000c 	andi	r3,r3,4096
  805738:	183fc726 	beq	r3,zero,805658 <__sflush_r+0xe8>
  80573c:	80801415 	stw	r2,80(r16)
  805740:	003fc506 	br	805658 <__sflush_r+0xe8>
  805744:	98c00017 	ldw	r3,0(r19)
  805748:	183fa626 	beq	r3,zero,8055e4 <__sflush_r+0x74>
  80574c:	19000760 	cmpeqi	r4,r3,29
  805750:	20000e1e 	bne	r4,zero,80578c <__sflush_r+0x21c>
  805754:	18c00598 	cmpnei	r3,r3,22
  805758:	18000c26 	beq	r3,zero,80578c <__sflush_r+0x21c>
  80575c:	80c0030b 	ldhu	r3,12(r16)
  805760:	18c01014 	ori	r3,r3,64
  805764:	80c0030d 	sth	r3,12(r16)
  805768:	003fc406 	br	80567c <__sflush_r+0x10c>
  80576c:	81000417 	ldw	r4,16(r16)
  805770:	197dffcc 	andi	r5,r3,63487
  805774:	8140030d 	sth	r5,12(r16)
  805778:	80000115 	stw	zero,4(r16)
  80577c:	81000015 	stw	r4,0(r16)
  805780:	18c4000c 	andi	r3,r3,4096
  805784:	183fb426 	beq	r3,zero,805658 <__sflush_r+0xe8>
  805788:	003fec06 	br	80573c <__sflush_r+0x1cc>
  80578c:	9c400015 	stw	r17,0(r19)
  805790:	0005883a 	mov	r2,zero
  805794:	003fb906 	br	80567c <__sflush_r+0x10c>

00805798 <_fflush_r>:
  805798:	defffd04 	addi	sp,sp,-12
  80579c:	dc000115 	stw	r16,4(sp)
  8057a0:	dfc00215 	stw	ra,8(sp)
  8057a4:	2021883a 	mov	r16,r4
  8057a8:	20000226 	beq	r4,zero,8057b4 <_fflush_r+0x1c>
  8057ac:	20800e17 	ldw	r2,56(r4)
  8057b0:	10000726 	beq	r2,zero,8057d0 <_fflush_r+0x38>
  8057b4:	2880030f 	ldh	r2,12(r5)
  8057b8:	10000a1e 	bne	r2,zero,8057e4 <_fflush_r+0x4c>
  8057bc:	0005883a 	mov	r2,zero
  8057c0:	dfc00217 	ldw	ra,8(sp)
  8057c4:	dc000117 	ldw	r16,4(sp)
  8057c8:	dec00304 	addi	sp,sp,12
  8057cc:	f800283a 	ret
  8057d0:	d9400015 	stw	r5,0(sp)
  8057d4:	0805b2c0 	call	805b2c <__sinit>
  8057d8:	d9400017 	ldw	r5,0(sp)
  8057dc:	2880030f 	ldh	r2,12(r5)
  8057e0:	103ff626 	beq	r2,zero,8057bc <_fflush_r+0x24>
  8057e4:	8009883a 	mov	r4,r16
  8057e8:	dfc00217 	ldw	ra,8(sp)
  8057ec:	dc000117 	ldw	r16,4(sp)
  8057f0:	dec00304 	addi	sp,sp,12
  8057f4:	08055701 	jmpi	805570 <__sflush_r>

008057f8 <fflush>:
  8057f8:	200b883a 	mov	r5,r4
  8057fc:	20000326 	beq	r4,zero,80580c <fflush+0x14>
  805800:	00802074 	movhi	r2,129
  805804:	1109e617 	ldw	r4,10136(r2)
  805808:	08057981 	jmpi	805798 <_fflush_r>
  80580c:	00802074 	movhi	r2,129
  805810:	1109e517 	ldw	r4,10132(r2)
  805814:	01402034 	movhi	r5,128
  805818:	2955e604 	addi	r5,r5,22424
  80581c:	08064f01 	jmpi	8064f0 <_fwalk_reent>

00805820 <__fp_lock>:
  805820:	0005883a 	mov	r2,zero
  805824:	f800283a 	ret

00805828 <_cleanup_r>:
  805828:	01402074 	movhi	r5,129
  80582c:	2968a204 	addi	r5,r5,-23928
  805830:	08064f01 	jmpi	8064f0 <_fwalk_reent>

00805834 <__sinit.part.0>:
  805834:	00c02034 	movhi	r3,128
  805838:	20800117 	ldw	r2,4(r4)
  80583c:	18d60a04 	addi	r3,r3,22568
  805840:	20c00f15 	stw	r3,60(r4)
  805844:	2140bb04 	addi	r5,r4,748
  805848:	00c000c4 	movi	r3,3
  80584c:	20c0b915 	stw	r3,740(r4)
  805850:	2140ba15 	stw	r5,744(r4)
  805854:	2000b815 	stw	zero,736(r4)
  805858:	10001705 	stb	zero,92(r2)
  80585c:	10001745 	stb	zero,93(r2)
  805860:	10001785 	stb	zero,94(r2)
  805864:	100017c5 	stb	zero,95(r2)
  805868:	10001805 	stb	zero,96(r2)
  80586c:	10001845 	stb	zero,97(r2)
  805870:	10001885 	stb	zero,98(r2)
  805874:	100018c5 	stb	zero,99(r2)
  805878:	00c00104 	movi	r3,4
  80587c:	10c00315 	stw	r3,12(r2)
  805880:	02002074 	movhi	r8,129
  805884:	20c00217 	ldw	r3,8(r4)
  805888:	01c02074 	movhi	r7,129
  80588c:	01802074 	movhi	r6,129
  805890:	01402074 	movhi	r5,129
  805894:	42229504 	addi	r8,r8,-30124
  805898:	39e2ac04 	addi	r7,r7,-30032
  80589c:	31a2cc04 	addi	r6,r6,-29904
  8058a0:	2962e304 	addi	r5,r5,-29812
  8058a4:	02400074 	movhi	r9,1
  8058a8:	10001915 	stw	zero,100(r2)
  8058ac:	10000015 	stw	zero,0(r2)
  8058b0:	10000115 	stw	zero,4(r2)
  8058b4:	10000215 	stw	zero,8(r2)
  8058b8:	10000415 	stw	zero,16(r2)
  8058bc:	10000515 	stw	zero,20(r2)
  8058c0:	10000615 	stw	zero,24(r2)
  8058c4:	10800715 	stw	r2,28(r2)
  8058c8:	12000815 	stw	r8,32(r2)
  8058cc:	11c00915 	stw	r7,36(r2)
  8058d0:	11800a15 	stw	r6,40(r2)
  8058d4:	11400b15 	stw	r5,44(r2)
  8058d8:	4a400284 	addi	r9,r9,10
  8058dc:	1a400315 	stw	r9,12(r3)
  8058e0:	18001915 	stw	zero,100(r3)
  8058e4:	18000015 	stw	zero,0(r3)
  8058e8:	18000115 	stw	zero,4(r3)
  8058ec:	18000215 	stw	zero,8(r3)
  8058f0:	18000415 	stw	zero,16(r3)
  8058f4:	18001705 	stb	zero,92(r3)
  8058f8:	18001745 	stb	zero,93(r3)
  8058fc:	18001785 	stb	zero,94(r3)
  805900:	180017c5 	stb	zero,95(r3)
  805904:	18001805 	stb	zero,96(r3)
  805908:	18001845 	stb	zero,97(r3)
  80590c:	18001885 	stb	zero,98(r3)
  805910:	180018c5 	stb	zero,99(r3)
  805914:	20800317 	ldw	r2,12(r4)
  805918:	024000b4 	movhi	r9,2
  80591c:	18000515 	stw	zero,20(r3)
  805920:	18000615 	stw	zero,24(r3)
  805924:	18c00715 	stw	r3,28(r3)
  805928:	1a000815 	stw	r8,32(r3)
  80592c:	19c00915 	stw	r7,36(r3)
  805930:	19800a15 	stw	r6,40(r3)
  805934:	19400b15 	stw	r5,44(r3)
  805938:	4a400484 	addi	r9,r9,18
  80593c:	10001915 	stw	zero,100(r2)
  805940:	10000015 	stw	zero,0(r2)
  805944:	10000115 	stw	zero,4(r2)
  805948:	10000215 	stw	zero,8(r2)
  80594c:	12400315 	stw	r9,12(r2)
  805950:	10000415 	stw	zero,16(r2)
  805954:	10000515 	stw	zero,20(r2)
  805958:	10000615 	stw	zero,24(r2)
  80595c:	10001705 	stb	zero,92(r2)
  805960:	10001745 	stb	zero,93(r2)
  805964:	10001785 	stb	zero,94(r2)
  805968:	100017c5 	stb	zero,95(r2)
  80596c:	10001805 	stb	zero,96(r2)
  805970:	10001845 	stb	zero,97(r2)
  805974:	10001885 	stb	zero,98(r2)
  805978:	100018c5 	stb	zero,99(r2)
  80597c:	10800715 	stw	r2,28(r2)
  805980:	12000815 	stw	r8,32(r2)
  805984:	11c00915 	stw	r7,36(r2)
  805988:	11800a15 	stw	r6,40(r2)
  80598c:	11400b15 	stw	r5,44(r2)
  805990:	00800044 	movi	r2,1
  805994:	20800e15 	stw	r2,56(r4)
  805998:	f800283a 	ret

0080599c <__fp_unlock>:
  80599c:	0005883a 	mov	r2,zero
  8059a0:	f800283a 	ret

008059a4 <__sfmoreglue>:
  8059a4:	defffc04 	addi	sp,sp,-16
  8059a8:	dc800215 	stw	r18,8(sp)
  8059ac:	2825883a 	mov	r18,r5
  8059b0:	dc000015 	stw	r16,0(sp)
  8059b4:	01401a04 	movi	r5,104
  8059b8:	2021883a 	mov	r16,r4
  8059bc:	913fffc4 	addi	r4,r18,-1
  8059c0:	dfc00315 	stw	ra,12(sp)
  8059c4:	dc400115 	stw	r17,4(sp)
  8059c8:	08016d80 	call	8016d8 <__mulsi3>
  8059cc:	8009883a 	mov	r4,r16
  8059d0:	11401d04 	addi	r5,r2,116
  8059d4:	1023883a 	mov	r17,r2
  8059d8:	08067900 	call	806790 <_malloc_r>
  8059dc:	1021883a 	mov	r16,r2
  8059e0:	10000726 	beq	r2,zero,805a00 <__sfmoreglue+0x5c>
  8059e4:	11000304 	addi	r4,r2,12
  8059e8:	10000015 	stw	zero,0(r2)
  8059ec:	14800115 	stw	r18,4(r2)
  8059f0:	11000215 	stw	r4,8(r2)
  8059f4:	89801a04 	addi	r6,r17,104
  8059f8:	000b883a 	mov	r5,zero
  8059fc:	08072700 	call	807270 <memset>
  805a00:	8005883a 	mov	r2,r16
  805a04:	dfc00317 	ldw	ra,12(sp)
  805a08:	dc800217 	ldw	r18,8(sp)
  805a0c:	dc400117 	ldw	r17,4(sp)
  805a10:	dc000017 	ldw	r16,0(sp)
  805a14:	dec00404 	addi	sp,sp,16
  805a18:	f800283a 	ret

00805a1c <__sfp>:
  805a1c:	defffd04 	addi	sp,sp,-12
  805a20:	00802074 	movhi	r2,129
  805a24:	dc000015 	stw	r16,0(sp)
  805a28:	1409e517 	ldw	r16,10132(r2)
  805a2c:	dc400115 	stw	r17,4(sp)
  805a30:	dfc00215 	stw	ra,8(sp)
  805a34:	80800e17 	ldw	r2,56(r16)
  805a38:	2023883a 	mov	r17,r4
  805a3c:	10002b26 	beq	r2,zero,805aec <__sfp+0xd0>
  805a40:	8400b804 	addi	r16,r16,736
  805a44:	80c00117 	ldw	r3,4(r16)
  805a48:	80800217 	ldw	r2,8(r16)
  805a4c:	18ffffc4 	addi	r3,r3,-1
  805a50:	1800030e 	bge	r3,zero,805a60 <__sfp+0x44>
  805a54:	00002106 	br	805adc <__sfp+0xc0>
  805a58:	10801a04 	addi	r2,r2,104
  805a5c:	30001f26 	beq	r6,zero,805adc <__sfp+0xc0>
  805a60:	1140030f 	ldh	r5,12(r2)
  805a64:	18ffffc4 	addi	r3,r3,-1
  805a68:	19bfffd8 	cmpnei	r6,r3,-1
  805a6c:	283ffa1e 	bne	r5,zero,805a58 <__sfp+0x3c>
  805a70:	00fffff4 	movhi	r3,65535
  805a74:	18c00044 	addi	r3,r3,1
  805a78:	10001915 	stw	zero,100(r2)
  805a7c:	10000015 	stw	zero,0(r2)
  805a80:	10000115 	stw	zero,4(r2)
  805a84:	10000215 	stw	zero,8(r2)
  805a88:	10c00315 	stw	r3,12(r2)
  805a8c:	10000415 	stw	zero,16(r2)
  805a90:	10000515 	stw	zero,20(r2)
  805a94:	10000615 	stw	zero,24(r2)
  805a98:	10001705 	stb	zero,92(r2)
  805a9c:	10001745 	stb	zero,93(r2)
  805aa0:	10001785 	stb	zero,94(r2)
  805aa4:	100017c5 	stb	zero,95(r2)
  805aa8:	10001805 	stb	zero,96(r2)
  805aac:	10001845 	stb	zero,97(r2)
  805ab0:	10001885 	stb	zero,98(r2)
  805ab4:	100018c5 	stb	zero,99(r2)
  805ab8:	10000c15 	stw	zero,48(r2)
  805abc:	10000d15 	stw	zero,52(r2)
  805ac0:	10001115 	stw	zero,68(r2)
  805ac4:	10001215 	stw	zero,72(r2)
  805ac8:	dfc00217 	ldw	ra,8(sp)
  805acc:	dc400117 	ldw	r17,4(sp)
  805ad0:	dc000017 	ldw	r16,0(sp)
  805ad4:	dec00304 	addi	sp,sp,12
  805ad8:	f800283a 	ret
  805adc:	80800017 	ldw	r2,0(r16)
  805ae0:	10000526 	beq	r2,zero,805af8 <__sfp+0xdc>
  805ae4:	1021883a 	mov	r16,r2
  805ae8:	003fd606 	br	805a44 <__sfp+0x28>
  805aec:	8009883a 	mov	r4,r16
  805af0:	08058340 	call	805834 <__sinit.part.0>
  805af4:	003fd206 	br	805a40 <__sfp+0x24>
  805af8:	01400104 	movi	r5,4
  805afc:	8809883a 	mov	r4,r17
  805b00:	08059a40 	call	8059a4 <__sfmoreglue>
  805b04:	80800015 	stw	r2,0(r16)
  805b08:	103ff61e 	bne	r2,zero,805ae4 <__sfp+0xc8>
  805b0c:	00c00304 	movi	r3,12
  805b10:	88c00015 	stw	r3,0(r17)
  805b14:	003fec06 	br	805ac8 <__sfp+0xac>

00805b18 <_cleanup>:
  805b18:	00802074 	movhi	r2,129
  805b1c:	1109e517 	ldw	r4,10132(r2)
  805b20:	01402074 	movhi	r5,129
  805b24:	2968a204 	addi	r5,r5,-23928
  805b28:	08064f01 	jmpi	8064f0 <_fwalk_reent>

00805b2c <__sinit>:
  805b2c:	20800e17 	ldw	r2,56(r4)
  805b30:	10000126 	beq	r2,zero,805b38 <__sinit+0xc>
  805b34:	f800283a 	ret
  805b38:	08058341 	jmpi	805834 <__sinit.part.0>

00805b3c <__sfp_lock_acquire>:
  805b3c:	f800283a 	ret

00805b40 <__sfp_lock_release>:
  805b40:	f800283a 	ret

00805b44 <__sinit_lock_acquire>:
  805b44:	f800283a 	ret

00805b48 <__sinit_lock_release>:
  805b48:	f800283a 	ret

00805b4c <__fp_lock_all>:
  805b4c:	00802074 	movhi	r2,129
  805b50:	1109e617 	ldw	r4,10136(r2)
  805b54:	01402034 	movhi	r5,128
  805b58:	29560804 	addi	r5,r5,22560
  805b5c:	08064581 	jmpi	806458 <_fwalk>

00805b60 <__fp_unlock_all>:
  805b60:	00802074 	movhi	r2,129
  805b64:	1109e617 	ldw	r4,10136(r2)
  805b68:	01402034 	movhi	r5,128
  805b6c:	29566704 	addi	r5,r5,22940
  805b70:	08064581 	jmpi	806458 <_fwalk>

00805b74 <_malloc_trim_r>:
  805b74:	defffb04 	addi	sp,sp,-20
  805b78:	dcc00315 	stw	r19,12(sp)
  805b7c:	04c02074 	movhi	r19,129
  805b80:	dc800215 	stw	r18,8(sp)
  805b84:	dc400115 	stw	r17,4(sp)
  805b88:	dc000015 	stw	r16,0(sp)
  805b8c:	dfc00415 	stw	ra,16(sp)
  805b90:	2821883a 	mov	r16,r5
  805b94:	9cc40604 	addi	r19,r19,4120
  805b98:	2025883a 	mov	r18,r4
  805b9c:	080e39c0 	call	80e39c <__malloc_lock>
  805ba0:	98800217 	ldw	r2,8(r19)
  805ba4:	14400117 	ldw	r17,4(r2)
  805ba8:	00bfff04 	movi	r2,-4
  805bac:	88a2703a 	and	r17,r17,r2
  805bb0:	8c21c83a 	sub	r16,r17,r16
  805bb4:	8403fbc4 	addi	r16,r16,4079
  805bb8:	8020d33a 	srli	r16,r16,12
  805bbc:	843fffc4 	addi	r16,r16,-1
  805bc0:	8020933a 	slli	r16,r16,12
  805bc4:	80840008 	cmpgei	r2,r16,4096
  805bc8:	10000626 	beq	r2,zero,805be4 <_malloc_trim_r+0x70>
  805bcc:	000b883a 	mov	r5,zero
  805bd0:	9009883a 	mov	r4,r18
  805bd4:	08089fc0 	call	8089fc <_sbrk_r>
  805bd8:	98c00217 	ldw	r3,8(r19)
  805bdc:	1c47883a 	add	r3,r3,r17
  805be0:	10c00a26 	beq	r2,r3,805c0c <_malloc_trim_r+0x98>
  805be4:	9009883a 	mov	r4,r18
  805be8:	080e3c00 	call	80e3c0 <__malloc_unlock>
  805bec:	0005883a 	mov	r2,zero
  805bf0:	dfc00417 	ldw	ra,16(sp)
  805bf4:	dcc00317 	ldw	r19,12(sp)
  805bf8:	dc800217 	ldw	r18,8(sp)
  805bfc:	dc400117 	ldw	r17,4(sp)
  805c00:	dc000017 	ldw	r16,0(sp)
  805c04:	dec00504 	addi	sp,sp,20
  805c08:	f800283a 	ret
  805c0c:	040bc83a 	sub	r5,zero,r16
  805c10:	9009883a 	mov	r4,r18
  805c14:	08089fc0 	call	8089fc <_sbrk_r>
  805c18:	10bfffd8 	cmpnei	r2,r2,-1
  805c1c:	10000d26 	beq	r2,zero,805c54 <_malloc_trim_r+0xe0>
  805c20:	00802074 	movhi	r2,129
  805c24:	1090f517 	ldw	r2,17364(r2)
  805c28:	98c00217 	ldw	r3,8(r19)
  805c2c:	8c23c83a 	sub	r17,r17,r16
  805c30:	8c400054 	ori	r17,r17,1
  805c34:	1421c83a 	sub	r16,r2,r16
  805c38:	1c400115 	stw	r17,4(r3)
  805c3c:	00802074 	movhi	r2,129
  805c40:	9009883a 	mov	r4,r18
  805c44:	1410f515 	stw	r16,17364(r2)
  805c48:	080e3c00 	call	80e3c0 <__malloc_unlock>
  805c4c:	00800044 	movi	r2,1
  805c50:	003fe706 	br	805bf0 <_malloc_trim_r+0x7c>
  805c54:	000b883a 	mov	r5,zero
  805c58:	9009883a 	mov	r4,r18
  805c5c:	08089fc0 	call	8089fc <_sbrk_r>
  805c60:	99000217 	ldw	r4,8(r19)
  805c64:	1107c83a 	sub	r3,r2,r4
  805c68:	19400410 	cmplti	r5,r3,16
  805c6c:	283fdd1e 	bne	r5,zero,805be4 <_malloc_trim_r+0x70>
  805c70:	01402074 	movhi	r5,129
  805c74:	2949e717 	ldw	r5,10140(r5)
  805c78:	18c00054 	ori	r3,r3,1
  805c7c:	20c00115 	stw	r3,4(r4)
  805c80:	1145c83a 	sub	r2,r2,r5
  805c84:	01402074 	movhi	r5,129
  805c88:	2890f515 	stw	r2,17364(r5)
  805c8c:	003fd506 	br	805be4 <_malloc_trim_r+0x70>

00805c90 <_free_r>:
  805c90:	28004f26 	beq	r5,zero,805dd0 <_free_r+0x140>
  805c94:	defffd04 	addi	sp,sp,-12
  805c98:	dc400115 	stw	r17,4(sp)
  805c9c:	dc000015 	stw	r16,0(sp)
  805ca0:	2023883a 	mov	r17,r4
  805ca4:	2821883a 	mov	r16,r5
  805ca8:	dfc00215 	stw	ra,8(sp)
  805cac:	080e39c0 	call	80e39c <__malloc_lock>
  805cb0:	81ffff17 	ldw	r7,-4(r16)
  805cb4:	00bfff84 	movi	r2,-2
  805cb8:	80fffe04 	addi	r3,r16,-8
  805cbc:	3884703a 	and	r2,r7,r2
  805cc0:	01002074 	movhi	r4,129
  805cc4:	188d883a 	add	r6,r3,r2
  805cc8:	21040604 	addi	r4,r4,4120
  805ccc:	31400117 	ldw	r5,4(r6)
  805cd0:	22000217 	ldw	r8,8(r4)
  805cd4:	027fff04 	movi	r9,-4
  805cd8:	2a4a703a 	and	r5,r5,r9
  805cdc:	41806426 	beq	r8,r6,805e70 <_free_r+0x1e0>
  805ce0:	31400115 	stw	r5,4(r6)
  805ce4:	39c0004c 	andi	r7,r7,1
  805ce8:	3151883a 	add	r8,r6,r5
  805cec:	3800281e 	bne	r7,zero,805d90 <_free_r+0x100>
  805cf0:	82bffe17 	ldw	r10,-8(r16)
  805cf4:	42000117 	ldw	r8,4(r8)
  805cf8:	01c02074 	movhi	r7,129
  805cfc:	1a87c83a 	sub	r3,r3,r10
  805d00:	1a400217 	ldw	r9,8(r3)
  805d04:	39c40804 	addi	r7,r7,4128
  805d08:	1285883a 	add	r2,r2,r10
  805d0c:	4200004c 	andi	r8,r8,1
  805d10:	49c04c26 	beq	r9,r7,805e44 <_free_r+0x1b4>
  805d14:	1a800317 	ldw	r10,12(r3)
  805d18:	4a800315 	stw	r10,12(r9)
  805d1c:	52400215 	stw	r9,8(r10)
  805d20:	40007126 	beq	r8,zero,805ee8 <_free_r+0x258>
  805d24:	11400054 	ori	r5,r2,1
  805d28:	19400115 	stw	r5,4(r3)
  805d2c:	30800015 	stw	r2,0(r6)
  805d30:	11408028 	cmpgeui	r5,r2,512
  805d34:	28002c1e 	bne	r5,zero,805de8 <_free_r+0x158>
  805d38:	100ad0fa 	srli	r5,r2,3
  805d3c:	100cd17a 	srli	r6,r2,5
  805d40:	00800044 	movi	r2,1
  805d44:	29400044 	addi	r5,r5,1
  805d48:	280a90fa 	slli	r5,r5,3
  805d4c:	21c00117 	ldw	r7,4(r4)
  805d50:	1184983a 	sll	r2,r2,r6
  805d54:	214b883a 	add	r5,r4,r5
  805d58:	29800017 	ldw	r6,0(r5)
  805d5c:	11c4b03a 	or	r2,r2,r7
  805d60:	29fffe04 	addi	r7,r5,-8
  805d64:	19c00315 	stw	r7,12(r3)
  805d68:	19800215 	stw	r6,8(r3)
  805d6c:	20800115 	stw	r2,4(r4)
  805d70:	28c00015 	stw	r3,0(r5)
  805d74:	30c00315 	stw	r3,12(r6)
  805d78:	8809883a 	mov	r4,r17
  805d7c:	dfc00217 	ldw	ra,8(sp)
  805d80:	dc400117 	ldw	r17,4(sp)
  805d84:	dc000017 	ldw	r16,0(sp)
  805d88:	dec00304 	addi	sp,sp,12
  805d8c:	080e3c01 	jmpi	80e3c0 <__malloc_unlock>
  805d90:	41c00117 	ldw	r7,4(r8)
  805d94:	39c0004c 	andi	r7,r7,1
  805d98:	38000e1e 	bne	r7,zero,805dd4 <_free_r+0x144>
  805d9c:	01c02074 	movhi	r7,129
  805da0:	1145883a 	add	r2,r2,r5
  805da4:	39c40804 	addi	r7,r7,4128
  805da8:	31400217 	ldw	r5,8(r6)
  805dac:	12400054 	ori	r9,r2,1
  805db0:	1891883a 	add	r8,r3,r2
  805db4:	29c05226 	beq	r5,r7,805f00 <_free_r+0x270>
  805db8:	31800317 	ldw	r6,12(r6)
  805dbc:	29800315 	stw	r6,12(r5)
  805dc0:	31400215 	stw	r5,8(r6)
  805dc4:	1a400115 	stw	r9,4(r3)
  805dc8:	40800015 	stw	r2,0(r8)
  805dcc:	003fd806 	br	805d30 <_free_r+0xa0>
  805dd0:	f800283a 	ret
  805dd4:	11400054 	ori	r5,r2,1
  805dd8:	817fff15 	stw	r5,-4(r16)
  805ddc:	30800015 	stw	r2,0(r6)
  805de0:	11408028 	cmpgeui	r5,r2,512
  805de4:	283fd426 	beq	r5,zero,805d38 <_free_r+0xa8>
  805de8:	100ad27a 	srli	r5,r2,9
  805dec:	29800168 	cmpgeui	r6,r5,5
  805df0:	3000341e 	bne	r6,zero,805ec4 <_free_r+0x234>
  805df4:	100ad1ba 	srli	r5,r2,6
  805df8:	29800e44 	addi	r6,r5,57
  805dfc:	300c90fa 	slli	r6,r6,3
  805e00:	29c00e04 	addi	r7,r5,56
  805e04:	218d883a 	add	r6,r4,r6
  805e08:	31400017 	ldw	r5,0(r6)
  805e0c:	31bffe04 	addi	r6,r6,-8
  805e10:	31404226 	beq	r6,r5,805f1c <_free_r+0x28c>
  805e14:	01ffff04 	movi	r7,-4
  805e18:	29000117 	ldw	r4,4(r5)
  805e1c:	21c8703a 	and	r4,r4,r7
  805e20:	1100022e 	bgeu	r2,r4,805e2c <_free_r+0x19c>
  805e24:	29400217 	ldw	r5,8(r5)
  805e28:	317ffb1e 	bne	r6,r5,805e18 <_free_r+0x188>
  805e2c:	29800317 	ldw	r6,12(r5)
  805e30:	19800315 	stw	r6,12(r3)
  805e34:	19400215 	stw	r5,8(r3)
  805e38:	30c00215 	stw	r3,8(r6)
  805e3c:	28c00315 	stw	r3,12(r5)
  805e40:	003fcd06 	br	805d78 <_free_r+0xe8>
  805e44:	40004d1e 	bne	r8,zero,805f7c <_free_r+0x2ec>
  805e48:	31000317 	ldw	r4,12(r6)
  805e4c:	31800217 	ldw	r6,8(r6)
  805e50:	2885883a 	add	r2,r5,r2
  805e54:	11400054 	ori	r5,r2,1
  805e58:	31000315 	stw	r4,12(r6)
  805e5c:	21800215 	stw	r6,8(r4)
  805e60:	19400115 	stw	r5,4(r3)
  805e64:	1887883a 	add	r3,r3,r2
  805e68:	18800015 	stw	r2,0(r3)
  805e6c:	003fc206 	br	805d78 <_free_r+0xe8>
  805e70:	39c0004c 	andi	r7,r7,1
  805e74:	1145883a 	add	r2,r2,r5
  805e78:	3800071e 	bne	r7,zero,805e98 <_free_r+0x208>
  805e7c:	81fffe17 	ldw	r7,-8(r16)
  805e80:	19c7c83a 	sub	r3,r3,r7
  805e84:	19400317 	ldw	r5,12(r3)
  805e88:	19800217 	ldw	r6,8(r3)
  805e8c:	11c5883a 	add	r2,r2,r7
  805e90:	31400315 	stw	r5,12(r6)
  805e94:	29800215 	stw	r6,8(r5)
  805e98:	01402074 	movhi	r5,129
  805e9c:	11800054 	ori	r6,r2,1
  805ea0:	2949e817 	ldw	r5,10144(r5)
  805ea4:	19800115 	stw	r6,4(r3)
  805ea8:	20c00215 	stw	r3,8(r4)
  805eac:	117fb236 	bltu	r2,r5,805d78 <_free_r+0xe8>
  805eb0:	00802074 	movhi	r2,129
  805eb4:	1150eb17 	ldw	r5,17324(r2)
  805eb8:	8809883a 	mov	r4,r17
  805ebc:	0805b740 	call	805b74 <_malloc_trim_r>
  805ec0:	003fad06 	br	805d78 <_free_r+0xe8>
  805ec4:	29800568 	cmpgeui	r6,r5,21
  805ec8:	30000926 	beq	r6,zero,805ef0 <_free_r+0x260>
  805ecc:	29801568 	cmpgeui	r6,r5,85
  805ed0:	3000191e 	bne	r6,zero,805f38 <_free_r+0x2a8>
  805ed4:	100ad33a 	srli	r5,r2,12
  805ed8:	29801bc4 	addi	r6,r5,111
  805edc:	300c90fa 	slli	r6,r6,3
  805ee0:	29c01b84 	addi	r7,r5,110
  805ee4:	003fc706 	br	805e04 <_free_r+0x174>
  805ee8:	1145883a 	add	r2,r2,r5
  805eec:	003fae06 	br	805da8 <_free_r+0x118>
  805ef0:	29801704 	addi	r6,r5,92
  805ef4:	300c90fa 	slli	r6,r6,3
  805ef8:	29c016c4 	addi	r7,r5,91
  805efc:	003fc106 	br	805e04 <_free_r+0x174>
  805f00:	20c00515 	stw	r3,20(r4)
  805f04:	20c00415 	stw	r3,16(r4)
  805f08:	19c00315 	stw	r7,12(r3)
  805f0c:	19c00215 	stw	r7,8(r3)
  805f10:	1a400115 	stw	r9,4(r3)
  805f14:	40800015 	stw	r2,0(r8)
  805f18:	003f9706 	br	805d78 <_free_r+0xe8>
  805f1c:	380fd0ba 	srai	r7,r7,2
  805f20:	00800044 	movi	r2,1
  805f24:	22000117 	ldw	r8,4(r4)
  805f28:	11ce983a 	sll	r7,r2,r7
  805f2c:	3a0eb03a 	or	r7,r7,r8
  805f30:	21c00115 	stw	r7,4(r4)
  805f34:	003fbe06 	br	805e30 <_free_r+0x1a0>
  805f38:	29805568 	cmpgeui	r6,r5,341
  805f3c:	3000051e 	bne	r6,zero,805f54 <_free_r+0x2c4>
  805f40:	100ad3fa 	srli	r5,r2,15
  805f44:	29801e04 	addi	r6,r5,120
  805f48:	300c90fa 	slli	r6,r6,3
  805f4c:	29c01dc4 	addi	r7,r5,119
  805f50:	003fac06 	br	805e04 <_free_r+0x174>
  805f54:	29415568 	cmpgeui	r5,r5,1365
  805f58:	2800051e 	bne	r5,zero,805f70 <_free_r+0x2e0>
  805f5c:	100ad4ba 	srli	r5,r2,18
  805f60:	29801f44 	addi	r6,r5,125
  805f64:	300c90fa 	slli	r6,r6,3
  805f68:	29c01f04 	addi	r7,r5,124
  805f6c:	003fa506 	br	805e04 <_free_r+0x174>
  805f70:	0180fe04 	movi	r6,1016
  805f74:	01c01f84 	movi	r7,126
  805f78:	003fa206 	br	805e04 <_free_r+0x174>
  805f7c:	11000054 	ori	r4,r2,1
  805f80:	19000115 	stw	r4,4(r3)
  805f84:	30800015 	stw	r2,0(r6)
  805f88:	003f7b06 	br	805d78 <_free_r+0xe8>

00805f8c <__sfvwrite_r>:
  805f8c:	30800217 	ldw	r2,8(r6)
  805f90:	1000c826 	beq	r2,zero,8062b4 <__sfvwrite_r+0x328>
  805f94:	29c0030b 	ldhu	r7,12(r5)
  805f98:	defff404 	addi	sp,sp,-48
  805f9c:	dd800815 	stw	r22,32(sp)
  805fa0:	dd400715 	stw	r21,28(sp)
  805fa4:	dc000215 	stw	r16,8(sp)
  805fa8:	dfc00b15 	stw	ra,44(sp)
  805fac:	df000a15 	stw	fp,40(sp)
  805fb0:	ddc00915 	stw	r23,36(sp)
  805fb4:	dd000615 	stw	r20,24(sp)
  805fb8:	dcc00515 	stw	r19,20(sp)
  805fbc:	dc800415 	stw	r18,16(sp)
  805fc0:	dc400315 	stw	r17,12(sp)
  805fc4:	3880020c 	andi	r2,r7,8
  805fc8:	302d883a 	mov	r22,r6
  805fcc:	202b883a 	mov	r21,r4
  805fd0:	2821883a 	mov	r16,r5
  805fd4:	10002226 	beq	r2,zero,806060 <__sfvwrite_r+0xd4>
  805fd8:	28800417 	ldw	r2,16(r5)
  805fdc:	10002026 	beq	r2,zero,806060 <__sfvwrite_r+0xd4>
  805fe0:	3880008c 	andi	r2,r7,2
  805fe4:	b4400017 	ldw	r17,0(r22)
  805fe8:	10002526 	beq	r2,zero,806080 <__sfvwrite_r+0xf4>
  805fec:	80800917 	ldw	r2,36(r16)
  805ff0:	81400717 	ldw	r5,28(r16)
  805ff4:	05200034 	movhi	r20,32768
  805ff8:	0027883a 	mov	r19,zero
  805ffc:	0025883a 	mov	r18,zero
  806000:	a53f0004 	addi	r20,r20,-1024
  806004:	980d883a 	mov	r6,r19
  806008:	a809883a 	mov	r4,r21
  80600c:	90001026 	beq	r18,zero,806050 <__sfvwrite_r+0xc4>
  806010:	900f883a 	mov	r7,r18
  806014:	a480012e 	bgeu	r20,r18,80601c <__sfvwrite_r+0x90>
  806018:	a00f883a 	mov	r7,r20
  80601c:	103ee83a 	callr	r2
  806020:	00809f0e 	bge	zero,r2,8062a0 <__sfvwrite_r+0x314>
  806024:	b1000217 	ldw	r4,8(r22)
  806028:	98a7883a 	add	r19,r19,r2
  80602c:	90a5c83a 	sub	r18,r18,r2
  806030:	2085c83a 	sub	r2,r4,r2
  806034:	b0800215 	stw	r2,8(r22)
  806038:	10006326 	beq	r2,zero,8061c8 <__sfvwrite_r+0x23c>
  80603c:	80800917 	ldw	r2,36(r16)
  806040:	81400717 	ldw	r5,28(r16)
  806044:	980d883a 	mov	r6,r19
  806048:	a809883a 	mov	r4,r21
  80604c:	903ff01e 	bne	r18,zero,806010 <__sfvwrite_r+0x84>
  806050:	8cc00017 	ldw	r19,0(r17)
  806054:	8c800117 	ldw	r18,4(r17)
  806058:	8c400204 	addi	r17,r17,8
  80605c:	003fe906 	br	806004 <__sfvwrite_r+0x78>
  806060:	800b883a 	mov	r5,r16
  806064:	a809883a 	mov	r4,r21
  806068:	0803aa40 	call	803aa4 <__swsetup_r>
  80606c:	1000f81e 	bne	r2,zero,806450 <__sfvwrite_r+0x4c4>
  806070:	81c0030b 	ldhu	r7,12(r16)
  806074:	b4400017 	ldw	r17,0(r22)
  806078:	3880008c 	andi	r2,r7,2
  80607c:	103fdb1e 	bne	r2,zero,805fec <__sfvwrite_r+0x60>
  806080:	3880004c 	andi	r2,r7,1
  806084:	84800217 	ldw	r18,8(r16)
  806088:	82000017 	ldw	r8,0(r16)
  80608c:	10008b1e 	bne	r2,zero,8062bc <__sfvwrite_r+0x330>
  806090:	00a00034 	movhi	r2,32768
  806094:	10bfff84 	addi	r2,r2,-2
  806098:	00e00034 	movhi	r3,32768
  80609c:	d8800015 	stw	r2,0(sp)
  8060a0:	18bfffc4 	addi	r2,r3,-1
  8060a4:	0039883a 	mov	fp,zero
  8060a8:	0027883a 	mov	r19,zero
  8060ac:	d8800115 	stw	r2,4(sp)
  8060b0:	98004126 	beq	r19,zero,8061b8 <__sfvwrite_r+0x22c>
  8060b4:	3880800c 	andi	r2,r7,512
  8060b8:	10009326 	beq	r2,zero,806308 <__sfvwrite_r+0x37c>
  8060bc:	902f883a 	mov	r23,r18
  8060c0:	9c80ba36 	bltu	r19,r18,8063ac <__sfvwrite_r+0x420>
  8060c4:	3881200c 	andi	r2,r7,1152
  8060c8:	10002626 	beq	r2,zero,806164 <__sfvwrite_r+0x1d8>
  8060cc:	81800517 	ldw	r6,20(r16)
  8060d0:	81400417 	ldw	r5,16(r16)
  8060d4:	98800044 	addi	r2,r19,1
  8060d8:	3189883a 	add	r4,r6,r6
  8060dc:	2189883a 	add	r4,r4,r6
  8060e0:	2028d7fa 	srli	r20,r4,31
  8060e4:	4165c83a 	sub	r18,r8,r5
  8060e8:	1485883a 	add	r2,r2,r18
  8060ec:	a109883a 	add	r4,r20,r4
  8060f0:	2029d07a 	srai	r20,r4,1
  8060f4:	a00d883a 	mov	r6,r20
  8060f8:	a080022e 	bgeu	r20,r2,806104 <__sfvwrite_r+0x178>
  8060fc:	1029883a 	mov	r20,r2
  806100:	100d883a 	mov	r6,r2
  806104:	39c1000c 	andi	r7,r7,1024
  806108:	3800c126 	beq	r7,zero,806410 <__sfvwrite_r+0x484>
  80610c:	a809883a 	mov	r4,r21
  806110:	300b883a 	mov	r5,r6
  806114:	08067900 	call	806790 <_malloc_r>
  806118:	1009883a 	mov	r4,r2
  80611c:	1000c826 	beq	r2,zero,806440 <__sfvwrite_r+0x4b4>
  806120:	81400417 	ldw	r5,16(r16)
  806124:	900d883a 	mov	r6,r18
  806128:	08070440 	call	807044 <memcpy>
  80612c:	1009883a 	mov	r4,r2
  806130:	8080030b 	ldhu	r2,12(r16)
  806134:	00fedfc4 	movi	r3,-1153
  806138:	10c4703a 	and	r2,r2,r3
  80613c:	10802014 	ori	r2,r2,128
  806140:	8080030d 	sth	r2,12(r16)
  806144:	2491883a 	add	r8,r4,r18
  806148:	a485c83a 	sub	r2,r20,r18
  80614c:	81000415 	stw	r4,16(r16)
  806150:	82000015 	stw	r8,0(r16)
  806154:	85000515 	stw	r20,20(r16)
  806158:	9825883a 	mov	r18,r19
  80615c:	80800215 	stw	r2,8(r16)
  806160:	982f883a 	mov	r23,r19
  806164:	4009883a 	mov	r4,r8
  806168:	b80d883a 	mov	r6,r23
  80616c:	e00b883a 	mov	r5,fp
  806170:	08071440 	call	807144 <memmove>
  806174:	81000217 	ldw	r4,8(r16)
  806178:	80800017 	ldw	r2,0(r16)
  80617c:	9829883a 	mov	r20,r19
  806180:	24a5c83a 	sub	r18,r4,r18
  806184:	15c5883a 	add	r2,r2,r23
  806188:	84800215 	stw	r18,8(r16)
  80618c:	80800015 	stw	r2,0(r16)
  806190:	0027883a 	mov	r19,zero
  806194:	b0800217 	ldw	r2,8(r22)
  806198:	e539883a 	add	fp,fp,r20
  80619c:	1529c83a 	sub	r20,r2,r20
  8061a0:	b5000215 	stw	r20,8(r22)
  8061a4:	a0000826 	beq	r20,zero,8061c8 <__sfvwrite_r+0x23c>
  8061a8:	81c0030b 	ldhu	r7,12(r16)
  8061ac:	84800217 	ldw	r18,8(r16)
  8061b0:	82000017 	ldw	r8,0(r16)
  8061b4:	983fbf1e 	bne	r19,zero,8060b4 <__sfvwrite_r+0x128>
  8061b8:	8f000017 	ldw	fp,0(r17)
  8061bc:	8cc00117 	ldw	r19,4(r17)
  8061c0:	8c400204 	addi	r17,r17,8
  8061c4:	003fba06 	br	8060b0 <__sfvwrite_r+0x124>
  8061c8:	0005883a 	mov	r2,zero
  8061cc:	dfc00b17 	ldw	ra,44(sp)
  8061d0:	df000a17 	ldw	fp,40(sp)
  8061d4:	ddc00917 	ldw	r23,36(sp)
  8061d8:	dd800817 	ldw	r22,32(sp)
  8061dc:	dd400717 	ldw	r21,28(sp)
  8061e0:	dd000617 	ldw	r20,24(sp)
  8061e4:	dcc00517 	ldw	r19,20(sp)
  8061e8:	dc800417 	ldw	r18,16(sp)
  8061ec:	dc400317 	ldw	r17,12(sp)
  8061f0:	dc000217 	ldw	r16,8(sp)
  8061f4:	dec00c04 	addi	sp,sp,48
  8061f8:	f800283a 	ret
  8061fc:	e1c07316 	blt	fp,r7,8063cc <__sfvwrite_r+0x440>
  806200:	80800917 	ldw	r2,36(r16)
  806204:	81400717 	ldw	r5,28(r16)
  806208:	b80d883a 	mov	r6,r23
  80620c:	a809883a 	mov	r4,r21
  806210:	103ee83a 	callr	r2
  806214:	1025883a 	mov	r18,r2
  806218:	0080210e 	bge	zero,r2,8062a0 <__sfvwrite_r+0x314>
  80621c:	a4a9c83a 	sub	r20,r20,r18
  806220:	a0006526 	beq	r20,zero,8063b8 <__sfvwrite_r+0x42c>
  806224:	00800044 	movi	r2,1
  806228:	b1800217 	ldw	r6,8(r22)
  80622c:	bcaf883a 	add	r23,r23,r18
  806230:	9ca7c83a 	sub	r19,r19,r18
  806234:	34a5c83a 	sub	r18,r6,r18
  806238:	b4800215 	stw	r18,8(r22)
  80623c:	903fe226 	beq	r18,zero,8061c8 <__sfvwrite_r+0x23c>
  806240:	84800217 	ldw	r18,8(r16)
  806244:	82000017 	ldw	r8,0(r16)
  806248:	98002126 	beq	r19,zero,8062d0 <__sfvwrite_r+0x344>
  80624c:	10002426 	beq	r2,zero,8062e0 <__sfvwrite_r+0x354>
  806250:	a005883a 	mov	r2,r20
  806254:	9839883a 	mov	fp,r19
  806258:	14c0012e 	bgeu	r2,r19,806260 <__sfvwrite_r+0x2d4>
  80625c:	1039883a 	mov	fp,r2
  806260:	80800417 	ldw	r2,16(r16)
  806264:	81c00517 	ldw	r7,20(r16)
  806268:	123fe42e 	bgeu	r2,r8,8061fc <__sfvwrite_r+0x270>
  80626c:	3ca5883a 	add	r18,r7,r18
  806270:	973fe20e 	bge	r18,fp,8061fc <__sfvwrite_r+0x270>
  806274:	b80b883a 	mov	r5,r23
  806278:	4009883a 	mov	r4,r8
  80627c:	900d883a 	mov	r6,r18
  806280:	08071440 	call	807144 <memmove>
  806284:	80800017 	ldw	r2,0(r16)
  806288:	800b883a 	mov	r5,r16
  80628c:	a809883a 	mov	r4,r21
  806290:	1485883a 	add	r2,r2,r18
  806294:	80800015 	stw	r2,0(r16)
  806298:	08057980 	call	805798 <_fflush_r>
  80629c:	103fdf26 	beq	r2,zero,80621c <__sfvwrite_r+0x290>
  8062a0:	8080030b 	ldhu	r2,12(r16)
  8062a4:	10801014 	ori	r2,r2,64
  8062a8:	8080030d 	sth	r2,12(r16)
  8062ac:	00bfffc4 	movi	r2,-1
  8062b0:	003fc606 	br	8061cc <__sfvwrite_r+0x240>
  8062b4:	0005883a 	mov	r2,zero
  8062b8:	f800283a 	ret
  8062bc:	0027883a 	mov	r19,zero
  8062c0:	0029883a 	mov	r20,zero
  8062c4:	0005883a 	mov	r2,zero
  8062c8:	002f883a 	mov	r23,zero
  8062cc:	983fdf1e 	bne	r19,zero,80624c <__sfvwrite_r+0x2c0>
  8062d0:	8cc00117 	ldw	r19,4(r17)
  8062d4:	8dc00017 	ldw	r23,0(r17)
  8062d8:	8c400204 	addi	r17,r17,8
  8062dc:	983ffc26 	beq	r19,zero,8062d0 <__sfvwrite_r+0x344>
  8062e0:	980d883a 	mov	r6,r19
  8062e4:	01400284 	movi	r5,10
  8062e8:	b809883a 	mov	r4,r23
  8062ec:	da000015 	stw	r8,0(sp)
  8062f0:	0806f700 	call	806f70 <memchr>
  8062f4:	da000017 	ldw	r8,0(sp)
  8062f8:	10004226 	beq	r2,zero,806404 <__sfvwrite_r+0x478>
  8062fc:	10800044 	addi	r2,r2,1
  806300:	15e9c83a 	sub	r20,r2,r23
  806304:	003fd206 	br	806250 <__sfvwrite_r+0x2c4>
  806308:	80800417 	ldw	r2,16(r16)
  80630c:	12001436 	bltu	r2,r8,806360 <__sfvwrite_r+0x3d4>
  806310:	85000517 	ldw	r20,20(r16)
  806314:	9d001236 	bltu	r19,r20,806360 <__sfvwrite_r+0x3d4>
  806318:	d8800017 	ldw	r2,0(sp)
  80631c:	14c0372e 	bgeu	r2,r19,8063fc <__sfvwrite_r+0x470>
  806320:	d9000117 	ldw	r4,4(sp)
  806324:	a00b883a 	mov	r5,r20
  806328:	080baac0 	call	80baac <__divsi3>
  80632c:	a00b883a 	mov	r5,r20
  806330:	1009883a 	mov	r4,r2
  806334:	08016d80 	call	8016d8 <__mulsi3>
  806338:	82000917 	ldw	r8,36(r16)
  80633c:	81400717 	ldw	r5,28(r16)
  806340:	100f883a 	mov	r7,r2
  806344:	e00d883a 	mov	r6,fp
  806348:	a809883a 	mov	r4,r21
  80634c:	403ee83a 	callr	r8
  806350:	1029883a 	mov	r20,r2
  806354:	00bfd20e 	bge	zero,r2,8062a0 <__sfvwrite_r+0x314>
  806358:	9d27c83a 	sub	r19,r19,r20
  80635c:	003f8d06 	br	806194 <__sfvwrite_r+0x208>
  806360:	9029883a 	mov	r20,r18
  806364:	9c80012e 	bgeu	r19,r18,80636c <__sfvwrite_r+0x3e0>
  806368:	9829883a 	mov	r20,r19
  80636c:	4009883a 	mov	r4,r8
  806370:	a00d883a 	mov	r6,r20
  806374:	e00b883a 	mov	r5,fp
  806378:	08071440 	call	807144 <memmove>
  80637c:	80800217 	ldw	r2,8(r16)
  806380:	81000017 	ldw	r4,0(r16)
  806384:	1505c83a 	sub	r2,r2,r20
  806388:	2509883a 	add	r4,r4,r20
  80638c:	80800215 	stw	r2,8(r16)
  806390:	81000015 	stw	r4,0(r16)
  806394:	103ff01e 	bne	r2,zero,806358 <__sfvwrite_r+0x3cc>
  806398:	800b883a 	mov	r5,r16
  80639c:	a809883a 	mov	r4,r21
  8063a0:	08057980 	call	805798 <_fflush_r>
  8063a4:	103fec26 	beq	r2,zero,806358 <__sfvwrite_r+0x3cc>
  8063a8:	003fbd06 	br	8062a0 <__sfvwrite_r+0x314>
  8063ac:	9825883a 	mov	r18,r19
  8063b0:	982f883a 	mov	r23,r19
  8063b4:	003f6b06 	br	806164 <__sfvwrite_r+0x1d8>
  8063b8:	800b883a 	mov	r5,r16
  8063bc:	a809883a 	mov	r4,r21
  8063c0:	08057980 	call	805798 <_fflush_r>
  8063c4:	103f9826 	beq	r2,zero,806228 <__sfvwrite_r+0x29c>
  8063c8:	003fb506 	br	8062a0 <__sfvwrite_r+0x314>
  8063cc:	e00d883a 	mov	r6,fp
  8063d0:	b80b883a 	mov	r5,r23
  8063d4:	4009883a 	mov	r4,r8
  8063d8:	08071440 	call	807144 <memmove>
  8063dc:	80800217 	ldw	r2,8(r16)
  8063e0:	81800017 	ldw	r6,0(r16)
  8063e4:	e025883a 	mov	r18,fp
  8063e8:	1705c83a 	sub	r2,r2,fp
  8063ec:	370d883a 	add	r6,r6,fp
  8063f0:	80800215 	stw	r2,8(r16)
  8063f4:	81800015 	stw	r6,0(r16)
  8063f8:	003f8806 	br	80621c <__sfvwrite_r+0x290>
  8063fc:	9809883a 	mov	r4,r19
  806400:	003fc806 	br	806324 <__sfvwrite_r+0x398>
  806404:	98800044 	addi	r2,r19,1
  806408:	1029883a 	mov	r20,r2
  80640c:	003f9106 	br	806254 <__sfvwrite_r+0x2c8>
  806410:	a809883a 	mov	r4,r21
  806414:	08084980 	call	808498 <_realloc_r>
  806418:	1009883a 	mov	r4,r2
  80641c:	103f491e 	bne	r2,zero,806144 <__sfvwrite_r+0x1b8>
  806420:	81400417 	ldw	r5,16(r16)
  806424:	a809883a 	mov	r4,r21
  806428:	0805c900 	call	805c90 <_free_r>
  80642c:	8080030b 	ldhu	r2,12(r16)
  806430:	00c00304 	movi	r3,12
  806434:	a8c00015 	stw	r3,0(r21)
  806438:	10bfdfcc 	andi	r2,r2,65407
  80643c:	003f9906 	br	8062a4 <__sfvwrite_r+0x318>
  806440:	00c00304 	movi	r3,12
  806444:	8080030b 	ldhu	r2,12(r16)
  806448:	a8c00015 	stw	r3,0(r21)
  80644c:	003f9506 	br	8062a4 <__sfvwrite_r+0x318>
  806450:	00bfffc4 	movi	r2,-1
  806454:	003f5d06 	br	8061cc <__sfvwrite_r+0x240>

00806458 <_fwalk>:
  806458:	defffa04 	addi	sp,sp,-24
  80645c:	dd000415 	stw	r20,16(sp)
  806460:	dcc00315 	stw	r19,12(sp)
  806464:	dc800215 	stw	r18,8(sp)
  806468:	dfc00515 	stw	ra,20(sp)
  80646c:	dc400115 	stw	r17,4(sp)
  806470:	dc000015 	stw	r16,0(sp)
  806474:	2827883a 	mov	r19,r5
  806478:	2480b804 	addi	r18,r4,736
  80647c:	0029883a 	mov	r20,zero
  806480:	94400117 	ldw	r17,4(r18)
  806484:	94000217 	ldw	r16,8(r18)
  806488:	8c7fffc4 	addi	r17,r17,-1
  80648c:	88000d16 	blt	r17,zero,8064c4 <_fwalk+0x6c>
  806490:	8080030b 	ldhu	r2,12(r16)
  806494:	8c7fffc4 	addi	r17,r17,-1
  806498:	108000b0 	cmpltui	r2,r2,2
  80649c:	1000061e 	bne	r2,zero,8064b8 <_fwalk+0x60>
  8064a0:	8080038f 	ldh	r2,14(r16)
  8064a4:	8009883a 	mov	r4,r16
  8064a8:	10bfffe0 	cmpeqi	r2,r2,-1
  8064ac:	1000021e 	bne	r2,zero,8064b8 <_fwalk+0x60>
  8064b0:	983ee83a 	callr	r19
  8064b4:	a0a8b03a 	or	r20,r20,r2
  8064b8:	88bfffd8 	cmpnei	r2,r17,-1
  8064bc:	84001a04 	addi	r16,r16,104
  8064c0:	103ff31e 	bne	r2,zero,806490 <_fwalk+0x38>
  8064c4:	94800017 	ldw	r18,0(r18)
  8064c8:	903fed1e 	bne	r18,zero,806480 <_fwalk+0x28>
  8064cc:	a005883a 	mov	r2,r20
  8064d0:	dfc00517 	ldw	ra,20(sp)
  8064d4:	dd000417 	ldw	r20,16(sp)
  8064d8:	dcc00317 	ldw	r19,12(sp)
  8064dc:	dc800217 	ldw	r18,8(sp)
  8064e0:	dc400117 	ldw	r17,4(sp)
  8064e4:	dc000017 	ldw	r16,0(sp)
  8064e8:	dec00604 	addi	sp,sp,24
  8064ec:	f800283a 	ret

008064f0 <_fwalk_reent>:
  8064f0:	defff904 	addi	sp,sp,-28
  8064f4:	dd400515 	stw	r21,20(sp)
  8064f8:	dd000415 	stw	r20,16(sp)
  8064fc:	dcc00315 	stw	r19,12(sp)
  806500:	dc800215 	stw	r18,8(sp)
  806504:	dfc00615 	stw	ra,24(sp)
  806508:	dc400115 	stw	r17,4(sp)
  80650c:	dc000015 	stw	r16,0(sp)
  806510:	202b883a 	mov	r21,r4
  806514:	2827883a 	mov	r19,r5
  806518:	2480b804 	addi	r18,r4,736
  80651c:	0029883a 	mov	r20,zero
  806520:	94400117 	ldw	r17,4(r18)
  806524:	94000217 	ldw	r16,8(r18)
  806528:	8c7fffc4 	addi	r17,r17,-1
  80652c:	88000e16 	blt	r17,zero,806568 <_fwalk_reent+0x78>
  806530:	8080030b 	ldhu	r2,12(r16)
  806534:	8c7fffc4 	addi	r17,r17,-1
  806538:	108000b0 	cmpltui	r2,r2,2
  80653c:	1000071e 	bne	r2,zero,80655c <_fwalk_reent+0x6c>
  806540:	8080038f 	ldh	r2,14(r16)
  806544:	800b883a 	mov	r5,r16
  806548:	a809883a 	mov	r4,r21
  80654c:	10bfffe0 	cmpeqi	r2,r2,-1
  806550:	1000021e 	bne	r2,zero,80655c <_fwalk_reent+0x6c>
  806554:	983ee83a 	callr	r19
  806558:	a0a8b03a 	or	r20,r20,r2
  80655c:	88bfffd8 	cmpnei	r2,r17,-1
  806560:	84001a04 	addi	r16,r16,104
  806564:	103ff21e 	bne	r2,zero,806530 <_fwalk_reent+0x40>
  806568:	94800017 	ldw	r18,0(r18)
  80656c:	903fec1e 	bne	r18,zero,806520 <_fwalk_reent+0x30>
  806570:	a005883a 	mov	r2,r20
  806574:	dfc00617 	ldw	ra,24(sp)
  806578:	dd400517 	ldw	r21,20(sp)
  80657c:	dd000417 	ldw	r20,16(sp)
  806580:	dcc00317 	ldw	r19,12(sp)
  806584:	dc800217 	ldw	r18,8(sp)
  806588:	dc400117 	ldw	r17,4(sp)
  80658c:	dc000017 	ldw	r16,0(sp)
  806590:	dec00704 	addi	sp,sp,28
  806594:	f800283a 	ret

00806598 <__localeconv_l>:
  806598:	20803c04 	addi	r2,r4,240
  80659c:	f800283a 	ret

008065a0 <_localeconv_r>:
  8065a0:	00802074 	movhi	r2,129
  8065a4:	10854404 	addi	r2,r2,5392
  8065a8:	f800283a 	ret

008065ac <localeconv>:
  8065ac:	00802074 	movhi	r2,129
  8065b0:	10854404 	addi	r2,r2,5392
  8065b4:	f800283a 	ret

008065b8 <__swhatbuf_r>:
  8065b8:	deffea04 	addi	sp,sp,-88
  8065bc:	dc001215 	stw	r16,72(sp)
  8065c0:	2821883a 	mov	r16,r5
  8065c4:	2940038f 	ldh	r5,14(r5)
  8065c8:	dc801415 	stw	r18,80(sp)
  8065cc:	dc401315 	stw	r17,76(sp)
  8065d0:	dfc01515 	stw	ra,84(sp)
  8065d4:	3023883a 	mov	r17,r6
  8065d8:	3825883a 	mov	r18,r7
  8065dc:	28001016 	blt	r5,zero,806620 <__swhatbuf_r+0x68>
  8065e0:	d80d883a 	mov	r6,sp
  8065e4:	080a5e80 	call	80a5e8 <_fstat_r>
  8065e8:	10000d16 	blt	r2,zero,806620 <__swhatbuf_r+0x68>
  8065ec:	d8c00117 	ldw	r3,4(sp)
  8065f0:	00820004 	movi	r2,2048
  8065f4:	18fc000c 	andi	r3,r3,61440
  8065f8:	18c80020 	cmpeqi	r3,r3,8192
  8065fc:	90c00015 	stw	r3,0(r18)
  806600:	00c10004 	movi	r3,1024
  806604:	88c00015 	stw	r3,0(r17)
  806608:	dfc01517 	ldw	ra,84(sp)
  80660c:	dc801417 	ldw	r18,80(sp)
  806610:	dc401317 	ldw	r17,76(sp)
  806614:	dc001217 	ldw	r16,72(sp)
  806618:	dec01604 	addi	sp,sp,88
  80661c:	f800283a 	ret
  806620:	8080030b 	ldhu	r2,12(r16)
  806624:	90000015 	stw	zero,0(r18)
  806628:	1080200c 	andi	r2,r2,128
  80662c:	10000426 	beq	r2,zero,806640 <__swhatbuf_r+0x88>
  806630:	00801004 	movi	r2,64
  806634:	88800015 	stw	r2,0(r17)
  806638:	0005883a 	mov	r2,zero
  80663c:	003ff206 	br	806608 <__swhatbuf_r+0x50>
  806640:	00810004 	movi	r2,1024
  806644:	88800015 	stw	r2,0(r17)
  806648:	0005883a 	mov	r2,zero
  80664c:	003fee06 	br	806608 <__swhatbuf_r+0x50>

00806650 <__smakebuf_r>:
  806650:	2880030b 	ldhu	r2,12(r5)
  806654:	defffa04 	addi	sp,sp,-24
  806658:	dc000215 	stw	r16,8(sp)
  80665c:	dfc00515 	stw	ra,20(sp)
  806660:	dc800415 	stw	r18,16(sp)
  806664:	dc400315 	stw	r17,12(sp)
  806668:	1080008c 	andi	r2,r2,2
  80666c:	2821883a 	mov	r16,r5
  806670:	10000b26 	beq	r2,zero,8066a0 <__smakebuf_r+0x50>
  806674:	288010c4 	addi	r2,r5,67
  806678:	28800015 	stw	r2,0(r5)
  80667c:	28800415 	stw	r2,16(r5)
  806680:	00800044 	movi	r2,1
  806684:	28800515 	stw	r2,20(r5)
  806688:	dfc00517 	ldw	ra,20(sp)
  80668c:	dc800417 	ldw	r18,16(sp)
  806690:	dc400317 	ldw	r17,12(sp)
  806694:	dc000217 	ldw	r16,8(sp)
  806698:	dec00604 	addi	sp,sp,24
  80669c:	f800283a 	ret
  8066a0:	d9c00104 	addi	r7,sp,4
  8066a4:	d80d883a 	mov	r6,sp
  8066a8:	2023883a 	mov	r17,r4
  8066ac:	08065b80 	call	8065b8 <__swhatbuf_r>
  8066b0:	d9000117 	ldw	r4,4(sp)
  8066b4:	1025883a 	mov	r18,r2
  8066b8:	2000131e 	bne	r4,zero,806708 <__smakebuf_r+0xb8>
  8066bc:	d9400017 	ldw	r5,0(sp)
  8066c0:	8809883a 	mov	r4,r17
  8066c4:	08067900 	call	806790 <_malloc_r>
  8066c8:	10001c26 	beq	r2,zero,80673c <__smakebuf_r+0xec>
  8066cc:	01002034 	movhi	r4,128
  8066d0:	21160a04 	addi	r4,r4,22568
  8066d4:	80c0030b 	ldhu	r3,12(r16)
  8066d8:	89000f15 	stw	r4,60(r17)
  8066dc:	80800015 	stw	r2,0(r16)
  8066e0:	80800415 	stw	r2,16(r16)
  8066e4:	d8800017 	ldw	r2,0(sp)
  8066e8:	d9400117 	ldw	r5,4(sp)
  8066ec:	18c02014 	ori	r3,r3,128
  8066f0:	80c0030d 	sth	r3,12(r16)
  8066f4:	80800515 	stw	r2,20(r16)
  8066f8:	28001d1e 	bne	r5,zero,806770 <__smakebuf_r+0x120>
  8066fc:	90c6b03a 	or	r3,r18,r3
  806700:	80c0030d 	sth	r3,12(r16)
  806704:	003fe006 	br	806688 <__smakebuf_r+0x38>
  806708:	8140038f 	ldh	r5,14(r16)
  80670c:	8809883a 	mov	r4,r17
  806710:	080a6480 	call	80a648 <_isatty_r>
  806714:	103fe926 	beq	r2,zero,8066bc <__smakebuf_r+0x6c>
  806718:	8080030b 	ldhu	r2,12(r16)
  80671c:	80c010c4 	addi	r3,r16,67
  806720:	80c00015 	stw	r3,0(r16)
  806724:	10800054 	ori	r2,r2,1
  806728:	8080030d 	sth	r2,12(r16)
  80672c:	00800044 	movi	r2,1
  806730:	80c00415 	stw	r3,16(r16)
  806734:	80800515 	stw	r2,20(r16)
  806738:	003fe006 	br	8066bc <__smakebuf_r+0x6c>
  80673c:	8080030b 	ldhu	r2,12(r16)
  806740:	10c0800c 	andi	r3,r2,512
  806744:	183fd01e 	bne	r3,zero,806688 <__smakebuf_r+0x38>
  806748:	00ffff04 	movi	r3,-4
  80674c:	10c4703a 	and	r2,r2,r3
  806750:	10800094 	ori	r2,r2,2
  806754:	80c010c4 	addi	r3,r16,67
  806758:	8080030d 	sth	r2,12(r16)
  80675c:	00800044 	movi	r2,1
  806760:	80c00015 	stw	r3,0(r16)
  806764:	80c00415 	stw	r3,16(r16)
  806768:	80800515 	stw	r2,20(r16)
  80676c:	003fc606 	br	806688 <__smakebuf_r+0x38>
  806770:	8140038f 	ldh	r5,14(r16)
  806774:	8809883a 	mov	r4,r17
  806778:	080a6480 	call	80a648 <_isatty_r>
  80677c:	80c0030b 	ldhu	r3,12(r16)
  806780:	103fde26 	beq	r2,zero,8066fc <__smakebuf_r+0xac>
  806784:	18ffff0c 	andi	r3,r3,65532
  806788:	18c00054 	ori	r3,r3,1
  80678c:	003fdb06 	br	8066fc <__smakebuf_r+0xac>

00806790 <_malloc_r>:
  806790:	defff604 	addi	sp,sp,-40
  806794:	dc400115 	stw	r17,4(sp)
  806798:	2c4002c4 	addi	r17,r5,11
  80679c:	dc800215 	stw	r18,8(sp)
  8067a0:	dfc00915 	stw	ra,36(sp)
  8067a4:	df000815 	stw	fp,32(sp)
  8067a8:	ddc00715 	stw	r23,28(sp)
  8067ac:	dd800615 	stw	r22,24(sp)
  8067b0:	dd400515 	stw	r21,20(sp)
  8067b4:	dd000415 	stw	r20,16(sp)
  8067b8:	dcc00315 	stw	r19,12(sp)
  8067bc:	dc000015 	stw	r16,0(sp)
  8067c0:	888005e8 	cmpgeui	r2,r17,23
  8067c4:	2025883a 	mov	r18,r4
  8067c8:	10001b1e 	bne	r2,zero,806838 <_malloc_r+0xa8>
  8067cc:	29400468 	cmpgeui	r5,r5,17
  8067d0:	2800821e 	bne	r5,zero,8069dc <_malloc_r+0x24c>
  8067d4:	080e39c0 	call	80e39c <__malloc_lock>
  8067d8:	04400404 	movi	r17,16
  8067dc:	01c00084 	movi	r7,2
  8067e0:	00800604 	movi	r2,24
  8067e4:	04c02074 	movhi	r19,129
  8067e8:	9cc40604 	addi	r19,r19,4120
  8067ec:	9885883a 	add	r2,r19,r2
  8067f0:	14000117 	ldw	r16,4(r2)
  8067f4:	10fffe04 	addi	r3,r2,-8
  8067f8:	80c08b26 	beq	r16,r3,806a28 <_malloc_r+0x298>
  8067fc:	80800117 	ldw	r2,4(r16)
  806800:	81000317 	ldw	r4,12(r16)
  806804:	00ffff04 	movi	r3,-4
  806808:	10c4703a 	and	r2,r2,r3
  80680c:	81400217 	ldw	r5,8(r16)
  806810:	8085883a 	add	r2,r16,r2
  806814:	10c00117 	ldw	r3,4(r2)
  806818:	29000315 	stw	r4,12(r5)
  80681c:	21400215 	stw	r5,8(r4)
  806820:	18c00054 	ori	r3,r3,1
  806824:	10c00115 	stw	r3,4(r2)
  806828:	9009883a 	mov	r4,r18
  80682c:	080e3c00 	call	80e3c0 <__malloc_unlock>
  806830:	80800204 	addi	r2,r16,8
  806834:	00006c06 	br	8069e8 <_malloc_r+0x258>
  806838:	00bffe04 	movi	r2,-8
  80683c:	88a2703a 	and	r17,r17,r2
  806840:	88006616 	blt	r17,zero,8069dc <_malloc_r+0x24c>
  806844:	89406536 	bltu	r17,r5,8069dc <_malloc_r+0x24c>
  806848:	080e39c0 	call	80e39c <__malloc_lock>
  80684c:	88807e28 	cmpgeui	r2,r17,504
  806850:	10012226 	beq	r2,zero,806cdc <_malloc_r+0x54c>
  806854:	8804d27a 	srli	r2,r17,9
  806858:	10006f26 	beq	r2,zero,806a18 <_malloc_r+0x288>
  80685c:	10c00168 	cmpgeui	r3,r2,5
  806860:	1800fe1e 	bne	r3,zero,806c5c <_malloc_r+0x4cc>
  806864:	8804d1ba 	srli	r2,r17,6
  806868:	11c00e44 	addi	r7,r2,57
  80686c:	380890fa 	slli	r4,r7,3
  806870:	12000e04 	addi	r8,r2,56
  806874:	04c02074 	movhi	r19,129
  806878:	9cc40604 	addi	r19,r19,4120
  80687c:	9909883a 	add	r4,r19,r4
  806880:	24000117 	ldw	r16,4(r4)
  806884:	213ffe04 	addi	r4,r4,-8
  806888:	24000b26 	beq	r4,r16,8068b8 <_malloc_r+0x128>
  80688c:	01bfff04 	movi	r6,-4
  806890:	00000306 	br	8068a0 <_malloc_r+0x110>
  806894:	1800d60e 	bge	r3,zero,806bf0 <_malloc_r+0x460>
  806898:	84000317 	ldw	r16,12(r16)
  80689c:	24000626 	beq	r4,r16,8068b8 <_malloc_r+0x128>
  8068a0:	80800117 	ldw	r2,4(r16)
  8068a4:	1184703a 	and	r2,r2,r6
  8068a8:	1447c83a 	sub	r3,r2,r17
  8068ac:	19400408 	cmpgei	r5,r3,16
  8068b0:	283ff826 	beq	r5,zero,806894 <_malloc_r+0x104>
  8068b4:	400f883a 	mov	r7,r8
  8068b8:	9c000417 	ldw	r16,16(r19)
  8068bc:	02402074 	movhi	r9,129
  8068c0:	4a440804 	addi	r9,r9,4128
  8068c4:	82405f26 	beq	r16,r9,806a44 <_malloc_r+0x2b4>
  8068c8:	80c00117 	ldw	r3,4(r16)
  8068cc:	00bfff04 	movi	r2,-4
  8068d0:	1884703a 	and	r2,r3,r2
  8068d4:	1447c83a 	sub	r3,r2,r17
  8068d8:	19000410 	cmplti	r4,r3,16
  8068dc:	20010a26 	beq	r4,zero,806d08 <_malloc_r+0x578>
  8068e0:	9a400515 	stw	r9,20(r19)
  8068e4:	9a400415 	stw	r9,16(r19)
  8068e8:	1800ff0e 	bge	r3,zero,806ce8 <_malloc_r+0x558>
  8068ec:	10c08028 	cmpgeui	r3,r2,512
  8068f0:	1800c11e 	bne	r3,zero,806bf8 <_malloc_r+0x468>
  8068f4:	1006d0fa 	srli	r3,r2,3
  8068f8:	1008d17a 	srli	r4,r2,5
  8068fc:	00800044 	movi	r2,1
  806900:	18c00044 	addi	r3,r3,1
  806904:	180690fa 	slli	r3,r3,3
  806908:	99400117 	ldw	r5,4(r19)
  80690c:	1104983a 	sll	r2,r2,r4
  806910:	98c7883a 	add	r3,r19,r3
  806914:	19000017 	ldw	r4,0(r3)
  806918:	1144b03a 	or	r2,r2,r5
  80691c:	197ffe04 	addi	r5,r3,-8
  806920:	81400315 	stw	r5,12(r16)
  806924:	81000215 	stw	r4,8(r16)
  806928:	98800115 	stw	r2,4(r19)
  80692c:	1c000015 	stw	r16,0(r3)
  806930:	24000315 	stw	r16,12(r4)
  806934:	3807d0ba 	srai	r3,r7,2
  806938:	01000044 	movi	r4,1
  80693c:	20c8983a 	sll	r4,r4,r3
  806940:	11004536 	bltu	r2,r4,806a58 <_malloc_r+0x2c8>
  806944:	2086703a 	and	r3,r4,r2
  806948:	18000a1e 	bne	r3,zero,806974 <_malloc_r+0x1e4>
  80694c:	00ffff04 	movi	r3,-4
  806950:	2109883a 	add	r4,r4,r4
  806954:	38ce703a 	and	r7,r7,r3
  806958:	2086703a 	and	r3,r4,r2
  80695c:	39c00104 	addi	r7,r7,4
  806960:	1800041e 	bne	r3,zero,806974 <_malloc_r+0x1e4>
  806964:	2109883a 	add	r4,r4,r4
  806968:	2086703a 	and	r3,r4,r2
  80696c:	39c00104 	addi	r7,r7,4
  806970:	183ffc26 	beq	r3,zero,806964 <_malloc_r+0x1d4>
  806974:	02bfff04 	movi	r10,-4
  806978:	381690fa 	slli	r11,r7,3
  80697c:	3819883a 	mov	r12,r7
  806980:	9ad7883a 	add	r11,r19,r11
  806984:	5811883a 	mov	r8,r11
  806988:	40800317 	ldw	r2,12(r8)
  80698c:	4080bc26 	beq	r8,r2,806c80 <_malloc_r+0x4f0>
  806990:	10c00117 	ldw	r3,4(r2)
  806994:	1021883a 	mov	r16,r2
  806998:	10800317 	ldw	r2,12(r2)
  80699c:	1a86703a 	and	r3,r3,r10
  8069a0:	1c4bc83a 	sub	r5,r3,r17
  8069a4:	29800410 	cmplti	r6,r5,16
  8069a8:	3000ba26 	beq	r6,zero,806c94 <_malloc_r+0x504>
  8069ac:	283ff716 	blt	r5,zero,80698c <_malloc_r+0x1fc>
  8069b0:	80c7883a 	add	r3,r16,r3
  8069b4:	19400117 	ldw	r5,4(r3)
  8069b8:	81800217 	ldw	r6,8(r16)
  8069bc:	9009883a 	mov	r4,r18
  8069c0:	29400054 	ori	r5,r5,1
  8069c4:	19400115 	stw	r5,4(r3)
  8069c8:	30800315 	stw	r2,12(r6)
  8069cc:	11800215 	stw	r6,8(r2)
  8069d0:	080e3c00 	call	80e3c0 <__malloc_unlock>
  8069d4:	80800204 	addi	r2,r16,8
  8069d8:	00000306 	br	8069e8 <_malloc_r+0x258>
  8069dc:	00800304 	movi	r2,12
  8069e0:	90800015 	stw	r2,0(r18)
  8069e4:	0005883a 	mov	r2,zero
  8069e8:	dfc00917 	ldw	ra,36(sp)
  8069ec:	df000817 	ldw	fp,32(sp)
  8069f0:	ddc00717 	ldw	r23,28(sp)
  8069f4:	dd800617 	ldw	r22,24(sp)
  8069f8:	dd400517 	ldw	r21,20(sp)
  8069fc:	dd000417 	ldw	r20,16(sp)
  806a00:	dcc00317 	ldw	r19,12(sp)
  806a04:	dc800217 	ldw	r18,8(sp)
  806a08:	dc400117 	ldw	r17,4(sp)
  806a0c:	dc000017 	ldw	r16,0(sp)
  806a10:	dec00a04 	addi	sp,sp,40
  806a14:	f800283a 	ret
  806a18:	01008004 	movi	r4,512
  806a1c:	01c01004 	movi	r7,64
  806a20:	02000fc4 	movi	r8,63
  806a24:	003f9306 	br	806874 <_malloc_r+0xe4>
  806a28:	14000317 	ldw	r16,12(r2)
  806a2c:	39c00084 	addi	r7,r7,2
  806a30:	143f721e 	bne	r2,r16,8067fc <_malloc_r+0x6c>
  806a34:	9c000417 	ldw	r16,16(r19)
  806a38:	02402074 	movhi	r9,129
  806a3c:	4a440804 	addi	r9,r9,4128
  806a40:	827fa11e 	bne	r16,r9,8068c8 <_malloc_r+0x138>
  806a44:	3807d0ba 	srai	r3,r7,2
  806a48:	01000044 	movi	r4,1
  806a4c:	98800117 	ldw	r2,4(r19)
  806a50:	20c8983a 	sll	r4,r4,r3
  806a54:	113fbb2e 	bgeu	r2,r4,806944 <_malloc_r+0x1b4>
  806a58:	9c000217 	ldw	r16,8(r19)
  806a5c:	00bfff04 	movi	r2,-4
  806a60:	85400117 	ldw	r21,4(r16)
  806a64:	a8ac703a 	and	r22,r21,r2
  806a68:	b4400336 	bltu	r22,r17,806a78 <_malloc_r+0x2e8>
  806a6c:	b445c83a 	sub	r2,r22,r17
  806a70:	10c00408 	cmpgei	r3,r2,16
  806a74:	1800541e 	bne	r3,zero,806bc8 <_malloc_r+0x438>
  806a78:	00802074 	movhi	r2,129
  806a7c:	1089e717 	ldw	r2,10140(r2)
  806a80:	00c02074 	movhi	r3,129
  806a84:	1d50eb17 	ldw	r21,17324(r3)
  806a88:	10bfffd8 	cmpnei	r2,r2,-1
  806a8c:	85b9883a 	add	fp,r16,r22
  806a90:	8d6b883a 	add	r21,r17,r21
  806a94:	1000d626 	beq	r2,zero,806df0 <_malloc_r+0x660>
  806a98:	ad4403c4 	addi	r21,r21,4111
  806a9c:	00bc0004 	movi	r2,-4096
  806aa0:	a8aa703a 	and	r21,r21,r2
  806aa4:	a80b883a 	mov	r5,r21
  806aa8:	9009883a 	mov	r4,r18
  806aac:	08089fc0 	call	8089fc <_sbrk_r>
  806ab0:	102f883a 	mov	r23,r2
  806ab4:	10bfffd8 	cmpnei	r2,r2,-1
  806ab8:	1000a826 	beq	r2,zero,806d5c <_malloc_r+0x5cc>
  806abc:	bf00a636 	bltu	r23,fp,806d58 <_malloc_r+0x5c8>
  806ac0:	00802074 	movhi	r2,129
  806ac4:	1510f517 	ldw	r20,17364(r2)
  806ac8:	ad29883a 	add	r20,r21,r20
  806acc:	1510f515 	stw	r20,17364(r2)
  806ad0:	a007883a 	mov	r3,r20
  806ad4:	e5c0ec26 	beq	fp,r23,806e88 <_malloc_r+0x6f8>
  806ad8:	00802074 	movhi	r2,129
  806adc:	1089e717 	ldw	r2,10140(r2)
  806ae0:	10bfffd8 	cmpnei	r2,r2,-1
  806ae4:	1000ef26 	beq	r2,zero,806ea4 <_malloc_r+0x714>
  806ae8:	bf39c83a 	sub	fp,r23,fp
  806aec:	e0c7883a 	add	r3,fp,r3
  806af0:	00802074 	movhi	r2,129
  806af4:	10d0f515 	stw	r3,17364(r2)
  806af8:	bf0001cc 	andi	fp,r23,7
  806afc:	e000c526 	beq	fp,zero,806e14 <_malloc_r+0x684>
  806b00:	bf2fc83a 	sub	r23,r23,fp
  806b04:	bdc00204 	addi	r23,r23,8
  806b08:	05040204 	movi	r20,4104
  806b0c:	a729c83a 	sub	r20,r20,fp
  806b10:	bd6b883a 	add	r21,r23,r21
  806b14:	a569c83a 	sub	r20,r20,r21
  806b18:	a503ffcc 	andi	r20,r20,4095
  806b1c:	a00b883a 	mov	r5,r20
  806b20:	9009883a 	mov	r4,r18
  806b24:	08089fc0 	call	8089fc <_sbrk_r>
  806b28:	10ffffe0 	cmpeqi	r3,r2,-1
  806b2c:	1800f31e 	bne	r3,zero,806efc <_malloc_r+0x76c>
  806b30:	15c5c83a 	sub	r2,r2,r23
  806b34:	152b883a 	add	r21,r2,r20
  806b38:	00802074 	movhi	r2,129
  806b3c:	1150f517 	ldw	r5,17364(r2)
  806b40:	9dc00215 	stw	r23,8(r19)
  806b44:	ad400054 	ori	r21,r21,1
  806b48:	a169883a 	add	r20,r20,r5
  806b4c:	1510f515 	stw	r20,17364(r2)
  806b50:	bd400115 	stw	r21,4(r23)
  806b54:	84c0d626 	beq	r16,r19,806eb0 <_malloc_r+0x720>
  806b58:	b0800428 	cmpgeui	r2,r22,16
  806b5c:	1000d626 	beq	r2,zero,806eb8 <_malloc_r+0x728>
  806b60:	80c00117 	ldw	r3,4(r16)
  806b64:	013ffe04 	movi	r4,-8
  806b68:	b0bffd04 	addi	r2,r22,-12
  806b6c:	1104703a 	and	r2,r2,r4
  806b70:	18c0004c 	andi	r3,r3,1
  806b74:	1886b03a 	or	r3,r3,r2
  806b78:	80c00115 	stw	r3,4(r16)
  806b7c:	01000144 	movi	r4,5
  806b80:	8087883a 	add	r3,r16,r2
  806b84:	19000115 	stw	r4,4(r3)
  806b88:	19000215 	stw	r4,8(r3)
  806b8c:	10800428 	cmpgeui	r2,r2,16
  806b90:	1000df1e 	bne	r2,zero,806f10 <_malloc_r+0x780>
  806b94:	bd400117 	ldw	r21,4(r23)
  806b98:	b821883a 	mov	r16,r23
  806b9c:	00802074 	movhi	r2,129
  806ba0:	1090ea17 	ldw	r2,17320(r2)
  806ba4:	1500022e 	bgeu	r2,r20,806bb0 <_malloc_r+0x420>
  806ba8:	00802074 	movhi	r2,129
  806bac:	1510ea15 	stw	r20,17320(r2)
  806bb0:	00802074 	movhi	r2,129
  806bb4:	1090e917 	ldw	r2,17316(r2)
  806bb8:	15006a2e 	bgeu	r2,r20,806d64 <_malloc_r+0x5d4>
  806bbc:	00802074 	movhi	r2,129
  806bc0:	1510e915 	stw	r20,17316(r2)
  806bc4:	00006706 	br	806d64 <_malloc_r+0x5d4>
  806bc8:	88c00054 	ori	r3,r17,1
  806bcc:	80c00115 	stw	r3,4(r16)
  806bd0:	8463883a 	add	r17,r16,r17
  806bd4:	10800054 	ori	r2,r2,1
  806bd8:	9c400215 	stw	r17,8(r19)
  806bdc:	88800115 	stw	r2,4(r17)
  806be0:	9009883a 	mov	r4,r18
  806be4:	080e3c00 	call	80e3c0 <__malloc_unlock>
  806be8:	80800204 	addi	r2,r16,8
  806bec:	003f7e06 	br	8069e8 <_malloc_r+0x258>
  806bf0:	81000317 	ldw	r4,12(r16)
  806bf4:	003f0506 	br	80680c <_malloc_r+0x7c>
  806bf8:	1006d27a 	srli	r3,r2,9
  806bfc:	19000168 	cmpgeui	r4,r3,5
  806c00:	20005026 	beq	r4,zero,806d44 <_malloc_r+0x5b4>
  806c04:	19000568 	cmpgeui	r4,r3,21
  806c08:	20008c1e 	bne	r4,zero,806e3c <_malloc_r+0x6ac>
  806c0c:	19401704 	addi	r5,r3,92
  806c10:	280a90fa 	slli	r5,r5,3
  806c14:	190016c4 	addi	r4,r3,91
  806c18:	994b883a 	add	r5,r19,r5
  806c1c:	28c00017 	ldw	r3,0(r5)
  806c20:	297ffe04 	addi	r5,r5,-8
  806c24:	28c07426 	beq	r5,r3,806df8 <_malloc_r+0x668>
  806c28:	01bfff04 	movi	r6,-4
  806c2c:	19000117 	ldw	r4,4(r3)
  806c30:	2188703a 	and	r4,r4,r6
  806c34:	1100022e 	bgeu	r2,r4,806c40 <_malloc_r+0x4b0>
  806c38:	18c00217 	ldw	r3,8(r3)
  806c3c:	28fffb1e 	bne	r5,r3,806c2c <_malloc_r+0x49c>
  806c40:	19400317 	ldw	r5,12(r3)
  806c44:	98800117 	ldw	r2,4(r19)
  806c48:	81400315 	stw	r5,12(r16)
  806c4c:	80c00215 	stw	r3,8(r16)
  806c50:	2c000215 	stw	r16,8(r5)
  806c54:	1c000315 	stw	r16,12(r3)
  806c58:	003f3606 	br	806934 <_malloc_r+0x1a4>
  806c5c:	10c00568 	cmpgeui	r3,r2,21
  806c60:	18004a26 	beq	r3,zero,806d8c <_malloc_r+0x5fc>
  806c64:	10c01568 	cmpgeui	r3,r2,85
  806c68:	18007b1e 	bne	r3,zero,806e58 <_malloc_r+0x6c8>
  806c6c:	8804d33a 	srli	r2,r17,12
  806c70:	11c01bc4 	addi	r7,r2,111
  806c74:	380890fa 	slli	r4,r7,3
  806c78:	12001b84 	addi	r8,r2,110
  806c7c:	003efd06 	br	806874 <_malloc_r+0xe4>
  806c80:	63000044 	addi	r12,r12,1
  806c84:	608000cc 	andi	r2,r12,3
  806c88:	42000204 	addi	r8,r8,8
  806c8c:	103f3e1e 	bne	r2,zero,806988 <_malloc_r+0x1f8>
  806c90:	00004506 	br	806da8 <_malloc_r+0x618>
  806c94:	81000217 	ldw	r4,8(r16)
  806c98:	89800054 	ori	r6,r17,1
  806c9c:	81800115 	stw	r6,4(r16)
  806ca0:	20800315 	stw	r2,12(r4)
  806ca4:	11000215 	stw	r4,8(r2)
  806ca8:	8463883a 	add	r17,r16,r17
  806cac:	9c400515 	stw	r17,20(r19)
  806cb0:	9c400415 	stw	r17,16(r19)
  806cb4:	28800054 	ori	r2,r5,1
  806cb8:	88800115 	stw	r2,4(r17)
  806cbc:	8a400315 	stw	r9,12(r17)
  806cc0:	8a400215 	stw	r9,8(r17)
  806cc4:	80c7883a 	add	r3,r16,r3
  806cc8:	19400015 	stw	r5,0(r3)
  806ccc:	9009883a 	mov	r4,r18
  806cd0:	080e3c00 	call	80e3c0 <__malloc_unlock>
  806cd4:	80800204 	addi	r2,r16,8
  806cd8:	003f4306 	br	8069e8 <_malloc_r+0x258>
  806cdc:	880ed0fa 	srli	r7,r17,3
  806ce0:	88800204 	addi	r2,r17,8
  806ce4:	003ebf06 	br	8067e4 <_malloc_r+0x54>
  806ce8:	8085883a 	add	r2,r16,r2
  806cec:	10c00117 	ldw	r3,4(r2)
  806cf0:	9009883a 	mov	r4,r18
  806cf4:	18c00054 	ori	r3,r3,1
  806cf8:	10c00115 	stw	r3,4(r2)
  806cfc:	080e3c00 	call	80e3c0 <__malloc_unlock>
  806d00:	80800204 	addi	r2,r16,8
  806d04:	003f3806 	br	8069e8 <_malloc_r+0x258>
  806d08:	89000054 	ori	r4,r17,1
  806d0c:	81000115 	stw	r4,4(r16)
  806d10:	8463883a 	add	r17,r16,r17
  806d14:	9c400515 	stw	r17,20(r19)
  806d18:	9c400415 	stw	r17,16(r19)
  806d1c:	19000054 	ori	r4,r3,1
  806d20:	89000115 	stw	r4,4(r17)
  806d24:	8085883a 	add	r2,r16,r2
  806d28:	8a400315 	stw	r9,12(r17)
  806d2c:	8a400215 	stw	r9,8(r17)
  806d30:	10c00015 	stw	r3,0(r2)
  806d34:	9009883a 	mov	r4,r18
  806d38:	080e3c00 	call	80e3c0 <__malloc_unlock>
  806d3c:	80800204 	addi	r2,r16,8
  806d40:	003f2906 	br	8069e8 <_malloc_r+0x258>
  806d44:	1006d1ba 	srli	r3,r2,6
  806d48:	19400e44 	addi	r5,r3,57
  806d4c:	280a90fa 	slli	r5,r5,3
  806d50:	19000e04 	addi	r4,r3,56
  806d54:	003fb006 	br	806c18 <_malloc_r+0x488>
  806d58:	84c04626 	beq	r16,r19,806e74 <_malloc_r+0x6e4>
  806d5c:	9c000217 	ldw	r16,8(r19)
  806d60:	85400117 	ldw	r21,4(r16)
  806d64:	00bfff04 	movi	r2,-4
  806d68:	a8aa703a 	and	r21,r21,r2
  806d6c:	ac45c83a 	sub	r2,r21,r17
  806d70:	ac400236 	bltu	r21,r17,806d7c <_malloc_r+0x5ec>
  806d74:	10c00408 	cmpgei	r3,r2,16
  806d78:	183f931e 	bne	r3,zero,806bc8 <_malloc_r+0x438>
  806d7c:	9009883a 	mov	r4,r18
  806d80:	080e3c00 	call	80e3c0 <__malloc_unlock>
  806d84:	0005883a 	mov	r2,zero
  806d88:	003f1706 	br	8069e8 <_malloc_r+0x258>
  806d8c:	11c01704 	addi	r7,r2,92
  806d90:	380890fa 	slli	r4,r7,3
  806d94:	120016c4 	addi	r8,r2,91
  806d98:	003eb606 	br	806874 <_malloc_r+0xe4>
  806d9c:	58800217 	ldw	r2,8(r11)
  806da0:	39ffffc4 	addi	r7,r7,-1
  806da4:	12c0701e 	bne	r2,r11,806f68 <_malloc_r+0x7d8>
  806da8:	388000cc 	andi	r2,r7,3
  806dac:	5afffe04 	addi	r11,r11,-8
  806db0:	103ffa1e 	bne	r2,zero,806d9c <_malloc_r+0x60c>
  806db4:	98c00117 	ldw	r3,4(r19)
  806db8:	0104303a 	nor	r2,zero,r4
  806dbc:	10c4703a 	and	r2,r2,r3
  806dc0:	98800115 	stw	r2,4(r19)
  806dc4:	2109883a 	add	r4,r4,r4
  806dc8:	113f2336 	bltu	r2,r4,806a58 <_malloc_r+0x2c8>
  806dcc:	203f2226 	beq	r4,zero,806a58 <_malloc_r+0x2c8>
  806dd0:	2086703a 	and	r3,r4,r2
  806dd4:	1800041e 	bne	r3,zero,806de8 <_malloc_r+0x658>
  806dd8:	2109883a 	add	r4,r4,r4
  806ddc:	2086703a 	and	r3,r4,r2
  806de0:	63000104 	addi	r12,r12,4
  806de4:	183ffc26 	beq	r3,zero,806dd8 <_malloc_r+0x648>
  806de8:	600f883a 	mov	r7,r12
  806dec:	003ee206 	br	806978 <_malloc_r+0x1e8>
  806df0:	ad400404 	addi	r21,r21,16
  806df4:	003f2b06 	br	806aa4 <_malloc_r+0x314>
  806df8:	2009d0ba 	srai	r4,r4,2
  806dfc:	00800044 	movi	r2,1
  806e00:	99800117 	ldw	r6,4(r19)
  806e04:	1104983a 	sll	r2,r2,r4
  806e08:	1184b03a 	or	r2,r2,r6
  806e0c:	98800115 	stw	r2,4(r19)
  806e10:	003f8d06 	br	806c48 <_malloc_r+0x4b8>
  806e14:	bd69883a 	add	r20,r23,r21
  806e18:	0529c83a 	sub	r20,zero,r20
  806e1c:	a503ffcc 	andi	r20,r20,4095
  806e20:	a00b883a 	mov	r5,r20
  806e24:	9009883a 	mov	r4,r18
  806e28:	08089fc0 	call	8089fc <_sbrk_r>
  806e2c:	10ffffe0 	cmpeqi	r3,r2,-1
  806e30:	183f3f26 	beq	r3,zero,806b30 <_malloc_r+0x3a0>
  806e34:	0029883a 	mov	r20,zero
  806e38:	003f3f06 	br	806b38 <_malloc_r+0x3a8>
  806e3c:	19001568 	cmpgeui	r4,r3,85
  806e40:	2000201e 	bne	r4,zero,806ec4 <_malloc_r+0x734>
  806e44:	1006d33a 	srli	r3,r2,12
  806e48:	19401bc4 	addi	r5,r3,111
  806e4c:	280a90fa 	slli	r5,r5,3
  806e50:	19001b84 	addi	r4,r3,110
  806e54:	003f7006 	br	806c18 <_malloc_r+0x488>
  806e58:	10c05568 	cmpgeui	r3,r2,341
  806e5c:	1800201e 	bne	r3,zero,806ee0 <_malloc_r+0x750>
  806e60:	8804d3fa 	srli	r2,r17,15
  806e64:	11c01e04 	addi	r7,r2,120
  806e68:	380890fa 	slli	r4,r7,3
  806e6c:	12001dc4 	addi	r8,r2,119
  806e70:	003e8006 	br	806874 <_malloc_r+0xe4>
  806e74:	00802074 	movhi	r2,129
  806e78:	10d0f517 	ldw	r3,17364(r2)
  806e7c:	a8c7883a 	add	r3,r21,r3
  806e80:	10d0f515 	stw	r3,17364(r2)
  806e84:	003f1406 	br	806ad8 <_malloc_r+0x348>
  806e88:	e083ffcc 	andi	r2,fp,4095
  806e8c:	103f121e 	bne	r2,zero,806ad8 <_malloc_r+0x348>
  806e90:	9c000217 	ldw	r16,8(r19)
  806e94:	b56b883a 	add	r21,r22,r21
  806e98:	ad400054 	ori	r21,r21,1
  806e9c:	85400115 	stw	r21,4(r16)
  806ea0:	003f3e06 	br	806b9c <_malloc_r+0x40c>
  806ea4:	00802074 	movhi	r2,129
  806ea8:	15c9e715 	stw	r23,10140(r2)
  806eac:	003f1206 	br	806af8 <_malloc_r+0x368>
  806eb0:	b821883a 	mov	r16,r23
  806eb4:	003f3906 	br	806b9c <_malloc_r+0x40c>
  806eb8:	00800044 	movi	r2,1
  806ebc:	b8800115 	stw	r2,4(r23)
  806ec0:	003fae06 	br	806d7c <_malloc_r+0x5ec>
  806ec4:	19005568 	cmpgeui	r4,r3,341
  806ec8:	2000191e 	bne	r4,zero,806f30 <_malloc_r+0x7a0>
  806ecc:	1006d3fa 	srli	r3,r2,15
  806ed0:	19401e04 	addi	r5,r3,120
  806ed4:	280a90fa 	slli	r5,r5,3
  806ed8:	19001dc4 	addi	r4,r3,119
  806edc:	003f4e06 	br	806c18 <_malloc_r+0x488>
  806ee0:	10815568 	cmpgeui	r2,r2,1365
  806ee4:	1000191e 	bne	r2,zero,806f4c <_malloc_r+0x7bc>
  806ee8:	8804d4ba 	srli	r2,r17,18
  806eec:	11c01f44 	addi	r7,r2,125
  806ef0:	380890fa 	slli	r4,r7,3
  806ef4:	12001f04 	addi	r8,r2,124
  806ef8:	003e5e06 	br	806874 <_malloc_r+0xe4>
  806efc:	e73ffe04 	addi	fp,fp,-8
  806f00:	af2b883a 	add	r21,r21,fp
  806f04:	adebc83a 	sub	r21,r21,r23
  806f08:	0029883a 	mov	r20,zero
  806f0c:	003f0a06 	br	806b38 <_malloc_r+0x3a8>
  806f10:	81400204 	addi	r5,r16,8
  806f14:	9009883a 	mov	r4,r18
  806f18:	0805c900 	call	805c90 <_free_r>
  806f1c:	9c000217 	ldw	r16,8(r19)
  806f20:	00802074 	movhi	r2,129
  806f24:	1510f517 	ldw	r20,17364(r2)
  806f28:	85400117 	ldw	r21,4(r16)
  806f2c:	003f1b06 	br	806b9c <_malloc_r+0x40c>
  806f30:	18c15568 	cmpgeui	r3,r3,1365
  806f34:	1800091e 	bne	r3,zero,806f5c <_malloc_r+0x7cc>
  806f38:	1006d4ba 	srli	r3,r2,18
  806f3c:	19401f44 	addi	r5,r3,125
  806f40:	280a90fa 	slli	r5,r5,3
  806f44:	19001f04 	addi	r4,r3,124
  806f48:	003f3306 	br	806c18 <_malloc_r+0x488>
  806f4c:	0100fe04 	movi	r4,1016
  806f50:	01c01fc4 	movi	r7,127
  806f54:	02001f84 	movi	r8,126
  806f58:	003e4606 	br	806874 <_malloc_r+0xe4>
  806f5c:	0140fe04 	movi	r5,1016
  806f60:	01001f84 	movi	r4,126
  806f64:	003f2c06 	br	806c18 <_malloc_r+0x488>
  806f68:	98800117 	ldw	r2,4(r19)
  806f6c:	003f9506 	br	806dc4 <_malloc_r+0x634>

00806f70 <memchr>:
  806f70:	208000cc 	andi	r2,r4,3
  806f74:	280f883a 	mov	r7,r5
  806f78:	10000e26 	beq	r2,zero,806fb4 <memchr+0x44>
  806f7c:	30bfffc4 	addi	r2,r6,-1
  806f80:	30001726 	beq	r6,zero,806fe0 <memchr+0x70>
  806f84:	29803fcc 	andi	r6,r5,255
  806f88:	00000606 	br	806fa4 <memchr+0x34>
  806f8c:	21000044 	addi	r4,r4,1
  806f90:	20c000cc 	andi	r3,r4,3
  806f94:	18000826 	beq	r3,zero,806fb8 <memchr+0x48>
  806f98:	10bfffc4 	addi	r2,r2,-1
  806f9c:	10ffffe0 	cmpeqi	r3,r2,-1
  806fa0:	18000f1e 	bne	r3,zero,806fe0 <memchr+0x70>
  806fa4:	20c00003 	ldbu	r3,0(r4)
  806fa8:	19bff81e 	bne	r3,r6,806f8c <memchr+0x1c>
  806fac:	2005883a 	mov	r2,r4
  806fb0:	f800283a 	ret
  806fb4:	3005883a 	mov	r2,r6
  806fb8:	10c00128 	cmpgeui	r3,r2,4
  806fbc:	18000a1e 	bne	r3,zero,806fe8 <memchr+0x78>
  806fc0:	10001f26 	beq	r2,zero,807040 <memchr+0xd0>
  806fc4:	2087883a 	add	r3,r4,r2
  806fc8:	39803fcc 	andi	r6,r7,255
  806fcc:	2005883a 	mov	r2,r4
  806fd0:	11000003 	ldbu	r4,0(r2)
  806fd4:	21bff626 	beq	r4,r6,806fb0 <memchr+0x40>
  806fd8:	10800044 	addi	r2,r2,1
  806fdc:	18bffc1e 	bne	r3,r2,806fd0 <memchr+0x60>
  806fe0:	0005883a 	mov	r2,zero
  806fe4:	f800283a 	ret
  806fe8:	2810923a 	slli	r8,r5,8
  806fec:	29403fcc 	andi	r5,r5,255
  806ff0:	027fbff4 	movhi	r9,65279
  806ff4:	423fffcc 	andi	r8,r8,65535
  806ff8:	414ab03a 	or	r5,r8,r5
  806ffc:	2810943a 	slli	r8,r5,16
  807000:	01a02074 	movhi	r6,32897
  807004:	4a7fbfc4 	addi	r9,r9,-257
  807008:	4150b03a 	or	r8,r8,r5
  80700c:	31a02004 	addi	r6,r6,-32640
  807010:	20c00017 	ldw	r3,0(r4)
  807014:	40c6f03a 	xor	r3,r8,r3
  807018:	1a4b883a 	add	r5,r3,r9
  80701c:	00c6303a 	nor	r3,zero,r3
  807020:	28c6703a 	and	r3,r5,r3
  807024:	1986703a 	and	r3,r3,r6
  807028:	183fe61e 	bne	r3,zero,806fc4 <memchr+0x54>
  80702c:	10bfff04 	addi	r2,r2,-4
  807030:	10c00128 	cmpgeui	r3,r2,4
  807034:	21000104 	addi	r4,r4,4
  807038:	183ff51e 	bne	r3,zero,807010 <memchr+0xa0>
  80703c:	003fe006 	br	806fc0 <memchr+0x50>
  807040:	f800283a 	ret

00807044 <memcpy>:
  807044:	30c00430 	cmpltui	r3,r6,16
  807048:	2005883a 	mov	r2,r4
  80704c:	18002d1e 	bne	r3,zero,807104 <memcpy+0xc0>
  807050:	2906b03a 	or	r3,r5,r4
  807054:	18c000cc 	andi	r3,r3,3
  807058:	1800351e 	bne	r3,zero,807130 <memcpy+0xec>
  80705c:	32fffc04 	addi	r11,r6,-16
  807060:	5816d13a 	srli	r11,r11,4
  807064:	280f883a 	mov	r7,r5
  807068:	2007883a 	mov	r3,r4
  80706c:	5ac00044 	addi	r11,r11,1
  807070:	5816913a 	slli	r11,r11,4
  807074:	22d5883a 	add	r10,r4,r11
  807078:	39000117 	ldw	r4,4(r7)
  80707c:	3a400017 	ldw	r9,0(r7)
  807080:	3a000217 	ldw	r8,8(r7)
  807084:	19000115 	stw	r4,4(r3)
  807088:	39000317 	ldw	r4,12(r7)
  80708c:	1a400015 	stw	r9,0(r3)
  807090:	1a000215 	stw	r8,8(r3)
  807094:	19000315 	stw	r4,12(r3)
  807098:	18c00404 	addi	r3,r3,16
  80709c:	39c00404 	addi	r7,r7,16
  8070a0:	50fff51e 	bne	r10,r3,807078 <memcpy+0x34>
  8070a4:	3100030c 	andi	r4,r6,12
  8070a8:	2acb883a 	add	r5,r5,r11
  8070ac:	320003cc 	andi	r8,r6,15
  8070b0:	20002226 	beq	r4,zero,80713c <memcpy+0xf8>
  8070b4:	280f883a 	mov	r7,r5
  8070b8:	1813883a 	mov	r9,r3
  8070bc:	39c00104 	addi	r7,r7,4
  8070c0:	3abfff17 	ldw	r10,-4(r7)
  8070c4:	41c9c83a 	sub	r4,r8,r7
  8070c8:	2909883a 	add	r4,r5,r4
  8070cc:	4a800015 	stw	r10,0(r9)
  8070d0:	21000128 	cmpgeui	r4,r4,4
  8070d4:	4a400104 	addi	r9,r9,4
  8070d8:	203ff81e 	bne	r4,zero,8070bc <memcpy+0x78>
  8070dc:	413fff04 	addi	r4,r8,-4
  8070e0:	2008d0ba 	srli	r4,r4,2
  8070e4:	318000cc 	andi	r6,r6,3
  8070e8:	31ffffc4 	addi	r7,r6,-1
  8070ec:	21000044 	addi	r4,r4,1
  8070f0:	200890ba 	slli	r4,r4,2
  8070f4:	1907883a 	add	r3,r3,r4
  8070f8:	290b883a 	add	r5,r5,r4
  8070fc:	3000041e 	bne	r6,zero,807110 <memcpy+0xcc>
  807100:	f800283a 	ret
  807104:	2007883a 	mov	r3,r4
  807108:	31ffffc4 	addi	r7,r6,-1
  80710c:	303ffc26 	beq	r6,zero,807100 <memcpy+0xbc>
  807110:	39c00044 	addi	r7,r7,1
  807114:	19cf883a 	add	r7,r3,r7
  807118:	29800003 	ldbu	r6,0(r5)
  80711c:	18c00044 	addi	r3,r3,1
  807120:	29400044 	addi	r5,r5,1
  807124:	19bfffc5 	stb	r6,-1(r3)
  807128:	38fffb1e 	bne	r7,r3,807118 <memcpy+0xd4>
  80712c:	f800283a 	ret
  807130:	31ffffc4 	addi	r7,r6,-1
  807134:	2007883a 	mov	r3,r4
  807138:	003ff506 	br	807110 <memcpy+0xcc>
  80713c:	400d883a 	mov	r6,r8
  807140:	003ff106 	br	807108 <memcpy+0xc4>

00807144 <memmove>:
  807144:	2005883a 	mov	r2,r4
  807148:	29000a2e 	bgeu	r5,r4,807174 <memmove+0x30>
  80714c:	2989883a 	add	r4,r5,r6
  807150:	1100082e 	bgeu	r2,r4,807174 <memmove+0x30>
  807154:	1187883a 	add	r3,r2,r6
  807158:	30003e26 	beq	r6,zero,807254 <memmove+0x110>
  80715c:	217fffc3 	ldbu	r5,-1(r4)
  807160:	18ffffc4 	addi	r3,r3,-1
  807164:	213fffc4 	addi	r4,r4,-1
  807168:	19400005 	stb	r5,0(r3)
  80716c:	10fffb1e 	bne	r2,r3,80715c <memmove+0x18>
  807170:	f800283a 	ret
  807174:	30c00430 	cmpltui	r3,r6,16
  807178:	18000b26 	beq	r3,zero,8071a8 <memmove+0x64>
  80717c:	1007883a 	mov	r3,r2
  807180:	31ffffc4 	addi	r7,r6,-1
  807184:	30003726 	beq	r6,zero,807264 <memmove+0x120>
  807188:	39c00044 	addi	r7,r7,1
  80718c:	29cf883a 	add	r7,r5,r7
  807190:	29800003 	ldbu	r6,0(r5)
  807194:	29400044 	addi	r5,r5,1
  807198:	18c00044 	addi	r3,r3,1
  80719c:	19bfffc5 	stb	r6,-1(r3)
  8071a0:	29fffb1e 	bne	r5,r7,807190 <memmove+0x4c>
  8071a4:	f800283a 	ret
  8071a8:	2886b03a 	or	r3,r5,r2
  8071ac:	18c000cc 	andi	r3,r3,3
  8071b0:	1800291e 	bne	r3,zero,807258 <memmove+0x114>
  8071b4:	327ffc04 	addi	r9,r6,-16
  8071b8:	4812d13a 	srli	r9,r9,4
  8071bc:	280f883a 	mov	r7,r5
  8071c0:	1007883a 	mov	r3,r2
  8071c4:	4a400044 	addi	r9,r9,1
  8071c8:	4812913a 	slli	r9,r9,4
  8071cc:	1251883a 	add	r8,r2,r9
  8071d0:	39000017 	ldw	r4,0(r7)
  8071d4:	39c00404 	addi	r7,r7,16
  8071d8:	18c00404 	addi	r3,r3,16
  8071dc:	193ffc15 	stw	r4,-16(r3)
  8071e0:	393ffd17 	ldw	r4,-12(r7)
  8071e4:	193ffd15 	stw	r4,-12(r3)
  8071e8:	393ffe17 	ldw	r4,-8(r7)
  8071ec:	193ffe15 	stw	r4,-8(r3)
  8071f0:	393fff17 	ldw	r4,-4(r7)
  8071f4:	193fff15 	stw	r4,-4(r3)
  8071f8:	40fff51e 	bne	r8,r3,8071d0 <memmove+0x8c>
  8071fc:	3100030c 	andi	r4,r6,12
  807200:	2a4b883a 	add	r5,r5,r9
  807204:	320003cc 	andi	r8,r6,15
  807208:	20001726 	beq	r4,zero,807268 <memmove+0x124>
  80720c:	2813883a 	mov	r9,r5
  807210:	180f883a 	mov	r7,r3
  807214:	4a800017 	ldw	r10,0(r9)
  807218:	39c00104 	addi	r7,r7,4
  80721c:	41c9c83a 	sub	r4,r8,r7
  807220:	1909883a 	add	r4,r3,r4
  807224:	21000128 	cmpgeui	r4,r4,4
  807228:	3abfff15 	stw	r10,-4(r7)
  80722c:	4a400104 	addi	r9,r9,4
  807230:	203ff81e 	bne	r4,zero,807214 <memmove+0xd0>
  807234:	413fff04 	addi	r4,r8,-4
  807238:	2008d0ba 	srli	r4,r4,2
  80723c:	318000cc 	andi	r6,r6,3
  807240:	21000044 	addi	r4,r4,1
  807244:	200890ba 	slli	r4,r4,2
  807248:	1907883a 	add	r3,r3,r4
  80724c:	290b883a 	add	r5,r5,r4
  807250:	003fcb06 	br	807180 <memmove+0x3c>
  807254:	f800283a 	ret
  807258:	31ffffc4 	addi	r7,r6,-1
  80725c:	1007883a 	mov	r3,r2
  807260:	003fc906 	br	807188 <memmove+0x44>
  807264:	f800283a 	ret
  807268:	400d883a 	mov	r6,r8
  80726c:	003fc406 	br	807180 <memmove+0x3c>

00807270 <memset>:
  807270:	20c000cc 	andi	r3,r4,3
  807274:	2005883a 	mov	r2,r4
  807278:	18003626 	beq	r3,zero,807354 <memset+0xe4>
  80727c:	31ffffc4 	addi	r7,r6,-1
  807280:	30003326 	beq	r6,zero,807350 <memset+0xe0>
  807284:	2811883a 	mov	r8,r5
  807288:	2007883a 	mov	r3,r4
  80728c:	00000306 	br	80729c <memset+0x2c>
  807290:	39ffffc4 	addi	r7,r7,-1
  807294:	39bfffe0 	cmpeqi	r6,r7,-1
  807298:	30002d1e 	bne	r6,zero,807350 <memset+0xe0>
  80729c:	18c00044 	addi	r3,r3,1
  8072a0:	198000cc 	andi	r6,r3,3
  8072a4:	1a3fffc5 	stb	r8,-1(r3)
  8072a8:	303ff91e 	bne	r6,zero,807290 <memset+0x20>
  8072ac:	39000130 	cmpltui	r4,r7,4
  8072b0:	2000221e 	bne	r4,zero,80733c <memset+0xcc>
  8072b4:	29003fcc 	andi	r4,r5,255
  8072b8:	200c923a 	slli	r6,r4,8
  8072bc:	3a000430 	cmpltui	r8,r7,16
  8072c0:	3108b03a 	or	r4,r6,r4
  8072c4:	200c943a 	slli	r6,r4,16
  8072c8:	310cb03a 	or	r6,r6,r4
  8072cc:	40000e1e 	bne	r8,zero,807308 <memset+0x98>
  8072d0:	393ffc04 	addi	r4,r7,-16
  8072d4:	2008d13a 	srli	r4,r4,4
  8072d8:	21000044 	addi	r4,r4,1
  8072dc:	2008913a 	slli	r4,r4,4
  8072e0:	1909883a 	add	r4,r3,r4
  8072e4:	19800015 	stw	r6,0(r3)
  8072e8:	19800115 	stw	r6,4(r3)
  8072ec:	19800215 	stw	r6,8(r3)
  8072f0:	19800315 	stw	r6,12(r3)
  8072f4:	18c00404 	addi	r3,r3,16
  8072f8:	20fffa1e 	bne	r4,r3,8072e4 <memset+0x74>
  8072fc:	3900030c 	andi	r4,r7,12
  807300:	39c003cc 	andi	r7,r7,15
  807304:	20000d26 	beq	r4,zero,80733c <memset+0xcc>
  807308:	1811883a 	mov	r8,r3
  80730c:	42000104 	addi	r8,r8,4
  807310:	3a09c83a 	sub	r4,r7,r8
  807314:	1909883a 	add	r4,r3,r4
  807318:	21000128 	cmpgeui	r4,r4,4
  80731c:	41bfff15 	stw	r6,-4(r8)
  807320:	203ffa1e 	bne	r4,zero,80730c <memset+0x9c>
  807324:	393fff04 	addi	r4,r7,-4
  807328:	2008d0ba 	srli	r4,r4,2
  80732c:	39c000cc 	andi	r7,r7,3
  807330:	21000044 	addi	r4,r4,1
  807334:	200890ba 	slli	r4,r4,2
  807338:	1907883a 	add	r3,r3,r4
  80733c:	38000426 	beq	r7,zero,807350 <memset+0xe0>
  807340:	19cf883a 	add	r7,r3,r7
  807344:	18c00044 	addi	r3,r3,1
  807348:	197fffc5 	stb	r5,-1(r3)
  80734c:	38fffd1e 	bne	r7,r3,807344 <memset+0xd4>
  807350:	f800283a 	ret
  807354:	2007883a 	mov	r3,r4
  807358:	300f883a 	mov	r7,r6
  80735c:	003fd306 	br	8072ac <memset+0x3c>

00807360 <_Balloc>:
  807360:	20801317 	ldw	r2,76(r4)
  807364:	defffc04 	addi	sp,sp,-16
  807368:	dc400115 	stw	r17,4(sp)
  80736c:	dc000015 	stw	r16,0(sp)
  807370:	dfc00315 	stw	ra,12(sp)
  807374:	dc800215 	stw	r18,8(sp)
  807378:	2021883a 	mov	r16,r4
  80737c:	2823883a 	mov	r17,r5
  807380:	10000e26 	beq	r2,zero,8073bc <_Balloc+0x5c>
  807384:	880690ba 	slli	r3,r17,2
  807388:	10c7883a 	add	r3,r2,r3
  80738c:	18800017 	ldw	r2,0(r3)
  807390:	10001126 	beq	r2,zero,8073d8 <_Balloc+0x78>
  807394:	11000017 	ldw	r4,0(r2)
  807398:	19000015 	stw	r4,0(r3)
  80739c:	10000415 	stw	zero,16(r2)
  8073a0:	10000315 	stw	zero,12(r2)
  8073a4:	dfc00317 	ldw	ra,12(sp)
  8073a8:	dc800217 	ldw	r18,8(sp)
  8073ac:	dc400117 	ldw	r17,4(sp)
  8073b0:	dc000017 	ldw	r16,0(sp)
  8073b4:	dec00404 	addi	sp,sp,16
  8073b8:	f800283a 	ret
  8073bc:	01800844 	movi	r6,33
  8073c0:	01400104 	movi	r5,4
  8073c4:	080a1c40 	call	80a1c4 <_calloc_r>
  8073c8:	80801315 	stw	r2,76(r16)
  8073cc:	103fed1e 	bne	r2,zero,807384 <_Balloc+0x24>
  8073d0:	0005883a 	mov	r2,zero
  8073d4:	003ff306 	br	8073a4 <_Balloc+0x44>
  8073d8:	04800044 	movi	r18,1
  8073dc:	9464983a 	sll	r18,r18,r17
  8073e0:	01400044 	movi	r5,1
  8073e4:	8009883a 	mov	r4,r16
  8073e8:	91800144 	addi	r6,r18,5
  8073ec:	300c90ba 	slli	r6,r6,2
  8073f0:	080a1c40 	call	80a1c4 <_calloc_r>
  8073f4:	103ff626 	beq	r2,zero,8073d0 <_Balloc+0x70>
  8073f8:	14400115 	stw	r17,4(r2)
  8073fc:	14800215 	stw	r18,8(r2)
  807400:	003fe606 	br	80739c <_Balloc+0x3c>

00807404 <_Bfree>:
  807404:	28000726 	beq	r5,zero,807424 <_Bfree+0x20>
  807408:	28c00117 	ldw	r3,4(r5)
  80740c:	20801317 	ldw	r2,76(r4)
  807410:	180690ba 	slli	r3,r3,2
  807414:	10c5883a 	add	r2,r2,r3
  807418:	10c00017 	ldw	r3,0(r2)
  80741c:	28c00015 	stw	r3,0(r5)
  807420:	11400015 	stw	r5,0(r2)
  807424:	f800283a 	ret

00807428 <__multadd>:
  807428:	defff704 	addi	sp,sp,-36
  80742c:	dc800215 	stw	r18,8(sp)
  807430:	2c800417 	ldw	r18,16(r5)
  807434:	ddc00715 	stw	r23,28(sp)
  807438:	dd800615 	stw	r22,24(sp)
  80743c:	dd400515 	stw	r21,20(sp)
  807440:	dd000415 	stw	r20,16(sp)
  807444:	dcc00315 	stw	r19,12(sp)
  807448:	dc400115 	stw	r17,4(sp)
  80744c:	dfc00815 	stw	ra,32(sp)
  807450:	dc000015 	stw	r16,0(sp)
  807454:	2827883a 	mov	r19,r5
  807458:	2029883a 	mov	r20,r4
  80745c:	302b883a 	mov	r21,r6
  807460:	3823883a 	mov	r17,r7
  807464:	2d800504 	addi	r22,r5,20
  807468:	002f883a 	mov	r23,zero
  80746c:	b4000017 	ldw	r16,0(r22)
  807470:	a80b883a 	mov	r5,r21
  807474:	b5800104 	addi	r22,r22,4
  807478:	813fffcc 	andi	r4,r16,65535
  80747c:	08016d80 	call	8016d8 <__mulsi3>
  807480:	8008d43a 	srli	r4,r16,16
  807484:	a80b883a 	mov	r5,r21
  807488:	1461883a 	add	r16,r2,r17
  80748c:	08016d80 	call	8016d8 <__mulsi3>
  807490:	800ed43a 	srli	r7,r16,16
  807494:	843fffcc 	andi	r16,r16,65535
  807498:	bdc00044 	addi	r23,r23,1
  80749c:	11c5883a 	add	r2,r2,r7
  8074a0:	1006943a 	slli	r3,r2,16
  8074a4:	1022d43a 	srli	r17,r2,16
  8074a8:	1c21883a 	add	r16,r3,r16
  8074ac:	b43fff15 	stw	r16,-4(r22)
  8074b0:	bcbfee16 	blt	r23,r18,80746c <__multadd+0x44>
  8074b4:	88000826 	beq	r17,zero,8074d8 <__multadd+0xb0>
  8074b8:	98800217 	ldw	r2,8(r19)
  8074bc:	9080120e 	bge	r18,r2,807508 <__multadd+0xe0>
  8074c0:	90800144 	addi	r2,r18,5
  8074c4:	100490ba 	slli	r2,r2,2
  8074c8:	94800044 	addi	r18,r18,1
  8074cc:	9885883a 	add	r2,r19,r2
  8074d0:	14400015 	stw	r17,0(r2)
  8074d4:	9c800415 	stw	r18,16(r19)
  8074d8:	9805883a 	mov	r2,r19
  8074dc:	dfc00817 	ldw	ra,32(sp)
  8074e0:	ddc00717 	ldw	r23,28(sp)
  8074e4:	dd800617 	ldw	r22,24(sp)
  8074e8:	dd400517 	ldw	r21,20(sp)
  8074ec:	dd000417 	ldw	r20,16(sp)
  8074f0:	dcc00317 	ldw	r19,12(sp)
  8074f4:	dc800217 	ldw	r18,8(sp)
  8074f8:	dc400117 	ldw	r17,4(sp)
  8074fc:	dc000017 	ldw	r16,0(sp)
  807500:	dec00904 	addi	sp,sp,36
  807504:	f800283a 	ret
  807508:	99400117 	ldw	r5,4(r19)
  80750c:	a009883a 	mov	r4,r20
  807510:	29400044 	addi	r5,r5,1
  807514:	08073600 	call	807360 <_Balloc>
  807518:	1021883a 	mov	r16,r2
  80751c:	10001226 	beq	r2,zero,807568 <__multadd+0x140>
  807520:	99800417 	ldw	r6,16(r19)
  807524:	99400304 	addi	r5,r19,12
  807528:	11000304 	addi	r4,r2,12
  80752c:	31800084 	addi	r6,r6,2
  807530:	300c90ba 	slli	r6,r6,2
  807534:	08070440 	call	807044 <memcpy>
  807538:	98000926 	beq	r19,zero,807560 <__multadd+0x138>
  80753c:	98c00117 	ldw	r3,4(r19)
  807540:	a0801317 	ldw	r2,76(r20)
  807544:	180690ba 	slli	r3,r3,2
  807548:	10c5883a 	add	r2,r2,r3
  80754c:	10c00017 	ldw	r3,0(r2)
  807550:	98c00015 	stw	r3,0(r19)
  807554:	14c00015 	stw	r19,0(r2)
  807558:	8027883a 	mov	r19,r16
  80755c:	003fd806 	br	8074c0 <__multadd+0x98>
  807560:	8027883a 	mov	r19,r16
  807564:	003fd606 	br	8074c0 <__multadd+0x98>
  807568:	01c02074 	movhi	r7,129
  80756c:	01002074 	movhi	r4,129
  807570:	39c1c704 	addi	r7,r7,1820
  807574:	000d883a 	mov	r6,zero
  807578:	01402d44 	movi	r5,181
  80757c:	2101dc04 	addi	r4,r4,1904
  807580:	080a14c0 	call	80a14c <__assert_func>

00807584 <__s2b>:
  807584:	defff904 	addi	sp,sp,-28
  807588:	dc800215 	stw	r18,8(sp)
  80758c:	dc000015 	stw	r16,0(sp)
  807590:	2025883a 	mov	r18,r4
  807594:	2821883a 	mov	r16,r5
  807598:	39000204 	addi	r4,r7,8
  80759c:	01400244 	movi	r5,9
  8075a0:	dcc00315 	stw	r19,12(sp)
  8075a4:	dc400115 	stw	r17,4(sp)
  8075a8:	dfc00615 	stw	ra,24(sp)
  8075ac:	3823883a 	mov	r17,r7
  8075b0:	dd400515 	stw	r21,20(sp)
  8075b4:	dd000415 	stw	r20,16(sp)
  8075b8:	3027883a 	mov	r19,r6
  8075bc:	080baac0 	call	80baac <__divsi3>
  8075c0:	88c00290 	cmplti	r3,r17,10
  8075c4:	1800341e 	bne	r3,zero,807698 <__s2b+0x114>
  8075c8:	00c00044 	movi	r3,1
  8075cc:	000b883a 	mov	r5,zero
  8075d0:	18c7883a 	add	r3,r3,r3
  8075d4:	29400044 	addi	r5,r5,1
  8075d8:	18bffd16 	blt	r3,r2,8075d0 <__s2b+0x4c>
  8075dc:	9009883a 	mov	r4,r18
  8075e0:	08073600 	call	807360 <_Balloc>
  8075e4:	100b883a 	mov	r5,r2
  8075e8:	10002d26 	beq	r2,zero,8076a0 <__s2b+0x11c>
  8075ec:	d8800717 	ldw	r2,28(sp)
  8075f0:	28800515 	stw	r2,20(r5)
  8075f4:	00800044 	movi	r2,1
  8075f8:	28800415 	stw	r2,16(r5)
  8075fc:	98800290 	cmplti	r2,r19,10
  807600:	1000221e 	bne	r2,zero,80768c <__s2b+0x108>
  807604:	85400244 	addi	r21,r16,9
  807608:	a829883a 	mov	r20,r21
  80760c:	84e1883a 	add	r16,r16,r19
  807610:	a1c00007 	ldb	r7,0(r20)
  807614:	01800284 	movi	r6,10
  807618:	9009883a 	mov	r4,r18
  80761c:	39fff404 	addi	r7,r7,-48
  807620:	08074280 	call	807428 <__multadd>
  807624:	a5000044 	addi	r20,r20,1
  807628:	100b883a 	mov	r5,r2
  80762c:	a43ff81e 	bne	r20,r16,807610 <__s2b+0x8c>
  807630:	9c3ffe04 	addi	r16,r19,-8
  807634:	ac21883a 	add	r16,r21,r16
  807638:	9c400a0e 	bge	r19,r17,807664 <__s2b+0xe0>
  80763c:	8ce3c83a 	sub	r17,r17,r19
  807640:	8463883a 	add	r17,r16,r17
  807644:	81c00007 	ldb	r7,0(r16)
  807648:	01800284 	movi	r6,10
  80764c:	9009883a 	mov	r4,r18
  807650:	39fff404 	addi	r7,r7,-48
  807654:	08074280 	call	807428 <__multadd>
  807658:	84000044 	addi	r16,r16,1
  80765c:	100b883a 	mov	r5,r2
  807660:	8c3ff81e 	bne	r17,r16,807644 <__s2b+0xc0>
  807664:	2805883a 	mov	r2,r5
  807668:	dfc00617 	ldw	ra,24(sp)
  80766c:	dd400517 	ldw	r21,20(sp)
  807670:	dd000417 	ldw	r20,16(sp)
  807674:	dcc00317 	ldw	r19,12(sp)
  807678:	dc800217 	ldw	r18,8(sp)
  80767c:	dc400117 	ldw	r17,4(sp)
  807680:	dc000017 	ldw	r16,0(sp)
  807684:	dec00704 	addi	sp,sp,28
  807688:	f800283a 	ret
  80768c:	84000284 	addi	r16,r16,10
  807690:	04c00244 	movi	r19,9
  807694:	003fe806 	br	807638 <__s2b+0xb4>
  807698:	000b883a 	mov	r5,zero
  80769c:	003fcf06 	br	8075dc <__s2b+0x58>
  8076a0:	01c02074 	movhi	r7,129
  8076a4:	01002074 	movhi	r4,129
  8076a8:	39c1c704 	addi	r7,r7,1820
  8076ac:	000d883a 	mov	r6,zero
  8076b0:	01403384 	movi	r5,206
  8076b4:	2101dc04 	addi	r4,r4,1904
  8076b8:	080a14c0 	call	80a14c <__assert_func>

008076bc <__hi0bits>:
  8076bc:	20bfffec 	andhi	r2,r4,65535
  8076c0:	1000131e 	bne	r2,zero,807710 <__hi0bits+0x54>
  8076c4:	2008943a 	slli	r4,r4,16
  8076c8:	00800404 	movi	r2,16
  8076cc:	20ffc02c 	andhi	r3,r4,65280
  8076d0:	1800021e 	bne	r3,zero,8076dc <__hi0bits+0x20>
  8076d4:	2008923a 	slli	r4,r4,8
  8076d8:	10800204 	addi	r2,r2,8
  8076dc:	20fc002c 	andhi	r3,r4,61440
  8076e0:	1800021e 	bne	r3,zero,8076ec <__hi0bits+0x30>
  8076e4:	2008913a 	slli	r4,r4,4
  8076e8:	10800104 	addi	r2,r2,4
  8076ec:	20f0002c 	andhi	r3,r4,49152
  8076f0:	1800021e 	bne	r3,zero,8076fc <__hi0bits+0x40>
  8076f4:	200890ba 	slli	r4,r4,2
  8076f8:	10800084 	addi	r2,r2,2
  8076fc:	20000316 	blt	r4,zero,80770c <__hi0bits+0x50>
  807700:	2110002c 	andhi	r4,r4,16384
  807704:	10800044 	addi	r2,r2,1
  807708:	20000326 	beq	r4,zero,807718 <__hi0bits+0x5c>
  80770c:	f800283a 	ret
  807710:	0005883a 	mov	r2,zero
  807714:	003fed06 	br	8076cc <__hi0bits+0x10>
  807718:	00800804 	movi	r2,32
  80771c:	f800283a 	ret

00807720 <__lo0bits>:
  807720:	20c00017 	ldw	r3,0(r4)
  807724:	188001cc 	andi	r2,r3,7
  807728:	10000826 	beq	r2,zero,80774c <__lo0bits+0x2c>
  80772c:	1880004c 	andi	r2,r3,1
  807730:	10001f1e 	bne	r2,zero,8077b0 <__lo0bits+0x90>
  807734:	1880008c 	andi	r2,r3,2
  807738:	10002126 	beq	r2,zero,8077c0 <__lo0bits+0xa0>
  80773c:	1806d07a 	srli	r3,r3,1
  807740:	00800044 	movi	r2,1
  807744:	20c00015 	stw	r3,0(r4)
  807748:	f800283a 	ret
  80774c:	18bfffcc 	andi	r2,r3,65535
  807750:	10001426 	beq	r2,zero,8077a4 <__lo0bits+0x84>
  807754:	0005883a 	mov	r2,zero
  807758:	19403fcc 	andi	r5,r3,255
  80775c:	2800021e 	bne	r5,zero,807768 <__lo0bits+0x48>
  807760:	1806d23a 	srli	r3,r3,8
  807764:	10800204 	addi	r2,r2,8
  807768:	194003cc 	andi	r5,r3,15
  80776c:	2800021e 	bne	r5,zero,807778 <__lo0bits+0x58>
  807770:	1806d13a 	srli	r3,r3,4
  807774:	10800104 	addi	r2,r2,4
  807778:	194000cc 	andi	r5,r3,3
  80777c:	2800021e 	bne	r5,zero,807788 <__lo0bits+0x68>
  807780:	1806d0ba 	srli	r3,r3,2
  807784:	10800084 	addi	r2,r2,2
  807788:	1940004c 	andi	r5,r3,1
  80778c:	2800031e 	bne	r5,zero,80779c <__lo0bits+0x7c>
  807790:	1806d07a 	srli	r3,r3,1
  807794:	10800044 	addi	r2,r2,1
  807798:	18000726 	beq	r3,zero,8077b8 <__lo0bits+0x98>
  80779c:	20c00015 	stw	r3,0(r4)
  8077a0:	f800283a 	ret
  8077a4:	1806d43a 	srli	r3,r3,16
  8077a8:	00800404 	movi	r2,16
  8077ac:	003fea06 	br	807758 <__lo0bits+0x38>
  8077b0:	0005883a 	mov	r2,zero
  8077b4:	f800283a 	ret
  8077b8:	00800804 	movi	r2,32
  8077bc:	f800283a 	ret
  8077c0:	1806d0ba 	srli	r3,r3,2
  8077c4:	00800084 	movi	r2,2
  8077c8:	20c00015 	stw	r3,0(r4)
  8077cc:	f800283a 	ret

008077d0 <__i2b>:
  8077d0:	defffe04 	addi	sp,sp,-8
  8077d4:	dc000015 	stw	r16,0(sp)
  8077d8:	2821883a 	mov	r16,r5
  8077dc:	01400044 	movi	r5,1
  8077e0:	dfc00115 	stw	ra,4(sp)
  8077e4:	08073600 	call	807360 <_Balloc>
  8077e8:	10000726 	beq	r2,zero,807808 <__i2b+0x38>
  8077ec:	01000044 	movi	r4,1
  8077f0:	14000515 	stw	r16,20(r2)
  8077f4:	11000415 	stw	r4,16(r2)
  8077f8:	dfc00117 	ldw	ra,4(sp)
  8077fc:	dc000017 	ldw	r16,0(sp)
  807800:	dec00204 	addi	sp,sp,8
  807804:	f800283a 	ret
  807808:	01c02074 	movhi	r7,129
  80780c:	01002074 	movhi	r4,129
  807810:	39c1c704 	addi	r7,r7,1820
  807814:	000d883a 	mov	r6,zero
  807818:	01405004 	movi	r5,320
  80781c:	2101dc04 	addi	r4,r4,1904
  807820:	080a14c0 	call	80a14c <__assert_func>

00807824 <__multiply>:
  807824:	defff004 	addi	sp,sp,-64
  807828:	dd800c15 	stw	r22,48(sp)
  80782c:	dc400715 	stw	r17,28(sp)
  807830:	2d800417 	ldw	r22,16(r5)
  807834:	34400417 	ldw	r17,16(r6)
  807838:	dc800815 	stw	r18,32(sp)
  80783c:	dc000615 	stw	r16,24(sp)
  807840:	dfc00f15 	stw	ra,60(sp)
  807844:	df000e15 	stw	fp,56(sp)
  807848:	ddc00d15 	stw	r23,52(sp)
  80784c:	dd400b15 	stw	r21,44(sp)
  807850:	dd000a15 	stw	r20,40(sp)
  807854:	dcc00915 	stw	r19,36(sp)
  807858:	2825883a 	mov	r18,r5
  80785c:	3021883a 	mov	r16,r6
  807860:	b4400516 	blt	r22,r17,807878 <__multiply+0x54>
  807864:	8807883a 	mov	r3,r17
  807868:	2821883a 	mov	r16,r5
  80786c:	b023883a 	mov	r17,r22
  807870:	3025883a 	mov	r18,r6
  807874:	182d883a 	mov	r22,r3
  807878:	80800217 	ldw	r2,8(r16)
  80787c:	8d87883a 	add	r3,r17,r22
  807880:	d8c00115 	stw	r3,4(sp)
  807884:	81400117 	ldw	r5,4(r16)
  807888:	10c0010e 	bge	r2,r3,807890 <__multiply+0x6c>
  80788c:	29400044 	addi	r5,r5,1
  807890:	08073600 	call	807360 <_Balloc>
  807894:	d8800515 	stw	r2,20(sp)
  807898:	10008626 	beq	r2,zero,807ab4 <__multiply+0x290>
  80789c:	d8800117 	ldw	r2,4(sp)
  8078a0:	102690ba 	slli	r19,r2,2
  8078a4:	d8800517 	ldw	r2,20(sp)
  8078a8:	10c00504 	addi	r3,r2,20
  8078ac:	d8c00015 	stw	r3,0(sp)
  8078b0:	1ce7883a 	add	r19,r3,r19
  8078b4:	1805883a 	mov	r2,r3
  8078b8:	1cc0032e 	bgeu	r3,r19,8078c8 <__multiply+0xa4>
  8078bc:	10000015 	stw	zero,0(r2)
  8078c0:	10800104 	addi	r2,r2,4
  8078c4:	14fffd36 	bltu	r2,r19,8078bc <__multiply+0x98>
  8078c8:	b02c90ba 	slli	r22,r22,2
  8078cc:	882290ba 	slli	r17,r17,2
  8078d0:	94800504 	addi	r18,r18,20
  8078d4:	80800504 	addi	r2,r16,20
  8078d8:	9587883a 	add	r3,r18,r22
  8078dc:	d8800315 	stw	r2,12(sp)
  8078e0:	d8c00215 	stw	r3,8(sp)
  8078e4:	1463883a 	add	r17,r2,r17
  8078e8:	90c0342e 	bgeu	r18,r3,8079bc <__multiply+0x198>
  8078ec:	80800544 	addi	r2,r16,21
  8078f0:	88804b36 	bltu	r17,r2,807a20 <__multiply+0x1fc>
  8078f4:	8c05c83a 	sub	r2,r17,r16
  8078f8:	10bffac4 	addi	r2,r2,-21
  8078fc:	1004d0ba 	srli	r2,r2,2
  807900:	10800044 	addi	r2,r2,1
  807904:	100490ba 	slli	r2,r2,2
  807908:	d8800415 	stw	r2,16(sp)
  80790c:	00000606 	br	807928 <__multiply+0x104>
  807910:	d8800017 	ldw	r2,0(sp)
  807914:	94800104 	addi	r18,r18,4
  807918:	10800104 	addi	r2,r2,4
  80791c:	d8800015 	stw	r2,0(sp)
  807920:	d8800217 	ldw	r2,8(sp)
  807924:	9080252e 	bgeu	r18,r2,8079bc <__multiply+0x198>
  807928:	90800017 	ldw	r2,0(r18)
  80792c:	15ffffcc 	andi	r23,r2,65535
  807930:	b800401e 	bne	r23,zero,807a34 <__multiply+0x210>
  807934:	1028d43a 	srli	r20,r2,16
  807938:	a03ff526 	beq	r20,zero,807910 <__multiply+0xec>
  80793c:	dd400017 	ldw	r21,0(sp)
  807940:	dd800317 	ldw	r22,12(sp)
  807944:	0039883a 	mov	fp,zero
  807948:	adc00017 	ldw	r23,0(r21)
  80794c:	b821883a 	mov	r16,r23
  807950:	b100000b 	ldhu	r4,0(r22)
  807954:	a00b883a 	mov	r5,r20
  807958:	ad400104 	addi	r21,r21,4
  80795c:	08016d80 	call	8016d8 <__mulsi3>
  807960:	800cd43a 	srli	r6,r16,16
  807964:	b8ffffcc 	andi	r3,r23,65535
  807968:	b5800104 	addi	r22,r22,4
  80796c:	118d883a 	add	r6,r2,r6
  807970:	3739883a 	add	fp,r6,fp
  807974:	e004943a 	slli	r2,fp,16
  807978:	ac000017 	ldw	r16,0(r21)
  80797c:	a00b883a 	mov	r5,r20
  807980:	10c6b03a 	or	r3,r2,r3
  807984:	a8ffff15 	stw	r3,-4(r21)
  807988:	b13fff8b 	ldhu	r4,-2(r22)
  80798c:	08016d80 	call	8016d8 <__mulsi3>
  807990:	e00cd43a 	srli	r6,fp,16
  807994:	80ffffcc 	andi	r3,r16,65535
  807998:	10c7883a 	add	r3,r2,r3
  80799c:	19af883a 	add	r23,r3,r6
  8079a0:	b838d43a 	srli	fp,r23,16
  8079a4:	b47fea36 	bltu	r22,r17,807950 <__multiply+0x12c>
  8079a8:	d8800017 	ldw	r2,0(sp)
  8079ac:	d8c00417 	ldw	r3,16(sp)
  8079b0:	10c5883a 	add	r2,r2,r3
  8079b4:	15c00015 	stw	r23,0(r2)
  8079b8:	003fd506 	br	807910 <__multiply+0xec>
  8079bc:	d8800117 	ldw	r2,4(sp)
  8079c0:	00800516 	blt	zero,r2,8079d8 <__multiply+0x1b4>
  8079c4:	00000706 	br	8079e4 <__multiply+0x1c0>
  8079c8:	d8800117 	ldw	r2,4(sp)
  8079cc:	10bfffc4 	addi	r2,r2,-1
  8079d0:	d8800115 	stw	r2,4(sp)
  8079d4:	10000326 	beq	r2,zero,8079e4 <__multiply+0x1c0>
  8079d8:	98bfff17 	ldw	r2,-4(r19)
  8079dc:	9cffff04 	addi	r19,r19,-4
  8079e0:	103ff926 	beq	r2,zero,8079c8 <__multiply+0x1a4>
  8079e4:	d8800517 	ldw	r2,20(sp)
  8079e8:	d8c00117 	ldw	r3,4(sp)
  8079ec:	10c00415 	stw	r3,16(r2)
  8079f0:	dfc00f17 	ldw	ra,60(sp)
  8079f4:	df000e17 	ldw	fp,56(sp)
  8079f8:	ddc00d17 	ldw	r23,52(sp)
  8079fc:	dd800c17 	ldw	r22,48(sp)
  807a00:	dd400b17 	ldw	r21,44(sp)
  807a04:	dd000a17 	ldw	r20,40(sp)
  807a08:	dcc00917 	ldw	r19,36(sp)
  807a0c:	dc800817 	ldw	r18,32(sp)
  807a10:	dc400717 	ldw	r17,28(sp)
  807a14:	dc000617 	ldw	r16,24(sp)
  807a18:	dec01004 	addi	sp,sp,64
  807a1c:	f800283a 	ret
  807a20:	00800104 	movi	r2,4
  807a24:	d8800415 	stw	r2,16(sp)
  807a28:	90800017 	ldw	r2,0(r18)
  807a2c:	15ffffcc 	andi	r23,r2,65535
  807a30:	b83fc026 	beq	r23,zero,807934 <__multiply+0x110>
  807a34:	dd800017 	ldw	r22,0(sp)
  807a38:	dd400317 	ldw	r21,12(sp)
  807a3c:	0029883a 	mov	r20,zero
  807a40:	af000017 	ldw	fp,0(r21)
  807a44:	b4000017 	ldw	r16,0(r22)
  807a48:	b80b883a 	mov	r5,r23
  807a4c:	e13fffcc 	andi	r4,fp,65535
  807a50:	08016d80 	call	8016d8 <__mulsi3>
  807a54:	e008d43a 	srli	r4,fp,16
  807a58:	823fffcc 	andi	r8,r16,65535
  807a5c:	1205883a 	add	r2,r2,r8
  807a60:	b80b883a 	mov	r5,r23
  807a64:	1529883a 	add	r20,r2,r20
  807a68:	8020d43a 	srli	r16,r16,16
  807a6c:	08016d80 	call	8016d8 <__mulsi3>
  807a70:	a008d43a 	srli	r4,r20,16
  807a74:	1405883a 	add	r2,r2,r16
  807a78:	a0ffffcc 	andi	r3,r20,65535
  807a7c:	1105883a 	add	r2,r2,r4
  807a80:	1008943a 	slli	r4,r2,16
  807a84:	b5800104 	addi	r22,r22,4
  807a88:	ad400104 	addi	r21,r21,4
  807a8c:	20c6b03a 	or	r3,r4,r3
  807a90:	b0ffff15 	stw	r3,-4(r22)
  807a94:	1028d43a 	srli	r20,r2,16
  807a98:	ac7fe936 	bltu	r21,r17,807a40 <__multiply+0x21c>
  807a9c:	d8800017 	ldw	r2,0(sp)
  807aa0:	d8c00417 	ldw	r3,16(sp)
  807aa4:	10c5883a 	add	r2,r2,r3
  807aa8:	15000015 	stw	r20,0(r2)
  807aac:	90800017 	ldw	r2,0(r18)
  807ab0:	003fa006 	br	807934 <__multiply+0x110>
  807ab4:	01c02074 	movhi	r7,129
  807ab8:	01002074 	movhi	r4,129
  807abc:	39c1c704 	addi	r7,r7,1820
  807ac0:	000d883a 	mov	r6,zero
  807ac4:	01405744 	movi	r5,349
  807ac8:	2101dc04 	addi	r4,r4,1904
  807acc:	080a14c0 	call	80a14c <__assert_func>

00807ad0 <__pow5mult>:
  807ad0:	defffb04 	addi	sp,sp,-20
  807ad4:	dcc00315 	stw	r19,12(sp)
  807ad8:	dc000015 	stw	r16,0(sp)
  807adc:	dfc00415 	stw	ra,16(sp)
  807ae0:	dc800215 	stw	r18,8(sp)
  807ae4:	dc400115 	stw	r17,4(sp)
  807ae8:	308000cc 	andi	r2,r6,3
  807aec:	3021883a 	mov	r16,r6
  807af0:	2027883a 	mov	r19,r4
  807af4:	10002d1e 	bne	r2,zero,807bac <__pow5mult+0xdc>
  807af8:	2825883a 	mov	r18,r5
  807afc:	8021d0ba 	srai	r16,r16,2
  807b00:	80001926 	beq	r16,zero,807b68 <__pow5mult+0x98>
  807b04:	9c401217 	ldw	r17,72(r19)
  807b08:	8800061e 	bne	r17,zero,807b24 <__pow5mult+0x54>
  807b0c:	00002f06 	br	807bcc <__pow5mult+0xfc>
  807b10:	8021d07a 	srai	r16,r16,1
  807b14:	80001426 	beq	r16,zero,807b68 <__pow5mult+0x98>
  807b18:	88800017 	ldw	r2,0(r17)
  807b1c:	10001a26 	beq	r2,zero,807b88 <__pow5mult+0xb8>
  807b20:	1023883a 	mov	r17,r2
  807b24:	8080004c 	andi	r2,r16,1
  807b28:	103ff926 	beq	r2,zero,807b10 <__pow5mult+0x40>
  807b2c:	880d883a 	mov	r6,r17
  807b30:	900b883a 	mov	r5,r18
  807b34:	9809883a 	mov	r4,r19
  807b38:	08078240 	call	807824 <__multiply>
  807b3c:	90001926 	beq	r18,zero,807ba4 <__pow5mult+0xd4>
  807b40:	91000117 	ldw	r4,4(r18)
  807b44:	98c01317 	ldw	r3,76(r19)
  807b48:	8021d07a 	srai	r16,r16,1
  807b4c:	200890ba 	slli	r4,r4,2
  807b50:	1907883a 	add	r3,r3,r4
  807b54:	19000017 	ldw	r4,0(r3)
  807b58:	91000015 	stw	r4,0(r18)
  807b5c:	1c800015 	stw	r18,0(r3)
  807b60:	1025883a 	mov	r18,r2
  807b64:	803fec1e 	bne	r16,zero,807b18 <__pow5mult+0x48>
  807b68:	9005883a 	mov	r2,r18
  807b6c:	dfc00417 	ldw	ra,16(sp)
  807b70:	dcc00317 	ldw	r19,12(sp)
  807b74:	dc800217 	ldw	r18,8(sp)
  807b78:	dc400117 	ldw	r17,4(sp)
  807b7c:	dc000017 	ldw	r16,0(sp)
  807b80:	dec00504 	addi	sp,sp,20
  807b84:	f800283a 	ret
  807b88:	880d883a 	mov	r6,r17
  807b8c:	880b883a 	mov	r5,r17
  807b90:	9809883a 	mov	r4,r19
  807b94:	08078240 	call	807824 <__multiply>
  807b98:	88800015 	stw	r2,0(r17)
  807b9c:	10000015 	stw	zero,0(r2)
  807ba0:	003fdf06 	br	807b20 <__pow5mult+0x50>
  807ba4:	1025883a 	mov	r18,r2
  807ba8:	003fd906 	br	807b10 <__pow5mult+0x40>
  807bac:	100490ba 	slli	r2,r2,2
  807bb0:	00c02074 	movhi	r3,129
  807bb4:	000f883a 	mov	r7,zero
  807bb8:	10c7883a 	add	r3,r2,r3
  807bbc:	1981eb17 	ldw	r6,1964(r3)
  807bc0:	08074280 	call	807428 <__multadd>
  807bc4:	1025883a 	mov	r18,r2
  807bc8:	003fcc06 	br	807afc <__pow5mult+0x2c>
  807bcc:	01409c44 	movi	r5,625
  807bd0:	9809883a 	mov	r4,r19
  807bd4:	08077d00 	call	8077d0 <__i2b>
  807bd8:	98801215 	stw	r2,72(r19)
  807bdc:	1023883a 	mov	r17,r2
  807be0:	10000015 	stw	zero,0(r2)
  807be4:	003fcf06 	br	807b24 <__pow5mult+0x54>

00807be8 <__lshift>:
  807be8:	defff904 	addi	sp,sp,-28
  807bec:	dd400515 	stw	r21,20(sp)
  807bf0:	dc800215 	stw	r18,8(sp)
  807bf4:	302bd17a 	srai	r21,r6,5
  807bf8:	2c800417 	ldw	r18,16(r5)
  807bfc:	28800217 	ldw	r2,8(r5)
  807c00:	dd000415 	stw	r20,16(sp)
  807c04:	aca5883a 	add	r18,r21,r18
  807c08:	dcc00315 	stw	r19,12(sp)
  807c0c:	dc400115 	stw	r17,4(sp)
  807c10:	dc000015 	stw	r16,0(sp)
  807c14:	dfc00615 	stw	ra,24(sp)
  807c18:	94400044 	addi	r17,r18,1
  807c1c:	2821883a 	mov	r16,r5
  807c20:	3029883a 	mov	r20,r6
  807c24:	29400117 	ldw	r5,4(r5)
  807c28:	2027883a 	mov	r19,r4
  807c2c:	1440030e 	bge	r2,r17,807c3c <__lshift+0x54>
  807c30:	1085883a 	add	r2,r2,r2
  807c34:	29400044 	addi	r5,r5,1
  807c38:	147ffd16 	blt	r2,r17,807c30 <__lshift+0x48>
  807c3c:	9809883a 	mov	r4,r19
  807c40:	08073600 	call	807360 <_Balloc>
  807c44:	10004326 	beq	r2,zero,807d54 <__lshift+0x16c>
  807c48:	12000504 	addi	r8,r2,20
  807c4c:	0540090e 	bge	zero,r21,807c74 <__lshift+0x8c>
  807c50:	ad400144 	addi	r21,r21,5
  807c54:	a82a90ba 	slli	r21,r21,2
  807c58:	4007883a 	mov	r3,r8
  807c5c:	1549883a 	add	r4,r2,r21
  807c60:	18c00104 	addi	r3,r3,4
  807c64:	183fff15 	stw	zero,-4(r3)
  807c68:	193ffd1e 	bne	r3,r4,807c60 <__lshift+0x78>
  807c6c:	ad7ffb04 	addi	r21,r21,-20
  807c70:	4551883a 	add	r8,r8,r21
  807c74:	82400417 	ldw	r9,16(r16)
  807c78:	80c00504 	addi	r3,r16,20
  807c7c:	a14007cc 	andi	r5,r20,31
  807c80:	481290ba 	slli	r9,r9,2
  807c84:	1a53883a 	add	r9,r3,r9
  807c88:	28002a26 	beq	r5,zero,807d34 <__lshift+0x14c>
  807c8c:	02800804 	movi	r10,32
  807c90:	5155c83a 	sub	r10,r10,r5
  807c94:	4009883a 	mov	r4,r8
  807c98:	000f883a 	mov	r7,zero
  807c9c:	19800017 	ldw	r6,0(r3)
  807ca0:	21000104 	addi	r4,r4,4
  807ca4:	18c00104 	addi	r3,r3,4
  807ca8:	314c983a 	sll	r6,r6,r5
  807cac:	31ccb03a 	or	r6,r6,r7
  807cb0:	21bfff15 	stw	r6,-4(r4)
  807cb4:	19bfff17 	ldw	r6,-4(r3)
  807cb8:	328ed83a 	srl	r7,r6,r10
  807cbc:	1a7ff736 	bltu	r3,r9,807c9c <__lshift+0xb4>
  807cc0:	80c00544 	addi	r3,r16,21
  807cc4:	48c02136 	bltu	r9,r3,807d4c <__lshift+0x164>
  807cc8:	4c07c83a 	sub	r3,r9,r16
  807ccc:	18fffac4 	addi	r3,r3,-21
  807cd0:	1806d0ba 	srli	r3,r3,2
  807cd4:	18c00044 	addi	r3,r3,1
  807cd8:	180690ba 	slli	r3,r3,2
  807cdc:	40d1883a 	add	r8,r8,r3
  807ce0:	41c00015 	stw	r7,0(r8)
  807ce4:	38000126 	beq	r7,zero,807cec <__lshift+0x104>
  807ce8:	8825883a 	mov	r18,r17
  807cec:	14800415 	stw	r18,16(r2)
  807cf0:	80000726 	beq	r16,zero,807d10 <__lshift+0x128>
  807cf4:	81000117 	ldw	r4,4(r16)
  807cf8:	98c01317 	ldw	r3,76(r19)
  807cfc:	200890ba 	slli	r4,r4,2
  807d00:	1907883a 	add	r3,r3,r4
  807d04:	19000017 	ldw	r4,0(r3)
  807d08:	81000015 	stw	r4,0(r16)
  807d0c:	1c000015 	stw	r16,0(r3)
  807d10:	dfc00617 	ldw	ra,24(sp)
  807d14:	dd400517 	ldw	r21,20(sp)
  807d18:	dd000417 	ldw	r20,16(sp)
  807d1c:	dcc00317 	ldw	r19,12(sp)
  807d20:	dc800217 	ldw	r18,8(sp)
  807d24:	dc400117 	ldw	r17,4(sp)
  807d28:	dc000017 	ldw	r16,0(sp)
  807d2c:	dec00704 	addi	sp,sp,28
  807d30:	f800283a 	ret
  807d34:	19000017 	ldw	r4,0(r3)
  807d38:	18c00104 	addi	r3,r3,4
  807d3c:	42000104 	addi	r8,r8,4
  807d40:	413fff15 	stw	r4,-4(r8)
  807d44:	1a7ffb36 	bltu	r3,r9,807d34 <__lshift+0x14c>
  807d48:	003fe806 	br	807cec <__lshift+0x104>
  807d4c:	00c00104 	movi	r3,4
  807d50:	003fe206 	br	807cdc <__lshift+0xf4>
  807d54:	01c02074 	movhi	r7,129
  807d58:	01002074 	movhi	r4,129
  807d5c:	39c1c704 	addi	r7,r7,1820
  807d60:	000d883a 	mov	r6,zero
  807d64:	01407644 	movi	r5,473
  807d68:	2101dc04 	addi	r4,r4,1904
  807d6c:	080a14c0 	call	80a14c <__assert_func>

00807d70 <__mcmp>:
  807d70:	21800417 	ldw	r6,16(r4)
  807d74:	28c00417 	ldw	r3,16(r5)
  807d78:	30c5c83a 	sub	r2,r6,r3
  807d7c:	30c00e1e 	bne	r6,r3,807db8 <__mcmp+0x48>
  807d80:	180690ba 	slli	r3,r3,2
  807d84:	21c00504 	addi	r7,r4,20
  807d88:	29400504 	addi	r5,r5,20
  807d8c:	38c9883a 	add	r4,r7,r3
  807d90:	28c7883a 	add	r3,r5,r3
  807d94:	00000106 	br	807d9c <__mcmp+0x2c>
  807d98:	3900082e 	bgeu	r7,r4,807dbc <__mcmp+0x4c>
  807d9c:	21bfff17 	ldw	r6,-4(r4)
  807da0:	197fff17 	ldw	r5,-4(r3)
  807da4:	213fff04 	addi	r4,r4,-4
  807da8:	18ffff04 	addi	r3,r3,-4
  807dac:	317ffa26 	beq	r6,r5,807d98 <__mcmp+0x28>
  807db0:	3140032e 	bgeu	r6,r5,807dc0 <__mcmp+0x50>
  807db4:	00bfffc4 	movi	r2,-1
  807db8:	f800283a 	ret
  807dbc:	f800283a 	ret
  807dc0:	00800044 	movi	r2,1
  807dc4:	f800283a 	ret

00807dc8 <__mdiff>:
  807dc8:	28800417 	ldw	r2,16(r5)
  807dcc:	30c00417 	ldw	r3,16(r6)
  807dd0:	defffc04 	addi	sp,sp,-16
  807dd4:	dc800215 	stw	r18,8(sp)
  807dd8:	dc400115 	stw	r17,4(sp)
  807ddc:	dc000015 	stw	r16,0(sp)
  807de0:	dfc00315 	stw	ra,12(sp)
  807de4:	2823883a 	mov	r17,r5
  807de8:	3021883a 	mov	r16,r6
  807dec:	10e5c83a 	sub	r18,r2,r3
  807df0:	10c0641e 	bne	r2,r3,807f84 <__mdiff+0x1bc>
  807df4:	180c90ba 	slli	r6,r3,2
  807df8:	29400504 	addi	r5,r5,20
  807dfc:	80c00504 	addi	r3,r16,20
  807e00:	2985883a 	add	r2,r5,r6
  807e04:	1987883a 	add	r3,r3,r6
  807e08:	00000106 	br	807e10 <__mdiff+0x48>
  807e0c:	2880642e 	bgeu	r5,r2,807fa0 <__mdiff+0x1d8>
  807e10:	11ffff17 	ldw	r7,-4(r2)
  807e14:	19bfff17 	ldw	r6,-4(r3)
  807e18:	10bfff04 	addi	r2,r2,-4
  807e1c:	18ffff04 	addi	r3,r3,-4
  807e20:	39bffa26 	beq	r7,r6,807e0c <__mdiff+0x44>
  807e24:	39805236 	bltu	r7,r6,807f70 <__mdiff+0x1a8>
  807e28:	89400117 	ldw	r5,4(r17)
  807e2c:	08073600 	call	807360 <_Balloc>
  807e30:	10006226 	beq	r2,zero,807fbc <__mdiff+0x1f4>
  807e34:	8a400417 	ldw	r9,16(r17)
  807e38:	83000417 	ldw	r12,16(r16)
  807e3c:	8ac00504 	addi	r11,r17,20
  807e40:	481090ba 	slli	r8,r9,2
  807e44:	601890ba 	slli	r12,r12,2
  807e48:	81800504 	addi	r6,r16,20
  807e4c:	13400504 	addi	r13,r2,20
  807e50:	14800315 	stw	r18,12(r2)
  807e54:	5a11883a 	add	r8,r11,r8
  807e58:	3319883a 	add	r12,r6,r12
  807e5c:	681d883a 	mov	r14,r13
  807e60:	5815883a 	mov	r10,r11
  807e64:	0007883a 	mov	r3,zero
  807e68:	51000017 	ldw	r4,0(r10)
  807e6c:	31c00017 	ldw	r7,0(r6)
  807e70:	73800104 	addi	r14,r14,4
  807e74:	217fffcc 	andi	r5,r4,65535
  807e78:	28cb883a 	add	r5,r5,r3
  807e7c:	38ffffcc 	andi	r3,r7,65535
  807e80:	28cbc83a 	sub	r5,r5,r3
  807e84:	380ed43a 	srli	r7,r7,16
  807e88:	2006d43a 	srli	r3,r4,16
  807e8c:	2809d43a 	srai	r4,r5,16
  807e90:	297fffcc 	andi	r5,r5,65535
  807e94:	19c7c83a 	sub	r3,r3,r7
  807e98:	1907883a 	add	r3,r3,r4
  807e9c:	1808943a 	slli	r4,r3,16
  807ea0:	31800104 	addi	r6,r6,4
  807ea4:	1807d43a 	srai	r3,r3,16
  807ea8:	214ab03a 	or	r5,r4,r5
  807eac:	717fff15 	stw	r5,-4(r14)
  807eb0:	52800104 	addi	r10,r10,4
  807eb4:	333fec36 	bltu	r6,r12,807e68 <__mdiff+0xa0>
  807eb8:	640fc83a 	sub	r7,r12,r16
  807ebc:	39fffac4 	addi	r7,r7,-21
  807ec0:	84000544 	addi	r16,r16,21
  807ec4:	380ed0ba 	srli	r7,r7,2
  807ec8:	64003336 	bltu	r12,r16,807f98 <__mdiff+0x1d0>
  807ecc:	380890ba 	slli	r4,r7,2
  807ed0:	6909883a 	add	r4,r13,r4
  807ed4:	64002e36 	bltu	r12,r16,807f90 <__mdiff+0x1c8>
  807ed8:	39800044 	addi	r6,r7,1
  807edc:	300c90ba 	slli	r6,r6,2
  807ee0:	5997883a 	add	r11,r11,r6
  807ee4:	699b883a 	add	r13,r13,r6
  807ee8:	5a00152e 	bgeu	r11,r8,807f40 <__mdiff+0x178>
  807eec:	680f883a 	mov	r7,r13
  807ef0:	580d883a 	mov	r6,r11
  807ef4:	31000017 	ldw	r4,0(r6)
  807ef8:	39c00104 	addi	r7,r7,4
  807efc:	31800104 	addi	r6,r6,4
  807f00:	217fffcc 	andi	r5,r4,65535
  807f04:	28cb883a 	add	r5,r5,r3
  807f08:	2815d43a 	srai	r10,r5,16
  807f0c:	2006d43a 	srli	r3,r4,16
  807f10:	297fffcc 	andi	r5,r5,65535
  807f14:	1a87883a 	add	r3,r3,r10
  807f18:	1814943a 	slli	r10,r3,16
  807f1c:	1807d43a 	srai	r3,r3,16
  807f20:	514ab03a 	or	r5,r10,r5
  807f24:	397fff15 	stw	r5,-4(r7)
  807f28:	323ff236 	bltu	r6,r8,807ef4 <__mdiff+0x12c>
  807f2c:	413fffc4 	addi	r4,r8,-1
  807f30:	22c9c83a 	sub	r4,r4,r11
  807f34:	2008d0ba 	srli	r4,r4,2
  807f38:	200890ba 	slli	r4,r4,2
  807f3c:	6909883a 	add	r4,r13,r4
  807f40:	2800041e 	bne	r5,zero,807f54 <__mdiff+0x18c>
  807f44:	20ffff17 	ldw	r3,-4(r4)
  807f48:	4a7fffc4 	addi	r9,r9,-1
  807f4c:	213fff04 	addi	r4,r4,-4
  807f50:	183ffc26 	beq	r3,zero,807f44 <__mdiff+0x17c>
  807f54:	12400415 	stw	r9,16(r2)
  807f58:	dfc00317 	ldw	ra,12(sp)
  807f5c:	dc800217 	ldw	r18,8(sp)
  807f60:	dc400117 	ldw	r17,4(sp)
  807f64:	dc000017 	ldw	r16,0(sp)
  807f68:	dec00404 	addi	sp,sp,16
  807f6c:	f800283a 	ret
  807f70:	8805883a 	mov	r2,r17
  807f74:	04800044 	movi	r18,1
  807f78:	8023883a 	mov	r17,r16
  807f7c:	1021883a 	mov	r16,r2
  807f80:	003fa906 	br	807e28 <__mdiff+0x60>
  807f84:	903ffa16 	blt	r18,zero,807f70 <__mdiff+0x1a8>
  807f88:	0025883a 	mov	r18,zero
  807f8c:	003fa606 	br	807e28 <__mdiff+0x60>
  807f90:	01800104 	movi	r6,4
  807f94:	003fd206 	br	807ee0 <__mdiff+0x118>
  807f98:	0009883a 	mov	r4,zero
  807f9c:	003fcc06 	br	807ed0 <__mdiff+0x108>
  807fa0:	000b883a 	mov	r5,zero
  807fa4:	08073600 	call	807360 <_Balloc>
  807fa8:	10000b26 	beq	r2,zero,807fd8 <__mdiff+0x210>
  807fac:	00c00044 	movi	r3,1
  807fb0:	10c00415 	stw	r3,16(r2)
  807fb4:	10000515 	stw	zero,20(r2)
  807fb8:	003fe706 	br	807f58 <__mdiff+0x190>
  807fbc:	01c02074 	movhi	r7,129
  807fc0:	01002074 	movhi	r4,129
  807fc4:	39c1c704 	addi	r7,r7,1820
  807fc8:	000d883a 	mov	r6,zero
  807fcc:	01409004 	movi	r5,576
  807fd0:	2101dc04 	addi	r4,r4,1904
  807fd4:	080a14c0 	call	80a14c <__assert_func>
  807fd8:	01c02074 	movhi	r7,129
  807fdc:	01002074 	movhi	r4,129
  807fe0:	39c1c704 	addi	r7,r7,1820
  807fe4:	000d883a 	mov	r6,zero
  807fe8:	01408c84 	movi	r5,562
  807fec:	2101dc04 	addi	r4,r4,1904
  807ff0:	080a14c0 	call	80a14c <__assert_func>

00807ff4 <__ulp>:
  807ff4:	28dffc2c 	andhi	r3,r5,32752
  807ff8:	017f3034 	movhi	r5,64704
  807ffc:	1947883a 	add	r3,r3,r5
  808000:	00c0020e 	bge	zero,r3,80800c <__ulp+0x18>
  808004:	0005883a 	mov	r2,zero
  808008:	f800283a 	ret
  80800c:	00c7c83a 	sub	r3,zero,r3
  808010:	1807d53a 	srai	r3,r3,20
  808014:	18800508 	cmpgei	r2,r3,20
  808018:	1000041e 	bne	r2,zero,80802c <__ulp+0x38>
  80801c:	00800234 	movhi	r2,8
  808020:	10c7d83a 	sra	r3,r2,r3
  808024:	0005883a 	mov	r2,zero
  808028:	f800283a 	ret
  80802c:	193ffb04 	addi	r4,r3,-20
  808030:	208007c8 	cmpgei	r2,r4,31
  808034:	0007883a 	mov	r3,zero
  808038:	1000031e 	bne	r2,zero,808048 <__ulp+0x54>
  80803c:	00a00034 	movhi	r2,32768
  808040:	1104d83a 	srl	r2,r2,r4
  808044:	f800283a 	ret
  808048:	00800044 	movi	r2,1
  80804c:	f800283a 	ret

00808050 <__b2d>:
  808050:	defffa04 	addi	sp,sp,-24
  808054:	dc400115 	stw	r17,4(sp)
  808058:	24400417 	ldw	r17,16(r4)
  80805c:	dc000015 	stw	r16,0(sp)
  808060:	24000504 	addi	r16,r4,20
  808064:	882290ba 	slli	r17,r17,2
  808068:	dc800215 	stw	r18,8(sp)
  80806c:	dd000415 	stw	r20,16(sp)
  808070:	8463883a 	add	r17,r16,r17
  808074:	8cbfff17 	ldw	r18,-4(r17)
  808078:	dcc00315 	stw	r19,12(sp)
  80807c:	dfc00515 	stw	ra,20(sp)
  808080:	9009883a 	mov	r4,r18
  808084:	2827883a 	mov	r19,r5
  808088:	08076bc0 	call	8076bc <__hi0bits>
  80808c:	01000804 	movi	r4,32
  808090:	2087c83a 	sub	r3,r4,r2
  808094:	98c00015 	stw	r3,0(r19)
  808098:	10c002c8 	cmpgei	r3,r2,11
  80809c:	8d3fff04 	addi	r20,r17,-4
  8080a0:	18001f26 	beq	r3,zero,808120 <__b2d+0xd0>
  8080a4:	10fffd44 	addi	r3,r2,-11
  8080a8:	85000e2e 	bgeu	r16,r20,8080e4 <__b2d+0x94>
  8080ac:	88bffe17 	ldw	r2,-8(r17)
  8080b0:	18001226 	beq	r3,zero,8080fc <__b2d+0xac>
  8080b4:	20c9c83a 	sub	r4,r4,r3
  8080b8:	110cd83a 	srl	r6,r2,r4
  8080bc:	90e4983a 	sll	r18,r18,r3
  8080c0:	10c4983a 	sll	r2,r2,r3
  8080c4:	897ffe04 	addi	r5,r17,-8
  8080c8:	9186b03a 	or	r3,r18,r6
  8080cc:	18cffc34 	orhi	r3,r3,16368
  8080d0:	81400b2e 	bgeu	r16,r5,808100 <__b2d+0xb0>
  8080d4:	897ffd17 	ldw	r5,-12(r17)
  8080d8:	2908d83a 	srl	r4,r5,r4
  8080dc:	1104b03a 	or	r2,r2,r4
  8080e0:	00000706 	br	808100 <__b2d+0xb0>
  8080e4:	18000426 	beq	r3,zero,8080f8 <__b2d+0xa8>
  8080e8:	90c6983a 	sll	r3,r18,r3
  8080ec:	0005883a 	mov	r2,zero
  8080f0:	18cffc34 	orhi	r3,r3,16368
  8080f4:	00000206 	br	808100 <__b2d+0xb0>
  8080f8:	0005883a 	mov	r2,zero
  8080fc:	90cffc34 	orhi	r3,r18,16368
  808100:	dfc00517 	ldw	ra,20(sp)
  808104:	dd000417 	ldw	r20,16(sp)
  808108:	dcc00317 	ldw	r19,12(sp)
  80810c:	dc800217 	ldw	r18,8(sp)
  808110:	dc400117 	ldw	r17,4(sp)
  808114:	dc000017 	ldw	r16,0(sp)
  808118:	dec00604 	addi	sp,sp,24
  80811c:	f800283a 	ret
  808120:	014002c4 	movi	r5,11
  808124:	2889c83a 	sub	r4,r5,r2
  808128:	9106d83a 	srl	r3,r18,r4
  80812c:	18cffc34 	orhi	r3,r3,16368
  808130:	85000536 	bltu	r16,r20,808148 <__b2d+0xf8>
  808134:	000b883a 	mov	r5,zero
  808138:	10800544 	addi	r2,r2,21
  80813c:	9084983a 	sll	r2,r18,r2
  808140:	1144b03a 	or	r2,r2,r5
  808144:	003fee06 	br	808100 <__b2d+0xb0>
  808148:	897ffe17 	ldw	r5,-8(r17)
  80814c:	290ad83a 	srl	r5,r5,r4
  808150:	003ff906 	br	808138 <__b2d+0xe8>

00808154 <__d2b>:
  808154:	defff804 	addi	sp,sp,-32
  808158:	dd000615 	stw	r20,24(sp)
  80815c:	2829883a 	mov	r20,r5
  808160:	01400044 	movi	r5,1
  808164:	dcc00515 	stw	r19,20(sp)
  808168:	dc000215 	stw	r16,8(sp)
  80816c:	dfc00715 	stw	ra,28(sp)
  808170:	dc800415 	stw	r18,16(sp)
  808174:	dc400315 	stw	r17,12(sp)
  808178:	3021883a 	mov	r16,r6
  80817c:	3827883a 	mov	r19,r7
  808180:	08073600 	call	807360 <_Balloc>
  808184:	10004526 	beq	r2,zero,80829c <__d2b+0x148>
  808188:	8024d53a 	srli	r18,r16,20
  80818c:	01800434 	movhi	r6,16
  808190:	31bfffc4 	addi	r6,r6,-1
  808194:	9481ffcc 	andi	r18,r18,2047
  808198:	1023883a 	mov	r17,r2
  80819c:	81a0703a 	and	r16,r16,r6
  8081a0:	90000126 	beq	r18,zero,8081a8 <__d2b+0x54>
  8081a4:	84000434 	orhi	r16,r16,16
  8081a8:	dc000115 	stw	r16,4(sp)
  8081ac:	a0002226 	beq	r20,zero,808238 <__d2b+0xe4>
  8081b0:	d809883a 	mov	r4,sp
  8081b4:	dd000015 	stw	r20,0(sp)
  8081b8:	08077200 	call	807720 <__lo0bits>
  8081bc:	d8c00117 	ldw	r3,4(sp)
  8081c0:	10003326 	beq	r2,zero,808290 <__d2b+0x13c>
  8081c4:	01000804 	movi	r4,32
  8081c8:	2089c83a 	sub	r4,r4,r2
  8081cc:	1908983a 	sll	r4,r3,r4
  8081d0:	d9400017 	ldw	r5,0(sp)
  8081d4:	1886d83a 	srl	r3,r3,r2
  8081d8:	2148b03a 	or	r4,r4,r5
  8081dc:	89000515 	stw	r4,20(r17)
  8081e0:	d8c00115 	stw	r3,4(sp)
  8081e4:	88c00615 	stw	r3,24(r17)
  8081e8:	1800271e 	bne	r3,zero,808288 <__d2b+0x134>
  8081ec:	04000044 	movi	r16,1
  8081f0:	8c000415 	stw	r16,16(r17)
  8081f4:	90001926 	beq	r18,zero,80825c <__d2b+0x108>
  8081f8:	00c00d44 	movi	r3,53
  8081fc:	94bef344 	addi	r18,r18,-1075
  808200:	90a5883a 	add	r18,r18,r2
  808204:	1885c83a 	sub	r2,r3,r2
  808208:	d8c00817 	ldw	r3,32(sp)
  80820c:	9c800015 	stw	r18,0(r19)
  808210:	18800015 	stw	r2,0(r3)
  808214:	8805883a 	mov	r2,r17
  808218:	dfc00717 	ldw	ra,28(sp)
  80821c:	dd000617 	ldw	r20,24(sp)
  808220:	dcc00517 	ldw	r19,20(sp)
  808224:	dc800417 	ldw	r18,16(sp)
  808228:	dc400317 	ldw	r17,12(sp)
  80822c:	dc000217 	ldw	r16,8(sp)
  808230:	dec00804 	addi	sp,sp,32
  808234:	f800283a 	ret
  808238:	d9000104 	addi	r4,sp,4
  80823c:	08077200 	call	807720 <__lo0bits>
  808240:	00c00044 	movi	r3,1
  808244:	88c00415 	stw	r3,16(r17)
  808248:	d8c00117 	ldw	r3,4(sp)
  80824c:	10800804 	addi	r2,r2,32
  808250:	04000044 	movi	r16,1
  808254:	88c00515 	stw	r3,20(r17)
  808258:	903fe71e 	bne	r18,zero,8081f8 <__d2b+0xa4>
  80825c:	800690ba 	slli	r3,r16,2
  808260:	10bef384 	addi	r2,r2,-1074
  808264:	98800015 	stw	r2,0(r19)
  808268:	88c5883a 	add	r2,r17,r3
  80826c:	11000417 	ldw	r4,16(r2)
  808270:	8020917a 	slli	r16,r16,5
  808274:	08076bc0 	call	8076bc <__hi0bits>
  808278:	80a1c83a 	sub	r16,r16,r2
  80827c:	d8800817 	ldw	r2,32(sp)
  808280:	14000015 	stw	r16,0(r2)
  808284:	003fe306 	br	808214 <__d2b+0xc0>
  808288:	04000084 	movi	r16,2
  80828c:	003fd806 	br	8081f0 <__d2b+0x9c>
  808290:	d9000017 	ldw	r4,0(sp)
  808294:	89000515 	stw	r4,20(r17)
  808298:	003fd206 	br	8081e4 <__d2b+0x90>
  80829c:	01c02074 	movhi	r7,129
  8082a0:	01002074 	movhi	r4,129
  8082a4:	39c1c704 	addi	r7,r7,1820
  8082a8:	000d883a 	mov	r6,zero
  8082ac:	0140c284 	movi	r5,778
  8082b0:	2101dc04 	addi	r4,r4,1904
  8082b4:	080a14c0 	call	80a14c <__assert_func>

008082b8 <__ratio>:
  8082b8:	defff904 	addi	sp,sp,-28
  8082bc:	dc400315 	stw	r17,12(sp)
  8082c0:	2823883a 	mov	r17,r5
  8082c4:	d80b883a 	mov	r5,sp
  8082c8:	dfc00615 	stw	ra,24(sp)
  8082cc:	dcc00515 	stw	r19,20(sp)
  8082d0:	dc800415 	stw	r18,16(sp)
  8082d4:	2027883a 	mov	r19,r4
  8082d8:	dc000215 	stw	r16,8(sp)
  8082dc:	08080500 	call	808050 <__b2d>
  8082e0:	d9400104 	addi	r5,sp,4
  8082e4:	8809883a 	mov	r4,r17
  8082e8:	1025883a 	mov	r18,r2
  8082ec:	1821883a 	mov	r16,r3
  8082f0:	08080500 	call	808050 <__b2d>
  8082f4:	89400417 	ldw	r5,16(r17)
  8082f8:	99000417 	ldw	r4,16(r19)
  8082fc:	d9800117 	ldw	r6,4(sp)
  808300:	180f883a 	mov	r7,r3
  808304:	2149c83a 	sub	r4,r4,r5
  808308:	d9400017 	ldw	r5,0(sp)
  80830c:	2008917a 	slli	r4,r4,5
  808310:	298bc83a 	sub	r5,r5,r6
  808314:	2149883a 	add	r4,r4,r5
  808318:	100d883a 	mov	r6,r2
  80831c:	01000c0e 	bge	zero,r4,808350 <__ratio+0x98>
  808320:	2008953a 	slli	r4,r4,20
  808324:	2421883a 	add	r16,r4,r16
  808328:	9009883a 	mov	r4,r18
  80832c:	800b883a 	mov	r5,r16
  808330:	080c5d80 	call	80c5d8 <__divdf3>
  808334:	dfc00617 	ldw	ra,24(sp)
  808338:	dcc00517 	ldw	r19,20(sp)
  80833c:	dc800417 	ldw	r18,16(sp)
  808340:	dc400317 	ldw	r17,12(sp)
  808344:	dc000217 	ldw	r16,8(sp)
  808348:	dec00704 	addi	sp,sp,28
  80834c:	f800283a 	ret
  808350:	2008953a 	slli	r4,r4,20
  808354:	190fc83a 	sub	r7,r3,r4
  808358:	003ff306 	br	808328 <__ratio+0x70>

0080835c <_mprec_log10>:
  80835c:	defffe04 	addi	sp,sp,-8
  808360:	dc000015 	stw	r16,0(sp)
  808364:	dfc00115 	stw	ra,4(sp)
  808368:	20800608 	cmpgei	r2,r4,24
  80836c:	2021883a 	mov	r16,r4
  808370:	10000f26 	beq	r2,zero,8083b0 <_mprec_log10+0x54>
  808374:	0009883a 	mov	r4,zero
  808378:	014ffc34 	movhi	r5,16368
  80837c:	000d883a 	mov	r6,zero
  808380:	01d00934 	movhi	r7,16420
  808384:	0800d500 	call	800d50 <__muldf3>
  808388:	843fffc4 	addi	r16,r16,-1
  80838c:	1009883a 	mov	r4,r2
  808390:	180b883a 	mov	r5,r3
  808394:	803ff91e 	bne	r16,zero,80837c <_mprec_log10+0x20>
  808398:	2005883a 	mov	r2,r4
  80839c:	2807883a 	mov	r3,r5
  8083a0:	dfc00117 	ldw	ra,4(sp)
  8083a4:	dc000017 	ldw	r16,0(sp)
  8083a8:	dec00204 	addi	sp,sp,8
  8083ac:	f800283a 	ret
  8083b0:	202090fa 	slli	r16,r4,3
  8083b4:	00802074 	movhi	r2,129
  8083b8:	10820304 	addi	r2,r2,2060
  8083bc:	1421883a 	add	r16,r2,r16
  8083c0:	81000017 	ldw	r4,0(r16)
  8083c4:	81400117 	ldw	r5,4(r16)
  8083c8:	003ff306 	br	808398 <_mprec_log10+0x3c>

008083cc <__copybits>:
  8083cc:	297fffc4 	addi	r5,r5,-1
  8083d0:	280fd17a 	srai	r7,r5,5
  8083d4:	31400417 	ldw	r5,16(r6)
  8083d8:	30800504 	addi	r2,r6,20
  8083dc:	39c00044 	addi	r7,r7,1
  8083e0:	280a90ba 	slli	r5,r5,2
  8083e4:	380e90ba 	slli	r7,r7,2
  8083e8:	114b883a 	add	r5,r2,r5
  8083ec:	21cf883a 	add	r7,r4,r7
  8083f0:	11400c2e 	bgeu	r2,r5,808424 <__copybits+0x58>
  8083f4:	2007883a 	mov	r3,r4
  8083f8:	12000017 	ldw	r8,0(r2)
  8083fc:	10800104 	addi	r2,r2,4
  808400:	18c00104 	addi	r3,r3,4
  808404:	1a3fff15 	stw	r8,-4(r3)
  808408:	117ffb36 	bltu	r2,r5,8083f8 <__copybits+0x2c>
  80840c:	2985c83a 	sub	r2,r5,r6
  808410:	10bffac4 	addi	r2,r2,-21
  808414:	1004d0ba 	srli	r2,r2,2
  808418:	10800044 	addi	r2,r2,1
  80841c:	100490ba 	slli	r2,r2,2
  808420:	2089883a 	add	r4,r4,r2
  808424:	21c0032e 	bgeu	r4,r7,808434 <__copybits+0x68>
  808428:	21000104 	addi	r4,r4,4
  80842c:	203fff15 	stw	zero,-4(r4)
  808430:	21fffd36 	bltu	r4,r7,808428 <__copybits+0x5c>
  808434:	f800283a 	ret

00808438 <__any_on>:
  808438:	20c00417 	ldw	r3,16(r4)
  80843c:	280dd17a 	srai	r6,r5,5
  808440:	21000504 	addi	r4,r4,20
  808444:	1980080e 	bge	r3,r6,808468 <__any_on+0x30>
  808448:	180490ba 	slli	r2,r3,2
  80844c:	2085883a 	add	r2,r4,r2
  808450:	20800f2e 	bgeu	r4,r2,808490 <__any_on+0x58>
  808454:	10ffff17 	ldw	r3,-4(r2)
  808458:	10bfff04 	addi	r2,r2,-4
  80845c:	183ffc26 	beq	r3,zero,808450 <__any_on+0x18>
  808460:	00800044 	movi	r2,1
  808464:	f800283a 	ret
  808468:	300490ba 	slli	r2,r6,2
  80846c:	2085883a 	add	r2,r4,r2
  808470:	30fff70e 	bge	r6,r3,808450 <__any_on+0x18>
  808474:	294007cc 	andi	r5,r5,31
  808478:	283ff526 	beq	r5,zero,808450 <__any_on+0x18>
  80847c:	11800017 	ldw	r6,0(r2)
  808480:	3146d83a 	srl	r3,r6,r5
  808484:	194a983a 	sll	r5,r3,r5
  808488:	317ff51e 	bne	r6,r5,808460 <__any_on+0x28>
  80848c:	003ff006 	br	808450 <__any_on+0x18>
  808490:	0005883a 	mov	r2,zero
  808494:	f800283a 	ret

00808498 <_realloc_r>:
  808498:	defff504 	addi	sp,sp,-44
  80849c:	dc800315 	stw	r18,12(sp)
  8084a0:	dfc00a15 	stw	ra,40(sp)
  8084a4:	df000915 	stw	fp,36(sp)
  8084a8:	ddc00815 	stw	r23,32(sp)
  8084ac:	dd800715 	stw	r22,28(sp)
  8084b0:	dd400615 	stw	r21,24(sp)
  8084b4:	dd000515 	stw	r20,20(sp)
  8084b8:	dcc00415 	stw	r19,16(sp)
  8084bc:	dc400215 	stw	r17,8(sp)
  8084c0:	dc000115 	stw	r16,4(sp)
  8084c4:	3025883a 	mov	r18,r6
  8084c8:	28008b26 	beq	r5,zero,8086f8 <_realloc_r+0x260>
  8084cc:	2821883a 	mov	r16,r5
  8084d0:	2027883a 	mov	r19,r4
  8084d4:	944002c4 	addi	r17,r18,11
  8084d8:	080e39c0 	call	80e39c <__malloc_lock>
  8084dc:	888005f0 	cmpltui	r2,r17,23
  8084e0:	1000521e 	bne	r2,zero,80862c <_realloc_r+0x194>
  8084e4:	017ffe04 	movi	r5,-8
  8084e8:	8962703a 	and	r17,r17,r5
  8084ec:	8807883a 	mov	r3,r17
  8084f0:	88005116 	blt	r17,zero,808638 <_realloc_r+0x1a0>
  8084f4:	8c805036 	bltu	r17,r18,808638 <_realloc_r+0x1a0>
  8084f8:	80bfff17 	ldw	r2,-4(r16)
  8084fc:	017fff04 	movi	r5,-4
  808500:	857ffe04 	addi	r21,r16,-8
  808504:	1168703a 	and	r20,r2,r5
  808508:	ad2d883a 	add	r22,r21,r20
  80850c:	a0c0390e 	bge	r20,r3,8085f4 <_realloc_r+0x15c>
  808510:	07002074 	movhi	fp,129
  808514:	e7040604 	addi	fp,fp,4120
  808518:	e2000217 	ldw	r8,8(fp)
  80851c:	b1000117 	ldw	r4,4(r22)
  808520:	45808e26 	beq	r8,r22,80875c <_realloc_r+0x2c4>
  808524:	01bfff84 	movi	r6,-2
  808528:	218c703a 	and	r6,r4,r6
  80852c:	b18d883a 	add	r6,r22,r6
  808530:	31800117 	ldw	r6,4(r6)
  808534:	3180004c 	andi	r6,r6,1
  808538:	30004f1e 	bne	r6,zero,808678 <_realloc_r+0x1e0>
  80853c:	2148703a 	and	r4,r4,r5
  808540:	a10b883a 	add	r5,r20,r4
  808544:	28c0bf0e 	bge	r5,r3,808844 <_realloc_r+0x3ac>
  808548:	1080004c 	andi	r2,r2,1
  80854c:	10004c1e 	bne	r2,zero,808680 <_realloc_r+0x1e8>
  808550:	81fffe17 	ldw	r7,-8(r16)
  808554:	00bfff04 	movi	r2,-4
  808558:	a9cfc83a 	sub	r7,r21,r7
  80855c:	39400117 	ldw	r5,4(r7)
  808560:	288a703a 	and	r5,r5,r2
  808564:	b0000426 	beq	r22,zero,808578 <_realloc_r+0xe0>
  808568:	a16f883a 	add	r23,r20,r5
  80856c:	b92f883a 	add	r23,r23,r4
  808570:	4580bf26 	beq	r8,r22,808870 <_realloc_r+0x3d8>
  808574:	b8c0930e 	bge	r23,r3,8087c4 <_realloc_r+0x32c>
  808578:	38004126 	beq	r7,zero,808680 <_realloc_r+0x1e8>
  80857c:	a16f883a 	add	r23,r20,r5
  808580:	b8c03f16 	blt	r23,r3,808680 <_realloc_r+0x1e8>
  808584:	38800317 	ldw	r2,12(r7)
  808588:	38c00217 	ldw	r3,8(r7)
  80858c:	a1bfff04 	addi	r6,r20,-4
  808590:	31400968 	cmpgeui	r5,r6,37
  808594:	18800315 	stw	r2,12(r3)
  808598:	10c00215 	stw	r3,8(r2)
  80859c:	39000204 	addi	r4,r7,8
  8085a0:	3ded883a 	add	r22,r7,r23
  8085a4:	2800941e 	bne	r5,zero,8087f8 <_realloc_r+0x360>
  8085a8:	30800530 	cmpltui	r2,r6,20
  8085ac:	80c00017 	ldw	r3,0(r16)
  8085b0:	1000df1e 	bne	r2,zero,808930 <_realloc_r+0x498>
  8085b4:	38c00215 	stw	r3,8(r7)
  8085b8:	80c00117 	ldw	r3,4(r16)
  8085bc:	30800728 	cmpgeui	r2,r6,28
  8085c0:	38c00315 	stw	r3,12(r7)
  8085c4:	1000dc1e 	bne	r2,zero,808938 <_realloc_r+0x4a0>
  8085c8:	80c00217 	ldw	r3,8(r16)
  8085cc:	38800404 	addi	r2,r7,16
  8085d0:	84000204 	addi	r16,r16,8
  8085d4:	10c00015 	stw	r3,0(r2)
  8085d8:	80c00117 	ldw	r3,4(r16)
  8085dc:	b829883a 	mov	r20,r23
  8085e0:	382b883a 	mov	r21,r7
  8085e4:	10c00115 	stw	r3,4(r2)
  8085e8:	80c00217 	ldw	r3,8(r16)
  8085ec:	2021883a 	mov	r16,r4
  8085f0:	10c00215 	stw	r3,8(r2)
  8085f4:	a9800117 	ldw	r6,4(r21)
  8085f8:	a445c83a 	sub	r2,r20,r17
  8085fc:	10c00430 	cmpltui	r3,r2,16
  808600:	3180004c 	andi	r6,r6,1
  808604:	18004926 	beq	r3,zero,80872c <_realloc_r+0x294>
  808608:	a18cb03a 	or	r6,r20,r6
  80860c:	a9800115 	stw	r6,4(r21)
  808610:	b0800117 	ldw	r2,4(r22)
  808614:	10800054 	ori	r2,r2,1
  808618:	b0800115 	stw	r2,4(r22)
  80861c:	9809883a 	mov	r4,r19
  808620:	080e3c00 	call	80e3c0 <__malloc_unlock>
  808624:	8025883a 	mov	r18,r16
  808628:	00000606 	br	808644 <_realloc_r+0x1ac>
  80862c:	04400404 	movi	r17,16
  808630:	00c00404 	movi	r3,16
  808634:	8cbfb02e 	bgeu	r17,r18,8084f8 <_realloc_r+0x60>
  808638:	00800304 	movi	r2,12
  80863c:	98800015 	stw	r2,0(r19)
  808640:	0025883a 	mov	r18,zero
  808644:	9005883a 	mov	r2,r18
  808648:	dfc00a17 	ldw	ra,40(sp)
  80864c:	df000917 	ldw	fp,36(sp)
  808650:	ddc00817 	ldw	r23,32(sp)
  808654:	dd800717 	ldw	r22,28(sp)
  808658:	dd400617 	ldw	r21,24(sp)
  80865c:	dd000517 	ldw	r20,20(sp)
  808660:	dcc00417 	ldw	r19,16(sp)
  808664:	dc800317 	ldw	r18,12(sp)
  808668:	dc400217 	ldw	r17,8(sp)
  80866c:	dc000117 	ldw	r16,4(sp)
  808670:	dec00b04 	addi	sp,sp,44
  808674:	f800283a 	ret
  808678:	1080004c 	andi	r2,r2,1
  80867c:	10006c26 	beq	r2,zero,808830 <_realloc_r+0x398>
  808680:	900b883a 	mov	r5,r18
  808684:	9809883a 	mov	r4,r19
  808688:	08067900 	call	806790 <_malloc_r>
  80868c:	1025883a 	mov	r18,r2
  808690:	10001626 	beq	r2,zero,8086ec <_realloc_r+0x254>
  808694:	80bfff17 	ldw	r2,-4(r16)
  808698:	013fff84 	movi	r4,-2
  80869c:	90fffe04 	addi	r3,r18,-8
  8086a0:	1104703a 	and	r2,r2,r4
  8086a4:	a885883a 	add	r2,r21,r2
  8086a8:	10c05b26 	beq	r2,r3,808818 <_realloc_r+0x380>
  8086ac:	a1bfff04 	addi	r6,r20,-4
  8086b0:	30800968 	cmpgeui	r2,r6,37
  8086b4:	10006a1e 	bne	r2,zero,808860 <_realloc_r+0x3c8>
  8086b8:	30800530 	cmpltui	r2,r6,20
  8086bc:	81000017 	ldw	r4,0(r16)
  8086c0:	10003726 	beq	r2,zero,8087a0 <_realloc_r+0x308>
  8086c4:	9005883a 	mov	r2,r18
  8086c8:	8007883a 	mov	r3,r16
  8086cc:	11000015 	stw	r4,0(r2)
  8086d0:	19000117 	ldw	r4,4(r3)
  8086d4:	11000115 	stw	r4,4(r2)
  8086d8:	18c00217 	ldw	r3,8(r3)
  8086dc:	10c00215 	stw	r3,8(r2)
  8086e0:	800b883a 	mov	r5,r16
  8086e4:	9809883a 	mov	r4,r19
  8086e8:	0805c900 	call	805c90 <_free_r>
  8086ec:	9809883a 	mov	r4,r19
  8086f0:	080e3c00 	call	80e3c0 <__malloc_unlock>
  8086f4:	003fd306 	br	808644 <_realloc_r+0x1ac>
  8086f8:	300b883a 	mov	r5,r6
  8086fc:	dfc00a17 	ldw	ra,40(sp)
  808700:	df000917 	ldw	fp,36(sp)
  808704:	ddc00817 	ldw	r23,32(sp)
  808708:	dd800717 	ldw	r22,28(sp)
  80870c:	dd400617 	ldw	r21,24(sp)
  808710:	dd000517 	ldw	r20,20(sp)
  808714:	dcc00417 	ldw	r19,16(sp)
  808718:	dc800317 	ldw	r18,12(sp)
  80871c:	dc400217 	ldw	r17,8(sp)
  808720:	dc000117 	ldw	r16,4(sp)
  808724:	dec00b04 	addi	sp,sp,44
  808728:	08067901 	jmpi	806790 <_malloc_r>
  80872c:	344cb03a 	or	r6,r6,r17
  808730:	a9800115 	stw	r6,4(r21)
  808734:	ac4b883a 	add	r5,r21,r17
  808738:	10800054 	ori	r2,r2,1
  80873c:	28800115 	stw	r2,4(r5)
  808740:	b0800117 	ldw	r2,4(r22)
  808744:	29400204 	addi	r5,r5,8
  808748:	9809883a 	mov	r4,r19
  80874c:	10800054 	ori	r2,r2,1
  808750:	b0800115 	stw	r2,4(r22)
  808754:	0805c900 	call	805c90 <_free_r>
  808758:	003fb006 	br	80861c <_realloc_r+0x184>
  80875c:	2148703a 	and	r4,r4,r5
  808760:	a10b883a 	add	r5,r20,r4
  808764:	89800404 	addi	r6,r17,16
  808768:	29bf7716 	blt	r5,r6,808548 <_realloc_r+0xb0>
  80876c:	ac6b883a 	add	r21,r21,r17
  808770:	2c45c83a 	sub	r2,r5,r17
  808774:	e5400215 	stw	r21,8(fp)
  808778:	10800054 	ori	r2,r2,1
  80877c:	a8800115 	stw	r2,4(r21)
  808780:	80bfff17 	ldw	r2,-4(r16)
  808784:	9809883a 	mov	r4,r19
  808788:	8025883a 	mov	r18,r16
  80878c:	1080004c 	andi	r2,r2,1
  808790:	1462b03a 	or	r17,r2,r17
  808794:	847fff15 	stw	r17,-4(r16)
  808798:	080e3c00 	call	80e3c0 <__malloc_unlock>
  80879c:	003fa906 	br	808644 <_realloc_r+0x1ac>
  8087a0:	91000015 	stw	r4,0(r18)
  8087a4:	80c00117 	ldw	r3,4(r16)
  8087a8:	30800728 	cmpgeui	r2,r6,28
  8087ac:	90c00115 	stw	r3,4(r18)
  8087b0:	1000551e 	bne	r2,zero,808908 <_realloc_r+0x470>
  8087b4:	81000217 	ldw	r4,8(r16)
  8087b8:	80c00204 	addi	r3,r16,8
  8087bc:	90800204 	addi	r2,r18,8
  8087c0:	003fc206 	br	8086cc <_realloc_r+0x234>
  8087c4:	b0800317 	ldw	r2,12(r22)
  8087c8:	b0c00217 	ldw	r3,8(r22)
  8087cc:	a1bfff04 	addi	r6,r20,-4
  8087d0:	31400968 	cmpgeui	r5,r6,37
  8087d4:	18800315 	stw	r2,12(r3)
  8087d8:	10c00215 	stw	r3,8(r2)
  8087dc:	38c00217 	ldw	r3,8(r7)
  8087e0:	38800317 	ldw	r2,12(r7)
  8087e4:	39000204 	addi	r4,r7,8
  8087e8:	3ded883a 	add	r22,r7,r23
  8087ec:	18800315 	stw	r2,12(r3)
  8087f0:	10c00215 	stw	r3,8(r2)
  8087f4:	283f6c26 	beq	r5,zero,8085a8 <_realloc_r+0x110>
  8087f8:	800b883a 	mov	r5,r16
  8087fc:	d9c00015 	stw	r7,0(sp)
  808800:	08071440 	call	807144 <memmove>
  808804:	d9c00017 	ldw	r7,0(sp)
  808808:	1021883a 	mov	r16,r2
  80880c:	b829883a 	mov	r20,r23
  808810:	382b883a 	mov	r21,r7
  808814:	003f7706 	br	8085f4 <_realloc_r+0x15c>
  808818:	90bfff17 	ldw	r2,-4(r18)
  80881c:	00ffff04 	movi	r3,-4
  808820:	10c4703a 	and	r2,r2,r3
  808824:	a0a9883a 	add	r20,r20,r2
  808828:	ad2d883a 	add	r22,r21,r20
  80882c:	003f7106 	br	8085f4 <_realloc_r+0x15c>
  808830:	81fffe17 	ldw	r7,-8(r16)
  808834:	a9cfc83a 	sub	r7,r21,r7
  808838:	39000117 	ldw	r4,4(r7)
  80883c:	214a703a 	and	r5,r4,r5
  808840:	003f4d06 	br	808578 <_realloc_r+0xe0>
  808844:	b0800317 	ldw	r2,12(r22)
  808848:	b0c00217 	ldw	r3,8(r22)
  80884c:	2829883a 	mov	r20,r5
  808850:	a96d883a 	add	r22,r21,r5
  808854:	18800315 	stw	r2,12(r3)
  808858:	10c00215 	stw	r3,8(r2)
  80885c:	003f6506 	br	8085f4 <_realloc_r+0x15c>
  808860:	800b883a 	mov	r5,r16
  808864:	9009883a 	mov	r4,r18
  808868:	08071440 	call	807144 <memmove>
  80886c:	003f9c06 	br	8086e0 <_realloc_r+0x248>
  808870:	88800404 	addi	r2,r17,16
  808874:	b8bf4016 	blt	r23,r2,808578 <_realloc_r+0xe0>
  808878:	38800317 	ldw	r2,12(r7)
  80887c:	38c00217 	ldw	r3,8(r7)
  808880:	a1bfff04 	addi	r6,r20,-4
  808884:	31000968 	cmpgeui	r4,r6,37
  808888:	18800315 	stw	r2,12(r3)
  80888c:	10c00215 	stw	r3,8(r2)
  808890:	3c800204 	addi	r18,r7,8
  808894:	20003b1e 	bne	r4,zero,808984 <_realloc_r+0x4ec>
  808898:	30800530 	cmpltui	r2,r6,20
  80889c:	80c00017 	ldw	r3,0(r16)
  8088a0:	1000361e 	bne	r2,zero,80897c <_realloc_r+0x4e4>
  8088a4:	38c00215 	stw	r3,8(r7)
  8088a8:	80c00117 	ldw	r3,4(r16)
  8088ac:	30800728 	cmpgeui	r2,r6,28
  8088b0:	38c00315 	stw	r3,12(r7)
  8088b4:	1000401e 	bne	r2,zero,8089b8 <_realloc_r+0x520>
  8088b8:	80c00217 	ldw	r3,8(r16)
  8088bc:	38800404 	addi	r2,r7,16
  8088c0:	84000204 	addi	r16,r16,8
  8088c4:	10c00015 	stw	r3,0(r2)
  8088c8:	80c00117 	ldw	r3,4(r16)
  8088cc:	10c00115 	stw	r3,4(r2)
  8088d0:	80c00217 	ldw	r3,8(r16)
  8088d4:	10c00215 	stw	r3,8(r2)
  8088d8:	3c47883a 	add	r3,r7,r17
  8088dc:	bc45c83a 	sub	r2,r23,r17
  8088e0:	e0c00215 	stw	r3,8(fp)
  8088e4:	10800054 	ori	r2,r2,1
  8088e8:	18800115 	stw	r2,4(r3)
  8088ec:	38800117 	ldw	r2,4(r7)
  8088f0:	9809883a 	mov	r4,r19
  8088f4:	1080004c 	andi	r2,r2,1
  8088f8:	1462b03a 	or	r17,r2,r17
  8088fc:	3c400115 	stw	r17,4(r7)
  808900:	080e3c00 	call	80e3c0 <__malloc_unlock>
  808904:	003f4f06 	br	808644 <_realloc_r+0x1ac>
  808908:	80800217 	ldw	r2,8(r16)
  80890c:	31800920 	cmpeqi	r6,r6,36
  808910:	90800215 	stw	r2,8(r18)
  808914:	80800317 	ldw	r2,12(r16)
  808918:	90800315 	stw	r2,12(r18)
  80891c:	81000417 	ldw	r4,16(r16)
  808920:	30000f1e 	bne	r6,zero,808960 <_realloc_r+0x4c8>
  808924:	80c00404 	addi	r3,r16,16
  808928:	90800404 	addi	r2,r18,16
  80892c:	003f6706 	br	8086cc <_realloc_r+0x234>
  808930:	2005883a 	mov	r2,r4
  808934:	003f2706 	br	8085d4 <_realloc_r+0x13c>
  808938:	80800217 	ldw	r2,8(r16)
  80893c:	31800920 	cmpeqi	r6,r6,36
  808940:	38800415 	stw	r2,16(r7)
  808944:	80800317 	ldw	r2,12(r16)
  808948:	38800515 	stw	r2,20(r7)
  80894c:	80c00417 	ldw	r3,16(r16)
  808950:	3000121e 	bne	r6,zero,80899c <_realloc_r+0x504>
  808954:	38800604 	addi	r2,r7,24
  808958:	84000404 	addi	r16,r16,16
  80895c:	003f1d06 	br	8085d4 <_realloc_r+0x13c>
  808960:	91000415 	stw	r4,16(r18)
  808964:	81000517 	ldw	r4,20(r16)
  808968:	80c00604 	addi	r3,r16,24
  80896c:	90800604 	addi	r2,r18,24
  808970:	91000515 	stw	r4,20(r18)
  808974:	81000617 	ldw	r4,24(r16)
  808978:	003f5406 	br	8086cc <_realloc_r+0x234>
  80897c:	9005883a 	mov	r2,r18
  808980:	003fd006 	br	8088c4 <_realloc_r+0x42c>
  808984:	800b883a 	mov	r5,r16
  808988:	9009883a 	mov	r4,r18
  80898c:	d9c00015 	stw	r7,0(sp)
  808990:	08071440 	call	807144 <memmove>
  808994:	d9c00017 	ldw	r7,0(sp)
  808998:	003fcf06 	br	8088d8 <_realloc_r+0x440>
  80899c:	84000604 	addi	r16,r16,24
  8089a0:	38c00615 	stw	r3,24(r7)
  8089a4:	80ffff17 	ldw	r3,-4(r16)
  8089a8:	38800804 	addi	r2,r7,32
  8089ac:	38c00715 	stw	r3,28(r7)
  8089b0:	80c00017 	ldw	r3,0(r16)
  8089b4:	003f0706 	br	8085d4 <_realloc_r+0x13c>
  8089b8:	80800217 	ldw	r2,8(r16)
  8089bc:	31800920 	cmpeqi	r6,r6,36
  8089c0:	38800415 	stw	r2,16(r7)
  8089c4:	80800317 	ldw	r2,12(r16)
  8089c8:	38800515 	stw	r2,20(r7)
  8089cc:	80c00417 	ldw	r3,16(r16)
  8089d0:	3000031e 	bne	r6,zero,8089e0 <_realloc_r+0x548>
  8089d4:	38800604 	addi	r2,r7,24
  8089d8:	84000404 	addi	r16,r16,16
  8089dc:	003fb906 	br	8088c4 <_realloc_r+0x42c>
  8089e0:	84000604 	addi	r16,r16,24
  8089e4:	38c00615 	stw	r3,24(r7)
  8089e8:	80ffff17 	ldw	r3,-4(r16)
  8089ec:	38800804 	addi	r2,r7,32
  8089f0:	38c00715 	stw	r3,28(r7)
  8089f4:	80c00017 	ldw	r3,0(r16)
  8089f8:	003fb206 	br	8088c4 <_realloc_r+0x42c>

008089fc <_sbrk_r>:
  8089fc:	defffe04 	addi	sp,sp,-8
  808a00:	dc000015 	stw	r16,0(sp)
  808a04:	00802074 	movhi	r2,129
  808a08:	2021883a 	mov	r16,r4
  808a0c:	2809883a 	mov	r4,r5
  808a10:	dfc00115 	stw	ra,4(sp)
  808a14:	1010ec15 	stw	zero,17328(r2)
  808a18:	080e5980 	call	80e598 <sbrk>
  808a1c:	10ffffd8 	cmpnei	r3,r2,-1
  808a20:	18000426 	beq	r3,zero,808a34 <_sbrk_r+0x38>
  808a24:	dfc00117 	ldw	ra,4(sp)
  808a28:	dc000017 	ldw	r16,0(sp)
  808a2c:	dec00204 	addi	sp,sp,8
  808a30:	f800283a 	ret
  808a34:	00c02074 	movhi	r3,129
  808a38:	18d0ec17 	ldw	r3,17328(r3)
  808a3c:	183ff926 	beq	r3,zero,808a24 <_sbrk_r+0x28>
  808a40:	80c00015 	stw	r3,0(r16)
  808a44:	dfc00117 	ldw	ra,4(sp)
  808a48:	dc000017 	ldw	r16,0(sp)
  808a4c:	dec00204 	addi	sp,sp,8
  808a50:	f800283a 	ret

00808a54 <__sread>:
  808a54:	defffe04 	addi	sp,sp,-8
  808a58:	dc000015 	stw	r16,0(sp)
  808a5c:	2821883a 	mov	r16,r5
  808a60:	2940038f 	ldh	r5,14(r5)
  808a64:	dfc00115 	stw	ra,4(sp)
  808a68:	080a7ec0 	call	80a7ec <_read_r>
  808a6c:	10000716 	blt	r2,zero,808a8c <__sread+0x38>
  808a70:	80c01417 	ldw	r3,80(r16)
  808a74:	1887883a 	add	r3,r3,r2
  808a78:	80c01415 	stw	r3,80(r16)
  808a7c:	dfc00117 	ldw	ra,4(sp)
  808a80:	dc000017 	ldw	r16,0(sp)
  808a84:	dec00204 	addi	sp,sp,8
  808a88:	f800283a 	ret
  808a8c:	80c0030b 	ldhu	r3,12(r16)
  808a90:	18fbffcc 	andi	r3,r3,61439
  808a94:	80c0030d 	sth	r3,12(r16)
  808a98:	dfc00117 	ldw	ra,4(sp)
  808a9c:	dc000017 	ldw	r16,0(sp)
  808aa0:	dec00204 	addi	sp,sp,8
  808aa4:	f800283a 	ret

00808aa8 <__seofread>:
  808aa8:	0005883a 	mov	r2,zero
  808aac:	f800283a 	ret

00808ab0 <__swrite>:
  808ab0:	2880030b 	ldhu	r2,12(r5)
  808ab4:	defffb04 	addi	sp,sp,-20
  808ab8:	dcc00315 	stw	r19,12(sp)
  808abc:	dc800215 	stw	r18,8(sp)
  808ac0:	dc400115 	stw	r17,4(sp)
  808ac4:	dc000015 	stw	r16,0(sp)
  808ac8:	dfc00415 	stw	ra,16(sp)
  808acc:	10c0400c 	andi	r3,r2,256
  808ad0:	2821883a 	mov	r16,r5
  808ad4:	2023883a 	mov	r17,r4
  808ad8:	2940038f 	ldh	r5,14(r5)
  808adc:	3025883a 	mov	r18,r6
  808ae0:	3827883a 	mov	r19,r7
  808ae4:	18000c1e 	bne	r3,zero,808b18 <__swrite+0x68>
  808ae8:	10bbffcc 	andi	r2,r2,61439
  808aec:	980f883a 	mov	r7,r19
  808af0:	900d883a 	mov	r6,r18
  808af4:	8809883a 	mov	r4,r17
  808af8:	8080030d 	sth	r2,12(r16)
  808afc:	dfc00417 	ldw	ra,16(sp)
  808b00:	dcc00317 	ldw	r19,12(sp)
  808b04:	dc800217 	ldw	r18,8(sp)
  808b08:	dc400117 	ldw	r17,4(sp)
  808b0c:	dc000017 	ldw	r16,0(sp)
  808b10:	dec00504 	addi	sp,sp,20
  808b14:	080a0901 	jmpi	80a090 <_write_r>
  808b18:	01c00084 	movi	r7,2
  808b1c:	000d883a 	mov	r6,zero
  808b20:	080a7380 	call	80a738 <_lseek_r>
  808b24:	8080030b 	ldhu	r2,12(r16)
  808b28:	8140038f 	ldh	r5,14(r16)
  808b2c:	003fee06 	br	808ae8 <__swrite+0x38>

00808b30 <__sseek>:
  808b30:	defffe04 	addi	sp,sp,-8
  808b34:	dc000015 	stw	r16,0(sp)
  808b38:	2821883a 	mov	r16,r5
  808b3c:	2940038f 	ldh	r5,14(r5)
  808b40:	dfc00115 	stw	ra,4(sp)
  808b44:	080a7380 	call	80a738 <_lseek_r>
  808b48:	10ffffd8 	cmpnei	r3,r2,-1
  808b4c:	18000826 	beq	r3,zero,808b70 <__sseek+0x40>
  808b50:	80c0030b 	ldhu	r3,12(r16)
  808b54:	80801415 	stw	r2,80(r16)
  808b58:	18c40014 	ori	r3,r3,4096
  808b5c:	80c0030d 	sth	r3,12(r16)
  808b60:	dfc00117 	ldw	ra,4(sp)
  808b64:	dc000017 	ldw	r16,0(sp)
  808b68:	dec00204 	addi	sp,sp,8
  808b6c:	f800283a 	ret
  808b70:	80c0030b 	ldhu	r3,12(r16)
  808b74:	18fbffcc 	andi	r3,r3,61439
  808b78:	80c0030d 	sth	r3,12(r16)
  808b7c:	dfc00117 	ldw	ra,4(sp)
  808b80:	dc000017 	ldw	r16,0(sp)
  808b84:	dec00204 	addi	sp,sp,8
  808b88:	f800283a 	ret

00808b8c <__sclose>:
  808b8c:	2940038f 	ldh	r5,14(r5)
  808b90:	080a0f41 	jmpi	80a0f4 <_close_r>

00808b94 <__sprint_r.part.0>:
  808b94:	28801917 	ldw	r2,100(r5)
  808b98:	defff604 	addi	sp,sp,-40
  808b9c:	dcc00315 	stw	r19,12(sp)
  808ba0:	dfc00915 	stw	ra,36(sp)
  808ba4:	df000815 	stw	fp,32(sp)
  808ba8:	ddc00715 	stw	r23,28(sp)
  808bac:	dd800615 	stw	r22,24(sp)
  808bb0:	dd400515 	stw	r21,20(sp)
  808bb4:	dd000415 	stw	r20,16(sp)
  808bb8:	dc800215 	stw	r18,8(sp)
  808bbc:	dc400115 	stw	r17,4(sp)
  808bc0:	dc000015 	stw	r16,0(sp)
  808bc4:	1088000c 	andi	r2,r2,8192
  808bc8:	3027883a 	mov	r19,r6
  808bcc:	10002c26 	beq	r2,zero,808c80 <__sprint_r.part.0+0xec>
  808bd0:	30800217 	ldw	r2,8(r6)
  808bd4:	35000017 	ldw	r20,0(r6)
  808bd8:	2821883a 	mov	r16,r5
  808bdc:	2023883a 	mov	r17,r4
  808be0:	05bfff04 	movi	r22,-4
  808be4:	10002426 	beq	r2,zero,808c78 <__sprint_r.part.0+0xe4>
  808be8:	a5400117 	ldw	r21,4(r20)
  808bec:	a5c00017 	ldw	r23,0(r20)
  808bf0:	a824d0ba 	srli	r18,r21,2
  808bf4:	90001b26 	beq	r18,zero,808c64 <__sprint_r.part.0+0xd0>
  808bf8:	0039883a 	mov	fp,zero
  808bfc:	00000206 	br	808c08 <__sprint_r.part.0+0x74>
  808c00:	bdc00104 	addi	r23,r23,4
  808c04:	97001626 	beq	r18,fp,808c60 <__sprint_r.part.0+0xcc>
  808c08:	b9400017 	ldw	r5,0(r23)
  808c0c:	800d883a 	mov	r6,r16
  808c10:	8809883a 	mov	r4,r17
  808c14:	080a54c0 	call	80a54c <_fputwc_r>
  808c18:	10bfffe0 	cmpeqi	r2,r2,-1
  808c1c:	e7000044 	addi	fp,fp,1
  808c20:	103ff726 	beq	r2,zero,808c00 <__sprint_r.part.0+0x6c>
  808c24:	00bfffc4 	movi	r2,-1
  808c28:	98000215 	stw	zero,8(r19)
  808c2c:	98000115 	stw	zero,4(r19)
  808c30:	dfc00917 	ldw	ra,36(sp)
  808c34:	df000817 	ldw	fp,32(sp)
  808c38:	ddc00717 	ldw	r23,28(sp)
  808c3c:	dd800617 	ldw	r22,24(sp)
  808c40:	dd400517 	ldw	r21,20(sp)
  808c44:	dd000417 	ldw	r20,16(sp)
  808c48:	dcc00317 	ldw	r19,12(sp)
  808c4c:	dc800217 	ldw	r18,8(sp)
  808c50:	dc400117 	ldw	r17,4(sp)
  808c54:	dc000017 	ldw	r16,0(sp)
  808c58:	dec00a04 	addi	sp,sp,40
  808c5c:	f800283a 	ret
  808c60:	98800217 	ldw	r2,8(r19)
  808c64:	adaa703a 	and	r21,r21,r22
  808c68:	1545c83a 	sub	r2,r2,r21
  808c6c:	98800215 	stw	r2,8(r19)
  808c70:	a5000204 	addi	r20,r20,8
  808c74:	103fdc1e 	bne	r2,zero,808be8 <__sprint_r.part.0+0x54>
  808c78:	0005883a 	mov	r2,zero
  808c7c:	003fea06 	br	808c28 <__sprint_r.part.0+0x94>
  808c80:	0805f8c0 	call	805f8c <__sfvwrite_r>
  808c84:	003fe806 	br	808c28 <__sprint_r.part.0+0x94>

00808c88 <__sprint_r>:
  808c88:	30c00217 	ldw	r3,8(r6)
  808c8c:	18000126 	beq	r3,zero,808c94 <__sprint_r+0xc>
  808c90:	0808b941 	jmpi	808b94 <__sprint_r.part.0>
  808c94:	30000115 	stw	zero,4(r6)
  808c98:	0005883a 	mov	r2,zero
  808c9c:	f800283a 	ret

00808ca0 <___vfiprintf_internal_r>:
  808ca0:	deffcf04 	addi	sp,sp,-196
  808ca4:	dd802d15 	stw	r22,180(sp)
  808ca8:	dd402c15 	stw	r21,176(sp)
  808cac:	dd002b15 	stw	r20,172(sp)
  808cb0:	dfc03015 	stw	ra,192(sp)
  808cb4:	df002f15 	stw	fp,188(sp)
  808cb8:	ddc02e15 	stw	r23,184(sp)
  808cbc:	dcc02a15 	stw	r19,168(sp)
  808cc0:	dc802915 	stw	r18,164(sp)
  808cc4:	dc402815 	stw	r17,160(sp)
  808cc8:	dc002715 	stw	r16,156(sp)
  808ccc:	d9c00415 	stw	r7,16(sp)
  808cd0:	202d883a 	mov	r22,r4
  808cd4:	282b883a 	mov	r21,r5
  808cd8:	3029883a 	mov	r20,r6
  808cdc:	20000226 	beq	r4,zero,808ce8 <___vfiprintf_internal_r+0x48>
  808ce0:	20800e17 	ldw	r2,56(r4)
  808ce4:	1001b426 	beq	r2,zero,8093b8 <___vfiprintf_internal_r+0x718>
  808ce8:	a880030b 	ldhu	r2,12(r21)
  808cec:	10c8000c 	andi	r3,r2,8192
  808cf0:	1800061e 	bne	r3,zero,808d0c <___vfiprintf_internal_r+0x6c>
  808cf4:	a8c01917 	ldw	r3,100(r21)
  808cf8:	0137ffc4 	movi	r4,-8193
  808cfc:	10880014 	ori	r2,r2,8192
  808d00:	1906703a 	and	r3,r3,r4
  808d04:	a880030d 	sth	r2,12(r21)
  808d08:	a8c01915 	stw	r3,100(r21)
  808d0c:	10c0020c 	andi	r3,r2,8
  808d10:	18010826 	beq	r3,zero,809134 <___vfiprintf_internal_r+0x494>
  808d14:	a8c00417 	ldw	r3,16(r21)
  808d18:	18010626 	beq	r3,zero,809134 <___vfiprintf_internal_r+0x494>
  808d1c:	1080068c 	andi	r2,r2,26
  808d20:	10800298 	cmpnei	r2,r2,10
  808d24:	10010b26 	beq	r2,zero,809154 <___vfiprintf_internal_r+0x4b4>
  808d28:	dc801704 	addi	r18,sp,92
  808d2c:	dc800a15 	stw	r18,40(sp)
  808d30:	d8000c15 	stw	zero,48(sp)
  808d34:	d8000b15 	stw	zero,44(sp)
  808d38:	9021883a 	mov	r16,r18
  808d3c:	d8000515 	stw	zero,20(sp)
  808d40:	d8000115 	stw	zero,4(sp)
  808d44:	a0c00007 	ldb	r3,0(r20)
  808d48:	1800e826 	beq	r3,zero,8090ec <___vfiprintf_internal_r+0x44c>
  808d4c:	a023883a 	mov	r17,r20
  808d50:	00000306 	br	808d60 <___vfiprintf_internal_r+0xc0>
  808d54:	88c00047 	ldb	r3,1(r17)
  808d58:	8c400044 	addi	r17,r17,1
  808d5c:	18012a26 	beq	r3,zero,809208 <___vfiprintf_internal_r+0x568>
  808d60:	18c00958 	cmpnei	r3,r3,37
  808d64:	183ffb1e 	bne	r3,zero,808d54 <___vfiprintf_internal_r+0xb4>
  808d68:	8d27c83a 	sub	r19,r17,r20
  808d6c:	8d01281e 	bne	r17,r20,809210 <___vfiprintf_internal_r+0x570>
  808d70:	88800003 	ldbu	r2,0(r17)
  808d74:	10803fcc 	andi	r2,r2,255
  808d78:	1080201c 	xori	r2,r2,128
  808d7c:	10bfe004 	addi	r2,r2,-128
  808d80:	1000da26 	beq	r2,zero,8090ec <___vfiprintf_internal_r+0x44c>
  808d84:	88800047 	ldb	r2,1(r17)
  808d88:	8d000044 	addi	r20,r17,1
  808d8c:	d8000945 	stb	zero,37(sp)
  808d90:	000b883a 	mov	r5,zero
  808d94:	000d883a 	mov	r6,zero
  808d98:	023fffc4 	movi	r8,-1
  808d9c:	0023883a 	mov	r17,zero
  808da0:	001b883a 	mov	r13,zero
  808da4:	a5000044 	addi	r20,r20,1
  808da8:	10fff804 	addi	r3,r2,-32
  808dac:	19001668 	cmpgeui	r4,r3,89
  808db0:	20006c1e 	bne	r4,zero,808f64 <___vfiprintf_internal_r+0x2c4>
  808db4:	180690ba 	slli	r3,r3,2
  808db8:	01002074 	movhi	r4,129
  808dbc:	1909883a 	add	r4,r3,r4
  808dc0:	20e37217 	ldw	r3,-29240(r4)
  808dc4:	1800683a 	jmp	r3
  808dc8:	008096c8 	cmpgei	r2,zero,603
  808dcc:	00808f64 	muli	r2,zero,573
  808dd0:	00808f64 	muli	r2,zero,573
  808dd4:	008096bc 	xorhi	r2,zero,602
  808dd8:	00808f64 	muli	r2,zero,573
  808ddc:	00808f64 	muli	r2,zero,573
  808de0:	00808f64 	muli	r2,zero,573
  808de4:	00808f64 	muli	r2,zero,573
  808de8:	00808f64 	muli	r2,zero,573
  808dec:	00808f64 	muli	r2,zero,573
  808df0:	00809694 	movui	r2,602
  808df4:	00809684 	movi	r2,602
  808df8:	00808f64 	muli	r2,zero,573
  808dfc:	0080966c 	andhi	r2,zero,601
  808e00:	00809620 	cmpeqi	r2,zero,600
  808e04:	00808f64 	muli	r2,zero,573
  808e08:	00809614 	movui	r2,600
  808e0c:	00808f2c 	andhi	r2,zero,572
  808e10:	00808f2c 	andhi	r2,zero,572
  808e14:	00808f2c 	andhi	r2,zero,572
  808e18:	00808f2c 	andhi	r2,zero,572
  808e1c:	00808f2c 	andhi	r2,zero,572
  808e20:	00808f2c 	andhi	r2,zero,572
  808e24:	00808f2c 	andhi	r2,zero,572
  808e28:	00808f2c 	andhi	r2,zero,572
  808e2c:	00808f2c 	andhi	r2,zero,572
  808e30:	00808f64 	muli	r2,zero,573
  808e34:	00808f64 	muli	r2,zero,573
  808e38:	00808f64 	muli	r2,zero,573
  808e3c:	00808f64 	muli	r2,zero,573
  808e40:	00808f64 	muli	r2,zero,573
  808e44:	00808f64 	muli	r2,zero,573
  808e48:	00808f64 	muli	r2,zero,573
  808e4c:	00808f64 	muli	r2,zero,573
  808e50:	00808f64 	muli	r2,zero,573
  808e54:	00808f64 	muli	r2,zero,573
  808e58:	00809530 	cmpltui	r2,zero,596
  808e5c:	00808f64 	muli	r2,zero,573
  808e60:	00808f64 	muli	r2,zero,573
  808e64:	00808f64 	muli	r2,zero,573
  808e68:	00808f64 	muli	r2,zero,573
  808e6c:	00808f64 	muli	r2,zero,573
  808e70:	00808f64 	muli	r2,zero,573
  808e74:	00808f64 	muli	r2,zero,573
  808e78:	00808f64 	muli	r2,zero,573
  808e7c:	00808f64 	muli	r2,zero,573
  808e80:	00808f64 	muli	r2,zero,573
  808e84:	008091a0 	cmpeqi	r2,zero,582
  808e88:	00808f64 	muli	r2,zero,573
  808e8c:	00808f64 	muli	r2,zero,573
  808e90:	00808f64 	muli	r2,zero,573
  808e94:	00808f64 	muli	r2,zero,573
  808e98:	00808f64 	muli	r2,zero,573
  808e9c:	00809178 	rdprs	r2,zero,581
  808ea0:	00808f64 	muli	r2,zero,573
  808ea4:	00808f64 	muli	r2,zero,573
  808ea8:	008094e8 	cmpgeui	r2,zero,595
  808eac:	00808f64 	muli	r2,zero,573
  808eb0:	00808f64 	muli	r2,zero,573
  808eb4:	00808f64 	muli	r2,zero,573
  808eb8:	00808f64 	muli	r2,zero,573
  808ebc:	00808f64 	muli	r2,zero,573
  808ec0:	00808f64 	muli	r2,zero,573
  808ec4:	00808f64 	muli	r2,zero,573
  808ec8:	00808f64 	muli	r2,zero,573
  808ecc:	00808f64 	muli	r2,zero,573
  808ed0:	00808f64 	muli	r2,zero,573
  808ed4:	008094c0 	call	8094c <__alt_mem_sdram-0x77f6b4>
  808ed8:	008093c0 	call	8093c <__alt_mem_sdram-0x77f6c4>
  808edc:	00808f64 	muli	r2,zero,573
  808ee0:	00808f64 	muli	r2,zero,573
  808ee4:	00808f64 	muli	r2,zero,573
  808ee8:	00809464 	muli	r2,zero,593
  808eec:	008093c0 	call	8093c <__alt_mem_sdram-0x77f6c4>
  808ef0:	00808f64 	muli	r2,zero,573
  808ef4:	00808f64 	muli	r2,zero,573
  808ef8:	008094ac 	andhi	r2,zero,594
  808efc:	00808f64 	muli	r2,zero,573
  808f00:	00809470 	cmpltui	r2,zero,593
  808f04:	008091a4 	muli	r2,zero,582
  808f08:	008097a0 	cmpeqi	r2,zero,606
  808f0c:	00809794 	movui	r2,606
  808f10:	00808f64 	muli	r2,zero,573
  808f14:	0080973c 	xorhi	r2,zero,604
  808f18:	00808f64 	muli	r2,zero,573
  808f1c:	0080917c 	xorhi	r2,zero,581
  808f20:	00808f64 	muli	r2,zero,573
  808f24:	00808f64 	muli	r2,zero,573
  808f28:	008096f4 	movhi	r2,603
  808f2c:	0023883a 	mov	r17,zero
  808f30:	113ff404 	addi	r4,r2,-48
  808f34:	880690ba 	slli	r3,r17,2
  808f38:	a0800007 	ldb	r2,0(r20)
  808f3c:	a5000044 	addi	r20,r20,1
  808f40:	1c63883a 	add	r17,r3,r17
  808f44:	8c63883a 	add	r17,r17,r17
  808f48:	2463883a 	add	r17,r4,r17
  808f4c:	113ff404 	addi	r4,r2,-48
  808f50:	20c002b0 	cmpltui	r3,r4,10
  808f54:	183ff71e 	bne	r3,zero,808f34 <___vfiprintf_internal_r+0x294>
  808f58:	10fff804 	addi	r3,r2,-32
  808f5c:	19001668 	cmpgeui	r4,r3,89
  808f60:	203f9426 	beq	r4,zero,808db4 <___vfiprintf_internal_r+0x114>
  808f64:	29403fcc 	andi	r5,r5,255
  808f68:	2803e31e 	bne	r5,zero,809ef8 <___vfiprintf_internal_r+0x1258>
  808f6c:	10005f26 	beq	r2,zero,8090ec <___vfiprintf_internal_r+0x44c>
  808f70:	d8800d05 	stb	r2,52(sp)
  808f74:	d8000945 	stb	zero,37(sp)
  808f78:	05c00044 	movi	r23,1
  808f7c:	07000044 	movi	fp,1
  808f80:	dcc00d04 	addi	r19,sp,52
  808f84:	db400015 	stw	r13,0(sp)
  808f88:	0011883a 	mov	r8,zero
  808f8c:	d8800017 	ldw	r2,0(sp)
  808f90:	1380008c 	andi	r14,r2,2
  808f94:	70000126 	beq	r14,zero,808f9c <___vfiprintf_internal_r+0x2fc>
  808f98:	bdc00084 	addi	r23,r23,2
  808f9c:	d8800017 	ldw	r2,0(sp)
  808fa0:	d9000b17 	ldw	r4,44(sp)
  808fa4:	1340210c 	andi	r13,r2,132
  808fa8:	21800044 	addi	r6,r4,1
  808fac:	d8800c17 	ldw	r2,48(sp)
  808fb0:	300b883a 	mov	r5,r6
  808fb4:	6800021e 	bne	r13,zero,808fc0 <___vfiprintf_internal_r+0x320>
  808fb8:	8dc7c83a 	sub	r3,r17,r23
  808fbc:	00c2d716 	blt	zero,r3,809b1c <___vfiprintf_internal_r+0xe7c>
  808fc0:	d8c00947 	ldb	r3,37(sp)
  808fc4:	81800204 	addi	r6,r16,8
  808fc8:	18000d26 	beq	r3,zero,809000 <___vfiprintf_internal_r+0x360>
  808fcc:	d8c00944 	addi	r3,sp,37
  808fd0:	10800044 	addi	r2,r2,1
  808fd4:	80c00015 	stw	r3,0(r16)
  808fd8:	00c00044 	movi	r3,1
  808fdc:	80c00115 	stw	r3,4(r16)
  808fe0:	d8800c15 	stw	r2,48(sp)
  808fe4:	d9400b15 	stw	r5,44(sp)
  808fe8:	28c00208 	cmpgei	r3,r5,8
  808fec:	1802ac1e 	bne	r3,zero,809aa0 <___vfiprintf_internal_r+0xe00>
  808ff0:	2809883a 	mov	r4,r5
  808ff4:	3021883a 	mov	r16,r6
  808ff8:	29400044 	addi	r5,r5,1
  808ffc:	31800204 	addi	r6,r6,8
  809000:	70001826 	beq	r14,zero,809064 <___vfiprintf_internal_r+0x3c4>
  809004:	d8c00984 	addi	r3,sp,38
  809008:	10800084 	addi	r2,r2,2
  80900c:	80c00015 	stw	r3,0(r16)
  809010:	00c00084 	movi	r3,2
  809014:	80c00115 	stw	r3,4(r16)
  809018:	d8800c15 	stw	r2,48(sp)
  80901c:	d9400b15 	stw	r5,44(sp)
  809020:	28c00208 	cmpgei	r3,r5,8
  809024:	1802b626 	beq	r3,zero,809b00 <___vfiprintf_internal_r+0xe60>
  809028:	10031226 	beq	r2,zero,809c74 <___vfiprintf_internal_r+0xfd4>
  80902c:	d9800a04 	addi	r6,sp,40
  809030:	a80b883a 	mov	r5,r21
  809034:	b009883a 	mov	r4,r22
  809038:	da000315 	stw	r8,12(sp)
  80903c:	db400215 	stw	r13,8(sp)
  809040:	0808b940 	call	808b94 <__sprint_r.part.0>
  809044:	10002b1e 	bne	r2,zero,8090f4 <___vfiprintf_internal_r+0x454>
  809048:	d9000b17 	ldw	r4,44(sp)
  80904c:	d8800c17 	ldw	r2,48(sp)
  809050:	da000317 	ldw	r8,12(sp)
  809054:	db400217 	ldw	r13,8(sp)
  809058:	d9801904 	addi	r6,sp,100
  80905c:	21400044 	addi	r5,r4,1
  809060:	9021883a 	mov	r16,r18
  809064:	6b402018 	cmpnei	r13,r13,128
  809068:	68020c26 	beq	r13,zero,80989c <___vfiprintf_internal_r+0xbfc>
  80906c:	4711c83a 	sub	r8,r8,fp
  809070:	02024b16 	blt	zero,r8,8099a0 <___vfiprintf_internal_r+0xd00>
  809074:	e085883a 	add	r2,fp,r2
  809078:	d9400b15 	stw	r5,44(sp)
  80907c:	84c00015 	stw	r19,0(r16)
  809080:	87000115 	stw	fp,4(r16)
  809084:	d8800c15 	stw	r2,48(sp)
  809088:	29400210 	cmplti	r5,r5,8
  80908c:	2800081e 	bne	r5,zero,8090b0 <___vfiprintf_internal_r+0x410>
  809090:	10008f26 	beq	r2,zero,8092d0 <___vfiprintf_internal_r+0x630>
  809094:	d9800a04 	addi	r6,sp,40
  809098:	a80b883a 	mov	r5,r21
  80909c:	b009883a 	mov	r4,r22
  8090a0:	0808b940 	call	808b94 <__sprint_r.part.0>
  8090a4:	1000131e 	bne	r2,zero,8090f4 <___vfiprintf_internal_r+0x454>
  8090a8:	d8800c17 	ldw	r2,48(sp)
  8090ac:	900d883a 	mov	r6,r18
  8090b0:	d8c00017 	ldw	r3,0(sp)
  8090b4:	1cc0010c 	andi	r19,r3,4
  8090b8:	98000226 	beq	r19,zero,8090c4 <___vfiprintf_internal_r+0x424>
  8090bc:	8de1c83a 	sub	r16,r17,r23
  8090c0:	04008a16 	blt	zero,r16,8092ec <___vfiprintf_internal_r+0x64c>
  8090c4:	8dc0010e 	bge	r17,r23,8090cc <___vfiprintf_internal_r+0x42c>
  8090c8:	b823883a 	mov	r17,r23
  8090cc:	d8c00117 	ldw	r3,4(sp)
  8090d0:	1c47883a 	add	r3,r3,r17
  8090d4:	d8c00115 	stw	r3,4(sp)
  8090d8:	1002671e 	bne	r2,zero,809a78 <___vfiprintf_internal_r+0xdd8>
  8090dc:	a0c00007 	ldb	r3,0(r20)
  8090e0:	d8000b15 	stw	zero,44(sp)
  8090e4:	9021883a 	mov	r16,r18
  8090e8:	183f181e 	bne	r3,zero,808d4c <___vfiprintf_internal_r+0xac>
  8090ec:	d8800c17 	ldw	r2,48(sp)
  8090f0:	1003831e 	bne	r2,zero,809f00 <___vfiprintf_internal_r+0x1260>
  8090f4:	a880030b 	ldhu	r2,12(r21)
  8090f8:	1080100c 	andi	r2,r2,64
  8090fc:	10039e1e 	bne	r2,zero,809f78 <___vfiprintf_internal_r+0x12d8>
  809100:	d8800117 	ldw	r2,4(sp)
  809104:	dfc03017 	ldw	ra,192(sp)
  809108:	df002f17 	ldw	fp,188(sp)
  80910c:	ddc02e17 	ldw	r23,184(sp)
  809110:	dd802d17 	ldw	r22,180(sp)
  809114:	dd402c17 	ldw	r21,176(sp)
  809118:	dd002b17 	ldw	r20,172(sp)
  80911c:	dcc02a17 	ldw	r19,168(sp)
  809120:	dc802917 	ldw	r18,164(sp)
  809124:	dc402817 	ldw	r17,160(sp)
  809128:	dc002717 	ldw	r16,156(sp)
  80912c:	dec03104 	addi	sp,sp,196
  809130:	f800283a 	ret
  809134:	a80b883a 	mov	r5,r21
  809138:	b009883a 	mov	r4,r22
  80913c:	0803aa40 	call	803aa4 <__swsetup_r>
  809140:	10038d1e 	bne	r2,zero,809f78 <___vfiprintf_internal_r+0x12d8>
  809144:	a880030b 	ldhu	r2,12(r21)
  809148:	1080068c 	andi	r2,r2,26
  80914c:	10800298 	cmpnei	r2,r2,10
  809150:	103ef51e 	bne	r2,zero,808d28 <___vfiprintf_internal_r+0x88>
  809154:	a880038f 	ldh	r2,14(r21)
  809158:	103ef316 	blt	r2,zero,808d28 <___vfiprintf_internal_r+0x88>
  80915c:	d9c00417 	ldw	r7,16(sp)
  809160:	a00d883a 	mov	r6,r20
  809164:	a80b883a 	mov	r5,r21
  809168:	b009883a 	mov	r4,r22
  80916c:	0809fd00 	call	809fd0 <__sbprintf>
  809170:	d8800115 	stw	r2,4(sp)
  809174:	003fe206 	br	809100 <___vfiprintf_internal_r+0x460>
  809178:	6b400414 	ori	r13,r13,16
  80917c:	6880080c 	andi	r2,r13,32
  809180:	10004726 	beq	r2,zero,8092a0 <___vfiprintf_internal_r+0x600>
  809184:	d8c00417 	ldw	r3,16(sp)
  809188:	00800044 	movi	r2,1
  80918c:	1dc00017 	ldw	r23,0(r3)
  809190:	1f000117 	ldw	fp,4(r3)
  809194:	18c00204 	addi	r3,r3,8
  809198:	d8c00415 	stw	r3,16(sp)
  80919c:	00000906 	br	8091c4 <___vfiprintf_internal_r+0x524>
  8091a0:	6b400414 	ori	r13,r13,16
  8091a4:	6880080c 	andi	r2,r13,32
  8091a8:	10003126 	beq	r2,zero,809270 <___vfiprintf_internal_r+0x5d0>
  8091ac:	d8c00417 	ldw	r3,16(sp)
  8091b0:	0005883a 	mov	r2,zero
  8091b4:	1dc00017 	ldw	r23,0(r3)
  8091b8:	1f000117 	ldw	fp,4(r3)
  8091bc:	18c00204 	addi	r3,r3,8
  8091c0:	d8c00415 	stw	r3,16(sp)
  8091c4:	d8000945 	stb	zero,37(sp)
  8091c8:	40ffffe0 	cmpeqi	r3,r8,-1
  8091cc:	001d883a 	mov	r14,zero
  8091d0:	1800f21e 	bne	r3,zero,80959c <___vfiprintf_internal_r+0x8fc>
  8091d4:	04ffdfc4 	movi	r19,-129
  8091d8:	6cc8703a 	and	r4,r13,r19
  8091dc:	bf06b03a 	or	r3,r23,fp
  8091e0:	d9000015 	stw	r4,0(sp)
  8091e4:	18024b1e 	bne	r3,zero,809b14 <___vfiprintf_internal_r+0xe74>
  8091e8:	4003091e 	bne	r8,zero,809e10 <___vfiprintf_internal_r+0x1170>
  8091ec:	1002a61e 	bne	r2,zero,809c88 <___vfiprintf_internal_r+0xfe8>
  8091f0:	6f00004c 	andi	fp,r13,1
  8091f4:	e002b826 	beq	fp,zero,809cd8 <___vfiprintf_internal_r+0x1038>
  8091f8:	00800c04 	movi	r2,48
  8091fc:	d88016c5 	stb	r2,91(sp)
  809200:	dcc016c4 	addi	r19,sp,91
  809204:	00008e06 	br	809440 <___vfiprintf_internal_r+0x7a0>
  809208:	8d27c83a 	sub	r19,r17,r20
  80920c:	8d3fb726 	beq	r17,r20,8090ec <___vfiprintf_internal_r+0x44c>
  809210:	d8c00c17 	ldw	r3,48(sp)
  809214:	d8800b17 	ldw	r2,44(sp)
  809218:	85000015 	stw	r20,0(r16)
  80921c:	98c7883a 	add	r3,r19,r3
  809220:	10800044 	addi	r2,r2,1
  809224:	d8800b15 	stw	r2,44(sp)
  809228:	84c00115 	stw	r19,4(r16)
  80922c:	d8c00c15 	stw	r3,48(sp)
  809230:	10800208 	cmpgei	r2,r2,8
  809234:	1000061e 	bne	r2,zero,809250 <___vfiprintf_internal_r+0x5b0>
  809238:	84000204 	addi	r16,r16,8
  80923c:	d8c00117 	ldw	r3,4(sp)
  809240:	88800003 	ldbu	r2,0(r17)
  809244:	1cc7883a 	add	r3,r3,r19
  809248:	d8c00115 	stw	r3,4(sp)
  80924c:	003ec906 	br	808d74 <___vfiprintf_internal_r+0xd4>
  809250:	18027f26 	beq	r3,zero,809c50 <___vfiprintf_internal_r+0xfb0>
  809254:	d9800a04 	addi	r6,sp,40
  809258:	a80b883a 	mov	r5,r21
  80925c:	b009883a 	mov	r4,r22
  809260:	0808b940 	call	808b94 <__sprint_r.part.0>
  809264:	103fa31e 	bne	r2,zero,8090f4 <___vfiprintf_internal_r+0x454>
  809268:	9021883a 	mov	r16,r18
  80926c:	003ff306 	br	80923c <___vfiprintf_internal_r+0x59c>
  809270:	d9000417 	ldw	r4,16(sp)
  809274:	6880040c 	andi	r2,r13,16
  809278:	20c00104 	addi	r3,r4,4
  80927c:	1002a31e 	bne	r2,zero,809d0c <___vfiprintf_internal_r+0x106c>
  809280:	6880100c 	andi	r2,r13,64
  809284:	1002f626 	beq	r2,zero,809e60 <___vfiprintf_internal_r+0x11c0>
  809288:	d8800417 	ldw	r2,16(sp)
  80928c:	0039883a 	mov	fp,zero
  809290:	d8c00415 	stw	r3,16(sp)
  809294:	15c0000b 	ldhu	r23,0(r2)
  809298:	0005883a 	mov	r2,zero
  80929c:	003fc906 	br	8091c4 <___vfiprintf_internal_r+0x524>
  8092a0:	d9000417 	ldw	r4,16(sp)
  8092a4:	6880040c 	andi	r2,r13,16
  8092a8:	20c00104 	addi	r3,r4,4
  8092ac:	1002ab1e 	bne	r2,zero,809d5c <___vfiprintf_internal_r+0x10bc>
  8092b0:	6880100c 	andi	r2,r13,64
  8092b4:	1002f026 	beq	r2,zero,809e78 <___vfiprintf_internal_r+0x11d8>
  8092b8:	d8800417 	ldw	r2,16(sp)
  8092bc:	0039883a 	mov	fp,zero
  8092c0:	d8c00415 	stw	r3,16(sp)
  8092c4:	15c0000b 	ldhu	r23,0(r2)
  8092c8:	00800044 	movi	r2,1
  8092cc:	003fbd06 	br	8091c4 <___vfiprintf_internal_r+0x524>
  8092d0:	d8c00017 	ldw	r3,0(sp)
  8092d4:	d8000b15 	stw	zero,44(sp)
  8092d8:	1cc0010c 	andi	r19,r3,4
  8092dc:	98024a26 	beq	r19,zero,809c08 <___vfiprintf_internal_r+0xf68>
  8092e0:	8de1c83a 	sub	r16,r17,r23
  8092e4:	0402480e 	bge	zero,r16,809c08 <___vfiprintf_internal_r+0xf68>
  8092e8:	900d883a 	mov	r6,r18
  8092ec:	80c00450 	cmplti	r3,r16,17
  8092f0:	d9000b17 	ldw	r4,44(sp)
  8092f4:	01c02074 	movhi	r7,129
  8092f8:	1803171e 	bne	r3,zero,809f58 <___vfiprintf_internal_r+0x12b8>
  8092fc:	39c23904 	addi	r7,r7,2276
  809300:	04c00404 	movi	r19,16
  809304:	00000606 	br	809320 <___vfiprintf_internal_r+0x680>
  809308:	21400084 	addi	r5,r4,2
  80930c:	31800204 	addi	r6,r6,8
  809310:	1809883a 	mov	r4,r3
  809314:	843ffc04 	addi	r16,r16,-16
  809318:	80c00448 	cmpgei	r3,r16,17
  80931c:	18001726 	beq	r3,zero,80937c <___vfiprintf_internal_r+0x6dc>
  809320:	20c00044 	addi	r3,r4,1
  809324:	10800404 	addi	r2,r2,16
  809328:	31c00015 	stw	r7,0(r6)
  80932c:	34c00115 	stw	r19,4(r6)
  809330:	d8800c15 	stw	r2,48(sp)
  809334:	d8c00b15 	stw	r3,44(sp)
  809338:	19400208 	cmpgei	r5,r3,8
  80933c:	283ff226 	beq	r5,zero,809308 <___vfiprintf_internal_r+0x668>
  809340:	d9800a04 	addi	r6,sp,40
  809344:	a80b883a 	mov	r5,r21
  809348:	b009883a 	mov	r4,r22
  80934c:	10014f26 	beq	r2,zero,80988c <___vfiprintf_internal_r+0xbec>
  809350:	d9c00015 	stw	r7,0(sp)
  809354:	0808b940 	call	808b94 <__sprint_r.part.0>
  809358:	103f661e 	bne	r2,zero,8090f4 <___vfiprintf_internal_r+0x454>
  80935c:	d9000b17 	ldw	r4,44(sp)
  809360:	843ffc04 	addi	r16,r16,-16
  809364:	80c00448 	cmpgei	r3,r16,17
  809368:	d8800c17 	ldw	r2,48(sp)
  80936c:	d9c00017 	ldw	r7,0(sp)
  809370:	900d883a 	mov	r6,r18
  809374:	21400044 	addi	r5,r4,1
  809378:	183fe91e 	bne	r3,zero,809320 <___vfiprintf_internal_r+0x680>
  80937c:	1405883a 	add	r2,r2,r16
  809380:	d9400b15 	stw	r5,44(sp)
  809384:	31c00015 	stw	r7,0(r6)
  809388:	34000115 	stw	r16,4(r6)
  80938c:	d8800c15 	stw	r2,48(sp)
  809390:	29400210 	cmplti	r5,r5,8
  809394:	283f4b1e 	bne	r5,zero,8090c4 <___vfiprintf_internal_r+0x424>
  809398:	10021b26 	beq	r2,zero,809c08 <___vfiprintf_internal_r+0xf68>
  80939c:	d9800a04 	addi	r6,sp,40
  8093a0:	a80b883a 	mov	r5,r21
  8093a4:	b009883a 	mov	r4,r22
  8093a8:	0808b940 	call	808b94 <__sprint_r.part.0>
  8093ac:	103f511e 	bne	r2,zero,8090f4 <___vfiprintf_internal_r+0x454>
  8093b0:	d8800c17 	ldw	r2,48(sp)
  8093b4:	003f4306 	br	8090c4 <___vfiprintf_internal_r+0x424>
  8093b8:	0805b2c0 	call	805b2c <__sinit>
  8093bc:	003e4a06 	br	808ce8 <___vfiprintf_internal_r+0x48>
  8093c0:	29403fcc 	andi	r5,r5,255
  8093c4:	2802e01e 	bne	r5,zero,809f48 <___vfiprintf_internal_r+0x12a8>
  8093c8:	6880080c 	andi	r2,r13,32
  8093cc:	10005d26 	beq	r2,zero,809544 <___vfiprintf_internal_r+0x8a4>
  8093d0:	d8c00417 	ldw	r3,16(sp)
  8093d4:	18800117 	ldw	r2,4(r3)
  8093d8:	1dc00017 	ldw	r23,0(r3)
  8093dc:	18c00204 	addi	r3,r3,8
  8093e0:	d8c00415 	stw	r3,16(sp)
  8093e4:	1039883a 	mov	fp,r2
  8093e8:	10006216 	blt	r2,zero,809574 <___vfiprintf_internal_r+0x8d4>
  8093ec:	40bfffd8 	cmpnei	r2,r8,-1
  8093f0:	10000a26 	beq	r2,zero,80941c <___vfiprintf_internal_r+0x77c>
  8093f4:	00ffdfc4 	movi	r3,-129
  8093f8:	bf04b03a 	or	r2,r23,fp
  8093fc:	db800943 	ldbu	r14,37(sp)
  809400:	68da703a 	and	r13,r13,r3
  809404:	1000061e 	bne	r2,zero,809420 <___vfiprintf_internal_r+0x780>
  809408:	4000081e 	bne	r8,zero,80942c <___vfiprintf_internal_r+0x78c>
  80940c:	0039883a 	mov	fp,zero
  809410:	db400015 	stw	r13,0(sp)
  809414:	9027883a 	mov	r19,r18
  809418:	00000906 	br	809440 <___vfiprintf_internal_r+0x7a0>
  80941c:	db800943 	ldbu	r14,37(sp)
  809420:	e000ee1e 	bne	fp,zero,8097dc <___vfiprintf_internal_r+0xb3c>
  809424:	b88002a8 	cmpgeui	r2,r23,10
  809428:	1000ec1e 	bne	r2,zero,8097dc <___vfiprintf_internal_r+0xb3c>
  80942c:	bdc00c04 	addi	r23,r23,48
  809430:	ddc016c5 	stb	r23,91(sp)
  809434:	db400015 	stw	r13,0(sp)
  809438:	07000044 	movi	fp,1
  80943c:	dcc016c4 	addi	r19,sp,91
  809440:	402f883a 	mov	r23,r8
  809444:	4700010e 	bge	r8,fp,80944c <___vfiprintf_internal_r+0x7ac>
  809448:	e02f883a 	mov	r23,fp
  80944c:	73803fcc 	andi	r14,r14,255
  809450:	7380201c 	xori	r14,r14,128
  809454:	73bfe004 	addi	r14,r14,-128
  809458:	703ecc26 	beq	r14,zero,808f8c <___vfiprintf_internal_r+0x2ec>
  80945c:	bdc00044 	addi	r23,r23,1
  809460:	003eca06 	br	808f8c <___vfiprintf_internal_r+0x2ec>
  809464:	a0800007 	ldb	r2,0(r20)
  809468:	6b401014 	ori	r13,r13,64
  80946c:	003e4d06 	br	808da4 <___vfiprintf_internal_r+0x104>
  809470:	29403fcc 	andi	r5,r5,255
  809474:	2802b21e 	bne	r5,zero,809f40 <___vfiprintf_internal_r+0x12a0>
  809478:	d9000417 	ldw	r4,16(sp)
  80947c:	6880080c 	andi	r2,r13,32
  809480:	20c00017 	ldw	r3,0(r4)
  809484:	21000104 	addi	r4,r4,4
  809488:	1002251e 	bne	r2,zero,809d20 <___vfiprintf_internal_r+0x1080>
  80948c:	6880040c 	andi	r2,r13,16
  809490:	1002531e 	bne	r2,zero,809de0 <___vfiprintf_internal_r+0x1140>
  809494:	6b40100c 	andi	r13,r13,64
  809498:	68025126 	beq	r13,zero,809de0 <___vfiprintf_internal_r+0x1140>
  80949c:	d8800117 	ldw	r2,4(sp)
  8094a0:	d9000415 	stw	r4,16(sp)
  8094a4:	1880000d 	sth	r2,0(r3)
  8094a8:	003e2606 	br	808d44 <___vfiprintf_internal_r+0xa4>
  8094ac:	a0800007 	ldb	r2,0(r20)
  8094b0:	10c01b18 	cmpnei	r3,r2,108
  8094b4:	18025a26 	beq	r3,zero,809e20 <___vfiprintf_internal_r+0x1180>
  8094b8:	6b400414 	ori	r13,r13,16
  8094bc:	003e3906 	br	808da4 <___vfiprintf_internal_r+0x104>
  8094c0:	d8c00417 	ldw	r3,16(sp)
  8094c4:	d8000945 	stb	zero,37(sp)
  8094c8:	05c00044 	movi	r23,1
  8094cc:	18800017 	ldw	r2,0(r3)
  8094d0:	18c00104 	addi	r3,r3,4
  8094d4:	d8c00415 	stw	r3,16(sp)
  8094d8:	d8800d05 	stb	r2,52(sp)
  8094dc:	07000044 	movi	fp,1
  8094e0:	dcc00d04 	addi	r19,sp,52
  8094e4:	003ea706 	br	808f84 <___vfiprintf_internal_r+0x2e4>
  8094e8:	29403fcc 	andi	r5,r5,255
  8094ec:	2802981e 	bne	r5,zero,809f50 <___vfiprintf_internal_r+0x12b0>
  8094f0:	00c02074 	movhi	r3,129
  8094f4:	18c1ae04 	addi	r3,r3,1720
  8094f8:	d8c00515 	stw	r3,20(sp)
  8094fc:	68c0080c 	andi	r3,r13,32
  809500:	18008326 	beq	r3,zero,809710 <___vfiprintf_internal_r+0xa70>
  809504:	d8c00417 	ldw	r3,16(sp)
  809508:	1dc00017 	ldw	r23,0(r3)
  80950c:	1f000117 	ldw	fp,4(r3)
  809510:	18c00204 	addi	r3,r3,8
  809514:	d8c00415 	stw	r3,16(sp)
  809518:	68c0004c 	andi	r3,r13,1
  80951c:	18000226 	beq	r3,zero,809528 <___vfiprintf_internal_r+0x888>
  809520:	bf06b03a 	or	r3,r23,fp
  809524:	1801f31e 	bne	r3,zero,809cf4 <___vfiprintf_internal_r+0x1054>
  809528:	00800084 	movi	r2,2
  80952c:	003f2506 	br	8091c4 <___vfiprintf_internal_r+0x524>
  809530:	29403fcc 	andi	r5,r5,255
  809534:	2802801e 	bne	r5,zero,809f38 <___vfiprintf_internal_r+0x1298>
  809538:	6b400414 	ori	r13,r13,16
  80953c:	6880080c 	andi	r2,r13,32
  809540:	103fa31e 	bne	r2,zero,8093d0 <___vfiprintf_internal_r+0x730>
  809544:	d9000417 	ldw	r4,16(sp)
  809548:	6880040c 	andi	r2,r13,16
  80954c:	20c00104 	addi	r3,r4,4
  809550:	1001f91e 	bne	r2,zero,809d38 <___vfiprintf_internal_r+0x1098>
  809554:	6880100c 	andi	r2,r13,64
  809558:	10025226 	beq	r2,zero,809ea4 <___vfiprintf_internal_r+0x1204>
  80955c:	d8800417 	ldw	r2,16(sp)
  809560:	d8c00415 	stw	r3,16(sp)
  809564:	15c0000f 	ldh	r23,0(r2)
  809568:	b839d7fa 	srai	fp,r23,31
  80956c:	e005883a 	mov	r2,fp
  809570:	103f9e0e 	bge	r2,zero,8093ec <___vfiprintf_internal_r+0x74c>
  809574:	b804c03a 	cmpne	r2,r23,zero
  809578:	0739c83a 	sub	fp,zero,fp
  80957c:	e0b9c83a 	sub	fp,fp,r2
  809580:	00800b44 	movi	r2,45
  809584:	d8800945 	stb	r2,37(sp)
  809588:	40ffffe0 	cmpeqi	r3,r8,-1
  80958c:	05efc83a 	sub	r23,zero,r23
  809590:	03800b44 	movi	r14,45
  809594:	00800044 	movi	r2,1
  809598:	183f0e26 	beq	r3,zero,8091d4 <___vfiprintf_internal_r+0x534>
  80959c:	10c00060 	cmpeqi	r3,r2,1
  8095a0:	183f9f1e 	bne	r3,zero,809420 <___vfiprintf_internal_r+0x780>
  8095a4:	108000a0 	cmpeqi	r2,r2,2
  8095a8:	9027883a 	mov	r19,r18
  8095ac:	1000a81e 	bne	r2,zero,809850 <___vfiprintf_internal_r+0xbb0>
  8095b0:	e006977a 	slli	r3,fp,29
  8095b4:	b804d0fa 	srli	r2,r23,3
  8095b8:	e038d0fa 	srli	fp,fp,3
  8095bc:	b90001cc 	andi	r4,r23,7
  8095c0:	21000c04 	addi	r4,r4,48
  8095c4:	18aeb03a 	or	r23,r3,r2
  8095c8:	993fffc5 	stb	r4,-1(r19)
  8095cc:	bf04b03a 	or	r2,r23,fp
  8095d0:	980b883a 	mov	r5,r19
  8095d4:	9cffffc4 	addi	r19,r19,-1
  8095d8:	103ff51e 	bne	r2,zero,8095b0 <___vfiprintf_internal_r+0x910>
  8095dc:	6880004c 	andi	r2,r13,1
  8095e0:	1000a726 	beq	r2,zero,809880 <___vfiprintf_internal_r+0xbe0>
  8095e4:	21003fcc 	andi	r4,r4,255
  8095e8:	2100201c 	xori	r4,r4,128
  8095ec:	213fe004 	addi	r4,r4,-128
  8095f0:	20800c18 	cmpnei	r2,r4,48
  8095f4:	1000a226 	beq	r2,zero,809880 <___vfiprintf_internal_r+0xbe0>
  8095f8:	297fff84 	addi	r5,r5,-2
  8095fc:	00800c04 	movi	r2,48
  809600:	98bfffc5 	stb	r2,-1(r19)
  809604:	9179c83a 	sub	fp,r18,r5
  809608:	db400015 	stw	r13,0(sp)
  80960c:	2827883a 	mov	r19,r5
  809610:	003f8b06 	br	809440 <___vfiprintf_internal_r+0x7a0>
  809614:	a0800007 	ldb	r2,0(r20)
  809618:	6b402014 	ori	r13,r13,128
  80961c:	003de106 	br	808da4 <___vfiprintf_internal_r+0x104>
  809620:	a0800007 	ldb	r2,0(r20)
  809624:	a0c00044 	addi	r3,r20,1
  809628:	11000aa0 	cmpeqi	r4,r2,42
  80962c:	2002551e 	bne	r4,zero,809f84 <___vfiprintf_internal_r+0x12e4>
  809630:	113ff404 	addi	r4,r2,-48
  809634:	21c002b0 	cmpltui	r7,r4,10
  809638:	1829883a 	mov	r20,r3
  80963c:	0011883a 	mov	r8,zero
  809640:	383dd926 	beq	r7,zero,808da8 <___vfiprintf_internal_r+0x108>
  809644:	400690ba 	slli	r3,r8,2
  809648:	a0800007 	ldb	r2,0(r20)
  80964c:	a5000044 	addi	r20,r20,1
  809650:	1a11883a 	add	r8,r3,r8
  809654:	4211883a 	add	r8,r8,r8
  809658:	4111883a 	add	r8,r8,r4
  80965c:	113ff404 	addi	r4,r2,-48
  809660:	20c002b0 	cmpltui	r3,r4,10
  809664:	183ff71e 	bne	r3,zero,809644 <___vfiprintf_internal_r+0x9a4>
  809668:	003dcf06 	br	808da8 <___vfiprintf_internal_r+0x108>
  80966c:	a0800003 	ldbu	r2,0(r20)
  809670:	10803fcc 	andi	r2,r2,255
  809674:	1080201c 	xori	r2,r2,128
  809678:	6b400114 	ori	r13,r13,4
  80967c:	10bfe004 	addi	r2,r2,-128
  809680:	003dc806 	br	808da4 <___vfiprintf_internal_r+0x104>
  809684:	a0800007 	ldb	r2,0(r20)
  809688:	01400044 	movi	r5,1
  80968c:	01800ac4 	movi	r6,43
  809690:	003dc406 	br	808da4 <___vfiprintf_internal_r+0x104>
  809694:	d8c00417 	ldw	r3,16(sp)
  809698:	a0800003 	ldbu	r2,0(r20)
  80969c:	1c400017 	ldw	r17,0(r3)
  8096a0:	18c00104 	addi	r3,r3,4
  8096a4:	8801b916 	blt	r17,zero,809d8c <___vfiprintf_internal_r+0x10ec>
  8096a8:	d8c00415 	stw	r3,16(sp)
  8096ac:	10803fcc 	andi	r2,r2,255
  8096b0:	1080201c 	xori	r2,r2,128
  8096b4:	10bfe004 	addi	r2,r2,-128
  8096b8:	003dba06 	br	808da4 <___vfiprintf_internal_r+0x104>
  8096bc:	a0800007 	ldb	r2,0(r20)
  8096c0:	6b400054 	ori	r13,r13,1
  8096c4:	003db706 	br	808da4 <___vfiprintf_internal_r+0x104>
  8096c8:	30c03fcc 	andi	r3,r6,255
  8096cc:	18c0201c 	xori	r3,r3,128
  8096d0:	18ffe004 	addi	r3,r3,-128
  8096d4:	a0800003 	ldbu	r2,0(r20)
  8096d8:	183ff41e 	bne	r3,zero,8096ac <___vfiprintf_internal_r+0xa0c>
  8096dc:	10803fcc 	andi	r2,r2,255
  8096e0:	1080201c 	xori	r2,r2,128
  8096e4:	01400044 	movi	r5,1
  8096e8:	01800804 	movi	r6,32
  8096ec:	10bfe004 	addi	r2,r2,-128
  8096f0:	003dac06 	br	808da4 <___vfiprintf_internal_r+0x104>
  8096f4:	29403fcc 	andi	r5,r5,255
  8096f8:	28020a1e 	bne	r5,zero,809f24 <___vfiprintf_internal_r+0x1284>
  8096fc:	00c02074 	movhi	r3,129
  809700:	18c1b304 	addi	r3,r3,1740
  809704:	d8c00515 	stw	r3,20(sp)
  809708:	68c0080c 	andi	r3,r13,32
  80970c:	183f7d1e 	bne	r3,zero,809504 <___vfiprintf_internal_r+0x864>
  809710:	d9400417 	ldw	r5,16(sp)
  809714:	68c0040c 	andi	r3,r13,16
  809718:	29000104 	addi	r4,r5,4
  80971c:	18018b1e 	bne	r3,zero,809d4c <___vfiprintf_internal_r+0x10ac>
  809720:	68c0100c 	andi	r3,r13,64
  809724:	1801da26 	beq	r3,zero,809e90 <___vfiprintf_internal_r+0x11f0>
  809728:	d8c00417 	ldw	r3,16(sp)
  80972c:	0039883a 	mov	fp,zero
  809730:	d9000415 	stw	r4,16(sp)
  809734:	1dc0000b 	ldhu	r23,0(r3)
  809738:	003f7706 	br	809518 <___vfiprintf_internal_r+0x878>
  80973c:	d8800417 	ldw	r2,16(sp)
  809740:	d8000945 	stb	zero,37(sp)
  809744:	14c00017 	ldw	r19,0(r2)
  809748:	10c00104 	addi	r3,r2,4
  80974c:	9801bb26 	beq	r19,zero,809e3c <___vfiprintf_internal_r+0x119c>
  809750:	40bfffe0 	cmpeqi	r2,r8,-1
  809754:	1001901e 	bne	r2,zero,809d98 <___vfiprintf_internal_r+0x10f8>
  809758:	400d883a 	mov	r6,r8
  80975c:	000b883a 	mov	r5,zero
  809760:	9809883a 	mov	r4,r19
  809764:	d8c00315 	stw	r3,12(sp)
  809768:	db400215 	stw	r13,8(sp)
  80976c:	da000015 	stw	r8,0(sp)
  809770:	0806f700 	call	806f70 <memchr>
  809774:	da000017 	ldw	r8,0(sp)
  809778:	db400217 	ldw	r13,8(sp)
  80977c:	d8c00317 	ldw	r3,12(sp)
  809780:	1001e426 	beq	r2,zero,809f14 <___vfiprintf_internal_r+0x1274>
  809784:	14f9c83a 	sub	fp,r2,r19
  809788:	e02f883a 	mov	r23,fp
  80978c:	d8c00415 	stw	r3,16(sp)
  809790:	003dfc06 	br	808f84 <___vfiprintf_internal_r+0x2e4>
  809794:	a0800007 	ldb	r2,0(r20)
  809798:	6b400814 	ori	r13,r13,32
  80979c:	003d8106 	br	808da4 <___vfiprintf_internal_r+0x104>
  8097a0:	d8c00417 	ldw	r3,16(sp)
  8097a4:	00800c04 	movi	r2,48
  8097a8:	d8800985 	stb	r2,38(sp)
  8097ac:	00801e04 	movi	r2,120
  8097b0:	01002074 	movhi	r4,129
  8097b4:	d88009c5 	stb	r2,39(sp)
  8097b8:	18800104 	addi	r2,r3,4
  8097bc:	d8800415 	stw	r2,16(sp)
  8097c0:	2081b304 	addi	r2,r4,1740
  8097c4:	d8800515 	stw	r2,20(sp)
  8097c8:	1dc00017 	ldw	r23,0(r3)
  8097cc:	0039883a 	mov	fp,zero
  8097d0:	6b400094 	ori	r13,r13,2
  8097d4:	00800084 	movi	r2,2
  8097d8:	003e7a06 	br	8091c4 <___vfiprintf_internal_r+0x524>
  8097dc:	9027883a 	mov	r19,r18
  8097e0:	b809883a 	mov	r4,r23
  8097e4:	e00b883a 	mov	r5,fp
  8097e8:	01800284 	movi	r6,10
  8097ec:	000f883a 	mov	r7,zero
  8097f0:	db800315 	stw	r14,12(sp)
  8097f4:	da000215 	stw	r8,8(sp)
  8097f8:	db400015 	stw	r13,0(sp)
  8097fc:	080b4e80 	call	80b4e8 <__umoddi3>
  809800:	10800c04 	addi	r2,r2,48
  809804:	b809883a 	mov	r4,r23
  809808:	e00b883a 	mov	r5,fp
  80980c:	98bfffc5 	stb	r2,-1(r19)
  809810:	01800284 	movi	r6,10
  809814:	000f883a 	mov	r7,zero
  809818:	080aecc0 	call	80aecc <__udivdi3>
  80981c:	e009883a 	mov	r4,fp
  809820:	b80b883a 	mov	r5,r23
  809824:	db400017 	ldw	r13,0(sp)
  809828:	da000217 	ldw	r8,8(sp)
  80982c:	db800317 	ldw	r14,12(sp)
  809830:	9cffffc4 	addi	r19,r19,-1
  809834:	102f883a 	mov	r23,r2
  809838:	1839883a 	mov	fp,r3
  80983c:	203fe81e 	bne	r4,zero,8097e0 <___vfiprintf_internal_r+0xb40>
  809840:	294002a8 	cmpgeui	r5,r5,10
  809844:	283fe61e 	bne	r5,zero,8097e0 <___vfiprintf_internal_r+0xb40>
  809848:	94f9c83a 	sub	fp,r18,r19
  80984c:	003efc06 	br	809440 <___vfiprintf_internal_r+0x7a0>
  809850:	d9000517 	ldw	r4,20(sp)
  809854:	b88003cc 	andi	r2,r23,15
  809858:	e006973a 	slli	r3,fp,28
  80985c:	b82ed13a 	srli	r23,r23,4
  809860:	2085883a 	add	r2,r4,r2
  809864:	10800003 	ldbu	r2,0(r2)
  809868:	e038d13a 	srli	fp,fp,4
  80986c:	1deeb03a 	or	r23,r3,r23
  809870:	98bfffc5 	stb	r2,-1(r19)
  809874:	bf04b03a 	or	r2,r23,fp
  809878:	9cffffc4 	addi	r19,r19,-1
  80987c:	103ff41e 	bne	r2,zero,809850 <___vfiprintf_internal_r+0xbb0>
  809880:	94f9c83a 	sub	fp,r18,r19
  809884:	db400015 	stw	r13,0(sp)
  809888:	003eed06 	br	809440 <___vfiprintf_internal_r+0x7a0>
  80988c:	01400044 	movi	r5,1
  809890:	0009883a 	mov	r4,zero
  809894:	900d883a 	mov	r6,r18
  809898:	003e9e06 	br	809314 <___vfiprintf_internal_r+0x674>
  80989c:	8dc7c83a 	sub	r3,r17,r23
  8098a0:	00fdf20e 	bge	zero,r3,80906c <___vfiprintf_internal_r+0x3cc>
  8098a4:	19c00450 	cmplti	r7,r3,17
  8098a8:	3801ae1e 	bne	r7,zero,809f64 <___vfiprintf_internal_r+0x12c4>
  8098ac:	01c02074 	movhi	r7,129
  8098b0:	39c23504 	addi	r7,r7,2260
  8098b4:	03400404 	movi	r13,16
  8098b8:	00000606 	br	8098d4 <___vfiprintf_internal_r+0xc34>
  8098bc:	23800084 	addi	r14,r4,2
  8098c0:	84000204 	addi	r16,r16,8
  8098c4:	2809883a 	mov	r4,r5
  8098c8:	18fffc04 	addi	r3,r3,-16
  8098cc:	19400448 	cmpgei	r5,r3,17
  8098d0:	28001c26 	beq	r5,zero,809944 <___vfiprintf_internal_r+0xca4>
  8098d4:	21400044 	addi	r5,r4,1
  8098d8:	10800404 	addi	r2,r2,16
  8098dc:	81c00015 	stw	r7,0(r16)
  8098e0:	83400115 	stw	r13,4(r16)
  8098e4:	d8800c15 	stw	r2,48(sp)
  8098e8:	d9400b15 	stw	r5,44(sp)
  8098ec:	29800208 	cmpgei	r6,r5,8
  8098f0:	303ff226 	beq	r6,zero,8098bc <___vfiprintf_internal_r+0xc1c>
  8098f4:	d9800a04 	addi	r6,sp,40
  8098f8:	a80b883a 	mov	r5,r21
  8098fc:	b009883a 	mov	r4,r22
  809900:	10006326 	beq	r2,zero,809a90 <___vfiprintf_internal_r+0xdf0>
  809904:	d9c00615 	stw	r7,24(sp)
  809908:	d8c00315 	stw	r3,12(sp)
  80990c:	da000215 	stw	r8,8(sp)
  809910:	0808b940 	call	808b94 <__sprint_r.part.0>
  809914:	103df71e 	bne	r2,zero,8090f4 <___vfiprintf_internal_r+0x454>
  809918:	d8c00317 	ldw	r3,12(sp)
  80991c:	d9000b17 	ldw	r4,44(sp)
  809920:	d8800c17 	ldw	r2,48(sp)
  809924:	18fffc04 	addi	r3,r3,-16
  809928:	19400448 	cmpgei	r5,r3,17
  80992c:	d9c00617 	ldw	r7,24(sp)
  809930:	da000217 	ldw	r8,8(sp)
  809934:	9021883a 	mov	r16,r18
  809938:	23800044 	addi	r14,r4,1
  80993c:	03400404 	movi	r13,16
  809940:	283fe41e 	bne	r5,zero,8098d4 <___vfiprintf_internal_r+0xc34>
  809944:	83400204 	addi	r13,r16,8
  809948:	10c5883a 	add	r2,r2,r3
  80994c:	80c00115 	stw	r3,4(r16)
  809950:	81c00015 	stw	r7,0(r16)
  809954:	d8800c15 	stw	r2,48(sp)
  809958:	db800b15 	stw	r14,44(sp)
  80995c:	70c00208 	cmpgei	r3,r14,8
  809960:	1800df26 	beq	r3,zero,809ce0 <___vfiprintf_internal_r+0x1040>
  809964:	10015826 	beq	r2,zero,809ec8 <___vfiprintf_internal_r+0x1228>
  809968:	d9800a04 	addi	r6,sp,40
  80996c:	a80b883a 	mov	r5,r21
  809970:	b009883a 	mov	r4,r22
  809974:	da000215 	stw	r8,8(sp)
  809978:	0808b940 	call	808b94 <__sprint_r.part.0>
  80997c:	103ddd1e 	bne	r2,zero,8090f4 <___vfiprintf_internal_r+0x454>
  809980:	da000217 	ldw	r8,8(sp)
  809984:	d9000b17 	ldw	r4,44(sp)
  809988:	d8800c17 	ldw	r2,48(sp)
  80998c:	4711c83a 	sub	r8,r8,fp
  809990:	d9801904 	addi	r6,sp,100
  809994:	21400044 	addi	r5,r4,1
  809998:	9021883a 	mov	r16,r18
  80999c:	023db50e 	bge	zero,r8,809074 <___vfiprintf_internal_r+0x3d4>
  8099a0:	40c00450 	cmplti	r3,r8,17
  8099a4:	01c02074 	movhi	r7,129
  8099a8:	1801441e 	bne	r3,zero,809ebc <___vfiprintf_internal_r+0x121c>
  8099ac:	39c23504 	addi	r7,r7,2260
  8099b0:	03400404 	movi	r13,16
  8099b4:	00000606 	br	8099d0 <___vfiprintf_internal_r+0xd30>
  8099b8:	21400084 	addi	r5,r4,2
  8099bc:	84000204 	addi	r16,r16,8
  8099c0:	1809883a 	mov	r4,r3
  8099c4:	423ffc04 	addi	r8,r8,-16
  8099c8:	40c00448 	cmpgei	r3,r8,17
  8099cc:	18001a26 	beq	r3,zero,809a38 <___vfiprintf_internal_r+0xd98>
  8099d0:	20c00044 	addi	r3,r4,1
  8099d4:	10800404 	addi	r2,r2,16
  8099d8:	81c00015 	stw	r7,0(r16)
  8099dc:	83400115 	stw	r13,4(r16)
  8099e0:	d8800c15 	stw	r2,48(sp)
  8099e4:	d8c00b15 	stw	r3,44(sp)
  8099e8:	19400208 	cmpgei	r5,r3,8
  8099ec:	283ff226 	beq	r5,zero,8099b8 <___vfiprintf_internal_r+0xd18>
  8099f0:	d9800a04 	addi	r6,sp,40
  8099f4:	a80b883a 	mov	r5,r21
  8099f8:	b009883a 	mov	r4,r22
  8099fc:	10001a26 	beq	r2,zero,809a68 <___vfiprintf_internal_r+0xdc8>
  809a00:	d9c00315 	stw	r7,12(sp)
  809a04:	da000215 	stw	r8,8(sp)
  809a08:	0808b940 	call	808b94 <__sprint_r.part.0>
  809a0c:	103db91e 	bne	r2,zero,8090f4 <___vfiprintf_internal_r+0x454>
  809a10:	da000217 	ldw	r8,8(sp)
  809a14:	d9000b17 	ldw	r4,44(sp)
  809a18:	d8800c17 	ldw	r2,48(sp)
  809a1c:	423ffc04 	addi	r8,r8,-16
  809a20:	40c00448 	cmpgei	r3,r8,17
  809a24:	d9c00317 	ldw	r7,12(sp)
  809a28:	9021883a 	mov	r16,r18
  809a2c:	21400044 	addi	r5,r4,1
  809a30:	03400404 	movi	r13,16
  809a34:	183fe61e 	bne	r3,zero,8099d0 <___vfiprintf_internal_r+0xd30>
  809a38:	81000204 	addi	r4,r16,8
  809a3c:	1205883a 	add	r2,r2,r8
  809a40:	81c00015 	stw	r7,0(r16)
  809a44:	82000115 	stw	r8,4(r16)
  809a48:	d8800c15 	stw	r2,48(sp)
  809a4c:	d9400b15 	stw	r5,44(sp)
  809a50:	28c00208 	cmpgei	r3,r5,8
  809a54:	1800721e 	bne	r3,zero,809c20 <___vfiprintf_internal_r+0xf80>
  809a58:	29400044 	addi	r5,r5,1
  809a5c:	21800204 	addi	r6,r4,8
  809a60:	2021883a 	mov	r16,r4
  809a64:	003d8306 	br	809074 <___vfiprintf_internal_r+0x3d4>
  809a68:	01400044 	movi	r5,1
  809a6c:	0009883a 	mov	r4,zero
  809a70:	9021883a 	mov	r16,r18
  809a74:	003fd306 	br	8099c4 <___vfiprintf_internal_r+0xd24>
  809a78:	d9800a04 	addi	r6,sp,40
  809a7c:	a80b883a 	mov	r5,r21
  809a80:	b009883a 	mov	r4,r22
  809a84:	0808b940 	call	808b94 <__sprint_r.part.0>
  809a88:	103d9426 	beq	r2,zero,8090dc <___vfiprintf_internal_r+0x43c>
  809a8c:	003d9906 	br	8090f4 <___vfiprintf_internal_r+0x454>
  809a90:	03800044 	movi	r14,1
  809a94:	0009883a 	mov	r4,zero
  809a98:	9021883a 	mov	r16,r18
  809a9c:	003f8a06 	br	8098c8 <___vfiprintf_internal_r+0xc28>
  809aa0:	10006e26 	beq	r2,zero,809c5c <___vfiprintf_internal_r+0xfbc>
  809aa4:	d9800a04 	addi	r6,sp,40
  809aa8:	a80b883a 	mov	r5,r21
  809aac:	b009883a 	mov	r4,r22
  809ab0:	da000615 	stw	r8,24(sp)
  809ab4:	db400315 	stw	r13,12(sp)
  809ab8:	db800215 	stw	r14,8(sp)
  809abc:	0808b940 	call	808b94 <__sprint_r.part.0>
  809ac0:	103d8c1e 	bne	r2,zero,8090f4 <___vfiprintf_internal_r+0x454>
  809ac4:	d9000b17 	ldw	r4,44(sp)
  809ac8:	d8800c17 	ldw	r2,48(sp)
  809acc:	da000617 	ldw	r8,24(sp)
  809ad0:	db400317 	ldw	r13,12(sp)
  809ad4:	db800217 	ldw	r14,8(sp)
  809ad8:	d9801904 	addi	r6,sp,100
  809adc:	21400044 	addi	r5,r4,1
  809ae0:	9021883a 	mov	r16,r18
  809ae4:	003d4606 	br	809000 <___vfiprintf_internal_r+0x360>
  809ae8:	d8800984 	addi	r2,sp,38
  809aec:	d8801715 	stw	r2,92(sp)
  809af0:	00800084 	movi	r2,2
  809af4:	d8801815 	stw	r2,96(sp)
  809af8:	d9801904 	addi	r6,sp,100
  809afc:	01400044 	movi	r5,1
  809b00:	3021883a 	mov	r16,r6
  809b04:	2809883a 	mov	r4,r5
  809b08:	21400044 	addi	r5,r4,1
  809b0c:	81800204 	addi	r6,r16,8
  809b10:	003d5406 	br	809064 <___vfiprintf_internal_r+0x3c4>
  809b14:	db400017 	ldw	r13,0(sp)
  809b18:	003ea006 	br	80959c <___vfiprintf_internal_r+0x8fc>
  809b1c:	19400450 	cmplti	r5,r3,17
  809b20:	01c02074 	movhi	r7,129
  809b24:	2801011e 	bne	r5,zero,809f2c <___vfiprintf_internal_r+0x128c>
  809b28:	39c23904 	addi	r7,r7,2276
  809b2c:	03c00404 	movi	r15,16
  809b30:	00000706 	br	809b50 <___vfiprintf_internal_r+0xeb0>
  809b34:	27c00084 	addi	ra,r4,2
  809b38:	84000204 	addi	r16,r16,8
  809b3c:	3009883a 	mov	r4,r6
  809b40:	18fffc04 	addi	r3,r3,-16
  809b44:	19400448 	cmpgei	r5,r3,17
  809b48:	28002026 	beq	r5,zero,809bcc <___vfiprintf_internal_r+0xf2c>
  809b4c:	21800044 	addi	r6,r4,1
  809b50:	10800404 	addi	r2,r2,16
  809b54:	81c00015 	stw	r7,0(r16)
  809b58:	83c00115 	stw	r15,4(r16)
  809b5c:	d8800c15 	stw	r2,48(sp)
  809b60:	d9800b15 	stw	r6,44(sp)
  809b64:	31400208 	cmpgei	r5,r6,8
  809b68:	283ff226 	beq	r5,zero,809b34 <___vfiprintf_internal_r+0xe94>
  809b6c:	d9800a04 	addi	r6,sp,40
  809b70:	a80b883a 	mov	r5,r21
  809b74:	b009883a 	mov	r4,r22
  809b78:	10001f26 	beq	r2,zero,809bf8 <___vfiprintf_internal_r+0xf58>
  809b7c:	d9c00815 	stw	r7,32(sp)
  809b80:	d8c00715 	stw	r3,28(sp)
  809b84:	da000615 	stw	r8,24(sp)
  809b88:	db400315 	stw	r13,12(sp)
  809b8c:	db800215 	stw	r14,8(sp)
  809b90:	0808b940 	call	808b94 <__sprint_r.part.0>
  809b94:	103d571e 	bne	r2,zero,8090f4 <___vfiprintf_internal_r+0x454>
  809b98:	d8c00717 	ldw	r3,28(sp)
  809b9c:	d9000b17 	ldw	r4,44(sp)
  809ba0:	d8800c17 	ldw	r2,48(sp)
  809ba4:	18fffc04 	addi	r3,r3,-16
  809ba8:	19400448 	cmpgei	r5,r3,17
  809bac:	d9c00817 	ldw	r7,32(sp)
  809bb0:	da000617 	ldw	r8,24(sp)
  809bb4:	db400317 	ldw	r13,12(sp)
  809bb8:	db800217 	ldw	r14,8(sp)
  809bbc:	9021883a 	mov	r16,r18
  809bc0:	27c00044 	addi	ra,r4,1
  809bc4:	03c00404 	movi	r15,16
  809bc8:	283fe01e 	bne	r5,zero,809b4c <___vfiprintf_internal_r+0xeac>
  809bcc:	10c5883a 	add	r2,r2,r3
  809bd0:	80c00115 	stw	r3,4(r16)
  809bd4:	81c00015 	stw	r7,0(r16)
  809bd8:	d8800c15 	stw	r2,48(sp)
  809bdc:	dfc00b15 	stw	ra,44(sp)
  809be0:	f8c00208 	cmpgei	r3,ra,8
  809be4:	18002b1e 	bne	r3,zero,809c94 <___vfiprintf_internal_r+0xff4>
  809be8:	84000204 	addi	r16,r16,8
  809bec:	f9400044 	addi	r5,ra,1
  809bf0:	f809883a 	mov	r4,ra
  809bf4:	003cf206 	br	808fc0 <___vfiprintf_internal_r+0x320>
  809bf8:	0009883a 	mov	r4,zero
  809bfc:	07c00044 	movi	ra,1
  809c00:	9021883a 	mov	r16,r18
  809c04:	003fce06 	br	809b40 <___vfiprintf_internal_r+0xea0>
  809c08:	8dc0010e 	bge	r17,r23,809c10 <___vfiprintf_internal_r+0xf70>
  809c0c:	b823883a 	mov	r17,r23
  809c10:	d8800117 	ldw	r2,4(sp)
  809c14:	1445883a 	add	r2,r2,r17
  809c18:	d8800115 	stw	r2,4(sp)
  809c1c:	003d2f06 	br	8090dc <___vfiprintf_internal_r+0x43c>
  809c20:	10007326 	beq	r2,zero,809df0 <___vfiprintf_internal_r+0x1150>
  809c24:	d9800a04 	addi	r6,sp,40
  809c28:	a80b883a 	mov	r5,r21
  809c2c:	b009883a 	mov	r4,r22
  809c30:	0808b940 	call	808b94 <__sprint_r.part.0>
  809c34:	103d2f1e 	bne	r2,zero,8090f4 <___vfiprintf_internal_r+0x454>
  809c38:	d9400b17 	ldw	r5,44(sp)
  809c3c:	d8800c17 	ldw	r2,48(sp)
  809c40:	d9801904 	addi	r6,sp,100
  809c44:	29400044 	addi	r5,r5,1
  809c48:	9021883a 	mov	r16,r18
  809c4c:	003d0906 	br	809074 <___vfiprintf_internal_r+0x3d4>
  809c50:	d8000b15 	stw	zero,44(sp)
  809c54:	9021883a 	mov	r16,r18
  809c58:	003d7806 	br	80923c <___vfiprintf_internal_r+0x59c>
  809c5c:	7000441e 	bne	r14,zero,809d70 <___vfiprintf_internal_r+0x10d0>
  809c60:	0009883a 	mov	r4,zero
  809c64:	d9801904 	addi	r6,sp,100
  809c68:	01400044 	movi	r5,1
  809c6c:	9021883a 	mov	r16,r18
  809c70:	003cfc06 	br	809064 <___vfiprintf_internal_r+0x3c4>
  809c74:	d9801904 	addi	r6,sp,100
  809c78:	01400044 	movi	r5,1
  809c7c:	0009883a 	mov	r4,zero
  809c80:	9021883a 	mov	r16,r18
  809c84:	003cf706 	br	809064 <___vfiprintf_internal_r+0x3c4>
  809c88:	0039883a 	mov	fp,zero
  809c8c:	9027883a 	mov	r19,r18
  809c90:	003deb06 	br	809440 <___vfiprintf_internal_r+0x7a0>
  809c94:	10004a26 	beq	r2,zero,809dc0 <___vfiprintf_internal_r+0x1120>
  809c98:	d9800a04 	addi	r6,sp,40
  809c9c:	a80b883a 	mov	r5,r21
  809ca0:	b009883a 	mov	r4,r22
  809ca4:	da000615 	stw	r8,24(sp)
  809ca8:	db400315 	stw	r13,12(sp)
  809cac:	db800215 	stw	r14,8(sp)
  809cb0:	0808b940 	call	808b94 <__sprint_r.part.0>
  809cb4:	103d0f1e 	bne	r2,zero,8090f4 <___vfiprintf_internal_r+0x454>
  809cb8:	d9000b17 	ldw	r4,44(sp)
  809cbc:	d8800c17 	ldw	r2,48(sp)
  809cc0:	da000617 	ldw	r8,24(sp)
  809cc4:	db400317 	ldw	r13,12(sp)
  809cc8:	db800217 	ldw	r14,8(sp)
  809ccc:	9021883a 	mov	r16,r18
  809cd0:	21400044 	addi	r5,r4,1
  809cd4:	003cba06 	br	808fc0 <___vfiprintf_internal_r+0x320>
  809cd8:	9027883a 	mov	r19,r18
  809cdc:	003dd806 	br	809440 <___vfiprintf_internal_r+0x7a0>
  809ce0:	71400044 	addi	r5,r14,1
  809ce4:	69800204 	addi	r6,r13,8
  809ce8:	7009883a 	mov	r4,r14
  809cec:	6821883a 	mov	r16,r13
  809cf0:	003cde06 	br	80906c <___vfiprintf_internal_r+0x3cc>
  809cf4:	00c00c04 	movi	r3,48
  809cf8:	d88009c5 	stb	r2,39(sp)
  809cfc:	d8c00985 	stb	r3,38(sp)
  809d00:	6b400094 	ori	r13,r13,2
  809d04:	00800084 	movi	r2,2
  809d08:	003d2e06 	br	8091c4 <___vfiprintf_internal_r+0x524>
  809d0c:	25c00017 	ldw	r23,0(r4)
  809d10:	0039883a 	mov	fp,zero
  809d14:	d8c00415 	stw	r3,16(sp)
  809d18:	0005883a 	mov	r2,zero
  809d1c:	003d2906 	br	8091c4 <___vfiprintf_internal_r+0x524>
  809d20:	d9400117 	ldw	r5,4(sp)
  809d24:	d9000415 	stw	r4,16(sp)
  809d28:	2805d7fa 	srai	r2,r5,31
  809d2c:	19400015 	stw	r5,0(r3)
  809d30:	18800115 	stw	r2,4(r3)
  809d34:	003c0306 	br	808d44 <___vfiprintf_internal_r+0xa4>
  809d38:	25c00017 	ldw	r23,0(r4)
  809d3c:	d8c00415 	stw	r3,16(sp)
  809d40:	b839d7fa 	srai	fp,r23,31
  809d44:	e005883a 	mov	r2,fp
  809d48:	003da706 	br	8093e8 <___vfiprintf_internal_r+0x748>
  809d4c:	2dc00017 	ldw	r23,0(r5)
  809d50:	0039883a 	mov	fp,zero
  809d54:	d9000415 	stw	r4,16(sp)
  809d58:	003def06 	br	809518 <___vfiprintf_internal_r+0x878>
  809d5c:	25c00017 	ldw	r23,0(r4)
  809d60:	0039883a 	mov	fp,zero
  809d64:	d8c00415 	stw	r3,16(sp)
  809d68:	00800044 	movi	r2,1
  809d6c:	003d1506 	br	8091c4 <___vfiprintf_internal_r+0x524>
  809d70:	d8800984 	addi	r2,sp,38
  809d74:	d8801715 	stw	r2,92(sp)
  809d78:	00800084 	movi	r2,2
  809d7c:	d8801815 	stw	r2,96(sp)
  809d80:	dc001904 	addi	r16,sp,100
  809d84:	01000044 	movi	r4,1
  809d88:	003f5f06 	br	809b08 <___vfiprintf_internal_r+0xe68>
  809d8c:	0463c83a 	sub	r17,zero,r17
  809d90:	d8c00415 	stw	r3,16(sp)
  809d94:	003e3606 	br	809670 <___vfiprintf_internal_r+0x9d0>
  809d98:	9809883a 	mov	r4,r19
  809d9c:	d8c00215 	stw	r3,8(sp)
  809da0:	db400015 	stw	r13,0(sp)
  809da4:	08018440 	call	801844 <strlen>
  809da8:	d8c00217 	ldw	r3,8(sp)
  809dac:	db400017 	ldw	r13,0(sp)
  809db0:	1039883a 	mov	fp,r2
  809db4:	102f883a 	mov	r23,r2
  809db8:	d8c00415 	stw	r3,16(sp)
  809dbc:	003c7106 	br	808f84 <___vfiprintf_internal_r+0x2e4>
  809dc0:	d8c00947 	ldb	r3,37(sp)
  809dc4:	1800451e 	bne	r3,zero,809edc <___vfiprintf_internal_r+0x123c>
  809dc8:	703f471e 	bne	r14,zero,809ae8 <___vfiprintf_internal_r+0xe48>
  809dcc:	0009883a 	mov	r4,zero
  809dd0:	d9801904 	addi	r6,sp,100
  809dd4:	01400044 	movi	r5,1
  809dd8:	9021883a 	mov	r16,r18
  809ddc:	003ca306 	br	80906c <___vfiprintf_internal_r+0x3cc>
  809de0:	d8800117 	ldw	r2,4(sp)
  809de4:	18800015 	stw	r2,0(r3)
  809de8:	d9000415 	stw	r4,16(sp)
  809dec:	003bd506 	br	808d44 <___vfiprintf_internal_r+0xa4>
  809df0:	00c00044 	movi	r3,1
  809df4:	e005883a 	mov	r2,fp
  809df8:	dcc01715 	stw	r19,92(sp)
  809dfc:	df001815 	stw	fp,96(sp)
  809e00:	df000c15 	stw	fp,48(sp)
  809e04:	d8c00b15 	stw	r3,44(sp)
  809e08:	d9801904 	addi	r6,sp,100
  809e0c:	003ca806 	br	8090b0 <___vfiprintf_internal_r+0x410>
  809e10:	10c00060 	cmpeqi	r3,r2,1
  809e14:	db400017 	ldw	r13,0(sp)
  809e18:	183de226 	beq	r3,zero,8095a4 <___vfiprintf_internal_r+0x904>
  809e1c:	003d8306 	br	80942c <___vfiprintf_internal_r+0x78c>
  809e20:	a0800043 	ldbu	r2,1(r20)
  809e24:	6b400814 	ori	r13,r13,32
  809e28:	a5000044 	addi	r20,r20,1
  809e2c:	10803fcc 	andi	r2,r2,255
  809e30:	1080201c 	xori	r2,r2,128
  809e34:	10bfe004 	addi	r2,r2,-128
  809e38:	003bda06 	br	808da4 <___vfiprintf_internal_r+0x104>
  809e3c:	408001f0 	cmpltui	r2,r8,7
  809e40:	4039883a 	mov	fp,r8
  809e44:	1000011e 	bne	r2,zero,809e4c <___vfiprintf_internal_r+0x11ac>
  809e48:	07000184 	movi	fp,6
  809e4c:	04c02074 	movhi	r19,129
  809e50:	e02f883a 	mov	r23,fp
  809e54:	d8c00415 	stw	r3,16(sp)
  809e58:	9cc1b804 	addi	r19,r19,1760
  809e5c:	003c4906 	br	808f84 <___vfiprintf_internal_r+0x2e4>
  809e60:	d8800417 	ldw	r2,16(sp)
  809e64:	0039883a 	mov	fp,zero
  809e68:	d8c00415 	stw	r3,16(sp)
  809e6c:	15c00017 	ldw	r23,0(r2)
  809e70:	0005883a 	mov	r2,zero
  809e74:	003cd306 	br	8091c4 <___vfiprintf_internal_r+0x524>
  809e78:	d8800417 	ldw	r2,16(sp)
  809e7c:	0039883a 	mov	fp,zero
  809e80:	d8c00415 	stw	r3,16(sp)
  809e84:	15c00017 	ldw	r23,0(r2)
  809e88:	00800044 	movi	r2,1
  809e8c:	003ccd06 	br	8091c4 <___vfiprintf_internal_r+0x524>
  809e90:	d8c00417 	ldw	r3,16(sp)
  809e94:	0039883a 	mov	fp,zero
  809e98:	d9000415 	stw	r4,16(sp)
  809e9c:	1dc00017 	ldw	r23,0(r3)
  809ea0:	003d9d06 	br	809518 <___vfiprintf_internal_r+0x878>
  809ea4:	d8800417 	ldw	r2,16(sp)
  809ea8:	d8c00415 	stw	r3,16(sp)
  809eac:	15c00017 	ldw	r23,0(r2)
  809eb0:	b839d7fa 	srai	fp,r23,31
  809eb4:	e005883a 	mov	r2,fp
  809eb8:	003d4b06 	br	8093e8 <___vfiprintf_internal_r+0x748>
  809ebc:	3009883a 	mov	r4,r6
  809ec0:	39c23504 	addi	r7,r7,2260
  809ec4:	003edd06 	br	809a3c <___vfiprintf_internal_r+0xd9c>
  809ec8:	d9801904 	addi	r6,sp,100
  809ecc:	01400044 	movi	r5,1
  809ed0:	0009883a 	mov	r4,zero
  809ed4:	9021883a 	mov	r16,r18
  809ed8:	003c6406 	br	80906c <___vfiprintf_internal_r+0x3cc>
  809edc:	d8800944 	addi	r2,sp,37
  809ee0:	d8801715 	stw	r2,92(sp)
  809ee4:	00800044 	movi	r2,1
  809ee8:	d8801815 	stw	r2,96(sp)
  809eec:	d9801904 	addi	r6,sp,100
  809ef0:	01400044 	movi	r5,1
  809ef4:	003c3e06 	br	808ff0 <___vfiprintf_internal_r+0x350>
  809ef8:	d9800945 	stb	r6,37(sp)
  809efc:	003c1b06 	br	808f6c <___vfiprintf_internal_r+0x2cc>
  809f00:	d9800a04 	addi	r6,sp,40
  809f04:	a80b883a 	mov	r5,r21
  809f08:	b009883a 	mov	r4,r22
  809f0c:	0808b940 	call	808b94 <__sprint_r.part.0>
  809f10:	003c7806 	br	8090f4 <___vfiprintf_internal_r+0x454>
  809f14:	402f883a 	mov	r23,r8
  809f18:	d8c00415 	stw	r3,16(sp)
  809f1c:	4039883a 	mov	fp,r8
  809f20:	003c1806 	br	808f84 <___vfiprintf_internal_r+0x2e4>
  809f24:	d9800945 	stb	r6,37(sp)
  809f28:	003df406 	br	8096fc <___vfiprintf_internal_r+0xa5c>
  809f2c:	303f883a 	mov	ra,r6
  809f30:	39c23904 	addi	r7,r7,2276
  809f34:	003f2506 	br	809bcc <___vfiprintf_internal_r+0xf2c>
  809f38:	d9800945 	stb	r6,37(sp)
  809f3c:	003d7e06 	br	809538 <___vfiprintf_internal_r+0x898>
  809f40:	d9800945 	stb	r6,37(sp)
  809f44:	003d4c06 	br	809478 <___vfiprintf_internal_r+0x7d8>
  809f48:	d9800945 	stb	r6,37(sp)
  809f4c:	003d1e06 	br	8093c8 <___vfiprintf_internal_r+0x728>
  809f50:	d9800945 	stb	r6,37(sp)
  809f54:	003d6606 	br	8094f0 <___vfiprintf_internal_r+0x850>
  809f58:	21400044 	addi	r5,r4,1
  809f5c:	39c23904 	addi	r7,r7,2276
  809f60:	003d0606 	br	80937c <___vfiprintf_internal_r+0x6dc>
  809f64:	01c02074 	movhi	r7,129
  809f68:	301b883a 	mov	r13,r6
  809f6c:	281d883a 	mov	r14,r5
  809f70:	39c23504 	addi	r7,r7,2260
  809f74:	003e7406 	br	809948 <___vfiprintf_internal_r+0xca8>
  809f78:	00bfffc4 	movi	r2,-1
  809f7c:	d8800115 	stw	r2,4(sp)
  809f80:	003c5f06 	br	809100 <___vfiprintf_internal_r+0x460>
  809f84:	d8800417 	ldw	r2,16(sp)
  809f88:	12000017 	ldw	r8,0(r2)
  809f8c:	11000104 	addi	r4,r2,4
  809f90:	4000010e 	bge	r8,zero,809f98 <___vfiprintf_internal_r+0x12f8>
  809f94:	023fffc4 	movi	r8,-1
  809f98:	a0800043 	ldbu	r2,1(r20)
  809f9c:	d9000415 	stw	r4,16(sp)
  809fa0:	1829883a 	mov	r20,r3
  809fa4:	10803fcc 	andi	r2,r2,255
  809fa8:	1080201c 	xori	r2,r2,128
  809fac:	10bfe004 	addi	r2,r2,-128
  809fb0:	003b7c06 	br	808da4 <___vfiprintf_internal_r+0x104>

00809fb4 <__vfiprintf_internal>:
  809fb4:	00c02074 	movhi	r3,129
  809fb8:	2005883a 	mov	r2,r4
  809fbc:	1909e617 	ldw	r4,10136(r3)
  809fc0:	300f883a 	mov	r7,r6
  809fc4:	280d883a 	mov	r6,r5
  809fc8:	100b883a 	mov	r5,r2
  809fcc:	0808ca01 	jmpi	808ca0 <___vfiprintf_internal_r>

00809fd0 <__sbprintf>:
  809fd0:	2880030b 	ldhu	r2,12(r5)
  809fd4:	2b001917 	ldw	r12,100(r5)
  809fd8:	2ac0038b 	ldhu	r11,14(r5)
  809fdc:	2a800717 	ldw	r10,28(r5)
  809fe0:	2a400917 	ldw	r9,36(r5)
  809fe4:	defee204 	addi	sp,sp,-1144
  809fe8:	da001a04 	addi	r8,sp,104
  809fec:	00c10004 	movi	r3,1024
  809ff0:	dc011a15 	stw	r16,1128(sp)
  809ff4:	10bfff4c 	andi	r2,r2,65533
  809ff8:	2821883a 	mov	r16,r5
  809ffc:	d80b883a 	mov	r5,sp
  80a000:	dc811c15 	stw	r18,1136(sp)
  80a004:	dc411b15 	stw	r17,1132(sp)
  80a008:	dfc11d15 	stw	ra,1140(sp)
  80a00c:	2025883a 	mov	r18,r4
  80a010:	d880030d 	sth	r2,12(sp)
  80a014:	db001915 	stw	r12,100(sp)
  80a018:	dac0038d 	sth	r11,14(sp)
  80a01c:	da800715 	stw	r10,28(sp)
  80a020:	da400915 	stw	r9,36(sp)
  80a024:	da000015 	stw	r8,0(sp)
  80a028:	da000415 	stw	r8,16(sp)
  80a02c:	d8c00215 	stw	r3,8(sp)
  80a030:	d8c00515 	stw	r3,20(sp)
  80a034:	d8000615 	stw	zero,24(sp)
  80a038:	0808ca00 	call	808ca0 <___vfiprintf_internal_r>
  80a03c:	1023883a 	mov	r17,r2
  80a040:	10000d0e 	bge	r2,zero,80a078 <__sbprintf+0xa8>
  80a044:	d880030b 	ldhu	r2,12(sp)
  80a048:	1080100c 	andi	r2,r2,64
  80a04c:	10000326 	beq	r2,zero,80a05c <__sbprintf+0x8c>
  80a050:	8080030b 	ldhu	r2,12(r16)
  80a054:	10801014 	ori	r2,r2,64
  80a058:	8080030d 	sth	r2,12(r16)
  80a05c:	8805883a 	mov	r2,r17
  80a060:	dfc11d17 	ldw	ra,1140(sp)
  80a064:	dc811c17 	ldw	r18,1136(sp)
  80a068:	dc411b17 	ldw	r17,1132(sp)
  80a06c:	dc011a17 	ldw	r16,1128(sp)
  80a070:	dec11e04 	addi	sp,sp,1144
  80a074:	f800283a 	ret
  80a078:	d80b883a 	mov	r5,sp
  80a07c:	9009883a 	mov	r4,r18
  80a080:	08057980 	call	805798 <_fflush_r>
  80a084:	103fef26 	beq	r2,zero,80a044 <__sbprintf+0x74>
  80a088:	047fffc4 	movi	r17,-1
  80a08c:	003fed06 	br	80a044 <__sbprintf+0x74>

0080a090 <_write_r>:
  80a090:	2807883a 	mov	r3,r5
  80a094:	defffe04 	addi	sp,sp,-8
  80a098:	dc000015 	stw	r16,0(sp)
  80a09c:	300b883a 	mov	r5,r6
  80a0a0:	00802074 	movhi	r2,129
  80a0a4:	380d883a 	mov	r6,r7
  80a0a8:	2021883a 	mov	r16,r4
  80a0ac:	1809883a 	mov	r4,r3
  80a0b0:	dfc00115 	stw	ra,4(sp)
  80a0b4:	1010ec15 	stw	zero,17328(r2)
  80a0b8:	080e8380 	call	80e838 <write>
  80a0bc:	10ffffd8 	cmpnei	r3,r2,-1
  80a0c0:	18000426 	beq	r3,zero,80a0d4 <_write_r+0x44>
  80a0c4:	dfc00117 	ldw	ra,4(sp)
  80a0c8:	dc000017 	ldw	r16,0(sp)
  80a0cc:	dec00204 	addi	sp,sp,8
  80a0d0:	f800283a 	ret
  80a0d4:	00c02074 	movhi	r3,129
  80a0d8:	18d0ec17 	ldw	r3,17328(r3)
  80a0dc:	183ff926 	beq	r3,zero,80a0c4 <_write_r+0x34>
  80a0e0:	80c00015 	stw	r3,0(r16)
  80a0e4:	dfc00117 	ldw	ra,4(sp)
  80a0e8:	dc000017 	ldw	r16,0(sp)
  80a0ec:	dec00204 	addi	sp,sp,8
  80a0f0:	f800283a 	ret

0080a0f4 <_close_r>:
  80a0f4:	defffe04 	addi	sp,sp,-8
  80a0f8:	dc000015 	stw	r16,0(sp)
  80a0fc:	00802074 	movhi	r2,129
  80a100:	2021883a 	mov	r16,r4
  80a104:	2809883a 	mov	r4,r5
  80a108:	dfc00115 	stw	ra,4(sp)
  80a10c:	1010ec15 	stw	zero,17328(r2)
  80a110:	080dc6c0 	call	80dc6c <close>
  80a114:	10ffffd8 	cmpnei	r3,r2,-1
  80a118:	18000426 	beq	r3,zero,80a12c <_close_r+0x38>
  80a11c:	dfc00117 	ldw	ra,4(sp)
  80a120:	dc000017 	ldw	r16,0(sp)
  80a124:	dec00204 	addi	sp,sp,8
  80a128:	f800283a 	ret
  80a12c:	00c02074 	movhi	r3,129
  80a130:	18d0ec17 	ldw	r3,17328(r3)
  80a134:	183ff926 	beq	r3,zero,80a11c <_close_r+0x28>
  80a138:	80c00015 	stw	r3,0(r16)
  80a13c:	dfc00117 	ldw	ra,4(sp)
  80a140:	dc000017 	ldw	r16,0(sp)
  80a144:	dec00204 	addi	sp,sp,8
  80a148:	f800283a 	ret

0080a14c <__assert_func>:
  80a14c:	00802074 	movhi	r2,129
  80a150:	1209e617 	ldw	r8,10136(r2)
  80a154:	defffc04 	addi	sp,sp,-16
  80a158:	3807883a 	mov	r3,r7
  80a15c:	3005883a 	mov	r2,r6
  80a160:	dfc00315 	stw	ra,12(sp)
  80a164:	42400317 	ldw	r9,12(r8)
  80a168:	200f883a 	mov	r7,r4
  80a16c:	2811883a 	mov	r8,r5
  80a170:	180d883a 	mov	r6,r3
  80a174:	10000a26 	beq	r2,zero,80a1a0 <__assert_func+0x54>
  80a178:	00c02074 	movhi	r3,129
  80a17c:	18c23d04 	addi	r3,r3,2292
  80a180:	01402074 	movhi	r5,129
  80a184:	29424104 	addi	r5,r5,2308
  80a188:	4809883a 	mov	r4,r9
  80a18c:	d8c00115 	stw	r3,4(sp)
  80a190:	da000015 	stw	r8,0(sp)
  80a194:	d8800215 	stw	r2,8(sp)
  80a198:	080a3b00 	call	80a3b0 <fiprintf>
  80a19c:	080ab9c0 	call	80ab9c <abort>
  80a1a0:	00c02074 	movhi	r3,129
  80a1a4:	18c16504 	addi	r3,r3,1428
  80a1a8:	1805883a 	mov	r2,r3
  80a1ac:	003ff406 	br	80a180 <__assert_func+0x34>

0080a1b0 <__assert>:
  80a1b0:	deffff04 	addi	sp,sp,-4
  80a1b4:	300f883a 	mov	r7,r6
  80a1b8:	000d883a 	mov	r6,zero
  80a1bc:	dfc00015 	stw	ra,0(sp)
  80a1c0:	080a14c0 	call	80a14c <__assert_func>

0080a1c4 <_calloc_r>:
  80a1c4:	defffe04 	addi	sp,sp,-8
  80a1c8:	dc000015 	stw	r16,0(sp)
  80a1cc:	2021883a 	mov	r16,r4
  80a1d0:	2809883a 	mov	r4,r5
  80a1d4:	300b883a 	mov	r5,r6
  80a1d8:	dfc00115 	stw	ra,4(sp)
  80a1dc:	08016d80 	call	8016d8 <__mulsi3>
  80a1e0:	8009883a 	mov	r4,r16
  80a1e4:	100b883a 	mov	r5,r2
  80a1e8:	08067900 	call	806790 <_malloc_r>
  80a1ec:	1009883a 	mov	r4,r2
  80a1f0:	10000c26 	beq	r2,zero,80a224 <_calloc_r+0x60>
  80a1f4:	11bfff17 	ldw	r6,-4(r2)
  80a1f8:	00bfff04 	movi	r2,-4
  80a1fc:	308c703a 	and	r6,r6,r2
  80a200:	31bfff04 	addi	r6,r6,-4
  80a204:	30800968 	cmpgeui	r2,r6,37
  80a208:	1000151e 	bne	r2,zero,80a260 <_calloc_r+0x9c>
  80a20c:	30800530 	cmpltui	r2,r6,20
  80a210:	10000926 	beq	r2,zero,80a238 <_calloc_r+0x74>
  80a214:	2005883a 	mov	r2,r4
  80a218:	10000015 	stw	zero,0(r2)
  80a21c:	10000115 	stw	zero,4(r2)
  80a220:	10000215 	stw	zero,8(r2)
  80a224:	2005883a 	mov	r2,r4
  80a228:	dfc00117 	ldw	ra,4(sp)
  80a22c:	dc000017 	ldw	r16,0(sp)
  80a230:	dec00204 	addi	sp,sp,8
  80a234:	f800283a 	ret
  80a238:	20000015 	stw	zero,0(r4)
  80a23c:	20000115 	stw	zero,4(r4)
  80a240:	30800728 	cmpgeui	r2,r6,28
  80a244:	10000a26 	beq	r2,zero,80a270 <_calloc_r+0xac>
  80a248:	20000215 	stw	zero,8(r4)
  80a24c:	20000315 	stw	zero,12(r4)
  80a250:	31800920 	cmpeqi	r6,r6,36
  80a254:	3000081e 	bne	r6,zero,80a278 <_calloc_r+0xb4>
  80a258:	20800404 	addi	r2,r4,16
  80a25c:	003fee06 	br	80a218 <_calloc_r+0x54>
  80a260:	000b883a 	mov	r5,zero
  80a264:	08072700 	call	807270 <memset>
  80a268:	1009883a 	mov	r4,r2
  80a26c:	003fed06 	br	80a224 <_calloc_r+0x60>
  80a270:	20800204 	addi	r2,r4,8
  80a274:	003fe806 	br	80a218 <_calloc_r+0x54>
  80a278:	20000415 	stw	zero,16(r4)
  80a27c:	20800604 	addi	r2,r4,24
  80a280:	20000515 	stw	zero,20(r4)
  80a284:	003fe406 	br	80a218 <_calloc_r+0x54>

0080a288 <_fclose_r>:
  80a288:	defffc04 	addi	sp,sp,-16
  80a28c:	dfc00315 	stw	ra,12(sp)
  80a290:	dc800215 	stw	r18,8(sp)
  80a294:	dc400115 	stw	r17,4(sp)
  80a298:	dc000015 	stw	r16,0(sp)
  80a29c:	28000726 	beq	r5,zero,80a2bc <_fclose_r+0x34>
  80a2a0:	2821883a 	mov	r16,r5
  80a2a4:	2023883a 	mov	r17,r4
  80a2a8:	20000226 	beq	r4,zero,80a2b4 <_fclose_r+0x2c>
  80a2ac:	20800e17 	ldw	r2,56(r4)
  80a2b0:	10002726 	beq	r2,zero,80a350 <_fclose_r+0xc8>
  80a2b4:	8080030f 	ldh	r2,12(r16)
  80a2b8:	1000081e 	bne	r2,zero,80a2dc <_fclose_r+0x54>
  80a2bc:	0025883a 	mov	r18,zero
  80a2c0:	9005883a 	mov	r2,r18
  80a2c4:	dfc00317 	ldw	ra,12(sp)
  80a2c8:	dc800217 	ldw	r18,8(sp)
  80a2cc:	dc400117 	ldw	r17,4(sp)
  80a2d0:	dc000017 	ldw	r16,0(sp)
  80a2d4:	dec00404 	addi	sp,sp,16
  80a2d8:	f800283a 	ret
  80a2dc:	800b883a 	mov	r5,r16
  80a2e0:	8809883a 	mov	r4,r17
  80a2e4:	08055700 	call	805570 <__sflush_r>
  80a2e8:	80c00b17 	ldw	r3,44(r16)
  80a2ec:	1025883a 	mov	r18,r2
  80a2f0:	18000426 	beq	r3,zero,80a304 <_fclose_r+0x7c>
  80a2f4:	81400717 	ldw	r5,28(r16)
  80a2f8:	8809883a 	mov	r4,r17
  80a2fc:	183ee83a 	callr	r3
  80a300:	10001716 	blt	r2,zero,80a360 <_fclose_r+0xd8>
  80a304:	8080030b 	ldhu	r2,12(r16)
  80a308:	1080200c 	andi	r2,r2,128
  80a30c:	1000181e 	bne	r2,zero,80a370 <_fclose_r+0xe8>
  80a310:	81400c17 	ldw	r5,48(r16)
  80a314:	28000526 	beq	r5,zero,80a32c <_fclose_r+0xa4>
  80a318:	80801004 	addi	r2,r16,64
  80a31c:	28800226 	beq	r5,r2,80a328 <_fclose_r+0xa0>
  80a320:	8809883a 	mov	r4,r17
  80a324:	0805c900 	call	805c90 <_free_r>
  80a328:	80000c15 	stw	zero,48(r16)
  80a32c:	81401117 	ldw	r5,68(r16)
  80a330:	28000326 	beq	r5,zero,80a340 <_fclose_r+0xb8>
  80a334:	8809883a 	mov	r4,r17
  80a338:	0805c900 	call	805c90 <_free_r>
  80a33c:	80001115 	stw	zero,68(r16)
  80a340:	0805b3c0 	call	805b3c <__sfp_lock_acquire>
  80a344:	8000030d 	sth	zero,12(r16)
  80a348:	0805b400 	call	805b40 <__sfp_lock_release>
  80a34c:	003fdc06 	br	80a2c0 <_fclose_r+0x38>
  80a350:	0805b2c0 	call	805b2c <__sinit>
  80a354:	8080030f 	ldh	r2,12(r16)
  80a358:	103fd826 	beq	r2,zero,80a2bc <_fclose_r+0x34>
  80a35c:	003fdf06 	br	80a2dc <_fclose_r+0x54>
  80a360:	8080030b 	ldhu	r2,12(r16)
  80a364:	04bfffc4 	movi	r18,-1
  80a368:	1080200c 	andi	r2,r2,128
  80a36c:	103fe826 	beq	r2,zero,80a310 <_fclose_r+0x88>
  80a370:	81400417 	ldw	r5,16(r16)
  80a374:	8809883a 	mov	r4,r17
  80a378:	0805c900 	call	805c90 <_free_r>
  80a37c:	003fe406 	br	80a310 <_fclose_r+0x88>

0080a380 <fclose>:
  80a380:	00802074 	movhi	r2,129
  80a384:	200b883a 	mov	r5,r4
  80a388:	1109e617 	ldw	r4,10136(r2)
  80a38c:	080a2881 	jmpi	80a288 <_fclose_r>

0080a390 <_fiprintf_r>:
  80a390:	defffe04 	addi	sp,sp,-8
  80a394:	dfc00015 	stw	ra,0(sp)
  80a398:	d9c00115 	stw	r7,4(sp)
  80a39c:	d9c00104 	addi	r7,sp,4
  80a3a0:	080a9080 	call	80a908 <_vfiprintf_r>
  80a3a4:	dfc00017 	ldw	ra,0(sp)
  80a3a8:	dec00204 	addi	sp,sp,8
  80a3ac:	f800283a 	ret

0080a3b0 <fiprintf>:
  80a3b0:	defffd04 	addi	sp,sp,-12
  80a3b4:	2005883a 	mov	r2,r4
  80a3b8:	dfc00015 	stw	ra,0(sp)
  80a3bc:	d9800115 	stw	r6,4(sp)
  80a3c0:	d9c00215 	stw	r7,8(sp)
  80a3c4:	00c02074 	movhi	r3,129
  80a3c8:	1909e617 	ldw	r4,10136(r3)
  80a3cc:	280d883a 	mov	r6,r5
  80a3d0:	d9c00104 	addi	r7,sp,4
  80a3d4:	100b883a 	mov	r5,r2
  80a3d8:	080a9080 	call	80a908 <_vfiprintf_r>
  80a3dc:	dfc00017 	ldw	ra,0(sp)
  80a3e0:	dec00304 	addi	sp,sp,12
  80a3e4:	f800283a 	ret

0080a3e8 <__fputwc>:
  80a3e8:	defff904 	addi	sp,sp,-28
  80a3ec:	dcc00415 	stw	r19,16(sp)
  80a3f0:	dc800315 	stw	r18,12(sp)
  80a3f4:	dc000115 	stw	r16,4(sp)
  80a3f8:	dfc00615 	stw	ra,24(sp)
  80a3fc:	dd000515 	stw	r20,20(sp)
  80a400:	dc400215 	stw	r17,8(sp)
  80a404:	2025883a 	mov	r18,r4
  80a408:	2827883a 	mov	r19,r5
  80a40c:	3021883a 	mov	r16,r6
  80a410:	080a7140 	call	80a714 <__locale_mb_cur_max>
  80a414:	10800058 	cmpnei	r2,r2,1
  80a418:	1000071e 	bne	r2,zero,80a438 <__fputwc+0x50>
  80a41c:	98bfffc4 	addi	r2,r19,-1
  80a420:	10803fe8 	cmpgeui	r2,r2,255
  80a424:	1000041e 	bne	r2,zero,80a438 <__fputwc+0x50>
  80a428:	980b883a 	mov	r5,r19
  80a42c:	dcc000c5 	stb	r19,3(sp)
  80a430:	05000044 	movi	r20,1
  80a434:	00000a06 	br	80a460 <__fputwc+0x78>
  80a438:	81c01704 	addi	r7,r16,92
  80a43c:	980d883a 	mov	r6,r19
  80a440:	d94000c4 	addi	r5,sp,3
  80a444:	9009883a 	mov	r4,r18
  80a448:	080aa6c0 	call	80aa6c <_wcrtomb_r>
  80a44c:	1029883a 	mov	r20,r2
  80a450:	10bfffd8 	cmpnei	r2,r2,-1
  80a454:	10003926 	beq	r2,zero,80a53c <__fputwc+0x154>
  80a458:	a0001f26 	beq	r20,zero,80a4d8 <__fputwc+0xf0>
  80a45c:	d94000c3 	ldbu	r5,3(sp)
  80a460:	0023883a 	mov	r17,zero
  80a464:	00000a06 	br	80a490 <__fputwc+0xa8>
  80a468:	80800017 	ldw	r2,0(r16)
  80a46c:	11400005 	stb	r5,0(r2)
  80a470:	80c00017 	ldw	r3,0(r16)
  80a474:	18c00044 	addi	r3,r3,1
  80a478:	80c00015 	stw	r3,0(r16)
  80a47c:	8c400044 	addi	r17,r17,1
  80a480:	d88000c4 	addi	r2,sp,3
  80a484:	1447883a 	add	r3,r2,r17
  80a488:	8d00132e 	bgeu	r17,r20,80a4d8 <__fputwc+0xf0>
  80a48c:	19400003 	ldbu	r5,0(r3)
  80a490:	80c00217 	ldw	r3,8(r16)
  80a494:	18ffffc4 	addi	r3,r3,-1
  80a498:	80c00215 	stw	r3,8(r16)
  80a49c:	183ff20e 	bge	r3,zero,80a468 <__fputwc+0x80>
  80a4a0:	80800617 	ldw	r2,24(r16)
  80a4a4:	18801616 	blt	r3,r2,80a500 <__fputwc+0x118>
  80a4a8:	80800017 	ldw	r2,0(r16)
  80a4ac:	11400005 	stb	r5,0(r2)
  80a4b0:	80800017 	ldw	r2,0(r16)
  80a4b4:	10c00003 	ldbu	r3,0(r2)
  80a4b8:	10800044 	addi	r2,r2,1
  80a4bc:	18c002a0 	cmpeqi	r3,r3,10
  80a4c0:	1800181e 	bne	r3,zero,80a524 <__fputwc+0x13c>
  80a4c4:	80800015 	stw	r2,0(r16)
  80a4c8:	8c400044 	addi	r17,r17,1
  80a4cc:	d88000c4 	addi	r2,sp,3
  80a4d0:	1447883a 	add	r3,r2,r17
  80a4d4:	8d3fed36 	bltu	r17,r20,80a48c <__fputwc+0xa4>
  80a4d8:	9829883a 	mov	r20,r19
  80a4dc:	a005883a 	mov	r2,r20
  80a4e0:	dfc00617 	ldw	ra,24(sp)
  80a4e4:	dd000517 	ldw	r20,20(sp)
  80a4e8:	dcc00417 	ldw	r19,16(sp)
  80a4ec:	dc800317 	ldw	r18,12(sp)
  80a4f0:	dc400217 	ldw	r17,8(sp)
  80a4f4:	dc000117 	ldw	r16,4(sp)
  80a4f8:	dec00704 	addi	sp,sp,28
  80a4fc:	f800283a 	ret
  80a500:	29403fcc 	andi	r5,r5,255
  80a504:	800d883a 	mov	r6,r16
  80a508:	9009883a 	mov	r4,r18
  80a50c:	080a90c0 	call	80a90c <__swbuf_r>
  80a510:	10ffffe0 	cmpeqi	r3,r2,-1
  80a514:	18c03fcc 	andi	r3,r3,255
  80a518:	183fd826 	beq	r3,zero,80a47c <__fputwc+0x94>
  80a51c:	053fffc4 	movi	r20,-1
  80a520:	003fee06 	br	80a4dc <__fputwc+0xf4>
  80a524:	800d883a 	mov	r6,r16
  80a528:	01400284 	movi	r5,10
  80a52c:	9009883a 	mov	r4,r18
  80a530:	080a90c0 	call	80a90c <__swbuf_r>
  80a534:	10ffffe0 	cmpeqi	r3,r2,-1
  80a538:	003ff606 	br	80a514 <__fputwc+0x12c>
  80a53c:	8080030b 	ldhu	r2,12(r16)
  80a540:	10801014 	ori	r2,r2,64
  80a544:	8080030d 	sth	r2,12(r16)
  80a548:	003fe406 	br	80a4dc <__fputwc+0xf4>

0080a54c <_fputwc_r>:
  80a54c:	3080030b 	ldhu	r2,12(r6)
  80a550:	10c8000c 	andi	r3,r2,8192
  80a554:	1800051e 	bne	r3,zero,80a56c <_fputwc_r+0x20>
  80a558:	30c01917 	ldw	r3,100(r6)
  80a55c:	10880014 	ori	r2,r2,8192
  80a560:	3080030d 	sth	r2,12(r6)
  80a564:	18880014 	ori	r2,r3,8192
  80a568:	30801915 	stw	r2,100(r6)
  80a56c:	080a3e81 	jmpi	80a3e8 <__fputwc>

0080a570 <fputwc>:
  80a570:	defffc04 	addi	sp,sp,-16
  80a574:	00802074 	movhi	r2,129
  80a578:	dc000215 	stw	r16,8(sp)
  80a57c:	1409e617 	ldw	r16,10136(r2)
  80a580:	dfc00315 	stw	ra,12(sp)
  80a584:	280d883a 	mov	r6,r5
  80a588:	200b883a 	mov	r5,r4
  80a58c:	80000226 	beq	r16,zero,80a598 <fputwc+0x28>
  80a590:	80800e17 	ldw	r2,56(r16)
  80a594:	10000d26 	beq	r2,zero,80a5cc <fputwc+0x5c>
  80a598:	3080030b 	ldhu	r2,12(r6)
  80a59c:	10c8000c 	andi	r3,r2,8192
  80a5a0:	1800051e 	bne	r3,zero,80a5b8 <fputwc+0x48>
  80a5a4:	30c01917 	ldw	r3,100(r6)
  80a5a8:	10880014 	ori	r2,r2,8192
  80a5ac:	3080030d 	sth	r2,12(r6)
  80a5b0:	18880014 	ori	r2,r3,8192
  80a5b4:	30801915 	stw	r2,100(r6)
  80a5b8:	8009883a 	mov	r4,r16
  80a5bc:	dfc00317 	ldw	ra,12(sp)
  80a5c0:	dc000217 	ldw	r16,8(sp)
  80a5c4:	dec00404 	addi	sp,sp,16
  80a5c8:	080a3e81 	jmpi	80a3e8 <__fputwc>
  80a5cc:	d9000015 	stw	r4,0(sp)
  80a5d0:	8009883a 	mov	r4,r16
  80a5d4:	d9800115 	stw	r6,4(sp)
  80a5d8:	0805b2c0 	call	805b2c <__sinit>
  80a5dc:	d9800117 	ldw	r6,4(sp)
  80a5e0:	d9400017 	ldw	r5,0(sp)
  80a5e4:	003fec06 	br	80a598 <fputwc+0x28>

0080a5e8 <_fstat_r>:
  80a5e8:	2807883a 	mov	r3,r5
  80a5ec:	defffe04 	addi	sp,sp,-8
  80a5f0:	dc000015 	stw	r16,0(sp)
  80a5f4:	00802074 	movhi	r2,129
  80a5f8:	300b883a 	mov	r5,r6
  80a5fc:	2021883a 	mov	r16,r4
  80a600:	1809883a 	mov	r4,r3
  80a604:	dfc00115 	stw	ra,4(sp)
  80a608:	1010ec15 	stw	zero,17328(r2)
  80a60c:	080dde80 	call	80dde8 <fstat>
  80a610:	10ffffd8 	cmpnei	r3,r2,-1
  80a614:	18000426 	beq	r3,zero,80a628 <_fstat_r+0x40>
  80a618:	dfc00117 	ldw	ra,4(sp)
  80a61c:	dc000017 	ldw	r16,0(sp)
  80a620:	dec00204 	addi	sp,sp,8
  80a624:	f800283a 	ret
  80a628:	00c02074 	movhi	r3,129
  80a62c:	18d0ec17 	ldw	r3,17328(r3)
  80a630:	183ff926 	beq	r3,zero,80a618 <_fstat_r+0x30>
  80a634:	80c00015 	stw	r3,0(r16)
  80a638:	dfc00117 	ldw	ra,4(sp)
  80a63c:	dc000017 	ldw	r16,0(sp)
  80a640:	dec00204 	addi	sp,sp,8
  80a644:	f800283a 	ret

0080a648 <_isatty_r>:
  80a648:	defffe04 	addi	sp,sp,-8
  80a64c:	dc000015 	stw	r16,0(sp)
  80a650:	00802074 	movhi	r2,129
  80a654:	2021883a 	mov	r16,r4
  80a658:	2809883a 	mov	r4,r5
  80a65c:	dfc00115 	stw	ra,4(sp)
  80a660:	1010ec15 	stw	zero,17328(r2)
  80a664:	080df000 	call	80df00 <isatty>
  80a668:	10ffffd8 	cmpnei	r3,r2,-1
  80a66c:	18000426 	beq	r3,zero,80a680 <_isatty_r+0x38>
  80a670:	dfc00117 	ldw	ra,4(sp)
  80a674:	dc000017 	ldw	r16,0(sp)
  80a678:	dec00204 	addi	sp,sp,8
  80a67c:	f800283a 	ret
  80a680:	00c02074 	movhi	r3,129
  80a684:	18d0ec17 	ldw	r3,17328(r3)
  80a688:	183ff926 	beq	r3,zero,80a670 <_isatty_r+0x28>
  80a68c:	80c00015 	stw	r3,0(r16)
  80a690:	dfc00117 	ldw	ra,4(sp)
  80a694:	dc000017 	ldw	r16,0(sp)
  80a698:	dec00204 	addi	sp,sp,8
  80a69c:	f800283a 	ret

0080a6a0 <_setlocale_r>:
  80a6a0:	30001626 	beq	r6,zero,80a6fc <_setlocale_r+0x5c>
  80a6a4:	01402074 	movhi	r5,129
  80a6a8:	defffe04 	addi	sp,sp,-8
  80a6ac:	29424e04 	addi	r5,r5,2360
  80a6b0:	3009883a 	mov	r4,r6
  80a6b4:	dc000015 	stw	r16,0(sp)
  80a6b8:	dfc00115 	stw	ra,4(sp)
  80a6bc:	3021883a 	mov	r16,r6
  80a6c0:	080a8500 	call	80a850 <strcmp>
  80a6c4:	1000061e 	bne	r2,zero,80a6e0 <_setlocale_r+0x40>
  80a6c8:	00802074 	movhi	r2,129
  80a6cc:	10824d04 	addi	r2,r2,2356
  80a6d0:	dfc00117 	ldw	ra,4(sp)
  80a6d4:	dc000017 	ldw	r16,0(sp)
  80a6d8:	dec00204 	addi	sp,sp,8
  80a6dc:	f800283a 	ret
  80a6e0:	80800003 	ldbu	r2,0(r16)
  80a6e4:	10bfef44 	addi	r2,r2,-67
  80a6e8:	10000726 	beq	r2,zero,80a708 <_setlocale_r+0x68>
  80a6ec:	80800003 	ldbu	r2,0(r16)
  80a6f0:	103ff526 	beq	r2,zero,80a6c8 <_setlocale_r+0x28>
  80a6f4:	0005883a 	mov	r2,zero
  80a6f8:	003ff506 	br	80a6d0 <_setlocale_r+0x30>
  80a6fc:	00802074 	movhi	r2,129
  80a700:	10824d04 	addi	r2,r2,2356
  80a704:	f800283a 	ret
  80a708:	80800043 	ldbu	r2,1(r16)
  80a70c:	103fee26 	beq	r2,zero,80a6c8 <_setlocale_r+0x28>
  80a710:	003ff606 	br	80a6ec <_setlocale_r+0x4c>

0080a714 <__locale_mb_cur_max>:
  80a714:	00802074 	movhi	r2,129
  80a718:	10855207 	ldb	r2,5448(r2)
  80a71c:	f800283a 	ret

0080a720 <setlocale>:
  80a720:	00c02074 	movhi	r3,129
  80a724:	2005883a 	mov	r2,r4
  80a728:	1909e617 	ldw	r4,10136(r3)
  80a72c:	280d883a 	mov	r6,r5
  80a730:	100b883a 	mov	r5,r2
  80a734:	080a6a01 	jmpi	80a6a0 <_setlocale_r>

0080a738 <_lseek_r>:
  80a738:	2807883a 	mov	r3,r5
  80a73c:	defffe04 	addi	sp,sp,-8
  80a740:	dc000015 	stw	r16,0(sp)
  80a744:	300b883a 	mov	r5,r6
  80a748:	00802074 	movhi	r2,129
  80a74c:	380d883a 	mov	r6,r7
  80a750:	2021883a 	mov	r16,r4
  80a754:	1809883a 	mov	r4,r3
  80a758:	dfc00115 	stw	ra,4(sp)
  80a75c:	1010ec15 	stw	zero,17328(r2)
  80a760:	080e2400 	call	80e240 <lseek>
  80a764:	10ffffd8 	cmpnei	r3,r2,-1
  80a768:	18000426 	beq	r3,zero,80a77c <_lseek_r+0x44>
  80a76c:	dfc00117 	ldw	ra,4(sp)
  80a770:	dc000017 	ldw	r16,0(sp)
  80a774:	dec00204 	addi	sp,sp,8
  80a778:	f800283a 	ret
  80a77c:	00c02074 	movhi	r3,129
  80a780:	18d0ec17 	ldw	r3,17328(r3)
  80a784:	183ff926 	beq	r3,zero,80a76c <_lseek_r+0x34>
  80a788:	80c00015 	stw	r3,0(r16)
  80a78c:	dfc00117 	ldw	ra,4(sp)
  80a790:	dc000017 	ldw	r16,0(sp)
  80a794:	dec00204 	addi	sp,sp,8
  80a798:	f800283a 	ret

0080a79c <_mbtowc_r>:
  80a79c:	00802074 	movhi	r2,129
  80a7a0:	10854117 	ldw	r2,5380(r2)
  80a7a4:	1000683a 	jmp	r2

0080a7a8 <__ascii_mbtowc>:
  80a7a8:	deffff04 	addi	sp,sp,-4
  80a7ac:	28000826 	beq	r5,zero,80a7d0 <__ascii_mbtowc+0x28>
  80a7b0:	30000926 	beq	r6,zero,80a7d8 <__ascii_mbtowc+0x30>
  80a7b4:	38000b26 	beq	r7,zero,80a7e4 <__ascii_mbtowc+0x3c>
  80a7b8:	30800003 	ldbu	r2,0(r6)
  80a7bc:	28800015 	stw	r2,0(r5)
  80a7c0:	30800003 	ldbu	r2,0(r6)
  80a7c4:	1004c03a 	cmpne	r2,r2,zero
  80a7c8:	dec00104 	addi	sp,sp,4
  80a7cc:	f800283a 	ret
  80a7d0:	d80b883a 	mov	r5,sp
  80a7d4:	303ff71e 	bne	r6,zero,80a7b4 <__ascii_mbtowc+0xc>
  80a7d8:	0005883a 	mov	r2,zero
  80a7dc:	dec00104 	addi	sp,sp,4
  80a7e0:	f800283a 	ret
  80a7e4:	00bfff84 	movi	r2,-2
  80a7e8:	003ff706 	br	80a7c8 <__ascii_mbtowc+0x20>

0080a7ec <_read_r>:
  80a7ec:	2807883a 	mov	r3,r5
  80a7f0:	defffe04 	addi	sp,sp,-8
  80a7f4:	dc000015 	stw	r16,0(sp)
  80a7f8:	300b883a 	mov	r5,r6
  80a7fc:	00802074 	movhi	r2,129
  80a800:	380d883a 	mov	r6,r7
  80a804:	2021883a 	mov	r16,r4
  80a808:	1809883a 	mov	r4,r3
  80a80c:	dfc00115 	stw	ra,4(sp)
  80a810:	1010ec15 	stw	zero,17328(r2)
  80a814:	080e4200 	call	80e420 <read>
  80a818:	10ffffd8 	cmpnei	r3,r2,-1
  80a81c:	18000426 	beq	r3,zero,80a830 <_read_r+0x44>
  80a820:	dfc00117 	ldw	ra,4(sp)
  80a824:	dc000017 	ldw	r16,0(sp)
  80a828:	dec00204 	addi	sp,sp,8
  80a82c:	f800283a 	ret
  80a830:	00c02074 	movhi	r3,129
  80a834:	18d0ec17 	ldw	r3,17328(r3)
  80a838:	183ff926 	beq	r3,zero,80a820 <_read_r+0x34>
  80a83c:	80c00015 	stw	r3,0(r16)
  80a840:	dfc00117 	ldw	ra,4(sp)
  80a844:	dc000017 	ldw	r16,0(sp)
  80a848:	dec00204 	addi	sp,sp,8
  80a84c:	f800283a 	ret

0080a850 <strcmp>:
  80a850:	2144b03a 	or	r2,r4,r5
  80a854:	108000cc 	andi	r2,r2,3
  80a858:	1000141e 	bne	r2,zero,80a8ac <strcmp+0x5c>
  80a85c:	20800017 	ldw	r2,0(r4)
  80a860:	28c00017 	ldw	r3,0(r5)
  80a864:	10c0111e 	bne	r2,r3,80a8ac <strcmp+0x5c>
  80a868:	01ffbff4 	movhi	r7,65279
  80a86c:	01a02074 	movhi	r6,32897
  80a870:	39ffbfc4 	addi	r7,r7,-257
  80a874:	31a02004 	addi	r6,r6,-32640
  80a878:	00000306 	br	80a888 <strcmp+0x38>
  80a87c:	20800017 	ldw	r2,0(r4)
  80a880:	28c00017 	ldw	r3,0(r5)
  80a884:	10c0091e 	bne	r2,r3,80a8ac <strcmp+0x5c>
  80a888:	11c7883a 	add	r3,r2,r7
  80a88c:	0084303a 	nor	r2,zero,r2
  80a890:	1884703a 	and	r2,r3,r2
  80a894:	1184703a 	and	r2,r2,r6
  80a898:	21000104 	addi	r4,r4,4
  80a89c:	29400104 	addi	r5,r5,4
  80a8a0:	103ff626 	beq	r2,zero,80a87c <strcmp+0x2c>
  80a8a4:	0005883a 	mov	r2,zero
  80a8a8:	f800283a 	ret
  80a8ac:	20c00003 	ldbu	r3,0(r4)
  80a8b0:	18803fcc 	andi	r2,r3,255
  80a8b4:	1080201c 	xori	r2,r2,128
  80a8b8:	10bfe004 	addi	r2,r2,-128
  80a8bc:	1000071e 	bne	r2,zero,80a8dc <strcmp+0x8c>
  80a8c0:	00000a06 	br	80a8ec <strcmp+0x9c>
  80a8c4:	20c00003 	ldbu	r3,0(r4)
  80a8c8:	29400044 	addi	r5,r5,1
  80a8cc:	18803fcc 	andi	r2,r3,255
  80a8d0:	1080201c 	xori	r2,r2,128
  80a8d4:	10bfe004 	addi	r2,r2,-128
  80a8d8:	10000726 	beq	r2,zero,80a8f8 <strcmp+0xa8>
  80a8dc:	29800007 	ldb	r6,0(r5)
  80a8e0:	21000044 	addi	r4,r4,1
  80a8e4:	30bff726 	beq	r6,r2,80a8c4 <strcmp+0x74>
  80a8e8:	18803fcc 	andi	r2,r3,255
  80a8ec:	28c00003 	ldbu	r3,0(r5)
  80a8f0:	10c5c83a 	sub	r2,r2,r3
  80a8f4:	f800283a 	ret
  80a8f8:	28c00003 	ldbu	r3,0(r5)
  80a8fc:	0005883a 	mov	r2,zero
  80a900:	10c5c83a 	sub	r2,r2,r3
  80a904:	f800283a 	ret

0080a908 <_vfiprintf_r>:
  80a908:	0808ca01 	jmpi	808ca0 <___vfiprintf_internal_r>

0080a90c <__swbuf_r>:
  80a90c:	defffb04 	addi	sp,sp,-20
  80a910:	dcc00315 	stw	r19,12(sp)
  80a914:	dc400115 	stw	r17,4(sp)
  80a918:	dc000015 	stw	r16,0(sp)
  80a91c:	dfc00415 	stw	ra,16(sp)
  80a920:	dc800215 	stw	r18,8(sp)
  80a924:	2027883a 	mov	r19,r4
  80a928:	2823883a 	mov	r17,r5
  80a92c:	3021883a 	mov	r16,r6
  80a930:	20000226 	beq	r4,zero,80a93c <__swbuf_r+0x30>
  80a934:	20800e17 	ldw	r2,56(r4)
  80a938:	10003e26 	beq	r2,zero,80aa34 <__swbuf_r+0x128>
  80a93c:	80800617 	ldw	r2,24(r16)
  80a940:	80c0030b 	ldhu	r3,12(r16)
  80a944:	80800215 	stw	r2,8(r16)
  80a948:	1880020c 	andi	r2,r3,8
  80a94c:	10001f26 	beq	r2,zero,80a9cc <__swbuf_r+0xc0>
  80a950:	80800417 	ldw	r2,16(r16)
  80a954:	10001d26 	beq	r2,zero,80a9cc <__swbuf_r+0xc0>
  80a958:	1948000c 	andi	r5,r3,8192
  80a95c:	8c803fcc 	andi	r18,r17,255
  80a960:	28002326 	beq	r5,zero,80a9f0 <__swbuf_r+0xe4>
  80a964:	80c00017 	ldw	r3,0(r16)
  80a968:	81000517 	ldw	r4,20(r16)
  80a96c:	1885c83a 	sub	r2,r3,r2
  80a970:	1100290e 	bge	r2,r4,80aa18 <__swbuf_r+0x10c>
  80a974:	10800044 	addi	r2,r2,1
  80a978:	81400217 	ldw	r5,8(r16)
  80a97c:	19000044 	addi	r4,r3,1
  80a980:	81000015 	stw	r4,0(r16)
  80a984:	297fffc4 	addi	r5,r5,-1
  80a988:	81400215 	stw	r5,8(r16)
  80a98c:	1c400005 	stb	r17,0(r3)
  80a990:	80c00517 	ldw	r3,20(r16)
  80a994:	18802926 	beq	r3,r2,80aa3c <__swbuf_r+0x130>
  80a998:	8080030b 	ldhu	r2,12(r16)
  80a99c:	1080004c 	andi	r2,r2,1
  80a9a0:	10000226 	beq	r2,zero,80a9ac <__swbuf_r+0xa0>
  80a9a4:	90800298 	cmpnei	r2,r18,10
  80a9a8:	10002426 	beq	r2,zero,80aa3c <__swbuf_r+0x130>
  80a9ac:	9005883a 	mov	r2,r18
  80a9b0:	dfc00417 	ldw	ra,16(sp)
  80a9b4:	dcc00317 	ldw	r19,12(sp)
  80a9b8:	dc800217 	ldw	r18,8(sp)
  80a9bc:	dc400117 	ldw	r17,4(sp)
  80a9c0:	dc000017 	ldw	r16,0(sp)
  80a9c4:	dec00504 	addi	sp,sp,20
  80a9c8:	f800283a 	ret
  80a9cc:	800b883a 	mov	r5,r16
  80a9d0:	9809883a 	mov	r4,r19
  80a9d4:	0803aa40 	call	803aa4 <__swsetup_r>
  80a9d8:	10001c1e 	bne	r2,zero,80aa4c <__swbuf_r+0x140>
  80a9dc:	80c0030b 	ldhu	r3,12(r16)
  80a9e0:	80800417 	ldw	r2,16(r16)
  80a9e4:	8c803fcc 	andi	r18,r17,255
  80a9e8:	1948000c 	andi	r5,r3,8192
  80a9ec:	283fdd1e 	bne	r5,zero,80a964 <__swbuf_r+0x58>
  80a9f0:	81001917 	ldw	r4,100(r16)
  80a9f4:	18c80014 	ori	r3,r3,8192
  80a9f8:	0177ffc4 	movi	r5,-8193
  80a9fc:	2148703a 	and	r4,r4,r5
  80aa00:	80c0030d 	sth	r3,12(r16)
  80aa04:	80c00017 	ldw	r3,0(r16)
  80aa08:	81001915 	stw	r4,100(r16)
  80aa0c:	81000517 	ldw	r4,20(r16)
  80aa10:	1885c83a 	sub	r2,r3,r2
  80aa14:	113fd716 	blt	r2,r4,80a974 <__swbuf_r+0x68>
  80aa18:	800b883a 	mov	r5,r16
  80aa1c:	9809883a 	mov	r4,r19
  80aa20:	08057980 	call	805798 <_fflush_r>
  80aa24:	1000091e 	bne	r2,zero,80aa4c <__swbuf_r+0x140>
  80aa28:	80c00017 	ldw	r3,0(r16)
  80aa2c:	00800044 	movi	r2,1
  80aa30:	003fd106 	br	80a978 <__swbuf_r+0x6c>
  80aa34:	0805b2c0 	call	805b2c <__sinit>
  80aa38:	003fc006 	br	80a93c <__swbuf_r+0x30>
  80aa3c:	800b883a 	mov	r5,r16
  80aa40:	9809883a 	mov	r4,r19
  80aa44:	08057980 	call	805798 <_fflush_r>
  80aa48:	103fd826 	beq	r2,zero,80a9ac <__swbuf_r+0xa0>
  80aa4c:	04bfffc4 	movi	r18,-1
  80aa50:	003fd606 	br	80a9ac <__swbuf_r+0xa0>

0080aa54 <__swbuf>:
  80aa54:	00c02074 	movhi	r3,129
  80aa58:	2005883a 	mov	r2,r4
  80aa5c:	1909e617 	ldw	r4,10136(r3)
  80aa60:	280d883a 	mov	r6,r5
  80aa64:	100b883a 	mov	r5,r2
  80aa68:	080a90c1 	jmpi	80a90c <__swbuf_r>

0080aa6c <_wcrtomb_r>:
  80aa6c:	defffa04 	addi	sp,sp,-24
  80aa70:	dc400415 	stw	r17,16(sp)
  80aa74:	dc000315 	stw	r16,12(sp)
  80aa78:	00802074 	movhi	r2,129
  80aa7c:	dfc00515 	stw	ra,20(sp)
  80aa80:	10854017 	ldw	r2,5376(r2)
  80aa84:	2023883a 	mov	r17,r4
  80aa88:	3821883a 	mov	r16,r7
  80aa8c:	28000826 	beq	r5,zero,80aab0 <_wcrtomb_r+0x44>
  80aa90:	103ee83a 	callr	r2
  80aa94:	10ffffd8 	cmpnei	r3,r2,-1
  80aa98:	18000a26 	beq	r3,zero,80aac4 <_wcrtomb_r+0x58>
  80aa9c:	dfc00517 	ldw	ra,20(sp)
  80aaa0:	dc400417 	ldw	r17,16(sp)
  80aaa4:	dc000317 	ldw	r16,12(sp)
  80aaa8:	dec00604 	addi	sp,sp,24
  80aaac:	f800283a 	ret
  80aab0:	000d883a 	mov	r6,zero
  80aab4:	d9400084 	addi	r5,sp,2
  80aab8:	103ee83a 	callr	r2
  80aabc:	10ffffd8 	cmpnei	r3,r2,-1
  80aac0:	183ff61e 	bne	r3,zero,80aa9c <_wcrtomb_r+0x30>
  80aac4:	00802284 	movi	r2,138
  80aac8:	80000015 	stw	zero,0(r16)
  80aacc:	88800015 	stw	r2,0(r17)
  80aad0:	00bfffc4 	movi	r2,-1
  80aad4:	003ff106 	br	80aa9c <_wcrtomb_r+0x30>

0080aad8 <wcrtomb>:
  80aad8:	defffa04 	addi	sp,sp,-24
  80aadc:	00c02074 	movhi	r3,129
  80aae0:	dc400415 	stw	r17,16(sp)
  80aae4:	dc000315 	stw	r16,12(sp)
  80aae8:	1c49e617 	ldw	r17,10136(r3)
  80aaec:	dfc00515 	stw	ra,20(sp)
  80aaf0:	00c02074 	movhi	r3,129
  80aaf4:	18c54017 	ldw	r3,5376(r3)
  80aaf8:	3021883a 	mov	r16,r6
  80aafc:	20000c26 	beq	r4,zero,80ab30 <wcrtomb+0x58>
  80ab00:	280d883a 	mov	r6,r5
  80ab04:	800f883a 	mov	r7,r16
  80ab08:	200b883a 	mov	r5,r4
  80ab0c:	8809883a 	mov	r4,r17
  80ab10:	183ee83a 	callr	r3
  80ab14:	10ffffd8 	cmpnei	r3,r2,-1
  80ab18:	18000c26 	beq	r3,zero,80ab4c <wcrtomb+0x74>
  80ab1c:	dfc00517 	ldw	ra,20(sp)
  80ab20:	dc400417 	ldw	r17,16(sp)
  80ab24:	dc000317 	ldw	r16,12(sp)
  80ab28:	dec00604 	addi	sp,sp,24
  80ab2c:	f800283a 	ret
  80ab30:	300f883a 	mov	r7,r6
  80ab34:	d9400084 	addi	r5,sp,2
  80ab38:	000d883a 	mov	r6,zero
  80ab3c:	8809883a 	mov	r4,r17
  80ab40:	183ee83a 	callr	r3
  80ab44:	10ffffd8 	cmpnei	r3,r2,-1
  80ab48:	183ff41e 	bne	r3,zero,80ab1c <wcrtomb+0x44>
  80ab4c:	00802284 	movi	r2,138
  80ab50:	80000015 	stw	zero,0(r16)
  80ab54:	88800015 	stw	r2,0(r17)
  80ab58:	00bfffc4 	movi	r2,-1
  80ab5c:	003fef06 	br	80ab1c <wcrtomb+0x44>

0080ab60 <_wctomb_r>:
  80ab60:	00802074 	movhi	r2,129
  80ab64:	10854017 	ldw	r2,5376(r2)
  80ab68:	1000683a 	jmp	r2

0080ab6c <__ascii_wctomb>:
  80ab6c:	28000926 	beq	r5,zero,80ab94 <__ascii_wctomb+0x28>
  80ab70:	30804030 	cmpltui	r2,r6,256
  80ab74:	10000326 	beq	r2,zero,80ab84 <__ascii_wctomb+0x18>
  80ab78:	29800005 	stb	r6,0(r5)
  80ab7c:	00800044 	movi	r2,1
  80ab80:	f800283a 	ret
  80ab84:	00802284 	movi	r2,138
  80ab88:	20800015 	stw	r2,0(r4)
  80ab8c:	00bfffc4 	movi	r2,-1
  80ab90:	f800283a 	ret
  80ab94:	0005883a 	mov	r2,zero
  80ab98:	f800283a 	ret

0080ab9c <abort>:
  80ab9c:	deffff04 	addi	sp,sp,-4
  80aba0:	01000184 	movi	r4,6
  80aba4:	dfc00015 	stw	ra,0(sp)
  80aba8:	080ae140 	call	80ae14 <raise>
  80abac:	01000044 	movi	r4,1
  80abb0:	080dd740 	call	80dd74 <_exit>

0080abb4 <_init_signal_r.part.0>:
  80abb4:	defffe04 	addi	sp,sp,-8
  80abb8:	01402004 	movi	r5,128
  80abbc:	dc000015 	stw	r16,0(sp)
  80abc0:	dfc00115 	stw	ra,4(sp)
  80abc4:	2021883a 	mov	r16,r4
  80abc8:	08067900 	call	806790 <_malloc_r>
  80abcc:	8080b715 	stw	r2,732(r16)
  80abd0:	10000926 	beq	r2,zero,80abf8 <_init_signal_r.part.0+0x44>
  80abd4:	10c02004 	addi	r3,r2,128
  80abd8:	10000015 	stw	zero,0(r2)
  80abdc:	10800104 	addi	r2,r2,4
  80abe0:	10fffd1e 	bne	r2,r3,80abd8 <_init_signal_r.part.0+0x24>
  80abe4:	0005883a 	mov	r2,zero
  80abe8:	dfc00117 	ldw	ra,4(sp)
  80abec:	dc000017 	ldw	r16,0(sp)
  80abf0:	dec00204 	addi	sp,sp,8
  80abf4:	f800283a 	ret
  80abf8:	00bfffc4 	movi	r2,-1
  80abfc:	003ffa06 	br	80abe8 <_init_signal_r.part.0+0x34>

0080ac00 <_init_signal_r>:
  80ac00:	2080b717 	ldw	r2,732(r4)
  80ac04:	10000226 	beq	r2,zero,80ac10 <_init_signal_r+0x10>
  80ac08:	0005883a 	mov	r2,zero
  80ac0c:	f800283a 	ret
  80ac10:	080abb41 	jmpi	80abb4 <_init_signal_r.part.0>

0080ac14 <_signal_r>:
  80ac14:	defffc04 	addi	sp,sp,-16
  80ac18:	dc000215 	stw	r16,8(sp)
  80ac1c:	dfc00315 	stw	ra,12(sp)
  80ac20:	28800830 	cmpltui	r2,r5,32
  80ac24:	2021883a 	mov	r16,r4
  80ac28:	10000a26 	beq	r2,zero,80ac54 <_signal_r+0x40>
  80ac2c:	2080b717 	ldw	r2,732(r4)
  80ac30:	10000f26 	beq	r2,zero,80ac70 <_signal_r+0x5c>
  80ac34:	280a90ba 	slli	r5,r5,2
  80ac38:	114b883a 	add	r5,r2,r5
  80ac3c:	28800017 	ldw	r2,0(r5)
  80ac40:	29800015 	stw	r6,0(r5)
  80ac44:	dfc00317 	ldw	ra,12(sp)
  80ac48:	dc000217 	ldw	r16,8(sp)
  80ac4c:	dec00404 	addi	sp,sp,16
  80ac50:	f800283a 	ret
  80ac54:	00800584 	movi	r2,22
  80ac58:	20800015 	stw	r2,0(r4)
  80ac5c:	00bfffc4 	movi	r2,-1
  80ac60:	dfc00317 	ldw	ra,12(sp)
  80ac64:	dc000217 	ldw	r16,8(sp)
  80ac68:	dec00404 	addi	sp,sp,16
  80ac6c:	f800283a 	ret
  80ac70:	d9800115 	stw	r6,4(sp)
  80ac74:	d9400015 	stw	r5,0(sp)
  80ac78:	080abb40 	call	80abb4 <_init_signal_r.part.0>
  80ac7c:	1000041e 	bne	r2,zero,80ac90 <_signal_r+0x7c>
  80ac80:	8080b717 	ldw	r2,732(r16)
  80ac84:	d9800117 	ldw	r6,4(sp)
  80ac88:	d9400017 	ldw	r5,0(sp)
  80ac8c:	003fe906 	br	80ac34 <_signal_r+0x20>
  80ac90:	00bfffc4 	movi	r2,-1
  80ac94:	003feb06 	br	80ac44 <_signal_r+0x30>

0080ac98 <_raise_r>:
  80ac98:	28800830 	cmpltui	r2,r5,32
  80ac9c:	10002b26 	beq	r2,zero,80ad4c <_raise_r+0xb4>
  80aca0:	2080b717 	ldw	r2,732(r4)
  80aca4:	defffd04 	addi	sp,sp,-12
  80aca8:	dc000115 	stw	r16,4(sp)
  80acac:	dfc00215 	stw	ra,8(sp)
  80acb0:	2821883a 	mov	r16,r5
  80acb4:	10001026 	beq	r2,zero,80acf8 <_raise_r+0x60>
  80acb8:	280690ba 	slli	r3,r5,2
  80acbc:	10c5883a 	add	r2,r2,r3
  80acc0:	10c00017 	ldw	r3,0(r2)
  80acc4:	18000c26 	beq	r3,zero,80acf8 <_raise_r+0x60>
  80acc8:	19400060 	cmpeqi	r5,r3,1
  80accc:	28001a1e 	bne	r5,zero,80ad38 <_raise_r+0xa0>
  80acd0:	197fffd8 	cmpnei	r5,r3,-1
  80acd4:	28001126 	beq	r5,zero,80ad1c <_raise_r+0x84>
  80acd8:	10000015 	stw	zero,0(r2)
  80acdc:	8009883a 	mov	r4,r16
  80ace0:	183ee83a 	callr	r3
  80ace4:	0005883a 	mov	r2,zero
  80ace8:	dfc00217 	ldw	ra,8(sp)
  80acec:	dc000117 	ldw	r16,4(sp)
  80acf0:	dec00304 	addi	sp,sp,12
  80acf4:	f800283a 	ret
  80acf8:	d9000015 	stw	r4,0(sp)
  80acfc:	080aec80 	call	80aec8 <_getpid_r>
  80ad00:	d9000017 	ldw	r4,0(sp)
  80ad04:	800d883a 	mov	r6,r16
  80ad08:	100b883a 	mov	r5,r2
  80ad0c:	dfc00217 	ldw	ra,8(sp)
  80ad10:	dc000117 	ldw	r16,4(sp)
  80ad14:	dec00304 	addi	sp,sp,12
  80ad18:	080ae681 	jmpi	80ae68 <_kill_r>
  80ad1c:	00800584 	movi	r2,22
  80ad20:	20800015 	stw	r2,0(r4)
  80ad24:	00800044 	movi	r2,1
  80ad28:	dfc00217 	ldw	ra,8(sp)
  80ad2c:	dc000117 	ldw	r16,4(sp)
  80ad30:	dec00304 	addi	sp,sp,12
  80ad34:	f800283a 	ret
  80ad38:	0005883a 	mov	r2,zero
  80ad3c:	dfc00217 	ldw	ra,8(sp)
  80ad40:	dc000117 	ldw	r16,4(sp)
  80ad44:	dec00304 	addi	sp,sp,12
  80ad48:	f800283a 	ret
  80ad4c:	00800584 	movi	r2,22
  80ad50:	20800015 	stw	r2,0(r4)
  80ad54:	00bfffc4 	movi	r2,-1
  80ad58:	f800283a 	ret

0080ad5c <__sigtramp_r>:
  80ad5c:	28800830 	cmpltui	r2,r5,32
  80ad60:	10002a26 	beq	r2,zero,80ae0c <__sigtramp_r+0xb0>
  80ad64:	2080b717 	ldw	r2,732(r4)
  80ad68:	defffd04 	addi	sp,sp,-12
  80ad6c:	dc400115 	stw	r17,4(sp)
  80ad70:	dfc00215 	stw	ra,8(sp)
  80ad74:	2023883a 	mov	r17,r4
  80ad78:	10001526 	beq	r2,zero,80add0 <__sigtramp_r+0x74>
  80ad7c:	280690ba 	slli	r3,r5,2
  80ad80:	10c5883a 	add	r2,r2,r3
  80ad84:	10c00017 	ldw	r3,0(r2)
  80ad88:	18000c26 	beq	r3,zero,80adbc <__sigtramp_r+0x60>
  80ad8c:	193fffe0 	cmpeqi	r4,r3,-1
  80ad90:	20001a1e 	bne	r4,zero,80adfc <__sigtramp_r+0xa0>
  80ad94:	19000060 	cmpeqi	r4,r3,1
  80ad98:	2000131e 	bne	r4,zero,80ade8 <__sigtramp_r+0x8c>
  80ad9c:	10000015 	stw	zero,0(r2)
  80ada0:	2809883a 	mov	r4,r5
  80ada4:	183ee83a 	callr	r3
  80ada8:	0005883a 	mov	r2,zero
  80adac:	dfc00217 	ldw	ra,8(sp)
  80adb0:	dc400117 	ldw	r17,4(sp)
  80adb4:	dec00304 	addi	sp,sp,12
  80adb8:	f800283a 	ret
  80adbc:	00800044 	movi	r2,1
  80adc0:	dfc00217 	ldw	ra,8(sp)
  80adc4:	dc400117 	ldw	r17,4(sp)
  80adc8:	dec00304 	addi	sp,sp,12
  80adcc:	f800283a 	ret
  80add0:	d9400015 	stw	r5,0(sp)
  80add4:	080abb40 	call	80abb4 <_init_signal_r.part.0>
  80add8:	10000a1e 	bne	r2,zero,80ae04 <__sigtramp_r+0xa8>
  80addc:	8880b717 	ldw	r2,732(r17)
  80ade0:	d9400017 	ldw	r5,0(sp)
  80ade4:	003fe506 	br	80ad7c <__sigtramp_r+0x20>
  80ade8:	008000c4 	movi	r2,3
  80adec:	dfc00217 	ldw	ra,8(sp)
  80adf0:	dc400117 	ldw	r17,4(sp)
  80adf4:	dec00304 	addi	sp,sp,12
  80adf8:	f800283a 	ret
  80adfc:	00800084 	movi	r2,2
  80ae00:	003fea06 	br	80adac <__sigtramp_r+0x50>
  80ae04:	00bfffc4 	movi	r2,-1
  80ae08:	003fe806 	br	80adac <__sigtramp_r+0x50>
  80ae0c:	00bfffc4 	movi	r2,-1
  80ae10:	f800283a 	ret

0080ae14 <raise>:
  80ae14:	00802074 	movhi	r2,129
  80ae18:	200b883a 	mov	r5,r4
  80ae1c:	1109e617 	ldw	r4,10136(r2)
  80ae20:	080ac981 	jmpi	80ac98 <_raise_r>

0080ae24 <signal>:
  80ae24:	00c02074 	movhi	r3,129
  80ae28:	2005883a 	mov	r2,r4
  80ae2c:	1909e617 	ldw	r4,10136(r3)
  80ae30:	280d883a 	mov	r6,r5
  80ae34:	100b883a 	mov	r5,r2
  80ae38:	080ac141 	jmpi	80ac14 <_signal_r>

0080ae3c <_init_signal>:
  80ae3c:	00802074 	movhi	r2,129
  80ae40:	1109e617 	ldw	r4,10136(r2)
  80ae44:	2080b717 	ldw	r2,732(r4)
  80ae48:	10000226 	beq	r2,zero,80ae54 <_init_signal+0x18>
  80ae4c:	0005883a 	mov	r2,zero
  80ae50:	f800283a 	ret
  80ae54:	080abb41 	jmpi	80abb4 <_init_signal_r.part.0>

0080ae58 <__sigtramp>:
  80ae58:	00802074 	movhi	r2,129
  80ae5c:	200b883a 	mov	r5,r4
  80ae60:	1109e617 	ldw	r4,10136(r2)
  80ae64:	080ad5c1 	jmpi	80ad5c <__sigtramp_r>

0080ae68 <_kill_r>:
  80ae68:	2807883a 	mov	r3,r5
  80ae6c:	defffe04 	addi	sp,sp,-8
  80ae70:	dc000015 	stw	r16,0(sp)
  80ae74:	00802074 	movhi	r2,129
  80ae78:	300b883a 	mov	r5,r6
  80ae7c:	2021883a 	mov	r16,r4
  80ae80:	1809883a 	mov	r4,r3
  80ae84:	dfc00115 	stw	ra,4(sp)
  80ae88:	1010ec15 	stw	zero,17328(r2)
  80ae8c:	080dfec0 	call	80dfec <kill>
  80ae90:	10ffffd8 	cmpnei	r3,r2,-1
  80ae94:	18000426 	beq	r3,zero,80aea8 <_kill_r+0x40>
  80ae98:	dfc00117 	ldw	ra,4(sp)
  80ae9c:	dc000017 	ldw	r16,0(sp)
  80aea0:	dec00204 	addi	sp,sp,8
  80aea4:	f800283a 	ret
  80aea8:	00c02074 	movhi	r3,129
  80aeac:	18d0ec17 	ldw	r3,17328(r3)
  80aeb0:	183ff926 	beq	r3,zero,80ae98 <_kill_r+0x30>
  80aeb4:	80c00015 	stw	r3,0(r16)
  80aeb8:	dfc00117 	ldw	ra,4(sp)
  80aebc:	dc000017 	ldw	r16,0(sp)
  80aec0:	dec00204 	addi	sp,sp,8
  80aec4:	f800283a 	ret

0080aec8 <_getpid_r>:
  80aec8:	080dea41 	jmpi	80dea4 <getpid>

0080aecc <__udivdi3>:
  80aecc:	defff504 	addi	sp,sp,-44
  80aed0:	dd000515 	stw	r20,20(sp)
  80aed4:	dc800315 	stw	r18,12(sp)
  80aed8:	dfc00a15 	stw	ra,40(sp)
  80aedc:	df000915 	stw	fp,36(sp)
  80aee0:	ddc00815 	stw	r23,32(sp)
  80aee4:	dd800715 	stw	r22,28(sp)
  80aee8:	dd400615 	stw	r21,24(sp)
  80aeec:	dcc00415 	stw	r19,16(sp)
  80aef0:	dc400215 	stw	r17,8(sp)
  80aef4:	dc000115 	stw	r16,4(sp)
  80aef8:	2029883a 	mov	r20,r4
  80aefc:	2825883a 	mov	r18,r5
  80af00:	3800461e 	bne	r7,zero,80b01c <__udivdi3+0x150>
  80af04:	3823883a 	mov	r17,r7
  80af08:	3021883a 	mov	r16,r6
  80af0c:	2027883a 	mov	r19,r4
  80af10:	2980622e 	bgeu	r5,r6,80b09c <__udivdi3+0x1d0>
  80af14:	00bfffd4 	movui	r2,65535
  80af18:	282b883a 	mov	r21,r5
  80af1c:	1180aa2e 	bgeu	r2,r6,80b1c8 <__udivdi3+0x2fc>
  80af20:	00804034 	movhi	r2,256
  80af24:	30815936 	bltu	r6,r2,80b48c <__udivdi3+0x5c0>
  80af28:	3006d63a 	srli	r3,r6,24
  80af2c:	04400604 	movi	r17,24
  80af30:	00802074 	movhi	r2,129
  80af34:	1885883a 	add	r2,r3,r2
  80af38:	11016a03 	ldbu	r4,1448(r2)
  80af3c:	00800804 	movi	r2,32
  80af40:	2463883a 	add	r17,r4,r17
  80af44:	1449c83a 	sub	r4,r2,r17
  80af48:	14400526 	beq	r2,r17,80af60 <__udivdi3+0x94>
  80af4c:	9106983a 	sll	r3,r18,r4
  80af50:	a462d83a 	srl	r17,r20,r17
  80af54:	3120983a 	sll	r16,r6,r4
  80af58:	a126983a 	sll	r19,r20,r4
  80af5c:	88eab03a 	or	r21,r17,r3
  80af60:	802cd43a 	srli	r22,r16,16
  80af64:	a809883a 	mov	r4,r21
  80af68:	853fffcc 	andi	r20,r16,65535
  80af6c:	b00b883a 	mov	r5,r22
  80af70:	080bc040 	call	80bc04 <__umodsi3>
  80af74:	a809883a 	mov	r4,r21
  80af78:	b00b883a 	mov	r5,r22
  80af7c:	1025883a 	mov	r18,r2
  80af80:	080bba00 	call	80bba0 <__udivsi3>
  80af84:	a009883a 	mov	r4,r20
  80af88:	100b883a 	mov	r5,r2
  80af8c:	102b883a 	mov	r21,r2
  80af90:	08016d80 	call	8016d8 <__mulsi3>
  80af94:	9024943a 	slli	r18,r18,16
  80af98:	9808d43a 	srli	r4,r19,16
  80af9c:	9108b03a 	or	r4,r18,r4
  80afa0:	2080052e 	bgeu	r4,r2,80afb8 <__udivdi3+0xec>
  80afa4:	2409883a 	add	r4,r4,r16
  80afa8:	a8ffffc4 	addi	r3,r21,-1
  80afac:	24000136 	bltu	r4,r16,80afb4 <__udivdi3+0xe8>
  80afb0:	20814736 	bltu	r4,r2,80b4d0 <__udivdi3+0x604>
  80afb4:	182b883a 	mov	r21,r3
  80afb8:	20a3c83a 	sub	r17,r4,r2
  80afbc:	8809883a 	mov	r4,r17
  80afc0:	b00b883a 	mov	r5,r22
  80afc4:	080bc040 	call	80bc04 <__umodsi3>
  80afc8:	8809883a 	mov	r4,r17
  80afcc:	1023883a 	mov	r17,r2
  80afd0:	b00b883a 	mov	r5,r22
  80afd4:	8822943a 	slli	r17,r17,16
  80afd8:	080bba00 	call	80bba0 <__udivsi3>
  80afdc:	100b883a 	mov	r5,r2
  80afe0:	a009883a 	mov	r4,r20
  80afe4:	9cffffcc 	andi	r19,r19,65535
  80afe8:	1025883a 	mov	r18,r2
  80afec:	8ce6b03a 	or	r19,r17,r19
  80aff0:	08016d80 	call	8016d8 <__mulsi3>
  80aff4:	9880052e 	bgeu	r19,r2,80b00c <__udivdi3+0x140>
  80aff8:	84e7883a 	add	r19,r16,r19
  80affc:	90ffffc4 	addi	r3,r18,-1
  80b000:	9c000136 	bltu	r19,r16,80b008 <__udivdi3+0x13c>
  80b004:	98813036 	bltu	r19,r2,80b4c8 <__udivdi3+0x5fc>
  80b008:	1825883a 	mov	r18,r3
  80b00c:	a80c943a 	slli	r6,r21,16
  80b010:	0007883a 	mov	r3,zero
  80b014:	3484b03a 	or	r2,r6,r18
  80b018:	00000306 	br	80b028 <__udivdi3+0x15c>
  80b01c:	29c00e2e 	bgeu	r5,r7,80b058 <__udivdi3+0x18c>
  80b020:	0007883a 	mov	r3,zero
  80b024:	0005883a 	mov	r2,zero
  80b028:	dfc00a17 	ldw	ra,40(sp)
  80b02c:	df000917 	ldw	fp,36(sp)
  80b030:	ddc00817 	ldw	r23,32(sp)
  80b034:	dd800717 	ldw	r22,28(sp)
  80b038:	dd400617 	ldw	r21,24(sp)
  80b03c:	dd000517 	ldw	r20,20(sp)
  80b040:	dcc00417 	ldw	r19,16(sp)
  80b044:	dc800317 	ldw	r18,12(sp)
  80b048:	dc400217 	ldw	r17,8(sp)
  80b04c:	dc000117 	ldw	r16,4(sp)
  80b050:	dec00b04 	addi	sp,sp,44
  80b054:	f800283a 	ret
  80b058:	00bfffd4 	movui	r2,65535
  80b05c:	11c05f2e 	bgeu	r2,r7,80b1dc <__udivdi3+0x310>
  80b060:	00804034 	movhi	r2,256
  80b064:	3880fb36 	bltu	r7,r2,80b454 <__udivdi3+0x588>
  80b068:	3806d63a 	srli	r3,r7,24
  80b06c:	01000604 	movi	r4,24
  80b070:	00802074 	movhi	r2,129
  80b074:	1885883a 	add	r2,r3,r2
  80b078:	10c16a03 	ldbu	r3,1448(r2)
  80b07c:	00800804 	movi	r2,32
  80b080:	1907883a 	add	r3,r3,r4
  80b084:	10e3c83a 	sub	r17,r2,r3
  80b088:	10c0901e 	bne	r2,r3,80b2cc <__udivdi3+0x400>
  80b08c:	3c80f636 	bltu	r7,r18,80b468 <__udivdi3+0x59c>
  80b090:	a185403a 	cmpgeu	r2,r20,r6
  80b094:	0007883a 	mov	r3,zero
  80b098:	003fe306 	br	80b028 <__udivdi3+0x15c>
  80b09c:	3000041e 	bne	r6,zero,80b0b0 <__udivdi3+0x1e4>
  80b0a0:	000b883a 	mov	r5,zero
  80b0a4:	01000044 	movi	r4,1
  80b0a8:	080bba00 	call	80bba0 <__udivsi3>
  80b0ac:	1021883a 	mov	r16,r2
  80b0b0:	00bfffd4 	movui	r2,65535
  80b0b4:	14003f2e 	bgeu	r2,r16,80b1b4 <__udivdi3+0x2e8>
  80b0b8:	00804034 	movhi	r2,256
  80b0bc:	8080f036 	bltu	r16,r2,80b480 <__udivdi3+0x5b4>
  80b0c0:	8006d63a 	srli	r3,r16,24
  80b0c4:	04400604 	movi	r17,24
  80b0c8:	00802074 	movhi	r2,129
  80b0cc:	1885883a 	add	r2,r3,r2
  80b0d0:	10816a03 	ldbu	r2,1448(r2)
  80b0d4:	00c00804 	movi	r3,32
  80b0d8:	1463883a 	add	r17,r2,r17
  80b0dc:	1c45c83a 	sub	r2,r3,r17
  80b0e0:	1c40431e 	bne	r3,r17,80b1f0 <__udivdi3+0x324>
  80b0e4:	802cd43a 	srli	r22,r16,16
  80b0e8:	9423c83a 	sub	r17,r18,r16
  80b0ec:	853fffcc 	andi	r20,r16,65535
  80b0f0:	00c00044 	movi	r3,1
  80b0f4:	b00b883a 	mov	r5,r22
  80b0f8:	8809883a 	mov	r4,r17
  80b0fc:	d8c00015 	stw	r3,0(sp)
  80b100:	080bc040 	call	80bc04 <__umodsi3>
  80b104:	b00b883a 	mov	r5,r22
  80b108:	8809883a 	mov	r4,r17
  80b10c:	1025883a 	mov	r18,r2
  80b110:	080bba00 	call	80bba0 <__udivsi3>
  80b114:	1009883a 	mov	r4,r2
  80b118:	a00b883a 	mov	r5,r20
  80b11c:	102b883a 	mov	r21,r2
  80b120:	08016d80 	call	8016d8 <__mulsi3>
  80b124:	9024943a 	slli	r18,r18,16
  80b128:	9808d43a 	srli	r4,r19,16
  80b12c:	d8c00017 	ldw	r3,0(sp)
  80b130:	9108b03a 	or	r4,r18,r4
  80b134:	2080052e 	bgeu	r4,r2,80b14c <__udivdi3+0x280>
  80b138:	2409883a 	add	r4,r4,r16
  80b13c:	a97fffc4 	addi	r5,r21,-1
  80b140:	24000136 	bltu	r4,r16,80b148 <__udivdi3+0x27c>
  80b144:	2080e536 	bltu	r4,r2,80b4dc <__udivdi3+0x610>
  80b148:	282b883a 	mov	r21,r5
  80b14c:	20a3c83a 	sub	r17,r4,r2
  80b150:	8809883a 	mov	r4,r17
  80b154:	b00b883a 	mov	r5,r22
  80b158:	d8c00015 	stw	r3,0(sp)
  80b15c:	080bc040 	call	80bc04 <__umodsi3>
  80b160:	8809883a 	mov	r4,r17
  80b164:	1023883a 	mov	r17,r2
  80b168:	b00b883a 	mov	r5,r22
  80b16c:	8822943a 	slli	r17,r17,16
  80b170:	080bba00 	call	80bba0 <__udivsi3>
  80b174:	a00b883a 	mov	r5,r20
  80b178:	1009883a 	mov	r4,r2
  80b17c:	9cffffcc 	andi	r19,r19,65535
  80b180:	1025883a 	mov	r18,r2
  80b184:	8ce6b03a 	or	r19,r17,r19
  80b188:	08016d80 	call	8016d8 <__mulsi3>
  80b18c:	d8c00017 	ldw	r3,0(sp)
  80b190:	9880052e 	bgeu	r19,r2,80b1a8 <__udivdi3+0x2dc>
  80b194:	84e7883a 	add	r19,r16,r19
  80b198:	913fffc4 	addi	r4,r18,-1
  80b19c:	9c000136 	bltu	r19,r16,80b1a4 <__udivdi3+0x2d8>
  80b1a0:	9880c736 	bltu	r19,r2,80b4c0 <__udivdi3+0x5f4>
  80b1a4:	2025883a 	mov	r18,r4
  80b1a8:	a80c943a 	slli	r6,r21,16
  80b1ac:	3484b03a 	or	r2,r6,r18
  80b1b0:	003f9d06 	br	80b028 <__udivdi3+0x15c>
  80b1b4:	80804030 	cmpltui	r2,r16,256
  80b1b8:	1000b71e 	bne	r2,zero,80b498 <__udivdi3+0x5cc>
  80b1bc:	8006d23a 	srli	r3,r16,8
  80b1c0:	04400204 	movi	r17,8
  80b1c4:	003fc006 	br	80b0c8 <__udivdi3+0x1fc>
  80b1c8:	30804030 	cmpltui	r2,r6,256
  80b1cc:	1000a41e 	bne	r2,zero,80b460 <__udivdi3+0x594>
  80b1d0:	3006d23a 	srli	r3,r6,8
  80b1d4:	04400204 	movi	r17,8
  80b1d8:	003f5506 	br	80af30 <__udivdi3+0x64>
  80b1dc:	38804030 	cmpltui	r2,r7,256
  80b1e0:	1000a41e 	bne	r2,zero,80b474 <__udivdi3+0x5a8>
  80b1e4:	3806d23a 	srli	r3,r7,8
  80b1e8:	01000204 	movi	r4,8
  80b1ec:	003fa006 	br	80b070 <__udivdi3+0x1a4>
  80b1f0:	80a0983a 	sll	r16,r16,r2
  80b1f4:	946ed83a 	srl	r23,r18,r17
  80b1f8:	9086983a 	sll	r3,r18,r2
  80b1fc:	802cd43a 	srli	r22,r16,16
  80b200:	a462d83a 	srl	r17,r20,r17
  80b204:	b809883a 	mov	r4,r23
  80b208:	b00b883a 	mov	r5,r22
  80b20c:	88eab03a 	or	r21,r17,r3
  80b210:	a0a6983a 	sll	r19,r20,r2
  80b214:	080bc040 	call	80bc04 <__umodsi3>
  80b218:	b809883a 	mov	r4,r23
  80b21c:	b00b883a 	mov	r5,r22
  80b220:	1025883a 	mov	r18,r2
  80b224:	853fffcc 	andi	r20,r16,65535
  80b228:	080bba00 	call	80bba0 <__udivsi3>
  80b22c:	a009883a 	mov	r4,r20
  80b230:	100b883a 	mov	r5,r2
  80b234:	102f883a 	mov	r23,r2
  80b238:	08016d80 	call	8016d8 <__mulsi3>
  80b23c:	9024943a 	slli	r18,r18,16
  80b240:	a808d43a 	srli	r4,r21,16
  80b244:	9108b03a 	or	r4,r18,r4
  80b248:	2080062e 	bgeu	r4,r2,80b264 <__udivdi3+0x398>
  80b24c:	2409883a 	add	r4,r4,r16
  80b250:	b8ffffc4 	addi	r3,r23,-1
  80b254:	24009836 	bltu	r4,r16,80b4b8 <__udivdi3+0x5ec>
  80b258:	2080972e 	bgeu	r4,r2,80b4b8 <__udivdi3+0x5ec>
  80b25c:	bdffff84 	addi	r23,r23,-2
  80b260:	2409883a 	add	r4,r4,r16
  80b264:	20a3c83a 	sub	r17,r4,r2
  80b268:	8809883a 	mov	r4,r17
  80b26c:	b00b883a 	mov	r5,r22
  80b270:	080bc040 	call	80bc04 <__umodsi3>
  80b274:	1025883a 	mov	r18,r2
  80b278:	8809883a 	mov	r4,r17
  80b27c:	b00b883a 	mov	r5,r22
  80b280:	9024943a 	slli	r18,r18,16
  80b284:	080bba00 	call	80bba0 <__udivsi3>
  80b288:	100b883a 	mov	r5,r2
  80b28c:	a009883a 	mov	r4,r20
  80b290:	ac7fffcc 	andi	r17,r21,65535
  80b294:	1039883a 	mov	fp,r2
  80b298:	9462b03a 	or	r17,r18,r17
  80b29c:	08016d80 	call	8016d8 <__mulsi3>
  80b2a0:	8880062e 	bgeu	r17,r2,80b2bc <__udivdi3+0x3f0>
  80b2a4:	8c23883a 	add	r17,r17,r16
  80b2a8:	e0ffffc4 	addi	r3,fp,-1
  80b2ac:	8c007e36 	bltu	r17,r16,80b4a8 <__udivdi3+0x5dc>
  80b2b0:	88807d2e 	bgeu	r17,r2,80b4a8 <__udivdi3+0x5dc>
  80b2b4:	e73fff84 	addi	fp,fp,-2
  80b2b8:	8c23883a 	add	r17,r17,r16
  80b2bc:	b806943a 	slli	r3,r23,16
  80b2c0:	88a3c83a 	sub	r17,r17,r2
  80b2c4:	1f06b03a 	or	r3,r3,fp
  80b2c8:	003f8a06 	br	80b0f4 <__udivdi3+0x228>
  80b2cc:	30e6d83a 	srl	r19,r6,r3
  80b2d0:	3c4e983a 	sll	r7,r7,r17
  80b2d4:	90e0d83a 	srl	r16,r18,r3
  80b2d8:	a0c4d83a 	srl	r2,r20,r3
  80b2dc:	99e6b03a 	or	r19,r19,r7
  80b2e0:	9446983a 	sll	r3,r18,r17
  80b2e4:	9838d43a 	srli	fp,r19,16
  80b2e8:	8009883a 	mov	r4,r16
  80b2ec:	10eab03a 	or	r21,r2,r3
  80b2f0:	e00b883a 	mov	r5,fp
  80b2f4:	346c983a 	sll	r22,r6,r17
  80b2f8:	dd400015 	stw	r21,0(sp)
  80b2fc:	080bc040 	call	80bc04 <__umodsi3>
  80b300:	8009883a 	mov	r4,r16
  80b304:	e00b883a 	mov	r5,fp
  80b308:	102f883a 	mov	r23,r2
  80b30c:	9cbfffcc 	andi	r18,r19,65535
  80b310:	080bba00 	call	80bba0 <__udivsi3>
  80b314:	9009883a 	mov	r4,r18
  80b318:	100b883a 	mov	r5,r2
  80b31c:	1021883a 	mov	r16,r2
  80b320:	08016d80 	call	8016d8 <__mulsi3>
  80b324:	b82e943a 	slli	r23,r23,16
  80b328:	a808d43a 	srli	r4,r21,16
  80b32c:	b908b03a 	or	r4,r23,r4
  80b330:	2080062e 	bgeu	r4,r2,80b34c <__udivdi3+0x480>
  80b334:	24c9883a 	add	r4,r4,r19
  80b338:	817fffc4 	addi	r5,r16,-1
  80b33c:	24c05c36 	bltu	r4,r19,80b4b0 <__udivdi3+0x5e4>
  80b340:	20805b2e 	bgeu	r4,r2,80b4b0 <__udivdi3+0x5e4>
  80b344:	843fff84 	addi	r16,r16,-2
  80b348:	24c9883a 	add	r4,r4,r19
  80b34c:	20abc83a 	sub	r21,r4,r2
  80b350:	a809883a 	mov	r4,r21
  80b354:	e00b883a 	mov	r5,fp
  80b358:	080bc040 	call	80bc04 <__umodsi3>
  80b35c:	a809883a 	mov	r4,r21
  80b360:	e00b883a 	mov	r5,fp
  80b364:	102b883a 	mov	r21,r2
  80b368:	080bba00 	call	80bba0 <__udivsi3>
  80b36c:	9009883a 	mov	r4,r18
  80b370:	100b883a 	mov	r5,r2
  80b374:	102f883a 	mov	r23,r2
  80b378:	08016d80 	call	8016d8 <__mulsi3>
  80b37c:	d8c00017 	ldw	r3,0(sp)
  80b380:	a82a943a 	slli	r21,r21,16
  80b384:	1cbfffcc 	andi	r18,r3,65535
  80b388:	aca4b03a 	or	r18,r21,r18
  80b38c:	9080062e 	bgeu	r18,r2,80b3a8 <__udivdi3+0x4dc>
  80b390:	94e5883a 	add	r18,r18,r19
  80b394:	b8ffffc4 	addi	r3,r23,-1
  80b398:	94c04136 	bltu	r18,r19,80b4a0 <__udivdi3+0x5d4>
  80b39c:	9080402e 	bgeu	r18,r2,80b4a0 <__udivdi3+0x5d4>
  80b3a0:	bdffff84 	addi	r23,r23,-2
  80b3a4:	94e5883a 	add	r18,r18,r19
  80b3a8:	8020943a 	slli	r16,r16,16
  80b3ac:	bd7fffcc 	andi	r21,r23,65535
  80b3b0:	b73fffcc 	andi	fp,r22,65535
  80b3b4:	85e0b03a 	or	r16,r16,r23
  80b3b8:	8026d43a 	srli	r19,r16,16
  80b3bc:	a809883a 	mov	r4,r21
  80b3c0:	e00b883a 	mov	r5,fp
  80b3c4:	b02cd43a 	srli	r22,r22,16
  80b3c8:	90a5c83a 	sub	r18,r18,r2
  80b3cc:	08016d80 	call	8016d8 <__mulsi3>
  80b3d0:	9809883a 	mov	r4,r19
  80b3d4:	e00b883a 	mov	r5,fp
  80b3d8:	102f883a 	mov	r23,r2
  80b3dc:	08016d80 	call	8016d8 <__mulsi3>
  80b3e0:	9809883a 	mov	r4,r19
  80b3e4:	b00b883a 	mov	r5,r22
  80b3e8:	1027883a 	mov	r19,r2
  80b3ec:	08016d80 	call	8016d8 <__mulsi3>
  80b3f0:	a809883a 	mov	r4,r21
  80b3f4:	b00b883a 	mov	r5,r22
  80b3f8:	102b883a 	mov	r21,r2
  80b3fc:	08016d80 	call	8016d8 <__mulsi3>
  80b400:	b806d43a 	srli	r3,r23,16
  80b404:	14c5883a 	add	r2,r2,r19
  80b408:	1887883a 	add	r3,r3,r2
  80b40c:	1cc0022e 	bgeu	r3,r19,80b418 <__udivdi3+0x54c>
  80b410:	00800074 	movhi	r2,1
  80b414:	a8ab883a 	add	r21,r21,r2
  80b418:	1804d43a 	srli	r2,r3,16
  80b41c:	156b883a 	add	r21,r2,r21
  80b420:	95400936 	bltu	r18,r21,80b448 <__udivdi3+0x57c>
  80b424:	95400326 	beq	r18,r21,80b434 <__udivdi3+0x568>
  80b428:	8005883a 	mov	r2,r16
  80b42c:	0007883a 	mov	r3,zero
  80b430:	003efd06 	br	80b028 <__udivdi3+0x15c>
  80b434:	1806943a 	slli	r3,r3,16
  80b438:	a44c983a 	sll	r6,r20,r17
  80b43c:	bdffffcc 	andi	r23,r23,65535
  80b440:	1dc7883a 	add	r3,r3,r23
  80b444:	30fff82e 	bgeu	r6,r3,80b428 <__udivdi3+0x55c>
  80b448:	80bfffc4 	addi	r2,r16,-1
  80b44c:	0007883a 	mov	r3,zero
  80b450:	003ef506 	br	80b028 <__udivdi3+0x15c>
  80b454:	3806d43a 	srli	r3,r7,16
  80b458:	01000404 	movi	r4,16
  80b45c:	003f0406 	br	80b070 <__udivdi3+0x1a4>
  80b460:	3007883a 	mov	r3,r6
  80b464:	003eb206 	br	80af30 <__udivdi3+0x64>
  80b468:	0007883a 	mov	r3,zero
  80b46c:	00800044 	movi	r2,1
  80b470:	003eed06 	br	80b028 <__udivdi3+0x15c>
  80b474:	3807883a 	mov	r3,r7
  80b478:	0009883a 	mov	r4,zero
  80b47c:	003efc06 	br	80b070 <__udivdi3+0x1a4>
  80b480:	8006d43a 	srli	r3,r16,16
  80b484:	04400404 	movi	r17,16
  80b488:	003f0f06 	br	80b0c8 <__udivdi3+0x1fc>
  80b48c:	3006d43a 	srli	r3,r6,16
  80b490:	04400404 	movi	r17,16
  80b494:	003ea606 	br	80af30 <__udivdi3+0x64>
  80b498:	8007883a 	mov	r3,r16
  80b49c:	003f0a06 	br	80b0c8 <__udivdi3+0x1fc>
  80b4a0:	182f883a 	mov	r23,r3
  80b4a4:	003fc006 	br	80b3a8 <__udivdi3+0x4dc>
  80b4a8:	1839883a 	mov	fp,r3
  80b4ac:	003f8306 	br	80b2bc <__udivdi3+0x3f0>
  80b4b0:	2821883a 	mov	r16,r5
  80b4b4:	003fa506 	br	80b34c <__udivdi3+0x480>
  80b4b8:	182f883a 	mov	r23,r3
  80b4bc:	003f6906 	br	80b264 <__udivdi3+0x398>
  80b4c0:	94bfff84 	addi	r18,r18,-2
  80b4c4:	003f3806 	br	80b1a8 <__udivdi3+0x2dc>
  80b4c8:	94bfff84 	addi	r18,r18,-2
  80b4cc:	003ecf06 	br	80b00c <__udivdi3+0x140>
  80b4d0:	ad7fff84 	addi	r21,r21,-2
  80b4d4:	2409883a 	add	r4,r4,r16
  80b4d8:	003eb706 	br	80afb8 <__udivdi3+0xec>
  80b4dc:	ad7fff84 	addi	r21,r21,-2
  80b4e0:	2409883a 	add	r4,r4,r16
  80b4e4:	003f1906 	br	80b14c <__udivdi3+0x280>

0080b4e8 <__umoddi3>:
  80b4e8:	defff304 	addi	sp,sp,-52
  80b4ec:	dc400415 	stw	r17,16(sp)
  80b4f0:	dc000315 	stw	r16,12(sp)
  80b4f4:	dfc00c15 	stw	ra,48(sp)
  80b4f8:	df000b15 	stw	fp,44(sp)
  80b4fc:	ddc00a15 	stw	r23,40(sp)
  80b500:	dd800915 	stw	r22,36(sp)
  80b504:	dd400815 	stw	r21,32(sp)
  80b508:	dd000715 	stw	r20,28(sp)
  80b50c:	dcc00615 	stw	r19,24(sp)
  80b510:	dc800515 	stw	r18,20(sp)
  80b514:	2823883a 	mov	r17,r5
  80b518:	2021883a 	mov	r16,r4
  80b51c:	38003b1e 	bne	r7,zero,80b60c <__umoddi3+0x124>
  80b520:	3825883a 	mov	r18,r7
  80b524:	3029883a 	mov	r20,r6
  80b528:	2027883a 	mov	r19,r4
  80b52c:	29805b2e 	bgeu	r5,r6,80b69c <__umoddi3+0x1b4>
  80b530:	00bfffd4 	movui	r2,65535
  80b534:	282d883a 	mov	r22,r5
  80b538:	11809a2e 	bgeu	r2,r6,80b7a4 <__umoddi3+0x2bc>
  80b53c:	00804034 	movhi	r2,256
  80b540:	30814436 	bltu	r6,r2,80ba54 <__umoddi3+0x56c>
  80b544:	3006d63a 	srli	r3,r6,24
  80b548:	04800604 	movi	r18,24
  80b54c:	00802074 	movhi	r2,129
  80b550:	1885883a 	add	r2,r3,r2
  80b554:	11016a03 	ldbu	r4,1448(r2)
  80b558:	00800804 	movi	r2,32
  80b55c:	2489883a 	add	r4,r4,r18
  80b560:	1125c83a 	sub	r18,r2,r4
  80b564:	11000526 	beq	r2,r4,80b57c <__umoddi3+0x94>
  80b568:	8ca2983a 	sll	r17,r17,r18
  80b56c:	8108d83a 	srl	r4,r16,r4
  80b570:	34a8983a 	sll	r20,r6,r18
  80b574:	84a6983a 	sll	r19,r16,r18
  80b578:	246cb03a 	or	r22,r4,r17
  80b57c:	a02ed43a 	srli	r23,r20,16
  80b580:	b009883a 	mov	r4,r22
  80b584:	a57fffcc 	andi	r21,r20,65535
  80b588:	b80b883a 	mov	r5,r23
  80b58c:	080bc040 	call	80bc04 <__umodsi3>
  80b590:	b80b883a 	mov	r5,r23
  80b594:	b009883a 	mov	r4,r22
  80b598:	1023883a 	mov	r17,r2
  80b59c:	080bba00 	call	80bba0 <__udivsi3>
  80b5a0:	a809883a 	mov	r4,r21
  80b5a4:	100b883a 	mov	r5,r2
  80b5a8:	08016d80 	call	8016d8 <__mulsi3>
  80b5ac:	8822943a 	slli	r17,r17,16
  80b5b0:	9808d43a 	srli	r4,r19,16
  80b5b4:	8908b03a 	or	r4,r17,r4
  80b5b8:	2080042e 	bgeu	r4,r2,80b5cc <__umoddi3+0xe4>
  80b5bc:	2509883a 	add	r4,r4,r20
  80b5c0:	25000236 	bltu	r4,r20,80b5cc <__umoddi3+0xe4>
  80b5c4:	2080012e 	bgeu	r4,r2,80b5cc <__umoddi3+0xe4>
  80b5c8:	2509883a 	add	r4,r4,r20
  80b5cc:	20a1c83a 	sub	r16,r4,r2
  80b5d0:	b80b883a 	mov	r5,r23
  80b5d4:	8009883a 	mov	r4,r16
  80b5d8:	080bc040 	call	80bc04 <__umodsi3>
  80b5dc:	b80b883a 	mov	r5,r23
  80b5e0:	8009883a 	mov	r4,r16
  80b5e4:	1023883a 	mov	r17,r2
  80b5e8:	080bba00 	call	80bba0 <__udivsi3>
  80b5ec:	8822943a 	slli	r17,r17,16
  80b5f0:	100b883a 	mov	r5,r2
  80b5f4:	a809883a 	mov	r4,r21
  80b5f8:	08016d80 	call	8016d8 <__mulsi3>
  80b5fc:	98ffffcc 	andi	r3,r19,65535
  80b600:	88c6b03a 	or	r3,r17,r3
  80b604:	18805e2e 	bgeu	r3,r2,80b780 <__umoddi3+0x298>
  80b608:	00005906 	br	80b770 <__umoddi3+0x288>
  80b60c:	2005883a 	mov	r2,r4
  80b610:	29c00d2e 	bgeu	r5,r7,80b648 <__umoddi3+0x160>
  80b614:	2807883a 	mov	r3,r5
  80b618:	dfc00c17 	ldw	ra,48(sp)
  80b61c:	df000b17 	ldw	fp,44(sp)
  80b620:	ddc00a17 	ldw	r23,40(sp)
  80b624:	dd800917 	ldw	r22,36(sp)
  80b628:	dd400817 	ldw	r21,32(sp)
  80b62c:	dd000717 	ldw	r20,28(sp)
  80b630:	dcc00617 	ldw	r19,24(sp)
  80b634:	dc800517 	ldw	r18,20(sp)
  80b638:	dc400417 	ldw	r17,16(sp)
  80b63c:	dc000317 	ldw	r16,12(sp)
  80b640:	dec00d04 	addi	sp,sp,52
  80b644:	f800283a 	ret
  80b648:	013fffd4 	movui	r4,65535
  80b64c:	2807883a 	mov	r3,r5
  80b650:	21c0592e 	bgeu	r4,r7,80b7b8 <__umoddi3+0x2d0>
  80b654:	01004034 	movhi	r4,256
  80b658:	39010336 	bltu	r7,r4,80ba68 <__umoddi3+0x580>
  80b65c:	3808d63a 	srli	r4,r7,24
  80b660:	02000604 	movi	r8,24
  80b664:	01402074 	movhi	r5,129
  80b668:	214b883a 	add	r5,r4,r5
  80b66c:	2d016a03 	ldbu	r20,1448(r5)
  80b670:	01000804 	movi	r4,32
  80b674:	a229883a 	add	r20,r20,r8
  80b678:	252bc83a 	sub	r21,r4,r20
  80b67c:	2500531e 	bne	r4,r20,80b7cc <__umoddi3+0x2e4>
  80b680:	3c400136 	bltu	r7,r17,80b688 <__umoddi3+0x1a0>
  80b684:	81bfe436 	bltu	r16,r6,80b618 <__umoddi3+0x130>
  80b688:	8185c83a 	sub	r2,r16,r6
  80b68c:	89cfc83a 	sub	r7,r17,r7
  80b690:	8087803a 	cmpltu	r3,r16,r2
  80b694:	38c7c83a 	sub	r3,r7,r3
  80b698:	003fdf06 	br	80b618 <__umoddi3+0x130>
  80b69c:	3000041e 	bne	r6,zero,80b6b0 <__umoddi3+0x1c8>
  80b6a0:	000b883a 	mov	r5,zero
  80b6a4:	01000044 	movi	r4,1
  80b6a8:	080bba00 	call	80bba0 <__udivsi3>
  80b6ac:	1029883a 	mov	r20,r2
  80b6b0:	00bfffd4 	movui	r2,65535
  80b6b4:	1500362e 	bgeu	r2,r20,80b790 <__umoddi3+0x2a8>
  80b6b8:	00804034 	movhi	r2,256
  80b6bc:	a080ed36 	bltu	r20,r2,80ba74 <__umoddi3+0x58c>
  80b6c0:	a006d63a 	srli	r3,r20,24
  80b6c4:	04800604 	movi	r18,24
  80b6c8:	00802074 	movhi	r2,129
  80b6cc:	1885883a 	add	r2,r3,r2
  80b6d0:	15816a03 	ldbu	r22,1448(r2)
  80b6d4:	00800804 	movi	r2,32
  80b6d8:	b4ad883a 	add	r22,r22,r18
  80b6dc:	15a5c83a 	sub	r18,r2,r22
  80b6e0:	1580a51e 	bne	r2,r22,80b978 <__umoddi3+0x490>
  80b6e4:	a02ed43a 	srli	r23,r20,16
  80b6e8:	8d23c83a 	sub	r17,r17,r20
  80b6ec:	a57fffcc 	andi	r21,r20,65535
  80b6f0:	8809883a 	mov	r4,r17
  80b6f4:	b80b883a 	mov	r5,r23
  80b6f8:	080bc040 	call	80bc04 <__umodsi3>
  80b6fc:	8809883a 	mov	r4,r17
  80b700:	b80b883a 	mov	r5,r23
  80b704:	1023883a 	mov	r17,r2
  80b708:	080bba00 	call	80bba0 <__udivsi3>
  80b70c:	1009883a 	mov	r4,r2
  80b710:	a80b883a 	mov	r5,r21
  80b714:	08016d80 	call	8016d8 <__mulsi3>
  80b718:	8822943a 	slli	r17,r17,16
  80b71c:	9808d43a 	srli	r4,r19,16
  80b720:	8908b03a 	or	r4,r17,r4
  80b724:	2080032e 	bgeu	r4,r2,80b734 <__umoddi3+0x24c>
  80b728:	2509883a 	add	r4,r4,r20
  80b72c:	25000136 	bltu	r4,r20,80b734 <__umoddi3+0x24c>
  80b730:	2080dc36 	bltu	r4,r2,80baa4 <__umoddi3+0x5bc>
  80b734:	20a1c83a 	sub	r16,r4,r2
  80b738:	b80b883a 	mov	r5,r23
  80b73c:	8009883a 	mov	r4,r16
  80b740:	080bc040 	call	80bc04 <__umodsi3>
  80b744:	b80b883a 	mov	r5,r23
  80b748:	8009883a 	mov	r4,r16
  80b74c:	1023883a 	mov	r17,r2
  80b750:	8822943a 	slli	r17,r17,16
  80b754:	080bba00 	call	80bba0 <__udivsi3>
  80b758:	a80b883a 	mov	r5,r21
  80b75c:	1009883a 	mov	r4,r2
  80b760:	08016d80 	call	8016d8 <__mulsi3>
  80b764:	9cffffcc 	andi	r19,r19,65535
  80b768:	8cc6b03a 	or	r3,r17,r19
  80b76c:	1880042e 	bgeu	r3,r2,80b780 <__umoddi3+0x298>
  80b770:	1d07883a 	add	r3,r3,r20
  80b774:	1d000236 	bltu	r3,r20,80b780 <__umoddi3+0x298>
  80b778:	1880012e 	bgeu	r3,r2,80b780 <__umoddi3+0x298>
  80b77c:	1d07883a 	add	r3,r3,r20
  80b780:	1885c83a 	sub	r2,r3,r2
  80b784:	1484d83a 	srl	r2,r2,r18
  80b788:	0007883a 	mov	r3,zero
  80b78c:	003fa206 	br	80b618 <__umoddi3+0x130>
  80b790:	a0804030 	cmpltui	r2,r20,256
  80b794:	1000ba1e 	bne	r2,zero,80ba80 <__umoddi3+0x598>
  80b798:	a006d23a 	srli	r3,r20,8
  80b79c:	04800204 	movi	r18,8
  80b7a0:	003fc906 	br	80b6c8 <__umoddi3+0x1e0>
  80b7a4:	30804030 	cmpltui	r2,r6,256
  80b7a8:	1000ad1e 	bne	r2,zero,80ba60 <__umoddi3+0x578>
  80b7ac:	3006d23a 	srli	r3,r6,8
  80b7b0:	04800204 	movi	r18,8
  80b7b4:	003f6506 	br	80b54c <__umoddi3+0x64>
  80b7b8:	39004030 	cmpltui	r4,r7,256
  80b7bc:	2000b21e 	bne	r4,zero,80ba88 <__umoddi3+0x5a0>
  80b7c0:	3808d23a 	srli	r4,r7,8
  80b7c4:	02000204 	movi	r8,8
  80b7c8:	003fa606 	br	80b664 <__umoddi3+0x17c>
  80b7cc:	3d4e983a 	sll	r7,r7,r21
  80b7d0:	3508d83a 	srl	r4,r6,r20
  80b7d4:	8d2cd83a 	srl	r22,r17,r20
  80b7d8:	8504d83a 	srl	r2,r16,r20
  80b7dc:	21e4b03a 	or	r18,r4,r7
  80b7e0:	8d62983a 	sll	r17,r17,r21
  80b7e4:	9026d43a 	srli	r19,r18,16
  80b7e8:	354c983a 	sll	r6,r6,r21
  80b7ec:	1444b03a 	or	r2,r2,r17
  80b7f0:	b009883a 	mov	r4,r22
  80b7f4:	980b883a 	mov	r5,r19
  80b7f8:	d9800115 	stw	r6,4(sp)
  80b7fc:	d8800015 	stw	r2,0(sp)
  80b800:	080bc040 	call	80bc04 <__umodsi3>
  80b804:	980b883a 	mov	r5,r19
  80b808:	b009883a 	mov	r4,r22
  80b80c:	102f883a 	mov	r23,r2
  80b810:	947fffcc 	andi	r17,r18,65535
  80b814:	080bba00 	call	80bba0 <__udivsi3>
  80b818:	8809883a 	mov	r4,r17
  80b81c:	100b883a 	mov	r5,r2
  80b820:	1039883a 	mov	fp,r2
  80b824:	08016d80 	call	8016d8 <__mulsi3>
  80b828:	d8c00017 	ldw	r3,0(sp)
  80b82c:	b82e943a 	slli	r23,r23,16
  80b830:	8560983a 	sll	r16,r16,r21
  80b834:	1808d43a 	srli	r4,r3,16
  80b838:	b908b03a 	or	r4,r23,r4
  80b83c:	2080062e 	bgeu	r4,r2,80b858 <__umoddi3+0x370>
  80b840:	2489883a 	add	r4,r4,r18
  80b844:	e17fffc4 	addi	r5,fp,-1
  80b848:	24809436 	bltu	r4,r18,80ba9c <__umoddi3+0x5b4>
  80b84c:	2080932e 	bgeu	r4,r2,80ba9c <__umoddi3+0x5b4>
  80b850:	e73fff84 	addi	fp,fp,-2
  80b854:	2489883a 	add	r4,r4,r18
  80b858:	20adc83a 	sub	r22,r4,r2
  80b85c:	980b883a 	mov	r5,r19
  80b860:	b009883a 	mov	r4,r22
  80b864:	080bc040 	call	80bc04 <__umodsi3>
  80b868:	980b883a 	mov	r5,r19
  80b86c:	b009883a 	mov	r4,r22
  80b870:	102f883a 	mov	r23,r2
  80b874:	080bba00 	call	80bba0 <__udivsi3>
  80b878:	100b883a 	mov	r5,r2
  80b87c:	8809883a 	mov	r4,r17
  80b880:	d8800215 	stw	r2,8(sp)
  80b884:	08016d80 	call	8016d8 <__mulsi3>
  80b888:	d8c00017 	ldw	r3,0(sp)
  80b88c:	b82e943a 	slli	r23,r23,16
  80b890:	d9400217 	ldw	r5,8(sp)
  80b894:	1c7fffcc 	andi	r17,r3,65535
  80b898:	bc62b03a 	or	r17,r23,r17
  80b89c:	8880062e 	bgeu	r17,r2,80b8b8 <__umoddi3+0x3d0>
  80b8a0:	8ca3883a 	add	r17,r17,r18
  80b8a4:	28ffffc4 	addi	r3,r5,-1
  80b8a8:	8c807a36 	bltu	r17,r18,80ba94 <__umoddi3+0x5ac>
  80b8ac:	8880792e 	bgeu	r17,r2,80ba94 <__umoddi3+0x5ac>
  80b8b0:	297fff84 	addi	r5,r5,-2
  80b8b4:	8ca3883a 	add	r17,r17,r18
  80b8b8:	e02c943a 	slli	r22,fp,16
  80b8bc:	d9c00117 	ldw	r7,4(sp)
  80b8c0:	29bfffcc 	andi	r6,r5,65535
  80b8c4:	b16cb03a 	or	r22,r22,r5
  80b8c8:	38ffffcc 	andi	r3,r7,65535
  80b8cc:	b02cd43a 	srli	r22,r22,16
  80b8d0:	180b883a 	mov	r5,r3
  80b8d4:	3009883a 	mov	r4,r6
  80b8d8:	3838d43a 	srli	fp,r7,16
  80b8dc:	182f883a 	mov	r23,r3
  80b8e0:	d9800015 	stw	r6,0(sp)
  80b8e4:	88a3c83a 	sub	r17,r17,r2
  80b8e8:	08016d80 	call	8016d8 <__mulsi3>
  80b8ec:	b80b883a 	mov	r5,r23
  80b8f0:	b009883a 	mov	r4,r22
  80b8f4:	102f883a 	mov	r23,r2
  80b8f8:	08016d80 	call	8016d8 <__mulsi3>
  80b8fc:	e00b883a 	mov	r5,fp
  80b900:	b009883a 	mov	r4,r22
  80b904:	102d883a 	mov	r22,r2
  80b908:	08016d80 	call	8016d8 <__mulsi3>
  80b90c:	d9800017 	ldw	r6,0(sp)
  80b910:	e00b883a 	mov	r5,fp
  80b914:	1039883a 	mov	fp,r2
  80b918:	3009883a 	mov	r4,r6
  80b91c:	08016d80 	call	8016d8 <__mulsi3>
  80b920:	b808d43a 	srli	r4,r23,16
  80b924:	1585883a 	add	r2,r2,r22
  80b928:	2089883a 	add	r4,r4,r2
  80b92c:	2580022e 	bgeu	r4,r22,80b938 <__umoddi3+0x450>
  80b930:	00800074 	movhi	r2,1
  80b934:	e0b9883a 	add	fp,fp,r2
  80b938:	2006d43a 	srli	r3,r4,16
  80b93c:	2008943a 	slli	r4,r4,16
  80b940:	bdffffcc 	andi	r23,r23,65535
  80b944:	1f07883a 	add	r3,r3,fp
  80b948:	25c9883a 	add	r4,r4,r23
  80b94c:	88c03a36 	bltu	r17,r3,80ba38 <__umoddi3+0x550>
  80b950:	88c03826 	beq	r17,r3,80ba34 <__umoddi3+0x54c>
  80b954:	8109c83a 	sub	r4,r16,r4
  80b958:	8121803a 	cmpltu	r16,r16,r4
  80b95c:	88c7c83a 	sub	r3,r17,r3
  80b960:	1c07c83a 	sub	r3,r3,r16
  80b964:	1d04983a 	sll	r2,r3,r20
  80b968:	2548d83a 	srl	r4,r4,r21
  80b96c:	1d46d83a 	srl	r3,r3,r21
  80b970:	1104b03a 	or	r2,r2,r4
  80b974:	003f2806 	br	80b618 <__umoddi3+0x130>
  80b978:	a4a8983a 	sll	r20,r20,r18
  80b97c:	8da6d83a 	srl	r19,r17,r22
  80b980:	8ca2983a 	sll	r17,r17,r18
  80b984:	a02ed43a 	srli	r23,r20,16
  80b988:	9809883a 	mov	r4,r19
  80b98c:	85acd83a 	srl	r22,r16,r22
  80b990:	b80b883a 	mov	r5,r23
  80b994:	080bc040 	call	80bc04 <__umodsi3>
  80b998:	9809883a 	mov	r4,r19
  80b99c:	b80b883a 	mov	r5,r23
  80b9a0:	b46cb03a 	or	r22,r22,r17
  80b9a4:	a57fffcc 	andi	r21,r20,65535
  80b9a8:	1023883a 	mov	r17,r2
  80b9ac:	080bba00 	call	80bba0 <__udivsi3>
  80b9b0:	a809883a 	mov	r4,r21
  80b9b4:	100b883a 	mov	r5,r2
  80b9b8:	08016d80 	call	8016d8 <__mulsi3>
  80b9bc:	8822943a 	slli	r17,r17,16
  80b9c0:	b008d43a 	srli	r4,r22,16
  80b9c4:	84a6983a 	sll	r19,r16,r18
  80b9c8:	8908b03a 	or	r4,r17,r4
  80b9cc:	2080042e 	bgeu	r4,r2,80b9e0 <__umoddi3+0x4f8>
  80b9d0:	2509883a 	add	r4,r4,r20
  80b9d4:	25000236 	bltu	r4,r20,80b9e0 <__umoddi3+0x4f8>
  80b9d8:	2080012e 	bgeu	r4,r2,80b9e0 <__umoddi3+0x4f8>
  80b9dc:	2509883a 	add	r4,r4,r20
  80b9e0:	20a1c83a 	sub	r16,r4,r2
  80b9e4:	8009883a 	mov	r4,r16
  80b9e8:	b80b883a 	mov	r5,r23
  80b9ec:	080bc040 	call	80bc04 <__umodsi3>
  80b9f0:	8009883a 	mov	r4,r16
  80b9f4:	1021883a 	mov	r16,r2
  80b9f8:	b80b883a 	mov	r5,r23
  80b9fc:	8020943a 	slli	r16,r16,16
  80ba00:	080bba00 	call	80bba0 <__udivsi3>
  80ba04:	100b883a 	mov	r5,r2
  80ba08:	a809883a 	mov	r4,r21
  80ba0c:	b47fffcc 	andi	r17,r22,65535
  80ba10:	08016d80 	call	8016d8 <__mulsi3>
  80ba14:	8462b03a 	or	r17,r16,r17
  80ba18:	8880042e 	bgeu	r17,r2,80ba2c <__umoddi3+0x544>
  80ba1c:	8d23883a 	add	r17,r17,r20
  80ba20:	8d000236 	bltu	r17,r20,80ba2c <__umoddi3+0x544>
  80ba24:	8880012e 	bgeu	r17,r2,80ba2c <__umoddi3+0x544>
  80ba28:	8d23883a 	add	r17,r17,r20
  80ba2c:	88a3c83a 	sub	r17,r17,r2
  80ba30:	003f2f06 	br	80b6f0 <__umoddi3+0x208>
  80ba34:	813fc72e 	bgeu	r16,r4,80b954 <__umoddi3+0x46c>
  80ba38:	d8800117 	ldw	r2,4(sp)
  80ba3c:	20a7c83a 	sub	r19,r4,r2
  80ba40:	24c9803a 	cmpltu	r4,r4,r19
  80ba44:	2489883a 	add	r4,r4,r18
  80ba48:	1907c83a 	sub	r3,r3,r4
  80ba4c:	9809883a 	mov	r4,r19
  80ba50:	003fc006 	br	80b954 <__umoddi3+0x46c>
  80ba54:	3006d43a 	srli	r3,r6,16
  80ba58:	04800404 	movi	r18,16
  80ba5c:	003ebb06 	br	80b54c <__umoddi3+0x64>
  80ba60:	3007883a 	mov	r3,r6
  80ba64:	003eb906 	br	80b54c <__umoddi3+0x64>
  80ba68:	3808d43a 	srli	r4,r7,16
  80ba6c:	02000404 	movi	r8,16
  80ba70:	003efc06 	br	80b664 <__umoddi3+0x17c>
  80ba74:	a006d43a 	srli	r3,r20,16
  80ba78:	04800404 	movi	r18,16
  80ba7c:	003f1206 	br	80b6c8 <__umoddi3+0x1e0>
  80ba80:	a007883a 	mov	r3,r20
  80ba84:	003f1006 	br	80b6c8 <__umoddi3+0x1e0>
  80ba88:	3809883a 	mov	r4,r7
  80ba8c:	0011883a 	mov	r8,zero
  80ba90:	003ef406 	br	80b664 <__umoddi3+0x17c>
  80ba94:	180b883a 	mov	r5,r3
  80ba98:	003f8706 	br	80b8b8 <__umoddi3+0x3d0>
  80ba9c:	2839883a 	mov	fp,r5
  80baa0:	003f6d06 	br	80b858 <__umoddi3+0x370>
  80baa4:	2509883a 	add	r4,r4,r20
  80baa8:	003f2206 	br	80b734 <__umoddi3+0x24c>

0080baac <__divsi3>:
  80baac:	20001a16 	blt	r4,zero,80bb18 <__divsi3+0x6c>
  80bab0:	000f883a 	mov	r7,zero
  80bab4:	2800020e 	bge	r5,zero,80bac0 <__divsi3+0x14>
  80bab8:	014bc83a 	sub	r5,zero,r5
  80babc:	39c0005c 	xori	r7,r7,1
  80bac0:	200d883a 	mov	r6,r4
  80bac4:	00c00044 	movi	r3,1
  80bac8:	2900092e 	bgeu	r5,r4,80baf0 <__divsi3+0x44>
  80bacc:	00800804 	movi	r2,32
  80bad0:	00c00044 	movi	r3,1
  80bad4:	00000106 	br	80badc <__divsi3+0x30>
  80bad8:	10001226 	beq	r2,zero,80bb24 <__divsi3+0x78>
  80badc:	294b883a 	add	r5,r5,r5
  80bae0:	10bfffc4 	addi	r2,r2,-1
  80bae4:	18c7883a 	add	r3,r3,r3
  80bae8:	293ffb36 	bltu	r5,r4,80bad8 <__divsi3+0x2c>
  80baec:	18000d26 	beq	r3,zero,80bb24 <__divsi3+0x78>
  80baf0:	0005883a 	mov	r2,zero
  80baf4:	31400236 	bltu	r6,r5,80bb00 <__divsi3+0x54>
  80baf8:	314dc83a 	sub	r6,r6,r5
  80bafc:	10c4b03a 	or	r2,r2,r3
  80bb00:	1806d07a 	srli	r3,r3,1
  80bb04:	280ad07a 	srli	r5,r5,1
  80bb08:	183ffa1e 	bne	r3,zero,80baf4 <__divsi3+0x48>
  80bb0c:	38000126 	beq	r7,zero,80bb14 <__divsi3+0x68>
  80bb10:	0085c83a 	sub	r2,zero,r2
  80bb14:	f800283a 	ret
  80bb18:	0109c83a 	sub	r4,zero,r4
  80bb1c:	01c00044 	movi	r7,1
  80bb20:	003fe406 	br	80bab4 <__divsi3+0x8>
  80bb24:	0005883a 	mov	r2,zero
  80bb28:	003ff806 	br	80bb0c <__divsi3+0x60>

0080bb2c <__modsi3>:
  80bb2c:	20001916 	blt	r4,zero,80bb94 <__modsi3+0x68>
  80bb30:	000f883a 	mov	r7,zero
  80bb34:	2005883a 	mov	r2,r4
  80bb38:	2800010e 	bge	r5,zero,80bb40 <__modsi3+0x14>
  80bb3c:	014bc83a 	sub	r5,zero,r5
  80bb40:	00c00044 	movi	r3,1
  80bb44:	2900092e 	bgeu	r5,r4,80bb6c <__modsi3+0x40>
  80bb48:	01800804 	movi	r6,32
  80bb4c:	00c00044 	movi	r3,1
  80bb50:	00000106 	br	80bb58 <__modsi3+0x2c>
  80bb54:	30000d26 	beq	r6,zero,80bb8c <__modsi3+0x60>
  80bb58:	294b883a 	add	r5,r5,r5
  80bb5c:	31bfffc4 	addi	r6,r6,-1
  80bb60:	18c7883a 	add	r3,r3,r3
  80bb64:	293ffb36 	bltu	r5,r4,80bb54 <__modsi3+0x28>
  80bb68:	18000826 	beq	r3,zero,80bb8c <__modsi3+0x60>
  80bb6c:	1806d07a 	srli	r3,r3,1
  80bb70:	11400136 	bltu	r2,r5,80bb78 <__modsi3+0x4c>
  80bb74:	1145c83a 	sub	r2,r2,r5
  80bb78:	280ad07a 	srli	r5,r5,1
  80bb7c:	183ffb1e 	bne	r3,zero,80bb6c <__modsi3+0x40>
  80bb80:	38000126 	beq	r7,zero,80bb88 <__modsi3+0x5c>
  80bb84:	0085c83a 	sub	r2,zero,r2
  80bb88:	f800283a 	ret
  80bb8c:	2005883a 	mov	r2,r4
  80bb90:	003ffb06 	br	80bb80 <__modsi3+0x54>
  80bb94:	0109c83a 	sub	r4,zero,r4
  80bb98:	01c00044 	movi	r7,1
  80bb9c:	003fe506 	br	80bb34 <__modsi3+0x8>

0080bba0 <__udivsi3>:
  80bba0:	200d883a 	mov	r6,r4
  80bba4:	2900152e 	bgeu	r5,r4,80bbfc <__udivsi3+0x5c>
  80bba8:	28001416 	blt	r5,zero,80bbfc <__udivsi3+0x5c>
  80bbac:	00800804 	movi	r2,32
  80bbb0:	00c00044 	movi	r3,1
  80bbb4:	00000206 	br	80bbc0 <__udivsi3+0x20>
  80bbb8:	10000e26 	beq	r2,zero,80bbf4 <__udivsi3+0x54>
  80bbbc:	28000516 	blt	r5,zero,80bbd4 <__udivsi3+0x34>
  80bbc0:	294b883a 	add	r5,r5,r5
  80bbc4:	10bfffc4 	addi	r2,r2,-1
  80bbc8:	18c7883a 	add	r3,r3,r3
  80bbcc:	293ffa36 	bltu	r5,r4,80bbb8 <__udivsi3+0x18>
  80bbd0:	18000826 	beq	r3,zero,80bbf4 <__udivsi3+0x54>
  80bbd4:	0005883a 	mov	r2,zero
  80bbd8:	31400236 	bltu	r6,r5,80bbe4 <__udivsi3+0x44>
  80bbdc:	314dc83a 	sub	r6,r6,r5
  80bbe0:	10c4b03a 	or	r2,r2,r3
  80bbe4:	1806d07a 	srli	r3,r3,1
  80bbe8:	280ad07a 	srli	r5,r5,1
  80bbec:	183ffa1e 	bne	r3,zero,80bbd8 <__udivsi3+0x38>
  80bbf0:	f800283a 	ret
  80bbf4:	0005883a 	mov	r2,zero
  80bbf8:	f800283a 	ret
  80bbfc:	00c00044 	movi	r3,1
  80bc00:	003ff406 	br	80bbd4 <__udivsi3+0x34>

0080bc04 <__umodsi3>:
  80bc04:	2005883a 	mov	r2,r4
  80bc08:	2900132e 	bgeu	r5,r4,80bc58 <__umodsi3+0x54>
  80bc0c:	28001216 	blt	r5,zero,80bc58 <__umodsi3+0x54>
  80bc10:	01800804 	movi	r6,32
  80bc14:	00c00044 	movi	r3,1
  80bc18:	00000206 	br	80bc24 <__umodsi3+0x20>
  80bc1c:	30000c26 	beq	r6,zero,80bc50 <__umodsi3+0x4c>
  80bc20:	28000516 	blt	r5,zero,80bc38 <__umodsi3+0x34>
  80bc24:	294b883a 	add	r5,r5,r5
  80bc28:	31bfffc4 	addi	r6,r6,-1
  80bc2c:	18c7883a 	add	r3,r3,r3
  80bc30:	293ffa36 	bltu	r5,r4,80bc1c <__umodsi3+0x18>
  80bc34:	18000626 	beq	r3,zero,80bc50 <__umodsi3+0x4c>
  80bc38:	1806d07a 	srli	r3,r3,1
  80bc3c:	11400136 	bltu	r2,r5,80bc44 <__umodsi3+0x40>
  80bc40:	1145c83a 	sub	r2,r2,r5
  80bc44:	280ad07a 	srli	r5,r5,1
  80bc48:	183ffb1e 	bne	r3,zero,80bc38 <__umodsi3+0x34>
  80bc4c:	f800283a 	ret
  80bc50:	2005883a 	mov	r2,r4
  80bc54:	f800283a 	ret
  80bc58:	00c00044 	movi	r3,1
  80bc5c:	003ff606 	br	80bc38 <__umodsi3+0x34>

0080bc60 <__adddf3>:
  80bc60:	02000434 	movhi	r8,16
  80bc64:	423fffc4 	addi	r8,r8,-1
  80bc68:	3a12703a 	and	r9,r7,r8
  80bc6c:	2a06703a 	and	r3,r5,r8
  80bc70:	2818d53a 	srli	r12,r5,20
  80bc74:	3804d53a 	srli	r2,r7,20
  80bc78:	481490fa 	slli	r10,r9,3
  80bc7c:	280ad7fa 	srli	r5,r5,31
  80bc80:	180690fa 	slli	r3,r3,3
  80bc84:	2016d77a 	srli	r11,r4,29
  80bc88:	3012d77a 	srli	r9,r6,29
  80bc8c:	380ed7fa 	srli	r7,r7,31
  80bc90:	defffb04 	addi	sp,sp,-20
  80bc94:	dc400115 	stw	r17,4(sp)
  80bc98:	dc000015 	stw	r16,0(sp)
  80bc9c:	dfc00415 	stw	ra,16(sp)
  80bca0:	dcc00315 	stw	r19,12(sp)
  80bca4:	dc800215 	stw	r18,8(sp)
  80bca8:	201c90fa 	slli	r14,r4,3
  80bcac:	301a90fa 	slli	r13,r6,3
  80bcb0:	6441ffcc 	andi	r17,r12,2047
  80bcb4:	2821883a 	mov	r16,r5
  80bcb8:	58c6b03a 	or	r3,r11,r3
  80bcbc:	1081ffcc 	andi	r2,r2,2047
  80bcc0:	4a92b03a 	or	r9,r9,r10
  80bcc4:	29c06326 	beq	r5,r7,80be54 <__adddf3+0x1f4>
  80bcc8:	888bc83a 	sub	r5,r17,r2
  80bccc:	0140560e 	bge	zero,r5,80be28 <__adddf3+0x1c8>
  80bcd0:	10007526 	beq	r2,zero,80bea8 <__adddf3+0x248>
  80bcd4:	8881ffd8 	cmpnei	r2,r17,2047
  80bcd8:	10012d26 	beq	r2,zero,80c190 <__adddf3+0x530>
  80bcdc:	4a402034 	orhi	r9,r9,128
  80bce0:	28800e48 	cmpgei	r2,r5,57
  80bce4:	1000f41e 	bne	r2,zero,80c0b8 <__adddf3+0x458>
  80bce8:	28800808 	cmpgei	r2,r5,32
  80bcec:	1001471e 	bne	r2,zero,80c20c <__adddf3+0x5ac>
  80bcf0:	00800804 	movi	r2,32
  80bcf4:	1145c83a 	sub	r2,r2,r5
  80bcf8:	6948d83a 	srl	r4,r13,r5
  80bcfc:	48a4983a 	sll	r18,r9,r2
  80bd00:	6884983a 	sll	r2,r13,r2
  80bd04:	494ad83a 	srl	r5,r9,r5
  80bd08:	9124b03a 	or	r18,r18,r4
  80bd0c:	101ac03a 	cmpne	r13,r2,zero
  80bd10:	9364b03a 	or	r18,r18,r13
  80bd14:	1947c83a 	sub	r3,r3,r5
  80bd18:	74a5c83a 	sub	r18,r14,r18
  80bd1c:	7489803a 	cmpltu	r4,r14,r18
  80bd20:	1909c83a 	sub	r4,r3,r4
  80bd24:	2080202c 	andhi	r2,r4,128
  80bd28:	10008626 	beq	r2,zero,80bf44 <__adddf3+0x2e4>
  80bd2c:	00802034 	movhi	r2,128
  80bd30:	10bfffc4 	addi	r2,r2,-1
  80bd34:	20a6703a 	and	r19,r4,r2
  80bd38:	9800d626 	beq	r19,zero,80c094 <__adddf3+0x434>
  80bd3c:	9809883a 	mov	r4,r19
  80bd40:	08016840 	call	801684 <__clzsi2>
  80bd44:	133ffe04 	addi	r12,r2,-8
  80bd48:	01000804 	movi	r4,32
  80bd4c:	2309c83a 	sub	r4,r4,r12
  80bd50:	9108d83a 	srl	r4,r18,r4
  80bd54:	9b04983a 	sll	r2,r19,r12
  80bd58:	9324983a 	sll	r18,r18,r12
  80bd5c:	2088b03a 	or	r4,r4,r2
  80bd60:	6440c716 	blt	r12,r17,80c080 <__adddf3+0x420>
  80bd64:	6459c83a 	sub	r12,r12,r17
  80bd68:	62000044 	addi	r8,r12,1
  80bd6c:	40800808 	cmpgei	r2,r8,32
  80bd70:	1001191e 	bne	r2,zero,80c1d8 <__adddf3+0x578>
  80bd74:	00800804 	movi	r2,32
  80bd78:	1205c83a 	sub	r2,r2,r8
  80bd7c:	9206d83a 	srl	r3,r18,r8
  80bd80:	90a4983a 	sll	r18,r18,r2
  80bd84:	2084983a 	sll	r2,r4,r2
  80bd88:	2208d83a 	srl	r4,r4,r8
  80bd8c:	9024c03a 	cmpne	r18,r18,zero
  80bd90:	10c4b03a 	or	r2,r2,r3
  80bd94:	14a4b03a 	or	r18,r2,r18
  80bd98:	0023883a 	mov	r17,zero
  80bd9c:	908001cc 	andi	r2,r18,7
  80bda0:	10000726 	beq	r2,zero,80bdc0 <__adddf3+0x160>
  80bda4:	908003cc 	andi	r2,r18,15
  80bda8:	10800120 	cmpeqi	r2,r2,4
  80bdac:	1000041e 	bne	r2,zero,80bdc0 <__adddf3+0x160>
  80bdb0:	90c00104 	addi	r3,r18,4
  80bdb4:	1ca5803a 	cmpltu	r18,r3,r18
  80bdb8:	2489883a 	add	r4,r4,r18
  80bdbc:	1825883a 	mov	r18,r3
  80bdc0:	2080202c 	andhi	r2,r4,128
  80bdc4:	10006126 	beq	r2,zero,80bf4c <__adddf3+0x2ec>
  80bdc8:	89400044 	addi	r5,r17,1
  80bdcc:	2881ffe0 	cmpeqi	r2,r5,2047
  80bdd0:	2941ffcc 	andi	r5,r5,2047
  80bdd4:	1000731e 	bne	r2,zero,80bfa4 <__adddf3+0x344>
  80bdd8:	023fe034 	movhi	r8,65408
  80bddc:	423fffc4 	addi	r8,r8,-1
  80bde0:	2210703a 	and	r8,r4,r8
  80bde4:	4006927a 	slli	r3,r8,9
  80bde8:	9024d0fa 	srli	r18,r18,3
  80bdec:	4004977a 	slli	r2,r8,29
  80bdf0:	1806d33a 	srli	r3,r3,12
  80bdf4:	1484b03a 	or	r2,r2,r18
  80bdf8:	280a953a 	slli	r5,r5,20
  80bdfc:	84003fcc 	andi	r16,r16,255
  80be00:	802097fa 	slli	r16,r16,31
  80be04:	28c6b03a 	or	r3,r5,r3
  80be08:	1c06b03a 	or	r3,r3,r16
  80be0c:	dfc00417 	ldw	ra,16(sp)
  80be10:	dcc00317 	ldw	r19,12(sp)
  80be14:	dc800217 	ldw	r18,8(sp)
  80be18:	dc400117 	ldw	r17,4(sp)
  80be1c:	dc000017 	ldw	r16,0(sp)
  80be20:	dec00504 	addi	sp,sp,20
  80be24:	f800283a 	ret
  80be28:	28002726 	beq	r5,zero,80bec8 <__adddf3+0x268>
  80be2c:	144bc83a 	sub	r5,r2,r17
  80be30:	8800be1e 	bne	r17,zero,80c12c <__adddf3+0x4cc>
  80be34:	1b88b03a 	or	r4,r3,r14
  80be38:	20013126 	beq	r4,zero,80c300 <__adddf3+0x6a0>
  80be3c:	293fffc4 	addi	r4,r5,-1
  80be40:	20017226 	beq	r4,zero,80c40c <__adddf3+0x7ac>
  80be44:	2941ffd8 	cmpnei	r5,r5,2047
  80be48:	2801c226 	beq	r5,zero,80c554 <__adddf3+0x8f4>
  80be4c:	200b883a 	mov	r5,r4
  80be50:	0000b906 	br	80c138 <__adddf3+0x4d8>
  80be54:	888bc83a 	sub	r5,r17,r2
  80be58:	0140700e 	bge	zero,r5,80c01c <__adddf3+0x3bc>
  80be5c:	10002a26 	beq	r2,zero,80bf08 <__adddf3+0x2a8>
  80be60:	8881ffd8 	cmpnei	r2,r17,2047
  80be64:	1000ca26 	beq	r2,zero,80c190 <__adddf3+0x530>
  80be68:	4a402034 	orhi	r9,r9,128
  80be6c:	28800e48 	cmpgei	r2,r5,57
  80be70:	1000421e 	bne	r2,zero,80bf7c <__adddf3+0x31c>
  80be74:	28800808 	cmpgei	r2,r5,32
  80be78:	1000ff26 	beq	r2,zero,80c278 <__adddf3+0x618>
  80be7c:	2cbff804 	addi	r18,r5,-32
  80be80:	29000820 	cmpeqi	r4,r5,32
  80be84:	4c84d83a 	srl	r2,r9,r18
  80be88:	2000041e 	bne	r4,zero,80be9c <__adddf3+0x23c>
  80be8c:	01001004 	movi	r4,64
  80be90:	214bc83a 	sub	r5,r4,r5
  80be94:	4952983a 	sll	r9,r9,r5
  80be98:	6a5ab03a 	or	r13,r13,r9
  80be9c:	6824c03a 	cmpne	r18,r13,zero
  80bea0:	90a4b03a 	or	r18,r18,r2
  80bea4:	00003706 	br	80bf84 <__adddf3+0x324>
  80bea8:	4b44b03a 	or	r2,r9,r13
  80beac:	1000b126 	beq	r2,zero,80c174 <__adddf3+0x514>
  80beb0:	28bfffc4 	addi	r2,r5,-1
  80beb4:	10011a26 	beq	r2,zero,80c320 <__adddf3+0x6c0>
  80beb8:	2941ffd8 	cmpnei	r5,r5,2047
  80bebc:	28012526 	beq	r5,zero,80c354 <__adddf3+0x6f4>
  80bec0:	100b883a 	mov	r5,r2
  80bec4:	003f8606 	br	80bce0 <__adddf3+0x80>
  80bec8:	8a800044 	addi	r10,r17,1
  80becc:	5281ff8c 	andi	r10,r10,2046
  80bed0:	50008b1e 	bne	r10,zero,80c100 <__adddf3+0x4a0>
  80bed4:	1b96b03a 	or	r11,r3,r14
  80bed8:	4b44b03a 	or	r2,r9,r13
  80bedc:	8801031e 	bne	r17,zero,80c2ec <__adddf3+0x68c>
  80bee0:	58014126 	beq	r11,zero,80c3e8 <__adddf3+0x788>
  80bee4:	1001571e 	bne	r2,zero,80c444 <__adddf3+0x7e4>
  80bee8:	1804977a 	slli	r2,r3,29
  80beec:	01480034 	movhi	r5,8192
  80bef0:	297fffc4 	addi	r5,r5,-1
  80bef4:	2148703a 	and	r4,r4,r5
  80bef8:	1810d0fa 	srli	r8,r3,3
  80befc:	1104b03a 	or	r2,r2,r4
  80bf00:	500b883a 	mov	r5,r10
  80bf04:	00001806 	br	80bf68 <__adddf3+0x308>
  80bf08:	4b44b03a 	or	r2,r9,r13
  80bf0c:	10010a26 	beq	r2,zero,80c338 <__adddf3+0x6d8>
  80bf10:	28bfffc4 	addi	r2,r5,-1
  80bf14:	10000426 	beq	r2,zero,80bf28 <__adddf3+0x2c8>
  80bf18:	2941ffd8 	cmpnei	r5,r5,2047
  80bf1c:	28014226 	beq	r5,zero,80c428 <__adddf3+0x7c8>
  80bf20:	100b883a 	mov	r5,r2
  80bf24:	003fd106 	br	80be6c <__adddf3+0x20c>
  80bf28:	7365883a 	add	r18,r14,r13
  80bf2c:	1a47883a 	add	r3,r3,r9
  80bf30:	9389803a 	cmpltu	r4,r18,r14
  80bf34:	1909883a 	add	r4,r3,r4
  80bf38:	2080202c 	andhi	r2,r4,128
  80bf3c:	10009b1e 	bne	r2,zero,80c1ac <__adddf3+0x54c>
  80bf40:	04400044 	movi	r17,1
  80bf44:	908001cc 	andi	r2,r18,7
  80bf48:	103f961e 	bne	r2,zero,80bda4 <__adddf3+0x144>
  80bf4c:	9024d0fa 	srli	r18,r18,3
  80bf50:	2004977a 	slli	r2,r4,29
  80bf54:	2010d0fa 	srli	r8,r4,3
  80bf58:	880b883a 	mov	r5,r17
  80bf5c:	9084b03a 	or	r2,r18,r2
  80bf60:	28c1ffe0 	cmpeqi	r3,r5,2047
  80bf64:	1800251e 	bne	r3,zero,80bffc <__adddf3+0x39c>
  80bf68:	00c00434 	movhi	r3,16
  80bf6c:	18ffffc4 	addi	r3,r3,-1
  80bf70:	40c6703a 	and	r3,r8,r3
  80bf74:	2941ffcc 	andi	r5,r5,2047
  80bf78:	003f9f06 	br	80bdf8 <__adddf3+0x198>
  80bf7c:	4b64b03a 	or	r18,r9,r13
  80bf80:	9024c03a 	cmpne	r18,r18,zero
  80bf84:	93a5883a 	add	r18,r18,r14
  80bf88:	9389803a 	cmpltu	r4,r18,r14
  80bf8c:	20c9883a 	add	r4,r4,r3
  80bf90:	2080202c 	andhi	r2,r4,128
  80bf94:	103feb26 	beq	r2,zero,80bf44 <__adddf3+0x2e4>
  80bf98:	8c400044 	addi	r17,r17,1
  80bf9c:	8881ffe0 	cmpeqi	r2,r17,2047
  80bfa0:	10008326 	beq	r2,zero,80c1b0 <__adddf3+0x550>
  80bfa4:	0141ffc4 	movi	r5,2047
  80bfa8:	0007883a 	mov	r3,zero
  80bfac:	0005883a 	mov	r2,zero
  80bfb0:	003f9106 	br	80bdf8 <__adddf3+0x198>
  80bfb4:	4b44b03a 	or	r2,r9,r13
  80bfb8:	180a977a 	slli	r5,r3,29
  80bfbc:	1810d0fa 	srli	r8,r3,3
  80bfc0:	10016c26 	beq	r2,zero,80c574 <__adddf3+0x914>
  80bfc4:	00c80034 	movhi	r3,8192
  80bfc8:	18ffffc4 	addi	r3,r3,-1
  80bfcc:	20c4703a 	and	r2,r4,r3
  80bfd0:	4100022c 	andhi	r4,r8,8
  80bfd4:	1144b03a 	or	r2,r2,r5
  80bfd8:	20000826 	beq	r4,zero,80bffc <__adddf3+0x39c>
  80bfdc:	4808d0fa 	srli	r4,r9,3
  80bfe0:	2140022c 	andhi	r5,r4,8
  80bfe4:	2800051e 	bne	r5,zero,80bffc <__adddf3+0x39c>
  80bfe8:	4804977a 	slli	r2,r9,29
  80bfec:	30cc703a 	and	r6,r6,r3
  80bff0:	3821883a 	mov	r16,r7
  80bff4:	3084b03a 	or	r2,r6,r2
  80bff8:	2011883a 	mov	r8,r4
  80bffc:	4086b03a 	or	r3,r8,r2
  80c000:	18017126 	beq	r3,zero,80c5c8 <__adddf3+0x968>
  80c004:	01000434 	movhi	r4,16
  80c008:	40c00234 	orhi	r3,r8,8
  80c00c:	213fffc4 	addi	r4,r4,-1
  80c010:	1906703a 	and	r3,r3,r4
  80c014:	0141ffc4 	movi	r5,2047
  80c018:	003f7706 	br	80bdf8 <__adddf3+0x198>
  80c01c:	28002926 	beq	r5,zero,80c0c4 <__adddf3+0x464>
  80c020:	144bc83a 	sub	r5,r2,r17
  80c024:	88008c26 	beq	r17,zero,80c258 <__adddf3+0x5f8>
  80c028:	1101ffd8 	cmpnei	r4,r2,2047
  80c02c:	20011126 	beq	r4,zero,80c474 <__adddf3+0x814>
  80c030:	18c02034 	orhi	r3,r3,128
  80c034:	29000e48 	cmpgei	r4,r5,57
  80c038:	2000d51e 	bne	r4,zero,80c390 <__adddf3+0x730>
  80c03c:	29000808 	cmpgei	r4,r5,32
  80c040:	2001511e 	bne	r4,zero,80c588 <__adddf3+0x928>
  80c044:	01000804 	movi	r4,32
  80c048:	2149c83a 	sub	r4,r4,r5
  80c04c:	1924983a 	sll	r18,r3,r4
  80c050:	714cd83a 	srl	r6,r14,r5
  80c054:	7108983a 	sll	r4,r14,r4
  80c058:	194ad83a 	srl	r5,r3,r5
  80c05c:	91a4b03a 	or	r18,r18,r6
  80c060:	2006c03a 	cmpne	r3,r4,zero
  80c064:	90e4b03a 	or	r18,r18,r3
  80c068:	4953883a 	add	r9,r9,r5
  80c06c:	9365883a 	add	r18,r18,r13
  80c070:	9349803a 	cmpltu	r4,r18,r13
  80c074:	2249883a 	add	r4,r4,r9
  80c078:	1023883a 	mov	r17,r2
  80c07c:	003fc406 	br	80bf90 <__adddf3+0x330>
  80c080:	023fe034 	movhi	r8,65408
  80c084:	423fffc4 	addi	r8,r8,-1
  80c088:	8b23c83a 	sub	r17,r17,r12
  80c08c:	2208703a 	and	r4,r4,r8
  80c090:	003f4206 	br	80bd9c <__adddf3+0x13c>
  80c094:	9009883a 	mov	r4,r18
  80c098:	08016840 	call	801684 <__clzsi2>
  80c09c:	13000604 	addi	r12,r2,24
  80c0a0:	60c00808 	cmpgei	r3,r12,32
  80c0a4:	183f2826 	beq	r3,zero,80bd48 <__adddf3+0xe8>
  80c0a8:	113ffe04 	addi	r4,r2,-8
  80c0ac:	9108983a 	sll	r4,r18,r4
  80c0b0:	0025883a 	mov	r18,zero
  80c0b4:	003f2a06 	br	80bd60 <__adddf3+0x100>
  80c0b8:	4b64b03a 	or	r18,r9,r13
  80c0bc:	9024c03a 	cmpne	r18,r18,zero
  80c0c0:	003f1506 	br	80bd18 <__adddf3+0xb8>
  80c0c4:	8a000044 	addi	r8,r17,1
  80c0c8:	4081ff8c 	andi	r2,r8,2046
  80c0cc:	1000751e 	bne	r2,zero,80c2a4 <__adddf3+0x644>
  80c0d0:	1b84b03a 	or	r2,r3,r14
  80c0d4:	8800bc1e 	bne	r17,zero,80c3c8 <__adddf3+0x768>
  80c0d8:	10010c26 	beq	r2,zero,80c50c <__adddf3+0x8ac>
  80c0dc:	4b44b03a 	or	r2,r9,r13
  80c0e0:	1001111e 	bne	r2,zero,80c528 <__adddf3+0x8c8>
  80c0e4:	180c977a 	slli	r6,r3,29
  80c0e8:	00880034 	movhi	r2,8192
  80c0ec:	10bfffc4 	addi	r2,r2,-1
  80c0f0:	2084703a 	and	r2,r4,r2
  80c0f4:	1810d0fa 	srli	r8,r3,3
  80c0f8:	1184b03a 	or	r2,r2,r6
  80c0fc:	003f9a06 	br	80bf68 <__adddf3+0x308>
  80c100:	7365c83a 	sub	r18,r14,r13
  80c104:	1a67c83a 	sub	r19,r3,r9
  80c108:	7489803a 	cmpltu	r4,r14,r18
  80c10c:	9927c83a 	sub	r19,r19,r4
  80c110:	9880202c 	andhi	r2,r19,128
  80c114:	10006f1e 	bne	r2,zero,80c2d4 <__adddf3+0x674>
  80c118:	94c4b03a 	or	r2,r18,r19
  80c11c:	103f061e 	bne	r2,zero,80bd38 <__adddf3+0xd8>
  80c120:	0011883a 	mov	r8,zero
  80c124:	0021883a 	mov	r16,zero
  80c128:	003f8f06 	br	80bf68 <__adddf3+0x308>
  80c12c:	1101ffd8 	cmpnei	r4,r2,2047
  80c130:	20008f26 	beq	r4,zero,80c370 <__adddf3+0x710>
  80c134:	18c02034 	orhi	r3,r3,128
  80c138:	29000e48 	cmpgei	r4,r5,57
  80c13c:	20003e1e 	bne	r4,zero,80c238 <__adddf3+0x5d8>
  80c140:	29000808 	cmpgei	r4,r5,32
  80c144:	2000951e 	bne	r4,zero,80c39c <__adddf3+0x73c>
  80c148:	01000804 	movi	r4,32
  80c14c:	2149c83a 	sub	r4,r4,r5
  80c150:	1924983a 	sll	r18,r3,r4
  80c154:	714cd83a 	srl	r6,r14,r5
  80c158:	711c983a 	sll	r14,r14,r4
  80c15c:	1946d83a 	srl	r3,r3,r5
  80c160:	91a4b03a 	or	r18,r18,r6
  80c164:	701cc03a 	cmpne	r14,r14,zero
  80c168:	93a4b03a 	or	r18,r18,r14
  80c16c:	48d3c83a 	sub	r9,r9,r3
  80c170:	00003306 	br	80c240 <__adddf3+0x5e0>
  80c174:	1824977a 	slli	r18,r3,29
  80c178:	01880034 	movhi	r6,8192
  80c17c:	31bfffc4 	addi	r6,r6,-1
  80c180:	2184703a 	and	r2,r4,r6
  80c184:	1810d0fa 	srli	r8,r3,3
  80c188:	1484b03a 	or	r2,r2,r18
  80c18c:	003f7406 	br	80bf60 <__adddf3+0x300>
  80c190:	1804977a 	slli	r2,r3,29
  80c194:	01480034 	movhi	r5,8192
  80c198:	297fffc4 	addi	r5,r5,-1
  80c19c:	2148703a 	and	r4,r4,r5
  80c1a0:	1810d0fa 	srli	r8,r3,3
  80c1a4:	1104b03a 	or	r2,r2,r4
  80c1a8:	003f9406 	br	80bffc <__adddf3+0x39c>
  80c1ac:	04400084 	movi	r17,2
  80c1b0:	00bfe034 	movhi	r2,65408
  80c1b4:	10bfffc4 	addi	r2,r2,-1
  80c1b8:	9006d07a 	srli	r3,r18,1
  80c1bc:	2088703a 	and	r4,r4,r2
  80c1c0:	200497fa 	slli	r2,r4,31
  80c1c4:	9480004c 	andi	r18,r18,1
  80c1c8:	1ca4b03a 	or	r18,r3,r18
  80c1cc:	2008d07a 	srli	r4,r4,1
  80c1d0:	14a4b03a 	or	r18,r2,r18
  80c1d4:	003ef106 	br	80bd9c <__adddf3+0x13c>
  80c1d8:	633ff844 	addi	r12,r12,-31
  80c1dc:	40800820 	cmpeqi	r2,r8,32
  80c1e0:	2318d83a 	srl	r12,r4,r12
  80c1e4:	1000041e 	bne	r2,zero,80c1f8 <__adddf3+0x598>
  80c1e8:	00801004 	movi	r2,64
  80c1ec:	1211c83a 	sub	r8,r2,r8
  80c1f0:	2208983a 	sll	r4,r4,r8
  80c1f4:	9124b03a 	or	r18,r18,r4
  80c1f8:	9024c03a 	cmpne	r18,r18,zero
  80c1fc:	9324b03a 	or	r18,r18,r12
  80c200:	0009883a 	mov	r4,zero
  80c204:	0023883a 	mov	r17,zero
  80c208:	003f4e06 	br	80bf44 <__adddf3+0x2e4>
  80c20c:	2cbff804 	addi	r18,r5,-32
  80c210:	29000820 	cmpeqi	r4,r5,32
  80c214:	4c84d83a 	srl	r2,r9,r18
  80c218:	2000041e 	bne	r4,zero,80c22c <__adddf3+0x5cc>
  80c21c:	01001004 	movi	r4,64
  80c220:	214bc83a 	sub	r5,r4,r5
  80c224:	4952983a 	sll	r9,r9,r5
  80c228:	6a5ab03a 	or	r13,r13,r9
  80c22c:	6824c03a 	cmpne	r18,r13,zero
  80c230:	90a4b03a 	or	r18,r18,r2
  80c234:	003eb806 	br	80bd18 <__adddf3+0xb8>
  80c238:	1b88b03a 	or	r4,r3,r14
  80c23c:	2024c03a 	cmpne	r18,r4,zero
  80c240:	6ca5c83a 	sub	r18,r13,r18
  80c244:	6c89803a 	cmpltu	r4,r13,r18
  80c248:	4909c83a 	sub	r4,r9,r4
  80c24c:	3821883a 	mov	r16,r7
  80c250:	1023883a 	mov	r17,r2
  80c254:	003eb306 	br	80bd24 <__adddf3+0xc4>
  80c258:	1b88b03a 	or	r4,r3,r14
  80c25c:	20008c26 	beq	r4,zero,80c490 <__adddf3+0x830>
  80c260:	293fffc4 	addi	r4,r5,-1
  80c264:	2000d326 	beq	r4,zero,80c5b4 <__adddf3+0x954>
  80c268:	2941ffd8 	cmpnei	r5,r5,2047
  80c26c:	28008126 	beq	r5,zero,80c474 <__adddf3+0x814>
  80c270:	200b883a 	mov	r5,r4
  80c274:	003f6f06 	br	80c034 <__adddf3+0x3d4>
  80c278:	00800804 	movi	r2,32
  80c27c:	1145c83a 	sub	r2,r2,r5
  80c280:	6948d83a 	srl	r4,r13,r5
  80c284:	48a4983a 	sll	r18,r9,r2
  80c288:	6884983a 	sll	r2,r13,r2
  80c28c:	494ad83a 	srl	r5,r9,r5
  80c290:	9124b03a 	or	r18,r18,r4
  80c294:	101ac03a 	cmpne	r13,r2,zero
  80c298:	9364b03a 	or	r18,r18,r13
  80c29c:	1947883a 	add	r3,r3,r5
  80c2a0:	003f3806 	br	80bf84 <__adddf3+0x324>
  80c2a4:	4081ffe0 	cmpeqi	r2,r8,2047
  80c2a8:	103f3e1e 	bne	r2,zero,80bfa4 <__adddf3+0x344>
  80c2ac:	7345883a 	add	r2,r14,r13
  80c2b0:	139d803a 	cmpltu	r14,r2,r14
  80c2b4:	1a49883a 	add	r4,r3,r9
  80c2b8:	2389883a 	add	r4,r4,r14
  80c2bc:	202497fa 	slli	r18,r4,31
  80c2c0:	1004d07a 	srli	r2,r2,1
  80c2c4:	2008d07a 	srli	r4,r4,1
  80c2c8:	4023883a 	mov	r17,r8
  80c2cc:	90a4b03a 	or	r18,r18,r2
  80c2d0:	003f1c06 	br	80bf44 <__adddf3+0x2e4>
  80c2d4:	6ba5c83a 	sub	r18,r13,r14
  80c2d8:	48c9c83a 	sub	r4,r9,r3
  80c2dc:	6c85803a 	cmpltu	r2,r13,r18
  80c2e0:	20a7c83a 	sub	r19,r4,r2
  80c2e4:	3821883a 	mov	r16,r7
  80c2e8:	003e9306 	br	80bd38 <__adddf3+0xd8>
  80c2ec:	58006f1e 	bne	r11,zero,80c4ac <__adddf3+0x84c>
  80c2f0:	10001f1e 	bne	r2,zero,80c370 <__adddf3+0x710>
  80c2f4:	00bfffc4 	movi	r2,-1
  80c2f8:	0021883a 	mov	r16,zero
  80c2fc:	003f4106 	br	80c004 <__adddf3+0x3a4>
  80c300:	4808977a 	slli	r4,r9,29
  80c304:	00c80034 	movhi	r3,8192
  80c308:	18ffffc4 	addi	r3,r3,-1
  80c30c:	30c4703a 	and	r2,r6,r3
  80c310:	4810d0fa 	srli	r8,r9,3
  80c314:	1104b03a 	or	r2,r2,r4
  80c318:	3821883a 	mov	r16,r7
  80c31c:	003f1006 	br	80bf60 <__adddf3+0x300>
  80c320:	7365c83a 	sub	r18,r14,r13
  80c324:	1a47c83a 	sub	r3,r3,r9
  80c328:	7489803a 	cmpltu	r4,r14,r18
  80c32c:	1909c83a 	sub	r4,r3,r4
  80c330:	04400044 	movi	r17,1
  80c334:	003e7b06 	br	80bd24 <__adddf3+0xc4>
  80c338:	1824977a 	slli	r18,r3,29
  80c33c:	01c80034 	movhi	r7,8192
  80c340:	39ffffc4 	addi	r7,r7,-1
  80c344:	21c4703a 	and	r2,r4,r7
  80c348:	1810d0fa 	srli	r8,r3,3
  80c34c:	1484b03a 	or	r2,r2,r18
  80c350:	003f0306 	br	80bf60 <__adddf3+0x300>
  80c354:	1824977a 	slli	r18,r3,29
  80c358:	01480034 	movhi	r5,8192
  80c35c:	297fffc4 	addi	r5,r5,-1
  80c360:	2144703a 	and	r2,r4,r5
  80c364:	1810d0fa 	srli	r8,r3,3
  80c368:	1484b03a 	or	r2,r2,r18
  80c36c:	003f2306 	br	80bffc <__adddf3+0x39c>
  80c370:	4806977a 	slli	r3,r9,29
  80c374:	00880034 	movhi	r2,8192
  80c378:	10bfffc4 	addi	r2,r2,-1
  80c37c:	3084703a 	and	r2,r6,r2
  80c380:	4810d0fa 	srli	r8,r9,3
  80c384:	10c4b03a 	or	r2,r2,r3
  80c388:	3821883a 	mov	r16,r7
  80c38c:	003f1b06 	br	80bffc <__adddf3+0x39c>
  80c390:	1b88b03a 	or	r4,r3,r14
  80c394:	2024c03a 	cmpne	r18,r4,zero
  80c398:	003f3406 	br	80c06c <__adddf3+0x40c>
  80c39c:	2cbff804 	addi	r18,r5,-32
  80c3a0:	29800820 	cmpeqi	r6,r5,32
  80c3a4:	1c88d83a 	srl	r4,r3,r18
  80c3a8:	3000041e 	bne	r6,zero,80c3bc <__adddf3+0x75c>
  80c3ac:	01801004 	movi	r6,64
  80c3b0:	314bc83a 	sub	r5,r6,r5
  80c3b4:	1946983a 	sll	r3,r3,r5
  80c3b8:	70dcb03a 	or	r14,r14,r3
  80c3bc:	7024c03a 	cmpne	r18,r14,zero
  80c3c0:	9124b03a 	or	r18,r18,r4
  80c3c4:	003f9e06 	br	80c240 <__adddf3+0x5e0>
  80c3c8:	103efa1e 	bne	r2,zero,80bfb4 <__adddf3+0x354>
  80c3cc:	4804977a 	slli	r2,r9,29
  80c3d0:	00c80034 	movhi	r3,8192
  80c3d4:	18ffffc4 	addi	r3,r3,-1
  80c3d8:	30cc703a 	and	r6,r6,r3
  80c3dc:	4810d0fa 	srli	r8,r9,3
  80c3e0:	1184b03a 	or	r2,r2,r6
  80c3e4:	003f0506 	br	80bffc <__adddf3+0x39c>
  80c3e8:	10004426 	beq	r2,zero,80c4fc <__adddf3+0x89c>
  80c3ec:	4806977a 	slli	r3,r9,29
  80c3f0:	00880034 	movhi	r2,8192
  80c3f4:	10bfffc4 	addi	r2,r2,-1
  80c3f8:	3084703a 	and	r2,r6,r2
  80c3fc:	4810d0fa 	srli	r8,r9,3
  80c400:	10c4b03a 	or	r2,r2,r3
  80c404:	3821883a 	mov	r16,r7
  80c408:	003ed706 	br	80bf68 <__adddf3+0x308>
  80c40c:	6ba5c83a 	sub	r18,r13,r14
  80c410:	48c7c83a 	sub	r3,r9,r3
  80c414:	6c85803a 	cmpltu	r2,r13,r18
  80c418:	1889c83a 	sub	r4,r3,r2
  80c41c:	3821883a 	mov	r16,r7
  80c420:	04400044 	movi	r17,1
  80c424:	003e3f06 	br	80bd24 <__adddf3+0xc4>
  80c428:	180a977a 	slli	r5,r3,29
  80c42c:	00880034 	movhi	r2,8192
  80c430:	10bfffc4 	addi	r2,r2,-1
  80c434:	2084703a 	and	r2,r4,r2
  80c438:	1810d0fa 	srli	r8,r3,3
  80c43c:	1144b03a 	or	r2,r2,r5
  80c440:	003eee06 	br	80bffc <__adddf3+0x39c>
  80c444:	7365c83a 	sub	r18,r14,r13
  80c448:	7485803a 	cmpltu	r2,r14,r18
  80c44c:	1a49c83a 	sub	r4,r3,r9
  80c450:	2089c83a 	sub	r4,r4,r2
  80c454:	2080202c 	andhi	r2,r4,128
  80c458:	10002626 	beq	r2,zero,80c4f4 <__adddf3+0x894>
  80c45c:	6ba5c83a 	sub	r18,r13,r14
  80c460:	48c7c83a 	sub	r3,r9,r3
  80c464:	6c85803a 	cmpltu	r2,r13,r18
  80c468:	1889c83a 	sub	r4,r3,r2
  80c46c:	3821883a 	mov	r16,r7
  80c470:	003e4a06 	br	80bd9c <__adddf3+0x13c>
  80c474:	4806977a 	slli	r3,r9,29
  80c478:	00880034 	movhi	r2,8192
  80c47c:	10bfffc4 	addi	r2,r2,-1
  80c480:	3084703a 	and	r2,r6,r2
  80c484:	4810d0fa 	srli	r8,r9,3
  80c488:	10c4b03a 	or	r2,r2,r3
  80c48c:	003edb06 	br	80bffc <__adddf3+0x39c>
  80c490:	4806977a 	slli	r3,r9,29
  80c494:	00880034 	movhi	r2,8192
  80c498:	10bfffc4 	addi	r2,r2,-1
  80c49c:	3084703a 	and	r2,r6,r2
  80c4a0:	4810d0fa 	srli	r8,r9,3
  80c4a4:	10c4b03a 	or	r2,r2,r3
  80c4a8:	003ead06 	br	80bf60 <__adddf3+0x300>
  80c4ac:	180a977a 	slli	r5,r3,29
  80c4b0:	1810d0fa 	srli	r8,r3,3
  80c4b4:	10002f26 	beq	r2,zero,80c574 <__adddf3+0x914>
  80c4b8:	00c80034 	movhi	r3,8192
  80c4bc:	18ffffc4 	addi	r3,r3,-1
  80c4c0:	20c4703a 	and	r2,r4,r3
  80c4c4:	4100022c 	andhi	r4,r8,8
  80c4c8:	1144b03a 	or	r2,r2,r5
  80c4cc:	203ecb26 	beq	r4,zero,80bffc <__adddf3+0x39c>
  80c4d0:	4808d0fa 	srli	r4,r9,3
  80c4d4:	2140022c 	andhi	r5,r4,8
  80c4d8:	283ec81e 	bne	r5,zero,80bffc <__adddf3+0x39c>
  80c4dc:	4812977a 	slli	r9,r9,29
  80c4e0:	30c4703a 	and	r2,r6,r3
  80c4e4:	3821883a 	mov	r16,r7
  80c4e8:	1244b03a 	or	r2,r2,r9
  80c4ec:	2011883a 	mov	r8,r4
  80c4f0:	003ec206 	br	80bffc <__adddf3+0x39c>
  80c4f4:	9104b03a 	or	r2,r18,r4
  80c4f8:	103e921e 	bne	r2,zero,80bf44 <__adddf3+0x2e4>
  80c4fc:	0011883a 	mov	r8,zero
  80c500:	100b883a 	mov	r5,r2
  80c504:	0021883a 	mov	r16,zero
  80c508:	003e9706 	br	80bf68 <__adddf3+0x308>
  80c50c:	4804977a 	slli	r2,r9,29
  80c510:	00c80034 	movhi	r3,8192
  80c514:	18ffffc4 	addi	r3,r3,-1
  80c518:	30cc703a 	and	r6,r6,r3
  80c51c:	4810d0fa 	srli	r8,r9,3
  80c520:	1184b03a 	or	r2,r2,r6
  80c524:	003e9006 	br	80bf68 <__adddf3+0x308>
  80c528:	7365883a 	add	r18,r14,r13
  80c52c:	1a47883a 	add	r3,r3,r9
  80c530:	9389803a 	cmpltu	r4,r18,r14
  80c534:	1909883a 	add	r4,r3,r4
  80c538:	2080202c 	andhi	r2,r4,128
  80c53c:	103e8126 	beq	r2,zero,80bf44 <__adddf3+0x2e4>
  80c540:	00bfe034 	movhi	r2,65408
  80c544:	10bfffc4 	addi	r2,r2,-1
  80c548:	2088703a 	and	r4,r4,r2
  80c54c:	04400044 	movi	r17,1
  80c550:	003e7c06 	br	80bf44 <__adddf3+0x2e4>
  80c554:	4804977a 	slli	r2,r9,29
  80c558:	00c80034 	movhi	r3,8192
  80c55c:	18ffffc4 	addi	r3,r3,-1
  80c560:	30cc703a 	and	r6,r6,r3
  80c564:	4810d0fa 	srli	r8,r9,3
  80c568:	1184b03a 	or	r2,r2,r6
  80c56c:	3821883a 	mov	r16,r7
  80c570:	003ea206 	br	80bffc <__adddf3+0x39c>
  80c574:	00880034 	movhi	r2,8192
  80c578:	10bfffc4 	addi	r2,r2,-1
  80c57c:	2084703a 	and	r2,r4,r2
  80c580:	1144b03a 	or	r2,r2,r5
  80c584:	003e9d06 	br	80bffc <__adddf3+0x39c>
  80c588:	293ff804 	addi	r4,r5,-32
  80c58c:	29800820 	cmpeqi	r6,r5,32
  80c590:	1908d83a 	srl	r4,r3,r4
  80c594:	3000041e 	bne	r6,zero,80c5a8 <__adddf3+0x948>
  80c598:	01801004 	movi	r6,64
  80c59c:	314bc83a 	sub	r5,r6,r5
  80c5a0:	1946983a 	sll	r3,r3,r5
  80c5a4:	70dcb03a 	or	r14,r14,r3
  80c5a8:	7024c03a 	cmpne	r18,r14,zero
  80c5ac:	9124b03a 	or	r18,r18,r4
  80c5b0:	003eae06 	br	80c06c <__adddf3+0x40c>
  80c5b4:	7365883a 	add	r18,r14,r13
  80c5b8:	1a47883a 	add	r3,r3,r9
  80c5bc:	9345803a 	cmpltu	r2,r18,r13
  80c5c0:	1889883a 	add	r4,r3,r2
  80c5c4:	003e5c06 	br	80bf38 <__adddf3+0x2d8>
  80c5c8:	0005883a 	mov	r2,zero
  80c5cc:	0141ffc4 	movi	r5,2047
  80c5d0:	0007883a 	mov	r3,zero
  80c5d4:	003e0806 	br	80bdf8 <__adddf3+0x198>

0080c5d8 <__divdf3>:
  80c5d8:	2810d53a 	srli	r8,r5,20
  80c5dc:	defff004 	addi	sp,sp,-64
  80c5e0:	dc000615 	stw	r16,24(sp)
  80c5e4:	04000434 	movhi	r16,16
  80c5e8:	df000e15 	stw	fp,56(sp)
  80c5ec:	ddc00d15 	stw	r23,52(sp)
  80c5f0:	dd800c15 	stw	r22,48(sp)
  80c5f4:	dd000a15 	stw	r20,40(sp)
  80c5f8:	843fffc4 	addi	r16,r16,-1
  80c5fc:	dfc00f15 	stw	ra,60(sp)
  80c600:	dd400b15 	stw	r21,44(sp)
  80c604:	dcc00915 	stw	r19,36(sp)
  80c608:	dc800815 	stw	r18,32(sp)
  80c60c:	dc400715 	stw	r17,28(sp)
  80c610:	4201ffcc 	andi	r8,r8,2047
  80c614:	282ed7fa 	srli	r23,r5,31
  80c618:	3039883a 	mov	fp,r6
  80c61c:	382d883a 	mov	r22,r7
  80c620:	2029883a 	mov	r20,r4
  80c624:	2c20703a 	and	r16,r5,r16
  80c628:	40005326 	beq	r8,zero,80c778 <__divdf3+0x1a0>
  80c62c:	4081ffe0 	cmpeqi	r2,r8,2047
  80c630:	1000641e 	bne	r2,zero,80c7c4 <__divdf3+0x1ec>
  80c634:	2026d77a 	srli	r19,r4,29
  80c638:	800a90fa 	slli	r5,r16,3
  80c63c:	202890fa 	slli	r20,r4,3
  80c640:	44bf0044 	addi	r18,r8,-1023
  80c644:	994ab03a 	or	r5,r19,r5
  80c648:	2cc02034 	orhi	r19,r5,128
  80c64c:	0021883a 	mov	r16,zero
  80c650:	0023883a 	mov	r17,zero
  80c654:	b010d53a 	srli	r8,r22,20
  80c658:	00c00434 	movhi	r3,16
  80c65c:	18ffffc4 	addi	r3,r3,-1
  80c660:	4201ffcc 	andi	r8,r8,2047
  80c664:	b02ad7fa 	srli	r21,r22,31
  80c668:	b0ec703a 	and	r22,r22,r3
  80c66c:	40005c26 	beq	r8,zero,80c7e0 <__divdf3+0x208>
  80c670:	4081ffe0 	cmpeqi	r2,r8,2047
  80c674:	1000201e 	bne	r2,zero,80c6f8 <__divdf3+0x120>
  80c678:	b00690fa 	slli	r3,r22,3
  80c67c:	e004d77a 	srli	r2,fp,29
  80c680:	e01490fa 	slli	r10,fp,3
  80c684:	423f0044 	addi	r8,r8,-1023
  80c688:	10c6b03a 	or	r3,r2,r3
  80c68c:	1d802034 	orhi	r22,r3,128
  80c690:	9225c83a 	sub	r18,r18,r8
  80c694:	0007883a 	mov	r3,zero
  80c698:	80800428 	cmpgeui	r2,r16,16
  80c69c:	bd52f03a 	xor	r9,r23,r21
  80c6a0:	1000a81e 	bne	r2,zero,80c944 <__divdf3+0x36c>
  80c6a4:	800c90ba 	slli	r6,r16,2
  80c6a8:	00802074 	movhi	r2,129
  80c6ac:	3085883a 	add	r2,r6,r2
  80c6b0:	10b1ae17 	ldw	r2,-14664(r2)
  80c6b4:	1000683a 	jmp	r2
  80c6b8:	0080c944 	movi	r2,805
  80c6bc:	0080c768 	cmpgeui	r2,zero,797
  80c6c0:	0080c714 	movui	r2,796
  80c6c4:	0080c88c 	andi	r2,zero,802
  80c6c8:	0080c714 	movui	r2,796
  80c6cc:	0080c8e8 	cmpgeui	r2,zero,803
  80c6d0:	0080c714 	movui	r2,796
  80c6d4:	0080c88c 	andi	r2,zero,802
  80c6d8:	0080c768 	cmpgeui	r2,zero,797
  80c6dc:	0080c768 	cmpgeui	r2,zero,797
  80c6e0:	0080c8e8 	cmpgeui	r2,zero,803
  80c6e4:	0080c88c 	andi	r2,zero,802
  80c6e8:	0080c824 	muli	r2,zero,800
  80c6ec:	0080c824 	muli	r2,zero,800
  80c6f0:	0080c824 	muli	r2,zero,800
  80c6f4:	0080c900 	call	80c90 <__alt_mem_sdram-0x77f370>
  80c6f8:	b714b03a 	or	r10,r22,fp
  80c6fc:	94be0044 	addi	r18,r18,-2047
  80c700:	5000671e 	bne	r10,zero,80c8a0 <__divdf3+0x2c8>
  80c704:	84000094 	ori	r16,r16,2
  80c708:	002d883a 	mov	r22,zero
  80c70c:	00c00084 	movi	r3,2
  80c710:	003fe106 	br	80c698 <__divdf3+0xc0>
  80c714:	0007883a 	mov	r3,zero
  80c718:	000b883a 	mov	r5,zero
  80c71c:	0029883a 	mov	r20,zero
  80c720:	1806953a 	slli	r3,r3,20
  80c724:	4a403fcc 	andi	r9,r9,255
  80c728:	481297fa 	slli	r9,r9,31
  80c72c:	1946b03a 	or	r3,r3,r5
  80c730:	a005883a 	mov	r2,r20
  80c734:	1a46b03a 	or	r3,r3,r9
  80c738:	dfc00f17 	ldw	ra,60(sp)
  80c73c:	df000e17 	ldw	fp,56(sp)
  80c740:	ddc00d17 	ldw	r23,52(sp)
  80c744:	dd800c17 	ldw	r22,48(sp)
  80c748:	dd400b17 	ldw	r21,44(sp)
  80c74c:	dd000a17 	ldw	r20,40(sp)
  80c750:	dcc00917 	ldw	r19,36(sp)
  80c754:	dc800817 	ldw	r18,32(sp)
  80c758:	dc400717 	ldw	r17,28(sp)
  80c75c:	dc000617 	ldw	r16,24(sp)
  80c760:	dec01004 	addi	sp,sp,64
  80c764:	f800283a 	ret
  80c768:	00c1ffc4 	movi	r3,2047
  80c76c:	000b883a 	mov	r5,zero
  80c770:	0029883a 	mov	r20,zero
  80c774:	003fea06 	br	80c720 <__divdf3+0x148>
  80c778:	2426b03a 	or	r19,r4,r16
  80c77c:	2023883a 	mov	r17,r4
  80c780:	98004f26 	beq	r19,zero,80c8c0 <__divdf3+0x2e8>
  80c784:	80017b26 	beq	r16,zero,80cd74 <__divdf3+0x79c>
  80c788:	8009883a 	mov	r4,r16
  80c78c:	08016840 	call	801684 <__clzsi2>
  80c790:	113ffd44 	addi	r4,r2,-11
  80c794:	00c00744 	movi	r3,29
  80c798:	14fffe04 	addi	r19,r2,-8
  80c79c:	1907c83a 	sub	r3,r3,r4
  80c7a0:	84ca983a 	sll	r5,r16,r19
  80c7a4:	88c6d83a 	srl	r3,r17,r3
  80c7a8:	8ce8983a 	sll	r20,r17,r19
  80c7ac:	1966b03a 	or	r19,r3,r5
  80c7b0:	023f0344 	movi	r8,-1011
  80c7b4:	40a5c83a 	sub	r18,r8,r2
  80c7b8:	0021883a 	mov	r16,zero
  80c7bc:	0023883a 	mov	r17,zero
  80c7c0:	003fa406 	br	80c654 <__divdf3+0x7c>
  80c7c4:	2426b03a 	or	r19,r4,r16
  80c7c8:	9800421e 	bne	r19,zero,80c8d4 <__divdf3+0x2fc>
  80c7cc:	0029883a 	mov	r20,zero
  80c7d0:	04000204 	movi	r16,8
  80c7d4:	0481ffc4 	movi	r18,2047
  80c7d8:	04400084 	movi	r17,2
  80c7dc:	003f9d06 	br	80c654 <__divdf3+0x7c>
  80c7e0:	b714b03a 	or	r10,r22,fp
  80c7e4:	50003226 	beq	r10,zero,80c8b0 <__divdf3+0x2d8>
  80c7e8:	b0016c26 	beq	r22,zero,80cd9c <__divdf3+0x7c4>
  80c7ec:	b009883a 	mov	r4,r22
  80c7f0:	08016840 	call	801684 <__clzsi2>
  80c7f4:	117ffd44 	addi	r5,r2,-11
  80c7f8:	01000744 	movi	r4,29
  80c7fc:	12bffe04 	addi	r10,r2,-8
  80c800:	2149c83a 	sub	r4,r4,r5
  80c804:	b286983a 	sll	r3,r22,r10
  80c808:	e108d83a 	srl	r4,fp,r4
  80c80c:	e294983a 	sll	r10,fp,r10
  80c810:	20ecb03a 	or	r22,r4,r3
  80c814:	1491883a 	add	r8,r2,r18
  80c818:	4480fcc4 	addi	r18,r8,1011
  80c81c:	0007883a 	mov	r3,zero
  80c820:	003f9d06 	br	80c698 <__divdf3+0xc0>
  80c824:	b813883a 	mov	r9,r23
  80c828:	888000a0 	cmpeqi	r2,r17,2
  80c82c:	103fce1e 	bne	r2,zero,80c768 <__divdf3+0x190>
  80c830:	888000e0 	cmpeqi	r2,r17,3
  80c834:	1001ac1e 	bne	r2,zero,80cee8 <__divdf3+0x910>
  80c838:	88800060 	cmpeqi	r2,r17,1
  80c83c:	103fb51e 	bne	r2,zero,80c714 <__divdf3+0x13c>
  80c840:	9440ffc4 	addi	r17,r18,1023
  80c844:	04411c0e 	bge	zero,r17,80ccb8 <__divdf3+0x6e0>
  80c848:	a08001cc 	andi	r2,r20,7
  80c84c:	1001831e 	bne	r2,zero,80ce5c <__divdf3+0x884>
  80c850:	a008d0fa 	srli	r4,r20,3
  80c854:	9880402c 	andhi	r2,r19,256
  80c858:	10000426 	beq	r2,zero,80c86c <__divdf3+0x294>
  80c85c:	00bfc034 	movhi	r2,65280
  80c860:	10bfffc4 	addi	r2,r2,-1
  80c864:	98a6703a 	and	r19,r19,r2
  80c868:	94410004 	addi	r17,r18,1024
  80c86c:	8881ffc8 	cmpgei	r2,r17,2047
  80c870:	103fbd1e 	bne	r2,zero,80c768 <__divdf3+0x190>
  80c874:	9828977a 	slli	r20,r19,29
  80c878:	980a927a 	slli	r5,r19,9
  80c87c:	88c1ffcc 	andi	r3,r17,2047
  80c880:	a128b03a 	or	r20,r20,r4
  80c884:	280ad33a 	srli	r5,r5,12
  80c888:	003fa506 	br	80c720 <__divdf3+0x148>
  80c88c:	a813883a 	mov	r9,r21
  80c890:	b027883a 	mov	r19,r22
  80c894:	5029883a 	mov	r20,r10
  80c898:	1823883a 	mov	r17,r3
  80c89c:	003fe206 	br	80c828 <__divdf3+0x250>
  80c8a0:	840000d4 	ori	r16,r16,3
  80c8a4:	e015883a 	mov	r10,fp
  80c8a8:	00c000c4 	movi	r3,3
  80c8ac:	003f7a06 	br	80c698 <__divdf3+0xc0>
  80c8b0:	84000054 	ori	r16,r16,1
  80c8b4:	002d883a 	mov	r22,zero
  80c8b8:	00c00044 	movi	r3,1
  80c8bc:	003f7606 	br	80c698 <__divdf3+0xc0>
  80c8c0:	0029883a 	mov	r20,zero
  80c8c4:	04000104 	movi	r16,4
  80c8c8:	0025883a 	mov	r18,zero
  80c8cc:	04400044 	movi	r17,1
  80c8d0:	003f6006 	br	80c654 <__divdf3+0x7c>
  80c8d4:	8027883a 	mov	r19,r16
  80c8d8:	0481ffc4 	movi	r18,2047
  80c8dc:	04000304 	movi	r16,12
  80c8e0:	044000c4 	movi	r17,3
  80c8e4:	003f5b06 	br	80c654 <__divdf3+0x7c>
  80c8e8:	01400434 	movhi	r5,16
  80c8ec:	0013883a 	mov	r9,zero
  80c8f0:	297fffc4 	addi	r5,r5,-1
  80c8f4:	053fffc4 	movi	r20,-1
  80c8f8:	00c1ffc4 	movi	r3,2047
  80c8fc:	003f8806 	br	80c720 <__divdf3+0x148>
  80c900:	9880022c 	andhi	r2,r19,8
  80c904:	10000926 	beq	r2,zero,80c92c <__divdf3+0x354>
  80c908:	b080022c 	andhi	r2,r22,8
  80c90c:	1000071e 	bne	r2,zero,80c92c <__divdf3+0x354>
  80c910:	00800434 	movhi	r2,16
  80c914:	b1400234 	orhi	r5,r22,8
  80c918:	10bfffc4 	addi	r2,r2,-1
  80c91c:	288a703a 	and	r5,r5,r2
  80c920:	a813883a 	mov	r9,r21
  80c924:	5029883a 	mov	r20,r10
  80c928:	003ff306 	br	80c8f8 <__divdf3+0x320>
  80c92c:	00800434 	movhi	r2,16
  80c930:	99400234 	orhi	r5,r19,8
  80c934:	10bfffc4 	addi	r2,r2,-1
  80c938:	288a703a 	and	r5,r5,r2
  80c93c:	b813883a 	mov	r9,r23
  80c940:	003fed06 	br	80c8f8 <__divdf3+0x320>
  80c944:	b4c10536 	bltu	r22,r19,80cd5c <__divdf3+0x784>
  80c948:	b4c10326 	beq	r22,r19,80cd58 <__divdf3+0x780>
  80c94c:	94bfffc4 	addi	r18,r18,-1
  80c950:	a039883a 	mov	fp,r20
  80c954:	9821883a 	mov	r16,r19
  80c958:	0023883a 	mov	r17,zero
  80c95c:	b006923a 	slli	r3,r22,8
  80c960:	502cd63a 	srli	r22,r10,24
  80c964:	8009883a 	mov	r4,r16
  80c968:	182ed43a 	srli	r23,r3,16
  80c96c:	b0ecb03a 	or	r22,r22,r3
  80c970:	da400015 	stw	r9,0(sp)
  80c974:	b80b883a 	mov	r5,r23
  80c978:	502a923a 	slli	r21,r10,8
  80c97c:	b53fffcc 	andi	r20,r22,65535
  80c980:	080bba00 	call	80bba0 <__udivsi3>
  80c984:	100b883a 	mov	r5,r2
  80c988:	a009883a 	mov	r4,r20
  80c98c:	1027883a 	mov	r19,r2
  80c990:	08016d80 	call	8016d8 <__mulsi3>
  80c994:	8009883a 	mov	r4,r16
  80c998:	b80b883a 	mov	r5,r23
  80c99c:	1021883a 	mov	r16,r2
  80c9a0:	080bc040 	call	80bc04 <__umodsi3>
  80c9a4:	1004943a 	slli	r2,r2,16
  80c9a8:	e008d43a 	srli	r4,fp,16
  80c9ac:	da400017 	ldw	r9,0(sp)
  80c9b0:	2088b03a 	or	r4,r4,r2
  80c9b4:	2400042e 	bgeu	r4,r16,80c9c8 <__divdf3+0x3f0>
  80c9b8:	2589883a 	add	r4,r4,r22
  80c9bc:	98bfffc4 	addi	r2,r19,-1
  80c9c0:	2581082e 	bgeu	r4,r22,80cde4 <__divdf3+0x80c>
  80c9c4:	1027883a 	mov	r19,r2
  80c9c8:	2421c83a 	sub	r16,r4,r16
  80c9cc:	b80b883a 	mov	r5,r23
  80c9d0:	8009883a 	mov	r4,r16
  80c9d4:	da400215 	stw	r9,8(sp)
  80c9d8:	080bba00 	call	80bba0 <__udivsi3>
  80c9dc:	100b883a 	mov	r5,r2
  80c9e0:	a009883a 	mov	r4,r20
  80c9e4:	d8800115 	stw	r2,4(sp)
  80c9e8:	08016d80 	call	8016d8 <__mulsi3>
  80c9ec:	b80b883a 	mov	r5,r23
  80c9f0:	8009883a 	mov	r4,r16
  80c9f4:	d8800015 	stw	r2,0(sp)
  80c9f8:	080bc040 	call	80bc04 <__umodsi3>
  80c9fc:	100c943a 	slli	r6,r2,16
  80ca00:	d8c00017 	ldw	r3,0(sp)
  80ca04:	e73fffcc 	andi	fp,fp,65535
  80ca08:	e18cb03a 	or	r6,fp,r6
  80ca0c:	d9c00117 	ldw	r7,4(sp)
  80ca10:	da400217 	ldw	r9,8(sp)
  80ca14:	30c0042e 	bgeu	r6,r3,80ca28 <__divdf3+0x450>
  80ca18:	358d883a 	add	r6,r6,r22
  80ca1c:	38bfffc4 	addi	r2,r7,-1
  80ca20:	3580ec2e 	bgeu	r6,r22,80cdd4 <__divdf3+0x7fc>
  80ca24:	100f883a 	mov	r7,r2
  80ca28:	9826943a 	slli	r19,r19,16
  80ca2c:	af3fffcc 	andi	fp,r21,65535
  80ca30:	30c7c83a 	sub	r3,r6,r3
  80ca34:	99e6b03a 	or	r19,r19,r7
  80ca38:	980ed43a 	srli	r7,r19,16
  80ca3c:	9abfffcc 	andi	r10,r19,65535
  80ca40:	5009883a 	mov	r4,r10
  80ca44:	e00b883a 	mov	r5,fp
  80ca48:	da400515 	stw	r9,20(sp)
  80ca4c:	d8c00315 	stw	r3,12(sp)
  80ca50:	da800415 	stw	r10,16(sp)
  80ca54:	d9c00015 	stw	r7,0(sp)
  80ca58:	08016d80 	call	8016d8 <__mulsi3>
  80ca5c:	d9c00017 	ldw	r7,0(sp)
  80ca60:	e00b883a 	mov	r5,fp
  80ca64:	d8800215 	stw	r2,8(sp)
  80ca68:	3809883a 	mov	r4,r7
  80ca6c:	08016d80 	call	8016d8 <__mulsi3>
  80ca70:	d9c00017 	ldw	r7,0(sp)
  80ca74:	a820d43a 	srli	r16,r21,16
  80ca78:	d8800115 	stw	r2,4(sp)
  80ca7c:	3809883a 	mov	r4,r7
  80ca80:	800b883a 	mov	r5,r16
  80ca84:	08016d80 	call	8016d8 <__mulsi3>
  80ca88:	da800417 	ldw	r10,16(sp)
  80ca8c:	8009883a 	mov	r4,r16
  80ca90:	d8800015 	stw	r2,0(sp)
  80ca94:	500b883a 	mov	r5,r10
  80ca98:	08016d80 	call	8016d8 <__mulsi3>
  80ca9c:	d9800217 	ldw	r6,8(sp)
  80caa0:	d9c00117 	ldw	r7,4(sp)
  80caa4:	da000017 	ldw	r8,0(sp)
  80caa8:	3008d43a 	srli	r4,r6,16
  80caac:	11c5883a 	add	r2,r2,r7
  80cab0:	d8c00317 	ldw	r3,12(sp)
  80cab4:	2089883a 	add	r4,r4,r2
  80cab8:	da400517 	ldw	r9,20(sp)
  80cabc:	21c0022e 	bgeu	r4,r7,80cac8 <__divdf3+0x4f0>
  80cac0:	00800074 	movhi	r2,1
  80cac4:	4091883a 	add	r8,r8,r2
  80cac8:	200ad43a 	srli	r5,r4,16
  80cacc:	2008943a 	slli	r4,r4,16
  80cad0:	31bfffcc 	andi	r6,r6,65535
  80cad4:	2a0b883a 	add	r5,r5,r8
  80cad8:	218d883a 	add	r6,r4,r6
  80cadc:	19409436 	bltu	r3,r5,80cd30 <__divdf3+0x758>
  80cae0:	19409226 	beq	r3,r5,80cd2c <__divdf3+0x754>
  80cae4:	898dc83a 	sub	r6,r17,r6
  80cae8:	89a3803a 	cmpltu	r17,r17,r6
  80caec:	1947c83a 	sub	r3,r3,r5
  80caf0:	1c47c83a 	sub	r3,r3,r17
  80caf4:	9440ffc4 	addi	r17,r18,1023
  80caf8:	b0c0d326 	beq	r22,r3,80ce48 <__divdf3+0x870>
  80cafc:	1809883a 	mov	r4,r3
  80cb00:	b80b883a 	mov	r5,r23
  80cb04:	d9800315 	stw	r6,12(sp)
  80cb08:	da400215 	stw	r9,8(sp)
  80cb0c:	d8c00015 	stw	r3,0(sp)
  80cb10:	080bba00 	call	80bba0 <__udivsi3>
  80cb14:	100b883a 	mov	r5,r2
  80cb18:	a009883a 	mov	r4,r20
  80cb1c:	d8800115 	stw	r2,4(sp)
  80cb20:	08016d80 	call	8016d8 <__mulsi3>
  80cb24:	d8c00017 	ldw	r3,0(sp)
  80cb28:	b80b883a 	mov	r5,r23
  80cb2c:	d8800015 	stw	r2,0(sp)
  80cb30:	1809883a 	mov	r4,r3
  80cb34:	080bc040 	call	80bc04 <__umodsi3>
  80cb38:	d9800317 	ldw	r6,12(sp)
  80cb3c:	1006943a 	slli	r3,r2,16
  80cb40:	da000017 	ldw	r8,0(sp)
  80cb44:	3008d43a 	srli	r4,r6,16
  80cb48:	d9c00117 	ldw	r7,4(sp)
  80cb4c:	da400217 	ldw	r9,8(sp)
  80cb50:	20c6b03a 	or	r3,r4,r3
  80cb54:	1a00062e 	bgeu	r3,r8,80cb70 <__divdf3+0x598>
  80cb58:	1d87883a 	add	r3,r3,r22
  80cb5c:	38bfffc4 	addi	r2,r7,-1
  80cb60:	1d80c836 	bltu	r3,r22,80ce84 <__divdf3+0x8ac>
  80cb64:	1a00c72e 	bgeu	r3,r8,80ce84 <__divdf3+0x8ac>
  80cb68:	39ffff84 	addi	r7,r7,-2
  80cb6c:	1d87883a 	add	r3,r3,r22
  80cb70:	1a07c83a 	sub	r3,r3,r8
  80cb74:	1809883a 	mov	r4,r3
  80cb78:	b80b883a 	mov	r5,r23
  80cb7c:	d9800415 	stw	r6,16(sp)
  80cb80:	da400315 	stw	r9,12(sp)
  80cb84:	d9c00215 	stw	r7,8(sp)
  80cb88:	d8c00115 	stw	r3,4(sp)
  80cb8c:	080bba00 	call	80bba0 <__udivsi3>
  80cb90:	100b883a 	mov	r5,r2
  80cb94:	a009883a 	mov	r4,r20
  80cb98:	d8800015 	stw	r2,0(sp)
  80cb9c:	08016d80 	call	8016d8 <__mulsi3>
  80cba0:	d8c00117 	ldw	r3,4(sp)
  80cba4:	b80b883a 	mov	r5,r23
  80cba8:	102f883a 	mov	r23,r2
  80cbac:	1809883a 	mov	r4,r3
  80cbb0:	080bc040 	call	80bc04 <__umodsi3>
  80cbb4:	d9800417 	ldw	r6,16(sp)
  80cbb8:	1004943a 	slli	r2,r2,16
  80cbbc:	da000017 	ldw	r8,0(sp)
  80cbc0:	31bfffcc 	andi	r6,r6,65535
  80cbc4:	308cb03a 	or	r6,r6,r2
  80cbc8:	d9c00217 	ldw	r7,8(sp)
  80cbcc:	da400317 	ldw	r9,12(sp)
  80cbd0:	35c0062e 	bgeu	r6,r23,80cbec <__divdf3+0x614>
  80cbd4:	358d883a 	add	r6,r6,r22
  80cbd8:	40bfffc4 	addi	r2,r8,-1
  80cbdc:	3580a736 	bltu	r6,r22,80ce7c <__divdf3+0x8a4>
  80cbe0:	35c0a62e 	bgeu	r6,r23,80ce7c <__divdf3+0x8a4>
  80cbe4:	423fff84 	addi	r8,r8,-2
  80cbe8:	358d883a 	add	r6,r6,r22
  80cbec:	3828943a 	slli	r20,r7,16
  80cbf0:	35d5c83a 	sub	r10,r6,r23
  80cbf4:	e009883a 	mov	r4,fp
  80cbf8:	a228b03a 	or	r20,r20,r8
  80cbfc:	a1ffffcc 	andi	r7,r20,65535
  80cc00:	a02ed43a 	srli	r23,r20,16
  80cc04:	380b883a 	mov	r5,r7
  80cc08:	da400315 	stw	r9,12(sp)
  80cc0c:	da800215 	stw	r10,8(sp)
  80cc10:	d9c00115 	stw	r7,4(sp)
  80cc14:	08016d80 	call	8016d8 <__mulsi3>
  80cc18:	e00b883a 	mov	r5,fp
  80cc1c:	b809883a 	mov	r4,r23
  80cc20:	1039883a 	mov	fp,r2
  80cc24:	08016d80 	call	8016d8 <__mulsi3>
  80cc28:	8009883a 	mov	r4,r16
  80cc2c:	b80b883a 	mov	r5,r23
  80cc30:	d8800015 	stw	r2,0(sp)
  80cc34:	08016d80 	call	8016d8 <__mulsi3>
  80cc38:	d9c00117 	ldw	r7,4(sp)
  80cc3c:	8009883a 	mov	r4,r16
  80cc40:	1021883a 	mov	r16,r2
  80cc44:	380b883a 	mov	r5,r7
  80cc48:	08016d80 	call	8016d8 <__mulsi3>
  80cc4c:	d9800017 	ldw	r6,0(sp)
  80cc50:	e006d43a 	srli	r3,fp,16
  80cc54:	da800217 	ldw	r10,8(sp)
  80cc58:	1185883a 	add	r2,r2,r6
  80cc5c:	1887883a 	add	r3,r3,r2
  80cc60:	da400317 	ldw	r9,12(sp)
  80cc64:	1980022e 	bgeu	r3,r6,80cc70 <__divdf3+0x698>
  80cc68:	00800074 	movhi	r2,1
  80cc6c:	80a1883a 	add	r16,r16,r2
  80cc70:	1808d43a 	srli	r4,r3,16
  80cc74:	1806943a 	slli	r3,r3,16
  80cc78:	e73fffcc 	andi	fp,fp,65535
  80cc7c:	2409883a 	add	r4,r4,r16
  80cc80:	1f07883a 	add	r3,r3,fp
  80cc84:	51000436 	bltu	r10,r4,80cc98 <__divdf3+0x6c0>
  80cc88:	51000226 	beq	r10,r4,80cc94 <__divdf3+0x6bc>
  80cc8c:	a5000054 	ori	r20,r20,1
  80cc90:	003eec06 	br	80c844 <__divdf3+0x26c>
  80cc94:	183eeb26 	beq	r3,zero,80c844 <__divdf3+0x26c>
  80cc98:	b28d883a 	add	r6,r22,r10
  80cc9c:	a0bfffc4 	addi	r2,r20,-1
  80cca0:	35806536 	bltu	r6,r22,80ce38 <__divdf3+0x860>
  80cca4:	31008036 	bltu	r6,r4,80cea8 <__divdf3+0x8d0>
  80cca8:	31009426 	beq	r6,r4,80cefc <__divdf3+0x924>
  80ccac:	1029883a 	mov	r20,r2
  80ccb0:	003ff606 	br	80cc8c <__divdf3+0x6b4>
  80ccb4:	053fffc4 	movi	r20,-1
  80ccb8:	01400044 	movi	r5,1
  80ccbc:	2c4bc83a 	sub	r5,r5,r17
  80ccc0:	28800e48 	cmpgei	r2,r5,57
  80ccc4:	103e931e 	bne	r2,zero,80c714 <__divdf3+0x13c>
  80ccc8:	28800808 	cmpgei	r2,r5,32
  80cccc:	1000491e 	bne	r2,zero,80cdf4 <__divdf3+0x81c>
  80ccd0:	92010784 	addi	r8,r18,1054
  80ccd4:	9a04983a 	sll	r2,r19,r8
  80ccd8:	a146d83a 	srl	r3,r20,r5
  80ccdc:	a210983a 	sll	r8,r20,r8
  80cce0:	994ad83a 	srl	r5,r19,r5
  80cce4:	10e8b03a 	or	r20,r2,r3
  80cce8:	4010c03a 	cmpne	r8,r8,zero
  80ccec:	a228b03a 	or	r20,r20,r8
  80ccf0:	a08001cc 	andi	r2,r20,7
  80ccf4:	10000726 	beq	r2,zero,80cd14 <__divdf3+0x73c>
  80ccf8:	a08003cc 	andi	r2,r20,15
  80ccfc:	10800120 	cmpeqi	r2,r2,4
  80cd00:	1000041e 	bne	r2,zero,80cd14 <__divdf3+0x73c>
  80cd04:	a0800104 	addi	r2,r20,4
  80cd08:	1529803a 	cmpltu	r20,r2,r20
  80cd0c:	2d0b883a 	add	r5,r5,r20
  80cd10:	1029883a 	mov	r20,r2
  80cd14:	2880202c 	andhi	r2,r5,128
  80cd18:	10006f26 	beq	r2,zero,80ced8 <__divdf3+0x900>
  80cd1c:	00c00044 	movi	r3,1
  80cd20:	000b883a 	mov	r5,zero
  80cd24:	0029883a 	mov	r20,zero
  80cd28:	003e7d06 	br	80c720 <__divdf3+0x148>
  80cd2c:	89bf6d2e 	bgeu	r17,r6,80cae4 <__divdf3+0x50c>
  80cd30:	8d63883a 	add	r17,r17,r21
  80cd34:	8d45803a 	cmpltu	r2,r17,r21
  80cd38:	1585883a 	add	r2,r2,r22
  80cd3c:	1887883a 	add	r3,r3,r2
  80cd40:	98bfffc4 	addi	r2,r19,-1
  80cd44:	b0c0202e 	bgeu	r22,r3,80cdc8 <__divdf3+0x7f0>
  80cd48:	19405136 	bltu	r3,r5,80ce90 <__divdf3+0x8b8>
  80cd4c:	28c04f26 	beq	r5,r3,80ce8c <__divdf3+0x8b4>
  80cd50:	1027883a 	mov	r19,r2
  80cd54:	003f6306 	br	80cae4 <__divdf3+0x50c>
  80cd58:	a2befc36 	bltu	r20,r10,80c94c <__divdf3+0x374>
  80cd5c:	983897fa 	slli	fp,r19,31
  80cd60:	a004d07a 	srli	r2,r20,1
  80cd64:	9820d07a 	srli	r16,r19,1
  80cd68:	a02297fa 	slli	r17,r20,31
  80cd6c:	e0b8b03a 	or	fp,fp,r2
  80cd70:	003efa06 	br	80c95c <__divdf3+0x384>
  80cd74:	08016840 	call	801684 <__clzsi2>
  80cd78:	11000544 	addi	r4,r2,21
  80cd7c:	20c00748 	cmpgei	r3,r4,29
  80cd80:	100b883a 	mov	r5,r2
  80cd84:	10800804 	addi	r2,r2,32
  80cd88:	183e8226 	beq	r3,zero,80c794 <__divdf3+0x1bc>
  80cd8c:	297ffe04 	addi	r5,r5,-8
  80cd90:	a166983a 	sll	r19,r20,r5
  80cd94:	0029883a 	mov	r20,zero
  80cd98:	003e8506 	br	80c7b0 <__divdf3+0x1d8>
  80cd9c:	e009883a 	mov	r4,fp
  80cda0:	08016840 	call	801684 <__clzsi2>
  80cda4:	11400544 	addi	r5,r2,21
  80cda8:	29000748 	cmpgei	r4,r5,29
  80cdac:	1007883a 	mov	r3,r2
  80cdb0:	10800804 	addi	r2,r2,32
  80cdb4:	203e9026 	beq	r4,zero,80c7f8 <__divdf3+0x220>
  80cdb8:	18fffe04 	addi	r3,r3,-8
  80cdbc:	e0ec983a 	sll	r22,fp,r3
  80cdc0:	0015883a 	mov	r10,zero
  80cdc4:	003e9306 	br	80c814 <__divdf3+0x23c>
  80cdc8:	b0ffe11e 	bne	r22,r3,80cd50 <__divdf3+0x778>
  80cdcc:	8d7fe036 	bltu	r17,r21,80cd50 <__divdf3+0x778>
  80cdd0:	003fdd06 	br	80cd48 <__divdf3+0x770>
  80cdd4:	30ff132e 	bgeu	r6,r3,80ca24 <__divdf3+0x44c>
  80cdd8:	39ffff84 	addi	r7,r7,-2
  80cddc:	358d883a 	add	r6,r6,r22
  80cde0:	003f1106 	br	80ca28 <__divdf3+0x450>
  80cde4:	243ef72e 	bgeu	r4,r16,80c9c4 <__divdf3+0x3ec>
  80cde8:	9cffff84 	addi	r19,r19,-2
  80cdec:	2589883a 	add	r4,r4,r22
  80cdf0:	003ef506 	br	80c9c8 <__divdf3+0x3f0>
  80cdf4:	00fff844 	movi	r3,-31
  80cdf8:	1c47c83a 	sub	r3,r3,r17
  80cdfc:	29400820 	cmpeqi	r5,r5,32
  80ce00:	98c6d83a 	srl	r3,r19,r3
  80ce04:	2800031e 	bne	r5,zero,80ce14 <__divdf3+0x83c>
  80ce08:	91410f84 	addi	r5,r18,1086
  80ce0c:	994a983a 	sll	r5,r19,r5
  80ce10:	a168b03a 	or	r20,r20,r5
  80ce14:	a028c03a 	cmpne	r20,r20,zero
  80ce18:	a0e8b03a 	or	r20,r20,r3
  80ce1c:	a4c001cc 	andi	r19,r20,7
  80ce20:	9800291e 	bne	r19,zero,80cec8 <__divdf3+0x8f0>
  80ce24:	000b883a 	mov	r5,zero
  80ce28:	a028d0fa 	srli	r20,r20,3
  80ce2c:	0007883a 	mov	r3,zero
  80ce30:	a4e8b03a 	or	r20,r20,r19
  80ce34:	003e3a06 	br	80c720 <__divdf3+0x148>
  80ce38:	1029883a 	mov	r20,r2
  80ce3c:	313f931e 	bne	r6,r4,80cc8c <__divdf3+0x6b4>
  80ce40:	1d7f921e 	bne	r3,r21,80cc8c <__divdf3+0x6b4>
  80ce44:	003e7f06 	br	80c844 <__divdf3+0x26c>
  80ce48:	047f9a0e 	bge	zero,r17,80ccb4 <__divdf3+0x6dc>
  80ce4c:	0009883a 	mov	r4,zero
  80ce50:	05000044 	movi	r20,1
  80ce54:	9d27883a 	add	r19,r19,r20
  80ce58:	003e7e06 	br	80c854 <__divdf3+0x27c>
  80ce5c:	a08003cc 	andi	r2,r20,15
  80ce60:	10800118 	cmpnei	r2,r2,4
  80ce64:	103e7a26 	beq	r2,zero,80c850 <__divdf3+0x278>
  80ce68:	a1000104 	addi	r4,r20,4
  80ce6c:	00bffec4 	movi	r2,-5
  80ce70:	2008d0fa 	srli	r4,r4,3
  80ce74:	1529803a 	cmpltu	r20,r2,r20
  80ce78:	003ff606 	br	80ce54 <__divdf3+0x87c>
  80ce7c:	1011883a 	mov	r8,r2
  80ce80:	003f5a06 	br	80cbec <__divdf3+0x614>
  80ce84:	100f883a 	mov	r7,r2
  80ce88:	003f3906 	br	80cb70 <__divdf3+0x598>
  80ce8c:	89bfb02e 	bgeu	r17,r6,80cd50 <__divdf3+0x778>
  80ce90:	8d63883a 	add	r17,r17,r21
  80ce94:	8d45803a 	cmpltu	r2,r17,r21
  80ce98:	1585883a 	add	r2,r2,r22
  80ce9c:	9cffff84 	addi	r19,r19,-2
  80cea0:	1887883a 	add	r3,r3,r2
  80cea4:	003f0f06 	br	80cae4 <__divdf3+0x50c>
  80cea8:	ad45883a 	add	r2,r21,r21
  80ceac:	156b803a 	cmpltu	r21,r2,r21
  80ceb0:	adad883a 	add	r22,r21,r22
  80ceb4:	358d883a 	add	r6,r6,r22
  80ceb8:	a53fff84 	addi	r20,r20,-2
  80cebc:	102b883a 	mov	r21,r2
  80cec0:	313fdf26 	beq	r6,r4,80ce40 <__divdf3+0x868>
  80cec4:	003f7106 	br	80cc8c <__divdf3+0x6b4>
  80cec8:	a08003cc 	andi	r2,r20,15
  80cecc:	10800118 	cmpnei	r2,r2,4
  80ced0:	000b883a 	mov	r5,zero
  80ced4:	103f8b1e 	bne	r2,zero,80cd04 <__divdf3+0x72c>
  80ced8:	2804927a 	slli	r2,r5,9
  80cedc:	2826977a 	slli	r19,r5,29
  80cee0:	100ad33a 	srli	r5,r2,12
  80cee4:	003fd006 	br	80ce28 <__divdf3+0x850>
  80cee8:	00800434 	movhi	r2,16
  80ceec:	99400234 	orhi	r5,r19,8
  80cef0:	10bfffc4 	addi	r2,r2,-1
  80cef4:	288a703a 	and	r5,r5,r2
  80cef8:	003e7f06 	br	80c8f8 <__divdf3+0x320>
  80cefc:	a8ffea36 	bltu	r21,r3,80cea8 <__divdf3+0x8d0>
  80cf00:	1029883a 	mov	r20,r2
  80cf04:	1d7f611e 	bne	r3,r21,80cc8c <__divdf3+0x6b4>
  80cf08:	003e4e06 	br	80c844 <__divdf3+0x26c>

0080cf0c <__eqdf2>:
  80cf0c:	2810d53a 	srli	r8,r5,20
  80cf10:	3806d53a 	srli	r3,r7,20
  80cf14:	00800434 	movhi	r2,16
  80cf18:	4201ffcc 	andi	r8,r8,2047
  80cf1c:	10bfffc4 	addi	r2,r2,-1
  80cf20:	4241ffd8 	cmpnei	r9,r8,2047
  80cf24:	2814d7fa 	srli	r10,r5,31
  80cf28:	3816d7fa 	srli	r11,r7,31
  80cf2c:	288a703a 	and	r5,r5,r2
  80cf30:	388e703a 	and	r7,r7,r2
  80cf34:	1881ffcc 	andi	r2,r3,2047
  80cf38:	48000626 	beq	r9,zero,80cf54 <__eqdf2+0x48>
  80cf3c:	10c1ffe0 	cmpeqi	r3,r2,2047
  80cf40:	1800021e 	bne	r3,zero,80cf4c <__eqdf2+0x40>
  80cf44:	4080011e 	bne	r8,r2,80cf4c <__eqdf2+0x40>
  80cf48:	29c00826 	beq	r5,r7,80cf6c <__eqdf2+0x60>
  80cf4c:	00800044 	movi	r2,1
  80cf50:	f800283a 	ret
  80cf54:	2906b03a 	or	r3,r5,r4
  80cf58:	183ffc1e 	bne	r3,zero,80cf4c <__eqdf2+0x40>
  80cf5c:	1081ffd8 	cmpnei	r2,r2,2047
  80cf60:	103ffa1e 	bne	r2,zero,80cf4c <__eqdf2+0x40>
  80cf64:	398eb03a 	or	r7,r7,r6
  80cf68:	383ff81e 	bne	r7,zero,80cf4c <__eqdf2+0x40>
  80cf6c:	21bff71e 	bne	r4,r6,80cf4c <__eqdf2+0x40>
  80cf70:	52c00426 	beq	r10,r11,80cf84 <__eqdf2+0x78>
  80cf74:	403ff51e 	bne	r8,zero,80cf4c <__eqdf2+0x40>
  80cf78:	290ab03a 	or	r5,r5,r4
  80cf7c:	2804c03a 	cmpne	r2,r5,zero
  80cf80:	f800283a 	ret
  80cf84:	0005883a 	mov	r2,zero
  80cf88:	f800283a 	ret

0080cf8c <__gedf2>:
  80cf8c:	2810d53a 	srli	r8,r5,20
  80cf90:	3812d53a 	srli	r9,r7,20
  80cf94:	00c00434 	movhi	r3,16
  80cf98:	4201ffcc 	andi	r8,r8,2047
  80cf9c:	18ffffc4 	addi	r3,r3,-1
  80cfa0:	4281ffd8 	cmpnei	r10,r8,2047
  80cfa4:	2816d7fa 	srli	r11,r5,31
  80cfa8:	3804d7fa 	srli	r2,r7,31
  80cfac:	28ca703a 	and	r5,r5,r3
  80cfb0:	38ce703a 	and	r7,r7,r3
  80cfb4:	48c1ffcc 	andi	r3,r9,2047
  80cfb8:	50000b26 	beq	r10,zero,80cfe8 <__gedf2+0x5c>
  80cfbc:	1a41ffd8 	cmpnei	r9,r3,2047
  80cfc0:	48000d26 	beq	r9,zero,80cff8 <__gedf2+0x6c>
  80cfc4:	4000191e 	bne	r8,zero,80d02c <__gedf2+0xa0>
  80cfc8:	2914b03a 	or	r10,r5,r4
  80cfcc:	5013003a 	cmpeq	r9,r10,zero
  80cfd0:	1800131e 	bne	r3,zero,80d020 <__gedf2+0x94>
  80cfd4:	3998b03a 	or	r12,r7,r6
  80cfd8:	6000111e 	bne	r12,zero,80d020 <__gedf2+0x94>
  80cfdc:	50000a1e 	bne	r10,zero,80d008 <__gedf2+0x7c>
  80cfe0:	0005883a 	mov	r2,zero
  80cfe4:	f800283a 	ret
  80cfe8:	2912b03a 	or	r9,r5,r4
  80cfec:	48001e1e 	bne	r9,zero,80d068 <__gedf2+0xdc>
  80cff0:	1a41ffe0 	cmpeqi	r9,r3,2047
  80cff4:	48000d26 	beq	r9,zero,80d02c <__gedf2+0xa0>
  80cff8:	3992b03a 	or	r9,r7,r6
  80cffc:	48001a1e 	bne	r9,zero,80d068 <__gedf2+0xdc>
  80d000:	40000526 	beq	r8,zero,80d018 <__gedf2+0x8c>
  80d004:	58800d26 	beq	r11,r2,80d03c <__gedf2+0xb0>
  80d008:	00800044 	movi	r2,1
  80d00c:	58000626 	beq	r11,zero,80d028 <__gedf2+0x9c>
  80d010:	00bfffc4 	movi	r2,-1
  80d014:	f800283a 	ret
  80d018:	2912b03a 	or	r9,r5,r4
  80d01c:	4813003a 	cmpeq	r9,r9,zero
  80d020:	483ff826 	beq	r9,zero,80d004 <__gedf2+0x78>
  80d024:	103ffa26 	beq	r2,zero,80d010 <__gedf2+0x84>
  80d028:	f800283a 	ret
  80d02c:	183ff51e 	bne	r3,zero,80d004 <__gedf2+0x78>
  80d030:	3992b03a 	or	r9,r7,r6
  80d034:	483ff31e 	bne	r9,zero,80d004 <__gedf2+0x78>
  80d038:	003ff306 	br	80d008 <__gedf2+0x7c>
  80d03c:	1a000716 	blt	r3,r8,80d05c <__gedf2+0xd0>
  80d040:	40fff816 	blt	r8,r3,80d024 <__gedf2+0x98>
  80d044:	397ff036 	bltu	r7,r5,80d008 <__gedf2+0x7c>
  80d048:	29c00926 	beq	r5,r7,80d070 <__gedf2+0xe4>
  80d04c:	29ffe42e 	bgeu	r5,r7,80cfe0 <__gedf2+0x54>
  80d050:	583fef26 	beq	r11,zero,80d010 <__gedf2+0x84>
  80d054:	5805883a 	mov	r2,r11
  80d058:	f800283a 	ret
  80d05c:	103fec1e 	bne	r2,zero,80d010 <__gedf2+0x84>
  80d060:	00800044 	movi	r2,1
  80d064:	f800283a 	ret
  80d068:	00bfff84 	movi	r2,-2
  80d06c:	f800283a 	ret
  80d070:	313fe536 	bltu	r6,r4,80d008 <__gedf2+0x7c>
  80d074:	21bfda2e 	bgeu	r4,r6,80cfe0 <__gedf2+0x54>
  80d078:	003ff506 	br	80d050 <__gedf2+0xc4>

0080d07c <__ledf2>:
  80d07c:	2810d53a 	srli	r8,r5,20
  80d080:	3812d53a 	srli	r9,r7,20
  80d084:	00c00434 	movhi	r3,16
  80d088:	4201ffcc 	andi	r8,r8,2047
  80d08c:	18ffffc4 	addi	r3,r3,-1
  80d090:	4281ffd8 	cmpnei	r10,r8,2047
  80d094:	2816d7fa 	srli	r11,r5,31
  80d098:	3804d7fa 	srli	r2,r7,31
  80d09c:	28ca703a 	and	r5,r5,r3
  80d0a0:	38ce703a 	and	r7,r7,r3
  80d0a4:	48c1ffcc 	andi	r3,r9,2047
  80d0a8:	50000b26 	beq	r10,zero,80d0d8 <__ledf2+0x5c>
  80d0ac:	1a41ffd8 	cmpnei	r9,r3,2047
  80d0b0:	48000d26 	beq	r9,zero,80d0e8 <__ledf2+0x6c>
  80d0b4:	40001b1e 	bne	r8,zero,80d124 <__ledf2+0xa8>
  80d0b8:	2914b03a 	or	r10,r5,r4
  80d0bc:	5013003a 	cmpeq	r9,r10,zero
  80d0c0:	18000e1e 	bne	r3,zero,80d0fc <__ledf2+0x80>
  80d0c4:	3998b03a 	or	r12,r7,r6
  80d0c8:	60000c1e 	bne	r12,zero,80d0fc <__ledf2+0x80>
  80d0cc:	50000d1e 	bne	r10,zero,80d104 <__ledf2+0x88>
  80d0d0:	0005883a 	mov	r2,zero
  80d0d4:	f800283a 	ret
  80d0d8:	2912b03a 	or	r9,r5,r4
  80d0dc:	48000d1e 	bne	r9,zero,80d114 <__ledf2+0x98>
  80d0e0:	1a41ffe0 	cmpeqi	r9,r3,2047
  80d0e4:	48000f26 	beq	r9,zero,80d124 <__ledf2+0xa8>
  80d0e8:	3992b03a 	or	r9,r7,r6
  80d0ec:	4800091e 	bne	r9,zero,80d114 <__ledf2+0x98>
  80d0f0:	4000031e 	bne	r8,zero,80d100 <__ledf2+0x84>
  80d0f4:	2912b03a 	or	r9,r5,r4
  80d0f8:	4813003a 	cmpeq	r9,r9,zero
  80d0fc:	4800071e 	bne	r9,zero,80d11c <__ledf2+0xa0>
  80d100:	58800c26 	beq	r11,r2,80d134 <__ledf2+0xb8>
  80d104:	00800044 	movi	r2,1
  80d108:	58000526 	beq	r11,zero,80d120 <__ledf2+0xa4>
  80d10c:	00bfffc4 	movi	r2,-1
  80d110:	f800283a 	ret
  80d114:	00800084 	movi	r2,2
  80d118:	f800283a 	ret
  80d11c:	103ffb26 	beq	r2,zero,80d10c <__ledf2+0x90>
  80d120:	f800283a 	ret
  80d124:	183ff61e 	bne	r3,zero,80d100 <__ledf2+0x84>
  80d128:	3992b03a 	or	r9,r7,r6
  80d12c:	483ff41e 	bne	r9,zero,80d100 <__ledf2+0x84>
  80d130:	003ff406 	br	80d104 <__ledf2+0x88>
  80d134:	1a00030e 	bge	r3,r8,80d144 <__ledf2+0xc8>
  80d138:	103ff41e 	bne	r2,zero,80d10c <__ledf2+0x90>
  80d13c:	00800044 	movi	r2,1
  80d140:	f800283a 	ret
  80d144:	40fff516 	blt	r8,r3,80d11c <__ledf2+0xa0>
  80d148:	397fee36 	bltu	r7,r5,80d104 <__ledf2+0x88>
  80d14c:	29c00426 	beq	r5,r7,80d160 <__ledf2+0xe4>
  80d150:	29ffdf2e 	bgeu	r5,r7,80d0d0 <__ledf2+0x54>
  80d154:	583fed26 	beq	r11,zero,80d10c <__ledf2+0x90>
  80d158:	5805883a 	mov	r2,r11
  80d15c:	f800283a 	ret
  80d160:	313fe836 	bltu	r6,r4,80d104 <__ledf2+0x88>
  80d164:	21bfda2e 	bgeu	r4,r6,80d0d0 <__ledf2+0x54>
  80d168:	003ffa06 	br	80d154 <__ledf2+0xd8>

0080d16c <__subdf3>:
  80d16c:	00c00434 	movhi	r3,16
  80d170:	3812d53a 	srli	r9,r7,20
  80d174:	18ffffc4 	addi	r3,r3,-1
  80d178:	defffb04 	addi	sp,sp,-20
  80d17c:	28d0703a 	and	r8,r5,r3
  80d180:	38c6703a 	and	r3,r7,r3
  80d184:	2804d7fa 	srli	r2,r5,31
  80d188:	401090fa 	slli	r8,r8,3
  80d18c:	280ad53a 	srli	r5,r5,20
  80d190:	180690fa 	slli	r3,r3,3
  80d194:	dcc00315 	stw	r19,12(sp)
  80d198:	dc400115 	stw	r17,4(sp)
  80d19c:	2026d77a 	srli	r19,r4,29
  80d1a0:	3022d77a 	srli	r17,r6,29
  80d1a4:	4b41ffcc 	andi	r13,r9,2047
  80d1a8:	dc800215 	stw	r18,8(sp)
  80d1ac:	dc000015 	stw	r16,0(sp)
  80d1b0:	dfc00415 	stw	ra,16(sp)
  80d1b4:	6a41ffe0 	cmpeqi	r9,r13,2047
  80d1b8:	1025883a 	mov	r18,r2
  80d1bc:	201690fa 	slli	r11,r4,3
  80d1c0:	380ed7fa 	srli	r7,r7,31
  80d1c4:	301490fa 	slli	r10,r6,3
  80d1c8:	2c01ffcc 	andi	r16,r5,2047
  80d1cc:	10803fcc 	andi	r2,r2,255
  80d1d0:	9a10b03a 	or	r8,r19,r8
  80d1d4:	88c6b03a 	or	r3,r17,r3
  80d1d8:	48006e1e 	bne	r9,zero,80d394 <__subdf3+0x228>
  80d1dc:	3a40005c 	xori	r9,r7,1
  80d1e0:	834bc83a 	sub	r5,r16,r13
  80d1e4:	12405726 	beq	r2,r9,80d344 <__subdf3+0x1d8>
  80d1e8:	01406f0e 	bge	zero,r5,80d3a8 <__subdf3+0x23c>
  80d1ec:	68007a26 	beq	r13,zero,80d3d8 <__subdf3+0x26c>
  80d1f0:	8081ffd8 	cmpnei	r2,r16,2047
  80d1f4:	10019f26 	beq	r2,zero,80d874 <__subdf3+0x708>
  80d1f8:	18c02034 	orhi	r3,r3,128
  80d1fc:	28800e48 	cmpgei	r2,r5,57
  80d200:	1000f91e 	bne	r2,zero,80d5e8 <__subdf3+0x47c>
  80d204:	28800808 	cmpgei	r2,r5,32
  80d208:	1001451e 	bne	r2,zero,80d720 <__subdf3+0x5b4>
  80d20c:	00800804 	movi	r2,32
  80d210:	1145c83a 	sub	r2,r2,r5
  80d214:	18a2983a 	sll	r17,r3,r2
  80d218:	5148d83a 	srl	r4,r10,r5
  80d21c:	5084983a 	sll	r2,r10,r2
  80d220:	1946d83a 	srl	r3,r3,r5
  80d224:	8922b03a 	or	r17,r17,r4
  80d228:	1004c03a 	cmpne	r2,r2,zero
  80d22c:	88a2b03a 	or	r17,r17,r2
  80d230:	40d1c83a 	sub	r8,r8,r3
  80d234:	5c63c83a 	sub	r17,r11,r17
  80d238:	5c49803a 	cmpltu	r4,r11,r17
  80d23c:	4109c83a 	sub	r4,r8,r4
  80d240:	2080202c 	andhi	r2,r4,128
  80d244:	1000a526 	beq	r2,zero,80d4dc <__subdf3+0x370>
  80d248:	04c02034 	movhi	r19,128
  80d24c:	9cffffc4 	addi	r19,r19,-1
  80d250:	24e6703a 	and	r19,r4,r19
  80d254:	9800db26 	beq	r19,zero,80d5c4 <__subdf3+0x458>
  80d258:	9809883a 	mov	r4,r19
  80d25c:	08016840 	call	801684 <__clzsi2>
  80d260:	117ffe04 	addi	r5,r2,-8
  80d264:	01000804 	movi	r4,32
  80d268:	2149c83a 	sub	r4,r4,r5
  80d26c:	8906d83a 	srl	r3,r17,r4
  80d270:	9948983a 	sll	r4,r19,r5
  80d274:	8962983a 	sll	r17,r17,r5
  80d278:	1908b03a 	or	r4,r3,r4
  80d27c:	2c00cc16 	blt	r5,r16,80d5b0 <__subdf3+0x444>
  80d280:	2c0bc83a 	sub	r5,r5,r16
  80d284:	28c00044 	addi	r3,r5,1
  80d288:	18800808 	cmpgei	r2,r3,32
  80d28c:	1001171e 	bne	r2,zero,80d6ec <__subdf3+0x580>
  80d290:	00800804 	movi	r2,32
  80d294:	10c5c83a 	sub	r2,r2,r3
  80d298:	88cad83a 	srl	r5,r17,r3
  80d29c:	88a2983a 	sll	r17,r17,r2
  80d2a0:	2084983a 	sll	r2,r4,r2
  80d2a4:	20c8d83a 	srl	r4,r4,r3
  80d2a8:	8822c03a 	cmpne	r17,r17,zero
  80d2ac:	1144b03a 	or	r2,r2,r5
  80d2b0:	1462b03a 	or	r17,r2,r17
  80d2b4:	0021883a 	mov	r16,zero
  80d2b8:	888001cc 	andi	r2,r17,7
  80d2bc:	10000726 	beq	r2,zero,80d2dc <__subdf3+0x170>
  80d2c0:	888003cc 	andi	r2,r17,15
  80d2c4:	10800120 	cmpeqi	r2,r2,4
  80d2c8:	1000041e 	bne	r2,zero,80d2dc <__subdf3+0x170>
  80d2cc:	88c00104 	addi	r3,r17,4
  80d2d0:	1c63803a 	cmpltu	r17,r3,r17
  80d2d4:	2449883a 	add	r4,r4,r17
  80d2d8:	1823883a 	mov	r17,r3
  80d2dc:	2080202c 	andhi	r2,r4,128
  80d2e0:	10008026 	beq	r2,zero,80d4e4 <__subdf3+0x378>
  80d2e4:	81400044 	addi	r5,r16,1
  80d2e8:	2881ffe0 	cmpeqi	r2,r5,2047
  80d2ec:	2941ffcc 	andi	r5,r5,2047
  80d2f0:	1000921e 	bne	r2,zero,80d53c <__subdf3+0x3d0>
  80d2f4:	00bfe034 	movhi	r2,65408
  80d2f8:	10bfffc4 	addi	r2,r2,-1
  80d2fc:	2088703a 	and	r4,r4,r2
  80d300:	2006927a 	slli	r3,r4,9
  80d304:	8822d0fa 	srli	r17,r17,3
  80d308:	2004977a 	slli	r2,r4,29
  80d30c:	1806d33a 	srli	r3,r3,12
  80d310:	1444b03a 	or	r2,r2,r17
  80d314:	280a953a 	slli	r5,r5,20
  80d318:	94803fcc 	andi	r18,r18,255
  80d31c:	902497fa 	slli	r18,r18,31
  80d320:	28c6b03a 	or	r3,r5,r3
  80d324:	1c86b03a 	or	r3,r3,r18
  80d328:	dfc00417 	ldw	ra,16(sp)
  80d32c:	dcc00317 	ldw	r19,12(sp)
  80d330:	dc800217 	ldw	r18,8(sp)
  80d334:	dc400117 	ldw	r17,4(sp)
  80d338:	dc000017 	ldw	r16,0(sp)
  80d33c:	dec00504 	addi	sp,sp,20
  80d340:	f800283a 	ret
  80d344:	01402e0e 	bge	zero,r5,80d400 <__subdf3+0x294>
  80d348:	68005526 	beq	r13,zero,80d4a0 <__subdf3+0x334>
  80d34c:	8081ffd8 	cmpnei	r2,r16,2047
  80d350:	10013b26 	beq	r2,zero,80d840 <__subdf3+0x6d4>
  80d354:	18c02034 	orhi	r3,r3,128
  80d358:	28800e48 	cmpgei	r2,r5,57
  80d35c:	10006d1e 	bne	r2,zero,80d514 <__subdf3+0x3a8>
  80d360:	28800808 	cmpgei	r2,r5,32
  80d364:	10010826 	beq	r2,zero,80d788 <__subdf3+0x61c>
  80d368:	2c7ff804 	addi	r17,r5,-32
  80d36c:	29000820 	cmpeqi	r4,r5,32
  80d370:	1c44d83a 	srl	r2,r3,r17
  80d374:	2000041e 	bne	r4,zero,80d388 <__subdf3+0x21c>
  80d378:	01001004 	movi	r4,64
  80d37c:	214bc83a 	sub	r5,r4,r5
  80d380:	1946983a 	sll	r3,r3,r5
  80d384:	50d4b03a 	or	r10,r10,r3
  80d388:	5022c03a 	cmpne	r17,r10,zero
  80d38c:	88a2b03a 	or	r17,r17,r2
  80d390:	00006206 	br	80d51c <__subdf3+0x3b0>
  80d394:	1a98b03a 	or	r12,r3,r10
  80d398:	817e0044 	addi	r5,r16,-2047
  80d39c:	6000161e 	bne	r12,zero,80d3f8 <__subdf3+0x28c>
  80d3a0:	3a40005c 	xori	r9,r7,1
  80d3a4:	12401626 	beq	r2,r9,80d400 <__subdf3+0x294>
  80d3a8:	28002e26 	beq	r5,zero,80d464 <__subdf3+0x2f8>
  80d3ac:	6c0bc83a 	sub	r5,r13,r16
  80d3b0:	4825883a 	mov	r18,r9
  80d3b4:	80009e1e 	bne	r16,zero,80d630 <__subdf3+0x4c4>
  80d3b8:	42c4b03a 	or	r2,r8,r11
  80d3bc:	10010926 	beq	r2,zero,80d7e4 <__subdf3+0x678>
  80d3c0:	28bfffc4 	addi	r2,r5,-1
  80d3c4:	10016826 	beq	r2,zero,80d968 <__subdf3+0x7fc>
  80d3c8:	2941ffd8 	cmpnei	r5,r5,2047
  80d3cc:	28015f26 	beq	r5,zero,80d94c <__subdf3+0x7e0>
  80d3d0:	100b883a 	mov	r5,r2
  80d3d4:	00009906 	br	80d63c <__subdf3+0x4d0>
  80d3d8:	1a84b03a 	or	r2,r3,r10
  80d3dc:	1000b126 	beq	r2,zero,80d6a4 <__subdf3+0x538>
  80d3e0:	28bfffc4 	addi	r2,r5,-1
  80d3e4:	10011d26 	beq	r2,zero,80d85c <__subdf3+0x6f0>
  80d3e8:	2941ffd8 	cmpnei	r5,r5,2047
  80d3ec:	28011426 	beq	r5,zero,80d840 <__subdf3+0x6d4>
  80d3f0:	100b883a 	mov	r5,r2
  80d3f4:	003f8106 	br	80d1fc <__subdf3+0x90>
  80d3f8:	3a403fcc 	andi	r9,r7,255
  80d3fc:	11ffea1e 	bne	r2,r7,80d3a8 <__subdf3+0x23c>
  80d400:	28007c26 	beq	r5,zero,80d5f4 <__subdf3+0x488>
  80d404:	6c0bc83a 	sub	r5,r13,r16
  80d408:	8000d726 	beq	r16,zero,80d768 <__subdf3+0x5fc>
  80d40c:	6881ffd8 	cmpnei	r2,r13,2047
  80d410:	10012626 	beq	r2,zero,80d8ac <__subdf3+0x740>
  80d414:	42002034 	orhi	r8,r8,128
  80d418:	28800e48 	cmpgei	r2,r5,57
  80d41c:	10012a1e 	bne	r2,zero,80d8c8 <__subdf3+0x75c>
  80d420:	28800808 	cmpgei	r2,r5,32
  80d424:	1001821e 	bne	r2,zero,80da30 <__subdf3+0x8c4>
  80d428:	00800804 	movi	r2,32
  80d42c:	1145c83a 	sub	r2,r2,r5
  80d430:	40a2983a 	sll	r17,r8,r2
  80d434:	5948d83a 	srl	r4,r11,r5
  80d438:	5884983a 	sll	r2,r11,r2
  80d43c:	4150d83a 	srl	r8,r8,r5
  80d440:	8922b03a 	or	r17,r17,r4
  80d444:	1004c03a 	cmpne	r2,r2,zero
  80d448:	88a2b03a 	or	r17,r17,r2
  80d44c:	1a07883a 	add	r3,r3,r8
  80d450:	8aa3883a 	add	r17,r17,r10
  80d454:	8a89803a 	cmpltu	r4,r17,r10
  80d458:	20c9883a 	add	r4,r4,r3
  80d45c:	6821883a 	mov	r16,r13
  80d460:	00003106 	br	80d528 <__subdf3+0x3bc>
  80d464:	80800044 	addi	r2,r16,1
  80d468:	1081ff8c 	andi	r2,r2,2046
  80d46c:	1000821e 	bne	r2,zero,80d678 <__subdf3+0x50c>
  80d470:	42ceb03a 	or	r7,r8,r11
  80d474:	1a84b03a 	or	r2,r3,r10
  80d478:	8000e11e 	bne	r16,zero,80d800 <__subdf3+0x694>
  80d47c:	38012a26 	beq	r7,zero,80d928 <__subdf3+0x7bc>
  80d480:	1001461e 	bne	r2,zero,80d99c <__subdf3+0x830>
  80d484:	4004977a 	slli	r2,r8,29
  80d488:	00c80034 	movhi	r3,8192
  80d48c:	18ffffc4 	addi	r3,r3,-1
  80d490:	20c8703a 	and	r4,r4,r3
  80d494:	4010d0fa 	srli	r8,r8,3
  80d498:	1104b03a 	or	r2,r2,r4
  80d49c:	00001806 	br	80d500 <__subdf3+0x394>
  80d4a0:	1a84b03a 	or	r2,r3,r10
  80d4a4:	1000fa26 	beq	r2,zero,80d890 <__subdf3+0x724>
  80d4a8:	28bfffc4 	addi	r2,r5,-1
  80d4ac:	10000426 	beq	r2,zero,80d4c0 <__subdf3+0x354>
  80d4b0:	2941ffd8 	cmpnei	r5,r5,2047
  80d4b4:	28013226 	beq	r5,zero,80d980 <__subdf3+0x814>
  80d4b8:	100b883a 	mov	r5,r2
  80d4bc:	003fa606 	br	80d358 <__subdf3+0x1ec>
  80d4c0:	5aa3883a 	add	r17,r11,r10
  80d4c4:	40c9883a 	add	r4,r8,r3
  80d4c8:	8ad7803a 	cmpltu	r11,r17,r11
  80d4cc:	22c9883a 	add	r4,r4,r11
  80d4d0:	2080202c 	andhi	r2,r4,128
  80d4d4:	10007a1e 	bne	r2,zero,80d6c0 <__subdf3+0x554>
  80d4d8:	04000044 	movi	r16,1
  80d4dc:	888001cc 	andi	r2,r17,7
  80d4e0:	103f771e 	bne	r2,zero,80d2c0 <__subdf3+0x154>
  80d4e4:	8822d0fa 	srli	r17,r17,3
  80d4e8:	2004977a 	slli	r2,r4,29
  80d4ec:	2010d0fa 	srli	r8,r4,3
  80d4f0:	800b883a 	mov	r5,r16
  80d4f4:	8884b03a 	or	r2,r17,r2
  80d4f8:	28c1ffe0 	cmpeqi	r3,r5,2047
  80d4fc:	1800241e 	bne	r3,zero,80d590 <__subdf3+0x424>
  80d500:	00c00434 	movhi	r3,16
  80d504:	18ffffc4 	addi	r3,r3,-1
  80d508:	40c6703a 	and	r3,r8,r3
  80d50c:	2941ffcc 	andi	r5,r5,2047
  80d510:	003f8006 	br	80d314 <__subdf3+0x1a8>
  80d514:	1aa2b03a 	or	r17,r3,r10
  80d518:	8822c03a 	cmpne	r17,r17,zero
  80d51c:	8ae3883a 	add	r17,r17,r11
  80d520:	8ac9803a 	cmpltu	r4,r17,r11
  80d524:	2209883a 	add	r4,r4,r8
  80d528:	2080202c 	andhi	r2,r4,128
  80d52c:	103feb26 	beq	r2,zero,80d4dc <__subdf3+0x370>
  80d530:	84000044 	addi	r16,r16,1
  80d534:	8081ffe0 	cmpeqi	r2,r16,2047
  80d538:	10006226 	beq	r2,zero,80d6c4 <__subdf3+0x558>
  80d53c:	0141ffc4 	movi	r5,2047
  80d540:	0007883a 	mov	r3,zero
  80d544:	0005883a 	mov	r2,zero
  80d548:	003f7206 	br	80d314 <__subdf3+0x1a8>
  80d54c:	400e977a 	slli	r7,r8,29
  80d550:	4010d0fa 	srli	r8,r8,3
  80d554:	1000ef26 	beq	r2,zero,80d914 <__subdf3+0x7a8>
  80d558:	01480034 	movhi	r5,8192
  80d55c:	297fffc4 	addi	r5,r5,-1
  80d560:	2144703a 	and	r2,r4,r5
  80d564:	4100022c 	andhi	r4,r8,8
  80d568:	11c4b03a 	or	r2,r2,r7
  80d56c:	20000826 	beq	r4,zero,80d590 <__subdf3+0x424>
  80d570:	1808d0fa 	srli	r4,r3,3
  80d574:	21c0022c 	andhi	r7,r4,8
  80d578:	3800051e 	bne	r7,zero,80d590 <__subdf3+0x424>
  80d57c:	1804977a 	slli	r2,r3,29
  80d580:	314c703a 	and	r6,r6,r5
  80d584:	4825883a 	mov	r18,r9
  80d588:	3084b03a 	or	r2,r6,r2
  80d58c:	2011883a 	mov	r8,r4
  80d590:	1206b03a 	or	r3,r2,r8
  80d594:	18013e26 	beq	r3,zero,80da90 <__subdf3+0x924>
  80d598:	01000434 	movhi	r4,16
  80d59c:	40c00234 	orhi	r3,r8,8
  80d5a0:	213fffc4 	addi	r4,r4,-1
  80d5a4:	1906703a 	and	r3,r3,r4
  80d5a8:	0141ffc4 	movi	r5,2047
  80d5ac:	003f5906 	br	80d314 <__subdf3+0x1a8>
  80d5b0:	00ffe034 	movhi	r3,65408
  80d5b4:	18ffffc4 	addi	r3,r3,-1
  80d5b8:	8161c83a 	sub	r16,r16,r5
  80d5bc:	20c8703a 	and	r4,r4,r3
  80d5c0:	003f3d06 	br	80d2b8 <__subdf3+0x14c>
  80d5c4:	8809883a 	mov	r4,r17
  80d5c8:	08016840 	call	801684 <__clzsi2>
  80d5cc:	11400604 	addi	r5,r2,24
  80d5d0:	28c00808 	cmpgei	r3,r5,32
  80d5d4:	183f2326 	beq	r3,zero,80d264 <__subdf3+0xf8>
  80d5d8:	113ffe04 	addi	r4,r2,-8
  80d5dc:	8908983a 	sll	r4,r17,r4
  80d5e0:	0023883a 	mov	r17,zero
  80d5e4:	003f2506 	br	80d27c <__subdf3+0x110>
  80d5e8:	1aa2b03a 	or	r17,r3,r10
  80d5ec:	8822c03a 	cmpne	r17,r17,zero
  80d5f0:	003f1006 	br	80d234 <__subdf3+0xc8>
  80d5f4:	80800044 	addi	r2,r16,1
  80d5f8:	11c1ff8c 	andi	r7,r2,2046
  80d5fc:	38006d1e 	bne	r7,zero,80d7b4 <__subdf3+0x648>
  80d600:	42c4b03a 	or	r2,r8,r11
  80d604:	8000be1e 	bne	r16,zero,80d900 <__subdf3+0x794>
  80d608:	1000f726 	beq	r2,zero,80d9e8 <__subdf3+0x87c>
  80d60c:	1a84b03a 	or	r2,r3,r10
  80d610:	1000fc1e 	bne	r2,zero,80da04 <__subdf3+0x898>
  80d614:	4006977a 	slli	r3,r8,29
  80d618:	00880034 	movhi	r2,8192
  80d61c:	10bfffc4 	addi	r2,r2,-1
  80d620:	2084703a 	and	r2,r4,r2
  80d624:	4010d0fa 	srli	r8,r8,3
  80d628:	10c4b03a 	or	r2,r2,r3
  80d62c:	003fb406 	br	80d500 <__subdf3+0x394>
  80d630:	6881ffd8 	cmpnei	r2,r13,2047
  80d634:	10009d26 	beq	r2,zero,80d8ac <__subdf3+0x740>
  80d638:	42002034 	orhi	r8,r8,128
  80d63c:	28800e48 	cmpgei	r2,r5,57
  80d640:	1000421e 	bne	r2,zero,80d74c <__subdf3+0x5e0>
  80d644:	28800808 	cmpgei	r2,r5,32
  80d648:	1000a21e 	bne	r2,zero,80d8d4 <__subdf3+0x768>
  80d64c:	00800804 	movi	r2,32
  80d650:	1145c83a 	sub	r2,r2,r5
  80d654:	40a2983a 	sll	r17,r8,r2
  80d658:	5948d83a 	srl	r4,r11,r5
  80d65c:	5896983a 	sll	r11,r11,r2
  80d660:	4150d83a 	srl	r8,r8,r5
  80d664:	8922b03a 	or	r17,r17,r4
  80d668:	5816c03a 	cmpne	r11,r11,zero
  80d66c:	8ae2b03a 	or	r17,r17,r11
  80d670:	1a07c83a 	sub	r3,r3,r8
  80d674:	00003706 	br	80d754 <__subdf3+0x5e8>
  80d678:	5aa3c83a 	sub	r17,r11,r10
  80d67c:	40e7c83a 	sub	r19,r8,r3
  80d680:	5c49803a 	cmpltu	r4,r11,r17
  80d684:	9927c83a 	sub	r19,r19,r4
  80d688:	9880202c 	andhi	r2,r19,128
  80d68c:	1000661e 	bne	r2,zero,80d828 <__subdf3+0x6bc>
  80d690:	8cc4b03a 	or	r2,r17,r19
  80d694:	103eef1e 	bne	r2,zero,80d254 <__subdf3+0xe8>
  80d698:	0011883a 	mov	r8,zero
  80d69c:	0025883a 	mov	r18,zero
  80d6a0:	003f9706 	br	80d500 <__subdf3+0x394>
  80d6a4:	4022977a 	slli	r17,r8,29
  80d6a8:	00880034 	movhi	r2,8192
  80d6ac:	10bfffc4 	addi	r2,r2,-1
  80d6b0:	2088703a 	and	r4,r4,r2
  80d6b4:	4010d0fa 	srli	r8,r8,3
  80d6b8:	2444b03a 	or	r2,r4,r17
  80d6bc:	003f8e06 	br	80d4f8 <__subdf3+0x38c>
  80d6c0:	04000084 	movi	r16,2
  80d6c4:	00bfe034 	movhi	r2,65408
  80d6c8:	10bfffc4 	addi	r2,r2,-1
  80d6cc:	8806d07a 	srli	r3,r17,1
  80d6d0:	2088703a 	and	r4,r4,r2
  80d6d4:	200497fa 	slli	r2,r4,31
  80d6d8:	8c40004c 	andi	r17,r17,1
  80d6dc:	1c62b03a 	or	r17,r3,r17
  80d6e0:	2008d07a 	srli	r4,r4,1
  80d6e4:	1462b03a 	or	r17,r2,r17
  80d6e8:	003ef306 	br	80d2b8 <__subdf3+0x14c>
  80d6ec:	297ff844 	addi	r5,r5,-31
  80d6f0:	18800820 	cmpeqi	r2,r3,32
  80d6f4:	214ad83a 	srl	r5,r4,r5
  80d6f8:	1000041e 	bne	r2,zero,80d70c <__subdf3+0x5a0>
  80d6fc:	00801004 	movi	r2,64
  80d700:	10c7c83a 	sub	r3,r2,r3
  80d704:	20c8983a 	sll	r4,r4,r3
  80d708:	8922b03a 	or	r17,r17,r4
  80d70c:	8822c03a 	cmpne	r17,r17,zero
  80d710:	8962b03a 	or	r17,r17,r5
  80d714:	0009883a 	mov	r4,zero
  80d718:	0021883a 	mov	r16,zero
  80d71c:	003f6f06 	br	80d4dc <__subdf3+0x370>
  80d720:	2c7ff804 	addi	r17,r5,-32
  80d724:	29000820 	cmpeqi	r4,r5,32
  80d728:	1c44d83a 	srl	r2,r3,r17
  80d72c:	2000041e 	bne	r4,zero,80d740 <__subdf3+0x5d4>
  80d730:	01001004 	movi	r4,64
  80d734:	214bc83a 	sub	r5,r4,r5
  80d738:	1946983a 	sll	r3,r3,r5
  80d73c:	50d4b03a 	or	r10,r10,r3
  80d740:	5022c03a 	cmpne	r17,r10,zero
  80d744:	88a2b03a 	or	r17,r17,r2
  80d748:	003eba06 	br	80d234 <__subdf3+0xc8>
  80d74c:	42d0b03a 	or	r8,r8,r11
  80d750:	4022c03a 	cmpne	r17,r8,zero
  80d754:	5463c83a 	sub	r17,r10,r17
  80d758:	5449803a 	cmpltu	r4,r10,r17
  80d75c:	1909c83a 	sub	r4,r3,r4
  80d760:	6821883a 	mov	r16,r13
  80d764:	003eb606 	br	80d240 <__subdf3+0xd4>
  80d768:	42c4b03a 	or	r2,r8,r11
  80d76c:	10009726 	beq	r2,zero,80d9cc <__subdf3+0x860>
  80d770:	28bfffc4 	addi	r2,r5,-1
  80d774:	1000b926 	beq	r2,zero,80da5c <__subdf3+0x8f0>
  80d778:	2941ffd8 	cmpnei	r5,r5,2047
  80d77c:	28007326 	beq	r5,zero,80d94c <__subdf3+0x7e0>
  80d780:	100b883a 	mov	r5,r2
  80d784:	003f2406 	br	80d418 <__subdf3+0x2ac>
  80d788:	00800804 	movi	r2,32
  80d78c:	1145c83a 	sub	r2,r2,r5
  80d790:	18a2983a 	sll	r17,r3,r2
  80d794:	5148d83a 	srl	r4,r10,r5
  80d798:	5084983a 	sll	r2,r10,r2
  80d79c:	1946d83a 	srl	r3,r3,r5
  80d7a0:	8922b03a 	or	r17,r17,r4
  80d7a4:	1004c03a 	cmpne	r2,r2,zero
  80d7a8:	88a2b03a 	or	r17,r17,r2
  80d7ac:	40d1883a 	add	r8,r8,r3
  80d7b0:	003f5a06 	br	80d51c <__subdf3+0x3b0>
  80d7b4:	1101ffe0 	cmpeqi	r4,r2,2047
  80d7b8:	203f601e 	bne	r4,zero,80d53c <__subdf3+0x3d0>
  80d7bc:	5a95883a 	add	r10,r11,r10
  80d7c0:	52d7803a 	cmpltu	r11,r10,r11
  80d7c4:	40c9883a 	add	r4,r8,r3
  80d7c8:	22c9883a 	add	r4,r4,r11
  80d7cc:	202297fa 	slli	r17,r4,31
  80d7d0:	5014d07a 	srli	r10,r10,1
  80d7d4:	2008d07a 	srli	r4,r4,1
  80d7d8:	1021883a 	mov	r16,r2
  80d7dc:	8aa2b03a 	or	r17,r17,r10
  80d7e0:	003f3e06 	br	80d4dc <__subdf3+0x370>
  80d7e4:	1808977a 	slli	r4,r3,29
  80d7e8:	00880034 	movhi	r2,8192
  80d7ec:	10bfffc4 	addi	r2,r2,-1
  80d7f0:	308c703a 	and	r6,r6,r2
  80d7f4:	1810d0fa 	srli	r8,r3,3
  80d7f8:	3104b03a 	or	r2,r6,r4
  80d7fc:	003f3e06 	br	80d4f8 <__subdf3+0x38c>
  80d800:	383f521e 	bne	r7,zero,80d54c <__subdf3+0x3e0>
  80d804:	10009d26 	beq	r2,zero,80da7c <__subdf3+0x910>
  80d808:	1808977a 	slli	r4,r3,29
  80d80c:	00880034 	movhi	r2,8192
  80d810:	10bfffc4 	addi	r2,r2,-1
  80d814:	3084703a 	and	r2,r6,r2
  80d818:	1810d0fa 	srli	r8,r3,3
  80d81c:	1104b03a 	or	r2,r2,r4
  80d820:	4825883a 	mov	r18,r9
  80d824:	003f5a06 	br	80d590 <__subdf3+0x424>
  80d828:	52e3c83a 	sub	r17,r10,r11
  80d82c:	1a09c83a 	sub	r4,r3,r8
  80d830:	5467803a 	cmpltu	r19,r10,r17
  80d834:	24e7c83a 	sub	r19,r4,r19
  80d838:	4825883a 	mov	r18,r9
  80d83c:	003e8506 	br	80d254 <__subdf3+0xe8>
  80d840:	4022977a 	slli	r17,r8,29
  80d844:	00880034 	movhi	r2,8192
  80d848:	10bfffc4 	addi	r2,r2,-1
  80d84c:	2088703a 	and	r4,r4,r2
  80d850:	4010d0fa 	srli	r8,r8,3
  80d854:	2444b03a 	or	r2,r4,r17
  80d858:	003f4d06 	br	80d590 <__subdf3+0x424>
  80d85c:	5aa3c83a 	sub	r17,r11,r10
  80d860:	40c9c83a 	sub	r4,r8,r3
  80d864:	5c57803a 	cmpltu	r11,r11,r17
  80d868:	22c9c83a 	sub	r4,r4,r11
  80d86c:	04000044 	movi	r16,1
  80d870:	003e7306 	br	80d240 <__subdf3+0xd4>
  80d874:	4004977a 	slli	r2,r8,29
  80d878:	00c80034 	movhi	r3,8192
  80d87c:	18ffffc4 	addi	r3,r3,-1
  80d880:	20c8703a 	and	r4,r4,r3
  80d884:	4010d0fa 	srli	r8,r8,3
  80d888:	1104b03a 	or	r2,r2,r4
  80d88c:	003f4006 	br	80d590 <__subdf3+0x424>
  80d890:	4004977a 	slli	r2,r8,29
  80d894:	00c80034 	movhi	r3,8192
  80d898:	18ffffc4 	addi	r3,r3,-1
  80d89c:	20c8703a 	and	r4,r4,r3
  80d8a0:	4010d0fa 	srli	r8,r8,3
  80d8a4:	1104b03a 	or	r2,r2,r4
  80d8a8:	003f1306 	br	80d4f8 <__subdf3+0x38c>
  80d8ac:	1804977a 	slli	r2,r3,29
  80d8b0:	01080034 	movhi	r4,8192
  80d8b4:	213fffc4 	addi	r4,r4,-1
  80d8b8:	310c703a 	and	r6,r6,r4
  80d8bc:	1810d0fa 	srli	r8,r3,3
  80d8c0:	1184b03a 	or	r2,r2,r6
  80d8c4:	003f3206 	br	80d590 <__subdf3+0x424>
  80d8c8:	42d0b03a 	or	r8,r8,r11
  80d8cc:	4022c03a 	cmpne	r17,r8,zero
  80d8d0:	003edf06 	br	80d450 <__subdf3+0x2e4>
  80d8d4:	2c7ff804 	addi	r17,r5,-32
  80d8d8:	29000820 	cmpeqi	r4,r5,32
  80d8dc:	4444d83a 	srl	r2,r8,r17
  80d8e0:	2000041e 	bne	r4,zero,80d8f4 <__subdf3+0x788>
  80d8e4:	01001004 	movi	r4,64
  80d8e8:	214bc83a 	sub	r5,r4,r5
  80d8ec:	4150983a 	sll	r8,r8,r5
  80d8f0:	5a16b03a 	or	r11,r11,r8
  80d8f4:	5822c03a 	cmpne	r17,r11,zero
  80d8f8:	88a2b03a 	or	r17,r17,r2
  80d8fc:	003f9506 	br	80d754 <__subdf3+0x5e8>
  80d900:	103fea26 	beq	r2,zero,80d8ac <__subdf3+0x740>
  80d904:	1a94b03a 	or	r10,r3,r10
  80d908:	400e977a 	slli	r7,r8,29
  80d90c:	4010d0fa 	srli	r8,r8,3
  80d910:	503f111e 	bne	r10,zero,80d558 <__subdf3+0x3ec>
  80d914:	00880034 	movhi	r2,8192
  80d918:	10bfffc4 	addi	r2,r2,-1
  80d91c:	2084703a 	and	r2,r4,r2
  80d920:	11c4b03a 	or	r2,r2,r7
  80d924:	003f1a06 	br	80d590 <__subdf3+0x424>
  80d928:	103f5b26 	beq	r2,zero,80d698 <__subdf3+0x52c>
  80d92c:	1804977a 	slli	r2,r3,29
  80d930:	01080034 	movhi	r4,8192
  80d934:	213fffc4 	addi	r4,r4,-1
  80d938:	310c703a 	and	r6,r6,r4
  80d93c:	1810d0fa 	srli	r8,r3,3
  80d940:	1184b03a 	or	r2,r2,r6
  80d944:	4825883a 	mov	r18,r9
  80d948:	003eed06 	br	80d500 <__subdf3+0x394>
  80d94c:	1808977a 	slli	r4,r3,29
  80d950:	00880034 	movhi	r2,8192
  80d954:	10bfffc4 	addi	r2,r2,-1
  80d958:	3084703a 	and	r2,r6,r2
  80d95c:	1810d0fa 	srli	r8,r3,3
  80d960:	1104b03a 	or	r2,r2,r4
  80d964:	003f0a06 	br	80d590 <__subdf3+0x424>
  80d968:	52e3c83a 	sub	r17,r10,r11
  80d96c:	1a09c83a 	sub	r4,r3,r8
  80d970:	5455803a 	cmpltu	r10,r10,r17
  80d974:	2289c83a 	sub	r4,r4,r10
  80d978:	04000044 	movi	r16,1
  80d97c:	003e3006 	br	80d240 <__subdf3+0xd4>
  80d980:	4006977a 	slli	r3,r8,29
  80d984:	00880034 	movhi	r2,8192
  80d988:	10bfffc4 	addi	r2,r2,-1
  80d98c:	2084703a 	and	r2,r4,r2
  80d990:	4010d0fa 	srli	r8,r8,3
  80d994:	10c4b03a 	or	r2,r2,r3
  80d998:	003efd06 	br	80d590 <__subdf3+0x424>
  80d99c:	5aa3c83a 	sub	r17,r11,r10
  80d9a0:	5c45803a 	cmpltu	r2,r11,r17
  80d9a4:	40c9c83a 	sub	r4,r8,r3
  80d9a8:	2089c83a 	sub	r4,r4,r2
  80d9ac:	2080202c 	andhi	r2,r4,128
  80d9b0:	10002f26 	beq	r2,zero,80da70 <__subdf3+0x904>
  80d9b4:	52e3c83a 	sub	r17,r10,r11
  80d9b8:	1a09c83a 	sub	r4,r3,r8
  80d9bc:	5455803a 	cmpltu	r10,r10,r17
  80d9c0:	2289c83a 	sub	r4,r4,r10
  80d9c4:	4825883a 	mov	r18,r9
  80d9c8:	003e3b06 	br	80d2b8 <__subdf3+0x14c>
  80d9cc:	1808977a 	slli	r4,r3,29
  80d9d0:	00880034 	movhi	r2,8192
  80d9d4:	10bfffc4 	addi	r2,r2,-1
  80d9d8:	3084703a 	and	r2,r6,r2
  80d9dc:	1810d0fa 	srli	r8,r3,3
  80d9e0:	1104b03a 	or	r2,r2,r4
  80d9e4:	003ec406 	br	80d4f8 <__subdf3+0x38c>
  80d9e8:	1808977a 	slli	r4,r3,29
  80d9ec:	00880034 	movhi	r2,8192
  80d9f0:	10bfffc4 	addi	r2,r2,-1
  80d9f4:	3084703a 	and	r2,r6,r2
  80d9f8:	1810d0fa 	srli	r8,r3,3
  80d9fc:	1104b03a 	or	r2,r2,r4
  80da00:	003ebf06 	br	80d500 <__subdf3+0x394>
  80da04:	5aa3883a 	add	r17,r11,r10
  80da08:	40c9883a 	add	r4,r8,r3
  80da0c:	8ad7803a 	cmpltu	r11,r17,r11
  80da10:	22c9883a 	add	r4,r4,r11
  80da14:	2080202c 	andhi	r2,r4,128
  80da18:	103eb026 	beq	r2,zero,80d4dc <__subdf3+0x370>
  80da1c:	00bfe034 	movhi	r2,65408
  80da20:	10bfffc4 	addi	r2,r2,-1
  80da24:	2088703a 	and	r4,r4,r2
  80da28:	04000044 	movi	r16,1
  80da2c:	003eab06 	br	80d4dc <__subdf3+0x370>
  80da30:	28bff804 	addi	r2,r5,-32
  80da34:	29000820 	cmpeqi	r4,r5,32
  80da38:	4084d83a 	srl	r2,r8,r2
  80da3c:	2000041e 	bne	r4,zero,80da50 <__subdf3+0x8e4>
  80da40:	01001004 	movi	r4,64
  80da44:	214bc83a 	sub	r5,r4,r5
  80da48:	4150983a 	sll	r8,r8,r5
  80da4c:	5a16b03a 	or	r11,r11,r8
  80da50:	5822c03a 	cmpne	r17,r11,zero
  80da54:	88a2b03a 	or	r17,r17,r2
  80da58:	003e7d06 	br	80d450 <__subdf3+0x2e4>
  80da5c:	5aa3883a 	add	r17,r11,r10
  80da60:	40c9883a 	add	r4,r8,r3
  80da64:	8a95803a 	cmpltu	r10,r17,r10
  80da68:	2289883a 	add	r4,r4,r10
  80da6c:	003e9806 	br	80d4d0 <__subdf3+0x364>
  80da70:	8904b03a 	or	r2,r17,r4
  80da74:	103f0826 	beq	r2,zero,80d698 <__subdf3+0x52c>
  80da78:	003e9806 	br	80d4dc <__subdf3+0x370>
  80da7c:	02000434 	movhi	r8,16
  80da80:	423fffc4 	addi	r8,r8,-1
  80da84:	0025883a 	mov	r18,zero
  80da88:	00bfffc4 	movi	r2,-1
  80da8c:	003ec206 	br	80d598 <__subdf3+0x42c>
  80da90:	0005883a 	mov	r2,zero
  80da94:	0141ffc4 	movi	r5,2047
  80da98:	0007883a 	mov	r3,zero
  80da9c:	003e1d06 	br	80d314 <__subdf3+0x1a8>

0080daa0 <__unorddf2>:
  80daa0:	2806d53a 	srli	r3,r5,20
  80daa4:	3810d53a 	srli	r8,r7,20
  80daa8:	02400434 	movhi	r9,16
  80daac:	18c1ffcc 	andi	r3,r3,2047
  80dab0:	4a7fffc4 	addi	r9,r9,-1
  80dab4:	18c1ffd8 	cmpnei	r3,r3,2047
  80dab8:	2a4a703a 	and	r5,r5,r9
  80dabc:	3a4e703a 	and	r7,r7,r9
  80dac0:	4201ffcc 	andi	r8,r8,2047
  80dac4:	18000426 	beq	r3,zero,80dad8 <__unorddf2+0x38>
  80dac8:	4201ffd8 	cmpnei	r8,r8,2047
  80dacc:	40000626 	beq	r8,zero,80dae8 <__unorddf2+0x48>
  80dad0:	0005883a 	mov	r2,zero
  80dad4:	f800283a 	ret
  80dad8:	214ab03a 	or	r5,r4,r5
  80dadc:	283ffa26 	beq	r5,zero,80dac8 <__unorddf2+0x28>
  80dae0:	00800044 	movi	r2,1
  80dae4:	f800283a 	ret
  80dae8:	398eb03a 	or	r7,r7,r6
  80daec:	3804c03a 	cmpne	r2,r7,zero
  80daf0:	f800283a 	ret

0080daf4 <__fixdfsi>:
  80daf4:	2806d53a 	srli	r3,r5,20
  80daf8:	01800434 	movhi	r6,16
  80dafc:	31bfffc4 	addi	r6,r6,-1
  80db00:	18c1ffcc 	andi	r3,r3,2047
  80db04:	19c0ffd0 	cmplti	r7,r3,1023
  80db08:	2810d7fa 	srli	r8,r5,31
  80db0c:	298a703a 	and	r5,r5,r6
  80db10:	3800061e 	bne	r7,zero,80db2c <__fixdfsi+0x38>
  80db14:	18810790 	cmplti	r2,r3,1054
  80db18:	1000061e 	bne	r2,zero,80db34 <__fixdfsi+0x40>
  80db1c:	00a00034 	movhi	r2,32768
  80db20:	10bfffc4 	addi	r2,r2,-1
  80db24:	4085883a 	add	r2,r8,r2
  80db28:	f800283a 	ret
  80db2c:	0005883a 	mov	r2,zero
  80db30:	f800283a 	ret
  80db34:	01810cc4 	movi	r6,1075
  80db38:	30cdc83a 	sub	r6,r6,r3
  80db3c:	30800808 	cmpgei	r2,r6,32
  80db40:	29400434 	orhi	r5,r5,16
  80db44:	1000071e 	bne	r2,zero,80db64 <__fixdfsi+0x70>
  80db48:	18befb44 	addi	r2,r3,-1043
  80db4c:	2884983a 	sll	r2,r5,r2
  80db50:	2188d83a 	srl	r4,r4,r6
  80db54:	1104b03a 	or	r2,r2,r4
  80db58:	403ff526 	beq	r8,zero,80db30 <__fixdfsi+0x3c>
  80db5c:	0085c83a 	sub	r2,zero,r2
  80db60:	f800283a 	ret
  80db64:	008104c4 	movi	r2,1043
  80db68:	10c5c83a 	sub	r2,r2,r3
  80db6c:	2884d83a 	srl	r2,r5,r2
  80db70:	003ff906 	br	80db58 <__fixdfsi+0x64>

0080db74 <__floatsidf>:
  80db74:	defffd04 	addi	sp,sp,-12
  80db78:	dfc00215 	stw	ra,8(sp)
  80db7c:	dc400115 	stw	r17,4(sp)
  80db80:	dc000015 	stw	r16,0(sp)
  80db84:	20001326 	beq	r4,zero,80dbd4 <__floatsidf+0x60>
  80db88:	2022d7fa 	srli	r17,r4,31
  80db8c:	2021883a 	mov	r16,r4
  80db90:	20002516 	blt	r4,zero,80dc28 <__floatsidf+0xb4>
  80db94:	8009883a 	mov	r4,r16
  80db98:	08016840 	call	801684 <__clzsi2>
  80db9c:	01410784 	movi	r5,1054
  80dba0:	288bc83a 	sub	r5,r5,r2
  80dba4:	10c002c8 	cmpgei	r3,r2,11
  80dba8:	2941ffcc 	andi	r5,r5,2047
  80dbac:	1800171e 	bne	r3,zero,80dc0c <__floatsidf+0x98>
  80dbb0:	00c002c4 	movi	r3,11
  80dbb4:	1887c83a 	sub	r3,r3,r2
  80dbb8:	80c6d83a 	srl	r3,r16,r3
  80dbbc:	01000434 	movhi	r4,16
  80dbc0:	10800544 	addi	r2,r2,21
  80dbc4:	213fffc4 	addi	r4,r4,-1
  80dbc8:	8084983a 	sll	r2,r16,r2
  80dbcc:	1906703a 	and	r3,r3,r4
  80dbd0:	00000406 	br	80dbe4 <__floatsidf+0x70>
  80dbd4:	0023883a 	mov	r17,zero
  80dbd8:	000b883a 	mov	r5,zero
  80dbdc:	0007883a 	mov	r3,zero
  80dbe0:	0005883a 	mov	r2,zero
  80dbe4:	280a953a 	slli	r5,r5,20
  80dbe8:	8c403fcc 	andi	r17,r17,255
  80dbec:	882297fa 	slli	r17,r17,31
  80dbf0:	28c6b03a 	or	r3,r5,r3
  80dbf4:	1c46b03a 	or	r3,r3,r17
  80dbf8:	dfc00217 	ldw	ra,8(sp)
  80dbfc:	dc400117 	ldw	r17,4(sp)
  80dc00:	dc000017 	ldw	r16,0(sp)
  80dc04:	dec00304 	addi	sp,sp,12
  80dc08:	f800283a 	ret
  80dc0c:	10bffd44 	addi	r2,r2,-11
  80dc10:	8086983a 	sll	r3,r16,r2
  80dc14:	00800434 	movhi	r2,16
  80dc18:	10bfffc4 	addi	r2,r2,-1
  80dc1c:	1886703a 	and	r3,r3,r2
  80dc20:	0005883a 	mov	r2,zero
  80dc24:	003fef06 	br	80dbe4 <__floatsidf+0x70>
  80dc28:	0121c83a 	sub	r16,zero,r4
  80dc2c:	003fd906 	br	80db94 <__floatsidf+0x20>

0080dc30 <alt_get_errno>:
  80dc30:	defffe04 	addi	sp,sp,-8
  80dc34:	dfc00115 	stw	ra,4(sp)
  80dc38:	df000015 	stw	fp,0(sp)
  80dc3c:	d839883a 	mov	fp,sp
  80dc40:	d0a00917 	ldw	r2,-32732(gp)
  80dc44:	10000326 	beq	r2,zero,80dc54 <alt_get_errno+0x24>
  80dc48:	d0a00917 	ldw	r2,-32732(gp)
  80dc4c:	103ee83a 	callr	r2
  80dc50:	00000106 	br	80dc58 <alt_get_errno+0x28>
  80dc54:	d0a70704 	addi	r2,gp,-25572
  80dc58:	e037883a 	mov	sp,fp
  80dc5c:	dfc00117 	ldw	ra,4(sp)
  80dc60:	df000017 	ldw	fp,0(sp)
  80dc64:	dec00204 	addi	sp,sp,8
  80dc68:	f800283a 	ret

0080dc6c <close>:
  80dc6c:	defffb04 	addi	sp,sp,-20
  80dc70:	dfc00415 	stw	ra,16(sp)
  80dc74:	df000315 	stw	fp,12(sp)
  80dc78:	df000304 	addi	fp,sp,12
  80dc7c:	e13ffd15 	stw	r4,-12(fp)
  80dc80:	e0bffd17 	ldw	r2,-12(fp)
  80dc84:	10000916 	blt	r2,zero,80dcac <close+0x40>
  80dc88:	e0fffd17 	ldw	r3,-12(fp)
  80dc8c:	1805883a 	mov	r2,r3
  80dc90:	1085883a 	add	r2,r2,r2
  80dc94:	10c5883a 	add	r2,r2,r3
  80dc98:	100490ba 	slli	r2,r2,2
  80dc9c:	00c02074 	movhi	r3,129
  80dca0:	18c56d04 	addi	r3,r3,5556
  80dca4:	10c5883a 	add	r2,r2,r3
  80dca8:	00000106 	br	80dcb0 <close+0x44>
  80dcac:	0005883a 	mov	r2,zero
  80dcb0:	e0bfff15 	stw	r2,-4(fp)
  80dcb4:	e0bfff17 	ldw	r2,-4(fp)
  80dcb8:	10001926 	beq	r2,zero,80dd20 <close+0xb4>
  80dcbc:	e0bfff17 	ldw	r2,-4(fp)
  80dcc0:	10800017 	ldw	r2,0(r2)
  80dcc4:	10800417 	ldw	r2,16(r2)
  80dcc8:	10000626 	beq	r2,zero,80dce4 <close+0x78>
  80dccc:	e0bfff17 	ldw	r2,-4(fp)
  80dcd0:	10800017 	ldw	r2,0(r2)
  80dcd4:	10800417 	ldw	r2,16(r2)
  80dcd8:	e13fff17 	ldw	r4,-4(fp)
  80dcdc:	103ee83a 	callr	r2
  80dce0:	00000106 	br	80dce8 <close+0x7c>
  80dce4:	0005883a 	mov	r2,zero
  80dce8:	e0bffe15 	stw	r2,-8(fp)
  80dcec:	e13ffd17 	ldw	r4,-12(fp)
  80dcf0:	080e5280 	call	80e528 <alt_release_fd>
  80dcf4:	e0bffe17 	ldw	r2,-8(fp)
  80dcf8:	1000070e 	bge	r2,zero,80dd18 <close+0xac>
  80dcfc:	080dc300 	call	80dc30 <alt_get_errno>
  80dd00:	1007883a 	mov	r3,r2
  80dd04:	e0bffe17 	ldw	r2,-8(fp)
  80dd08:	0085c83a 	sub	r2,zero,r2
  80dd0c:	18800015 	stw	r2,0(r3)
  80dd10:	00bfffc4 	movi	r2,-1
  80dd14:	00000706 	br	80dd34 <close+0xc8>
  80dd18:	0005883a 	mov	r2,zero
  80dd1c:	00000506 	br	80dd34 <close+0xc8>
  80dd20:	080dc300 	call	80dc30 <alt_get_errno>
  80dd24:	1007883a 	mov	r3,r2
  80dd28:	00801444 	movi	r2,81
  80dd2c:	18800015 	stw	r2,0(r3)
  80dd30:	00bfffc4 	movi	r2,-1
  80dd34:	e037883a 	mov	sp,fp
  80dd38:	dfc00117 	ldw	ra,4(sp)
  80dd3c:	df000017 	ldw	fp,0(sp)
  80dd40:	dec00204 	addi	sp,sp,8
  80dd44:	f800283a 	ret

0080dd48 <alt_dev_null_write>:
  80dd48:	defffc04 	addi	sp,sp,-16
  80dd4c:	df000315 	stw	fp,12(sp)
  80dd50:	df000304 	addi	fp,sp,12
  80dd54:	e13fff15 	stw	r4,-4(fp)
  80dd58:	e17ffe15 	stw	r5,-8(fp)
  80dd5c:	e1bffd15 	stw	r6,-12(fp)
  80dd60:	e0bffd17 	ldw	r2,-12(fp)
  80dd64:	e037883a 	mov	sp,fp
  80dd68:	df000017 	ldw	fp,0(sp)
  80dd6c:	dec00104 	addi	sp,sp,4
  80dd70:	f800283a 	ret

0080dd74 <_exit>:
  80dd74:	defffd04 	addi	sp,sp,-12
  80dd78:	df000215 	stw	fp,8(sp)
  80dd7c:	df000204 	addi	fp,sp,8
  80dd80:	e13ffe15 	stw	r4,-8(fp)
  80dd84:	0001883a 	nop
  80dd88:	e0bffe17 	ldw	r2,-8(fp)
  80dd8c:	e0bfff15 	stw	r2,-4(fp)
  80dd90:	e0bfff17 	ldw	r2,-4(fp)
  80dd94:	10000226 	beq	r2,zero,80dda0 <_exit+0x2c>
  80dd98:	002af070 	cmpltui	zero,zero,43969
  80dd9c:	00000106 	br	80dda4 <_exit+0x30>
  80dda0:	002af0b0 	cmpltui	zero,zero,43970
  80dda4:	0001883a 	nop
  80dda8:	003fff06 	br	80dda8 <_exit+0x34>

0080ddac <alt_get_errno>:
  80ddac:	defffe04 	addi	sp,sp,-8
  80ddb0:	dfc00115 	stw	ra,4(sp)
  80ddb4:	df000015 	stw	fp,0(sp)
  80ddb8:	d839883a 	mov	fp,sp
  80ddbc:	d0a00917 	ldw	r2,-32732(gp)
  80ddc0:	10000326 	beq	r2,zero,80ddd0 <alt_get_errno+0x24>
  80ddc4:	d0a00917 	ldw	r2,-32732(gp)
  80ddc8:	103ee83a 	callr	r2
  80ddcc:	00000106 	br	80ddd4 <alt_get_errno+0x28>
  80ddd0:	d0a70704 	addi	r2,gp,-25572
  80ddd4:	e037883a 	mov	sp,fp
  80ddd8:	dfc00117 	ldw	ra,4(sp)
  80dddc:	df000017 	ldw	fp,0(sp)
  80dde0:	dec00204 	addi	sp,sp,8
  80dde4:	f800283a 	ret

0080dde8 <fstat>:
  80dde8:	defffb04 	addi	sp,sp,-20
  80ddec:	dfc00415 	stw	ra,16(sp)
  80ddf0:	df000315 	stw	fp,12(sp)
  80ddf4:	df000304 	addi	fp,sp,12
  80ddf8:	e13ffe15 	stw	r4,-8(fp)
  80ddfc:	e17ffd15 	stw	r5,-12(fp)
  80de00:	e0bffe17 	ldw	r2,-8(fp)
  80de04:	10000916 	blt	r2,zero,80de2c <fstat+0x44>
  80de08:	e0fffe17 	ldw	r3,-8(fp)
  80de0c:	1805883a 	mov	r2,r3
  80de10:	1085883a 	add	r2,r2,r2
  80de14:	10c5883a 	add	r2,r2,r3
  80de18:	100490ba 	slli	r2,r2,2
  80de1c:	00c02074 	movhi	r3,129
  80de20:	18c56d04 	addi	r3,r3,5556
  80de24:	10c5883a 	add	r2,r2,r3
  80de28:	00000106 	br	80de30 <fstat+0x48>
  80de2c:	0005883a 	mov	r2,zero
  80de30:	e0bfff15 	stw	r2,-4(fp)
  80de34:	e0bfff17 	ldw	r2,-4(fp)
  80de38:	10001026 	beq	r2,zero,80de7c <fstat+0x94>
  80de3c:	e0bfff17 	ldw	r2,-4(fp)
  80de40:	10800017 	ldw	r2,0(r2)
  80de44:	10800817 	ldw	r2,32(r2)
  80de48:	10000726 	beq	r2,zero,80de68 <fstat+0x80>
  80de4c:	e0bfff17 	ldw	r2,-4(fp)
  80de50:	10800017 	ldw	r2,0(r2)
  80de54:	10800817 	ldw	r2,32(r2)
  80de58:	e17ffd17 	ldw	r5,-12(fp)
  80de5c:	e13fff17 	ldw	r4,-4(fp)
  80de60:	103ee83a 	callr	r2
  80de64:	00000a06 	br	80de90 <fstat+0xa8>
  80de68:	e0bffd17 	ldw	r2,-12(fp)
  80de6c:	00c80004 	movi	r3,8192
  80de70:	10c00115 	stw	r3,4(r2)
  80de74:	0005883a 	mov	r2,zero
  80de78:	00000506 	br	80de90 <fstat+0xa8>
  80de7c:	080ddac0 	call	80ddac <alt_get_errno>
  80de80:	1007883a 	mov	r3,r2
  80de84:	00801444 	movi	r2,81
  80de88:	18800015 	stw	r2,0(r3)
  80de8c:	00bfffc4 	movi	r2,-1
  80de90:	e037883a 	mov	sp,fp
  80de94:	dfc00117 	ldw	ra,4(sp)
  80de98:	df000017 	ldw	fp,0(sp)
  80de9c:	dec00204 	addi	sp,sp,8
  80dea0:	f800283a 	ret

0080dea4 <getpid>:
  80dea4:	deffff04 	addi	sp,sp,-4
  80dea8:	df000015 	stw	fp,0(sp)
  80deac:	d839883a 	mov	fp,sp
  80deb0:	0005883a 	mov	r2,zero
  80deb4:	e037883a 	mov	sp,fp
  80deb8:	df000017 	ldw	fp,0(sp)
  80debc:	dec00104 	addi	sp,sp,4
  80dec0:	f800283a 	ret

0080dec4 <alt_get_errno>:
  80dec4:	defffe04 	addi	sp,sp,-8
  80dec8:	dfc00115 	stw	ra,4(sp)
  80decc:	df000015 	stw	fp,0(sp)
  80ded0:	d839883a 	mov	fp,sp
  80ded4:	d0a00917 	ldw	r2,-32732(gp)
  80ded8:	10000326 	beq	r2,zero,80dee8 <alt_get_errno+0x24>
  80dedc:	d0a00917 	ldw	r2,-32732(gp)
  80dee0:	103ee83a 	callr	r2
  80dee4:	00000106 	br	80deec <alt_get_errno+0x28>
  80dee8:	d0a70704 	addi	r2,gp,-25572
  80deec:	e037883a 	mov	sp,fp
  80def0:	dfc00117 	ldw	ra,4(sp)
  80def4:	df000017 	ldw	fp,0(sp)
  80def8:	dec00204 	addi	sp,sp,8
  80defc:	f800283a 	ret

0080df00 <isatty>:
  80df00:	deffea04 	addi	sp,sp,-88
  80df04:	dfc01515 	stw	ra,84(sp)
  80df08:	df001415 	stw	fp,80(sp)
  80df0c:	df001404 	addi	fp,sp,80
  80df10:	e13fec15 	stw	r4,-80(fp)
  80df14:	e0bfec17 	ldw	r2,-80(fp)
  80df18:	10000916 	blt	r2,zero,80df40 <isatty+0x40>
  80df1c:	e0ffec17 	ldw	r3,-80(fp)
  80df20:	1805883a 	mov	r2,r3
  80df24:	1085883a 	add	r2,r2,r2
  80df28:	10c5883a 	add	r2,r2,r3
  80df2c:	100490ba 	slli	r2,r2,2
  80df30:	00c02074 	movhi	r3,129
  80df34:	18c56d04 	addi	r3,r3,5556
  80df38:	10c5883a 	add	r2,r2,r3
  80df3c:	00000106 	br	80df44 <isatty+0x44>
  80df40:	0005883a 	mov	r2,zero
  80df44:	e0bfff15 	stw	r2,-4(fp)
  80df48:	e0bfff17 	ldw	r2,-4(fp)
  80df4c:	10000e26 	beq	r2,zero,80df88 <isatty+0x88>
  80df50:	e0bfff17 	ldw	r2,-4(fp)
  80df54:	10800017 	ldw	r2,0(r2)
  80df58:	10800817 	ldw	r2,32(r2)
  80df5c:	1000021e 	bne	r2,zero,80df68 <isatty+0x68>
  80df60:	00800044 	movi	r2,1
  80df64:	00000d06 	br	80df9c <isatty+0x9c>
  80df68:	e0bfed04 	addi	r2,fp,-76
  80df6c:	100b883a 	mov	r5,r2
  80df70:	e13fec17 	ldw	r4,-80(fp)
  80df74:	080dde80 	call	80dde8 <fstat>
  80df78:	e0bfee17 	ldw	r2,-72(fp)
  80df7c:	10880020 	cmpeqi	r2,r2,8192
  80df80:	10803fcc 	andi	r2,r2,255
  80df84:	00000506 	br	80df9c <isatty+0x9c>
  80df88:	080dec40 	call	80dec4 <alt_get_errno>
  80df8c:	1007883a 	mov	r3,r2
  80df90:	00801444 	movi	r2,81
  80df94:	18800015 	stw	r2,0(r3)
  80df98:	0005883a 	mov	r2,zero
  80df9c:	e037883a 	mov	sp,fp
  80dfa0:	dfc00117 	ldw	ra,4(sp)
  80dfa4:	df000017 	ldw	fp,0(sp)
  80dfa8:	dec00204 	addi	sp,sp,8
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

0080dfec <kill>:
  80dfec:	defffb04 	addi	sp,sp,-20
  80dff0:	dfc00415 	stw	ra,16(sp)
  80dff4:	df000315 	stw	fp,12(sp)
  80dff8:	df000304 	addi	fp,sp,12
  80dffc:	e13ffe15 	stw	r4,-8(fp)
  80e000:	e17ffd15 	stw	r5,-12(fp)
  80e004:	e03fff15 	stw	zero,-4(fp)
  80e008:	e0bffe17 	ldw	r2,-8(fp)
  80e00c:	00802e16 	blt	zero,r2,80e0c8 <kill+0xdc>
  80e010:	e0bffd17 	ldw	r2,-12(fp)
  80e014:	10800828 	cmpgeui	r2,r2,32
  80e018:	1000281e 	bne	r2,zero,80e0bc <kill+0xd0>
  80e01c:	e0bffd17 	ldw	r2,-12(fp)
  80e020:	100690ba 	slli	r3,r2,2
  80e024:	00802074 	movhi	r2,129
  80e028:	1885883a 	add	r2,r3,r2
  80e02c:	10b80d17 	ldw	r2,-8140(r2)
  80e030:	1000683a 	jmp	r2
  80e034:	0080e0dc 	xori	r2,zero,899
  80e038:	0080e0bc 	xorhi	r2,zero,898
  80e03c:	0080e0bc 	xorhi	r2,zero,898
  80e040:	0080e0b4 	movhi	r2,898
  80e044:	0080e0b4 	movhi	r2,898
  80e048:	0080e0b4 	movhi	r2,898
  80e04c:	0080e0b4 	movhi	r2,898
  80e050:	0080e0bc 	xorhi	r2,zero,898
  80e054:	0080e0b4 	movhi	r2,898
  80e058:	0080e0b4 	movhi	r2,898
  80e05c:	0080e0b4 	movhi	r2,898
  80e060:	0080e0b4 	movhi	r2,898
  80e064:	0080e0b4 	movhi	r2,898
  80e068:	0080e0b4 	movhi	r2,898
  80e06c:	0080e0b4 	movhi	r2,898
  80e070:	0080e0b4 	movhi	r2,898
  80e074:	0080e0dc 	xori	r2,zero,899
  80e078:	0080e0bc 	xorhi	r2,zero,898
  80e07c:	0080e0bc 	xorhi	r2,zero,898
  80e080:	0080e0bc 	xorhi	r2,zero,898
  80e084:	0080e0dc 	xori	r2,zero,899
  80e088:	0080e0bc 	xorhi	r2,zero,898
  80e08c:	0080e0bc 	xorhi	r2,zero,898
  80e090:	0080e0b4 	movhi	r2,898
  80e094:	0080e0b4 	movhi	r2,898
  80e098:	0080e0b4 	movhi	r2,898
  80e09c:	0080e0b4 	movhi	r2,898
  80e0a0:	0080e0b4 	movhi	r2,898
  80e0a4:	0080e0bc 	xorhi	r2,zero,898
  80e0a8:	0080e0bc 	xorhi	r2,zero,898
  80e0ac:	0080e0b4 	movhi	r2,898
  80e0b0:	0080e0b4 	movhi	r2,898
  80e0b4:	0009883a 	mov	r4,zero
  80e0b8:	080dd740 	call	80dd74 <_exit>
  80e0bc:	00800584 	movi	r2,22
  80e0c0:	e0bfff15 	stw	r2,-4(fp)
  80e0c4:	00000606 	br	80e0e0 <kill+0xf4>
  80e0c8:	e0bffe17 	ldw	r2,-8(fp)
  80e0cc:	0080040e 	bge	zero,r2,80e0e0 <kill+0xf4>
  80e0d0:	008000c4 	movi	r2,3
  80e0d4:	e0bfff15 	stw	r2,-4(fp)
  80e0d8:	00000106 	br	80e0e0 <kill+0xf4>
  80e0dc:	0001883a 	nop
  80e0e0:	e0bfff17 	ldw	r2,-4(fp)
  80e0e4:	10000626 	beq	r2,zero,80e100 <kill+0x114>
  80e0e8:	080dfb00 	call	80dfb0 <alt_get_errno>
  80e0ec:	1007883a 	mov	r3,r2
  80e0f0:	e0bfff17 	ldw	r2,-4(fp)
  80e0f4:	18800015 	stw	r2,0(r3)
  80e0f8:	00bfffc4 	movi	r2,-1
  80e0fc:	00000106 	br	80e104 <kill+0x118>
  80e100:	0005883a 	mov	r2,zero
  80e104:	e037883a 	mov	sp,fp
  80e108:	dfc00117 	ldw	ra,4(sp)
  80e10c:	df000017 	ldw	fp,0(sp)
  80e110:	dec00204 	addi	sp,sp,8
  80e114:	f800283a 	ret

0080e118 <alt_load_section>:
  80e118:	defffc04 	addi	sp,sp,-16
  80e11c:	df000315 	stw	fp,12(sp)
  80e120:	df000304 	addi	fp,sp,12
  80e124:	e13fff15 	stw	r4,-4(fp)
  80e128:	e17ffe15 	stw	r5,-8(fp)
  80e12c:	e1bffd15 	stw	r6,-12(fp)
  80e130:	e0fffe17 	ldw	r3,-8(fp)
  80e134:	e0bfff17 	ldw	r2,-4(fp)
  80e138:	18800c26 	beq	r3,r2,80e16c <alt_load_section+0x54>
  80e13c:	00000806 	br	80e160 <alt_load_section+0x48>
  80e140:	e0ffff17 	ldw	r3,-4(fp)
  80e144:	18800104 	addi	r2,r3,4
  80e148:	e0bfff15 	stw	r2,-4(fp)
  80e14c:	e0bffe17 	ldw	r2,-8(fp)
  80e150:	11000104 	addi	r4,r2,4
  80e154:	e13ffe15 	stw	r4,-8(fp)
  80e158:	18c00017 	ldw	r3,0(r3)
  80e15c:	10c00015 	stw	r3,0(r2)
  80e160:	e0fffe17 	ldw	r3,-8(fp)
  80e164:	e0bffd17 	ldw	r2,-12(fp)
  80e168:	18bff51e 	bne	r3,r2,80e140 <alt_load_section+0x28>
  80e16c:	0001883a 	nop
  80e170:	e037883a 	mov	sp,fp
  80e174:	df000017 	ldw	fp,0(sp)
  80e178:	dec00104 	addi	sp,sp,4
  80e17c:	f800283a 	ret

0080e180 <alt_load>:
  80e180:	defffe04 	addi	sp,sp,-8
  80e184:	dfc00115 	stw	ra,4(sp)
  80e188:	df000015 	stw	fp,0(sp)
  80e18c:	d839883a 	mov	fp,sp
  80e190:	01802074 	movhi	r6,129
  80e194:	3189f304 	addi	r6,r6,10188
  80e198:	01402074 	movhi	r5,129
  80e19c:	2942fd04 	addi	r5,r5,3060
  80e1a0:	01002074 	movhi	r4,129
  80e1a4:	2109f304 	addi	r4,r4,10188
  80e1a8:	080e1180 	call	80e118 <alt_load_section>
  80e1ac:	01802034 	movhi	r6,128
  80e1b0:	31808e04 	addi	r6,r6,568
  80e1b4:	01402034 	movhi	r5,128
  80e1b8:	29400804 	addi	r5,r5,32
  80e1bc:	01002034 	movhi	r4,128
  80e1c0:	21000804 	addi	r4,r4,32
  80e1c4:	080e1180 	call	80e118 <alt_load_section>
  80e1c8:	01802074 	movhi	r6,129
  80e1cc:	3182fd04 	addi	r6,r6,3060
  80e1d0:	01402074 	movhi	r5,129
  80e1d4:	29415404 	addi	r5,r5,1360
  80e1d8:	01002074 	movhi	r4,129
  80e1dc:	21015404 	addi	r4,r4,1360
  80e1e0:	080e1180 	call	80e118 <alt_load_section>
  80e1e4:	080f6b80 	call	80f6b8 <alt_dcache_flush_all>
  80e1e8:	080f8b00 	call	80f8b0 <alt_icache_flush_all>
  80e1ec:	0001883a 	nop
  80e1f0:	e037883a 	mov	sp,fp
  80e1f4:	dfc00117 	ldw	ra,4(sp)
  80e1f8:	df000017 	ldw	fp,0(sp)
  80e1fc:	dec00204 	addi	sp,sp,8
  80e200:	f800283a 	ret

0080e204 <alt_get_errno>:
  80e204:	defffe04 	addi	sp,sp,-8
  80e208:	dfc00115 	stw	ra,4(sp)
  80e20c:	df000015 	stw	fp,0(sp)
  80e210:	d839883a 	mov	fp,sp
  80e214:	d0a00917 	ldw	r2,-32732(gp)
  80e218:	10000326 	beq	r2,zero,80e228 <alt_get_errno+0x24>
  80e21c:	d0a00917 	ldw	r2,-32732(gp)
  80e220:	103ee83a 	callr	r2
  80e224:	00000106 	br	80e22c <alt_get_errno+0x28>
  80e228:	d0a70704 	addi	r2,gp,-25572
  80e22c:	e037883a 	mov	sp,fp
  80e230:	dfc00117 	ldw	ra,4(sp)
  80e234:	df000017 	ldw	fp,0(sp)
  80e238:	dec00204 	addi	sp,sp,8
  80e23c:	f800283a 	ret

0080e240 <lseek>:
  80e240:	defff904 	addi	sp,sp,-28
  80e244:	dfc00615 	stw	ra,24(sp)
  80e248:	df000515 	stw	fp,20(sp)
  80e24c:	df000504 	addi	fp,sp,20
  80e250:	e13ffd15 	stw	r4,-12(fp)
  80e254:	e17ffc15 	stw	r5,-16(fp)
  80e258:	e1bffb15 	stw	r6,-20(fp)
  80e25c:	e03fff15 	stw	zero,-4(fp)
  80e260:	e0bffd17 	ldw	r2,-12(fp)
  80e264:	10000916 	blt	r2,zero,80e28c <lseek+0x4c>
  80e268:	e0fffd17 	ldw	r3,-12(fp)
  80e26c:	1805883a 	mov	r2,r3
  80e270:	1085883a 	add	r2,r2,r2
  80e274:	10c5883a 	add	r2,r2,r3
  80e278:	100490ba 	slli	r2,r2,2
  80e27c:	00c02074 	movhi	r3,129
  80e280:	18c56d04 	addi	r3,r3,5556
  80e284:	10c5883a 	add	r2,r2,r3
  80e288:	00000106 	br	80e290 <lseek+0x50>
  80e28c:	0005883a 	mov	r2,zero
  80e290:	e0bffe15 	stw	r2,-8(fp)
  80e294:	e0bffe17 	ldw	r2,-8(fp)
  80e298:	10001026 	beq	r2,zero,80e2dc <lseek+0x9c>
  80e29c:	e0bffe17 	ldw	r2,-8(fp)
  80e2a0:	10800017 	ldw	r2,0(r2)
  80e2a4:	10800717 	ldw	r2,28(r2)
  80e2a8:	10000926 	beq	r2,zero,80e2d0 <lseek+0x90>
  80e2ac:	e0bffe17 	ldw	r2,-8(fp)
  80e2b0:	10800017 	ldw	r2,0(r2)
  80e2b4:	10800717 	ldw	r2,28(r2)
  80e2b8:	e1bffb17 	ldw	r6,-20(fp)
  80e2bc:	e17ffc17 	ldw	r5,-16(fp)
  80e2c0:	e13ffe17 	ldw	r4,-8(fp)
  80e2c4:	103ee83a 	callr	r2
  80e2c8:	e0bfff15 	stw	r2,-4(fp)
  80e2cc:	00000506 	br	80e2e4 <lseek+0xa4>
  80e2d0:	00bfde84 	movi	r2,-134
  80e2d4:	e0bfff15 	stw	r2,-4(fp)
  80e2d8:	00000206 	br	80e2e4 <lseek+0xa4>
  80e2dc:	00bfebc4 	movi	r2,-81
  80e2e0:	e0bfff15 	stw	r2,-4(fp)
  80e2e4:	e0bfff17 	ldw	r2,-4(fp)
  80e2e8:	1000070e 	bge	r2,zero,80e308 <lseek+0xc8>
  80e2ec:	080e2040 	call	80e204 <alt_get_errno>
  80e2f0:	1007883a 	mov	r3,r2
  80e2f4:	e0bfff17 	ldw	r2,-4(fp)
  80e2f8:	0085c83a 	sub	r2,zero,r2
  80e2fc:	18800015 	stw	r2,0(r3)
  80e300:	00bfffc4 	movi	r2,-1
  80e304:	e0bfff15 	stw	r2,-4(fp)
  80e308:	e0bfff17 	ldw	r2,-4(fp)
  80e30c:	e037883a 	mov	sp,fp
  80e310:	dfc00117 	ldw	ra,4(sp)
  80e314:	df000017 	ldw	fp,0(sp)
  80e318:	dec00204 	addi	sp,sp,8
  80e31c:	f800283a 	ret

0080e320 <alt_main>:
  80e320:	defffd04 	addi	sp,sp,-12
  80e324:	dfc00215 	stw	ra,8(sp)
  80e328:	df000115 	stw	fp,4(sp)
  80e32c:	df000104 	addi	fp,sp,4
  80e330:	0009883a 	mov	r4,zero
  80e334:	080e9700 	call	80e970 <alt_irq_init>
  80e338:	0001883a 	nop
  80e33c:	080e9ac0 	call	80e9ac <alt_sys_init>
  80e340:	01802074 	movhi	r6,129
  80e344:	3182f504 	addi	r6,r6,3028
  80e348:	01402074 	movhi	r5,129
  80e34c:	2942f504 	addi	r5,r5,3028
  80e350:	01002074 	movhi	r4,129
  80e354:	2102f504 	addi	r4,r4,3028
  80e358:	080fc500 	call	80fc50 <alt_io_redirect>
  80e35c:	080f7e80 	call	80f7e8 <_do_ctors>
  80e360:	01002074 	movhi	r4,129
  80e364:	213e1304 	addi	r4,r4,-1972
  80e368:	08102e00 	call	8102e0 <atexit>
  80e36c:	d0a70917 	ldw	r2,-25564(gp)
  80e370:	d0e70a17 	ldw	r3,-25560(gp)
  80e374:	d1270b17 	ldw	r4,-25556(gp)
  80e378:	200d883a 	mov	r6,r4
  80e37c:	180b883a 	mov	r5,r3
  80e380:	1009883a 	mov	r4,r2
  80e384:	08003640 	call	800364 <main>
  80e388:	e0bfff15 	stw	r2,-4(fp)
  80e38c:	01000044 	movi	r4,1
  80e390:	080dc6c0 	call	80dc6c <close>
  80e394:	e13fff17 	ldw	r4,-4(fp)
  80e398:	08102f40 	call	8102f4 <exit>

0080e39c <__malloc_lock>:
  80e39c:	defffe04 	addi	sp,sp,-8
  80e3a0:	df000115 	stw	fp,4(sp)
  80e3a4:	df000104 	addi	fp,sp,4
  80e3a8:	e13fff15 	stw	r4,-4(fp)
  80e3ac:	0001883a 	nop
  80e3b0:	e037883a 	mov	sp,fp
  80e3b4:	df000017 	ldw	fp,0(sp)
  80e3b8:	dec00104 	addi	sp,sp,4
  80e3bc:	f800283a 	ret

0080e3c0 <__malloc_unlock>:
  80e3c0:	defffe04 	addi	sp,sp,-8
  80e3c4:	df000115 	stw	fp,4(sp)
  80e3c8:	df000104 	addi	fp,sp,4
  80e3cc:	e13fff15 	stw	r4,-4(fp)
  80e3d0:	0001883a 	nop
  80e3d4:	e037883a 	mov	sp,fp
  80e3d8:	df000017 	ldw	fp,0(sp)
  80e3dc:	dec00104 	addi	sp,sp,4
  80e3e0:	f800283a 	ret

0080e3e4 <alt_get_errno>:
  80e3e4:	defffe04 	addi	sp,sp,-8
  80e3e8:	dfc00115 	stw	ra,4(sp)
  80e3ec:	df000015 	stw	fp,0(sp)
  80e3f0:	d839883a 	mov	fp,sp
  80e3f4:	d0a00917 	ldw	r2,-32732(gp)
  80e3f8:	10000326 	beq	r2,zero,80e408 <alt_get_errno+0x24>
  80e3fc:	d0a00917 	ldw	r2,-32732(gp)
  80e400:	103ee83a 	callr	r2
  80e404:	00000106 	br	80e40c <alt_get_errno+0x28>
  80e408:	d0a70704 	addi	r2,gp,-25572
  80e40c:	e037883a 	mov	sp,fp
  80e410:	dfc00117 	ldw	ra,4(sp)
  80e414:	df000017 	ldw	fp,0(sp)
  80e418:	dec00204 	addi	sp,sp,8
  80e41c:	f800283a 	ret

0080e420 <read>:
  80e420:	defff904 	addi	sp,sp,-28
  80e424:	dfc00615 	stw	ra,24(sp)
  80e428:	df000515 	stw	fp,20(sp)
  80e42c:	df000504 	addi	fp,sp,20
  80e430:	e13ffd15 	stw	r4,-12(fp)
  80e434:	e17ffc15 	stw	r5,-16(fp)
  80e438:	e1bffb15 	stw	r6,-20(fp)
  80e43c:	e0bffd17 	ldw	r2,-12(fp)
  80e440:	10000916 	blt	r2,zero,80e468 <read+0x48>
  80e444:	e0fffd17 	ldw	r3,-12(fp)
  80e448:	1805883a 	mov	r2,r3
  80e44c:	1085883a 	add	r2,r2,r2
  80e450:	10c5883a 	add	r2,r2,r3
  80e454:	100490ba 	slli	r2,r2,2
  80e458:	00c02074 	movhi	r3,129
  80e45c:	18c56d04 	addi	r3,r3,5556
  80e460:	10c5883a 	add	r2,r2,r3
  80e464:	00000106 	br	80e46c <read+0x4c>
  80e468:	0005883a 	mov	r2,zero
  80e46c:	e0bfff15 	stw	r2,-4(fp)
  80e470:	e0bfff17 	ldw	r2,-4(fp)
  80e474:	10002226 	beq	r2,zero,80e500 <read+0xe0>
  80e478:	e0bfff17 	ldw	r2,-4(fp)
  80e47c:	10800217 	ldw	r2,8(r2)
  80e480:	108000cc 	andi	r2,r2,3
  80e484:	10800060 	cmpeqi	r2,r2,1
  80e488:	1000181e 	bne	r2,zero,80e4ec <read+0xcc>
  80e48c:	e0bfff17 	ldw	r2,-4(fp)
  80e490:	10800017 	ldw	r2,0(r2)
  80e494:	10800517 	ldw	r2,20(r2)
  80e498:	10001426 	beq	r2,zero,80e4ec <read+0xcc>
  80e49c:	e0bfff17 	ldw	r2,-4(fp)
  80e4a0:	10800017 	ldw	r2,0(r2)
  80e4a4:	10800517 	ldw	r2,20(r2)
  80e4a8:	e0fffb17 	ldw	r3,-20(fp)
  80e4ac:	180d883a 	mov	r6,r3
  80e4b0:	e17ffc17 	ldw	r5,-16(fp)
  80e4b4:	e13fff17 	ldw	r4,-4(fp)
  80e4b8:	103ee83a 	callr	r2
  80e4bc:	e0bffe15 	stw	r2,-8(fp)
  80e4c0:	e0bffe17 	ldw	r2,-8(fp)
  80e4c4:	1000070e 	bge	r2,zero,80e4e4 <read+0xc4>
  80e4c8:	080e3e40 	call	80e3e4 <alt_get_errno>
  80e4cc:	1007883a 	mov	r3,r2
  80e4d0:	e0bffe17 	ldw	r2,-8(fp)
  80e4d4:	0085c83a 	sub	r2,zero,r2
  80e4d8:	18800015 	stw	r2,0(r3)
  80e4dc:	00bfffc4 	movi	r2,-1
  80e4e0:	00000c06 	br	80e514 <read+0xf4>
  80e4e4:	e0bffe17 	ldw	r2,-8(fp)
  80e4e8:	00000a06 	br	80e514 <read+0xf4>
  80e4ec:	080e3e40 	call	80e3e4 <alt_get_errno>
  80e4f0:	1007883a 	mov	r3,r2
  80e4f4:	00800344 	movi	r2,13
  80e4f8:	18800015 	stw	r2,0(r3)
  80e4fc:	00000406 	br	80e510 <read+0xf0>
  80e500:	080e3e40 	call	80e3e4 <alt_get_errno>
  80e504:	1007883a 	mov	r3,r2
  80e508:	00801444 	movi	r2,81
  80e50c:	18800015 	stw	r2,0(r3)
  80e510:	00bfffc4 	movi	r2,-1
  80e514:	e037883a 	mov	sp,fp
  80e518:	dfc00117 	ldw	ra,4(sp)
  80e51c:	df000017 	ldw	fp,0(sp)
  80e520:	dec00204 	addi	sp,sp,8
  80e524:	f800283a 	ret

0080e528 <alt_release_fd>:
  80e528:	defffe04 	addi	sp,sp,-8
  80e52c:	df000115 	stw	fp,4(sp)
  80e530:	df000104 	addi	fp,sp,4
  80e534:	e13fff15 	stw	r4,-4(fp)
  80e538:	e0bfff17 	ldw	r2,-4(fp)
  80e53c:	108000d0 	cmplti	r2,r2,3
  80e540:	1000101e 	bne	r2,zero,80e584 <alt_release_fd+0x5c>
  80e544:	e0ffff17 	ldw	r3,-4(fp)
  80e548:	1805883a 	mov	r2,r3
  80e54c:	1085883a 	add	r2,r2,r2
  80e550:	10c5883a 	add	r2,r2,r3
  80e554:	100490ba 	slli	r2,r2,2
  80e558:	00c02074 	movhi	r3,129
  80e55c:	10c7883a 	add	r3,r2,r3
  80e560:	18056f15 	stw	zero,5564(r3)
  80e564:	e0ffff17 	ldw	r3,-4(fp)
  80e568:	1805883a 	mov	r2,r3
  80e56c:	1085883a 	add	r2,r2,r2
  80e570:	10c5883a 	add	r2,r2,r3
  80e574:	100490ba 	slli	r2,r2,2
  80e578:	00c02074 	movhi	r3,129
  80e57c:	10c7883a 	add	r3,r2,r3
  80e580:	18056d15 	stw	zero,5556(r3)
  80e584:	0001883a 	nop
  80e588:	e037883a 	mov	sp,fp
  80e58c:	df000017 	ldw	fp,0(sp)
  80e590:	dec00104 	addi	sp,sp,4
  80e594:	f800283a 	ret

0080e598 <sbrk>:
  80e598:	defff904 	addi	sp,sp,-28
  80e59c:	df000615 	stw	fp,24(sp)
  80e5a0:	df000604 	addi	fp,sp,24
  80e5a4:	e13ffa15 	stw	r4,-24(fp)
  80e5a8:	0005303a 	rdctl	r2,status
  80e5ac:	e0bffd15 	stw	r2,-12(fp)
  80e5b0:	e0fffd17 	ldw	r3,-12(fp)
  80e5b4:	00bfff84 	movi	r2,-2
  80e5b8:	1884703a 	and	r2,r3,r2
  80e5bc:	1001703a 	wrctl	status,r2
  80e5c0:	e0bffd17 	ldw	r2,-12(fp)
  80e5c4:	e0bfff15 	stw	r2,-4(fp)
  80e5c8:	d0a00a17 	ldw	r2,-32728(gp)
  80e5cc:	10c000c4 	addi	r3,r2,3
  80e5d0:	00bfff04 	movi	r2,-4
  80e5d4:	1884703a 	and	r2,r3,r2
  80e5d8:	d0a00a15 	stw	r2,-32728(gp)
  80e5dc:	d0e00a17 	ldw	r3,-32728(gp)
  80e5e0:	e0bffa17 	ldw	r2,-24(fp)
  80e5e4:	1887883a 	add	r3,r3,r2
  80e5e8:	00804034 	movhi	r2,256
  80e5ec:	10800004 	addi	r2,r2,0
  80e5f0:	10c0072e 	bgeu	r2,r3,80e610 <sbrk+0x78>
  80e5f4:	e0bfff17 	ldw	r2,-4(fp)
  80e5f8:	e0bffc15 	stw	r2,-16(fp)
  80e5fc:	e0bffc17 	ldw	r2,-16(fp)
  80e600:	1001703a 	wrctl	status,r2
  80e604:	0001883a 	nop
  80e608:	00bfffc4 	movi	r2,-1
  80e60c:	00000c06 	br	80e640 <sbrk+0xa8>
  80e610:	d0a00a17 	ldw	r2,-32728(gp)
  80e614:	e0bffe15 	stw	r2,-8(fp)
  80e618:	d0e00a17 	ldw	r3,-32728(gp)
  80e61c:	e0bffa17 	ldw	r2,-24(fp)
  80e620:	1885883a 	add	r2,r3,r2
  80e624:	d0a00a15 	stw	r2,-32728(gp)
  80e628:	e0bfff17 	ldw	r2,-4(fp)
  80e62c:	e0bffb15 	stw	r2,-20(fp)
  80e630:	e0bffb17 	ldw	r2,-20(fp)
  80e634:	1001703a 	wrctl	status,r2
  80e638:	0001883a 	nop
  80e63c:	e0bffe17 	ldw	r2,-8(fp)
  80e640:	e037883a 	mov	sp,fp
  80e644:	df000017 	ldw	fp,0(sp)
  80e648:	dec00104 	addi	sp,sp,4
  80e64c:	f800283a 	ret

0080e650 <alt_alarm_stop>:
  80e650:	defffa04 	addi	sp,sp,-24
  80e654:	df000515 	stw	fp,20(sp)
  80e658:	df000504 	addi	fp,sp,20
  80e65c:	e13ffb15 	stw	r4,-20(fp)
  80e660:	0005303a 	rdctl	r2,status
  80e664:	e0bffc15 	stw	r2,-16(fp)
  80e668:	e0fffc17 	ldw	r3,-16(fp)
  80e66c:	00bfff84 	movi	r2,-2
  80e670:	1884703a 	and	r2,r3,r2
  80e674:	1001703a 	wrctl	status,r2
  80e678:	e0bffc17 	ldw	r2,-16(fp)
  80e67c:	e0bfff15 	stw	r2,-4(fp)
  80e680:	e0bffb17 	ldw	r2,-20(fp)
  80e684:	e0bffd15 	stw	r2,-12(fp)
  80e688:	e0bffd17 	ldw	r2,-12(fp)
  80e68c:	10800017 	ldw	r2,0(r2)
  80e690:	e0fffd17 	ldw	r3,-12(fp)
  80e694:	18c00117 	ldw	r3,4(r3)
  80e698:	10c00115 	stw	r3,4(r2)
  80e69c:	e0bffd17 	ldw	r2,-12(fp)
  80e6a0:	10800117 	ldw	r2,4(r2)
  80e6a4:	e0fffd17 	ldw	r3,-12(fp)
  80e6a8:	18c00017 	ldw	r3,0(r3)
  80e6ac:	10c00015 	stw	r3,0(r2)
  80e6b0:	e0bffd17 	ldw	r2,-12(fp)
  80e6b4:	e0fffd17 	ldw	r3,-12(fp)
  80e6b8:	10c00115 	stw	r3,4(r2)
  80e6bc:	e0bffd17 	ldw	r2,-12(fp)
  80e6c0:	e0fffd17 	ldw	r3,-12(fp)
  80e6c4:	10c00015 	stw	r3,0(r2)
  80e6c8:	0001883a 	nop
  80e6cc:	e0bfff17 	ldw	r2,-4(fp)
  80e6d0:	e0bffe15 	stw	r2,-8(fp)
  80e6d4:	e0bffe17 	ldw	r2,-8(fp)
  80e6d8:	1001703a 	wrctl	status,r2
  80e6dc:	0001883a 	nop
  80e6e0:	0001883a 	nop
  80e6e4:	e037883a 	mov	sp,fp
  80e6e8:	df000017 	ldw	fp,0(sp)
  80e6ec:	dec00104 	addi	sp,sp,4
  80e6f0:	f800283a 	ret

0080e6f4 <alt_tick>:
  80e6f4:	defffb04 	addi	sp,sp,-20
  80e6f8:	dfc00415 	stw	ra,16(sp)
  80e6fc:	df000315 	stw	fp,12(sp)
  80e700:	df000304 	addi	fp,sp,12
  80e704:	d0a00b17 	ldw	r2,-32724(gp)
  80e708:	e0bfff15 	stw	r2,-4(fp)
  80e70c:	d0a70d17 	ldw	r2,-25548(gp)
  80e710:	10800044 	addi	r2,r2,1
  80e714:	d0a70d15 	stw	r2,-25548(gp)
  80e718:	00002e06 	br	80e7d4 <alt_tick+0xe0>
  80e71c:	e0bfff17 	ldw	r2,-4(fp)
  80e720:	10800017 	ldw	r2,0(r2)
  80e724:	e0bffe15 	stw	r2,-8(fp)
  80e728:	e0bfff17 	ldw	r2,-4(fp)
  80e72c:	10800403 	ldbu	r2,16(r2)
  80e730:	10803fcc 	andi	r2,r2,255
  80e734:	10000426 	beq	r2,zero,80e748 <alt_tick+0x54>
  80e738:	d0a70d17 	ldw	r2,-25548(gp)
  80e73c:	1000021e 	bne	r2,zero,80e748 <alt_tick+0x54>
  80e740:	e0bfff17 	ldw	r2,-4(fp)
  80e744:	10000405 	stb	zero,16(r2)
  80e748:	e0bfff17 	ldw	r2,-4(fp)
  80e74c:	10800217 	ldw	r2,8(r2)
  80e750:	d0e70d17 	ldw	r3,-25548(gp)
  80e754:	18801d36 	bltu	r3,r2,80e7cc <alt_tick+0xd8>
  80e758:	e0bfff17 	ldw	r2,-4(fp)
  80e75c:	10800403 	ldbu	r2,16(r2)
  80e760:	10803fcc 	andi	r2,r2,255
  80e764:	1000191e 	bne	r2,zero,80e7cc <alt_tick+0xd8>
  80e768:	e0bfff17 	ldw	r2,-4(fp)
  80e76c:	10800317 	ldw	r2,12(r2)
  80e770:	e0ffff17 	ldw	r3,-4(fp)
  80e774:	18c00517 	ldw	r3,20(r3)
  80e778:	1809883a 	mov	r4,r3
  80e77c:	103ee83a 	callr	r2
  80e780:	e0bffd15 	stw	r2,-12(fp)
  80e784:	e0bffd17 	ldw	r2,-12(fp)
  80e788:	1000031e 	bne	r2,zero,80e798 <alt_tick+0xa4>
  80e78c:	e13fff17 	ldw	r4,-4(fp)
  80e790:	080e6500 	call	80e650 <alt_alarm_stop>
  80e794:	00000d06 	br	80e7cc <alt_tick+0xd8>
  80e798:	e0bfff17 	ldw	r2,-4(fp)
  80e79c:	10c00217 	ldw	r3,8(r2)
  80e7a0:	e0bffd17 	ldw	r2,-12(fp)
  80e7a4:	1887883a 	add	r3,r3,r2
  80e7a8:	e0bfff17 	ldw	r2,-4(fp)
  80e7ac:	10c00215 	stw	r3,8(r2)
  80e7b0:	e0bfff17 	ldw	r2,-4(fp)
  80e7b4:	10c00217 	ldw	r3,8(r2)
  80e7b8:	d0a70d17 	ldw	r2,-25548(gp)
  80e7bc:	1880032e 	bgeu	r3,r2,80e7cc <alt_tick+0xd8>
  80e7c0:	e0bfff17 	ldw	r2,-4(fp)
  80e7c4:	00c00044 	movi	r3,1
  80e7c8:	10c00405 	stb	r3,16(r2)
  80e7cc:	e0bffe17 	ldw	r2,-8(fp)
  80e7d0:	e0bfff15 	stw	r2,-4(fp)
  80e7d4:	e0ffff17 	ldw	r3,-4(fp)
  80e7d8:	d0a00b04 	addi	r2,gp,-32724
  80e7dc:	18bfcf1e 	bne	r3,r2,80e71c <alt_tick+0x28>
  80e7e0:	0001883a 	nop
  80e7e4:	0001883a 	nop
  80e7e8:	e037883a 	mov	sp,fp
  80e7ec:	dfc00117 	ldw	ra,4(sp)
  80e7f0:	df000017 	ldw	fp,0(sp)
  80e7f4:	dec00204 	addi	sp,sp,8
  80e7f8:	f800283a 	ret

0080e7fc <alt_get_errno>:
  80e7fc:	defffe04 	addi	sp,sp,-8
  80e800:	dfc00115 	stw	ra,4(sp)
  80e804:	df000015 	stw	fp,0(sp)
  80e808:	d839883a 	mov	fp,sp
  80e80c:	d0a00917 	ldw	r2,-32732(gp)
  80e810:	10000326 	beq	r2,zero,80e820 <alt_get_errno+0x24>
  80e814:	d0a00917 	ldw	r2,-32732(gp)
  80e818:	103ee83a 	callr	r2
  80e81c:	00000106 	br	80e824 <alt_get_errno+0x28>
  80e820:	d0a70704 	addi	r2,gp,-25572
  80e824:	e037883a 	mov	sp,fp
  80e828:	dfc00117 	ldw	ra,4(sp)
  80e82c:	df000017 	ldw	fp,0(sp)
  80e830:	dec00204 	addi	sp,sp,8
  80e834:	f800283a 	ret

0080e838 <write>:
  80e838:	defff904 	addi	sp,sp,-28
  80e83c:	dfc00615 	stw	ra,24(sp)
  80e840:	df000515 	stw	fp,20(sp)
  80e844:	df000504 	addi	fp,sp,20
  80e848:	e13ffd15 	stw	r4,-12(fp)
  80e84c:	e17ffc15 	stw	r5,-16(fp)
  80e850:	e1bffb15 	stw	r6,-20(fp)
  80e854:	e0bffd17 	ldw	r2,-12(fp)
  80e858:	10000916 	blt	r2,zero,80e880 <write+0x48>
  80e85c:	e0fffd17 	ldw	r3,-12(fp)
  80e860:	1805883a 	mov	r2,r3
  80e864:	1085883a 	add	r2,r2,r2
  80e868:	10c5883a 	add	r2,r2,r3
  80e86c:	100490ba 	slli	r2,r2,2
  80e870:	00c02074 	movhi	r3,129
  80e874:	18c56d04 	addi	r3,r3,5556
  80e878:	10c5883a 	add	r2,r2,r3
  80e87c:	00000106 	br	80e884 <write+0x4c>
  80e880:	0005883a 	mov	r2,zero
  80e884:	e0bfff15 	stw	r2,-4(fp)
  80e888:	e0bfff17 	ldw	r2,-4(fp)
  80e88c:	10002126 	beq	r2,zero,80e914 <write+0xdc>
  80e890:	e0bfff17 	ldw	r2,-4(fp)
  80e894:	10800217 	ldw	r2,8(r2)
  80e898:	108000cc 	andi	r2,r2,3
  80e89c:	10001826 	beq	r2,zero,80e900 <write+0xc8>
  80e8a0:	e0bfff17 	ldw	r2,-4(fp)
  80e8a4:	10800017 	ldw	r2,0(r2)
  80e8a8:	10800617 	ldw	r2,24(r2)
  80e8ac:	10001426 	beq	r2,zero,80e900 <write+0xc8>
  80e8b0:	e0bfff17 	ldw	r2,-4(fp)
  80e8b4:	10800017 	ldw	r2,0(r2)
  80e8b8:	10800617 	ldw	r2,24(r2)
  80e8bc:	e0fffb17 	ldw	r3,-20(fp)
  80e8c0:	180d883a 	mov	r6,r3
  80e8c4:	e17ffc17 	ldw	r5,-16(fp)
  80e8c8:	e13fff17 	ldw	r4,-4(fp)
  80e8cc:	103ee83a 	callr	r2
  80e8d0:	e0bffe15 	stw	r2,-8(fp)
  80e8d4:	e0bffe17 	ldw	r2,-8(fp)
  80e8d8:	1000070e 	bge	r2,zero,80e8f8 <write+0xc0>
  80e8dc:	080e7fc0 	call	80e7fc <alt_get_errno>
  80e8e0:	1007883a 	mov	r3,r2
  80e8e4:	e0bffe17 	ldw	r2,-8(fp)
  80e8e8:	0085c83a 	sub	r2,zero,r2
  80e8ec:	18800015 	stw	r2,0(r3)
  80e8f0:	00bfffc4 	movi	r2,-1
  80e8f4:	00000c06 	br	80e928 <write+0xf0>
  80e8f8:	e0bffe17 	ldw	r2,-8(fp)
  80e8fc:	00000a06 	br	80e928 <write+0xf0>
  80e900:	080e7fc0 	call	80e7fc <alt_get_errno>
  80e904:	1007883a 	mov	r3,r2
  80e908:	00800344 	movi	r2,13
  80e90c:	18800015 	stw	r2,0(r3)
  80e910:	00000406 	br	80e924 <write+0xec>
  80e914:	080e7fc0 	call	80e7fc <alt_get_errno>
  80e918:	1007883a 	mov	r3,r2
  80e91c:	00801444 	movi	r2,81
  80e920:	18800015 	stw	r2,0(r3)
  80e924:	00bfffc4 	movi	r2,-1
  80e928:	e037883a 	mov	sp,fp
  80e92c:	dfc00117 	ldw	ra,4(sp)
  80e930:	df000017 	ldw	fp,0(sp)
  80e934:	dec00204 	addi	sp,sp,8
  80e938:	f800283a 	ret

0080e93c <alt_dev_reg>:
  80e93c:	defffd04 	addi	sp,sp,-12
  80e940:	dfc00215 	stw	ra,8(sp)
  80e944:	df000115 	stw	fp,4(sp)
  80e948:	df000104 	addi	fp,sp,4
  80e94c:	e13fff15 	stw	r4,-4(fp)
  80e950:	d1600604 	addi	r5,gp,-32744
  80e954:	e13fff17 	ldw	r4,-4(fp)
  80e958:	080f7400 	call	80f740 <alt_dev_llist_insert>
  80e95c:	e037883a 	mov	sp,fp
  80e960:	dfc00117 	ldw	ra,4(sp)
  80e964:	df000017 	ldw	fp,0(sp)
  80e968:	dec00204 	addi	sp,sp,8
  80e96c:	f800283a 	ret

0080e970 <alt_irq_init>:
  80e970:	defffd04 	addi	sp,sp,-12
  80e974:	dfc00215 	stw	ra,8(sp)
  80e978:	df000115 	stw	fp,4(sp)
  80e97c:	df000104 	addi	fp,sp,4
  80e980:	e13fff15 	stw	r4,-4(fp)
  80e984:	080ff440 	call	80ff44 <altera_nios2_gen2_irq_init>
  80e988:	00800044 	movi	r2,1
  80e98c:	1001703a 	wrctl	status,r2
  80e990:	0001883a 	nop
  80e994:	0001883a 	nop
  80e998:	e037883a 	mov	sp,fp
  80e99c:	dfc00117 	ldw	ra,4(sp)
  80e9a0:	df000017 	ldw	fp,0(sp)
  80e9a4:	dec00204 	addi	sp,sp,8
  80e9a8:	f800283a 	ret

0080e9ac <alt_sys_init>:
  80e9ac:	defffe04 	addi	sp,sp,-8
  80e9b0:	dfc00115 	stw	ra,4(sp)
  80e9b4:	df000015 	stw	fp,0(sp)
  80e9b8:	d839883a 	mov	fp,sp
  80e9bc:	01c0fa04 	movi	r7,1000
  80e9c0:	01800044 	movi	r6,1
  80e9c4:	000b883a 	mov	r5,zero
  80e9c8:	01004034 	movhi	r4,256
  80e9cc:	21040004 	addi	r4,r4,4096
  80e9d0:	080f5000 	call	80f500 <alt_avalon_timer_sc_init>
  80e9d4:	01800404 	movi	r6,16
  80e9d8:	000b883a 	mov	r5,zero
  80e9dc:	01002074 	movhi	r4,129
  80e9e0:	2105d704 	addi	r4,r4,5980
  80e9e4:	080eb740 	call	80eb74 <altera_avalon_jtag_uart_init>
  80e9e8:	01002074 	movhi	r4,129
  80e9ec:	2105cd04 	addi	r4,r4,5940
  80e9f0:	080e93c0 	call	80e93c <alt_dev_reg>
  80e9f4:	0001883a 	nop
  80e9f8:	0001883a 	nop
  80e9fc:	e037883a 	mov	sp,fp
  80ea00:	dfc00117 	ldw	ra,4(sp)
  80ea04:	df000017 	ldw	fp,0(sp)
  80ea08:	dec00204 	addi	sp,sp,8
  80ea0c:	f800283a 	ret

0080ea10 <altera_avalon_jtag_uart_read_fd>:
  80ea10:	defffa04 	addi	sp,sp,-24
  80ea14:	dfc00515 	stw	ra,20(sp)
  80ea18:	df000415 	stw	fp,16(sp)
  80ea1c:	df000404 	addi	fp,sp,16
  80ea20:	e13ffe15 	stw	r4,-8(fp)
  80ea24:	e17ffd15 	stw	r5,-12(fp)
  80ea28:	e1bffc15 	stw	r6,-16(fp)
  80ea2c:	e0bffe17 	ldw	r2,-8(fp)
  80ea30:	10800017 	ldw	r2,0(r2)
  80ea34:	e0bfff15 	stw	r2,-4(fp)
  80ea38:	e0bfff17 	ldw	r2,-4(fp)
  80ea3c:	10c00a04 	addi	r3,r2,40
  80ea40:	e0bffe17 	ldw	r2,-8(fp)
  80ea44:	10800217 	ldw	r2,8(r2)
  80ea48:	100f883a 	mov	r7,r2
  80ea4c:	e1bffc17 	ldw	r6,-16(fp)
  80ea50:	e17ffd17 	ldw	r5,-12(fp)
  80ea54:	1809883a 	mov	r4,r3
  80ea58:	080f03c0 	call	80f03c <altera_avalon_jtag_uart_read>
  80ea5c:	e037883a 	mov	sp,fp
  80ea60:	dfc00117 	ldw	ra,4(sp)
  80ea64:	df000017 	ldw	fp,0(sp)
  80ea68:	dec00204 	addi	sp,sp,8
  80ea6c:	f800283a 	ret

0080ea70 <altera_avalon_jtag_uart_write_fd>:
  80ea70:	defffa04 	addi	sp,sp,-24
  80ea74:	dfc00515 	stw	ra,20(sp)
  80ea78:	df000415 	stw	fp,16(sp)
  80ea7c:	df000404 	addi	fp,sp,16
  80ea80:	e13ffe15 	stw	r4,-8(fp)
  80ea84:	e17ffd15 	stw	r5,-12(fp)
  80ea88:	e1bffc15 	stw	r6,-16(fp)
  80ea8c:	e0bffe17 	ldw	r2,-8(fp)
  80ea90:	10800017 	ldw	r2,0(r2)
  80ea94:	e0bfff15 	stw	r2,-4(fp)
  80ea98:	e0bfff17 	ldw	r2,-4(fp)
  80ea9c:	10c00a04 	addi	r3,r2,40
  80eaa0:	e0bffe17 	ldw	r2,-8(fp)
  80eaa4:	10800217 	ldw	r2,8(r2)
  80eaa8:	100f883a 	mov	r7,r2
  80eaac:	e1bffc17 	ldw	r6,-16(fp)
  80eab0:	e17ffd17 	ldw	r5,-12(fp)
  80eab4:	1809883a 	mov	r4,r3
  80eab8:	080f25c0 	call	80f25c <altera_avalon_jtag_uart_write>
  80eabc:	e037883a 	mov	sp,fp
  80eac0:	dfc00117 	ldw	ra,4(sp)
  80eac4:	df000017 	ldw	fp,0(sp)
  80eac8:	dec00204 	addi	sp,sp,8
  80eacc:	f800283a 	ret

0080ead0 <altera_avalon_jtag_uart_close_fd>:
  80ead0:	defffc04 	addi	sp,sp,-16
  80ead4:	dfc00315 	stw	ra,12(sp)
  80ead8:	df000215 	stw	fp,8(sp)
  80eadc:	df000204 	addi	fp,sp,8
  80eae0:	e13ffe15 	stw	r4,-8(fp)
  80eae4:	e0bffe17 	ldw	r2,-8(fp)
  80eae8:	10800017 	ldw	r2,0(r2)
  80eaec:	e0bfff15 	stw	r2,-4(fp)
  80eaf0:	e0bfff17 	ldw	r2,-4(fp)
  80eaf4:	10c00a04 	addi	r3,r2,40
  80eaf8:	e0bffe17 	ldw	r2,-8(fp)
  80eafc:	10800217 	ldw	r2,8(r2)
  80eb00:	100b883a 	mov	r5,r2
  80eb04:	1809883a 	mov	r4,r3
  80eb08:	080eee00 	call	80eee0 <altera_avalon_jtag_uart_close>
  80eb0c:	e037883a 	mov	sp,fp
  80eb10:	dfc00117 	ldw	ra,4(sp)
  80eb14:	df000017 	ldw	fp,0(sp)
  80eb18:	dec00204 	addi	sp,sp,8
  80eb1c:	f800283a 	ret

0080eb20 <altera_avalon_jtag_uart_ioctl_fd>:
  80eb20:	defffa04 	addi	sp,sp,-24
  80eb24:	dfc00515 	stw	ra,20(sp)
  80eb28:	df000415 	stw	fp,16(sp)
  80eb2c:	df000404 	addi	fp,sp,16
  80eb30:	e13ffe15 	stw	r4,-8(fp)
  80eb34:	e17ffd15 	stw	r5,-12(fp)
  80eb38:	e1bffc15 	stw	r6,-16(fp)
  80eb3c:	e0bffe17 	ldw	r2,-8(fp)
  80eb40:	10800017 	ldw	r2,0(r2)
  80eb44:	e0bfff15 	stw	r2,-4(fp)
  80eb48:	e0bfff17 	ldw	r2,-4(fp)
  80eb4c:	10800a04 	addi	r2,r2,40
  80eb50:	e1bffc17 	ldw	r6,-16(fp)
  80eb54:	e17ffd17 	ldw	r5,-12(fp)
  80eb58:	1009883a 	mov	r4,r2
  80eb5c:	080ef480 	call	80ef48 <altera_avalon_jtag_uart_ioctl>
  80eb60:	e037883a 	mov	sp,fp
  80eb64:	dfc00117 	ldw	ra,4(sp)
  80eb68:	df000017 	ldw	fp,0(sp)
  80eb6c:	dec00204 	addi	sp,sp,8
  80eb70:	f800283a 	ret

0080eb74 <altera_avalon_jtag_uart_init>:
  80eb74:	defffa04 	addi	sp,sp,-24
  80eb78:	dfc00515 	stw	ra,20(sp)
  80eb7c:	df000415 	stw	fp,16(sp)
  80eb80:	df000404 	addi	fp,sp,16
  80eb84:	e13fff15 	stw	r4,-4(fp)
  80eb88:	e17ffe15 	stw	r5,-8(fp)
  80eb8c:	e1bffd15 	stw	r6,-12(fp)
  80eb90:	e0bfff17 	ldw	r2,-4(fp)
  80eb94:	00c00044 	movi	r3,1
  80eb98:	10c00815 	stw	r3,32(r2)
  80eb9c:	e0bfff17 	ldw	r2,-4(fp)
  80eba0:	10800017 	ldw	r2,0(r2)
  80eba4:	10800104 	addi	r2,r2,4
  80eba8:	1007883a 	mov	r3,r2
  80ebac:	e0bfff17 	ldw	r2,-4(fp)
  80ebb0:	10800817 	ldw	r2,32(r2)
  80ebb4:	18800035 	stwio	r2,0(r3)
  80ebb8:	e0bffe17 	ldw	r2,-8(fp)
  80ebbc:	e0fffd17 	ldw	r3,-12(fp)
  80ebc0:	d8000015 	stw	zero,0(sp)
  80ebc4:	e1ffff17 	ldw	r7,-4(fp)
  80ebc8:	01802074 	movhi	r6,129
  80ebcc:	31bb0d04 	addi	r6,r6,-5068
  80ebd0:	180b883a 	mov	r5,r3
  80ebd4:	1009883a 	mov	r4,r2
  80ebd8:	080f8e40 	call	80f8e4 <alt_ic_isr_register>
  80ebdc:	e0bfff17 	ldw	r2,-4(fp)
  80ebe0:	10000915 	stw	zero,36(r2)
  80ebe4:	e0bfff17 	ldw	r2,-4(fp)
  80ebe8:	10800204 	addi	r2,r2,8
  80ebec:	d0e70c17 	ldw	r3,-25552(gp)
  80ebf0:	e1ffff17 	ldw	r7,-4(fp)
  80ebf4:	01802074 	movhi	r6,129
  80ebf8:	31bb9004 	addi	r6,r6,-4544
  80ebfc:	180b883a 	mov	r5,r3
  80ec00:	1009883a 	mov	r4,r2
  80ec04:	080f5840 	call	80f584 <alt_alarm_start>
  80ec08:	1000040e 	bge	r2,zero,80ec1c <altera_avalon_jtag_uart_init+0xa8>
  80ec0c:	e0ffff17 	ldw	r3,-4(fp)
  80ec10:	00a00034 	movhi	r2,32768
  80ec14:	10bfffc4 	addi	r2,r2,-1
  80ec18:	18800115 	stw	r2,4(r3)
  80ec1c:	0001883a 	nop
  80ec20:	e037883a 	mov	sp,fp
  80ec24:	dfc00117 	ldw	ra,4(sp)
  80ec28:	df000017 	ldw	fp,0(sp)
  80ec2c:	dec00204 	addi	sp,sp,8
  80ec30:	f800283a 	ret

0080ec34 <altera_avalon_jtag_uart_irq>:
  80ec34:	defff804 	addi	sp,sp,-32
  80ec38:	df000715 	stw	fp,28(sp)
  80ec3c:	df000704 	addi	fp,sp,28
  80ec40:	e13ff915 	stw	r4,-28(fp)
  80ec44:	e0bff917 	ldw	r2,-28(fp)
  80ec48:	e0bffd15 	stw	r2,-12(fp)
  80ec4c:	e0bffd17 	ldw	r2,-12(fp)
  80ec50:	10800017 	ldw	r2,0(r2)
  80ec54:	e0bffc15 	stw	r2,-16(fp)
  80ec58:	e0bffc17 	ldw	r2,-16(fp)
  80ec5c:	10800104 	addi	r2,r2,4
  80ec60:	10800037 	ldwio	r2,0(r2)
  80ec64:	e0bffb15 	stw	r2,-20(fp)
  80ec68:	e0bffb17 	ldw	r2,-20(fp)
  80ec6c:	1080c00c 	andi	r2,r2,768
  80ec70:	10006d26 	beq	r2,zero,80ee28 <altera_avalon_jtag_uart_irq+0x1f4>
  80ec74:	e0bffb17 	ldw	r2,-20(fp)
  80ec78:	1080400c 	andi	r2,r2,256
  80ec7c:	10003526 	beq	r2,zero,80ed54 <altera_avalon_jtag_uart_irq+0x120>
  80ec80:	00800074 	movhi	r2,1
  80ec84:	e0bfff15 	stw	r2,-4(fp)
  80ec88:	e0bffd17 	ldw	r2,-12(fp)
  80ec8c:	10800a17 	ldw	r2,40(r2)
  80ec90:	10800044 	addi	r2,r2,1
  80ec94:	1081ffcc 	andi	r2,r2,2047
  80ec98:	e0bffa15 	stw	r2,-24(fp)
  80ec9c:	e0bffd17 	ldw	r2,-12(fp)
  80eca0:	10800b17 	ldw	r2,44(r2)
  80eca4:	e0fffa17 	ldw	r3,-24(fp)
  80eca8:	18801526 	beq	r3,r2,80ed00 <altera_avalon_jtag_uart_irq+0xcc>
  80ecac:	e0bffc17 	ldw	r2,-16(fp)
  80ecb0:	10800037 	ldwio	r2,0(r2)
  80ecb4:	e0bfff15 	stw	r2,-4(fp)
  80ecb8:	e0bfff17 	ldw	r2,-4(fp)
  80ecbc:	10a0000c 	andi	r2,r2,32768
  80ecc0:	10001126 	beq	r2,zero,80ed08 <altera_avalon_jtag_uart_irq+0xd4>
  80ecc4:	e0bffd17 	ldw	r2,-12(fp)
  80ecc8:	10800a17 	ldw	r2,40(r2)
  80eccc:	e0ffff17 	ldw	r3,-4(fp)
  80ecd0:	1809883a 	mov	r4,r3
  80ecd4:	e0fffd17 	ldw	r3,-12(fp)
  80ecd8:	1885883a 	add	r2,r3,r2
  80ecdc:	11000e05 	stb	r4,56(r2)
  80ece0:	e0bffd17 	ldw	r2,-12(fp)
  80ece4:	10800a17 	ldw	r2,40(r2)
  80ece8:	10800044 	addi	r2,r2,1
  80ecec:	10c1ffcc 	andi	r3,r2,2047
  80ecf0:	e0bffd17 	ldw	r2,-12(fp)
  80ecf4:	10c00a15 	stw	r3,40(r2)
  80ecf8:	0001883a 	nop
  80ecfc:	003fe206 	br	80ec88 <altera_avalon_jtag_uart_irq+0x54>
  80ed00:	0001883a 	nop
  80ed04:	00000106 	br	80ed0c <altera_avalon_jtag_uart_irq+0xd8>
  80ed08:	0001883a 	nop
  80ed0c:	e0bfff17 	ldw	r2,-4(fp)
  80ed10:	10bfffec 	andhi	r2,r2,65535
  80ed14:	10000f26 	beq	r2,zero,80ed54 <altera_avalon_jtag_uart_irq+0x120>
  80ed18:	e0bffd17 	ldw	r2,-12(fp)
  80ed1c:	10c00817 	ldw	r3,32(r2)
  80ed20:	00bfff84 	movi	r2,-2
  80ed24:	1886703a 	and	r3,r3,r2
  80ed28:	e0bffd17 	ldw	r2,-12(fp)
  80ed2c:	10c00815 	stw	r3,32(r2)
  80ed30:	e0bffc17 	ldw	r2,-16(fp)
  80ed34:	10800104 	addi	r2,r2,4
  80ed38:	1007883a 	mov	r3,r2
  80ed3c:	e0bffd17 	ldw	r2,-12(fp)
  80ed40:	10800817 	ldw	r2,32(r2)
  80ed44:	18800035 	stwio	r2,0(r3)
  80ed48:	e0bffc17 	ldw	r2,-16(fp)
  80ed4c:	10800104 	addi	r2,r2,4
  80ed50:	10800037 	ldwio	r2,0(r2)
  80ed54:	e0bffb17 	ldw	r2,-20(fp)
  80ed58:	1080800c 	andi	r2,r2,512
  80ed5c:	103fbe26 	beq	r2,zero,80ec58 <altera_avalon_jtag_uart_irq+0x24>
  80ed60:	e0bffb17 	ldw	r2,-20(fp)
  80ed64:	1004d43a 	srli	r2,r2,16
  80ed68:	e0bffe15 	stw	r2,-8(fp)
  80ed6c:	00001406 	br	80edc0 <altera_avalon_jtag_uart_irq+0x18c>
  80ed70:	e0bffc17 	ldw	r2,-16(fp)
  80ed74:	e0fffd17 	ldw	r3,-12(fp)
  80ed78:	18c00d17 	ldw	r3,52(r3)
  80ed7c:	e13ffd17 	ldw	r4,-12(fp)
  80ed80:	20c7883a 	add	r3,r4,r3
  80ed84:	18c20e03 	ldbu	r3,2104(r3)
  80ed88:	18c03fcc 	andi	r3,r3,255
  80ed8c:	18c0201c 	xori	r3,r3,128
  80ed90:	18ffe004 	addi	r3,r3,-128
  80ed94:	10c00035 	stwio	r3,0(r2)
  80ed98:	e0bffd17 	ldw	r2,-12(fp)
  80ed9c:	10800d17 	ldw	r2,52(r2)
  80eda0:	10800044 	addi	r2,r2,1
  80eda4:	10c1ffcc 	andi	r3,r2,2047
  80eda8:	e0bffd17 	ldw	r2,-12(fp)
  80edac:	10c00d15 	stw	r3,52(r2)
  80edb0:	0001883a 	nop
  80edb4:	e0bffe17 	ldw	r2,-8(fp)
  80edb8:	10bfffc4 	addi	r2,r2,-1
  80edbc:	e0bffe15 	stw	r2,-8(fp)
  80edc0:	e0bffe17 	ldw	r2,-8(fp)
  80edc4:	10000526 	beq	r2,zero,80eddc <altera_avalon_jtag_uart_irq+0x1a8>
  80edc8:	e0bffd17 	ldw	r2,-12(fp)
  80edcc:	10c00d17 	ldw	r3,52(r2)
  80edd0:	e0bffd17 	ldw	r2,-12(fp)
  80edd4:	10800c17 	ldw	r2,48(r2)
  80edd8:	18bfe51e 	bne	r3,r2,80ed70 <altera_avalon_jtag_uart_irq+0x13c>
  80eddc:	e0bffe17 	ldw	r2,-8(fp)
  80ede0:	103f9d26 	beq	r2,zero,80ec58 <altera_avalon_jtag_uart_irq+0x24>
  80ede4:	e0bffd17 	ldw	r2,-12(fp)
  80ede8:	10c00817 	ldw	r3,32(r2)
  80edec:	00bfff44 	movi	r2,-3
  80edf0:	1886703a 	and	r3,r3,r2
  80edf4:	e0bffd17 	ldw	r2,-12(fp)
  80edf8:	10c00815 	stw	r3,32(r2)
  80edfc:	e0bffd17 	ldw	r2,-12(fp)
  80ee00:	10800017 	ldw	r2,0(r2)
  80ee04:	10800104 	addi	r2,r2,4
  80ee08:	1007883a 	mov	r3,r2
  80ee0c:	e0bffd17 	ldw	r2,-12(fp)
  80ee10:	10800817 	ldw	r2,32(r2)
  80ee14:	18800035 	stwio	r2,0(r3)
  80ee18:	e0bffc17 	ldw	r2,-16(fp)
  80ee1c:	10800104 	addi	r2,r2,4
  80ee20:	10800037 	ldwio	r2,0(r2)
  80ee24:	003f8c06 	br	80ec58 <altera_avalon_jtag_uart_irq+0x24>
  80ee28:	0001883a 	nop
  80ee2c:	0001883a 	nop
  80ee30:	e037883a 	mov	sp,fp
  80ee34:	df000017 	ldw	fp,0(sp)
  80ee38:	dec00104 	addi	sp,sp,4
  80ee3c:	f800283a 	ret

0080ee40 <altera_avalon_jtag_uart_timeout>:
  80ee40:	defffc04 	addi	sp,sp,-16
  80ee44:	df000315 	stw	fp,12(sp)
  80ee48:	df000304 	addi	fp,sp,12
  80ee4c:	e13ffd15 	stw	r4,-12(fp)
  80ee50:	e0bffd17 	ldw	r2,-12(fp)
  80ee54:	e0bfff15 	stw	r2,-4(fp)
  80ee58:	e0bfff17 	ldw	r2,-4(fp)
  80ee5c:	10800017 	ldw	r2,0(r2)
  80ee60:	10800104 	addi	r2,r2,4
  80ee64:	10800037 	ldwio	r2,0(r2)
  80ee68:	e0bffe15 	stw	r2,-8(fp)
  80ee6c:	e0bffe17 	ldw	r2,-8(fp)
  80ee70:	1081000c 	andi	r2,r2,1024
  80ee74:	10000b26 	beq	r2,zero,80eea4 <altera_avalon_jtag_uart_timeout+0x64>
  80ee78:	e0bfff17 	ldw	r2,-4(fp)
  80ee7c:	10800017 	ldw	r2,0(r2)
  80ee80:	10800104 	addi	r2,r2,4
  80ee84:	1007883a 	mov	r3,r2
  80ee88:	e0bfff17 	ldw	r2,-4(fp)
  80ee8c:	10800817 	ldw	r2,32(r2)
  80ee90:	10810014 	ori	r2,r2,1024
  80ee94:	18800035 	stwio	r2,0(r3)
  80ee98:	e0bfff17 	ldw	r2,-4(fp)
  80ee9c:	10000915 	stw	zero,36(r2)
  80eea0:	00000a06 	br	80eecc <altera_avalon_jtag_uart_timeout+0x8c>
  80eea4:	e0bfff17 	ldw	r2,-4(fp)
  80eea8:	10c00917 	ldw	r3,36(r2)
  80eeac:	00a00034 	movhi	r2,32768
  80eeb0:	10bfff04 	addi	r2,r2,-4
  80eeb4:	10c00536 	bltu	r2,r3,80eecc <altera_avalon_jtag_uart_timeout+0x8c>
  80eeb8:	e0bfff17 	ldw	r2,-4(fp)
  80eebc:	10800917 	ldw	r2,36(r2)
  80eec0:	10c00044 	addi	r3,r2,1
  80eec4:	e0bfff17 	ldw	r2,-4(fp)
  80eec8:	10c00915 	stw	r3,36(r2)
  80eecc:	d0a70c17 	ldw	r2,-25552(gp)
  80eed0:	e037883a 	mov	sp,fp
  80eed4:	df000017 	ldw	fp,0(sp)
  80eed8:	dec00104 	addi	sp,sp,4
  80eedc:	f800283a 	ret

0080eee0 <altera_avalon_jtag_uart_close>:
  80eee0:	defffd04 	addi	sp,sp,-12
  80eee4:	df000215 	stw	fp,8(sp)
  80eee8:	df000204 	addi	fp,sp,8
  80eeec:	e13fff15 	stw	r4,-4(fp)
  80eef0:	e17ffe15 	stw	r5,-8(fp)
  80eef4:	00000506 	br	80ef0c <altera_avalon_jtag_uart_close+0x2c>
  80eef8:	e0bffe17 	ldw	r2,-8(fp)
  80eefc:	1090000c 	andi	r2,r2,16384
  80ef00:	10000226 	beq	r2,zero,80ef0c <altera_avalon_jtag_uart_close+0x2c>
  80ef04:	00bffd44 	movi	r2,-11
  80ef08:	00000b06 	br	80ef38 <altera_avalon_jtag_uart_close+0x58>
  80ef0c:	e0bfff17 	ldw	r2,-4(fp)
  80ef10:	10c00d17 	ldw	r3,52(r2)
  80ef14:	e0bfff17 	ldw	r2,-4(fp)
  80ef18:	10800c17 	ldw	r2,48(r2)
  80ef1c:	18800526 	beq	r3,r2,80ef34 <altera_avalon_jtag_uart_close+0x54>
  80ef20:	e0bfff17 	ldw	r2,-4(fp)
  80ef24:	10c00917 	ldw	r3,36(r2)
  80ef28:	e0bfff17 	ldw	r2,-4(fp)
  80ef2c:	10800117 	ldw	r2,4(r2)
  80ef30:	18bff136 	bltu	r3,r2,80eef8 <altera_avalon_jtag_uart_close+0x18>
  80ef34:	0005883a 	mov	r2,zero
  80ef38:	e037883a 	mov	sp,fp
  80ef3c:	df000017 	ldw	fp,0(sp)
  80ef40:	dec00104 	addi	sp,sp,4
  80ef44:	f800283a 	ret

0080ef48 <altera_avalon_jtag_uart_ioctl>:
  80ef48:	defffa04 	addi	sp,sp,-24
  80ef4c:	df000515 	stw	fp,20(sp)
  80ef50:	df000504 	addi	fp,sp,20
  80ef54:	e13ffd15 	stw	r4,-12(fp)
  80ef58:	e17ffc15 	stw	r5,-16(fp)
  80ef5c:	e1bffb15 	stw	r6,-20(fp)
  80ef60:	00bff9c4 	movi	r2,-25
  80ef64:	e0bfff15 	stw	r2,-4(fp)
  80ef68:	e0bffc17 	ldw	r2,-16(fp)
  80ef6c:	109a8060 	cmpeqi	r2,r2,27137
  80ef70:	1000041e 	bne	r2,zero,80ef84 <altera_avalon_jtag_uart_ioctl+0x3c>
  80ef74:	e0bffc17 	ldw	r2,-16(fp)
  80ef78:	109a80a0 	cmpeqi	r2,r2,27138
  80ef7c:	1000181e 	bne	r2,zero,80efe0 <altera_avalon_jtag_uart_ioctl+0x98>
  80ef80:	00002906 	br	80f028 <altera_avalon_jtag_uart_ioctl+0xe0>
  80ef84:	e0bffd17 	ldw	r2,-12(fp)
  80ef88:	10c00117 	ldw	r3,4(r2)
  80ef8c:	00a00034 	movhi	r2,32768
  80ef90:	10bfffc4 	addi	r2,r2,-1
  80ef94:	18802126 	beq	r3,r2,80f01c <altera_avalon_jtag_uart_ioctl+0xd4>
  80ef98:	e0bffb17 	ldw	r2,-20(fp)
  80ef9c:	10800017 	ldw	r2,0(r2)
  80efa0:	e0bffe15 	stw	r2,-8(fp)
  80efa4:	e0bffe17 	ldw	r2,-8(fp)
  80efa8:	10800090 	cmplti	r2,r2,2
  80efac:	1000061e 	bne	r2,zero,80efc8 <altera_avalon_jtag_uart_ioctl+0x80>
  80efb0:	e0fffe17 	ldw	r3,-8(fp)
  80efb4:	00a00034 	movhi	r2,32768
  80efb8:	10bfffc4 	addi	r2,r2,-1
  80efbc:	18800226 	beq	r3,r2,80efc8 <altera_avalon_jtag_uart_ioctl+0x80>
  80efc0:	e0bffe17 	ldw	r2,-8(fp)
  80efc4:	00000206 	br	80efd0 <altera_avalon_jtag_uart_ioctl+0x88>
  80efc8:	00a00034 	movhi	r2,32768
  80efcc:	10bfff84 	addi	r2,r2,-2
  80efd0:	e0fffd17 	ldw	r3,-12(fp)
  80efd4:	18800115 	stw	r2,4(r3)
  80efd8:	e03fff15 	stw	zero,-4(fp)
  80efdc:	00000f06 	br	80f01c <altera_avalon_jtag_uart_ioctl+0xd4>
  80efe0:	e0bffd17 	ldw	r2,-12(fp)
  80efe4:	10c00117 	ldw	r3,4(r2)
  80efe8:	00a00034 	movhi	r2,32768
  80efec:	10bfffc4 	addi	r2,r2,-1
  80eff0:	18800c26 	beq	r3,r2,80f024 <altera_avalon_jtag_uart_ioctl+0xdc>
  80eff4:	e0bffd17 	ldw	r2,-12(fp)
  80eff8:	10c00917 	ldw	r3,36(r2)
  80effc:	e0bffd17 	ldw	r2,-12(fp)
  80f000:	10800117 	ldw	r2,4(r2)
  80f004:	1885803a 	cmpltu	r2,r3,r2
  80f008:	10c03fcc 	andi	r3,r2,255
  80f00c:	e0bffb17 	ldw	r2,-20(fp)
  80f010:	10c00015 	stw	r3,0(r2)
  80f014:	e03fff15 	stw	zero,-4(fp)
  80f018:	00000206 	br	80f024 <altera_avalon_jtag_uart_ioctl+0xdc>
  80f01c:	0001883a 	nop
  80f020:	00000106 	br	80f028 <altera_avalon_jtag_uart_ioctl+0xe0>
  80f024:	0001883a 	nop
  80f028:	e0bfff17 	ldw	r2,-4(fp)
  80f02c:	e037883a 	mov	sp,fp
  80f030:	df000017 	ldw	fp,0(sp)
  80f034:	dec00104 	addi	sp,sp,4
  80f038:	f800283a 	ret

0080f03c <altera_avalon_jtag_uart_read>:
  80f03c:	defff304 	addi	sp,sp,-52
  80f040:	dfc00c15 	stw	ra,48(sp)
  80f044:	df000b15 	stw	fp,44(sp)
  80f048:	df000b04 	addi	fp,sp,44
  80f04c:	e13ff815 	stw	r4,-32(fp)
  80f050:	e17ff715 	stw	r5,-36(fp)
  80f054:	e1bff615 	stw	r6,-40(fp)
  80f058:	e1fff515 	stw	r7,-44(fp)
  80f05c:	e0bff717 	ldw	r2,-36(fp)
  80f060:	e0bfff15 	stw	r2,-4(fp)
  80f064:	00004706 	br	80f184 <altera_avalon_jtag_uart_read+0x148>
  80f068:	e0bff817 	ldw	r2,-32(fp)
  80f06c:	10800a17 	ldw	r2,40(r2)
  80f070:	e0bffd15 	stw	r2,-12(fp)
  80f074:	e0bff817 	ldw	r2,-32(fp)
  80f078:	10800b17 	ldw	r2,44(r2)
  80f07c:	e0bffc15 	stw	r2,-16(fp)
  80f080:	e0fffd17 	ldw	r3,-12(fp)
  80f084:	e0bffc17 	ldw	r2,-16(fp)
  80f088:	18800536 	bltu	r3,r2,80f0a0 <altera_avalon_jtag_uart_read+0x64>
  80f08c:	e0fffd17 	ldw	r3,-12(fp)
  80f090:	e0bffc17 	ldw	r2,-16(fp)
  80f094:	1885c83a 	sub	r2,r3,r2
  80f098:	e0bffe15 	stw	r2,-8(fp)
  80f09c:	00000406 	br	80f0b0 <altera_avalon_jtag_uart_read+0x74>
  80f0a0:	00c20004 	movi	r3,2048
  80f0a4:	e0bffc17 	ldw	r2,-16(fp)
  80f0a8:	1885c83a 	sub	r2,r3,r2
  80f0ac:	e0bffe15 	stw	r2,-8(fp)
  80f0b0:	e0bffe17 	ldw	r2,-8(fp)
  80f0b4:	10001e26 	beq	r2,zero,80f130 <altera_avalon_jtag_uart_read+0xf4>
  80f0b8:	e0fff617 	ldw	r3,-40(fp)
  80f0bc:	e0bffe17 	ldw	r2,-8(fp)
  80f0c0:	1880022e 	bgeu	r3,r2,80f0cc <altera_avalon_jtag_uart_read+0x90>
  80f0c4:	e0bff617 	ldw	r2,-40(fp)
  80f0c8:	e0bffe15 	stw	r2,-8(fp)
  80f0cc:	e0bff817 	ldw	r2,-32(fp)
  80f0d0:	10c00e04 	addi	r3,r2,56
  80f0d4:	e0bffc17 	ldw	r2,-16(fp)
  80f0d8:	1885883a 	add	r2,r3,r2
  80f0dc:	e1bffe17 	ldw	r6,-8(fp)
  80f0e0:	100b883a 	mov	r5,r2
  80f0e4:	e13fff17 	ldw	r4,-4(fp)
  80f0e8:	08070440 	call	807044 <memcpy>
  80f0ec:	e0ffff17 	ldw	r3,-4(fp)
  80f0f0:	e0bffe17 	ldw	r2,-8(fp)
  80f0f4:	1885883a 	add	r2,r3,r2
  80f0f8:	e0bfff15 	stw	r2,-4(fp)
  80f0fc:	e0fff617 	ldw	r3,-40(fp)
  80f100:	e0bffe17 	ldw	r2,-8(fp)
  80f104:	1885c83a 	sub	r2,r3,r2
  80f108:	e0bff615 	stw	r2,-40(fp)
  80f10c:	e0fffc17 	ldw	r3,-16(fp)
  80f110:	e0bffe17 	ldw	r2,-8(fp)
  80f114:	1885883a 	add	r2,r3,r2
  80f118:	10c1ffcc 	andi	r3,r2,2047
  80f11c:	e0bff817 	ldw	r2,-32(fp)
  80f120:	10c00b15 	stw	r3,44(r2)
  80f124:	e0bff617 	ldw	r2,-40(fp)
  80f128:	00bfcf16 	blt	zero,r2,80f068 <altera_avalon_jtag_uart_read+0x2c>
  80f12c:	00000106 	br	80f134 <altera_avalon_jtag_uart_read+0xf8>
  80f130:	0001883a 	nop
  80f134:	e0ffff17 	ldw	r3,-4(fp)
  80f138:	e0bff717 	ldw	r2,-36(fp)
  80f13c:	1880141e 	bne	r3,r2,80f190 <altera_avalon_jtag_uart_read+0x154>
  80f140:	e0bff517 	ldw	r2,-44(fp)
  80f144:	1090000c 	andi	r2,r2,16384
  80f148:	1000131e 	bne	r2,zero,80f198 <altera_avalon_jtag_uart_read+0x15c>
  80f14c:	0001883a 	nop
  80f150:	e0bff817 	ldw	r2,-32(fp)
  80f154:	10800a17 	ldw	r2,40(r2)
  80f158:	e0fffd17 	ldw	r3,-12(fp)
  80f15c:	1880051e 	bne	r3,r2,80f174 <altera_avalon_jtag_uart_read+0x138>
  80f160:	e0bff817 	ldw	r2,-32(fp)
  80f164:	10c00917 	ldw	r3,36(r2)
  80f168:	e0bff817 	ldw	r2,-32(fp)
  80f16c:	10800117 	ldw	r2,4(r2)
  80f170:	18bff736 	bltu	r3,r2,80f150 <altera_avalon_jtag_uart_read+0x114>
  80f174:	e0bff817 	ldw	r2,-32(fp)
  80f178:	10800a17 	ldw	r2,40(r2)
  80f17c:	e0fffd17 	ldw	r3,-12(fp)
  80f180:	18800726 	beq	r3,r2,80f1a0 <altera_avalon_jtag_uart_read+0x164>
  80f184:	e0bff617 	ldw	r2,-40(fp)
  80f188:	00bfb716 	blt	zero,r2,80f068 <altera_avalon_jtag_uart_read+0x2c>
  80f18c:	00000506 	br	80f1a4 <altera_avalon_jtag_uart_read+0x168>
  80f190:	0001883a 	nop
  80f194:	00000306 	br	80f1a4 <altera_avalon_jtag_uart_read+0x168>
  80f198:	0001883a 	nop
  80f19c:	00000106 	br	80f1a4 <altera_avalon_jtag_uart_read+0x168>
  80f1a0:	0001883a 	nop
  80f1a4:	e0ffff17 	ldw	r3,-4(fp)
  80f1a8:	e0bff717 	ldw	r2,-36(fp)
  80f1ac:	18801926 	beq	r3,r2,80f214 <altera_avalon_jtag_uart_read+0x1d8>
  80f1b0:	0005303a 	rdctl	r2,status
  80f1b4:	e0bff915 	stw	r2,-28(fp)
  80f1b8:	e0fff917 	ldw	r3,-28(fp)
  80f1bc:	00bfff84 	movi	r2,-2
  80f1c0:	1884703a 	and	r2,r3,r2
  80f1c4:	1001703a 	wrctl	status,r2
  80f1c8:	e0bff917 	ldw	r2,-28(fp)
  80f1cc:	e0bffb15 	stw	r2,-20(fp)
  80f1d0:	e0bff817 	ldw	r2,-32(fp)
  80f1d4:	10800817 	ldw	r2,32(r2)
  80f1d8:	10c00054 	ori	r3,r2,1
  80f1dc:	e0bff817 	ldw	r2,-32(fp)
  80f1e0:	10c00815 	stw	r3,32(r2)
  80f1e4:	e0bff817 	ldw	r2,-32(fp)
  80f1e8:	10800017 	ldw	r2,0(r2)
  80f1ec:	10800104 	addi	r2,r2,4
  80f1f0:	1007883a 	mov	r3,r2
  80f1f4:	e0bff817 	ldw	r2,-32(fp)
  80f1f8:	10800817 	ldw	r2,32(r2)
  80f1fc:	18800035 	stwio	r2,0(r3)
  80f200:	e0bffb17 	ldw	r2,-20(fp)
  80f204:	e0bffa15 	stw	r2,-24(fp)
  80f208:	e0bffa17 	ldw	r2,-24(fp)
  80f20c:	1001703a 	wrctl	status,r2
  80f210:	0001883a 	nop
  80f214:	e0ffff17 	ldw	r3,-4(fp)
  80f218:	e0bff717 	ldw	r2,-36(fp)
  80f21c:	18800426 	beq	r3,r2,80f230 <altera_avalon_jtag_uart_read+0x1f4>
  80f220:	e0ffff17 	ldw	r3,-4(fp)
  80f224:	e0bff717 	ldw	r2,-36(fp)
  80f228:	1885c83a 	sub	r2,r3,r2
  80f22c:	00000606 	br	80f248 <altera_avalon_jtag_uart_read+0x20c>
  80f230:	e0bff517 	ldw	r2,-44(fp)
  80f234:	1090000c 	andi	r2,r2,16384
  80f238:	10000226 	beq	r2,zero,80f244 <altera_avalon_jtag_uart_read+0x208>
  80f23c:	00bffd44 	movi	r2,-11
  80f240:	00000106 	br	80f248 <altera_avalon_jtag_uart_read+0x20c>
  80f244:	00bffec4 	movi	r2,-5
  80f248:	e037883a 	mov	sp,fp
  80f24c:	dfc00117 	ldw	ra,4(sp)
  80f250:	df000017 	ldw	fp,0(sp)
  80f254:	dec00204 	addi	sp,sp,8
  80f258:	f800283a 	ret

0080f25c <altera_avalon_jtag_uart_write>:
  80f25c:	defff304 	addi	sp,sp,-52
  80f260:	dfc00c15 	stw	ra,48(sp)
  80f264:	df000b15 	stw	fp,44(sp)
  80f268:	df000b04 	addi	fp,sp,44
  80f26c:	e13ff815 	stw	r4,-32(fp)
  80f270:	e17ff715 	stw	r5,-36(fp)
  80f274:	e1bff615 	stw	r6,-40(fp)
  80f278:	e1fff515 	stw	r7,-44(fp)
  80f27c:	e03fff15 	stw	zero,-4(fp)
  80f280:	e0bff717 	ldw	r2,-36(fp)
  80f284:	e0bffd15 	stw	r2,-12(fp)
  80f288:	00003706 	br	80f368 <altera_avalon_jtag_uart_write+0x10c>
  80f28c:	e0bff817 	ldw	r2,-32(fp)
  80f290:	10800c17 	ldw	r2,48(r2)
  80f294:	e0bffc15 	stw	r2,-16(fp)
  80f298:	e0bff817 	ldw	r2,-32(fp)
  80f29c:	10800d17 	ldw	r2,52(r2)
  80f2a0:	e0bfff15 	stw	r2,-4(fp)
  80f2a4:	e0fffc17 	ldw	r3,-16(fp)
  80f2a8:	e0bfff17 	ldw	r2,-4(fp)
  80f2ac:	1880062e 	bgeu	r3,r2,80f2c8 <altera_avalon_jtag_uart_write+0x6c>
  80f2b0:	e0ffff17 	ldw	r3,-4(fp)
  80f2b4:	e0bffc17 	ldw	r2,-16(fp)
  80f2b8:	1885c83a 	sub	r2,r3,r2
  80f2bc:	10bfffc4 	addi	r2,r2,-1
  80f2c0:	e0bffe15 	stw	r2,-8(fp)
  80f2c4:	00000b06 	br	80f2f4 <altera_avalon_jtag_uart_write+0x98>
  80f2c8:	e0bfff17 	ldw	r2,-4(fp)
  80f2cc:	10000526 	beq	r2,zero,80f2e4 <altera_avalon_jtag_uart_write+0x88>
  80f2d0:	00c20004 	movi	r3,2048
  80f2d4:	e0bffc17 	ldw	r2,-16(fp)
  80f2d8:	1885c83a 	sub	r2,r3,r2
  80f2dc:	e0bffe15 	stw	r2,-8(fp)
  80f2e0:	00000406 	br	80f2f4 <altera_avalon_jtag_uart_write+0x98>
  80f2e4:	00c1ffc4 	movi	r3,2047
  80f2e8:	e0bffc17 	ldw	r2,-16(fp)
  80f2ec:	1885c83a 	sub	r2,r3,r2
  80f2f0:	e0bffe15 	stw	r2,-8(fp)
  80f2f4:	e0bffe17 	ldw	r2,-8(fp)
  80f2f8:	10001e26 	beq	r2,zero,80f374 <altera_avalon_jtag_uart_write+0x118>
  80f2fc:	e0fff617 	ldw	r3,-40(fp)
  80f300:	e0bffe17 	ldw	r2,-8(fp)
  80f304:	1880022e 	bgeu	r3,r2,80f310 <altera_avalon_jtag_uart_write+0xb4>
  80f308:	e0bff617 	ldw	r2,-40(fp)
  80f30c:	e0bffe15 	stw	r2,-8(fp)
  80f310:	e0bff817 	ldw	r2,-32(fp)
  80f314:	10c20e04 	addi	r3,r2,2104
  80f318:	e0bffc17 	ldw	r2,-16(fp)
  80f31c:	1885883a 	add	r2,r3,r2
  80f320:	e1bffe17 	ldw	r6,-8(fp)
  80f324:	e17ff717 	ldw	r5,-36(fp)
  80f328:	1009883a 	mov	r4,r2
  80f32c:	08070440 	call	807044 <memcpy>
  80f330:	e0fff717 	ldw	r3,-36(fp)
  80f334:	e0bffe17 	ldw	r2,-8(fp)
  80f338:	1885883a 	add	r2,r3,r2
  80f33c:	e0bff715 	stw	r2,-36(fp)
  80f340:	e0fff617 	ldw	r3,-40(fp)
  80f344:	e0bffe17 	ldw	r2,-8(fp)
  80f348:	1885c83a 	sub	r2,r3,r2
  80f34c:	e0bff615 	stw	r2,-40(fp)
  80f350:	e0fffc17 	ldw	r3,-16(fp)
  80f354:	e0bffe17 	ldw	r2,-8(fp)
  80f358:	1885883a 	add	r2,r3,r2
  80f35c:	10c1ffcc 	andi	r3,r2,2047
  80f360:	e0bff817 	ldw	r2,-32(fp)
  80f364:	10c00c15 	stw	r3,48(r2)
  80f368:	e0bff617 	ldw	r2,-40(fp)
  80f36c:	00bfc716 	blt	zero,r2,80f28c <altera_avalon_jtag_uart_write+0x30>
  80f370:	00000106 	br	80f378 <altera_avalon_jtag_uart_write+0x11c>
  80f374:	0001883a 	nop
  80f378:	0005303a 	rdctl	r2,status
  80f37c:	e0bff915 	stw	r2,-28(fp)
  80f380:	e0fff917 	ldw	r3,-28(fp)
  80f384:	00bfff84 	movi	r2,-2
  80f388:	1884703a 	and	r2,r3,r2
  80f38c:	1001703a 	wrctl	status,r2
  80f390:	e0bff917 	ldw	r2,-28(fp)
  80f394:	e0bffb15 	stw	r2,-20(fp)
  80f398:	e0bff817 	ldw	r2,-32(fp)
  80f39c:	10800817 	ldw	r2,32(r2)
  80f3a0:	10c00094 	ori	r3,r2,2
  80f3a4:	e0bff817 	ldw	r2,-32(fp)
  80f3a8:	10c00815 	stw	r3,32(r2)
  80f3ac:	e0bff817 	ldw	r2,-32(fp)
  80f3b0:	10800017 	ldw	r2,0(r2)
  80f3b4:	10800104 	addi	r2,r2,4
  80f3b8:	1007883a 	mov	r3,r2
  80f3bc:	e0bff817 	ldw	r2,-32(fp)
  80f3c0:	10800817 	ldw	r2,32(r2)
  80f3c4:	18800035 	stwio	r2,0(r3)
  80f3c8:	e0bffb17 	ldw	r2,-20(fp)
  80f3cc:	e0bffa15 	stw	r2,-24(fp)
  80f3d0:	e0bffa17 	ldw	r2,-24(fp)
  80f3d4:	1001703a 	wrctl	status,r2
  80f3d8:	0001883a 	nop
  80f3dc:	e0bff617 	ldw	r2,-40(fp)
  80f3e0:	0080100e 	bge	zero,r2,80f424 <altera_avalon_jtag_uart_write+0x1c8>
  80f3e4:	e0bff517 	ldw	r2,-44(fp)
  80f3e8:	1090000c 	andi	r2,r2,16384
  80f3ec:	1000101e 	bne	r2,zero,80f430 <altera_avalon_jtag_uart_write+0x1d4>
  80f3f0:	0001883a 	nop
  80f3f4:	e0bff817 	ldw	r2,-32(fp)
  80f3f8:	10800d17 	ldw	r2,52(r2)
  80f3fc:	e0ffff17 	ldw	r3,-4(fp)
  80f400:	1880051e 	bne	r3,r2,80f418 <altera_avalon_jtag_uart_write+0x1bc>
  80f404:	e0bff817 	ldw	r2,-32(fp)
  80f408:	10c00917 	ldw	r3,36(r2)
  80f40c:	e0bff817 	ldw	r2,-32(fp)
  80f410:	10800117 	ldw	r2,4(r2)
  80f414:	18bff736 	bltu	r3,r2,80f3f4 <altera_avalon_jtag_uart_write+0x198>
  80f418:	e0bff817 	ldw	r2,-32(fp)
  80f41c:	10800917 	ldw	r2,36(r2)
  80f420:	1000051e 	bne	r2,zero,80f438 <altera_avalon_jtag_uart_write+0x1dc>
  80f424:	e0bff617 	ldw	r2,-40(fp)
  80f428:	00bfcf16 	blt	zero,r2,80f368 <altera_avalon_jtag_uart_write+0x10c>
  80f42c:	00000306 	br	80f43c <altera_avalon_jtag_uart_write+0x1e0>
  80f430:	0001883a 	nop
  80f434:	00000106 	br	80f43c <altera_avalon_jtag_uart_write+0x1e0>
  80f438:	0001883a 	nop
  80f43c:	e0fff717 	ldw	r3,-36(fp)
  80f440:	e0bffd17 	ldw	r2,-12(fp)
  80f444:	18800426 	beq	r3,r2,80f458 <altera_avalon_jtag_uart_write+0x1fc>
  80f448:	e0fff717 	ldw	r3,-36(fp)
  80f44c:	e0bffd17 	ldw	r2,-12(fp)
  80f450:	1885c83a 	sub	r2,r3,r2
  80f454:	00000606 	br	80f470 <altera_avalon_jtag_uart_write+0x214>
  80f458:	e0bff517 	ldw	r2,-44(fp)
  80f45c:	1090000c 	andi	r2,r2,16384
  80f460:	10000226 	beq	r2,zero,80f46c <altera_avalon_jtag_uart_write+0x210>
  80f464:	00bffd44 	movi	r2,-11
  80f468:	00000106 	br	80f470 <altera_avalon_jtag_uart_write+0x214>
  80f46c:	00bffec4 	movi	r2,-5
  80f470:	e037883a 	mov	sp,fp
  80f474:	dfc00117 	ldw	ra,4(sp)
  80f478:	df000017 	ldw	fp,0(sp)
  80f47c:	dec00204 	addi	sp,sp,8
  80f480:	f800283a 	ret

0080f484 <alt_avalon_timer_sc_irq>:
  80f484:	defffa04 	addi	sp,sp,-24
  80f488:	dfc00515 	stw	ra,20(sp)
  80f48c:	df000415 	stw	fp,16(sp)
  80f490:	df000404 	addi	fp,sp,16
  80f494:	e13ffc15 	stw	r4,-16(fp)
  80f498:	0007883a 	mov	r3,zero
  80f49c:	e0bffc17 	ldw	r2,-16(fp)
  80f4a0:	10c00035 	stwio	r3,0(r2)
  80f4a4:	e0bffc17 	ldw	r2,-16(fp)
  80f4a8:	10800104 	addi	r2,r2,4
  80f4ac:	10800037 	ldwio	r2,0(r2)
  80f4b0:	0005303a 	rdctl	r2,status
  80f4b4:	e0bffd15 	stw	r2,-12(fp)
  80f4b8:	e0fffd17 	ldw	r3,-12(fp)
  80f4bc:	00bfff84 	movi	r2,-2
  80f4c0:	1884703a 	and	r2,r3,r2
  80f4c4:	1001703a 	wrctl	status,r2
  80f4c8:	e0bffd17 	ldw	r2,-12(fp)
  80f4cc:	e0bfff15 	stw	r2,-4(fp)
  80f4d0:	080e6f40 	call	80e6f4 <alt_tick>
  80f4d4:	e0bfff17 	ldw	r2,-4(fp)
  80f4d8:	e0bffe15 	stw	r2,-8(fp)
  80f4dc:	e0bffe17 	ldw	r2,-8(fp)
  80f4e0:	1001703a 	wrctl	status,r2
  80f4e4:	0001883a 	nop
  80f4e8:	0001883a 	nop
  80f4ec:	e037883a 	mov	sp,fp
  80f4f0:	dfc00117 	ldw	ra,4(sp)
  80f4f4:	df000017 	ldw	fp,0(sp)
  80f4f8:	dec00204 	addi	sp,sp,8
  80f4fc:	f800283a 	ret

0080f500 <alt_avalon_timer_sc_init>:
  80f500:	defff804 	addi	sp,sp,-32
  80f504:	dfc00715 	stw	ra,28(sp)
  80f508:	df000615 	stw	fp,24(sp)
  80f50c:	df000604 	addi	fp,sp,24
  80f510:	e13ffe15 	stw	r4,-8(fp)
  80f514:	e17ffd15 	stw	r5,-12(fp)
  80f518:	e1bffc15 	stw	r6,-16(fp)
  80f51c:	e1fffb15 	stw	r7,-20(fp)
  80f520:	e0bffb17 	ldw	r2,-20(fp)
  80f524:	e0bfff15 	stw	r2,-4(fp)
  80f528:	d0a70c17 	ldw	r2,-25552(gp)
  80f52c:	1000031e 	bne	r2,zero,80f53c <alt_avalon_timer_sc_init+0x3c>
  80f530:	e0bfff17 	ldw	r2,-4(fp)
  80f534:	d0a70c15 	stw	r2,-25552(gp)
  80f538:	00000106 	br	80f540 <alt_avalon_timer_sc_init+0x40>
  80f53c:	0001883a 	nop
  80f540:	e0bffe17 	ldw	r2,-8(fp)
  80f544:	10800104 	addi	r2,r2,4
  80f548:	00c001c4 	movi	r3,7
  80f54c:	10c00035 	stwio	r3,0(r2)
  80f550:	d8000015 	stw	zero,0(sp)
  80f554:	e1fffe17 	ldw	r7,-8(fp)
  80f558:	01802074 	movhi	r6,129
  80f55c:	31bd2104 	addi	r6,r6,-2940
  80f560:	e17ffc17 	ldw	r5,-16(fp)
  80f564:	e13ffd17 	ldw	r4,-12(fp)
  80f568:	080f8e40 	call	80f8e4 <alt_ic_isr_register>
  80f56c:	0001883a 	nop
  80f570:	e037883a 	mov	sp,fp
  80f574:	dfc00117 	ldw	ra,4(sp)
  80f578:	df000017 	ldw	fp,0(sp)
  80f57c:	dec00204 	addi	sp,sp,8
  80f580:	f800283a 	ret

0080f584 <alt_alarm_start>:
  80f584:	defff504 	addi	sp,sp,-44
  80f588:	df000a15 	stw	fp,40(sp)
  80f58c:	df000a04 	addi	fp,sp,40
  80f590:	e13ff915 	stw	r4,-28(fp)
  80f594:	e17ff815 	stw	r5,-32(fp)
  80f598:	e1bff715 	stw	r6,-36(fp)
  80f59c:	e1fff615 	stw	r7,-40(fp)
  80f5a0:	e03fff15 	stw	zero,-4(fp)
  80f5a4:	d0a70c17 	ldw	r2,-25552(gp)
  80f5a8:	10003e26 	beq	r2,zero,80f6a4 <alt_alarm_start+0x120>
  80f5ac:	e0bff917 	ldw	r2,-28(fp)
  80f5b0:	10003a26 	beq	r2,zero,80f69c <alt_alarm_start+0x118>
  80f5b4:	e0bff917 	ldw	r2,-28(fp)
  80f5b8:	e0fff717 	ldw	r3,-36(fp)
  80f5bc:	10c00315 	stw	r3,12(r2)
  80f5c0:	e0bff917 	ldw	r2,-28(fp)
  80f5c4:	e0fff617 	ldw	r3,-40(fp)
  80f5c8:	10c00515 	stw	r3,20(r2)
  80f5cc:	0005303a 	rdctl	r2,status
  80f5d0:	e0bffd15 	stw	r2,-12(fp)
  80f5d4:	e0fffd17 	ldw	r3,-12(fp)
  80f5d8:	00bfff84 	movi	r2,-2
  80f5dc:	1884703a 	and	r2,r3,r2
  80f5e0:	1001703a 	wrctl	status,r2
  80f5e4:	e0bffd17 	ldw	r2,-12(fp)
  80f5e8:	e0bffe15 	stw	r2,-8(fp)
  80f5ec:	d0a70d17 	ldw	r2,-25548(gp)
  80f5f0:	e0bfff15 	stw	r2,-4(fp)
  80f5f4:	e0fff817 	ldw	r3,-32(fp)
  80f5f8:	e0bfff17 	ldw	r2,-4(fp)
  80f5fc:	1885883a 	add	r2,r3,r2
  80f600:	10c00044 	addi	r3,r2,1
  80f604:	e0bff917 	ldw	r2,-28(fp)
  80f608:	10c00215 	stw	r3,8(r2)
  80f60c:	e0bff917 	ldw	r2,-28(fp)
  80f610:	10c00217 	ldw	r3,8(r2)
  80f614:	e0bfff17 	ldw	r2,-4(fp)
  80f618:	1880042e 	bgeu	r3,r2,80f62c <alt_alarm_start+0xa8>
  80f61c:	e0bff917 	ldw	r2,-28(fp)
  80f620:	00c00044 	movi	r3,1
  80f624:	10c00405 	stb	r3,16(r2)
  80f628:	00000206 	br	80f634 <alt_alarm_start+0xb0>
  80f62c:	e0bff917 	ldw	r2,-28(fp)
  80f630:	10000405 	stb	zero,16(r2)
  80f634:	e0bff917 	ldw	r2,-28(fp)
  80f638:	d0e00b04 	addi	r3,gp,-32724
  80f63c:	e0fffb15 	stw	r3,-20(fp)
  80f640:	e0bffa15 	stw	r2,-24(fp)
  80f644:	e0bffa17 	ldw	r2,-24(fp)
  80f648:	e0fffb17 	ldw	r3,-20(fp)
  80f64c:	10c00115 	stw	r3,4(r2)
  80f650:	e0bffb17 	ldw	r2,-20(fp)
  80f654:	10c00017 	ldw	r3,0(r2)
  80f658:	e0bffa17 	ldw	r2,-24(fp)
  80f65c:	10c00015 	stw	r3,0(r2)
  80f660:	e0bffb17 	ldw	r2,-20(fp)
  80f664:	10800017 	ldw	r2,0(r2)
  80f668:	e0fffa17 	ldw	r3,-24(fp)
  80f66c:	10c00115 	stw	r3,4(r2)
  80f670:	e0bffb17 	ldw	r2,-20(fp)
  80f674:	e0fffa17 	ldw	r3,-24(fp)
  80f678:	10c00015 	stw	r3,0(r2)
  80f67c:	0001883a 	nop
  80f680:	e0bffe17 	ldw	r2,-8(fp)
  80f684:	e0bffc15 	stw	r2,-16(fp)
  80f688:	e0bffc17 	ldw	r2,-16(fp)
  80f68c:	1001703a 	wrctl	status,r2
  80f690:	0001883a 	nop
  80f694:	0005883a 	mov	r2,zero
  80f698:	00000306 	br	80f6a8 <alt_alarm_start+0x124>
  80f69c:	00bffa84 	movi	r2,-22
  80f6a0:	00000106 	br	80f6a8 <alt_alarm_start+0x124>
  80f6a4:	00bfde84 	movi	r2,-134
  80f6a8:	e037883a 	mov	sp,fp
  80f6ac:	df000017 	ldw	fp,0(sp)
  80f6b0:	dec00104 	addi	sp,sp,4
  80f6b4:	f800283a 	ret

0080f6b8 <alt_dcache_flush_all>:
  80f6b8:	defffe04 	addi	sp,sp,-8
  80f6bc:	df000115 	stw	fp,4(sp)
  80f6c0:	df000104 	addi	fp,sp,4
  80f6c4:	e03fff15 	stw	zero,-4(fp)
  80f6c8:	00000506 	br	80f6e0 <alt_dcache_flush_all+0x28>
  80f6cc:	e0bfff17 	ldw	r2,-4(fp)
  80f6d0:	1000003b 	flushd	0(r2)
  80f6d4:	e0bfff17 	ldw	r2,-4(fp)
  80f6d8:	10800804 	addi	r2,r2,32
  80f6dc:	e0bfff15 	stw	r2,-4(fp)
  80f6e0:	e0bfff17 	ldw	r2,-4(fp)
  80f6e4:	10820030 	cmpltui	r2,r2,2048
  80f6e8:	103ff81e 	bne	r2,zero,80f6cc <alt_dcache_flush_all+0x14>
  80f6ec:	0001883a 	nop
  80f6f0:	0001883a 	nop
  80f6f4:	e037883a 	mov	sp,fp
  80f6f8:	df000017 	ldw	fp,0(sp)
  80f6fc:	dec00104 	addi	sp,sp,4
  80f700:	f800283a 	ret

0080f704 <alt_get_errno>:
  80f704:	defffe04 	addi	sp,sp,-8
  80f708:	dfc00115 	stw	ra,4(sp)
  80f70c:	df000015 	stw	fp,0(sp)
  80f710:	d839883a 	mov	fp,sp
  80f714:	d0a00917 	ldw	r2,-32732(gp)
  80f718:	10000326 	beq	r2,zero,80f728 <alt_get_errno+0x24>
  80f71c:	d0a00917 	ldw	r2,-32732(gp)
  80f720:	103ee83a 	callr	r2
  80f724:	00000106 	br	80f72c <alt_get_errno+0x28>
  80f728:	d0a70704 	addi	r2,gp,-25572
  80f72c:	e037883a 	mov	sp,fp
  80f730:	dfc00117 	ldw	ra,4(sp)
  80f734:	df000017 	ldw	fp,0(sp)
  80f738:	dec00204 	addi	sp,sp,8
  80f73c:	f800283a 	ret

0080f740 <alt_dev_llist_insert>:
  80f740:	defffa04 	addi	sp,sp,-24
  80f744:	dfc00515 	stw	ra,20(sp)
  80f748:	df000415 	stw	fp,16(sp)
  80f74c:	df000404 	addi	fp,sp,16
  80f750:	e13ffd15 	stw	r4,-12(fp)
  80f754:	e17ffc15 	stw	r5,-16(fp)
  80f758:	e0bffd17 	ldw	r2,-12(fp)
  80f75c:	10000326 	beq	r2,zero,80f76c <alt_dev_llist_insert+0x2c>
  80f760:	e0bffd17 	ldw	r2,-12(fp)
  80f764:	10800217 	ldw	r2,8(r2)
  80f768:	1000061e 	bne	r2,zero,80f784 <alt_dev_llist_insert+0x44>
  80f76c:	080f7040 	call	80f704 <alt_get_errno>
  80f770:	1007883a 	mov	r3,r2
  80f774:	00800584 	movi	r2,22
  80f778:	18800015 	stw	r2,0(r3)
  80f77c:	00bffa84 	movi	r2,-22
  80f780:	00001406 	br	80f7d4 <alt_dev_llist_insert+0x94>
  80f784:	e0bffd17 	ldw	r2,-12(fp)
  80f788:	e0fffc17 	ldw	r3,-16(fp)
  80f78c:	e0ffff15 	stw	r3,-4(fp)
  80f790:	e0bffe15 	stw	r2,-8(fp)
  80f794:	e0bffe17 	ldw	r2,-8(fp)
  80f798:	e0ffff17 	ldw	r3,-4(fp)
  80f79c:	10c00115 	stw	r3,4(r2)
  80f7a0:	e0bfff17 	ldw	r2,-4(fp)
  80f7a4:	10c00017 	ldw	r3,0(r2)
  80f7a8:	e0bffe17 	ldw	r2,-8(fp)
  80f7ac:	10c00015 	stw	r3,0(r2)
  80f7b0:	e0bfff17 	ldw	r2,-4(fp)
  80f7b4:	10800017 	ldw	r2,0(r2)
  80f7b8:	e0fffe17 	ldw	r3,-8(fp)
  80f7bc:	10c00115 	stw	r3,4(r2)
  80f7c0:	e0bfff17 	ldw	r2,-4(fp)
  80f7c4:	e0fffe17 	ldw	r3,-8(fp)
  80f7c8:	10c00015 	stw	r3,0(r2)
  80f7cc:	0001883a 	nop
  80f7d0:	0005883a 	mov	r2,zero
  80f7d4:	e037883a 	mov	sp,fp
  80f7d8:	dfc00117 	ldw	ra,4(sp)
  80f7dc:	df000017 	ldw	fp,0(sp)
  80f7e0:	dec00204 	addi	sp,sp,8
  80f7e4:	f800283a 	ret

0080f7e8 <_do_ctors>:
  80f7e8:	defffd04 	addi	sp,sp,-12
  80f7ec:	dfc00215 	stw	ra,8(sp)
  80f7f0:	df000115 	stw	fp,4(sp)
  80f7f4:	df000104 	addi	fp,sp,4
  80f7f8:	00802074 	movhi	r2,129
  80f7fc:	10815304 	addi	r2,r2,1356
  80f800:	e0bfff15 	stw	r2,-4(fp)
  80f804:	00000606 	br	80f820 <_do_ctors+0x38>
  80f808:	e0bfff17 	ldw	r2,-4(fp)
  80f80c:	10800017 	ldw	r2,0(r2)
  80f810:	103ee83a 	callr	r2
  80f814:	e0bfff17 	ldw	r2,-4(fp)
  80f818:	10bfff04 	addi	r2,r2,-4
  80f81c:	e0bfff15 	stw	r2,-4(fp)
  80f820:	e0ffff17 	ldw	r3,-4(fp)
  80f824:	00802074 	movhi	r2,129
  80f828:	10815404 	addi	r2,r2,1360
  80f82c:	18bff62e 	bgeu	r3,r2,80f808 <_do_ctors+0x20>
  80f830:	0001883a 	nop
  80f834:	0001883a 	nop
  80f838:	e037883a 	mov	sp,fp
  80f83c:	dfc00117 	ldw	ra,4(sp)
  80f840:	df000017 	ldw	fp,0(sp)
  80f844:	dec00204 	addi	sp,sp,8
  80f848:	f800283a 	ret

0080f84c <_do_dtors>:
  80f84c:	defffd04 	addi	sp,sp,-12
  80f850:	dfc00215 	stw	ra,8(sp)
  80f854:	df000115 	stw	fp,4(sp)
  80f858:	df000104 	addi	fp,sp,4
  80f85c:	00802074 	movhi	r2,129
  80f860:	10815304 	addi	r2,r2,1356
  80f864:	e0bfff15 	stw	r2,-4(fp)
  80f868:	00000606 	br	80f884 <_do_dtors+0x38>
  80f86c:	e0bfff17 	ldw	r2,-4(fp)
  80f870:	10800017 	ldw	r2,0(r2)
  80f874:	103ee83a 	callr	r2
  80f878:	e0bfff17 	ldw	r2,-4(fp)
  80f87c:	10bfff04 	addi	r2,r2,-4
  80f880:	e0bfff15 	stw	r2,-4(fp)
  80f884:	e0ffff17 	ldw	r3,-4(fp)
  80f888:	00802074 	movhi	r2,129
  80f88c:	10815404 	addi	r2,r2,1360
  80f890:	18bff62e 	bgeu	r3,r2,80f86c <_do_dtors+0x20>
  80f894:	0001883a 	nop
  80f898:	0001883a 	nop
  80f89c:	e037883a 	mov	sp,fp
  80f8a0:	dfc00117 	ldw	ra,4(sp)
  80f8a4:	df000017 	ldw	fp,0(sp)
  80f8a8:	dec00204 	addi	sp,sp,8
  80f8ac:	f800283a 	ret

0080f8b0 <alt_icache_flush_all>:
  80f8b0:	defffe04 	addi	sp,sp,-8
  80f8b4:	dfc00115 	stw	ra,4(sp)
  80f8b8:	df000015 	stw	fp,0(sp)
  80f8bc:	d839883a 	mov	fp,sp
  80f8c0:	01420004 	movi	r5,2048
  80f8c4:	0009883a 	mov	r4,zero
  80f8c8:	08101b80 	call	8101b8 <alt_icache_flush>
  80f8cc:	0001883a 	nop
  80f8d0:	e037883a 	mov	sp,fp
  80f8d4:	dfc00117 	ldw	ra,4(sp)
  80f8d8:	df000017 	ldw	fp,0(sp)
  80f8dc:	dec00204 	addi	sp,sp,8
  80f8e0:	f800283a 	ret

0080f8e4 <alt_ic_isr_register>:
  80f8e4:	defff904 	addi	sp,sp,-28
  80f8e8:	dfc00615 	stw	ra,24(sp)
  80f8ec:	df000515 	stw	fp,20(sp)
  80f8f0:	df000504 	addi	fp,sp,20
  80f8f4:	e13fff15 	stw	r4,-4(fp)
  80f8f8:	e17ffe15 	stw	r5,-8(fp)
  80f8fc:	e1bffd15 	stw	r6,-12(fp)
  80f900:	e1fffc15 	stw	r7,-16(fp)
  80f904:	e0800217 	ldw	r2,8(fp)
  80f908:	d8800015 	stw	r2,0(sp)
  80f90c:	e1fffc17 	ldw	r7,-16(fp)
  80f910:	e1bffd17 	ldw	r6,-12(fp)
  80f914:	e17ffe17 	ldw	r5,-8(fp)
  80f918:	e13fff17 	ldw	r4,-4(fp)
  80f91c:	080fa940 	call	80fa94 <alt_iic_isr_register>
  80f920:	e037883a 	mov	sp,fp
  80f924:	dfc00117 	ldw	ra,4(sp)
  80f928:	df000017 	ldw	fp,0(sp)
  80f92c:	dec00204 	addi	sp,sp,8
  80f930:	f800283a 	ret

0080f934 <alt_ic_irq_enable>:
  80f934:	defff904 	addi	sp,sp,-28
  80f938:	df000615 	stw	fp,24(sp)
  80f93c:	df000604 	addi	fp,sp,24
  80f940:	e13ffb15 	stw	r4,-20(fp)
  80f944:	e17ffa15 	stw	r5,-24(fp)
  80f948:	e0bffa17 	ldw	r2,-24(fp)
  80f94c:	e0bfff15 	stw	r2,-4(fp)
  80f950:	0005303a 	rdctl	r2,status
  80f954:	e0bffe15 	stw	r2,-8(fp)
  80f958:	e0fffe17 	ldw	r3,-8(fp)
  80f95c:	00bfff84 	movi	r2,-2
  80f960:	1884703a 	and	r2,r3,r2
  80f964:	1001703a 	wrctl	status,r2
  80f968:	e0bffe17 	ldw	r2,-8(fp)
  80f96c:	e0bffd15 	stw	r2,-12(fp)
  80f970:	00c00044 	movi	r3,1
  80f974:	e0bfff17 	ldw	r2,-4(fp)
  80f978:	1884983a 	sll	r2,r3,r2
  80f97c:	1007883a 	mov	r3,r2
  80f980:	d0a70e17 	ldw	r2,-25544(gp)
  80f984:	1884b03a 	or	r2,r3,r2
  80f988:	d0a70e15 	stw	r2,-25544(gp)
  80f98c:	d0a70e17 	ldw	r2,-25544(gp)
  80f990:	100170fa 	wrctl	ienable,r2
  80f994:	e0bffd17 	ldw	r2,-12(fp)
  80f998:	e0bffc15 	stw	r2,-16(fp)
  80f99c:	e0bffc17 	ldw	r2,-16(fp)
  80f9a0:	1001703a 	wrctl	status,r2
  80f9a4:	0001883a 	nop
  80f9a8:	0005883a 	mov	r2,zero
  80f9ac:	e037883a 	mov	sp,fp
  80f9b0:	df000017 	ldw	fp,0(sp)
  80f9b4:	dec00104 	addi	sp,sp,4
  80f9b8:	f800283a 	ret

0080f9bc <alt_ic_irq_disable>:
  80f9bc:	defff904 	addi	sp,sp,-28
  80f9c0:	df000615 	stw	fp,24(sp)
  80f9c4:	df000604 	addi	fp,sp,24
  80f9c8:	e13ffb15 	stw	r4,-20(fp)
  80f9cc:	e17ffa15 	stw	r5,-24(fp)
  80f9d0:	e0bffa17 	ldw	r2,-24(fp)
  80f9d4:	e0bfff15 	stw	r2,-4(fp)
  80f9d8:	0005303a 	rdctl	r2,status
  80f9dc:	e0bffe15 	stw	r2,-8(fp)
  80f9e0:	e0fffe17 	ldw	r3,-8(fp)
  80f9e4:	00bfff84 	movi	r2,-2
  80f9e8:	1884703a 	and	r2,r3,r2
  80f9ec:	1001703a 	wrctl	status,r2
  80f9f0:	e0bffe17 	ldw	r2,-8(fp)
  80f9f4:	e0bffd15 	stw	r2,-12(fp)
  80f9f8:	00c00044 	movi	r3,1
  80f9fc:	e0bfff17 	ldw	r2,-4(fp)
  80fa00:	1884983a 	sll	r2,r3,r2
  80fa04:	0084303a 	nor	r2,zero,r2
  80fa08:	1007883a 	mov	r3,r2
  80fa0c:	d0a70e17 	ldw	r2,-25544(gp)
  80fa10:	1884703a 	and	r2,r3,r2
  80fa14:	d0a70e15 	stw	r2,-25544(gp)
  80fa18:	d0a70e17 	ldw	r2,-25544(gp)
  80fa1c:	100170fa 	wrctl	ienable,r2
  80fa20:	e0bffd17 	ldw	r2,-12(fp)
  80fa24:	e0bffc15 	stw	r2,-16(fp)
  80fa28:	e0bffc17 	ldw	r2,-16(fp)
  80fa2c:	1001703a 	wrctl	status,r2
  80fa30:	0001883a 	nop
  80fa34:	0005883a 	mov	r2,zero
  80fa38:	e037883a 	mov	sp,fp
  80fa3c:	df000017 	ldw	fp,0(sp)
  80fa40:	dec00104 	addi	sp,sp,4
  80fa44:	f800283a 	ret

0080fa48 <alt_ic_irq_enabled>:
  80fa48:	defffc04 	addi	sp,sp,-16
  80fa4c:	df000315 	stw	fp,12(sp)
  80fa50:	df000304 	addi	fp,sp,12
  80fa54:	e13ffe15 	stw	r4,-8(fp)
  80fa58:	e17ffd15 	stw	r5,-12(fp)
  80fa5c:	000530fa 	rdctl	r2,ienable
  80fa60:	e0bfff15 	stw	r2,-4(fp)
  80fa64:	00c00044 	movi	r3,1
  80fa68:	e0bffd17 	ldw	r2,-12(fp)
  80fa6c:	1884983a 	sll	r2,r3,r2
  80fa70:	1007883a 	mov	r3,r2
  80fa74:	e0bfff17 	ldw	r2,-4(fp)
  80fa78:	1884703a 	and	r2,r3,r2
  80fa7c:	1004c03a 	cmpne	r2,r2,zero
  80fa80:	10803fcc 	andi	r2,r2,255
  80fa84:	e037883a 	mov	sp,fp
  80fa88:	df000017 	ldw	fp,0(sp)
  80fa8c:	dec00104 	addi	sp,sp,4
  80fa90:	f800283a 	ret

0080fa94 <alt_iic_isr_register>:
  80fa94:	defff504 	addi	sp,sp,-44
  80fa98:	dfc00a15 	stw	ra,40(sp)
  80fa9c:	df000915 	stw	fp,36(sp)
  80faa0:	df000904 	addi	fp,sp,36
  80faa4:	e13ffa15 	stw	r4,-24(fp)
  80faa8:	e17ff915 	stw	r5,-28(fp)
  80faac:	e1bff815 	stw	r6,-32(fp)
  80fab0:	e1fff715 	stw	r7,-36(fp)
  80fab4:	00bffa84 	movi	r2,-22
  80fab8:	e0bfff15 	stw	r2,-4(fp)
  80fabc:	e0bff917 	ldw	r2,-28(fp)
  80fac0:	e0bffe15 	stw	r2,-8(fp)
  80fac4:	e0bffe17 	ldw	r2,-8(fp)
  80fac8:	10800808 	cmpgei	r2,r2,32
  80facc:	1000251e 	bne	r2,zero,80fb64 <alt_iic_isr_register+0xd0>
  80fad0:	0005303a 	rdctl	r2,status
  80fad4:	e0bffc15 	stw	r2,-16(fp)
  80fad8:	e0fffc17 	ldw	r3,-16(fp)
  80fadc:	00bfff84 	movi	r2,-2
  80fae0:	1884703a 	and	r2,r3,r2
  80fae4:	1001703a 	wrctl	status,r2
  80fae8:	e0bffc17 	ldw	r2,-16(fp)
  80faec:	e0bffd15 	stw	r2,-12(fp)
  80faf0:	e0bffe17 	ldw	r2,-8(fp)
  80faf4:	100890fa 	slli	r4,r2,3
  80faf8:	e0fff817 	ldw	r3,-32(fp)
  80fafc:	00802074 	movhi	r2,129
  80fb00:	2085883a 	add	r2,r4,r2
  80fb04:	10d0ff15 	stw	r3,17404(r2)
  80fb08:	e0bffe17 	ldw	r2,-8(fp)
  80fb0c:	100890fa 	slli	r4,r2,3
  80fb10:	e0fff717 	ldw	r3,-36(fp)
  80fb14:	00802074 	movhi	r2,129
  80fb18:	2085883a 	add	r2,r4,r2
  80fb1c:	10d10015 	stw	r3,17408(r2)
  80fb20:	e0bff817 	ldw	r2,-32(fp)
  80fb24:	10000526 	beq	r2,zero,80fb3c <alt_iic_isr_register+0xa8>
  80fb28:	e0bffe17 	ldw	r2,-8(fp)
  80fb2c:	100b883a 	mov	r5,r2
  80fb30:	e13ffa17 	ldw	r4,-24(fp)
  80fb34:	080f9340 	call	80f934 <alt_ic_irq_enable>
  80fb38:	00000406 	br	80fb4c <alt_iic_isr_register+0xb8>
  80fb3c:	e0bffe17 	ldw	r2,-8(fp)
  80fb40:	100b883a 	mov	r5,r2
  80fb44:	e13ffa17 	ldw	r4,-24(fp)
  80fb48:	080f9bc0 	call	80f9bc <alt_ic_irq_disable>
  80fb4c:	e0bfff15 	stw	r2,-4(fp)
  80fb50:	e0bffd17 	ldw	r2,-12(fp)
  80fb54:	e0bffb15 	stw	r2,-20(fp)
  80fb58:	e0bffb17 	ldw	r2,-20(fp)
  80fb5c:	1001703a 	wrctl	status,r2
  80fb60:	0001883a 	nop
  80fb64:	e0bfff17 	ldw	r2,-4(fp)
  80fb68:	e037883a 	mov	sp,fp
  80fb6c:	dfc00117 	ldw	ra,4(sp)
  80fb70:	df000017 	ldw	fp,0(sp)
  80fb74:	dec00204 	addi	sp,sp,8
  80fb78:	f800283a 	ret

0080fb7c <alt_open_fd>:
  80fb7c:	defff904 	addi	sp,sp,-28
  80fb80:	dfc00615 	stw	ra,24(sp)
  80fb84:	df000515 	stw	fp,20(sp)
  80fb88:	df000504 	addi	fp,sp,20
  80fb8c:	e13ffe15 	stw	r4,-8(fp)
  80fb90:	e17ffd15 	stw	r5,-12(fp)
  80fb94:	e1bffc15 	stw	r6,-16(fp)
  80fb98:	e1fffb15 	stw	r7,-20(fp)
  80fb9c:	e1bffb17 	ldw	r6,-20(fp)
  80fba0:	e17ffc17 	ldw	r5,-16(fp)
  80fba4:	e13ffd17 	ldw	r4,-12(fp)
  80fba8:	080fde40 	call	80fde4 <open>
  80fbac:	e0bfff15 	stw	r2,-4(fp)
  80fbb0:	e0bfff17 	ldw	r2,-4(fp)
  80fbb4:	10002016 	blt	r2,zero,80fc38 <alt_open_fd+0xbc>
  80fbb8:	e0ffff17 	ldw	r3,-4(fp)
  80fbbc:	1805883a 	mov	r2,r3
  80fbc0:	1085883a 	add	r2,r2,r2
  80fbc4:	10c5883a 	add	r2,r2,r3
  80fbc8:	100490ba 	slli	r2,r2,2
  80fbcc:	00c02074 	movhi	r3,129
  80fbd0:	10c7883a 	add	r3,r2,r3
  80fbd4:	18c56d17 	ldw	r3,5556(r3)
  80fbd8:	e0bffe17 	ldw	r2,-8(fp)
  80fbdc:	10c00015 	stw	r3,0(r2)
  80fbe0:	e0ffff17 	ldw	r3,-4(fp)
  80fbe4:	1805883a 	mov	r2,r3
  80fbe8:	1085883a 	add	r2,r2,r2
  80fbec:	10c5883a 	add	r2,r2,r3
  80fbf0:	100490ba 	slli	r2,r2,2
  80fbf4:	00c02074 	movhi	r3,129
  80fbf8:	10c7883a 	add	r3,r2,r3
  80fbfc:	18c56e17 	ldw	r3,5560(r3)
  80fc00:	e0bffe17 	ldw	r2,-8(fp)
  80fc04:	10c00115 	stw	r3,4(r2)
  80fc08:	e0ffff17 	ldw	r3,-4(fp)
  80fc0c:	1805883a 	mov	r2,r3
  80fc10:	1085883a 	add	r2,r2,r2
  80fc14:	10c5883a 	add	r2,r2,r3
  80fc18:	100490ba 	slli	r2,r2,2
  80fc1c:	00c02074 	movhi	r3,129
  80fc20:	10c7883a 	add	r3,r2,r3
  80fc24:	18c56f17 	ldw	r3,5564(r3)
  80fc28:	e0bffe17 	ldw	r2,-8(fp)
  80fc2c:	10c00215 	stw	r3,8(r2)
  80fc30:	e13fff17 	ldw	r4,-4(fp)
  80fc34:	080e5280 	call	80e528 <alt_release_fd>
  80fc38:	0001883a 	nop
  80fc3c:	e037883a 	mov	sp,fp
  80fc40:	dfc00117 	ldw	ra,4(sp)
  80fc44:	df000017 	ldw	fp,0(sp)
  80fc48:	dec00204 	addi	sp,sp,8
  80fc4c:	f800283a 	ret

0080fc50 <alt_io_redirect>:
  80fc50:	defffb04 	addi	sp,sp,-20
  80fc54:	dfc00415 	stw	ra,16(sp)
  80fc58:	df000315 	stw	fp,12(sp)
  80fc5c:	df000304 	addi	fp,sp,12
  80fc60:	e13fff15 	stw	r4,-4(fp)
  80fc64:	e17ffe15 	stw	r5,-8(fp)
  80fc68:	e1bffd15 	stw	r6,-12(fp)
  80fc6c:	01c07fc4 	movi	r7,511
  80fc70:	01800044 	movi	r6,1
  80fc74:	e17fff17 	ldw	r5,-4(fp)
  80fc78:	01002074 	movhi	r4,129
  80fc7c:	21057004 	addi	r4,r4,5568
  80fc80:	080fb7c0 	call	80fb7c <alt_open_fd>
  80fc84:	01c07fc4 	movi	r7,511
  80fc88:	000d883a 	mov	r6,zero
  80fc8c:	e17ffe17 	ldw	r5,-8(fp)
  80fc90:	01002074 	movhi	r4,129
  80fc94:	21056d04 	addi	r4,r4,5556
  80fc98:	080fb7c0 	call	80fb7c <alt_open_fd>
  80fc9c:	01c07fc4 	movi	r7,511
  80fca0:	01800044 	movi	r6,1
  80fca4:	e17ffd17 	ldw	r5,-12(fp)
  80fca8:	01002074 	movhi	r4,129
  80fcac:	21057304 	addi	r4,r4,5580
  80fcb0:	080fb7c0 	call	80fb7c <alt_open_fd>
  80fcb4:	0001883a 	nop
  80fcb8:	e037883a 	mov	sp,fp
  80fcbc:	dfc00117 	ldw	ra,4(sp)
  80fcc0:	df000017 	ldw	fp,0(sp)
  80fcc4:	dec00204 	addi	sp,sp,8
  80fcc8:	f800283a 	ret

0080fccc <alt_get_errno>:
  80fccc:	defffe04 	addi	sp,sp,-8
  80fcd0:	dfc00115 	stw	ra,4(sp)
  80fcd4:	df000015 	stw	fp,0(sp)
  80fcd8:	d839883a 	mov	fp,sp
  80fcdc:	d0a00917 	ldw	r2,-32732(gp)
  80fce0:	10000326 	beq	r2,zero,80fcf0 <alt_get_errno+0x24>
  80fce4:	d0a00917 	ldw	r2,-32732(gp)
  80fce8:	103ee83a 	callr	r2
  80fcec:	00000106 	br	80fcf4 <alt_get_errno+0x28>
  80fcf0:	d0a70704 	addi	r2,gp,-25572
  80fcf4:	e037883a 	mov	sp,fp
  80fcf8:	dfc00117 	ldw	ra,4(sp)
  80fcfc:	df000017 	ldw	fp,0(sp)
  80fd00:	dec00204 	addi	sp,sp,8
  80fd04:	f800283a 	ret

0080fd08 <alt_file_locked>:
  80fd08:	defffd04 	addi	sp,sp,-12
  80fd0c:	df000215 	stw	fp,8(sp)
  80fd10:	df000204 	addi	fp,sp,8
  80fd14:	e13ffe15 	stw	r4,-8(fp)
  80fd18:	e0bffe17 	ldw	r2,-8(fp)
  80fd1c:	10800217 	ldw	r2,8(r2)
  80fd20:	10d00034 	orhi	r3,r2,16384
  80fd24:	e0bffe17 	ldw	r2,-8(fp)
  80fd28:	10c00215 	stw	r3,8(r2)
  80fd2c:	e03fff15 	stw	zero,-4(fp)
  80fd30:	00002306 	br	80fdc0 <alt_file_locked+0xb8>
  80fd34:	e0ffff17 	ldw	r3,-4(fp)
  80fd38:	1805883a 	mov	r2,r3
  80fd3c:	1085883a 	add	r2,r2,r2
  80fd40:	10c5883a 	add	r2,r2,r3
  80fd44:	100490ba 	slli	r2,r2,2
  80fd48:	00c02074 	movhi	r3,129
  80fd4c:	10c7883a 	add	r3,r2,r3
  80fd50:	18c56d17 	ldw	r3,5556(r3)
  80fd54:	e0bffe17 	ldw	r2,-8(fp)
  80fd58:	10800017 	ldw	r2,0(r2)
  80fd5c:	1880151e 	bne	r3,r2,80fdb4 <alt_file_locked+0xac>
  80fd60:	e0ffff17 	ldw	r3,-4(fp)
  80fd64:	1805883a 	mov	r2,r3
  80fd68:	1085883a 	add	r2,r2,r2
  80fd6c:	10c5883a 	add	r2,r2,r3
  80fd70:	100490ba 	slli	r2,r2,2
  80fd74:	00c02074 	movhi	r3,129
  80fd78:	10c7883a 	add	r3,r2,r3
  80fd7c:	18856f17 	ldw	r2,5564(r3)
  80fd80:	10000c0e 	bge	r2,zero,80fdb4 <alt_file_locked+0xac>
  80fd84:	e0ffff17 	ldw	r3,-4(fp)
  80fd88:	1805883a 	mov	r2,r3
  80fd8c:	1085883a 	add	r2,r2,r2
  80fd90:	10c5883a 	add	r2,r2,r3
  80fd94:	100490ba 	slli	r2,r2,2
  80fd98:	00c02074 	movhi	r3,129
  80fd9c:	18c56d04 	addi	r3,r3,5556
  80fda0:	10c5883a 	add	r2,r2,r3
  80fda4:	e0fffe17 	ldw	r3,-8(fp)
  80fda8:	18800226 	beq	r3,r2,80fdb4 <alt_file_locked+0xac>
  80fdac:	00bffcc4 	movi	r2,-13
  80fdb0:	00000806 	br	80fdd4 <alt_file_locked+0xcc>
  80fdb4:	e0bfff17 	ldw	r2,-4(fp)
  80fdb8:	10800044 	addi	r2,r2,1
  80fdbc:	e0bfff15 	stw	r2,-4(fp)
  80fdc0:	d0a00817 	ldw	r2,-32736(gp)
  80fdc4:	1007883a 	mov	r3,r2
  80fdc8:	e0bfff17 	ldw	r2,-4(fp)
  80fdcc:	18bfd92e 	bgeu	r3,r2,80fd34 <alt_file_locked+0x2c>
  80fdd0:	0005883a 	mov	r2,zero
  80fdd4:	e037883a 	mov	sp,fp
  80fdd8:	df000017 	ldw	fp,0(sp)
  80fddc:	dec00104 	addi	sp,sp,4
  80fde0:	f800283a 	ret

0080fde4 <open>:
  80fde4:	defff604 	addi	sp,sp,-40
  80fde8:	dfc00915 	stw	ra,36(sp)
  80fdec:	df000815 	stw	fp,32(sp)
  80fdf0:	df000804 	addi	fp,sp,32
  80fdf4:	e13ffa15 	stw	r4,-24(fp)
  80fdf8:	e17ff915 	stw	r5,-28(fp)
  80fdfc:	e1bff815 	stw	r6,-32(fp)
  80fe00:	00bfffc4 	movi	r2,-1
  80fe04:	e0bffe15 	stw	r2,-8(fp)
  80fe08:	00bffb44 	movi	r2,-19
  80fe0c:	e0bffd15 	stw	r2,-12(fp)
  80fe10:	e03ffc15 	stw	zero,-16(fp)
  80fe14:	d1600604 	addi	r5,gp,-32744
  80fe18:	e13ffa17 	ldw	r4,-24(fp)
  80fe1c:	080ff680 	call	80ff68 <alt_find_dev>
  80fe20:	e0bfff15 	stw	r2,-4(fp)
  80fe24:	e0bfff17 	ldw	r2,-4(fp)
  80fe28:	1000051e 	bne	r2,zero,80fe40 <open+0x5c>
  80fe2c:	e13ffa17 	ldw	r4,-24(fp)
  80fe30:	080fff80 	call	80fff8 <alt_find_file>
  80fe34:	e0bfff15 	stw	r2,-4(fp)
  80fe38:	00800044 	movi	r2,1
  80fe3c:	e0bffc15 	stw	r2,-16(fp)
  80fe40:	e0bfff17 	ldw	r2,-4(fp)
  80fe44:	10002c26 	beq	r2,zero,80fef8 <open+0x114>
  80fe48:	e13fff17 	ldw	r4,-4(fp)
  80fe4c:	08101000 	call	810100 <alt_get_fd>
  80fe50:	e0bffe15 	stw	r2,-8(fp)
  80fe54:	e0bffe17 	ldw	r2,-8(fp)
  80fe58:	1000030e 	bge	r2,zero,80fe68 <open+0x84>
  80fe5c:	e0bffe17 	ldw	r2,-8(fp)
  80fe60:	e0bffd15 	stw	r2,-12(fp)
  80fe64:	00002606 	br	80ff00 <open+0x11c>
  80fe68:	e0fffe17 	ldw	r3,-8(fp)
  80fe6c:	1805883a 	mov	r2,r3
  80fe70:	1085883a 	add	r2,r2,r2
  80fe74:	10c5883a 	add	r2,r2,r3
  80fe78:	100490ba 	slli	r2,r2,2
  80fe7c:	00c02074 	movhi	r3,129
  80fe80:	18c56d04 	addi	r3,r3,5556
  80fe84:	10c5883a 	add	r2,r2,r3
  80fe88:	e0bffb15 	stw	r2,-20(fp)
  80fe8c:	e0fff917 	ldw	r3,-28(fp)
  80fe90:	00900034 	movhi	r2,16384
  80fe94:	10bfffc4 	addi	r2,r2,-1
  80fe98:	1886703a 	and	r3,r3,r2
  80fe9c:	e0bffb17 	ldw	r2,-20(fp)
  80fea0:	10c00215 	stw	r3,8(r2)
  80fea4:	e0bffc17 	ldw	r2,-16(fp)
  80fea8:	1000051e 	bne	r2,zero,80fec0 <open+0xdc>
  80feac:	e13ffb17 	ldw	r4,-20(fp)
  80feb0:	080fd080 	call	80fd08 <alt_file_locked>
  80feb4:	e0bffd15 	stw	r2,-12(fp)
  80feb8:	e0bffd17 	ldw	r2,-12(fp)
  80febc:	10001016 	blt	r2,zero,80ff00 <open+0x11c>
  80fec0:	e0bfff17 	ldw	r2,-4(fp)
  80fec4:	10800317 	ldw	r2,12(r2)
  80fec8:	10000826 	beq	r2,zero,80feec <open+0x108>
  80fecc:	e0bfff17 	ldw	r2,-4(fp)
  80fed0:	10800317 	ldw	r2,12(r2)
  80fed4:	e1fff817 	ldw	r7,-32(fp)
  80fed8:	e1bff917 	ldw	r6,-28(fp)
  80fedc:	e17ffa17 	ldw	r5,-24(fp)
  80fee0:	e13ffb17 	ldw	r4,-20(fp)
  80fee4:	103ee83a 	callr	r2
  80fee8:	00000106 	br	80fef0 <open+0x10c>
  80feec:	0005883a 	mov	r2,zero
  80fef0:	e0bffd15 	stw	r2,-12(fp)
  80fef4:	00000206 	br	80ff00 <open+0x11c>
  80fef8:	00bffb44 	movi	r2,-19
  80fefc:	e0bffd15 	stw	r2,-12(fp)
  80ff00:	e0bffd17 	ldw	r2,-12(fp)
  80ff04:	1000090e 	bge	r2,zero,80ff2c <open+0x148>
  80ff08:	e13ffe17 	ldw	r4,-8(fp)
  80ff0c:	080e5280 	call	80e528 <alt_release_fd>
  80ff10:	080fccc0 	call	80fccc <alt_get_errno>
  80ff14:	1007883a 	mov	r3,r2
  80ff18:	e0bffd17 	ldw	r2,-12(fp)
  80ff1c:	0085c83a 	sub	r2,zero,r2
  80ff20:	18800015 	stw	r2,0(r3)
  80ff24:	00bfffc4 	movi	r2,-1
  80ff28:	00000106 	br	80ff30 <open+0x14c>
  80ff2c:	e0bffe17 	ldw	r2,-8(fp)
  80ff30:	e037883a 	mov	sp,fp
  80ff34:	dfc00117 	ldw	ra,4(sp)
  80ff38:	df000017 	ldw	fp,0(sp)
  80ff3c:	dec00204 	addi	sp,sp,8
  80ff40:	f800283a 	ret

0080ff44 <altera_nios2_gen2_irq_init>:
  80ff44:	deffff04 	addi	sp,sp,-4
  80ff48:	df000015 	stw	fp,0(sp)
  80ff4c:	d839883a 	mov	fp,sp
  80ff50:	000170fa 	wrctl	ienable,zero
  80ff54:	0001883a 	nop
  80ff58:	e037883a 	mov	sp,fp
  80ff5c:	df000017 	ldw	fp,0(sp)
  80ff60:	dec00104 	addi	sp,sp,4
  80ff64:	f800283a 	ret

0080ff68 <alt_find_dev>:
  80ff68:	defffa04 	addi	sp,sp,-24
  80ff6c:	dfc00515 	stw	ra,20(sp)
  80ff70:	df000415 	stw	fp,16(sp)
  80ff74:	df000404 	addi	fp,sp,16
  80ff78:	e13ffd15 	stw	r4,-12(fp)
  80ff7c:	e17ffc15 	stw	r5,-16(fp)
  80ff80:	e0bffc17 	ldw	r2,-16(fp)
  80ff84:	10800017 	ldw	r2,0(r2)
  80ff88:	e0bfff15 	stw	r2,-4(fp)
  80ff8c:	e13ffd17 	ldw	r4,-12(fp)
  80ff90:	08018440 	call	801844 <strlen>
  80ff94:	10800044 	addi	r2,r2,1
  80ff98:	e0bffe15 	stw	r2,-8(fp)
  80ff9c:	00000d06 	br	80ffd4 <alt_find_dev+0x6c>
  80ffa0:	e0bfff17 	ldw	r2,-4(fp)
  80ffa4:	10800217 	ldw	r2,8(r2)
  80ffa8:	e0fffe17 	ldw	r3,-8(fp)
  80ffac:	180d883a 	mov	r6,r3
  80ffb0:	e17ffd17 	ldw	r5,-12(fp)
  80ffb4:	1009883a 	mov	r4,r2
  80ffb8:	08103280 	call	810328 <memcmp>
  80ffbc:	1000021e 	bne	r2,zero,80ffc8 <alt_find_dev+0x60>
  80ffc0:	e0bfff17 	ldw	r2,-4(fp)
  80ffc4:	00000706 	br	80ffe4 <alt_find_dev+0x7c>
  80ffc8:	e0bfff17 	ldw	r2,-4(fp)
  80ffcc:	10800017 	ldw	r2,0(r2)
  80ffd0:	e0bfff15 	stw	r2,-4(fp)
  80ffd4:	e0ffff17 	ldw	r3,-4(fp)
  80ffd8:	e0bffc17 	ldw	r2,-16(fp)
  80ffdc:	18bff01e 	bne	r3,r2,80ffa0 <alt_find_dev+0x38>
  80ffe0:	0005883a 	mov	r2,zero
  80ffe4:	e037883a 	mov	sp,fp
  80ffe8:	dfc00117 	ldw	ra,4(sp)
  80ffec:	df000017 	ldw	fp,0(sp)
  80fff0:	dec00204 	addi	sp,sp,8
  80fff4:	f800283a 	ret

0080fff8 <alt_find_file>:
  80fff8:	defffb04 	addi	sp,sp,-20
  80fffc:	dfc00415 	stw	ra,16(sp)
  810000:	df000315 	stw	fp,12(sp)
  810004:	df000304 	addi	fp,sp,12
  810008:	e13ffd15 	stw	r4,-12(fp)
  81000c:	d0a00417 	ldw	r2,-32752(gp)
  810010:	e0bfff15 	stw	r2,-4(fp)
  810014:	00003106 	br	8100dc <alt_find_file+0xe4>
  810018:	e0bfff17 	ldw	r2,-4(fp)
  81001c:	10800217 	ldw	r2,8(r2)
  810020:	1009883a 	mov	r4,r2
  810024:	08018440 	call	801844 <strlen>
  810028:	e0bffe15 	stw	r2,-8(fp)
  81002c:	e0bfff17 	ldw	r2,-4(fp)
  810030:	10c00217 	ldw	r3,8(r2)
  810034:	e0bffe17 	ldw	r2,-8(fp)
  810038:	10bfffc4 	addi	r2,r2,-1
  81003c:	1885883a 	add	r2,r3,r2
  810040:	10800003 	ldbu	r2,0(r2)
  810044:	10803fcc 	andi	r2,r2,255
  810048:	1080201c 	xori	r2,r2,128
  81004c:	10bfe004 	addi	r2,r2,-128
  810050:	10800bd8 	cmpnei	r2,r2,47
  810054:	1000031e 	bne	r2,zero,810064 <alt_find_file+0x6c>
  810058:	e0bffe17 	ldw	r2,-8(fp)
  81005c:	10bfffc4 	addi	r2,r2,-1
  810060:	e0bffe15 	stw	r2,-8(fp)
  810064:	e0bffe17 	ldw	r2,-8(fp)
  810068:	e0fffd17 	ldw	r3,-12(fp)
  81006c:	1885883a 	add	r2,r3,r2
  810070:	10800003 	ldbu	r2,0(r2)
  810074:	10803fcc 	andi	r2,r2,255
  810078:	1080201c 	xori	r2,r2,128
  81007c:	10bfe004 	addi	r2,r2,-128
  810080:	10800be0 	cmpeqi	r2,r2,47
  810084:	1000081e 	bne	r2,zero,8100a8 <alt_find_file+0xb0>
  810088:	e0bffe17 	ldw	r2,-8(fp)
  81008c:	e0fffd17 	ldw	r3,-12(fp)
  810090:	1885883a 	add	r2,r3,r2
  810094:	10800003 	ldbu	r2,0(r2)
  810098:	10803fcc 	andi	r2,r2,255
  81009c:	1080201c 	xori	r2,r2,128
  8100a0:	10bfe004 	addi	r2,r2,-128
  8100a4:	10000a1e 	bne	r2,zero,8100d0 <alt_find_file+0xd8>
  8100a8:	e0bfff17 	ldw	r2,-4(fp)
  8100ac:	10800217 	ldw	r2,8(r2)
  8100b0:	e0fffe17 	ldw	r3,-8(fp)
  8100b4:	180d883a 	mov	r6,r3
  8100b8:	e17ffd17 	ldw	r5,-12(fp)
  8100bc:	1009883a 	mov	r4,r2
  8100c0:	08103280 	call	810328 <memcmp>
  8100c4:	1000021e 	bne	r2,zero,8100d0 <alt_find_file+0xd8>
  8100c8:	e0bfff17 	ldw	r2,-4(fp)
  8100cc:	00000706 	br	8100ec <alt_find_file+0xf4>
  8100d0:	e0bfff17 	ldw	r2,-4(fp)
  8100d4:	10800017 	ldw	r2,0(r2)
  8100d8:	e0bfff15 	stw	r2,-4(fp)
  8100dc:	e0ffff17 	ldw	r3,-4(fp)
  8100e0:	d0a00404 	addi	r2,gp,-32752
  8100e4:	18bfcc1e 	bne	r3,r2,810018 <alt_find_file+0x20>
  8100e8:	0005883a 	mov	r2,zero
  8100ec:	e037883a 	mov	sp,fp
  8100f0:	dfc00117 	ldw	ra,4(sp)
  8100f4:	df000017 	ldw	fp,0(sp)
  8100f8:	dec00204 	addi	sp,sp,8
  8100fc:	f800283a 	ret

00810100 <alt_get_fd>:
  810100:	defffc04 	addi	sp,sp,-16
  810104:	df000315 	stw	fp,12(sp)
  810108:	df000304 	addi	fp,sp,12
  81010c:	e13ffd15 	stw	r4,-12(fp)
  810110:	00bffa04 	movi	r2,-24
  810114:	e0bffe15 	stw	r2,-8(fp)
  810118:	e03fff15 	stw	zero,-4(fp)
  81011c:	00001d06 	br	810194 <alt_get_fd+0x94>
  810120:	e0ffff17 	ldw	r3,-4(fp)
  810124:	1805883a 	mov	r2,r3
  810128:	1085883a 	add	r2,r2,r2
  81012c:	10c5883a 	add	r2,r2,r3
  810130:	100490ba 	slli	r2,r2,2
  810134:	00c02074 	movhi	r3,129
  810138:	10c7883a 	add	r3,r2,r3
  81013c:	18856d17 	ldw	r2,5556(r3)
  810140:	1000111e 	bne	r2,zero,810188 <alt_get_fd+0x88>
  810144:	e0ffff17 	ldw	r3,-4(fp)
  810148:	1805883a 	mov	r2,r3
  81014c:	1085883a 	add	r2,r2,r2
  810150:	10c5883a 	add	r2,r2,r3
  810154:	100490ba 	slli	r2,r2,2
  810158:	e13ffd17 	ldw	r4,-12(fp)
  81015c:	00c02074 	movhi	r3,129
  810160:	10c7883a 	add	r3,r2,r3
  810164:	19056d15 	stw	r4,5556(r3)
  810168:	d0e00817 	ldw	r3,-32736(gp)
  81016c:	e0bfff17 	ldw	r2,-4(fp)
  810170:	1880020e 	bge	r3,r2,81017c <alt_get_fd+0x7c>
  810174:	e0bfff17 	ldw	r2,-4(fp)
  810178:	d0a00815 	stw	r2,-32736(gp)
  81017c:	e0bfff17 	ldw	r2,-4(fp)
  810180:	e0bffe15 	stw	r2,-8(fp)
  810184:	00000706 	br	8101a4 <alt_get_fd+0xa4>
  810188:	e0bfff17 	ldw	r2,-4(fp)
  81018c:	10800044 	addi	r2,r2,1
  810190:	e0bfff15 	stw	r2,-4(fp)
  810194:	e0bfff17 	ldw	r2,-4(fp)
  810198:	10800810 	cmplti	r2,r2,32
  81019c:	103fe01e 	bne	r2,zero,810120 <alt_get_fd+0x20>
  8101a0:	0001883a 	nop
  8101a4:	e0bffe17 	ldw	r2,-8(fp)
  8101a8:	e037883a 	mov	sp,fp
  8101ac:	df000017 	ldw	fp,0(sp)
  8101b0:	dec00104 	addi	sp,sp,4
  8101b4:	f800283a 	ret

008101b8 <alt_icache_flush>:
  8101b8:	defffb04 	addi	sp,sp,-20
  8101bc:	df000415 	stw	fp,16(sp)
  8101c0:	df000404 	addi	fp,sp,16
  8101c4:	e13ffd15 	stw	r4,-12(fp)
  8101c8:	e17ffc15 	stw	r5,-16(fp)
  8101cc:	e0bffc17 	ldw	r2,-16(fp)
  8101d0:	10820070 	cmpltui	r2,r2,2049
  8101d4:	1000021e 	bne	r2,zero,8101e0 <alt_icache_flush+0x28>
  8101d8:	00820004 	movi	r2,2048
  8101dc:	e0bffc15 	stw	r2,-16(fp)
  8101e0:	e0fffd17 	ldw	r3,-12(fp)
  8101e4:	e0bffc17 	ldw	r2,-16(fp)
  8101e8:	1885883a 	add	r2,r3,r2
  8101ec:	e0bffe15 	stw	r2,-8(fp)
  8101f0:	e0bffd17 	ldw	r2,-12(fp)
  8101f4:	e0bfff15 	stw	r2,-4(fp)
  8101f8:	00000506 	br	810210 <alt_icache_flush+0x58>
  8101fc:	e0bfff17 	ldw	r2,-4(fp)
  810200:	1000603a 	flushi	r2
  810204:	e0bfff17 	ldw	r2,-4(fp)
  810208:	10800804 	addi	r2,r2,32
  81020c:	e0bfff15 	stw	r2,-4(fp)
  810210:	e0ffff17 	ldw	r3,-4(fp)
  810214:	e0bffe17 	ldw	r2,-8(fp)
  810218:	18bff836 	bltu	r3,r2,8101fc <alt_icache_flush+0x44>
  81021c:	e0bffd17 	ldw	r2,-12(fp)
  810220:	108007cc 	andi	r2,r2,31
  810224:	10000226 	beq	r2,zero,810230 <alt_icache_flush+0x78>
  810228:	e0bfff17 	ldw	r2,-4(fp)
  81022c:	1000603a 	flushi	r2
  810230:	0000203a 	flushp
  810234:	0001883a 	nop
  810238:	e037883a 	mov	sp,fp
  81023c:	df000017 	ldw	fp,0(sp)
  810240:	dec00104 	addi	sp,sp,4
  810244:	f800283a 	ret

00810248 <alt_exception_cause_generated_bad_addr>:
  810248:	defffe04 	addi	sp,sp,-8
  81024c:	df000115 	stw	fp,4(sp)
  810250:	df000104 	addi	fp,sp,4
  810254:	e13fff15 	stw	r4,-4(fp)
  810258:	e0bfff17 	ldw	r2,-4(fp)
  81025c:	10bffe84 	addi	r2,r2,-6
  810260:	10c00428 	cmpgeui	r3,r2,16
  810264:	1800191e 	bne	r3,zero,8102cc <alt_exception_cause_generated_bad_addr+0x84>
  810268:	100690ba 	slli	r3,r2,2
  81026c:	00802074 	movhi	r2,129
  810270:	1885883a 	add	r2,r3,r2
  810274:	10809f17 	ldw	r2,636(r2)
  810278:	1000683a 	jmp	r2
  81027c:	008102bc 	xorhi	r2,zero,1034
  810280:	008102bc 	xorhi	r2,zero,1034
  810284:	008102cc 	andi	r2,zero,1035
  810288:	008102cc 	andi	r2,zero,1035
  81028c:	008102cc 	andi	r2,zero,1035
  810290:	008102bc 	xorhi	r2,zero,1034
  810294:	008102c4 	movi	r2,1035
  810298:	008102cc 	andi	r2,zero,1035
  81029c:	008102bc 	xorhi	r2,zero,1034
  8102a0:	008102bc 	xorhi	r2,zero,1034
  8102a4:	008102cc 	andi	r2,zero,1035
  8102a8:	008102bc 	xorhi	r2,zero,1034
  8102ac:	008102c4 	movi	r2,1035
  8102b0:	008102cc 	andi	r2,zero,1035
  8102b4:	008102cc 	andi	r2,zero,1035
  8102b8:	008102bc 	xorhi	r2,zero,1034
  8102bc:	00800044 	movi	r2,1
  8102c0:	00000306 	br	8102d0 <alt_exception_cause_generated_bad_addr+0x88>
  8102c4:	0005883a 	mov	r2,zero
  8102c8:	00000106 	br	8102d0 <alt_exception_cause_generated_bad_addr+0x88>
  8102cc:	0005883a 	mov	r2,zero
  8102d0:	e037883a 	mov	sp,fp
  8102d4:	df000017 	ldw	fp,0(sp)
  8102d8:	dec00104 	addi	sp,sp,4
  8102dc:	f800283a 	ret

008102e0 <atexit>:
  8102e0:	200b883a 	mov	r5,r4
  8102e4:	000f883a 	mov	r7,zero
  8102e8:	000d883a 	mov	r6,zero
  8102ec:	0009883a 	mov	r4,zero
  8102f0:	08103a01 	jmpi	8103a0 <__register_exitproc>

008102f4 <exit>:
  8102f4:	defffe04 	addi	sp,sp,-8
  8102f8:	000b883a 	mov	r5,zero
  8102fc:	dc000015 	stw	r16,0(sp)
  810300:	dfc00115 	stw	ra,4(sp)
  810304:	2021883a 	mov	r16,r4
  810308:	08104300 	call	810430 <__call_exitprocs>
  81030c:	00802074 	movhi	r2,129
  810310:	1109e517 	ldw	r4,10132(r2)
  810314:	20800f17 	ldw	r2,60(r4)
  810318:	10000126 	beq	r2,zero,810320 <exit+0x2c>
  81031c:	103ee83a 	callr	r2
  810320:	8009883a 	mov	r4,r16
  810324:	080dd740 	call	80dd74 <_exit>

00810328 <memcmp>:
  810328:	30800130 	cmpltui	r2,r6,4
  81032c:	10000b1e 	bne	r2,zero,81035c <memcmp+0x34>
  810330:	2144b03a 	or	r2,r4,r5
  810334:	108000cc 	andi	r2,r2,3
  810338:	1000171e 	bne	r2,zero,810398 <memcmp+0x70>
  81033c:	20c00017 	ldw	r3,0(r4)
  810340:	28800017 	ldw	r2,0(r5)
  810344:	1880141e 	bne	r3,r2,810398 <memcmp+0x70>
  810348:	31bfff04 	addi	r6,r6,-4
  81034c:	30800128 	cmpgeui	r2,r6,4
  810350:	21000104 	addi	r4,r4,4
  810354:	29400104 	addi	r5,r5,4
  810358:	103ff81e 	bne	r2,zero,81033c <memcmp+0x14>
  81035c:	30bfffc4 	addi	r2,r6,-1
  810360:	30000b26 	beq	r6,zero,810390 <memcmp+0x68>
  810364:	11800044 	addi	r6,r2,1
  810368:	298d883a 	add	r6,r5,r6
  81036c:	00000106 	br	810374 <memcmp+0x4c>
  810370:	29800726 	beq	r5,r6,810390 <memcmp+0x68>
  810374:	20800003 	ldbu	r2,0(r4)
  810378:	28c00003 	ldbu	r3,0(r5)
  81037c:	21000044 	addi	r4,r4,1
  810380:	29400044 	addi	r5,r5,1
  810384:	10fffa26 	beq	r2,r3,810370 <memcmp+0x48>
  810388:	10c5c83a 	sub	r2,r2,r3
  81038c:	f800283a 	ret
  810390:	0005883a 	mov	r2,zero
  810394:	f800283a 	ret
  810398:	30bfffc4 	addi	r2,r6,-1
  81039c:	003ff106 	br	810364 <memcmp+0x3c>

008103a0 <__register_exitproc>:
  8103a0:	00802074 	movhi	r2,129
  8103a4:	10c9e517 	ldw	r3,10132(r2)
  8103a8:	18805217 	ldw	r2,328(r3)
  8103ac:	10001726 	beq	r2,zero,81040c <__register_exitproc+0x6c>
  8103b0:	10c00117 	ldw	r3,4(r2)
  8103b4:	1a000808 	cmpgei	r8,r3,32
  8103b8:	40001b1e 	bne	r8,zero,810428 <__register_exitproc+0x88>
  8103bc:	20000b26 	beq	r4,zero,8103ec <__register_exitproc+0x4c>
  8103c0:	181090ba 	slli	r8,r3,2
  8103c4:	02400044 	movi	r9,1
  8103c8:	48d2983a 	sll	r9,r9,r3
  8103cc:	1211883a 	add	r8,r2,r8
  8103d0:	41802215 	stw	r6,136(r8)
  8103d4:	11806217 	ldw	r6,392(r2)
  8103d8:	21000098 	cmpnei	r4,r4,2
  8103dc:	324cb03a 	or	r6,r6,r9
  8103e0:	11806215 	stw	r6,392(r2)
  8103e4:	41c04215 	stw	r7,264(r8)
  8103e8:	20000b26 	beq	r4,zero,810418 <__register_exitproc+0x78>
  8103ec:	19000084 	addi	r4,r3,2
  8103f0:	200890ba 	slli	r4,r4,2
  8103f4:	18c00044 	addi	r3,r3,1
  8103f8:	10c00115 	stw	r3,4(r2)
  8103fc:	1105883a 	add	r2,r2,r4
  810400:	11400015 	stw	r5,0(r2)
  810404:	0005883a 	mov	r2,zero
  810408:	f800283a 	ret
  81040c:	18805304 	addi	r2,r3,332
  810410:	18805215 	stw	r2,328(r3)
  810414:	003fe606 	br	8103b0 <__register_exitproc+0x10>
  810418:	11006317 	ldw	r4,396(r2)
  81041c:	2252b03a 	or	r9,r4,r9
  810420:	12406315 	stw	r9,396(r2)
  810424:	003ff106 	br	8103ec <__register_exitproc+0x4c>
  810428:	00bfffc4 	movi	r2,-1
  81042c:	f800283a 	ret

00810430 <__call_exitprocs>:
  810430:	defff704 	addi	sp,sp,-36
  810434:	00802074 	movhi	r2,129
  810438:	dcc00315 	stw	r19,12(sp)
  81043c:	14c9e517 	ldw	r19,10132(r2)
  810440:	dc800215 	stw	r18,8(sp)
  810444:	dfc00815 	stw	ra,32(sp)
  810448:	9c805217 	ldw	r18,328(r19)
  81044c:	ddc00715 	stw	r23,28(sp)
  810450:	dd800615 	stw	r22,24(sp)
  810454:	dd400515 	stw	r21,20(sp)
  810458:	dd000415 	stw	r20,16(sp)
  81045c:	dc400115 	stw	r17,4(sp)
  810460:	dc000015 	stw	r16,0(sp)
  810464:	90001026 	beq	r18,zero,8104a8 <__call_exitprocs+0x78>
  810468:	202b883a 	mov	r21,r4
  81046c:	282d883a 	mov	r22,r5
  810470:	05000044 	movi	r20,1
  810474:	94000117 	ldw	r16,4(r18)
  810478:	847fffc4 	addi	r17,r16,-1
  81047c:	88000a16 	blt	r17,zero,8104a8 <__call_exitprocs+0x78>
  810480:	84000044 	addi	r16,r16,1
  810484:	802090ba 	slli	r16,r16,2
  810488:	9421883a 	add	r16,r18,r16
  81048c:	b0001126 	beq	r22,zero,8104d4 <__call_exitprocs+0xa4>
  810490:	80804017 	ldw	r2,256(r16)
  810494:	15800f26 	beq	r2,r22,8104d4 <__call_exitprocs+0xa4>
  810498:	8c7fffc4 	addi	r17,r17,-1
  81049c:	88bfffd8 	cmpnei	r2,r17,-1
  8104a0:	843fff04 	addi	r16,r16,-4
  8104a4:	103ff91e 	bne	r2,zero,81048c <__call_exitprocs+0x5c>
  8104a8:	dfc00817 	ldw	ra,32(sp)
  8104ac:	ddc00717 	ldw	r23,28(sp)
  8104b0:	dd800617 	ldw	r22,24(sp)
  8104b4:	dd400517 	ldw	r21,20(sp)
  8104b8:	dd000417 	ldw	r20,16(sp)
  8104bc:	dcc00317 	ldw	r19,12(sp)
  8104c0:	dc800217 	ldw	r18,8(sp)
  8104c4:	dc400117 	ldw	r17,4(sp)
  8104c8:	dc000017 	ldw	r16,0(sp)
  8104cc:	dec00904 	addi	sp,sp,36
  8104d0:	f800283a 	ret
  8104d4:	90800117 	ldw	r2,4(r18)
  8104d8:	81800017 	ldw	r6,0(r16)
  8104dc:	10bfffc4 	addi	r2,r2,-1
  8104e0:	14401726 	beq	r2,r17,810540 <__call_exitprocs+0x110>
  8104e4:	80000015 	stw	zero,0(r16)
  8104e8:	303feb26 	beq	r6,zero,810498 <__call_exitprocs+0x68>
  8104ec:	a446983a 	sll	r3,r20,r17
  8104f0:	90806217 	ldw	r2,392(r18)
  8104f4:	95c00117 	ldw	r23,4(r18)
  8104f8:	1884703a 	and	r2,r3,r2
  8104fc:	1000081e 	bne	r2,zero,810520 <__call_exitprocs+0xf0>
  810500:	303ee83a 	callr	r6
  810504:	90c00117 	ldw	r3,4(r18)
  810508:	98805217 	ldw	r2,328(r19)
  81050c:	1dc0011e 	bne	r3,r23,810514 <__call_exitprocs+0xe4>
  810510:	90bfe126 	beq	r18,r2,810498 <__call_exitprocs+0x68>
  810514:	103fe426 	beq	r2,zero,8104a8 <__call_exitprocs+0x78>
  810518:	1025883a 	mov	r18,r2
  81051c:	003fd506 	br	810474 <__call_exitprocs+0x44>
  810520:	90806317 	ldw	r2,396(r18)
  810524:	81002017 	ldw	r4,128(r16)
  810528:	1886703a 	and	r3,r3,r2
  81052c:	1800061e 	bne	r3,zero,810548 <__call_exitprocs+0x118>
  810530:	200b883a 	mov	r5,r4
  810534:	a809883a 	mov	r4,r21
  810538:	303ee83a 	callr	r6
  81053c:	003ff106 	br	810504 <__call_exitprocs+0xd4>
  810540:	94400115 	stw	r17,4(r18)
  810544:	003fe806 	br	8104e8 <__call_exitprocs+0xb8>
  810548:	303ee83a 	callr	r6
  81054c:	003fed06 	br	810504 <__call_exitprocs+0xd4>
