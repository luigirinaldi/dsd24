
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
  80014c:	10d0f517 	ldw	r3,17364(r2)
  800150:	e0bffd17 	ldw	r2,-12(fp)
  800154:	100890fa 	slli	r4,r2,3
  800158:	00802074 	movhi	r2,129
  80015c:	2085883a 	add	r2,r4,r2
  800160:	1090f617 	ldw	r2,17368(r2)
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
  800254:	d6a9db14 	ori	gp,gp,42860
  800258:	00802074 	movhi	r2,129
  80025c:	1090df14 	ori	r2,r2,17276
  800260:	00c02074 	movhi	r3,129
  800264:	18d13514 	ori	r3,r3,17620
  800268:	10c00326 	beq	r2,r3,800278 <_start+0x40>
  80026c:	10000015 	stw	zero,0(r2)
  800270:	10800104 	addi	r2,r2,4
  800274:	10fffd36 	bltu	r2,r3,80026c <_start+0x34>
  800278:	080e1580 	call	80e158 <alt_load>
  80027c:	080e2f80 	call	80e2f8 <alt_main>

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
  8002bc:	08004d00 	call	8004d0 <__addsf3>
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
  800318:	080092c0 	call	80092c <__mulsf3>
  80031c:	900b883a 	mov	r5,r18
  800320:	1009883a 	mov	r4,r2
  800324:	08004d00 	call	8004d0 <__addsf3>
  800328:	8809883a 	mov	r4,r17
  80032c:	100b883a 	mov	r5,r2
  800330:	08004d00 	call	8004d0 <__addsf3>
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
  80038c:	21014a04 	addi	r4,r4,1320
  800390:	da37883a 	add	sp,sp,r8
  800394:	08010640 	call	801064 <puts>
  800398:	01002074 	movhi	r4,129
  80039c:	21014c04 	addi	r4,r4,1328
  8003a0:	01400044 	movi	r5,1
  8003a4:	0800f600 	call	800f60 <printf>
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
  8003f4:	08004d00 	call	8004d0 <__addsf3>
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
  800428:	080092c0 	call	80092c <__mulsf3>
  80042c:	800b883a 	mov	r5,r16
  800430:	1009883a 	mov	r4,r2
  800434:	08004d00 	call	8004d0 <__addsf3>
  800438:	8809883a 	mov	r4,r17
  80043c:	100b883a 	mov	r5,r2
  800440:	08004d00 	call	8004d0 <__addsf3>
  800444:	1023883a 	mov	r17,r2
  800448:	9cbff31e 	bne	r19,r18,800418 <main+0xb4>
  80044c:	1009883a 	mov	r4,r2
  800450:	0800db80 	call	800db8 <__extendsfdf2>
  800454:	01002074 	movhi	r4,129
  800458:	d4270d17 	ldw	r16,-25548(gp)
  80045c:	180d883a 	mov	r6,r3
  800460:	100b883a 	mov	r5,r2
  800464:	21015104 	addi	r4,r4,1348
  800468:	0800f600 	call	800f60 <printf>
  80046c:	8521c83a 	sub	r16,r16,r20
  800470:	01002074 	movhi	r4,129
  800474:	800b883a 	mov	r5,r16
  800478:	01800044 	movi	r6,1
  80047c:	21015404 	addi	r4,r4,1360
  800480:	0800f600 	call	800f60 <printf>
  800484:	8009883a 	mov	r4,r16
  800488:	0800d280 	call	800d28 <__floatunsidf>
  80048c:	01002074 	movhi	r4,129
  800490:	100b883a 	mov	r5,r2
  800494:	180d883a 	mov	r6,r3
  800498:	21015c04 	addi	r4,r4,1392
  80049c:	0800f600 	call	800f60 <printf>
  8004a0:	0005883a 	mov	r2,zero
  8004a4:	02000434 	movhi	r8,16
  8004a8:	423c0204 	addi	r8,r8,-4088
  8004ac:	da37883a 	add	sp,sp,r8
  8004b0:	dfc00517 	ldw	ra,20(sp)
  8004b4:	dd000417 	ldw	r20,16(sp)
  8004b8:	dcc00317 	ldw	r19,12(sp)
  8004bc:	dc800217 	ldw	r18,8(sp)
  8004c0:	dc400117 	ldw	r17,4(sp)
  8004c4:	dc000017 	ldw	r16,0(sp)
  8004c8:	dec00604 	addi	sp,sp,24
  8004cc:	f800283a 	ret

008004d0 <__addsf3>:
  8004d0:	280cd5fa 	srli	r6,r5,23
  8004d4:	2006d5fa 	srli	r3,r4,23
  8004d8:	2010d7fa 	srli	r8,r4,31
  8004dc:	01c02034 	movhi	r7,128
  8004e0:	2818d7fa 	srli	r12,r5,31
  8004e4:	defffc04 	addi	sp,sp,-16
  8004e8:	39ffffc4 	addi	r7,r7,-1
  8004ec:	3914703a 	and	r10,r7,r4
  8004f0:	32403fcc 	andi	r9,r6,255
  8004f4:	dc800215 	stw	r18,8(sp)
  8004f8:	dc400115 	stw	r17,4(sp)
  8004fc:	395a703a 	and	r13,r7,r5
  800500:	1c403fcc 	andi	r17,r3,255
  800504:	dfc00315 	stw	ra,12(sp)
  800508:	dc000015 	stw	r16,0(sp)
  80050c:	501c90fa 	slli	r14,r10,3
  800510:	681690fa 	slli	r11,r13,3
  800514:	500d883a 	mov	r6,r10
  800518:	4025883a 	mov	r18,r8
  80051c:	8a45c83a 	sub	r2,r17,r9
  800520:	43004b26 	beq	r8,r12,800650 <__addsf3+0x180>
  800524:	0080390e 	bge	zero,r2,80060c <__addsf3+0x13c>
  800528:	48006326 	beq	r9,zero,8006b8 <__addsf3+0x1e8>
  80052c:	88c03fe0 	cmpeqi	r3,r17,255
  800530:	1800401e 	bne	r3,zero,800634 <__addsf3+0x164>
  800534:	5ac10034 	orhi	r11,r11,1024
  800538:	10c00708 	cmpgei	r3,r2,28
  80053c:	1800ab1e 	bne	r3,zero,8007ec <__addsf3+0x31c>
  800540:	01000804 	movi	r4,32
  800544:	2089c83a 	sub	r4,r4,r2
  800548:	5908983a 	sll	r4,r11,r4
  80054c:	5884d83a 	srl	r2,r11,r2
  800550:	2008c03a 	cmpne	r4,r4,zero
  800554:	1104b03a 	or	r2,r2,r4
  800558:	7085c83a 	sub	r2,r14,r2
  80055c:	10c1002c 	andhi	r3,r2,1024
  800560:	18008526 	beq	r3,zero,800778 <__addsf3+0x2a8>
  800564:	04010034 	movhi	r16,1024
  800568:	843fffc4 	addi	r16,r16,-1
  80056c:	1420703a 	and	r16,r2,r16
  800570:	8009883a 	mov	r4,r16
  800574:	0800eb40 	call	800eb4 <__clzsi2>
  800578:	10fffec4 	addi	r3,r2,-5
  80057c:	80c4983a 	sll	r2,r16,r3
  800580:	1c409516 	blt	r3,r17,8007d8 <__addsf3+0x308>
  800584:	1c47c83a 	sub	r3,r3,r17
  800588:	1c000044 	addi	r16,r3,1
  80058c:	01000804 	movi	r4,32
  800590:	2409c83a 	sub	r4,r4,r16
  800594:	1108983a 	sll	r4,r2,r4
  800598:	1404d83a 	srl	r2,r2,r16
  80059c:	0023883a 	mov	r17,zero
  8005a0:	2008c03a 	cmpne	r4,r4,zero
  8005a4:	1104b03a 	or	r2,r2,r4
  8005a8:	10c001cc 	andi	r3,r2,7
  8005ac:	18000426 	beq	r3,zero,8005c0 <__addsf3+0xf0>
  8005b0:	10c003cc 	andi	r3,r2,15
  8005b4:	18c00120 	cmpeqi	r3,r3,4
  8005b8:	1800011e 	bne	r3,zero,8005c0 <__addsf3+0xf0>
  8005bc:	10800104 	addi	r2,r2,4
  8005c0:	10c1002c 	andhi	r3,r2,1024
  8005c4:	18006e26 	beq	r3,zero,800780 <__addsf3+0x2b0>
  8005c8:	88c00044 	addi	r3,r17,1
  8005cc:	19003fe0 	cmpeqi	r4,r3,255
  8005d0:	20006d1e 	bne	r4,zero,800788 <__addsf3+0x2b8>
  8005d4:	100491ba 	slli	r2,r2,6
  8005d8:	100cd27a 	srli	r6,r2,9
  8005dc:	18803fcc 	andi	r2,r3,255
  8005e0:	100495fa 	slli	r2,r2,23
  8005e4:	94803fcc 	andi	r18,r18,255
  8005e8:	902497fa 	slli	r18,r18,31
  8005ec:	1184b03a 	or	r2,r2,r6
  8005f0:	1484b03a 	or	r2,r2,r18
  8005f4:	dfc00317 	ldw	ra,12(sp)
  8005f8:	dc800217 	ldw	r18,8(sp)
  8005fc:	dc400117 	ldw	r17,4(sp)
  800600:	dc000017 	ldw	r16,0(sp)
  800604:	dec00404 	addi	sp,sp,16
  800608:	f800283a 	ret
  80060c:	10003026 	beq	r2,zero,8006d0 <__addsf3+0x200>
  800610:	4c49c83a 	sub	r4,r9,r17
  800614:	88007f1e 	bne	r17,zero,800814 <__addsf3+0x344>
  800618:	70003f26 	beq	r14,zero,800718 <__addsf3+0x248>
  80061c:	213fffc4 	addi	r4,r4,-1
  800620:	2000b326 	beq	r4,zero,8008f0 <__addsf3+0x420>
  800624:	48803fe0 	cmpeqi	r2,r9,255
  800628:	10007d26 	beq	r2,zero,800820 <__addsf3+0x350>
  80062c:	6025883a 	mov	r18,r12
  800630:	6815883a 	mov	r10,r13
  800634:	50005426 	beq	r10,zero,800788 <__addsf3+0x2b8>
  800638:	00802034 	movhi	r2,128
  80063c:	51801034 	orhi	r6,r10,64
  800640:	10bfffc4 	addi	r2,r2,-1
  800644:	308c703a 	and	r6,r6,r2
  800648:	00ffffc4 	movi	r3,-1
  80064c:	003fe306 	br	8005dc <__addsf3+0x10c>
  800650:	0080500e 	bge	zero,r2,800794 <__addsf3+0x2c4>
  800654:	48002a26 	beq	r9,zero,800700 <__addsf3+0x230>
  800658:	88c03fe0 	cmpeqi	r3,r17,255
  80065c:	183ff51e 	bne	r3,zero,800634 <__addsf3+0x164>
  800660:	5ac10034 	orhi	r11,r11,1024
  800664:	10c00708 	cmpgei	r3,r2,28
  800668:	1800741e 	bne	r3,zero,80083c <__addsf3+0x36c>
  80066c:	00c00804 	movi	r3,32
  800670:	1887c83a 	sub	r3,r3,r2
  800674:	58c6983a 	sll	r3,r11,r3
  800678:	5884d83a 	srl	r2,r11,r2
  80067c:	1806c03a 	cmpne	r3,r3,zero
  800680:	10c4b03a 	or	r2,r2,r3
  800684:	1385883a 	add	r2,r2,r14
  800688:	10c1002c 	andhi	r3,r2,1024
  80068c:	18003a26 	beq	r3,zero,800778 <__addsf3+0x2a8>
  800690:	8c400044 	addi	r17,r17,1
  800694:	88c03fe0 	cmpeqi	r3,r17,255
  800698:	18003b1e 	bne	r3,zero,800788 <__addsf3+0x2b8>
  80069c:	1008d07a 	srli	r4,r2,1
  8006a0:	00df8034 	movhi	r3,32256
  8006a4:	18ffffc4 	addi	r3,r3,-1
  8006a8:	1080004c 	andi	r2,r2,1
  8006ac:	20c8703a 	and	r4,r4,r3
  8006b0:	2084b03a 	or	r2,r4,r2
  8006b4:	003fbc06 	br	8005a8 <__addsf3+0xd8>
  8006b8:	58001a26 	beq	r11,zero,800724 <__addsf3+0x254>
  8006bc:	10bfffc4 	addi	r2,r2,-1
  8006c0:	10007c26 	beq	r2,zero,8008b4 <__addsf3+0x3e4>
  8006c4:	88c03fe0 	cmpeqi	r3,r17,255
  8006c8:	183f9b26 	beq	r3,zero,800538 <__addsf3+0x68>
  8006cc:	003fd906 	br	800634 <__addsf3+0x164>
  8006d0:	88800044 	addi	r2,r17,1
  8006d4:	10803f8c 	andi	r2,r2,254
  8006d8:	1000461e 	bne	r2,zero,8007f4 <__addsf3+0x324>
  8006dc:	88006e1e 	bne	r17,zero,800898 <__addsf3+0x3c8>
  8006e0:	70007f26 	beq	r14,zero,8008e0 <__addsf3+0x410>
  8006e4:	583fbd26 	beq	r11,zero,8005dc <__addsf3+0x10c>
  8006e8:	72c5c83a 	sub	r2,r14,r11
  8006ec:	1101002c 	andhi	r4,r2,1024
  8006f0:	20008326 	beq	r4,zero,800900 <__addsf3+0x430>
  8006f4:	5b85c83a 	sub	r2,r11,r14
  8006f8:	6025883a 	mov	r18,r12
  8006fc:	003faa06 	br	8005a8 <__addsf3+0xd8>
  800700:	58000826 	beq	r11,zero,800724 <__addsf3+0x254>
  800704:	10bfffc4 	addi	r2,r2,-1
  800708:	10006826 	beq	r2,zero,8008ac <__addsf3+0x3dc>
  80070c:	88c03fe0 	cmpeqi	r3,r17,255
  800710:	183fd426 	beq	r3,zero,800664 <__addsf3+0x194>
  800714:	003fc706 	br	800634 <__addsf3+0x164>
  800718:	6025883a 	mov	r18,r12
  80071c:	6815883a 	mov	r10,r13
  800720:	4823883a 	mov	r17,r9
  800724:	88803fe0 	cmpeqi	r2,r17,255
  800728:	103fc21e 	bne	r2,zero,800634 <__addsf3+0x164>
  80072c:	00802034 	movhi	r2,128
  800730:	10bfffc4 	addi	r2,r2,-1
  800734:	508c703a 	and	r6,r10,r2
  800738:	8807883a 	mov	r3,r17
  80073c:	003fa706 	br	8005dc <__addsf3+0x10c>
  800740:	881f883a 	mov	r15,r17
  800744:	8c400044 	addi	r17,r17,1
  800748:	88803f8c 	andi	r2,r17,254
  80074c:	10004a1e 	bne	r2,zero,800878 <__addsf3+0x3a8>
  800750:	78005a1e 	bne	r15,zero,8008bc <__addsf3+0x3ec>
  800754:	70006e26 	beq	r14,zero,800910 <__addsf3+0x440>
  800758:	583fa026 	beq	r11,zero,8005dc <__addsf3+0x10c>
  80075c:	72c5883a 	add	r2,r14,r11
  800760:	10c1002c 	andhi	r3,r2,1024
  800764:	18006f26 	beq	r3,zero,800924 <__addsf3+0x454>
  800768:	00ff0034 	movhi	r3,64512
  80076c:	18ffffc4 	addi	r3,r3,-1
  800770:	10c4703a 	and	r2,r2,r3
  800774:	04400044 	movi	r17,1
  800778:	10c001cc 	andi	r3,r2,7
  80077c:	183f8c1e 	bne	r3,zero,8005b0 <__addsf3+0xe0>
  800780:	1014d0fa 	srli	r10,r2,3
  800784:	003fe706 	br	800724 <__addsf3+0x254>
  800788:	00ffffc4 	movi	r3,-1
  80078c:	000d883a 	mov	r6,zero
  800790:	003f9206 	br	8005dc <__addsf3+0x10c>
  800794:	103fea26 	beq	r2,zero,800740 <__addsf3+0x270>
  800798:	4c49c83a 	sub	r4,r9,r17
  80079c:	88003026 	beq	r17,zero,800860 <__addsf3+0x390>
  8007a0:	48803fe0 	cmpeqi	r2,r9,255
  8007a4:	103fa21e 	bne	r2,zero,800630 <__addsf3+0x160>
  8007a8:	73810034 	orhi	r14,r14,1024
  8007ac:	20800708 	cmpgei	r2,r4,28
  8007b0:	1000491e 	bne	r2,zero,8008d8 <__addsf3+0x408>
  8007b4:	00800804 	movi	r2,32
  8007b8:	1105c83a 	sub	r2,r2,r4
  8007bc:	7084983a 	sll	r2,r14,r2
  8007c0:	7108d83a 	srl	r4,r14,r4
  8007c4:	1004c03a 	cmpne	r2,r2,zero
  8007c8:	2088b03a 	or	r4,r4,r2
  8007cc:	22c5883a 	add	r2,r4,r11
  8007d0:	4823883a 	mov	r17,r9
  8007d4:	003fac06 	br	800688 <__addsf3+0x1b8>
  8007d8:	013f0034 	movhi	r4,64512
  8007dc:	213fffc4 	addi	r4,r4,-1
  8007e0:	88e3c83a 	sub	r17,r17,r3
  8007e4:	1104703a 	and	r2,r2,r4
  8007e8:	003f6f06 	br	8005a8 <__addsf3+0xd8>
  8007ec:	00800044 	movi	r2,1
  8007f0:	003f5906 	br	800558 <__addsf3+0x88>
  8007f4:	72e1c83a 	sub	r16,r14,r11
  8007f8:	8081002c 	andhi	r2,r16,1024
  8007fc:	1000231e 	bne	r2,zero,80088c <__addsf3+0x3bc>
  800800:	803f5b1e 	bne	r16,zero,800570 <__addsf3+0xa0>
  800804:	0025883a 	mov	r18,zero
  800808:	0007883a 	mov	r3,zero
  80080c:	000d883a 	mov	r6,zero
  800810:	003f7206 	br	8005dc <__addsf3+0x10c>
  800814:	48803fe0 	cmpeqi	r2,r9,255
  800818:	103f841e 	bne	r2,zero,80062c <__addsf3+0x15c>
  80081c:	73810034 	orhi	r14,r14,1024
  800820:	20800708 	cmpgei	r2,r4,28
  800824:	10000726 	beq	r2,zero,800844 <__addsf3+0x374>
  800828:	01000044 	movi	r4,1
  80082c:	5905c83a 	sub	r2,r11,r4
  800830:	6025883a 	mov	r18,r12
  800834:	4823883a 	mov	r17,r9
  800838:	003f4806 	br	80055c <__addsf3+0x8c>
  80083c:	00800044 	movi	r2,1
  800840:	003f9006 	br	800684 <__addsf3+0x1b4>
  800844:	00800804 	movi	r2,32
  800848:	1105c83a 	sub	r2,r2,r4
  80084c:	7084983a 	sll	r2,r14,r2
  800850:	7108d83a 	srl	r4,r14,r4
  800854:	1004c03a 	cmpne	r2,r2,zero
  800858:	2088b03a 	or	r4,r4,r2
  80085c:	003ff306 	br	80082c <__addsf3+0x35c>
  800860:	703fae26 	beq	r14,zero,80071c <__addsf3+0x24c>
  800864:	213fffc4 	addi	r4,r4,-1
  800868:	20002b26 	beq	r4,zero,800918 <__addsf3+0x448>
  80086c:	48803fe0 	cmpeqi	r2,r9,255
  800870:	103fce26 	beq	r2,zero,8007ac <__addsf3+0x2dc>
  800874:	003f6e06 	br	800630 <__addsf3+0x160>
  800878:	88803fe0 	cmpeqi	r2,r17,255
  80087c:	103fc21e 	bne	r2,zero,800788 <__addsf3+0x2b8>
  800880:	72c5883a 	add	r2,r14,r11
  800884:	1004d07a 	srli	r2,r2,1
  800888:	003fbb06 	br	800778 <__addsf3+0x2a8>
  80088c:	5ba1c83a 	sub	r16,r11,r14
  800890:	6025883a 	mov	r18,r12
  800894:	003f3606 	br	800570 <__addsf3+0xa0>
  800898:	7000091e 	bne	r14,zero,8008c0 <__addsf3+0x3f0>
  80089c:	583f631e 	bne	r11,zero,80062c <__addsf3+0x15c>
  8008a0:	0025883a 	mov	r18,zero
  8008a4:	380d883a 	mov	r6,r7
  8008a8:	003f6706 	br	800648 <__addsf3+0x178>
  8008ac:	72c5883a 	add	r2,r14,r11
  8008b0:	003f7506 	br	800688 <__addsf3+0x1b8>
  8008b4:	72c5c83a 	sub	r2,r14,r11
  8008b8:	003f2806 	br	80055c <__addsf3+0x8c>
  8008bc:	703f5c26 	beq	r14,zero,800630 <__addsf3+0x160>
  8008c0:	583f5c26 	beq	r11,zero,800634 <__addsf3+0x164>
  8008c4:	20c0102c 	andhi	r3,r4,64
  8008c8:	183f5a26 	beq	r3,zero,800634 <__addsf3+0x164>
  8008cc:	2940102c 	andhi	r5,r5,64
  8008d0:	283f581e 	bne	r5,zero,800634 <__addsf3+0x164>
  8008d4:	003f5506 	br	80062c <__addsf3+0x15c>
  8008d8:	01000044 	movi	r4,1
  8008dc:	003fbb06 	br	8007cc <__addsf3+0x2fc>
  8008e0:	58000826 	beq	r11,zero,800904 <__addsf3+0x434>
  8008e4:	6025883a 	mov	r18,r12
  8008e8:	680d883a 	mov	r6,r13
  8008ec:	003f3b06 	br	8005dc <__addsf3+0x10c>
  8008f0:	5b85c83a 	sub	r2,r11,r14
  8008f4:	6025883a 	mov	r18,r12
  8008f8:	4823883a 	mov	r17,r9
  8008fc:	003f1706 	br	80055c <__addsf3+0x8c>
  800900:	103f9d1e 	bne	r2,zero,800778 <__addsf3+0x2a8>
  800904:	0025883a 	mov	r18,zero
  800908:	000d883a 	mov	r6,zero
  80090c:	003f3306 	br	8005dc <__addsf3+0x10c>
  800910:	680d883a 	mov	r6,r13
  800914:	003f3106 	br	8005dc <__addsf3+0x10c>
  800918:	72c5883a 	add	r2,r14,r11
  80091c:	4823883a 	mov	r17,r9
  800920:	003f5906 	br	800688 <__addsf3+0x1b8>
  800924:	0023883a 	mov	r17,zero
  800928:	003f9306 	br	800778 <__addsf3+0x2a8>

0080092c <__mulsf3>:
  80092c:	defff504 	addi	sp,sp,-44
  800930:	dc400215 	stw	r17,8(sp)
  800934:	2022d5fa 	srli	r17,r4,23
  800938:	dc000115 	stw	r16,4(sp)
  80093c:	04002034 	movhi	r16,128
  800940:	dd800715 	stw	r22,28(sp)
  800944:	843fffc4 	addi	r16,r16,-1
  800948:	dfc00a15 	stw	ra,40(sp)
  80094c:	df000915 	stw	fp,36(sp)
  800950:	ddc00815 	stw	r23,32(sp)
  800954:	dd400615 	stw	r21,24(sp)
  800958:	dd000515 	stw	r20,20(sp)
  80095c:	dcc00415 	stw	r19,16(sp)
  800960:	dc800315 	stw	r18,12(sp)
  800964:	8c403fcc 	andi	r17,r17,255
  800968:	202cd7fa 	srli	r22,r4,31
  80096c:	8120703a 	and	r16,r16,r4
  800970:	88005026 	beq	r17,zero,800ab4 <__mulsf3+0x188>
  800974:	88803fe0 	cmpeqi	r2,r17,255
  800978:	1000531e 	bne	r2,zero,800ac8 <__mulsf3+0x19c>
  80097c:	802090fa 	slli	r16,r16,3
  800980:	8c7fe044 	addi	r17,r17,-127
  800984:	0025883a 	mov	r18,zero
  800988:	84010034 	orhi	r16,r16,1024
  80098c:	0029883a 	mov	r20,zero
  800990:	2804d5fa 	srli	r2,r5,23
  800994:	01002034 	movhi	r4,128
  800998:	213fffc4 	addi	r4,r4,-1
  80099c:	10803fcc 	andi	r2,r2,255
  8009a0:	282ed7fa 	srli	r23,r5,31
  8009a4:	2166703a 	and	r19,r4,r5
  8009a8:	10004c26 	beq	r2,zero,800adc <__mulsf3+0x1b0>
  8009ac:	10c03fe0 	cmpeqi	r3,r2,255
  8009b0:	18001e1e 	bne	r3,zero,800a2c <__mulsf3+0x100>
  8009b4:	980890fa 	slli	r4,r19,3
  8009b8:	10bfe044 	addi	r2,r2,-127
  8009bc:	88a3883a 	add	r17,r17,r2
  8009c0:	24c10034 	orhi	r19,r4,1024
  8009c4:	0007883a 	mov	r3,zero
  8009c8:	90800428 	cmpgeui	r2,r18,16
  8009cc:	b5eaf03a 	xor	r21,r22,r23
  8009d0:	8f000044 	addi	fp,r17,1
  8009d4:	1000481e 	bne	r2,zero,800af8 <__mulsf3+0x1cc>
  8009d8:	902490ba 	slli	r18,r18,2
  8009dc:	00802034 	movhi	r2,128
  8009e0:	9085883a 	add	r2,r18,r2
  8009e4:	10827b17 	ldw	r2,2540(r2)
  8009e8:	1000683a 	jmp	r2
  8009ec:	00800af8 	rdprs	r2,zero,43
  8009f0:	00800a44 	movi	r2,41
  8009f4:	00800a44 	movi	r2,41
  8009f8:	00800a40 	call	800a4 <__alt_mem_sdram-0x77ff5c>
  8009fc:	00800a4c 	andi	r2,zero,41
  800a00:	00800a4c 	andi	r2,zero,41
  800a04:	00800c58 	cmpnei	r2,zero,49
  800a08:	00800a40 	call	800a4 <__alt_mem_sdram-0x77ff5c>
  800a0c:	00800a4c 	andi	r2,zero,41
  800a10:	00800c58 	cmpnei	r2,zero,49
  800a14:	00800a4c 	andi	r2,zero,41
  800a18:	00800a40 	call	800a4 <__alt_mem_sdram-0x77ff5c>
  800a1c:	00800be8 	cmpgeui	r2,zero,47
  800a20:	00800be8 	cmpgeui	r2,zero,47
  800a24:	00800be8 	cmpgeui	r2,zero,47
  800a28:	00800cbc 	xorhi	r2,zero,50
  800a2c:	8c403fc4 	addi	r17,r17,255
  800a30:	98006f1e 	bne	r19,zero,800bf0 <__mulsf3+0x2c4>
  800a34:	94800094 	ori	r18,r18,2
  800a38:	00c00084 	movi	r3,2
  800a3c:	003fe206 	br	8009c8 <__mulsf3+0x9c>
  800a40:	b82b883a 	mov	r21,r23
  800a44:	9821883a 	mov	r16,r19
  800a48:	1829883a 	mov	r20,r3
  800a4c:	a08000a0 	cmpeqi	r2,r20,2
  800a50:	1000261e 	bne	r2,zero,800aec <__mulsf3+0x1c0>
  800a54:	a08000e0 	cmpeqi	r2,r20,3
  800a58:	1000ae1e 	bne	r2,zero,800d14 <__mulsf3+0x3e8>
  800a5c:	a0800060 	cmpeqi	r2,r20,1
  800a60:	10004e26 	beq	r2,zero,800b9c <__mulsf3+0x270>
  800a64:	0007883a 	mov	r3,zero
  800a68:	0009883a 	mov	r4,zero
  800a6c:	1c003fcc 	andi	r16,r3,255
  800a70:	a8803fcc 	andi	r2,r21,255
  800a74:	802095fa 	slli	r16,r16,23
  800a78:	100497fa 	slli	r2,r2,31
  800a7c:	8120b03a 	or	r16,r16,r4
  800a80:	8084b03a 	or	r2,r16,r2
  800a84:	dfc00a17 	ldw	ra,40(sp)
  800a88:	df000917 	ldw	fp,36(sp)
  800a8c:	ddc00817 	ldw	r23,32(sp)
  800a90:	dd800717 	ldw	r22,28(sp)
  800a94:	dd400617 	ldw	r21,24(sp)
  800a98:	dd000517 	ldw	r20,20(sp)
  800a9c:	dcc00417 	ldw	r19,16(sp)
  800aa0:	dc800317 	ldw	r18,12(sp)
  800aa4:	dc400217 	ldw	r17,8(sp)
  800aa8:	dc000117 	ldw	r16,4(sp)
  800aac:	dec00b04 	addi	sp,sp,44
  800ab0:	f800283a 	ret
  800ab4:	80005d1e 	bne	r16,zero,800c2c <__mulsf3+0x300>
  800ab8:	04800104 	movi	r18,4
  800abc:	0023883a 	mov	r17,zero
  800ac0:	05000044 	movi	r20,1
  800ac4:	003fb206 	br	800990 <__mulsf3+0x64>
  800ac8:	8000541e 	bne	r16,zero,800c1c <__mulsf3+0x2f0>
  800acc:	04800204 	movi	r18,8
  800ad0:	04403fc4 	movi	r17,255
  800ad4:	05000084 	movi	r20,2
  800ad8:	003fad06 	br	800990 <__mulsf3+0x64>
  800adc:	9800471e 	bne	r19,zero,800bfc <__mulsf3+0x2d0>
  800ae0:	94800054 	ori	r18,r18,1
  800ae4:	00c00044 	movi	r3,1
  800ae8:	003fb706 	br	8009c8 <__mulsf3+0x9c>
  800aec:	00ffffc4 	movi	r3,-1
  800af0:	0009883a 	mov	r4,zero
  800af4:	003fdd06 	br	800a6c <__mulsf3+0x140>
  800af8:	8028d43a 	srli	r20,r16,16
  800afc:	9cbfffcc 	andi	r18,r19,65535
  800b00:	843fffcc 	andi	r16,r16,65535
  800b04:	900b883a 	mov	r5,r18
  800b08:	8009883a 	mov	r4,r16
  800b0c:	0800f080 	call	800f08 <__mulsi3>
  800b10:	9826d43a 	srli	r19,r19,16
  800b14:	900b883a 	mov	r5,r18
  800b18:	a009883a 	mov	r4,r20
  800b1c:	1025883a 	mov	r18,r2
  800b20:	0800f080 	call	800f08 <__mulsi3>
  800b24:	980b883a 	mov	r5,r19
  800b28:	a009883a 	mov	r4,r20
  800b2c:	1029883a 	mov	r20,r2
  800b30:	0800f080 	call	800f08 <__mulsi3>
  800b34:	9809883a 	mov	r4,r19
  800b38:	800b883a 	mov	r5,r16
  800b3c:	1027883a 	mov	r19,r2
  800b40:	0800f080 	call	800f08 <__mulsi3>
  800b44:	9006d43a 	srli	r3,r18,16
  800b48:	1505883a 	add	r2,r2,r20
  800b4c:	1887883a 	add	r3,r3,r2
  800b50:	1d00022e 	bgeu	r3,r20,800b5c <__mulsf3+0x230>
  800b54:	00800074 	movhi	r2,1
  800b58:	98a7883a 	add	r19,r19,r2
  800b5c:	1808943a 	slli	r4,r3,16
  800b60:	1820d43a 	srli	r16,r3,16
  800b64:	94bfffcc 	andi	r18,r18,65535
  800b68:	2489883a 	add	r4,r4,r18
  800b6c:	200a91ba 	slli	r5,r4,6
  800b70:	84e1883a 	add	r16,r16,r19
  800b74:	802091ba 	slli	r16,r16,6
  800b78:	2008d6ba 	srli	r4,r4,26
  800b7c:	2804c03a 	cmpne	r2,r5,zero
  800b80:	80c2002c 	andhi	r3,r16,2048
  800b84:	1108b03a 	or	r4,r2,r4
  800b88:	8120b03a 	or	r16,r16,r4
  800b8c:	18005b26 	beq	r3,zero,800cfc <__mulsf3+0x3d0>
  800b90:	8004d07a 	srli	r2,r16,1
  800b94:	8400004c 	andi	r16,r16,1
  800b98:	1420b03a 	or	r16,r2,r16
  800b9c:	e0c01fc4 	addi	r3,fp,127
  800ba0:	00c0320e 	bge	zero,r3,800c6c <__mulsf3+0x340>
  800ba4:	808001cc 	andi	r2,r16,7
  800ba8:	10000426 	beq	r2,zero,800bbc <__mulsf3+0x290>
  800bac:	808003cc 	andi	r2,r16,15
  800bb0:	10800120 	cmpeqi	r2,r2,4
  800bb4:	1000011e 	bne	r2,zero,800bbc <__mulsf3+0x290>
  800bb8:	84000104 	addi	r16,r16,4
  800bbc:	8082002c 	andhi	r2,r16,2048
  800bc0:	10000426 	beq	r2,zero,800bd4 <__mulsf3+0x2a8>
  800bc4:	00be0034 	movhi	r2,63488
  800bc8:	10bfffc4 	addi	r2,r2,-1
  800bcc:	80a0703a 	and	r16,r16,r2
  800bd0:	e0c02004 	addi	r3,fp,128
  800bd4:	18803fc8 	cmpgei	r2,r3,255
  800bd8:	103fc41e 	bne	r2,zero,800aec <__mulsf3+0x1c0>
  800bdc:	802091ba 	slli	r16,r16,6
  800be0:	8008d27a 	srli	r4,r16,9
  800be4:	003fa106 	br	800a6c <__mulsf3+0x140>
  800be8:	b02b883a 	mov	r21,r22
  800bec:	003f9706 	br	800a4c <__mulsf3+0x120>
  800bf0:	948000d4 	ori	r18,r18,3
  800bf4:	00c000c4 	movi	r3,3
  800bf8:	003f7306 	br	8009c8 <__mulsf3+0x9c>
  800bfc:	9809883a 	mov	r4,r19
  800c00:	0800eb40 	call	800eb4 <__clzsi2>
  800c04:	10fffec4 	addi	r3,r2,-5
  800c08:	88a3c83a 	sub	r17,r17,r2
  800c0c:	98e6983a 	sll	r19,r19,r3
  800c10:	8c7fe284 	addi	r17,r17,-118
  800c14:	0007883a 	mov	r3,zero
  800c18:	003f6b06 	br	8009c8 <__mulsf3+0x9c>
  800c1c:	04800304 	movi	r18,12
  800c20:	04403fc4 	movi	r17,255
  800c24:	050000c4 	movi	r20,3
  800c28:	003f5906 	br	800990 <__mulsf3+0x64>
  800c2c:	8009883a 	mov	r4,r16
  800c30:	d9400015 	stw	r5,0(sp)
  800c34:	0800eb40 	call	800eb4 <__clzsi2>
  800c38:	10fffec4 	addi	r3,r2,-5
  800c3c:	047fe284 	movi	r17,-118
  800c40:	80e0983a 	sll	r16,r16,r3
  800c44:	d9400017 	ldw	r5,0(sp)
  800c48:	88a3c83a 	sub	r17,r17,r2
  800c4c:	0025883a 	mov	r18,zero
  800c50:	0029883a 	mov	r20,zero
  800c54:	003f4e06 	br	800990 <__mulsf3+0x64>
  800c58:	01002034 	movhi	r4,128
  800c5c:	002b883a 	mov	r21,zero
  800c60:	213fffc4 	addi	r4,r4,-1
  800c64:	00ffffc4 	movi	r3,-1
  800c68:	003f8006 	br	800a6c <__mulsf3+0x140>
  800c6c:	00800044 	movi	r2,1
  800c70:	10c7c83a 	sub	r3,r2,r3
  800c74:	18800708 	cmpgei	r2,r3,28
  800c78:	103f7a1e 	bne	r2,zero,800a64 <__mulsf3+0x138>
  800c7c:	e1002784 	addi	r4,fp,158
  800c80:	8108983a 	sll	r4,r16,r4
  800c84:	80e0d83a 	srl	r16,r16,r3
  800c88:	2008c03a 	cmpne	r4,r4,zero
  800c8c:	8120b03a 	or	r16,r16,r4
  800c90:	808001cc 	andi	r2,r16,7
  800c94:	10000426 	beq	r2,zero,800ca8 <__mulsf3+0x37c>
  800c98:	808003cc 	andi	r2,r16,15
  800c9c:	10800120 	cmpeqi	r2,r2,4
  800ca0:	1000011e 	bne	r2,zero,800ca8 <__mulsf3+0x37c>
  800ca4:	84000104 	addi	r16,r16,4
  800ca8:	8081002c 	andhi	r2,r16,1024
  800cac:	10001526 	beq	r2,zero,800d04 <__mulsf3+0x3d8>
  800cb0:	00c00044 	movi	r3,1
  800cb4:	0009883a 	mov	r4,zero
  800cb8:	003f6c06 	br	800a6c <__mulsf3+0x140>
  800cbc:	8080102c 	andhi	r2,r16,64
  800cc0:	10000826 	beq	r2,zero,800ce4 <__mulsf3+0x3b8>
  800cc4:	9880102c 	andhi	r2,r19,64
  800cc8:	1000061e 	bne	r2,zero,800ce4 <__mulsf3+0x3b8>
  800ccc:	00802034 	movhi	r2,128
  800cd0:	99001034 	orhi	r4,r19,64
  800cd4:	10bfffc4 	addi	r2,r2,-1
  800cd8:	2088703a 	and	r4,r4,r2
  800cdc:	b82b883a 	mov	r21,r23
  800ce0:	003fe006 	br	800c64 <__mulsf3+0x338>
  800ce4:	00802034 	movhi	r2,128
  800ce8:	81001034 	orhi	r4,r16,64
  800cec:	10bfffc4 	addi	r2,r2,-1
  800cf0:	2088703a 	and	r4,r4,r2
  800cf4:	b02b883a 	mov	r21,r22
  800cf8:	003fda06 	br	800c64 <__mulsf3+0x338>
  800cfc:	8839883a 	mov	fp,r17
  800d00:	003fa606 	br	800b9c <__mulsf3+0x270>
  800d04:	802091ba 	slli	r16,r16,6
  800d08:	0007883a 	mov	r3,zero
  800d0c:	8008d27a 	srli	r4,r16,9
  800d10:	003f5606 	br	800a6c <__mulsf3+0x140>
  800d14:	00802034 	movhi	r2,128
  800d18:	81001034 	orhi	r4,r16,64
  800d1c:	10bfffc4 	addi	r2,r2,-1
  800d20:	2088703a 	and	r4,r4,r2
  800d24:	003fcf06 	br	800c64 <__mulsf3+0x338>

00800d28 <__floatunsidf>:
  800d28:	defffe04 	addi	sp,sp,-8
  800d2c:	dc000015 	stw	r16,0(sp)
  800d30:	dfc00115 	stw	ra,4(sp)
  800d34:	2021883a 	mov	r16,r4
  800d38:	20000f26 	beq	r4,zero,800d78 <__floatunsidf+0x50>
  800d3c:	0800eb40 	call	800eb4 <__clzsi2>
  800d40:	00c10784 	movi	r3,1054
  800d44:	1887c83a 	sub	r3,r3,r2
  800d48:	110002c8 	cmpgei	r4,r2,11
  800d4c:	18c1ffcc 	andi	r3,r3,2047
  800d50:	2000121e 	bne	r4,zero,800d9c <__floatunsidf+0x74>
  800d54:	014002c4 	movi	r5,11
  800d58:	288bc83a 	sub	r5,r5,r2
  800d5c:	814ad83a 	srl	r5,r16,r5
  800d60:	01000434 	movhi	r4,16
  800d64:	10800544 	addi	r2,r2,21
  800d68:	213fffc4 	addi	r4,r4,-1
  800d6c:	80a0983a 	sll	r16,r16,r2
  800d70:	290a703a 	and	r5,r5,r4
  800d74:	00000206 	br	800d80 <__floatunsidf+0x58>
  800d78:	0007883a 	mov	r3,zero
  800d7c:	000b883a 	mov	r5,zero
  800d80:	1806953a 	slli	r3,r3,20
  800d84:	8005883a 	mov	r2,r16
  800d88:	1946b03a 	or	r3,r3,r5
  800d8c:	dfc00117 	ldw	ra,4(sp)
  800d90:	dc000017 	ldw	r16,0(sp)
  800d94:	dec00204 	addi	sp,sp,8
  800d98:	f800283a 	ret
  800d9c:	10bffd44 	addi	r2,r2,-11
  800da0:	808a983a 	sll	r5,r16,r2
  800da4:	00800434 	movhi	r2,16
  800da8:	10bfffc4 	addi	r2,r2,-1
  800dac:	288a703a 	and	r5,r5,r2
  800db0:	0021883a 	mov	r16,zero
  800db4:	003ff206 	br	800d80 <__floatunsidf+0x58>

00800db8 <__extendsfdf2>:
  800db8:	200ad5fa 	srli	r5,r4,23
  800dbc:	defffd04 	addi	sp,sp,-12
  800dc0:	dc000015 	stw	r16,0(sp)
  800dc4:	29403fcc 	andi	r5,r5,255
  800dc8:	04002034 	movhi	r16,128
  800dcc:	28800044 	addi	r2,r5,1
  800dd0:	dc400115 	stw	r17,4(sp)
  800dd4:	843fffc4 	addi	r16,r16,-1
  800dd8:	dfc00215 	stw	ra,8(sp)
  800ddc:	10803f8c 	andi	r2,r2,254
  800de0:	2022d7fa 	srli	r17,r4,31
  800de4:	8120703a 	and	r16,r16,r4
  800de8:	10000d26 	beq	r2,zero,800e20 <__extendsfdf2+0x68>
  800dec:	8008d0fa 	srli	r4,r16,3
  800df0:	8020977a 	slli	r16,r16,29
  800df4:	28c0e004 	addi	r3,r5,896
  800df8:	180a953a 	slli	r5,r3,20
  800dfc:	880697fa 	slli	r3,r17,31
  800e00:	8005883a 	mov	r2,r16
  800e04:	290ab03a 	or	r5,r5,r4
  800e08:	28c6b03a 	or	r3,r5,r3
  800e0c:	dfc00217 	ldw	ra,8(sp)
  800e10:	dc400117 	ldw	r17,4(sp)
  800e14:	dc000017 	ldw	r16,0(sp)
  800e18:	dec00304 	addi	sp,sp,12
  800e1c:	f800283a 	ret
  800e20:	2800111e 	bne	r5,zero,800e68 <__extendsfdf2+0xb0>
  800e24:	80001926 	beq	r16,zero,800e8c <__extendsfdf2+0xd4>
  800e28:	8009883a 	mov	r4,r16
  800e2c:	0800eb40 	call	800eb4 <__clzsi2>
  800e30:	10c002c8 	cmpgei	r3,r2,11
  800e34:	18001b1e 	bne	r3,zero,800ea4 <__extendsfdf2+0xec>
  800e38:	010002c4 	movi	r4,11
  800e3c:	2089c83a 	sub	r4,r4,r2
  800e40:	10c00544 	addi	r3,r2,21
  800e44:	810ad83a 	srl	r5,r16,r4
  800e48:	80e0983a 	sll	r16,r16,r3
  800e4c:	00c0e244 	movi	r3,905
  800e50:	01000434 	movhi	r4,16
  800e54:	213fffc4 	addi	r4,r4,-1
  800e58:	1885c83a 	sub	r2,r3,r2
  800e5c:	2908703a 	and	r4,r5,r4
  800e60:	10c1ffcc 	andi	r3,r2,2047
  800e64:	003fe406 	br	800df8 <__extendsfdf2+0x40>
  800e68:	80000b26 	beq	r16,zero,800e98 <__extendsfdf2+0xe0>
  800e6c:	800ad0fa 	srli	r5,r16,3
  800e70:	00800434 	movhi	r2,16
  800e74:	10bfffc4 	addi	r2,r2,-1
  800e78:	29000234 	orhi	r4,r5,8
  800e7c:	8020977a 	slli	r16,r16,29
  800e80:	2088703a 	and	r4,r4,r2
  800e84:	00c1ffc4 	movi	r3,2047
  800e88:	003fdb06 	br	800df8 <__extendsfdf2+0x40>
  800e8c:	0007883a 	mov	r3,zero
  800e90:	0009883a 	mov	r4,zero
  800e94:	003fd806 	br	800df8 <__extendsfdf2+0x40>
  800e98:	00c1ffc4 	movi	r3,2047
  800e9c:	0009883a 	mov	r4,zero
  800ea0:	003fd506 	br	800df8 <__extendsfdf2+0x40>
  800ea4:	113ffd44 	addi	r4,r2,-11
  800ea8:	810a983a 	sll	r5,r16,r4
  800eac:	0021883a 	mov	r16,zero
  800eb0:	003fe606 	br	800e4c <__extendsfdf2+0x94>

00800eb4 <__clzsi2>:
  800eb4:	00bfffd4 	movui	r2,65535
  800eb8:	11000436 	bltu	r2,r4,800ecc <__clzsi2+0x18>
  800ebc:	20804030 	cmpltui	r2,r4,256
  800ec0:	10000e26 	beq	r2,zero,800efc <__clzsi2+0x48>
  800ec4:	01400804 	movi	r5,32
  800ec8:	00000406 	br	800edc <__clzsi2+0x28>
  800ecc:	00804034 	movhi	r2,256
  800ed0:	20800736 	bltu	r4,r2,800ef0 <__clzsi2+0x3c>
  800ed4:	2008d63a 	srli	r4,r4,24
  800ed8:	01400204 	movi	r5,8
  800edc:	00c02074 	movhi	r3,129
  800ee0:	20c7883a 	add	r3,r4,r3
  800ee4:	18816003 	ldbu	r2,1408(r3)
  800ee8:	2885c83a 	sub	r2,r5,r2
  800eec:	f800283a 	ret
  800ef0:	2008d43a 	srli	r4,r4,16
  800ef4:	01400404 	movi	r5,16
  800ef8:	003ff806 	br	800edc <__clzsi2+0x28>
  800efc:	2008d23a 	srli	r4,r4,8
  800f00:	01400604 	movi	r5,24
  800f04:	003ff506 	br	800edc <__clzsi2+0x28>

00800f08 <__mulsi3>:
  800f08:	0005883a 	mov	r2,zero
  800f0c:	20000726 	beq	r4,zero,800f2c <__mulsi3+0x24>
  800f10:	20c0004c 	andi	r3,r4,1
  800f14:	2008d07a 	srli	r4,r4,1
  800f18:	18000126 	beq	r3,zero,800f20 <__mulsi3+0x18>
  800f1c:	1145883a 	add	r2,r2,r5
  800f20:	294b883a 	add	r5,r5,r5
  800f24:	203ffa1e 	bne	r4,zero,800f10 <__mulsi3+0x8>
  800f28:	f800283a 	ret
  800f2c:	f800283a 	ret

00800f30 <_printf_r>:
  800f30:	defffd04 	addi	sp,sp,-12
  800f34:	2805883a 	mov	r2,r5
  800f38:	dfc00015 	stw	ra,0(sp)
  800f3c:	d9800115 	stw	r6,4(sp)
  800f40:	d9c00215 	stw	r7,8(sp)
  800f44:	21400217 	ldw	r5,8(r4)
  800f48:	d9c00104 	addi	r7,sp,4
  800f4c:	100d883a 	mov	r6,r2
  800f50:	080110c0 	call	80110c <___vfprintf_internal_r>
  800f54:	dfc00017 	ldw	ra,0(sp)
  800f58:	dec00304 	addi	sp,sp,12
  800f5c:	f800283a 	ret

00800f60 <printf>:
  800f60:	defffc04 	addi	sp,sp,-16
  800f64:	dfc00015 	stw	ra,0(sp)
  800f68:	d9400115 	stw	r5,4(sp)
  800f6c:	d9800215 	stw	r6,8(sp)
  800f70:	d9c00315 	stw	r7,12(sp)
  800f74:	00802074 	movhi	r2,129
  800f78:	1089dc17 	ldw	r2,10096(r2)
  800f7c:	200b883a 	mov	r5,r4
  800f80:	d9800104 	addi	r6,sp,4
  800f84:	11000217 	ldw	r4,8(r2)
  800f88:	08031f80 	call	8031f8 <__vfprintf_internal>
  800f8c:	dfc00017 	ldw	ra,0(sp)
  800f90:	dec00404 	addi	sp,sp,16
  800f94:	f800283a 	ret

00800f98 <_puts_r>:
  800f98:	defff504 	addi	sp,sp,-44
  800f9c:	dc000815 	stw	r16,32(sp)
  800fa0:	2021883a 	mov	r16,r4
  800fa4:	2809883a 	mov	r4,r5
  800fa8:	dc400915 	stw	r17,36(sp)
  800fac:	dfc00a15 	stw	ra,40(sp)
  800fb0:	2823883a 	mov	r17,r5
  800fb4:	08010740 	call	801074 <strlen>
  800fb8:	11000044 	addi	r4,r2,1
  800fbc:	d8800515 	stw	r2,20(sp)
  800fc0:	00800044 	movi	r2,1
  800fc4:	00c02074 	movhi	r3,129
  800fc8:	d8800715 	stw	r2,28(sp)
  800fcc:	d8800404 	addi	r2,sp,16
  800fd0:	18c15004 	addi	r3,r3,1344
  800fd4:	d8800115 	stw	r2,4(sp)
  800fd8:	00800084 	movi	r2,2
  800fdc:	dc400415 	stw	r17,16(sp)
  800fe0:	d8c00615 	stw	r3,24(sp)
  800fe4:	d9000315 	stw	r4,12(sp)
  800fe8:	d8800215 	stw	r2,8(sp)
  800fec:	81400217 	ldw	r5,8(r16)
  800ff0:	80000226 	beq	r16,zero,800ffc <_puts_r+0x64>
  800ff4:	80800e17 	ldw	r2,56(r16)
  800ff8:	10001326 	beq	r2,zero,801048 <_puts_r+0xb0>
  800ffc:	2880030b 	ldhu	r2,12(r5)
  801000:	10c8000c 	andi	r3,r2,8192
  801004:	1800061e 	bne	r3,zero,801020 <_puts_r+0x88>
  801008:	28c01917 	ldw	r3,100(r5)
  80100c:	0137ffc4 	movi	r4,-8193
  801010:	10880014 	ori	r2,r2,8192
  801014:	1906703a 	and	r3,r3,r4
  801018:	2880030d 	sth	r2,12(r5)
  80101c:	28c01915 	stw	r3,100(r5)
  801020:	d9800104 	addi	r6,sp,4
  801024:	8009883a 	mov	r4,r16
  801028:	08057bc0 	call	8057bc <__sfvwrite_r>
  80102c:	10000b1e 	bne	r2,zero,80105c <_puts_r+0xc4>
  801030:	00800284 	movi	r2,10
  801034:	dfc00a17 	ldw	ra,40(sp)
  801038:	dc400917 	ldw	r17,36(sp)
  80103c:	dc000817 	ldw	r16,32(sp)
  801040:	dec00b04 	addi	sp,sp,44
  801044:	f800283a 	ret
  801048:	8009883a 	mov	r4,r16
  80104c:	d9400015 	stw	r5,0(sp)
  801050:	080535c0 	call	80535c <__sinit>
  801054:	d9400017 	ldw	r5,0(sp)
  801058:	003fe806 	br	800ffc <_puts_r+0x64>
  80105c:	00bfffc4 	movi	r2,-1
  801060:	003ff406 	br	801034 <_puts_r+0x9c>

00801064 <puts>:
  801064:	00802074 	movhi	r2,129
  801068:	200b883a 	mov	r5,r4
  80106c:	1109dc17 	ldw	r4,10096(r2)
  801070:	0800f981 	jmpi	800f98 <_puts_r>

00801074 <strlen>:
  801074:	208000cc 	andi	r2,r4,3
  801078:	10000926 	beq	r2,zero,8010a0 <strlen+0x2c>
  80107c:	2005883a 	mov	r2,r4
  801080:	00000306 	br	801090 <strlen+0x1c>
  801084:	10800044 	addi	r2,r2,1
  801088:	10c000cc 	andi	r3,r2,3
  80108c:	18000526 	beq	r3,zero,8010a4 <strlen+0x30>
  801090:	10c00007 	ldb	r3,0(r2)
  801094:	183ffb1e 	bne	r3,zero,801084 <strlen+0x10>
  801098:	1105c83a 	sub	r2,r2,r4
  80109c:	f800283a 	ret
  8010a0:	2005883a 	mov	r2,r4
  8010a4:	11400017 	ldw	r5,0(r2)
  8010a8:	01ffbff4 	movhi	r7,65279
  8010ac:	39ffbfc4 	addi	r7,r7,-257
  8010b0:	29c7883a 	add	r3,r5,r7
  8010b4:	01a02074 	movhi	r6,32897
  8010b8:	014a303a 	nor	r5,zero,r5
  8010bc:	1946703a 	and	r3,r3,r5
  8010c0:	31a02004 	addi	r6,r6,-32640
  8010c4:	1986703a 	and	r3,r3,r6
  8010c8:	1800071e 	bne	r3,zero,8010e8 <strlen+0x74>
  8010cc:	11400117 	ldw	r5,4(r2)
  8010d0:	10800104 	addi	r2,r2,4
  8010d4:	29c7883a 	add	r3,r5,r7
  8010d8:	014a303a 	nor	r5,zero,r5
  8010dc:	1946703a 	and	r3,r3,r5
  8010e0:	1986703a 	and	r3,r3,r6
  8010e4:	183ff926 	beq	r3,zero,8010cc <strlen+0x58>
  8010e8:	10c00007 	ldb	r3,0(r2)
  8010ec:	183fea26 	beq	r3,zero,801098 <strlen+0x24>
  8010f0:	10c00047 	ldb	r3,1(r2)
  8010f4:	10800044 	addi	r2,r2,1
  8010f8:	183fe726 	beq	r3,zero,801098 <strlen+0x24>
  8010fc:	10c00047 	ldb	r3,1(r2)
  801100:	10800044 	addi	r2,r2,1
  801104:	183ffa1e 	bne	r3,zero,8010f0 <strlen+0x7c>
  801108:	003fe306 	br	801098 <strlen+0x24>

0080110c <___vfprintf_internal_r>:
  80110c:	deffbf04 	addi	sp,sp,-260
  801110:	dfc04015 	stw	ra,256(sp)
  801114:	dd803d15 	stw	r22,244(sp)
  801118:	dcc03a15 	stw	r19,232(sp)
  80111c:	dc803915 	stw	r18,228(sp)
  801120:	2027883a 	mov	r19,r4
  801124:	2825883a 	mov	r18,r5
  801128:	302d883a 	mov	r22,r6
  80112c:	d9c00615 	stw	r7,24(sp)
  801130:	df003f15 	stw	fp,252(sp)
  801134:	ddc03e15 	stw	r23,248(sp)
  801138:	dd403c15 	stw	r21,240(sp)
  80113c:	dd003b15 	stw	r20,236(sp)
  801140:	dc403815 	stw	r17,224(sp)
  801144:	dc003715 	stw	r16,220(sp)
  801148:	0805dd00 	call	805dd0 <_localeconv_r>
  80114c:	10800017 	ldw	r2,0(r2)
  801150:	1009883a 	mov	r4,r2
  801154:	d8800d15 	stw	r2,52(sp)
  801158:	08010740 	call	801074 <strlen>
  80115c:	d8800b15 	stw	r2,44(sp)
  801160:	98000226 	beq	r19,zero,80116c <___vfprintf_internal_r+0x60>
  801164:	98800e17 	ldw	r2,56(r19)
  801168:	1001d726 	beq	r2,zero,8018c8 <___vfprintf_internal_r+0x7bc>
  80116c:	9080030b 	ldhu	r2,12(r18)
  801170:	10c8000c 	andi	r3,r2,8192
  801174:	1800061e 	bne	r3,zero,801190 <___vfprintf_internal_r+0x84>
  801178:	90c01917 	ldw	r3,100(r18)
  80117c:	0137ffc4 	movi	r4,-8193
  801180:	10880014 	ori	r2,r2,8192
  801184:	1906703a 	and	r3,r3,r4
  801188:	9080030d 	sth	r2,12(r18)
  80118c:	90c01915 	stw	r3,100(r18)
  801190:	10c0020c 	andi	r3,r2,8
  801194:	1800fc26 	beq	r3,zero,801588 <___vfprintf_internal_r+0x47c>
  801198:	90c00417 	ldw	r3,16(r18)
  80119c:	1800fa26 	beq	r3,zero,801588 <___vfprintf_internal_r+0x47c>
  8011a0:	1080068c 	andi	r2,r2,26
  8011a4:	10800298 	cmpnei	r2,r2,10
  8011a8:	1000ff26 	beq	r2,zero,8015a8 <___vfprintf_internal_r+0x49c>
  8011ac:	d8802704 	addi	r2,sp,156
  8011b0:	b02f883a 	mov	r23,r22
  8011b4:	d8801a15 	stw	r2,104(sp)
  8011b8:	d8001c15 	stw	zero,112(sp)
  8011bc:	d8001b15 	stw	zero,108(sp)
  8011c0:	d8000815 	stw	zero,32(sp)
  8011c4:	d8000915 	stw	zero,36(sp)
  8011c8:	d8000a15 	stw	zero,40(sp)
  8011cc:	d8000c15 	stw	zero,48(sp)
  8011d0:	d8001015 	stw	zero,64(sp)
  8011d4:	d8000515 	stw	zero,20(sp)
  8011d8:	102d883a 	mov	r22,r2
  8011dc:	b8800007 	ldb	r2,0(r23)
  8011e0:	1000d726 	beq	r2,zero,801540 <___vfprintf_internal_r+0x434>
  8011e4:	b821883a 	mov	r16,r23
  8011e8:	00000306 	br	8011f8 <___vfprintf_internal_r+0xec>
  8011ec:	80800047 	ldb	r2,1(r16)
  8011f0:	84000044 	addi	r16,r16,1
  8011f4:	10011926 	beq	r2,zero,80165c <___vfprintf_internal_r+0x550>
  8011f8:	10800958 	cmpnei	r2,r2,37
  8011fc:	103ffb1e 	bne	r2,zero,8011ec <___vfprintf_internal_r+0xe0>
  801200:	85e3c83a 	sub	r17,r16,r23
  801204:	85c1171e 	bne	r16,r23,801664 <___vfprintf_internal_r+0x558>
  801208:	80800003 	ldbu	r2,0(r16)
  80120c:	10803fcc 	andi	r2,r2,255
  801210:	1080201c 	xori	r2,r2,128
  801214:	10bfe004 	addi	r2,r2,-128
  801218:	1000c926 	beq	r2,zero,801540 <___vfprintf_internal_r+0x434>
  80121c:	82c00047 	ldb	r11,1(r16)
  801220:	85c00044 	addi	r23,r16,1
  801224:	d8001345 	stb	zero,77(sp)
  801228:	0009883a 	mov	r4,zero
  80122c:	000b883a 	mov	r5,zero
  801230:	023fffc4 	movi	r8,-1
  801234:	0021883a 	mov	r16,zero
  801238:	0019883a 	mov	r12,zero
  80123c:	bdc00044 	addi	r23,r23,1
  801240:	5839883a 	mov	fp,r11
  801244:	e0bff804 	addi	r2,fp,-32
  801248:	10c01668 	cmpgeui	r3,r2,89
  80124c:	18006c1e 	bne	r3,zero,801400 <___vfprintf_internal_r+0x2f4>
  801250:	100490ba 	slli	r2,r2,2
  801254:	00c02034 	movhi	r3,128
  801258:	10c7883a 	add	r3,r2,r3
  80125c:	18849917 	ldw	r2,4708(r3)
  801260:	1000683a 	jmp	r2
  801264:	00801c50 	cmplti	r2,zero,113
  801268:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  80126c:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  801270:	00801c44 	movi	r2,113
  801274:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  801278:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  80127c:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  801280:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  801284:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  801288:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  80128c:	00801c1c 	xori	r2,zero,112
  801290:	00801c0c 	andi	r2,zero,112
  801294:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  801298:	00801bf4 	movhi	r2,111
  80129c:	00801ba8 	cmpgeui	r2,zero,110
  8012a0:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  8012a4:	00801b9c 	xori	r2,zero,110
  8012a8:	008013c8 	cmpgei	r2,zero,79
  8012ac:	008013c8 	cmpgei	r2,zero,79
  8012b0:	008013c8 	cmpgei	r2,zero,79
  8012b4:	008013c8 	cmpgei	r2,zero,79
  8012b8:	008013c8 	cmpgei	r2,zero,79
  8012bc:	008013c8 	cmpgei	r2,zero,79
  8012c0:	008013c8 	cmpgei	r2,zero,79
  8012c4:	008013c8 	cmpgei	r2,zero,79
  8012c8:	008013c8 	cmpgei	r2,zero,79
  8012cc:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  8012d0:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  8012d4:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  8012d8:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  8012dc:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  8012e0:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  8012e4:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  8012e8:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  8012ec:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  8012f0:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  8012f4:	00801a90 	cmplti	r2,zero,106
  8012f8:	008016c0 	call	8016c <__alt_mem_sdram-0x77fe94>
  8012fc:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  801300:	008016c0 	call	8016c <__alt_mem_sdram-0x77fe94>
  801304:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  801308:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  80130c:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  801310:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  801314:	00801c7c 	xorhi	r2,zero,113
  801318:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  80131c:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  801320:	008015f4 	movhi	r2,87
  801324:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  801328:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  80132c:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  801330:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  801334:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  801338:	008015cc 	andi	r2,zero,87
  80133c:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  801340:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  801344:	00801cb0 	cmpltui	r2,zero,114
  801348:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  80134c:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  801350:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  801354:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  801358:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  80135c:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  801360:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  801364:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  801368:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  80136c:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  801370:	00801c88 	cmpgei	r2,zero,114
  801374:	008018d4 	movui	r2,99
  801378:	008016c0 	call	8016c <__alt_mem_sdram-0x77fe94>
  80137c:	008016c0 	call	8016c <__alt_mem_sdram-0x77fe94>
  801380:	008016c0 	call	8016c <__alt_mem_sdram-0x77fe94>
  801384:	00801948 	cmpgei	r2,zero,101
  801388:	008018d4 	movui	r2,99
  80138c:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  801390:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  801394:	00801a7c 	xorhi	r2,zero,105
  801398:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  80139c:	00801a40 	call	801a4 <__alt_mem_sdram-0x77fe5c>
  8013a0:	008015f8 	rdprs	r2,zero,87
  8013a4:	00801a00 	call	801a0 <__alt_mem_sdram-0x77fe60>
  8013a8:	008019f4 	movhi	r2,103
  8013ac:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  8013b0:	0080199c 	xori	r2,zero,102
  8013b4:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  8013b8:	008015d0 	cmplti	r2,zero,87
  8013bc:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  8013c0:	00801400 	call	80140 <__alt_mem_sdram-0x77fec0>
  8013c4:	00801954 	movui	r2,101
  8013c8:	0021883a 	mov	r16,zero
  8013cc:	e0fff404 	addi	r3,fp,-48
  8013d0:	800490ba 	slli	r2,r16,2
  8013d4:	bf000007 	ldb	fp,0(r23)
  8013d8:	bdc00044 	addi	r23,r23,1
  8013dc:	1421883a 	add	r16,r2,r16
  8013e0:	8421883a 	add	r16,r16,r16
  8013e4:	1c21883a 	add	r16,r3,r16
  8013e8:	e0fff404 	addi	r3,fp,-48
  8013ec:	188002b0 	cmpltui	r2,r3,10
  8013f0:	103ff71e 	bne	r2,zero,8013d0 <___vfprintf_internal_r+0x2c4>
  8013f4:	e0bff804 	addi	r2,fp,-32
  8013f8:	10c01668 	cmpgeui	r3,r2,89
  8013fc:	183f9426 	beq	r3,zero,801250 <___vfprintf_internal_r+0x144>
  801400:	21003fcc 	andi	r4,r4,255
  801404:	20068f1e 	bne	r4,zero,802e44 <___vfprintf_internal_r+0x1d38>
  801408:	e0004d26 	beq	fp,zero,801540 <___vfprintf_internal_r+0x434>
  80140c:	df001d05 	stb	fp,116(sp)
  801410:	d8001345 	stb	zero,77(sp)
  801414:	05000044 	movi	r20,1
  801418:	05400044 	movi	r21,1
  80141c:	dc401d04 	addi	r17,sp,116
  801420:	db000415 	stw	r12,16(sp)
  801424:	0011883a 	mov	r8,zero
  801428:	d8000715 	stw	zero,28(sp)
  80142c:	d8800417 	ldw	r2,16(sp)
  801430:	1380008c 	andi	r14,r2,2
  801434:	70000126 	beq	r14,zero,80143c <___vfprintf_internal_r+0x330>
  801438:	a5000084 	addi	r20,r20,2
  80143c:	d8800417 	ldw	r2,16(sp)
  801440:	d8c01c17 	ldw	r3,112(sp)
  801444:	1340210c 	andi	r13,r2,132
  801448:	6800021e 	bne	r13,zero,801454 <___vfprintf_internal_r+0x348>
  80144c:	850fc83a 	sub	r7,r16,r20
  801450:	01c36016 	blt	zero,r7,8021d4 <___vfprintf_internal_r+0x10c8>
  801454:	d8801347 	ldb	r2,77(sp)
  801458:	10000c26 	beq	r2,zero,80148c <___vfprintf_internal_r+0x380>
  80145c:	d8801b17 	ldw	r2,108(sp)
  801460:	d9001344 	addi	r4,sp,77
  801464:	18c00044 	addi	r3,r3,1
  801468:	10800044 	addi	r2,r2,1
  80146c:	b1000015 	stw	r4,0(r22)
  801470:	01000044 	movi	r4,1
  801474:	d8801b15 	stw	r2,108(sp)
  801478:	b1000115 	stw	r4,4(r22)
  80147c:	d8c01c15 	stw	r3,112(sp)
  801480:	10800208 	cmpgei	r2,r2,8
  801484:	1003a01e 	bne	r2,zero,802308 <___vfprintf_internal_r+0x11fc>
  801488:	b5800204 	addi	r22,r22,8
  80148c:	70000c26 	beq	r14,zero,8014c0 <___vfprintf_internal_r+0x3b4>
  801490:	d8801b17 	ldw	r2,108(sp)
  801494:	d9001384 	addi	r4,sp,78
  801498:	18c00084 	addi	r3,r3,2
  80149c:	10800044 	addi	r2,r2,1
  8014a0:	b1000015 	stw	r4,0(r22)
  8014a4:	01000084 	movi	r4,2
  8014a8:	d8801b15 	stw	r2,108(sp)
  8014ac:	b1000115 	stw	r4,4(r22)
  8014b0:	d8c01c15 	stw	r3,112(sp)
  8014b4:	10800208 	cmpgei	r2,r2,8
  8014b8:	1003871e 	bne	r2,zero,8022d8 <___vfprintf_internal_r+0x11cc>
  8014bc:	b5800204 	addi	r22,r22,8
  8014c0:	6b402018 	cmpnei	r13,r13,128
  8014c4:	68025226 	beq	r13,zero,801e10 <___vfprintf_internal_r+0xd04>
  8014c8:	4551c83a 	sub	r8,r8,r21
  8014cc:	02028a16 	blt	zero,r8,801ef8 <___vfprintf_internal_r+0xdec>
  8014d0:	d8800417 	ldw	r2,16(sp)
  8014d4:	1080400c 	andi	r2,r2,256
  8014d8:	1002071e 	bne	r2,zero,801cf8 <___vfprintf_internal_r+0xbec>
  8014dc:	d8801b17 	ldw	r2,108(sp)
  8014e0:	1d47883a 	add	r3,r3,r21
  8014e4:	b4400015 	stw	r17,0(r22)
  8014e8:	10800044 	addi	r2,r2,1
  8014ec:	b5400115 	stw	r21,4(r22)
  8014f0:	d8801b15 	stw	r2,108(sp)
  8014f4:	d8c01c15 	stw	r3,112(sp)
  8014f8:	10800208 	cmpgei	r2,r2,8
  8014fc:	1002ee1e 	bne	r2,zero,8020b8 <___vfprintf_internal_r+0xfac>
  801500:	b5800204 	addi	r22,r22,8
  801504:	d8800417 	ldw	r2,16(sp)
  801508:	1440010c 	andi	r17,r2,4
  80150c:	88000226 	beq	r17,zero,801518 <___vfprintf_internal_r+0x40c>
  801510:	8523c83a 	sub	r17,r16,r20
  801514:	0440bd16 	blt	zero,r17,80180c <___vfprintf_internal_r+0x700>
  801518:	8500010e 	bge	r16,r20,801520 <___vfprintf_internal_r+0x414>
  80151c:	a021883a 	mov	r16,r20
  801520:	d8800517 	ldw	r2,20(sp)
  801524:	1405883a 	add	r2,r2,r16
  801528:	d8800515 	stw	r2,20(sp)
  80152c:	1802b91e 	bne	r3,zero,802014 <___vfprintf_internal_r+0xf08>
  801530:	b8800007 	ldb	r2,0(r23)
  801534:	d8001b15 	stw	zero,108(sp)
  801538:	dd802704 	addi	r22,sp,156
  80153c:	103f291e 	bne	r2,zero,8011e4 <___vfprintf_internal_r+0xd8>
  801540:	d8801c17 	ldw	r2,112(sp)
  801544:	10063a1e 	bne	r2,zero,802e30 <___vfprintf_internal_r+0x1d24>
  801548:	9080030b 	ldhu	r2,12(r18)
  80154c:	1080100c 	andi	r2,r2,64
  801550:	1006c91e 	bne	r2,zero,803078 <___vfprintf_internal_r+0x1f6c>
  801554:	d8800517 	ldw	r2,20(sp)
  801558:	dfc04017 	ldw	ra,256(sp)
  80155c:	df003f17 	ldw	fp,252(sp)
  801560:	ddc03e17 	ldw	r23,248(sp)
  801564:	dd803d17 	ldw	r22,244(sp)
  801568:	dd403c17 	ldw	r21,240(sp)
  80156c:	dd003b17 	ldw	r20,236(sp)
  801570:	dcc03a17 	ldw	r19,232(sp)
  801574:	dc803917 	ldw	r18,228(sp)
  801578:	dc403817 	ldw	r17,224(sp)
  80157c:	dc003717 	ldw	r16,220(sp)
  801580:	dec04104 	addi	sp,sp,260
  801584:	f800283a 	ret
  801588:	900b883a 	mov	r5,r18
  80158c:	9809883a 	mov	r4,r19
  801590:	08032d40 	call	8032d4 <__swsetup_r>
  801594:	1006b81e 	bne	r2,zero,803078 <___vfprintf_internal_r+0x1f6c>
  801598:	9080030b 	ldhu	r2,12(r18)
  80159c:	1080068c 	andi	r2,r2,26
  8015a0:	10800298 	cmpnei	r2,r2,10
  8015a4:	103f011e 	bne	r2,zero,8011ac <___vfprintf_internal_r+0xa0>
  8015a8:	9080038f 	ldh	r2,14(r18)
  8015ac:	103eff16 	blt	r2,zero,8011ac <___vfprintf_internal_r+0xa0>
  8015b0:	d9c00617 	ldw	r7,24(sp)
  8015b4:	b00d883a 	mov	r6,r22
  8015b8:	900b883a 	mov	r5,r18
  8015bc:	9809883a 	mov	r4,r19
  8015c0:	08032140 	call	803214 <__sbprintf>
  8015c4:	d8800515 	stw	r2,20(sp)
  8015c8:	003fe206 	br	801554 <___vfprintf_internal_r+0x448>
  8015cc:	63000414 	ori	r12,r12,16
  8015d0:	6080080c 	andi	r2,r12,32
  8015d4:	10008126 	beq	r2,zero,8017dc <___vfprintf_internal_r+0x6d0>
  8015d8:	d8c00617 	ldw	r3,24(sp)
  8015dc:	00800044 	movi	r2,1
  8015e0:	1d000017 	ldw	r20,0(r3)
  8015e4:	1d400117 	ldw	r21,4(r3)
  8015e8:	18c00204 	addi	r3,r3,8
  8015ec:	d8c00615 	stw	r3,24(sp)
  8015f0:	00000906 	br	801618 <___vfprintf_internal_r+0x50c>
  8015f4:	63000414 	ori	r12,r12,16
  8015f8:	6080080c 	andi	r2,r12,32
  8015fc:	10006b26 	beq	r2,zero,8017ac <___vfprintf_internal_r+0x6a0>
  801600:	d8c00617 	ldw	r3,24(sp)
  801604:	0005883a 	mov	r2,zero
  801608:	1d000017 	ldw	r20,0(r3)
  80160c:	1d400117 	ldw	r21,4(r3)
  801610:	18c00204 	addi	r3,r3,8
  801614:	d8c00615 	stw	r3,24(sp)
  801618:	d8001345 	stb	zero,77(sp)
  80161c:	40ffffe0 	cmpeqi	r3,r8,-1
  801620:	001b883a 	mov	r13,zero
  801624:	1801351e 	bne	r3,zero,801afc <___vfprintf_internal_r+0x9f0>
  801628:	047fdfc4 	movi	r17,-129
  80162c:	6448703a 	and	r4,r12,r17
  801630:	a546b03a 	or	r3,r20,r21
  801634:	d9000415 	stw	r4,16(sp)
  801638:	1802e41e 	bne	r3,zero,8021cc <___vfprintf_internal_r+0x10c0>
  80163c:	40025f1e 	bne	r8,zero,801fbc <___vfprintf_internal_r+0xeb0>
  801640:	1003a61e 	bne	r2,zero,8024dc <___vfprintf_internal_r+0x13d0>
  801644:	6540004c 	andi	r21,r12,1
  801648:	a803d426 	beq	r21,zero,80259c <___vfprintf_internal_r+0x1490>
  80164c:	00800c04 	movi	r2,48
  801650:	d88026c5 	stb	r2,155(sp)
  801654:	dc4026c4 	addi	r17,sp,155
  801658:	00014606 	br	801b74 <___vfprintf_internal_r+0xa68>
  80165c:	85e3c83a 	sub	r17,r16,r23
  801660:	85ffb726 	beq	r16,r23,801540 <___vfprintf_internal_r+0x434>
  801664:	d8c01c17 	ldw	r3,112(sp)
  801668:	d8801b17 	ldw	r2,108(sp)
  80166c:	b5c00015 	stw	r23,0(r22)
  801670:	1c47883a 	add	r3,r3,r17
  801674:	10800044 	addi	r2,r2,1
  801678:	d8801b15 	stw	r2,108(sp)
  80167c:	b4400115 	stw	r17,4(r22)
  801680:	d8c01c15 	stw	r3,112(sp)
  801684:	10800208 	cmpgei	r2,r2,8
  801688:	1000061e 	bne	r2,zero,8016a4 <___vfprintf_internal_r+0x598>
  80168c:	b5800204 	addi	r22,r22,8
  801690:	d8c00517 	ldw	r3,20(sp)
  801694:	80800003 	ldbu	r2,0(r16)
  801698:	1c47883a 	add	r3,r3,r17
  80169c:	d8c00515 	stw	r3,20(sp)
  8016a0:	003eda06 	br	80120c <___vfprintf_internal_r+0x100>
  8016a4:	d9801a04 	addi	r6,sp,104
  8016a8:	900b883a 	mov	r5,r18
  8016ac:	9809883a 	mov	r4,r19
  8016b0:	08084b80 	call	8084b8 <__sprint_r>
  8016b4:	103fa41e 	bne	r2,zero,801548 <___vfprintf_internal_r+0x43c>
  8016b8:	dd802704 	addi	r22,sp,156
  8016bc:	003ff406 	br	801690 <___vfprintf_internal_r+0x584>
  8016c0:	21003fcc 	andi	r4,r4,255
  8016c4:	20066a1e 	bne	r4,zero,803070 <___vfprintf_internal_r+0x1f64>
  8016c8:	d8c00617 	ldw	r3,24(sp)
  8016cc:	6080020c 	andi	r2,r12,8
  8016d0:	19000204 	addi	r4,r3,8
  8016d4:	d9000e15 	stw	r4,56(sp)
  8016d8:	1003d01e 	bne	r2,zero,80261c <___vfprintf_internal_r+0x1510>
  8016dc:	d8800617 	ldw	r2,24(sp)
  8016e0:	10c00017 	ldw	r3,0(r2)
  8016e4:	10800117 	ldw	r2,4(r2)
  8016e8:	d8c00915 	stw	r3,36(sp)
  8016ec:	d8800a15 	stw	r2,40(sp)
  8016f0:	dd400a17 	ldw	r21,40(sp)
  8016f4:	dd000917 	ldw	r20,36(sp)
  8016f8:	00a00034 	movhi	r2,32768
  8016fc:	10bfffc4 	addi	r2,r2,-1
  801700:	a8a2703a 	and	r17,r21,r2
  801704:	01dffc34 	movhi	r7,32752
  801708:	01bfffc4 	movi	r6,-1
  80170c:	39ffffc4 	addi	r7,r7,-1
  801710:	a009883a 	mov	r4,r20
  801714:	880b883a 	mov	r5,r17
  801718:	da000615 	stw	r8,24(sp)
  80171c:	db000415 	stw	r12,16(sp)
  801720:	080da780 	call	80da78 <__unorddf2>
  801724:	db000417 	ldw	r12,16(sp)
  801728:	da000617 	ldw	r8,24(sp)
  80172c:	1004701e 	bne	r2,zero,8028f0 <___vfprintf_internal_r+0x17e4>
  801730:	01dffc34 	movhi	r7,32752
  801734:	01bfffc4 	movi	r6,-1
  801738:	39ffffc4 	addi	r7,r7,-1
  80173c:	a009883a 	mov	r4,r20
  801740:	880b883a 	mov	r5,r17
  801744:	080c8ac0 	call	80c8ac <__ledf2>
  801748:	db000417 	ldw	r12,16(sp)
  80174c:	da000617 	ldw	r8,24(sp)
  801750:	0084670e 	bge	zero,r2,8028f0 <___vfprintf_internal_r+0x17e4>
  801754:	000d883a 	mov	r6,zero
  801758:	000f883a 	mov	r7,zero
  80175c:	a009883a 	mov	r4,r20
  801760:	a80b883a 	mov	r5,r21
  801764:	080c8ac0 	call	80c8ac <__ledf2>
  801768:	db000417 	ldw	r12,16(sp)
  80176c:	10059d16 	blt	r2,zero,802de4 <___vfprintf_internal_r+0x1cd8>
  801770:	db401343 	ldbu	r13,77(sp)
  801774:	e0801210 	cmplti	r2,fp,72
  801778:	1005741e 	bne	r2,zero,802d4c <___vfprintf_internal_r+0x1c40>
  80177c:	04402074 	movhi	r17,129
  801780:	8c41a104 	addi	r17,r17,1668
  801784:	00bfdfc4 	movi	r2,-129
  801788:	6084703a 	and	r2,r12,r2
  80178c:	d8800415 	stw	r2,16(sp)
  801790:	d8800e17 	ldw	r2,56(sp)
  801794:	050000c4 	movi	r20,3
  801798:	054000c4 	movi	r21,3
  80179c:	d8800615 	stw	r2,24(sp)
  8017a0:	0011883a 	mov	r8,zero
  8017a4:	d8000715 	stw	zero,28(sp)
  8017a8:	0000f606 	br	801b84 <___vfprintf_internal_r+0xa78>
  8017ac:	d9000617 	ldw	r4,24(sp)
  8017b0:	6080040c 	andi	r2,r12,16
  8017b4:	20c00104 	addi	r3,r4,4
  8017b8:	1003891e 	bne	r2,zero,8025e0 <___vfprintf_internal_r+0x14d4>
  8017bc:	6080100c 	andi	r2,r12,64
  8017c0:	10056b26 	beq	r2,zero,802d70 <___vfprintf_internal_r+0x1c64>
  8017c4:	d8800617 	ldw	r2,24(sp)
  8017c8:	002b883a 	mov	r21,zero
  8017cc:	d8c00615 	stw	r3,24(sp)
  8017d0:	1500000b 	ldhu	r20,0(r2)
  8017d4:	0005883a 	mov	r2,zero
  8017d8:	003f8f06 	br	801618 <___vfprintf_internal_r+0x50c>
  8017dc:	d9000617 	ldw	r4,24(sp)
  8017e0:	6080040c 	andi	r2,r12,16
  8017e4:	20c00104 	addi	r3,r4,4
  8017e8:	1003821e 	bne	r2,zero,8025f4 <___vfprintf_internal_r+0x14e8>
  8017ec:	6080100c 	andi	r2,r12,64
  8017f0:	10056526 	beq	r2,zero,802d88 <___vfprintf_internal_r+0x1c7c>
  8017f4:	d8800617 	ldw	r2,24(sp)
  8017f8:	002b883a 	mov	r21,zero
  8017fc:	d8c00615 	stw	r3,24(sp)
  801800:	1500000b 	ldhu	r20,0(r2)
  801804:	00800044 	movi	r2,1
  801808:	003f8306 	br	801618 <___vfprintf_internal_r+0x50c>
  80180c:	03002074 	movhi	r12,129
  801810:	89000450 	cmplti	r4,r17,17
  801814:	d8801b17 	ldw	r2,108(sp)
  801818:	6301b504 	addi	r12,r12,1748
  80181c:	20001b1e 	bne	r4,zero,80188c <___vfprintf_internal_r+0x780>
  801820:	05400404 	movi	r21,16
  801824:	6039883a 	mov	fp,r12
  801828:	00000406 	br	80183c <___vfprintf_internal_r+0x730>
  80182c:	8c7ffc04 	addi	r17,r17,-16
  801830:	89000448 	cmpgei	r4,r17,17
  801834:	b5800204 	addi	r22,r22,8
  801838:	20001326 	beq	r4,zero,801888 <___vfprintf_internal_r+0x77c>
  80183c:	10800044 	addi	r2,r2,1
  801840:	18c00404 	addi	r3,r3,16
  801844:	b7000015 	stw	fp,0(r22)
  801848:	b5400115 	stw	r21,4(r22)
  80184c:	d8c01c15 	stw	r3,112(sp)
  801850:	d8801b15 	stw	r2,108(sp)
  801854:	11000208 	cmpgei	r4,r2,8
  801858:	203ff426 	beq	r4,zero,80182c <___vfprintf_internal_r+0x720>
  80185c:	d9801a04 	addi	r6,sp,104
  801860:	900b883a 	mov	r5,r18
  801864:	9809883a 	mov	r4,r19
  801868:	08084b80 	call	8084b8 <__sprint_r>
  80186c:	103f361e 	bne	r2,zero,801548 <___vfprintf_internal_r+0x43c>
  801870:	8c7ffc04 	addi	r17,r17,-16
  801874:	89000448 	cmpgei	r4,r17,17
  801878:	d8c01c17 	ldw	r3,112(sp)
  80187c:	d8801b17 	ldw	r2,108(sp)
  801880:	dd802704 	addi	r22,sp,156
  801884:	203fed1e 	bne	r4,zero,80183c <___vfprintf_internal_r+0x730>
  801888:	e019883a 	mov	r12,fp
  80188c:	10800044 	addi	r2,r2,1
  801890:	1c47883a 	add	r3,r3,r17
  801894:	d8801b15 	stw	r2,108(sp)
  801898:	b3000015 	stw	r12,0(r22)
  80189c:	b4400115 	stw	r17,4(r22)
  8018a0:	d8c01c15 	stw	r3,112(sp)
  8018a4:	10800210 	cmplti	r2,r2,8
  8018a8:	103f1b1e 	bne	r2,zero,801518 <___vfprintf_internal_r+0x40c>
  8018ac:	d9801a04 	addi	r6,sp,104
  8018b0:	900b883a 	mov	r5,r18
  8018b4:	9809883a 	mov	r4,r19
  8018b8:	08084b80 	call	8084b8 <__sprint_r>
  8018bc:	103f221e 	bne	r2,zero,801548 <___vfprintf_internal_r+0x43c>
  8018c0:	d8c01c17 	ldw	r3,112(sp)
  8018c4:	003f1406 	br	801518 <___vfprintf_internal_r+0x40c>
  8018c8:	9809883a 	mov	r4,r19
  8018cc:	080535c0 	call	80535c <__sinit>
  8018d0:	003e2606 	br	80116c <___vfprintf_internal_r+0x60>
  8018d4:	21003fcc 	andi	r4,r4,255
  8018d8:	2005db1e 	bne	r4,zero,803048 <___vfprintf_internal_r+0x1f3c>
  8018dc:	6080080c 	andi	r2,r12,32
  8018e0:	10007026 	beq	r2,zero,801aa4 <___vfprintf_internal_r+0x998>
  8018e4:	d8c00617 	ldw	r3,24(sp)
  8018e8:	18800117 	ldw	r2,4(r3)
  8018ec:	1d000017 	ldw	r20,0(r3)
  8018f0:	18c00204 	addi	r3,r3,8
  8018f4:	d8c00615 	stw	r3,24(sp)
  8018f8:	102b883a 	mov	r21,r2
  8018fc:	10007516 	blt	r2,zero,801ad4 <___vfprintf_internal_r+0x9c8>
  801900:	40bfffd8 	cmpnei	r2,r8,-1
  801904:	10034a26 	beq	r2,zero,802630 <___vfprintf_internal_r+0x1524>
  801908:	047fdfc4 	movi	r17,-129
  80190c:	6446703a 	and	r3,r12,r17
  801910:	a544b03a 	or	r2,r20,r21
  801914:	d8c00415 	stw	r3,16(sp)
  801918:	db401343 	ldbu	r13,77(sp)
  80191c:	1002ee26 	beq	r2,zero,8024d8 <___vfprintf_internal_r+0x13cc>
  801920:	db000417 	ldw	r12,16(sp)
  801924:	a803441e 	bne	r21,zero,802638 <___vfprintf_internal_r+0x152c>
  801928:	a08002a8 	cmpgeui	r2,r20,10
  80192c:	1003421e 	bne	r2,zero,802638 <___vfprintf_internal_r+0x152c>
  801930:	a5000c04 	addi	r20,r20,48
  801934:	dd0026c5 	stb	r20,155(sp)
  801938:	db000415 	stw	r12,16(sp)
  80193c:	05400044 	movi	r21,1
  801940:	dc4026c4 	addi	r17,sp,155
  801944:	00008b06 	br	801b74 <___vfprintf_internal_r+0xa68>
  801948:	bac00007 	ldb	r11,0(r23)
  80194c:	63001014 	ori	r12,r12,64
  801950:	003e3a06 	br	80123c <___vfprintf_internal_r+0x130>
  801954:	21003fcc 	andi	r4,r4,255
  801958:	2005c11e 	bne	r4,zero,803060 <___vfprintf_internal_r+0x1f54>
  80195c:	00802074 	movhi	r2,129
  801960:	1081a904 	addi	r2,r2,1700
  801964:	d8800c15 	stw	r2,48(sp)
  801968:	6080080c 	andi	r2,r12,32
  80196c:	1000d726 	beq	r2,zero,801ccc <___vfprintf_internal_r+0xbc0>
  801970:	d8800617 	ldw	r2,24(sp)
  801974:	15000017 	ldw	r20,0(r2)
  801978:	15400117 	ldw	r21,4(r2)
  80197c:	10800204 	addi	r2,r2,8
  801980:	d8800615 	stw	r2,24(sp)
  801984:	6080004c 	andi	r2,r12,1
  801988:	10000226 	beq	r2,zero,801994 <___vfprintf_internal_r+0x888>
  80198c:	a544b03a 	or	r2,r20,r21
  801990:	1003091e 	bne	r2,zero,8025b8 <___vfprintf_internal_r+0x14ac>
  801994:	00800084 	movi	r2,2
  801998:	003f1f06 	br	801618 <___vfprintf_internal_r+0x50c>
  80199c:	d8800617 	ldw	r2,24(sp)
  8019a0:	d8001345 	stb	zero,77(sp)
  8019a4:	14400017 	ldw	r17,0(r2)
  8019a8:	10c00104 	addi	r3,r2,4
  8019ac:	88037726 	beq	r17,zero,80278c <___vfprintf_internal_r+0x1680>
  8019b0:	40bfffe0 	cmpeqi	r2,r8,-1
  8019b4:	1004661e 	bne	r2,zero,802b50 <___vfprintf_internal_r+0x1a44>
  8019b8:	400d883a 	mov	r6,r8
  8019bc:	000b883a 	mov	r5,zero
  8019c0:	8809883a 	mov	r4,r17
  8019c4:	d8c00715 	stw	r3,28(sp)
  8019c8:	db000615 	stw	r12,24(sp)
  8019cc:	da000415 	stw	r8,16(sp)
  8019d0:	08067a00 	call	8067a0 <memchr>
  8019d4:	da000417 	ldw	r8,16(sp)
  8019d8:	db000617 	ldw	r12,24(sp)
  8019dc:	d8c00717 	ldw	r3,28(sp)
  8019e0:	10058926 	beq	r2,zero,803008 <___vfprintf_internal_r+0x1efc>
  8019e4:	146bc83a 	sub	r21,r2,r17
  8019e8:	a829883a 	mov	r20,r21
  8019ec:	d8c00615 	stw	r3,24(sp)
  8019f0:	003e8b06 	br	801420 <___vfprintf_internal_r+0x314>
  8019f4:	bac00007 	ldb	r11,0(r23)
  8019f8:	63000814 	ori	r12,r12,32
  8019fc:	003e0f06 	br	80123c <___vfprintf_internal_r+0x130>
  801a00:	d8c00617 	ldw	r3,24(sp)
  801a04:	00800c04 	movi	r2,48
  801a08:	d8801385 	stb	r2,78(sp)
  801a0c:	00801e04 	movi	r2,120
  801a10:	01002074 	movhi	r4,129
  801a14:	d88013c5 	stb	r2,79(sp)
  801a18:	18800104 	addi	r2,r3,4
  801a1c:	d8800615 	stw	r2,24(sp)
  801a20:	2081a904 	addi	r2,r4,1700
  801a24:	d8800c15 	stw	r2,48(sp)
  801a28:	1d000017 	ldw	r20,0(r3)
  801a2c:	002b883a 	mov	r21,zero
  801a30:	63000094 	ori	r12,r12,2
  801a34:	00800084 	movi	r2,2
  801a38:	07001e04 	movi	fp,120
  801a3c:	003ef606 	br	801618 <___vfprintf_internal_r+0x50c>
  801a40:	21003fcc 	andi	r4,r4,255
  801a44:	2005881e 	bne	r4,zero,803068 <___vfprintf_internal_r+0x1f5c>
  801a48:	d9000617 	ldw	r4,24(sp)
  801a4c:	6080080c 	andi	r2,r12,32
  801a50:	20c00017 	ldw	r3,0(r4)
  801a54:	21000104 	addi	r4,r4,4
  801a58:	d9000615 	stw	r4,24(sp)
  801a5c:	1002d11e 	bne	r2,zero,8025a4 <___vfprintf_internal_r+0x1498>
  801a60:	6080040c 	andi	r2,r12,16
  801a64:	10036f1e 	bne	r2,zero,802824 <___vfprintf_internal_r+0x1718>
  801a68:	6300100c 	andi	r12,r12,64
  801a6c:	60036d26 	beq	r12,zero,802824 <___vfprintf_internal_r+0x1718>
  801a70:	d8800517 	ldw	r2,20(sp)
  801a74:	1880000d 	sth	r2,0(r3)
  801a78:	003dd806 	br	8011dc <___vfprintf_internal_r+0xd0>
  801a7c:	bac00007 	ldb	r11,0(r23)
  801a80:	58801b18 	cmpnei	r2,r11,108
  801a84:	10033026 	beq	r2,zero,802748 <___vfprintf_internal_r+0x163c>
  801a88:	63000414 	ori	r12,r12,16
  801a8c:	003deb06 	br	80123c <___vfprintf_internal_r+0x130>
  801a90:	21003fcc 	andi	r4,r4,255
  801a94:	2005701e 	bne	r4,zero,803058 <___vfprintf_internal_r+0x1f4c>
  801a98:	63000414 	ori	r12,r12,16
  801a9c:	6080080c 	andi	r2,r12,32
  801aa0:	103f901e 	bne	r2,zero,8018e4 <___vfprintf_internal_r+0x7d8>
  801aa4:	d9000617 	ldw	r4,24(sp)
  801aa8:	6080040c 	andi	r2,r12,16
  801aac:	20c00104 	addi	r3,r4,4
  801ab0:	1002d51e 	bne	r2,zero,802608 <___vfprintf_internal_r+0x14fc>
  801ab4:	6080100c 	andi	r2,r12,64
  801ab8:	1004a726 	beq	r2,zero,802d58 <___vfprintf_internal_r+0x1c4c>
  801abc:	d8800617 	ldw	r2,24(sp)
  801ac0:	d8c00615 	stw	r3,24(sp)
  801ac4:	1500000f 	ldh	r20,0(r2)
  801ac8:	a02bd7fa 	srai	r21,r20,31
  801acc:	a805883a 	mov	r2,r21
  801ad0:	103f8b0e 	bge	r2,zero,801900 <___vfprintf_internal_r+0x7f4>
  801ad4:	a004c03a 	cmpne	r2,r20,zero
  801ad8:	056bc83a 	sub	r21,zero,r21
  801adc:	a8abc83a 	sub	r21,r21,r2
  801ae0:	00800b44 	movi	r2,45
  801ae4:	d8801345 	stb	r2,77(sp)
  801ae8:	40ffffe0 	cmpeqi	r3,r8,-1
  801aec:	0529c83a 	sub	r20,zero,r20
  801af0:	03400b44 	movi	r13,45
  801af4:	00800044 	movi	r2,1
  801af8:	183ecb26 	beq	r3,zero,801628 <___vfprintf_internal_r+0x51c>
  801afc:	10c00060 	cmpeqi	r3,r2,1
  801b00:	183f881e 	bne	r3,zero,801924 <___vfprintf_internal_r+0x818>
  801b04:	108000a0 	cmpeqi	r2,r2,2
  801b08:	1001311e 	bne	r2,zero,801fd0 <___vfprintf_internal_r+0xec4>
  801b0c:	dc402704 	addi	r17,sp,156
  801b10:	a004d0fa 	srli	r2,r20,3
  801b14:	a806977a 	slli	r3,r21,29
  801b18:	a82ad0fa 	srli	r21,r21,3
  801b1c:	a50001cc 	andi	r20,r20,7
  801b20:	a1000c04 	addi	r4,r20,48
  801b24:	18a8b03a 	or	r20,r3,r2
  801b28:	893fffc5 	stb	r4,-1(r17)
  801b2c:	a544b03a 	or	r2,r20,r21
  801b30:	880b883a 	mov	r5,r17
  801b34:	8c7fffc4 	addi	r17,r17,-1
  801b38:	103ff51e 	bne	r2,zero,801b10 <___vfprintf_internal_r+0xa04>
  801b3c:	6080004c 	andi	r2,r12,1
  801b40:	10013026 	beq	r2,zero,802004 <___vfprintf_internal_r+0xef8>
  801b44:	21003fcc 	andi	r4,r4,255
  801b48:	2100201c 	xori	r4,r4,128
  801b4c:	213fe004 	addi	r4,r4,-128
  801b50:	20800c18 	cmpnei	r2,r4,48
  801b54:	10012b26 	beq	r2,zero,802004 <___vfprintf_internal_r+0xef8>
  801b58:	00800c04 	movi	r2,48
  801b5c:	297fff84 	addi	r5,r5,-2
  801b60:	88bfffc5 	stb	r2,-1(r17)
  801b64:	d8802704 	addi	r2,sp,156
  801b68:	116bc83a 	sub	r21,r2,r5
  801b6c:	db000415 	stw	r12,16(sp)
  801b70:	2823883a 	mov	r17,r5
  801b74:	4029883a 	mov	r20,r8
  801b78:	4540010e 	bge	r8,r21,801b80 <___vfprintf_internal_r+0xa74>
  801b7c:	a829883a 	mov	r20,r21
  801b80:	d8000715 	stw	zero,28(sp)
  801b84:	6b403fcc 	andi	r13,r13,255
  801b88:	6b40201c 	xori	r13,r13,128
  801b8c:	6b7fe004 	addi	r13,r13,-128
  801b90:	683e2626 	beq	r13,zero,80142c <___vfprintf_internal_r+0x320>
  801b94:	a5000044 	addi	r20,r20,1
  801b98:	003e2406 	br	80142c <___vfprintf_internal_r+0x320>
  801b9c:	bac00007 	ldb	r11,0(r23)
  801ba0:	63002014 	ori	r12,r12,128
  801ba4:	003da506 	br	80123c <___vfprintf_internal_r+0x130>
  801ba8:	bf000007 	ldb	fp,0(r23)
  801bac:	b8800044 	addi	r2,r23,1
  801bb0:	e0c00aa0 	cmpeqi	r3,fp,42
  801bb4:	1805841e 	bne	r3,zero,8031c8 <___vfprintf_internal_r+0x20bc>
  801bb8:	e0fff404 	addi	r3,fp,-48
  801bbc:	198002b0 	cmpltui	r6,r3,10
  801bc0:	102f883a 	mov	r23,r2
  801bc4:	0011883a 	mov	r8,zero
  801bc8:	303d9e26 	beq	r6,zero,801244 <___vfprintf_internal_r+0x138>
  801bcc:	400490ba 	slli	r2,r8,2
  801bd0:	bf000007 	ldb	fp,0(r23)
  801bd4:	bdc00044 	addi	r23,r23,1
  801bd8:	1211883a 	add	r8,r2,r8
  801bdc:	4211883a 	add	r8,r8,r8
  801be0:	40d1883a 	add	r8,r8,r3
  801be4:	e0fff404 	addi	r3,fp,-48
  801be8:	188002b0 	cmpltui	r2,r3,10
  801bec:	103ff71e 	bne	r2,zero,801bcc <___vfprintf_internal_r+0xac0>
  801bf0:	003d9406 	br	801244 <___vfprintf_internal_r+0x138>
  801bf4:	bf000003 	ldbu	fp,0(r23)
  801bf8:	e2c03fcc 	andi	r11,fp,255
  801bfc:	5ac0201c 	xori	r11,r11,128
  801c00:	63000114 	ori	r12,r12,4
  801c04:	5affe004 	addi	r11,r11,-128
  801c08:	003d8c06 	br	80123c <___vfprintf_internal_r+0x130>
  801c0c:	bac00007 	ldb	r11,0(r23)
  801c10:	01000044 	movi	r4,1
  801c14:	01400ac4 	movi	r5,43
  801c18:	003d8806 	br	80123c <___vfprintf_internal_r+0x130>
  801c1c:	d8800617 	ldw	r2,24(sp)
  801c20:	bf000003 	ldbu	fp,0(r23)
  801c24:	14000017 	ldw	r16,0(r2)
  801c28:	10800104 	addi	r2,r2,4
  801c2c:	8002aa16 	blt	r16,zero,8026d8 <___vfprintf_internal_r+0x15cc>
  801c30:	d8800615 	stw	r2,24(sp)
  801c34:	e2c03fcc 	andi	r11,fp,255
  801c38:	5ac0201c 	xori	r11,r11,128
  801c3c:	5affe004 	addi	r11,r11,-128
  801c40:	003d7e06 	br	80123c <___vfprintf_internal_r+0x130>
  801c44:	bac00007 	ldb	r11,0(r23)
  801c48:	63000054 	ori	r12,r12,1
  801c4c:	003d7b06 	br	80123c <___vfprintf_internal_r+0x130>
  801c50:	28803fcc 	andi	r2,r5,255
  801c54:	1080201c 	xori	r2,r2,128
  801c58:	10bfe004 	addi	r2,r2,-128
  801c5c:	bf000003 	ldbu	fp,0(r23)
  801c60:	103ff41e 	bne	r2,zero,801c34 <___vfprintf_internal_r+0xb28>
  801c64:	e2c03fcc 	andi	r11,fp,255
  801c68:	5ac0201c 	xori	r11,r11,128
  801c6c:	01000044 	movi	r4,1
  801c70:	01400804 	movi	r5,32
  801c74:	5affe004 	addi	r11,r11,-128
  801c78:	003d7006 	br	80123c <___vfprintf_internal_r+0x130>
  801c7c:	bac00007 	ldb	r11,0(r23)
  801c80:	63000214 	ori	r12,r12,8
  801c84:	003d6d06 	br	80123c <___vfprintf_internal_r+0x130>
  801c88:	d8c00617 	ldw	r3,24(sp)
  801c8c:	d8001345 	stb	zero,77(sp)
  801c90:	05000044 	movi	r20,1
  801c94:	18800017 	ldw	r2,0(r3)
  801c98:	18c00104 	addi	r3,r3,4
  801c9c:	d8c00615 	stw	r3,24(sp)
  801ca0:	d8801d05 	stb	r2,116(sp)
  801ca4:	05400044 	movi	r21,1
  801ca8:	dc401d04 	addi	r17,sp,116
  801cac:	003ddc06 	br	801420 <___vfprintf_internal_r+0x314>
  801cb0:	21003fcc 	andi	r4,r4,255
  801cb4:	2004e61e 	bne	r4,zero,803050 <___vfprintf_internal_r+0x1f44>
  801cb8:	00802074 	movhi	r2,129
  801cbc:	1081a404 	addi	r2,r2,1680
  801cc0:	d8800c15 	stw	r2,48(sp)
  801cc4:	6080080c 	andi	r2,r12,32
  801cc8:	103f291e 	bne	r2,zero,801970 <___vfprintf_internal_r+0x864>
  801ccc:	d9000617 	ldw	r4,24(sp)
  801cd0:	6080040c 	andi	r2,r12,16
  801cd4:	20c00104 	addi	r3,r4,4
  801cd8:	10023d1e 	bne	r2,zero,8025d0 <___vfprintf_internal_r+0x14c4>
  801cdc:	6080100c 	andi	r2,r12,64
  801ce0:	10042f26 	beq	r2,zero,802da0 <___vfprintf_internal_r+0x1c94>
  801ce4:	d8800617 	ldw	r2,24(sp)
  801ce8:	002b883a 	mov	r21,zero
  801cec:	d8c00615 	stw	r3,24(sp)
  801cf0:	1500000b 	ldhu	r20,0(r2)
  801cf4:	003f2306 	br	801984 <___vfprintf_internal_r+0x878>
  801cf8:	e2c01990 	cmplti	r11,fp,102
  801cfc:	5800f61e 	bne	r11,zero,8020d8 <___vfprintf_internal_r+0xfcc>
  801d00:	d9000917 	ldw	r4,36(sp)
  801d04:	d9400a17 	ldw	r5,40(sp)
  801d08:	000d883a 	mov	r6,zero
  801d0c:	000f883a 	mov	r7,zero
  801d10:	d8c00e15 	stw	r3,56(sp)
  801d14:	080c73c0 	call	80c73c <__eqdf2>
  801d18:	d8c00e17 	ldw	r3,56(sp)
  801d1c:	1001881e 	bne	r2,zero,802340 <___vfprintf_internal_r+0x1234>
  801d20:	d8801b17 	ldw	r2,108(sp)
  801d24:	01002074 	movhi	r4,129
  801d28:	2101b004 	addi	r4,r4,1728
  801d2c:	10800044 	addi	r2,r2,1
  801d30:	18c00044 	addi	r3,r3,1
  801d34:	b1000015 	stw	r4,0(r22)
  801d38:	01000044 	movi	r4,1
  801d3c:	d8801b15 	stw	r2,108(sp)
  801d40:	b1000115 	stw	r4,4(r22)
  801d44:	d8c01c15 	stw	r3,112(sp)
  801d48:	10800208 	cmpgei	r2,r2,8
  801d4c:	10036e1e 	bne	r2,zero,802b08 <___vfprintf_internal_r+0x19fc>
  801d50:	b5800204 	addi	r22,r22,8
  801d54:	d8801417 	ldw	r2,80(sp)
  801d58:	d9000817 	ldw	r4,32(sp)
  801d5c:	11020b0e 	bge	r2,r4,80258c <___vfprintf_internal_r+0x1480>
  801d60:	d8800d17 	ldw	r2,52(sp)
  801d64:	d9000b17 	ldw	r4,44(sp)
  801d68:	b0800015 	stw	r2,0(r22)
  801d6c:	d8801b17 	ldw	r2,108(sp)
  801d70:	1907883a 	add	r3,r3,r4
  801d74:	b1000115 	stw	r4,4(r22)
  801d78:	10800044 	addi	r2,r2,1
  801d7c:	d8801b15 	stw	r2,108(sp)
  801d80:	d8c01c15 	stw	r3,112(sp)
  801d84:	10800208 	cmpgei	r2,r2,8
  801d88:	1002761e 	bne	r2,zero,802764 <___vfprintf_internal_r+0x1658>
  801d8c:	b5800204 	addi	r22,r22,8
  801d90:	d8800817 	ldw	r2,32(sp)
  801d94:	157fffc4 	addi	r21,r2,-1
  801d98:	057dda0e 	bge	zero,r21,801504 <___vfprintf_internal_r+0x3f8>
  801d9c:	01c02074 	movhi	r7,129
  801da0:	a9000450 	cmplti	r4,r21,17
  801da4:	d8801b17 	ldw	r2,108(sp)
  801da8:	39c1b104 	addi	r7,r7,1732
  801dac:	2003521e 	bne	r4,zero,802af8 <___vfprintf_internal_r+0x19ec>
  801db0:	07000404 	movi	fp,16
  801db4:	3823883a 	mov	r17,r7
  801db8:	00000406 	br	801dcc <___vfprintf_internal_r+0xcc0>
  801dbc:	b5800204 	addi	r22,r22,8
  801dc0:	ad7ffc04 	addi	r21,r21,-16
  801dc4:	a9000448 	cmpgei	r4,r21,17
  801dc8:	20034a26 	beq	r4,zero,802af4 <___vfprintf_internal_r+0x19e8>
  801dcc:	10800044 	addi	r2,r2,1
  801dd0:	18c00404 	addi	r3,r3,16
  801dd4:	b4400015 	stw	r17,0(r22)
  801dd8:	b7000115 	stw	fp,4(r22)
  801ddc:	d8c01c15 	stw	r3,112(sp)
  801de0:	d8801b15 	stw	r2,108(sp)
  801de4:	11000208 	cmpgei	r4,r2,8
  801de8:	203ff426 	beq	r4,zero,801dbc <___vfprintf_internal_r+0xcb0>
  801dec:	d9801a04 	addi	r6,sp,104
  801df0:	900b883a 	mov	r5,r18
  801df4:	9809883a 	mov	r4,r19
  801df8:	08084b80 	call	8084b8 <__sprint_r>
  801dfc:	103dd21e 	bne	r2,zero,801548 <___vfprintf_internal_r+0x43c>
  801e00:	d8c01c17 	ldw	r3,112(sp)
  801e04:	d8801b17 	ldw	r2,108(sp)
  801e08:	dd802704 	addi	r22,sp,156
  801e0c:	003fec06 	br	801dc0 <___vfprintf_internal_r+0xcb4>
  801e10:	8519c83a 	sub	r12,r16,r20
  801e14:	033dac0e 	bge	zero,r12,8014c8 <___vfprintf_internal_r+0x3bc>
  801e18:	01c02074 	movhi	r7,129
  801e1c:	61000450 	cmplti	r4,r12,17
  801e20:	d8801b17 	ldw	r2,108(sp)
  801e24:	39c1b104 	addi	r7,r7,1732
  801e28:	2000281e 	bne	r4,zero,801ecc <___vfprintf_internal_r+0xdc0>
  801e2c:	dc400e15 	stw	r17,56(sp)
  801e30:	dc000f15 	stw	r16,60(sp)
  801e34:	b009883a 	mov	r4,r22
  801e38:	03400404 	movi	r13,16
  801e3c:	a02d883a 	mov	r22,r20
  801e40:	6021883a 	mov	r16,r12
  801e44:	4029883a 	mov	r20,r8
  801e48:	3823883a 	mov	r17,r7
  801e4c:	00000406 	br	801e60 <___vfprintf_internal_r+0xd54>
  801e50:	843ffc04 	addi	r16,r16,-16
  801e54:	81400448 	cmpgei	r5,r16,17
  801e58:	21000204 	addi	r4,r4,8
  801e5c:	28001426 	beq	r5,zero,801eb0 <___vfprintf_internal_r+0xda4>
  801e60:	10800044 	addi	r2,r2,1
  801e64:	18c00404 	addi	r3,r3,16
  801e68:	24400015 	stw	r17,0(r4)
  801e6c:	23400115 	stw	r13,4(r4)
  801e70:	d8c01c15 	stw	r3,112(sp)
  801e74:	d8801b15 	stw	r2,108(sp)
  801e78:	11400208 	cmpgei	r5,r2,8
  801e7c:	283ff426 	beq	r5,zero,801e50 <___vfprintf_internal_r+0xd44>
  801e80:	d9801a04 	addi	r6,sp,104
  801e84:	900b883a 	mov	r5,r18
  801e88:	9809883a 	mov	r4,r19
  801e8c:	08084b80 	call	8084b8 <__sprint_r>
  801e90:	103dad1e 	bne	r2,zero,801548 <___vfprintf_internal_r+0x43c>
  801e94:	843ffc04 	addi	r16,r16,-16
  801e98:	81400448 	cmpgei	r5,r16,17
  801e9c:	d8c01c17 	ldw	r3,112(sp)
  801ea0:	d8801b17 	ldw	r2,108(sp)
  801ea4:	d9002704 	addi	r4,sp,156
  801ea8:	03400404 	movi	r13,16
  801eac:	283fec1e 	bne	r5,zero,801e60 <___vfprintf_internal_r+0xd54>
  801eb0:	8019883a 	mov	r12,r16
  801eb4:	880f883a 	mov	r7,r17
  801eb8:	dc000f17 	ldw	r16,60(sp)
  801ebc:	dc400e17 	ldw	r17,56(sp)
  801ec0:	a011883a 	mov	r8,r20
  801ec4:	b029883a 	mov	r20,r22
  801ec8:	202d883a 	mov	r22,r4
  801ecc:	10800044 	addi	r2,r2,1
  801ed0:	1b07883a 	add	r3,r3,r12
  801ed4:	d8801b15 	stw	r2,108(sp)
  801ed8:	b1c00015 	stw	r7,0(r22)
  801edc:	b3000115 	stw	r12,4(r22)
  801ee0:	d8c01c15 	stw	r3,112(sp)
  801ee4:	10800208 	cmpgei	r2,r2,8
  801ee8:	10030f1e 	bne	r2,zero,802b28 <___vfprintf_internal_r+0x1a1c>
  801eec:	4551c83a 	sub	r8,r8,r21
  801ef0:	b5800204 	addi	r22,r22,8
  801ef4:	023d760e 	bge	zero,r8,8014d0 <___vfprintf_internal_r+0x3c4>
  801ef8:	01c02074 	movhi	r7,129
  801efc:	41000450 	cmplti	r4,r8,17
  801f00:	d8801b17 	ldw	r2,108(sp)
  801f04:	39c1b104 	addi	r7,r7,1732
  801f08:	2000221e 	bne	r4,zero,801f94 <___vfprintf_internal_r+0xe88>
  801f0c:	dc400e15 	stw	r17,56(sp)
  801f10:	dc000f15 	stw	r16,60(sp)
  801f14:	03000404 	movi	r12,16
  801f18:	4021883a 	mov	r16,r8
  801f1c:	3823883a 	mov	r17,r7
  801f20:	00000406 	br	801f34 <___vfprintf_internal_r+0xe28>
  801f24:	843ffc04 	addi	r16,r16,-16
  801f28:	81000448 	cmpgei	r4,r16,17
  801f2c:	b5800204 	addi	r22,r22,8
  801f30:	20001426 	beq	r4,zero,801f84 <___vfprintf_internal_r+0xe78>
  801f34:	10800044 	addi	r2,r2,1
  801f38:	18c00404 	addi	r3,r3,16
  801f3c:	b4400015 	stw	r17,0(r22)
  801f40:	b3000115 	stw	r12,4(r22)
  801f44:	d8c01c15 	stw	r3,112(sp)
  801f48:	d8801b15 	stw	r2,108(sp)
  801f4c:	11000208 	cmpgei	r4,r2,8
  801f50:	203ff426 	beq	r4,zero,801f24 <___vfprintf_internal_r+0xe18>
  801f54:	d9801a04 	addi	r6,sp,104
  801f58:	900b883a 	mov	r5,r18
  801f5c:	9809883a 	mov	r4,r19
  801f60:	08084b80 	call	8084b8 <__sprint_r>
  801f64:	103d781e 	bne	r2,zero,801548 <___vfprintf_internal_r+0x43c>
  801f68:	843ffc04 	addi	r16,r16,-16
  801f6c:	81000448 	cmpgei	r4,r16,17
  801f70:	d8c01c17 	ldw	r3,112(sp)
  801f74:	d8801b17 	ldw	r2,108(sp)
  801f78:	dd802704 	addi	r22,sp,156
  801f7c:	03000404 	movi	r12,16
  801f80:	203fec1e 	bne	r4,zero,801f34 <___vfprintf_internal_r+0xe28>
  801f84:	8011883a 	mov	r8,r16
  801f88:	880f883a 	mov	r7,r17
  801f8c:	dc000f17 	ldw	r16,60(sp)
  801f90:	dc400e17 	ldw	r17,56(sp)
  801f94:	10800044 	addi	r2,r2,1
  801f98:	1a07883a 	add	r3,r3,r8
  801f9c:	d8801b15 	stw	r2,108(sp)
  801fa0:	b1c00015 	stw	r7,0(r22)
  801fa4:	b2000115 	stw	r8,4(r22)
  801fa8:	d8c01c15 	stw	r3,112(sp)
  801fac:	10800208 	cmpgei	r2,r2,8
  801fb0:	10016e1e 	bne	r2,zero,80256c <___vfprintf_internal_r+0x1460>
  801fb4:	b5800204 	addi	r22,r22,8
  801fb8:	003d4506 	br	8014d0 <___vfprintf_internal_r+0x3c4>
  801fbc:	10c00060 	cmpeqi	r3,r2,1
  801fc0:	1803c81e 	bne	r3,zero,802ee4 <___vfprintf_internal_r+0x1dd8>
  801fc4:	108000a0 	cmpeqi	r2,r2,2
  801fc8:	db000417 	ldw	r12,16(sp)
  801fcc:	103ecf26 	beq	r2,zero,801b0c <___vfprintf_internal_r+0xa00>
  801fd0:	d9000c17 	ldw	r4,48(sp)
  801fd4:	dc402704 	addi	r17,sp,156
  801fd8:	a08003cc 	andi	r2,r20,15
  801fdc:	a806973a 	slli	r3,r21,28
  801fe0:	a028d13a 	srli	r20,r20,4
  801fe4:	2085883a 	add	r2,r4,r2
  801fe8:	10800003 	ldbu	r2,0(r2)
  801fec:	a82ad13a 	srli	r21,r21,4
  801ff0:	1d28b03a 	or	r20,r3,r20
  801ff4:	88bfffc5 	stb	r2,-1(r17)
  801ff8:	a544b03a 	or	r2,r20,r21
  801ffc:	8c7fffc4 	addi	r17,r17,-1
  802000:	103ff51e 	bne	r2,zero,801fd8 <___vfprintf_internal_r+0xecc>
  802004:	d8802704 	addi	r2,sp,156
  802008:	146bc83a 	sub	r21,r2,r17
  80200c:	db000415 	stw	r12,16(sp)
  802010:	003ed806 	br	801b74 <___vfprintf_internal_r+0xa68>
  802014:	d9801a04 	addi	r6,sp,104
  802018:	900b883a 	mov	r5,r18
  80201c:	9809883a 	mov	r4,r19
  802020:	08084b80 	call	8084b8 <__sprint_r>
  802024:	103d4226 	beq	r2,zero,801530 <___vfprintf_internal_r+0x424>
  802028:	003d4706 	br	801548 <___vfprintf_internal_r+0x43c>
  80202c:	d9801a04 	addi	r6,sp,104
  802030:	900b883a 	mov	r5,r18
  802034:	9809883a 	mov	r4,r19
  802038:	08084b80 	call	8084b8 <__sprint_r>
  80203c:	103d421e 	bne	r2,zero,801548 <___vfprintf_internal_r+0x43c>
  802040:	d9401417 	ldw	r5,80(sp)
  802044:	d8c01c17 	ldw	r3,112(sp)
  802048:	dd802704 	addi	r22,sp,156
  80204c:	2802c81e 	bne	r5,zero,802b70 <___vfprintf_internal_r+0x1a64>
  802050:	d8800417 	ldw	r2,16(sp)
  802054:	d9000817 	ldw	r4,32(sp)
  802058:	1080004c 	andi	r2,r2,1
  80205c:	1104b03a 	or	r2,r2,r4
  802060:	103d2826 	beq	r2,zero,801504 <___vfprintf_internal_r+0x3f8>
  802064:	d8800d17 	ldw	r2,52(sp)
  802068:	d9000b17 	ldw	r4,44(sp)
  80206c:	b0800015 	stw	r2,0(r22)
  802070:	d8801b17 	ldw	r2,108(sp)
  802074:	20c7883a 	add	r3,r4,r3
  802078:	b1000115 	stw	r4,4(r22)
  80207c:	10800044 	addi	r2,r2,1
  802080:	d8c01c15 	stw	r3,112(sp)
  802084:	d8801b15 	stw	r2,108(sp)
  802088:	11000208 	cmpgei	r4,r2,8
  80208c:	2003821e 	bne	r4,zero,802e98 <___vfprintf_internal_r+0x1d8c>
  802090:	b5800204 	addi	r22,r22,8
  802094:	d9000817 	ldw	r4,32(sp)
  802098:	10800044 	addi	r2,r2,1
  80209c:	d8801b15 	stw	r2,108(sp)
  8020a0:	20c7883a 	add	r3,r4,r3
  8020a4:	b4400015 	stw	r17,0(r22)
  8020a8:	b1000115 	stw	r4,4(r22)
  8020ac:	d8c01c15 	stw	r3,112(sp)
  8020b0:	10800208 	cmpgei	r2,r2,8
  8020b4:	103d1226 	beq	r2,zero,801500 <___vfprintf_internal_r+0x3f4>
  8020b8:	d9801a04 	addi	r6,sp,104
  8020bc:	900b883a 	mov	r5,r18
  8020c0:	9809883a 	mov	r4,r19
  8020c4:	08084b80 	call	8084b8 <__sprint_r>
  8020c8:	103d1f1e 	bne	r2,zero,801548 <___vfprintf_internal_r+0x43c>
  8020cc:	d8c01c17 	ldw	r3,112(sp)
  8020d0:	dd802704 	addi	r22,sp,156
  8020d4:	003d0b06 	br	801504 <___vfprintf_internal_r+0x3f8>
  8020d8:	d8800817 	ldw	r2,32(sp)
  8020dc:	da001b17 	ldw	r8,108(sp)
  8020e0:	18c00044 	addi	r3,r3,1
  8020e4:	10800088 	cmpgei	r2,r2,2
  8020e8:	45400044 	addi	r21,r8,1
  8020ec:	b7000204 	addi	fp,r22,8
  8020f0:	1000ec26 	beq	r2,zero,8024a4 <___vfprintf_internal_r+0x1398>
  8020f4:	00800044 	movi	r2,1
  8020f8:	b0800115 	stw	r2,4(r22)
  8020fc:	b4400015 	stw	r17,0(r22)
  802100:	d8c01c15 	stw	r3,112(sp)
  802104:	dd401b15 	stw	r21,108(sp)
  802108:	a8800210 	cmplti	r2,r21,8
  80210c:	1001d126 	beq	r2,zero,802854 <___vfprintf_internal_r+0x1748>
  802110:	d8800b17 	ldw	r2,44(sp)
  802114:	d9000d17 	ldw	r4,52(sp)
  802118:	ad400044 	addi	r21,r21,1
  80211c:	1887883a 	add	r3,r3,r2
  802120:	e0800115 	stw	r2,4(fp)
  802124:	e1000015 	stw	r4,0(fp)
  802128:	d8c01c15 	stw	r3,112(sp)
  80212c:	dd401b15 	stw	r21,108(sp)
  802130:	a8800208 	cmpgei	r2,r21,8
  802134:	1001be1e 	bne	r2,zero,802830 <___vfprintf_internal_r+0x1724>
  802138:	e7000204 	addi	fp,fp,8
  80213c:	d9000917 	ldw	r4,36(sp)
  802140:	d9400a17 	ldw	r5,40(sp)
  802144:	aa000044 	addi	r8,r21,1
  802148:	000d883a 	mov	r6,zero
  80214c:	000f883a 	mov	r7,zero
  802150:	d8c00e15 	stw	r3,56(sp)
  802154:	da000715 	stw	r8,28(sp)
  802158:	080c73c0 	call	80c73c <__eqdf2>
  80215c:	d8c00817 	ldw	r3,32(sp)
  802160:	da000717 	ldw	r8,28(sp)
  802164:	e5800204 	addi	r22,fp,8
  802168:	1affffc4 	addi	r11,r3,-1
  80216c:	d8c00e17 	ldw	r3,56(sp)
  802170:	1000de26 	beq	r2,zero,8024ec <___vfprintf_internal_r+0x13e0>
  802174:	8a400044 	addi	r9,r17,1
  802178:	1ac7883a 	add	r3,r3,r11
  80217c:	da001b15 	stw	r8,108(sp)
  802180:	e2400015 	stw	r9,0(fp)
  802184:	e2c00115 	stw	r11,4(fp)
  802188:	d8c01c15 	stw	r3,112(sp)
  80218c:	42000208 	cmpgei	r8,r8,8
  802190:	4001621e 	bne	r8,zero,80271c <___vfprintf_internal_r+0x1610>
  802194:	e0800404 	addi	r2,fp,16
  802198:	aa000084 	addi	r8,r21,2
  80219c:	b039883a 	mov	fp,r22
  8021a0:	102d883a 	mov	r22,r2
  8021a4:	d9001017 	ldw	r4,64(sp)
  8021a8:	d8801644 	addi	r2,sp,89
  8021ac:	da001b15 	stw	r8,108(sp)
  8021b0:	20c7883a 	add	r3,r4,r3
  8021b4:	e0800015 	stw	r2,0(fp)
  8021b8:	e1000115 	stw	r4,4(fp)
  8021bc:	d8c01c15 	stw	r3,112(sp)
  8021c0:	42000210 	cmplti	r8,r8,8
  8021c4:	403ccf1e 	bne	r8,zero,801504 <___vfprintf_internal_r+0x3f8>
  8021c8:	003fbb06 	br	8020b8 <___vfprintf_internal_r+0xfac>
  8021cc:	db000417 	ldw	r12,16(sp)
  8021d0:	003e4a06 	br	801afc <___vfprintf_internal_r+0x9f0>
  8021d4:	03002074 	movhi	r12,129
  8021d8:	39000450 	cmplti	r4,r7,17
  8021dc:	d8801b17 	ldw	r2,108(sp)
  8021e0:	6301b504 	addi	r12,r12,1748
  8021e4:	2000321e 	bne	r4,zero,8022b0 <___vfprintf_internal_r+0x11a4>
  8021e8:	dc401115 	stw	r17,68(sp)
  8021ec:	b009883a 	mov	r4,r22
  8021f0:	9023883a 	mov	r17,r18
  8021f4:	a82d883a 	mov	r22,r21
  8021f8:	ddc01215 	stw	r23,72(sp)
  8021fc:	03c00404 	movi	r15,16
  802200:	a02f883a 	mov	r23,r20
  802204:	db800e15 	stw	r14,56(sp)
  802208:	8029883a 	mov	r20,r16
  80220c:	db400f15 	stw	r13,60(sp)
  802210:	402b883a 	mov	r21,r8
  802214:	3821883a 	mov	r16,r7
  802218:	6025883a 	mov	r18,r12
  80221c:	00000406 	br	802230 <___vfprintf_internal_r+0x1124>
  802220:	843ffc04 	addi	r16,r16,-16
  802224:	81800448 	cmpgei	r6,r16,17
  802228:	21000204 	addi	r4,r4,8
  80222c:	30001426 	beq	r6,zero,802280 <___vfprintf_internal_r+0x1174>
  802230:	10800044 	addi	r2,r2,1
  802234:	18c00404 	addi	r3,r3,16
  802238:	24800015 	stw	r18,0(r4)
  80223c:	23c00115 	stw	r15,4(r4)
  802240:	d8c01c15 	stw	r3,112(sp)
  802244:	d8801b15 	stw	r2,108(sp)
  802248:	11800208 	cmpgei	r6,r2,8
  80224c:	303ff426 	beq	r6,zero,802220 <___vfprintf_internal_r+0x1114>
  802250:	d9801a04 	addi	r6,sp,104
  802254:	880b883a 	mov	r5,r17
  802258:	9809883a 	mov	r4,r19
  80225c:	08084b80 	call	8084b8 <__sprint_r>
  802260:	1001a11e 	bne	r2,zero,8028e8 <___vfprintf_internal_r+0x17dc>
  802264:	843ffc04 	addi	r16,r16,-16
  802268:	81800448 	cmpgei	r6,r16,17
  80226c:	d8c01c17 	ldw	r3,112(sp)
  802270:	d8801b17 	ldw	r2,108(sp)
  802274:	d9002704 	addi	r4,sp,156
  802278:	03c00404 	movi	r15,16
  80227c:	303fec1e 	bne	r6,zero,802230 <___vfprintf_internal_r+0x1124>
  802280:	800f883a 	mov	r7,r16
  802284:	9019883a 	mov	r12,r18
  802288:	a021883a 	mov	r16,r20
  80228c:	8825883a 	mov	r18,r17
  802290:	b829883a 	mov	r20,r23
  802294:	db800e17 	ldw	r14,56(sp)
  802298:	db400f17 	ldw	r13,60(sp)
  80229c:	ddc01217 	ldw	r23,72(sp)
  8022a0:	dc401117 	ldw	r17,68(sp)
  8022a4:	a811883a 	mov	r8,r21
  8022a8:	b02b883a 	mov	r21,r22
  8022ac:	202d883a 	mov	r22,r4
  8022b0:	10800044 	addi	r2,r2,1
  8022b4:	19c7883a 	add	r3,r3,r7
  8022b8:	d8801b15 	stw	r2,108(sp)
  8022bc:	b3000015 	stw	r12,0(r22)
  8022c0:	b1c00115 	stw	r7,4(r22)
  8022c4:	d8c01c15 	stw	r3,112(sp)
  8022c8:	10800208 	cmpgei	r2,r2,8
  8022cc:	1001781e 	bne	r2,zero,8028b0 <___vfprintf_internal_r+0x17a4>
  8022d0:	b5800204 	addi	r22,r22,8
  8022d4:	003c5f06 	br	801454 <___vfprintf_internal_r+0x348>
  8022d8:	d9801a04 	addi	r6,sp,104
  8022dc:	900b883a 	mov	r5,r18
  8022e0:	9809883a 	mov	r4,r19
  8022e4:	da000f15 	stw	r8,60(sp)
  8022e8:	db400e15 	stw	r13,56(sp)
  8022ec:	08084b80 	call	8084b8 <__sprint_r>
  8022f0:	103c951e 	bne	r2,zero,801548 <___vfprintf_internal_r+0x43c>
  8022f4:	d8c01c17 	ldw	r3,112(sp)
  8022f8:	da000f17 	ldw	r8,60(sp)
  8022fc:	db400e17 	ldw	r13,56(sp)
  802300:	dd802704 	addi	r22,sp,156
  802304:	003c6e06 	br	8014c0 <___vfprintf_internal_r+0x3b4>
  802308:	d9801a04 	addi	r6,sp,104
  80230c:	900b883a 	mov	r5,r18
  802310:	9809883a 	mov	r4,r19
  802314:	da001115 	stw	r8,68(sp)
  802318:	db400f15 	stw	r13,60(sp)
  80231c:	db800e15 	stw	r14,56(sp)
  802320:	08084b80 	call	8084b8 <__sprint_r>
  802324:	103c881e 	bne	r2,zero,801548 <___vfprintf_internal_r+0x43c>
  802328:	d8c01c17 	ldw	r3,112(sp)
  80232c:	da001117 	ldw	r8,68(sp)
  802330:	db400f17 	ldw	r13,60(sp)
  802334:	db800e17 	ldw	r14,56(sp)
  802338:	dd802704 	addi	r22,sp,156
  80233c:	003c5306 	br	80148c <___vfprintf_internal_r+0x380>
  802340:	d9401417 	ldw	r5,80(sp)
  802344:	01414c0e 	bge	zero,r5,802878 <___vfprintf_internal_r+0x176c>
  802348:	d8800717 	ldw	r2,28(sp)
  80234c:	d9000817 	ldw	r4,32(sp)
  802350:	102b883a 	mov	r21,r2
  802354:	2080e316 	blt	r4,r2,8026e4 <___vfprintf_internal_r+0x15d8>
  802358:	05400a0e 	bge	zero,r21,802384 <___vfprintf_internal_r+0x1278>
  80235c:	d8801b17 	ldw	r2,108(sp)
  802360:	1d47883a 	add	r3,r3,r21
  802364:	b4400015 	stw	r17,0(r22)
  802368:	10800044 	addi	r2,r2,1
  80236c:	d8801b15 	stw	r2,108(sp)
  802370:	b5400115 	stw	r21,4(r22)
  802374:	d8c01c15 	stw	r3,112(sp)
  802378:	10800208 	cmpgei	r2,r2,8
  80237c:	10030c1e 	bne	r2,zero,802fb0 <___vfprintf_internal_r+0x1ea4>
  802380:	b5800204 	addi	r22,r22,8
  802384:	a800ff16 	blt	r21,zero,802784 <___vfprintf_internal_r+0x1678>
  802388:	d8800717 	ldw	r2,28(sp)
  80238c:	156bc83a 	sub	r21,r2,r21
  802390:	05410616 	blt	zero,r21,8027ac <___vfprintf_internal_r+0x16a0>
  802394:	dd401417 	ldw	r21,80(sp)
  802398:	d8800817 	ldw	r2,32(sp)
  80239c:	a880d40e 	bge	r21,r2,8026f0 <___vfprintf_internal_r+0x15e4>
  8023a0:	d8800d17 	ldw	r2,52(sp)
  8023a4:	d9000b17 	ldw	r4,44(sp)
  8023a8:	b0800015 	stw	r2,0(r22)
  8023ac:	d8801b17 	ldw	r2,108(sp)
  8023b0:	1907883a 	add	r3,r3,r4
  8023b4:	b1000115 	stw	r4,4(r22)
  8023b8:	10800044 	addi	r2,r2,1
  8023bc:	d8801b15 	stw	r2,108(sp)
  8023c0:	d8c01c15 	stw	r3,112(sp)
  8023c4:	10800208 	cmpgei	r2,r2,8
  8023c8:	10028e1e 	bne	r2,zero,802e04 <___vfprintf_internal_r+0x1cf8>
  8023cc:	b5800204 	addi	r22,r22,8
  8023d0:	d9000817 	ldw	r4,32(sp)
  8023d4:	d9400717 	ldw	r5,28(sp)
  8023d8:	2545c83a 	sub	r2,r4,r21
  8023dc:	2149c83a 	sub	r4,r4,r5
  8023e0:	102b883a 	mov	r21,r2
  8023e4:	2080010e 	bge	r4,r2,8023ec <___vfprintf_internal_r+0x12e0>
  8023e8:	202b883a 	mov	r21,r4
  8023ec:	05400c0e 	bge	zero,r21,802420 <___vfprintf_internal_r+0x1314>
  8023f0:	d9000717 	ldw	r4,28(sp)
  8023f4:	1d47883a 	add	r3,r3,r21
  8023f8:	b5400115 	stw	r21,4(r22)
  8023fc:	8913883a 	add	r9,r17,r4
  802400:	d9001b17 	ldw	r4,108(sp)
  802404:	b2400015 	stw	r9,0(r22)
  802408:	d8c01c15 	stw	r3,112(sp)
  80240c:	21000044 	addi	r4,r4,1
  802410:	d9001b15 	stw	r4,108(sp)
  802414:	21000208 	cmpgei	r4,r4,8
  802418:	2002f01e 	bne	r4,zero,802fdc <___vfprintf_internal_r+0x1ed0>
  80241c:	b5800204 	addi	r22,r22,8
  802420:	a800010e 	bge	r21,zero,802428 <___vfprintf_internal_r+0x131c>
  802424:	002b883a 	mov	r21,zero
  802428:	156bc83a 	sub	r21,r2,r21
  80242c:	057c350e 	bge	zero,r21,801504 <___vfprintf_internal_r+0x3f8>
  802430:	01c02074 	movhi	r7,129
  802434:	a9000450 	cmplti	r4,r21,17
  802438:	d8801b17 	ldw	r2,108(sp)
  80243c:	39c1b104 	addi	r7,r7,1732
  802440:	2001ad1e 	bne	r4,zero,802af8 <___vfprintf_internal_r+0x19ec>
  802444:	07000404 	movi	fp,16
  802448:	3823883a 	mov	r17,r7
  80244c:	00000406 	br	802460 <___vfprintf_internal_r+0x1354>
  802450:	b5800204 	addi	r22,r22,8
  802454:	ad7ffc04 	addi	r21,r21,-16
  802458:	a9000448 	cmpgei	r4,r21,17
  80245c:	2001a526 	beq	r4,zero,802af4 <___vfprintf_internal_r+0x19e8>
  802460:	10800044 	addi	r2,r2,1
  802464:	18c00404 	addi	r3,r3,16
  802468:	b4400015 	stw	r17,0(r22)
  80246c:	b7000115 	stw	fp,4(r22)
  802470:	d8c01c15 	stw	r3,112(sp)
  802474:	d8801b15 	stw	r2,108(sp)
  802478:	11000208 	cmpgei	r4,r2,8
  80247c:	203ff426 	beq	r4,zero,802450 <___vfprintf_internal_r+0x1344>
  802480:	d9801a04 	addi	r6,sp,104
  802484:	900b883a 	mov	r5,r18
  802488:	9809883a 	mov	r4,r19
  80248c:	08084b80 	call	8084b8 <__sprint_r>
  802490:	103c2d1e 	bne	r2,zero,801548 <___vfprintf_internal_r+0x43c>
  802494:	d8c01c17 	ldw	r3,112(sp)
  802498:	d8801b17 	ldw	r2,108(sp)
  80249c:	dd802704 	addi	r22,sp,156
  8024a0:	003fec06 	br	802454 <___vfprintf_internal_r+0x1348>
  8024a4:	d8800417 	ldw	r2,16(sp)
  8024a8:	1080004c 	andi	r2,r2,1
  8024ac:	103f111e 	bne	r2,zero,8020f4 <___vfprintf_internal_r+0xfe8>
  8024b0:	00800044 	movi	r2,1
  8024b4:	dd401b15 	stw	r21,108(sp)
  8024b8:	b4400015 	stw	r17,0(r22)
  8024bc:	b0800115 	stw	r2,4(r22)
  8024c0:	d8c01c15 	stw	r3,112(sp)
  8024c4:	ad400208 	cmpgei	r21,r21,8
  8024c8:	a800941e 	bne	r21,zero,80271c <___vfprintf_internal_r+0x1610>
  8024cc:	42000084 	addi	r8,r8,2
  8024d0:	b5800404 	addi	r22,r22,16
  8024d4:	003f3306 	br	8021a4 <___vfprintf_internal_r+0x1098>
  8024d8:	4002821e 	bne	r8,zero,802ee4 <___vfprintf_internal_r+0x1dd8>
  8024dc:	0011883a 	mov	r8,zero
  8024e0:	002b883a 	mov	r21,zero
  8024e4:	dc402704 	addi	r17,sp,156
  8024e8:	003da206 	br	801b74 <___vfprintf_internal_r+0xa68>
  8024ec:	02ff2d0e 	bge	zero,r11,8021a4 <___vfprintf_internal_r+0x1098>
  8024f0:	58800450 	cmplti	r2,r11,17
  8024f4:	01c02074 	movhi	r7,129
  8024f8:	1003261e 	bne	r2,zero,803194 <___vfprintf_internal_r+0x2088>
  8024fc:	39c1b104 	addi	r7,r7,1732
  802500:	dc000715 	stw	r16,28(sp)
  802504:	05800404 	movi	r22,16
  802508:	5823883a 	mov	r17,r11
  80250c:	402b883a 	mov	r21,r8
  802510:	3821883a 	mov	r16,r7
  802514:	00000506 	br	80252c <___vfprintf_internal_r+0x1420>
  802518:	e7000204 	addi	fp,fp,8
  80251c:	8c7ffc04 	addi	r17,r17,-16
  802520:	88800448 	cmpgei	r2,r17,17
  802524:	1001be26 	beq	r2,zero,802c20 <___vfprintf_internal_r+0x1b14>
  802528:	ad400044 	addi	r21,r21,1
  80252c:	18c00404 	addi	r3,r3,16
  802530:	e4000015 	stw	r16,0(fp)
  802534:	e5800115 	stw	r22,4(fp)
  802538:	d8c01c15 	stw	r3,112(sp)
  80253c:	dd401b15 	stw	r21,108(sp)
  802540:	a8800208 	cmpgei	r2,r21,8
  802544:	103ff426 	beq	r2,zero,802518 <___vfprintf_internal_r+0x140c>
  802548:	d9801a04 	addi	r6,sp,104
  80254c:	900b883a 	mov	r5,r18
  802550:	9809883a 	mov	r4,r19
  802554:	08084b80 	call	8084b8 <__sprint_r>
  802558:	103bfb1e 	bne	r2,zero,801548 <___vfprintf_internal_r+0x43c>
  80255c:	dd401b17 	ldw	r21,108(sp)
  802560:	d8c01c17 	ldw	r3,112(sp)
  802564:	df002704 	addi	fp,sp,156
  802568:	003fec06 	br	80251c <___vfprintf_internal_r+0x1410>
  80256c:	d9801a04 	addi	r6,sp,104
  802570:	900b883a 	mov	r5,r18
  802574:	9809883a 	mov	r4,r19
  802578:	08084b80 	call	8084b8 <__sprint_r>
  80257c:	103bf21e 	bne	r2,zero,801548 <___vfprintf_internal_r+0x43c>
  802580:	d8c01c17 	ldw	r3,112(sp)
  802584:	dd802704 	addi	r22,sp,156
  802588:	003bd106 	br	8014d0 <___vfprintf_internal_r+0x3c4>
  80258c:	d8800417 	ldw	r2,16(sp)
  802590:	1080004c 	andi	r2,r2,1
  802594:	103bdb26 	beq	r2,zero,801504 <___vfprintf_internal_r+0x3f8>
  802598:	003df106 	br	801d60 <___vfprintf_internal_r+0xc54>
  80259c:	dc402704 	addi	r17,sp,156
  8025a0:	003d7406 	br	801b74 <___vfprintf_internal_r+0xa68>
  8025a4:	d9000517 	ldw	r4,20(sp)
  8025a8:	2005d7fa 	srai	r2,r4,31
  8025ac:	19000015 	stw	r4,0(r3)
  8025b0:	18800115 	stw	r2,4(r3)
  8025b4:	003b0906 	br	8011dc <___vfprintf_internal_r+0xd0>
  8025b8:	00800c04 	movi	r2,48
  8025bc:	d8801385 	stb	r2,78(sp)
  8025c0:	df0013c5 	stb	fp,79(sp)
  8025c4:	63000094 	ori	r12,r12,2
  8025c8:	00800084 	movi	r2,2
  8025cc:	003c1206 	br	801618 <___vfprintf_internal_r+0x50c>
  8025d0:	25000017 	ldw	r20,0(r4)
  8025d4:	002b883a 	mov	r21,zero
  8025d8:	d8c00615 	stw	r3,24(sp)
  8025dc:	003ce906 	br	801984 <___vfprintf_internal_r+0x878>
  8025e0:	25000017 	ldw	r20,0(r4)
  8025e4:	002b883a 	mov	r21,zero
  8025e8:	d8c00615 	stw	r3,24(sp)
  8025ec:	0005883a 	mov	r2,zero
  8025f0:	003c0906 	br	801618 <___vfprintf_internal_r+0x50c>
  8025f4:	25000017 	ldw	r20,0(r4)
  8025f8:	002b883a 	mov	r21,zero
  8025fc:	d8c00615 	stw	r3,24(sp)
  802600:	00800044 	movi	r2,1
  802604:	003c0406 	br	801618 <___vfprintf_internal_r+0x50c>
  802608:	25000017 	ldw	r20,0(r4)
  80260c:	d8c00615 	stw	r3,24(sp)
  802610:	a02bd7fa 	srai	r21,r20,31
  802614:	a805883a 	mov	r2,r21
  802618:	003cb806 	br	8018fc <___vfprintf_internal_r+0x7f0>
  80261c:	18800017 	ldw	r2,0(r3)
  802620:	d8800915 	stw	r2,36(sp)
  802624:	18800117 	ldw	r2,4(r3)
  802628:	d8800a15 	stw	r2,40(sp)
  80262c:	003c3006 	br	8016f0 <___vfprintf_internal_r+0x5e4>
  802630:	db401343 	ldbu	r13,77(sp)
  802634:	a83cbc26 	beq	r21,zero,801928 <___vfprintf_internal_r+0x81c>
  802638:	dc402704 	addi	r17,sp,156
  80263c:	a805883a 	mov	r2,r21
  802640:	dc000715 	stw	r16,28(sp)
  802644:	902b883a 	mov	r21,r18
  802648:	8821883a 	mov	r16,r17
  80264c:	db000415 	stw	r12,16(sp)
  802650:	a023883a 	mov	r17,r20
  802654:	da000e15 	stw	r8,56(sp)
  802658:	9829883a 	mov	r20,r19
  80265c:	1025883a 	mov	r18,r2
  802660:	6827883a 	mov	r19,r13
  802664:	8809883a 	mov	r4,r17
  802668:	900b883a 	mov	r5,r18
  80266c:	01800284 	movi	r6,10
  802670:	000f883a 	mov	r7,zero
  802674:	080ad180 	call	80ad18 <__umoddi3>
  802678:	10800c04 	addi	r2,r2,48
  80267c:	8809883a 	mov	r4,r17
  802680:	900b883a 	mov	r5,r18
  802684:	01800284 	movi	r6,10
  802688:	000f883a 	mov	r7,zero
  80268c:	80bfffc5 	stb	r2,-1(r16)
  802690:	080a6fc0 	call	80a6fc <__udivdi3>
  802694:	900d883a 	mov	r6,r18
  802698:	880f883a 	mov	r7,r17
  80269c:	843fffc4 	addi	r16,r16,-1
  8026a0:	1023883a 	mov	r17,r2
  8026a4:	1825883a 	mov	r18,r3
  8026a8:	303fee1e 	bne	r6,zero,802664 <___vfprintf_internal_r+0x1558>
  8026ac:	39c002a8 	cmpgeui	r7,r7,10
  8026b0:	383fec1e 	bne	r7,zero,802664 <___vfprintf_internal_r+0x1558>
  8026b4:	8023883a 	mov	r17,r16
  8026b8:	d8802704 	addi	r2,sp,156
  8026bc:	981b883a 	mov	r13,r19
  8026c0:	a825883a 	mov	r18,r21
  8026c4:	dc000717 	ldw	r16,28(sp)
  8026c8:	da000e17 	ldw	r8,56(sp)
  8026cc:	a027883a 	mov	r19,r20
  8026d0:	146bc83a 	sub	r21,r2,r17
  8026d4:	003d2706 	br	801b74 <___vfprintf_internal_r+0xa68>
  8026d8:	0421c83a 	sub	r16,zero,r16
  8026dc:	d8800615 	stw	r2,24(sp)
  8026e0:	003d4506 	br	801bf8 <___vfprintf_internal_r+0xaec>
  8026e4:	202b883a 	mov	r21,r4
  8026e8:	057f1c16 	blt	zero,r21,80235c <___vfprintf_internal_r+0x1250>
  8026ec:	003f2506 	br	802384 <___vfprintf_internal_r+0x1278>
  8026f0:	d8800417 	ldw	r2,16(sp)
  8026f4:	1080004c 	andi	r2,r2,1
  8026f8:	103f291e 	bne	r2,zero,8023a0 <___vfprintf_internal_r+0x1294>
  8026fc:	d9000817 	ldw	r4,32(sp)
  802700:	d9400717 	ldw	r5,28(sp)
  802704:	2545c83a 	sub	r2,r4,r21
  802708:	2179c83a 	sub	fp,r4,r5
  80270c:	102b883a 	mov	r21,r2
  802710:	e0bf430e 	bge	fp,r2,802420 <___vfprintf_internal_r+0x1314>
  802714:	e02b883a 	mov	r21,fp
  802718:	003f4106 	br	802420 <___vfprintf_internal_r+0x1314>
  80271c:	d9801a04 	addi	r6,sp,104
  802720:	900b883a 	mov	r5,r18
  802724:	9809883a 	mov	r4,r19
  802728:	08084b80 	call	8084b8 <__sprint_r>
  80272c:	103b861e 	bne	r2,zero,801548 <___vfprintf_internal_r+0x43c>
  802730:	da001b17 	ldw	r8,108(sp)
  802734:	d8c01c17 	ldw	r3,112(sp)
  802738:	dd802904 	addi	r22,sp,164
  80273c:	42000044 	addi	r8,r8,1
  802740:	df002704 	addi	fp,sp,156
  802744:	003e9706 	br	8021a4 <___vfprintf_internal_r+0x1098>
  802748:	bf000043 	ldbu	fp,1(r23)
  80274c:	63000814 	ori	r12,r12,32
  802750:	bdc00044 	addi	r23,r23,1
  802754:	e2c03fcc 	andi	r11,fp,255
  802758:	5ac0201c 	xori	r11,r11,128
  80275c:	5affe004 	addi	r11,r11,-128
  802760:	003ab606 	br	80123c <___vfprintf_internal_r+0x130>
  802764:	d9801a04 	addi	r6,sp,104
  802768:	900b883a 	mov	r5,r18
  80276c:	9809883a 	mov	r4,r19
  802770:	08084b80 	call	8084b8 <__sprint_r>
  802774:	103b741e 	bne	r2,zero,801548 <___vfprintf_internal_r+0x43c>
  802778:	d8c01c17 	ldw	r3,112(sp)
  80277c:	dd802704 	addi	r22,sp,156
  802780:	003d8306 	br	801d90 <___vfprintf_internal_r+0xc84>
  802784:	002b883a 	mov	r21,zero
  802788:	003eff06 	br	802388 <___vfprintf_internal_r+0x127c>
  80278c:	408001f0 	cmpltui	r2,r8,7
  802790:	402b883a 	mov	r21,r8
  802794:	1001a426 	beq	r2,zero,802e28 <___vfprintf_internal_r+0x1d1c>
  802798:	04402074 	movhi	r17,129
  80279c:	a829883a 	mov	r20,r21
  8027a0:	d8c00615 	stw	r3,24(sp)
  8027a4:	8c41ae04 	addi	r17,r17,1720
  8027a8:	003b1d06 	br	801420 <___vfprintf_internal_r+0x314>
  8027ac:	01c02074 	movhi	r7,129
  8027b0:	a9000450 	cmplti	r4,r21,17
  8027b4:	d8801b17 	ldw	r2,108(sp)
  8027b8:	39c1b104 	addi	r7,r7,1732
  8027bc:	20017f1e 	bne	r4,zero,802dbc <___vfprintf_internal_r+0x1cb0>
  8027c0:	dc000e15 	stw	r16,56(sp)
  8027c4:	07000404 	movi	fp,16
  8027c8:	3821883a 	mov	r16,r7
  8027cc:	00000406 	br	8027e0 <___vfprintf_internal_r+0x16d4>
  8027d0:	b5800204 	addi	r22,r22,8
  8027d4:	ad7ffc04 	addi	r21,r21,-16
  8027d8:	a9000448 	cmpgei	r4,r21,17
  8027dc:	20017526 	beq	r4,zero,802db4 <___vfprintf_internal_r+0x1ca8>
  8027e0:	10800044 	addi	r2,r2,1
  8027e4:	18c00404 	addi	r3,r3,16
  8027e8:	b4000015 	stw	r16,0(r22)
  8027ec:	b7000115 	stw	fp,4(r22)
  8027f0:	d8c01c15 	stw	r3,112(sp)
  8027f4:	d8801b15 	stw	r2,108(sp)
  8027f8:	11000208 	cmpgei	r4,r2,8
  8027fc:	203ff426 	beq	r4,zero,8027d0 <___vfprintf_internal_r+0x16c4>
  802800:	d9801a04 	addi	r6,sp,104
  802804:	900b883a 	mov	r5,r18
  802808:	9809883a 	mov	r4,r19
  80280c:	08084b80 	call	8084b8 <__sprint_r>
  802810:	103b4d1e 	bne	r2,zero,801548 <___vfprintf_internal_r+0x43c>
  802814:	d8c01c17 	ldw	r3,112(sp)
  802818:	d8801b17 	ldw	r2,108(sp)
  80281c:	dd802704 	addi	r22,sp,156
  802820:	003fec06 	br	8027d4 <___vfprintf_internal_r+0x16c8>
  802824:	d8800517 	ldw	r2,20(sp)
  802828:	18800015 	stw	r2,0(r3)
  80282c:	003a6b06 	br	8011dc <___vfprintf_internal_r+0xd0>
  802830:	d9801a04 	addi	r6,sp,104
  802834:	900b883a 	mov	r5,r18
  802838:	9809883a 	mov	r4,r19
  80283c:	08084b80 	call	8084b8 <__sprint_r>
  802840:	103b411e 	bne	r2,zero,801548 <___vfprintf_internal_r+0x43c>
  802844:	d8c01c17 	ldw	r3,112(sp)
  802848:	dd401b17 	ldw	r21,108(sp)
  80284c:	df002704 	addi	fp,sp,156
  802850:	003e3a06 	br	80213c <___vfprintf_internal_r+0x1030>
  802854:	d9801a04 	addi	r6,sp,104
  802858:	900b883a 	mov	r5,r18
  80285c:	9809883a 	mov	r4,r19
  802860:	08084b80 	call	8084b8 <__sprint_r>
  802864:	103b381e 	bne	r2,zero,801548 <___vfprintf_internal_r+0x43c>
  802868:	d8c01c17 	ldw	r3,112(sp)
  80286c:	dd401b17 	ldw	r21,108(sp)
  802870:	df002704 	addi	fp,sp,156
  802874:	003e2606 	br	802110 <___vfprintf_internal_r+0x1004>
  802878:	d8801b17 	ldw	r2,108(sp)
  80287c:	01002074 	movhi	r4,129
  802880:	2101b004 	addi	r4,r4,1728
  802884:	10800044 	addi	r2,r2,1
  802888:	18c00044 	addi	r3,r3,1
  80288c:	b1000015 	stw	r4,0(r22)
  802890:	01000044 	movi	r4,1
  802894:	d8801b15 	stw	r2,108(sp)
  802898:	b1000115 	stw	r4,4(r22)
  80289c:	d8c01c15 	stw	r3,112(sp)
  8028a0:	10800208 	cmpgei	r2,r2,8
  8028a4:	103de11e 	bne	r2,zero,80202c <___vfprintf_internal_r+0xf20>
  8028a8:	b5800204 	addi	r22,r22,8
  8028ac:	003de706 	br	80204c <___vfprintf_internal_r+0xf40>
  8028b0:	d9801a04 	addi	r6,sp,104
  8028b4:	900b883a 	mov	r5,r18
  8028b8:	9809883a 	mov	r4,r19
  8028bc:	da001115 	stw	r8,68(sp)
  8028c0:	db400f15 	stw	r13,60(sp)
  8028c4:	db800e15 	stw	r14,56(sp)
  8028c8:	08084b80 	call	8084b8 <__sprint_r>
  8028cc:	103b1e1e 	bne	r2,zero,801548 <___vfprintf_internal_r+0x43c>
  8028d0:	d8c01c17 	ldw	r3,112(sp)
  8028d4:	da001117 	ldw	r8,68(sp)
  8028d8:	db400f17 	ldw	r13,60(sp)
  8028dc:	db800e17 	ldw	r14,56(sp)
  8028e0:	dd802704 	addi	r22,sp,156
  8028e4:	003adb06 	br	801454 <___vfprintf_internal_r+0x348>
  8028e8:	8825883a 	mov	r18,r17
  8028ec:	003b1606 	br	801548 <___vfprintf_internal_r+0x43c>
  8028f0:	d9000917 	ldw	r4,36(sp)
  8028f4:	d9400a17 	ldw	r5,40(sp)
  8028f8:	da000615 	stw	r8,24(sp)
  8028fc:	200d883a 	mov	r6,r4
  802900:	280f883a 	mov	r7,r5
  802904:	db000415 	stw	r12,16(sp)
  802908:	080da780 	call	80da78 <__unorddf2>
  80290c:	db000417 	ldw	r12,16(sp)
  802910:	da000617 	ldw	r8,24(sp)
  802914:	1002091e 	bne	r2,zero,80313c <___vfprintf_internal_r+0x2030>
  802918:	057ff7c4 	movi	r21,-33
  80291c:	40bfffe0 	cmpeqi	r2,r8,-1
  802920:	e56a703a 	and	r21,fp,r21
  802924:	1001ab1e 	bne	r2,zero,802fd4 <___vfprintf_internal_r+0x1ec8>
  802928:	a88011d8 	cmpnei	r2,r21,71
  80292c:	10015726 	beq	r2,zero,802e8c <___vfprintf_internal_r+0x1d80>
  802930:	60804014 	ori	r2,r12,256
  802934:	d8800415 	stw	r2,16(sp)
  802938:	d8800a17 	ldw	r2,40(sp)
  80293c:	10012d16 	blt	r2,zero,802df4 <___vfprintf_internal_r+0x1ce8>
  802940:	dd000a17 	ldw	r20,40(sp)
  802944:	d8000605 	stb	zero,24(sp)
  802948:	e08019a0 	cmpeqi	r2,fp,102
  80294c:	d8800f15 	stw	r2,60(sp)
  802950:	1000c31e 	bne	r2,zero,802c60 <___vfprintf_internal_r+0x1b54>
  802954:	e08011a0 	cmpeqi	r2,fp,70
  802958:	1000c11e 	bne	r2,zero,802c60 <___vfprintf_internal_r+0x1b54>
  80295c:	a8801158 	cmpnei	r2,r21,69
  802960:	10016226 	beq	r2,zero,802eec <___vfprintf_internal_r+0x1de0>
  802964:	d8801804 	addi	r2,sp,96
  802968:	d8800315 	stw	r2,12(sp)
  80296c:	d9400917 	ldw	r5,36(sp)
  802970:	d8801504 	addi	r2,sp,84
  802974:	d8800215 	stw	r2,8(sp)
  802978:	d8801404 	addi	r2,sp,80
  80297c:	da000015 	stw	r8,0(sp)
  802980:	9809883a 	mov	r4,r19
  802984:	d8800115 	stw	r2,4(sp)
  802988:	01c00084 	movi	r7,2
  80298c:	a00d883a 	mov	r6,r20
  802990:	db000815 	stw	r12,32(sp)
  802994:	da000715 	stw	r8,28(sp)
  802998:	08036500 	call	803650 <_dtoa_r>
  80299c:	da000717 	ldw	r8,28(sp)
  8029a0:	e10019d8 	cmpnei	r4,fp,103
  8029a4:	db000817 	ldw	r12,32(sp)
  8029a8:	1023883a 	mov	r17,r2
  8029ac:	4007883a 	mov	r3,r8
  8029b0:	2001621e 	bne	r4,zero,802f3c <___vfprintf_internal_r+0x1e30>
  8029b4:	6080004c 	andi	r2,r12,1
  8029b8:	1001621e 	bne	r2,zero,802f44 <___vfprintf_internal_r+0x1e38>
  8029bc:	d8801417 	ldw	r2,80(sp)
  8029c0:	ad4011e0 	cmpeqi	r21,r21,71
  8029c4:	d8800715 	stw	r2,28(sp)
  8029c8:	d8801817 	ldw	r2,96(sp)
  8029cc:	1445c83a 	sub	r2,r2,r17
  8029d0:	d8800815 	stw	r2,32(sp)
  8029d4:	a8000526 	beq	r21,zero,8029ec <___vfprintf_internal_r+0x18e0>
  8029d8:	d8c00717 	ldw	r3,28(sp)
  8029dc:	18bfff50 	cmplti	r2,r3,-3
  8029e0:	1000011e 	bne	r2,zero,8029e8 <___vfprintf_internal_r+0x18dc>
  8029e4:	40c1670e 	bge	r8,r3,802f84 <___vfprintf_internal_r+0x1e78>
  8029e8:	e73fff84 	addi	fp,fp,-2
  8029ec:	d8800717 	ldw	r2,28(sp)
  8029f0:	df001645 	stb	fp,89(sp)
  8029f4:	157fffc4 	addi	r21,r2,-1
  8029f8:	dd401415 	stw	r21,80(sp)
  8029fc:	a801c316 	blt	r21,zero,80310c <___vfprintf_internal_r+0x2000>
  802a00:	00800ac4 	movi	r2,43
  802a04:	d8801685 	stb	r2,90(sp)
  802a08:	a8800290 	cmplti	r2,r21,10
  802a0c:	1001b81e 	bne	r2,zero,8030f0 <___vfprintf_internal_r+0x1fe4>
  802a10:	d98019c4 	addi	r6,sp,103
  802a14:	9029883a 	mov	r20,r18
  802a18:	dc400715 	stw	r17,28(sp)
  802a1c:	8025883a 	mov	r18,r16
  802a20:	db000f15 	stw	r12,60(sp)
  802a24:	3021883a 	mov	r16,r6
  802a28:	a809883a 	mov	r4,r21
  802a2c:	01400284 	movi	r5,10
  802a30:	080b35c0 	call	80b35c <__modsi3>
  802a34:	10800c04 	addi	r2,r2,48
  802a38:	a809883a 	mov	r4,r21
  802a3c:	80bfffc5 	stb	r2,-1(r16)
  802a40:	01400284 	movi	r5,10
  802a44:	080b2dc0 	call	80b2dc <__divsi3>
  802a48:	a9001908 	cmpgei	r4,r21,100
  802a4c:	8023883a 	mov	r17,r16
  802a50:	102b883a 	mov	r21,r2
  802a54:	843fffc4 	addi	r16,r16,-1
  802a58:	203ff31e 	bne	r4,zero,802a28 <___vfprintf_internal_r+0x191c>
  802a5c:	800d883a 	mov	r6,r16
  802a60:	11000c04 	addi	r4,r2,48
  802a64:	9021883a 	mov	r16,r18
  802a68:	a025883a 	mov	r18,r20
  802a6c:	8829883a 	mov	r20,r17
  802a70:	a0bfff84 	addi	r2,r20,-2
  802a74:	313fffc5 	stb	r4,-1(r6)
  802a78:	d8c019c4 	addi	r3,sp,103
  802a7c:	db000f17 	ldw	r12,60(sp)
  802a80:	dc400717 	ldw	r17,28(sp)
  802a84:	10c1cd2e 	bgeu	r2,r3,8031bc <___vfprintf_internal_r+0x20b0>
  802a88:	d8c016c4 	addi	r3,sp,91
  802a8c:	00000106 	br	802a94 <___vfprintf_internal_r+0x1988>
  802a90:	11000003 	ldbu	r4,0(r2)
  802a94:	19000005 	stb	r4,0(r3)
  802a98:	10800044 	addi	r2,r2,1
  802a9c:	d90019c4 	addi	r4,sp,103
  802aa0:	18c00044 	addi	r3,r3,1
  802aa4:	113ffa1e 	bne	r2,r4,802a90 <___vfprintf_internal_r+0x1984>
  802aa8:	d8801a44 	addi	r2,sp,105
  802aac:	d8c016c4 	addi	r3,sp,91
  802ab0:	1505c83a 	sub	r2,r2,r20
  802ab4:	1885883a 	add	r2,r3,r2
  802ab8:	d8c01644 	addi	r3,sp,89
  802abc:	10c5c83a 	sub	r2,r2,r3
  802ac0:	d8801015 	stw	r2,64(sp)
  802ac4:	d8c00817 	ldw	r3,32(sp)
  802ac8:	d9001017 	ldw	r4,64(sp)
  802acc:	18800088 	cmpgei	r2,r3,2
  802ad0:	20eb883a 	add	r21,r4,r3
  802ad4:	10019226 	beq	r2,zero,803120 <___vfprintf_internal_r+0x2014>
  802ad8:	d8800b17 	ldw	r2,44(sp)
  802adc:	a8ab883a 	add	r21,r21,r2
  802ae0:	a829883a 	mov	r20,r21
  802ae4:	a800010e 	bge	r21,zero,802aec <___vfprintf_internal_r+0x19e0>
  802ae8:	0029883a 	mov	r20,zero
  802aec:	d8000715 	stw	zero,28(sp)
  802af0:	00008e06 	br	802d2c <___vfprintf_internal_r+0x1c20>
  802af4:	880f883a 	mov	r7,r17
  802af8:	10800044 	addi	r2,r2,1
  802afc:	1d47883a 	add	r3,r3,r21
  802b00:	b1c00015 	stw	r7,0(r22)
  802b04:	003a7906 	br	8014ec <___vfprintf_internal_r+0x3e0>
  802b08:	d9801a04 	addi	r6,sp,104
  802b0c:	900b883a 	mov	r5,r18
  802b10:	9809883a 	mov	r4,r19
  802b14:	08084b80 	call	8084b8 <__sprint_r>
  802b18:	103a8b1e 	bne	r2,zero,801548 <___vfprintf_internal_r+0x43c>
  802b1c:	d8c01c17 	ldw	r3,112(sp)
  802b20:	dd802704 	addi	r22,sp,156
  802b24:	003c8b06 	br	801d54 <___vfprintf_internal_r+0xc48>
  802b28:	d9801a04 	addi	r6,sp,104
  802b2c:	900b883a 	mov	r5,r18
  802b30:	9809883a 	mov	r4,r19
  802b34:	da000e15 	stw	r8,56(sp)
  802b38:	08084b80 	call	8084b8 <__sprint_r>
  802b3c:	103a821e 	bne	r2,zero,801548 <___vfprintf_internal_r+0x43c>
  802b40:	d8c01c17 	ldw	r3,112(sp)
  802b44:	da000e17 	ldw	r8,56(sp)
  802b48:	dd802704 	addi	r22,sp,156
  802b4c:	003a5e06 	br	8014c8 <___vfprintf_internal_r+0x3bc>
  802b50:	8809883a 	mov	r4,r17
  802b54:	db000415 	stw	r12,16(sp)
  802b58:	d8c00615 	stw	r3,24(sp)
  802b5c:	08010740 	call	801074 <strlen>
  802b60:	db000417 	ldw	r12,16(sp)
  802b64:	102b883a 	mov	r21,r2
  802b68:	1029883a 	mov	r20,r2
  802b6c:	003a2c06 	br	801420 <___vfprintf_internal_r+0x314>
  802b70:	d8800d17 	ldw	r2,52(sp)
  802b74:	d9000b17 	ldw	r4,44(sp)
  802b78:	b0800015 	stw	r2,0(r22)
  802b7c:	d8801b17 	ldw	r2,108(sp)
  802b80:	20c7883a 	add	r3,r4,r3
  802b84:	b1000115 	stw	r4,4(r22)
  802b88:	10800044 	addi	r2,r2,1
  802b8c:	d8c01c15 	stw	r3,112(sp)
  802b90:	d8801b15 	stw	r2,108(sp)
  802b94:	11000208 	cmpgei	r4,r2,8
  802b98:	2000bf1e 	bne	r4,zero,802e98 <___vfprintf_internal_r+0x1d8c>
  802b9c:	b5800204 	addi	r22,r22,8
  802ba0:	283d3c0e 	bge	r5,zero,802094 <___vfprintf_internal_r+0xf88>
  802ba4:	01c02074 	movhi	r7,129
  802ba8:	293ffc08 	cmpgei	r4,r5,-16
  802bac:	39c1b104 	addi	r7,r7,1732
  802bb0:	0179c83a 	sub	fp,zero,r5
  802bb4:	2001361e 	bne	r4,zero,803090 <___vfprintf_internal_r+0x1f84>
  802bb8:	dc000715 	stw	r16,28(sp)
  802bbc:	05400404 	movi	r21,16
  802bc0:	9021883a 	mov	r16,r18
  802bc4:	3825883a 	mov	r18,r7
  802bc8:	00000406 	br	802bdc <___vfprintf_internal_r+0x1ad0>
  802bcc:	b5800204 	addi	r22,r22,8
  802bd0:	e73ffc04 	addi	fp,fp,-16
  802bd4:	e1800448 	cmpgei	r6,fp,17
  802bd8:	30012a26 	beq	r6,zero,803084 <___vfprintf_internal_r+0x1f78>
  802bdc:	10800044 	addi	r2,r2,1
  802be0:	18c00404 	addi	r3,r3,16
  802be4:	b4800015 	stw	r18,0(r22)
  802be8:	b5400115 	stw	r21,4(r22)
  802bec:	d8c01c15 	stw	r3,112(sp)
  802bf0:	d8801b15 	stw	r2,108(sp)
  802bf4:	11800208 	cmpgei	r6,r2,8
  802bf8:	303ff426 	beq	r6,zero,802bcc <___vfprintf_internal_r+0x1ac0>
  802bfc:	d9801a04 	addi	r6,sp,104
  802c00:	800b883a 	mov	r5,r16
  802c04:	9809883a 	mov	r4,r19
  802c08:	08084b80 	call	8084b8 <__sprint_r>
  802c0c:	10015f1e 	bne	r2,zero,80318c <___vfprintf_internal_r+0x2080>
  802c10:	d8c01c17 	ldw	r3,112(sp)
  802c14:	d8801b17 	ldw	r2,108(sp)
  802c18:	dd802704 	addi	r22,sp,156
  802c1c:	003fec06 	br	802bd0 <___vfprintf_internal_r+0x1ac4>
  802c20:	800f883a 	mov	r7,r16
  802c24:	dc000717 	ldw	r16,28(sp)
  802c28:	8817883a 	mov	r11,r17
  802c2c:	aa000044 	addi	r8,r21,1
  802c30:	e0800204 	addi	r2,fp,8
  802c34:	1ac7883a 	add	r3,r3,r11
  802c38:	e1c00015 	stw	r7,0(fp)
  802c3c:	e2c00115 	stw	r11,4(fp)
  802c40:	d8c01c15 	stw	r3,112(sp)
  802c44:	da001b15 	stw	r8,108(sp)
  802c48:	41000208 	cmpgei	r4,r8,8
  802c4c:	203eb31e 	bne	r4,zero,80271c <___vfprintf_internal_r+0x1610>
  802c50:	42000044 	addi	r8,r8,1
  802c54:	15800204 	addi	r22,r2,8
  802c58:	1039883a 	mov	fp,r2
  802c5c:	003d5106 	br	8021a4 <___vfprintf_internal_r+0x1098>
  802c60:	d8801804 	addi	r2,sp,96
  802c64:	d8800315 	stw	r2,12(sp)
  802c68:	d9400917 	ldw	r5,36(sp)
  802c6c:	d8801504 	addi	r2,sp,84
  802c70:	d8800215 	stw	r2,8(sp)
  802c74:	d8801404 	addi	r2,sp,80
  802c78:	da000015 	stw	r8,0(sp)
  802c7c:	d8800115 	stw	r2,4(sp)
  802c80:	01c000c4 	movi	r7,3
  802c84:	a00d883a 	mov	r6,r20
  802c88:	9809883a 	mov	r4,r19
  802c8c:	db000815 	stw	r12,32(sp)
  802c90:	da000715 	stw	r8,28(sp)
  802c94:	08036500 	call	803650 <_dtoa_r>
  802c98:	da000717 	ldw	r8,28(sp)
  802c9c:	1023883a 	mov	r17,r2
  802ca0:	db000817 	ldw	r12,32(sp)
  802ca4:	1207883a 	add	r3,r2,r8
  802ca8:	88800007 	ldb	r2,0(r17)
  802cac:	10800c20 	cmpeqi	r2,r2,48
  802cb0:	1000661e 	bne	r2,zero,802e4c <___vfprintf_internal_r+0x1d40>
  802cb4:	d8801417 	ldw	r2,80(sp)
  802cb8:	1893883a 	add	r9,r3,r2
  802cbc:	d9000917 	ldw	r4,36(sp)
  802cc0:	000d883a 	mov	r6,zero
  802cc4:	000f883a 	mov	r7,zero
  802cc8:	a00b883a 	mov	r5,r20
  802ccc:	da401115 	stw	r9,68(sp)
  802cd0:	da000815 	stw	r8,32(sp)
  802cd4:	db000715 	stw	r12,28(sp)
  802cd8:	080c73c0 	call	80c73c <__eqdf2>
  802cdc:	db000717 	ldw	r12,28(sp)
  802ce0:	da000817 	ldw	r8,32(sp)
  802ce4:	da401117 	ldw	r9,68(sp)
  802ce8:	1000981e 	bne	r2,zero,802f4c <___vfprintf_internal_r+0x1e40>
  802cec:	4805883a 	mov	r2,r9
  802cf0:	d8c01417 	ldw	r3,80(sp)
  802cf4:	1445c83a 	sub	r2,r2,r17
  802cf8:	ad4011d8 	cmpnei	r21,r21,71
  802cfc:	d8c00715 	stw	r3,28(sp)
  802d00:	d8800815 	stw	r2,32(sp)
  802d04:	a83f3426 	beq	r21,zero,8029d8 <___vfprintf_internal_r+0x18cc>
  802d08:	d8800f17 	ldw	r2,60(sp)
  802d0c:	103f3726 	beq	r2,zero,8029ec <___vfprintf_internal_r+0x18e0>
  802d10:	d8c00717 	ldw	r3,28(sp)
  802d14:	6080004c 	andi	r2,r12,1
  802d18:	1204b03a 	or	r2,r2,r8
  802d1c:	00c1130e 	bge	zero,r3,80316c <___vfprintf_internal_r+0x2060>
  802d20:	10010e1e 	bne	r2,zero,80315c <___vfprintf_internal_r+0x2050>
  802d24:	dd400717 	ldw	r21,28(sp)
  802d28:	a829883a 	mov	r20,r21
  802d2c:	d8800607 	ldb	r2,24(sp)
  802d30:	10008f26 	beq	r2,zero,802f70 <___vfprintf_internal_r+0x1e64>
  802d34:	00800b44 	movi	r2,45
  802d38:	d8801345 	stb	r2,77(sp)
  802d3c:	d8800e17 	ldw	r2,56(sp)
  802d40:	0011883a 	mov	r8,zero
  802d44:	d8800615 	stw	r2,24(sp)
  802d48:	003b9206 	br	801b94 <___vfprintf_internal_r+0xa88>
  802d4c:	04402074 	movhi	r17,129
  802d50:	8c41a004 	addi	r17,r17,1664
  802d54:	003a8b06 	br	801784 <___vfprintf_internal_r+0x678>
  802d58:	d8800617 	ldw	r2,24(sp)
  802d5c:	d8c00615 	stw	r3,24(sp)
  802d60:	15000017 	ldw	r20,0(r2)
  802d64:	a02bd7fa 	srai	r21,r20,31
  802d68:	a805883a 	mov	r2,r21
  802d6c:	003ae306 	br	8018fc <___vfprintf_internal_r+0x7f0>
  802d70:	d8800617 	ldw	r2,24(sp)
  802d74:	002b883a 	mov	r21,zero
  802d78:	d8c00615 	stw	r3,24(sp)
  802d7c:	15000017 	ldw	r20,0(r2)
  802d80:	0005883a 	mov	r2,zero
  802d84:	003a2406 	br	801618 <___vfprintf_internal_r+0x50c>
  802d88:	d8800617 	ldw	r2,24(sp)
  802d8c:	002b883a 	mov	r21,zero
  802d90:	d8c00615 	stw	r3,24(sp)
  802d94:	15000017 	ldw	r20,0(r2)
  802d98:	00800044 	movi	r2,1
  802d9c:	003a1e06 	br	801618 <___vfprintf_internal_r+0x50c>
  802da0:	d8800617 	ldw	r2,24(sp)
  802da4:	002b883a 	mov	r21,zero
  802da8:	d8c00615 	stw	r3,24(sp)
  802dac:	15000017 	ldw	r20,0(r2)
  802db0:	003af406 	br	801984 <___vfprintf_internal_r+0x878>
  802db4:	800f883a 	mov	r7,r16
  802db8:	dc000e17 	ldw	r16,56(sp)
  802dbc:	10800044 	addi	r2,r2,1
  802dc0:	1d47883a 	add	r3,r3,r21
  802dc4:	d8801b15 	stw	r2,108(sp)
  802dc8:	b1c00015 	stw	r7,0(r22)
  802dcc:	b5400115 	stw	r21,4(r22)
  802dd0:	d8c01c15 	stw	r3,112(sp)
  802dd4:	10800208 	cmpgei	r2,r2,8
  802dd8:	10003a1e 	bne	r2,zero,802ec4 <___vfprintf_internal_r+0x1db8>
  802ddc:	b5800204 	addi	r22,r22,8
  802de0:	003d6c06 	br	802394 <___vfprintf_internal_r+0x1288>
  802de4:	00800b44 	movi	r2,45
  802de8:	d8801345 	stb	r2,77(sp)
  802dec:	03400b44 	movi	r13,45
  802df0:	003a6006 	br	801774 <___vfprintf_internal_r+0x668>
  802df4:	1520003c 	xorhi	r20,r2,32768
  802df8:	00800b44 	movi	r2,45
  802dfc:	d8800605 	stb	r2,24(sp)
  802e00:	003ed106 	br	802948 <___vfprintf_internal_r+0x183c>
  802e04:	d9801a04 	addi	r6,sp,104
  802e08:	900b883a 	mov	r5,r18
  802e0c:	9809883a 	mov	r4,r19
  802e10:	08084b80 	call	8084b8 <__sprint_r>
  802e14:	1039cc1e 	bne	r2,zero,801548 <___vfprintf_internal_r+0x43c>
  802e18:	dd401417 	ldw	r21,80(sp)
  802e1c:	d8c01c17 	ldw	r3,112(sp)
  802e20:	dd802704 	addi	r22,sp,156
  802e24:	003d6a06 	br	8023d0 <___vfprintf_internal_r+0x12c4>
  802e28:	05400184 	movi	r21,6
  802e2c:	003e5a06 	br	802798 <___vfprintf_internal_r+0x168c>
  802e30:	d9801a04 	addi	r6,sp,104
  802e34:	900b883a 	mov	r5,r18
  802e38:	9809883a 	mov	r4,r19
  802e3c:	08084b80 	call	8084b8 <__sprint_r>
  802e40:	0039c106 	br	801548 <___vfprintf_internal_r+0x43c>
  802e44:	d9401345 	stb	r5,77(sp)
  802e48:	00396f06 	br	801408 <___vfprintf_internal_r+0x2fc>
  802e4c:	d9000917 	ldw	r4,36(sp)
  802e50:	000d883a 	mov	r6,zero
  802e54:	000f883a 	mov	r7,zero
  802e58:	a00b883a 	mov	r5,r20
  802e5c:	d8c01115 	stw	r3,68(sp)
  802e60:	da000815 	stw	r8,32(sp)
  802e64:	db000715 	stw	r12,28(sp)
  802e68:	080c73c0 	call	80c73c <__eqdf2>
  802e6c:	db000717 	ldw	r12,28(sp)
  802e70:	da000817 	ldw	r8,32(sp)
  802e74:	d8c01117 	ldw	r3,68(sp)
  802e78:	103f8e26 	beq	r2,zero,802cb4 <___vfprintf_internal_r+0x1ba8>
  802e7c:	00800044 	movi	r2,1
  802e80:	1205c83a 	sub	r2,r2,r8
  802e84:	d8801415 	stw	r2,80(sp)
  802e88:	003f8b06 	br	802cb8 <___vfprintf_internal_r+0x1bac>
  802e8c:	403ea81e 	bne	r8,zero,802930 <___vfprintf_internal_r+0x1824>
  802e90:	02000044 	movi	r8,1
  802e94:	003ea606 	br	802930 <___vfprintf_internal_r+0x1824>
  802e98:	d9801a04 	addi	r6,sp,104
  802e9c:	900b883a 	mov	r5,r18
  802ea0:	9809883a 	mov	r4,r19
  802ea4:	08084b80 	call	8084b8 <__sprint_r>
  802ea8:	1039a71e 	bne	r2,zero,801548 <___vfprintf_internal_r+0x43c>
  802eac:	d9401417 	ldw	r5,80(sp)
  802eb0:	d8c01c17 	ldw	r3,112(sp)
  802eb4:	d8801b17 	ldw	r2,108(sp)
  802eb8:	dd802704 	addi	r22,sp,156
  802ebc:	283c750e 	bge	r5,zero,802094 <___vfprintf_internal_r+0xf88>
  802ec0:	003f3806 	br	802ba4 <___vfprintf_internal_r+0x1a98>
  802ec4:	d9801a04 	addi	r6,sp,104
  802ec8:	900b883a 	mov	r5,r18
  802ecc:	9809883a 	mov	r4,r19
  802ed0:	08084b80 	call	8084b8 <__sprint_r>
  802ed4:	10399c1e 	bne	r2,zero,801548 <___vfprintf_internal_r+0x43c>
  802ed8:	d8c01c17 	ldw	r3,112(sp)
  802edc:	dd802704 	addi	r22,sp,156
  802ee0:	003d2c06 	br	802394 <___vfprintf_internal_r+0x1288>
  802ee4:	db000417 	ldw	r12,16(sp)
  802ee8:	003a9106 	br	801930 <___vfprintf_internal_r+0x824>
  802eec:	d8801804 	addi	r2,sp,96
  802ef0:	d8800315 	stw	r2,12(sp)
  802ef4:	d9400917 	ldw	r5,36(sp)
  802ef8:	d8801504 	addi	r2,sp,84
  802efc:	40c00044 	addi	r3,r8,1
  802f00:	d8800215 	stw	r2,8(sp)
  802f04:	d8801404 	addi	r2,sp,80
  802f08:	d8c00015 	stw	r3,0(sp)
  802f0c:	d8800115 	stw	r2,4(sp)
  802f10:	01c00084 	movi	r7,2
  802f14:	a00d883a 	mov	r6,r20
  802f18:	9809883a 	mov	r4,r19
  802f1c:	db001115 	stw	r12,68(sp)
  802f20:	da000815 	stw	r8,32(sp)
  802f24:	d8c00715 	stw	r3,28(sp)
  802f28:	08036500 	call	803650 <_dtoa_r>
  802f2c:	d8c00717 	ldw	r3,28(sp)
  802f30:	da000817 	ldw	r8,32(sp)
  802f34:	db001117 	ldw	r12,68(sp)
  802f38:	1023883a 	mov	r17,r2
  802f3c:	e08011d8 	cmpnei	r2,fp,71
  802f40:	103e9c26 	beq	r2,zero,8029b4 <___vfprintf_internal_r+0x18a8>
  802f44:	88d3883a 	add	r9,r17,r3
  802f48:	003f5c06 	br	802cbc <___vfprintf_internal_r+0x1bb0>
  802f4c:	d8801817 	ldw	r2,96(sp)
  802f50:	127f672e 	bgeu	r2,r9,802cf0 <___vfprintf_internal_r+0x1be4>
  802f54:	01000c04 	movi	r4,48
  802f58:	10c00044 	addi	r3,r2,1
  802f5c:	d8c01815 	stw	r3,96(sp)
  802f60:	11000005 	stb	r4,0(r2)
  802f64:	d8801817 	ldw	r2,96(sp)
  802f68:	127ffb36 	bltu	r2,r9,802f58 <___vfprintf_internal_r+0x1e4c>
  802f6c:	003f6006 	br	802cf0 <___vfprintf_internal_r+0x1be4>
  802f70:	d8800e17 	ldw	r2,56(sp)
  802f74:	db401343 	ldbu	r13,77(sp)
  802f78:	0011883a 	mov	r8,zero
  802f7c:	d8800615 	stw	r2,24(sp)
  802f80:	003b0006 	br	801b84 <___vfprintf_internal_r+0xa78>
  802f84:	d8800717 	ldw	r2,28(sp)
  802f88:	d8c00817 	ldw	r3,32(sp)
  802f8c:	10c02216 	blt	r2,r3,803018 <___vfprintf_internal_r+0x1f0c>
  802f90:	6300004c 	andi	r12,r12,1
  802f94:	60004f1e 	bne	r12,zero,8030d4 <___vfprintf_internal_r+0x1fc8>
  802f98:	1029883a 	mov	r20,r2
  802f9c:	1000010e 	bge	r2,zero,802fa4 <___vfprintf_internal_r+0x1e98>
  802fa0:	0029883a 	mov	r20,zero
  802fa4:	dd400717 	ldw	r21,28(sp)
  802fa8:	070019c4 	movi	fp,103
  802fac:	003f5f06 	br	802d2c <___vfprintf_internal_r+0x1c20>
  802fb0:	d9801a04 	addi	r6,sp,104
  802fb4:	900b883a 	mov	r5,r18
  802fb8:	9809883a 	mov	r4,r19
  802fbc:	08084b80 	call	8084b8 <__sprint_r>
  802fc0:	1039611e 	bne	r2,zero,801548 <___vfprintf_internal_r+0x43c>
  802fc4:	d8c01c17 	ldw	r3,112(sp)
  802fc8:	dd802704 	addi	r22,sp,156
  802fcc:	a83cee0e 	bge	r21,zero,802388 <___vfprintf_internal_r+0x127c>
  802fd0:	003dec06 	br	802784 <___vfprintf_internal_r+0x1678>
  802fd4:	02000184 	movi	r8,6
  802fd8:	003e5506 	br	802930 <___vfprintf_internal_r+0x1824>
  802fdc:	d9801a04 	addi	r6,sp,104
  802fe0:	900b883a 	mov	r5,r18
  802fe4:	9809883a 	mov	r4,r19
  802fe8:	08084b80 	call	8084b8 <__sprint_r>
  802fec:	1039561e 	bne	r2,zero,801548 <___vfprintf_internal_r+0x43c>
  802ff0:	d8801417 	ldw	r2,80(sp)
  802ff4:	d9000817 	ldw	r4,32(sp)
  802ff8:	d8c01c17 	ldw	r3,112(sp)
  802ffc:	dd802704 	addi	r22,sp,156
  803000:	2085c83a 	sub	r2,r4,r2
  803004:	003d0606 	br	802420 <___vfprintf_internal_r+0x1314>
  803008:	4029883a 	mov	r20,r8
  80300c:	d8c00615 	stw	r3,24(sp)
  803010:	402b883a 	mov	r21,r8
  803014:	00390206 	br	801420 <___vfprintf_internal_r+0x314>
  803018:	d8800817 	ldw	r2,32(sp)
  80301c:	d8c00b17 	ldw	r3,44(sp)
  803020:	10eb883a 	add	r21,r2,r3
  803024:	d8800717 	ldw	r2,28(sp)
  803028:	00800316 	blt	zero,r2,803038 <___vfprintf_internal_r+0x1f2c>
  80302c:	d8800717 	ldw	r2,28(sp)
  803030:	a8abc83a 	sub	r21,r21,r2
  803034:	ad400044 	addi	r21,r21,1
  803038:	a829883a 	mov	r20,r21
  80303c:	a8002a16 	blt	r21,zero,8030e8 <___vfprintf_internal_r+0x1fdc>
  803040:	070019c4 	movi	fp,103
  803044:	003f3906 	br	802d2c <___vfprintf_internal_r+0x1c20>
  803048:	d9401345 	stb	r5,77(sp)
  80304c:	003a2306 	br	8018dc <___vfprintf_internal_r+0x7d0>
  803050:	d9401345 	stb	r5,77(sp)
  803054:	003b1806 	br	801cb8 <___vfprintf_internal_r+0xbac>
  803058:	d9401345 	stb	r5,77(sp)
  80305c:	003a8e06 	br	801a98 <___vfprintf_internal_r+0x98c>
  803060:	d9401345 	stb	r5,77(sp)
  803064:	003a3d06 	br	80195c <___vfprintf_internal_r+0x850>
  803068:	d9401345 	stb	r5,77(sp)
  80306c:	003a7606 	br	801a48 <___vfprintf_internal_r+0x93c>
  803070:	d9401345 	stb	r5,77(sp)
  803074:	00399406 	br	8016c8 <___vfprintf_internal_r+0x5bc>
  803078:	00bfffc4 	movi	r2,-1
  80307c:	d8800515 	stw	r2,20(sp)
  803080:	00393406 	br	801554 <___vfprintf_internal_r+0x448>
  803084:	900f883a 	mov	r7,r18
  803088:	8025883a 	mov	r18,r16
  80308c:	dc000717 	ldw	r16,28(sp)
  803090:	10800044 	addi	r2,r2,1
  803094:	1f07883a 	add	r3,r3,fp
  803098:	b1c00015 	stw	r7,0(r22)
  80309c:	b7000115 	stw	fp,4(r22)
  8030a0:	d8c01c15 	stw	r3,112(sp)
  8030a4:	d8801b15 	stw	r2,108(sp)
  8030a8:	11000208 	cmpgei	r4,r2,8
  8030ac:	203bf826 	beq	r4,zero,802090 <___vfprintf_internal_r+0xf84>
  8030b0:	d9801a04 	addi	r6,sp,104
  8030b4:	900b883a 	mov	r5,r18
  8030b8:	9809883a 	mov	r4,r19
  8030bc:	08084b80 	call	8084b8 <__sprint_r>
  8030c0:	1039211e 	bne	r2,zero,801548 <___vfprintf_internal_r+0x43c>
  8030c4:	d8c01c17 	ldw	r3,112(sp)
  8030c8:	d8801b17 	ldw	r2,108(sp)
  8030cc:	dd802704 	addi	r22,sp,156
  8030d0:	003bf006 	br	802094 <___vfprintf_internal_r+0xf88>
  8030d4:	d8800717 	ldw	r2,28(sp)
  8030d8:	d8c00b17 	ldw	r3,44(sp)
  8030dc:	10eb883a 	add	r21,r2,r3
  8030e0:	a829883a 	mov	r20,r21
  8030e4:	a83fd60e 	bge	r21,zero,803040 <___vfprintf_internal_r+0x1f34>
  8030e8:	0029883a 	mov	r20,zero
  8030ec:	003fd406 	br	803040 <___vfprintf_internal_r+0x1f34>
  8030f0:	00800c04 	movi	r2,48
  8030f4:	ad400c04 	addi	r21,r21,48
  8030f8:	d88016c5 	stb	r2,91(sp)
  8030fc:	00800104 	movi	r2,4
  803100:	dd401705 	stb	r21,92(sp)
  803104:	d8801015 	stw	r2,64(sp)
  803108:	003e6e06 	br	802ac4 <___vfprintf_internal_r+0x19b8>
  80310c:	05400044 	movi	r21,1
  803110:	a8abc83a 	sub	r21,r21,r2
  803114:	00800b44 	movi	r2,45
  803118:	d8801685 	stb	r2,90(sp)
  80311c:	003e3a06 	br	802a08 <___vfprintf_internal_r+0x18fc>
  803120:	6080004c 	andi	r2,r12,1
  803124:	d8800715 	stw	r2,28(sp)
  803128:	103e6b1e 	bne	r2,zero,802ad8 <___vfprintf_internal_r+0x19cc>
  80312c:	a829883a 	mov	r20,r21
  803130:	a83efe0e 	bge	r21,zero,802d2c <___vfprintf_internal_r+0x1c20>
  803134:	0029883a 	mov	r20,zero
  803138:	003efc06 	br	802d2c <___vfprintf_internal_r+0x1c20>
  80313c:	d8800a17 	ldw	r2,40(sp)
  803140:	10001a16 	blt	r2,zero,8031ac <___vfprintf_internal_r+0x20a0>
  803144:	db401343 	ldbu	r13,77(sp)
  803148:	e0801210 	cmplti	r2,fp,72
  80314c:	1000141e 	bne	r2,zero,8031a0 <___vfprintf_internal_r+0x2094>
  803150:	04402074 	movhi	r17,129
  803154:	8c41a304 	addi	r17,r17,1676
  803158:	00398a06 	br	801784 <___vfprintf_internal_r+0x678>
  80315c:	d8800b17 	ldw	r2,44(sp)
  803160:	18ab883a 	add	r21,r3,r2
  803164:	aa2b883a 	add	r21,r21,r8
  803168:	003ff006 	br	80312c <___vfprintf_internal_r+0x2020>
  80316c:	1000031e 	bne	r2,zero,80317c <___vfprintf_internal_r+0x2070>
  803170:	05000044 	movi	r20,1
  803174:	05400044 	movi	r21,1
  803178:	003eec06 	br	802d2c <___vfprintf_internal_r+0x1c20>
  80317c:	d8800b17 	ldw	r2,44(sp)
  803180:	15400044 	addi	r21,r2,1
  803184:	aa2b883a 	add	r21,r21,r8
  803188:	003fe806 	br	80312c <___vfprintf_internal_r+0x2020>
  80318c:	8025883a 	mov	r18,r16
  803190:	0038ed06 	br	801548 <___vfprintf_internal_r+0x43c>
  803194:	b005883a 	mov	r2,r22
  803198:	39c1b104 	addi	r7,r7,1732
  80319c:	003ea506 	br	802c34 <___vfprintf_internal_r+0x1b28>
  8031a0:	04402074 	movhi	r17,129
  8031a4:	8c41a204 	addi	r17,r17,1672
  8031a8:	00397606 	br	801784 <___vfprintf_internal_r+0x678>
  8031ac:	00800b44 	movi	r2,45
  8031b0:	d8801345 	stb	r2,77(sp)
  8031b4:	03400b44 	movi	r13,45
  8031b8:	003fe306 	br	803148 <___vfprintf_internal_r+0x203c>
  8031bc:	00800084 	movi	r2,2
  8031c0:	d8801015 	stw	r2,64(sp)
  8031c4:	003e3f06 	br	802ac4 <___vfprintf_internal_r+0x19b8>
  8031c8:	d8c00617 	ldw	r3,24(sp)
  8031cc:	1a000017 	ldw	r8,0(r3)
  8031d0:	18c00104 	addi	r3,r3,4
  8031d4:	4000010e 	bge	r8,zero,8031dc <___vfprintf_internal_r+0x20d0>
  8031d8:	023fffc4 	movi	r8,-1
  8031dc:	bf000043 	ldbu	fp,1(r23)
  8031e0:	d8c00615 	stw	r3,24(sp)
  8031e4:	102f883a 	mov	r23,r2
  8031e8:	e2c03fcc 	andi	r11,fp,255
  8031ec:	5ac0201c 	xori	r11,r11,128
  8031f0:	5affe004 	addi	r11,r11,-128
  8031f4:	00381106 	br	80123c <___vfprintf_internal_r+0x130>

008031f8 <__vfprintf_internal>:
  8031f8:	00c02074 	movhi	r3,129
  8031fc:	2005883a 	mov	r2,r4
  803200:	1909dc17 	ldw	r4,10096(r3)
  803204:	300f883a 	mov	r7,r6
  803208:	280d883a 	mov	r6,r5
  80320c:	100b883a 	mov	r5,r2
  803210:	080110c1 	jmpi	80110c <___vfprintf_internal_r>

00803214 <__sbprintf>:
  803214:	2880030b 	ldhu	r2,12(r5)
  803218:	2b001917 	ldw	r12,100(r5)
  80321c:	2ac0038b 	ldhu	r11,14(r5)
  803220:	2a800717 	ldw	r10,28(r5)
  803224:	2a400917 	ldw	r9,36(r5)
  803228:	defee204 	addi	sp,sp,-1144
  80322c:	da001a04 	addi	r8,sp,104
  803230:	00c10004 	movi	r3,1024
  803234:	dc011a15 	stw	r16,1128(sp)
  803238:	10bfff4c 	andi	r2,r2,65533
  80323c:	2821883a 	mov	r16,r5
  803240:	d80b883a 	mov	r5,sp
  803244:	dc811c15 	stw	r18,1136(sp)
  803248:	dc411b15 	stw	r17,1132(sp)
  80324c:	dfc11d15 	stw	ra,1140(sp)
  803250:	2025883a 	mov	r18,r4
  803254:	d880030d 	sth	r2,12(sp)
  803258:	db001915 	stw	r12,100(sp)
  80325c:	dac0038d 	sth	r11,14(sp)
  803260:	da800715 	stw	r10,28(sp)
  803264:	da400915 	stw	r9,36(sp)
  803268:	da000015 	stw	r8,0(sp)
  80326c:	da000415 	stw	r8,16(sp)
  803270:	d8c00215 	stw	r3,8(sp)
  803274:	d8c00515 	stw	r3,20(sp)
  803278:	d8000615 	stw	zero,24(sp)
  80327c:	080110c0 	call	80110c <___vfprintf_internal_r>
  803280:	1023883a 	mov	r17,r2
  803284:	10000d0e 	bge	r2,zero,8032bc <__sbprintf+0xa8>
  803288:	d880030b 	ldhu	r2,12(sp)
  80328c:	1080100c 	andi	r2,r2,64
  803290:	10000326 	beq	r2,zero,8032a0 <__sbprintf+0x8c>
  803294:	8080030b 	ldhu	r2,12(r16)
  803298:	10801014 	ori	r2,r2,64
  80329c:	8080030d 	sth	r2,12(r16)
  8032a0:	8805883a 	mov	r2,r17
  8032a4:	dfc11d17 	ldw	ra,1140(sp)
  8032a8:	dc811c17 	ldw	r18,1136(sp)
  8032ac:	dc411b17 	ldw	r17,1132(sp)
  8032b0:	dc011a17 	ldw	r16,1128(sp)
  8032b4:	dec11e04 	addi	sp,sp,1144
  8032b8:	f800283a 	ret
  8032bc:	d80b883a 	mov	r5,sp
  8032c0:	9009883a 	mov	r4,r18
  8032c4:	0804fc80 	call	804fc8 <_fflush_r>
  8032c8:	103fef26 	beq	r2,zero,803288 <__sbprintf+0x74>
  8032cc:	047fffc4 	movi	r17,-1
  8032d0:	003fed06 	br	803288 <__sbprintf+0x74>

008032d4 <__swsetup_r>:
  8032d4:	00802074 	movhi	r2,129
  8032d8:	1089dc17 	ldw	r2,10096(r2)
  8032dc:	defffd04 	addi	sp,sp,-12
  8032e0:	dc400115 	stw	r17,4(sp)
  8032e4:	dc000015 	stw	r16,0(sp)
  8032e8:	dfc00215 	stw	ra,8(sp)
  8032ec:	2023883a 	mov	r17,r4
  8032f0:	2821883a 	mov	r16,r5
  8032f4:	10000226 	beq	r2,zero,803300 <__swsetup_r+0x2c>
  8032f8:	10c00e17 	ldw	r3,56(r2)
  8032fc:	18003326 	beq	r3,zero,8033cc <__swsetup_r+0xf8>
  803300:	8180030b 	ldhu	r6,12(r16)
  803304:	30c0020c 	andi	r3,r6,8
  803308:	3005883a 	mov	r2,r6
  80330c:	18000f26 	beq	r3,zero,80334c <__swsetup_r+0x78>
  803310:	80c00417 	ldw	r3,16(r16)
  803314:	18001626 	beq	r3,zero,803370 <__swsetup_r+0x9c>
  803318:	1100004c 	andi	r4,r2,1
  80331c:	20001f1e 	bne	r4,zero,80339c <__swsetup_r+0xc8>
  803320:	1100008c 	andi	r4,r2,2
  803324:	20002c1e 	bne	r4,zero,8033d8 <__swsetup_r+0x104>
  803328:	81000517 	ldw	r4,20(r16)
  80332c:	81000215 	stw	r4,8(r16)
  803330:	18001f26 	beq	r3,zero,8033b0 <__swsetup_r+0xdc>
  803334:	0005883a 	mov	r2,zero
  803338:	dfc00217 	ldw	ra,8(sp)
  80333c:	dc400117 	ldw	r17,4(sp)
  803340:	dc000017 	ldw	r16,0(sp)
  803344:	dec00304 	addi	sp,sp,12
  803348:	f800283a 	ret
  80334c:	3080040c 	andi	r2,r6,16
  803350:	10003126 	beq	r2,zero,803418 <__swsetup_r+0x144>
  803354:	3080010c 	andi	r2,r6,4
  803358:	1000211e 	bne	r2,zero,8033e0 <__swsetup_r+0x10c>
  80335c:	80c00417 	ldw	r3,16(r16)
  803360:	30800214 	ori	r2,r6,8
  803364:	8080030d 	sth	r2,12(r16)
  803368:	100d883a 	mov	r6,r2
  80336c:	183fea1e 	bne	r3,zero,803318 <__swsetup_r+0x44>
  803370:	1100a00c 	andi	r4,r2,640
  803374:	21008020 	cmpeqi	r4,r4,512
  803378:	203fe71e 	bne	r4,zero,803318 <__swsetup_r+0x44>
  80337c:	8809883a 	mov	r4,r17
  803380:	800b883a 	mov	r5,r16
  803384:	0805e800 	call	805e80 <__smakebuf_r>
  803388:	8180030b 	ldhu	r6,12(r16)
  80338c:	80c00417 	ldw	r3,16(r16)
  803390:	3005883a 	mov	r2,r6
  803394:	1100004c 	andi	r4,r2,1
  803398:	203fe126 	beq	r4,zero,803320 <__swsetup_r+0x4c>
  80339c:	81000517 	ldw	r4,20(r16)
  8033a0:	80000215 	stw	zero,8(r16)
  8033a4:	0109c83a 	sub	r4,zero,r4
  8033a8:	81000615 	stw	r4,24(r16)
  8033ac:	183fe11e 	bne	r3,zero,803334 <__swsetup_r+0x60>
  8033b0:	10c0200c 	andi	r3,r2,128
  8033b4:	0005883a 	mov	r2,zero
  8033b8:	183fdf26 	beq	r3,zero,803338 <__swsetup_r+0x64>
  8033bc:	31801014 	ori	r6,r6,64
  8033c0:	8180030d 	sth	r6,12(r16)
  8033c4:	00bfffc4 	movi	r2,-1
  8033c8:	003fdb06 	br	803338 <__swsetup_r+0x64>
  8033cc:	1009883a 	mov	r4,r2
  8033d0:	080535c0 	call	80535c <__sinit>
  8033d4:	003fca06 	br	803300 <__swsetup_r+0x2c>
  8033d8:	0009883a 	mov	r4,zero
  8033dc:	003fd306 	br	80332c <__swsetup_r+0x58>
  8033e0:	81400c17 	ldw	r5,48(r16)
  8033e4:	28000626 	beq	r5,zero,803400 <__swsetup_r+0x12c>
  8033e8:	80801004 	addi	r2,r16,64
  8033ec:	28800326 	beq	r5,r2,8033fc <__swsetup_r+0x128>
  8033f0:	8809883a 	mov	r4,r17
  8033f4:	08054c00 	call	8054c0 <_free_r>
  8033f8:	8180030b 	ldhu	r6,12(r16)
  8033fc:	80000c15 	stw	zero,48(r16)
  803400:	80c00417 	ldw	r3,16(r16)
  803404:	00bff6c4 	movi	r2,-37
  803408:	118c703a 	and	r6,r2,r6
  80340c:	80000115 	stw	zero,4(r16)
  803410:	80c00015 	stw	r3,0(r16)
  803414:	003fd206 	br	803360 <__swsetup_r+0x8c>
  803418:	00800244 	movi	r2,9
  80341c:	88800015 	stw	r2,0(r17)
  803420:	31801014 	ori	r6,r6,64
  803424:	8180030d 	sth	r6,12(r16)
  803428:	00bfffc4 	movi	r2,-1
  80342c:	003fc206 	br	803338 <__swsetup_r+0x64>

00803430 <quorem>:
  803430:	defff204 	addi	sp,sp,-56
  803434:	dc400515 	stw	r17,20(sp)
  803438:	20800417 	ldw	r2,16(r4)
  80343c:	2c400417 	ldw	r17,16(r5)
  803440:	dfc00d15 	stw	ra,52(sp)
  803444:	df000c15 	stw	fp,48(sp)
  803448:	ddc00b15 	stw	r23,44(sp)
  80344c:	dd800a15 	stw	r22,40(sp)
  803450:	dd400915 	stw	r21,36(sp)
  803454:	dd000815 	stw	r20,32(sp)
  803458:	dcc00715 	stw	r19,28(sp)
  80345c:	dc800615 	stw	r18,24(sp)
  803460:	dc000415 	stw	r16,16(sp)
  803464:	d9000115 	stw	r4,4(sp)
  803468:	d9400215 	stw	r5,8(sp)
  80346c:	14407616 	blt	r2,r17,803648 <quorem+0x218>
  803470:	8c7fffc4 	addi	r17,r17,-1
  803474:	882a90ba 	slli	r21,r17,2
  803478:	2f000504 	addi	fp,r5,20
  80347c:	25800504 	addi	r22,r4,20
  803480:	e565883a 	add	r18,fp,r21
  803484:	b545883a 	add	r2,r22,r21
  803488:	95c00017 	ldw	r23,0(r18)
  80348c:	15000017 	ldw	r20,0(r2)
  803490:	dd800015 	stw	r22,0(sp)
  803494:	bdc00044 	addi	r23,r23,1
  803498:	b80b883a 	mov	r5,r23
  80349c:	a009883a 	mov	r4,r20
  8034a0:	d8800315 	stw	r2,12(sp)
  8034a4:	080b3d00 	call	80b3d0 <__udivsi3>
  8034a8:	1021883a 	mov	r16,r2
  8034ac:	a5c02f36 	bltu	r20,r23,80356c <quorem+0x13c>
  8034b0:	e029883a 	mov	r20,fp
  8034b4:	002b883a 	mov	r21,zero
  8034b8:	002f883a 	mov	r23,zero
  8034bc:	a4c00017 	ldw	r19,0(r20)
  8034c0:	800b883a 	mov	r5,r16
  8034c4:	b5800104 	addi	r22,r22,4
  8034c8:	993fffcc 	andi	r4,r19,65535
  8034cc:	0800f080 	call	800f08 <__mulsi3>
  8034d0:	9808d43a 	srli	r4,r19,16
  8034d4:	800b883a 	mov	r5,r16
  8034d8:	156b883a 	add	r21,r2,r21
  8034dc:	0800f080 	call	800f08 <__mulsi3>
  8034e0:	b0ffff17 	ldw	r3,-4(r22)
  8034e4:	a80ad43a 	srli	r5,r21,16
  8034e8:	a93fffcc 	andi	r4,r21,65535
  8034ec:	19bfffcc 	andi	r6,r3,65535
  8034f0:	b909c83a 	sub	r4,r23,r4
  8034f4:	2189883a 	add	r4,r4,r6
  8034f8:	1806d43a 	srli	r3,r3,16
  8034fc:	1145883a 	add	r2,r2,r5
  803500:	200bd43a 	srai	r5,r4,16
  803504:	11bfffcc 	andi	r6,r2,65535
  803508:	1987c83a 	sub	r3,r3,r6
  80350c:	1947883a 	add	r3,r3,r5
  803510:	180a943a 	slli	r5,r3,16
  803514:	213fffcc 	andi	r4,r4,65535
  803518:	a5000104 	addi	r20,r20,4
  80351c:	2908b03a 	or	r4,r5,r4
  803520:	b13fff15 	stw	r4,-4(r22)
  803524:	102ad43a 	srli	r21,r2,16
  803528:	182fd43a 	srai	r23,r3,16
  80352c:	953fe32e 	bgeu	r18,r20,8034bc <quorem+0x8c>
  803530:	d8c00317 	ldw	r3,12(sp)
  803534:	18800017 	ldw	r2,0(r3)
  803538:	10000c1e 	bne	r2,zero,80356c <quorem+0x13c>
  80353c:	d8800017 	ldw	r2,0(sp)
  803540:	1d7fff04 	addi	r21,r3,-4
  803544:	15400436 	bltu	r2,r21,803558 <quorem+0x128>
  803548:	00000606 	br	803564 <quorem+0x134>
  80354c:	d8800017 	ldw	r2,0(sp)
  803550:	8c7fffc4 	addi	r17,r17,-1
  803554:	1540032e 	bgeu	r2,r21,803564 <quorem+0x134>
  803558:	a8800017 	ldw	r2,0(r21)
  80355c:	ad7fff04 	addi	r21,r21,-4
  803560:	103ffa26 	beq	r2,zero,80354c <quorem+0x11c>
  803564:	d8800117 	ldw	r2,4(sp)
  803568:	14400415 	stw	r17,16(r2)
  80356c:	d9400217 	ldw	r5,8(sp)
  803570:	d9000117 	ldw	r4,4(sp)
  803574:	08075a00 	call	8075a0 <__mcmp>
  803578:	10002616 	blt	r2,zero,803614 <quorem+0x1e4>
  80357c:	d9800017 	ldw	r6,0(sp)
  803580:	84000044 	addi	r16,r16,1
  803584:	0007883a 	mov	r3,zero
  803588:	e1000017 	ldw	r4,0(fp)
  80358c:	31400017 	ldw	r5,0(r6)
  803590:	31800104 	addi	r6,r6,4
  803594:	20bfffcc 	andi	r2,r4,65535
  803598:	1887c83a 	sub	r3,r3,r2
  80359c:	28bfffcc 	andi	r2,r5,65535
  8035a0:	1885883a 	add	r2,r3,r2
  8035a4:	2008d43a 	srli	r4,r4,16
  8035a8:	2806d43a 	srli	r3,r5,16
  8035ac:	100fd43a 	srai	r7,r2,16
  8035b0:	117fffcc 	andi	r5,r2,65535
  8035b4:	1907c83a 	sub	r3,r3,r4
  8035b8:	19c7883a 	add	r3,r3,r7
  8035bc:	1804943a 	slli	r2,r3,16
  8035c0:	e7000104 	addi	fp,fp,4
  8035c4:	1807d43a 	srai	r3,r3,16
  8035c8:	1144b03a 	or	r2,r2,r5
  8035cc:	30bfff15 	stw	r2,-4(r6)
  8035d0:	973fed2e 	bgeu	r18,fp,803588 <quorem+0x158>
  8035d4:	880490ba 	slli	r2,r17,2
  8035d8:	d9000017 	ldw	r4,0(sp)
  8035dc:	2085883a 	add	r2,r4,r2
  8035e0:	10c00017 	ldw	r3,0(r2)
  8035e4:	18000b1e 	bne	r3,zero,803614 <quorem+0x1e4>
  8035e8:	10bfff04 	addi	r2,r2,-4
  8035ec:	20800436 	bltu	r4,r2,803600 <quorem+0x1d0>
  8035f0:	00000606 	br	80360c <quorem+0x1dc>
  8035f4:	d8c00017 	ldw	r3,0(sp)
  8035f8:	8c7fffc4 	addi	r17,r17,-1
  8035fc:	1880032e 	bgeu	r3,r2,80360c <quorem+0x1dc>
  803600:	10c00017 	ldw	r3,0(r2)
  803604:	10bfff04 	addi	r2,r2,-4
  803608:	183ffa26 	beq	r3,zero,8035f4 <quorem+0x1c4>
  80360c:	d8800117 	ldw	r2,4(sp)
  803610:	14400415 	stw	r17,16(r2)
  803614:	8005883a 	mov	r2,r16
  803618:	dfc00d17 	ldw	ra,52(sp)
  80361c:	df000c17 	ldw	fp,48(sp)
  803620:	ddc00b17 	ldw	r23,44(sp)
  803624:	dd800a17 	ldw	r22,40(sp)
  803628:	dd400917 	ldw	r21,36(sp)
  80362c:	dd000817 	ldw	r20,32(sp)
  803630:	dcc00717 	ldw	r19,28(sp)
  803634:	dc800617 	ldw	r18,24(sp)
  803638:	dc400517 	ldw	r17,20(sp)
  80363c:	dc000417 	ldw	r16,16(sp)
  803640:	dec00e04 	addi	sp,sp,56
  803644:	f800283a 	ret
  803648:	0005883a 	mov	r2,zero
  80364c:	003ff206 	br	803618 <quorem+0x1e8>

00803650 <_dtoa_r>:
  803650:	20801017 	ldw	r2,64(r4)
  803654:	deffe204 	addi	sp,sp,-120
  803658:	ddc01b15 	stw	r23,108(sp)
  80365c:	dd001815 	stw	r20,96(sp)
  803660:	dc801615 	stw	r18,88(sp)
  803664:	dc401515 	stw	r17,84(sp)
  803668:	dc001415 	stw	r16,80(sp)
  80366c:	dfc01d15 	stw	ra,116(sp)
  803670:	df001c15 	stw	fp,112(sp)
  803674:	dd801a15 	stw	r22,104(sp)
  803678:	dd401915 	stw	r21,100(sp)
  80367c:	dcc01715 	stw	r19,92(sp)
  803680:	d9c00115 	stw	r7,4(sp)
  803684:	dc002017 	ldw	r16,128(sp)
  803688:	202f883a 	mov	r23,r4
  80368c:	3025883a 	mov	r18,r6
  803690:	2829883a 	mov	r20,r5
  803694:	3023883a 	mov	r17,r6
  803698:	10000826 	beq	r2,zero,8036bc <_dtoa_r+0x6c>
  80369c:	21801117 	ldw	r6,68(r4)
  8036a0:	00c00044 	movi	r3,1
  8036a4:	100b883a 	mov	r5,r2
  8036a8:	1986983a 	sll	r3,r3,r6
  8036ac:	11800115 	stw	r6,4(r2)
  8036b0:	10c00215 	stw	r3,8(r2)
  8036b4:	0806c340 	call	806c34 <_Bfree>
  8036b8:	b8001015 	stw	zero,64(r23)
  8036bc:	90018616 	blt	r18,zero,803cd8 <_dtoa_r+0x688>
  8036c0:	80000015 	stw	zero,0(r16)
  8036c4:	909ffc2c 	andhi	r2,r18,32752
  8036c8:	00dffc34 	movhi	r3,32752
  8036cc:	10c18b26 	beq	r2,r3,803cfc <_dtoa_r+0x6ac>
  8036d0:	000d883a 	mov	r6,zero
  8036d4:	000f883a 	mov	r7,zero
  8036d8:	a009883a 	mov	r4,r20
  8036dc:	880b883a 	mov	r5,r17
  8036e0:	080c73c0 	call	80c73c <__eqdf2>
  8036e4:	1000181e 	bne	r2,zero,803748 <_dtoa_r+0xf8>
  8036e8:	d8c01f17 	ldw	r3,124(sp)
  8036ec:	00800044 	movi	r2,1
  8036f0:	18800015 	stw	r2,0(r3)
  8036f4:	d8802117 	ldw	r2,132(sp)
  8036f8:	10030b26 	beq	r2,zero,804328 <_dtoa_r+0xcd8>
  8036fc:	d8c02117 	ldw	r3,132(sp)
  803700:	00802074 	movhi	r2,129
  803704:	1081b044 	addi	r2,r2,1729
  803708:	07002074 	movhi	fp,129
  80370c:	18800015 	stw	r2,0(r3)
  803710:	e701b004 	addi	fp,fp,1728
  803714:	e005883a 	mov	r2,fp
  803718:	dfc01d17 	ldw	ra,116(sp)
  80371c:	df001c17 	ldw	fp,112(sp)
  803720:	ddc01b17 	ldw	r23,108(sp)
  803724:	dd801a17 	ldw	r22,104(sp)
  803728:	dd401917 	ldw	r21,100(sp)
  80372c:	dd001817 	ldw	r20,96(sp)
  803730:	dcc01717 	ldw	r19,92(sp)
  803734:	dc801617 	ldw	r18,88(sp)
  803738:	dc401517 	ldw	r17,84(sp)
  80373c:	dc001417 	ldw	r16,80(sp)
  803740:	dec01e04 	addi	sp,sp,120
  803744:	f800283a 	ret
  803748:	d8801204 	addi	r2,sp,72
  80374c:	9020d53a 	srli	r16,r18,20
  803750:	d8800015 	stw	r2,0(sp)
  803754:	d9c01304 	addi	r7,sp,76
  803758:	a00b883a 	mov	r5,r20
  80375c:	880d883a 	mov	r6,r17
  803760:	b809883a 	mov	r4,r23
  803764:	08079840 	call	807984 <__d2b>
  803768:	102d883a 	mov	r22,r2
  80376c:	8001741e 	bne	r16,zero,803d40 <_dtoa_r+0x6f0>
  803770:	df001217 	ldw	fp,72(sp)
  803774:	dc001317 	ldw	r16,76(sp)
  803778:	e421883a 	add	r16,fp,r16
  80377c:	80810c84 	addi	r2,r16,1074
  803780:	10c00850 	cmplti	r3,r2,33
  803784:	1802f81e 	bne	r3,zero,804368 <_dtoa_r+0xd18>
  803788:	01001004 	movi	r4,64
  80378c:	2085c83a 	sub	r2,r4,r2
  803790:	81010484 	addi	r4,r16,1042
  803794:	90a4983a 	sll	r18,r18,r2
  803798:	a108d83a 	srl	r4,r20,r4
  80379c:	9108b03a 	or	r4,r18,r4
  8037a0:	0800d280 	call	800d28 <__floatunsidf>
  8037a4:	1009883a 	mov	r4,r2
  8037a8:	017f8434 	movhi	r5,65040
  8037ac:	00800044 	movi	r2,1
  8037b0:	194b883a 	add	r5,r3,r5
  8037b4:	843fffc4 	addi	r16,r16,-1
  8037b8:	d8800915 	stw	r2,36(sp)
  8037bc:	000d883a 	mov	r6,zero
  8037c0:	01cffe34 	movhi	r7,16376
  8037c4:	080d1440 	call	80d144 <__subdf3>
  8037c8:	0198dbf4 	movhi	r6,25455
  8037cc:	01cff4f4 	movhi	r7,16339
  8037d0:	3190d844 	addi	r6,r6,17249
  8037d4:	39e1e9c4 	addi	r7,r7,-30809
  8037d8:	1009883a 	mov	r4,r2
  8037dc:	180b883a 	mov	r5,r3
  8037e0:	080c99c0 	call	80c99c <__muldf3>
  8037e4:	01a2d874 	movhi	r6,35681
  8037e8:	01cff1f4 	movhi	r7,16327
  8037ec:	31b22cc4 	addi	r6,r6,-14157
  8037f0:	39e28a04 	addi	r7,r7,-30168
  8037f4:	180b883a 	mov	r5,r3
  8037f8:	1009883a 	mov	r4,r2
  8037fc:	080b4900 	call	80b490 <__adddf3>
  803800:	8009883a 	mov	r4,r16
  803804:	1027883a 	mov	r19,r2
  803808:	1825883a 	mov	r18,r3
  80380c:	080db4c0 	call	80db4c <__floatsidf>
  803810:	019427f4 	movhi	r6,20639
  803814:	01cff4f4 	movhi	r7,16339
  803818:	319e7ec4 	addi	r6,r6,31227
  80381c:	39d104c4 	addi	r7,r7,17427
  803820:	1009883a 	mov	r4,r2
  803824:	180b883a 	mov	r5,r3
  803828:	080c99c0 	call	80c99c <__muldf3>
  80382c:	100d883a 	mov	r6,r2
  803830:	180f883a 	mov	r7,r3
  803834:	9809883a 	mov	r4,r19
  803838:	900b883a 	mov	r5,r18
  80383c:	080b4900 	call	80b490 <__adddf3>
  803840:	1009883a 	mov	r4,r2
  803844:	180b883a 	mov	r5,r3
  803848:	1025883a 	mov	r18,r2
  80384c:	182b883a 	mov	r21,r3
  803850:	080dacc0 	call	80dacc <__fixdfsi>
  803854:	000d883a 	mov	r6,zero
  803858:	000f883a 	mov	r7,zero
  80385c:	9009883a 	mov	r4,r18
  803860:	a80b883a 	mov	r5,r21
  803864:	1027883a 	mov	r19,r2
  803868:	080c8ac0 	call	80c8ac <__ledf2>
  80386c:	1002a416 	blt	r2,zero,804300 <_dtoa_r+0xcb0>
  803870:	e439c83a 	sub	fp,fp,r16
  803874:	e0ffffc4 	addi	r3,fp,-1
  803878:	988005e8 	cmpgeui	r2,r19,23
  80387c:	d8c00215 	stw	r3,8(sp)
  803880:	1002961e 	bne	r2,zero,8042dc <_dtoa_r+0xc8c>
  803884:	980690fa 	slli	r3,r19,3
  803888:	00802074 	movhi	r2,129
  80388c:	1081f904 	addi	r2,r2,2020
  803890:	10c5883a 	add	r2,r2,r3
  803894:	11800017 	ldw	r6,0(r2)
  803898:	11c00117 	ldw	r7,4(r2)
  80389c:	a009883a 	mov	r4,r20
  8038a0:	880b883a 	mov	r5,r17
  8038a4:	080c8ac0 	call	80c8ac <__ledf2>
  8038a8:	1002670e 	bge	r2,zero,804248 <_dtoa_r+0xbf8>
  8038ac:	d8000815 	stw	zero,32(sp)
  8038b0:	e0bfffc4 	addi	r2,fp,-1
  8038b4:	9cffffc4 	addi	r19,r19,-1
  8038b8:	10028c16 	blt	r2,zero,8042ec <_dtoa_r+0xc9c>
  8038bc:	d8000515 	stw	zero,20(sp)
  8038c0:	9802650e 	bge	r19,zero,804258 <_dtoa_r+0xc08>
  8038c4:	d8800517 	ldw	r2,20(sp)
  8038c8:	d8c00117 	ldw	r3,4(sp)
  8038cc:	dcc00315 	stw	r19,12(sp)
  8038d0:	14c5c83a 	sub	r2,r2,r19
  8038d4:	d8800515 	stw	r2,20(sp)
  8038d8:	04c5c83a 	sub	r2,zero,r19
  8038dc:	d8800715 	stw	r2,28(sp)
  8038e0:	188002a8 	cmpgeui	r2,r3,10
  8038e4:	0027883a 	mov	r19,zero
  8038e8:	1002631e 	bne	r2,zero,804278 <_dtoa_r+0xc28>
  8038ec:	18800190 	cmplti	r2,r3,6
  8038f0:	1002a11e 	bne	r2,zero,804378 <_dtoa_r+0xd28>
  8038f4:	18bfff04 	addi	r2,r3,-4
  8038f8:	d8800115 	stw	r2,4(sp)
  8038fc:	0021883a 	mov	r16,zero
  803900:	d8c00117 	ldw	r3,4(sp)
  803904:	18800120 	cmpeqi	r2,r3,4
  803908:	1003721e 	bne	r2,zero,8046d4 <_dtoa_r+0x1084>
  80390c:	18800160 	cmpeqi	r2,r3,5
  803910:	10032f1e 	bne	r2,zero,8045d0 <_dtoa_r+0xf80>
  803914:	188000a0 	cmpeqi	r2,r3,2
  803918:	10026326 	beq	r2,zero,8042a8 <_dtoa_r+0xc58>
  80391c:	d8000615 	stw	zero,24(sp)
  803920:	d8801e17 	ldw	r2,120(sp)
  803924:	00833c0e 	bge	zero,r2,804618 <_dtoa_r+0xfc8>
  803928:	d8800b15 	stw	r2,44(sp)
  80392c:	d8800415 	stw	r2,16(sp)
  803930:	100d883a 	mov	r6,r2
  803934:	b8001115 	stw	zero,68(r23)
  803938:	30800610 	cmplti	r2,r6,24
  80393c:	1005161e 	bne	r2,zero,804d98 <_dtoa_r+0x1748>
  803940:	00c00044 	movi	r3,1
  803944:	00800104 	movi	r2,4
  803948:	1085883a 	add	r2,r2,r2
  80394c:	11000504 	addi	r4,r2,20
  803950:	180b883a 	mov	r5,r3
  803954:	18c00044 	addi	r3,r3,1
  803958:	313ffb2e 	bgeu	r6,r4,803948 <_dtoa_r+0x2f8>
  80395c:	b9401115 	stw	r5,68(r23)
  803960:	b809883a 	mov	r4,r23
  803964:	0806b900 	call	806b90 <_Balloc>
  803968:	1039883a 	mov	fp,r2
  80396c:	1004f526 	beq	r2,zero,804d44 <_dtoa_r+0x16f4>
  803970:	b8801015 	stw	r2,64(r23)
  803974:	d8800417 	ldw	r2,16(sp)
  803978:	108003e8 	cmpgeui	r2,r2,15
  80397c:	10010b1e 	bne	r2,zero,803dac <_dtoa_r+0x75c>
  803980:	80010a26 	beq	r16,zero,803dac <_dtoa_r+0x75c>
  803984:	d9000317 	ldw	r4,12(sp)
  803988:	0103a30e 	bge	zero,r4,804818 <_dtoa_r+0x11c8>
  80398c:	208003cc 	andi	r2,r4,15
  803990:	100690fa 	slli	r3,r2,3
  803994:	202bd13a 	srai	r21,r4,4
  803998:	00802074 	movhi	r2,129
  80399c:	1081f904 	addi	r2,r2,2020
  8039a0:	10c5883a 	add	r2,r2,r3
  8039a4:	a8c0040c 	andi	r3,r21,16
  8039a8:	12800017 	ldw	r10,0(r2)
  8039ac:	12400117 	ldw	r9,4(r2)
  8039b0:	18034226 	beq	r3,zero,8046bc <_dtoa_r+0x106c>
  8039b4:	00802074 	movhi	r2,129
  8039b8:	1081ef04 	addi	r2,r2,1980
  8039bc:	11800817 	ldw	r6,32(r2)
  8039c0:	11c00917 	ldw	r7,36(r2)
  8039c4:	a009883a 	mov	r4,r20
  8039c8:	880b883a 	mov	r5,r17
  8039cc:	da400e15 	stw	r9,56(sp)
  8039d0:	da800d15 	stw	r10,52(sp)
  8039d4:	080be080 	call	80be08 <__divdf3>
  8039d8:	da800d17 	ldw	r10,52(sp)
  8039dc:	da400e17 	ldw	r9,56(sp)
  8039e0:	ad4003cc 	andi	r21,r21,15
  8039e4:	d8800a15 	stw	r2,40(sp)
  8039e8:	d8c00c15 	stw	r3,48(sp)
  8039ec:	040000c4 	movi	r16,3
  8039f0:	a8001126 	beq	r21,zero,803a38 <_dtoa_r+0x3e8>
  8039f4:	04802074 	movhi	r18,129
  8039f8:	9481ef04 	addi	r18,r18,1980
  8039fc:	5009883a 	mov	r4,r10
  803a00:	480b883a 	mov	r5,r9
  803a04:	a980004c 	andi	r6,r21,1
  803a08:	30000626 	beq	r6,zero,803a24 <_dtoa_r+0x3d4>
  803a0c:	91800017 	ldw	r6,0(r18)
  803a10:	91c00117 	ldw	r7,4(r18)
  803a14:	84000044 	addi	r16,r16,1
  803a18:	080c99c0 	call	80c99c <__muldf3>
  803a1c:	1009883a 	mov	r4,r2
  803a20:	180b883a 	mov	r5,r3
  803a24:	a82bd07a 	srai	r21,r21,1
  803a28:	94800204 	addi	r18,r18,8
  803a2c:	a83ff51e 	bne	r21,zero,803a04 <_dtoa_r+0x3b4>
  803a30:	2015883a 	mov	r10,r4
  803a34:	2813883a 	mov	r9,r5
  803a38:	d9000a17 	ldw	r4,40(sp)
  803a3c:	d9400c17 	ldw	r5,48(sp)
  803a40:	500d883a 	mov	r6,r10
  803a44:	480f883a 	mov	r7,r9
  803a48:	080be080 	call	80be08 <__divdf3>
  803a4c:	1025883a 	mov	r18,r2
  803a50:	d8c00a15 	stw	r3,40(sp)
  803a54:	d8800817 	ldw	r2,32(sp)
  803a58:	10000726 	beq	r2,zero,803a78 <_dtoa_r+0x428>
  803a5c:	dd400a17 	ldw	r21,40(sp)
  803a60:	000d883a 	mov	r6,zero
  803a64:	01cffc34 	movhi	r7,16368
  803a68:	9009883a 	mov	r4,r18
  803a6c:	a80b883a 	mov	r5,r21
  803a70:	080c8ac0 	call	80c8ac <__ledf2>
  803a74:	10045516 	blt	r2,zero,804bcc <_dtoa_r+0x157c>
  803a78:	8009883a 	mov	r4,r16
  803a7c:	080db4c0 	call	80db4c <__floatsidf>
  803a80:	d9c00a17 	ldw	r7,40(sp)
  803a84:	900d883a 	mov	r6,r18
  803a88:	1009883a 	mov	r4,r2
  803a8c:	180b883a 	mov	r5,r3
  803a90:	080c99c0 	call	80c99c <__muldf3>
  803a94:	000d883a 	mov	r6,zero
  803a98:	01d00734 	movhi	r7,16412
  803a9c:	1009883a 	mov	r4,r2
  803aa0:	180b883a 	mov	r5,r3
  803aa4:	080b4900 	call	80b490 <__adddf3>
  803aa8:	d8800c15 	stw	r2,48(sp)
  803aac:	00bf3034 	movhi	r2,64704
  803ab0:	1885883a 	add	r2,r3,r2
  803ab4:	d8800d15 	stw	r2,52(sp)
  803ab8:	d8800417 	ldw	r2,16(sp)
  803abc:	10033926 	beq	r2,zero,8047a4 <_dtoa_r+0x1154>
  803ac0:	d8800317 	ldw	r2,12(sp)
  803ac4:	d8801115 	stw	r2,68(sp)
  803ac8:	d8800417 	ldw	r2,16(sp)
  803acc:	d8800e15 	stw	r2,56(sp)
  803ad0:	dc000a17 	ldw	r16,40(sp)
  803ad4:	9009883a 	mov	r4,r18
  803ad8:	800b883a 	mov	r5,r16
  803adc:	080dacc0 	call	80dacc <__fixdfsi>
  803ae0:	d8c00e17 	ldw	r3,56(sp)
  803ae4:	d8801015 	stw	r2,64(sp)
  803ae8:	18ffffc4 	addi	r3,r3,-1
  803aec:	180890fa 	slli	r4,r3,3
  803af0:	00c02074 	movhi	r3,129
  803af4:	18c1f904 	addi	r3,r3,2020
  803af8:	1907883a 	add	r3,r3,r4
  803afc:	1b000017 	ldw	r12,0(r3)
  803b00:	1b400117 	ldw	r13,4(r3)
  803b04:	1009883a 	mov	r4,r2
  803b08:	db000f15 	stw	r12,60(sp)
  803b0c:	db400a15 	stw	r13,40(sp)
  803b10:	080db4c0 	call	80db4c <__floatsidf>
  803b14:	9009883a 	mov	r4,r18
  803b18:	800b883a 	mov	r5,r16
  803b1c:	100d883a 	mov	r6,r2
  803b20:	180f883a 	mov	r7,r3
  803b24:	080d1440 	call	80d144 <__subdf3>
  803b28:	dac01017 	ldw	r11,64(sp)
  803b2c:	102b883a 	mov	r21,r2
  803b30:	d8800617 	ldw	r2,24(sp)
  803b34:	db400a17 	ldw	r13,40(sp)
  803b38:	db000f17 	ldw	r12,60(sp)
  803b3c:	e4000044 	addi	r16,fp,1
  803b40:	1825883a 	mov	r18,r3
  803b44:	5ac00c04 	addi	r11,r11,48
  803b48:	1003c626 	beq	r2,zero,804a64 <_dtoa_r+0x1414>
  803b4c:	600d883a 	mov	r6,r12
  803b50:	680f883a 	mov	r7,r13
  803b54:	0009883a 	mov	r4,zero
  803b58:	014ff834 	movhi	r5,16352
  803b5c:	dac00f15 	stw	r11,60(sp)
  803b60:	080be080 	call	80be08 <__divdf3>
  803b64:	d9800c17 	ldw	r6,48(sp)
  803b68:	d9c00d17 	ldw	r7,52(sp)
  803b6c:	1009883a 	mov	r4,r2
  803b70:	180b883a 	mov	r5,r3
  803b74:	080d1440 	call	80d144 <__subdf3>
  803b78:	dac00f17 	ldw	r11,60(sp)
  803b7c:	a80d883a 	mov	r6,r21
  803b80:	900f883a 	mov	r7,r18
  803b84:	e2c00005 	stb	r11,0(fp)
  803b88:	1009883a 	mov	r4,r2
  803b8c:	180b883a 	mov	r5,r3
  803b90:	d8800a15 	stw	r2,40(sp)
  803b94:	d8c00c15 	stw	r3,48(sp)
  803b98:	080c7bc0 	call	80c7bc <__gedf2>
  803b9c:	00844116 	blt	zero,r2,804ca4 <_dtoa_r+0x1654>
  803ba0:	0005883a 	mov	r2,zero
  803ba4:	dcc00f15 	stw	r19,60(sp)
  803ba8:	dd800d15 	stw	r22,52(sp)
  803bac:	dcc00c17 	ldw	r19,48(sp)
  803bb0:	dd800e17 	ldw	r22,56(sp)
  803bb4:	dc400c15 	stw	r17,48(sp)
  803bb8:	ddc00e15 	stw	r23,56(sp)
  803bbc:	dc400a17 	ldw	r17,40(sp)
  803bc0:	dd000a15 	stw	r20,40(sp)
  803bc4:	1029883a 	mov	r20,r2
  803bc8:	00002606 	br	803c64 <_dtoa_r+0x614>
  803bcc:	a5000044 	addi	r20,r20,1
  803bd0:	a5843d0e 	bge	r20,r22,804cc8 <_dtoa_r+0x1678>
  803bd4:	8809883a 	mov	r4,r17
  803bd8:	980b883a 	mov	r5,r19
  803bdc:	000d883a 	mov	r6,zero
  803be0:	01d00934 	movhi	r7,16420
  803be4:	080c99c0 	call	80c99c <__muldf3>
  803be8:	000d883a 	mov	r6,zero
  803bec:	01d00934 	movhi	r7,16420
  803bf0:	a809883a 	mov	r4,r21
  803bf4:	900b883a 	mov	r5,r18
  803bf8:	1023883a 	mov	r17,r2
  803bfc:	1827883a 	mov	r19,r3
  803c00:	080c99c0 	call	80c99c <__muldf3>
  803c04:	180b883a 	mov	r5,r3
  803c08:	1009883a 	mov	r4,r2
  803c0c:	1825883a 	mov	r18,r3
  803c10:	102b883a 	mov	r21,r2
  803c14:	080dacc0 	call	80dacc <__fixdfsi>
  803c18:	1009883a 	mov	r4,r2
  803c1c:	102f883a 	mov	r23,r2
  803c20:	080db4c0 	call	80db4c <__floatsidf>
  803c24:	a809883a 	mov	r4,r21
  803c28:	900b883a 	mov	r5,r18
  803c2c:	100d883a 	mov	r6,r2
  803c30:	180f883a 	mov	r7,r3
  803c34:	080d1440 	call	80d144 <__subdf3>
  803c38:	84000044 	addi	r16,r16,1
  803c3c:	ba000c04 	addi	r8,r23,48
  803c40:	823fffc5 	stb	r8,-1(r16)
  803c44:	880d883a 	mov	r6,r17
  803c48:	980f883a 	mov	r7,r19
  803c4c:	1009883a 	mov	r4,r2
  803c50:	180b883a 	mov	r5,r3
  803c54:	102b883a 	mov	r21,r2
  803c58:	1825883a 	mov	r18,r3
  803c5c:	080c8ac0 	call	80c8ac <__ledf2>
  803c60:	10040e16 	blt	r2,zero,804c9c <_dtoa_r+0x164c>
  803c64:	a80d883a 	mov	r6,r21
  803c68:	900f883a 	mov	r7,r18
  803c6c:	0009883a 	mov	r4,zero
  803c70:	014ffc34 	movhi	r5,16368
  803c74:	080d1440 	call	80d144 <__subdf3>
  803c78:	880d883a 	mov	r6,r17
  803c7c:	980f883a 	mov	r7,r19
  803c80:	1009883a 	mov	r4,r2
  803c84:	180b883a 	mov	r5,r3
  803c88:	080c8ac0 	call	80c8ac <__ledf2>
  803c8c:	103fcf0e 	bge	r2,zero,803bcc <_dtoa_r+0x57c>
  803c90:	dd800d17 	ldw	r22,52(sp)
  803c94:	ddc00e17 	ldw	r23,56(sp)
  803c98:	d8801117 	ldw	r2,68(sp)
  803c9c:	10800044 	addi	r2,r2,1
  803ca0:	d8800315 	stw	r2,12(sp)
  803ca4:	00000106 	br	803cac <_dtoa_r+0x65c>
  803ca8:	e403ee26 	beq	fp,r16,804c64 <_dtoa_r+0x1614>
  803cac:	80ffffc3 	ldbu	r3,-1(r16)
  803cb0:	8025883a 	mov	r18,r16
  803cb4:	843fffc4 	addi	r16,r16,-1
  803cb8:	18803fcc 	andi	r2,r3,255
  803cbc:	1080201c 	xori	r2,r2,128
  803cc0:	10bfe004 	addi	r2,r2,-128
  803cc4:	10800e60 	cmpeqi	r2,r2,57
  803cc8:	103ff71e 	bne	r2,zero,803ca8 <_dtoa_r+0x658>
  803ccc:	18c00044 	addi	r3,r3,1
  803cd0:	80c00005 	stb	r3,0(r16)
  803cd4:	00015106 	br	80421c <_dtoa_r+0xbcc>
  803cd8:	04600034 	movhi	r17,32768
  803cdc:	8c7fffc4 	addi	r17,r17,-1
  803ce0:	9462703a 	and	r17,r18,r17
  803ce4:	00800044 	movi	r2,1
  803ce8:	8825883a 	mov	r18,r17
  803cec:	80800015 	stw	r2,0(r16)
  803cf0:	00dffc34 	movhi	r3,32752
  803cf4:	909ffc2c 	andhi	r2,r18,32752
  803cf8:	10fe751e 	bne	r2,r3,8036d0 <_dtoa_r+0x80>
  803cfc:	d8c01f17 	ldw	r3,124(sp)
  803d00:	00800434 	movhi	r2,16
  803d04:	10bfffc4 	addi	r2,r2,-1
  803d08:	90a4703a 	and	r18,r18,r2
  803d0c:	0089c3c4 	movi	r2,9999
  803d10:	18800015 	stw	r2,0(r3)
  803d14:	9528b03a 	or	r20,r18,r20
  803d18:	a000121e 	bne	r20,zero,803d64 <_dtoa_r+0x714>
  803d1c:	d8802117 	ldw	r2,132(sp)
  803d20:	07002074 	movhi	fp,129
  803d24:	10041526 	beq	r2,zero,804d7c <_dtoa_r+0x172c>
  803d28:	00802074 	movhi	r2,129
  803d2c:	e701ba04 	addi	fp,fp,1768
  803d30:	1081bc04 	addi	r2,r2,1776
  803d34:	d8c02117 	ldw	r3,132(sp)
  803d38:	18800015 	stw	r2,0(r3)
  803d3c:	003e7506 	br	803714 <_dtoa_r+0xc4>
  803d40:	01400434 	movhi	r5,16
  803d44:	297fffc4 	addi	r5,r5,-1
  803d48:	894a703a 	and	r5,r17,r5
  803d4c:	df001217 	ldw	fp,72(sp)
  803d50:	a009883a 	mov	r4,r20
  803d54:	294ffc34 	orhi	r5,r5,16368
  803d58:	843f0044 	addi	r16,r16,-1023
  803d5c:	d8000915 	stw	zero,36(sp)
  803d60:	003e9606 	br	8037bc <_dtoa_r+0x16c>
  803d64:	d8802117 	ldw	r2,132(sp)
  803d68:	07002074 	movhi	fp,129
  803d6c:	1002141e 	bne	r2,zero,8045c0 <_dtoa_r+0xf70>
  803d70:	e701b904 	addi	fp,fp,1764
  803d74:	003e6706 	br	803714 <_dtoa_r+0xc4>
  803d78:	b8001115 	stw	zero,68(r23)
  803d7c:	000b883a 	mov	r5,zero
  803d80:	b809883a 	mov	r4,r23
  803d84:	0806b900 	call	806b90 <_Balloc>
  803d88:	1039883a 	mov	fp,r2
  803d8c:	1003ed26 	beq	r2,zero,804d44 <_dtoa_r+0x16f4>
  803d90:	b8801015 	stw	r2,64(r23)
  803d94:	00bfffc4 	movi	r2,-1
  803d98:	d8800415 	stw	r2,16(sp)
  803d9c:	d8800b15 	stw	r2,44(sp)
  803da0:	00800044 	movi	r2,1
  803da4:	d8001e15 	stw	zero,120(sp)
  803da8:	d8800615 	stw	r2,24(sp)
  803dac:	d8801317 	ldw	r2,76(sp)
  803db0:	10007216 	blt	r2,zero,803f7c <_dtoa_r+0x92c>
  803db4:	d9000317 	ldw	r4,12(sp)
  803db8:	20c003c8 	cmpgei	r3,r4,15
  803dbc:	18006f1e 	bne	r3,zero,803f7c <_dtoa_r+0x92c>
  803dc0:	200690fa 	slli	r3,r4,3
  803dc4:	00802074 	movhi	r2,129
  803dc8:	1081f904 	addi	r2,r2,2020
  803dcc:	10c5883a 	add	r2,r2,r3
  803dd0:	10c00017 	ldw	r3,0(r2)
  803dd4:	14800117 	ldw	r18,4(r2)
  803dd8:	d8801e17 	ldw	r2,120(sp)
  803ddc:	d8c00115 	stw	r3,4(sp)
  803de0:	1000150e 	bge	r2,zero,803e38 <_dtoa_r+0x7e8>
  803de4:	d8800417 	ldw	r2,16(sp)
  803de8:	00801316 	blt	zero,r2,803e38 <_dtoa_r+0x7e8>
  803dec:	d8800417 	ldw	r2,16(sp)
  803df0:	1002801e 	bne	r2,zero,8047f4 <_dtoa_r+0x11a4>
  803df4:	d9000117 	ldw	r4,4(sp)
  803df8:	000d883a 	mov	r6,zero
  803dfc:	01d00534 	movhi	r7,16404
  803e00:	900b883a 	mov	r5,r18
  803e04:	080c99c0 	call	80c99c <__muldf3>
  803e08:	100d883a 	mov	r6,r2
  803e0c:	180f883a 	mov	r7,r3
  803e10:	a009883a 	mov	r4,r20
  803e14:	880b883a 	mov	r5,r17
  803e18:	080c8ac0 	call	80c8ac <__ledf2>
  803e1c:	002b883a 	mov	r21,zero
  803e20:	0021883a 	mov	r16,zero
  803e24:	00820f16 	blt	zero,r2,804664 <_dtoa_r+0x1014>
  803e28:	d8801e17 	ldw	r2,120(sp)
  803e2c:	e025883a 	mov	r18,fp
  803e30:	00a2303a 	nor	r17,zero,r2
  803e34:	00021006 	br	804678 <_dtoa_r+0x1028>
  803e38:	dd400117 	ldw	r21,4(sp)
  803e3c:	900f883a 	mov	r7,r18
  803e40:	a009883a 	mov	r4,r20
  803e44:	a80d883a 	mov	r6,r21
  803e48:	880b883a 	mov	r5,r17
  803e4c:	080be080 	call	80be08 <__divdf3>
  803e50:	180b883a 	mov	r5,r3
  803e54:	1009883a 	mov	r4,r2
  803e58:	080dacc0 	call	80dacc <__fixdfsi>
  803e5c:	1009883a 	mov	r4,r2
  803e60:	1027883a 	mov	r19,r2
  803e64:	080db4c0 	call	80db4c <__floatsidf>
  803e68:	a80d883a 	mov	r6,r21
  803e6c:	900f883a 	mov	r7,r18
  803e70:	1009883a 	mov	r4,r2
  803e74:	180b883a 	mov	r5,r3
  803e78:	080c99c0 	call	80c99c <__muldf3>
  803e7c:	100d883a 	mov	r6,r2
  803e80:	a009883a 	mov	r4,r20
  803e84:	880b883a 	mov	r5,r17
  803e88:	180f883a 	mov	r7,r3
  803e8c:	080d1440 	call	80d144 <__subdf3>
  803e90:	d9800417 	ldw	r6,16(sp)
  803e94:	1009883a 	mov	r4,r2
  803e98:	98800c04 	addi	r2,r19,48
  803e9c:	e0800005 	stb	r2,0(fp)
  803ea0:	30800060 	cmpeqi	r2,r6,1
  803ea4:	180b883a 	mov	r5,r3
  803ea8:	e4000044 	addi	r16,fp,1
  803eac:	1002a91e 	bne	r2,zero,804954 <_dtoa_r+0x1304>
  803eb0:	04400044 	movi	r17,1
  803eb4:	3027883a 	mov	r19,r6
  803eb8:	dd800215 	stw	r22,8(sp)
  803ebc:	ddc00415 	stw	r23,16(sp)
  803ec0:	00001c06 	br	803f34 <_dtoa_r+0x8e4>
  803ec4:	a80d883a 	mov	r6,r21
  803ec8:	900f883a 	mov	r7,r18
  803ecc:	b809883a 	mov	r4,r23
  803ed0:	a00b883a 	mov	r5,r20
  803ed4:	080be080 	call	80be08 <__divdf3>
  803ed8:	180b883a 	mov	r5,r3
  803edc:	1009883a 	mov	r4,r2
  803ee0:	080dacc0 	call	80dacc <__fixdfsi>
  803ee4:	1009883a 	mov	r4,r2
  803ee8:	102d883a 	mov	r22,r2
  803eec:	080db4c0 	call	80db4c <__floatsidf>
  803ef0:	a80d883a 	mov	r6,r21
  803ef4:	900f883a 	mov	r7,r18
  803ef8:	1009883a 	mov	r4,r2
  803efc:	180b883a 	mov	r5,r3
  803f00:	080c99c0 	call	80c99c <__muldf3>
  803f04:	b809883a 	mov	r4,r23
  803f08:	a00b883a 	mov	r5,r20
  803f0c:	100d883a 	mov	r6,r2
  803f10:	180f883a 	mov	r7,r3
  803f14:	080d1440 	call	80d144 <__subdf3>
  803f18:	b1000c04 	addi	r4,r22,48
  803f1c:	81000005 	stb	r4,0(r16)
  803f20:	8c400044 	addi	r17,r17,1
  803f24:	84000044 	addi	r16,r16,1
  803f28:	1009883a 	mov	r4,r2
  803f2c:	180b883a 	mov	r5,r3
  803f30:	9c428526 	beq	r19,r17,804948 <_dtoa_r+0x12f8>
  803f34:	000d883a 	mov	r6,zero
  803f38:	01d00934 	movhi	r7,16420
  803f3c:	080c99c0 	call	80c99c <__muldf3>
  803f40:	000d883a 	mov	r6,zero
  803f44:	000f883a 	mov	r7,zero
  803f48:	1009883a 	mov	r4,r2
  803f4c:	180b883a 	mov	r5,r3
  803f50:	102f883a 	mov	r23,r2
  803f54:	1829883a 	mov	r20,r3
  803f58:	080c73c0 	call	80c73c <__eqdf2>
  803f5c:	103fd91e 	bne	r2,zero,803ec4 <_dtoa_r+0x874>
  803f60:	d8800317 	ldw	r2,12(sp)
  803f64:	dd800217 	ldw	r22,8(sp)
  803f68:	ddc00417 	ldw	r23,16(sp)
  803f6c:	10800044 	addi	r2,r2,1
  803f70:	d8800315 	stw	r2,12(sp)
  803f74:	8025883a 	mov	r18,r16
  803f78:	0000a806 	br	80421c <_dtoa_r+0xbcc>
  803f7c:	d8c00617 	ldw	r3,24(sp)
  803f80:	1800ec26 	beq	r3,zero,804334 <_dtoa_r+0xce4>
  803f84:	d8c00117 	ldw	r3,4(sp)
  803f88:	18c00088 	cmpgei	r3,r3,2
  803f8c:	1801e926 	beq	r3,zero,804734 <_dtoa_r+0x10e4>
  803f90:	d8800417 	ldw	r2,16(sp)
  803f94:	157fffc4 	addi	r21,r2,-1
  803f98:	d8800717 	ldw	r2,28(sp)
  803f9c:	1541c50e 	bge	r2,r21,8046b4 <_dtoa_r+0x1064>
  803fa0:	d8800717 	ldw	r2,28(sp)
  803fa4:	dd400715 	stw	r21,28(sp)
  803fa8:	a885c83a 	sub	r2,r21,r2
  803fac:	98a7883a 	add	r19,r19,r2
  803fb0:	002b883a 	mov	r21,zero
  803fb4:	d8800417 	ldw	r2,16(sp)
  803fb8:	10029516 	blt	r2,zero,804a10 <_dtoa_r+0x13c0>
  803fbc:	d8c00517 	ldw	r3,20(sp)
  803fc0:	d9000217 	ldw	r4,8(sp)
  803fc4:	1825883a 	mov	r18,r3
  803fc8:	2089883a 	add	r4,r4,r2
  803fcc:	10c5883a 	add	r2,r2,r3
  803fd0:	d9000215 	stw	r4,8(sp)
  803fd4:	d8800515 	stw	r2,20(sp)
  803fd8:	01400044 	movi	r5,1
  803fdc:	b809883a 	mov	r4,r23
  803fe0:	08070000 	call	807000 <__i2b>
  803fe4:	1021883a 	mov	r16,r2
  803fe8:	04800b0e 	bge	zero,r18,804018 <_dtoa_r+0x9c8>
  803fec:	d8c00217 	ldw	r3,8(sp)
  803ff0:	00c0090e 	bge	zero,r3,804018 <_dtoa_r+0x9c8>
  803ff4:	9005883a 	mov	r2,r18
  803ff8:	1c81a616 	blt	r3,r18,804694 <_dtoa_r+0x1044>
  803ffc:	d8c00517 	ldw	r3,20(sp)
  804000:	90a5c83a 	sub	r18,r18,r2
  804004:	1887c83a 	sub	r3,r3,r2
  804008:	d8c00515 	stw	r3,20(sp)
  80400c:	d8c00217 	ldw	r3,8(sp)
  804010:	1885c83a 	sub	r2,r3,r2
  804014:	d8800215 	stw	r2,8(sp)
  804018:	d8800717 	ldw	r2,28(sp)
  80401c:	10001526 	beq	r2,zero,804074 <_dtoa_r+0xa24>
  804020:	d8800617 	ldw	r2,24(sp)
  804024:	1001f626 	beq	r2,zero,804800 <_dtoa_r+0x11b0>
  804028:	05400f0e 	bge	zero,r21,804068 <_dtoa_r+0xa18>
  80402c:	800b883a 	mov	r5,r16
  804030:	a80d883a 	mov	r6,r21
  804034:	b809883a 	mov	r4,r23
  804038:	08073000 	call	807300 <__pow5mult>
  80403c:	b00d883a 	mov	r6,r22
  804040:	100b883a 	mov	r5,r2
  804044:	b809883a 	mov	r4,r23
  804048:	1021883a 	mov	r16,r2
  80404c:	08070540 	call	807054 <__multiply>
  804050:	b00b883a 	mov	r5,r22
  804054:	b809883a 	mov	r4,r23
  804058:	d8800915 	stw	r2,36(sp)
  80405c:	0806c340 	call	806c34 <_Bfree>
  804060:	d8800917 	ldw	r2,36(sp)
  804064:	102d883a 	mov	r22,r2
  804068:	d8800717 	ldw	r2,28(sp)
  80406c:	154dc83a 	sub	r6,r2,r21
  804070:	1542621e 	bne	r2,r21,8049fc <_dtoa_r+0x13ac>
  804074:	01400044 	movi	r5,1
  804078:	b809883a 	mov	r4,r23
  80407c:	08070000 	call	807000 <__i2b>
  804080:	102b883a 	mov	r21,r2
  804084:	04c0be16 	blt	zero,r19,804380 <_dtoa_r+0xd30>
  804088:	d8800117 	ldw	r2,4(sp)
  80408c:	10800088 	cmpgei	r2,r2,2
  804090:	10015226 	beq	r2,zero,8045dc <_dtoa_r+0xf8c>
  804094:	0023883a 	mov	r17,zero
  804098:	00800044 	movi	r2,1
  80409c:	9800c11e 	bne	r19,zero,8043a4 <_dtoa_r+0xd54>
  8040a0:	d9400217 	ldw	r5,8(sp)
  8040a4:	1145883a 	add	r2,r2,r5
  8040a8:	108007cc 	andi	r2,r2,31
  8040ac:	1000a526 	beq	r2,zero,804344 <_dtoa_r+0xcf4>
  8040b0:	00c00804 	movi	r3,32
  8040b4:	1887c83a 	sub	r3,r3,r2
  8040b8:	19000150 	cmplti	r4,r3,5
  8040bc:	2003311e 	bne	r4,zero,804d84 <_dtoa_r+0x1734>
  8040c0:	00c00704 	movi	r3,28
  8040c4:	1885c83a 	sub	r2,r3,r2
  8040c8:	d8c00517 	ldw	r3,20(sp)
  8040cc:	90a5883a 	add	r18,r18,r2
  8040d0:	1887883a 	add	r3,r3,r2
  8040d4:	2885883a 	add	r2,r5,r2
  8040d8:	d8c00515 	stw	r3,20(sp)
  8040dc:	d8800215 	stw	r2,8(sp)
  8040e0:	d8800517 	ldw	r2,20(sp)
  8040e4:	0080050e 	bge	zero,r2,8040fc <_dtoa_r+0xaac>
  8040e8:	b00b883a 	mov	r5,r22
  8040ec:	100d883a 	mov	r6,r2
  8040f0:	b809883a 	mov	r4,r23
  8040f4:	08074180 	call	807418 <__lshift>
  8040f8:	102d883a 	mov	r22,r2
  8040fc:	d8800217 	ldw	r2,8(sp)
  804100:	0080050e 	bge	zero,r2,804118 <_dtoa_r+0xac8>
  804104:	a80b883a 	mov	r5,r21
  804108:	100d883a 	mov	r6,r2
  80410c:	b809883a 	mov	r4,r23
  804110:	08074180 	call	807418 <__lshift>
  804114:	102b883a 	mov	r21,r2
  804118:	d8800817 	ldw	r2,32(sp)
  80411c:	1001161e 	bne	r2,zero,804578 <_dtoa_r+0xf28>
  804120:	d8800417 	ldw	r2,16(sp)
  804124:	0081040e 	bge	zero,r2,804538 <_dtoa_r+0xee8>
  804128:	d8800617 	ldw	r2,24(sp)
  80412c:	1000b01e 	bne	r2,zero,8043f0 <_dtoa_r+0xda0>
  804130:	d8800317 	ldw	r2,12(sp)
  804134:	10800044 	addi	r2,r2,1
  804138:	d8800315 	stw	r2,12(sp)
  80413c:	dc800417 	ldw	r18,16(sp)
  804140:	04400044 	movi	r17,1
  804144:	00000706 	br	804164 <_dtoa_r+0xb14>
  804148:	b00b883a 	mov	r5,r22
  80414c:	000f883a 	mov	r7,zero
  804150:	01800284 	movi	r6,10
  804154:	b809883a 	mov	r4,r23
  804158:	0806c580 	call	806c58 <__multadd>
  80415c:	102d883a 	mov	r22,r2
  804160:	8c400044 	addi	r17,r17,1
  804164:	a80b883a 	mov	r5,r21
  804168:	b009883a 	mov	r4,r22
  80416c:	08034300 	call	803430 <quorem>
  804170:	10c00c04 	addi	r3,r2,48
  804174:	e445883a 	add	r2,fp,r17
  804178:	10ffffc5 	stb	r3,-1(r2)
  80417c:	8cbff216 	blt	r17,r18,804148 <_dtoa_r+0xaf8>
  804180:	d8800417 	ldw	r2,16(sp)
  804184:	0081510e 	bge	zero,r2,8046cc <_dtoa_r+0x107c>
  804188:	e0a5883a 	add	r18,fp,r2
  80418c:	0023883a 	mov	r17,zero
  804190:	b00b883a 	mov	r5,r22
  804194:	01800044 	movi	r6,1
  804198:	b809883a 	mov	r4,r23
  80419c:	d8c00115 	stw	r3,4(sp)
  8041a0:	08074180 	call	807418 <__lshift>
  8041a4:	1009883a 	mov	r4,r2
  8041a8:	a80b883a 	mov	r5,r21
  8041ac:	102d883a 	mov	r22,r2
  8041b0:	08075a00 	call	8075a0 <__mcmp>
  8041b4:	913fffc3 	ldbu	r4,-1(r18)
  8041b8:	00800416 	blt	zero,r2,8041cc <_dtoa_r+0xb7c>
  8041bc:	00014806 	br	8046e0 <_dtoa_r+0x1090>
  8041c0:	e0c15626 	beq	fp,r3,80471c <_dtoa_r+0x10cc>
  8041c4:	193fffc3 	ldbu	r4,-1(r3)
  8041c8:	1825883a 	mov	r18,r3
  8041cc:	20803fcc 	andi	r2,r4,255
  8041d0:	1080201c 	xori	r2,r2,128
  8041d4:	10bfe004 	addi	r2,r2,-128
  8041d8:	10800e60 	cmpeqi	r2,r2,57
  8041dc:	90ffffc4 	addi	r3,r18,-1
  8041e0:	103ff71e 	bne	r2,zero,8041c0 <_dtoa_r+0xb70>
  8041e4:	21000044 	addi	r4,r4,1
  8041e8:	19000005 	stb	r4,0(r3)
  8041ec:	a80b883a 	mov	r5,r21
  8041f0:	b809883a 	mov	r4,r23
  8041f4:	0806c340 	call	806c34 <_Bfree>
  8041f8:	80000826 	beq	r16,zero,80421c <_dtoa_r+0xbcc>
  8041fc:	88000426 	beq	r17,zero,804210 <_dtoa_r+0xbc0>
  804200:	8c000326 	beq	r17,r16,804210 <_dtoa_r+0xbc0>
  804204:	880b883a 	mov	r5,r17
  804208:	b809883a 	mov	r4,r23
  80420c:	0806c340 	call	806c34 <_Bfree>
  804210:	800b883a 	mov	r5,r16
  804214:	b809883a 	mov	r4,r23
  804218:	0806c340 	call	806c34 <_Bfree>
  80421c:	b00b883a 	mov	r5,r22
  804220:	b809883a 	mov	r4,r23
  804224:	0806c340 	call	806c34 <_Bfree>
  804228:	d8801f17 	ldw	r2,124(sp)
  80422c:	d8c00317 	ldw	r3,12(sp)
  804230:	90000005 	stb	zero,0(r18)
  804234:	10c00015 	stw	r3,0(r2)
  804238:	d8802117 	ldw	r2,132(sp)
  80423c:	103d3526 	beq	r2,zero,803714 <_dtoa_r+0xc4>
  804240:	14800015 	stw	r18,0(r2)
  804244:	003d3306 	br	803714 <_dtoa_r+0xc4>
  804248:	e0bfffc4 	addi	r2,fp,-1
  80424c:	d8000815 	stw	zero,32(sp)
  804250:	10002616 	blt	r2,zero,8042ec <_dtoa_r+0xc9c>
  804254:	d8000515 	stw	zero,20(sp)
  804258:	d8800217 	ldw	r2,8(sp)
  80425c:	d8c00117 	ldw	r3,4(sp)
  804260:	dcc00315 	stw	r19,12(sp)
  804264:	14c5883a 	add	r2,r2,r19
  804268:	d8800215 	stw	r2,8(sp)
  80426c:	d8000715 	stw	zero,28(sp)
  804270:	188002a8 	cmpgeui	r2,r3,10
  804274:	103d9d26 	beq	r2,zero,8038ec <_dtoa_r+0x29c>
  804278:	00800044 	movi	r2,1
  80427c:	d8800615 	stw	r2,24(sp)
  804280:	00bfffc4 	movi	r2,-1
  804284:	04000044 	movi	r16,1
  804288:	d8000115 	stw	zero,4(sp)
  80428c:	d8800415 	stw	r2,16(sp)
  804290:	d8001e15 	stw	zero,120(sp)
  804294:	d8800417 	ldw	r2,16(sp)
  804298:	b8001115 	stw	zero,68(r23)
  80429c:	000b883a 	mov	r5,zero
  8042a0:	d8800b15 	stw	r2,44(sp)
  8042a4:	003dae06 	br	803960 <_dtoa_r+0x310>
  8042a8:	188000e0 	cmpeqi	r2,r3,3
  8042ac:	d8000615 	stw	zero,24(sp)
  8042b0:	103eb126 	beq	r2,zero,803d78 <_dtoa_r+0x728>
  8042b4:	d8801e17 	ldw	r2,120(sp)
  8042b8:	d8c00317 	ldw	r3,12(sp)
  8042bc:	10c5883a 	add	r2,r2,r3
  8042c0:	d8800b15 	stw	r2,44(sp)
  8042c4:	10800044 	addi	r2,r2,1
  8042c8:	d8800415 	stw	r2,16(sp)
  8042cc:	100d883a 	mov	r6,r2
  8042d0:	00bd9816 	blt	zero,r2,803934 <_dtoa_r+0x2e4>
  8042d4:	01800044 	movi	r6,1
  8042d8:	003d9606 	br	803934 <_dtoa_r+0x2e4>
  8042dc:	00800044 	movi	r2,1
  8042e0:	d8800815 	stw	r2,32(sp)
  8042e4:	e0bfffc4 	addi	r2,fp,-1
  8042e8:	103d740e 	bge	r2,zero,8038bc <_dtoa_r+0x26c>
  8042ec:	00800044 	movi	r2,1
  8042f0:	1705c83a 	sub	r2,r2,fp
  8042f4:	d8800515 	stw	r2,20(sp)
  8042f8:	d8000215 	stw	zero,8(sp)
  8042fc:	003d7006 	br	8038c0 <_dtoa_r+0x270>
  804300:	9809883a 	mov	r4,r19
  804304:	080db4c0 	call	80db4c <__floatsidf>
  804308:	900d883a 	mov	r6,r18
  80430c:	a80f883a 	mov	r7,r21
  804310:	1009883a 	mov	r4,r2
  804314:	180b883a 	mov	r5,r3
  804318:	080c73c0 	call	80c73c <__eqdf2>
  80431c:	103d5426 	beq	r2,zero,803870 <_dtoa_r+0x220>
  804320:	9cffffc4 	addi	r19,r19,-1
  804324:	003d5206 	br	803870 <_dtoa_r+0x220>
  804328:	07002074 	movhi	fp,129
  80432c:	e701b004 	addi	fp,fp,1728
  804330:	003cf806 	br	803714 <_dtoa_r+0xc4>
  804334:	dd400717 	ldw	r21,28(sp)
  804338:	dc800517 	ldw	r18,20(sp)
  80433c:	0021883a 	mov	r16,zero
  804340:	003f2906 	br	803fe8 <_dtoa_r+0x998>
  804344:	00800704 	movi	r2,28
  804348:	d8c00517 	ldw	r3,20(sp)
  80434c:	90a5883a 	add	r18,r18,r2
  804350:	1887883a 	add	r3,r3,r2
  804354:	d8c00515 	stw	r3,20(sp)
  804358:	d8c00217 	ldw	r3,8(sp)
  80435c:	1885883a 	add	r2,r3,r2
  804360:	d8800215 	stw	r2,8(sp)
  804364:	003f5e06 	br	8040e0 <_dtoa_r+0xa90>
  804368:	01000804 	movi	r4,32
  80436c:	2089c83a 	sub	r4,r4,r2
  804370:	a108983a 	sll	r4,r20,r4
  804374:	003d0a06 	br	8037a0 <_dtoa_r+0x150>
  804378:	04000044 	movi	r16,1
  80437c:	003d6006 	br	803900 <_dtoa_r+0x2b0>
  804380:	100b883a 	mov	r5,r2
  804384:	980d883a 	mov	r6,r19
  804388:	b809883a 	mov	r4,r23
  80438c:	08073000 	call	807300 <__pow5mult>
  804390:	d8c00117 	ldw	r3,4(sp)
  804394:	102b883a 	mov	r21,r2
  804398:	18c00090 	cmplti	r3,r3,2
  80439c:	18014b1e 	bne	r3,zero,8048cc <_dtoa_r+0x127c>
  8043a0:	0023883a 	mov	r17,zero
  8043a4:	a8800417 	ldw	r2,16(r21)
  8043a8:	10800104 	addi	r2,r2,4
  8043ac:	100490ba 	slli	r2,r2,2
  8043b0:	a885883a 	add	r2,r21,r2
  8043b4:	11000017 	ldw	r4,0(r2)
  8043b8:	0806eec0 	call	806eec <__hi0bits>
  8043bc:	00c00804 	movi	r3,32
  8043c0:	1885c83a 	sub	r2,r3,r2
  8043c4:	003f3606 	br	8040a0 <_dtoa_r+0xa50>
  8043c8:	800b883a 	mov	r5,r16
  8043cc:	000f883a 	mov	r7,zero
  8043d0:	01800284 	movi	r6,10
  8043d4:	b809883a 	mov	r4,r23
  8043d8:	0806c580 	call	806c58 <__multadd>
  8043dc:	1021883a 	mov	r16,r2
  8043e0:	d8800b17 	ldw	r2,44(sp)
  8043e4:	00824d0e 	bge	zero,r2,804d1c <_dtoa_r+0x16cc>
  8043e8:	dcc00315 	stw	r19,12(sp)
  8043ec:	d8800415 	stw	r2,16(sp)
  8043f0:	0480aa16 	blt	zero,r18,80469c <_dtoa_r+0x104c>
  8043f4:	8801701e 	bne	r17,zero,8049b8 <_dtoa_r+0x1368>
  8043f8:	8027883a 	mov	r19,r16
  8043fc:	d9000417 	ldw	r4,16(sp)
  804400:	e0bfffc4 	addi	r2,fp,-1
  804404:	a0c0004c 	andi	r3,r20,1
  804408:	1105883a 	add	r2,r2,r4
  80440c:	d8800415 	stw	r2,16(sp)
  804410:	d8800117 	ldw	r2,4(sp)
  804414:	d8c00715 	stw	r3,28(sp)
  804418:	e029883a 	mov	r20,fp
  80441c:	1884b03a 	or	r2,r3,r2
  804420:	d8800615 	stw	r2,24(sp)
  804424:	df000815 	stw	fp,32(sp)
  804428:	00002906 	br	8044d0 <_dtoa_r+0xe80>
  80442c:	b009883a 	mov	r4,r22
  804430:	08075a00 	call	8075a0 <__mcmp>
  804434:	900b883a 	mov	r5,r18
  804438:	b809883a 	mov	r4,r23
  80443c:	d8800215 	stw	r2,8(sp)
  804440:	0806c340 	call	806c34 <_Bfree>
  804444:	d8800217 	ldw	r2,8(sp)
  804448:	1000021e 	bne	r2,zero,804454 <_dtoa_r+0xe04>
  80444c:	d8c00617 	ldw	r3,24(sp)
  804450:	18022326 	beq	r3,zero,804ce0 <_dtoa_r+0x1690>
  804454:	a4800044 	addi	r18,r20,1
  804458:	88012216 	blt	r17,zero,8048e4 <_dtoa_r+0x1294>
  80445c:	d8c00117 	ldw	r3,4(sp)
  804460:	1c62b03a 	or	r17,r3,r17
  804464:	d8c00717 	ldw	r3,28(sp)
  804468:	1c62b03a 	or	r17,r3,r17
  80446c:	88011d26 	beq	r17,zero,8048e4 <_dtoa_r+0x1294>
  804470:	00816b16 	blt	zero,r2,804a20 <_dtoa_r+0x13d0>
  804474:	d8800417 	ldw	r2,16(sp)
  804478:	a7000005 	stb	fp,0(r20)
  80447c:	15017126 	beq	r2,r20,804a44 <_dtoa_r+0x13f4>
  804480:	b00b883a 	mov	r5,r22
  804484:	000f883a 	mov	r7,zero
  804488:	01800284 	movi	r6,10
  80448c:	b809883a 	mov	r4,r23
  804490:	0806c580 	call	806c58 <__multadd>
  804494:	102d883a 	mov	r22,r2
  804498:	800b883a 	mov	r5,r16
  80449c:	000f883a 	mov	r7,zero
  8044a0:	01800284 	movi	r6,10
  8044a4:	b809883a 	mov	r4,r23
  8044a8:	84c01f26 	beq	r16,r19,804528 <_dtoa_r+0xed8>
  8044ac:	0806c580 	call	806c58 <__multadd>
  8044b0:	980b883a 	mov	r5,r19
  8044b4:	000f883a 	mov	r7,zero
  8044b8:	01800284 	movi	r6,10
  8044bc:	b809883a 	mov	r4,r23
  8044c0:	1021883a 	mov	r16,r2
  8044c4:	0806c580 	call	806c58 <__multadd>
  8044c8:	1027883a 	mov	r19,r2
  8044cc:	9029883a 	mov	r20,r18
  8044d0:	a80b883a 	mov	r5,r21
  8044d4:	b009883a 	mov	r4,r22
  8044d8:	08034300 	call	803430 <quorem>
  8044dc:	800b883a 	mov	r5,r16
  8044e0:	b009883a 	mov	r4,r22
  8044e4:	1039883a 	mov	fp,r2
  8044e8:	d8800515 	stw	r2,20(sp)
  8044ec:	08075a00 	call	8075a0 <__mcmp>
  8044f0:	a80b883a 	mov	r5,r21
  8044f4:	980d883a 	mov	r6,r19
  8044f8:	b809883a 	mov	r4,r23
  8044fc:	1023883a 	mov	r17,r2
  804500:	08075f80 	call	8075f8 <__mdiff>
  804504:	1025883a 	mov	r18,r2
  804508:	10800317 	ldw	r2,12(r2)
  80450c:	e7000c04 	addi	fp,fp,48
  804510:	900b883a 	mov	r5,r18
  804514:	103fc526 	beq	r2,zero,80442c <_dtoa_r+0xddc>
  804518:	b809883a 	mov	r4,r23
  80451c:	0806c340 	call	806c34 <_Bfree>
  804520:	00800044 	movi	r2,1
  804524:	003fcb06 	br	804454 <_dtoa_r+0xe04>
  804528:	0806c580 	call	806c58 <__multadd>
  80452c:	1021883a 	mov	r16,r2
  804530:	1027883a 	mov	r19,r2
  804534:	003fe506 	br	8044cc <_dtoa_r+0xe7c>
  804538:	d8800117 	ldw	r2,4(sp)
  80453c:	108000d0 	cmplti	r2,r2,3
  804540:	10003c26 	beq	r2,zero,804634 <_dtoa_r+0xfe4>
  804544:	d8800617 	ldw	r2,24(sp)
  804548:	103fa91e 	bne	r2,zero,8043f0 <_dtoa_r+0xda0>
  80454c:	a80b883a 	mov	r5,r21
  804550:	b009883a 	mov	r4,r22
  804554:	08034300 	call	803430 <quorem>
  804558:	10c00c04 	addi	r3,r2,48
  80455c:	d8800317 	ldw	r2,12(sp)
  804560:	e4800044 	addi	r18,fp,1
  804564:	e0c00005 	stb	r3,0(fp)
  804568:	10800044 	addi	r2,r2,1
  80456c:	d8800315 	stw	r2,12(sp)
  804570:	0023883a 	mov	r17,zero
  804574:	003f0606 	br	804190 <_dtoa_r+0xb40>
  804578:	a80b883a 	mov	r5,r21
  80457c:	b009883a 	mov	r4,r22
  804580:	08075a00 	call	8075a0 <__mcmp>
  804584:	103ee60e 	bge	r2,zero,804120 <_dtoa_r+0xad0>
  804588:	b00b883a 	mov	r5,r22
  80458c:	000f883a 	mov	r7,zero
  804590:	01800284 	movi	r6,10
  804594:	b809883a 	mov	r4,r23
  804598:	0806c580 	call	806c58 <__multadd>
  80459c:	d8c00317 	ldw	r3,12(sp)
  8045a0:	102d883a 	mov	r22,r2
  8045a4:	d8800617 	ldw	r2,24(sp)
  8045a8:	1cffffc4 	addi	r19,r3,-1
  8045ac:	103f861e 	bne	r2,zero,8043c8 <_dtoa_r+0xd78>
  8045b0:	d8800b17 	ldw	r2,44(sp)
  8045b4:	0081d40e 	bge	zero,r2,804d08 <_dtoa_r+0x16b8>
  8045b8:	d8800415 	stw	r2,16(sp)
  8045bc:	003edf06 	br	80413c <_dtoa_r+0xaec>
  8045c0:	00802074 	movhi	r2,129
  8045c4:	e701b904 	addi	fp,fp,1764
  8045c8:	1081b9c4 	addi	r2,r2,1767
  8045cc:	003dd906 	br	803d34 <_dtoa_r+0x6e4>
  8045d0:	00800044 	movi	r2,1
  8045d4:	d8800615 	stw	r2,24(sp)
  8045d8:	003f3606 	br	8042b4 <_dtoa_r+0xc64>
  8045dc:	a03ead1e 	bne	r20,zero,804094 <_dtoa_r+0xa44>
  8045e0:	00800434 	movhi	r2,16
  8045e4:	10bfffc4 	addi	r2,r2,-1
  8045e8:	8884703a 	and	r2,r17,r2
  8045ec:	103ea91e 	bne	r2,zero,804094 <_dtoa_r+0xa44>
  8045f0:	8c5ffc2c 	andhi	r17,r17,32752
  8045f4:	883ea726 	beq	r17,zero,804094 <_dtoa_r+0xa44>
  8045f8:	d8800517 	ldw	r2,20(sp)
  8045fc:	04400044 	movi	r17,1
  804600:	10800044 	addi	r2,r2,1
  804604:	d8800515 	stw	r2,20(sp)
  804608:	d8800217 	ldw	r2,8(sp)
  80460c:	10800044 	addi	r2,r2,1
  804610:	d8800215 	stw	r2,8(sp)
  804614:	003ea006 	br	804098 <_dtoa_r+0xa48>
  804618:	00800044 	movi	r2,1
  80461c:	d8800415 	stw	r2,16(sp)
  804620:	d8801e15 	stw	r2,120(sp)
  804624:	003f1b06 	br	804294 <_dtoa_r+0xc44>
  804628:	d8800b17 	ldw	r2,44(sp)
  80462c:	dcc00315 	stw	r19,12(sp)
  804630:	d8800415 	stw	r2,16(sp)
  804634:	d8800417 	ldw	r2,16(sp)
  804638:	103dfb1e 	bne	r2,zero,803e28 <_dtoa_r+0x7d8>
  80463c:	a80b883a 	mov	r5,r21
  804640:	b809883a 	mov	r4,r23
  804644:	000f883a 	mov	r7,zero
  804648:	01800144 	movi	r6,5
  80464c:	0806c580 	call	806c58 <__multadd>
  804650:	100b883a 	mov	r5,r2
  804654:	b009883a 	mov	r4,r22
  804658:	102b883a 	mov	r21,r2
  80465c:	08075a00 	call	8075a0 <__mcmp>
  804660:	00bdf10e 	bge	zero,r2,803e28 <_dtoa_r+0x7d8>
  804664:	00800c44 	movi	r2,49
  804668:	e0800005 	stb	r2,0(fp)
  80466c:	d8800317 	ldw	r2,12(sp)
  804670:	e4800044 	addi	r18,fp,1
  804674:	14400044 	addi	r17,r2,1
  804678:	a80b883a 	mov	r5,r21
  80467c:	b809883a 	mov	r4,r23
  804680:	0806c340 	call	806c34 <_Bfree>
  804684:	88800044 	addi	r2,r17,1
  804688:	d8800315 	stw	r2,12(sp)
  80468c:	803ee01e 	bne	r16,zero,804210 <_dtoa_r+0xbc0>
  804690:	003ee206 	br	80421c <_dtoa_r+0xbcc>
  804694:	1805883a 	mov	r2,r3
  804698:	003e5806 	br	803ffc <_dtoa_r+0x9ac>
  80469c:	800b883a 	mov	r5,r16
  8046a0:	900d883a 	mov	r6,r18
  8046a4:	b809883a 	mov	r4,r23
  8046a8:	08074180 	call	807418 <__lshift>
  8046ac:	1021883a 	mov	r16,r2
  8046b0:	003f5006 	br	8043f4 <_dtoa_r+0xda4>
  8046b4:	156bc83a 	sub	r21,r2,r21
  8046b8:	003e3e06 	br	803fb4 <_dtoa_r+0x964>
  8046bc:	dd000a15 	stw	r20,40(sp)
  8046c0:	dc400c15 	stw	r17,48(sp)
  8046c4:	04000084 	movi	r16,2
  8046c8:	003cc906 	br	8039f0 <_dtoa_r+0x3a0>
  8046cc:	00800044 	movi	r2,1
  8046d0:	003ead06 	br	804188 <_dtoa_r+0xb38>
  8046d4:	00800044 	movi	r2,1
  8046d8:	d8800615 	stw	r2,24(sp)
  8046dc:	003c9006 	br	803920 <_dtoa_r+0x2d0>
  8046e0:	1000031e 	bne	r2,zero,8046f0 <_dtoa_r+0x10a0>
  8046e4:	d8c00117 	ldw	r3,4(sp)
  8046e8:	18c0004c 	andi	r3,r3,1
  8046ec:	183eb71e 	bne	r3,zero,8041cc <_dtoa_r+0xb7c>
  8046f0:	2005883a 	mov	r2,r4
  8046f4:	00000206 	br	804700 <_dtoa_r+0x10b0>
  8046f8:	90bfff83 	ldbu	r2,-2(r18)
  8046fc:	1825883a 	mov	r18,r3
  804700:	10803fcc 	andi	r2,r2,255
  804704:	1080201c 	xori	r2,r2,128
  804708:	10bfe004 	addi	r2,r2,-128
  80470c:	10800c18 	cmpnei	r2,r2,48
  804710:	90ffffc4 	addi	r3,r18,-1
  804714:	103ff826 	beq	r2,zero,8046f8 <_dtoa_r+0x10a8>
  804718:	003eb406 	br	8041ec <_dtoa_r+0xb9c>
  80471c:	00800c44 	movi	r2,49
  804720:	e0800005 	stb	r2,0(fp)
  804724:	d8800317 	ldw	r2,12(sp)
  804728:	10800044 	addi	r2,r2,1
  80472c:	d8800315 	stw	r2,12(sp)
  804730:	003eae06 	br	8041ec <_dtoa_r+0xb9c>
  804734:	d8c00917 	ldw	r3,36(sp)
  804738:	18011826 	beq	r3,zero,804b9c <_dtoa_r+0x154c>
  80473c:	d8c00517 	ldw	r3,20(sp)
  804740:	d9000217 	ldw	r4,8(sp)
  804744:	10810cc4 	addi	r2,r2,1075
  804748:	dd400717 	ldw	r21,28(sp)
  80474c:	2089883a 	add	r4,r4,r2
  804750:	1885883a 	add	r2,r3,r2
  804754:	1825883a 	mov	r18,r3
  804758:	d9000215 	stw	r4,8(sp)
  80475c:	d8800515 	stw	r2,20(sp)
  804760:	003e1d06 	br	803fd8 <_dtoa_r+0x988>
  804764:	8009883a 	mov	r4,r16
  804768:	080db4c0 	call	80db4c <__floatsidf>
  80476c:	d9c00a17 	ldw	r7,40(sp)
  804770:	900d883a 	mov	r6,r18
  804774:	1009883a 	mov	r4,r2
  804778:	180b883a 	mov	r5,r3
  80477c:	080c99c0 	call	80c99c <__muldf3>
  804780:	000d883a 	mov	r6,zero
  804784:	01d00734 	movhi	r7,16412
  804788:	1009883a 	mov	r4,r2
  80478c:	180b883a 	mov	r5,r3
  804790:	080b4900 	call	80b490 <__adddf3>
  804794:	d8800c15 	stw	r2,48(sp)
  804798:	00bf3034 	movhi	r2,64704
  80479c:	1885883a 	add	r2,r3,r2
  8047a0:	d8800d15 	stw	r2,52(sp)
  8047a4:	d9400a17 	ldw	r5,40(sp)
  8047a8:	9009883a 	mov	r4,r18
  8047ac:	000d883a 	mov	r6,zero
  8047b0:	01d00534 	movhi	r7,16404
  8047b4:	080d1440 	call	80d144 <__subdf3>
  8047b8:	dd400d17 	ldw	r21,52(sp)
  8047bc:	d9800c17 	ldw	r6,48(sp)
  8047c0:	1009883a 	mov	r4,r2
  8047c4:	a80f883a 	mov	r7,r21
  8047c8:	180b883a 	mov	r5,r3
  8047cc:	1025883a 	mov	r18,r2
  8047d0:	1821883a 	mov	r16,r3
  8047d4:	080c7bc0 	call	80c7bc <__gedf2>
  8047d8:	00812d16 	blt	zero,r2,804c90 <_dtoa_r+0x1640>
  8047dc:	d9800c17 	ldw	r6,48(sp)
  8047e0:	a9e0003c 	xorhi	r7,r21,32768
  8047e4:	9009883a 	mov	r4,r18
  8047e8:	800b883a 	mov	r5,r16
  8047ec:	080c8ac0 	call	80c8ac <__ledf2>
  8047f0:	103d6e0e 	bge	r2,zero,803dac <_dtoa_r+0x75c>
  8047f4:	002b883a 	mov	r21,zero
  8047f8:	0021883a 	mov	r16,zero
  8047fc:	003d8a06 	br	803e28 <_dtoa_r+0x7d8>
  804800:	d9800717 	ldw	r6,28(sp)
  804804:	b00b883a 	mov	r5,r22
  804808:	b809883a 	mov	r4,r23
  80480c:	08073000 	call	807300 <__pow5mult>
  804810:	102d883a 	mov	r22,r2
  804814:	003e1706 	br	804074 <_dtoa_r+0xa24>
  804818:	d8800317 	ldw	r2,12(sp)
  80481c:	10010d26 	beq	r2,zero,804c54 <_dtoa_r+0x1604>
  804820:	00abc83a 	sub	r21,zero,r2
  804824:	a88003cc 	andi	r2,r21,15
  804828:	100690fa 	slli	r3,r2,3
  80482c:	00802074 	movhi	r2,129
  804830:	1081f904 	addi	r2,r2,2020
  804834:	10c5883a 	add	r2,r2,r3
  804838:	11800017 	ldw	r6,0(r2)
  80483c:	11c00117 	ldw	r7,4(r2)
  804840:	a009883a 	mov	r4,r20
  804844:	880b883a 	mov	r5,r17
  804848:	a82bd13a 	srai	r21,r21,4
  80484c:	080c99c0 	call	80c99c <__muldf3>
  804850:	d8c00a15 	stw	r3,40(sp)
  804854:	1025883a 	mov	r18,r2
  804858:	a8013826 	beq	r21,zero,804d3c <_dtoa_r+0x16ec>
  80485c:	02002074 	movhi	r8,129
  804860:	04000084 	movi	r16,2
  804864:	4201ef04 	addi	r8,r8,1980
  804868:	180b883a 	mov	r5,r3
  80486c:	dc400c15 	stw	r17,48(sp)
  804870:	1009883a 	mov	r4,r2
  804874:	8023883a 	mov	r17,r16
  804878:	0007883a 	mov	r3,zero
  80487c:	4021883a 	mov	r16,r8
  804880:	a980004c 	andi	r6,r21,1
  804884:	30000726 	beq	r6,zero,8048a4 <_dtoa_r+0x1254>
  804888:	81800017 	ldw	r6,0(r16)
  80488c:	81c00117 	ldw	r7,4(r16)
  804890:	8c400044 	addi	r17,r17,1
  804894:	080c99c0 	call	80c99c <__muldf3>
  804898:	180b883a 	mov	r5,r3
  80489c:	1009883a 	mov	r4,r2
  8048a0:	00c00044 	movi	r3,1
  8048a4:	a82bd07a 	srai	r21,r21,1
  8048a8:	84000204 	addi	r16,r16,8
  8048ac:	a83ff41e 	bne	r21,zero,804880 <_dtoa_r+0x1230>
  8048b0:	18c03fcc 	andi	r3,r3,255
  8048b4:	8821883a 	mov	r16,r17
  8048b8:	dc400c17 	ldw	r17,48(sp)
  8048bc:	183c6526 	beq	r3,zero,803a54 <_dtoa_r+0x404>
  8048c0:	2025883a 	mov	r18,r4
  8048c4:	d9400a15 	stw	r5,40(sp)
  8048c8:	003c6206 	br	803a54 <_dtoa_r+0x404>
  8048cc:	a03eb41e 	bne	r20,zero,8043a0 <_dtoa_r+0xd50>
  8048d0:	00800434 	movhi	r2,16
  8048d4:	10bfffc4 	addi	r2,r2,-1
  8048d8:	8884703a 	and	r2,r17,r2
  8048dc:	103f4426 	beq	r2,zero,8045f0 <_dtoa_r+0xfa0>
  8048e0:	003eaf06 	br	8043a0 <_dtoa_r+0xd50>
  8048e4:	d9000317 	ldw	r4,12(sp)
  8048e8:	e007883a 	mov	r3,fp
  8048ec:	df000817 	ldw	fp,32(sp)
  8048f0:	21000044 	addi	r4,r4,1
  8048f4:	d9000315 	stw	r4,12(sp)
  8048f8:	00800f0e 	bge	zero,r2,804938 <_dtoa_r+0x12e8>
  8048fc:	b00b883a 	mov	r5,r22
  804900:	01800044 	movi	r6,1
  804904:	b809883a 	mov	r4,r23
  804908:	d8c00115 	stw	r3,4(sp)
  80490c:	08074180 	call	807418 <__lshift>
  804910:	a80b883a 	mov	r5,r21
  804914:	1009883a 	mov	r4,r2
  804918:	102d883a 	mov	r22,r2
  80491c:	08075a00 	call	8075a0 <__mcmp>
  804920:	d8c00117 	ldw	r3,4(sp)
  804924:	0080e40e 	bge	zero,r2,804cb8 <_dtoa_r+0x1668>
  804928:	18c00e60 	cmpeqi	r3,r3,57
  80492c:	1800d21e 	bne	r3,zero,804c78 <_dtoa_r+0x1628>
  804930:	d8800517 	ldw	r2,20(sp)
  804934:	10c00c44 	addi	r3,r2,49
  804938:	8023883a 	mov	r17,r16
  80493c:	a0c00005 	stb	r3,0(r20)
  804940:	9821883a 	mov	r16,r19
  804944:	003e2906 	br	8041ec <_dtoa_r+0xb9c>
  804948:	b027883a 	mov	r19,r22
  80494c:	ddc00417 	ldw	r23,16(sp)
  804950:	dd800217 	ldw	r22,8(sp)
  804954:	200d883a 	mov	r6,r4
  804958:	280f883a 	mov	r7,r5
  80495c:	080b4900 	call	80b490 <__adddf3>
  804960:	dd400117 	ldw	r21,4(sp)
  804964:	180b883a 	mov	r5,r3
  804968:	900f883a 	mov	r7,r18
  80496c:	a80d883a 	mov	r6,r21
  804970:	1009883a 	mov	r4,r2
  804974:	1823883a 	mov	r17,r3
  804978:	1029883a 	mov	r20,r2
  80497c:	080c7bc0 	call	80c7bc <__gedf2>
  804980:	d8c00317 	ldw	r3,12(sp)
  804984:	18c00044 	addi	r3,r3,1
  804988:	d8c00315 	stw	r3,12(sp)
  80498c:	00bcc716 	blt	zero,r2,803cac <_dtoa_r+0x65c>
  804990:	a80d883a 	mov	r6,r21
  804994:	900f883a 	mov	r7,r18
  804998:	a009883a 	mov	r4,r20
  80499c:	880b883a 	mov	r5,r17
  8049a0:	080c73c0 	call	80c73c <__eqdf2>
  8049a4:	1000021e 	bne	r2,zero,8049b0 <_dtoa_r+0x1360>
  8049a8:	9cc0004c 	andi	r19,r19,1
  8049ac:	983cbf1e 	bne	r19,zero,803cac <_dtoa_r+0x65c>
  8049b0:	8025883a 	mov	r18,r16
  8049b4:	003e1906 	br	80421c <_dtoa_r+0xbcc>
  8049b8:	81400117 	ldw	r5,4(r16)
  8049bc:	b809883a 	mov	r4,r23
  8049c0:	0806b900 	call	806b90 <_Balloc>
  8049c4:	1023883a 	mov	r17,r2
  8049c8:	1000e526 	beq	r2,zero,804d60 <_dtoa_r+0x1710>
  8049cc:	81800417 	ldw	r6,16(r16)
  8049d0:	81400304 	addi	r5,r16,12
  8049d4:	11000304 	addi	r4,r2,12
  8049d8:	31800084 	addi	r6,r6,2
  8049dc:	300c90ba 	slli	r6,r6,2
  8049e0:	08068740 	call	806874 <memcpy>
  8049e4:	01800044 	movi	r6,1
  8049e8:	880b883a 	mov	r5,r17
  8049ec:	b809883a 	mov	r4,r23
  8049f0:	08074180 	call	807418 <__lshift>
  8049f4:	1027883a 	mov	r19,r2
  8049f8:	003e8006 	br	8043fc <_dtoa_r+0xdac>
  8049fc:	b00b883a 	mov	r5,r22
  804a00:	b809883a 	mov	r4,r23
  804a04:	08073000 	call	807300 <__pow5mult>
  804a08:	102d883a 	mov	r22,r2
  804a0c:	003d9906 	br	804074 <_dtoa_r+0xa24>
  804a10:	d8800517 	ldw	r2,20(sp)
  804a14:	d8c00417 	ldw	r3,16(sp)
  804a18:	10e5c83a 	sub	r18,r2,r3
  804a1c:	003d6e06 	br	803fd8 <_dtoa_r+0x988>
  804a20:	d9000317 	ldw	r4,12(sp)
  804a24:	e007883a 	mov	r3,fp
  804a28:	18800e58 	cmpnei	r2,r3,57
  804a2c:	21000044 	addi	r4,r4,1
  804a30:	d9000315 	stw	r4,12(sp)
  804a34:	df000817 	ldw	fp,32(sp)
  804a38:	10008f26 	beq	r2,zero,804c78 <_dtoa_r+0x1628>
  804a3c:	18c00044 	addi	r3,r3,1
  804a40:	003fbd06 	br	804938 <_dtoa_r+0x12e8>
  804a44:	d8800317 	ldw	r2,12(sp)
  804a48:	e007883a 	mov	r3,fp
  804a4c:	8023883a 	mov	r17,r16
  804a50:	10800044 	addi	r2,r2,1
  804a54:	df000817 	ldw	fp,32(sp)
  804a58:	d8800315 	stw	r2,12(sp)
  804a5c:	9821883a 	mov	r16,r19
  804a60:	003dcb06 	br	804190 <_dtoa_r+0xb40>
  804a64:	d9000c17 	ldw	r4,48(sp)
  804a68:	d9400d17 	ldw	r5,52(sp)
  804a6c:	600d883a 	mov	r6,r12
  804a70:	680f883a 	mov	r7,r13
  804a74:	dac00a15 	stw	r11,40(sp)
  804a78:	080c99c0 	call	80c99c <__muldf3>
  804a7c:	dac00a17 	ldw	r11,40(sp)
  804a80:	d9400e17 	ldw	r5,56(sp)
  804a84:	d8800a15 	stw	r2,40(sp)
  804a88:	e2c00005 	stb	r11,0(fp)
  804a8c:	29000058 	cmpnei	r4,r5,1
  804a90:	d8c00c15 	stw	r3,48(sp)
  804a94:	e145883a 	add	r2,fp,r5
  804a98:	20002126 	beq	r4,zero,804b20 <_dtoa_r+0x14d0>
  804a9c:	dc400e15 	stw	r17,56(sp)
  804aa0:	dcc00d15 	stw	r19,52(sp)
  804aa4:	8023883a 	mov	r17,r16
  804aa8:	a809883a 	mov	r4,r21
  804aac:	900b883a 	mov	r5,r18
  804ab0:	1021883a 	mov	r16,r2
  804ab4:	000d883a 	mov	r6,zero
  804ab8:	01d00934 	movhi	r7,16420
  804abc:	080c99c0 	call	80c99c <__muldf3>
  804ac0:	180b883a 	mov	r5,r3
  804ac4:	1009883a 	mov	r4,r2
  804ac8:	182b883a 	mov	r21,r3
  804acc:	1027883a 	mov	r19,r2
  804ad0:	080dacc0 	call	80dacc <__fixdfsi>
  804ad4:	1009883a 	mov	r4,r2
  804ad8:	1025883a 	mov	r18,r2
  804adc:	080db4c0 	call	80db4c <__floatsidf>
  804ae0:	9809883a 	mov	r4,r19
  804ae4:	a80b883a 	mov	r5,r21
  804ae8:	100d883a 	mov	r6,r2
  804aec:	180f883a 	mov	r7,r3
  804af0:	8c400044 	addi	r17,r17,1
  804af4:	94800c04 	addi	r18,r18,48
  804af8:	080d1440 	call	80d144 <__subdf3>
  804afc:	8cbfffc5 	stb	r18,-1(r17)
  804b00:	1009883a 	mov	r4,r2
  804b04:	180b883a 	mov	r5,r3
  804b08:	847fea1e 	bne	r16,r17,804ab4 <_dtoa_r+0x1464>
  804b0c:	8821883a 	mov	r16,r17
  804b10:	dcc00d17 	ldw	r19,52(sp)
  804b14:	dc400e17 	ldw	r17,56(sp)
  804b18:	102b883a 	mov	r21,r2
  804b1c:	1825883a 	mov	r18,r3
  804b20:	d9000a17 	ldw	r4,40(sp)
  804b24:	d9400c17 	ldw	r5,48(sp)
  804b28:	000d883a 	mov	r6,zero
  804b2c:	01cff834 	movhi	r7,16352
  804b30:	080b4900 	call	80b490 <__adddf3>
  804b34:	a80d883a 	mov	r6,r21
  804b38:	900f883a 	mov	r7,r18
  804b3c:	1009883a 	mov	r4,r2
  804b40:	180b883a 	mov	r5,r3
  804b44:	080c8ac0 	call	80c8ac <__ledf2>
  804b48:	103c5316 	blt	r2,zero,803c98 <_dtoa_r+0x648>
  804b4c:	d9800a17 	ldw	r6,40(sp)
  804b50:	d9c00c17 	ldw	r7,48(sp)
  804b54:	0009883a 	mov	r4,zero
  804b58:	014ff834 	movhi	r5,16352
  804b5c:	080d1440 	call	80d144 <__subdf3>
  804b60:	a80d883a 	mov	r6,r21
  804b64:	900f883a 	mov	r7,r18
  804b68:	1009883a 	mov	r4,r2
  804b6c:	180b883a 	mov	r5,r3
  804b70:	080c7bc0 	call	80c7bc <__gedf2>
  804b74:	00bc8d0e 	bge	zero,r2,803dac <_dtoa_r+0x75c>
  804b78:	80bfffc7 	ldb	r2,-1(r16)
  804b7c:	8025883a 	mov	r18,r16
  804b80:	843fffc4 	addi	r16,r16,-1
  804b84:	10800c20 	cmpeqi	r2,r2,48
  804b88:	103ffb1e 	bne	r2,zero,804b78 <_dtoa_r+0x1528>
  804b8c:	d8801117 	ldw	r2,68(sp)
  804b90:	10800044 	addi	r2,r2,1
  804b94:	d8800315 	stw	r2,12(sp)
  804b98:	003da006 	br	80421c <_dtoa_r+0xbcc>
  804b9c:	d8c01217 	ldw	r3,72(sp)
  804ba0:	00800d84 	movi	r2,54
  804ba4:	d9000517 	ldw	r4,20(sp)
  804ba8:	10c5c83a 	sub	r2,r2,r3
  804bac:	d8c00217 	ldw	r3,8(sp)
  804bb0:	dd400717 	ldw	r21,28(sp)
  804bb4:	2025883a 	mov	r18,r4
  804bb8:	1887883a 	add	r3,r3,r2
  804bbc:	2085883a 	add	r2,r4,r2
  804bc0:	d8c00215 	stw	r3,8(sp)
  804bc4:	d8800515 	stw	r2,20(sp)
  804bc8:	003d0306 	br	803fd8 <_dtoa_r+0x988>
  804bcc:	d8800417 	ldw	r2,16(sp)
  804bd0:	103ee426 	beq	r2,zero,804764 <_dtoa_r+0x1114>
  804bd4:	d8800b17 	ldw	r2,44(sp)
  804bd8:	00bc740e 	bge	zero,r2,803dac <_dtoa_r+0x75c>
  804bdc:	a80b883a 	mov	r5,r21
  804be0:	9009883a 	mov	r4,r18
  804be4:	000d883a 	mov	r6,zero
  804be8:	01d00934 	movhi	r7,16420
  804bec:	080c99c0 	call	80c99c <__muldf3>
  804bf0:	81000044 	addi	r4,r16,1
  804bf4:	1025883a 	mov	r18,r2
  804bf8:	182b883a 	mov	r21,r3
  804bfc:	d8c00a15 	stw	r3,40(sp)
  804c00:	080db4c0 	call	80db4c <__floatsidf>
  804c04:	900d883a 	mov	r6,r18
  804c08:	a80f883a 	mov	r7,r21
  804c0c:	1009883a 	mov	r4,r2
  804c10:	180b883a 	mov	r5,r3
  804c14:	080c99c0 	call	80c99c <__muldf3>
  804c18:	1009883a 	mov	r4,r2
  804c1c:	000d883a 	mov	r6,zero
  804c20:	01d00734 	movhi	r7,16412
  804c24:	180b883a 	mov	r5,r3
  804c28:	080b4900 	call	80b490 <__adddf3>
  804c2c:	d9000317 	ldw	r4,12(sp)
  804c30:	d8800c15 	stw	r2,48(sp)
  804c34:	00bf3034 	movhi	r2,64704
  804c38:	1887883a 	add	r3,r3,r2
  804c3c:	d8800b17 	ldw	r2,44(sp)
  804c40:	213fffc4 	addi	r4,r4,-1
  804c44:	d9001115 	stw	r4,68(sp)
  804c48:	d8c00d15 	stw	r3,52(sp)
  804c4c:	d8800e15 	stw	r2,56(sp)
  804c50:	003b9f06 	br	803ad0 <_dtoa_r+0x480>
  804c54:	a025883a 	mov	r18,r20
  804c58:	dc400a15 	stw	r17,40(sp)
  804c5c:	04000084 	movi	r16,2
  804c60:	003b7c06 	br	803a54 <_dtoa_r+0x404>
  804c64:	d8800317 	ldw	r2,12(sp)
  804c68:	00c00c44 	movi	r3,49
  804c6c:	10800044 	addi	r2,r2,1
  804c70:	d8800315 	stw	r2,12(sp)
  804c74:	003c1606 	br	803cd0 <_dtoa_r+0x680>
  804c78:	00800e44 	movi	r2,57
  804c7c:	8023883a 	mov	r17,r16
  804c80:	a0800005 	stb	r2,0(r20)
  804c84:	9821883a 	mov	r16,r19
  804c88:	01000e44 	movi	r4,57
  804c8c:	003d4f06 	br	8041cc <_dtoa_r+0xb7c>
  804c90:	002b883a 	mov	r21,zero
  804c94:	0021883a 	mov	r16,zero
  804c98:	003e7206 	br	804664 <_dtoa_r+0x1014>
  804c9c:	dd800d17 	ldw	r22,52(sp)
  804ca0:	ddc00e17 	ldw	r23,56(sp)
  804ca4:	d8801117 	ldw	r2,68(sp)
  804ca8:	8025883a 	mov	r18,r16
  804cac:	10800044 	addi	r2,r2,1
  804cb0:	d8800315 	stw	r2,12(sp)
  804cb4:	003d5906 	br	80421c <_dtoa_r+0xbcc>
  804cb8:	103f1f1e 	bne	r2,zero,804938 <_dtoa_r+0x12e8>
  804cbc:	1880004c 	andi	r2,r3,1
  804cc0:	103f191e 	bne	r2,zero,804928 <_dtoa_r+0x12d8>
  804cc4:	003f1c06 	br	804938 <_dtoa_r+0x12e8>
  804cc8:	dcc00f17 	ldw	r19,60(sp)
  804ccc:	dd800d17 	ldw	r22,52(sp)
  804cd0:	ddc00e17 	ldw	r23,56(sp)
  804cd4:	dc400c17 	ldw	r17,48(sp)
  804cd8:	dd000a17 	ldw	r20,40(sp)
  804cdc:	003c3306 	br	803dac <_dtoa_r+0x75c>
  804ce0:	d9000317 	ldw	r4,12(sp)
  804ce4:	e007883a 	mov	r3,fp
  804ce8:	18800e60 	cmpeqi	r2,r3,57
  804cec:	21000044 	addi	r4,r4,1
  804cf0:	d9000315 	stw	r4,12(sp)
  804cf4:	df000817 	ldw	fp,32(sp)
  804cf8:	a4800044 	addi	r18,r20,1
  804cfc:	103fde1e 	bne	r2,zero,804c78 <_dtoa_r+0x1628>
  804d00:	047f0b16 	blt	zero,r17,804930 <_dtoa_r+0x12e0>
  804d04:	003f0c06 	br	804938 <_dtoa_r+0x12e8>
  804d08:	d8800117 	ldw	r2,4(sp)
  804d0c:	108000c8 	cmpgei	r2,r2,3
  804d10:	103e451e 	bne	r2,zero,804628 <_dtoa_r+0xfd8>
  804d14:	dcc00315 	stw	r19,12(sp)
  804d18:	003e0c06 	br	80454c <_dtoa_r+0xefc>
  804d1c:	d8800117 	ldw	r2,4(sp)
  804d20:	108000c8 	cmpgei	r2,r2,3
  804d24:	103e401e 	bne	r2,zero,804628 <_dtoa_r+0xfd8>
  804d28:	d8800b17 	ldw	r2,44(sp)
  804d2c:	dcc00315 	stw	r19,12(sp)
  804d30:	d8800415 	stw	r2,16(sp)
  804d34:	04bdaf0e 	bge	zero,r18,8043f4 <_dtoa_r+0xda4>
  804d38:	003e5806 	br	80469c <_dtoa_r+0x104c>
  804d3c:	04000084 	movi	r16,2
  804d40:	003b4406 	br	803a54 <_dtoa_r+0x404>
  804d44:	01c02074 	movhi	r7,129
  804d48:	01002074 	movhi	r4,129
  804d4c:	39c1bd04 	addi	r7,r7,1780
  804d50:	000d883a 	mov	r6,zero
  804d54:	01406a84 	movi	r5,426
  804d58:	2101c204 	addi	r4,r4,1800
  804d5c:	080997c0 	call	80997c <__assert_func>
  804d60:	01c02074 	movhi	r7,129
  804d64:	01002074 	movhi	r4,129
  804d68:	39c1bd04 	addi	r7,r7,1780
  804d6c:	000d883a 	mov	r6,zero
  804d70:	0140ba84 	movi	r5,746
  804d74:	2101c204 	addi	r4,r4,1800
  804d78:	080997c0 	call	80997c <__assert_func>
  804d7c:	e701ba04 	addi	fp,fp,1768
  804d80:	003a6406 	br	803714 <_dtoa_r+0xc4>
  804d84:	18c00120 	cmpeqi	r3,r3,4
  804d88:	183cd51e 	bne	r3,zero,8040e0 <_dtoa_r+0xa90>
  804d8c:	00c00f04 	movi	r3,60
  804d90:	1885c83a 	sub	r2,r3,r2
  804d94:	003d6c06 	br	804348 <_dtoa_r+0xcf8>
  804d98:	000b883a 	mov	r5,zero
  804d9c:	003af006 	br	803960 <_dtoa_r+0x310>

00804da0 <__sflush_r>:
  804da0:	2880030b 	ldhu	r2,12(r5)
  804da4:	defffb04 	addi	sp,sp,-20
  804da8:	dcc00315 	stw	r19,12(sp)
  804dac:	dc000015 	stw	r16,0(sp)
  804db0:	dfc00415 	stw	ra,16(sp)
  804db4:	dc800215 	stw	r18,8(sp)
  804db8:	dc400115 	stw	r17,4(sp)
  804dbc:	10c0020c 	andi	r3,r2,8
  804dc0:	2821883a 	mov	r16,r5
  804dc4:	2027883a 	mov	r19,r4
  804dc8:	18003f1e 	bne	r3,zero,804ec8 <__sflush_r+0x128>
  804dcc:	28c00117 	ldw	r3,4(r5)
  804dd0:	10820014 	ori	r2,r2,2048
  804dd4:	2880030d 	sth	r2,12(r5)
  804dd8:	00c0550e 	bge	zero,r3,804f30 <__sflush_r+0x190>
  804ddc:	82000a17 	ldw	r8,40(r16)
  804de0:	40003126 	beq	r8,zero,804ea8 <__sflush_r+0x108>
  804de4:	9c400017 	ldw	r17,0(r19)
  804de8:	1104000c 	andi	r4,r2,4096
  804dec:	98000015 	stw	zero,0(r19)
  804df0:	81400717 	ldw	r5,28(r16)
  804df4:	1007883a 	mov	r3,r2
  804df8:	2000521e 	bne	r4,zero,804f44 <__sflush_r+0x1a4>
  804dfc:	01c00044 	movi	r7,1
  804e00:	000d883a 	mov	r6,zero
  804e04:	9809883a 	mov	r4,r19
  804e08:	403ee83a 	callr	r8
  804e0c:	10ffffd8 	cmpnei	r3,r2,-1
  804e10:	18005826 	beq	r3,zero,804f74 <__sflush_r+0x1d4>
  804e14:	80c0030b 	ldhu	r3,12(r16)
  804e18:	82000a17 	ldw	r8,40(r16)
  804e1c:	81400717 	ldw	r5,28(r16)
  804e20:	18c0010c 	andi	r3,r3,4
  804e24:	18000626 	beq	r3,zero,804e40 <__sflush_r+0xa0>
  804e28:	81000117 	ldw	r4,4(r16)
  804e2c:	80c00c17 	ldw	r3,48(r16)
  804e30:	1105c83a 	sub	r2,r2,r4
  804e34:	18000226 	beq	r3,zero,804e40 <__sflush_r+0xa0>
  804e38:	80c00f17 	ldw	r3,60(r16)
  804e3c:	10c5c83a 	sub	r2,r2,r3
  804e40:	100d883a 	mov	r6,r2
  804e44:	000f883a 	mov	r7,zero
  804e48:	9809883a 	mov	r4,r19
  804e4c:	403ee83a 	callr	r8
  804e50:	10ffffd8 	cmpnei	r3,r2,-1
  804e54:	18003d1e 	bne	r3,zero,804f4c <__sflush_r+0x1ac>
  804e58:	99000017 	ldw	r4,0(r19)
  804e5c:	80c0030b 	ldhu	r3,12(r16)
  804e60:	20004e26 	beq	r4,zero,804f9c <__sflush_r+0x1fc>
  804e64:	21400760 	cmpeqi	r5,r4,29
  804e68:	2800021e 	bne	r5,zero,804e74 <__sflush_r+0xd4>
  804e6c:	210005a0 	cmpeqi	r4,r4,22
  804e70:	20002c26 	beq	r4,zero,804f24 <__sflush_r+0x184>
  804e74:	80800417 	ldw	r2,16(r16)
  804e78:	18fdffcc 	andi	r3,r3,63487
  804e7c:	80c0030d 	sth	r3,12(r16)
  804e80:	80000115 	stw	zero,4(r16)
  804e84:	80800015 	stw	r2,0(r16)
  804e88:	81400c17 	ldw	r5,48(r16)
  804e8c:	9c400015 	stw	r17,0(r19)
  804e90:	28000526 	beq	r5,zero,804ea8 <__sflush_r+0x108>
  804e94:	80801004 	addi	r2,r16,64
  804e98:	28800226 	beq	r5,r2,804ea4 <__sflush_r+0x104>
  804e9c:	9809883a 	mov	r4,r19
  804ea0:	08054c00 	call	8054c0 <_free_r>
  804ea4:	80000c15 	stw	zero,48(r16)
  804ea8:	0005883a 	mov	r2,zero
  804eac:	dfc00417 	ldw	ra,16(sp)
  804eb0:	dcc00317 	ldw	r19,12(sp)
  804eb4:	dc800217 	ldw	r18,8(sp)
  804eb8:	dc400117 	ldw	r17,4(sp)
  804ebc:	dc000017 	ldw	r16,0(sp)
  804ec0:	dec00504 	addi	sp,sp,20
  804ec4:	f800283a 	ret
  804ec8:	2c800417 	ldw	r18,16(r5)
  804ecc:	903ff626 	beq	r18,zero,804ea8 <__sflush_r+0x108>
  804ed0:	2c400017 	ldw	r17,0(r5)
  804ed4:	108000cc 	andi	r2,r2,3
  804ed8:	2c800015 	stw	r18,0(r5)
  804edc:	8ca3c83a 	sub	r17,r17,r18
  804ee0:	1000161e 	bne	r2,zero,804f3c <__sflush_r+0x19c>
  804ee4:	28800517 	ldw	r2,20(r5)
  804ee8:	80800215 	stw	r2,8(r16)
  804eec:	04400316 	blt	zero,r17,804efc <__sflush_r+0x15c>
  804ef0:	003fed06 	br	804ea8 <__sflush_r+0x108>
  804ef4:	90a5883a 	add	r18,r18,r2
  804ef8:	047feb0e 	bge	zero,r17,804ea8 <__sflush_r+0x108>
  804efc:	80800917 	ldw	r2,36(r16)
  804f00:	81400717 	ldw	r5,28(r16)
  804f04:	880f883a 	mov	r7,r17
  804f08:	900d883a 	mov	r6,r18
  804f0c:	9809883a 	mov	r4,r19
  804f10:	103ee83a 	callr	r2
  804f14:	88a3c83a 	sub	r17,r17,r2
  804f18:	00bff616 	blt	zero,r2,804ef4 <__sflush_r+0x154>
  804f1c:	80c0030b 	ldhu	r3,12(r16)
  804f20:	00bfffc4 	movi	r2,-1
  804f24:	18c01014 	ori	r3,r3,64
  804f28:	80c0030d 	sth	r3,12(r16)
  804f2c:	003fdf06 	br	804eac <__sflush_r+0x10c>
  804f30:	28c00f17 	ldw	r3,60(r5)
  804f34:	00ffa916 	blt	zero,r3,804ddc <__sflush_r+0x3c>
  804f38:	003fdb06 	br	804ea8 <__sflush_r+0x108>
  804f3c:	0005883a 	mov	r2,zero
  804f40:	003fe906 	br	804ee8 <__sflush_r+0x148>
  804f44:	80801417 	ldw	r2,80(r16)
  804f48:	003fb506 	br	804e20 <__sflush_r+0x80>
  804f4c:	80c0030b 	ldhu	r3,12(r16)
  804f50:	81000417 	ldw	r4,16(r16)
  804f54:	80000115 	stw	zero,4(r16)
  804f58:	197dffcc 	andi	r5,r3,63487
  804f5c:	8140030d 	sth	r5,12(r16)
  804f60:	81000015 	stw	r4,0(r16)
  804f64:	18c4000c 	andi	r3,r3,4096
  804f68:	183fc726 	beq	r3,zero,804e88 <__sflush_r+0xe8>
  804f6c:	80801415 	stw	r2,80(r16)
  804f70:	003fc506 	br	804e88 <__sflush_r+0xe8>
  804f74:	98c00017 	ldw	r3,0(r19)
  804f78:	183fa626 	beq	r3,zero,804e14 <__sflush_r+0x74>
  804f7c:	19000760 	cmpeqi	r4,r3,29
  804f80:	20000e1e 	bne	r4,zero,804fbc <__sflush_r+0x21c>
  804f84:	18c00598 	cmpnei	r3,r3,22
  804f88:	18000c26 	beq	r3,zero,804fbc <__sflush_r+0x21c>
  804f8c:	80c0030b 	ldhu	r3,12(r16)
  804f90:	18c01014 	ori	r3,r3,64
  804f94:	80c0030d 	sth	r3,12(r16)
  804f98:	003fc406 	br	804eac <__sflush_r+0x10c>
  804f9c:	81000417 	ldw	r4,16(r16)
  804fa0:	197dffcc 	andi	r5,r3,63487
  804fa4:	8140030d 	sth	r5,12(r16)
  804fa8:	80000115 	stw	zero,4(r16)
  804fac:	81000015 	stw	r4,0(r16)
  804fb0:	18c4000c 	andi	r3,r3,4096
  804fb4:	183fb426 	beq	r3,zero,804e88 <__sflush_r+0xe8>
  804fb8:	003fec06 	br	804f6c <__sflush_r+0x1cc>
  804fbc:	9c400015 	stw	r17,0(r19)
  804fc0:	0005883a 	mov	r2,zero
  804fc4:	003fb906 	br	804eac <__sflush_r+0x10c>

00804fc8 <_fflush_r>:
  804fc8:	defffd04 	addi	sp,sp,-12
  804fcc:	dc000115 	stw	r16,4(sp)
  804fd0:	dfc00215 	stw	ra,8(sp)
  804fd4:	2021883a 	mov	r16,r4
  804fd8:	20000226 	beq	r4,zero,804fe4 <_fflush_r+0x1c>
  804fdc:	20800e17 	ldw	r2,56(r4)
  804fe0:	10000726 	beq	r2,zero,805000 <_fflush_r+0x38>
  804fe4:	2880030f 	ldh	r2,12(r5)
  804fe8:	10000a1e 	bne	r2,zero,805014 <_fflush_r+0x4c>
  804fec:	0005883a 	mov	r2,zero
  804ff0:	dfc00217 	ldw	ra,8(sp)
  804ff4:	dc000117 	ldw	r16,4(sp)
  804ff8:	dec00304 	addi	sp,sp,12
  804ffc:	f800283a 	ret
  805000:	d9400015 	stw	r5,0(sp)
  805004:	080535c0 	call	80535c <__sinit>
  805008:	d9400017 	ldw	r5,0(sp)
  80500c:	2880030f 	ldh	r2,12(r5)
  805010:	103ff626 	beq	r2,zero,804fec <_fflush_r+0x24>
  805014:	8009883a 	mov	r4,r16
  805018:	dfc00217 	ldw	ra,8(sp)
  80501c:	dc000117 	ldw	r16,4(sp)
  805020:	dec00304 	addi	sp,sp,12
  805024:	0804da01 	jmpi	804da0 <__sflush_r>

00805028 <fflush>:
  805028:	200b883a 	mov	r5,r4
  80502c:	20000326 	beq	r4,zero,80503c <fflush+0x14>
  805030:	00802074 	movhi	r2,129
  805034:	1109dc17 	ldw	r4,10096(r2)
  805038:	0804fc81 	jmpi	804fc8 <_fflush_r>
  80503c:	00802074 	movhi	r2,129
  805040:	1109db17 	ldw	r4,10092(r2)
  805044:	01402034 	movhi	r5,128
  805048:	2953f204 	addi	r5,r5,20424
  80504c:	0805d201 	jmpi	805d20 <_fwalk_reent>

00805050 <__fp_lock>:
  805050:	0005883a 	mov	r2,zero
  805054:	f800283a 	ret

00805058 <_cleanup_r>:
  805058:	01402074 	movhi	r5,129
  80505c:	2966ae04 	addi	r5,r5,-25928
  805060:	0805d201 	jmpi	805d20 <_fwalk_reent>

00805064 <__sinit.part.0>:
  805064:	00c02034 	movhi	r3,128
  805068:	20800117 	ldw	r2,4(r4)
  80506c:	18d41604 	addi	r3,r3,20568
  805070:	20c00f15 	stw	r3,60(r4)
  805074:	2140bb04 	addi	r5,r4,748
  805078:	00c000c4 	movi	r3,3
  80507c:	20c0b915 	stw	r3,740(r4)
  805080:	2140ba15 	stw	r5,744(r4)
  805084:	2000b815 	stw	zero,736(r4)
  805088:	10001705 	stb	zero,92(r2)
  80508c:	10001745 	stb	zero,93(r2)
  805090:	10001785 	stb	zero,94(r2)
  805094:	100017c5 	stb	zero,95(r2)
  805098:	10001805 	stb	zero,96(r2)
  80509c:	10001845 	stb	zero,97(r2)
  8050a0:	10001885 	stb	zero,98(r2)
  8050a4:	100018c5 	stb	zero,99(r2)
  8050a8:	00c00104 	movi	r3,4
  8050ac:	10c00315 	stw	r3,12(r2)
  8050b0:	02002074 	movhi	r8,129
  8050b4:	20c00217 	ldw	r3,8(r4)
  8050b8:	01c02074 	movhi	r7,129
  8050bc:	01802074 	movhi	r6,129
  8050c0:	01402074 	movhi	r5,129
  8050c4:	4220a104 	addi	r8,r8,-32124
  8050c8:	39e0b804 	addi	r7,r7,-32032
  8050cc:	31a0d804 	addi	r6,r6,-31904
  8050d0:	2960ef04 	addi	r5,r5,-31812
  8050d4:	02400074 	movhi	r9,1
  8050d8:	10001915 	stw	zero,100(r2)
  8050dc:	10000015 	stw	zero,0(r2)
  8050e0:	10000115 	stw	zero,4(r2)
  8050e4:	10000215 	stw	zero,8(r2)
  8050e8:	10000415 	stw	zero,16(r2)
  8050ec:	10000515 	stw	zero,20(r2)
  8050f0:	10000615 	stw	zero,24(r2)
  8050f4:	10800715 	stw	r2,28(r2)
  8050f8:	12000815 	stw	r8,32(r2)
  8050fc:	11c00915 	stw	r7,36(r2)
  805100:	11800a15 	stw	r6,40(r2)
  805104:	11400b15 	stw	r5,44(r2)
  805108:	4a400284 	addi	r9,r9,10
  80510c:	1a400315 	stw	r9,12(r3)
  805110:	18001915 	stw	zero,100(r3)
  805114:	18000015 	stw	zero,0(r3)
  805118:	18000115 	stw	zero,4(r3)
  80511c:	18000215 	stw	zero,8(r3)
  805120:	18000415 	stw	zero,16(r3)
  805124:	18001705 	stb	zero,92(r3)
  805128:	18001745 	stb	zero,93(r3)
  80512c:	18001785 	stb	zero,94(r3)
  805130:	180017c5 	stb	zero,95(r3)
  805134:	18001805 	stb	zero,96(r3)
  805138:	18001845 	stb	zero,97(r3)
  80513c:	18001885 	stb	zero,98(r3)
  805140:	180018c5 	stb	zero,99(r3)
  805144:	20800317 	ldw	r2,12(r4)
  805148:	024000b4 	movhi	r9,2
  80514c:	18000515 	stw	zero,20(r3)
  805150:	18000615 	stw	zero,24(r3)
  805154:	18c00715 	stw	r3,28(r3)
  805158:	1a000815 	stw	r8,32(r3)
  80515c:	19c00915 	stw	r7,36(r3)
  805160:	19800a15 	stw	r6,40(r3)
  805164:	19400b15 	stw	r5,44(r3)
  805168:	4a400484 	addi	r9,r9,18
  80516c:	10001915 	stw	zero,100(r2)
  805170:	10000015 	stw	zero,0(r2)
  805174:	10000115 	stw	zero,4(r2)
  805178:	10000215 	stw	zero,8(r2)
  80517c:	12400315 	stw	r9,12(r2)
  805180:	10000415 	stw	zero,16(r2)
  805184:	10000515 	stw	zero,20(r2)
  805188:	10000615 	stw	zero,24(r2)
  80518c:	10001705 	stb	zero,92(r2)
  805190:	10001745 	stb	zero,93(r2)
  805194:	10001785 	stb	zero,94(r2)
  805198:	100017c5 	stb	zero,95(r2)
  80519c:	10001805 	stb	zero,96(r2)
  8051a0:	10001845 	stb	zero,97(r2)
  8051a4:	10001885 	stb	zero,98(r2)
  8051a8:	100018c5 	stb	zero,99(r2)
  8051ac:	10800715 	stw	r2,28(r2)
  8051b0:	12000815 	stw	r8,32(r2)
  8051b4:	11c00915 	stw	r7,36(r2)
  8051b8:	11800a15 	stw	r6,40(r2)
  8051bc:	11400b15 	stw	r5,44(r2)
  8051c0:	00800044 	movi	r2,1
  8051c4:	20800e15 	stw	r2,56(r4)
  8051c8:	f800283a 	ret

008051cc <__fp_unlock>:
  8051cc:	0005883a 	mov	r2,zero
  8051d0:	f800283a 	ret

008051d4 <__sfmoreglue>:
  8051d4:	defffc04 	addi	sp,sp,-16
  8051d8:	dc800215 	stw	r18,8(sp)
  8051dc:	2825883a 	mov	r18,r5
  8051e0:	dc000015 	stw	r16,0(sp)
  8051e4:	01401a04 	movi	r5,104
  8051e8:	2021883a 	mov	r16,r4
  8051ec:	913fffc4 	addi	r4,r18,-1
  8051f0:	dfc00315 	stw	ra,12(sp)
  8051f4:	dc400115 	stw	r17,4(sp)
  8051f8:	0800f080 	call	800f08 <__mulsi3>
  8051fc:	8009883a 	mov	r4,r16
  805200:	11401d04 	addi	r5,r2,116
  805204:	1023883a 	mov	r17,r2
  805208:	0805fc00 	call	805fc0 <_malloc_r>
  80520c:	1021883a 	mov	r16,r2
  805210:	10000726 	beq	r2,zero,805230 <__sfmoreglue+0x5c>
  805214:	11000304 	addi	r4,r2,12
  805218:	10000015 	stw	zero,0(r2)
  80521c:	14800115 	stw	r18,4(r2)
  805220:	11000215 	stw	r4,8(r2)
  805224:	89801a04 	addi	r6,r17,104
  805228:	000b883a 	mov	r5,zero
  80522c:	0806aa00 	call	806aa0 <memset>
  805230:	8005883a 	mov	r2,r16
  805234:	dfc00317 	ldw	ra,12(sp)
  805238:	dc800217 	ldw	r18,8(sp)
  80523c:	dc400117 	ldw	r17,4(sp)
  805240:	dc000017 	ldw	r16,0(sp)
  805244:	dec00404 	addi	sp,sp,16
  805248:	f800283a 	ret

0080524c <__sfp>:
  80524c:	defffd04 	addi	sp,sp,-12
  805250:	00802074 	movhi	r2,129
  805254:	dc000015 	stw	r16,0(sp)
  805258:	1409db17 	ldw	r16,10092(r2)
  80525c:	dc400115 	stw	r17,4(sp)
  805260:	dfc00215 	stw	ra,8(sp)
  805264:	80800e17 	ldw	r2,56(r16)
  805268:	2023883a 	mov	r17,r4
  80526c:	10002b26 	beq	r2,zero,80531c <__sfp+0xd0>
  805270:	8400b804 	addi	r16,r16,736
  805274:	80c00117 	ldw	r3,4(r16)
  805278:	80800217 	ldw	r2,8(r16)
  80527c:	18ffffc4 	addi	r3,r3,-1
  805280:	1800030e 	bge	r3,zero,805290 <__sfp+0x44>
  805284:	00002106 	br	80530c <__sfp+0xc0>
  805288:	10801a04 	addi	r2,r2,104
  80528c:	30001f26 	beq	r6,zero,80530c <__sfp+0xc0>
  805290:	1140030f 	ldh	r5,12(r2)
  805294:	18ffffc4 	addi	r3,r3,-1
  805298:	19bfffd8 	cmpnei	r6,r3,-1
  80529c:	283ffa1e 	bne	r5,zero,805288 <__sfp+0x3c>
  8052a0:	00fffff4 	movhi	r3,65535
  8052a4:	18c00044 	addi	r3,r3,1
  8052a8:	10001915 	stw	zero,100(r2)
  8052ac:	10000015 	stw	zero,0(r2)
  8052b0:	10000115 	stw	zero,4(r2)
  8052b4:	10000215 	stw	zero,8(r2)
  8052b8:	10c00315 	stw	r3,12(r2)
  8052bc:	10000415 	stw	zero,16(r2)
  8052c0:	10000515 	stw	zero,20(r2)
  8052c4:	10000615 	stw	zero,24(r2)
  8052c8:	10001705 	stb	zero,92(r2)
  8052cc:	10001745 	stb	zero,93(r2)
  8052d0:	10001785 	stb	zero,94(r2)
  8052d4:	100017c5 	stb	zero,95(r2)
  8052d8:	10001805 	stb	zero,96(r2)
  8052dc:	10001845 	stb	zero,97(r2)
  8052e0:	10001885 	stb	zero,98(r2)
  8052e4:	100018c5 	stb	zero,99(r2)
  8052e8:	10000c15 	stw	zero,48(r2)
  8052ec:	10000d15 	stw	zero,52(r2)
  8052f0:	10001115 	stw	zero,68(r2)
  8052f4:	10001215 	stw	zero,72(r2)
  8052f8:	dfc00217 	ldw	ra,8(sp)
  8052fc:	dc400117 	ldw	r17,4(sp)
  805300:	dc000017 	ldw	r16,0(sp)
  805304:	dec00304 	addi	sp,sp,12
  805308:	f800283a 	ret
  80530c:	80800017 	ldw	r2,0(r16)
  805310:	10000526 	beq	r2,zero,805328 <__sfp+0xdc>
  805314:	1021883a 	mov	r16,r2
  805318:	003fd606 	br	805274 <__sfp+0x28>
  80531c:	8009883a 	mov	r4,r16
  805320:	08050640 	call	805064 <__sinit.part.0>
  805324:	003fd206 	br	805270 <__sfp+0x24>
  805328:	01400104 	movi	r5,4
  80532c:	8809883a 	mov	r4,r17
  805330:	08051d40 	call	8051d4 <__sfmoreglue>
  805334:	80800015 	stw	r2,0(r16)
  805338:	103ff61e 	bne	r2,zero,805314 <__sfp+0xc8>
  80533c:	00c00304 	movi	r3,12
  805340:	88c00015 	stw	r3,0(r17)
  805344:	003fec06 	br	8052f8 <__sfp+0xac>

00805348 <_cleanup>:
  805348:	00802074 	movhi	r2,129
  80534c:	1109db17 	ldw	r4,10092(r2)
  805350:	01402074 	movhi	r5,129
  805354:	2966ae04 	addi	r5,r5,-25928
  805358:	0805d201 	jmpi	805d20 <_fwalk_reent>

0080535c <__sinit>:
  80535c:	20800e17 	ldw	r2,56(r4)
  805360:	10000126 	beq	r2,zero,805368 <__sinit+0xc>
  805364:	f800283a 	ret
  805368:	08050641 	jmpi	805064 <__sinit.part.0>

0080536c <__sfp_lock_acquire>:
  80536c:	f800283a 	ret

00805370 <__sfp_lock_release>:
  805370:	f800283a 	ret

00805374 <__sinit_lock_acquire>:
  805374:	f800283a 	ret

00805378 <__sinit_lock_release>:
  805378:	f800283a 	ret

0080537c <__fp_lock_all>:
  80537c:	00802074 	movhi	r2,129
  805380:	1109dc17 	ldw	r4,10096(r2)
  805384:	01402034 	movhi	r5,128
  805388:	29541404 	addi	r5,r5,20560
  80538c:	0805c881 	jmpi	805c88 <_fwalk>

00805390 <__fp_unlock_all>:
  805390:	00802074 	movhi	r2,129
  805394:	1109dc17 	ldw	r4,10096(r2)
  805398:	01402034 	movhi	r5,128
  80539c:	29547304 	addi	r5,r5,20940
  8053a0:	0805c881 	jmpi	805c88 <_fwalk>

008053a4 <_malloc_trim_r>:
  8053a4:	defffb04 	addi	sp,sp,-20
  8053a8:	dcc00315 	stw	r19,12(sp)
  8053ac:	04c02074 	movhi	r19,129
  8053b0:	dc800215 	stw	r18,8(sp)
  8053b4:	dc400115 	stw	r17,4(sp)
  8053b8:	dc000015 	stw	r16,0(sp)
  8053bc:	dfc00415 	stw	ra,16(sp)
  8053c0:	2821883a 	mov	r16,r5
  8053c4:	9cc3fc04 	addi	r19,r19,4080
  8053c8:	2025883a 	mov	r18,r4
  8053cc:	080e3740 	call	80e374 <__malloc_lock>
  8053d0:	98800217 	ldw	r2,8(r19)
  8053d4:	14400117 	ldw	r17,4(r2)
  8053d8:	00bfff04 	movi	r2,-4
  8053dc:	88a2703a 	and	r17,r17,r2
  8053e0:	8c21c83a 	sub	r16,r17,r16
  8053e4:	8403fbc4 	addi	r16,r16,4079
  8053e8:	8020d33a 	srli	r16,r16,12
  8053ec:	843fffc4 	addi	r16,r16,-1
  8053f0:	8020933a 	slli	r16,r16,12
  8053f4:	80840008 	cmpgei	r2,r16,4096
  8053f8:	10000626 	beq	r2,zero,805414 <_malloc_trim_r+0x70>
  8053fc:	000b883a 	mov	r5,zero
  805400:	9009883a 	mov	r4,r18
  805404:	080822c0 	call	80822c <_sbrk_r>
  805408:	98c00217 	ldw	r3,8(r19)
  80540c:	1c47883a 	add	r3,r3,r17
  805410:	10c00a26 	beq	r2,r3,80543c <_malloc_trim_r+0x98>
  805414:	9009883a 	mov	r4,r18
  805418:	080e3980 	call	80e398 <__malloc_unlock>
  80541c:	0005883a 	mov	r2,zero
  805420:	dfc00417 	ldw	ra,16(sp)
  805424:	dcc00317 	ldw	r19,12(sp)
  805428:	dc800217 	ldw	r18,8(sp)
  80542c:	dc400117 	ldw	r17,4(sp)
  805430:	dc000017 	ldw	r16,0(sp)
  805434:	dec00504 	addi	sp,sp,20
  805438:	f800283a 	ret
  80543c:	040bc83a 	sub	r5,zero,r16
  805440:	9009883a 	mov	r4,r18
  805444:	080822c0 	call	80822c <_sbrk_r>
  805448:	10bfffd8 	cmpnei	r2,r2,-1
  80544c:	10000d26 	beq	r2,zero,805484 <_malloc_trim_r+0xe0>
  805450:	00802074 	movhi	r2,129
  805454:	1090eb17 	ldw	r2,17324(r2)
  805458:	98c00217 	ldw	r3,8(r19)
  80545c:	8c23c83a 	sub	r17,r17,r16
  805460:	8c400054 	ori	r17,r17,1
  805464:	1421c83a 	sub	r16,r2,r16
  805468:	1c400115 	stw	r17,4(r3)
  80546c:	00802074 	movhi	r2,129
  805470:	9009883a 	mov	r4,r18
  805474:	1410eb15 	stw	r16,17324(r2)
  805478:	080e3980 	call	80e398 <__malloc_unlock>
  80547c:	00800044 	movi	r2,1
  805480:	003fe706 	br	805420 <_malloc_trim_r+0x7c>
  805484:	000b883a 	mov	r5,zero
  805488:	9009883a 	mov	r4,r18
  80548c:	080822c0 	call	80822c <_sbrk_r>
  805490:	99000217 	ldw	r4,8(r19)
  805494:	1107c83a 	sub	r3,r2,r4
  805498:	19400410 	cmplti	r5,r3,16
  80549c:	283fdd1e 	bne	r5,zero,805414 <_malloc_trim_r+0x70>
  8054a0:	01402074 	movhi	r5,129
  8054a4:	2949dd17 	ldw	r5,10100(r5)
  8054a8:	18c00054 	ori	r3,r3,1
  8054ac:	20c00115 	stw	r3,4(r4)
  8054b0:	1145c83a 	sub	r2,r2,r5
  8054b4:	01402074 	movhi	r5,129
  8054b8:	2890eb15 	stw	r2,17324(r5)
  8054bc:	003fd506 	br	805414 <_malloc_trim_r+0x70>

008054c0 <_free_r>:
  8054c0:	28004f26 	beq	r5,zero,805600 <_free_r+0x140>
  8054c4:	defffd04 	addi	sp,sp,-12
  8054c8:	dc400115 	stw	r17,4(sp)
  8054cc:	dc000015 	stw	r16,0(sp)
  8054d0:	2023883a 	mov	r17,r4
  8054d4:	2821883a 	mov	r16,r5
  8054d8:	dfc00215 	stw	ra,8(sp)
  8054dc:	080e3740 	call	80e374 <__malloc_lock>
  8054e0:	81ffff17 	ldw	r7,-4(r16)
  8054e4:	00bfff84 	movi	r2,-2
  8054e8:	80fffe04 	addi	r3,r16,-8
  8054ec:	3884703a 	and	r2,r7,r2
  8054f0:	01002074 	movhi	r4,129
  8054f4:	188d883a 	add	r6,r3,r2
  8054f8:	2103fc04 	addi	r4,r4,4080
  8054fc:	31400117 	ldw	r5,4(r6)
  805500:	22000217 	ldw	r8,8(r4)
  805504:	027fff04 	movi	r9,-4
  805508:	2a4a703a 	and	r5,r5,r9
  80550c:	41806426 	beq	r8,r6,8056a0 <_free_r+0x1e0>
  805510:	31400115 	stw	r5,4(r6)
  805514:	39c0004c 	andi	r7,r7,1
  805518:	3151883a 	add	r8,r6,r5
  80551c:	3800281e 	bne	r7,zero,8055c0 <_free_r+0x100>
  805520:	82bffe17 	ldw	r10,-8(r16)
  805524:	42000117 	ldw	r8,4(r8)
  805528:	01c02074 	movhi	r7,129
  80552c:	1a87c83a 	sub	r3,r3,r10
  805530:	1a400217 	ldw	r9,8(r3)
  805534:	39c3fe04 	addi	r7,r7,4088
  805538:	1285883a 	add	r2,r2,r10
  80553c:	4200004c 	andi	r8,r8,1
  805540:	49c04c26 	beq	r9,r7,805674 <_free_r+0x1b4>
  805544:	1a800317 	ldw	r10,12(r3)
  805548:	4a800315 	stw	r10,12(r9)
  80554c:	52400215 	stw	r9,8(r10)
  805550:	40007126 	beq	r8,zero,805718 <_free_r+0x258>
  805554:	11400054 	ori	r5,r2,1
  805558:	19400115 	stw	r5,4(r3)
  80555c:	30800015 	stw	r2,0(r6)
  805560:	11408028 	cmpgeui	r5,r2,512
  805564:	28002c1e 	bne	r5,zero,805618 <_free_r+0x158>
  805568:	100ad0fa 	srli	r5,r2,3
  80556c:	100cd17a 	srli	r6,r2,5
  805570:	00800044 	movi	r2,1
  805574:	29400044 	addi	r5,r5,1
  805578:	280a90fa 	slli	r5,r5,3
  80557c:	21c00117 	ldw	r7,4(r4)
  805580:	1184983a 	sll	r2,r2,r6
  805584:	214b883a 	add	r5,r4,r5
  805588:	29800017 	ldw	r6,0(r5)
  80558c:	11c4b03a 	or	r2,r2,r7
  805590:	29fffe04 	addi	r7,r5,-8
  805594:	19c00315 	stw	r7,12(r3)
  805598:	19800215 	stw	r6,8(r3)
  80559c:	20800115 	stw	r2,4(r4)
  8055a0:	28c00015 	stw	r3,0(r5)
  8055a4:	30c00315 	stw	r3,12(r6)
  8055a8:	8809883a 	mov	r4,r17
  8055ac:	dfc00217 	ldw	ra,8(sp)
  8055b0:	dc400117 	ldw	r17,4(sp)
  8055b4:	dc000017 	ldw	r16,0(sp)
  8055b8:	dec00304 	addi	sp,sp,12
  8055bc:	080e3981 	jmpi	80e398 <__malloc_unlock>
  8055c0:	41c00117 	ldw	r7,4(r8)
  8055c4:	39c0004c 	andi	r7,r7,1
  8055c8:	38000e1e 	bne	r7,zero,805604 <_free_r+0x144>
  8055cc:	01c02074 	movhi	r7,129
  8055d0:	1145883a 	add	r2,r2,r5
  8055d4:	39c3fe04 	addi	r7,r7,4088
  8055d8:	31400217 	ldw	r5,8(r6)
  8055dc:	12400054 	ori	r9,r2,1
  8055e0:	1891883a 	add	r8,r3,r2
  8055e4:	29c05226 	beq	r5,r7,805730 <_free_r+0x270>
  8055e8:	31800317 	ldw	r6,12(r6)
  8055ec:	29800315 	stw	r6,12(r5)
  8055f0:	31400215 	stw	r5,8(r6)
  8055f4:	1a400115 	stw	r9,4(r3)
  8055f8:	40800015 	stw	r2,0(r8)
  8055fc:	003fd806 	br	805560 <_free_r+0xa0>
  805600:	f800283a 	ret
  805604:	11400054 	ori	r5,r2,1
  805608:	817fff15 	stw	r5,-4(r16)
  80560c:	30800015 	stw	r2,0(r6)
  805610:	11408028 	cmpgeui	r5,r2,512
  805614:	283fd426 	beq	r5,zero,805568 <_free_r+0xa8>
  805618:	100ad27a 	srli	r5,r2,9
  80561c:	29800168 	cmpgeui	r6,r5,5
  805620:	3000341e 	bne	r6,zero,8056f4 <_free_r+0x234>
  805624:	100ad1ba 	srli	r5,r2,6
  805628:	29800e44 	addi	r6,r5,57
  80562c:	300c90fa 	slli	r6,r6,3
  805630:	29c00e04 	addi	r7,r5,56
  805634:	218d883a 	add	r6,r4,r6
  805638:	31400017 	ldw	r5,0(r6)
  80563c:	31bffe04 	addi	r6,r6,-8
  805640:	31404226 	beq	r6,r5,80574c <_free_r+0x28c>
  805644:	01ffff04 	movi	r7,-4
  805648:	29000117 	ldw	r4,4(r5)
  80564c:	21c8703a 	and	r4,r4,r7
  805650:	1100022e 	bgeu	r2,r4,80565c <_free_r+0x19c>
  805654:	29400217 	ldw	r5,8(r5)
  805658:	317ffb1e 	bne	r6,r5,805648 <_free_r+0x188>
  80565c:	29800317 	ldw	r6,12(r5)
  805660:	19800315 	stw	r6,12(r3)
  805664:	19400215 	stw	r5,8(r3)
  805668:	30c00215 	stw	r3,8(r6)
  80566c:	28c00315 	stw	r3,12(r5)
  805670:	003fcd06 	br	8055a8 <_free_r+0xe8>
  805674:	40004d1e 	bne	r8,zero,8057ac <_free_r+0x2ec>
  805678:	31000317 	ldw	r4,12(r6)
  80567c:	31800217 	ldw	r6,8(r6)
  805680:	2885883a 	add	r2,r5,r2
  805684:	11400054 	ori	r5,r2,1
  805688:	31000315 	stw	r4,12(r6)
  80568c:	21800215 	stw	r6,8(r4)
  805690:	19400115 	stw	r5,4(r3)
  805694:	1887883a 	add	r3,r3,r2
  805698:	18800015 	stw	r2,0(r3)
  80569c:	003fc206 	br	8055a8 <_free_r+0xe8>
  8056a0:	39c0004c 	andi	r7,r7,1
  8056a4:	1145883a 	add	r2,r2,r5
  8056a8:	3800071e 	bne	r7,zero,8056c8 <_free_r+0x208>
  8056ac:	81fffe17 	ldw	r7,-8(r16)
  8056b0:	19c7c83a 	sub	r3,r3,r7
  8056b4:	19400317 	ldw	r5,12(r3)
  8056b8:	19800217 	ldw	r6,8(r3)
  8056bc:	11c5883a 	add	r2,r2,r7
  8056c0:	31400315 	stw	r5,12(r6)
  8056c4:	29800215 	stw	r6,8(r5)
  8056c8:	01402074 	movhi	r5,129
  8056cc:	11800054 	ori	r6,r2,1
  8056d0:	2949de17 	ldw	r5,10104(r5)
  8056d4:	19800115 	stw	r6,4(r3)
  8056d8:	20c00215 	stw	r3,8(r4)
  8056dc:	117fb236 	bltu	r2,r5,8055a8 <_free_r+0xe8>
  8056e0:	00802074 	movhi	r2,129
  8056e4:	1150e117 	ldw	r5,17284(r2)
  8056e8:	8809883a 	mov	r4,r17
  8056ec:	08053a40 	call	8053a4 <_malloc_trim_r>
  8056f0:	003fad06 	br	8055a8 <_free_r+0xe8>
  8056f4:	29800568 	cmpgeui	r6,r5,21
  8056f8:	30000926 	beq	r6,zero,805720 <_free_r+0x260>
  8056fc:	29801568 	cmpgeui	r6,r5,85
  805700:	3000191e 	bne	r6,zero,805768 <_free_r+0x2a8>
  805704:	100ad33a 	srli	r5,r2,12
  805708:	29801bc4 	addi	r6,r5,111
  80570c:	300c90fa 	slli	r6,r6,3
  805710:	29c01b84 	addi	r7,r5,110
  805714:	003fc706 	br	805634 <_free_r+0x174>
  805718:	1145883a 	add	r2,r2,r5
  80571c:	003fae06 	br	8055d8 <_free_r+0x118>
  805720:	29801704 	addi	r6,r5,92
  805724:	300c90fa 	slli	r6,r6,3
  805728:	29c016c4 	addi	r7,r5,91
  80572c:	003fc106 	br	805634 <_free_r+0x174>
  805730:	20c00515 	stw	r3,20(r4)
  805734:	20c00415 	stw	r3,16(r4)
  805738:	19c00315 	stw	r7,12(r3)
  80573c:	19c00215 	stw	r7,8(r3)
  805740:	1a400115 	stw	r9,4(r3)
  805744:	40800015 	stw	r2,0(r8)
  805748:	003f9706 	br	8055a8 <_free_r+0xe8>
  80574c:	380fd0ba 	srai	r7,r7,2
  805750:	00800044 	movi	r2,1
  805754:	22000117 	ldw	r8,4(r4)
  805758:	11ce983a 	sll	r7,r2,r7
  80575c:	3a0eb03a 	or	r7,r7,r8
  805760:	21c00115 	stw	r7,4(r4)
  805764:	003fbe06 	br	805660 <_free_r+0x1a0>
  805768:	29805568 	cmpgeui	r6,r5,341
  80576c:	3000051e 	bne	r6,zero,805784 <_free_r+0x2c4>
  805770:	100ad3fa 	srli	r5,r2,15
  805774:	29801e04 	addi	r6,r5,120
  805778:	300c90fa 	slli	r6,r6,3
  80577c:	29c01dc4 	addi	r7,r5,119
  805780:	003fac06 	br	805634 <_free_r+0x174>
  805784:	29415568 	cmpgeui	r5,r5,1365
  805788:	2800051e 	bne	r5,zero,8057a0 <_free_r+0x2e0>
  80578c:	100ad4ba 	srli	r5,r2,18
  805790:	29801f44 	addi	r6,r5,125
  805794:	300c90fa 	slli	r6,r6,3
  805798:	29c01f04 	addi	r7,r5,124
  80579c:	003fa506 	br	805634 <_free_r+0x174>
  8057a0:	0180fe04 	movi	r6,1016
  8057a4:	01c01f84 	movi	r7,126
  8057a8:	003fa206 	br	805634 <_free_r+0x174>
  8057ac:	11000054 	ori	r4,r2,1
  8057b0:	19000115 	stw	r4,4(r3)
  8057b4:	30800015 	stw	r2,0(r6)
  8057b8:	003f7b06 	br	8055a8 <_free_r+0xe8>

008057bc <__sfvwrite_r>:
  8057bc:	30800217 	ldw	r2,8(r6)
  8057c0:	1000c826 	beq	r2,zero,805ae4 <__sfvwrite_r+0x328>
  8057c4:	29c0030b 	ldhu	r7,12(r5)
  8057c8:	defff404 	addi	sp,sp,-48
  8057cc:	dd800815 	stw	r22,32(sp)
  8057d0:	dd400715 	stw	r21,28(sp)
  8057d4:	dc000215 	stw	r16,8(sp)
  8057d8:	dfc00b15 	stw	ra,44(sp)
  8057dc:	df000a15 	stw	fp,40(sp)
  8057e0:	ddc00915 	stw	r23,36(sp)
  8057e4:	dd000615 	stw	r20,24(sp)
  8057e8:	dcc00515 	stw	r19,20(sp)
  8057ec:	dc800415 	stw	r18,16(sp)
  8057f0:	dc400315 	stw	r17,12(sp)
  8057f4:	3880020c 	andi	r2,r7,8
  8057f8:	302d883a 	mov	r22,r6
  8057fc:	202b883a 	mov	r21,r4
  805800:	2821883a 	mov	r16,r5
  805804:	10002226 	beq	r2,zero,805890 <__sfvwrite_r+0xd4>
  805808:	28800417 	ldw	r2,16(r5)
  80580c:	10002026 	beq	r2,zero,805890 <__sfvwrite_r+0xd4>
  805810:	3880008c 	andi	r2,r7,2
  805814:	b4400017 	ldw	r17,0(r22)
  805818:	10002526 	beq	r2,zero,8058b0 <__sfvwrite_r+0xf4>
  80581c:	80800917 	ldw	r2,36(r16)
  805820:	81400717 	ldw	r5,28(r16)
  805824:	05200034 	movhi	r20,32768
  805828:	0027883a 	mov	r19,zero
  80582c:	0025883a 	mov	r18,zero
  805830:	a53f0004 	addi	r20,r20,-1024
  805834:	980d883a 	mov	r6,r19
  805838:	a809883a 	mov	r4,r21
  80583c:	90001026 	beq	r18,zero,805880 <__sfvwrite_r+0xc4>
  805840:	900f883a 	mov	r7,r18
  805844:	a480012e 	bgeu	r20,r18,80584c <__sfvwrite_r+0x90>
  805848:	a00f883a 	mov	r7,r20
  80584c:	103ee83a 	callr	r2
  805850:	00809f0e 	bge	zero,r2,805ad0 <__sfvwrite_r+0x314>
  805854:	b1000217 	ldw	r4,8(r22)
  805858:	98a7883a 	add	r19,r19,r2
  80585c:	90a5c83a 	sub	r18,r18,r2
  805860:	2085c83a 	sub	r2,r4,r2
  805864:	b0800215 	stw	r2,8(r22)
  805868:	10006326 	beq	r2,zero,8059f8 <__sfvwrite_r+0x23c>
  80586c:	80800917 	ldw	r2,36(r16)
  805870:	81400717 	ldw	r5,28(r16)
  805874:	980d883a 	mov	r6,r19
  805878:	a809883a 	mov	r4,r21
  80587c:	903ff01e 	bne	r18,zero,805840 <__sfvwrite_r+0x84>
  805880:	8cc00017 	ldw	r19,0(r17)
  805884:	8c800117 	ldw	r18,4(r17)
  805888:	8c400204 	addi	r17,r17,8
  80588c:	003fe906 	br	805834 <__sfvwrite_r+0x78>
  805890:	800b883a 	mov	r5,r16
  805894:	a809883a 	mov	r4,r21
  805898:	08032d40 	call	8032d4 <__swsetup_r>
  80589c:	1000f81e 	bne	r2,zero,805c80 <__sfvwrite_r+0x4c4>
  8058a0:	81c0030b 	ldhu	r7,12(r16)
  8058a4:	b4400017 	ldw	r17,0(r22)
  8058a8:	3880008c 	andi	r2,r7,2
  8058ac:	103fdb1e 	bne	r2,zero,80581c <__sfvwrite_r+0x60>
  8058b0:	3880004c 	andi	r2,r7,1
  8058b4:	84800217 	ldw	r18,8(r16)
  8058b8:	82000017 	ldw	r8,0(r16)
  8058bc:	10008b1e 	bne	r2,zero,805aec <__sfvwrite_r+0x330>
  8058c0:	00a00034 	movhi	r2,32768
  8058c4:	10bfff84 	addi	r2,r2,-2
  8058c8:	00e00034 	movhi	r3,32768
  8058cc:	d8800015 	stw	r2,0(sp)
  8058d0:	18bfffc4 	addi	r2,r3,-1
  8058d4:	0039883a 	mov	fp,zero
  8058d8:	0027883a 	mov	r19,zero
  8058dc:	d8800115 	stw	r2,4(sp)
  8058e0:	98004126 	beq	r19,zero,8059e8 <__sfvwrite_r+0x22c>
  8058e4:	3880800c 	andi	r2,r7,512
  8058e8:	10009326 	beq	r2,zero,805b38 <__sfvwrite_r+0x37c>
  8058ec:	902f883a 	mov	r23,r18
  8058f0:	9c80ba36 	bltu	r19,r18,805bdc <__sfvwrite_r+0x420>
  8058f4:	3881200c 	andi	r2,r7,1152
  8058f8:	10002626 	beq	r2,zero,805994 <__sfvwrite_r+0x1d8>
  8058fc:	81800517 	ldw	r6,20(r16)
  805900:	81400417 	ldw	r5,16(r16)
  805904:	98800044 	addi	r2,r19,1
  805908:	3189883a 	add	r4,r6,r6
  80590c:	2189883a 	add	r4,r4,r6
  805910:	2028d7fa 	srli	r20,r4,31
  805914:	4165c83a 	sub	r18,r8,r5
  805918:	1485883a 	add	r2,r2,r18
  80591c:	a109883a 	add	r4,r20,r4
  805920:	2029d07a 	srai	r20,r4,1
  805924:	a00d883a 	mov	r6,r20
  805928:	a080022e 	bgeu	r20,r2,805934 <__sfvwrite_r+0x178>
  80592c:	1029883a 	mov	r20,r2
  805930:	100d883a 	mov	r6,r2
  805934:	39c1000c 	andi	r7,r7,1024
  805938:	3800c126 	beq	r7,zero,805c40 <__sfvwrite_r+0x484>
  80593c:	a809883a 	mov	r4,r21
  805940:	300b883a 	mov	r5,r6
  805944:	0805fc00 	call	805fc0 <_malloc_r>
  805948:	1009883a 	mov	r4,r2
  80594c:	1000c826 	beq	r2,zero,805c70 <__sfvwrite_r+0x4b4>
  805950:	81400417 	ldw	r5,16(r16)
  805954:	900d883a 	mov	r6,r18
  805958:	08068740 	call	806874 <memcpy>
  80595c:	1009883a 	mov	r4,r2
  805960:	8080030b 	ldhu	r2,12(r16)
  805964:	00fedfc4 	movi	r3,-1153
  805968:	10c4703a 	and	r2,r2,r3
  80596c:	10802014 	ori	r2,r2,128
  805970:	8080030d 	sth	r2,12(r16)
  805974:	2491883a 	add	r8,r4,r18
  805978:	a485c83a 	sub	r2,r20,r18
  80597c:	81000415 	stw	r4,16(r16)
  805980:	82000015 	stw	r8,0(r16)
  805984:	85000515 	stw	r20,20(r16)
  805988:	9825883a 	mov	r18,r19
  80598c:	80800215 	stw	r2,8(r16)
  805990:	982f883a 	mov	r23,r19
  805994:	4009883a 	mov	r4,r8
  805998:	b80d883a 	mov	r6,r23
  80599c:	e00b883a 	mov	r5,fp
  8059a0:	08069740 	call	806974 <memmove>
  8059a4:	81000217 	ldw	r4,8(r16)
  8059a8:	80800017 	ldw	r2,0(r16)
  8059ac:	9829883a 	mov	r20,r19
  8059b0:	24a5c83a 	sub	r18,r4,r18
  8059b4:	15c5883a 	add	r2,r2,r23
  8059b8:	84800215 	stw	r18,8(r16)
  8059bc:	80800015 	stw	r2,0(r16)
  8059c0:	0027883a 	mov	r19,zero
  8059c4:	b0800217 	ldw	r2,8(r22)
  8059c8:	e539883a 	add	fp,fp,r20
  8059cc:	1529c83a 	sub	r20,r2,r20
  8059d0:	b5000215 	stw	r20,8(r22)
  8059d4:	a0000826 	beq	r20,zero,8059f8 <__sfvwrite_r+0x23c>
  8059d8:	81c0030b 	ldhu	r7,12(r16)
  8059dc:	84800217 	ldw	r18,8(r16)
  8059e0:	82000017 	ldw	r8,0(r16)
  8059e4:	983fbf1e 	bne	r19,zero,8058e4 <__sfvwrite_r+0x128>
  8059e8:	8f000017 	ldw	fp,0(r17)
  8059ec:	8cc00117 	ldw	r19,4(r17)
  8059f0:	8c400204 	addi	r17,r17,8
  8059f4:	003fba06 	br	8058e0 <__sfvwrite_r+0x124>
  8059f8:	0005883a 	mov	r2,zero
  8059fc:	dfc00b17 	ldw	ra,44(sp)
  805a00:	df000a17 	ldw	fp,40(sp)
  805a04:	ddc00917 	ldw	r23,36(sp)
  805a08:	dd800817 	ldw	r22,32(sp)
  805a0c:	dd400717 	ldw	r21,28(sp)
  805a10:	dd000617 	ldw	r20,24(sp)
  805a14:	dcc00517 	ldw	r19,20(sp)
  805a18:	dc800417 	ldw	r18,16(sp)
  805a1c:	dc400317 	ldw	r17,12(sp)
  805a20:	dc000217 	ldw	r16,8(sp)
  805a24:	dec00c04 	addi	sp,sp,48
  805a28:	f800283a 	ret
  805a2c:	e1c07316 	blt	fp,r7,805bfc <__sfvwrite_r+0x440>
  805a30:	80800917 	ldw	r2,36(r16)
  805a34:	81400717 	ldw	r5,28(r16)
  805a38:	b80d883a 	mov	r6,r23
  805a3c:	a809883a 	mov	r4,r21
  805a40:	103ee83a 	callr	r2
  805a44:	1025883a 	mov	r18,r2
  805a48:	0080210e 	bge	zero,r2,805ad0 <__sfvwrite_r+0x314>
  805a4c:	a4a9c83a 	sub	r20,r20,r18
  805a50:	a0006526 	beq	r20,zero,805be8 <__sfvwrite_r+0x42c>
  805a54:	00800044 	movi	r2,1
  805a58:	b1800217 	ldw	r6,8(r22)
  805a5c:	bcaf883a 	add	r23,r23,r18
  805a60:	9ca7c83a 	sub	r19,r19,r18
  805a64:	34a5c83a 	sub	r18,r6,r18
  805a68:	b4800215 	stw	r18,8(r22)
  805a6c:	903fe226 	beq	r18,zero,8059f8 <__sfvwrite_r+0x23c>
  805a70:	84800217 	ldw	r18,8(r16)
  805a74:	82000017 	ldw	r8,0(r16)
  805a78:	98002126 	beq	r19,zero,805b00 <__sfvwrite_r+0x344>
  805a7c:	10002426 	beq	r2,zero,805b10 <__sfvwrite_r+0x354>
  805a80:	a005883a 	mov	r2,r20
  805a84:	9839883a 	mov	fp,r19
  805a88:	14c0012e 	bgeu	r2,r19,805a90 <__sfvwrite_r+0x2d4>
  805a8c:	1039883a 	mov	fp,r2
  805a90:	80800417 	ldw	r2,16(r16)
  805a94:	81c00517 	ldw	r7,20(r16)
  805a98:	123fe42e 	bgeu	r2,r8,805a2c <__sfvwrite_r+0x270>
  805a9c:	3ca5883a 	add	r18,r7,r18
  805aa0:	973fe20e 	bge	r18,fp,805a2c <__sfvwrite_r+0x270>
  805aa4:	b80b883a 	mov	r5,r23
  805aa8:	4009883a 	mov	r4,r8
  805aac:	900d883a 	mov	r6,r18
  805ab0:	08069740 	call	806974 <memmove>
  805ab4:	80800017 	ldw	r2,0(r16)
  805ab8:	800b883a 	mov	r5,r16
  805abc:	a809883a 	mov	r4,r21
  805ac0:	1485883a 	add	r2,r2,r18
  805ac4:	80800015 	stw	r2,0(r16)
  805ac8:	0804fc80 	call	804fc8 <_fflush_r>
  805acc:	103fdf26 	beq	r2,zero,805a4c <__sfvwrite_r+0x290>
  805ad0:	8080030b 	ldhu	r2,12(r16)
  805ad4:	10801014 	ori	r2,r2,64
  805ad8:	8080030d 	sth	r2,12(r16)
  805adc:	00bfffc4 	movi	r2,-1
  805ae0:	003fc606 	br	8059fc <__sfvwrite_r+0x240>
  805ae4:	0005883a 	mov	r2,zero
  805ae8:	f800283a 	ret
  805aec:	0027883a 	mov	r19,zero
  805af0:	0029883a 	mov	r20,zero
  805af4:	0005883a 	mov	r2,zero
  805af8:	002f883a 	mov	r23,zero
  805afc:	983fdf1e 	bne	r19,zero,805a7c <__sfvwrite_r+0x2c0>
  805b00:	8cc00117 	ldw	r19,4(r17)
  805b04:	8dc00017 	ldw	r23,0(r17)
  805b08:	8c400204 	addi	r17,r17,8
  805b0c:	983ffc26 	beq	r19,zero,805b00 <__sfvwrite_r+0x344>
  805b10:	980d883a 	mov	r6,r19
  805b14:	01400284 	movi	r5,10
  805b18:	b809883a 	mov	r4,r23
  805b1c:	da000015 	stw	r8,0(sp)
  805b20:	08067a00 	call	8067a0 <memchr>
  805b24:	da000017 	ldw	r8,0(sp)
  805b28:	10004226 	beq	r2,zero,805c34 <__sfvwrite_r+0x478>
  805b2c:	10800044 	addi	r2,r2,1
  805b30:	15e9c83a 	sub	r20,r2,r23
  805b34:	003fd206 	br	805a80 <__sfvwrite_r+0x2c4>
  805b38:	80800417 	ldw	r2,16(r16)
  805b3c:	12001436 	bltu	r2,r8,805b90 <__sfvwrite_r+0x3d4>
  805b40:	85000517 	ldw	r20,20(r16)
  805b44:	9d001236 	bltu	r19,r20,805b90 <__sfvwrite_r+0x3d4>
  805b48:	d8800017 	ldw	r2,0(sp)
  805b4c:	14c0372e 	bgeu	r2,r19,805c2c <__sfvwrite_r+0x470>
  805b50:	d9000117 	ldw	r4,4(sp)
  805b54:	a00b883a 	mov	r5,r20
  805b58:	080b2dc0 	call	80b2dc <__divsi3>
  805b5c:	a00b883a 	mov	r5,r20
  805b60:	1009883a 	mov	r4,r2
  805b64:	0800f080 	call	800f08 <__mulsi3>
  805b68:	82000917 	ldw	r8,36(r16)
  805b6c:	81400717 	ldw	r5,28(r16)
  805b70:	100f883a 	mov	r7,r2
  805b74:	e00d883a 	mov	r6,fp
  805b78:	a809883a 	mov	r4,r21
  805b7c:	403ee83a 	callr	r8
  805b80:	1029883a 	mov	r20,r2
  805b84:	00bfd20e 	bge	zero,r2,805ad0 <__sfvwrite_r+0x314>
  805b88:	9d27c83a 	sub	r19,r19,r20
  805b8c:	003f8d06 	br	8059c4 <__sfvwrite_r+0x208>
  805b90:	9029883a 	mov	r20,r18
  805b94:	9c80012e 	bgeu	r19,r18,805b9c <__sfvwrite_r+0x3e0>
  805b98:	9829883a 	mov	r20,r19
  805b9c:	4009883a 	mov	r4,r8
  805ba0:	a00d883a 	mov	r6,r20
  805ba4:	e00b883a 	mov	r5,fp
  805ba8:	08069740 	call	806974 <memmove>
  805bac:	80800217 	ldw	r2,8(r16)
  805bb0:	81000017 	ldw	r4,0(r16)
  805bb4:	1505c83a 	sub	r2,r2,r20
  805bb8:	2509883a 	add	r4,r4,r20
  805bbc:	80800215 	stw	r2,8(r16)
  805bc0:	81000015 	stw	r4,0(r16)
  805bc4:	103ff01e 	bne	r2,zero,805b88 <__sfvwrite_r+0x3cc>
  805bc8:	800b883a 	mov	r5,r16
  805bcc:	a809883a 	mov	r4,r21
  805bd0:	0804fc80 	call	804fc8 <_fflush_r>
  805bd4:	103fec26 	beq	r2,zero,805b88 <__sfvwrite_r+0x3cc>
  805bd8:	003fbd06 	br	805ad0 <__sfvwrite_r+0x314>
  805bdc:	9825883a 	mov	r18,r19
  805be0:	982f883a 	mov	r23,r19
  805be4:	003f6b06 	br	805994 <__sfvwrite_r+0x1d8>
  805be8:	800b883a 	mov	r5,r16
  805bec:	a809883a 	mov	r4,r21
  805bf0:	0804fc80 	call	804fc8 <_fflush_r>
  805bf4:	103f9826 	beq	r2,zero,805a58 <__sfvwrite_r+0x29c>
  805bf8:	003fb506 	br	805ad0 <__sfvwrite_r+0x314>
  805bfc:	e00d883a 	mov	r6,fp
  805c00:	b80b883a 	mov	r5,r23
  805c04:	4009883a 	mov	r4,r8
  805c08:	08069740 	call	806974 <memmove>
  805c0c:	80800217 	ldw	r2,8(r16)
  805c10:	81800017 	ldw	r6,0(r16)
  805c14:	e025883a 	mov	r18,fp
  805c18:	1705c83a 	sub	r2,r2,fp
  805c1c:	370d883a 	add	r6,r6,fp
  805c20:	80800215 	stw	r2,8(r16)
  805c24:	81800015 	stw	r6,0(r16)
  805c28:	003f8806 	br	805a4c <__sfvwrite_r+0x290>
  805c2c:	9809883a 	mov	r4,r19
  805c30:	003fc806 	br	805b54 <__sfvwrite_r+0x398>
  805c34:	98800044 	addi	r2,r19,1
  805c38:	1029883a 	mov	r20,r2
  805c3c:	003f9106 	br	805a84 <__sfvwrite_r+0x2c8>
  805c40:	a809883a 	mov	r4,r21
  805c44:	0807cc80 	call	807cc8 <_realloc_r>
  805c48:	1009883a 	mov	r4,r2
  805c4c:	103f491e 	bne	r2,zero,805974 <__sfvwrite_r+0x1b8>
  805c50:	81400417 	ldw	r5,16(r16)
  805c54:	a809883a 	mov	r4,r21
  805c58:	08054c00 	call	8054c0 <_free_r>
  805c5c:	8080030b 	ldhu	r2,12(r16)
  805c60:	00c00304 	movi	r3,12
  805c64:	a8c00015 	stw	r3,0(r21)
  805c68:	10bfdfcc 	andi	r2,r2,65407
  805c6c:	003f9906 	br	805ad4 <__sfvwrite_r+0x318>
  805c70:	00c00304 	movi	r3,12
  805c74:	8080030b 	ldhu	r2,12(r16)
  805c78:	a8c00015 	stw	r3,0(r21)
  805c7c:	003f9506 	br	805ad4 <__sfvwrite_r+0x318>
  805c80:	00bfffc4 	movi	r2,-1
  805c84:	003f5d06 	br	8059fc <__sfvwrite_r+0x240>

00805c88 <_fwalk>:
  805c88:	defffa04 	addi	sp,sp,-24
  805c8c:	dd000415 	stw	r20,16(sp)
  805c90:	dcc00315 	stw	r19,12(sp)
  805c94:	dc800215 	stw	r18,8(sp)
  805c98:	dfc00515 	stw	ra,20(sp)
  805c9c:	dc400115 	stw	r17,4(sp)
  805ca0:	dc000015 	stw	r16,0(sp)
  805ca4:	2827883a 	mov	r19,r5
  805ca8:	2480b804 	addi	r18,r4,736
  805cac:	0029883a 	mov	r20,zero
  805cb0:	94400117 	ldw	r17,4(r18)
  805cb4:	94000217 	ldw	r16,8(r18)
  805cb8:	8c7fffc4 	addi	r17,r17,-1
  805cbc:	88000d16 	blt	r17,zero,805cf4 <_fwalk+0x6c>
  805cc0:	8080030b 	ldhu	r2,12(r16)
  805cc4:	8c7fffc4 	addi	r17,r17,-1
  805cc8:	108000b0 	cmpltui	r2,r2,2
  805ccc:	1000061e 	bne	r2,zero,805ce8 <_fwalk+0x60>
  805cd0:	8080038f 	ldh	r2,14(r16)
  805cd4:	8009883a 	mov	r4,r16
  805cd8:	10bfffe0 	cmpeqi	r2,r2,-1
  805cdc:	1000021e 	bne	r2,zero,805ce8 <_fwalk+0x60>
  805ce0:	983ee83a 	callr	r19
  805ce4:	a0a8b03a 	or	r20,r20,r2
  805ce8:	88bfffd8 	cmpnei	r2,r17,-1
  805cec:	84001a04 	addi	r16,r16,104
  805cf0:	103ff31e 	bne	r2,zero,805cc0 <_fwalk+0x38>
  805cf4:	94800017 	ldw	r18,0(r18)
  805cf8:	903fed1e 	bne	r18,zero,805cb0 <_fwalk+0x28>
  805cfc:	a005883a 	mov	r2,r20
  805d00:	dfc00517 	ldw	ra,20(sp)
  805d04:	dd000417 	ldw	r20,16(sp)
  805d08:	dcc00317 	ldw	r19,12(sp)
  805d0c:	dc800217 	ldw	r18,8(sp)
  805d10:	dc400117 	ldw	r17,4(sp)
  805d14:	dc000017 	ldw	r16,0(sp)
  805d18:	dec00604 	addi	sp,sp,24
  805d1c:	f800283a 	ret

00805d20 <_fwalk_reent>:
  805d20:	defff904 	addi	sp,sp,-28
  805d24:	dd400515 	stw	r21,20(sp)
  805d28:	dd000415 	stw	r20,16(sp)
  805d2c:	dcc00315 	stw	r19,12(sp)
  805d30:	dc800215 	stw	r18,8(sp)
  805d34:	dfc00615 	stw	ra,24(sp)
  805d38:	dc400115 	stw	r17,4(sp)
  805d3c:	dc000015 	stw	r16,0(sp)
  805d40:	202b883a 	mov	r21,r4
  805d44:	2827883a 	mov	r19,r5
  805d48:	2480b804 	addi	r18,r4,736
  805d4c:	0029883a 	mov	r20,zero
  805d50:	94400117 	ldw	r17,4(r18)
  805d54:	94000217 	ldw	r16,8(r18)
  805d58:	8c7fffc4 	addi	r17,r17,-1
  805d5c:	88000e16 	blt	r17,zero,805d98 <_fwalk_reent+0x78>
  805d60:	8080030b 	ldhu	r2,12(r16)
  805d64:	8c7fffc4 	addi	r17,r17,-1
  805d68:	108000b0 	cmpltui	r2,r2,2
  805d6c:	1000071e 	bne	r2,zero,805d8c <_fwalk_reent+0x6c>
  805d70:	8080038f 	ldh	r2,14(r16)
  805d74:	800b883a 	mov	r5,r16
  805d78:	a809883a 	mov	r4,r21
  805d7c:	10bfffe0 	cmpeqi	r2,r2,-1
  805d80:	1000021e 	bne	r2,zero,805d8c <_fwalk_reent+0x6c>
  805d84:	983ee83a 	callr	r19
  805d88:	a0a8b03a 	or	r20,r20,r2
  805d8c:	88bfffd8 	cmpnei	r2,r17,-1
  805d90:	84001a04 	addi	r16,r16,104
  805d94:	103ff21e 	bne	r2,zero,805d60 <_fwalk_reent+0x40>
  805d98:	94800017 	ldw	r18,0(r18)
  805d9c:	903fec1e 	bne	r18,zero,805d50 <_fwalk_reent+0x30>
  805da0:	a005883a 	mov	r2,r20
  805da4:	dfc00617 	ldw	ra,24(sp)
  805da8:	dd400517 	ldw	r21,20(sp)
  805dac:	dd000417 	ldw	r20,16(sp)
  805db0:	dcc00317 	ldw	r19,12(sp)
  805db4:	dc800217 	ldw	r18,8(sp)
  805db8:	dc400117 	ldw	r17,4(sp)
  805dbc:	dc000017 	ldw	r16,0(sp)
  805dc0:	dec00704 	addi	sp,sp,28
  805dc4:	f800283a 	ret

00805dc8 <__localeconv_l>:
  805dc8:	20803c04 	addi	r2,r4,240
  805dcc:	f800283a 	ret

00805dd0 <_localeconv_r>:
  805dd0:	00802074 	movhi	r2,129
  805dd4:	10853a04 	addi	r2,r2,5352
  805dd8:	f800283a 	ret

00805ddc <localeconv>:
  805ddc:	00802074 	movhi	r2,129
  805de0:	10853a04 	addi	r2,r2,5352
  805de4:	f800283a 	ret

00805de8 <__swhatbuf_r>:
  805de8:	deffea04 	addi	sp,sp,-88
  805dec:	dc001215 	stw	r16,72(sp)
  805df0:	2821883a 	mov	r16,r5
  805df4:	2940038f 	ldh	r5,14(r5)
  805df8:	dc801415 	stw	r18,80(sp)
  805dfc:	dc401315 	stw	r17,76(sp)
  805e00:	dfc01515 	stw	ra,84(sp)
  805e04:	3023883a 	mov	r17,r6
  805e08:	3825883a 	mov	r18,r7
  805e0c:	28001016 	blt	r5,zero,805e50 <__swhatbuf_r+0x68>
  805e10:	d80d883a 	mov	r6,sp
  805e14:	0809e180 	call	809e18 <_fstat_r>
  805e18:	10000d16 	blt	r2,zero,805e50 <__swhatbuf_r+0x68>
  805e1c:	d8c00117 	ldw	r3,4(sp)
  805e20:	00820004 	movi	r2,2048
  805e24:	18fc000c 	andi	r3,r3,61440
  805e28:	18c80020 	cmpeqi	r3,r3,8192
  805e2c:	90c00015 	stw	r3,0(r18)
  805e30:	00c10004 	movi	r3,1024
  805e34:	88c00015 	stw	r3,0(r17)
  805e38:	dfc01517 	ldw	ra,84(sp)
  805e3c:	dc801417 	ldw	r18,80(sp)
  805e40:	dc401317 	ldw	r17,76(sp)
  805e44:	dc001217 	ldw	r16,72(sp)
  805e48:	dec01604 	addi	sp,sp,88
  805e4c:	f800283a 	ret
  805e50:	8080030b 	ldhu	r2,12(r16)
  805e54:	90000015 	stw	zero,0(r18)
  805e58:	1080200c 	andi	r2,r2,128
  805e5c:	10000426 	beq	r2,zero,805e70 <__swhatbuf_r+0x88>
  805e60:	00801004 	movi	r2,64
  805e64:	88800015 	stw	r2,0(r17)
  805e68:	0005883a 	mov	r2,zero
  805e6c:	003ff206 	br	805e38 <__swhatbuf_r+0x50>
  805e70:	00810004 	movi	r2,1024
  805e74:	88800015 	stw	r2,0(r17)
  805e78:	0005883a 	mov	r2,zero
  805e7c:	003fee06 	br	805e38 <__swhatbuf_r+0x50>

00805e80 <__smakebuf_r>:
  805e80:	2880030b 	ldhu	r2,12(r5)
  805e84:	defffa04 	addi	sp,sp,-24
  805e88:	dc000215 	stw	r16,8(sp)
  805e8c:	dfc00515 	stw	ra,20(sp)
  805e90:	dc800415 	stw	r18,16(sp)
  805e94:	dc400315 	stw	r17,12(sp)
  805e98:	1080008c 	andi	r2,r2,2
  805e9c:	2821883a 	mov	r16,r5
  805ea0:	10000b26 	beq	r2,zero,805ed0 <__smakebuf_r+0x50>
  805ea4:	288010c4 	addi	r2,r5,67
  805ea8:	28800015 	stw	r2,0(r5)
  805eac:	28800415 	stw	r2,16(r5)
  805eb0:	00800044 	movi	r2,1
  805eb4:	28800515 	stw	r2,20(r5)
  805eb8:	dfc00517 	ldw	ra,20(sp)
  805ebc:	dc800417 	ldw	r18,16(sp)
  805ec0:	dc400317 	ldw	r17,12(sp)
  805ec4:	dc000217 	ldw	r16,8(sp)
  805ec8:	dec00604 	addi	sp,sp,24
  805ecc:	f800283a 	ret
  805ed0:	d9c00104 	addi	r7,sp,4
  805ed4:	d80d883a 	mov	r6,sp
  805ed8:	2023883a 	mov	r17,r4
  805edc:	0805de80 	call	805de8 <__swhatbuf_r>
  805ee0:	d9000117 	ldw	r4,4(sp)
  805ee4:	1025883a 	mov	r18,r2
  805ee8:	2000131e 	bne	r4,zero,805f38 <__smakebuf_r+0xb8>
  805eec:	d9400017 	ldw	r5,0(sp)
  805ef0:	8809883a 	mov	r4,r17
  805ef4:	0805fc00 	call	805fc0 <_malloc_r>
  805ef8:	10001c26 	beq	r2,zero,805f6c <__smakebuf_r+0xec>
  805efc:	01002034 	movhi	r4,128
  805f00:	21141604 	addi	r4,r4,20568
  805f04:	80c0030b 	ldhu	r3,12(r16)
  805f08:	89000f15 	stw	r4,60(r17)
  805f0c:	80800015 	stw	r2,0(r16)
  805f10:	80800415 	stw	r2,16(r16)
  805f14:	d8800017 	ldw	r2,0(sp)
  805f18:	d9400117 	ldw	r5,4(sp)
  805f1c:	18c02014 	ori	r3,r3,128
  805f20:	80c0030d 	sth	r3,12(r16)
  805f24:	80800515 	stw	r2,20(r16)
  805f28:	28001d1e 	bne	r5,zero,805fa0 <__smakebuf_r+0x120>
  805f2c:	90c6b03a 	or	r3,r18,r3
  805f30:	80c0030d 	sth	r3,12(r16)
  805f34:	003fe006 	br	805eb8 <__smakebuf_r+0x38>
  805f38:	8140038f 	ldh	r5,14(r16)
  805f3c:	8809883a 	mov	r4,r17
  805f40:	0809e780 	call	809e78 <_isatty_r>
  805f44:	103fe926 	beq	r2,zero,805eec <__smakebuf_r+0x6c>
  805f48:	8080030b 	ldhu	r2,12(r16)
  805f4c:	80c010c4 	addi	r3,r16,67
  805f50:	80c00015 	stw	r3,0(r16)
  805f54:	10800054 	ori	r2,r2,1
  805f58:	8080030d 	sth	r2,12(r16)
  805f5c:	00800044 	movi	r2,1
  805f60:	80c00415 	stw	r3,16(r16)
  805f64:	80800515 	stw	r2,20(r16)
  805f68:	003fe006 	br	805eec <__smakebuf_r+0x6c>
  805f6c:	8080030b 	ldhu	r2,12(r16)
  805f70:	10c0800c 	andi	r3,r2,512
  805f74:	183fd01e 	bne	r3,zero,805eb8 <__smakebuf_r+0x38>
  805f78:	00ffff04 	movi	r3,-4
  805f7c:	10c4703a 	and	r2,r2,r3
  805f80:	10800094 	ori	r2,r2,2
  805f84:	80c010c4 	addi	r3,r16,67
  805f88:	8080030d 	sth	r2,12(r16)
  805f8c:	00800044 	movi	r2,1
  805f90:	80c00015 	stw	r3,0(r16)
  805f94:	80c00415 	stw	r3,16(r16)
  805f98:	80800515 	stw	r2,20(r16)
  805f9c:	003fc606 	br	805eb8 <__smakebuf_r+0x38>
  805fa0:	8140038f 	ldh	r5,14(r16)
  805fa4:	8809883a 	mov	r4,r17
  805fa8:	0809e780 	call	809e78 <_isatty_r>
  805fac:	80c0030b 	ldhu	r3,12(r16)
  805fb0:	103fde26 	beq	r2,zero,805f2c <__smakebuf_r+0xac>
  805fb4:	18ffff0c 	andi	r3,r3,65532
  805fb8:	18c00054 	ori	r3,r3,1
  805fbc:	003fdb06 	br	805f2c <__smakebuf_r+0xac>

00805fc0 <_malloc_r>:
  805fc0:	defff604 	addi	sp,sp,-40
  805fc4:	dc400115 	stw	r17,4(sp)
  805fc8:	2c4002c4 	addi	r17,r5,11
  805fcc:	dc800215 	stw	r18,8(sp)
  805fd0:	dfc00915 	stw	ra,36(sp)
  805fd4:	df000815 	stw	fp,32(sp)
  805fd8:	ddc00715 	stw	r23,28(sp)
  805fdc:	dd800615 	stw	r22,24(sp)
  805fe0:	dd400515 	stw	r21,20(sp)
  805fe4:	dd000415 	stw	r20,16(sp)
  805fe8:	dcc00315 	stw	r19,12(sp)
  805fec:	dc000015 	stw	r16,0(sp)
  805ff0:	888005e8 	cmpgeui	r2,r17,23
  805ff4:	2025883a 	mov	r18,r4
  805ff8:	10001b1e 	bne	r2,zero,806068 <_malloc_r+0xa8>
  805ffc:	29400468 	cmpgeui	r5,r5,17
  806000:	2800821e 	bne	r5,zero,80620c <_malloc_r+0x24c>
  806004:	080e3740 	call	80e374 <__malloc_lock>
  806008:	04400404 	movi	r17,16
  80600c:	01c00084 	movi	r7,2
  806010:	00800604 	movi	r2,24
  806014:	04c02074 	movhi	r19,129
  806018:	9cc3fc04 	addi	r19,r19,4080
  80601c:	9885883a 	add	r2,r19,r2
  806020:	14000117 	ldw	r16,4(r2)
  806024:	10fffe04 	addi	r3,r2,-8
  806028:	80c08b26 	beq	r16,r3,806258 <_malloc_r+0x298>
  80602c:	80800117 	ldw	r2,4(r16)
  806030:	81000317 	ldw	r4,12(r16)
  806034:	00ffff04 	movi	r3,-4
  806038:	10c4703a 	and	r2,r2,r3
  80603c:	81400217 	ldw	r5,8(r16)
  806040:	8085883a 	add	r2,r16,r2
  806044:	10c00117 	ldw	r3,4(r2)
  806048:	29000315 	stw	r4,12(r5)
  80604c:	21400215 	stw	r5,8(r4)
  806050:	18c00054 	ori	r3,r3,1
  806054:	10c00115 	stw	r3,4(r2)
  806058:	9009883a 	mov	r4,r18
  80605c:	080e3980 	call	80e398 <__malloc_unlock>
  806060:	80800204 	addi	r2,r16,8
  806064:	00006c06 	br	806218 <_malloc_r+0x258>
  806068:	00bffe04 	movi	r2,-8
  80606c:	88a2703a 	and	r17,r17,r2
  806070:	88006616 	blt	r17,zero,80620c <_malloc_r+0x24c>
  806074:	89406536 	bltu	r17,r5,80620c <_malloc_r+0x24c>
  806078:	080e3740 	call	80e374 <__malloc_lock>
  80607c:	88807e28 	cmpgeui	r2,r17,504
  806080:	10012226 	beq	r2,zero,80650c <_malloc_r+0x54c>
  806084:	8804d27a 	srli	r2,r17,9
  806088:	10006f26 	beq	r2,zero,806248 <_malloc_r+0x288>
  80608c:	10c00168 	cmpgeui	r3,r2,5
  806090:	1800fe1e 	bne	r3,zero,80648c <_malloc_r+0x4cc>
  806094:	8804d1ba 	srli	r2,r17,6
  806098:	11c00e44 	addi	r7,r2,57
  80609c:	380890fa 	slli	r4,r7,3
  8060a0:	12000e04 	addi	r8,r2,56
  8060a4:	04c02074 	movhi	r19,129
  8060a8:	9cc3fc04 	addi	r19,r19,4080
  8060ac:	9909883a 	add	r4,r19,r4
  8060b0:	24000117 	ldw	r16,4(r4)
  8060b4:	213ffe04 	addi	r4,r4,-8
  8060b8:	24000b26 	beq	r4,r16,8060e8 <_malloc_r+0x128>
  8060bc:	01bfff04 	movi	r6,-4
  8060c0:	00000306 	br	8060d0 <_malloc_r+0x110>
  8060c4:	1800d60e 	bge	r3,zero,806420 <_malloc_r+0x460>
  8060c8:	84000317 	ldw	r16,12(r16)
  8060cc:	24000626 	beq	r4,r16,8060e8 <_malloc_r+0x128>
  8060d0:	80800117 	ldw	r2,4(r16)
  8060d4:	1184703a 	and	r2,r2,r6
  8060d8:	1447c83a 	sub	r3,r2,r17
  8060dc:	19400408 	cmpgei	r5,r3,16
  8060e0:	283ff826 	beq	r5,zero,8060c4 <_malloc_r+0x104>
  8060e4:	400f883a 	mov	r7,r8
  8060e8:	9c000417 	ldw	r16,16(r19)
  8060ec:	02402074 	movhi	r9,129
  8060f0:	4a43fe04 	addi	r9,r9,4088
  8060f4:	82405f26 	beq	r16,r9,806274 <_malloc_r+0x2b4>
  8060f8:	80c00117 	ldw	r3,4(r16)
  8060fc:	00bfff04 	movi	r2,-4
  806100:	1884703a 	and	r2,r3,r2
  806104:	1447c83a 	sub	r3,r2,r17
  806108:	19000410 	cmplti	r4,r3,16
  80610c:	20010a26 	beq	r4,zero,806538 <_malloc_r+0x578>
  806110:	9a400515 	stw	r9,20(r19)
  806114:	9a400415 	stw	r9,16(r19)
  806118:	1800ff0e 	bge	r3,zero,806518 <_malloc_r+0x558>
  80611c:	10c08028 	cmpgeui	r3,r2,512
  806120:	1800c11e 	bne	r3,zero,806428 <_malloc_r+0x468>
  806124:	1006d0fa 	srli	r3,r2,3
  806128:	1008d17a 	srli	r4,r2,5
  80612c:	00800044 	movi	r2,1
  806130:	18c00044 	addi	r3,r3,1
  806134:	180690fa 	slli	r3,r3,3
  806138:	99400117 	ldw	r5,4(r19)
  80613c:	1104983a 	sll	r2,r2,r4
  806140:	98c7883a 	add	r3,r19,r3
  806144:	19000017 	ldw	r4,0(r3)
  806148:	1144b03a 	or	r2,r2,r5
  80614c:	197ffe04 	addi	r5,r3,-8
  806150:	81400315 	stw	r5,12(r16)
  806154:	81000215 	stw	r4,8(r16)
  806158:	98800115 	stw	r2,4(r19)
  80615c:	1c000015 	stw	r16,0(r3)
  806160:	24000315 	stw	r16,12(r4)
  806164:	3807d0ba 	srai	r3,r7,2
  806168:	01000044 	movi	r4,1
  80616c:	20c8983a 	sll	r4,r4,r3
  806170:	11004536 	bltu	r2,r4,806288 <_malloc_r+0x2c8>
  806174:	2086703a 	and	r3,r4,r2
  806178:	18000a1e 	bne	r3,zero,8061a4 <_malloc_r+0x1e4>
  80617c:	00ffff04 	movi	r3,-4
  806180:	2109883a 	add	r4,r4,r4
  806184:	38ce703a 	and	r7,r7,r3
  806188:	2086703a 	and	r3,r4,r2
  80618c:	39c00104 	addi	r7,r7,4
  806190:	1800041e 	bne	r3,zero,8061a4 <_malloc_r+0x1e4>
  806194:	2109883a 	add	r4,r4,r4
  806198:	2086703a 	and	r3,r4,r2
  80619c:	39c00104 	addi	r7,r7,4
  8061a0:	183ffc26 	beq	r3,zero,806194 <_malloc_r+0x1d4>
  8061a4:	02bfff04 	movi	r10,-4
  8061a8:	381690fa 	slli	r11,r7,3
  8061ac:	3819883a 	mov	r12,r7
  8061b0:	9ad7883a 	add	r11,r19,r11
  8061b4:	5811883a 	mov	r8,r11
  8061b8:	40800317 	ldw	r2,12(r8)
  8061bc:	4080bc26 	beq	r8,r2,8064b0 <_malloc_r+0x4f0>
  8061c0:	10c00117 	ldw	r3,4(r2)
  8061c4:	1021883a 	mov	r16,r2
  8061c8:	10800317 	ldw	r2,12(r2)
  8061cc:	1a86703a 	and	r3,r3,r10
  8061d0:	1c4bc83a 	sub	r5,r3,r17
  8061d4:	29800410 	cmplti	r6,r5,16
  8061d8:	3000ba26 	beq	r6,zero,8064c4 <_malloc_r+0x504>
  8061dc:	283ff716 	blt	r5,zero,8061bc <_malloc_r+0x1fc>
  8061e0:	80c7883a 	add	r3,r16,r3
  8061e4:	19400117 	ldw	r5,4(r3)
  8061e8:	81800217 	ldw	r6,8(r16)
  8061ec:	9009883a 	mov	r4,r18
  8061f0:	29400054 	ori	r5,r5,1
  8061f4:	19400115 	stw	r5,4(r3)
  8061f8:	30800315 	stw	r2,12(r6)
  8061fc:	11800215 	stw	r6,8(r2)
  806200:	080e3980 	call	80e398 <__malloc_unlock>
  806204:	80800204 	addi	r2,r16,8
  806208:	00000306 	br	806218 <_malloc_r+0x258>
  80620c:	00800304 	movi	r2,12
  806210:	90800015 	stw	r2,0(r18)
  806214:	0005883a 	mov	r2,zero
  806218:	dfc00917 	ldw	ra,36(sp)
  80621c:	df000817 	ldw	fp,32(sp)
  806220:	ddc00717 	ldw	r23,28(sp)
  806224:	dd800617 	ldw	r22,24(sp)
  806228:	dd400517 	ldw	r21,20(sp)
  80622c:	dd000417 	ldw	r20,16(sp)
  806230:	dcc00317 	ldw	r19,12(sp)
  806234:	dc800217 	ldw	r18,8(sp)
  806238:	dc400117 	ldw	r17,4(sp)
  80623c:	dc000017 	ldw	r16,0(sp)
  806240:	dec00a04 	addi	sp,sp,40
  806244:	f800283a 	ret
  806248:	01008004 	movi	r4,512
  80624c:	01c01004 	movi	r7,64
  806250:	02000fc4 	movi	r8,63
  806254:	003f9306 	br	8060a4 <_malloc_r+0xe4>
  806258:	14000317 	ldw	r16,12(r2)
  80625c:	39c00084 	addi	r7,r7,2
  806260:	143f721e 	bne	r2,r16,80602c <_malloc_r+0x6c>
  806264:	9c000417 	ldw	r16,16(r19)
  806268:	02402074 	movhi	r9,129
  80626c:	4a43fe04 	addi	r9,r9,4088
  806270:	827fa11e 	bne	r16,r9,8060f8 <_malloc_r+0x138>
  806274:	3807d0ba 	srai	r3,r7,2
  806278:	01000044 	movi	r4,1
  80627c:	98800117 	ldw	r2,4(r19)
  806280:	20c8983a 	sll	r4,r4,r3
  806284:	113fbb2e 	bgeu	r2,r4,806174 <_malloc_r+0x1b4>
  806288:	9c000217 	ldw	r16,8(r19)
  80628c:	00bfff04 	movi	r2,-4
  806290:	85400117 	ldw	r21,4(r16)
  806294:	a8ac703a 	and	r22,r21,r2
  806298:	b4400336 	bltu	r22,r17,8062a8 <_malloc_r+0x2e8>
  80629c:	b445c83a 	sub	r2,r22,r17
  8062a0:	10c00408 	cmpgei	r3,r2,16
  8062a4:	1800541e 	bne	r3,zero,8063f8 <_malloc_r+0x438>
  8062a8:	00802074 	movhi	r2,129
  8062ac:	1089dd17 	ldw	r2,10100(r2)
  8062b0:	00c02074 	movhi	r3,129
  8062b4:	1d50e117 	ldw	r21,17284(r3)
  8062b8:	10bfffd8 	cmpnei	r2,r2,-1
  8062bc:	85b9883a 	add	fp,r16,r22
  8062c0:	8d6b883a 	add	r21,r17,r21
  8062c4:	1000d626 	beq	r2,zero,806620 <_malloc_r+0x660>
  8062c8:	ad4403c4 	addi	r21,r21,4111
  8062cc:	00bc0004 	movi	r2,-4096
  8062d0:	a8aa703a 	and	r21,r21,r2
  8062d4:	a80b883a 	mov	r5,r21
  8062d8:	9009883a 	mov	r4,r18
  8062dc:	080822c0 	call	80822c <_sbrk_r>
  8062e0:	102f883a 	mov	r23,r2
  8062e4:	10bfffd8 	cmpnei	r2,r2,-1
  8062e8:	1000a826 	beq	r2,zero,80658c <_malloc_r+0x5cc>
  8062ec:	bf00a636 	bltu	r23,fp,806588 <_malloc_r+0x5c8>
  8062f0:	00802074 	movhi	r2,129
  8062f4:	1510eb17 	ldw	r20,17324(r2)
  8062f8:	ad29883a 	add	r20,r21,r20
  8062fc:	1510eb15 	stw	r20,17324(r2)
  806300:	a007883a 	mov	r3,r20
  806304:	e5c0ec26 	beq	fp,r23,8066b8 <_malloc_r+0x6f8>
  806308:	00802074 	movhi	r2,129
  80630c:	1089dd17 	ldw	r2,10100(r2)
  806310:	10bfffd8 	cmpnei	r2,r2,-1
  806314:	1000ef26 	beq	r2,zero,8066d4 <_malloc_r+0x714>
  806318:	bf39c83a 	sub	fp,r23,fp
  80631c:	e0c7883a 	add	r3,fp,r3
  806320:	00802074 	movhi	r2,129
  806324:	10d0eb15 	stw	r3,17324(r2)
  806328:	bf0001cc 	andi	fp,r23,7
  80632c:	e000c526 	beq	fp,zero,806644 <_malloc_r+0x684>
  806330:	bf2fc83a 	sub	r23,r23,fp
  806334:	bdc00204 	addi	r23,r23,8
  806338:	05040204 	movi	r20,4104
  80633c:	a729c83a 	sub	r20,r20,fp
  806340:	bd6b883a 	add	r21,r23,r21
  806344:	a569c83a 	sub	r20,r20,r21
  806348:	a503ffcc 	andi	r20,r20,4095
  80634c:	a00b883a 	mov	r5,r20
  806350:	9009883a 	mov	r4,r18
  806354:	080822c0 	call	80822c <_sbrk_r>
  806358:	10ffffe0 	cmpeqi	r3,r2,-1
  80635c:	1800f31e 	bne	r3,zero,80672c <_malloc_r+0x76c>
  806360:	15c5c83a 	sub	r2,r2,r23
  806364:	152b883a 	add	r21,r2,r20
  806368:	00802074 	movhi	r2,129
  80636c:	1150eb17 	ldw	r5,17324(r2)
  806370:	9dc00215 	stw	r23,8(r19)
  806374:	ad400054 	ori	r21,r21,1
  806378:	a169883a 	add	r20,r20,r5
  80637c:	1510eb15 	stw	r20,17324(r2)
  806380:	bd400115 	stw	r21,4(r23)
  806384:	84c0d626 	beq	r16,r19,8066e0 <_malloc_r+0x720>
  806388:	b0800428 	cmpgeui	r2,r22,16
  80638c:	1000d626 	beq	r2,zero,8066e8 <_malloc_r+0x728>
  806390:	80c00117 	ldw	r3,4(r16)
  806394:	013ffe04 	movi	r4,-8
  806398:	b0bffd04 	addi	r2,r22,-12
  80639c:	1104703a 	and	r2,r2,r4
  8063a0:	18c0004c 	andi	r3,r3,1
  8063a4:	1886b03a 	or	r3,r3,r2
  8063a8:	80c00115 	stw	r3,4(r16)
  8063ac:	01000144 	movi	r4,5
  8063b0:	8087883a 	add	r3,r16,r2
  8063b4:	19000115 	stw	r4,4(r3)
  8063b8:	19000215 	stw	r4,8(r3)
  8063bc:	10800428 	cmpgeui	r2,r2,16
  8063c0:	1000df1e 	bne	r2,zero,806740 <_malloc_r+0x780>
  8063c4:	bd400117 	ldw	r21,4(r23)
  8063c8:	b821883a 	mov	r16,r23
  8063cc:	00802074 	movhi	r2,129
  8063d0:	1090e017 	ldw	r2,17280(r2)
  8063d4:	1500022e 	bgeu	r2,r20,8063e0 <_malloc_r+0x420>
  8063d8:	00802074 	movhi	r2,129
  8063dc:	1510e015 	stw	r20,17280(r2)
  8063e0:	00802074 	movhi	r2,129
  8063e4:	1090df17 	ldw	r2,17276(r2)
  8063e8:	15006a2e 	bgeu	r2,r20,806594 <_malloc_r+0x5d4>
  8063ec:	00802074 	movhi	r2,129
  8063f0:	1510df15 	stw	r20,17276(r2)
  8063f4:	00006706 	br	806594 <_malloc_r+0x5d4>
  8063f8:	88c00054 	ori	r3,r17,1
  8063fc:	80c00115 	stw	r3,4(r16)
  806400:	8463883a 	add	r17,r16,r17
  806404:	10800054 	ori	r2,r2,1
  806408:	9c400215 	stw	r17,8(r19)
  80640c:	88800115 	stw	r2,4(r17)
  806410:	9009883a 	mov	r4,r18
  806414:	080e3980 	call	80e398 <__malloc_unlock>
  806418:	80800204 	addi	r2,r16,8
  80641c:	003f7e06 	br	806218 <_malloc_r+0x258>
  806420:	81000317 	ldw	r4,12(r16)
  806424:	003f0506 	br	80603c <_malloc_r+0x7c>
  806428:	1006d27a 	srli	r3,r2,9
  80642c:	19000168 	cmpgeui	r4,r3,5
  806430:	20005026 	beq	r4,zero,806574 <_malloc_r+0x5b4>
  806434:	19000568 	cmpgeui	r4,r3,21
  806438:	20008c1e 	bne	r4,zero,80666c <_malloc_r+0x6ac>
  80643c:	19401704 	addi	r5,r3,92
  806440:	280a90fa 	slli	r5,r5,3
  806444:	190016c4 	addi	r4,r3,91
  806448:	994b883a 	add	r5,r19,r5
  80644c:	28c00017 	ldw	r3,0(r5)
  806450:	297ffe04 	addi	r5,r5,-8
  806454:	28c07426 	beq	r5,r3,806628 <_malloc_r+0x668>
  806458:	01bfff04 	movi	r6,-4
  80645c:	19000117 	ldw	r4,4(r3)
  806460:	2188703a 	and	r4,r4,r6
  806464:	1100022e 	bgeu	r2,r4,806470 <_malloc_r+0x4b0>
  806468:	18c00217 	ldw	r3,8(r3)
  80646c:	28fffb1e 	bne	r5,r3,80645c <_malloc_r+0x49c>
  806470:	19400317 	ldw	r5,12(r3)
  806474:	98800117 	ldw	r2,4(r19)
  806478:	81400315 	stw	r5,12(r16)
  80647c:	80c00215 	stw	r3,8(r16)
  806480:	2c000215 	stw	r16,8(r5)
  806484:	1c000315 	stw	r16,12(r3)
  806488:	003f3606 	br	806164 <_malloc_r+0x1a4>
  80648c:	10c00568 	cmpgeui	r3,r2,21
  806490:	18004a26 	beq	r3,zero,8065bc <_malloc_r+0x5fc>
  806494:	10c01568 	cmpgeui	r3,r2,85
  806498:	18007b1e 	bne	r3,zero,806688 <_malloc_r+0x6c8>
  80649c:	8804d33a 	srli	r2,r17,12
  8064a0:	11c01bc4 	addi	r7,r2,111
  8064a4:	380890fa 	slli	r4,r7,3
  8064a8:	12001b84 	addi	r8,r2,110
  8064ac:	003efd06 	br	8060a4 <_malloc_r+0xe4>
  8064b0:	63000044 	addi	r12,r12,1
  8064b4:	608000cc 	andi	r2,r12,3
  8064b8:	42000204 	addi	r8,r8,8
  8064bc:	103f3e1e 	bne	r2,zero,8061b8 <_malloc_r+0x1f8>
  8064c0:	00004506 	br	8065d8 <_malloc_r+0x618>
  8064c4:	81000217 	ldw	r4,8(r16)
  8064c8:	89800054 	ori	r6,r17,1
  8064cc:	81800115 	stw	r6,4(r16)
  8064d0:	20800315 	stw	r2,12(r4)
  8064d4:	11000215 	stw	r4,8(r2)
  8064d8:	8463883a 	add	r17,r16,r17
  8064dc:	9c400515 	stw	r17,20(r19)
  8064e0:	9c400415 	stw	r17,16(r19)
  8064e4:	28800054 	ori	r2,r5,1
  8064e8:	88800115 	stw	r2,4(r17)
  8064ec:	8a400315 	stw	r9,12(r17)
  8064f0:	8a400215 	stw	r9,8(r17)
  8064f4:	80c7883a 	add	r3,r16,r3
  8064f8:	19400015 	stw	r5,0(r3)
  8064fc:	9009883a 	mov	r4,r18
  806500:	080e3980 	call	80e398 <__malloc_unlock>
  806504:	80800204 	addi	r2,r16,8
  806508:	003f4306 	br	806218 <_malloc_r+0x258>
  80650c:	880ed0fa 	srli	r7,r17,3
  806510:	88800204 	addi	r2,r17,8
  806514:	003ebf06 	br	806014 <_malloc_r+0x54>
  806518:	8085883a 	add	r2,r16,r2
  80651c:	10c00117 	ldw	r3,4(r2)
  806520:	9009883a 	mov	r4,r18
  806524:	18c00054 	ori	r3,r3,1
  806528:	10c00115 	stw	r3,4(r2)
  80652c:	080e3980 	call	80e398 <__malloc_unlock>
  806530:	80800204 	addi	r2,r16,8
  806534:	003f3806 	br	806218 <_malloc_r+0x258>
  806538:	89000054 	ori	r4,r17,1
  80653c:	81000115 	stw	r4,4(r16)
  806540:	8463883a 	add	r17,r16,r17
  806544:	9c400515 	stw	r17,20(r19)
  806548:	9c400415 	stw	r17,16(r19)
  80654c:	19000054 	ori	r4,r3,1
  806550:	89000115 	stw	r4,4(r17)
  806554:	8085883a 	add	r2,r16,r2
  806558:	8a400315 	stw	r9,12(r17)
  80655c:	8a400215 	stw	r9,8(r17)
  806560:	10c00015 	stw	r3,0(r2)
  806564:	9009883a 	mov	r4,r18
  806568:	080e3980 	call	80e398 <__malloc_unlock>
  80656c:	80800204 	addi	r2,r16,8
  806570:	003f2906 	br	806218 <_malloc_r+0x258>
  806574:	1006d1ba 	srli	r3,r2,6
  806578:	19400e44 	addi	r5,r3,57
  80657c:	280a90fa 	slli	r5,r5,3
  806580:	19000e04 	addi	r4,r3,56
  806584:	003fb006 	br	806448 <_malloc_r+0x488>
  806588:	84c04626 	beq	r16,r19,8066a4 <_malloc_r+0x6e4>
  80658c:	9c000217 	ldw	r16,8(r19)
  806590:	85400117 	ldw	r21,4(r16)
  806594:	00bfff04 	movi	r2,-4
  806598:	a8aa703a 	and	r21,r21,r2
  80659c:	ac45c83a 	sub	r2,r21,r17
  8065a0:	ac400236 	bltu	r21,r17,8065ac <_malloc_r+0x5ec>
  8065a4:	10c00408 	cmpgei	r3,r2,16
  8065a8:	183f931e 	bne	r3,zero,8063f8 <_malloc_r+0x438>
  8065ac:	9009883a 	mov	r4,r18
  8065b0:	080e3980 	call	80e398 <__malloc_unlock>
  8065b4:	0005883a 	mov	r2,zero
  8065b8:	003f1706 	br	806218 <_malloc_r+0x258>
  8065bc:	11c01704 	addi	r7,r2,92
  8065c0:	380890fa 	slli	r4,r7,3
  8065c4:	120016c4 	addi	r8,r2,91
  8065c8:	003eb606 	br	8060a4 <_malloc_r+0xe4>
  8065cc:	58800217 	ldw	r2,8(r11)
  8065d0:	39ffffc4 	addi	r7,r7,-1
  8065d4:	12c0701e 	bne	r2,r11,806798 <_malloc_r+0x7d8>
  8065d8:	388000cc 	andi	r2,r7,3
  8065dc:	5afffe04 	addi	r11,r11,-8
  8065e0:	103ffa1e 	bne	r2,zero,8065cc <_malloc_r+0x60c>
  8065e4:	98c00117 	ldw	r3,4(r19)
  8065e8:	0104303a 	nor	r2,zero,r4
  8065ec:	10c4703a 	and	r2,r2,r3
  8065f0:	98800115 	stw	r2,4(r19)
  8065f4:	2109883a 	add	r4,r4,r4
  8065f8:	113f2336 	bltu	r2,r4,806288 <_malloc_r+0x2c8>
  8065fc:	203f2226 	beq	r4,zero,806288 <_malloc_r+0x2c8>
  806600:	2086703a 	and	r3,r4,r2
  806604:	1800041e 	bne	r3,zero,806618 <_malloc_r+0x658>
  806608:	2109883a 	add	r4,r4,r4
  80660c:	2086703a 	and	r3,r4,r2
  806610:	63000104 	addi	r12,r12,4
  806614:	183ffc26 	beq	r3,zero,806608 <_malloc_r+0x648>
  806618:	600f883a 	mov	r7,r12
  80661c:	003ee206 	br	8061a8 <_malloc_r+0x1e8>
  806620:	ad400404 	addi	r21,r21,16
  806624:	003f2b06 	br	8062d4 <_malloc_r+0x314>
  806628:	2009d0ba 	srai	r4,r4,2
  80662c:	00800044 	movi	r2,1
  806630:	99800117 	ldw	r6,4(r19)
  806634:	1104983a 	sll	r2,r2,r4
  806638:	1184b03a 	or	r2,r2,r6
  80663c:	98800115 	stw	r2,4(r19)
  806640:	003f8d06 	br	806478 <_malloc_r+0x4b8>
  806644:	bd69883a 	add	r20,r23,r21
  806648:	0529c83a 	sub	r20,zero,r20
  80664c:	a503ffcc 	andi	r20,r20,4095
  806650:	a00b883a 	mov	r5,r20
  806654:	9009883a 	mov	r4,r18
  806658:	080822c0 	call	80822c <_sbrk_r>
  80665c:	10ffffe0 	cmpeqi	r3,r2,-1
  806660:	183f3f26 	beq	r3,zero,806360 <_malloc_r+0x3a0>
  806664:	0029883a 	mov	r20,zero
  806668:	003f3f06 	br	806368 <_malloc_r+0x3a8>
  80666c:	19001568 	cmpgeui	r4,r3,85
  806670:	2000201e 	bne	r4,zero,8066f4 <_malloc_r+0x734>
  806674:	1006d33a 	srli	r3,r2,12
  806678:	19401bc4 	addi	r5,r3,111
  80667c:	280a90fa 	slli	r5,r5,3
  806680:	19001b84 	addi	r4,r3,110
  806684:	003f7006 	br	806448 <_malloc_r+0x488>
  806688:	10c05568 	cmpgeui	r3,r2,341
  80668c:	1800201e 	bne	r3,zero,806710 <_malloc_r+0x750>
  806690:	8804d3fa 	srli	r2,r17,15
  806694:	11c01e04 	addi	r7,r2,120
  806698:	380890fa 	slli	r4,r7,3
  80669c:	12001dc4 	addi	r8,r2,119
  8066a0:	003e8006 	br	8060a4 <_malloc_r+0xe4>
  8066a4:	00802074 	movhi	r2,129
  8066a8:	10d0eb17 	ldw	r3,17324(r2)
  8066ac:	a8c7883a 	add	r3,r21,r3
  8066b0:	10d0eb15 	stw	r3,17324(r2)
  8066b4:	003f1406 	br	806308 <_malloc_r+0x348>
  8066b8:	e083ffcc 	andi	r2,fp,4095
  8066bc:	103f121e 	bne	r2,zero,806308 <_malloc_r+0x348>
  8066c0:	9c000217 	ldw	r16,8(r19)
  8066c4:	b56b883a 	add	r21,r22,r21
  8066c8:	ad400054 	ori	r21,r21,1
  8066cc:	85400115 	stw	r21,4(r16)
  8066d0:	003f3e06 	br	8063cc <_malloc_r+0x40c>
  8066d4:	00802074 	movhi	r2,129
  8066d8:	15c9dd15 	stw	r23,10100(r2)
  8066dc:	003f1206 	br	806328 <_malloc_r+0x368>
  8066e0:	b821883a 	mov	r16,r23
  8066e4:	003f3906 	br	8063cc <_malloc_r+0x40c>
  8066e8:	00800044 	movi	r2,1
  8066ec:	b8800115 	stw	r2,4(r23)
  8066f0:	003fae06 	br	8065ac <_malloc_r+0x5ec>
  8066f4:	19005568 	cmpgeui	r4,r3,341
  8066f8:	2000191e 	bne	r4,zero,806760 <_malloc_r+0x7a0>
  8066fc:	1006d3fa 	srli	r3,r2,15
  806700:	19401e04 	addi	r5,r3,120
  806704:	280a90fa 	slli	r5,r5,3
  806708:	19001dc4 	addi	r4,r3,119
  80670c:	003f4e06 	br	806448 <_malloc_r+0x488>
  806710:	10815568 	cmpgeui	r2,r2,1365
  806714:	1000191e 	bne	r2,zero,80677c <_malloc_r+0x7bc>
  806718:	8804d4ba 	srli	r2,r17,18
  80671c:	11c01f44 	addi	r7,r2,125
  806720:	380890fa 	slli	r4,r7,3
  806724:	12001f04 	addi	r8,r2,124
  806728:	003e5e06 	br	8060a4 <_malloc_r+0xe4>
  80672c:	e73ffe04 	addi	fp,fp,-8
  806730:	af2b883a 	add	r21,r21,fp
  806734:	adebc83a 	sub	r21,r21,r23
  806738:	0029883a 	mov	r20,zero
  80673c:	003f0a06 	br	806368 <_malloc_r+0x3a8>
  806740:	81400204 	addi	r5,r16,8
  806744:	9009883a 	mov	r4,r18
  806748:	08054c00 	call	8054c0 <_free_r>
  80674c:	9c000217 	ldw	r16,8(r19)
  806750:	00802074 	movhi	r2,129
  806754:	1510eb17 	ldw	r20,17324(r2)
  806758:	85400117 	ldw	r21,4(r16)
  80675c:	003f1b06 	br	8063cc <_malloc_r+0x40c>
  806760:	18c15568 	cmpgeui	r3,r3,1365
  806764:	1800091e 	bne	r3,zero,80678c <_malloc_r+0x7cc>
  806768:	1006d4ba 	srli	r3,r2,18
  80676c:	19401f44 	addi	r5,r3,125
  806770:	280a90fa 	slli	r5,r5,3
  806774:	19001f04 	addi	r4,r3,124
  806778:	003f3306 	br	806448 <_malloc_r+0x488>
  80677c:	0100fe04 	movi	r4,1016
  806780:	01c01fc4 	movi	r7,127
  806784:	02001f84 	movi	r8,126
  806788:	003e4606 	br	8060a4 <_malloc_r+0xe4>
  80678c:	0140fe04 	movi	r5,1016
  806790:	01001f84 	movi	r4,126
  806794:	003f2c06 	br	806448 <_malloc_r+0x488>
  806798:	98800117 	ldw	r2,4(r19)
  80679c:	003f9506 	br	8065f4 <_malloc_r+0x634>

008067a0 <memchr>:
  8067a0:	208000cc 	andi	r2,r4,3
  8067a4:	280f883a 	mov	r7,r5
  8067a8:	10000e26 	beq	r2,zero,8067e4 <memchr+0x44>
  8067ac:	30bfffc4 	addi	r2,r6,-1
  8067b0:	30001726 	beq	r6,zero,806810 <memchr+0x70>
  8067b4:	29803fcc 	andi	r6,r5,255
  8067b8:	00000606 	br	8067d4 <memchr+0x34>
  8067bc:	21000044 	addi	r4,r4,1
  8067c0:	20c000cc 	andi	r3,r4,3
  8067c4:	18000826 	beq	r3,zero,8067e8 <memchr+0x48>
  8067c8:	10bfffc4 	addi	r2,r2,-1
  8067cc:	10ffffe0 	cmpeqi	r3,r2,-1
  8067d0:	18000f1e 	bne	r3,zero,806810 <memchr+0x70>
  8067d4:	20c00003 	ldbu	r3,0(r4)
  8067d8:	19bff81e 	bne	r3,r6,8067bc <memchr+0x1c>
  8067dc:	2005883a 	mov	r2,r4
  8067e0:	f800283a 	ret
  8067e4:	3005883a 	mov	r2,r6
  8067e8:	10c00128 	cmpgeui	r3,r2,4
  8067ec:	18000a1e 	bne	r3,zero,806818 <memchr+0x78>
  8067f0:	10001f26 	beq	r2,zero,806870 <memchr+0xd0>
  8067f4:	2087883a 	add	r3,r4,r2
  8067f8:	39803fcc 	andi	r6,r7,255
  8067fc:	2005883a 	mov	r2,r4
  806800:	11000003 	ldbu	r4,0(r2)
  806804:	21bff626 	beq	r4,r6,8067e0 <memchr+0x40>
  806808:	10800044 	addi	r2,r2,1
  80680c:	18bffc1e 	bne	r3,r2,806800 <memchr+0x60>
  806810:	0005883a 	mov	r2,zero
  806814:	f800283a 	ret
  806818:	2810923a 	slli	r8,r5,8
  80681c:	29403fcc 	andi	r5,r5,255
  806820:	027fbff4 	movhi	r9,65279
  806824:	423fffcc 	andi	r8,r8,65535
  806828:	414ab03a 	or	r5,r8,r5
  80682c:	2810943a 	slli	r8,r5,16
  806830:	01a02074 	movhi	r6,32897
  806834:	4a7fbfc4 	addi	r9,r9,-257
  806838:	4150b03a 	or	r8,r8,r5
  80683c:	31a02004 	addi	r6,r6,-32640
  806840:	20c00017 	ldw	r3,0(r4)
  806844:	40c6f03a 	xor	r3,r8,r3
  806848:	1a4b883a 	add	r5,r3,r9
  80684c:	00c6303a 	nor	r3,zero,r3
  806850:	28c6703a 	and	r3,r5,r3
  806854:	1986703a 	and	r3,r3,r6
  806858:	183fe61e 	bne	r3,zero,8067f4 <memchr+0x54>
  80685c:	10bfff04 	addi	r2,r2,-4
  806860:	10c00128 	cmpgeui	r3,r2,4
  806864:	21000104 	addi	r4,r4,4
  806868:	183ff51e 	bne	r3,zero,806840 <memchr+0xa0>
  80686c:	003fe006 	br	8067f0 <memchr+0x50>
  806870:	f800283a 	ret

00806874 <memcpy>:
  806874:	30c00430 	cmpltui	r3,r6,16
  806878:	2005883a 	mov	r2,r4
  80687c:	18002d1e 	bne	r3,zero,806934 <memcpy+0xc0>
  806880:	2906b03a 	or	r3,r5,r4
  806884:	18c000cc 	andi	r3,r3,3
  806888:	1800351e 	bne	r3,zero,806960 <memcpy+0xec>
  80688c:	32fffc04 	addi	r11,r6,-16
  806890:	5816d13a 	srli	r11,r11,4
  806894:	280f883a 	mov	r7,r5
  806898:	2007883a 	mov	r3,r4
  80689c:	5ac00044 	addi	r11,r11,1
  8068a0:	5816913a 	slli	r11,r11,4
  8068a4:	22d5883a 	add	r10,r4,r11
  8068a8:	39000117 	ldw	r4,4(r7)
  8068ac:	3a400017 	ldw	r9,0(r7)
  8068b0:	3a000217 	ldw	r8,8(r7)
  8068b4:	19000115 	stw	r4,4(r3)
  8068b8:	39000317 	ldw	r4,12(r7)
  8068bc:	1a400015 	stw	r9,0(r3)
  8068c0:	1a000215 	stw	r8,8(r3)
  8068c4:	19000315 	stw	r4,12(r3)
  8068c8:	18c00404 	addi	r3,r3,16
  8068cc:	39c00404 	addi	r7,r7,16
  8068d0:	50fff51e 	bne	r10,r3,8068a8 <memcpy+0x34>
  8068d4:	3100030c 	andi	r4,r6,12
  8068d8:	2acb883a 	add	r5,r5,r11
  8068dc:	320003cc 	andi	r8,r6,15
  8068e0:	20002226 	beq	r4,zero,80696c <memcpy+0xf8>
  8068e4:	280f883a 	mov	r7,r5
  8068e8:	1813883a 	mov	r9,r3
  8068ec:	39c00104 	addi	r7,r7,4
  8068f0:	3abfff17 	ldw	r10,-4(r7)
  8068f4:	41c9c83a 	sub	r4,r8,r7
  8068f8:	2909883a 	add	r4,r5,r4
  8068fc:	4a800015 	stw	r10,0(r9)
  806900:	21000128 	cmpgeui	r4,r4,4
  806904:	4a400104 	addi	r9,r9,4
  806908:	203ff81e 	bne	r4,zero,8068ec <memcpy+0x78>
  80690c:	413fff04 	addi	r4,r8,-4
  806910:	2008d0ba 	srli	r4,r4,2
  806914:	318000cc 	andi	r6,r6,3
  806918:	31ffffc4 	addi	r7,r6,-1
  80691c:	21000044 	addi	r4,r4,1
  806920:	200890ba 	slli	r4,r4,2
  806924:	1907883a 	add	r3,r3,r4
  806928:	290b883a 	add	r5,r5,r4
  80692c:	3000041e 	bne	r6,zero,806940 <memcpy+0xcc>
  806930:	f800283a 	ret
  806934:	2007883a 	mov	r3,r4
  806938:	31ffffc4 	addi	r7,r6,-1
  80693c:	303ffc26 	beq	r6,zero,806930 <memcpy+0xbc>
  806940:	39c00044 	addi	r7,r7,1
  806944:	19cf883a 	add	r7,r3,r7
  806948:	29800003 	ldbu	r6,0(r5)
  80694c:	18c00044 	addi	r3,r3,1
  806950:	29400044 	addi	r5,r5,1
  806954:	19bfffc5 	stb	r6,-1(r3)
  806958:	38fffb1e 	bne	r7,r3,806948 <memcpy+0xd4>
  80695c:	f800283a 	ret
  806960:	31ffffc4 	addi	r7,r6,-1
  806964:	2007883a 	mov	r3,r4
  806968:	003ff506 	br	806940 <memcpy+0xcc>
  80696c:	400d883a 	mov	r6,r8
  806970:	003ff106 	br	806938 <memcpy+0xc4>

00806974 <memmove>:
  806974:	2005883a 	mov	r2,r4
  806978:	29000a2e 	bgeu	r5,r4,8069a4 <memmove+0x30>
  80697c:	2989883a 	add	r4,r5,r6
  806980:	1100082e 	bgeu	r2,r4,8069a4 <memmove+0x30>
  806984:	1187883a 	add	r3,r2,r6
  806988:	30003e26 	beq	r6,zero,806a84 <memmove+0x110>
  80698c:	217fffc3 	ldbu	r5,-1(r4)
  806990:	18ffffc4 	addi	r3,r3,-1
  806994:	213fffc4 	addi	r4,r4,-1
  806998:	19400005 	stb	r5,0(r3)
  80699c:	10fffb1e 	bne	r2,r3,80698c <memmove+0x18>
  8069a0:	f800283a 	ret
  8069a4:	30c00430 	cmpltui	r3,r6,16
  8069a8:	18000b26 	beq	r3,zero,8069d8 <memmove+0x64>
  8069ac:	1007883a 	mov	r3,r2
  8069b0:	31ffffc4 	addi	r7,r6,-1
  8069b4:	30003726 	beq	r6,zero,806a94 <memmove+0x120>
  8069b8:	39c00044 	addi	r7,r7,1
  8069bc:	29cf883a 	add	r7,r5,r7
  8069c0:	29800003 	ldbu	r6,0(r5)
  8069c4:	29400044 	addi	r5,r5,1
  8069c8:	18c00044 	addi	r3,r3,1
  8069cc:	19bfffc5 	stb	r6,-1(r3)
  8069d0:	29fffb1e 	bne	r5,r7,8069c0 <memmove+0x4c>
  8069d4:	f800283a 	ret
  8069d8:	2886b03a 	or	r3,r5,r2
  8069dc:	18c000cc 	andi	r3,r3,3
  8069e0:	1800291e 	bne	r3,zero,806a88 <memmove+0x114>
  8069e4:	327ffc04 	addi	r9,r6,-16
  8069e8:	4812d13a 	srli	r9,r9,4
  8069ec:	280f883a 	mov	r7,r5
  8069f0:	1007883a 	mov	r3,r2
  8069f4:	4a400044 	addi	r9,r9,1
  8069f8:	4812913a 	slli	r9,r9,4
  8069fc:	1251883a 	add	r8,r2,r9
  806a00:	39000017 	ldw	r4,0(r7)
  806a04:	39c00404 	addi	r7,r7,16
  806a08:	18c00404 	addi	r3,r3,16
  806a0c:	193ffc15 	stw	r4,-16(r3)
  806a10:	393ffd17 	ldw	r4,-12(r7)
  806a14:	193ffd15 	stw	r4,-12(r3)
  806a18:	393ffe17 	ldw	r4,-8(r7)
  806a1c:	193ffe15 	stw	r4,-8(r3)
  806a20:	393fff17 	ldw	r4,-4(r7)
  806a24:	193fff15 	stw	r4,-4(r3)
  806a28:	40fff51e 	bne	r8,r3,806a00 <memmove+0x8c>
  806a2c:	3100030c 	andi	r4,r6,12
  806a30:	2a4b883a 	add	r5,r5,r9
  806a34:	320003cc 	andi	r8,r6,15
  806a38:	20001726 	beq	r4,zero,806a98 <memmove+0x124>
  806a3c:	2813883a 	mov	r9,r5
  806a40:	180f883a 	mov	r7,r3
  806a44:	4a800017 	ldw	r10,0(r9)
  806a48:	39c00104 	addi	r7,r7,4
  806a4c:	41c9c83a 	sub	r4,r8,r7
  806a50:	1909883a 	add	r4,r3,r4
  806a54:	21000128 	cmpgeui	r4,r4,4
  806a58:	3abfff15 	stw	r10,-4(r7)
  806a5c:	4a400104 	addi	r9,r9,4
  806a60:	203ff81e 	bne	r4,zero,806a44 <memmove+0xd0>
  806a64:	413fff04 	addi	r4,r8,-4
  806a68:	2008d0ba 	srli	r4,r4,2
  806a6c:	318000cc 	andi	r6,r6,3
  806a70:	21000044 	addi	r4,r4,1
  806a74:	200890ba 	slli	r4,r4,2
  806a78:	1907883a 	add	r3,r3,r4
  806a7c:	290b883a 	add	r5,r5,r4
  806a80:	003fcb06 	br	8069b0 <memmove+0x3c>
  806a84:	f800283a 	ret
  806a88:	31ffffc4 	addi	r7,r6,-1
  806a8c:	1007883a 	mov	r3,r2
  806a90:	003fc906 	br	8069b8 <memmove+0x44>
  806a94:	f800283a 	ret
  806a98:	400d883a 	mov	r6,r8
  806a9c:	003fc406 	br	8069b0 <memmove+0x3c>

00806aa0 <memset>:
  806aa0:	20c000cc 	andi	r3,r4,3
  806aa4:	2005883a 	mov	r2,r4
  806aa8:	18003626 	beq	r3,zero,806b84 <memset+0xe4>
  806aac:	31ffffc4 	addi	r7,r6,-1
  806ab0:	30003326 	beq	r6,zero,806b80 <memset+0xe0>
  806ab4:	2811883a 	mov	r8,r5
  806ab8:	2007883a 	mov	r3,r4
  806abc:	00000306 	br	806acc <memset+0x2c>
  806ac0:	39ffffc4 	addi	r7,r7,-1
  806ac4:	39bfffe0 	cmpeqi	r6,r7,-1
  806ac8:	30002d1e 	bne	r6,zero,806b80 <memset+0xe0>
  806acc:	18c00044 	addi	r3,r3,1
  806ad0:	198000cc 	andi	r6,r3,3
  806ad4:	1a3fffc5 	stb	r8,-1(r3)
  806ad8:	303ff91e 	bne	r6,zero,806ac0 <memset+0x20>
  806adc:	39000130 	cmpltui	r4,r7,4
  806ae0:	2000221e 	bne	r4,zero,806b6c <memset+0xcc>
  806ae4:	29003fcc 	andi	r4,r5,255
  806ae8:	200c923a 	slli	r6,r4,8
  806aec:	3a000430 	cmpltui	r8,r7,16
  806af0:	3108b03a 	or	r4,r6,r4
  806af4:	200c943a 	slli	r6,r4,16
  806af8:	310cb03a 	or	r6,r6,r4
  806afc:	40000e1e 	bne	r8,zero,806b38 <memset+0x98>
  806b00:	393ffc04 	addi	r4,r7,-16
  806b04:	2008d13a 	srli	r4,r4,4
  806b08:	21000044 	addi	r4,r4,1
  806b0c:	2008913a 	slli	r4,r4,4
  806b10:	1909883a 	add	r4,r3,r4
  806b14:	19800015 	stw	r6,0(r3)
  806b18:	19800115 	stw	r6,4(r3)
  806b1c:	19800215 	stw	r6,8(r3)
  806b20:	19800315 	stw	r6,12(r3)
  806b24:	18c00404 	addi	r3,r3,16
  806b28:	20fffa1e 	bne	r4,r3,806b14 <memset+0x74>
  806b2c:	3900030c 	andi	r4,r7,12
  806b30:	39c003cc 	andi	r7,r7,15
  806b34:	20000d26 	beq	r4,zero,806b6c <memset+0xcc>
  806b38:	1811883a 	mov	r8,r3
  806b3c:	42000104 	addi	r8,r8,4
  806b40:	3a09c83a 	sub	r4,r7,r8
  806b44:	1909883a 	add	r4,r3,r4
  806b48:	21000128 	cmpgeui	r4,r4,4
  806b4c:	41bfff15 	stw	r6,-4(r8)
  806b50:	203ffa1e 	bne	r4,zero,806b3c <memset+0x9c>
  806b54:	393fff04 	addi	r4,r7,-4
  806b58:	2008d0ba 	srli	r4,r4,2
  806b5c:	39c000cc 	andi	r7,r7,3
  806b60:	21000044 	addi	r4,r4,1
  806b64:	200890ba 	slli	r4,r4,2
  806b68:	1907883a 	add	r3,r3,r4
  806b6c:	38000426 	beq	r7,zero,806b80 <memset+0xe0>
  806b70:	19cf883a 	add	r7,r3,r7
  806b74:	18c00044 	addi	r3,r3,1
  806b78:	197fffc5 	stb	r5,-1(r3)
  806b7c:	38fffd1e 	bne	r7,r3,806b74 <memset+0xd4>
  806b80:	f800283a 	ret
  806b84:	2007883a 	mov	r3,r4
  806b88:	300f883a 	mov	r7,r6
  806b8c:	003fd306 	br	806adc <memset+0x3c>

00806b90 <_Balloc>:
  806b90:	20801317 	ldw	r2,76(r4)
  806b94:	defffc04 	addi	sp,sp,-16
  806b98:	dc400115 	stw	r17,4(sp)
  806b9c:	dc000015 	stw	r16,0(sp)
  806ba0:	dfc00315 	stw	ra,12(sp)
  806ba4:	dc800215 	stw	r18,8(sp)
  806ba8:	2021883a 	mov	r16,r4
  806bac:	2823883a 	mov	r17,r5
  806bb0:	10000e26 	beq	r2,zero,806bec <_Balloc+0x5c>
  806bb4:	880690ba 	slli	r3,r17,2
  806bb8:	10c7883a 	add	r3,r2,r3
  806bbc:	18800017 	ldw	r2,0(r3)
  806bc0:	10001126 	beq	r2,zero,806c08 <_Balloc+0x78>
  806bc4:	11000017 	ldw	r4,0(r2)
  806bc8:	19000015 	stw	r4,0(r3)
  806bcc:	10000415 	stw	zero,16(r2)
  806bd0:	10000315 	stw	zero,12(r2)
  806bd4:	dfc00317 	ldw	ra,12(sp)
  806bd8:	dc800217 	ldw	r18,8(sp)
  806bdc:	dc400117 	ldw	r17,4(sp)
  806be0:	dc000017 	ldw	r16,0(sp)
  806be4:	dec00404 	addi	sp,sp,16
  806be8:	f800283a 	ret
  806bec:	01800844 	movi	r6,33
  806bf0:	01400104 	movi	r5,4
  806bf4:	08099f40 	call	8099f4 <_calloc_r>
  806bf8:	80801315 	stw	r2,76(r16)
  806bfc:	103fed1e 	bne	r2,zero,806bb4 <_Balloc+0x24>
  806c00:	0005883a 	mov	r2,zero
  806c04:	003ff306 	br	806bd4 <_Balloc+0x44>
  806c08:	04800044 	movi	r18,1
  806c0c:	9464983a 	sll	r18,r18,r17
  806c10:	01400044 	movi	r5,1
  806c14:	8009883a 	mov	r4,r16
  806c18:	91800144 	addi	r6,r18,5
  806c1c:	300c90ba 	slli	r6,r6,2
  806c20:	08099f40 	call	8099f4 <_calloc_r>
  806c24:	103ff626 	beq	r2,zero,806c00 <_Balloc+0x70>
  806c28:	14400115 	stw	r17,4(r2)
  806c2c:	14800215 	stw	r18,8(r2)
  806c30:	003fe606 	br	806bcc <_Balloc+0x3c>

00806c34 <_Bfree>:
  806c34:	28000726 	beq	r5,zero,806c54 <_Bfree+0x20>
  806c38:	28c00117 	ldw	r3,4(r5)
  806c3c:	20801317 	ldw	r2,76(r4)
  806c40:	180690ba 	slli	r3,r3,2
  806c44:	10c5883a 	add	r2,r2,r3
  806c48:	10c00017 	ldw	r3,0(r2)
  806c4c:	28c00015 	stw	r3,0(r5)
  806c50:	11400015 	stw	r5,0(r2)
  806c54:	f800283a 	ret

00806c58 <__multadd>:
  806c58:	defff704 	addi	sp,sp,-36
  806c5c:	dc800215 	stw	r18,8(sp)
  806c60:	2c800417 	ldw	r18,16(r5)
  806c64:	ddc00715 	stw	r23,28(sp)
  806c68:	dd800615 	stw	r22,24(sp)
  806c6c:	dd400515 	stw	r21,20(sp)
  806c70:	dd000415 	stw	r20,16(sp)
  806c74:	dcc00315 	stw	r19,12(sp)
  806c78:	dc400115 	stw	r17,4(sp)
  806c7c:	dfc00815 	stw	ra,32(sp)
  806c80:	dc000015 	stw	r16,0(sp)
  806c84:	2827883a 	mov	r19,r5
  806c88:	2029883a 	mov	r20,r4
  806c8c:	302b883a 	mov	r21,r6
  806c90:	3823883a 	mov	r17,r7
  806c94:	2d800504 	addi	r22,r5,20
  806c98:	002f883a 	mov	r23,zero
  806c9c:	b4000017 	ldw	r16,0(r22)
  806ca0:	a80b883a 	mov	r5,r21
  806ca4:	b5800104 	addi	r22,r22,4
  806ca8:	813fffcc 	andi	r4,r16,65535
  806cac:	0800f080 	call	800f08 <__mulsi3>
  806cb0:	8008d43a 	srli	r4,r16,16
  806cb4:	a80b883a 	mov	r5,r21
  806cb8:	1461883a 	add	r16,r2,r17
  806cbc:	0800f080 	call	800f08 <__mulsi3>
  806cc0:	800ed43a 	srli	r7,r16,16
  806cc4:	843fffcc 	andi	r16,r16,65535
  806cc8:	bdc00044 	addi	r23,r23,1
  806ccc:	11c5883a 	add	r2,r2,r7
  806cd0:	1006943a 	slli	r3,r2,16
  806cd4:	1022d43a 	srli	r17,r2,16
  806cd8:	1c21883a 	add	r16,r3,r16
  806cdc:	b43fff15 	stw	r16,-4(r22)
  806ce0:	bcbfee16 	blt	r23,r18,806c9c <__multadd+0x44>
  806ce4:	88000826 	beq	r17,zero,806d08 <__multadd+0xb0>
  806ce8:	98800217 	ldw	r2,8(r19)
  806cec:	9080120e 	bge	r18,r2,806d38 <__multadd+0xe0>
  806cf0:	90800144 	addi	r2,r18,5
  806cf4:	100490ba 	slli	r2,r2,2
  806cf8:	94800044 	addi	r18,r18,1
  806cfc:	9885883a 	add	r2,r19,r2
  806d00:	14400015 	stw	r17,0(r2)
  806d04:	9c800415 	stw	r18,16(r19)
  806d08:	9805883a 	mov	r2,r19
  806d0c:	dfc00817 	ldw	ra,32(sp)
  806d10:	ddc00717 	ldw	r23,28(sp)
  806d14:	dd800617 	ldw	r22,24(sp)
  806d18:	dd400517 	ldw	r21,20(sp)
  806d1c:	dd000417 	ldw	r20,16(sp)
  806d20:	dcc00317 	ldw	r19,12(sp)
  806d24:	dc800217 	ldw	r18,8(sp)
  806d28:	dc400117 	ldw	r17,4(sp)
  806d2c:	dc000017 	ldw	r16,0(sp)
  806d30:	dec00904 	addi	sp,sp,36
  806d34:	f800283a 	ret
  806d38:	99400117 	ldw	r5,4(r19)
  806d3c:	a009883a 	mov	r4,r20
  806d40:	29400044 	addi	r5,r5,1
  806d44:	0806b900 	call	806b90 <_Balloc>
  806d48:	1021883a 	mov	r16,r2
  806d4c:	10001226 	beq	r2,zero,806d98 <__multadd+0x140>
  806d50:	99800417 	ldw	r6,16(r19)
  806d54:	99400304 	addi	r5,r19,12
  806d58:	11000304 	addi	r4,r2,12
  806d5c:	31800084 	addi	r6,r6,2
  806d60:	300c90ba 	slli	r6,r6,2
  806d64:	08068740 	call	806874 <memcpy>
  806d68:	98000926 	beq	r19,zero,806d90 <__multadd+0x138>
  806d6c:	98c00117 	ldw	r3,4(r19)
  806d70:	a0801317 	ldw	r2,76(r20)
  806d74:	180690ba 	slli	r3,r3,2
  806d78:	10c5883a 	add	r2,r2,r3
  806d7c:	10c00017 	ldw	r3,0(r2)
  806d80:	98c00015 	stw	r3,0(r19)
  806d84:	14c00015 	stw	r19,0(r2)
  806d88:	8027883a 	mov	r19,r16
  806d8c:	003fd806 	br	806cf0 <__multadd+0x98>
  806d90:	8027883a 	mov	r19,r16
  806d94:	003fd606 	br	806cf0 <__multadd+0x98>
  806d98:	01c02074 	movhi	r7,129
  806d9c:	01002074 	movhi	r4,129
  806da0:	39c1bd04 	addi	r7,r7,1780
  806da4:	000d883a 	mov	r6,zero
  806da8:	01402d44 	movi	r5,181
  806dac:	2101d204 	addi	r4,r4,1864
  806db0:	080997c0 	call	80997c <__assert_func>

00806db4 <__s2b>:
  806db4:	defff904 	addi	sp,sp,-28
  806db8:	dc800215 	stw	r18,8(sp)
  806dbc:	dc000015 	stw	r16,0(sp)
  806dc0:	2025883a 	mov	r18,r4
  806dc4:	2821883a 	mov	r16,r5
  806dc8:	39000204 	addi	r4,r7,8
  806dcc:	01400244 	movi	r5,9
  806dd0:	dcc00315 	stw	r19,12(sp)
  806dd4:	dc400115 	stw	r17,4(sp)
  806dd8:	dfc00615 	stw	ra,24(sp)
  806ddc:	3823883a 	mov	r17,r7
  806de0:	dd400515 	stw	r21,20(sp)
  806de4:	dd000415 	stw	r20,16(sp)
  806de8:	3027883a 	mov	r19,r6
  806dec:	080b2dc0 	call	80b2dc <__divsi3>
  806df0:	88c00290 	cmplti	r3,r17,10
  806df4:	1800341e 	bne	r3,zero,806ec8 <__s2b+0x114>
  806df8:	00c00044 	movi	r3,1
  806dfc:	000b883a 	mov	r5,zero
  806e00:	18c7883a 	add	r3,r3,r3
  806e04:	29400044 	addi	r5,r5,1
  806e08:	18bffd16 	blt	r3,r2,806e00 <__s2b+0x4c>
  806e0c:	9009883a 	mov	r4,r18
  806e10:	0806b900 	call	806b90 <_Balloc>
  806e14:	100b883a 	mov	r5,r2
  806e18:	10002d26 	beq	r2,zero,806ed0 <__s2b+0x11c>
  806e1c:	d8800717 	ldw	r2,28(sp)
  806e20:	28800515 	stw	r2,20(r5)
  806e24:	00800044 	movi	r2,1
  806e28:	28800415 	stw	r2,16(r5)
  806e2c:	98800290 	cmplti	r2,r19,10
  806e30:	1000221e 	bne	r2,zero,806ebc <__s2b+0x108>
  806e34:	85400244 	addi	r21,r16,9
  806e38:	a829883a 	mov	r20,r21
  806e3c:	84e1883a 	add	r16,r16,r19
  806e40:	a1c00007 	ldb	r7,0(r20)
  806e44:	01800284 	movi	r6,10
  806e48:	9009883a 	mov	r4,r18
  806e4c:	39fff404 	addi	r7,r7,-48
  806e50:	0806c580 	call	806c58 <__multadd>
  806e54:	a5000044 	addi	r20,r20,1
  806e58:	100b883a 	mov	r5,r2
  806e5c:	a43ff81e 	bne	r20,r16,806e40 <__s2b+0x8c>
  806e60:	9c3ffe04 	addi	r16,r19,-8
  806e64:	ac21883a 	add	r16,r21,r16
  806e68:	9c400a0e 	bge	r19,r17,806e94 <__s2b+0xe0>
  806e6c:	8ce3c83a 	sub	r17,r17,r19
  806e70:	8463883a 	add	r17,r16,r17
  806e74:	81c00007 	ldb	r7,0(r16)
  806e78:	01800284 	movi	r6,10
  806e7c:	9009883a 	mov	r4,r18
  806e80:	39fff404 	addi	r7,r7,-48
  806e84:	0806c580 	call	806c58 <__multadd>
  806e88:	84000044 	addi	r16,r16,1
  806e8c:	100b883a 	mov	r5,r2
  806e90:	8c3ff81e 	bne	r17,r16,806e74 <__s2b+0xc0>
  806e94:	2805883a 	mov	r2,r5
  806e98:	dfc00617 	ldw	ra,24(sp)
  806e9c:	dd400517 	ldw	r21,20(sp)
  806ea0:	dd000417 	ldw	r20,16(sp)
  806ea4:	dcc00317 	ldw	r19,12(sp)
  806ea8:	dc800217 	ldw	r18,8(sp)
  806eac:	dc400117 	ldw	r17,4(sp)
  806eb0:	dc000017 	ldw	r16,0(sp)
  806eb4:	dec00704 	addi	sp,sp,28
  806eb8:	f800283a 	ret
  806ebc:	84000284 	addi	r16,r16,10
  806ec0:	04c00244 	movi	r19,9
  806ec4:	003fe806 	br	806e68 <__s2b+0xb4>
  806ec8:	000b883a 	mov	r5,zero
  806ecc:	003fcf06 	br	806e0c <__s2b+0x58>
  806ed0:	01c02074 	movhi	r7,129
  806ed4:	01002074 	movhi	r4,129
  806ed8:	39c1bd04 	addi	r7,r7,1780
  806edc:	000d883a 	mov	r6,zero
  806ee0:	01403384 	movi	r5,206
  806ee4:	2101d204 	addi	r4,r4,1864
  806ee8:	080997c0 	call	80997c <__assert_func>

00806eec <__hi0bits>:
  806eec:	20bfffec 	andhi	r2,r4,65535
  806ef0:	1000131e 	bne	r2,zero,806f40 <__hi0bits+0x54>
  806ef4:	2008943a 	slli	r4,r4,16
  806ef8:	00800404 	movi	r2,16
  806efc:	20ffc02c 	andhi	r3,r4,65280
  806f00:	1800021e 	bne	r3,zero,806f0c <__hi0bits+0x20>
  806f04:	2008923a 	slli	r4,r4,8
  806f08:	10800204 	addi	r2,r2,8
  806f0c:	20fc002c 	andhi	r3,r4,61440
  806f10:	1800021e 	bne	r3,zero,806f1c <__hi0bits+0x30>
  806f14:	2008913a 	slli	r4,r4,4
  806f18:	10800104 	addi	r2,r2,4
  806f1c:	20f0002c 	andhi	r3,r4,49152
  806f20:	1800021e 	bne	r3,zero,806f2c <__hi0bits+0x40>
  806f24:	200890ba 	slli	r4,r4,2
  806f28:	10800084 	addi	r2,r2,2
  806f2c:	20000316 	blt	r4,zero,806f3c <__hi0bits+0x50>
  806f30:	2110002c 	andhi	r4,r4,16384
  806f34:	10800044 	addi	r2,r2,1
  806f38:	20000326 	beq	r4,zero,806f48 <__hi0bits+0x5c>
  806f3c:	f800283a 	ret
  806f40:	0005883a 	mov	r2,zero
  806f44:	003fed06 	br	806efc <__hi0bits+0x10>
  806f48:	00800804 	movi	r2,32
  806f4c:	f800283a 	ret

00806f50 <__lo0bits>:
  806f50:	20c00017 	ldw	r3,0(r4)
  806f54:	188001cc 	andi	r2,r3,7
  806f58:	10000826 	beq	r2,zero,806f7c <__lo0bits+0x2c>
  806f5c:	1880004c 	andi	r2,r3,1
  806f60:	10001f1e 	bne	r2,zero,806fe0 <__lo0bits+0x90>
  806f64:	1880008c 	andi	r2,r3,2
  806f68:	10002126 	beq	r2,zero,806ff0 <__lo0bits+0xa0>
  806f6c:	1806d07a 	srli	r3,r3,1
  806f70:	00800044 	movi	r2,1
  806f74:	20c00015 	stw	r3,0(r4)
  806f78:	f800283a 	ret
  806f7c:	18bfffcc 	andi	r2,r3,65535
  806f80:	10001426 	beq	r2,zero,806fd4 <__lo0bits+0x84>
  806f84:	0005883a 	mov	r2,zero
  806f88:	19403fcc 	andi	r5,r3,255
  806f8c:	2800021e 	bne	r5,zero,806f98 <__lo0bits+0x48>
  806f90:	1806d23a 	srli	r3,r3,8
  806f94:	10800204 	addi	r2,r2,8
  806f98:	194003cc 	andi	r5,r3,15
  806f9c:	2800021e 	bne	r5,zero,806fa8 <__lo0bits+0x58>
  806fa0:	1806d13a 	srli	r3,r3,4
  806fa4:	10800104 	addi	r2,r2,4
  806fa8:	194000cc 	andi	r5,r3,3
  806fac:	2800021e 	bne	r5,zero,806fb8 <__lo0bits+0x68>
  806fb0:	1806d0ba 	srli	r3,r3,2
  806fb4:	10800084 	addi	r2,r2,2
  806fb8:	1940004c 	andi	r5,r3,1
  806fbc:	2800031e 	bne	r5,zero,806fcc <__lo0bits+0x7c>
  806fc0:	1806d07a 	srli	r3,r3,1
  806fc4:	10800044 	addi	r2,r2,1
  806fc8:	18000726 	beq	r3,zero,806fe8 <__lo0bits+0x98>
  806fcc:	20c00015 	stw	r3,0(r4)
  806fd0:	f800283a 	ret
  806fd4:	1806d43a 	srli	r3,r3,16
  806fd8:	00800404 	movi	r2,16
  806fdc:	003fea06 	br	806f88 <__lo0bits+0x38>
  806fe0:	0005883a 	mov	r2,zero
  806fe4:	f800283a 	ret
  806fe8:	00800804 	movi	r2,32
  806fec:	f800283a 	ret
  806ff0:	1806d0ba 	srli	r3,r3,2
  806ff4:	00800084 	movi	r2,2
  806ff8:	20c00015 	stw	r3,0(r4)
  806ffc:	f800283a 	ret

00807000 <__i2b>:
  807000:	defffe04 	addi	sp,sp,-8
  807004:	dc000015 	stw	r16,0(sp)
  807008:	2821883a 	mov	r16,r5
  80700c:	01400044 	movi	r5,1
  807010:	dfc00115 	stw	ra,4(sp)
  807014:	0806b900 	call	806b90 <_Balloc>
  807018:	10000726 	beq	r2,zero,807038 <__i2b+0x38>
  80701c:	01000044 	movi	r4,1
  807020:	14000515 	stw	r16,20(r2)
  807024:	11000415 	stw	r4,16(r2)
  807028:	dfc00117 	ldw	ra,4(sp)
  80702c:	dc000017 	ldw	r16,0(sp)
  807030:	dec00204 	addi	sp,sp,8
  807034:	f800283a 	ret
  807038:	01c02074 	movhi	r7,129
  80703c:	01002074 	movhi	r4,129
  807040:	39c1bd04 	addi	r7,r7,1780
  807044:	000d883a 	mov	r6,zero
  807048:	01405004 	movi	r5,320
  80704c:	2101d204 	addi	r4,r4,1864
  807050:	080997c0 	call	80997c <__assert_func>

00807054 <__multiply>:
  807054:	defff004 	addi	sp,sp,-64
  807058:	dd800c15 	stw	r22,48(sp)
  80705c:	dc400715 	stw	r17,28(sp)
  807060:	2d800417 	ldw	r22,16(r5)
  807064:	34400417 	ldw	r17,16(r6)
  807068:	dc800815 	stw	r18,32(sp)
  80706c:	dc000615 	stw	r16,24(sp)
  807070:	dfc00f15 	stw	ra,60(sp)
  807074:	df000e15 	stw	fp,56(sp)
  807078:	ddc00d15 	stw	r23,52(sp)
  80707c:	dd400b15 	stw	r21,44(sp)
  807080:	dd000a15 	stw	r20,40(sp)
  807084:	dcc00915 	stw	r19,36(sp)
  807088:	2825883a 	mov	r18,r5
  80708c:	3021883a 	mov	r16,r6
  807090:	b4400516 	blt	r22,r17,8070a8 <__multiply+0x54>
  807094:	8807883a 	mov	r3,r17
  807098:	2821883a 	mov	r16,r5
  80709c:	b023883a 	mov	r17,r22
  8070a0:	3025883a 	mov	r18,r6
  8070a4:	182d883a 	mov	r22,r3
  8070a8:	80800217 	ldw	r2,8(r16)
  8070ac:	8d87883a 	add	r3,r17,r22
  8070b0:	d8c00115 	stw	r3,4(sp)
  8070b4:	81400117 	ldw	r5,4(r16)
  8070b8:	10c0010e 	bge	r2,r3,8070c0 <__multiply+0x6c>
  8070bc:	29400044 	addi	r5,r5,1
  8070c0:	0806b900 	call	806b90 <_Balloc>
  8070c4:	d8800515 	stw	r2,20(sp)
  8070c8:	10008626 	beq	r2,zero,8072e4 <__multiply+0x290>
  8070cc:	d8800117 	ldw	r2,4(sp)
  8070d0:	102690ba 	slli	r19,r2,2
  8070d4:	d8800517 	ldw	r2,20(sp)
  8070d8:	10c00504 	addi	r3,r2,20
  8070dc:	d8c00015 	stw	r3,0(sp)
  8070e0:	1ce7883a 	add	r19,r3,r19
  8070e4:	1805883a 	mov	r2,r3
  8070e8:	1cc0032e 	bgeu	r3,r19,8070f8 <__multiply+0xa4>
  8070ec:	10000015 	stw	zero,0(r2)
  8070f0:	10800104 	addi	r2,r2,4
  8070f4:	14fffd36 	bltu	r2,r19,8070ec <__multiply+0x98>
  8070f8:	b02c90ba 	slli	r22,r22,2
  8070fc:	882290ba 	slli	r17,r17,2
  807100:	94800504 	addi	r18,r18,20
  807104:	80800504 	addi	r2,r16,20
  807108:	9587883a 	add	r3,r18,r22
  80710c:	d8800315 	stw	r2,12(sp)
  807110:	d8c00215 	stw	r3,8(sp)
  807114:	1463883a 	add	r17,r2,r17
  807118:	90c0342e 	bgeu	r18,r3,8071ec <__multiply+0x198>
  80711c:	80800544 	addi	r2,r16,21
  807120:	88804b36 	bltu	r17,r2,807250 <__multiply+0x1fc>
  807124:	8c05c83a 	sub	r2,r17,r16
  807128:	10bffac4 	addi	r2,r2,-21
  80712c:	1004d0ba 	srli	r2,r2,2
  807130:	10800044 	addi	r2,r2,1
  807134:	100490ba 	slli	r2,r2,2
  807138:	d8800415 	stw	r2,16(sp)
  80713c:	00000606 	br	807158 <__multiply+0x104>
  807140:	d8800017 	ldw	r2,0(sp)
  807144:	94800104 	addi	r18,r18,4
  807148:	10800104 	addi	r2,r2,4
  80714c:	d8800015 	stw	r2,0(sp)
  807150:	d8800217 	ldw	r2,8(sp)
  807154:	9080252e 	bgeu	r18,r2,8071ec <__multiply+0x198>
  807158:	90800017 	ldw	r2,0(r18)
  80715c:	15ffffcc 	andi	r23,r2,65535
  807160:	b800401e 	bne	r23,zero,807264 <__multiply+0x210>
  807164:	1028d43a 	srli	r20,r2,16
  807168:	a03ff526 	beq	r20,zero,807140 <__multiply+0xec>
  80716c:	dd400017 	ldw	r21,0(sp)
  807170:	dd800317 	ldw	r22,12(sp)
  807174:	0039883a 	mov	fp,zero
  807178:	adc00017 	ldw	r23,0(r21)
  80717c:	b821883a 	mov	r16,r23
  807180:	b100000b 	ldhu	r4,0(r22)
  807184:	a00b883a 	mov	r5,r20
  807188:	ad400104 	addi	r21,r21,4
  80718c:	0800f080 	call	800f08 <__mulsi3>
  807190:	800cd43a 	srli	r6,r16,16
  807194:	b8ffffcc 	andi	r3,r23,65535
  807198:	b5800104 	addi	r22,r22,4
  80719c:	118d883a 	add	r6,r2,r6
  8071a0:	3739883a 	add	fp,r6,fp
  8071a4:	e004943a 	slli	r2,fp,16
  8071a8:	ac000017 	ldw	r16,0(r21)
  8071ac:	a00b883a 	mov	r5,r20
  8071b0:	10c6b03a 	or	r3,r2,r3
  8071b4:	a8ffff15 	stw	r3,-4(r21)
  8071b8:	b13fff8b 	ldhu	r4,-2(r22)
  8071bc:	0800f080 	call	800f08 <__mulsi3>
  8071c0:	e00cd43a 	srli	r6,fp,16
  8071c4:	80ffffcc 	andi	r3,r16,65535
  8071c8:	10c7883a 	add	r3,r2,r3
  8071cc:	19af883a 	add	r23,r3,r6
  8071d0:	b838d43a 	srli	fp,r23,16
  8071d4:	b47fea36 	bltu	r22,r17,807180 <__multiply+0x12c>
  8071d8:	d8800017 	ldw	r2,0(sp)
  8071dc:	d8c00417 	ldw	r3,16(sp)
  8071e0:	10c5883a 	add	r2,r2,r3
  8071e4:	15c00015 	stw	r23,0(r2)
  8071e8:	003fd506 	br	807140 <__multiply+0xec>
  8071ec:	d8800117 	ldw	r2,4(sp)
  8071f0:	00800516 	blt	zero,r2,807208 <__multiply+0x1b4>
  8071f4:	00000706 	br	807214 <__multiply+0x1c0>
  8071f8:	d8800117 	ldw	r2,4(sp)
  8071fc:	10bfffc4 	addi	r2,r2,-1
  807200:	d8800115 	stw	r2,4(sp)
  807204:	10000326 	beq	r2,zero,807214 <__multiply+0x1c0>
  807208:	98bfff17 	ldw	r2,-4(r19)
  80720c:	9cffff04 	addi	r19,r19,-4
  807210:	103ff926 	beq	r2,zero,8071f8 <__multiply+0x1a4>
  807214:	d8800517 	ldw	r2,20(sp)
  807218:	d8c00117 	ldw	r3,4(sp)
  80721c:	10c00415 	stw	r3,16(r2)
  807220:	dfc00f17 	ldw	ra,60(sp)
  807224:	df000e17 	ldw	fp,56(sp)
  807228:	ddc00d17 	ldw	r23,52(sp)
  80722c:	dd800c17 	ldw	r22,48(sp)
  807230:	dd400b17 	ldw	r21,44(sp)
  807234:	dd000a17 	ldw	r20,40(sp)
  807238:	dcc00917 	ldw	r19,36(sp)
  80723c:	dc800817 	ldw	r18,32(sp)
  807240:	dc400717 	ldw	r17,28(sp)
  807244:	dc000617 	ldw	r16,24(sp)
  807248:	dec01004 	addi	sp,sp,64
  80724c:	f800283a 	ret
  807250:	00800104 	movi	r2,4
  807254:	d8800415 	stw	r2,16(sp)
  807258:	90800017 	ldw	r2,0(r18)
  80725c:	15ffffcc 	andi	r23,r2,65535
  807260:	b83fc026 	beq	r23,zero,807164 <__multiply+0x110>
  807264:	dd800017 	ldw	r22,0(sp)
  807268:	dd400317 	ldw	r21,12(sp)
  80726c:	0029883a 	mov	r20,zero
  807270:	af000017 	ldw	fp,0(r21)
  807274:	b4000017 	ldw	r16,0(r22)
  807278:	b80b883a 	mov	r5,r23
  80727c:	e13fffcc 	andi	r4,fp,65535
  807280:	0800f080 	call	800f08 <__mulsi3>
  807284:	e008d43a 	srli	r4,fp,16
  807288:	823fffcc 	andi	r8,r16,65535
  80728c:	1205883a 	add	r2,r2,r8
  807290:	b80b883a 	mov	r5,r23
  807294:	1529883a 	add	r20,r2,r20
  807298:	8020d43a 	srli	r16,r16,16
  80729c:	0800f080 	call	800f08 <__mulsi3>
  8072a0:	a008d43a 	srli	r4,r20,16
  8072a4:	1405883a 	add	r2,r2,r16
  8072a8:	a0ffffcc 	andi	r3,r20,65535
  8072ac:	1105883a 	add	r2,r2,r4
  8072b0:	1008943a 	slli	r4,r2,16
  8072b4:	b5800104 	addi	r22,r22,4
  8072b8:	ad400104 	addi	r21,r21,4
  8072bc:	20c6b03a 	or	r3,r4,r3
  8072c0:	b0ffff15 	stw	r3,-4(r22)
  8072c4:	1028d43a 	srli	r20,r2,16
  8072c8:	ac7fe936 	bltu	r21,r17,807270 <__multiply+0x21c>
  8072cc:	d8800017 	ldw	r2,0(sp)
  8072d0:	d8c00417 	ldw	r3,16(sp)
  8072d4:	10c5883a 	add	r2,r2,r3
  8072d8:	15000015 	stw	r20,0(r2)
  8072dc:	90800017 	ldw	r2,0(r18)
  8072e0:	003fa006 	br	807164 <__multiply+0x110>
  8072e4:	01c02074 	movhi	r7,129
  8072e8:	01002074 	movhi	r4,129
  8072ec:	39c1bd04 	addi	r7,r7,1780
  8072f0:	000d883a 	mov	r6,zero
  8072f4:	01405744 	movi	r5,349
  8072f8:	2101d204 	addi	r4,r4,1864
  8072fc:	080997c0 	call	80997c <__assert_func>

00807300 <__pow5mult>:
  807300:	defffb04 	addi	sp,sp,-20
  807304:	dcc00315 	stw	r19,12(sp)
  807308:	dc000015 	stw	r16,0(sp)
  80730c:	dfc00415 	stw	ra,16(sp)
  807310:	dc800215 	stw	r18,8(sp)
  807314:	dc400115 	stw	r17,4(sp)
  807318:	308000cc 	andi	r2,r6,3
  80731c:	3021883a 	mov	r16,r6
  807320:	2027883a 	mov	r19,r4
  807324:	10002d1e 	bne	r2,zero,8073dc <__pow5mult+0xdc>
  807328:	2825883a 	mov	r18,r5
  80732c:	8021d0ba 	srai	r16,r16,2
  807330:	80001926 	beq	r16,zero,807398 <__pow5mult+0x98>
  807334:	9c401217 	ldw	r17,72(r19)
  807338:	8800061e 	bne	r17,zero,807354 <__pow5mult+0x54>
  80733c:	00002f06 	br	8073fc <__pow5mult+0xfc>
  807340:	8021d07a 	srai	r16,r16,1
  807344:	80001426 	beq	r16,zero,807398 <__pow5mult+0x98>
  807348:	88800017 	ldw	r2,0(r17)
  80734c:	10001a26 	beq	r2,zero,8073b8 <__pow5mult+0xb8>
  807350:	1023883a 	mov	r17,r2
  807354:	8080004c 	andi	r2,r16,1
  807358:	103ff926 	beq	r2,zero,807340 <__pow5mult+0x40>
  80735c:	880d883a 	mov	r6,r17
  807360:	900b883a 	mov	r5,r18
  807364:	9809883a 	mov	r4,r19
  807368:	08070540 	call	807054 <__multiply>
  80736c:	90001926 	beq	r18,zero,8073d4 <__pow5mult+0xd4>
  807370:	91000117 	ldw	r4,4(r18)
  807374:	98c01317 	ldw	r3,76(r19)
  807378:	8021d07a 	srai	r16,r16,1
  80737c:	200890ba 	slli	r4,r4,2
  807380:	1907883a 	add	r3,r3,r4
  807384:	19000017 	ldw	r4,0(r3)
  807388:	91000015 	stw	r4,0(r18)
  80738c:	1c800015 	stw	r18,0(r3)
  807390:	1025883a 	mov	r18,r2
  807394:	803fec1e 	bne	r16,zero,807348 <__pow5mult+0x48>
  807398:	9005883a 	mov	r2,r18
  80739c:	dfc00417 	ldw	ra,16(sp)
  8073a0:	dcc00317 	ldw	r19,12(sp)
  8073a4:	dc800217 	ldw	r18,8(sp)
  8073a8:	dc400117 	ldw	r17,4(sp)
  8073ac:	dc000017 	ldw	r16,0(sp)
  8073b0:	dec00504 	addi	sp,sp,20
  8073b4:	f800283a 	ret
  8073b8:	880d883a 	mov	r6,r17
  8073bc:	880b883a 	mov	r5,r17
  8073c0:	9809883a 	mov	r4,r19
  8073c4:	08070540 	call	807054 <__multiply>
  8073c8:	88800015 	stw	r2,0(r17)
  8073cc:	10000015 	stw	zero,0(r2)
  8073d0:	003fdf06 	br	807350 <__pow5mult+0x50>
  8073d4:	1025883a 	mov	r18,r2
  8073d8:	003fd906 	br	807340 <__pow5mult+0x40>
  8073dc:	100490ba 	slli	r2,r2,2
  8073e0:	00c02074 	movhi	r3,129
  8073e4:	000f883a 	mov	r7,zero
  8073e8:	10c7883a 	add	r3,r2,r3
  8073ec:	1981e117 	ldw	r6,1924(r3)
  8073f0:	0806c580 	call	806c58 <__multadd>
  8073f4:	1025883a 	mov	r18,r2
  8073f8:	003fcc06 	br	80732c <__pow5mult+0x2c>
  8073fc:	01409c44 	movi	r5,625
  807400:	9809883a 	mov	r4,r19
  807404:	08070000 	call	807000 <__i2b>
  807408:	98801215 	stw	r2,72(r19)
  80740c:	1023883a 	mov	r17,r2
  807410:	10000015 	stw	zero,0(r2)
  807414:	003fcf06 	br	807354 <__pow5mult+0x54>

00807418 <__lshift>:
  807418:	defff904 	addi	sp,sp,-28
  80741c:	dd400515 	stw	r21,20(sp)
  807420:	dc800215 	stw	r18,8(sp)
  807424:	302bd17a 	srai	r21,r6,5
  807428:	2c800417 	ldw	r18,16(r5)
  80742c:	28800217 	ldw	r2,8(r5)
  807430:	dd000415 	stw	r20,16(sp)
  807434:	aca5883a 	add	r18,r21,r18
  807438:	dcc00315 	stw	r19,12(sp)
  80743c:	dc400115 	stw	r17,4(sp)
  807440:	dc000015 	stw	r16,0(sp)
  807444:	dfc00615 	stw	ra,24(sp)
  807448:	94400044 	addi	r17,r18,1
  80744c:	2821883a 	mov	r16,r5
  807450:	3029883a 	mov	r20,r6
  807454:	29400117 	ldw	r5,4(r5)
  807458:	2027883a 	mov	r19,r4
  80745c:	1440030e 	bge	r2,r17,80746c <__lshift+0x54>
  807460:	1085883a 	add	r2,r2,r2
  807464:	29400044 	addi	r5,r5,1
  807468:	147ffd16 	blt	r2,r17,807460 <__lshift+0x48>
  80746c:	9809883a 	mov	r4,r19
  807470:	0806b900 	call	806b90 <_Balloc>
  807474:	10004326 	beq	r2,zero,807584 <__lshift+0x16c>
  807478:	12000504 	addi	r8,r2,20
  80747c:	0540090e 	bge	zero,r21,8074a4 <__lshift+0x8c>
  807480:	ad400144 	addi	r21,r21,5
  807484:	a82a90ba 	slli	r21,r21,2
  807488:	4007883a 	mov	r3,r8
  80748c:	1549883a 	add	r4,r2,r21
  807490:	18c00104 	addi	r3,r3,4
  807494:	183fff15 	stw	zero,-4(r3)
  807498:	193ffd1e 	bne	r3,r4,807490 <__lshift+0x78>
  80749c:	ad7ffb04 	addi	r21,r21,-20
  8074a0:	4551883a 	add	r8,r8,r21
  8074a4:	82400417 	ldw	r9,16(r16)
  8074a8:	80c00504 	addi	r3,r16,20
  8074ac:	a14007cc 	andi	r5,r20,31
  8074b0:	481290ba 	slli	r9,r9,2
  8074b4:	1a53883a 	add	r9,r3,r9
  8074b8:	28002a26 	beq	r5,zero,807564 <__lshift+0x14c>
  8074bc:	02800804 	movi	r10,32
  8074c0:	5155c83a 	sub	r10,r10,r5
  8074c4:	4009883a 	mov	r4,r8
  8074c8:	000f883a 	mov	r7,zero
  8074cc:	19800017 	ldw	r6,0(r3)
  8074d0:	21000104 	addi	r4,r4,4
  8074d4:	18c00104 	addi	r3,r3,4
  8074d8:	314c983a 	sll	r6,r6,r5
  8074dc:	31ccb03a 	or	r6,r6,r7
  8074e0:	21bfff15 	stw	r6,-4(r4)
  8074e4:	19bfff17 	ldw	r6,-4(r3)
  8074e8:	328ed83a 	srl	r7,r6,r10
  8074ec:	1a7ff736 	bltu	r3,r9,8074cc <__lshift+0xb4>
  8074f0:	80c00544 	addi	r3,r16,21
  8074f4:	48c02136 	bltu	r9,r3,80757c <__lshift+0x164>
  8074f8:	4c07c83a 	sub	r3,r9,r16
  8074fc:	18fffac4 	addi	r3,r3,-21
  807500:	1806d0ba 	srli	r3,r3,2
  807504:	18c00044 	addi	r3,r3,1
  807508:	180690ba 	slli	r3,r3,2
  80750c:	40d1883a 	add	r8,r8,r3
  807510:	41c00015 	stw	r7,0(r8)
  807514:	38000126 	beq	r7,zero,80751c <__lshift+0x104>
  807518:	8825883a 	mov	r18,r17
  80751c:	14800415 	stw	r18,16(r2)
  807520:	80000726 	beq	r16,zero,807540 <__lshift+0x128>
  807524:	81000117 	ldw	r4,4(r16)
  807528:	98c01317 	ldw	r3,76(r19)
  80752c:	200890ba 	slli	r4,r4,2
  807530:	1907883a 	add	r3,r3,r4
  807534:	19000017 	ldw	r4,0(r3)
  807538:	81000015 	stw	r4,0(r16)
  80753c:	1c000015 	stw	r16,0(r3)
  807540:	dfc00617 	ldw	ra,24(sp)
  807544:	dd400517 	ldw	r21,20(sp)
  807548:	dd000417 	ldw	r20,16(sp)
  80754c:	dcc00317 	ldw	r19,12(sp)
  807550:	dc800217 	ldw	r18,8(sp)
  807554:	dc400117 	ldw	r17,4(sp)
  807558:	dc000017 	ldw	r16,0(sp)
  80755c:	dec00704 	addi	sp,sp,28
  807560:	f800283a 	ret
  807564:	19000017 	ldw	r4,0(r3)
  807568:	18c00104 	addi	r3,r3,4
  80756c:	42000104 	addi	r8,r8,4
  807570:	413fff15 	stw	r4,-4(r8)
  807574:	1a7ffb36 	bltu	r3,r9,807564 <__lshift+0x14c>
  807578:	003fe806 	br	80751c <__lshift+0x104>
  80757c:	00c00104 	movi	r3,4
  807580:	003fe206 	br	80750c <__lshift+0xf4>
  807584:	01c02074 	movhi	r7,129
  807588:	01002074 	movhi	r4,129
  80758c:	39c1bd04 	addi	r7,r7,1780
  807590:	000d883a 	mov	r6,zero
  807594:	01407644 	movi	r5,473
  807598:	2101d204 	addi	r4,r4,1864
  80759c:	080997c0 	call	80997c <__assert_func>

008075a0 <__mcmp>:
  8075a0:	21800417 	ldw	r6,16(r4)
  8075a4:	28c00417 	ldw	r3,16(r5)
  8075a8:	30c5c83a 	sub	r2,r6,r3
  8075ac:	30c00e1e 	bne	r6,r3,8075e8 <__mcmp+0x48>
  8075b0:	180690ba 	slli	r3,r3,2
  8075b4:	21c00504 	addi	r7,r4,20
  8075b8:	29400504 	addi	r5,r5,20
  8075bc:	38c9883a 	add	r4,r7,r3
  8075c0:	28c7883a 	add	r3,r5,r3
  8075c4:	00000106 	br	8075cc <__mcmp+0x2c>
  8075c8:	3900082e 	bgeu	r7,r4,8075ec <__mcmp+0x4c>
  8075cc:	21bfff17 	ldw	r6,-4(r4)
  8075d0:	197fff17 	ldw	r5,-4(r3)
  8075d4:	213fff04 	addi	r4,r4,-4
  8075d8:	18ffff04 	addi	r3,r3,-4
  8075dc:	317ffa26 	beq	r6,r5,8075c8 <__mcmp+0x28>
  8075e0:	3140032e 	bgeu	r6,r5,8075f0 <__mcmp+0x50>
  8075e4:	00bfffc4 	movi	r2,-1
  8075e8:	f800283a 	ret
  8075ec:	f800283a 	ret
  8075f0:	00800044 	movi	r2,1
  8075f4:	f800283a 	ret

008075f8 <__mdiff>:
  8075f8:	28800417 	ldw	r2,16(r5)
  8075fc:	30c00417 	ldw	r3,16(r6)
  807600:	defffc04 	addi	sp,sp,-16
  807604:	dc800215 	stw	r18,8(sp)
  807608:	dc400115 	stw	r17,4(sp)
  80760c:	dc000015 	stw	r16,0(sp)
  807610:	dfc00315 	stw	ra,12(sp)
  807614:	2823883a 	mov	r17,r5
  807618:	3021883a 	mov	r16,r6
  80761c:	10e5c83a 	sub	r18,r2,r3
  807620:	10c0641e 	bne	r2,r3,8077b4 <__mdiff+0x1bc>
  807624:	180c90ba 	slli	r6,r3,2
  807628:	29400504 	addi	r5,r5,20
  80762c:	80c00504 	addi	r3,r16,20
  807630:	2985883a 	add	r2,r5,r6
  807634:	1987883a 	add	r3,r3,r6
  807638:	00000106 	br	807640 <__mdiff+0x48>
  80763c:	2880642e 	bgeu	r5,r2,8077d0 <__mdiff+0x1d8>
  807640:	11ffff17 	ldw	r7,-4(r2)
  807644:	19bfff17 	ldw	r6,-4(r3)
  807648:	10bfff04 	addi	r2,r2,-4
  80764c:	18ffff04 	addi	r3,r3,-4
  807650:	39bffa26 	beq	r7,r6,80763c <__mdiff+0x44>
  807654:	39805236 	bltu	r7,r6,8077a0 <__mdiff+0x1a8>
  807658:	89400117 	ldw	r5,4(r17)
  80765c:	0806b900 	call	806b90 <_Balloc>
  807660:	10006226 	beq	r2,zero,8077ec <__mdiff+0x1f4>
  807664:	8a400417 	ldw	r9,16(r17)
  807668:	83000417 	ldw	r12,16(r16)
  80766c:	8ac00504 	addi	r11,r17,20
  807670:	481090ba 	slli	r8,r9,2
  807674:	601890ba 	slli	r12,r12,2
  807678:	81800504 	addi	r6,r16,20
  80767c:	13400504 	addi	r13,r2,20
  807680:	14800315 	stw	r18,12(r2)
  807684:	5a11883a 	add	r8,r11,r8
  807688:	3319883a 	add	r12,r6,r12
  80768c:	681d883a 	mov	r14,r13
  807690:	5815883a 	mov	r10,r11
  807694:	0007883a 	mov	r3,zero
  807698:	51000017 	ldw	r4,0(r10)
  80769c:	31c00017 	ldw	r7,0(r6)
  8076a0:	73800104 	addi	r14,r14,4
  8076a4:	217fffcc 	andi	r5,r4,65535
  8076a8:	28cb883a 	add	r5,r5,r3
  8076ac:	38ffffcc 	andi	r3,r7,65535
  8076b0:	28cbc83a 	sub	r5,r5,r3
  8076b4:	380ed43a 	srli	r7,r7,16
  8076b8:	2006d43a 	srli	r3,r4,16
  8076bc:	2809d43a 	srai	r4,r5,16
  8076c0:	297fffcc 	andi	r5,r5,65535
  8076c4:	19c7c83a 	sub	r3,r3,r7
  8076c8:	1907883a 	add	r3,r3,r4
  8076cc:	1808943a 	slli	r4,r3,16
  8076d0:	31800104 	addi	r6,r6,4
  8076d4:	1807d43a 	srai	r3,r3,16
  8076d8:	214ab03a 	or	r5,r4,r5
  8076dc:	717fff15 	stw	r5,-4(r14)
  8076e0:	52800104 	addi	r10,r10,4
  8076e4:	333fec36 	bltu	r6,r12,807698 <__mdiff+0xa0>
  8076e8:	640fc83a 	sub	r7,r12,r16
  8076ec:	39fffac4 	addi	r7,r7,-21
  8076f0:	84000544 	addi	r16,r16,21
  8076f4:	380ed0ba 	srli	r7,r7,2
  8076f8:	64003336 	bltu	r12,r16,8077c8 <__mdiff+0x1d0>
  8076fc:	380890ba 	slli	r4,r7,2
  807700:	6909883a 	add	r4,r13,r4
  807704:	64002e36 	bltu	r12,r16,8077c0 <__mdiff+0x1c8>
  807708:	39800044 	addi	r6,r7,1
  80770c:	300c90ba 	slli	r6,r6,2
  807710:	5997883a 	add	r11,r11,r6
  807714:	699b883a 	add	r13,r13,r6
  807718:	5a00152e 	bgeu	r11,r8,807770 <__mdiff+0x178>
  80771c:	680f883a 	mov	r7,r13
  807720:	580d883a 	mov	r6,r11
  807724:	31000017 	ldw	r4,0(r6)
  807728:	39c00104 	addi	r7,r7,4
  80772c:	31800104 	addi	r6,r6,4
  807730:	217fffcc 	andi	r5,r4,65535
  807734:	28cb883a 	add	r5,r5,r3
  807738:	2815d43a 	srai	r10,r5,16
  80773c:	2006d43a 	srli	r3,r4,16
  807740:	297fffcc 	andi	r5,r5,65535
  807744:	1a87883a 	add	r3,r3,r10
  807748:	1814943a 	slli	r10,r3,16
  80774c:	1807d43a 	srai	r3,r3,16
  807750:	514ab03a 	or	r5,r10,r5
  807754:	397fff15 	stw	r5,-4(r7)
  807758:	323ff236 	bltu	r6,r8,807724 <__mdiff+0x12c>
  80775c:	413fffc4 	addi	r4,r8,-1
  807760:	22c9c83a 	sub	r4,r4,r11
  807764:	2008d0ba 	srli	r4,r4,2
  807768:	200890ba 	slli	r4,r4,2
  80776c:	6909883a 	add	r4,r13,r4
  807770:	2800041e 	bne	r5,zero,807784 <__mdiff+0x18c>
  807774:	20ffff17 	ldw	r3,-4(r4)
  807778:	4a7fffc4 	addi	r9,r9,-1
  80777c:	213fff04 	addi	r4,r4,-4
  807780:	183ffc26 	beq	r3,zero,807774 <__mdiff+0x17c>
  807784:	12400415 	stw	r9,16(r2)
  807788:	dfc00317 	ldw	ra,12(sp)
  80778c:	dc800217 	ldw	r18,8(sp)
  807790:	dc400117 	ldw	r17,4(sp)
  807794:	dc000017 	ldw	r16,0(sp)
  807798:	dec00404 	addi	sp,sp,16
  80779c:	f800283a 	ret
  8077a0:	8805883a 	mov	r2,r17
  8077a4:	04800044 	movi	r18,1
  8077a8:	8023883a 	mov	r17,r16
  8077ac:	1021883a 	mov	r16,r2
  8077b0:	003fa906 	br	807658 <__mdiff+0x60>
  8077b4:	903ffa16 	blt	r18,zero,8077a0 <__mdiff+0x1a8>
  8077b8:	0025883a 	mov	r18,zero
  8077bc:	003fa606 	br	807658 <__mdiff+0x60>
  8077c0:	01800104 	movi	r6,4
  8077c4:	003fd206 	br	807710 <__mdiff+0x118>
  8077c8:	0009883a 	mov	r4,zero
  8077cc:	003fcc06 	br	807700 <__mdiff+0x108>
  8077d0:	000b883a 	mov	r5,zero
  8077d4:	0806b900 	call	806b90 <_Balloc>
  8077d8:	10000b26 	beq	r2,zero,807808 <__mdiff+0x210>
  8077dc:	00c00044 	movi	r3,1
  8077e0:	10c00415 	stw	r3,16(r2)
  8077e4:	10000515 	stw	zero,20(r2)
  8077e8:	003fe706 	br	807788 <__mdiff+0x190>
  8077ec:	01c02074 	movhi	r7,129
  8077f0:	01002074 	movhi	r4,129
  8077f4:	39c1bd04 	addi	r7,r7,1780
  8077f8:	000d883a 	mov	r6,zero
  8077fc:	01409004 	movi	r5,576
  807800:	2101d204 	addi	r4,r4,1864
  807804:	080997c0 	call	80997c <__assert_func>
  807808:	01c02074 	movhi	r7,129
  80780c:	01002074 	movhi	r4,129
  807810:	39c1bd04 	addi	r7,r7,1780
  807814:	000d883a 	mov	r6,zero
  807818:	01408c84 	movi	r5,562
  80781c:	2101d204 	addi	r4,r4,1864
  807820:	080997c0 	call	80997c <__assert_func>

00807824 <__ulp>:
  807824:	28dffc2c 	andhi	r3,r5,32752
  807828:	017f3034 	movhi	r5,64704
  80782c:	1947883a 	add	r3,r3,r5
  807830:	00c0020e 	bge	zero,r3,80783c <__ulp+0x18>
  807834:	0005883a 	mov	r2,zero
  807838:	f800283a 	ret
  80783c:	00c7c83a 	sub	r3,zero,r3
  807840:	1807d53a 	srai	r3,r3,20
  807844:	18800508 	cmpgei	r2,r3,20
  807848:	1000041e 	bne	r2,zero,80785c <__ulp+0x38>
  80784c:	00800234 	movhi	r2,8
  807850:	10c7d83a 	sra	r3,r2,r3
  807854:	0005883a 	mov	r2,zero
  807858:	f800283a 	ret
  80785c:	193ffb04 	addi	r4,r3,-20
  807860:	208007c8 	cmpgei	r2,r4,31
  807864:	0007883a 	mov	r3,zero
  807868:	1000031e 	bne	r2,zero,807878 <__ulp+0x54>
  80786c:	00a00034 	movhi	r2,32768
  807870:	1104d83a 	srl	r2,r2,r4
  807874:	f800283a 	ret
  807878:	00800044 	movi	r2,1
  80787c:	f800283a 	ret

00807880 <__b2d>:
  807880:	defffa04 	addi	sp,sp,-24
  807884:	dc400115 	stw	r17,4(sp)
  807888:	24400417 	ldw	r17,16(r4)
  80788c:	dc000015 	stw	r16,0(sp)
  807890:	24000504 	addi	r16,r4,20
  807894:	882290ba 	slli	r17,r17,2
  807898:	dc800215 	stw	r18,8(sp)
  80789c:	dd000415 	stw	r20,16(sp)
  8078a0:	8463883a 	add	r17,r16,r17
  8078a4:	8cbfff17 	ldw	r18,-4(r17)
  8078a8:	dcc00315 	stw	r19,12(sp)
  8078ac:	dfc00515 	stw	ra,20(sp)
  8078b0:	9009883a 	mov	r4,r18
  8078b4:	2827883a 	mov	r19,r5
  8078b8:	0806eec0 	call	806eec <__hi0bits>
  8078bc:	01000804 	movi	r4,32
  8078c0:	2087c83a 	sub	r3,r4,r2
  8078c4:	98c00015 	stw	r3,0(r19)
  8078c8:	10c002c8 	cmpgei	r3,r2,11
  8078cc:	8d3fff04 	addi	r20,r17,-4
  8078d0:	18001f26 	beq	r3,zero,807950 <__b2d+0xd0>
  8078d4:	10fffd44 	addi	r3,r2,-11
  8078d8:	85000e2e 	bgeu	r16,r20,807914 <__b2d+0x94>
  8078dc:	88bffe17 	ldw	r2,-8(r17)
  8078e0:	18001226 	beq	r3,zero,80792c <__b2d+0xac>
  8078e4:	20c9c83a 	sub	r4,r4,r3
  8078e8:	110cd83a 	srl	r6,r2,r4
  8078ec:	90e4983a 	sll	r18,r18,r3
  8078f0:	10c4983a 	sll	r2,r2,r3
  8078f4:	897ffe04 	addi	r5,r17,-8
  8078f8:	9186b03a 	or	r3,r18,r6
  8078fc:	18cffc34 	orhi	r3,r3,16368
  807900:	81400b2e 	bgeu	r16,r5,807930 <__b2d+0xb0>
  807904:	897ffd17 	ldw	r5,-12(r17)
  807908:	2908d83a 	srl	r4,r5,r4
  80790c:	1104b03a 	or	r2,r2,r4
  807910:	00000706 	br	807930 <__b2d+0xb0>
  807914:	18000426 	beq	r3,zero,807928 <__b2d+0xa8>
  807918:	90c6983a 	sll	r3,r18,r3
  80791c:	0005883a 	mov	r2,zero
  807920:	18cffc34 	orhi	r3,r3,16368
  807924:	00000206 	br	807930 <__b2d+0xb0>
  807928:	0005883a 	mov	r2,zero
  80792c:	90cffc34 	orhi	r3,r18,16368
  807930:	dfc00517 	ldw	ra,20(sp)
  807934:	dd000417 	ldw	r20,16(sp)
  807938:	dcc00317 	ldw	r19,12(sp)
  80793c:	dc800217 	ldw	r18,8(sp)
  807940:	dc400117 	ldw	r17,4(sp)
  807944:	dc000017 	ldw	r16,0(sp)
  807948:	dec00604 	addi	sp,sp,24
  80794c:	f800283a 	ret
  807950:	014002c4 	movi	r5,11
  807954:	2889c83a 	sub	r4,r5,r2
  807958:	9106d83a 	srl	r3,r18,r4
  80795c:	18cffc34 	orhi	r3,r3,16368
  807960:	85000536 	bltu	r16,r20,807978 <__b2d+0xf8>
  807964:	000b883a 	mov	r5,zero
  807968:	10800544 	addi	r2,r2,21
  80796c:	9084983a 	sll	r2,r18,r2
  807970:	1144b03a 	or	r2,r2,r5
  807974:	003fee06 	br	807930 <__b2d+0xb0>
  807978:	897ffe17 	ldw	r5,-8(r17)
  80797c:	290ad83a 	srl	r5,r5,r4
  807980:	003ff906 	br	807968 <__b2d+0xe8>

00807984 <__d2b>:
  807984:	defff804 	addi	sp,sp,-32
  807988:	dd000615 	stw	r20,24(sp)
  80798c:	2829883a 	mov	r20,r5
  807990:	01400044 	movi	r5,1
  807994:	dcc00515 	stw	r19,20(sp)
  807998:	dc000215 	stw	r16,8(sp)
  80799c:	dfc00715 	stw	ra,28(sp)
  8079a0:	dc800415 	stw	r18,16(sp)
  8079a4:	dc400315 	stw	r17,12(sp)
  8079a8:	3021883a 	mov	r16,r6
  8079ac:	3827883a 	mov	r19,r7
  8079b0:	0806b900 	call	806b90 <_Balloc>
  8079b4:	10004526 	beq	r2,zero,807acc <__d2b+0x148>
  8079b8:	8024d53a 	srli	r18,r16,20
  8079bc:	01800434 	movhi	r6,16
  8079c0:	31bfffc4 	addi	r6,r6,-1
  8079c4:	9481ffcc 	andi	r18,r18,2047
  8079c8:	1023883a 	mov	r17,r2
  8079cc:	81a0703a 	and	r16,r16,r6
  8079d0:	90000126 	beq	r18,zero,8079d8 <__d2b+0x54>
  8079d4:	84000434 	orhi	r16,r16,16
  8079d8:	dc000115 	stw	r16,4(sp)
  8079dc:	a0002226 	beq	r20,zero,807a68 <__d2b+0xe4>
  8079e0:	d809883a 	mov	r4,sp
  8079e4:	dd000015 	stw	r20,0(sp)
  8079e8:	0806f500 	call	806f50 <__lo0bits>
  8079ec:	d8c00117 	ldw	r3,4(sp)
  8079f0:	10003326 	beq	r2,zero,807ac0 <__d2b+0x13c>
  8079f4:	01000804 	movi	r4,32
  8079f8:	2089c83a 	sub	r4,r4,r2
  8079fc:	1908983a 	sll	r4,r3,r4
  807a00:	d9400017 	ldw	r5,0(sp)
  807a04:	1886d83a 	srl	r3,r3,r2
  807a08:	2148b03a 	or	r4,r4,r5
  807a0c:	89000515 	stw	r4,20(r17)
  807a10:	d8c00115 	stw	r3,4(sp)
  807a14:	88c00615 	stw	r3,24(r17)
  807a18:	1800271e 	bne	r3,zero,807ab8 <__d2b+0x134>
  807a1c:	04000044 	movi	r16,1
  807a20:	8c000415 	stw	r16,16(r17)
  807a24:	90001926 	beq	r18,zero,807a8c <__d2b+0x108>
  807a28:	00c00d44 	movi	r3,53
  807a2c:	94bef344 	addi	r18,r18,-1075
  807a30:	90a5883a 	add	r18,r18,r2
  807a34:	1885c83a 	sub	r2,r3,r2
  807a38:	d8c00817 	ldw	r3,32(sp)
  807a3c:	9c800015 	stw	r18,0(r19)
  807a40:	18800015 	stw	r2,0(r3)
  807a44:	8805883a 	mov	r2,r17
  807a48:	dfc00717 	ldw	ra,28(sp)
  807a4c:	dd000617 	ldw	r20,24(sp)
  807a50:	dcc00517 	ldw	r19,20(sp)
  807a54:	dc800417 	ldw	r18,16(sp)
  807a58:	dc400317 	ldw	r17,12(sp)
  807a5c:	dc000217 	ldw	r16,8(sp)
  807a60:	dec00804 	addi	sp,sp,32
  807a64:	f800283a 	ret
  807a68:	d9000104 	addi	r4,sp,4
  807a6c:	0806f500 	call	806f50 <__lo0bits>
  807a70:	00c00044 	movi	r3,1
  807a74:	88c00415 	stw	r3,16(r17)
  807a78:	d8c00117 	ldw	r3,4(sp)
  807a7c:	10800804 	addi	r2,r2,32
  807a80:	04000044 	movi	r16,1
  807a84:	88c00515 	stw	r3,20(r17)
  807a88:	903fe71e 	bne	r18,zero,807a28 <__d2b+0xa4>
  807a8c:	800690ba 	slli	r3,r16,2
  807a90:	10bef384 	addi	r2,r2,-1074
  807a94:	98800015 	stw	r2,0(r19)
  807a98:	88c5883a 	add	r2,r17,r3
  807a9c:	11000417 	ldw	r4,16(r2)
  807aa0:	8020917a 	slli	r16,r16,5
  807aa4:	0806eec0 	call	806eec <__hi0bits>
  807aa8:	80a1c83a 	sub	r16,r16,r2
  807aac:	d8800817 	ldw	r2,32(sp)
  807ab0:	14000015 	stw	r16,0(r2)
  807ab4:	003fe306 	br	807a44 <__d2b+0xc0>
  807ab8:	04000084 	movi	r16,2
  807abc:	003fd806 	br	807a20 <__d2b+0x9c>
  807ac0:	d9000017 	ldw	r4,0(sp)
  807ac4:	89000515 	stw	r4,20(r17)
  807ac8:	003fd206 	br	807a14 <__d2b+0x90>
  807acc:	01c02074 	movhi	r7,129
  807ad0:	01002074 	movhi	r4,129
  807ad4:	39c1bd04 	addi	r7,r7,1780
  807ad8:	000d883a 	mov	r6,zero
  807adc:	0140c284 	movi	r5,778
  807ae0:	2101d204 	addi	r4,r4,1864
  807ae4:	080997c0 	call	80997c <__assert_func>

00807ae8 <__ratio>:
  807ae8:	defff904 	addi	sp,sp,-28
  807aec:	dc400315 	stw	r17,12(sp)
  807af0:	2823883a 	mov	r17,r5
  807af4:	d80b883a 	mov	r5,sp
  807af8:	dfc00615 	stw	ra,24(sp)
  807afc:	dcc00515 	stw	r19,20(sp)
  807b00:	dc800415 	stw	r18,16(sp)
  807b04:	2027883a 	mov	r19,r4
  807b08:	dc000215 	stw	r16,8(sp)
  807b0c:	08078800 	call	807880 <__b2d>
  807b10:	d9400104 	addi	r5,sp,4
  807b14:	8809883a 	mov	r4,r17
  807b18:	1025883a 	mov	r18,r2
  807b1c:	1821883a 	mov	r16,r3
  807b20:	08078800 	call	807880 <__b2d>
  807b24:	89400417 	ldw	r5,16(r17)
  807b28:	99000417 	ldw	r4,16(r19)
  807b2c:	d9800117 	ldw	r6,4(sp)
  807b30:	180f883a 	mov	r7,r3
  807b34:	2149c83a 	sub	r4,r4,r5
  807b38:	d9400017 	ldw	r5,0(sp)
  807b3c:	2008917a 	slli	r4,r4,5
  807b40:	298bc83a 	sub	r5,r5,r6
  807b44:	2149883a 	add	r4,r4,r5
  807b48:	100d883a 	mov	r6,r2
  807b4c:	01000c0e 	bge	zero,r4,807b80 <__ratio+0x98>
  807b50:	2008953a 	slli	r4,r4,20
  807b54:	2421883a 	add	r16,r4,r16
  807b58:	9009883a 	mov	r4,r18
  807b5c:	800b883a 	mov	r5,r16
  807b60:	080be080 	call	80be08 <__divdf3>
  807b64:	dfc00617 	ldw	ra,24(sp)
  807b68:	dcc00517 	ldw	r19,20(sp)
  807b6c:	dc800417 	ldw	r18,16(sp)
  807b70:	dc400317 	ldw	r17,12(sp)
  807b74:	dc000217 	ldw	r16,8(sp)
  807b78:	dec00704 	addi	sp,sp,28
  807b7c:	f800283a 	ret
  807b80:	2008953a 	slli	r4,r4,20
  807b84:	190fc83a 	sub	r7,r3,r4
  807b88:	003ff306 	br	807b58 <__ratio+0x70>

00807b8c <_mprec_log10>:
  807b8c:	defffe04 	addi	sp,sp,-8
  807b90:	dc000015 	stw	r16,0(sp)
  807b94:	dfc00115 	stw	ra,4(sp)
  807b98:	20800608 	cmpgei	r2,r4,24
  807b9c:	2021883a 	mov	r16,r4
  807ba0:	10000f26 	beq	r2,zero,807be0 <_mprec_log10+0x54>
  807ba4:	0009883a 	mov	r4,zero
  807ba8:	014ffc34 	movhi	r5,16368
  807bac:	000d883a 	mov	r6,zero
  807bb0:	01d00934 	movhi	r7,16420
  807bb4:	080c99c0 	call	80c99c <__muldf3>
  807bb8:	843fffc4 	addi	r16,r16,-1
  807bbc:	1009883a 	mov	r4,r2
  807bc0:	180b883a 	mov	r5,r3
  807bc4:	803ff91e 	bne	r16,zero,807bac <_mprec_log10+0x20>
  807bc8:	2005883a 	mov	r2,r4
  807bcc:	2807883a 	mov	r3,r5
  807bd0:	dfc00117 	ldw	ra,4(sp)
  807bd4:	dc000017 	ldw	r16,0(sp)
  807bd8:	dec00204 	addi	sp,sp,8
  807bdc:	f800283a 	ret
  807be0:	202090fa 	slli	r16,r4,3
  807be4:	00802074 	movhi	r2,129
  807be8:	1081f904 	addi	r2,r2,2020
  807bec:	1421883a 	add	r16,r2,r16
  807bf0:	81000017 	ldw	r4,0(r16)
  807bf4:	81400117 	ldw	r5,4(r16)
  807bf8:	003ff306 	br	807bc8 <_mprec_log10+0x3c>

00807bfc <__copybits>:
  807bfc:	297fffc4 	addi	r5,r5,-1
  807c00:	280fd17a 	srai	r7,r5,5
  807c04:	31400417 	ldw	r5,16(r6)
  807c08:	30800504 	addi	r2,r6,20
  807c0c:	39c00044 	addi	r7,r7,1
  807c10:	280a90ba 	slli	r5,r5,2
  807c14:	380e90ba 	slli	r7,r7,2
  807c18:	114b883a 	add	r5,r2,r5
  807c1c:	21cf883a 	add	r7,r4,r7
  807c20:	11400c2e 	bgeu	r2,r5,807c54 <__copybits+0x58>
  807c24:	2007883a 	mov	r3,r4
  807c28:	12000017 	ldw	r8,0(r2)
  807c2c:	10800104 	addi	r2,r2,4
  807c30:	18c00104 	addi	r3,r3,4
  807c34:	1a3fff15 	stw	r8,-4(r3)
  807c38:	117ffb36 	bltu	r2,r5,807c28 <__copybits+0x2c>
  807c3c:	2985c83a 	sub	r2,r5,r6
  807c40:	10bffac4 	addi	r2,r2,-21
  807c44:	1004d0ba 	srli	r2,r2,2
  807c48:	10800044 	addi	r2,r2,1
  807c4c:	100490ba 	slli	r2,r2,2
  807c50:	2089883a 	add	r4,r4,r2
  807c54:	21c0032e 	bgeu	r4,r7,807c64 <__copybits+0x68>
  807c58:	21000104 	addi	r4,r4,4
  807c5c:	203fff15 	stw	zero,-4(r4)
  807c60:	21fffd36 	bltu	r4,r7,807c58 <__copybits+0x5c>
  807c64:	f800283a 	ret

00807c68 <__any_on>:
  807c68:	20c00417 	ldw	r3,16(r4)
  807c6c:	280dd17a 	srai	r6,r5,5
  807c70:	21000504 	addi	r4,r4,20
  807c74:	1980080e 	bge	r3,r6,807c98 <__any_on+0x30>
  807c78:	180490ba 	slli	r2,r3,2
  807c7c:	2085883a 	add	r2,r4,r2
  807c80:	20800f2e 	bgeu	r4,r2,807cc0 <__any_on+0x58>
  807c84:	10ffff17 	ldw	r3,-4(r2)
  807c88:	10bfff04 	addi	r2,r2,-4
  807c8c:	183ffc26 	beq	r3,zero,807c80 <__any_on+0x18>
  807c90:	00800044 	movi	r2,1
  807c94:	f800283a 	ret
  807c98:	300490ba 	slli	r2,r6,2
  807c9c:	2085883a 	add	r2,r4,r2
  807ca0:	30fff70e 	bge	r6,r3,807c80 <__any_on+0x18>
  807ca4:	294007cc 	andi	r5,r5,31
  807ca8:	283ff526 	beq	r5,zero,807c80 <__any_on+0x18>
  807cac:	11800017 	ldw	r6,0(r2)
  807cb0:	3146d83a 	srl	r3,r6,r5
  807cb4:	194a983a 	sll	r5,r3,r5
  807cb8:	317ff51e 	bne	r6,r5,807c90 <__any_on+0x28>
  807cbc:	003ff006 	br	807c80 <__any_on+0x18>
  807cc0:	0005883a 	mov	r2,zero
  807cc4:	f800283a 	ret

00807cc8 <_realloc_r>:
  807cc8:	defff504 	addi	sp,sp,-44
  807ccc:	dc800315 	stw	r18,12(sp)
  807cd0:	dfc00a15 	stw	ra,40(sp)
  807cd4:	df000915 	stw	fp,36(sp)
  807cd8:	ddc00815 	stw	r23,32(sp)
  807cdc:	dd800715 	stw	r22,28(sp)
  807ce0:	dd400615 	stw	r21,24(sp)
  807ce4:	dd000515 	stw	r20,20(sp)
  807ce8:	dcc00415 	stw	r19,16(sp)
  807cec:	dc400215 	stw	r17,8(sp)
  807cf0:	dc000115 	stw	r16,4(sp)
  807cf4:	3025883a 	mov	r18,r6
  807cf8:	28008b26 	beq	r5,zero,807f28 <_realloc_r+0x260>
  807cfc:	2821883a 	mov	r16,r5
  807d00:	2027883a 	mov	r19,r4
  807d04:	944002c4 	addi	r17,r18,11
  807d08:	080e3740 	call	80e374 <__malloc_lock>
  807d0c:	888005f0 	cmpltui	r2,r17,23
  807d10:	1000521e 	bne	r2,zero,807e5c <_realloc_r+0x194>
  807d14:	017ffe04 	movi	r5,-8
  807d18:	8962703a 	and	r17,r17,r5
  807d1c:	8807883a 	mov	r3,r17
  807d20:	88005116 	blt	r17,zero,807e68 <_realloc_r+0x1a0>
  807d24:	8c805036 	bltu	r17,r18,807e68 <_realloc_r+0x1a0>
  807d28:	80bfff17 	ldw	r2,-4(r16)
  807d2c:	017fff04 	movi	r5,-4
  807d30:	857ffe04 	addi	r21,r16,-8
  807d34:	1168703a 	and	r20,r2,r5
  807d38:	ad2d883a 	add	r22,r21,r20
  807d3c:	a0c0390e 	bge	r20,r3,807e24 <_realloc_r+0x15c>
  807d40:	07002074 	movhi	fp,129
  807d44:	e703fc04 	addi	fp,fp,4080
  807d48:	e2000217 	ldw	r8,8(fp)
  807d4c:	b1000117 	ldw	r4,4(r22)
  807d50:	45808e26 	beq	r8,r22,807f8c <_realloc_r+0x2c4>
  807d54:	01bfff84 	movi	r6,-2
  807d58:	218c703a 	and	r6,r4,r6
  807d5c:	b18d883a 	add	r6,r22,r6
  807d60:	31800117 	ldw	r6,4(r6)
  807d64:	3180004c 	andi	r6,r6,1
  807d68:	30004f1e 	bne	r6,zero,807ea8 <_realloc_r+0x1e0>
  807d6c:	2148703a 	and	r4,r4,r5
  807d70:	a10b883a 	add	r5,r20,r4
  807d74:	28c0bf0e 	bge	r5,r3,808074 <_realloc_r+0x3ac>
  807d78:	1080004c 	andi	r2,r2,1
  807d7c:	10004c1e 	bne	r2,zero,807eb0 <_realloc_r+0x1e8>
  807d80:	81fffe17 	ldw	r7,-8(r16)
  807d84:	00bfff04 	movi	r2,-4
  807d88:	a9cfc83a 	sub	r7,r21,r7
  807d8c:	39400117 	ldw	r5,4(r7)
  807d90:	288a703a 	and	r5,r5,r2
  807d94:	b0000426 	beq	r22,zero,807da8 <_realloc_r+0xe0>
  807d98:	a16f883a 	add	r23,r20,r5
  807d9c:	b92f883a 	add	r23,r23,r4
  807da0:	4580bf26 	beq	r8,r22,8080a0 <_realloc_r+0x3d8>
  807da4:	b8c0930e 	bge	r23,r3,807ff4 <_realloc_r+0x32c>
  807da8:	38004126 	beq	r7,zero,807eb0 <_realloc_r+0x1e8>
  807dac:	a16f883a 	add	r23,r20,r5
  807db0:	b8c03f16 	blt	r23,r3,807eb0 <_realloc_r+0x1e8>
  807db4:	38800317 	ldw	r2,12(r7)
  807db8:	38c00217 	ldw	r3,8(r7)
  807dbc:	a1bfff04 	addi	r6,r20,-4
  807dc0:	31400968 	cmpgeui	r5,r6,37
  807dc4:	18800315 	stw	r2,12(r3)
  807dc8:	10c00215 	stw	r3,8(r2)
  807dcc:	39000204 	addi	r4,r7,8
  807dd0:	3ded883a 	add	r22,r7,r23
  807dd4:	2800941e 	bne	r5,zero,808028 <_realloc_r+0x360>
  807dd8:	30800530 	cmpltui	r2,r6,20
  807ddc:	80c00017 	ldw	r3,0(r16)
  807de0:	1000df1e 	bne	r2,zero,808160 <_realloc_r+0x498>
  807de4:	38c00215 	stw	r3,8(r7)
  807de8:	80c00117 	ldw	r3,4(r16)
  807dec:	30800728 	cmpgeui	r2,r6,28
  807df0:	38c00315 	stw	r3,12(r7)
  807df4:	1000dc1e 	bne	r2,zero,808168 <_realloc_r+0x4a0>
  807df8:	80c00217 	ldw	r3,8(r16)
  807dfc:	38800404 	addi	r2,r7,16
  807e00:	84000204 	addi	r16,r16,8
  807e04:	10c00015 	stw	r3,0(r2)
  807e08:	80c00117 	ldw	r3,4(r16)
  807e0c:	b829883a 	mov	r20,r23
  807e10:	382b883a 	mov	r21,r7
  807e14:	10c00115 	stw	r3,4(r2)
  807e18:	80c00217 	ldw	r3,8(r16)
  807e1c:	2021883a 	mov	r16,r4
  807e20:	10c00215 	stw	r3,8(r2)
  807e24:	a9800117 	ldw	r6,4(r21)
  807e28:	a445c83a 	sub	r2,r20,r17
  807e2c:	10c00430 	cmpltui	r3,r2,16
  807e30:	3180004c 	andi	r6,r6,1
  807e34:	18004926 	beq	r3,zero,807f5c <_realloc_r+0x294>
  807e38:	a18cb03a 	or	r6,r20,r6
  807e3c:	a9800115 	stw	r6,4(r21)
  807e40:	b0800117 	ldw	r2,4(r22)
  807e44:	10800054 	ori	r2,r2,1
  807e48:	b0800115 	stw	r2,4(r22)
  807e4c:	9809883a 	mov	r4,r19
  807e50:	080e3980 	call	80e398 <__malloc_unlock>
  807e54:	8025883a 	mov	r18,r16
  807e58:	00000606 	br	807e74 <_realloc_r+0x1ac>
  807e5c:	04400404 	movi	r17,16
  807e60:	00c00404 	movi	r3,16
  807e64:	8cbfb02e 	bgeu	r17,r18,807d28 <_realloc_r+0x60>
  807e68:	00800304 	movi	r2,12
  807e6c:	98800015 	stw	r2,0(r19)
  807e70:	0025883a 	mov	r18,zero
  807e74:	9005883a 	mov	r2,r18
  807e78:	dfc00a17 	ldw	ra,40(sp)
  807e7c:	df000917 	ldw	fp,36(sp)
  807e80:	ddc00817 	ldw	r23,32(sp)
  807e84:	dd800717 	ldw	r22,28(sp)
  807e88:	dd400617 	ldw	r21,24(sp)
  807e8c:	dd000517 	ldw	r20,20(sp)
  807e90:	dcc00417 	ldw	r19,16(sp)
  807e94:	dc800317 	ldw	r18,12(sp)
  807e98:	dc400217 	ldw	r17,8(sp)
  807e9c:	dc000117 	ldw	r16,4(sp)
  807ea0:	dec00b04 	addi	sp,sp,44
  807ea4:	f800283a 	ret
  807ea8:	1080004c 	andi	r2,r2,1
  807eac:	10006c26 	beq	r2,zero,808060 <_realloc_r+0x398>
  807eb0:	900b883a 	mov	r5,r18
  807eb4:	9809883a 	mov	r4,r19
  807eb8:	0805fc00 	call	805fc0 <_malloc_r>
  807ebc:	1025883a 	mov	r18,r2
  807ec0:	10001626 	beq	r2,zero,807f1c <_realloc_r+0x254>
  807ec4:	80bfff17 	ldw	r2,-4(r16)
  807ec8:	013fff84 	movi	r4,-2
  807ecc:	90fffe04 	addi	r3,r18,-8
  807ed0:	1104703a 	and	r2,r2,r4
  807ed4:	a885883a 	add	r2,r21,r2
  807ed8:	10c05b26 	beq	r2,r3,808048 <_realloc_r+0x380>
  807edc:	a1bfff04 	addi	r6,r20,-4
  807ee0:	30800968 	cmpgeui	r2,r6,37
  807ee4:	10006a1e 	bne	r2,zero,808090 <_realloc_r+0x3c8>
  807ee8:	30800530 	cmpltui	r2,r6,20
  807eec:	81000017 	ldw	r4,0(r16)
  807ef0:	10003726 	beq	r2,zero,807fd0 <_realloc_r+0x308>
  807ef4:	9005883a 	mov	r2,r18
  807ef8:	8007883a 	mov	r3,r16
  807efc:	11000015 	stw	r4,0(r2)
  807f00:	19000117 	ldw	r4,4(r3)
  807f04:	11000115 	stw	r4,4(r2)
  807f08:	18c00217 	ldw	r3,8(r3)
  807f0c:	10c00215 	stw	r3,8(r2)
  807f10:	800b883a 	mov	r5,r16
  807f14:	9809883a 	mov	r4,r19
  807f18:	08054c00 	call	8054c0 <_free_r>
  807f1c:	9809883a 	mov	r4,r19
  807f20:	080e3980 	call	80e398 <__malloc_unlock>
  807f24:	003fd306 	br	807e74 <_realloc_r+0x1ac>
  807f28:	300b883a 	mov	r5,r6
  807f2c:	dfc00a17 	ldw	ra,40(sp)
  807f30:	df000917 	ldw	fp,36(sp)
  807f34:	ddc00817 	ldw	r23,32(sp)
  807f38:	dd800717 	ldw	r22,28(sp)
  807f3c:	dd400617 	ldw	r21,24(sp)
  807f40:	dd000517 	ldw	r20,20(sp)
  807f44:	dcc00417 	ldw	r19,16(sp)
  807f48:	dc800317 	ldw	r18,12(sp)
  807f4c:	dc400217 	ldw	r17,8(sp)
  807f50:	dc000117 	ldw	r16,4(sp)
  807f54:	dec00b04 	addi	sp,sp,44
  807f58:	0805fc01 	jmpi	805fc0 <_malloc_r>
  807f5c:	344cb03a 	or	r6,r6,r17
  807f60:	a9800115 	stw	r6,4(r21)
  807f64:	ac4b883a 	add	r5,r21,r17
  807f68:	10800054 	ori	r2,r2,1
  807f6c:	28800115 	stw	r2,4(r5)
  807f70:	b0800117 	ldw	r2,4(r22)
  807f74:	29400204 	addi	r5,r5,8
  807f78:	9809883a 	mov	r4,r19
  807f7c:	10800054 	ori	r2,r2,1
  807f80:	b0800115 	stw	r2,4(r22)
  807f84:	08054c00 	call	8054c0 <_free_r>
  807f88:	003fb006 	br	807e4c <_realloc_r+0x184>
  807f8c:	2148703a 	and	r4,r4,r5
  807f90:	a10b883a 	add	r5,r20,r4
  807f94:	89800404 	addi	r6,r17,16
  807f98:	29bf7716 	blt	r5,r6,807d78 <_realloc_r+0xb0>
  807f9c:	ac6b883a 	add	r21,r21,r17
  807fa0:	2c45c83a 	sub	r2,r5,r17
  807fa4:	e5400215 	stw	r21,8(fp)
  807fa8:	10800054 	ori	r2,r2,1
  807fac:	a8800115 	stw	r2,4(r21)
  807fb0:	80bfff17 	ldw	r2,-4(r16)
  807fb4:	9809883a 	mov	r4,r19
  807fb8:	8025883a 	mov	r18,r16
  807fbc:	1080004c 	andi	r2,r2,1
  807fc0:	1462b03a 	or	r17,r2,r17
  807fc4:	847fff15 	stw	r17,-4(r16)
  807fc8:	080e3980 	call	80e398 <__malloc_unlock>
  807fcc:	003fa906 	br	807e74 <_realloc_r+0x1ac>
  807fd0:	91000015 	stw	r4,0(r18)
  807fd4:	80c00117 	ldw	r3,4(r16)
  807fd8:	30800728 	cmpgeui	r2,r6,28
  807fdc:	90c00115 	stw	r3,4(r18)
  807fe0:	1000551e 	bne	r2,zero,808138 <_realloc_r+0x470>
  807fe4:	81000217 	ldw	r4,8(r16)
  807fe8:	80c00204 	addi	r3,r16,8
  807fec:	90800204 	addi	r2,r18,8
  807ff0:	003fc206 	br	807efc <_realloc_r+0x234>
  807ff4:	b0800317 	ldw	r2,12(r22)
  807ff8:	b0c00217 	ldw	r3,8(r22)
  807ffc:	a1bfff04 	addi	r6,r20,-4
  808000:	31400968 	cmpgeui	r5,r6,37
  808004:	18800315 	stw	r2,12(r3)
  808008:	10c00215 	stw	r3,8(r2)
  80800c:	38c00217 	ldw	r3,8(r7)
  808010:	38800317 	ldw	r2,12(r7)
  808014:	39000204 	addi	r4,r7,8
  808018:	3ded883a 	add	r22,r7,r23
  80801c:	18800315 	stw	r2,12(r3)
  808020:	10c00215 	stw	r3,8(r2)
  808024:	283f6c26 	beq	r5,zero,807dd8 <_realloc_r+0x110>
  808028:	800b883a 	mov	r5,r16
  80802c:	d9c00015 	stw	r7,0(sp)
  808030:	08069740 	call	806974 <memmove>
  808034:	d9c00017 	ldw	r7,0(sp)
  808038:	1021883a 	mov	r16,r2
  80803c:	b829883a 	mov	r20,r23
  808040:	382b883a 	mov	r21,r7
  808044:	003f7706 	br	807e24 <_realloc_r+0x15c>
  808048:	90bfff17 	ldw	r2,-4(r18)
  80804c:	00ffff04 	movi	r3,-4
  808050:	10c4703a 	and	r2,r2,r3
  808054:	a0a9883a 	add	r20,r20,r2
  808058:	ad2d883a 	add	r22,r21,r20
  80805c:	003f7106 	br	807e24 <_realloc_r+0x15c>
  808060:	81fffe17 	ldw	r7,-8(r16)
  808064:	a9cfc83a 	sub	r7,r21,r7
  808068:	39000117 	ldw	r4,4(r7)
  80806c:	214a703a 	and	r5,r4,r5
  808070:	003f4d06 	br	807da8 <_realloc_r+0xe0>
  808074:	b0800317 	ldw	r2,12(r22)
  808078:	b0c00217 	ldw	r3,8(r22)
  80807c:	2829883a 	mov	r20,r5
  808080:	a96d883a 	add	r22,r21,r5
  808084:	18800315 	stw	r2,12(r3)
  808088:	10c00215 	stw	r3,8(r2)
  80808c:	003f6506 	br	807e24 <_realloc_r+0x15c>
  808090:	800b883a 	mov	r5,r16
  808094:	9009883a 	mov	r4,r18
  808098:	08069740 	call	806974 <memmove>
  80809c:	003f9c06 	br	807f10 <_realloc_r+0x248>
  8080a0:	88800404 	addi	r2,r17,16
  8080a4:	b8bf4016 	blt	r23,r2,807da8 <_realloc_r+0xe0>
  8080a8:	38800317 	ldw	r2,12(r7)
  8080ac:	38c00217 	ldw	r3,8(r7)
  8080b0:	a1bfff04 	addi	r6,r20,-4
  8080b4:	31000968 	cmpgeui	r4,r6,37
  8080b8:	18800315 	stw	r2,12(r3)
  8080bc:	10c00215 	stw	r3,8(r2)
  8080c0:	3c800204 	addi	r18,r7,8
  8080c4:	20003b1e 	bne	r4,zero,8081b4 <_realloc_r+0x4ec>
  8080c8:	30800530 	cmpltui	r2,r6,20
  8080cc:	80c00017 	ldw	r3,0(r16)
  8080d0:	1000361e 	bne	r2,zero,8081ac <_realloc_r+0x4e4>
  8080d4:	38c00215 	stw	r3,8(r7)
  8080d8:	80c00117 	ldw	r3,4(r16)
  8080dc:	30800728 	cmpgeui	r2,r6,28
  8080e0:	38c00315 	stw	r3,12(r7)
  8080e4:	1000401e 	bne	r2,zero,8081e8 <_realloc_r+0x520>
  8080e8:	80c00217 	ldw	r3,8(r16)
  8080ec:	38800404 	addi	r2,r7,16
  8080f0:	84000204 	addi	r16,r16,8
  8080f4:	10c00015 	stw	r3,0(r2)
  8080f8:	80c00117 	ldw	r3,4(r16)
  8080fc:	10c00115 	stw	r3,4(r2)
  808100:	80c00217 	ldw	r3,8(r16)
  808104:	10c00215 	stw	r3,8(r2)
  808108:	3c47883a 	add	r3,r7,r17
  80810c:	bc45c83a 	sub	r2,r23,r17
  808110:	e0c00215 	stw	r3,8(fp)
  808114:	10800054 	ori	r2,r2,1
  808118:	18800115 	stw	r2,4(r3)
  80811c:	38800117 	ldw	r2,4(r7)
  808120:	9809883a 	mov	r4,r19
  808124:	1080004c 	andi	r2,r2,1
  808128:	1462b03a 	or	r17,r2,r17
  80812c:	3c400115 	stw	r17,4(r7)
  808130:	080e3980 	call	80e398 <__malloc_unlock>
  808134:	003f4f06 	br	807e74 <_realloc_r+0x1ac>
  808138:	80800217 	ldw	r2,8(r16)
  80813c:	31800920 	cmpeqi	r6,r6,36
  808140:	90800215 	stw	r2,8(r18)
  808144:	80800317 	ldw	r2,12(r16)
  808148:	90800315 	stw	r2,12(r18)
  80814c:	81000417 	ldw	r4,16(r16)
  808150:	30000f1e 	bne	r6,zero,808190 <_realloc_r+0x4c8>
  808154:	80c00404 	addi	r3,r16,16
  808158:	90800404 	addi	r2,r18,16
  80815c:	003f6706 	br	807efc <_realloc_r+0x234>
  808160:	2005883a 	mov	r2,r4
  808164:	003f2706 	br	807e04 <_realloc_r+0x13c>
  808168:	80800217 	ldw	r2,8(r16)
  80816c:	31800920 	cmpeqi	r6,r6,36
  808170:	38800415 	stw	r2,16(r7)
  808174:	80800317 	ldw	r2,12(r16)
  808178:	38800515 	stw	r2,20(r7)
  80817c:	80c00417 	ldw	r3,16(r16)
  808180:	3000121e 	bne	r6,zero,8081cc <_realloc_r+0x504>
  808184:	38800604 	addi	r2,r7,24
  808188:	84000404 	addi	r16,r16,16
  80818c:	003f1d06 	br	807e04 <_realloc_r+0x13c>
  808190:	91000415 	stw	r4,16(r18)
  808194:	81000517 	ldw	r4,20(r16)
  808198:	80c00604 	addi	r3,r16,24
  80819c:	90800604 	addi	r2,r18,24
  8081a0:	91000515 	stw	r4,20(r18)
  8081a4:	81000617 	ldw	r4,24(r16)
  8081a8:	003f5406 	br	807efc <_realloc_r+0x234>
  8081ac:	9005883a 	mov	r2,r18
  8081b0:	003fd006 	br	8080f4 <_realloc_r+0x42c>
  8081b4:	800b883a 	mov	r5,r16
  8081b8:	9009883a 	mov	r4,r18
  8081bc:	d9c00015 	stw	r7,0(sp)
  8081c0:	08069740 	call	806974 <memmove>
  8081c4:	d9c00017 	ldw	r7,0(sp)
  8081c8:	003fcf06 	br	808108 <_realloc_r+0x440>
  8081cc:	84000604 	addi	r16,r16,24
  8081d0:	38c00615 	stw	r3,24(r7)
  8081d4:	80ffff17 	ldw	r3,-4(r16)
  8081d8:	38800804 	addi	r2,r7,32
  8081dc:	38c00715 	stw	r3,28(r7)
  8081e0:	80c00017 	ldw	r3,0(r16)
  8081e4:	003f0706 	br	807e04 <_realloc_r+0x13c>
  8081e8:	80800217 	ldw	r2,8(r16)
  8081ec:	31800920 	cmpeqi	r6,r6,36
  8081f0:	38800415 	stw	r2,16(r7)
  8081f4:	80800317 	ldw	r2,12(r16)
  8081f8:	38800515 	stw	r2,20(r7)
  8081fc:	80c00417 	ldw	r3,16(r16)
  808200:	3000031e 	bne	r6,zero,808210 <_realloc_r+0x548>
  808204:	38800604 	addi	r2,r7,24
  808208:	84000404 	addi	r16,r16,16
  80820c:	003fb906 	br	8080f4 <_realloc_r+0x42c>
  808210:	84000604 	addi	r16,r16,24
  808214:	38c00615 	stw	r3,24(r7)
  808218:	80ffff17 	ldw	r3,-4(r16)
  80821c:	38800804 	addi	r2,r7,32
  808220:	38c00715 	stw	r3,28(r7)
  808224:	80c00017 	ldw	r3,0(r16)
  808228:	003fb206 	br	8080f4 <_realloc_r+0x42c>

0080822c <_sbrk_r>:
  80822c:	defffe04 	addi	sp,sp,-8
  808230:	dc000015 	stw	r16,0(sp)
  808234:	00802074 	movhi	r2,129
  808238:	2021883a 	mov	r16,r4
  80823c:	2809883a 	mov	r4,r5
  808240:	dfc00115 	stw	ra,4(sp)
  808244:	1010e215 	stw	zero,17288(r2)
  808248:	080e5700 	call	80e570 <sbrk>
  80824c:	10ffffd8 	cmpnei	r3,r2,-1
  808250:	18000426 	beq	r3,zero,808264 <_sbrk_r+0x38>
  808254:	dfc00117 	ldw	ra,4(sp)
  808258:	dc000017 	ldw	r16,0(sp)
  80825c:	dec00204 	addi	sp,sp,8
  808260:	f800283a 	ret
  808264:	00c02074 	movhi	r3,129
  808268:	18d0e217 	ldw	r3,17288(r3)
  80826c:	183ff926 	beq	r3,zero,808254 <_sbrk_r+0x28>
  808270:	80c00015 	stw	r3,0(r16)
  808274:	dfc00117 	ldw	ra,4(sp)
  808278:	dc000017 	ldw	r16,0(sp)
  80827c:	dec00204 	addi	sp,sp,8
  808280:	f800283a 	ret

00808284 <__sread>:
  808284:	defffe04 	addi	sp,sp,-8
  808288:	dc000015 	stw	r16,0(sp)
  80828c:	2821883a 	mov	r16,r5
  808290:	2940038f 	ldh	r5,14(r5)
  808294:	dfc00115 	stw	ra,4(sp)
  808298:	080a01c0 	call	80a01c <_read_r>
  80829c:	10000716 	blt	r2,zero,8082bc <__sread+0x38>
  8082a0:	80c01417 	ldw	r3,80(r16)
  8082a4:	1887883a 	add	r3,r3,r2
  8082a8:	80c01415 	stw	r3,80(r16)
  8082ac:	dfc00117 	ldw	ra,4(sp)
  8082b0:	dc000017 	ldw	r16,0(sp)
  8082b4:	dec00204 	addi	sp,sp,8
  8082b8:	f800283a 	ret
  8082bc:	80c0030b 	ldhu	r3,12(r16)
  8082c0:	18fbffcc 	andi	r3,r3,61439
  8082c4:	80c0030d 	sth	r3,12(r16)
  8082c8:	dfc00117 	ldw	ra,4(sp)
  8082cc:	dc000017 	ldw	r16,0(sp)
  8082d0:	dec00204 	addi	sp,sp,8
  8082d4:	f800283a 	ret

008082d8 <__seofread>:
  8082d8:	0005883a 	mov	r2,zero
  8082dc:	f800283a 	ret

008082e0 <__swrite>:
  8082e0:	2880030b 	ldhu	r2,12(r5)
  8082e4:	defffb04 	addi	sp,sp,-20
  8082e8:	dcc00315 	stw	r19,12(sp)
  8082ec:	dc800215 	stw	r18,8(sp)
  8082f0:	dc400115 	stw	r17,4(sp)
  8082f4:	dc000015 	stw	r16,0(sp)
  8082f8:	dfc00415 	stw	ra,16(sp)
  8082fc:	10c0400c 	andi	r3,r2,256
  808300:	2821883a 	mov	r16,r5
  808304:	2023883a 	mov	r17,r4
  808308:	2940038f 	ldh	r5,14(r5)
  80830c:	3025883a 	mov	r18,r6
  808310:	3827883a 	mov	r19,r7
  808314:	18000c1e 	bne	r3,zero,808348 <__swrite+0x68>
  808318:	10bbffcc 	andi	r2,r2,61439
  80831c:	980f883a 	mov	r7,r19
  808320:	900d883a 	mov	r6,r18
  808324:	8809883a 	mov	r4,r17
  808328:	8080030d 	sth	r2,12(r16)
  80832c:	dfc00417 	ldw	ra,16(sp)
  808330:	dcc00317 	ldw	r19,12(sp)
  808334:	dc800217 	ldw	r18,8(sp)
  808338:	dc400117 	ldw	r17,4(sp)
  80833c:	dc000017 	ldw	r16,0(sp)
  808340:	dec00504 	addi	sp,sp,20
  808344:	08098c01 	jmpi	8098c0 <_write_r>
  808348:	01c00084 	movi	r7,2
  80834c:	000d883a 	mov	r6,zero
  808350:	0809f680 	call	809f68 <_lseek_r>
  808354:	8080030b 	ldhu	r2,12(r16)
  808358:	8140038f 	ldh	r5,14(r16)
  80835c:	003fee06 	br	808318 <__swrite+0x38>

00808360 <__sseek>:
  808360:	defffe04 	addi	sp,sp,-8
  808364:	dc000015 	stw	r16,0(sp)
  808368:	2821883a 	mov	r16,r5
  80836c:	2940038f 	ldh	r5,14(r5)
  808370:	dfc00115 	stw	ra,4(sp)
  808374:	0809f680 	call	809f68 <_lseek_r>
  808378:	10ffffd8 	cmpnei	r3,r2,-1
  80837c:	18000826 	beq	r3,zero,8083a0 <__sseek+0x40>
  808380:	80c0030b 	ldhu	r3,12(r16)
  808384:	80801415 	stw	r2,80(r16)
  808388:	18c40014 	ori	r3,r3,4096
  80838c:	80c0030d 	sth	r3,12(r16)
  808390:	dfc00117 	ldw	ra,4(sp)
  808394:	dc000017 	ldw	r16,0(sp)
  808398:	dec00204 	addi	sp,sp,8
  80839c:	f800283a 	ret
  8083a0:	80c0030b 	ldhu	r3,12(r16)
  8083a4:	18fbffcc 	andi	r3,r3,61439
  8083a8:	80c0030d 	sth	r3,12(r16)
  8083ac:	dfc00117 	ldw	ra,4(sp)
  8083b0:	dc000017 	ldw	r16,0(sp)
  8083b4:	dec00204 	addi	sp,sp,8
  8083b8:	f800283a 	ret

008083bc <__sclose>:
  8083bc:	2940038f 	ldh	r5,14(r5)
  8083c0:	08099241 	jmpi	809924 <_close_r>

008083c4 <__sprint_r.part.0>:
  8083c4:	28801917 	ldw	r2,100(r5)
  8083c8:	defff604 	addi	sp,sp,-40
  8083cc:	dcc00315 	stw	r19,12(sp)
  8083d0:	dfc00915 	stw	ra,36(sp)
  8083d4:	df000815 	stw	fp,32(sp)
  8083d8:	ddc00715 	stw	r23,28(sp)
  8083dc:	dd800615 	stw	r22,24(sp)
  8083e0:	dd400515 	stw	r21,20(sp)
  8083e4:	dd000415 	stw	r20,16(sp)
  8083e8:	dc800215 	stw	r18,8(sp)
  8083ec:	dc400115 	stw	r17,4(sp)
  8083f0:	dc000015 	stw	r16,0(sp)
  8083f4:	1088000c 	andi	r2,r2,8192
  8083f8:	3027883a 	mov	r19,r6
  8083fc:	10002c26 	beq	r2,zero,8084b0 <__sprint_r.part.0+0xec>
  808400:	30800217 	ldw	r2,8(r6)
  808404:	35000017 	ldw	r20,0(r6)
  808408:	2821883a 	mov	r16,r5
  80840c:	2023883a 	mov	r17,r4
  808410:	05bfff04 	movi	r22,-4
  808414:	10002426 	beq	r2,zero,8084a8 <__sprint_r.part.0+0xe4>
  808418:	a5400117 	ldw	r21,4(r20)
  80841c:	a5c00017 	ldw	r23,0(r20)
  808420:	a824d0ba 	srli	r18,r21,2
  808424:	90001b26 	beq	r18,zero,808494 <__sprint_r.part.0+0xd0>
  808428:	0039883a 	mov	fp,zero
  80842c:	00000206 	br	808438 <__sprint_r.part.0+0x74>
  808430:	bdc00104 	addi	r23,r23,4
  808434:	97001626 	beq	r18,fp,808490 <__sprint_r.part.0+0xcc>
  808438:	b9400017 	ldw	r5,0(r23)
  80843c:	800d883a 	mov	r6,r16
  808440:	8809883a 	mov	r4,r17
  808444:	0809d7c0 	call	809d7c <_fputwc_r>
  808448:	10bfffe0 	cmpeqi	r2,r2,-1
  80844c:	e7000044 	addi	fp,fp,1
  808450:	103ff726 	beq	r2,zero,808430 <__sprint_r.part.0+0x6c>
  808454:	00bfffc4 	movi	r2,-1
  808458:	98000215 	stw	zero,8(r19)
  80845c:	98000115 	stw	zero,4(r19)
  808460:	dfc00917 	ldw	ra,36(sp)
  808464:	df000817 	ldw	fp,32(sp)
  808468:	ddc00717 	ldw	r23,28(sp)
  80846c:	dd800617 	ldw	r22,24(sp)
  808470:	dd400517 	ldw	r21,20(sp)
  808474:	dd000417 	ldw	r20,16(sp)
  808478:	dcc00317 	ldw	r19,12(sp)
  80847c:	dc800217 	ldw	r18,8(sp)
  808480:	dc400117 	ldw	r17,4(sp)
  808484:	dc000017 	ldw	r16,0(sp)
  808488:	dec00a04 	addi	sp,sp,40
  80848c:	f800283a 	ret
  808490:	98800217 	ldw	r2,8(r19)
  808494:	adaa703a 	and	r21,r21,r22
  808498:	1545c83a 	sub	r2,r2,r21
  80849c:	98800215 	stw	r2,8(r19)
  8084a0:	a5000204 	addi	r20,r20,8
  8084a4:	103fdc1e 	bne	r2,zero,808418 <__sprint_r.part.0+0x54>
  8084a8:	0005883a 	mov	r2,zero
  8084ac:	003fea06 	br	808458 <__sprint_r.part.0+0x94>
  8084b0:	08057bc0 	call	8057bc <__sfvwrite_r>
  8084b4:	003fe806 	br	808458 <__sprint_r.part.0+0x94>

008084b8 <__sprint_r>:
  8084b8:	30c00217 	ldw	r3,8(r6)
  8084bc:	18000126 	beq	r3,zero,8084c4 <__sprint_r+0xc>
  8084c0:	08083c41 	jmpi	8083c4 <__sprint_r.part.0>
  8084c4:	30000115 	stw	zero,4(r6)
  8084c8:	0005883a 	mov	r2,zero
  8084cc:	f800283a 	ret

008084d0 <___vfiprintf_internal_r>:
  8084d0:	deffcf04 	addi	sp,sp,-196
  8084d4:	dd802d15 	stw	r22,180(sp)
  8084d8:	dd402c15 	stw	r21,176(sp)
  8084dc:	dd002b15 	stw	r20,172(sp)
  8084e0:	dfc03015 	stw	ra,192(sp)
  8084e4:	df002f15 	stw	fp,188(sp)
  8084e8:	ddc02e15 	stw	r23,184(sp)
  8084ec:	dcc02a15 	stw	r19,168(sp)
  8084f0:	dc802915 	stw	r18,164(sp)
  8084f4:	dc402815 	stw	r17,160(sp)
  8084f8:	dc002715 	stw	r16,156(sp)
  8084fc:	d9c00415 	stw	r7,16(sp)
  808500:	202d883a 	mov	r22,r4
  808504:	282b883a 	mov	r21,r5
  808508:	3029883a 	mov	r20,r6
  80850c:	20000226 	beq	r4,zero,808518 <___vfiprintf_internal_r+0x48>
  808510:	20800e17 	ldw	r2,56(r4)
  808514:	1001b426 	beq	r2,zero,808be8 <___vfiprintf_internal_r+0x718>
  808518:	a880030b 	ldhu	r2,12(r21)
  80851c:	10c8000c 	andi	r3,r2,8192
  808520:	1800061e 	bne	r3,zero,80853c <___vfiprintf_internal_r+0x6c>
  808524:	a8c01917 	ldw	r3,100(r21)
  808528:	0137ffc4 	movi	r4,-8193
  80852c:	10880014 	ori	r2,r2,8192
  808530:	1906703a 	and	r3,r3,r4
  808534:	a880030d 	sth	r2,12(r21)
  808538:	a8c01915 	stw	r3,100(r21)
  80853c:	10c0020c 	andi	r3,r2,8
  808540:	18010826 	beq	r3,zero,808964 <___vfiprintf_internal_r+0x494>
  808544:	a8c00417 	ldw	r3,16(r21)
  808548:	18010626 	beq	r3,zero,808964 <___vfiprintf_internal_r+0x494>
  80854c:	1080068c 	andi	r2,r2,26
  808550:	10800298 	cmpnei	r2,r2,10
  808554:	10010b26 	beq	r2,zero,808984 <___vfiprintf_internal_r+0x4b4>
  808558:	dc801704 	addi	r18,sp,92
  80855c:	dc800a15 	stw	r18,40(sp)
  808560:	d8000c15 	stw	zero,48(sp)
  808564:	d8000b15 	stw	zero,44(sp)
  808568:	9021883a 	mov	r16,r18
  80856c:	d8000515 	stw	zero,20(sp)
  808570:	d8000115 	stw	zero,4(sp)
  808574:	a0c00007 	ldb	r3,0(r20)
  808578:	1800e826 	beq	r3,zero,80891c <___vfiprintf_internal_r+0x44c>
  80857c:	a023883a 	mov	r17,r20
  808580:	00000306 	br	808590 <___vfiprintf_internal_r+0xc0>
  808584:	88c00047 	ldb	r3,1(r17)
  808588:	8c400044 	addi	r17,r17,1
  80858c:	18012a26 	beq	r3,zero,808a38 <___vfiprintf_internal_r+0x568>
  808590:	18c00958 	cmpnei	r3,r3,37
  808594:	183ffb1e 	bne	r3,zero,808584 <___vfiprintf_internal_r+0xb4>
  808598:	8d27c83a 	sub	r19,r17,r20
  80859c:	8d01281e 	bne	r17,r20,808a40 <___vfiprintf_internal_r+0x570>
  8085a0:	88800003 	ldbu	r2,0(r17)
  8085a4:	10803fcc 	andi	r2,r2,255
  8085a8:	1080201c 	xori	r2,r2,128
  8085ac:	10bfe004 	addi	r2,r2,-128
  8085b0:	1000da26 	beq	r2,zero,80891c <___vfiprintf_internal_r+0x44c>
  8085b4:	88800047 	ldb	r2,1(r17)
  8085b8:	8d000044 	addi	r20,r17,1
  8085bc:	d8000945 	stb	zero,37(sp)
  8085c0:	000b883a 	mov	r5,zero
  8085c4:	000d883a 	mov	r6,zero
  8085c8:	023fffc4 	movi	r8,-1
  8085cc:	0023883a 	mov	r17,zero
  8085d0:	001b883a 	mov	r13,zero
  8085d4:	a5000044 	addi	r20,r20,1
  8085d8:	10fff804 	addi	r3,r2,-32
  8085dc:	19001668 	cmpgeui	r4,r3,89
  8085e0:	20006c1e 	bne	r4,zero,808794 <___vfiprintf_internal_r+0x2c4>
  8085e4:	180690ba 	slli	r3,r3,2
  8085e8:	01002074 	movhi	r4,129
  8085ec:	1909883a 	add	r4,r3,r4
  8085f0:	20e17e17 	ldw	r3,-31240(r4)
  8085f4:	1800683a 	jmp	r3
  8085f8:	00808ef8 	rdprs	r2,zero,571
  8085fc:	00808794 	movui	r2,542
  808600:	00808794 	movui	r2,542
  808604:	00808eec 	andhi	r2,zero,571
  808608:	00808794 	movui	r2,542
  80860c:	00808794 	movui	r2,542
  808610:	00808794 	movui	r2,542
  808614:	00808794 	movui	r2,542
  808618:	00808794 	movui	r2,542
  80861c:	00808794 	movui	r2,542
  808620:	00808ec4 	movi	r2,571
  808624:	00808eb4 	movhi	r2,570
  808628:	00808794 	movui	r2,542
  80862c:	00808e9c 	xori	r2,zero,570
  808630:	00808e50 	cmplti	r2,zero,569
  808634:	00808794 	movui	r2,542
  808638:	00808e44 	movi	r2,569
  80863c:	0080875c 	xori	r2,zero,541
  808640:	0080875c 	xori	r2,zero,541
  808644:	0080875c 	xori	r2,zero,541
  808648:	0080875c 	xori	r2,zero,541
  80864c:	0080875c 	xori	r2,zero,541
  808650:	0080875c 	xori	r2,zero,541
  808654:	0080875c 	xori	r2,zero,541
  808658:	0080875c 	xori	r2,zero,541
  80865c:	0080875c 	xori	r2,zero,541
  808660:	00808794 	movui	r2,542
  808664:	00808794 	movui	r2,542
  808668:	00808794 	movui	r2,542
  80866c:	00808794 	movui	r2,542
  808670:	00808794 	movui	r2,542
  808674:	00808794 	movui	r2,542
  808678:	00808794 	movui	r2,542
  80867c:	00808794 	movui	r2,542
  808680:	00808794 	movui	r2,542
  808684:	00808794 	movui	r2,542
  808688:	00808d60 	cmpeqi	r2,zero,565
  80868c:	00808794 	movui	r2,542
  808690:	00808794 	movui	r2,542
  808694:	00808794 	movui	r2,542
  808698:	00808794 	movui	r2,542
  80869c:	00808794 	movui	r2,542
  8086a0:	00808794 	movui	r2,542
  8086a4:	00808794 	movui	r2,542
  8086a8:	00808794 	movui	r2,542
  8086ac:	00808794 	movui	r2,542
  8086b0:	00808794 	movui	r2,542
  8086b4:	008089d0 	cmplti	r2,zero,551
  8086b8:	00808794 	movui	r2,542
  8086bc:	00808794 	movui	r2,542
  8086c0:	00808794 	movui	r2,542
  8086c4:	00808794 	movui	r2,542
  8086c8:	00808794 	movui	r2,542
  8086cc:	008089a8 	cmpgeui	r2,zero,550
  8086d0:	00808794 	movui	r2,542
  8086d4:	00808794 	movui	r2,542
  8086d8:	00808d18 	cmpnei	r2,zero,564
  8086dc:	00808794 	movui	r2,542
  8086e0:	00808794 	movui	r2,542
  8086e4:	00808794 	movui	r2,542
  8086e8:	00808794 	movui	r2,542
  8086ec:	00808794 	movui	r2,542
  8086f0:	00808794 	movui	r2,542
  8086f4:	00808794 	movui	r2,542
  8086f8:	00808794 	movui	r2,542
  8086fc:	00808794 	movui	r2,542
  808700:	00808794 	movui	r2,542
  808704:	00808cf0 	cmpltui	r2,zero,563
  808708:	00808bf0 	cmpltui	r2,zero,559
  80870c:	00808794 	movui	r2,542
  808710:	00808794 	movui	r2,542
  808714:	00808794 	movui	r2,542
  808718:	00808c94 	movui	r2,562
  80871c:	00808bf0 	cmpltui	r2,zero,559
  808720:	00808794 	movui	r2,542
  808724:	00808794 	movui	r2,542
  808728:	00808cdc 	xori	r2,zero,563
  80872c:	00808794 	movui	r2,542
  808730:	00808ca0 	cmpeqi	r2,zero,562
  808734:	008089d4 	movui	r2,551
  808738:	00808fd0 	cmplti	r2,zero,575
  80873c:	00808fc4 	movi	r2,575
  808740:	00808794 	movui	r2,542
  808744:	00808f6c 	andhi	r2,zero,573
  808748:	00808794 	movui	r2,542
  80874c:	008089ac 	andhi	r2,zero,550
  808750:	00808794 	movui	r2,542
  808754:	00808794 	movui	r2,542
  808758:	00808f24 	muli	r2,zero,572
  80875c:	0023883a 	mov	r17,zero
  808760:	113ff404 	addi	r4,r2,-48
  808764:	880690ba 	slli	r3,r17,2
  808768:	a0800007 	ldb	r2,0(r20)
  80876c:	a5000044 	addi	r20,r20,1
  808770:	1c63883a 	add	r17,r3,r17
  808774:	8c63883a 	add	r17,r17,r17
  808778:	2463883a 	add	r17,r4,r17
  80877c:	113ff404 	addi	r4,r2,-48
  808780:	20c002b0 	cmpltui	r3,r4,10
  808784:	183ff71e 	bne	r3,zero,808764 <___vfiprintf_internal_r+0x294>
  808788:	10fff804 	addi	r3,r2,-32
  80878c:	19001668 	cmpgeui	r4,r3,89
  808790:	203f9426 	beq	r4,zero,8085e4 <___vfiprintf_internal_r+0x114>
  808794:	29403fcc 	andi	r5,r5,255
  808798:	2803e31e 	bne	r5,zero,809728 <___vfiprintf_internal_r+0x1258>
  80879c:	10005f26 	beq	r2,zero,80891c <___vfiprintf_internal_r+0x44c>
  8087a0:	d8800d05 	stb	r2,52(sp)
  8087a4:	d8000945 	stb	zero,37(sp)
  8087a8:	05c00044 	movi	r23,1
  8087ac:	07000044 	movi	fp,1
  8087b0:	dcc00d04 	addi	r19,sp,52
  8087b4:	db400015 	stw	r13,0(sp)
  8087b8:	0011883a 	mov	r8,zero
  8087bc:	d8800017 	ldw	r2,0(sp)
  8087c0:	1380008c 	andi	r14,r2,2
  8087c4:	70000126 	beq	r14,zero,8087cc <___vfiprintf_internal_r+0x2fc>
  8087c8:	bdc00084 	addi	r23,r23,2
  8087cc:	d8800017 	ldw	r2,0(sp)
  8087d0:	d9000b17 	ldw	r4,44(sp)
  8087d4:	1340210c 	andi	r13,r2,132
  8087d8:	21800044 	addi	r6,r4,1
  8087dc:	d8800c17 	ldw	r2,48(sp)
  8087e0:	300b883a 	mov	r5,r6
  8087e4:	6800021e 	bne	r13,zero,8087f0 <___vfiprintf_internal_r+0x320>
  8087e8:	8dc7c83a 	sub	r3,r17,r23
  8087ec:	00c2d716 	blt	zero,r3,80934c <___vfiprintf_internal_r+0xe7c>
  8087f0:	d8c00947 	ldb	r3,37(sp)
  8087f4:	81800204 	addi	r6,r16,8
  8087f8:	18000d26 	beq	r3,zero,808830 <___vfiprintf_internal_r+0x360>
  8087fc:	d8c00944 	addi	r3,sp,37
  808800:	10800044 	addi	r2,r2,1
  808804:	80c00015 	stw	r3,0(r16)
  808808:	00c00044 	movi	r3,1
  80880c:	80c00115 	stw	r3,4(r16)
  808810:	d8800c15 	stw	r2,48(sp)
  808814:	d9400b15 	stw	r5,44(sp)
  808818:	28c00208 	cmpgei	r3,r5,8
  80881c:	1802ac1e 	bne	r3,zero,8092d0 <___vfiprintf_internal_r+0xe00>
  808820:	2809883a 	mov	r4,r5
  808824:	3021883a 	mov	r16,r6
  808828:	29400044 	addi	r5,r5,1
  80882c:	31800204 	addi	r6,r6,8
  808830:	70001826 	beq	r14,zero,808894 <___vfiprintf_internal_r+0x3c4>
  808834:	d8c00984 	addi	r3,sp,38
  808838:	10800084 	addi	r2,r2,2
  80883c:	80c00015 	stw	r3,0(r16)
  808840:	00c00084 	movi	r3,2
  808844:	80c00115 	stw	r3,4(r16)
  808848:	d8800c15 	stw	r2,48(sp)
  80884c:	d9400b15 	stw	r5,44(sp)
  808850:	28c00208 	cmpgei	r3,r5,8
  808854:	1802b626 	beq	r3,zero,809330 <___vfiprintf_internal_r+0xe60>
  808858:	10031226 	beq	r2,zero,8094a4 <___vfiprintf_internal_r+0xfd4>
  80885c:	d9800a04 	addi	r6,sp,40
  808860:	a80b883a 	mov	r5,r21
  808864:	b009883a 	mov	r4,r22
  808868:	da000315 	stw	r8,12(sp)
  80886c:	db400215 	stw	r13,8(sp)
  808870:	08083c40 	call	8083c4 <__sprint_r.part.0>
  808874:	10002b1e 	bne	r2,zero,808924 <___vfiprintf_internal_r+0x454>
  808878:	d9000b17 	ldw	r4,44(sp)
  80887c:	d8800c17 	ldw	r2,48(sp)
  808880:	da000317 	ldw	r8,12(sp)
  808884:	db400217 	ldw	r13,8(sp)
  808888:	d9801904 	addi	r6,sp,100
  80888c:	21400044 	addi	r5,r4,1
  808890:	9021883a 	mov	r16,r18
  808894:	6b402018 	cmpnei	r13,r13,128
  808898:	68020c26 	beq	r13,zero,8090cc <___vfiprintf_internal_r+0xbfc>
  80889c:	4711c83a 	sub	r8,r8,fp
  8088a0:	02024b16 	blt	zero,r8,8091d0 <___vfiprintf_internal_r+0xd00>
  8088a4:	e085883a 	add	r2,fp,r2
  8088a8:	d9400b15 	stw	r5,44(sp)
  8088ac:	84c00015 	stw	r19,0(r16)
  8088b0:	87000115 	stw	fp,4(r16)
  8088b4:	d8800c15 	stw	r2,48(sp)
  8088b8:	29400210 	cmplti	r5,r5,8
  8088bc:	2800081e 	bne	r5,zero,8088e0 <___vfiprintf_internal_r+0x410>
  8088c0:	10008f26 	beq	r2,zero,808b00 <___vfiprintf_internal_r+0x630>
  8088c4:	d9800a04 	addi	r6,sp,40
  8088c8:	a80b883a 	mov	r5,r21
  8088cc:	b009883a 	mov	r4,r22
  8088d0:	08083c40 	call	8083c4 <__sprint_r.part.0>
  8088d4:	1000131e 	bne	r2,zero,808924 <___vfiprintf_internal_r+0x454>
  8088d8:	d8800c17 	ldw	r2,48(sp)
  8088dc:	900d883a 	mov	r6,r18
  8088e0:	d8c00017 	ldw	r3,0(sp)
  8088e4:	1cc0010c 	andi	r19,r3,4
  8088e8:	98000226 	beq	r19,zero,8088f4 <___vfiprintf_internal_r+0x424>
  8088ec:	8de1c83a 	sub	r16,r17,r23
  8088f0:	04008a16 	blt	zero,r16,808b1c <___vfiprintf_internal_r+0x64c>
  8088f4:	8dc0010e 	bge	r17,r23,8088fc <___vfiprintf_internal_r+0x42c>
  8088f8:	b823883a 	mov	r17,r23
  8088fc:	d8c00117 	ldw	r3,4(sp)
  808900:	1c47883a 	add	r3,r3,r17
  808904:	d8c00115 	stw	r3,4(sp)
  808908:	1002671e 	bne	r2,zero,8092a8 <___vfiprintf_internal_r+0xdd8>
  80890c:	a0c00007 	ldb	r3,0(r20)
  808910:	d8000b15 	stw	zero,44(sp)
  808914:	9021883a 	mov	r16,r18
  808918:	183f181e 	bne	r3,zero,80857c <___vfiprintf_internal_r+0xac>
  80891c:	d8800c17 	ldw	r2,48(sp)
  808920:	1003831e 	bne	r2,zero,809730 <___vfiprintf_internal_r+0x1260>
  808924:	a880030b 	ldhu	r2,12(r21)
  808928:	1080100c 	andi	r2,r2,64
  80892c:	10039e1e 	bne	r2,zero,8097a8 <___vfiprintf_internal_r+0x12d8>
  808930:	d8800117 	ldw	r2,4(sp)
  808934:	dfc03017 	ldw	ra,192(sp)
  808938:	df002f17 	ldw	fp,188(sp)
  80893c:	ddc02e17 	ldw	r23,184(sp)
  808940:	dd802d17 	ldw	r22,180(sp)
  808944:	dd402c17 	ldw	r21,176(sp)
  808948:	dd002b17 	ldw	r20,172(sp)
  80894c:	dcc02a17 	ldw	r19,168(sp)
  808950:	dc802917 	ldw	r18,164(sp)
  808954:	dc402817 	ldw	r17,160(sp)
  808958:	dc002717 	ldw	r16,156(sp)
  80895c:	dec03104 	addi	sp,sp,196
  808960:	f800283a 	ret
  808964:	a80b883a 	mov	r5,r21
  808968:	b009883a 	mov	r4,r22
  80896c:	08032d40 	call	8032d4 <__swsetup_r>
  808970:	10038d1e 	bne	r2,zero,8097a8 <___vfiprintf_internal_r+0x12d8>
  808974:	a880030b 	ldhu	r2,12(r21)
  808978:	1080068c 	andi	r2,r2,26
  80897c:	10800298 	cmpnei	r2,r2,10
  808980:	103ef51e 	bne	r2,zero,808558 <___vfiprintf_internal_r+0x88>
  808984:	a880038f 	ldh	r2,14(r21)
  808988:	103ef316 	blt	r2,zero,808558 <___vfiprintf_internal_r+0x88>
  80898c:	d9c00417 	ldw	r7,16(sp)
  808990:	a00d883a 	mov	r6,r20
  808994:	a80b883a 	mov	r5,r21
  808998:	b009883a 	mov	r4,r22
  80899c:	08098000 	call	809800 <__sbprintf>
  8089a0:	d8800115 	stw	r2,4(sp)
  8089a4:	003fe206 	br	808930 <___vfiprintf_internal_r+0x460>
  8089a8:	6b400414 	ori	r13,r13,16
  8089ac:	6880080c 	andi	r2,r13,32
  8089b0:	10004726 	beq	r2,zero,808ad0 <___vfiprintf_internal_r+0x600>
  8089b4:	d8c00417 	ldw	r3,16(sp)
  8089b8:	00800044 	movi	r2,1
  8089bc:	1dc00017 	ldw	r23,0(r3)
  8089c0:	1f000117 	ldw	fp,4(r3)
  8089c4:	18c00204 	addi	r3,r3,8
  8089c8:	d8c00415 	stw	r3,16(sp)
  8089cc:	00000906 	br	8089f4 <___vfiprintf_internal_r+0x524>
  8089d0:	6b400414 	ori	r13,r13,16
  8089d4:	6880080c 	andi	r2,r13,32
  8089d8:	10003126 	beq	r2,zero,808aa0 <___vfiprintf_internal_r+0x5d0>
  8089dc:	d8c00417 	ldw	r3,16(sp)
  8089e0:	0005883a 	mov	r2,zero
  8089e4:	1dc00017 	ldw	r23,0(r3)
  8089e8:	1f000117 	ldw	fp,4(r3)
  8089ec:	18c00204 	addi	r3,r3,8
  8089f0:	d8c00415 	stw	r3,16(sp)
  8089f4:	d8000945 	stb	zero,37(sp)
  8089f8:	40ffffe0 	cmpeqi	r3,r8,-1
  8089fc:	001d883a 	mov	r14,zero
  808a00:	1800f21e 	bne	r3,zero,808dcc <___vfiprintf_internal_r+0x8fc>
  808a04:	04ffdfc4 	movi	r19,-129
  808a08:	6cc8703a 	and	r4,r13,r19
  808a0c:	bf06b03a 	or	r3,r23,fp
  808a10:	d9000015 	stw	r4,0(sp)
  808a14:	18024b1e 	bne	r3,zero,809344 <___vfiprintf_internal_r+0xe74>
  808a18:	4003091e 	bne	r8,zero,809640 <___vfiprintf_internal_r+0x1170>
  808a1c:	1002a61e 	bne	r2,zero,8094b8 <___vfiprintf_internal_r+0xfe8>
  808a20:	6f00004c 	andi	fp,r13,1
  808a24:	e002b826 	beq	fp,zero,809508 <___vfiprintf_internal_r+0x1038>
  808a28:	00800c04 	movi	r2,48
  808a2c:	d88016c5 	stb	r2,91(sp)
  808a30:	dcc016c4 	addi	r19,sp,91
  808a34:	00008e06 	br	808c70 <___vfiprintf_internal_r+0x7a0>
  808a38:	8d27c83a 	sub	r19,r17,r20
  808a3c:	8d3fb726 	beq	r17,r20,80891c <___vfiprintf_internal_r+0x44c>
  808a40:	d8c00c17 	ldw	r3,48(sp)
  808a44:	d8800b17 	ldw	r2,44(sp)
  808a48:	85000015 	stw	r20,0(r16)
  808a4c:	98c7883a 	add	r3,r19,r3
  808a50:	10800044 	addi	r2,r2,1
  808a54:	d8800b15 	stw	r2,44(sp)
  808a58:	84c00115 	stw	r19,4(r16)
  808a5c:	d8c00c15 	stw	r3,48(sp)
  808a60:	10800208 	cmpgei	r2,r2,8
  808a64:	1000061e 	bne	r2,zero,808a80 <___vfiprintf_internal_r+0x5b0>
  808a68:	84000204 	addi	r16,r16,8
  808a6c:	d8c00117 	ldw	r3,4(sp)
  808a70:	88800003 	ldbu	r2,0(r17)
  808a74:	1cc7883a 	add	r3,r3,r19
  808a78:	d8c00115 	stw	r3,4(sp)
  808a7c:	003ec906 	br	8085a4 <___vfiprintf_internal_r+0xd4>
  808a80:	18027f26 	beq	r3,zero,809480 <___vfiprintf_internal_r+0xfb0>
  808a84:	d9800a04 	addi	r6,sp,40
  808a88:	a80b883a 	mov	r5,r21
  808a8c:	b009883a 	mov	r4,r22
  808a90:	08083c40 	call	8083c4 <__sprint_r.part.0>
  808a94:	103fa31e 	bne	r2,zero,808924 <___vfiprintf_internal_r+0x454>
  808a98:	9021883a 	mov	r16,r18
  808a9c:	003ff306 	br	808a6c <___vfiprintf_internal_r+0x59c>
  808aa0:	d9000417 	ldw	r4,16(sp)
  808aa4:	6880040c 	andi	r2,r13,16
  808aa8:	20c00104 	addi	r3,r4,4
  808aac:	1002a31e 	bne	r2,zero,80953c <___vfiprintf_internal_r+0x106c>
  808ab0:	6880100c 	andi	r2,r13,64
  808ab4:	1002f626 	beq	r2,zero,809690 <___vfiprintf_internal_r+0x11c0>
  808ab8:	d8800417 	ldw	r2,16(sp)
  808abc:	0039883a 	mov	fp,zero
  808ac0:	d8c00415 	stw	r3,16(sp)
  808ac4:	15c0000b 	ldhu	r23,0(r2)
  808ac8:	0005883a 	mov	r2,zero
  808acc:	003fc906 	br	8089f4 <___vfiprintf_internal_r+0x524>
  808ad0:	d9000417 	ldw	r4,16(sp)
  808ad4:	6880040c 	andi	r2,r13,16
  808ad8:	20c00104 	addi	r3,r4,4
  808adc:	1002ab1e 	bne	r2,zero,80958c <___vfiprintf_internal_r+0x10bc>
  808ae0:	6880100c 	andi	r2,r13,64
  808ae4:	1002f026 	beq	r2,zero,8096a8 <___vfiprintf_internal_r+0x11d8>
  808ae8:	d8800417 	ldw	r2,16(sp)
  808aec:	0039883a 	mov	fp,zero
  808af0:	d8c00415 	stw	r3,16(sp)
  808af4:	15c0000b 	ldhu	r23,0(r2)
  808af8:	00800044 	movi	r2,1
  808afc:	003fbd06 	br	8089f4 <___vfiprintf_internal_r+0x524>
  808b00:	d8c00017 	ldw	r3,0(sp)
  808b04:	d8000b15 	stw	zero,44(sp)
  808b08:	1cc0010c 	andi	r19,r3,4
  808b0c:	98024a26 	beq	r19,zero,809438 <___vfiprintf_internal_r+0xf68>
  808b10:	8de1c83a 	sub	r16,r17,r23
  808b14:	0402480e 	bge	zero,r16,809438 <___vfiprintf_internal_r+0xf68>
  808b18:	900d883a 	mov	r6,r18
  808b1c:	80c00450 	cmplti	r3,r16,17
  808b20:	d9000b17 	ldw	r4,44(sp)
  808b24:	01c02074 	movhi	r7,129
  808b28:	1803171e 	bne	r3,zero,809788 <___vfiprintf_internal_r+0x12b8>
  808b2c:	39c22f04 	addi	r7,r7,2236
  808b30:	04c00404 	movi	r19,16
  808b34:	00000606 	br	808b50 <___vfiprintf_internal_r+0x680>
  808b38:	21400084 	addi	r5,r4,2
  808b3c:	31800204 	addi	r6,r6,8
  808b40:	1809883a 	mov	r4,r3
  808b44:	843ffc04 	addi	r16,r16,-16
  808b48:	80c00448 	cmpgei	r3,r16,17
  808b4c:	18001726 	beq	r3,zero,808bac <___vfiprintf_internal_r+0x6dc>
  808b50:	20c00044 	addi	r3,r4,1
  808b54:	10800404 	addi	r2,r2,16
  808b58:	31c00015 	stw	r7,0(r6)
  808b5c:	34c00115 	stw	r19,4(r6)
  808b60:	d8800c15 	stw	r2,48(sp)
  808b64:	d8c00b15 	stw	r3,44(sp)
  808b68:	19400208 	cmpgei	r5,r3,8
  808b6c:	283ff226 	beq	r5,zero,808b38 <___vfiprintf_internal_r+0x668>
  808b70:	d9800a04 	addi	r6,sp,40
  808b74:	a80b883a 	mov	r5,r21
  808b78:	b009883a 	mov	r4,r22
  808b7c:	10014f26 	beq	r2,zero,8090bc <___vfiprintf_internal_r+0xbec>
  808b80:	d9c00015 	stw	r7,0(sp)
  808b84:	08083c40 	call	8083c4 <__sprint_r.part.0>
  808b88:	103f661e 	bne	r2,zero,808924 <___vfiprintf_internal_r+0x454>
  808b8c:	d9000b17 	ldw	r4,44(sp)
  808b90:	843ffc04 	addi	r16,r16,-16
  808b94:	80c00448 	cmpgei	r3,r16,17
  808b98:	d8800c17 	ldw	r2,48(sp)
  808b9c:	d9c00017 	ldw	r7,0(sp)
  808ba0:	900d883a 	mov	r6,r18
  808ba4:	21400044 	addi	r5,r4,1
  808ba8:	183fe91e 	bne	r3,zero,808b50 <___vfiprintf_internal_r+0x680>
  808bac:	1405883a 	add	r2,r2,r16
  808bb0:	d9400b15 	stw	r5,44(sp)
  808bb4:	31c00015 	stw	r7,0(r6)
  808bb8:	34000115 	stw	r16,4(r6)
  808bbc:	d8800c15 	stw	r2,48(sp)
  808bc0:	29400210 	cmplti	r5,r5,8
  808bc4:	283f4b1e 	bne	r5,zero,8088f4 <___vfiprintf_internal_r+0x424>
  808bc8:	10021b26 	beq	r2,zero,809438 <___vfiprintf_internal_r+0xf68>
  808bcc:	d9800a04 	addi	r6,sp,40
  808bd0:	a80b883a 	mov	r5,r21
  808bd4:	b009883a 	mov	r4,r22
  808bd8:	08083c40 	call	8083c4 <__sprint_r.part.0>
  808bdc:	103f511e 	bne	r2,zero,808924 <___vfiprintf_internal_r+0x454>
  808be0:	d8800c17 	ldw	r2,48(sp)
  808be4:	003f4306 	br	8088f4 <___vfiprintf_internal_r+0x424>
  808be8:	080535c0 	call	80535c <__sinit>
  808bec:	003e4a06 	br	808518 <___vfiprintf_internal_r+0x48>
  808bf0:	29403fcc 	andi	r5,r5,255
  808bf4:	2802e01e 	bne	r5,zero,809778 <___vfiprintf_internal_r+0x12a8>
  808bf8:	6880080c 	andi	r2,r13,32
  808bfc:	10005d26 	beq	r2,zero,808d74 <___vfiprintf_internal_r+0x8a4>
  808c00:	d8c00417 	ldw	r3,16(sp)
  808c04:	18800117 	ldw	r2,4(r3)
  808c08:	1dc00017 	ldw	r23,0(r3)
  808c0c:	18c00204 	addi	r3,r3,8
  808c10:	d8c00415 	stw	r3,16(sp)
  808c14:	1039883a 	mov	fp,r2
  808c18:	10006216 	blt	r2,zero,808da4 <___vfiprintf_internal_r+0x8d4>
  808c1c:	40bfffd8 	cmpnei	r2,r8,-1
  808c20:	10000a26 	beq	r2,zero,808c4c <___vfiprintf_internal_r+0x77c>
  808c24:	00ffdfc4 	movi	r3,-129
  808c28:	bf04b03a 	or	r2,r23,fp
  808c2c:	db800943 	ldbu	r14,37(sp)
  808c30:	68da703a 	and	r13,r13,r3
  808c34:	1000061e 	bne	r2,zero,808c50 <___vfiprintf_internal_r+0x780>
  808c38:	4000081e 	bne	r8,zero,808c5c <___vfiprintf_internal_r+0x78c>
  808c3c:	0039883a 	mov	fp,zero
  808c40:	db400015 	stw	r13,0(sp)
  808c44:	9027883a 	mov	r19,r18
  808c48:	00000906 	br	808c70 <___vfiprintf_internal_r+0x7a0>
  808c4c:	db800943 	ldbu	r14,37(sp)
  808c50:	e000ee1e 	bne	fp,zero,80900c <___vfiprintf_internal_r+0xb3c>
  808c54:	b88002a8 	cmpgeui	r2,r23,10
  808c58:	1000ec1e 	bne	r2,zero,80900c <___vfiprintf_internal_r+0xb3c>
  808c5c:	bdc00c04 	addi	r23,r23,48
  808c60:	ddc016c5 	stb	r23,91(sp)
  808c64:	db400015 	stw	r13,0(sp)
  808c68:	07000044 	movi	fp,1
  808c6c:	dcc016c4 	addi	r19,sp,91
  808c70:	402f883a 	mov	r23,r8
  808c74:	4700010e 	bge	r8,fp,808c7c <___vfiprintf_internal_r+0x7ac>
  808c78:	e02f883a 	mov	r23,fp
  808c7c:	73803fcc 	andi	r14,r14,255
  808c80:	7380201c 	xori	r14,r14,128
  808c84:	73bfe004 	addi	r14,r14,-128
  808c88:	703ecc26 	beq	r14,zero,8087bc <___vfiprintf_internal_r+0x2ec>
  808c8c:	bdc00044 	addi	r23,r23,1
  808c90:	003eca06 	br	8087bc <___vfiprintf_internal_r+0x2ec>
  808c94:	a0800007 	ldb	r2,0(r20)
  808c98:	6b401014 	ori	r13,r13,64
  808c9c:	003e4d06 	br	8085d4 <___vfiprintf_internal_r+0x104>
  808ca0:	29403fcc 	andi	r5,r5,255
  808ca4:	2802b21e 	bne	r5,zero,809770 <___vfiprintf_internal_r+0x12a0>
  808ca8:	d9000417 	ldw	r4,16(sp)
  808cac:	6880080c 	andi	r2,r13,32
  808cb0:	20c00017 	ldw	r3,0(r4)
  808cb4:	21000104 	addi	r4,r4,4
  808cb8:	1002251e 	bne	r2,zero,809550 <___vfiprintf_internal_r+0x1080>
  808cbc:	6880040c 	andi	r2,r13,16
  808cc0:	1002531e 	bne	r2,zero,809610 <___vfiprintf_internal_r+0x1140>
  808cc4:	6b40100c 	andi	r13,r13,64
  808cc8:	68025126 	beq	r13,zero,809610 <___vfiprintf_internal_r+0x1140>
  808ccc:	d8800117 	ldw	r2,4(sp)
  808cd0:	d9000415 	stw	r4,16(sp)
  808cd4:	1880000d 	sth	r2,0(r3)
  808cd8:	003e2606 	br	808574 <___vfiprintf_internal_r+0xa4>
  808cdc:	a0800007 	ldb	r2,0(r20)
  808ce0:	10c01b18 	cmpnei	r3,r2,108
  808ce4:	18025a26 	beq	r3,zero,809650 <___vfiprintf_internal_r+0x1180>
  808ce8:	6b400414 	ori	r13,r13,16
  808cec:	003e3906 	br	8085d4 <___vfiprintf_internal_r+0x104>
  808cf0:	d8c00417 	ldw	r3,16(sp)
  808cf4:	d8000945 	stb	zero,37(sp)
  808cf8:	05c00044 	movi	r23,1
  808cfc:	18800017 	ldw	r2,0(r3)
  808d00:	18c00104 	addi	r3,r3,4
  808d04:	d8c00415 	stw	r3,16(sp)
  808d08:	d8800d05 	stb	r2,52(sp)
  808d0c:	07000044 	movi	fp,1
  808d10:	dcc00d04 	addi	r19,sp,52
  808d14:	003ea706 	br	8087b4 <___vfiprintf_internal_r+0x2e4>
  808d18:	29403fcc 	andi	r5,r5,255
  808d1c:	2802981e 	bne	r5,zero,809780 <___vfiprintf_internal_r+0x12b0>
  808d20:	00c02074 	movhi	r3,129
  808d24:	18c1a404 	addi	r3,r3,1680
  808d28:	d8c00515 	stw	r3,20(sp)
  808d2c:	68c0080c 	andi	r3,r13,32
  808d30:	18008326 	beq	r3,zero,808f40 <___vfiprintf_internal_r+0xa70>
  808d34:	d8c00417 	ldw	r3,16(sp)
  808d38:	1dc00017 	ldw	r23,0(r3)
  808d3c:	1f000117 	ldw	fp,4(r3)
  808d40:	18c00204 	addi	r3,r3,8
  808d44:	d8c00415 	stw	r3,16(sp)
  808d48:	68c0004c 	andi	r3,r13,1
  808d4c:	18000226 	beq	r3,zero,808d58 <___vfiprintf_internal_r+0x888>
  808d50:	bf06b03a 	or	r3,r23,fp
  808d54:	1801f31e 	bne	r3,zero,809524 <___vfiprintf_internal_r+0x1054>
  808d58:	00800084 	movi	r2,2
  808d5c:	003f2506 	br	8089f4 <___vfiprintf_internal_r+0x524>
  808d60:	29403fcc 	andi	r5,r5,255
  808d64:	2802801e 	bne	r5,zero,809768 <___vfiprintf_internal_r+0x1298>
  808d68:	6b400414 	ori	r13,r13,16
  808d6c:	6880080c 	andi	r2,r13,32
  808d70:	103fa31e 	bne	r2,zero,808c00 <___vfiprintf_internal_r+0x730>
  808d74:	d9000417 	ldw	r4,16(sp)
  808d78:	6880040c 	andi	r2,r13,16
  808d7c:	20c00104 	addi	r3,r4,4
  808d80:	1001f91e 	bne	r2,zero,809568 <___vfiprintf_internal_r+0x1098>
  808d84:	6880100c 	andi	r2,r13,64
  808d88:	10025226 	beq	r2,zero,8096d4 <___vfiprintf_internal_r+0x1204>
  808d8c:	d8800417 	ldw	r2,16(sp)
  808d90:	d8c00415 	stw	r3,16(sp)
  808d94:	15c0000f 	ldh	r23,0(r2)
  808d98:	b839d7fa 	srai	fp,r23,31
  808d9c:	e005883a 	mov	r2,fp
  808da0:	103f9e0e 	bge	r2,zero,808c1c <___vfiprintf_internal_r+0x74c>
  808da4:	b804c03a 	cmpne	r2,r23,zero
  808da8:	0739c83a 	sub	fp,zero,fp
  808dac:	e0b9c83a 	sub	fp,fp,r2
  808db0:	00800b44 	movi	r2,45
  808db4:	d8800945 	stb	r2,37(sp)
  808db8:	40ffffe0 	cmpeqi	r3,r8,-1
  808dbc:	05efc83a 	sub	r23,zero,r23
  808dc0:	03800b44 	movi	r14,45
  808dc4:	00800044 	movi	r2,1
  808dc8:	183f0e26 	beq	r3,zero,808a04 <___vfiprintf_internal_r+0x534>
  808dcc:	10c00060 	cmpeqi	r3,r2,1
  808dd0:	183f9f1e 	bne	r3,zero,808c50 <___vfiprintf_internal_r+0x780>
  808dd4:	108000a0 	cmpeqi	r2,r2,2
  808dd8:	9027883a 	mov	r19,r18
  808ddc:	1000a81e 	bne	r2,zero,809080 <___vfiprintf_internal_r+0xbb0>
  808de0:	e006977a 	slli	r3,fp,29
  808de4:	b804d0fa 	srli	r2,r23,3
  808de8:	e038d0fa 	srli	fp,fp,3
  808dec:	b90001cc 	andi	r4,r23,7
  808df0:	21000c04 	addi	r4,r4,48
  808df4:	18aeb03a 	or	r23,r3,r2
  808df8:	993fffc5 	stb	r4,-1(r19)
  808dfc:	bf04b03a 	or	r2,r23,fp
  808e00:	980b883a 	mov	r5,r19
  808e04:	9cffffc4 	addi	r19,r19,-1
  808e08:	103ff51e 	bne	r2,zero,808de0 <___vfiprintf_internal_r+0x910>
  808e0c:	6880004c 	andi	r2,r13,1
  808e10:	1000a726 	beq	r2,zero,8090b0 <___vfiprintf_internal_r+0xbe0>
  808e14:	21003fcc 	andi	r4,r4,255
  808e18:	2100201c 	xori	r4,r4,128
  808e1c:	213fe004 	addi	r4,r4,-128
  808e20:	20800c18 	cmpnei	r2,r4,48
  808e24:	1000a226 	beq	r2,zero,8090b0 <___vfiprintf_internal_r+0xbe0>
  808e28:	297fff84 	addi	r5,r5,-2
  808e2c:	00800c04 	movi	r2,48
  808e30:	98bfffc5 	stb	r2,-1(r19)
  808e34:	9179c83a 	sub	fp,r18,r5
  808e38:	db400015 	stw	r13,0(sp)
  808e3c:	2827883a 	mov	r19,r5
  808e40:	003f8b06 	br	808c70 <___vfiprintf_internal_r+0x7a0>
  808e44:	a0800007 	ldb	r2,0(r20)
  808e48:	6b402014 	ori	r13,r13,128
  808e4c:	003de106 	br	8085d4 <___vfiprintf_internal_r+0x104>
  808e50:	a0800007 	ldb	r2,0(r20)
  808e54:	a0c00044 	addi	r3,r20,1
  808e58:	11000aa0 	cmpeqi	r4,r2,42
  808e5c:	2002551e 	bne	r4,zero,8097b4 <___vfiprintf_internal_r+0x12e4>
  808e60:	113ff404 	addi	r4,r2,-48
  808e64:	21c002b0 	cmpltui	r7,r4,10
  808e68:	1829883a 	mov	r20,r3
  808e6c:	0011883a 	mov	r8,zero
  808e70:	383dd926 	beq	r7,zero,8085d8 <___vfiprintf_internal_r+0x108>
  808e74:	400690ba 	slli	r3,r8,2
  808e78:	a0800007 	ldb	r2,0(r20)
  808e7c:	a5000044 	addi	r20,r20,1
  808e80:	1a11883a 	add	r8,r3,r8
  808e84:	4211883a 	add	r8,r8,r8
  808e88:	4111883a 	add	r8,r8,r4
  808e8c:	113ff404 	addi	r4,r2,-48
  808e90:	20c002b0 	cmpltui	r3,r4,10
  808e94:	183ff71e 	bne	r3,zero,808e74 <___vfiprintf_internal_r+0x9a4>
  808e98:	003dcf06 	br	8085d8 <___vfiprintf_internal_r+0x108>
  808e9c:	a0800003 	ldbu	r2,0(r20)
  808ea0:	10803fcc 	andi	r2,r2,255
  808ea4:	1080201c 	xori	r2,r2,128
  808ea8:	6b400114 	ori	r13,r13,4
  808eac:	10bfe004 	addi	r2,r2,-128
  808eb0:	003dc806 	br	8085d4 <___vfiprintf_internal_r+0x104>
  808eb4:	a0800007 	ldb	r2,0(r20)
  808eb8:	01400044 	movi	r5,1
  808ebc:	01800ac4 	movi	r6,43
  808ec0:	003dc406 	br	8085d4 <___vfiprintf_internal_r+0x104>
  808ec4:	d8c00417 	ldw	r3,16(sp)
  808ec8:	a0800003 	ldbu	r2,0(r20)
  808ecc:	1c400017 	ldw	r17,0(r3)
  808ed0:	18c00104 	addi	r3,r3,4
  808ed4:	8801b916 	blt	r17,zero,8095bc <___vfiprintf_internal_r+0x10ec>
  808ed8:	d8c00415 	stw	r3,16(sp)
  808edc:	10803fcc 	andi	r2,r2,255
  808ee0:	1080201c 	xori	r2,r2,128
  808ee4:	10bfe004 	addi	r2,r2,-128
  808ee8:	003dba06 	br	8085d4 <___vfiprintf_internal_r+0x104>
  808eec:	a0800007 	ldb	r2,0(r20)
  808ef0:	6b400054 	ori	r13,r13,1
  808ef4:	003db706 	br	8085d4 <___vfiprintf_internal_r+0x104>
  808ef8:	30c03fcc 	andi	r3,r6,255
  808efc:	18c0201c 	xori	r3,r3,128
  808f00:	18ffe004 	addi	r3,r3,-128
  808f04:	a0800003 	ldbu	r2,0(r20)
  808f08:	183ff41e 	bne	r3,zero,808edc <___vfiprintf_internal_r+0xa0c>
  808f0c:	10803fcc 	andi	r2,r2,255
  808f10:	1080201c 	xori	r2,r2,128
  808f14:	01400044 	movi	r5,1
  808f18:	01800804 	movi	r6,32
  808f1c:	10bfe004 	addi	r2,r2,-128
  808f20:	003dac06 	br	8085d4 <___vfiprintf_internal_r+0x104>
  808f24:	29403fcc 	andi	r5,r5,255
  808f28:	28020a1e 	bne	r5,zero,809754 <___vfiprintf_internal_r+0x1284>
  808f2c:	00c02074 	movhi	r3,129
  808f30:	18c1a904 	addi	r3,r3,1700
  808f34:	d8c00515 	stw	r3,20(sp)
  808f38:	68c0080c 	andi	r3,r13,32
  808f3c:	183f7d1e 	bne	r3,zero,808d34 <___vfiprintf_internal_r+0x864>
  808f40:	d9400417 	ldw	r5,16(sp)
  808f44:	68c0040c 	andi	r3,r13,16
  808f48:	29000104 	addi	r4,r5,4
  808f4c:	18018b1e 	bne	r3,zero,80957c <___vfiprintf_internal_r+0x10ac>
  808f50:	68c0100c 	andi	r3,r13,64
  808f54:	1801da26 	beq	r3,zero,8096c0 <___vfiprintf_internal_r+0x11f0>
  808f58:	d8c00417 	ldw	r3,16(sp)
  808f5c:	0039883a 	mov	fp,zero
  808f60:	d9000415 	stw	r4,16(sp)
  808f64:	1dc0000b 	ldhu	r23,0(r3)
  808f68:	003f7706 	br	808d48 <___vfiprintf_internal_r+0x878>
  808f6c:	d8800417 	ldw	r2,16(sp)
  808f70:	d8000945 	stb	zero,37(sp)
  808f74:	14c00017 	ldw	r19,0(r2)
  808f78:	10c00104 	addi	r3,r2,4
  808f7c:	9801bb26 	beq	r19,zero,80966c <___vfiprintf_internal_r+0x119c>
  808f80:	40bfffe0 	cmpeqi	r2,r8,-1
  808f84:	1001901e 	bne	r2,zero,8095c8 <___vfiprintf_internal_r+0x10f8>
  808f88:	400d883a 	mov	r6,r8
  808f8c:	000b883a 	mov	r5,zero
  808f90:	9809883a 	mov	r4,r19
  808f94:	d8c00315 	stw	r3,12(sp)
  808f98:	db400215 	stw	r13,8(sp)
  808f9c:	da000015 	stw	r8,0(sp)
  808fa0:	08067a00 	call	8067a0 <memchr>
  808fa4:	da000017 	ldw	r8,0(sp)
  808fa8:	db400217 	ldw	r13,8(sp)
  808fac:	d8c00317 	ldw	r3,12(sp)
  808fb0:	1001e426 	beq	r2,zero,809744 <___vfiprintf_internal_r+0x1274>
  808fb4:	14f9c83a 	sub	fp,r2,r19
  808fb8:	e02f883a 	mov	r23,fp
  808fbc:	d8c00415 	stw	r3,16(sp)
  808fc0:	003dfc06 	br	8087b4 <___vfiprintf_internal_r+0x2e4>
  808fc4:	a0800007 	ldb	r2,0(r20)
  808fc8:	6b400814 	ori	r13,r13,32
  808fcc:	003d8106 	br	8085d4 <___vfiprintf_internal_r+0x104>
  808fd0:	d8c00417 	ldw	r3,16(sp)
  808fd4:	00800c04 	movi	r2,48
  808fd8:	d8800985 	stb	r2,38(sp)
  808fdc:	00801e04 	movi	r2,120
  808fe0:	01002074 	movhi	r4,129
  808fe4:	d88009c5 	stb	r2,39(sp)
  808fe8:	18800104 	addi	r2,r3,4
  808fec:	d8800415 	stw	r2,16(sp)
  808ff0:	2081a904 	addi	r2,r4,1700
  808ff4:	d8800515 	stw	r2,20(sp)
  808ff8:	1dc00017 	ldw	r23,0(r3)
  808ffc:	0039883a 	mov	fp,zero
  809000:	6b400094 	ori	r13,r13,2
  809004:	00800084 	movi	r2,2
  809008:	003e7a06 	br	8089f4 <___vfiprintf_internal_r+0x524>
  80900c:	9027883a 	mov	r19,r18
  809010:	b809883a 	mov	r4,r23
  809014:	e00b883a 	mov	r5,fp
  809018:	01800284 	movi	r6,10
  80901c:	000f883a 	mov	r7,zero
  809020:	db800315 	stw	r14,12(sp)
  809024:	da000215 	stw	r8,8(sp)
  809028:	db400015 	stw	r13,0(sp)
  80902c:	080ad180 	call	80ad18 <__umoddi3>
  809030:	10800c04 	addi	r2,r2,48
  809034:	b809883a 	mov	r4,r23
  809038:	e00b883a 	mov	r5,fp
  80903c:	98bfffc5 	stb	r2,-1(r19)
  809040:	01800284 	movi	r6,10
  809044:	000f883a 	mov	r7,zero
  809048:	080a6fc0 	call	80a6fc <__udivdi3>
  80904c:	e009883a 	mov	r4,fp
  809050:	b80b883a 	mov	r5,r23
  809054:	db400017 	ldw	r13,0(sp)
  809058:	da000217 	ldw	r8,8(sp)
  80905c:	db800317 	ldw	r14,12(sp)
  809060:	9cffffc4 	addi	r19,r19,-1
  809064:	102f883a 	mov	r23,r2
  809068:	1839883a 	mov	fp,r3
  80906c:	203fe81e 	bne	r4,zero,809010 <___vfiprintf_internal_r+0xb40>
  809070:	294002a8 	cmpgeui	r5,r5,10
  809074:	283fe61e 	bne	r5,zero,809010 <___vfiprintf_internal_r+0xb40>
  809078:	94f9c83a 	sub	fp,r18,r19
  80907c:	003efc06 	br	808c70 <___vfiprintf_internal_r+0x7a0>
  809080:	d9000517 	ldw	r4,20(sp)
  809084:	b88003cc 	andi	r2,r23,15
  809088:	e006973a 	slli	r3,fp,28
  80908c:	b82ed13a 	srli	r23,r23,4
  809090:	2085883a 	add	r2,r4,r2
  809094:	10800003 	ldbu	r2,0(r2)
  809098:	e038d13a 	srli	fp,fp,4
  80909c:	1deeb03a 	or	r23,r3,r23
  8090a0:	98bfffc5 	stb	r2,-1(r19)
  8090a4:	bf04b03a 	or	r2,r23,fp
  8090a8:	9cffffc4 	addi	r19,r19,-1
  8090ac:	103ff41e 	bne	r2,zero,809080 <___vfiprintf_internal_r+0xbb0>
  8090b0:	94f9c83a 	sub	fp,r18,r19
  8090b4:	db400015 	stw	r13,0(sp)
  8090b8:	003eed06 	br	808c70 <___vfiprintf_internal_r+0x7a0>
  8090bc:	01400044 	movi	r5,1
  8090c0:	0009883a 	mov	r4,zero
  8090c4:	900d883a 	mov	r6,r18
  8090c8:	003e9e06 	br	808b44 <___vfiprintf_internal_r+0x674>
  8090cc:	8dc7c83a 	sub	r3,r17,r23
  8090d0:	00fdf20e 	bge	zero,r3,80889c <___vfiprintf_internal_r+0x3cc>
  8090d4:	19c00450 	cmplti	r7,r3,17
  8090d8:	3801ae1e 	bne	r7,zero,809794 <___vfiprintf_internal_r+0x12c4>
  8090dc:	01c02074 	movhi	r7,129
  8090e0:	39c22b04 	addi	r7,r7,2220
  8090e4:	03400404 	movi	r13,16
  8090e8:	00000606 	br	809104 <___vfiprintf_internal_r+0xc34>
  8090ec:	23800084 	addi	r14,r4,2
  8090f0:	84000204 	addi	r16,r16,8
  8090f4:	2809883a 	mov	r4,r5
  8090f8:	18fffc04 	addi	r3,r3,-16
  8090fc:	19400448 	cmpgei	r5,r3,17
  809100:	28001c26 	beq	r5,zero,809174 <___vfiprintf_internal_r+0xca4>
  809104:	21400044 	addi	r5,r4,1
  809108:	10800404 	addi	r2,r2,16
  80910c:	81c00015 	stw	r7,0(r16)
  809110:	83400115 	stw	r13,4(r16)
  809114:	d8800c15 	stw	r2,48(sp)
  809118:	d9400b15 	stw	r5,44(sp)
  80911c:	29800208 	cmpgei	r6,r5,8
  809120:	303ff226 	beq	r6,zero,8090ec <___vfiprintf_internal_r+0xc1c>
  809124:	d9800a04 	addi	r6,sp,40
  809128:	a80b883a 	mov	r5,r21
  80912c:	b009883a 	mov	r4,r22
  809130:	10006326 	beq	r2,zero,8092c0 <___vfiprintf_internal_r+0xdf0>
  809134:	d9c00615 	stw	r7,24(sp)
  809138:	d8c00315 	stw	r3,12(sp)
  80913c:	da000215 	stw	r8,8(sp)
  809140:	08083c40 	call	8083c4 <__sprint_r.part.0>
  809144:	103df71e 	bne	r2,zero,808924 <___vfiprintf_internal_r+0x454>
  809148:	d8c00317 	ldw	r3,12(sp)
  80914c:	d9000b17 	ldw	r4,44(sp)
  809150:	d8800c17 	ldw	r2,48(sp)
  809154:	18fffc04 	addi	r3,r3,-16
  809158:	19400448 	cmpgei	r5,r3,17
  80915c:	d9c00617 	ldw	r7,24(sp)
  809160:	da000217 	ldw	r8,8(sp)
  809164:	9021883a 	mov	r16,r18
  809168:	23800044 	addi	r14,r4,1
  80916c:	03400404 	movi	r13,16
  809170:	283fe41e 	bne	r5,zero,809104 <___vfiprintf_internal_r+0xc34>
  809174:	83400204 	addi	r13,r16,8
  809178:	10c5883a 	add	r2,r2,r3
  80917c:	80c00115 	stw	r3,4(r16)
  809180:	81c00015 	stw	r7,0(r16)
  809184:	d8800c15 	stw	r2,48(sp)
  809188:	db800b15 	stw	r14,44(sp)
  80918c:	70c00208 	cmpgei	r3,r14,8
  809190:	1800df26 	beq	r3,zero,809510 <___vfiprintf_internal_r+0x1040>
  809194:	10015826 	beq	r2,zero,8096f8 <___vfiprintf_internal_r+0x1228>
  809198:	d9800a04 	addi	r6,sp,40
  80919c:	a80b883a 	mov	r5,r21
  8091a0:	b009883a 	mov	r4,r22
  8091a4:	da000215 	stw	r8,8(sp)
  8091a8:	08083c40 	call	8083c4 <__sprint_r.part.0>
  8091ac:	103ddd1e 	bne	r2,zero,808924 <___vfiprintf_internal_r+0x454>
  8091b0:	da000217 	ldw	r8,8(sp)
  8091b4:	d9000b17 	ldw	r4,44(sp)
  8091b8:	d8800c17 	ldw	r2,48(sp)
  8091bc:	4711c83a 	sub	r8,r8,fp
  8091c0:	d9801904 	addi	r6,sp,100
  8091c4:	21400044 	addi	r5,r4,1
  8091c8:	9021883a 	mov	r16,r18
  8091cc:	023db50e 	bge	zero,r8,8088a4 <___vfiprintf_internal_r+0x3d4>
  8091d0:	40c00450 	cmplti	r3,r8,17
  8091d4:	01c02074 	movhi	r7,129
  8091d8:	1801441e 	bne	r3,zero,8096ec <___vfiprintf_internal_r+0x121c>
  8091dc:	39c22b04 	addi	r7,r7,2220
  8091e0:	03400404 	movi	r13,16
  8091e4:	00000606 	br	809200 <___vfiprintf_internal_r+0xd30>
  8091e8:	21400084 	addi	r5,r4,2
  8091ec:	84000204 	addi	r16,r16,8
  8091f0:	1809883a 	mov	r4,r3
  8091f4:	423ffc04 	addi	r8,r8,-16
  8091f8:	40c00448 	cmpgei	r3,r8,17
  8091fc:	18001a26 	beq	r3,zero,809268 <___vfiprintf_internal_r+0xd98>
  809200:	20c00044 	addi	r3,r4,1
  809204:	10800404 	addi	r2,r2,16
  809208:	81c00015 	stw	r7,0(r16)
  80920c:	83400115 	stw	r13,4(r16)
  809210:	d8800c15 	stw	r2,48(sp)
  809214:	d8c00b15 	stw	r3,44(sp)
  809218:	19400208 	cmpgei	r5,r3,8
  80921c:	283ff226 	beq	r5,zero,8091e8 <___vfiprintf_internal_r+0xd18>
  809220:	d9800a04 	addi	r6,sp,40
  809224:	a80b883a 	mov	r5,r21
  809228:	b009883a 	mov	r4,r22
  80922c:	10001a26 	beq	r2,zero,809298 <___vfiprintf_internal_r+0xdc8>
  809230:	d9c00315 	stw	r7,12(sp)
  809234:	da000215 	stw	r8,8(sp)
  809238:	08083c40 	call	8083c4 <__sprint_r.part.0>
  80923c:	103db91e 	bne	r2,zero,808924 <___vfiprintf_internal_r+0x454>
  809240:	da000217 	ldw	r8,8(sp)
  809244:	d9000b17 	ldw	r4,44(sp)
  809248:	d8800c17 	ldw	r2,48(sp)
  80924c:	423ffc04 	addi	r8,r8,-16
  809250:	40c00448 	cmpgei	r3,r8,17
  809254:	d9c00317 	ldw	r7,12(sp)
  809258:	9021883a 	mov	r16,r18
  80925c:	21400044 	addi	r5,r4,1
  809260:	03400404 	movi	r13,16
  809264:	183fe61e 	bne	r3,zero,809200 <___vfiprintf_internal_r+0xd30>
  809268:	81000204 	addi	r4,r16,8
  80926c:	1205883a 	add	r2,r2,r8
  809270:	81c00015 	stw	r7,0(r16)
  809274:	82000115 	stw	r8,4(r16)
  809278:	d8800c15 	stw	r2,48(sp)
  80927c:	d9400b15 	stw	r5,44(sp)
  809280:	28c00208 	cmpgei	r3,r5,8
  809284:	1800721e 	bne	r3,zero,809450 <___vfiprintf_internal_r+0xf80>
  809288:	29400044 	addi	r5,r5,1
  80928c:	21800204 	addi	r6,r4,8
  809290:	2021883a 	mov	r16,r4
  809294:	003d8306 	br	8088a4 <___vfiprintf_internal_r+0x3d4>
  809298:	01400044 	movi	r5,1
  80929c:	0009883a 	mov	r4,zero
  8092a0:	9021883a 	mov	r16,r18
  8092a4:	003fd306 	br	8091f4 <___vfiprintf_internal_r+0xd24>
  8092a8:	d9800a04 	addi	r6,sp,40
  8092ac:	a80b883a 	mov	r5,r21
  8092b0:	b009883a 	mov	r4,r22
  8092b4:	08083c40 	call	8083c4 <__sprint_r.part.0>
  8092b8:	103d9426 	beq	r2,zero,80890c <___vfiprintf_internal_r+0x43c>
  8092bc:	003d9906 	br	808924 <___vfiprintf_internal_r+0x454>
  8092c0:	03800044 	movi	r14,1
  8092c4:	0009883a 	mov	r4,zero
  8092c8:	9021883a 	mov	r16,r18
  8092cc:	003f8a06 	br	8090f8 <___vfiprintf_internal_r+0xc28>
  8092d0:	10006e26 	beq	r2,zero,80948c <___vfiprintf_internal_r+0xfbc>
  8092d4:	d9800a04 	addi	r6,sp,40
  8092d8:	a80b883a 	mov	r5,r21
  8092dc:	b009883a 	mov	r4,r22
  8092e0:	da000615 	stw	r8,24(sp)
  8092e4:	db400315 	stw	r13,12(sp)
  8092e8:	db800215 	stw	r14,8(sp)
  8092ec:	08083c40 	call	8083c4 <__sprint_r.part.0>
  8092f0:	103d8c1e 	bne	r2,zero,808924 <___vfiprintf_internal_r+0x454>
  8092f4:	d9000b17 	ldw	r4,44(sp)
  8092f8:	d8800c17 	ldw	r2,48(sp)
  8092fc:	da000617 	ldw	r8,24(sp)
  809300:	db400317 	ldw	r13,12(sp)
  809304:	db800217 	ldw	r14,8(sp)
  809308:	d9801904 	addi	r6,sp,100
  80930c:	21400044 	addi	r5,r4,1
  809310:	9021883a 	mov	r16,r18
  809314:	003d4606 	br	808830 <___vfiprintf_internal_r+0x360>
  809318:	d8800984 	addi	r2,sp,38
  80931c:	d8801715 	stw	r2,92(sp)
  809320:	00800084 	movi	r2,2
  809324:	d8801815 	stw	r2,96(sp)
  809328:	d9801904 	addi	r6,sp,100
  80932c:	01400044 	movi	r5,1
  809330:	3021883a 	mov	r16,r6
  809334:	2809883a 	mov	r4,r5
  809338:	21400044 	addi	r5,r4,1
  80933c:	81800204 	addi	r6,r16,8
  809340:	003d5406 	br	808894 <___vfiprintf_internal_r+0x3c4>
  809344:	db400017 	ldw	r13,0(sp)
  809348:	003ea006 	br	808dcc <___vfiprintf_internal_r+0x8fc>
  80934c:	19400450 	cmplti	r5,r3,17
  809350:	01c02074 	movhi	r7,129
  809354:	2801011e 	bne	r5,zero,80975c <___vfiprintf_internal_r+0x128c>
  809358:	39c22f04 	addi	r7,r7,2236
  80935c:	03c00404 	movi	r15,16
  809360:	00000706 	br	809380 <___vfiprintf_internal_r+0xeb0>
  809364:	27c00084 	addi	ra,r4,2
  809368:	84000204 	addi	r16,r16,8
  80936c:	3009883a 	mov	r4,r6
  809370:	18fffc04 	addi	r3,r3,-16
  809374:	19400448 	cmpgei	r5,r3,17
  809378:	28002026 	beq	r5,zero,8093fc <___vfiprintf_internal_r+0xf2c>
  80937c:	21800044 	addi	r6,r4,1
  809380:	10800404 	addi	r2,r2,16
  809384:	81c00015 	stw	r7,0(r16)
  809388:	83c00115 	stw	r15,4(r16)
  80938c:	d8800c15 	stw	r2,48(sp)
  809390:	d9800b15 	stw	r6,44(sp)
  809394:	31400208 	cmpgei	r5,r6,8
  809398:	283ff226 	beq	r5,zero,809364 <___vfiprintf_internal_r+0xe94>
  80939c:	d9800a04 	addi	r6,sp,40
  8093a0:	a80b883a 	mov	r5,r21
  8093a4:	b009883a 	mov	r4,r22
  8093a8:	10001f26 	beq	r2,zero,809428 <___vfiprintf_internal_r+0xf58>
  8093ac:	d9c00815 	stw	r7,32(sp)
  8093b0:	d8c00715 	stw	r3,28(sp)
  8093b4:	da000615 	stw	r8,24(sp)
  8093b8:	db400315 	stw	r13,12(sp)
  8093bc:	db800215 	stw	r14,8(sp)
  8093c0:	08083c40 	call	8083c4 <__sprint_r.part.0>
  8093c4:	103d571e 	bne	r2,zero,808924 <___vfiprintf_internal_r+0x454>
  8093c8:	d8c00717 	ldw	r3,28(sp)
  8093cc:	d9000b17 	ldw	r4,44(sp)
  8093d0:	d8800c17 	ldw	r2,48(sp)
  8093d4:	18fffc04 	addi	r3,r3,-16
  8093d8:	19400448 	cmpgei	r5,r3,17
  8093dc:	d9c00817 	ldw	r7,32(sp)
  8093e0:	da000617 	ldw	r8,24(sp)
  8093e4:	db400317 	ldw	r13,12(sp)
  8093e8:	db800217 	ldw	r14,8(sp)
  8093ec:	9021883a 	mov	r16,r18
  8093f0:	27c00044 	addi	ra,r4,1
  8093f4:	03c00404 	movi	r15,16
  8093f8:	283fe01e 	bne	r5,zero,80937c <___vfiprintf_internal_r+0xeac>
  8093fc:	10c5883a 	add	r2,r2,r3
  809400:	80c00115 	stw	r3,4(r16)
  809404:	81c00015 	stw	r7,0(r16)
  809408:	d8800c15 	stw	r2,48(sp)
  80940c:	dfc00b15 	stw	ra,44(sp)
  809410:	f8c00208 	cmpgei	r3,ra,8
  809414:	18002b1e 	bne	r3,zero,8094c4 <___vfiprintf_internal_r+0xff4>
  809418:	84000204 	addi	r16,r16,8
  80941c:	f9400044 	addi	r5,ra,1
  809420:	f809883a 	mov	r4,ra
  809424:	003cf206 	br	8087f0 <___vfiprintf_internal_r+0x320>
  809428:	0009883a 	mov	r4,zero
  80942c:	07c00044 	movi	ra,1
  809430:	9021883a 	mov	r16,r18
  809434:	003fce06 	br	809370 <___vfiprintf_internal_r+0xea0>
  809438:	8dc0010e 	bge	r17,r23,809440 <___vfiprintf_internal_r+0xf70>
  80943c:	b823883a 	mov	r17,r23
  809440:	d8800117 	ldw	r2,4(sp)
  809444:	1445883a 	add	r2,r2,r17
  809448:	d8800115 	stw	r2,4(sp)
  80944c:	003d2f06 	br	80890c <___vfiprintf_internal_r+0x43c>
  809450:	10007326 	beq	r2,zero,809620 <___vfiprintf_internal_r+0x1150>
  809454:	d9800a04 	addi	r6,sp,40
  809458:	a80b883a 	mov	r5,r21
  80945c:	b009883a 	mov	r4,r22
  809460:	08083c40 	call	8083c4 <__sprint_r.part.0>
  809464:	103d2f1e 	bne	r2,zero,808924 <___vfiprintf_internal_r+0x454>
  809468:	d9400b17 	ldw	r5,44(sp)
  80946c:	d8800c17 	ldw	r2,48(sp)
  809470:	d9801904 	addi	r6,sp,100
  809474:	29400044 	addi	r5,r5,1
  809478:	9021883a 	mov	r16,r18
  80947c:	003d0906 	br	8088a4 <___vfiprintf_internal_r+0x3d4>
  809480:	d8000b15 	stw	zero,44(sp)
  809484:	9021883a 	mov	r16,r18
  809488:	003d7806 	br	808a6c <___vfiprintf_internal_r+0x59c>
  80948c:	7000441e 	bne	r14,zero,8095a0 <___vfiprintf_internal_r+0x10d0>
  809490:	0009883a 	mov	r4,zero
  809494:	d9801904 	addi	r6,sp,100
  809498:	01400044 	movi	r5,1
  80949c:	9021883a 	mov	r16,r18
  8094a0:	003cfc06 	br	808894 <___vfiprintf_internal_r+0x3c4>
  8094a4:	d9801904 	addi	r6,sp,100
  8094a8:	01400044 	movi	r5,1
  8094ac:	0009883a 	mov	r4,zero
  8094b0:	9021883a 	mov	r16,r18
  8094b4:	003cf706 	br	808894 <___vfiprintf_internal_r+0x3c4>
  8094b8:	0039883a 	mov	fp,zero
  8094bc:	9027883a 	mov	r19,r18
  8094c0:	003deb06 	br	808c70 <___vfiprintf_internal_r+0x7a0>
  8094c4:	10004a26 	beq	r2,zero,8095f0 <___vfiprintf_internal_r+0x1120>
  8094c8:	d9800a04 	addi	r6,sp,40
  8094cc:	a80b883a 	mov	r5,r21
  8094d0:	b009883a 	mov	r4,r22
  8094d4:	da000615 	stw	r8,24(sp)
  8094d8:	db400315 	stw	r13,12(sp)
  8094dc:	db800215 	stw	r14,8(sp)
  8094e0:	08083c40 	call	8083c4 <__sprint_r.part.0>
  8094e4:	103d0f1e 	bne	r2,zero,808924 <___vfiprintf_internal_r+0x454>
  8094e8:	d9000b17 	ldw	r4,44(sp)
  8094ec:	d8800c17 	ldw	r2,48(sp)
  8094f0:	da000617 	ldw	r8,24(sp)
  8094f4:	db400317 	ldw	r13,12(sp)
  8094f8:	db800217 	ldw	r14,8(sp)
  8094fc:	9021883a 	mov	r16,r18
  809500:	21400044 	addi	r5,r4,1
  809504:	003cba06 	br	8087f0 <___vfiprintf_internal_r+0x320>
  809508:	9027883a 	mov	r19,r18
  80950c:	003dd806 	br	808c70 <___vfiprintf_internal_r+0x7a0>
  809510:	71400044 	addi	r5,r14,1
  809514:	69800204 	addi	r6,r13,8
  809518:	7009883a 	mov	r4,r14
  80951c:	6821883a 	mov	r16,r13
  809520:	003cde06 	br	80889c <___vfiprintf_internal_r+0x3cc>
  809524:	00c00c04 	movi	r3,48
  809528:	d88009c5 	stb	r2,39(sp)
  80952c:	d8c00985 	stb	r3,38(sp)
  809530:	6b400094 	ori	r13,r13,2
  809534:	00800084 	movi	r2,2
  809538:	003d2e06 	br	8089f4 <___vfiprintf_internal_r+0x524>
  80953c:	25c00017 	ldw	r23,0(r4)
  809540:	0039883a 	mov	fp,zero
  809544:	d8c00415 	stw	r3,16(sp)
  809548:	0005883a 	mov	r2,zero
  80954c:	003d2906 	br	8089f4 <___vfiprintf_internal_r+0x524>
  809550:	d9400117 	ldw	r5,4(sp)
  809554:	d9000415 	stw	r4,16(sp)
  809558:	2805d7fa 	srai	r2,r5,31
  80955c:	19400015 	stw	r5,0(r3)
  809560:	18800115 	stw	r2,4(r3)
  809564:	003c0306 	br	808574 <___vfiprintf_internal_r+0xa4>
  809568:	25c00017 	ldw	r23,0(r4)
  80956c:	d8c00415 	stw	r3,16(sp)
  809570:	b839d7fa 	srai	fp,r23,31
  809574:	e005883a 	mov	r2,fp
  809578:	003da706 	br	808c18 <___vfiprintf_internal_r+0x748>
  80957c:	2dc00017 	ldw	r23,0(r5)
  809580:	0039883a 	mov	fp,zero
  809584:	d9000415 	stw	r4,16(sp)
  809588:	003def06 	br	808d48 <___vfiprintf_internal_r+0x878>
  80958c:	25c00017 	ldw	r23,0(r4)
  809590:	0039883a 	mov	fp,zero
  809594:	d8c00415 	stw	r3,16(sp)
  809598:	00800044 	movi	r2,1
  80959c:	003d1506 	br	8089f4 <___vfiprintf_internal_r+0x524>
  8095a0:	d8800984 	addi	r2,sp,38
  8095a4:	d8801715 	stw	r2,92(sp)
  8095a8:	00800084 	movi	r2,2
  8095ac:	d8801815 	stw	r2,96(sp)
  8095b0:	dc001904 	addi	r16,sp,100
  8095b4:	01000044 	movi	r4,1
  8095b8:	003f5f06 	br	809338 <___vfiprintf_internal_r+0xe68>
  8095bc:	0463c83a 	sub	r17,zero,r17
  8095c0:	d8c00415 	stw	r3,16(sp)
  8095c4:	003e3606 	br	808ea0 <___vfiprintf_internal_r+0x9d0>
  8095c8:	9809883a 	mov	r4,r19
  8095cc:	d8c00215 	stw	r3,8(sp)
  8095d0:	db400015 	stw	r13,0(sp)
  8095d4:	08010740 	call	801074 <strlen>
  8095d8:	d8c00217 	ldw	r3,8(sp)
  8095dc:	db400017 	ldw	r13,0(sp)
  8095e0:	1039883a 	mov	fp,r2
  8095e4:	102f883a 	mov	r23,r2
  8095e8:	d8c00415 	stw	r3,16(sp)
  8095ec:	003c7106 	br	8087b4 <___vfiprintf_internal_r+0x2e4>
  8095f0:	d8c00947 	ldb	r3,37(sp)
  8095f4:	1800451e 	bne	r3,zero,80970c <___vfiprintf_internal_r+0x123c>
  8095f8:	703f471e 	bne	r14,zero,809318 <___vfiprintf_internal_r+0xe48>
  8095fc:	0009883a 	mov	r4,zero
  809600:	d9801904 	addi	r6,sp,100
  809604:	01400044 	movi	r5,1
  809608:	9021883a 	mov	r16,r18
  80960c:	003ca306 	br	80889c <___vfiprintf_internal_r+0x3cc>
  809610:	d8800117 	ldw	r2,4(sp)
  809614:	18800015 	stw	r2,0(r3)
  809618:	d9000415 	stw	r4,16(sp)
  80961c:	003bd506 	br	808574 <___vfiprintf_internal_r+0xa4>
  809620:	00c00044 	movi	r3,1
  809624:	e005883a 	mov	r2,fp
  809628:	dcc01715 	stw	r19,92(sp)
  80962c:	df001815 	stw	fp,96(sp)
  809630:	df000c15 	stw	fp,48(sp)
  809634:	d8c00b15 	stw	r3,44(sp)
  809638:	d9801904 	addi	r6,sp,100
  80963c:	003ca806 	br	8088e0 <___vfiprintf_internal_r+0x410>
  809640:	10c00060 	cmpeqi	r3,r2,1
  809644:	db400017 	ldw	r13,0(sp)
  809648:	183de226 	beq	r3,zero,808dd4 <___vfiprintf_internal_r+0x904>
  80964c:	003d8306 	br	808c5c <___vfiprintf_internal_r+0x78c>
  809650:	a0800043 	ldbu	r2,1(r20)
  809654:	6b400814 	ori	r13,r13,32
  809658:	a5000044 	addi	r20,r20,1
  80965c:	10803fcc 	andi	r2,r2,255
  809660:	1080201c 	xori	r2,r2,128
  809664:	10bfe004 	addi	r2,r2,-128
  809668:	003bda06 	br	8085d4 <___vfiprintf_internal_r+0x104>
  80966c:	408001f0 	cmpltui	r2,r8,7
  809670:	4039883a 	mov	fp,r8
  809674:	1000011e 	bne	r2,zero,80967c <___vfiprintf_internal_r+0x11ac>
  809678:	07000184 	movi	fp,6
  80967c:	04c02074 	movhi	r19,129
  809680:	e02f883a 	mov	r23,fp
  809684:	d8c00415 	stw	r3,16(sp)
  809688:	9cc1ae04 	addi	r19,r19,1720
  80968c:	003c4906 	br	8087b4 <___vfiprintf_internal_r+0x2e4>
  809690:	d8800417 	ldw	r2,16(sp)
  809694:	0039883a 	mov	fp,zero
  809698:	d8c00415 	stw	r3,16(sp)
  80969c:	15c00017 	ldw	r23,0(r2)
  8096a0:	0005883a 	mov	r2,zero
  8096a4:	003cd306 	br	8089f4 <___vfiprintf_internal_r+0x524>
  8096a8:	d8800417 	ldw	r2,16(sp)
  8096ac:	0039883a 	mov	fp,zero
  8096b0:	d8c00415 	stw	r3,16(sp)
  8096b4:	15c00017 	ldw	r23,0(r2)
  8096b8:	00800044 	movi	r2,1
  8096bc:	003ccd06 	br	8089f4 <___vfiprintf_internal_r+0x524>
  8096c0:	d8c00417 	ldw	r3,16(sp)
  8096c4:	0039883a 	mov	fp,zero
  8096c8:	d9000415 	stw	r4,16(sp)
  8096cc:	1dc00017 	ldw	r23,0(r3)
  8096d0:	003d9d06 	br	808d48 <___vfiprintf_internal_r+0x878>
  8096d4:	d8800417 	ldw	r2,16(sp)
  8096d8:	d8c00415 	stw	r3,16(sp)
  8096dc:	15c00017 	ldw	r23,0(r2)
  8096e0:	b839d7fa 	srai	fp,r23,31
  8096e4:	e005883a 	mov	r2,fp
  8096e8:	003d4b06 	br	808c18 <___vfiprintf_internal_r+0x748>
  8096ec:	3009883a 	mov	r4,r6
  8096f0:	39c22b04 	addi	r7,r7,2220
  8096f4:	003edd06 	br	80926c <___vfiprintf_internal_r+0xd9c>
  8096f8:	d9801904 	addi	r6,sp,100
  8096fc:	01400044 	movi	r5,1
  809700:	0009883a 	mov	r4,zero
  809704:	9021883a 	mov	r16,r18
  809708:	003c6406 	br	80889c <___vfiprintf_internal_r+0x3cc>
  80970c:	d8800944 	addi	r2,sp,37
  809710:	d8801715 	stw	r2,92(sp)
  809714:	00800044 	movi	r2,1
  809718:	d8801815 	stw	r2,96(sp)
  80971c:	d9801904 	addi	r6,sp,100
  809720:	01400044 	movi	r5,1
  809724:	003c3e06 	br	808820 <___vfiprintf_internal_r+0x350>
  809728:	d9800945 	stb	r6,37(sp)
  80972c:	003c1b06 	br	80879c <___vfiprintf_internal_r+0x2cc>
  809730:	d9800a04 	addi	r6,sp,40
  809734:	a80b883a 	mov	r5,r21
  809738:	b009883a 	mov	r4,r22
  80973c:	08083c40 	call	8083c4 <__sprint_r.part.0>
  809740:	003c7806 	br	808924 <___vfiprintf_internal_r+0x454>
  809744:	402f883a 	mov	r23,r8
  809748:	d8c00415 	stw	r3,16(sp)
  80974c:	4039883a 	mov	fp,r8
  809750:	003c1806 	br	8087b4 <___vfiprintf_internal_r+0x2e4>
  809754:	d9800945 	stb	r6,37(sp)
  809758:	003df406 	br	808f2c <___vfiprintf_internal_r+0xa5c>
  80975c:	303f883a 	mov	ra,r6
  809760:	39c22f04 	addi	r7,r7,2236
  809764:	003f2506 	br	8093fc <___vfiprintf_internal_r+0xf2c>
  809768:	d9800945 	stb	r6,37(sp)
  80976c:	003d7e06 	br	808d68 <___vfiprintf_internal_r+0x898>
  809770:	d9800945 	stb	r6,37(sp)
  809774:	003d4c06 	br	808ca8 <___vfiprintf_internal_r+0x7d8>
  809778:	d9800945 	stb	r6,37(sp)
  80977c:	003d1e06 	br	808bf8 <___vfiprintf_internal_r+0x728>
  809780:	d9800945 	stb	r6,37(sp)
  809784:	003d6606 	br	808d20 <___vfiprintf_internal_r+0x850>
  809788:	21400044 	addi	r5,r4,1
  80978c:	39c22f04 	addi	r7,r7,2236
  809790:	003d0606 	br	808bac <___vfiprintf_internal_r+0x6dc>
  809794:	01c02074 	movhi	r7,129
  809798:	301b883a 	mov	r13,r6
  80979c:	281d883a 	mov	r14,r5
  8097a0:	39c22b04 	addi	r7,r7,2220
  8097a4:	003e7406 	br	809178 <___vfiprintf_internal_r+0xca8>
  8097a8:	00bfffc4 	movi	r2,-1
  8097ac:	d8800115 	stw	r2,4(sp)
  8097b0:	003c5f06 	br	808930 <___vfiprintf_internal_r+0x460>
  8097b4:	d8800417 	ldw	r2,16(sp)
  8097b8:	12000017 	ldw	r8,0(r2)
  8097bc:	11000104 	addi	r4,r2,4
  8097c0:	4000010e 	bge	r8,zero,8097c8 <___vfiprintf_internal_r+0x12f8>
  8097c4:	023fffc4 	movi	r8,-1
  8097c8:	a0800043 	ldbu	r2,1(r20)
  8097cc:	d9000415 	stw	r4,16(sp)
  8097d0:	1829883a 	mov	r20,r3
  8097d4:	10803fcc 	andi	r2,r2,255
  8097d8:	1080201c 	xori	r2,r2,128
  8097dc:	10bfe004 	addi	r2,r2,-128
  8097e0:	003b7c06 	br	8085d4 <___vfiprintf_internal_r+0x104>

008097e4 <__vfiprintf_internal>:
  8097e4:	00c02074 	movhi	r3,129
  8097e8:	2005883a 	mov	r2,r4
  8097ec:	1909dc17 	ldw	r4,10096(r3)
  8097f0:	300f883a 	mov	r7,r6
  8097f4:	280d883a 	mov	r6,r5
  8097f8:	100b883a 	mov	r5,r2
  8097fc:	08084d01 	jmpi	8084d0 <___vfiprintf_internal_r>

00809800 <__sbprintf>:
  809800:	2880030b 	ldhu	r2,12(r5)
  809804:	2b001917 	ldw	r12,100(r5)
  809808:	2ac0038b 	ldhu	r11,14(r5)
  80980c:	2a800717 	ldw	r10,28(r5)
  809810:	2a400917 	ldw	r9,36(r5)
  809814:	defee204 	addi	sp,sp,-1144
  809818:	da001a04 	addi	r8,sp,104
  80981c:	00c10004 	movi	r3,1024
  809820:	dc011a15 	stw	r16,1128(sp)
  809824:	10bfff4c 	andi	r2,r2,65533
  809828:	2821883a 	mov	r16,r5
  80982c:	d80b883a 	mov	r5,sp
  809830:	dc811c15 	stw	r18,1136(sp)
  809834:	dc411b15 	stw	r17,1132(sp)
  809838:	dfc11d15 	stw	ra,1140(sp)
  80983c:	2025883a 	mov	r18,r4
  809840:	d880030d 	sth	r2,12(sp)
  809844:	db001915 	stw	r12,100(sp)
  809848:	dac0038d 	sth	r11,14(sp)
  80984c:	da800715 	stw	r10,28(sp)
  809850:	da400915 	stw	r9,36(sp)
  809854:	da000015 	stw	r8,0(sp)
  809858:	da000415 	stw	r8,16(sp)
  80985c:	d8c00215 	stw	r3,8(sp)
  809860:	d8c00515 	stw	r3,20(sp)
  809864:	d8000615 	stw	zero,24(sp)
  809868:	08084d00 	call	8084d0 <___vfiprintf_internal_r>
  80986c:	1023883a 	mov	r17,r2
  809870:	10000d0e 	bge	r2,zero,8098a8 <__sbprintf+0xa8>
  809874:	d880030b 	ldhu	r2,12(sp)
  809878:	1080100c 	andi	r2,r2,64
  80987c:	10000326 	beq	r2,zero,80988c <__sbprintf+0x8c>
  809880:	8080030b 	ldhu	r2,12(r16)
  809884:	10801014 	ori	r2,r2,64
  809888:	8080030d 	sth	r2,12(r16)
  80988c:	8805883a 	mov	r2,r17
  809890:	dfc11d17 	ldw	ra,1140(sp)
  809894:	dc811c17 	ldw	r18,1136(sp)
  809898:	dc411b17 	ldw	r17,1132(sp)
  80989c:	dc011a17 	ldw	r16,1128(sp)
  8098a0:	dec11e04 	addi	sp,sp,1144
  8098a4:	f800283a 	ret
  8098a8:	d80b883a 	mov	r5,sp
  8098ac:	9009883a 	mov	r4,r18
  8098b0:	0804fc80 	call	804fc8 <_fflush_r>
  8098b4:	103fef26 	beq	r2,zero,809874 <__sbprintf+0x74>
  8098b8:	047fffc4 	movi	r17,-1
  8098bc:	003fed06 	br	809874 <__sbprintf+0x74>

008098c0 <_write_r>:
  8098c0:	2807883a 	mov	r3,r5
  8098c4:	defffe04 	addi	sp,sp,-8
  8098c8:	dc000015 	stw	r16,0(sp)
  8098cc:	300b883a 	mov	r5,r6
  8098d0:	00802074 	movhi	r2,129
  8098d4:	380d883a 	mov	r6,r7
  8098d8:	2021883a 	mov	r16,r4
  8098dc:	1809883a 	mov	r4,r3
  8098e0:	dfc00115 	stw	ra,4(sp)
  8098e4:	1010e215 	stw	zero,17288(r2)
  8098e8:	080e8100 	call	80e810 <write>
  8098ec:	10ffffd8 	cmpnei	r3,r2,-1
  8098f0:	18000426 	beq	r3,zero,809904 <_write_r+0x44>
  8098f4:	dfc00117 	ldw	ra,4(sp)
  8098f8:	dc000017 	ldw	r16,0(sp)
  8098fc:	dec00204 	addi	sp,sp,8
  809900:	f800283a 	ret
  809904:	00c02074 	movhi	r3,129
  809908:	18d0e217 	ldw	r3,17288(r3)
  80990c:	183ff926 	beq	r3,zero,8098f4 <_write_r+0x34>
  809910:	80c00015 	stw	r3,0(r16)
  809914:	dfc00117 	ldw	ra,4(sp)
  809918:	dc000017 	ldw	r16,0(sp)
  80991c:	dec00204 	addi	sp,sp,8
  809920:	f800283a 	ret

00809924 <_close_r>:
  809924:	defffe04 	addi	sp,sp,-8
  809928:	dc000015 	stw	r16,0(sp)
  80992c:	00802074 	movhi	r2,129
  809930:	2021883a 	mov	r16,r4
  809934:	2809883a 	mov	r4,r5
  809938:	dfc00115 	stw	ra,4(sp)
  80993c:	1010e215 	stw	zero,17288(r2)
  809940:	080dc440 	call	80dc44 <close>
  809944:	10ffffd8 	cmpnei	r3,r2,-1
  809948:	18000426 	beq	r3,zero,80995c <_close_r+0x38>
  80994c:	dfc00117 	ldw	ra,4(sp)
  809950:	dc000017 	ldw	r16,0(sp)
  809954:	dec00204 	addi	sp,sp,8
  809958:	f800283a 	ret
  80995c:	00c02074 	movhi	r3,129
  809960:	18d0e217 	ldw	r3,17288(r3)
  809964:	183ff926 	beq	r3,zero,80994c <_close_r+0x28>
  809968:	80c00015 	stw	r3,0(r16)
  80996c:	dfc00117 	ldw	ra,4(sp)
  809970:	dc000017 	ldw	r16,0(sp)
  809974:	dec00204 	addi	sp,sp,8
  809978:	f800283a 	ret

0080997c <__assert_func>:
  80997c:	00802074 	movhi	r2,129
  809980:	1209dc17 	ldw	r8,10096(r2)
  809984:	defffc04 	addi	sp,sp,-16
  809988:	3807883a 	mov	r3,r7
  80998c:	3005883a 	mov	r2,r6
  809990:	dfc00315 	stw	ra,12(sp)
  809994:	42400317 	ldw	r9,12(r8)
  809998:	200f883a 	mov	r7,r4
  80999c:	2811883a 	mov	r8,r5
  8099a0:	180d883a 	mov	r6,r3
  8099a4:	10000a26 	beq	r2,zero,8099d0 <__assert_func+0x54>
  8099a8:	00c02074 	movhi	r3,129
  8099ac:	18c23304 	addi	r3,r3,2252
  8099b0:	01402074 	movhi	r5,129
  8099b4:	29423704 	addi	r5,r5,2268
  8099b8:	4809883a 	mov	r4,r9
  8099bc:	d8c00115 	stw	r3,4(sp)
  8099c0:	da000015 	stw	r8,0(sp)
  8099c4:	d8800215 	stw	r2,8(sp)
  8099c8:	0809be00 	call	809be0 <fiprintf>
  8099cc:	080a3cc0 	call	80a3cc <abort>
  8099d0:	00c02074 	movhi	r3,129
  8099d4:	18c15b04 	addi	r3,r3,1388
  8099d8:	1805883a 	mov	r2,r3
  8099dc:	003ff406 	br	8099b0 <__assert_func+0x34>

008099e0 <__assert>:
  8099e0:	deffff04 	addi	sp,sp,-4
  8099e4:	300f883a 	mov	r7,r6
  8099e8:	000d883a 	mov	r6,zero
  8099ec:	dfc00015 	stw	ra,0(sp)
  8099f0:	080997c0 	call	80997c <__assert_func>

008099f4 <_calloc_r>:
  8099f4:	defffe04 	addi	sp,sp,-8
  8099f8:	dc000015 	stw	r16,0(sp)
  8099fc:	2021883a 	mov	r16,r4
  809a00:	2809883a 	mov	r4,r5
  809a04:	300b883a 	mov	r5,r6
  809a08:	dfc00115 	stw	ra,4(sp)
  809a0c:	0800f080 	call	800f08 <__mulsi3>
  809a10:	8009883a 	mov	r4,r16
  809a14:	100b883a 	mov	r5,r2
  809a18:	0805fc00 	call	805fc0 <_malloc_r>
  809a1c:	1009883a 	mov	r4,r2
  809a20:	10000c26 	beq	r2,zero,809a54 <_calloc_r+0x60>
  809a24:	11bfff17 	ldw	r6,-4(r2)
  809a28:	00bfff04 	movi	r2,-4
  809a2c:	308c703a 	and	r6,r6,r2
  809a30:	31bfff04 	addi	r6,r6,-4
  809a34:	30800968 	cmpgeui	r2,r6,37
  809a38:	1000151e 	bne	r2,zero,809a90 <_calloc_r+0x9c>
  809a3c:	30800530 	cmpltui	r2,r6,20
  809a40:	10000926 	beq	r2,zero,809a68 <_calloc_r+0x74>
  809a44:	2005883a 	mov	r2,r4
  809a48:	10000015 	stw	zero,0(r2)
  809a4c:	10000115 	stw	zero,4(r2)
  809a50:	10000215 	stw	zero,8(r2)
  809a54:	2005883a 	mov	r2,r4
  809a58:	dfc00117 	ldw	ra,4(sp)
  809a5c:	dc000017 	ldw	r16,0(sp)
  809a60:	dec00204 	addi	sp,sp,8
  809a64:	f800283a 	ret
  809a68:	20000015 	stw	zero,0(r4)
  809a6c:	20000115 	stw	zero,4(r4)
  809a70:	30800728 	cmpgeui	r2,r6,28
  809a74:	10000a26 	beq	r2,zero,809aa0 <_calloc_r+0xac>
  809a78:	20000215 	stw	zero,8(r4)
  809a7c:	20000315 	stw	zero,12(r4)
  809a80:	31800920 	cmpeqi	r6,r6,36
  809a84:	3000081e 	bne	r6,zero,809aa8 <_calloc_r+0xb4>
  809a88:	20800404 	addi	r2,r4,16
  809a8c:	003fee06 	br	809a48 <_calloc_r+0x54>
  809a90:	000b883a 	mov	r5,zero
  809a94:	0806aa00 	call	806aa0 <memset>
  809a98:	1009883a 	mov	r4,r2
  809a9c:	003fed06 	br	809a54 <_calloc_r+0x60>
  809aa0:	20800204 	addi	r2,r4,8
  809aa4:	003fe806 	br	809a48 <_calloc_r+0x54>
  809aa8:	20000415 	stw	zero,16(r4)
  809aac:	20800604 	addi	r2,r4,24
  809ab0:	20000515 	stw	zero,20(r4)
  809ab4:	003fe406 	br	809a48 <_calloc_r+0x54>

00809ab8 <_fclose_r>:
  809ab8:	defffc04 	addi	sp,sp,-16
  809abc:	dfc00315 	stw	ra,12(sp)
  809ac0:	dc800215 	stw	r18,8(sp)
  809ac4:	dc400115 	stw	r17,4(sp)
  809ac8:	dc000015 	stw	r16,0(sp)
  809acc:	28000726 	beq	r5,zero,809aec <_fclose_r+0x34>
  809ad0:	2821883a 	mov	r16,r5
  809ad4:	2023883a 	mov	r17,r4
  809ad8:	20000226 	beq	r4,zero,809ae4 <_fclose_r+0x2c>
  809adc:	20800e17 	ldw	r2,56(r4)
  809ae0:	10002726 	beq	r2,zero,809b80 <_fclose_r+0xc8>
  809ae4:	8080030f 	ldh	r2,12(r16)
  809ae8:	1000081e 	bne	r2,zero,809b0c <_fclose_r+0x54>
  809aec:	0025883a 	mov	r18,zero
  809af0:	9005883a 	mov	r2,r18
  809af4:	dfc00317 	ldw	ra,12(sp)
  809af8:	dc800217 	ldw	r18,8(sp)
  809afc:	dc400117 	ldw	r17,4(sp)
  809b00:	dc000017 	ldw	r16,0(sp)
  809b04:	dec00404 	addi	sp,sp,16
  809b08:	f800283a 	ret
  809b0c:	800b883a 	mov	r5,r16
  809b10:	8809883a 	mov	r4,r17
  809b14:	0804da00 	call	804da0 <__sflush_r>
  809b18:	80c00b17 	ldw	r3,44(r16)
  809b1c:	1025883a 	mov	r18,r2
  809b20:	18000426 	beq	r3,zero,809b34 <_fclose_r+0x7c>
  809b24:	81400717 	ldw	r5,28(r16)
  809b28:	8809883a 	mov	r4,r17
  809b2c:	183ee83a 	callr	r3
  809b30:	10001716 	blt	r2,zero,809b90 <_fclose_r+0xd8>
  809b34:	8080030b 	ldhu	r2,12(r16)
  809b38:	1080200c 	andi	r2,r2,128
  809b3c:	1000181e 	bne	r2,zero,809ba0 <_fclose_r+0xe8>
  809b40:	81400c17 	ldw	r5,48(r16)
  809b44:	28000526 	beq	r5,zero,809b5c <_fclose_r+0xa4>
  809b48:	80801004 	addi	r2,r16,64
  809b4c:	28800226 	beq	r5,r2,809b58 <_fclose_r+0xa0>
  809b50:	8809883a 	mov	r4,r17
  809b54:	08054c00 	call	8054c0 <_free_r>
  809b58:	80000c15 	stw	zero,48(r16)
  809b5c:	81401117 	ldw	r5,68(r16)
  809b60:	28000326 	beq	r5,zero,809b70 <_fclose_r+0xb8>
  809b64:	8809883a 	mov	r4,r17
  809b68:	08054c00 	call	8054c0 <_free_r>
  809b6c:	80001115 	stw	zero,68(r16)
  809b70:	080536c0 	call	80536c <__sfp_lock_acquire>
  809b74:	8000030d 	sth	zero,12(r16)
  809b78:	08053700 	call	805370 <__sfp_lock_release>
  809b7c:	003fdc06 	br	809af0 <_fclose_r+0x38>
  809b80:	080535c0 	call	80535c <__sinit>
  809b84:	8080030f 	ldh	r2,12(r16)
  809b88:	103fd826 	beq	r2,zero,809aec <_fclose_r+0x34>
  809b8c:	003fdf06 	br	809b0c <_fclose_r+0x54>
  809b90:	8080030b 	ldhu	r2,12(r16)
  809b94:	04bfffc4 	movi	r18,-1
  809b98:	1080200c 	andi	r2,r2,128
  809b9c:	103fe826 	beq	r2,zero,809b40 <_fclose_r+0x88>
  809ba0:	81400417 	ldw	r5,16(r16)
  809ba4:	8809883a 	mov	r4,r17
  809ba8:	08054c00 	call	8054c0 <_free_r>
  809bac:	003fe406 	br	809b40 <_fclose_r+0x88>

00809bb0 <fclose>:
  809bb0:	00802074 	movhi	r2,129
  809bb4:	200b883a 	mov	r5,r4
  809bb8:	1109dc17 	ldw	r4,10096(r2)
  809bbc:	0809ab81 	jmpi	809ab8 <_fclose_r>

00809bc0 <_fiprintf_r>:
  809bc0:	defffe04 	addi	sp,sp,-8
  809bc4:	dfc00015 	stw	ra,0(sp)
  809bc8:	d9c00115 	stw	r7,4(sp)
  809bcc:	d9c00104 	addi	r7,sp,4
  809bd0:	080a1380 	call	80a138 <_vfiprintf_r>
  809bd4:	dfc00017 	ldw	ra,0(sp)
  809bd8:	dec00204 	addi	sp,sp,8
  809bdc:	f800283a 	ret

00809be0 <fiprintf>:
  809be0:	defffd04 	addi	sp,sp,-12
  809be4:	2005883a 	mov	r2,r4
  809be8:	dfc00015 	stw	ra,0(sp)
  809bec:	d9800115 	stw	r6,4(sp)
  809bf0:	d9c00215 	stw	r7,8(sp)
  809bf4:	00c02074 	movhi	r3,129
  809bf8:	1909dc17 	ldw	r4,10096(r3)
  809bfc:	280d883a 	mov	r6,r5
  809c00:	d9c00104 	addi	r7,sp,4
  809c04:	100b883a 	mov	r5,r2
  809c08:	080a1380 	call	80a138 <_vfiprintf_r>
  809c0c:	dfc00017 	ldw	ra,0(sp)
  809c10:	dec00304 	addi	sp,sp,12
  809c14:	f800283a 	ret

00809c18 <__fputwc>:
  809c18:	defff904 	addi	sp,sp,-28
  809c1c:	dcc00415 	stw	r19,16(sp)
  809c20:	dc800315 	stw	r18,12(sp)
  809c24:	dc000115 	stw	r16,4(sp)
  809c28:	dfc00615 	stw	ra,24(sp)
  809c2c:	dd000515 	stw	r20,20(sp)
  809c30:	dc400215 	stw	r17,8(sp)
  809c34:	2025883a 	mov	r18,r4
  809c38:	2827883a 	mov	r19,r5
  809c3c:	3021883a 	mov	r16,r6
  809c40:	0809f440 	call	809f44 <__locale_mb_cur_max>
  809c44:	10800058 	cmpnei	r2,r2,1
  809c48:	1000071e 	bne	r2,zero,809c68 <__fputwc+0x50>
  809c4c:	98bfffc4 	addi	r2,r19,-1
  809c50:	10803fe8 	cmpgeui	r2,r2,255
  809c54:	1000041e 	bne	r2,zero,809c68 <__fputwc+0x50>
  809c58:	980b883a 	mov	r5,r19
  809c5c:	dcc000c5 	stb	r19,3(sp)
  809c60:	05000044 	movi	r20,1
  809c64:	00000a06 	br	809c90 <__fputwc+0x78>
  809c68:	81c01704 	addi	r7,r16,92
  809c6c:	980d883a 	mov	r6,r19
  809c70:	d94000c4 	addi	r5,sp,3
  809c74:	9009883a 	mov	r4,r18
  809c78:	080a29c0 	call	80a29c <_wcrtomb_r>
  809c7c:	1029883a 	mov	r20,r2
  809c80:	10bfffd8 	cmpnei	r2,r2,-1
  809c84:	10003926 	beq	r2,zero,809d6c <__fputwc+0x154>
  809c88:	a0001f26 	beq	r20,zero,809d08 <__fputwc+0xf0>
  809c8c:	d94000c3 	ldbu	r5,3(sp)
  809c90:	0023883a 	mov	r17,zero
  809c94:	00000a06 	br	809cc0 <__fputwc+0xa8>
  809c98:	80800017 	ldw	r2,0(r16)
  809c9c:	11400005 	stb	r5,0(r2)
  809ca0:	80c00017 	ldw	r3,0(r16)
  809ca4:	18c00044 	addi	r3,r3,1
  809ca8:	80c00015 	stw	r3,0(r16)
  809cac:	8c400044 	addi	r17,r17,1
  809cb0:	d88000c4 	addi	r2,sp,3
  809cb4:	1447883a 	add	r3,r2,r17
  809cb8:	8d00132e 	bgeu	r17,r20,809d08 <__fputwc+0xf0>
  809cbc:	19400003 	ldbu	r5,0(r3)
  809cc0:	80c00217 	ldw	r3,8(r16)
  809cc4:	18ffffc4 	addi	r3,r3,-1
  809cc8:	80c00215 	stw	r3,8(r16)
  809ccc:	183ff20e 	bge	r3,zero,809c98 <__fputwc+0x80>
  809cd0:	80800617 	ldw	r2,24(r16)
  809cd4:	18801616 	blt	r3,r2,809d30 <__fputwc+0x118>
  809cd8:	80800017 	ldw	r2,0(r16)
  809cdc:	11400005 	stb	r5,0(r2)
  809ce0:	80800017 	ldw	r2,0(r16)
  809ce4:	10c00003 	ldbu	r3,0(r2)
  809ce8:	10800044 	addi	r2,r2,1
  809cec:	18c002a0 	cmpeqi	r3,r3,10
  809cf0:	1800181e 	bne	r3,zero,809d54 <__fputwc+0x13c>
  809cf4:	80800015 	stw	r2,0(r16)
  809cf8:	8c400044 	addi	r17,r17,1
  809cfc:	d88000c4 	addi	r2,sp,3
  809d00:	1447883a 	add	r3,r2,r17
  809d04:	8d3fed36 	bltu	r17,r20,809cbc <__fputwc+0xa4>
  809d08:	9829883a 	mov	r20,r19
  809d0c:	a005883a 	mov	r2,r20
  809d10:	dfc00617 	ldw	ra,24(sp)
  809d14:	dd000517 	ldw	r20,20(sp)
  809d18:	dcc00417 	ldw	r19,16(sp)
  809d1c:	dc800317 	ldw	r18,12(sp)
  809d20:	dc400217 	ldw	r17,8(sp)
  809d24:	dc000117 	ldw	r16,4(sp)
  809d28:	dec00704 	addi	sp,sp,28
  809d2c:	f800283a 	ret
  809d30:	29403fcc 	andi	r5,r5,255
  809d34:	800d883a 	mov	r6,r16
  809d38:	9009883a 	mov	r4,r18
  809d3c:	080a13c0 	call	80a13c <__swbuf_r>
  809d40:	10ffffe0 	cmpeqi	r3,r2,-1
  809d44:	18c03fcc 	andi	r3,r3,255
  809d48:	183fd826 	beq	r3,zero,809cac <__fputwc+0x94>
  809d4c:	053fffc4 	movi	r20,-1
  809d50:	003fee06 	br	809d0c <__fputwc+0xf4>
  809d54:	800d883a 	mov	r6,r16
  809d58:	01400284 	movi	r5,10
  809d5c:	9009883a 	mov	r4,r18
  809d60:	080a13c0 	call	80a13c <__swbuf_r>
  809d64:	10ffffe0 	cmpeqi	r3,r2,-1
  809d68:	003ff606 	br	809d44 <__fputwc+0x12c>
  809d6c:	8080030b 	ldhu	r2,12(r16)
  809d70:	10801014 	ori	r2,r2,64
  809d74:	8080030d 	sth	r2,12(r16)
  809d78:	003fe406 	br	809d0c <__fputwc+0xf4>

00809d7c <_fputwc_r>:
  809d7c:	3080030b 	ldhu	r2,12(r6)
  809d80:	10c8000c 	andi	r3,r2,8192
  809d84:	1800051e 	bne	r3,zero,809d9c <_fputwc_r+0x20>
  809d88:	30c01917 	ldw	r3,100(r6)
  809d8c:	10880014 	ori	r2,r2,8192
  809d90:	3080030d 	sth	r2,12(r6)
  809d94:	18880014 	ori	r2,r3,8192
  809d98:	30801915 	stw	r2,100(r6)
  809d9c:	0809c181 	jmpi	809c18 <__fputwc>

00809da0 <fputwc>:
  809da0:	defffc04 	addi	sp,sp,-16
  809da4:	00802074 	movhi	r2,129
  809da8:	dc000215 	stw	r16,8(sp)
  809dac:	1409dc17 	ldw	r16,10096(r2)
  809db0:	dfc00315 	stw	ra,12(sp)
  809db4:	280d883a 	mov	r6,r5
  809db8:	200b883a 	mov	r5,r4
  809dbc:	80000226 	beq	r16,zero,809dc8 <fputwc+0x28>
  809dc0:	80800e17 	ldw	r2,56(r16)
  809dc4:	10000d26 	beq	r2,zero,809dfc <fputwc+0x5c>
  809dc8:	3080030b 	ldhu	r2,12(r6)
  809dcc:	10c8000c 	andi	r3,r2,8192
  809dd0:	1800051e 	bne	r3,zero,809de8 <fputwc+0x48>
  809dd4:	30c01917 	ldw	r3,100(r6)
  809dd8:	10880014 	ori	r2,r2,8192
  809ddc:	3080030d 	sth	r2,12(r6)
  809de0:	18880014 	ori	r2,r3,8192
  809de4:	30801915 	stw	r2,100(r6)
  809de8:	8009883a 	mov	r4,r16
  809dec:	dfc00317 	ldw	ra,12(sp)
  809df0:	dc000217 	ldw	r16,8(sp)
  809df4:	dec00404 	addi	sp,sp,16
  809df8:	0809c181 	jmpi	809c18 <__fputwc>
  809dfc:	d9000015 	stw	r4,0(sp)
  809e00:	8009883a 	mov	r4,r16
  809e04:	d9800115 	stw	r6,4(sp)
  809e08:	080535c0 	call	80535c <__sinit>
  809e0c:	d9800117 	ldw	r6,4(sp)
  809e10:	d9400017 	ldw	r5,0(sp)
  809e14:	003fec06 	br	809dc8 <fputwc+0x28>

00809e18 <_fstat_r>:
  809e18:	2807883a 	mov	r3,r5
  809e1c:	defffe04 	addi	sp,sp,-8
  809e20:	dc000015 	stw	r16,0(sp)
  809e24:	00802074 	movhi	r2,129
  809e28:	300b883a 	mov	r5,r6
  809e2c:	2021883a 	mov	r16,r4
  809e30:	1809883a 	mov	r4,r3
  809e34:	dfc00115 	stw	ra,4(sp)
  809e38:	1010e215 	stw	zero,17288(r2)
  809e3c:	080ddc00 	call	80ddc0 <fstat>
  809e40:	10ffffd8 	cmpnei	r3,r2,-1
  809e44:	18000426 	beq	r3,zero,809e58 <_fstat_r+0x40>
  809e48:	dfc00117 	ldw	ra,4(sp)
  809e4c:	dc000017 	ldw	r16,0(sp)
  809e50:	dec00204 	addi	sp,sp,8
  809e54:	f800283a 	ret
  809e58:	00c02074 	movhi	r3,129
  809e5c:	18d0e217 	ldw	r3,17288(r3)
  809e60:	183ff926 	beq	r3,zero,809e48 <_fstat_r+0x30>
  809e64:	80c00015 	stw	r3,0(r16)
  809e68:	dfc00117 	ldw	ra,4(sp)
  809e6c:	dc000017 	ldw	r16,0(sp)
  809e70:	dec00204 	addi	sp,sp,8
  809e74:	f800283a 	ret

00809e78 <_isatty_r>:
  809e78:	defffe04 	addi	sp,sp,-8
  809e7c:	dc000015 	stw	r16,0(sp)
  809e80:	00802074 	movhi	r2,129
  809e84:	2021883a 	mov	r16,r4
  809e88:	2809883a 	mov	r4,r5
  809e8c:	dfc00115 	stw	ra,4(sp)
  809e90:	1010e215 	stw	zero,17288(r2)
  809e94:	080ded80 	call	80ded8 <isatty>
  809e98:	10ffffd8 	cmpnei	r3,r2,-1
  809e9c:	18000426 	beq	r3,zero,809eb0 <_isatty_r+0x38>
  809ea0:	dfc00117 	ldw	ra,4(sp)
  809ea4:	dc000017 	ldw	r16,0(sp)
  809ea8:	dec00204 	addi	sp,sp,8
  809eac:	f800283a 	ret
  809eb0:	00c02074 	movhi	r3,129
  809eb4:	18d0e217 	ldw	r3,17288(r3)
  809eb8:	183ff926 	beq	r3,zero,809ea0 <_isatty_r+0x28>
  809ebc:	80c00015 	stw	r3,0(r16)
  809ec0:	dfc00117 	ldw	ra,4(sp)
  809ec4:	dc000017 	ldw	r16,0(sp)
  809ec8:	dec00204 	addi	sp,sp,8
  809ecc:	f800283a 	ret

00809ed0 <_setlocale_r>:
  809ed0:	30001626 	beq	r6,zero,809f2c <_setlocale_r+0x5c>
  809ed4:	01402074 	movhi	r5,129
  809ed8:	defffe04 	addi	sp,sp,-8
  809edc:	29424404 	addi	r5,r5,2320
  809ee0:	3009883a 	mov	r4,r6
  809ee4:	dc000015 	stw	r16,0(sp)
  809ee8:	dfc00115 	stw	ra,4(sp)
  809eec:	3021883a 	mov	r16,r6
  809ef0:	080a0800 	call	80a080 <strcmp>
  809ef4:	1000061e 	bne	r2,zero,809f10 <_setlocale_r+0x40>
  809ef8:	00802074 	movhi	r2,129
  809efc:	10824304 	addi	r2,r2,2316
  809f00:	dfc00117 	ldw	ra,4(sp)
  809f04:	dc000017 	ldw	r16,0(sp)
  809f08:	dec00204 	addi	sp,sp,8
  809f0c:	f800283a 	ret
  809f10:	80800003 	ldbu	r2,0(r16)
  809f14:	10bfef44 	addi	r2,r2,-67
  809f18:	10000726 	beq	r2,zero,809f38 <_setlocale_r+0x68>
  809f1c:	80800003 	ldbu	r2,0(r16)
  809f20:	103ff526 	beq	r2,zero,809ef8 <_setlocale_r+0x28>
  809f24:	0005883a 	mov	r2,zero
  809f28:	003ff506 	br	809f00 <_setlocale_r+0x30>
  809f2c:	00802074 	movhi	r2,129
  809f30:	10824304 	addi	r2,r2,2316
  809f34:	f800283a 	ret
  809f38:	80800043 	ldbu	r2,1(r16)
  809f3c:	103fee26 	beq	r2,zero,809ef8 <_setlocale_r+0x28>
  809f40:	003ff606 	br	809f1c <_setlocale_r+0x4c>

00809f44 <__locale_mb_cur_max>:
  809f44:	00802074 	movhi	r2,129
  809f48:	10854807 	ldb	r2,5408(r2)
  809f4c:	f800283a 	ret

00809f50 <setlocale>:
  809f50:	00c02074 	movhi	r3,129
  809f54:	2005883a 	mov	r2,r4
  809f58:	1909dc17 	ldw	r4,10096(r3)
  809f5c:	280d883a 	mov	r6,r5
  809f60:	100b883a 	mov	r5,r2
  809f64:	0809ed01 	jmpi	809ed0 <_setlocale_r>

00809f68 <_lseek_r>:
  809f68:	2807883a 	mov	r3,r5
  809f6c:	defffe04 	addi	sp,sp,-8
  809f70:	dc000015 	stw	r16,0(sp)
  809f74:	300b883a 	mov	r5,r6
  809f78:	00802074 	movhi	r2,129
  809f7c:	380d883a 	mov	r6,r7
  809f80:	2021883a 	mov	r16,r4
  809f84:	1809883a 	mov	r4,r3
  809f88:	dfc00115 	stw	ra,4(sp)
  809f8c:	1010e215 	stw	zero,17288(r2)
  809f90:	080e2180 	call	80e218 <lseek>
  809f94:	10ffffd8 	cmpnei	r3,r2,-1
  809f98:	18000426 	beq	r3,zero,809fac <_lseek_r+0x44>
  809f9c:	dfc00117 	ldw	ra,4(sp)
  809fa0:	dc000017 	ldw	r16,0(sp)
  809fa4:	dec00204 	addi	sp,sp,8
  809fa8:	f800283a 	ret
  809fac:	00c02074 	movhi	r3,129
  809fb0:	18d0e217 	ldw	r3,17288(r3)
  809fb4:	183ff926 	beq	r3,zero,809f9c <_lseek_r+0x34>
  809fb8:	80c00015 	stw	r3,0(r16)
  809fbc:	dfc00117 	ldw	ra,4(sp)
  809fc0:	dc000017 	ldw	r16,0(sp)
  809fc4:	dec00204 	addi	sp,sp,8
  809fc8:	f800283a 	ret

00809fcc <_mbtowc_r>:
  809fcc:	00802074 	movhi	r2,129
  809fd0:	10853717 	ldw	r2,5340(r2)
  809fd4:	1000683a 	jmp	r2

00809fd8 <__ascii_mbtowc>:
  809fd8:	deffff04 	addi	sp,sp,-4
  809fdc:	28000826 	beq	r5,zero,80a000 <__ascii_mbtowc+0x28>
  809fe0:	30000926 	beq	r6,zero,80a008 <__ascii_mbtowc+0x30>
  809fe4:	38000b26 	beq	r7,zero,80a014 <__ascii_mbtowc+0x3c>
  809fe8:	30800003 	ldbu	r2,0(r6)
  809fec:	28800015 	stw	r2,0(r5)
  809ff0:	30800003 	ldbu	r2,0(r6)
  809ff4:	1004c03a 	cmpne	r2,r2,zero
  809ff8:	dec00104 	addi	sp,sp,4
  809ffc:	f800283a 	ret
  80a000:	d80b883a 	mov	r5,sp
  80a004:	303ff71e 	bne	r6,zero,809fe4 <__ascii_mbtowc+0xc>
  80a008:	0005883a 	mov	r2,zero
  80a00c:	dec00104 	addi	sp,sp,4
  80a010:	f800283a 	ret
  80a014:	00bfff84 	movi	r2,-2
  80a018:	003ff706 	br	809ff8 <__ascii_mbtowc+0x20>

0080a01c <_read_r>:
  80a01c:	2807883a 	mov	r3,r5
  80a020:	defffe04 	addi	sp,sp,-8
  80a024:	dc000015 	stw	r16,0(sp)
  80a028:	300b883a 	mov	r5,r6
  80a02c:	00802074 	movhi	r2,129
  80a030:	380d883a 	mov	r6,r7
  80a034:	2021883a 	mov	r16,r4
  80a038:	1809883a 	mov	r4,r3
  80a03c:	dfc00115 	stw	ra,4(sp)
  80a040:	1010e215 	stw	zero,17288(r2)
  80a044:	080e3f80 	call	80e3f8 <read>
  80a048:	10ffffd8 	cmpnei	r3,r2,-1
  80a04c:	18000426 	beq	r3,zero,80a060 <_read_r+0x44>
  80a050:	dfc00117 	ldw	ra,4(sp)
  80a054:	dc000017 	ldw	r16,0(sp)
  80a058:	dec00204 	addi	sp,sp,8
  80a05c:	f800283a 	ret
  80a060:	00c02074 	movhi	r3,129
  80a064:	18d0e217 	ldw	r3,17288(r3)
  80a068:	183ff926 	beq	r3,zero,80a050 <_read_r+0x34>
  80a06c:	80c00015 	stw	r3,0(r16)
  80a070:	dfc00117 	ldw	ra,4(sp)
  80a074:	dc000017 	ldw	r16,0(sp)
  80a078:	dec00204 	addi	sp,sp,8
  80a07c:	f800283a 	ret

0080a080 <strcmp>:
  80a080:	2144b03a 	or	r2,r4,r5
  80a084:	108000cc 	andi	r2,r2,3
  80a088:	1000141e 	bne	r2,zero,80a0dc <strcmp+0x5c>
  80a08c:	20800017 	ldw	r2,0(r4)
  80a090:	28c00017 	ldw	r3,0(r5)
  80a094:	10c0111e 	bne	r2,r3,80a0dc <strcmp+0x5c>
  80a098:	01ffbff4 	movhi	r7,65279
  80a09c:	01a02074 	movhi	r6,32897
  80a0a0:	39ffbfc4 	addi	r7,r7,-257
  80a0a4:	31a02004 	addi	r6,r6,-32640
  80a0a8:	00000306 	br	80a0b8 <strcmp+0x38>
  80a0ac:	20800017 	ldw	r2,0(r4)
  80a0b0:	28c00017 	ldw	r3,0(r5)
  80a0b4:	10c0091e 	bne	r2,r3,80a0dc <strcmp+0x5c>
  80a0b8:	11c7883a 	add	r3,r2,r7
  80a0bc:	0084303a 	nor	r2,zero,r2
  80a0c0:	1884703a 	and	r2,r3,r2
  80a0c4:	1184703a 	and	r2,r2,r6
  80a0c8:	21000104 	addi	r4,r4,4
  80a0cc:	29400104 	addi	r5,r5,4
  80a0d0:	103ff626 	beq	r2,zero,80a0ac <strcmp+0x2c>
  80a0d4:	0005883a 	mov	r2,zero
  80a0d8:	f800283a 	ret
  80a0dc:	20c00003 	ldbu	r3,0(r4)
  80a0e0:	18803fcc 	andi	r2,r3,255
  80a0e4:	1080201c 	xori	r2,r2,128
  80a0e8:	10bfe004 	addi	r2,r2,-128
  80a0ec:	1000071e 	bne	r2,zero,80a10c <strcmp+0x8c>
  80a0f0:	00000a06 	br	80a11c <strcmp+0x9c>
  80a0f4:	20c00003 	ldbu	r3,0(r4)
  80a0f8:	29400044 	addi	r5,r5,1
  80a0fc:	18803fcc 	andi	r2,r3,255
  80a100:	1080201c 	xori	r2,r2,128
  80a104:	10bfe004 	addi	r2,r2,-128
  80a108:	10000726 	beq	r2,zero,80a128 <strcmp+0xa8>
  80a10c:	29800007 	ldb	r6,0(r5)
  80a110:	21000044 	addi	r4,r4,1
  80a114:	30bff726 	beq	r6,r2,80a0f4 <strcmp+0x74>
  80a118:	18803fcc 	andi	r2,r3,255
  80a11c:	28c00003 	ldbu	r3,0(r5)
  80a120:	10c5c83a 	sub	r2,r2,r3
  80a124:	f800283a 	ret
  80a128:	28c00003 	ldbu	r3,0(r5)
  80a12c:	0005883a 	mov	r2,zero
  80a130:	10c5c83a 	sub	r2,r2,r3
  80a134:	f800283a 	ret

0080a138 <_vfiprintf_r>:
  80a138:	08084d01 	jmpi	8084d0 <___vfiprintf_internal_r>

0080a13c <__swbuf_r>:
  80a13c:	defffb04 	addi	sp,sp,-20
  80a140:	dcc00315 	stw	r19,12(sp)
  80a144:	dc400115 	stw	r17,4(sp)
  80a148:	dc000015 	stw	r16,0(sp)
  80a14c:	dfc00415 	stw	ra,16(sp)
  80a150:	dc800215 	stw	r18,8(sp)
  80a154:	2027883a 	mov	r19,r4
  80a158:	2823883a 	mov	r17,r5
  80a15c:	3021883a 	mov	r16,r6
  80a160:	20000226 	beq	r4,zero,80a16c <__swbuf_r+0x30>
  80a164:	20800e17 	ldw	r2,56(r4)
  80a168:	10003e26 	beq	r2,zero,80a264 <__swbuf_r+0x128>
  80a16c:	80800617 	ldw	r2,24(r16)
  80a170:	80c0030b 	ldhu	r3,12(r16)
  80a174:	80800215 	stw	r2,8(r16)
  80a178:	1880020c 	andi	r2,r3,8
  80a17c:	10001f26 	beq	r2,zero,80a1fc <__swbuf_r+0xc0>
  80a180:	80800417 	ldw	r2,16(r16)
  80a184:	10001d26 	beq	r2,zero,80a1fc <__swbuf_r+0xc0>
  80a188:	1948000c 	andi	r5,r3,8192
  80a18c:	8c803fcc 	andi	r18,r17,255
  80a190:	28002326 	beq	r5,zero,80a220 <__swbuf_r+0xe4>
  80a194:	80c00017 	ldw	r3,0(r16)
  80a198:	81000517 	ldw	r4,20(r16)
  80a19c:	1885c83a 	sub	r2,r3,r2
  80a1a0:	1100290e 	bge	r2,r4,80a248 <__swbuf_r+0x10c>
  80a1a4:	10800044 	addi	r2,r2,1
  80a1a8:	81400217 	ldw	r5,8(r16)
  80a1ac:	19000044 	addi	r4,r3,1
  80a1b0:	81000015 	stw	r4,0(r16)
  80a1b4:	297fffc4 	addi	r5,r5,-1
  80a1b8:	81400215 	stw	r5,8(r16)
  80a1bc:	1c400005 	stb	r17,0(r3)
  80a1c0:	80c00517 	ldw	r3,20(r16)
  80a1c4:	18802926 	beq	r3,r2,80a26c <__swbuf_r+0x130>
  80a1c8:	8080030b 	ldhu	r2,12(r16)
  80a1cc:	1080004c 	andi	r2,r2,1
  80a1d0:	10000226 	beq	r2,zero,80a1dc <__swbuf_r+0xa0>
  80a1d4:	90800298 	cmpnei	r2,r18,10
  80a1d8:	10002426 	beq	r2,zero,80a26c <__swbuf_r+0x130>
  80a1dc:	9005883a 	mov	r2,r18
  80a1e0:	dfc00417 	ldw	ra,16(sp)
  80a1e4:	dcc00317 	ldw	r19,12(sp)
  80a1e8:	dc800217 	ldw	r18,8(sp)
  80a1ec:	dc400117 	ldw	r17,4(sp)
  80a1f0:	dc000017 	ldw	r16,0(sp)
  80a1f4:	dec00504 	addi	sp,sp,20
  80a1f8:	f800283a 	ret
  80a1fc:	800b883a 	mov	r5,r16
  80a200:	9809883a 	mov	r4,r19
  80a204:	08032d40 	call	8032d4 <__swsetup_r>
  80a208:	10001c1e 	bne	r2,zero,80a27c <__swbuf_r+0x140>
  80a20c:	80c0030b 	ldhu	r3,12(r16)
  80a210:	80800417 	ldw	r2,16(r16)
  80a214:	8c803fcc 	andi	r18,r17,255
  80a218:	1948000c 	andi	r5,r3,8192
  80a21c:	283fdd1e 	bne	r5,zero,80a194 <__swbuf_r+0x58>
  80a220:	81001917 	ldw	r4,100(r16)
  80a224:	18c80014 	ori	r3,r3,8192
  80a228:	0177ffc4 	movi	r5,-8193
  80a22c:	2148703a 	and	r4,r4,r5
  80a230:	80c0030d 	sth	r3,12(r16)
  80a234:	80c00017 	ldw	r3,0(r16)
  80a238:	81001915 	stw	r4,100(r16)
  80a23c:	81000517 	ldw	r4,20(r16)
  80a240:	1885c83a 	sub	r2,r3,r2
  80a244:	113fd716 	blt	r2,r4,80a1a4 <__swbuf_r+0x68>
  80a248:	800b883a 	mov	r5,r16
  80a24c:	9809883a 	mov	r4,r19
  80a250:	0804fc80 	call	804fc8 <_fflush_r>
  80a254:	1000091e 	bne	r2,zero,80a27c <__swbuf_r+0x140>
  80a258:	80c00017 	ldw	r3,0(r16)
  80a25c:	00800044 	movi	r2,1
  80a260:	003fd106 	br	80a1a8 <__swbuf_r+0x6c>
  80a264:	080535c0 	call	80535c <__sinit>
  80a268:	003fc006 	br	80a16c <__swbuf_r+0x30>
  80a26c:	800b883a 	mov	r5,r16
  80a270:	9809883a 	mov	r4,r19
  80a274:	0804fc80 	call	804fc8 <_fflush_r>
  80a278:	103fd826 	beq	r2,zero,80a1dc <__swbuf_r+0xa0>
  80a27c:	04bfffc4 	movi	r18,-1
  80a280:	003fd606 	br	80a1dc <__swbuf_r+0xa0>

0080a284 <__swbuf>:
  80a284:	00c02074 	movhi	r3,129
  80a288:	2005883a 	mov	r2,r4
  80a28c:	1909dc17 	ldw	r4,10096(r3)
  80a290:	280d883a 	mov	r6,r5
  80a294:	100b883a 	mov	r5,r2
  80a298:	080a13c1 	jmpi	80a13c <__swbuf_r>

0080a29c <_wcrtomb_r>:
  80a29c:	defffa04 	addi	sp,sp,-24
  80a2a0:	dc400415 	stw	r17,16(sp)
  80a2a4:	dc000315 	stw	r16,12(sp)
  80a2a8:	00802074 	movhi	r2,129
  80a2ac:	dfc00515 	stw	ra,20(sp)
  80a2b0:	10853617 	ldw	r2,5336(r2)
  80a2b4:	2023883a 	mov	r17,r4
  80a2b8:	3821883a 	mov	r16,r7
  80a2bc:	28000826 	beq	r5,zero,80a2e0 <_wcrtomb_r+0x44>
  80a2c0:	103ee83a 	callr	r2
  80a2c4:	10ffffd8 	cmpnei	r3,r2,-1
  80a2c8:	18000a26 	beq	r3,zero,80a2f4 <_wcrtomb_r+0x58>
  80a2cc:	dfc00517 	ldw	ra,20(sp)
  80a2d0:	dc400417 	ldw	r17,16(sp)
  80a2d4:	dc000317 	ldw	r16,12(sp)
  80a2d8:	dec00604 	addi	sp,sp,24
  80a2dc:	f800283a 	ret
  80a2e0:	000d883a 	mov	r6,zero
  80a2e4:	d9400084 	addi	r5,sp,2
  80a2e8:	103ee83a 	callr	r2
  80a2ec:	10ffffd8 	cmpnei	r3,r2,-1
  80a2f0:	183ff61e 	bne	r3,zero,80a2cc <_wcrtomb_r+0x30>
  80a2f4:	00802284 	movi	r2,138
  80a2f8:	80000015 	stw	zero,0(r16)
  80a2fc:	88800015 	stw	r2,0(r17)
  80a300:	00bfffc4 	movi	r2,-1
  80a304:	003ff106 	br	80a2cc <_wcrtomb_r+0x30>

0080a308 <wcrtomb>:
  80a308:	defffa04 	addi	sp,sp,-24
  80a30c:	00c02074 	movhi	r3,129
  80a310:	dc400415 	stw	r17,16(sp)
  80a314:	dc000315 	stw	r16,12(sp)
  80a318:	1c49dc17 	ldw	r17,10096(r3)
  80a31c:	dfc00515 	stw	ra,20(sp)
  80a320:	00c02074 	movhi	r3,129
  80a324:	18c53617 	ldw	r3,5336(r3)
  80a328:	3021883a 	mov	r16,r6
  80a32c:	20000c26 	beq	r4,zero,80a360 <wcrtomb+0x58>
  80a330:	280d883a 	mov	r6,r5
  80a334:	800f883a 	mov	r7,r16
  80a338:	200b883a 	mov	r5,r4
  80a33c:	8809883a 	mov	r4,r17
  80a340:	183ee83a 	callr	r3
  80a344:	10ffffd8 	cmpnei	r3,r2,-1
  80a348:	18000c26 	beq	r3,zero,80a37c <wcrtomb+0x74>
  80a34c:	dfc00517 	ldw	ra,20(sp)
  80a350:	dc400417 	ldw	r17,16(sp)
  80a354:	dc000317 	ldw	r16,12(sp)
  80a358:	dec00604 	addi	sp,sp,24
  80a35c:	f800283a 	ret
  80a360:	300f883a 	mov	r7,r6
  80a364:	d9400084 	addi	r5,sp,2
  80a368:	000d883a 	mov	r6,zero
  80a36c:	8809883a 	mov	r4,r17
  80a370:	183ee83a 	callr	r3
  80a374:	10ffffd8 	cmpnei	r3,r2,-1
  80a378:	183ff41e 	bne	r3,zero,80a34c <wcrtomb+0x44>
  80a37c:	00802284 	movi	r2,138
  80a380:	80000015 	stw	zero,0(r16)
  80a384:	88800015 	stw	r2,0(r17)
  80a388:	00bfffc4 	movi	r2,-1
  80a38c:	003fef06 	br	80a34c <wcrtomb+0x44>

0080a390 <_wctomb_r>:
  80a390:	00802074 	movhi	r2,129
  80a394:	10853617 	ldw	r2,5336(r2)
  80a398:	1000683a 	jmp	r2

0080a39c <__ascii_wctomb>:
  80a39c:	28000926 	beq	r5,zero,80a3c4 <__ascii_wctomb+0x28>
  80a3a0:	30804030 	cmpltui	r2,r6,256
  80a3a4:	10000326 	beq	r2,zero,80a3b4 <__ascii_wctomb+0x18>
  80a3a8:	29800005 	stb	r6,0(r5)
  80a3ac:	00800044 	movi	r2,1
  80a3b0:	f800283a 	ret
  80a3b4:	00802284 	movi	r2,138
  80a3b8:	20800015 	stw	r2,0(r4)
  80a3bc:	00bfffc4 	movi	r2,-1
  80a3c0:	f800283a 	ret
  80a3c4:	0005883a 	mov	r2,zero
  80a3c8:	f800283a 	ret

0080a3cc <abort>:
  80a3cc:	deffff04 	addi	sp,sp,-4
  80a3d0:	01000184 	movi	r4,6
  80a3d4:	dfc00015 	stw	ra,0(sp)
  80a3d8:	080a6440 	call	80a644 <raise>
  80a3dc:	01000044 	movi	r4,1
  80a3e0:	080dd4c0 	call	80dd4c <_exit>

0080a3e4 <_init_signal_r.part.0>:
  80a3e4:	defffe04 	addi	sp,sp,-8
  80a3e8:	01402004 	movi	r5,128
  80a3ec:	dc000015 	stw	r16,0(sp)
  80a3f0:	dfc00115 	stw	ra,4(sp)
  80a3f4:	2021883a 	mov	r16,r4
  80a3f8:	0805fc00 	call	805fc0 <_malloc_r>
  80a3fc:	8080b715 	stw	r2,732(r16)
  80a400:	10000926 	beq	r2,zero,80a428 <_init_signal_r.part.0+0x44>
  80a404:	10c02004 	addi	r3,r2,128
  80a408:	10000015 	stw	zero,0(r2)
  80a40c:	10800104 	addi	r2,r2,4
  80a410:	10fffd1e 	bne	r2,r3,80a408 <_init_signal_r.part.0+0x24>
  80a414:	0005883a 	mov	r2,zero
  80a418:	dfc00117 	ldw	ra,4(sp)
  80a41c:	dc000017 	ldw	r16,0(sp)
  80a420:	dec00204 	addi	sp,sp,8
  80a424:	f800283a 	ret
  80a428:	00bfffc4 	movi	r2,-1
  80a42c:	003ffa06 	br	80a418 <_init_signal_r.part.0+0x34>

0080a430 <_init_signal_r>:
  80a430:	2080b717 	ldw	r2,732(r4)
  80a434:	10000226 	beq	r2,zero,80a440 <_init_signal_r+0x10>
  80a438:	0005883a 	mov	r2,zero
  80a43c:	f800283a 	ret
  80a440:	080a3e41 	jmpi	80a3e4 <_init_signal_r.part.0>

0080a444 <_signal_r>:
  80a444:	defffc04 	addi	sp,sp,-16
  80a448:	dc000215 	stw	r16,8(sp)
  80a44c:	dfc00315 	stw	ra,12(sp)
  80a450:	28800830 	cmpltui	r2,r5,32
  80a454:	2021883a 	mov	r16,r4
  80a458:	10000a26 	beq	r2,zero,80a484 <_signal_r+0x40>
  80a45c:	2080b717 	ldw	r2,732(r4)
  80a460:	10000f26 	beq	r2,zero,80a4a0 <_signal_r+0x5c>
  80a464:	280a90ba 	slli	r5,r5,2
  80a468:	114b883a 	add	r5,r2,r5
  80a46c:	28800017 	ldw	r2,0(r5)
  80a470:	29800015 	stw	r6,0(r5)
  80a474:	dfc00317 	ldw	ra,12(sp)
  80a478:	dc000217 	ldw	r16,8(sp)
  80a47c:	dec00404 	addi	sp,sp,16
  80a480:	f800283a 	ret
  80a484:	00800584 	movi	r2,22
  80a488:	20800015 	stw	r2,0(r4)
  80a48c:	00bfffc4 	movi	r2,-1
  80a490:	dfc00317 	ldw	ra,12(sp)
  80a494:	dc000217 	ldw	r16,8(sp)
  80a498:	dec00404 	addi	sp,sp,16
  80a49c:	f800283a 	ret
  80a4a0:	d9800115 	stw	r6,4(sp)
  80a4a4:	d9400015 	stw	r5,0(sp)
  80a4a8:	080a3e40 	call	80a3e4 <_init_signal_r.part.0>
  80a4ac:	1000041e 	bne	r2,zero,80a4c0 <_signal_r+0x7c>
  80a4b0:	8080b717 	ldw	r2,732(r16)
  80a4b4:	d9800117 	ldw	r6,4(sp)
  80a4b8:	d9400017 	ldw	r5,0(sp)
  80a4bc:	003fe906 	br	80a464 <_signal_r+0x20>
  80a4c0:	00bfffc4 	movi	r2,-1
  80a4c4:	003feb06 	br	80a474 <_signal_r+0x30>

0080a4c8 <_raise_r>:
  80a4c8:	28800830 	cmpltui	r2,r5,32
  80a4cc:	10002b26 	beq	r2,zero,80a57c <_raise_r+0xb4>
  80a4d0:	2080b717 	ldw	r2,732(r4)
  80a4d4:	defffd04 	addi	sp,sp,-12
  80a4d8:	dc000115 	stw	r16,4(sp)
  80a4dc:	dfc00215 	stw	ra,8(sp)
  80a4e0:	2821883a 	mov	r16,r5
  80a4e4:	10001026 	beq	r2,zero,80a528 <_raise_r+0x60>
  80a4e8:	280690ba 	slli	r3,r5,2
  80a4ec:	10c5883a 	add	r2,r2,r3
  80a4f0:	10c00017 	ldw	r3,0(r2)
  80a4f4:	18000c26 	beq	r3,zero,80a528 <_raise_r+0x60>
  80a4f8:	19400060 	cmpeqi	r5,r3,1
  80a4fc:	28001a1e 	bne	r5,zero,80a568 <_raise_r+0xa0>
  80a500:	197fffd8 	cmpnei	r5,r3,-1
  80a504:	28001126 	beq	r5,zero,80a54c <_raise_r+0x84>
  80a508:	10000015 	stw	zero,0(r2)
  80a50c:	8009883a 	mov	r4,r16
  80a510:	183ee83a 	callr	r3
  80a514:	0005883a 	mov	r2,zero
  80a518:	dfc00217 	ldw	ra,8(sp)
  80a51c:	dc000117 	ldw	r16,4(sp)
  80a520:	dec00304 	addi	sp,sp,12
  80a524:	f800283a 	ret
  80a528:	d9000015 	stw	r4,0(sp)
  80a52c:	080a6f80 	call	80a6f8 <_getpid_r>
  80a530:	d9000017 	ldw	r4,0(sp)
  80a534:	800d883a 	mov	r6,r16
  80a538:	100b883a 	mov	r5,r2
  80a53c:	dfc00217 	ldw	ra,8(sp)
  80a540:	dc000117 	ldw	r16,4(sp)
  80a544:	dec00304 	addi	sp,sp,12
  80a548:	080a6981 	jmpi	80a698 <_kill_r>
  80a54c:	00800584 	movi	r2,22
  80a550:	20800015 	stw	r2,0(r4)
  80a554:	00800044 	movi	r2,1
  80a558:	dfc00217 	ldw	ra,8(sp)
  80a55c:	dc000117 	ldw	r16,4(sp)
  80a560:	dec00304 	addi	sp,sp,12
  80a564:	f800283a 	ret
  80a568:	0005883a 	mov	r2,zero
  80a56c:	dfc00217 	ldw	ra,8(sp)
  80a570:	dc000117 	ldw	r16,4(sp)
  80a574:	dec00304 	addi	sp,sp,12
  80a578:	f800283a 	ret
  80a57c:	00800584 	movi	r2,22
  80a580:	20800015 	stw	r2,0(r4)
  80a584:	00bfffc4 	movi	r2,-1
  80a588:	f800283a 	ret

0080a58c <__sigtramp_r>:
  80a58c:	28800830 	cmpltui	r2,r5,32
  80a590:	10002a26 	beq	r2,zero,80a63c <__sigtramp_r+0xb0>
  80a594:	2080b717 	ldw	r2,732(r4)
  80a598:	defffd04 	addi	sp,sp,-12
  80a59c:	dc400115 	stw	r17,4(sp)
  80a5a0:	dfc00215 	stw	ra,8(sp)
  80a5a4:	2023883a 	mov	r17,r4
  80a5a8:	10001526 	beq	r2,zero,80a600 <__sigtramp_r+0x74>
  80a5ac:	280690ba 	slli	r3,r5,2
  80a5b0:	10c5883a 	add	r2,r2,r3
  80a5b4:	10c00017 	ldw	r3,0(r2)
  80a5b8:	18000c26 	beq	r3,zero,80a5ec <__sigtramp_r+0x60>
  80a5bc:	193fffe0 	cmpeqi	r4,r3,-1
  80a5c0:	20001a1e 	bne	r4,zero,80a62c <__sigtramp_r+0xa0>
  80a5c4:	19000060 	cmpeqi	r4,r3,1
  80a5c8:	2000131e 	bne	r4,zero,80a618 <__sigtramp_r+0x8c>
  80a5cc:	10000015 	stw	zero,0(r2)
  80a5d0:	2809883a 	mov	r4,r5
  80a5d4:	183ee83a 	callr	r3
  80a5d8:	0005883a 	mov	r2,zero
  80a5dc:	dfc00217 	ldw	ra,8(sp)
  80a5e0:	dc400117 	ldw	r17,4(sp)
  80a5e4:	dec00304 	addi	sp,sp,12
  80a5e8:	f800283a 	ret
  80a5ec:	00800044 	movi	r2,1
  80a5f0:	dfc00217 	ldw	ra,8(sp)
  80a5f4:	dc400117 	ldw	r17,4(sp)
  80a5f8:	dec00304 	addi	sp,sp,12
  80a5fc:	f800283a 	ret
  80a600:	d9400015 	stw	r5,0(sp)
  80a604:	080a3e40 	call	80a3e4 <_init_signal_r.part.0>
  80a608:	10000a1e 	bne	r2,zero,80a634 <__sigtramp_r+0xa8>
  80a60c:	8880b717 	ldw	r2,732(r17)
  80a610:	d9400017 	ldw	r5,0(sp)
  80a614:	003fe506 	br	80a5ac <__sigtramp_r+0x20>
  80a618:	008000c4 	movi	r2,3
  80a61c:	dfc00217 	ldw	ra,8(sp)
  80a620:	dc400117 	ldw	r17,4(sp)
  80a624:	dec00304 	addi	sp,sp,12
  80a628:	f800283a 	ret
  80a62c:	00800084 	movi	r2,2
  80a630:	003fea06 	br	80a5dc <__sigtramp_r+0x50>
  80a634:	00bfffc4 	movi	r2,-1
  80a638:	003fe806 	br	80a5dc <__sigtramp_r+0x50>
  80a63c:	00bfffc4 	movi	r2,-1
  80a640:	f800283a 	ret

0080a644 <raise>:
  80a644:	00802074 	movhi	r2,129
  80a648:	200b883a 	mov	r5,r4
  80a64c:	1109dc17 	ldw	r4,10096(r2)
  80a650:	080a4c81 	jmpi	80a4c8 <_raise_r>

0080a654 <signal>:
  80a654:	00c02074 	movhi	r3,129
  80a658:	2005883a 	mov	r2,r4
  80a65c:	1909dc17 	ldw	r4,10096(r3)
  80a660:	280d883a 	mov	r6,r5
  80a664:	100b883a 	mov	r5,r2
  80a668:	080a4441 	jmpi	80a444 <_signal_r>

0080a66c <_init_signal>:
  80a66c:	00802074 	movhi	r2,129
  80a670:	1109dc17 	ldw	r4,10096(r2)
  80a674:	2080b717 	ldw	r2,732(r4)
  80a678:	10000226 	beq	r2,zero,80a684 <_init_signal+0x18>
  80a67c:	0005883a 	mov	r2,zero
  80a680:	f800283a 	ret
  80a684:	080a3e41 	jmpi	80a3e4 <_init_signal_r.part.0>

0080a688 <__sigtramp>:
  80a688:	00802074 	movhi	r2,129
  80a68c:	200b883a 	mov	r5,r4
  80a690:	1109dc17 	ldw	r4,10096(r2)
  80a694:	080a58c1 	jmpi	80a58c <__sigtramp_r>

0080a698 <_kill_r>:
  80a698:	2807883a 	mov	r3,r5
  80a69c:	defffe04 	addi	sp,sp,-8
  80a6a0:	dc000015 	stw	r16,0(sp)
  80a6a4:	00802074 	movhi	r2,129
  80a6a8:	300b883a 	mov	r5,r6
  80a6ac:	2021883a 	mov	r16,r4
  80a6b0:	1809883a 	mov	r4,r3
  80a6b4:	dfc00115 	stw	ra,4(sp)
  80a6b8:	1010e215 	stw	zero,17288(r2)
  80a6bc:	080dfc40 	call	80dfc4 <kill>
  80a6c0:	10ffffd8 	cmpnei	r3,r2,-1
  80a6c4:	18000426 	beq	r3,zero,80a6d8 <_kill_r+0x40>
  80a6c8:	dfc00117 	ldw	ra,4(sp)
  80a6cc:	dc000017 	ldw	r16,0(sp)
  80a6d0:	dec00204 	addi	sp,sp,8
  80a6d4:	f800283a 	ret
  80a6d8:	00c02074 	movhi	r3,129
  80a6dc:	18d0e217 	ldw	r3,17288(r3)
  80a6e0:	183ff926 	beq	r3,zero,80a6c8 <_kill_r+0x30>
  80a6e4:	80c00015 	stw	r3,0(r16)
  80a6e8:	dfc00117 	ldw	ra,4(sp)
  80a6ec:	dc000017 	ldw	r16,0(sp)
  80a6f0:	dec00204 	addi	sp,sp,8
  80a6f4:	f800283a 	ret

0080a6f8 <_getpid_r>:
  80a6f8:	080de7c1 	jmpi	80de7c <getpid>

0080a6fc <__udivdi3>:
  80a6fc:	defff504 	addi	sp,sp,-44
  80a700:	dd000515 	stw	r20,20(sp)
  80a704:	dc800315 	stw	r18,12(sp)
  80a708:	dfc00a15 	stw	ra,40(sp)
  80a70c:	df000915 	stw	fp,36(sp)
  80a710:	ddc00815 	stw	r23,32(sp)
  80a714:	dd800715 	stw	r22,28(sp)
  80a718:	dd400615 	stw	r21,24(sp)
  80a71c:	dcc00415 	stw	r19,16(sp)
  80a720:	dc400215 	stw	r17,8(sp)
  80a724:	dc000115 	stw	r16,4(sp)
  80a728:	2029883a 	mov	r20,r4
  80a72c:	2825883a 	mov	r18,r5
  80a730:	3800461e 	bne	r7,zero,80a84c <__udivdi3+0x150>
  80a734:	3823883a 	mov	r17,r7
  80a738:	3021883a 	mov	r16,r6
  80a73c:	2027883a 	mov	r19,r4
  80a740:	2980622e 	bgeu	r5,r6,80a8cc <__udivdi3+0x1d0>
  80a744:	00bfffd4 	movui	r2,65535
  80a748:	282b883a 	mov	r21,r5
  80a74c:	1180aa2e 	bgeu	r2,r6,80a9f8 <__udivdi3+0x2fc>
  80a750:	00804034 	movhi	r2,256
  80a754:	30815936 	bltu	r6,r2,80acbc <__udivdi3+0x5c0>
  80a758:	3006d63a 	srli	r3,r6,24
  80a75c:	04400604 	movi	r17,24
  80a760:	00802074 	movhi	r2,129
  80a764:	1885883a 	add	r2,r3,r2
  80a768:	11016003 	ldbu	r4,1408(r2)
  80a76c:	00800804 	movi	r2,32
  80a770:	2463883a 	add	r17,r4,r17
  80a774:	1449c83a 	sub	r4,r2,r17
  80a778:	14400526 	beq	r2,r17,80a790 <__udivdi3+0x94>
  80a77c:	9106983a 	sll	r3,r18,r4
  80a780:	a462d83a 	srl	r17,r20,r17
  80a784:	3120983a 	sll	r16,r6,r4
  80a788:	a126983a 	sll	r19,r20,r4
  80a78c:	88eab03a 	or	r21,r17,r3
  80a790:	802cd43a 	srli	r22,r16,16
  80a794:	a809883a 	mov	r4,r21
  80a798:	853fffcc 	andi	r20,r16,65535
  80a79c:	b00b883a 	mov	r5,r22
  80a7a0:	080b4340 	call	80b434 <__umodsi3>
  80a7a4:	a809883a 	mov	r4,r21
  80a7a8:	b00b883a 	mov	r5,r22
  80a7ac:	1025883a 	mov	r18,r2
  80a7b0:	080b3d00 	call	80b3d0 <__udivsi3>
  80a7b4:	a009883a 	mov	r4,r20
  80a7b8:	100b883a 	mov	r5,r2
  80a7bc:	102b883a 	mov	r21,r2
  80a7c0:	0800f080 	call	800f08 <__mulsi3>
  80a7c4:	9024943a 	slli	r18,r18,16
  80a7c8:	9808d43a 	srli	r4,r19,16
  80a7cc:	9108b03a 	or	r4,r18,r4
  80a7d0:	2080052e 	bgeu	r4,r2,80a7e8 <__udivdi3+0xec>
  80a7d4:	2409883a 	add	r4,r4,r16
  80a7d8:	a8ffffc4 	addi	r3,r21,-1
  80a7dc:	24000136 	bltu	r4,r16,80a7e4 <__udivdi3+0xe8>
  80a7e0:	20814736 	bltu	r4,r2,80ad00 <__udivdi3+0x604>
  80a7e4:	182b883a 	mov	r21,r3
  80a7e8:	20a3c83a 	sub	r17,r4,r2
  80a7ec:	8809883a 	mov	r4,r17
  80a7f0:	b00b883a 	mov	r5,r22
  80a7f4:	080b4340 	call	80b434 <__umodsi3>
  80a7f8:	8809883a 	mov	r4,r17
  80a7fc:	1023883a 	mov	r17,r2
  80a800:	b00b883a 	mov	r5,r22
  80a804:	8822943a 	slli	r17,r17,16
  80a808:	080b3d00 	call	80b3d0 <__udivsi3>
  80a80c:	100b883a 	mov	r5,r2
  80a810:	a009883a 	mov	r4,r20
  80a814:	9cffffcc 	andi	r19,r19,65535
  80a818:	1025883a 	mov	r18,r2
  80a81c:	8ce6b03a 	or	r19,r17,r19
  80a820:	0800f080 	call	800f08 <__mulsi3>
  80a824:	9880052e 	bgeu	r19,r2,80a83c <__udivdi3+0x140>
  80a828:	84e7883a 	add	r19,r16,r19
  80a82c:	90ffffc4 	addi	r3,r18,-1
  80a830:	9c000136 	bltu	r19,r16,80a838 <__udivdi3+0x13c>
  80a834:	98813036 	bltu	r19,r2,80acf8 <__udivdi3+0x5fc>
  80a838:	1825883a 	mov	r18,r3
  80a83c:	a80c943a 	slli	r6,r21,16
  80a840:	0007883a 	mov	r3,zero
  80a844:	3484b03a 	or	r2,r6,r18
  80a848:	00000306 	br	80a858 <__udivdi3+0x15c>
  80a84c:	29c00e2e 	bgeu	r5,r7,80a888 <__udivdi3+0x18c>
  80a850:	0007883a 	mov	r3,zero
  80a854:	0005883a 	mov	r2,zero
  80a858:	dfc00a17 	ldw	ra,40(sp)
  80a85c:	df000917 	ldw	fp,36(sp)
  80a860:	ddc00817 	ldw	r23,32(sp)
  80a864:	dd800717 	ldw	r22,28(sp)
  80a868:	dd400617 	ldw	r21,24(sp)
  80a86c:	dd000517 	ldw	r20,20(sp)
  80a870:	dcc00417 	ldw	r19,16(sp)
  80a874:	dc800317 	ldw	r18,12(sp)
  80a878:	dc400217 	ldw	r17,8(sp)
  80a87c:	dc000117 	ldw	r16,4(sp)
  80a880:	dec00b04 	addi	sp,sp,44
  80a884:	f800283a 	ret
  80a888:	00bfffd4 	movui	r2,65535
  80a88c:	11c05f2e 	bgeu	r2,r7,80aa0c <__udivdi3+0x310>
  80a890:	00804034 	movhi	r2,256
  80a894:	3880fb36 	bltu	r7,r2,80ac84 <__udivdi3+0x588>
  80a898:	3806d63a 	srli	r3,r7,24
  80a89c:	01000604 	movi	r4,24
  80a8a0:	00802074 	movhi	r2,129
  80a8a4:	1885883a 	add	r2,r3,r2
  80a8a8:	10c16003 	ldbu	r3,1408(r2)
  80a8ac:	00800804 	movi	r2,32
  80a8b0:	1907883a 	add	r3,r3,r4
  80a8b4:	10e3c83a 	sub	r17,r2,r3
  80a8b8:	10c0901e 	bne	r2,r3,80aafc <__udivdi3+0x400>
  80a8bc:	3c80f636 	bltu	r7,r18,80ac98 <__udivdi3+0x59c>
  80a8c0:	a185403a 	cmpgeu	r2,r20,r6
  80a8c4:	0007883a 	mov	r3,zero
  80a8c8:	003fe306 	br	80a858 <__udivdi3+0x15c>
  80a8cc:	3000041e 	bne	r6,zero,80a8e0 <__udivdi3+0x1e4>
  80a8d0:	000b883a 	mov	r5,zero
  80a8d4:	01000044 	movi	r4,1
  80a8d8:	080b3d00 	call	80b3d0 <__udivsi3>
  80a8dc:	1021883a 	mov	r16,r2
  80a8e0:	00bfffd4 	movui	r2,65535
  80a8e4:	14003f2e 	bgeu	r2,r16,80a9e4 <__udivdi3+0x2e8>
  80a8e8:	00804034 	movhi	r2,256
  80a8ec:	8080f036 	bltu	r16,r2,80acb0 <__udivdi3+0x5b4>
  80a8f0:	8006d63a 	srli	r3,r16,24
  80a8f4:	04400604 	movi	r17,24
  80a8f8:	00802074 	movhi	r2,129
  80a8fc:	1885883a 	add	r2,r3,r2
  80a900:	10816003 	ldbu	r2,1408(r2)
  80a904:	00c00804 	movi	r3,32
  80a908:	1463883a 	add	r17,r2,r17
  80a90c:	1c45c83a 	sub	r2,r3,r17
  80a910:	1c40431e 	bne	r3,r17,80aa20 <__udivdi3+0x324>
  80a914:	802cd43a 	srli	r22,r16,16
  80a918:	9423c83a 	sub	r17,r18,r16
  80a91c:	853fffcc 	andi	r20,r16,65535
  80a920:	00c00044 	movi	r3,1
  80a924:	b00b883a 	mov	r5,r22
  80a928:	8809883a 	mov	r4,r17
  80a92c:	d8c00015 	stw	r3,0(sp)
  80a930:	080b4340 	call	80b434 <__umodsi3>
  80a934:	b00b883a 	mov	r5,r22
  80a938:	8809883a 	mov	r4,r17
  80a93c:	1025883a 	mov	r18,r2
  80a940:	080b3d00 	call	80b3d0 <__udivsi3>
  80a944:	1009883a 	mov	r4,r2
  80a948:	a00b883a 	mov	r5,r20
  80a94c:	102b883a 	mov	r21,r2
  80a950:	0800f080 	call	800f08 <__mulsi3>
  80a954:	9024943a 	slli	r18,r18,16
  80a958:	9808d43a 	srli	r4,r19,16
  80a95c:	d8c00017 	ldw	r3,0(sp)
  80a960:	9108b03a 	or	r4,r18,r4
  80a964:	2080052e 	bgeu	r4,r2,80a97c <__udivdi3+0x280>
  80a968:	2409883a 	add	r4,r4,r16
  80a96c:	a97fffc4 	addi	r5,r21,-1
  80a970:	24000136 	bltu	r4,r16,80a978 <__udivdi3+0x27c>
  80a974:	2080e536 	bltu	r4,r2,80ad0c <__udivdi3+0x610>
  80a978:	282b883a 	mov	r21,r5
  80a97c:	20a3c83a 	sub	r17,r4,r2
  80a980:	8809883a 	mov	r4,r17
  80a984:	b00b883a 	mov	r5,r22
  80a988:	d8c00015 	stw	r3,0(sp)
  80a98c:	080b4340 	call	80b434 <__umodsi3>
  80a990:	8809883a 	mov	r4,r17
  80a994:	1023883a 	mov	r17,r2
  80a998:	b00b883a 	mov	r5,r22
  80a99c:	8822943a 	slli	r17,r17,16
  80a9a0:	080b3d00 	call	80b3d0 <__udivsi3>
  80a9a4:	a00b883a 	mov	r5,r20
  80a9a8:	1009883a 	mov	r4,r2
  80a9ac:	9cffffcc 	andi	r19,r19,65535
  80a9b0:	1025883a 	mov	r18,r2
  80a9b4:	8ce6b03a 	or	r19,r17,r19
  80a9b8:	0800f080 	call	800f08 <__mulsi3>
  80a9bc:	d8c00017 	ldw	r3,0(sp)
  80a9c0:	9880052e 	bgeu	r19,r2,80a9d8 <__udivdi3+0x2dc>
  80a9c4:	84e7883a 	add	r19,r16,r19
  80a9c8:	913fffc4 	addi	r4,r18,-1
  80a9cc:	9c000136 	bltu	r19,r16,80a9d4 <__udivdi3+0x2d8>
  80a9d0:	9880c736 	bltu	r19,r2,80acf0 <__udivdi3+0x5f4>
  80a9d4:	2025883a 	mov	r18,r4
  80a9d8:	a80c943a 	slli	r6,r21,16
  80a9dc:	3484b03a 	or	r2,r6,r18
  80a9e0:	003f9d06 	br	80a858 <__udivdi3+0x15c>
  80a9e4:	80804030 	cmpltui	r2,r16,256
  80a9e8:	1000b71e 	bne	r2,zero,80acc8 <__udivdi3+0x5cc>
  80a9ec:	8006d23a 	srli	r3,r16,8
  80a9f0:	04400204 	movi	r17,8
  80a9f4:	003fc006 	br	80a8f8 <__udivdi3+0x1fc>
  80a9f8:	30804030 	cmpltui	r2,r6,256
  80a9fc:	1000a41e 	bne	r2,zero,80ac90 <__udivdi3+0x594>
  80aa00:	3006d23a 	srli	r3,r6,8
  80aa04:	04400204 	movi	r17,8
  80aa08:	003f5506 	br	80a760 <__udivdi3+0x64>
  80aa0c:	38804030 	cmpltui	r2,r7,256
  80aa10:	1000a41e 	bne	r2,zero,80aca4 <__udivdi3+0x5a8>
  80aa14:	3806d23a 	srli	r3,r7,8
  80aa18:	01000204 	movi	r4,8
  80aa1c:	003fa006 	br	80a8a0 <__udivdi3+0x1a4>
  80aa20:	80a0983a 	sll	r16,r16,r2
  80aa24:	946ed83a 	srl	r23,r18,r17
  80aa28:	9086983a 	sll	r3,r18,r2
  80aa2c:	802cd43a 	srli	r22,r16,16
  80aa30:	a462d83a 	srl	r17,r20,r17
  80aa34:	b809883a 	mov	r4,r23
  80aa38:	b00b883a 	mov	r5,r22
  80aa3c:	88eab03a 	or	r21,r17,r3
  80aa40:	a0a6983a 	sll	r19,r20,r2
  80aa44:	080b4340 	call	80b434 <__umodsi3>
  80aa48:	b809883a 	mov	r4,r23
  80aa4c:	b00b883a 	mov	r5,r22
  80aa50:	1025883a 	mov	r18,r2
  80aa54:	853fffcc 	andi	r20,r16,65535
  80aa58:	080b3d00 	call	80b3d0 <__udivsi3>
  80aa5c:	a009883a 	mov	r4,r20
  80aa60:	100b883a 	mov	r5,r2
  80aa64:	102f883a 	mov	r23,r2
  80aa68:	0800f080 	call	800f08 <__mulsi3>
  80aa6c:	9024943a 	slli	r18,r18,16
  80aa70:	a808d43a 	srli	r4,r21,16
  80aa74:	9108b03a 	or	r4,r18,r4
  80aa78:	2080062e 	bgeu	r4,r2,80aa94 <__udivdi3+0x398>
  80aa7c:	2409883a 	add	r4,r4,r16
  80aa80:	b8ffffc4 	addi	r3,r23,-1
  80aa84:	24009836 	bltu	r4,r16,80ace8 <__udivdi3+0x5ec>
  80aa88:	2080972e 	bgeu	r4,r2,80ace8 <__udivdi3+0x5ec>
  80aa8c:	bdffff84 	addi	r23,r23,-2
  80aa90:	2409883a 	add	r4,r4,r16
  80aa94:	20a3c83a 	sub	r17,r4,r2
  80aa98:	8809883a 	mov	r4,r17
  80aa9c:	b00b883a 	mov	r5,r22
  80aaa0:	080b4340 	call	80b434 <__umodsi3>
  80aaa4:	1025883a 	mov	r18,r2
  80aaa8:	8809883a 	mov	r4,r17
  80aaac:	b00b883a 	mov	r5,r22
  80aab0:	9024943a 	slli	r18,r18,16
  80aab4:	080b3d00 	call	80b3d0 <__udivsi3>
  80aab8:	100b883a 	mov	r5,r2
  80aabc:	a009883a 	mov	r4,r20
  80aac0:	ac7fffcc 	andi	r17,r21,65535
  80aac4:	1039883a 	mov	fp,r2
  80aac8:	9462b03a 	or	r17,r18,r17
  80aacc:	0800f080 	call	800f08 <__mulsi3>
  80aad0:	8880062e 	bgeu	r17,r2,80aaec <__udivdi3+0x3f0>
  80aad4:	8c23883a 	add	r17,r17,r16
  80aad8:	e0ffffc4 	addi	r3,fp,-1
  80aadc:	8c007e36 	bltu	r17,r16,80acd8 <__udivdi3+0x5dc>
  80aae0:	88807d2e 	bgeu	r17,r2,80acd8 <__udivdi3+0x5dc>
  80aae4:	e73fff84 	addi	fp,fp,-2
  80aae8:	8c23883a 	add	r17,r17,r16
  80aaec:	b806943a 	slli	r3,r23,16
  80aaf0:	88a3c83a 	sub	r17,r17,r2
  80aaf4:	1f06b03a 	or	r3,r3,fp
  80aaf8:	003f8a06 	br	80a924 <__udivdi3+0x228>
  80aafc:	30e6d83a 	srl	r19,r6,r3
  80ab00:	3c4e983a 	sll	r7,r7,r17
  80ab04:	90e0d83a 	srl	r16,r18,r3
  80ab08:	a0c4d83a 	srl	r2,r20,r3
  80ab0c:	99e6b03a 	or	r19,r19,r7
  80ab10:	9446983a 	sll	r3,r18,r17
  80ab14:	9838d43a 	srli	fp,r19,16
  80ab18:	8009883a 	mov	r4,r16
  80ab1c:	10eab03a 	or	r21,r2,r3
  80ab20:	e00b883a 	mov	r5,fp
  80ab24:	346c983a 	sll	r22,r6,r17
  80ab28:	dd400015 	stw	r21,0(sp)
  80ab2c:	080b4340 	call	80b434 <__umodsi3>
  80ab30:	8009883a 	mov	r4,r16
  80ab34:	e00b883a 	mov	r5,fp
  80ab38:	102f883a 	mov	r23,r2
  80ab3c:	9cbfffcc 	andi	r18,r19,65535
  80ab40:	080b3d00 	call	80b3d0 <__udivsi3>
  80ab44:	9009883a 	mov	r4,r18
  80ab48:	100b883a 	mov	r5,r2
  80ab4c:	1021883a 	mov	r16,r2
  80ab50:	0800f080 	call	800f08 <__mulsi3>
  80ab54:	b82e943a 	slli	r23,r23,16
  80ab58:	a808d43a 	srli	r4,r21,16
  80ab5c:	b908b03a 	or	r4,r23,r4
  80ab60:	2080062e 	bgeu	r4,r2,80ab7c <__udivdi3+0x480>
  80ab64:	24c9883a 	add	r4,r4,r19
  80ab68:	817fffc4 	addi	r5,r16,-1
  80ab6c:	24c05c36 	bltu	r4,r19,80ace0 <__udivdi3+0x5e4>
  80ab70:	20805b2e 	bgeu	r4,r2,80ace0 <__udivdi3+0x5e4>
  80ab74:	843fff84 	addi	r16,r16,-2
  80ab78:	24c9883a 	add	r4,r4,r19
  80ab7c:	20abc83a 	sub	r21,r4,r2
  80ab80:	a809883a 	mov	r4,r21
  80ab84:	e00b883a 	mov	r5,fp
  80ab88:	080b4340 	call	80b434 <__umodsi3>
  80ab8c:	a809883a 	mov	r4,r21
  80ab90:	e00b883a 	mov	r5,fp
  80ab94:	102b883a 	mov	r21,r2
  80ab98:	080b3d00 	call	80b3d0 <__udivsi3>
  80ab9c:	9009883a 	mov	r4,r18
  80aba0:	100b883a 	mov	r5,r2
  80aba4:	102f883a 	mov	r23,r2
  80aba8:	0800f080 	call	800f08 <__mulsi3>
  80abac:	d8c00017 	ldw	r3,0(sp)
  80abb0:	a82a943a 	slli	r21,r21,16
  80abb4:	1cbfffcc 	andi	r18,r3,65535
  80abb8:	aca4b03a 	or	r18,r21,r18
  80abbc:	9080062e 	bgeu	r18,r2,80abd8 <__udivdi3+0x4dc>
  80abc0:	94e5883a 	add	r18,r18,r19
  80abc4:	b8ffffc4 	addi	r3,r23,-1
  80abc8:	94c04136 	bltu	r18,r19,80acd0 <__udivdi3+0x5d4>
  80abcc:	9080402e 	bgeu	r18,r2,80acd0 <__udivdi3+0x5d4>
  80abd0:	bdffff84 	addi	r23,r23,-2
  80abd4:	94e5883a 	add	r18,r18,r19
  80abd8:	8020943a 	slli	r16,r16,16
  80abdc:	bd7fffcc 	andi	r21,r23,65535
  80abe0:	b73fffcc 	andi	fp,r22,65535
  80abe4:	85e0b03a 	or	r16,r16,r23
  80abe8:	8026d43a 	srli	r19,r16,16
  80abec:	a809883a 	mov	r4,r21
  80abf0:	e00b883a 	mov	r5,fp
  80abf4:	b02cd43a 	srli	r22,r22,16
  80abf8:	90a5c83a 	sub	r18,r18,r2
  80abfc:	0800f080 	call	800f08 <__mulsi3>
  80ac00:	9809883a 	mov	r4,r19
  80ac04:	e00b883a 	mov	r5,fp
  80ac08:	102f883a 	mov	r23,r2
  80ac0c:	0800f080 	call	800f08 <__mulsi3>
  80ac10:	9809883a 	mov	r4,r19
  80ac14:	b00b883a 	mov	r5,r22
  80ac18:	1027883a 	mov	r19,r2
  80ac1c:	0800f080 	call	800f08 <__mulsi3>
  80ac20:	a809883a 	mov	r4,r21
  80ac24:	b00b883a 	mov	r5,r22
  80ac28:	102b883a 	mov	r21,r2
  80ac2c:	0800f080 	call	800f08 <__mulsi3>
  80ac30:	b806d43a 	srli	r3,r23,16
  80ac34:	14c5883a 	add	r2,r2,r19
  80ac38:	1887883a 	add	r3,r3,r2
  80ac3c:	1cc0022e 	bgeu	r3,r19,80ac48 <__udivdi3+0x54c>
  80ac40:	00800074 	movhi	r2,1
  80ac44:	a8ab883a 	add	r21,r21,r2
  80ac48:	1804d43a 	srli	r2,r3,16
  80ac4c:	156b883a 	add	r21,r2,r21
  80ac50:	95400936 	bltu	r18,r21,80ac78 <__udivdi3+0x57c>
  80ac54:	95400326 	beq	r18,r21,80ac64 <__udivdi3+0x568>
  80ac58:	8005883a 	mov	r2,r16
  80ac5c:	0007883a 	mov	r3,zero
  80ac60:	003efd06 	br	80a858 <__udivdi3+0x15c>
  80ac64:	1806943a 	slli	r3,r3,16
  80ac68:	a44c983a 	sll	r6,r20,r17
  80ac6c:	bdffffcc 	andi	r23,r23,65535
  80ac70:	1dc7883a 	add	r3,r3,r23
  80ac74:	30fff82e 	bgeu	r6,r3,80ac58 <__udivdi3+0x55c>
  80ac78:	80bfffc4 	addi	r2,r16,-1
  80ac7c:	0007883a 	mov	r3,zero
  80ac80:	003ef506 	br	80a858 <__udivdi3+0x15c>
  80ac84:	3806d43a 	srli	r3,r7,16
  80ac88:	01000404 	movi	r4,16
  80ac8c:	003f0406 	br	80a8a0 <__udivdi3+0x1a4>
  80ac90:	3007883a 	mov	r3,r6
  80ac94:	003eb206 	br	80a760 <__udivdi3+0x64>
  80ac98:	0007883a 	mov	r3,zero
  80ac9c:	00800044 	movi	r2,1
  80aca0:	003eed06 	br	80a858 <__udivdi3+0x15c>
  80aca4:	3807883a 	mov	r3,r7
  80aca8:	0009883a 	mov	r4,zero
  80acac:	003efc06 	br	80a8a0 <__udivdi3+0x1a4>
  80acb0:	8006d43a 	srli	r3,r16,16
  80acb4:	04400404 	movi	r17,16
  80acb8:	003f0f06 	br	80a8f8 <__udivdi3+0x1fc>
  80acbc:	3006d43a 	srli	r3,r6,16
  80acc0:	04400404 	movi	r17,16
  80acc4:	003ea606 	br	80a760 <__udivdi3+0x64>
  80acc8:	8007883a 	mov	r3,r16
  80accc:	003f0a06 	br	80a8f8 <__udivdi3+0x1fc>
  80acd0:	182f883a 	mov	r23,r3
  80acd4:	003fc006 	br	80abd8 <__udivdi3+0x4dc>
  80acd8:	1839883a 	mov	fp,r3
  80acdc:	003f8306 	br	80aaec <__udivdi3+0x3f0>
  80ace0:	2821883a 	mov	r16,r5
  80ace4:	003fa506 	br	80ab7c <__udivdi3+0x480>
  80ace8:	182f883a 	mov	r23,r3
  80acec:	003f6906 	br	80aa94 <__udivdi3+0x398>
  80acf0:	94bfff84 	addi	r18,r18,-2
  80acf4:	003f3806 	br	80a9d8 <__udivdi3+0x2dc>
  80acf8:	94bfff84 	addi	r18,r18,-2
  80acfc:	003ecf06 	br	80a83c <__udivdi3+0x140>
  80ad00:	ad7fff84 	addi	r21,r21,-2
  80ad04:	2409883a 	add	r4,r4,r16
  80ad08:	003eb706 	br	80a7e8 <__udivdi3+0xec>
  80ad0c:	ad7fff84 	addi	r21,r21,-2
  80ad10:	2409883a 	add	r4,r4,r16
  80ad14:	003f1906 	br	80a97c <__udivdi3+0x280>

0080ad18 <__umoddi3>:
  80ad18:	defff304 	addi	sp,sp,-52
  80ad1c:	dc400415 	stw	r17,16(sp)
  80ad20:	dc000315 	stw	r16,12(sp)
  80ad24:	dfc00c15 	stw	ra,48(sp)
  80ad28:	df000b15 	stw	fp,44(sp)
  80ad2c:	ddc00a15 	stw	r23,40(sp)
  80ad30:	dd800915 	stw	r22,36(sp)
  80ad34:	dd400815 	stw	r21,32(sp)
  80ad38:	dd000715 	stw	r20,28(sp)
  80ad3c:	dcc00615 	stw	r19,24(sp)
  80ad40:	dc800515 	stw	r18,20(sp)
  80ad44:	2823883a 	mov	r17,r5
  80ad48:	2021883a 	mov	r16,r4
  80ad4c:	38003b1e 	bne	r7,zero,80ae3c <__umoddi3+0x124>
  80ad50:	3825883a 	mov	r18,r7
  80ad54:	3029883a 	mov	r20,r6
  80ad58:	2027883a 	mov	r19,r4
  80ad5c:	29805b2e 	bgeu	r5,r6,80aecc <__umoddi3+0x1b4>
  80ad60:	00bfffd4 	movui	r2,65535
  80ad64:	282d883a 	mov	r22,r5
  80ad68:	11809a2e 	bgeu	r2,r6,80afd4 <__umoddi3+0x2bc>
  80ad6c:	00804034 	movhi	r2,256
  80ad70:	30814436 	bltu	r6,r2,80b284 <__umoddi3+0x56c>
  80ad74:	3006d63a 	srli	r3,r6,24
  80ad78:	04800604 	movi	r18,24
  80ad7c:	00802074 	movhi	r2,129
  80ad80:	1885883a 	add	r2,r3,r2
  80ad84:	11016003 	ldbu	r4,1408(r2)
  80ad88:	00800804 	movi	r2,32
  80ad8c:	2489883a 	add	r4,r4,r18
  80ad90:	1125c83a 	sub	r18,r2,r4
  80ad94:	11000526 	beq	r2,r4,80adac <__umoddi3+0x94>
  80ad98:	8ca2983a 	sll	r17,r17,r18
  80ad9c:	8108d83a 	srl	r4,r16,r4
  80ada0:	34a8983a 	sll	r20,r6,r18
  80ada4:	84a6983a 	sll	r19,r16,r18
  80ada8:	246cb03a 	or	r22,r4,r17
  80adac:	a02ed43a 	srli	r23,r20,16
  80adb0:	b009883a 	mov	r4,r22
  80adb4:	a57fffcc 	andi	r21,r20,65535
  80adb8:	b80b883a 	mov	r5,r23
  80adbc:	080b4340 	call	80b434 <__umodsi3>
  80adc0:	b80b883a 	mov	r5,r23
  80adc4:	b009883a 	mov	r4,r22
  80adc8:	1023883a 	mov	r17,r2
  80adcc:	080b3d00 	call	80b3d0 <__udivsi3>
  80add0:	a809883a 	mov	r4,r21
  80add4:	100b883a 	mov	r5,r2
  80add8:	0800f080 	call	800f08 <__mulsi3>
  80addc:	8822943a 	slli	r17,r17,16
  80ade0:	9808d43a 	srli	r4,r19,16
  80ade4:	8908b03a 	or	r4,r17,r4
  80ade8:	2080042e 	bgeu	r4,r2,80adfc <__umoddi3+0xe4>
  80adec:	2509883a 	add	r4,r4,r20
  80adf0:	25000236 	bltu	r4,r20,80adfc <__umoddi3+0xe4>
  80adf4:	2080012e 	bgeu	r4,r2,80adfc <__umoddi3+0xe4>
  80adf8:	2509883a 	add	r4,r4,r20
  80adfc:	20a1c83a 	sub	r16,r4,r2
  80ae00:	b80b883a 	mov	r5,r23
  80ae04:	8009883a 	mov	r4,r16
  80ae08:	080b4340 	call	80b434 <__umodsi3>
  80ae0c:	b80b883a 	mov	r5,r23
  80ae10:	8009883a 	mov	r4,r16
  80ae14:	1023883a 	mov	r17,r2
  80ae18:	080b3d00 	call	80b3d0 <__udivsi3>
  80ae1c:	8822943a 	slli	r17,r17,16
  80ae20:	100b883a 	mov	r5,r2
  80ae24:	a809883a 	mov	r4,r21
  80ae28:	0800f080 	call	800f08 <__mulsi3>
  80ae2c:	98ffffcc 	andi	r3,r19,65535
  80ae30:	88c6b03a 	or	r3,r17,r3
  80ae34:	18805e2e 	bgeu	r3,r2,80afb0 <__umoddi3+0x298>
  80ae38:	00005906 	br	80afa0 <__umoddi3+0x288>
  80ae3c:	2005883a 	mov	r2,r4
  80ae40:	29c00d2e 	bgeu	r5,r7,80ae78 <__umoddi3+0x160>
  80ae44:	2807883a 	mov	r3,r5
  80ae48:	dfc00c17 	ldw	ra,48(sp)
  80ae4c:	df000b17 	ldw	fp,44(sp)
  80ae50:	ddc00a17 	ldw	r23,40(sp)
  80ae54:	dd800917 	ldw	r22,36(sp)
  80ae58:	dd400817 	ldw	r21,32(sp)
  80ae5c:	dd000717 	ldw	r20,28(sp)
  80ae60:	dcc00617 	ldw	r19,24(sp)
  80ae64:	dc800517 	ldw	r18,20(sp)
  80ae68:	dc400417 	ldw	r17,16(sp)
  80ae6c:	dc000317 	ldw	r16,12(sp)
  80ae70:	dec00d04 	addi	sp,sp,52
  80ae74:	f800283a 	ret
  80ae78:	013fffd4 	movui	r4,65535
  80ae7c:	2807883a 	mov	r3,r5
  80ae80:	21c0592e 	bgeu	r4,r7,80afe8 <__umoddi3+0x2d0>
  80ae84:	01004034 	movhi	r4,256
  80ae88:	39010336 	bltu	r7,r4,80b298 <__umoddi3+0x580>
  80ae8c:	3808d63a 	srli	r4,r7,24
  80ae90:	02000604 	movi	r8,24
  80ae94:	01402074 	movhi	r5,129
  80ae98:	214b883a 	add	r5,r4,r5
  80ae9c:	2d016003 	ldbu	r20,1408(r5)
  80aea0:	01000804 	movi	r4,32
  80aea4:	a229883a 	add	r20,r20,r8
  80aea8:	252bc83a 	sub	r21,r4,r20
  80aeac:	2500531e 	bne	r4,r20,80affc <__umoddi3+0x2e4>
  80aeb0:	3c400136 	bltu	r7,r17,80aeb8 <__umoddi3+0x1a0>
  80aeb4:	81bfe436 	bltu	r16,r6,80ae48 <__umoddi3+0x130>
  80aeb8:	8185c83a 	sub	r2,r16,r6
  80aebc:	89cfc83a 	sub	r7,r17,r7
  80aec0:	8087803a 	cmpltu	r3,r16,r2
  80aec4:	38c7c83a 	sub	r3,r7,r3
  80aec8:	003fdf06 	br	80ae48 <__umoddi3+0x130>
  80aecc:	3000041e 	bne	r6,zero,80aee0 <__umoddi3+0x1c8>
  80aed0:	000b883a 	mov	r5,zero
  80aed4:	01000044 	movi	r4,1
  80aed8:	080b3d00 	call	80b3d0 <__udivsi3>
  80aedc:	1029883a 	mov	r20,r2
  80aee0:	00bfffd4 	movui	r2,65535
  80aee4:	1500362e 	bgeu	r2,r20,80afc0 <__umoddi3+0x2a8>
  80aee8:	00804034 	movhi	r2,256
  80aeec:	a080ed36 	bltu	r20,r2,80b2a4 <__umoddi3+0x58c>
  80aef0:	a006d63a 	srli	r3,r20,24
  80aef4:	04800604 	movi	r18,24
  80aef8:	00802074 	movhi	r2,129
  80aefc:	1885883a 	add	r2,r3,r2
  80af00:	15816003 	ldbu	r22,1408(r2)
  80af04:	00800804 	movi	r2,32
  80af08:	b4ad883a 	add	r22,r22,r18
  80af0c:	15a5c83a 	sub	r18,r2,r22
  80af10:	1580a51e 	bne	r2,r22,80b1a8 <__umoddi3+0x490>
  80af14:	a02ed43a 	srli	r23,r20,16
  80af18:	8d23c83a 	sub	r17,r17,r20
  80af1c:	a57fffcc 	andi	r21,r20,65535
  80af20:	8809883a 	mov	r4,r17
  80af24:	b80b883a 	mov	r5,r23
  80af28:	080b4340 	call	80b434 <__umodsi3>
  80af2c:	8809883a 	mov	r4,r17
  80af30:	b80b883a 	mov	r5,r23
  80af34:	1023883a 	mov	r17,r2
  80af38:	080b3d00 	call	80b3d0 <__udivsi3>
  80af3c:	1009883a 	mov	r4,r2
  80af40:	a80b883a 	mov	r5,r21
  80af44:	0800f080 	call	800f08 <__mulsi3>
  80af48:	8822943a 	slli	r17,r17,16
  80af4c:	9808d43a 	srli	r4,r19,16
  80af50:	8908b03a 	or	r4,r17,r4
  80af54:	2080032e 	bgeu	r4,r2,80af64 <__umoddi3+0x24c>
  80af58:	2509883a 	add	r4,r4,r20
  80af5c:	25000136 	bltu	r4,r20,80af64 <__umoddi3+0x24c>
  80af60:	2080dc36 	bltu	r4,r2,80b2d4 <__umoddi3+0x5bc>
  80af64:	20a1c83a 	sub	r16,r4,r2
  80af68:	b80b883a 	mov	r5,r23
  80af6c:	8009883a 	mov	r4,r16
  80af70:	080b4340 	call	80b434 <__umodsi3>
  80af74:	b80b883a 	mov	r5,r23
  80af78:	8009883a 	mov	r4,r16
  80af7c:	1023883a 	mov	r17,r2
  80af80:	8822943a 	slli	r17,r17,16
  80af84:	080b3d00 	call	80b3d0 <__udivsi3>
  80af88:	a80b883a 	mov	r5,r21
  80af8c:	1009883a 	mov	r4,r2
  80af90:	0800f080 	call	800f08 <__mulsi3>
  80af94:	9cffffcc 	andi	r19,r19,65535
  80af98:	8cc6b03a 	or	r3,r17,r19
  80af9c:	1880042e 	bgeu	r3,r2,80afb0 <__umoddi3+0x298>
  80afa0:	1d07883a 	add	r3,r3,r20
  80afa4:	1d000236 	bltu	r3,r20,80afb0 <__umoddi3+0x298>
  80afa8:	1880012e 	bgeu	r3,r2,80afb0 <__umoddi3+0x298>
  80afac:	1d07883a 	add	r3,r3,r20
  80afb0:	1885c83a 	sub	r2,r3,r2
  80afb4:	1484d83a 	srl	r2,r2,r18
  80afb8:	0007883a 	mov	r3,zero
  80afbc:	003fa206 	br	80ae48 <__umoddi3+0x130>
  80afc0:	a0804030 	cmpltui	r2,r20,256
  80afc4:	1000ba1e 	bne	r2,zero,80b2b0 <__umoddi3+0x598>
  80afc8:	a006d23a 	srli	r3,r20,8
  80afcc:	04800204 	movi	r18,8
  80afd0:	003fc906 	br	80aef8 <__umoddi3+0x1e0>
  80afd4:	30804030 	cmpltui	r2,r6,256
  80afd8:	1000ad1e 	bne	r2,zero,80b290 <__umoddi3+0x578>
  80afdc:	3006d23a 	srli	r3,r6,8
  80afe0:	04800204 	movi	r18,8
  80afe4:	003f6506 	br	80ad7c <__umoddi3+0x64>
  80afe8:	39004030 	cmpltui	r4,r7,256
  80afec:	2000b21e 	bne	r4,zero,80b2b8 <__umoddi3+0x5a0>
  80aff0:	3808d23a 	srli	r4,r7,8
  80aff4:	02000204 	movi	r8,8
  80aff8:	003fa606 	br	80ae94 <__umoddi3+0x17c>
  80affc:	3d4e983a 	sll	r7,r7,r21
  80b000:	3508d83a 	srl	r4,r6,r20
  80b004:	8d2cd83a 	srl	r22,r17,r20
  80b008:	8504d83a 	srl	r2,r16,r20
  80b00c:	21e4b03a 	or	r18,r4,r7
  80b010:	8d62983a 	sll	r17,r17,r21
  80b014:	9026d43a 	srli	r19,r18,16
  80b018:	354c983a 	sll	r6,r6,r21
  80b01c:	1444b03a 	or	r2,r2,r17
  80b020:	b009883a 	mov	r4,r22
  80b024:	980b883a 	mov	r5,r19
  80b028:	d9800115 	stw	r6,4(sp)
  80b02c:	d8800015 	stw	r2,0(sp)
  80b030:	080b4340 	call	80b434 <__umodsi3>
  80b034:	980b883a 	mov	r5,r19
  80b038:	b009883a 	mov	r4,r22
  80b03c:	102f883a 	mov	r23,r2
  80b040:	947fffcc 	andi	r17,r18,65535
  80b044:	080b3d00 	call	80b3d0 <__udivsi3>
  80b048:	8809883a 	mov	r4,r17
  80b04c:	100b883a 	mov	r5,r2
  80b050:	1039883a 	mov	fp,r2
  80b054:	0800f080 	call	800f08 <__mulsi3>
  80b058:	d8c00017 	ldw	r3,0(sp)
  80b05c:	b82e943a 	slli	r23,r23,16
  80b060:	8560983a 	sll	r16,r16,r21
  80b064:	1808d43a 	srli	r4,r3,16
  80b068:	b908b03a 	or	r4,r23,r4
  80b06c:	2080062e 	bgeu	r4,r2,80b088 <__umoddi3+0x370>
  80b070:	2489883a 	add	r4,r4,r18
  80b074:	e17fffc4 	addi	r5,fp,-1
  80b078:	24809436 	bltu	r4,r18,80b2cc <__umoddi3+0x5b4>
  80b07c:	2080932e 	bgeu	r4,r2,80b2cc <__umoddi3+0x5b4>
  80b080:	e73fff84 	addi	fp,fp,-2
  80b084:	2489883a 	add	r4,r4,r18
  80b088:	20adc83a 	sub	r22,r4,r2
  80b08c:	980b883a 	mov	r5,r19
  80b090:	b009883a 	mov	r4,r22
  80b094:	080b4340 	call	80b434 <__umodsi3>
  80b098:	980b883a 	mov	r5,r19
  80b09c:	b009883a 	mov	r4,r22
  80b0a0:	102f883a 	mov	r23,r2
  80b0a4:	080b3d00 	call	80b3d0 <__udivsi3>
  80b0a8:	100b883a 	mov	r5,r2
  80b0ac:	8809883a 	mov	r4,r17
  80b0b0:	d8800215 	stw	r2,8(sp)
  80b0b4:	0800f080 	call	800f08 <__mulsi3>
  80b0b8:	d8c00017 	ldw	r3,0(sp)
  80b0bc:	b82e943a 	slli	r23,r23,16
  80b0c0:	d9400217 	ldw	r5,8(sp)
  80b0c4:	1c7fffcc 	andi	r17,r3,65535
  80b0c8:	bc62b03a 	or	r17,r23,r17
  80b0cc:	8880062e 	bgeu	r17,r2,80b0e8 <__umoddi3+0x3d0>
  80b0d0:	8ca3883a 	add	r17,r17,r18
  80b0d4:	28ffffc4 	addi	r3,r5,-1
  80b0d8:	8c807a36 	bltu	r17,r18,80b2c4 <__umoddi3+0x5ac>
  80b0dc:	8880792e 	bgeu	r17,r2,80b2c4 <__umoddi3+0x5ac>
  80b0e0:	297fff84 	addi	r5,r5,-2
  80b0e4:	8ca3883a 	add	r17,r17,r18
  80b0e8:	e02c943a 	slli	r22,fp,16
  80b0ec:	d9c00117 	ldw	r7,4(sp)
  80b0f0:	29bfffcc 	andi	r6,r5,65535
  80b0f4:	b16cb03a 	or	r22,r22,r5
  80b0f8:	38ffffcc 	andi	r3,r7,65535
  80b0fc:	b02cd43a 	srli	r22,r22,16
  80b100:	180b883a 	mov	r5,r3
  80b104:	3009883a 	mov	r4,r6
  80b108:	3838d43a 	srli	fp,r7,16
  80b10c:	182f883a 	mov	r23,r3
  80b110:	d9800015 	stw	r6,0(sp)
  80b114:	88a3c83a 	sub	r17,r17,r2
  80b118:	0800f080 	call	800f08 <__mulsi3>
  80b11c:	b80b883a 	mov	r5,r23
  80b120:	b009883a 	mov	r4,r22
  80b124:	102f883a 	mov	r23,r2
  80b128:	0800f080 	call	800f08 <__mulsi3>
  80b12c:	e00b883a 	mov	r5,fp
  80b130:	b009883a 	mov	r4,r22
  80b134:	102d883a 	mov	r22,r2
  80b138:	0800f080 	call	800f08 <__mulsi3>
  80b13c:	d9800017 	ldw	r6,0(sp)
  80b140:	e00b883a 	mov	r5,fp
  80b144:	1039883a 	mov	fp,r2
  80b148:	3009883a 	mov	r4,r6
  80b14c:	0800f080 	call	800f08 <__mulsi3>
  80b150:	b808d43a 	srli	r4,r23,16
  80b154:	1585883a 	add	r2,r2,r22
  80b158:	2089883a 	add	r4,r4,r2
  80b15c:	2580022e 	bgeu	r4,r22,80b168 <__umoddi3+0x450>
  80b160:	00800074 	movhi	r2,1
  80b164:	e0b9883a 	add	fp,fp,r2
  80b168:	2006d43a 	srli	r3,r4,16
  80b16c:	2008943a 	slli	r4,r4,16
  80b170:	bdffffcc 	andi	r23,r23,65535
  80b174:	1f07883a 	add	r3,r3,fp
  80b178:	25c9883a 	add	r4,r4,r23
  80b17c:	88c03a36 	bltu	r17,r3,80b268 <__umoddi3+0x550>
  80b180:	88c03826 	beq	r17,r3,80b264 <__umoddi3+0x54c>
  80b184:	8109c83a 	sub	r4,r16,r4
  80b188:	8121803a 	cmpltu	r16,r16,r4
  80b18c:	88c7c83a 	sub	r3,r17,r3
  80b190:	1c07c83a 	sub	r3,r3,r16
  80b194:	1d04983a 	sll	r2,r3,r20
  80b198:	2548d83a 	srl	r4,r4,r21
  80b19c:	1d46d83a 	srl	r3,r3,r21
  80b1a0:	1104b03a 	or	r2,r2,r4
  80b1a4:	003f2806 	br	80ae48 <__umoddi3+0x130>
  80b1a8:	a4a8983a 	sll	r20,r20,r18
  80b1ac:	8da6d83a 	srl	r19,r17,r22
  80b1b0:	8ca2983a 	sll	r17,r17,r18
  80b1b4:	a02ed43a 	srli	r23,r20,16
  80b1b8:	9809883a 	mov	r4,r19
  80b1bc:	85acd83a 	srl	r22,r16,r22
  80b1c0:	b80b883a 	mov	r5,r23
  80b1c4:	080b4340 	call	80b434 <__umodsi3>
  80b1c8:	9809883a 	mov	r4,r19
  80b1cc:	b80b883a 	mov	r5,r23
  80b1d0:	b46cb03a 	or	r22,r22,r17
  80b1d4:	a57fffcc 	andi	r21,r20,65535
  80b1d8:	1023883a 	mov	r17,r2
  80b1dc:	080b3d00 	call	80b3d0 <__udivsi3>
  80b1e0:	a809883a 	mov	r4,r21
  80b1e4:	100b883a 	mov	r5,r2
  80b1e8:	0800f080 	call	800f08 <__mulsi3>
  80b1ec:	8822943a 	slli	r17,r17,16
  80b1f0:	b008d43a 	srli	r4,r22,16
  80b1f4:	84a6983a 	sll	r19,r16,r18
  80b1f8:	8908b03a 	or	r4,r17,r4
  80b1fc:	2080042e 	bgeu	r4,r2,80b210 <__umoddi3+0x4f8>
  80b200:	2509883a 	add	r4,r4,r20
  80b204:	25000236 	bltu	r4,r20,80b210 <__umoddi3+0x4f8>
  80b208:	2080012e 	bgeu	r4,r2,80b210 <__umoddi3+0x4f8>
  80b20c:	2509883a 	add	r4,r4,r20
  80b210:	20a1c83a 	sub	r16,r4,r2
  80b214:	8009883a 	mov	r4,r16
  80b218:	b80b883a 	mov	r5,r23
  80b21c:	080b4340 	call	80b434 <__umodsi3>
  80b220:	8009883a 	mov	r4,r16
  80b224:	1021883a 	mov	r16,r2
  80b228:	b80b883a 	mov	r5,r23
  80b22c:	8020943a 	slli	r16,r16,16
  80b230:	080b3d00 	call	80b3d0 <__udivsi3>
  80b234:	100b883a 	mov	r5,r2
  80b238:	a809883a 	mov	r4,r21
  80b23c:	b47fffcc 	andi	r17,r22,65535
  80b240:	0800f080 	call	800f08 <__mulsi3>
  80b244:	8462b03a 	or	r17,r16,r17
  80b248:	8880042e 	bgeu	r17,r2,80b25c <__umoddi3+0x544>
  80b24c:	8d23883a 	add	r17,r17,r20
  80b250:	8d000236 	bltu	r17,r20,80b25c <__umoddi3+0x544>
  80b254:	8880012e 	bgeu	r17,r2,80b25c <__umoddi3+0x544>
  80b258:	8d23883a 	add	r17,r17,r20
  80b25c:	88a3c83a 	sub	r17,r17,r2
  80b260:	003f2f06 	br	80af20 <__umoddi3+0x208>
  80b264:	813fc72e 	bgeu	r16,r4,80b184 <__umoddi3+0x46c>
  80b268:	d8800117 	ldw	r2,4(sp)
  80b26c:	20a7c83a 	sub	r19,r4,r2
  80b270:	24c9803a 	cmpltu	r4,r4,r19
  80b274:	2489883a 	add	r4,r4,r18
  80b278:	1907c83a 	sub	r3,r3,r4
  80b27c:	9809883a 	mov	r4,r19
  80b280:	003fc006 	br	80b184 <__umoddi3+0x46c>
  80b284:	3006d43a 	srli	r3,r6,16
  80b288:	04800404 	movi	r18,16
  80b28c:	003ebb06 	br	80ad7c <__umoddi3+0x64>
  80b290:	3007883a 	mov	r3,r6
  80b294:	003eb906 	br	80ad7c <__umoddi3+0x64>
  80b298:	3808d43a 	srli	r4,r7,16
  80b29c:	02000404 	movi	r8,16
  80b2a0:	003efc06 	br	80ae94 <__umoddi3+0x17c>
  80b2a4:	a006d43a 	srli	r3,r20,16
  80b2a8:	04800404 	movi	r18,16
  80b2ac:	003f1206 	br	80aef8 <__umoddi3+0x1e0>
  80b2b0:	a007883a 	mov	r3,r20
  80b2b4:	003f1006 	br	80aef8 <__umoddi3+0x1e0>
  80b2b8:	3809883a 	mov	r4,r7
  80b2bc:	0011883a 	mov	r8,zero
  80b2c0:	003ef406 	br	80ae94 <__umoddi3+0x17c>
  80b2c4:	180b883a 	mov	r5,r3
  80b2c8:	003f8706 	br	80b0e8 <__umoddi3+0x3d0>
  80b2cc:	2839883a 	mov	fp,r5
  80b2d0:	003f6d06 	br	80b088 <__umoddi3+0x370>
  80b2d4:	2509883a 	add	r4,r4,r20
  80b2d8:	003f2206 	br	80af64 <__umoddi3+0x24c>

0080b2dc <__divsi3>:
  80b2dc:	20001a16 	blt	r4,zero,80b348 <__divsi3+0x6c>
  80b2e0:	000f883a 	mov	r7,zero
  80b2e4:	2800020e 	bge	r5,zero,80b2f0 <__divsi3+0x14>
  80b2e8:	014bc83a 	sub	r5,zero,r5
  80b2ec:	39c0005c 	xori	r7,r7,1
  80b2f0:	200d883a 	mov	r6,r4
  80b2f4:	00c00044 	movi	r3,1
  80b2f8:	2900092e 	bgeu	r5,r4,80b320 <__divsi3+0x44>
  80b2fc:	00800804 	movi	r2,32
  80b300:	00c00044 	movi	r3,1
  80b304:	00000106 	br	80b30c <__divsi3+0x30>
  80b308:	10001226 	beq	r2,zero,80b354 <__divsi3+0x78>
  80b30c:	294b883a 	add	r5,r5,r5
  80b310:	10bfffc4 	addi	r2,r2,-1
  80b314:	18c7883a 	add	r3,r3,r3
  80b318:	293ffb36 	bltu	r5,r4,80b308 <__divsi3+0x2c>
  80b31c:	18000d26 	beq	r3,zero,80b354 <__divsi3+0x78>
  80b320:	0005883a 	mov	r2,zero
  80b324:	31400236 	bltu	r6,r5,80b330 <__divsi3+0x54>
  80b328:	314dc83a 	sub	r6,r6,r5
  80b32c:	10c4b03a 	or	r2,r2,r3
  80b330:	1806d07a 	srli	r3,r3,1
  80b334:	280ad07a 	srli	r5,r5,1
  80b338:	183ffa1e 	bne	r3,zero,80b324 <__divsi3+0x48>
  80b33c:	38000126 	beq	r7,zero,80b344 <__divsi3+0x68>
  80b340:	0085c83a 	sub	r2,zero,r2
  80b344:	f800283a 	ret
  80b348:	0109c83a 	sub	r4,zero,r4
  80b34c:	01c00044 	movi	r7,1
  80b350:	003fe406 	br	80b2e4 <__divsi3+0x8>
  80b354:	0005883a 	mov	r2,zero
  80b358:	003ff806 	br	80b33c <__divsi3+0x60>

0080b35c <__modsi3>:
  80b35c:	20001916 	blt	r4,zero,80b3c4 <__modsi3+0x68>
  80b360:	000f883a 	mov	r7,zero
  80b364:	2005883a 	mov	r2,r4
  80b368:	2800010e 	bge	r5,zero,80b370 <__modsi3+0x14>
  80b36c:	014bc83a 	sub	r5,zero,r5
  80b370:	00c00044 	movi	r3,1
  80b374:	2900092e 	bgeu	r5,r4,80b39c <__modsi3+0x40>
  80b378:	01800804 	movi	r6,32
  80b37c:	00c00044 	movi	r3,1
  80b380:	00000106 	br	80b388 <__modsi3+0x2c>
  80b384:	30000d26 	beq	r6,zero,80b3bc <__modsi3+0x60>
  80b388:	294b883a 	add	r5,r5,r5
  80b38c:	31bfffc4 	addi	r6,r6,-1
  80b390:	18c7883a 	add	r3,r3,r3
  80b394:	293ffb36 	bltu	r5,r4,80b384 <__modsi3+0x28>
  80b398:	18000826 	beq	r3,zero,80b3bc <__modsi3+0x60>
  80b39c:	1806d07a 	srli	r3,r3,1
  80b3a0:	11400136 	bltu	r2,r5,80b3a8 <__modsi3+0x4c>
  80b3a4:	1145c83a 	sub	r2,r2,r5
  80b3a8:	280ad07a 	srli	r5,r5,1
  80b3ac:	183ffb1e 	bne	r3,zero,80b39c <__modsi3+0x40>
  80b3b0:	38000126 	beq	r7,zero,80b3b8 <__modsi3+0x5c>
  80b3b4:	0085c83a 	sub	r2,zero,r2
  80b3b8:	f800283a 	ret
  80b3bc:	2005883a 	mov	r2,r4
  80b3c0:	003ffb06 	br	80b3b0 <__modsi3+0x54>
  80b3c4:	0109c83a 	sub	r4,zero,r4
  80b3c8:	01c00044 	movi	r7,1
  80b3cc:	003fe506 	br	80b364 <__modsi3+0x8>

0080b3d0 <__udivsi3>:
  80b3d0:	200d883a 	mov	r6,r4
  80b3d4:	2900152e 	bgeu	r5,r4,80b42c <__udivsi3+0x5c>
  80b3d8:	28001416 	blt	r5,zero,80b42c <__udivsi3+0x5c>
  80b3dc:	00800804 	movi	r2,32
  80b3e0:	00c00044 	movi	r3,1
  80b3e4:	00000206 	br	80b3f0 <__udivsi3+0x20>
  80b3e8:	10000e26 	beq	r2,zero,80b424 <__udivsi3+0x54>
  80b3ec:	28000516 	blt	r5,zero,80b404 <__udivsi3+0x34>
  80b3f0:	294b883a 	add	r5,r5,r5
  80b3f4:	10bfffc4 	addi	r2,r2,-1
  80b3f8:	18c7883a 	add	r3,r3,r3
  80b3fc:	293ffa36 	bltu	r5,r4,80b3e8 <__udivsi3+0x18>
  80b400:	18000826 	beq	r3,zero,80b424 <__udivsi3+0x54>
  80b404:	0005883a 	mov	r2,zero
  80b408:	31400236 	bltu	r6,r5,80b414 <__udivsi3+0x44>
  80b40c:	314dc83a 	sub	r6,r6,r5
  80b410:	10c4b03a 	or	r2,r2,r3
  80b414:	1806d07a 	srli	r3,r3,1
  80b418:	280ad07a 	srli	r5,r5,1
  80b41c:	183ffa1e 	bne	r3,zero,80b408 <__udivsi3+0x38>
  80b420:	f800283a 	ret
  80b424:	0005883a 	mov	r2,zero
  80b428:	f800283a 	ret
  80b42c:	00c00044 	movi	r3,1
  80b430:	003ff406 	br	80b404 <__udivsi3+0x34>

0080b434 <__umodsi3>:
  80b434:	2005883a 	mov	r2,r4
  80b438:	2900132e 	bgeu	r5,r4,80b488 <__umodsi3+0x54>
  80b43c:	28001216 	blt	r5,zero,80b488 <__umodsi3+0x54>
  80b440:	01800804 	movi	r6,32
  80b444:	00c00044 	movi	r3,1
  80b448:	00000206 	br	80b454 <__umodsi3+0x20>
  80b44c:	30000c26 	beq	r6,zero,80b480 <__umodsi3+0x4c>
  80b450:	28000516 	blt	r5,zero,80b468 <__umodsi3+0x34>
  80b454:	294b883a 	add	r5,r5,r5
  80b458:	31bfffc4 	addi	r6,r6,-1
  80b45c:	18c7883a 	add	r3,r3,r3
  80b460:	293ffa36 	bltu	r5,r4,80b44c <__umodsi3+0x18>
  80b464:	18000626 	beq	r3,zero,80b480 <__umodsi3+0x4c>
  80b468:	1806d07a 	srli	r3,r3,1
  80b46c:	11400136 	bltu	r2,r5,80b474 <__umodsi3+0x40>
  80b470:	1145c83a 	sub	r2,r2,r5
  80b474:	280ad07a 	srli	r5,r5,1
  80b478:	183ffb1e 	bne	r3,zero,80b468 <__umodsi3+0x34>
  80b47c:	f800283a 	ret
  80b480:	2005883a 	mov	r2,r4
  80b484:	f800283a 	ret
  80b488:	00c00044 	movi	r3,1
  80b48c:	003ff606 	br	80b468 <__umodsi3+0x34>

0080b490 <__adddf3>:
  80b490:	02000434 	movhi	r8,16
  80b494:	423fffc4 	addi	r8,r8,-1
  80b498:	3a12703a 	and	r9,r7,r8
  80b49c:	2a06703a 	and	r3,r5,r8
  80b4a0:	2818d53a 	srli	r12,r5,20
  80b4a4:	3804d53a 	srli	r2,r7,20
  80b4a8:	481490fa 	slli	r10,r9,3
  80b4ac:	280ad7fa 	srli	r5,r5,31
  80b4b0:	180690fa 	slli	r3,r3,3
  80b4b4:	2016d77a 	srli	r11,r4,29
  80b4b8:	3012d77a 	srli	r9,r6,29
  80b4bc:	380ed7fa 	srli	r7,r7,31
  80b4c0:	defffb04 	addi	sp,sp,-20
  80b4c4:	dc400115 	stw	r17,4(sp)
  80b4c8:	dc000015 	stw	r16,0(sp)
  80b4cc:	dfc00415 	stw	ra,16(sp)
  80b4d0:	dcc00315 	stw	r19,12(sp)
  80b4d4:	dc800215 	stw	r18,8(sp)
  80b4d8:	201c90fa 	slli	r14,r4,3
  80b4dc:	301a90fa 	slli	r13,r6,3
  80b4e0:	6441ffcc 	andi	r17,r12,2047
  80b4e4:	2821883a 	mov	r16,r5
  80b4e8:	58c6b03a 	or	r3,r11,r3
  80b4ec:	1081ffcc 	andi	r2,r2,2047
  80b4f0:	4a92b03a 	or	r9,r9,r10
  80b4f4:	29c06326 	beq	r5,r7,80b684 <__adddf3+0x1f4>
  80b4f8:	888bc83a 	sub	r5,r17,r2
  80b4fc:	0140560e 	bge	zero,r5,80b658 <__adddf3+0x1c8>
  80b500:	10007526 	beq	r2,zero,80b6d8 <__adddf3+0x248>
  80b504:	8881ffd8 	cmpnei	r2,r17,2047
  80b508:	10012d26 	beq	r2,zero,80b9c0 <__adddf3+0x530>
  80b50c:	4a402034 	orhi	r9,r9,128
  80b510:	28800e48 	cmpgei	r2,r5,57
  80b514:	1000f41e 	bne	r2,zero,80b8e8 <__adddf3+0x458>
  80b518:	28800808 	cmpgei	r2,r5,32
  80b51c:	1001471e 	bne	r2,zero,80ba3c <__adddf3+0x5ac>
  80b520:	00800804 	movi	r2,32
  80b524:	1145c83a 	sub	r2,r2,r5
  80b528:	6948d83a 	srl	r4,r13,r5
  80b52c:	48a4983a 	sll	r18,r9,r2
  80b530:	6884983a 	sll	r2,r13,r2
  80b534:	494ad83a 	srl	r5,r9,r5
  80b538:	9124b03a 	or	r18,r18,r4
  80b53c:	101ac03a 	cmpne	r13,r2,zero
  80b540:	9364b03a 	or	r18,r18,r13
  80b544:	1947c83a 	sub	r3,r3,r5
  80b548:	74a5c83a 	sub	r18,r14,r18
  80b54c:	7489803a 	cmpltu	r4,r14,r18
  80b550:	1909c83a 	sub	r4,r3,r4
  80b554:	2080202c 	andhi	r2,r4,128
  80b558:	10008626 	beq	r2,zero,80b774 <__adddf3+0x2e4>
  80b55c:	00802034 	movhi	r2,128
  80b560:	10bfffc4 	addi	r2,r2,-1
  80b564:	20a6703a 	and	r19,r4,r2
  80b568:	9800d626 	beq	r19,zero,80b8c4 <__adddf3+0x434>
  80b56c:	9809883a 	mov	r4,r19
  80b570:	0800eb40 	call	800eb4 <__clzsi2>
  80b574:	133ffe04 	addi	r12,r2,-8
  80b578:	01000804 	movi	r4,32
  80b57c:	2309c83a 	sub	r4,r4,r12
  80b580:	9108d83a 	srl	r4,r18,r4
  80b584:	9b04983a 	sll	r2,r19,r12
  80b588:	9324983a 	sll	r18,r18,r12
  80b58c:	2088b03a 	or	r4,r4,r2
  80b590:	6440c716 	blt	r12,r17,80b8b0 <__adddf3+0x420>
  80b594:	6459c83a 	sub	r12,r12,r17
  80b598:	62000044 	addi	r8,r12,1
  80b59c:	40800808 	cmpgei	r2,r8,32
  80b5a0:	1001191e 	bne	r2,zero,80ba08 <__adddf3+0x578>
  80b5a4:	00800804 	movi	r2,32
  80b5a8:	1205c83a 	sub	r2,r2,r8
  80b5ac:	9206d83a 	srl	r3,r18,r8
  80b5b0:	90a4983a 	sll	r18,r18,r2
  80b5b4:	2084983a 	sll	r2,r4,r2
  80b5b8:	2208d83a 	srl	r4,r4,r8
  80b5bc:	9024c03a 	cmpne	r18,r18,zero
  80b5c0:	10c4b03a 	or	r2,r2,r3
  80b5c4:	14a4b03a 	or	r18,r2,r18
  80b5c8:	0023883a 	mov	r17,zero
  80b5cc:	908001cc 	andi	r2,r18,7
  80b5d0:	10000726 	beq	r2,zero,80b5f0 <__adddf3+0x160>
  80b5d4:	908003cc 	andi	r2,r18,15
  80b5d8:	10800120 	cmpeqi	r2,r2,4
  80b5dc:	1000041e 	bne	r2,zero,80b5f0 <__adddf3+0x160>
  80b5e0:	90c00104 	addi	r3,r18,4
  80b5e4:	1ca5803a 	cmpltu	r18,r3,r18
  80b5e8:	2489883a 	add	r4,r4,r18
  80b5ec:	1825883a 	mov	r18,r3
  80b5f0:	2080202c 	andhi	r2,r4,128
  80b5f4:	10006126 	beq	r2,zero,80b77c <__adddf3+0x2ec>
  80b5f8:	89400044 	addi	r5,r17,1
  80b5fc:	2881ffe0 	cmpeqi	r2,r5,2047
  80b600:	2941ffcc 	andi	r5,r5,2047
  80b604:	1000731e 	bne	r2,zero,80b7d4 <__adddf3+0x344>
  80b608:	023fe034 	movhi	r8,65408
  80b60c:	423fffc4 	addi	r8,r8,-1
  80b610:	2210703a 	and	r8,r4,r8
  80b614:	4006927a 	slli	r3,r8,9
  80b618:	9024d0fa 	srli	r18,r18,3
  80b61c:	4004977a 	slli	r2,r8,29
  80b620:	1806d33a 	srli	r3,r3,12
  80b624:	1484b03a 	or	r2,r2,r18
  80b628:	280a953a 	slli	r5,r5,20
  80b62c:	84003fcc 	andi	r16,r16,255
  80b630:	802097fa 	slli	r16,r16,31
  80b634:	28c6b03a 	or	r3,r5,r3
  80b638:	1c06b03a 	or	r3,r3,r16
  80b63c:	dfc00417 	ldw	ra,16(sp)
  80b640:	dcc00317 	ldw	r19,12(sp)
  80b644:	dc800217 	ldw	r18,8(sp)
  80b648:	dc400117 	ldw	r17,4(sp)
  80b64c:	dc000017 	ldw	r16,0(sp)
  80b650:	dec00504 	addi	sp,sp,20
  80b654:	f800283a 	ret
  80b658:	28002726 	beq	r5,zero,80b6f8 <__adddf3+0x268>
  80b65c:	144bc83a 	sub	r5,r2,r17
  80b660:	8800be1e 	bne	r17,zero,80b95c <__adddf3+0x4cc>
  80b664:	1b88b03a 	or	r4,r3,r14
  80b668:	20013126 	beq	r4,zero,80bb30 <__adddf3+0x6a0>
  80b66c:	293fffc4 	addi	r4,r5,-1
  80b670:	20017226 	beq	r4,zero,80bc3c <__adddf3+0x7ac>
  80b674:	2941ffd8 	cmpnei	r5,r5,2047
  80b678:	2801c226 	beq	r5,zero,80bd84 <__adddf3+0x8f4>
  80b67c:	200b883a 	mov	r5,r4
  80b680:	0000b906 	br	80b968 <__adddf3+0x4d8>
  80b684:	888bc83a 	sub	r5,r17,r2
  80b688:	0140700e 	bge	zero,r5,80b84c <__adddf3+0x3bc>
  80b68c:	10002a26 	beq	r2,zero,80b738 <__adddf3+0x2a8>
  80b690:	8881ffd8 	cmpnei	r2,r17,2047
  80b694:	1000ca26 	beq	r2,zero,80b9c0 <__adddf3+0x530>
  80b698:	4a402034 	orhi	r9,r9,128
  80b69c:	28800e48 	cmpgei	r2,r5,57
  80b6a0:	1000421e 	bne	r2,zero,80b7ac <__adddf3+0x31c>
  80b6a4:	28800808 	cmpgei	r2,r5,32
  80b6a8:	1000ff26 	beq	r2,zero,80baa8 <__adddf3+0x618>
  80b6ac:	2cbff804 	addi	r18,r5,-32
  80b6b0:	29000820 	cmpeqi	r4,r5,32
  80b6b4:	4c84d83a 	srl	r2,r9,r18
  80b6b8:	2000041e 	bne	r4,zero,80b6cc <__adddf3+0x23c>
  80b6bc:	01001004 	movi	r4,64
  80b6c0:	214bc83a 	sub	r5,r4,r5
  80b6c4:	4952983a 	sll	r9,r9,r5
  80b6c8:	6a5ab03a 	or	r13,r13,r9
  80b6cc:	6824c03a 	cmpne	r18,r13,zero
  80b6d0:	90a4b03a 	or	r18,r18,r2
  80b6d4:	00003706 	br	80b7b4 <__adddf3+0x324>
  80b6d8:	4b44b03a 	or	r2,r9,r13
  80b6dc:	1000b126 	beq	r2,zero,80b9a4 <__adddf3+0x514>
  80b6e0:	28bfffc4 	addi	r2,r5,-1
  80b6e4:	10011a26 	beq	r2,zero,80bb50 <__adddf3+0x6c0>
  80b6e8:	2941ffd8 	cmpnei	r5,r5,2047
  80b6ec:	28012526 	beq	r5,zero,80bb84 <__adddf3+0x6f4>
  80b6f0:	100b883a 	mov	r5,r2
  80b6f4:	003f8606 	br	80b510 <__adddf3+0x80>
  80b6f8:	8a800044 	addi	r10,r17,1
  80b6fc:	5281ff8c 	andi	r10,r10,2046
  80b700:	50008b1e 	bne	r10,zero,80b930 <__adddf3+0x4a0>
  80b704:	1b96b03a 	or	r11,r3,r14
  80b708:	4b44b03a 	or	r2,r9,r13
  80b70c:	8801031e 	bne	r17,zero,80bb1c <__adddf3+0x68c>
  80b710:	58014126 	beq	r11,zero,80bc18 <__adddf3+0x788>
  80b714:	1001571e 	bne	r2,zero,80bc74 <__adddf3+0x7e4>
  80b718:	1804977a 	slli	r2,r3,29
  80b71c:	01480034 	movhi	r5,8192
  80b720:	297fffc4 	addi	r5,r5,-1
  80b724:	2148703a 	and	r4,r4,r5
  80b728:	1810d0fa 	srli	r8,r3,3
  80b72c:	1104b03a 	or	r2,r2,r4
  80b730:	500b883a 	mov	r5,r10
  80b734:	00001806 	br	80b798 <__adddf3+0x308>
  80b738:	4b44b03a 	or	r2,r9,r13
  80b73c:	10010a26 	beq	r2,zero,80bb68 <__adddf3+0x6d8>
  80b740:	28bfffc4 	addi	r2,r5,-1
  80b744:	10000426 	beq	r2,zero,80b758 <__adddf3+0x2c8>
  80b748:	2941ffd8 	cmpnei	r5,r5,2047
  80b74c:	28014226 	beq	r5,zero,80bc58 <__adddf3+0x7c8>
  80b750:	100b883a 	mov	r5,r2
  80b754:	003fd106 	br	80b69c <__adddf3+0x20c>
  80b758:	7365883a 	add	r18,r14,r13
  80b75c:	1a47883a 	add	r3,r3,r9
  80b760:	9389803a 	cmpltu	r4,r18,r14
  80b764:	1909883a 	add	r4,r3,r4
  80b768:	2080202c 	andhi	r2,r4,128
  80b76c:	10009b1e 	bne	r2,zero,80b9dc <__adddf3+0x54c>
  80b770:	04400044 	movi	r17,1
  80b774:	908001cc 	andi	r2,r18,7
  80b778:	103f961e 	bne	r2,zero,80b5d4 <__adddf3+0x144>
  80b77c:	9024d0fa 	srli	r18,r18,3
  80b780:	2004977a 	slli	r2,r4,29
  80b784:	2010d0fa 	srli	r8,r4,3
  80b788:	880b883a 	mov	r5,r17
  80b78c:	9084b03a 	or	r2,r18,r2
  80b790:	28c1ffe0 	cmpeqi	r3,r5,2047
  80b794:	1800251e 	bne	r3,zero,80b82c <__adddf3+0x39c>
  80b798:	00c00434 	movhi	r3,16
  80b79c:	18ffffc4 	addi	r3,r3,-1
  80b7a0:	40c6703a 	and	r3,r8,r3
  80b7a4:	2941ffcc 	andi	r5,r5,2047
  80b7a8:	003f9f06 	br	80b628 <__adddf3+0x198>
  80b7ac:	4b64b03a 	or	r18,r9,r13
  80b7b0:	9024c03a 	cmpne	r18,r18,zero
  80b7b4:	93a5883a 	add	r18,r18,r14
  80b7b8:	9389803a 	cmpltu	r4,r18,r14
  80b7bc:	20c9883a 	add	r4,r4,r3
  80b7c0:	2080202c 	andhi	r2,r4,128
  80b7c4:	103feb26 	beq	r2,zero,80b774 <__adddf3+0x2e4>
  80b7c8:	8c400044 	addi	r17,r17,1
  80b7cc:	8881ffe0 	cmpeqi	r2,r17,2047
  80b7d0:	10008326 	beq	r2,zero,80b9e0 <__adddf3+0x550>
  80b7d4:	0141ffc4 	movi	r5,2047
  80b7d8:	0007883a 	mov	r3,zero
  80b7dc:	0005883a 	mov	r2,zero
  80b7e0:	003f9106 	br	80b628 <__adddf3+0x198>
  80b7e4:	4b44b03a 	or	r2,r9,r13
  80b7e8:	180a977a 	slli	r5,r3,29
  80b7ec:	1810d0fa 	srli	r8,r3,3
  80b7f0:	10016c26 	beq	r2,zero,80bda4 <__adddf3+0x914>
  80b7f4:	00c80034 	movhi	r3,8192
  80b7f8:	18ffffc4 	addi	r3,r3,-1
  80b7fc:	20c4703a 	and	r2,r4,r3
  80b800:	4100022c 	andhi	r4,r8,8
  80b804:	1144b03a 	or	r2,r2,r5
  80b808:	20000826 	beq	r4,zero,80b82c <__adddf3+0x39c>
  80b80c:	4808d0fa 	srli	r4,r9,3
  80b810:	2140022c 	andhi	r5,r4,8
  80b814:	2800051e 	bne	r5,zero,80b82c <__adddf3+0x39c>
  80b818:	4804977a 	slli	r2,r9,29
  80b81c:	30cc703a 	and	r6,r6,r3
  80b820:	3821883a 	mov	r16,r7
  80b824:	3084b03a 	or	r2,r6,r2
  80b828:	2011883a 	mov	r8,r4
  80b82c:	4086b03a 	or	r3,r8,r2
  80b830:	18017126 	beq	r3,zero,80bdf8 <__adddf3+0x968>
  80b834:	01000434 	movhi	r4,16
  80b838:	40c00234 	orhi	r3,r8,8
  80b83c:	213fffc4 	addi	r4,r4,-1
  80b840:	1906703a 	and	r3,r3,r4
  80b844:	0141ffc4 	movi	r5,2047
  80b848:	003f7706 	br	80b628 <__adddf3+0x198>
  80b84c:	28002926 	beq	r5,zero,80b8f4 <__adddf3+0x464>
  80b850:	144bc83a 	sub	r5,r2,r17
  80b854:	88008c26 	beq	r17,zero,80ba88 <__adddf3+0x5f8>
  80b858:	1101ffd8 	cmpnei	r4,r2,2047
  80b85c:	20011126 	beq	r4,zero,80bca4 <__adddf3+0x814>
  80b860:	18c02034 	orhi	r3,r3,128
  80b864:	29000e48 	cmpgei	r4,r5,57
  80b868:	2000d51e 	bne	r4,zero,80bbc0 <__adddf3+0x730>
  80b86c:	29000808 	cmpgei	r4,r5,32
  80b870:	2001511e 	bne	r4,zero,80bdb8 <__adddf3+0x928>
  80b874:	01000804 	movi	r4,32
  80b878:	2149c83a 	sub	r4,r4,r5
  80b87c:	1924983a 	sll	r18,r3,r4
  80b880:	714cd83a 	srl	r6,r14,r5
  80b884:	7108983a 	sll	r4,r14,r4
  80b888:	194ad83a 	srl	r5,r3,r5
  80b88c:	91a4b03a 	or	r18,r18,r6
  80b890:	2006c03a 	cmpne	r3,r4,zero
  80b894:	90e4b03a 	or	r18,r18,r3
  80b898:	4953883a 	add	r9,r9,r5
  80b89c:	9365883a 	add	r18,r18,r13
  80b8a0:	9349803a 	cmpltu	r4,r18,r13
  80b8a4:	2249883a 	add	r4,r4,r9
  80b8a8:	1023883a 	mov	r17,r2
  80b8ac:	003fc406 	br	80b7c0 <__adddf3+0x330>
  80b8b0:	023fe034 	movhi	r8,65408
  80b8b4:	423fffc4 	addi	r8,r8,-1
  80b8b8:	8b23c83a 	sub	r17,r17,r12
  80b8bc:	2208703a 	and	r4,r4,r8
  80b8c0:	003f4206 	br	80b5cc <__adddf3+0x13c>
  80b8c4:	9009883a 	mov	r4,r18
  80b8c8:	0800eb40 	call	800eb4 <__clzsi2>
  80b8cc:	13000604 	addi	r12,r2,24
  80b8d0:	60c00808 	cmpgei	r3,r12,32
  80b8d4:	183f2826 	beq	r3,zero,80b578 <__adddf3+0xe8>
  80b8d8:	113ffe04 	addi	r4,r2,-8
  80b8dc:	9108983a 	sll	r4,r18,r4
  80b8e0:	0025883a 	mov	r18,zero
  80b8e4:	003f2a06 	br	80b590 <__adddf3+0x100>
  80b8e8:	4b64b03a 	or	r18,r9,r13
  80b8ec:	9024c03a 	cmpne	r18,r18,zero
  80b8f0:	003f1506 	br	80b548 <__adddf3+0xb8>
  80b8f4:	8a000044 	addi	r8,r17,1
  80b8f8:	4081ff8c 	andi	r2,r8,2046
  80b8fc:	1000751e 	bne	r2,zero,80bad4 <__adddf3+0x644>
  80b900:	1b84b03a 	or	r2,r3,r14
  80b904:	8800bc1e 	bne	r17,zero,80bbf8 <__adddf3+0x768>
  80b908:	10010c26 	beq	r2,zero,80bd3c <__adddf3+0x8ac>
  80b90c:	4b44b03a 	or	r2,r9,r13
  80b910:	1001111e 	bne	r2,zero,80bd58 <__adddf3+0x8c8>
  80b914:	180c977a 	slli	r6,r3,29
  80b918:	00880034 	movhi	r2,8192
  80b91c:	10bfffc4 	addi	r2,r2,-1
  80b920:	2084703a 	and	r2,r4,r2
  80b924:	1810d0fa 	srli	r8,r3,3
  80b928:	1184b03a 	or	r2,r2,r6
  80b92c:	003f9a06 	br	80b798 <__adddf3+0x308>
  80b930:	7365c83a 	sub	r18,r14,r13
  80b934:	1a67c83a 	sub	r19,r3,r9
  80b938:	7489803a 	cmpltu	r4,r14,r18
  80b93c:	9927c83a 	sub	r19,r19,r4
  80b940:	9880202c 	andhi	r2,r19,128
  80b944:	10006f1e 	bne	r2,zero,80bb04 <__adddf3+0x674>
  80b948:	94c4b03a 	or	r2,r18,r19
  80b94c:	103f061e 	bne	r2,zero,80b568 <__adddf3+0xd8>
  80b950:	0011883a 	mov	r8,zero
  80b954:	0021883a 	mov	r16,zero
  80b958:	003f8f06 	br	80b798 <__adddf3+0x308>
  80b95c:	1101ffd8 	cmpnei	r4,r2,2047
  80b960:	20008f26 	beq	r4,zero,80bba0 <__adddf3+0x710>
  80b964:	18c02034 	orhi	r3,r3,128
  80b968:	29000e48 	cmpgei	r4,r5,57
  80b96c:	20003e1e 	bne	r4,zero,80ba68 <__adddf3+0x5d8>
  80b970:	29000808 	cmpgei	r4,r5,32
  80b974:	2000951e 	bne	r4,zero,80bbcc <__adddf3+0x73c>
  80b978:	01000804 	movi	r4,32
  80b97c:	2149c83a 	sub	r4,r4,r5
  80b980:	1924983a 	sll	r18,r3,r4
  80b984:	714cd83a 	srl	r6,r14,r5
  80b988:	711c983a 	sll	r14,r14,r4
  80b98c:	1946d83a 	srl	r3,r3,r5
  80b990:	91a4b03a 	or	r18,r18,r6
  80b994:	701cc03a 	cmpne	r14,r14,zero
  80b998:	93a4b03a 	or	r18,r18,r14
  80b99c:	48d3c83a 	sub	r9,r9,r3
  80b9a0:	00003306 	br	80ba70 <__adddf3+0x5e0>
  80b9a4:	1824977a 	slli	r18,r3,29
  80b9a8:	01880034 	movhi	r6,8192
  80b9ac:	31bfffc4 	addi	r6,r6,-1
  80b9b0:	2184703a 	and	r2,r4,r6
  80b9b4:	1810d0fa 	srli	r8,r3,3
  80b9b8:	1484b03a 	or	r2,r2,r18
  80b9bc:	003f7406 	br	80b790 <__adddf3+0x300>
  80b9c0:	1804977a 	slli	r2,r3,29
  80b9c4:	01480034 	movhi	r5,8192
  80b9c8:	297fffc4 	addi	r5,r5,-1
  80b9cc:	2148703a 	and	r4,r4,r5
  80b9d0:	1810d0fa 	srli	r8,r3,3
  80b9d4:	1104b03a 	or	r2,r2,r4
  80b9d8:	003f9406 	br	80b82c <__adddf3+0x39c>
  80b9dc:	04400084 	movi	r17,2
  80b9e0:	00bfe034 	movhi	r2,65408
  80b9e4:	10bfffc4 	addi	r2,r2,-1
  80b9e8:	9006d07a 	srli	r3,r18,1
  80b9ec:	2088703a 	and	r4,r4,r2
  80b9f0:	200497fa 	slli	r2,r4,31
  80b9f4:	9480004c 	andi	r18,r18,1
  80b9f8:	1ca4b03a 	or	r18,r3,r18
  80b9fc:	2008d07a 	srli	r4,r4,1
  80ba00:	14a4b03a 	or	r18,r2,r18
  80ba04:	003ef106 	br	80b5cc <__adddf3+0x13c>
  80ba08:	633ff844 	addi	r12,r12,-31
  80ba0c:	40800820 	cmpeqi	r2,r8,32
  80ba10:	2318d83a 	srl	r12,r4,r12
  80ba14:	1000041e 	bne	r2,zero,80ba28 <__adddf3+0x598>
  80ba18:	00801004 	movi	r2,64
  80ba1c:	1211c83a 	sub	r8,r2,r8
  80ba20:	2208983a 	sll	r4,r4,r8
  80ba24:	9124b03a 	or	r18,r18,r4
  80ba28:	9024c03a 	cmpne	r18,r18,zero
  80ba2c:	9324b03a 	or	r18,r18,r12
  80ba30:	0009883a 	mov	r4,zero
  80ba34:	0023883a 	mov	r17,zero
  80ba38:	003f4e06 	br	80b774 <__adddf3+0x2e4>
  80ba3c:	2cbff804 	addi	r18,r5,-32
  80ba40:	29000820 	cmpeqi	r4,r5,32
  80ba44:	4c84d83a 	srl	r2,r9,r18
  80ba48:	2000041e 	bne	r4,zero,80ba5c <__adddf3+0x5cc>
  80ba4c:	01001004 	movi	r4,64
  80ba50:	214bc83a 	sub	r5,r4,r5
  80ba54:	4952983a 	sll	r9,r9,r5
  80ba58:	6a5ab03a 	or	r13,r13,r9
  80ba5c:	6824c03a 	cmpne	r18,r13,zero
  80ba60:	90a4b03a 	or	r18,r18,r2
  80ba64:	003eb806 	br	80b548 <__adddf3+0xb8>
  80ba68:	1b88b03a 	or	r4,r3,r14
  80ba6c:	2024c03a 	cmpne	r18,r4,zero
  80ba70:	6ca5c83a 	sub	r18,r13,r18
  80ba74:	6c89803a 	cmpltu	r4,r13,r18
  80ba78:	4909c83a 	sub	r4,r9,r4
  80ba7c:	3821883a 	mov	r16,r7
  80ba80:	1023883a 	mov	r17,r2
  80ba84:	003eb306 	br	80b554 <__adddf3+0xc4>
  80ba88:	1b88b03a 	or	r4,r3,r14
  80ba8c:	20008c26 	beq	r4,zero,80bcc0 <__adddf3+0x830>
  80ba90:	293fffc4 	addi	r4,r5,-1
  80ba94:	2000d326 	beq	r4,zero,80bde4 <__adddf3+0x954>
  80ba98:	2941ffd8 	cmpnei	r5,r5,2047
  80ba9c:	28008126 	beq	r5,zero,80bca4 <__adddf3+0x814>
  80baa0:	200b883a 	mov	r5,r4
  80baa4:	003f6f06 	br	80b864 <__adddf3+0x3d4>
  80baa8:	00800804 	movi	r2,32
  80baac:	1145c83a 	sub	r2,r2,r5
  80bab0:	6948d83a 	srl	r4,r13,r5
  80bab4:	48a4983a 	sll	r18,r9,r2
  80bab8:	6884983a 	sll	r2,r13,r2
  80babc:	494ad83a 	srl	r5,r9,r5
  80bac0:	9124b03a 	or	r18,r18,r4
  80bac4:	101ac03a 	cmpne	r13,r2,zero
  80bac8:	9364b03a 	or	r18,r18,r13
  80bacc:	1947883a 	add	r3,r3,r5
  80bad0:	003f3806 	br	80b7b4 <__adddf3+0x324>
  80bad4:	4081ffe0 	cmpeqi	r2,r8,2047
  80bad8:	103f3e1e 	bne	r2,zero,80b7d4 <__adddf3+0x344>
  80badc:	7345883a 	add	r2,r14,r13
  80bae0:	139d803a 	cmpltu	r14,r2,r14
  80bae4:	1a49883a 	add	r4,r3,r9
  80bae8:	2389883a 	add	r4,r4,r14
  80baec:	202497fa 	slli	r18,r4,31
  80baf0:	1004d07a 	srli	r2,r2,1
  80baf4:	2008d07a 	srli	r4,r4,1
  80baf8:	4023883a 	mov	r17,r8
  80bafc:	90a4b03a 	or	r18,r18,r2
  80bb00:	003f1c06 	br	80b774 <__adddf3+0x2e4>
  80bb04:	6ba5c83a 	sub	r18,r13,r14
  80bb08:	48c9c83a 	sub	r4,r9,r3
  80bb0c:	6c85803a 	cmpltu	r2,r13,r18
  80bb10:	20a7c83a 	sub	r19,r4,r2
  80bb14:	3821883a 	mov	r16,r7
  80bb18:	003e9306 	br	80b568 <__adddf3+0xd8>
  80bb1c:	58006f1e 	bne	r11,zero,80bcdc <__adddf3+0x84c>
  80bb20:	10001f1e 	bne	r2,zero,80bba0 <__adddf3+0x710>
  80bb24:	00bfffc4 	movi	r2,-1
  80bb28:	0021883a 	mov	r16,zero
  80bb2c:	003f4106 	br	80b834 <__adddf3+0x3a4>
  80bb30:	4808977a 	slli	r4,r9,29
  80bb34:	00c80034 	movhi	r3,8192
  80bb38:	18ffffc4 	addi	r3,r3,-1
  80bb3c:	30c4703a 	and	r2,r6,r3
  80bb40:	4810d0fa 	srli	r8,r9,3
  80bb44:	1104b03a 	or	r2,r2,r4
  80bb48:	3821883a 	mov	r16,r7
  80bb4c:	003f1006 	br	80b790 <__adddf3+0x300>
  80bb50:	7365c83a 	sub	r18,r14,r13
  80bb54:	1a47c83a 	sub	r3,r3,r9
  80bb58:	7489803a 	cmpltu	r4,r14,r18
  80bb5c:	1909c83a 	sub	r4,r3,r4
  80bb60:	04400044 	movi	r17,1
  80bb64:	003e7b06 	br	80b554 <__adddf3+0xc4>
  80bb68:	1824977a 	slli	r18,r3,29
  80bb6c:	01c80034 	movhi	r7,8192
  80bb70:	39ffffc4 	addi	r7,r7,-1
  80bb74:	21c4703a 	and	r2,r4,r7
  80bb78:	1810d0fa 	srli	r8,r3,3
  80bb7c:	1484b03a 	or	r2,r2,r18
  80bb80:	003f0306 	br	80b790 <__adddf3+0x300>
  80bb84:	1824977a 	slli	r18,r3,29
  80bb88:	01480034 	movhi	r5,8192
  80bb8c:	297fffc4 	addi	r5,r5,-1
  80bb90:	2144703a 	and	r2,r4,r5
  80bb94:	1810d0fa 	srli	r8,r3,3
  80bb98:	1484b03a 	or	r2,r2,r18
  80bb9c:	003f2306 	br	80b82c <__adddf3+0x39c>
  80bba0:	4806977a 	slli	r3,r9,29
  80bba4:	00880034 	movhi	r2,8192
  80bba8:	10bfffc4 	addi	r2,r2,-1
  80bbac:	3084703a 	and	r2,r6,r2
  80bbb0:	4810d0fa 	srli	r8,r9,3
  80bbb4:	10c4b03a 	or	r2,r2,r3
  80bbb8:	3821883a 	mov	r16,r7
  80bbbc:	003f1b06 	br	80b82c <__adddf3+0x39c>
  80bbc0:	1b88b03a 	or	r4,r3,r14
  80bbc4:	2024c03a 	cmpne	r18,r4,zero
  80bbc8:	003f3406 	br	80b89c <__adddf3+0x40c>
  80bbcc:	2cbff804 	addi	r18,r5,-32
  80bbd0:	29800820 	cmpeqi	r6,r5,32
  80bbd4:	1c88d83a 	srl	r4,r3,r18
  80bbd8:	3000041e 	bne	r6,zero,80bbec <__adddf3+0x75c>
  80bbdc:	01801004 	movi	r6,64
  80bbe0:	314bc83a 	sub	r5,r6,r5
  80bbe4:	1946983a 	sll	r3,r3,r5
  80bbe8:	70dcb03a 	or	r14,r14,r3
  80bbec:	7024c03a 	cmpne	r18,r14,zero
  80bbf0:	9124b03a 	or	r18,r18,r4
  80bbf4:	003f9e06 	br	80ba70 <__adddf3+0x5e0>
  80bbf8:	103efa1e 	bne	r2,zero,80b7e4 <__adddf3+0x354>
  80bbfc:	4804977a 	slli	r2,r9,29
  80bc00:	00c80034 	movhi	r3,8192
  80bc04:	18ffffc4 	addi	r3,r3,-1
  80bc08:	30cc703a 	and	r6,r6,r3
  80bc0c:	4810d0fa 	srli	r8,r9,3
  80bc10:	1184b03a 	or	r2,r2,r6
  80bc14:	003f0506 	br	80b82c <__adddf3+0x39c>
  80bc18:	10004426 	beq	r2,zero,80bd2c <__adddf3+0x89c>
  80bc1c:	4806977a 	slli	r3,r9,29
  80bc20:	00880034 	movhi	r2,8192
  80bc24:	10bfffc4 	addi	r2,r2,-1
  80bc28:	3084703a 	and	r2,r6,r2
  80bc2c:	4810d0fa 	srli	r8,r9,3
  80bc30:	10c4b03a 	or	r2,r2,r3
  80bc34:	3821883a 	mov	r16,r7
  80bc38:	003ed706 	br	80b798 <__adddf3+0x308>
  80bc3c:	6ba5c83a 	sub	r18,r13,r14
  80bc40:	48c7c83a 	sub	r3,r9,r3
  80bc44:	6c85803a 	cmpltu	r2,r13,r18
  80bc48:	1889c83a 	sub	r4,r3,r2
  80bc4c:	3821883a 	mov	r16,r7
  80bc50:	04400044 	movi	r17,1
  80bc54:	003e3f06 	br	80b554 <__adddf3+0xc4>
  80bc58:	180a977a 	slli	r5,r3,29
  80bc5c:	00880034 	movhi	r2,8192
  80bc60:	10bfffc4 	addi	r2,r2,-1
  80bc64:	2084703a 	and	r2,r4,r2
  80bc68:	1810d0fa 	srli	r8,r3,3
  80bc6c:	1144b03a 	or	r2,r2,r5
  80bc70:	003eee06 	br	80b82c <__adddf3+0x39c>
  80bc74:	7365c83a 	sub	r18,r14,r13
  80bc78:	7485803a 	cmpltu	r2,r14,r18
  80bc7c:	1a49c83a 	sub	r4,r3,r9
  80bc80:	2089c83a 	sub	r4,r4,r2
  80bc84:	2080202c 	andhi	r2,r4,128
  80bc88:	10002626 	beq	r2,zero,80bd24 <__adddf3+0x894>
  80bc8c:	6ba5c83a 	sub	r18,r13,r14
  80bc90:	48c7c83a 	sub	r3,r9,r3
  80bc94:	6c85803a 	cmpltu	r2,r13,r18
  80bc98:	1889c83a 	sub	r4,r3,r2
  80bc9c:	3821883a 	mov	r16,r7
  80bca0:	003e4a06 	br	80b5cc <__adddf3+0x13c>
  80bca4:	4806977a 	slli	r3,r9,29
  80bca8:	00880034 	movhi	r2,8192
  80bcac:	10bfffc4 	addi	r2,r2,-1
  80bcb0:	3084703a 	and	r2,r6,r2
  80bcb4:	4810d0fa 	srli	r8,r9,3
  80bcb8:	10c4b03a 	or	r2,r2,r3
  80bcbc:	003edb06 	br	80b82c <__adddf3+0x39c>
  80bcc0:	4806977a 	slli	r3,r9,29
  80bcc4:	00880034 	movhi	r2,8192
  80bcc8:	10bfffc4 	addi	r2,r2,-1
  80bccc:	3084703a 	and	r2,r6,r2
  80bcd0:	4810d0fa 	srli	r8,r9,3
  80bcd4:	10c4b03a 	or	r2,r2,r3
  80bcd8:	003ead06 	br	80b790 <__adddf3+0x300>
  80bcdc:	180a977a 	slli	r5,r3,29
  80bce0:	1810d0fa 	srli	r8,r3,3
  80bce4:	10002f26 	beq	r2,zero,80bda4 <__adddf3+0x914>
  80bce8:	00c80034 	movhi	r3,8192
  80bcec:	18ffffc4 	addi	r3,r3,-1
  80bcf0:	20c4703a 	and	r2,r4,r3
  80bcf4:	4100022c 	andhi	r4,r8,8
  80bcf8:	1144b03a 	or	r2,r2,r5
  80bcfc:	203ecb26 	beq	r4,zero,80b82c <__adddf3+0x39c>
  80bd00:	4808d0fa 	srli	r4,r9,3
  80bd04:	2140022c 	andhi	r5,r4,8
  80bd08:	283ec81e 	bne	r5,zero,80b82c <__adddf3+0x39c>
  80bd0c:	4812977a 	slli	r9,r9,29
  80bd10:	30c4703a 	and	r2,r6,r3
  80bd14:	3821883a 	mov	r16,r7
  80bd18:	1244b03a 	or	r2,r2,r9
  80bd1c:	2011883a 	mov	r8,r4
  80bd20:	003ec206 	br	80b82c <__adddf3+0x39c>
  80bd24:	9104b03a 	or	r2,r18,r4
  80bd28:	103e921e 	bne	r2,zero,80b774 <__adddf3+0x2e4>
  80bd2c:	0011883a 	mov	r8,zero
  80bd30:	100b883a 	mov	r5,r2
  80bd34:	0021883a 	mov	r16,zero
  80bd38:	003e9706 	br	80b798 <__adddf3+0x308>
  80bd3c:	4804977a 	slli	r2,r9,29
  80bd40:	00c80034 	movhi	r3,8192
  80bd44:	18ffffc4 	addi	r3,r3,-1
  80bd48:	30cc703a 	and	r6,r6,r3
  80bd4c:	4810d0fa 	srli	r8,r9,3
  80bd50:	1184b03a 	or	r2,r2,r6
  80bd54:	003e9006 	br	80b798 <__adddf3+0x308>
  80bd58:	7365883a 	add	r18,r14,r13
  80bd5c:	1a47883a 	add	r3,r3,r9
  80bd60:	9389803a 	cmpltu	r4,r18,r14
  80bd64:	1909883a 	add	r4,r3,r4
  80bd68:	2080202c 	andhi	r2,r4,128
  80bd6c:	103e8126 	beq	r2,zero,80b774 <__adddf3+0x2e4>
  80bd70:	00bfe034 	movhi	r2,65408
  80bd74:	10bfffc4 	addi	r2,r2,-1
  80bd78:	2088703a 	and	r4,r4,r2
  80bd7c:	04400044 	movi	r17,1
  80bd80:	003e7c06 	br	80b774 <__adddf3+0x2e4>
  80bd84:	4804977a 	slli	r2,r9,29
  80bd88:	00c80034 	movhi	r3,8192
  80bd8c:	18ffffc4 	addi	r3,r3,-1
  80bd90:	30cc703a 	and	r6,r6,r3
  80bd94:	4810d0fa 	srli	r8,r9,3
  80bd98:	1184b03a 	or	r2,r2,r6
  80bd9c:	3821883a 	mov	r16,r7
  80bda0:	003ea206 	br	80b82c <__adddf3+0x39c>
  80bda4:	00880034 	movhi	r2,8192
  80bda8:	10bfffc4 	addi	r2,r2,-1
  80bdac:	2084703a 	and	r2,r4,r2
  80bdb0:	1144b03a 	or	r2,r2,r5
  80bdb4:	003e9d06 	br	80b82c <__adddf3+0x39c>
  80bdb8:	293ff804 	addi	r4,r5,-32
  80bdbc:	29800820 	cmpeqi	r6,r5,32
  80bdc0:	1908d83a 	srl	r4,r3,r4
  80bdc4:	3000041e 	bne	r6,zero,80bdd8 <__adddf3+0x948>
  80bdc8:	01801004 	movi	r6,64
  80bdcc:	314bc83a 	sub	r5,r6,r5
  80bdd0:	1946983a 	sll	r3,r3,r5
  80bdd4:	70dcb03a 	or	r14,r14,r3
  80bdd8:	7024c03a 	cmpne	r18,r14,zero
  80bddc:	9124b03a 	or	r18,r18,r4
  80bde0:	003eae06 	br	80b89c <__adddf3+0x40c>
  80bde4:	7365883a 	add	r18,r14,r13
  80bde8:	1a47883a 	add	r3,r3,r9
  80bdec:	9345803a 	cmpltu	r2,r18,r13
  80bdf0:	1889883a 	add	r4,r3,r2
  80bdf4:	003e5c06 	br	80b768 <__adddf3+0x2d8>
  80bdf8:	0005883a 	mov	r2,zero
  80bdfc:	0141ffc4 	movi	r5,2047
  80be00:	0007883a 	mov	r3,zero
  80be04:	003e0806 	br	80b628 <__adddf3+0x198>

0080be08 <__divdf3>:
  80be08:	2810d53a 	srli	r8,r5,20
  80be0c:	defff004 	addi	sp,sp,-64
  80be10:	dc000615 	stw	r16,24(sp)
  80be14:	04000434 	movhi	r16,16
  80be18:	df000e15 	stw	fp,56(sp)
  80be1c:	ddc00d15 	stw	r23,52(sp)
  80be20:	dd800c15 	stw	r22,48(sp)
  80be24:	dd000a15 	stw	r20,40(sp)
  80be28:	843fffc4 	addi	r16,r16,-1
  80be2c:	dfc00f15 	stw	ra,60(sp)
  80be30:	dd400b15 	stw	r21,44(sp)
  80be34:	dcc00915 	stw	r19,36(sp)
  80be38:	dc800815 	stw	r18,32(sp)
  80be3c:	dc400715 	stw	r17,28(sp)
  80be40:	4201ffcc 	andi	r8,r8,2047
  80be44:	282ed7fa 	srli	r23,r5,31
  80be48:	3039883a 	mov	fp,r6
  80be4c:	382d883a 	mov	r22,r7
  80be50:	2029883a 	mov	r20,r4
  80be54:	2c20703a 	and	r16,r5,r16
  80be58:	40005326 	beq	r8,zero,80bfa8 <__divdf3+0x1a0>
  80be5c:	4081ffe0 	cmpeqi	r2,r8,2047
  80be60:	1000641e 	bne	r2,zero,80bff4 <__divdf3+0x1ec>
  80be64:	2026d77a 	srli	r19,r4,29
  80be68:	800a90fa 	slli	r5,r16,3
  80be6c:	202890fa 	slli	r20,r4,3
  80be70:	44bf0044 	addi	r18,r8,-1023
  80be74:	994ab03a 	or	r5,r19,r5
  80be78:	2cc02034 	orhi	r19,r5,128
  80be7c:	0021883a 	mov	r16,zero
  80be80:	0023883a 	mov	r17,zero
  80be84:	b010d53a 	srli	r8,r22,20
  80be88:	00c00434 	movhi	r3,16
  80be8c:	18ffffc4 	addi	r3,r3,-1
  80be90:	4201ffcc 	andi	r8,r8,2047
  80be94:	b02ad7fa 	srli	r21,r22,31
  80be98:	b0ec703a 	and	r22,r22,r3
  80be9c:	40005c26 	beq	r8,zero,80c010 <__divdf3+0x208>
  80bea0:	4081ffe0 	cmpeqi	r2,r8,2047
  80bea4:	1000201e 	bne	r2,zero,80bf28 <__divdf3+0x120>
  80bea8:	b00690fa 	slli	r3,r22,3
  80beac:	e004d77a 	srli	r2,fp,29
  80beb0:	e01490fa 	slli	r10,fp,3
  80beb4:	423f0044 	addi	r8,r8,-1023
  80beb8:	10c6b03a 	or	r3,r2,r3
  80bebc:	1d802034 	orhi	r22,r3,128
  80bec0:	9225c83a 	sub	r18,r18,r8
  80bec4:	0007883a 	mov	r3,zero
  80bec8:	80800428 	cmpgeui	r2,r16,16
  80becc:	bd52f03a 	xor	r9,r23,r21
  80bed0:	1000a81e 	bne	r2,zero,80c174 <__divdf3+0x36c>
  80bed4:	800c90ba 	slli	r6,r16,2
  80bed8:	00802074 	movhi	r2,129
  80bedc:	3085883a 	add	r2,r6,r2
  80bee0:	10afba17 	ldw	r2,-16664(r2)
  80bee4:	1000683a 	jmp	r2
  80bee8:	0080c174 	movhi	r2,773
  80beec:	0080bf98 	cmpnei	r2,zero,766
  80bef0:	0080bf44 	movi	r2,765
  80bef4:	0080c0bc 	xorhi	r2,zero,770
  80bef8:	0080bf44 	movi	r2,765
  80befc:	0080c118 	cmpnei	r2,zero,772
  80bf00:	0080bf44 	movi	r2,765
  80bf04:	0080c0bc 	xorhi	r2,zero,770
  80bf08:	0080bf98 	cmpnei	r2,zero,766
  80bf0c:	0080bf98 	cmpnei	r2,zero,766
  80bf10:	0080c118 	cmpnei	r2,zero,772
  80bf14:	0080c0bc 	xorhi	r2,zero,770
  80bf18:	0080c054 	movui	r2,769
  80bf1c:	0080c054 	movui	r2,769
  80bf20:	0080c054 	movui	r2,769
  80bf24:	0080c130 	cmpltui	r2,zero,772
  80bf28:	b714b03a 	or	r10,r22,fp
  80bf2c:	94be0044 	addi	r18,r18,-2047
  80bf30:	5000671e 	bne	r10,zero,80c0d0 <__divdf3+0x2c8>
  80bf34:	84000094 	ori	r16,r16,2
  80bf38:	002d883a 	mov	r22,zero
  80bf3c:	00c00084 	movi	r3,2
  80bf40:	003fe106 	br	80bec8 <__divdf3+0xc0>
  80bf44:	0007883a 	mov	r3,zero
  80bf48:	000b883a 	mov	r5,zero
  80bf4c:	0029883a 	mov	r20,zero
  80bf50:	1806953a 	slli	r3,r3,20
  80bf54:	4a403fcc 	andi	r9,r9,255
  80bf58:	481297fa 	slli	r9,r9,31
  80bf5c:	1946b03a 	or	r3,r3,r5
  80bf60:	a005883a 	mov	r2,r20
  80bf64:	1a46b03a 	or	r3,r3,r9
  80bf68:	dfc00f17 	ldw	ra,60(sp)
  80bf6c:	df000e17 	ldw	fp,56(sp)
  80bf70:	ddc00d17 	ldw	r23,52(sp)
  80bf74:	dd800c17 	ldw	r22,48(sp)
  80bf78:	dd400b17 	ldw	r21,44(sp)
  80bf7c:	dd000a17 	ldw	r20,40(sp)
  80bf80:	dcc00917 	ldw	r19,36(sp)
  80bf84:	dc800817 	ldw	r18,32(sp)
  80bf88:	dc400717 	ldw	r17,28(sp)
  80bf8c:	dc000617 	ldw	r16,24(sp)
  80bf90:	dec01004 	addi	sp,sp,64
  80bf94:	f800283a 	ret
  80bf98:	00c1ffc4 	movi	r3,2047
  80bf9c:	000b883a 	mov	r5,zero
  80bfa0:	0029883a 	mov	r20,zero
  80bfa4:	003fea06 	br	80bf50 <__divdf3+0x148>
  80bfa8:	2426b03a 	or	r19,r4,r16
  80bfac:	2023883a 	mov	r17,r4
  80bfb0:	98004f26 	beq	r19,zero,80c0f0 <__divdf3+0x2e8>
  80bfb4:	80017b26 	beq	r16,zero,80c5a4 <__divdf3+0x79c>
  80bfb8:	8009883a 	mov	r4,r16
  80bfbc:	0800eb40 	call	800eb4 <__clzsi2>
  80bfc0:	113ffd44 	addi	r4,r2,-11
  80bfc4:	00c00744 	movi	r3,29
  80bfc8:	14fffe04 	addi	r19,r2,-8
  80bfcc:	1907c83a 	sub	r3,r3,r4
  80bfd0:	84ca983a 	sll	r5,r16,r19
  80bfd4:	88c6d83a 	srl	r3,r17,r3
  80bfd8:	8ce8983a 	sll	r20,r17,r19
  80bfdc:	1966b03a 	or	r19,r3,r5
  80bfe0:	023f0344 	movi	r8,-1011
  80bfe4:	40a5c83a 	sub	r18,r8,r2
  80bfe8:	0021883a 	mov	r16,zero
  80bfec:	0023883a 	mov	r17,zero
  80bff0:	003fa406 	br	80be84 <__divdf3+0x7c>
  80bff4:	2426b03a 	or	r19,r4,r16
  80bff8:	9800421e 	bne	r19,zero,80c104 <__divdf3+0x2fc>
  80bffc:	0029883a 	mov	r20,zero
  80c000:	04000204 	movi	r16,8
  80c004:	0481ffc4 	movi	r18,2047
  80c008:	04400084 	movi	r17,2
  80c00c:	003f9d06 	br	80be84 <__divdf3+0x7c>
  80c010:	b714b03a 	or	r10,r22,fp
  80c014:	50003226 	beq	r10,zero,80c0e0 <__divdf3+0x2d8>
  80c018:	b0016c26 	beq	r22,zero,80c5cc <__divdf3+0x7c4>
  80c01c:	b009883a 	mov	r4,r22
  80c020:	0800eb40 	call	800eb4 <__clzsi2>
  80c024:	117ffd44 	addi	r5,r2,-11
  80c028:	01000744 	movi	r4,29
  80c02c:	12bffe04 	addi	r10,r2,-8
  80c030:	2149c83a 	sub	r4,r4,r5
  80c034:	b286983a 	sll	r3,r22,r10
  80c038:	e108d83a 	srl	r4,fp,r4
  80c03c:	e294983a 	sll	r10,fp,r10
  80c040:	20ecb03a 	or	r22,r4,r3
  80c044:	1491883a 	add	r8,r2,r18
  80c048:	4480fcc4 	addi	r18,r8,1011
  80c04c:	0007883a 	mov	r3,zero
  80c050:	003f9d06 	br	80bec8 <__divdf3+0xc0>
  80c054:	b813883a 	mov	r9,r23
  80c058:	888000a0 	cmpeqi	r2,r17,2
  80c05c:	103fce1e 	bne	r2,zero,80bf98 <__divdf3+0x190>
  80c060:	888000e0 	cmpeqi	r2,r17,3
  80c064:	1001ac1e 	bne	r2,zero,80c718 <__divdf3+0x910>
  80c068:	88800060 	cmpeqi	r2,r17,1
  80c06c:	103fb51e 	bne	r2,zero,80bf44 <__divdf3+0x13c>
  80c070:	9440ffc4 	addi	r17,r18,1023
  80c074:	04411c0e 	bge	zero,r17,80c4e8 <__divdf3+0x6e0>
  80c078:	a08001cc 	andi	r2,r20,7
  80c07c:	1001831e 	bne	r2,zero,80c68c <__divdf3+0x884>
  80c080:	a008d0fa 	srli	r4,r20,3
  80c084:	9880402c 	andhi	r2,r19,256
  80c088:	10000426 	beq	r2,zero,80c09c <__divdf3+0x294>
  80c08c:	00bfc034 	movhi	r2,65280
  80c090:	10bfffc4 	addi	r2,r2,-1
  80c094:	98a6703a 	and	r19,r19,r2
  80c098:	94410004 	addi	r17,r18,1024
  80c09c:	8881ffc8 	cmpgei	r2,r17,2047
  80c0a0:	103fbd1e 	bne	r2,zero,80bf98 <__divdf3+0x190>
  80c0a4:	9828977a 	slli	r20,r19,29
  80c0a8:	980a927a 	slli	r5,r19,9
  80c0ac:	88c1ffcc 	andi	r3,r17,2047
  80c0b0:	a128b03a 	or	r20,r20,r4
  80c0b4:	280ad33a 	srli	r5,r5,12
  80c0b8:	003fa506 	br	80bf50 <__divdf3+0x148>
  80c0bc:	a813883a 	mov	r9,r21
  80c0c0:	b027883a 	mov	r19,r22
  80c0c4:	5029883a 	mov	r20,r10
  80c0c8:	1823883a 	mov	r17,r3
  80c0cc:	003fe206 	br	80c058 <__divdf3+0x250>
  80c0d0:	840000d4 	ori	r16,r16,3
  80c0d4:	e015883a 	mov	r10,fp
  80c0d8:	00c000c4 	movi	r3,3
  80c0dc:	003f7a06 	br	80bec8 <__divdf3+0xc0>
  80c0e0:	84000054 	ori	r16,r16,1
  80c0e4:	002d883a 	mov	r22,zero
  80c0e8:	00c00044 	movi	r3,1
  80c0ec:	003f7606 	br	80bec8 <__divdf3+0xc0>
  80c0f0:	0029883a 	mov	r20,zero
  80c0f4:	04000104 	movi	r16,4
  80c0f8:	0025883a 	mov	r18,zero
  80c0fc:	04400044 	movi	r17,1
  80c100:	003f6006 	br	80be84 <__divdf3+0x7c>
  80c104:	8027883a 	mov	r19,r16
  80c108:	0481ffc4 	movi	r18,2047
  80c10c:	04000304 	movi	r16,12
  80c110:	044000c4 	movi	r17,3
  80c114:	003f5b06 	br	80be84 <__divdf3+0x7c>
  80c118:	01400434 	movhi	r5,16
  80c11c:	0013883a 	mov	r9,zero
  80c120:	297fffc4 	addi	r5,r5,-1
  80c124:	053fffc4 	movi	r20,-1
  80c128:	00c1ffc4 	movi	r3,2047
  80c12c:	003f8806 	br	80bf50 <__divdf3+0x148>
  80c130:	9880022c 	andhi	r2,r19,8
  80c134:	10000926 	beq	r2,zero,80c15c <__divdf3+0x354>
  80c138:	b080022c 	andhi	r2,r22,8
  80c13c:	1000071e 	bne	r2,zero,80c15c <__divdf3+0x354>
  80c140:	00800434 	movhi	r2,16
  80c144:	b1400234 	orhi	r5,r22,8
  80c148:	10bfffc4 	addi	r2,r2,-1
  80c14c:	288a703a 	and	r5,r5,r2
  80c150:	a813883a 	mov	r9,r21
  80c154:	5029883a 	mov	r20,r10
  80c158:	003ff306 	br	80c128 <__divdf3+0x320>
  80c15c:	00800434 	movhi	r2,16
  80c160:	99400234 	orhi	r5,r19,8
  80c164:	10bfffc4 	addi	r2,r2,-1
  80c168:	288a703a 	and	r5,r5,r2
  80c16c:	b813883a 	mov	r9,r23
  80c170:	003fed06 	br	80c128 <__divdf3+0x320>
  80c174:	b4c10536 	bltu	r22,r19,80c58c <__divdf3+0x784>
  80c178:	b4c10326 	beq	r22,r19,80c588 <__divdf3+0x780>
  80c17c:	94bfffc4 	addi	r18,r18,-1
  80c180:	a039883a 	mov	fp,r20
  80c184:	9821883a 	mov	r16,r19
  80c188:	0023883a 	mov	r17,zero
  80c18c:	b006923a 	slli	r3,r22,8
  80c190:	502cd63a 	srli	r22,r10,24
  80c194:	8009883a 	mov	r4,r16
  80c198:	182ed43a 	srli	r23,r3,16
  80c19c:	b0ecb03a 	or	r22,r22,r3
  80c1a0:	da400015 	stw	r9,0(sp)
  80c1a4:	b80b883a 	mov	r5,r23
  80c1a8:	502a923a 	slli	r21,r10,8
  80c1ac:	b53fffcc 	andi	r20,r22,65535
  80c1b0:	080b3d00 	call	80b3d0 <__udivsi3>
  80c1b4:	100b883a 	mov	r5,r2
  80c1b8:	a009883a 	mov	r4,r20
  80c1bc:	1027883a 	mov	r19,r2
  80c1c0:	0800f080 	call	800f08 <__mulsi3>
  80c1c4:	8009883a 	mov	r4,r16
  80c1c8:	b80b883a 	mov	r5,r23
  80c1cc:	1021883a 	mov	r16,r2
  80c1d0:	080b4340 	call	80b434 <__umodsi3>
  80c1d4:	1004943a 	slli	r2,r2,16
  80c1d8:	e008d43a 	srli	r4,fp,16
  80c1dc:	da400017 	ldw	r9,0(sp)
  80c1e0:	2088b03a 	or	r4,r4,r2
  80c1e4:	2400042e 	bgeu	r4,r16,80c1f8 <__divdf3+0x3f0>
  80c1e8:	2589883a 	add	r4,r4,r22
  80c1ec:	98bfffc4 	addi	r2,r19,-1
  80c1f0:	2581082e 	bgeu	r4,r22,80c614 <__divdf3+0x80c>
  80c1f4:	1027883a 	mov	r19,r2
  80c1f8:	2421c83a 	sub	r16,r4,r16
  80c1fc:	b80b883a 	mov	r5,r23
  80c200:	8009883a 	mov	r4,r16
  80c204:	da400215 	stw	r9,8(sp)
  80c208:	080b3d00 	call	80b3d0 <__udivsi3>
  80c20c:	100b883a 	mov	r5,r2
  80c210:	a009883a 	mov	r4,r20
  80c214:	d8800115 	stw	r2,4(sp)
  80c218:	0800f080 	call	800f08 <__mulsi3>
  80c21c:	b80b883a 	mov	r5,r23
  80c220:	8009883a 	mov	r4,r16
  80c224:	d8800015 	stw	r2,0(sp)
  80c228:	080b4340 	call	80b434 <__umodsi3>
  80c22c:	100c943a 	slli	r6,r2,16
  80c230:	d8c00017 	ldw	r3,0(sp)
  80c234:	e73fffcc 	andi	fp,fp,65535
  80c238:	e18cb03a 	or	r6,fp,r6
  80c23c:	d9c00117 	ldw	r7,4(sp)
  80c240:	da400217 	ldw	r9,8(sp)
  80c244:	30c0042e 	bgeu	r6,r3,80c258 <__divdf3+0x450>
  80c248:	358d883a 	add	r6,r6,r22
  80c24c:	38bfffc4 	addi	r2,r7,-1
  80c250:	3580ec2e 	bgeu	r6,r22,80c604 <__divdf3+0x7fc>
  80c254:	100f883a 	mov	r7,r2
  80c258:	9826943a 	slli	r19,r19,16
  80c25c:	af3fffcc 	andi	fp,r21,65535
  80c260:	30c7c83a 	sub	r3,r6,r3
  80c264:	99e6b03a 	or	r19,r19,r7
  80c268:	980ed43a 	srli	r7,r19,16
  80c26c:	9abfffcc 	andi	r10,r19,65535
  80c270:	5009883a 	mov	r4,r10
  80c274:	e00b883a 	mov	r5,fp
  80c278:	da400515 	stw	r9,20(sp)
  80c27c:	d8c00315 	stw	r3,12(sp)
  80c280:	da800415 	stw	r10,16(sp)
  80c284:	d9c00015 	stw	r7,0(sp)
  80c288:	0800f080 	call	800f08 <__mulsi3>
  80c28c:	d9c00017 	ldw	r7,0(sp)
  80c290:	e00b883a 	mov	r5,fp
  80c294:	d8800215 	stw	r2,8(sp)
  80c298:	3809883a 	mov	r4,r7
  80c29c:	0800f080 	call	800f08 <__mulsi3>
  80c2a0:	d9c00017 	ldw	r7,0(sp)
  80c2a4:	a820d43a 	srli	r16,r21,16
  80c2a8:	d8800115 	stw	r2,4(sp)
  80c2ac:	3809883a 	mov	r4,r7
  80c2b0:	800b883a 	mov	r5,r16
  80c2b4:	0800f080 	call	800f08 <__mulsi3>
  80c2b8:	da800417 	ldw	r10,16(sp)
  80c2bc:	8009883a 	mov	r4,r16
  80c2c0:	d8800015 	stw	r2,0(sp)
  80c2c4:	500b883a 	mov	r5,r10
  80c2c8:	0800f080 	call	800f08 <__mulsi3>
  80c2cc:	d9800217 	ldw	r6,8(sp)
  80c2d0:	d9c00117 	ldw	r7,4(sp)
  80c2d4:	da000017 	ldw	r8,0(sp)
  80c2d8:	3008d43a 	srli	r4,r6,16
  80c2dc:	11c5883a 	add	r2,r2,r7
  80c2e0:	d8c00317 	ldw	r3,12(sp)
  80c2e4:	2089883a 	add	r4,r4,r2
  80c2e8:	da400517 	ldw	r9,20(sp)
  80c2ec:	21c0022e 	bgeu	r4,r7,80c2f8 <__divdf3+0x4f0>
  80c2f0:	00800074 	movhi	r2,1
  80c2f4:	4091883a 	add	r8,r8,r2
  80c2f8:	200ad43a 	srli	r5,r4,16
  80c2fc:	2008943a 	slli	r4,r4,16
  80c300:	31bfffcc 	andi	r6,r6,65535
  80c304:	2a0b883a 	add	r5,r5,r8
  80c308:	218d883a 	add	r6,r4,r6
  80c30c:	19409436 	bltu	r3,r5,80c560 <__divdf3+0x758>
  80c310:	19409226 	beq	r3,r5,80c55c <__divdf3+0x754>
  80c314:	898dc83a 	sub	r6,r17,r6
  80c318:	89a3803a 	cmpltu	r17,r17,r6
  80c31c:	1947c83a 	sub	r3,r3,r5
  80c320:	1c47c83a 	sub	r3,r3,r17
  80c324:	9440ffc4 	addi	r17,r18,1023
  80c328:	b0c0d326 	beq	r22,r3,80c678 <__divdf3+0x870>
  80c32c:	1809883a 	mov	r4,r3
  80c330:	b80b883a 	mov	r5,r23
  80c334:	d9800315 	stw	r6,12(sp)
  80c338:	da400215 	stw	r9,8(sp)
  80c33c:	d8c00015 	stw	r3,0(sp)
  80c340:	080b3d00 	call	80b3d0 <__udivsi3>
  80c344:	100b883a 	mov	r5,r2
  80c348:	a009883a 	mov	r4,r20
  80c34c:	d8800115 	stw	r2,4(sp)
  80c350:	0800f080 	call	800f08 <__mulsi3>
  80c354:	d8c00017 	ldw	r3,0(sp)
  80c358:	b80b883a 	mov	r5,r23
  80c35c:	d8800015 	stw	r2,0(sp)
  80c360:	1809883a 	mov	r4,r3
  80c364:	080b4340 	call	80b434 <__umodsi3>
  80c368:	d9800317 	ldw	r6,12(sp)
  80c36c:	1006943a 	slli	r3,r2,16
  80c370:	da000017 	ldw	r8,0(sp)
  80c374:	3008d43a 	srli	r4,r6,16
  80c378:	d9c00117 	ldw	r7,4(sp)
  80c37c:	da400217 	ldw	r9,8(sp)
  80c380:	20c6b03a 	or	r3,r4,r3
  80c384:	1a00062e 	bgeu	r3,r8,80c3a0 <__divdf3+0x598>
  80c388:	1d87883a 	add	r3,r3,r22
  80c38c:	38bfffc4 	addi	r2,r7,-1
  80c390:	1d80c836 	bltu	r3,r22,80c6b4 <__divdf3+0x8ac>
  80c394:	1a00c72e 	bgeu	r3,r8,80c6b4 <__divdf3+0x8ac>
  80c398:	39ffff84 	addi	r7,r7,-2
  80c39c:	1d87883a 	add	r3,r3,r22
  80c3a0:	1a07c83a 	sub	r3,r3,r8
  80c3a4:	1809883a 	mov	r4,r3
  80c3a8:	b80b883a 	mov	r5,r23
  80c3ac:	d9800415 	stw	r6,16(sp)
  80c3b0:	da400315 	stw	r9,12(sp)
  80c3b4:	d9c00215 	stw	r7,8(sp)
  80c3b8:	d8c00115 	stw	r3,4(sp)
  80c3bc:	080b3d00 	call	80b3d0 <__udivsi3>
  80c3c0:	100b883a 	mov	r5,r2
  80c3c4:	a009883a 	mov	r4,r20
  80c3c8:	d8800015 	stw	r2,0(sp)
  80c3cc:	0800f080 	call	800f08 <__mulsi3>
  80c3d0:	d8c00117 	ldw	r3,4(sp)
  80c3d4:	b80b883a 	mov	r5,r23
  80c3d8:	102f883a 	mov	r23,r2
  80c3dc:	1809883a 	mov	r4,r3
  80c3e0:	080b4340 	call	80b434 <__umodsi3>
  80c3e4:	d9800417 	ldw	r6,16(sp)
  80c3e8:	1004943a 	slli	r2,r2,16
  80c3ec:	da000017 	ldw	r8,0(sp)
  80c3f0:	31bfffcc 	andi	r6,r6,65535
  80c3f4:	308cb03a 	or	r6,r6,r2
  80c3f8:	d9c00217 	ldw	r7,8(sp)
  80c3fc:	da400317 	ldw	r9,12(sp)
  80c400:	35c0062e 	bgeu	r6,r23,80c41c <__divdf3+0x614>
  80c404:	358d883a 	add	r6,r6,r22
  80c408:	40bfffc4 	addi	r2,r8,-1
  80c40c:	3580a736 	bltu	r6,r22,80c6ac <__divdf3+0x8a4>
  80c410:	35c0a62e 	bgeu	r6,r23,80c6ac <__divdf3+0x8a4>
  80c414:	423fff84 	addi	r8,r8,-2
  80c418:	358d883a 	add	r6,r6,r22
  80c41c:	3828943a 	slli	r20,r7,16
  80c420:	35d5c83a 	sub	r10,r6,r23
  80c424:	e009883a 	mov	r4,fp
  80c428:	a228b03a 	or	r20,r20,r8
  80c42c:	a1ffffcc 	andi	r7,r20,65535
  80c430:	a02ed43a 	srli	r23,r20,16
  80c434:	380b883a 	mov	r5,r7
  80c438:	da400315 	stw	r9,12(sp)
  80c43c:	da800215 	stw	r10,8(sp)
  80c440:	d9c00115 	stw	r7,4(sp)
  80c444:	0800f080 	call	800f08 <__mulsi3>
  80c448:	e00b883a 	mov	r5,fp
  80c44c:	b809883a 	mov	r4,r23
  80c450:	1039883a 	mov	fp,r2
  80c454:	0800f080 	call	800f08 <__mulsi3>
  80c458:	8009883a 	mov	r4,r16
  80c45c:	b80b883a 	mov	r5,r23
  80c460:	d8800015 	stw	r2,0(sp)
  80c464:	0800f080 	call	800f08 <__mulsi3>
  80c468:	d9c00117 	ldw	r7,4(sp)
  80c46c:	8009883a 	mov	r4,r16
  80c470:	1021883a 	mov	r16,r2
  80c474:	380b883a 	mov	r5,r7
  80c478:	0800f080 	call	800f08 <__mulsi3>
  80c47c:	d9800017 	ldw	r6,0(sp)
  80c480:	e006d43a 	srli	r3,fp,16
  80c484:	da800217 	ldw	r10,8(sp)
  80c488:	1185883a 	add	r2,r2,r6
  80c48c:	1887883a 	add	r3,r3,r2
  80c490:	da400317 	ldw	r9,12(sp)
  80c494:	1980022e 	bgeu	r3,r6,80c4a0 <__divdf3+0x698>
  80c498:	00800074 	movhi	r2,1
  80c49c:	80a1883a 	add	r16,r16,r2
  80c4a0:	1808d43a 	srli	r4,r3,16
  80c4a4:	1806943a 	slli	r3,r3,16
  80c4a8:	e73fffcc 	andi	fp,fp,65535
  80c4ac:	2409883a 	add	r4,r4,r16
  80c4b0:	1f07883a 	add	r3,r3,fp
  80c4b4:	51000436 	bltu	r10,r4,80c4c8 <__divdf3+0x6c0>
  80c4b8:	51000226 	beq	r10,r4,80c4c4 <__divdf3+0x6bc>
  80c4bc:	a5000054 	ori	r20,r20,1
  80c4c0:	003eec06 	br	80c074 <__divdf3+0x26c>
  80c4c4:	183eeb26 	beq	r3,zero,80c074 <__divdf3+0x26c>
  80c4c8:	b28d883a 	add	r6,r22,r10
  80c4cc:	a0bfffc4 	addi	r2,r20,-1
  80c4d0:	35806536 	bltu	r6,r22,80c668 <__divdf3+0x860>
  80c4d4:	31008036 	bltu	r6,r4,80c6d8 <__divdf3+0x8d0>
  80c4d8:	31009426 	beq	r6,r4,80c72c <__divdf3+0x924>
  80c4dc:	1029883a 	mov	r20,r2
  80c4e0:	003ff606 	br	80c4bc <__divdf3+0x6b4>
  80c4e4:	053fffc4 	movi	r20,-1
  80c4e8:	01400044 	movi	r5,1
  80c4ec:	2c4bc83a 	sub	r5,r5,r17
  80c4f0:	28800e48 	cmpgei	r2,r5,57
  80c4f4:	103e931e 	bne	r2,zero,80bf44 <__divdf3+0x13c>
  80c4f8:	28800808 	cmpgei	r2,r5,32
  80c4fc:	1000491e 	bne	r2,zero,80c624 <__divdf3+0x81c>
  80c500:	92010784 	addi	r8,r18,1054
  80c504:	9a04983a 	sll	r2,r19,r8
  80c508:	a146d83a 	srl	r3,r20,r5
  80c50c:	a210983a 	sll	r8,r20,r8
  80c510:	994ad83a 	srl	r5,r19,r5
  80c514:	10e8b03a 	or	r20,r2,r3
  80c518:	4010c03a 	cmpne	r8,r8,zero
  80c51c:	a228b03a 	or	r20,r20,r8
  80c520:	a08001cc 	andi	r2,r20,7
  80c524:	10000726 	beq	r2,zero,80c544 <__divdf3+0x73c>
  80c528:	a08003cc 	andi	r2,r20,15
  80c52c:	10800120 	cmpeqi	r2,r2,4
  80c530:	1000041e 	bne	r2,zero,80c544 <__divdf3+0x73c>
  80c534:	a0800104 	addi	r2,r20,4
  80c538:	1529803a 	cmpltu	r20,r2,r20
  80c53c:	2d0b883a 	add	r5,r5,r20
  80c540:	1029883a 	mov	r20,r2
  80c544:	2880202c 	andhi	r2,r5,128
  80c548:	10006f26 	beq	r2,zero,80c708 <__divdf3+0x900>
  80c54c:	00c00044 	movi	r3,1
  80c550:	000b883a 	mov	r5,zero
  80c554:	0029883a 	mov	r20,zero
  80c558:	003e7d06 	br	80bf50 <__divdf3+0x148>
  80c55c:	89bf6d2e 	bgeu	r17,r6,80c314 <__divdf3+0x50c>
  80c560:	8d63883a 	add	r17,r17,r21
  80c564:	8d45803a 	cmpltu	r2,r17,r21
  80c568:	1585883a 	add	r2,r2,r22
  80c56c:	1887883a 	add	r3,r3,r2
  80c570:	98bfffc4 	addi	r2,r19,-1
  80c574:	b0c0202e 	bgeu	r22,r3,80c5f8 <__divdf3+0x7f0>
  80c578:	19405136 	bltu	r3,r5,80c6c0 <__divdf3+0x8b8>
  80c57c:	28c04f26 	beq	r5,r3,80c6bc <__divdf3+0x8b4>
  80c580:	1027883a 	mov	r19,r2
  80c584:	003f6306 	br	80c314 <__divdf3+0x50c>
  80c588:	a2befc36 	bltu	r20,r10,80c17c <__divdf3+0x374>
  80c58c:	983897fa 	slli	fp,r19,31
  80c590:	a004d07a 	srli	r2,r20,1
  80c594:	9820d07a 	srli	r16,r19,1
  80c598:	a02297fa 	slli	r17,r20,31
  80c59c:	e0b8b03a 	or	fp,fp,r2
  80c5a0:	003efa06 	br	80c18c <__divdf3+0x384>
  80c5a4:	0800eb40 	call	800eb4 <__clzsi2>
  80c5a8:	11000544 	addi	r4,r2,21
  80c5ac:	20c00748 	cmpgei	r3,r4,29
  80c5b0:	100b883a 	mov	r5,r2
  80c5b4:	10800804 	addi	r2,r2,32
  80c5b8:	183e8226 	beq	r3,zero,80bfc4 <__divdf3+0x1bc>
  80c5bc:	297ffe04 	addi	r5,r5,-8
  80c5c0:	a166983a 	sll	r19,r20,r5
  80c5c4:	0029883a 	mov	r20,zero
  80c5c8:	003e8506 	br	80bfe0 <__divdf3+0x1d8>
  80c5cc:	e009883a 	mov	r4,fp
  80c5d0:	0800eb40 	call	800eb4 <__clzsi2>
  80c5d4:	11400544 	addi	r5,r2,21
  80c5d8:	29000748 	cmpgei	r4,r5,29
  80c5dc:	1007883a 	mov	r3,r2
  80c5e0:	10800804 	addi	r2,r2,32
  80c5e4:	203e9026 	beq	r4,zero,80c028 <__divdf3+0x220>
  80c5e8:	18fffe04 	addi	r3,r3,-8
  80c5ec:	e0ec983a 	sll	r22,fp,r3
  80c5f0:	0015883a 	mov	r10,zero
  80c5f4:	003e9306 	br	80c044 <__divdf3+0x23c>
  80c5f8:	b0ffe11e 	bne	r22,r3,80c580 <__divdf3+0x778>
  80c5fc:	8d7fe036 	bltu	r17,r21,80c580 <__divdf3+0x778>
  80c600:	003fdd06 	br	80c578 <__divdf3+0x770>
  80c604:	30ff132e 	bgeu	r6,r3,80c254 <__divdf3+0x44c>
  80c608:	39ffff84 	addi	r7,r7,-2
  80c60c:	358d883a 	add	r6,r6,r22
  80c610:	003f1106 	br	80c258 <__divdf3+0x450>
  80c614:	243ef72e 	bgeu	r4,r16,80c1f4 <__divdf3+0x3ec>
  80c618:	9cffff84 	addi	r19,r19,-2
  80c61c:	2589883a 	add	r4,r4,r22
  80c620:	003ef506 	br	80c1f8 <__divdf3+0x3f0>
  80c624:	00fff844 	movi	r3,-31
  80c628:	1c47c83a 	sub	r3,r3,r17
  80c62c:	29400820 	cmpeqi	r5,r5,32
  80c630:	98c6d83a 	srl	r3,r19,r3
  80c634:	2800031e 	bne	r5,zero,80c644 <__divdf3+0x83c>
  80c638:	91410f84 	addi	r5,r18,1086
  80c63c:	994a983a 	sll	r5,r19,r5
  80c640:	a168b03a 	or	r20,r20,r5
  80c644:	a028c03a 	cmpne	r20,r20,zero
  80c648:	a0e8b03a 	or	r20,r20,r3
  80c64c:	a4c001cc 	andi	r19,r20,7
  80c650:	9800291e 	bne	r19,zero,80c6f8 <__divdf3+0x8f0>
  80c654:	000b883a 	mov	r5,zero
  80c658:	a028d0fa 	srli	r20,r20,3
  80c65c:	0007883a 	mov	r3,zero
  80c660:	a4e8b03a 	or	r20,r20,r19
  80c664:	003e3a06 	br	80bf50 <__divdf3+0x148>
  80c668:	1029883a 	mov	r20,r2
  80c66c:	313f931e 	bne	r6,r4,80c4bc <__divdf3+0x6b4>
  80c670:	1d7f921e 	bne	r3,r21,80c4bc <__divdf3+0x6b4>
  80c674:	003e7f06 	br	80c074 <__divdf3+0x26c>
  80c678:	047f9a0e 	bge	zero,r17,80c4e4 <__divdf3+0x6dc>
  80c67c:	0009883a 	mov	r4,zero
  80c680:	05000044 	movi	r20,1
  80c684:	9d27883a 	add	r19,r19,r20
  80c688:	003e7e06 	br	80c084 <__divdf3+0x27c>
  80c68c:	a08003cc 	andi	r2,r20,15
  80c690:	10800118 	cmpnei	r2,r2,4
  80c694:	103e7a26 	beq	r2,zero,80c080 <__divdf3+0x278>
  80c698:	a1000104 	addi	r4,r20,4
  80c69c:	00bffec4 	movi	r2,-5
  80c6a0:	2008d0fa 	srli	r4,r4,3
  80c6a4:	1529803a 	cmpltu	r20,r2,r20
  80c6a8:	003ff606 	br	80c684 <__divdf3+0x87c>
  80c6ac:	1011883a 	mov	r8,r2
  80c6b0:	003f5a06 	br	80c41c <__divdf3+0x614>
  80c6b4:	100f883a 	mov	r7,r2
  80c6b8:	003f3906 	br	80c3a0 <__divdf3+0x598>
  80c6bc:	89bfb02e 	bgeu	r17,r6,80c580 <__divdf3+0x778>
  80c6c0:	8d63883a 	add	r17,r17,r21
  80c6c4:	8d45803a 	cmpltu	r2,r17,r21
  80c6c8:	1585883a 	add	r2,r2,r22
  80c6cc:	9cffff84 	addi	r19,r19,-2
  80c6d0:	1887883a 	add	r3,r3,r2
  80c6d4:	003f0f06 	br	80c314 <__divdf3+0x50c>
  80c6d8:	ad45883a 	add	r2,r21,r21
  80c6dc:	156b803a 	cmpltu	r21,r2,r21
  80c6e0:	adad883a 	add	r22,r21,r22
  80c6e4:	358d883a 	add	r6,r6,r22
  80c6e8:	a53fff84 	addi	r20,r20,-2
  80c6ec:	102b883a 	mov	r21,r2
  80c6f0:	313fdf26 	beq	r6,r4,80c670 <__divdf3+0x868>
  80c6f4:	003f7106 	br	80c4bc <__divdf3+0x6b4>
  80c6f8:	a08003cc 	andi	r2,r20,15
  80c6fc:	10800118 	cmpnei	r2,r2,4
  80c700:	000b883a 	mov	r5,zero
  80c704:	103f8b1e 	bne	r2,zero,80c534 <__divdf3+0x72c>
  80c708:	2804927a 	slli	r2,r5,9
  80c70c:	2826977a 	slli	r19,r5,29
  80c710:	100ad33a 	srli	r5,r2,12
  80c714:	003fd006 	br	80c658 <__divdf3+0x850>
  80c718:	00800434 	movhi	r2,16
  80c71c:	99400234 	orhi	r5,r19,8
  80c720:	10bfffc4 	addi	r2,r2,-1
  80c724:	288a703a 	and	r5,r5,r2
  80c728:	003e7f06 	br	80c128 <__divdf3+0x320>
  80c72c:	a8ffea36 	bltu	r21,r3,80c6d8 <__divdf3+0x8d0>
  80c730:	1029883a 	mov	r20,r2
  80c734:	1d7f611e 	bne	r3,r21,80c4bc <__divdf3+0x6b4>
  80c738:	003e4e06 	br	80c074 <__divdf3+0x26c>

0080c73c <__eqdf2>:
  80c73c:	2810d53a 	srli	r8,r5,20
  80c740:	3806d53a 	srli	r3,r7,20
  80c744:	00800434 	movhi	r2,16
  80c748:	4201ffcc 	andi	r8,r8,2047
  80c74c:	10bfffc4 	addi	r2,r2,-1
  80c750:	4241ffd8 	cmpnei	r9,r8,2047
  80c754:	2814d7fa 	srli	r10,r5,31
  80c758:	3816d7fa 	srli	r11,r7,31
  80c75c:	288a703a 	and	r5,r5,r2
  80c760:	388e703a 	and	r7,r7,r2
  80c764:	1881ffcc 	andi	r2,r3,2047
  80c768:	48000626 	beq	r9,zero,80c784 <__eqdf2+0x48>
  80c76c:	10c1ffe0 	cmpeqi	r3,r2,2047
  80c770:	1800021e 	bne	r3,zero,80c77c <__eqdf2+0x40>
  80c774:	4080011e 	bne	r8,r2,80c77c <__eqdf2+0x40>
  80c778:	29c00826 	beq	r5,r7,80c79c <__eqdf2+0x60>
  80c77c:	00800044 	movi	r2,1
  80c780:	f800283a 	ret
  80c784:	2906b03a 	or	r3,r5,r4
  80c788:	183ffc1e 	bne	r3,zero,80c77c <__eqdf2+0x40>
  80c78c:	1081ffd8 	cmpnei	r2,r2,2047
  80c790:	103ffa1e 	bne	r2,zero,80c77c <__eqdf2+0x40>
  80c794:	398eb03a 	or	r7,r7,r6
  80c798:	383ff81e 	bne	r7,zero,80c77c <__eqdf2+0x40>
  80c79c:	21bff71e 	bne	r4,r6,80c77c <__eqdf2+0x40>
  80c7a0:	52c00426 	beq	r10,r11,80c7b4 <__eqdf2+0x78>
  80c7a4:	403ff51e 	bne	r8,zero,80c77c <__eqdf2+0x40>
  80c7a8:	290ab03a 	or	r5,r5,r4
  80c7ac:	2804c03a 	cmpne	r2,r5,zero
  80c7b0:	f800283a 	ret
  80c7b4:	0005883a 	mov	r2,zero
  80c7b8:	f800283a 	ret

0080c7bc <__gedf2>:
  80c7bc:	2810d53a 	srli	r8,r5,20
  80c7c0:	3812d53a 	srli	r9,r7,20
  80c7c4:	00c00434 	movhi	r3,16
  80c7c8:	4201ffcc 	andi	r8,r8,2047
  80c7cc:	18ffffc4 	addi	r3,r3,-1
  80c7d0:	4281ffd8 	cmpnei	r10,r8,2047
  80c7d4:	2816d7fa 	srli	r11,r5,31
  80c7d8:	3804d7fa 	srli	r2,r7,31
  80c7dc:	28ca703a 	and	r5,r5,r3
  80c7e0:	38ce703a 	and	r7,r7,r3
  80c7e4:	48c1ffcc 	andi	r3,r9,2047
  80c7e8:	50000b26 	beq	r10,zero,80c818 <__gedf2+0x5c>
  80c7ec:	1a41ffd8 	cmpnei	r9,r3,2047
  80c7f0:	48000d26 	beq	r9,zero,80c828 <__gedf2+0x6c>
  80c7f4:	4000191e 	bne	r8,zero,80c85c <__gedf2+0xa0>
  80c7f8:	2914b03a 	or	r10,r5,r4
  80c7fc:	5013003a 	cmpeq	r9,r10,zero
  80c800:	1800131e 	bne	r3,zero,80c850 <__gedf2+0x94>
  80c804:	3998b03a 	or	r12,r7,r6
  80c808:	6000111e 	bne	r12,zero,80c850 <__gedf2+0x94>
  80c80c:	50000a1e 	bne	r10,zero,80c838 <__gedf2+0x7c>
  80c810:	0005883a 	mov	r2,zero
  80c814:	f800283a 	ret
  80c818:	2912b03a 	or	r9,r5,r4
  80c81c:	48001e1e 	bne	r9,zero,80c898 <__gedf2+0xdc>
  80c820:	1a41ffe0 	cmpeqi	r9,r3,2047
  80c824:	48000d26 	beq	r9,zero,80c85c <__gedf2+0xa0>
  80c828:	3992b03a 	or	r9,r7,r6
  80c82c:	48001a1e 	bne	r9,zero,80c898 <__gedf2+0xdc>
  80c830:	40000526 	beq	r8,zero,80c848 <__gedf2+0x8c>
  80c834:	58800d26 	beq	r11,r2,80c86c <__gedf2+0xb0>
  80c838:	00800044 	movi	r2,1
  80c83c:	58000626 	beq	r11,zero,80c858 <__gedf2+0x9c>
  80c840:	00bfffc4 	movi	r2,-1
  80c844:	f800283a 	ret
  80c848:	2912b03a 	or	r9,r5,r4
  80c84c:	4813003a 	cmpeq	r9,r9,zero
  80c850:	483ff826 	beq	r9,zero,80c834 <__gedf2+0x78>
  80c854:	103ffa26 	beq	r2,zero,80c840 <__gedf2+0x84>
  80c858:	f800283a 	ret
  80c85c:	183ff51e 	bne	r3,zero,80c834 <__gedf2+0x78>
  80c860:	3992b03a 	or	r9,r7,r6
  80c864:	483ff31e 	bne	r9,zero,80c834 <__gedf2+0x78>
  80c868:	003ff306 	br	80c838 <__gedf2+0x7c>
  80c86c:	1a000716 	blt	r3,r8,80c88c <__gedf2+0xd0>
  80c870:	40fff816 	blt	r8,r3,80c854 <__gedf2+0x98>
  80c874:	397ff036 	bltu	r7,r5,80c838 <__gedf2+0x7c>
  80c878:	29c00926 	beq	r5,r7,80c8a0 <__gedf2+0xe4>
  80c87c:	29ffe42e 	bgeu	r5,r7,80c810 <__gedf2+0x54>
  80c880:	583fef26 	beq	r11,zero,80c840 <__gedf2+0x84>
  80c884:	5805883a 	mov	r2,r11
  80c888:	f800283a 	ret
  80c88c:	103fec1e 	bne	r2,zero,80c840 <__gedf2+0x84>
  80c890:	00800044 	movi	r2,1
  80c894:	f800283a 	ret
  80c898:	00bfff84 	movi	r2,-2
  80c89c:	f800283a 	ret
  80c8a0:	313fe536 	bltu	r6,r4,80c838 <__gedf2+0x7c>
  80c8a4:	21bfda2e 	bgeu	r4,r6,80c810 <__gedf2+0x54>
  80c8a8:	003ff506 	br	80c880 <__gedf2+0xc4>

0080c8ac <__ledf2>:
  80c8ac:	2810d53a 	srli	r8,r5,20
  80c8b0:	3812d53a 	srli	r9,r7,20
  80c8b4:	00c00434 	movhi	r3,16
  80c8b8:	4201ffcc 	andi	r8,r8,2047
  80c8bc:	18ffffc4 	addi	r3,r3,-1
  80c8c0:	4281ffd8 	cmpnei	r10,r8,2047
  80c8c4:	2816d7fa 	srli	r11,r5,31
  80c8c8:	3804d7fa 	srli	r2,r7,31
  80c8cc:	28ca703a 	and	r5,r5,r3
  80c8d0:	38ce703a 	and	r7,r7,r3
  80c8d4:	48c1ffcc 	andi	r3,r9,2047
  80c8d8:	50000b26 	beq	r10,zero,80c908 <__ledf2+0x5c>
  80c8dc:	1a41ffd8 	cmpnei	r9,r3,2047
  80c8e0:	48000d26 	beq	r9,zero,80c918 <__ledf2+0x6c>
  80c8e4:	40001b1e 	bne	r8,zero,80c954 <__ledf2+0xa8>
  80c8e8:	2914b03a 	or	r10,r5,r4
  80c8ec:	5013003a 	cmpeq	r9,r10,zero
  80c8f0:	18000e1e 	bne	r3,zero,80c92c <__ledf2+0x80>
  80c8f4:	3998b03a 	or	r12,r7,r6
  80c8f8:	60000c1e 	bne	r12,zero,80c92c <__ledf2+0x80>
  80c8fc:	50000d1e 	bne	r10,zero,80c934 <__ledf2+0x88>
  80c900:	0005883a 	mov	r2,zero
  80c904:	f800283a 	ret
  80c908:	2912b03a 	or	r9,r5,r4
  80c90c:	48000d1e 	bne	r9,zero,80c944 <__ledf2+0x98>
  80c910:	1a41ffe0 	cmpeqi	r9,r3,2047
  80c914:	48000f26 	beq	r9,zero,80c954 <__ledf2+0xa8>
  80c918:	3992b03a 	or	r9,r7,r6
  80c91c:	4800091e 	bne	r9,zero,80c944 <__ledf2+0x98>
  80c920:	4000031e 	bne	r8,zero,80c930 <__ledf2+0x84>
  80c924:	2912b03a 	or	r9,r5,r4
  80c928:	4813003a 	cmpeq	r9,r9,zero
  80c92c:	4800071e 	bne	r9,zero,80c94c <__ledf2+0xa0>
  80c930:	58800c26 	beq	r11,r2,80c964 <__ledf2+0xb8>
  80c934:	00800044 	movi	r2,1
  80c938:	58000526 	beq	r11,zero,80c950 <__ledf2+0xa4>
  80c93c:	00bfffc4 	movi	r2,-1
  80c940:	f800283a 	ret
  80c944:	00800084 	movi	r2,2
  80c948:	f800283a 	ret
  80c94c:	103ffb26 	beq	r2,zero,80c93c <__ledf2+0x90>
  80c950:	f800283a 	ret
  80c954:	183ff61e 	bne	r3,zero,80c930 <__ledf2+0x84>
  80c958:	3992b03a 	or	r9,r7,r6
  80c95c:	483ff41e 	bne	r9,zero,80c930 <__ledf2+0x84>
  80c960:	003ff406 	br	80c934 <__ledf2+0x88>
  80c964:	1a00030e 	bge	r3,r8,80c974 <__ledf2+0xc8>
  80c968:	103ff41e 	bne	r2,zero,80c93c <__ledf2+0x90>
  80c96c:	00800044 	movi	r2,1
  80c970:	f800283a 	ret
  80c974:	40fff516 	blt	r8,r3,80c94c <__ledf2+0xa0>
  80c978:	397fee36 	bltu	r7,r5,80c934 <__ledf2+0x88>
  80c97c:	29c00426 	beq	r5,r7,80c990 <__ledf2+0xe4>
  80c980:	29ffdf2e 	bgeu	r5,r7,80c900 <__ledf2+0x54>
  80c984:	583fed26 	beq	r11,zero,80c93c <__ledf2+0x90>
  80c988:	5805883a 	mov	r2,r11
  80c98c:	f800283a 	ret
  80c990:	313fe836 	bltu	r6,r4,80c934 <__ledf2+0x88>
  80c994:	21bfda2e 	bgeu	r4,r6,80c900 <__ledf2+0x54>
  80c998:	003ffa06 	br	80c984 <__ledf2+0xd8>

0080c99c <__muldf3>:
  80c99c:	2810d53a 	srli	r8,r5,20
  80c9a0:	defff004 	addi	sp,sp,-64
  80c9a4:	00800434 	movhi	r2,16
  80c9a8:	df000e15 	stw	fp,56(sp)
  80c9ac:	dd000a15 	stw	r20,40(sp)
  80c9b0:	dcc00915 	stw	r19,36(sp)
  80c9b4:	dc400715 	stw	r17,28(sp)
  80c9b8:	10bfffc4 	addi	r2,r2,-1
  80c9bc:	dfc00f15 	stw	ra,60(sp)
  80c9c0:	ddc00d15 	stw	r23,52(sp)
  80c9c4:	dd800c15 	stw	r22,48(sp)
  80c9c8:	dd400b15 	stw	r21,44(sp)
  80c9cc:	dc800815 	stw	r18,32(sp)
  80c9d0:	dc000615 	stw	r16,24(sp)
  80c9d4:	4201ffcc 	andi	r8,r8,2047
  80c9d8:	2828d7fa 	srli	r20,r5,31
  80c9dc:	2023883a 	mov	r17,r4
  80c9e0:	3039883a 	mov	fp,r6
  80c9e4:	28a6703a 	and	r19,r5,r2
  80c9e8:	40005a26 	beq	r8,zero,80cb54 <__muldf3+0x1b8>
  80c9ec:	4081ffe0 	cmpeqi	r2,r8,2047
  80c9f0:	10006c1e 	bne	r2,zero,80cba4 <__muldf3+0x208>
  80c9f4:	980a90fa 	slli	r5,r19,3
  80c9f8:	2026d77a 	srli	r19,r4,29
  80c9fc:	202490fa 	slli	r18,r4,3
  80ca00:	423f0044 	addi	r8,r8,-1023
  80ca04:	9966b03a 	or	r19,r19,r5
  80ca08:	9cc02034 	orhi	r19,r19,128
  80ca0c:	002b883a 	mov	r21,zero
  80ca10:	002d883a 	mov	r22,zero
  80ca14:	3804d53a 	srli	r2,r7,20
  80ca18:	00c00434 	movhi	r3,16
  80ca1c:	18ffffc4 	addi	r3,r3,-1
  80ca20:	1081ffcc 	andi	r2,r2,2047
  80ca24:	382ed7fa 	srli	r23,r7,31
  80ca28:	38e0703a 	and	r16,r7,r3
  80ca2c:	10006426 	beq	r2,zero,80cbc0 <__muldf3+0x224>
  80ca30:	10c1ffe0 	cmpeqi	r3,r2,2047
  80ca34:	1800211e 	bne	r3,zero,80cabc <__muldf3+0x120>
  80ca38:	e008d77a 	srli	r4,fp,29
  80ca3c:	802090fa 	slli	r16,r16,3
  80ca40:	e02290fa 	slli	r17,fp,3
  80ca44:	10bf0044 	addi	r2,r2,-1023
  80ca48:	2420b03a 	or	r16,r4,r16
  80ca4c:	84002034 	orhi	r16,r16,128
  80ca50:	4091883a 	add	r8,r8,r2
  80ca54:	0009883a 	mov	r4,zero
  80ca58:	a8800428 	cmpgeui	r2,r21,16
  80ca5c:	a5ccf03a 	xor	r6,r20,r23
  80ca60:	41c00044 	addi	r7,r8,1
  80ca64:	10006d1e 	bne	r2,zero,80cc1c <__muldf3+0x280>
  80ca68:	a80490ba 	slli	r2,r21,2
  80ca6c:	00c02074 	movhi	r3,129
  80ca70:	10c7883a 	add	r3,r2,r3
  80ca74:	18b29f17 	ldw	r2,-13700(r3)
  80ca78:	1000683a 	jmp	r2
  80ca7c:	0080cc1c 	xori	r2,zero,816
  80ca80:	0080cadc 	xori	r2,zero,811
  80ca84:	0080cadc 	xori	r2,zero,811
  80ca88:	0080cad8 	cmpnei	r2,zero,811
  80ca8c:	0080cae8 	cmpgeui	r2,zero,811
  80ca90:	0080cae8 	cmpgeui	r2,zero,811
  80ca94:	0080cf98 	cmpnei	r2,zero,830
  80ca98:	0080cad8 	cmpnei	r2,zero,811
  80ca9c:	0080cae8 	cmpgeui	r2,zero,811
  80caa0:	0080cf98 	cmpnei	r2,zero,830
  80caa4:	0080cae8 	cmpgeui	r2,zero,811
  80caa8:	0080cad8 	cmpnei	r2,zero,811
  80caac:	0080cf48 	cmpgei	r2,zero,829
  80cab0:	0080cf48 	cmpgei	r2,zero,829
  80cab4:	0080cf48 	cmpgei	r2,zero,829
  80cab8:	0080d024 	muli	r2,zero,832
  80cabc:	e422b03a 	or	r17,fp,r16
  80cac0:	4201ffc4 	addi	r8,r8,2047
  80cac4:	8801221e 	bne	r17,zero,80cf50 <__muldf3+0x5b4>
  80cac8:	ad400094 	ori	r21,r21,2
  80cacc:	0021883a 	mov	r16,zero
  80cad0:	01000084 	movi	r4,2
  80cad4:	003fe006 	br	80ca58 <__muldf3+0xbc>
  80cad8:	b80d883a 	mov	r6,r23
  80cadc:	8027883a 	mov	r19,r16
  80cae0:	8825883a 	mov	r18,r17
  80cae4:	202d883a 	mov	r22,r4
  80cae8:	b08000a0 	cmpeqi	r2,r22,2
  80caec:	1000471e 	bne	r2,zero,80cc0c <__muldf3+0x270>
  80caf0:	b08000e0 	cmpeqi	r2,r22,3
  80caf4:	10018e1e 	bne	r2,zero,80d130 <__muldf3+0x794>
  80caf8:	b0800060 	cmpeqi	r2,r22,1
  80cafc:	1000f826 	beq	r2,zero,80cee0 <__muldf3+0x544>
  80cb00:	0007883a 	mov	r3,zero
  80cb04:	0027883a 	mov	r19,zero
  80cb08:	0025883a 	mov	r18,zero
  80cb0c:	1806953a 	slli	r3,r3,20
  80cb10:	31803fcc 	andi	r6,r6,255
  80cb14:	300c97fa 	slli	r6,r6,31
  80cb18:	1cc6b03a 	or	r3,r3,r19
  80cb1c:	9005883a 	mov	r2,r18
  80cb20:	1986b03a 	or	r3,r3,r6
  80cb24:	dfc00f17 	ldw	ra,60(sp)
  80cb28:	df000e17 	ldw	fp,56(sp)
  80cb2c:	ddc00d17 	ldw	r23,52(sp)
  80cb30:	dd800c17 	ldw	r22,48(sp)
  80cb34:	dd400b17 	ldw	r21,44(sp)
  80cb38:	dd000a17 	ldw	r20,40(sp)
  80cb3c:	dcc00917 	ldw	r19,36(sp)
  80cb40:	dc800817 	ldw	r18,32(sp)
  80cb44:	dc400717 	ldw	r17,28(sp)
  80cb48:	dc000617 	ldw	r16,24(sp)
  80cb4c:	dec01004 	addi	sp,sp,64
  80cb50:	f800283a 	ret
  80cb54:	9924b03a 	or	r18,r19,r4
  80cb58:	90010a26 	beq	r18,zero,80cf84 <__muldf3+0x5e8>
  80cb5c:	d9c00015 	stw	r7,0(sp)
  80cb60:	98014d26 	beq	r19,zero,80d098 <__muldf3+0x6fc>
  80cb64:	9809883a 	mov	r4,r19
  80cb68:	0800eb40 	call	800eb4 <__clzsi2>
  80cb6c:	d9c00017 	ldw	r7,0(sp)
  80cb70:	113ffd44 	addi	r4,r2,-11
  80cb74:	00c00744 	movi	r3,29
  80cb78:	14bffe04 	addi	r18,r2,-8
  80cb7c:	1907c83a 	sub	r3,r3,r4
  80cb80:	9ca6983a 	sll	r19,r19,r18
  80cb84:	88c6d83a 	srl	r3,r17,r3
  80cb88:	8ca4983a 	sll	r18,r17,r18
  80cb8c:	1ce6b03a 	or	r19,r3,r19
  80cb90:	023f0344 	movi	r8,-1011
  80cb94:	4091c83a 	sub	r8,r8,r2
  80cb98:	002b883a 	mov	r21,zero
  80cb9c:	002d883a 	mov	r22,zero
  80cba0:	003f9c06 	br	80ca14 <__muldf3+0x78>
  80cba4:	9924b03a 	or	r18,r19,r4
  80cba8:	9000f11e 	bne	r18,zero,80cf70 <__muldf3+0x5d4>
  80cbac:	0027883a 	mov	r19,zero
  80cbb0:	05400204 	movi	r21,8
  80cbb4:	0201ffc4 	movi	r8,2047
  80cbb8:	05800084 	movi	r22,2
  80cbbc:	003f9506 	br	80ca14 <__muldf3+0x78>
  80cbc0:	e422b03a 	or	r17,fp,r16
  80cbc4:	8800e626 	beq	r17,zero,80cf60 <__muldf3+0x5c4>
  80cbc8:	da000015 	stw	r8,0(sp)
  80cbcc:	80012626 	beq	r16,zero,80d068 <__muldf3+0x6cc>
  80cbd0:	8009883a 	mov	r4,r16
  80cbd4:	0800eb40 	call	800eb4 <__clzsi2>
  80cbd8:	da000017 	ldw	r8,0(sp)
  80cbdc:	117ffd44 	addi	r5,r2,-11
  80cbe0:	01000744 	movi	r4,29
  80cbe4:	147ffe04 	addi	r17,r2,-8
  80cbe8:	2149c83a 	sub	r4,r4,r5
  80cbec:	8460983a 	sll	r16,r16,r17
  80cbf0:	e108d83a 	srl	r4,fp,r4
  80cbf4:	e462983a 	sll	r17,fp,r17
  80cbf8:	2420b03a 	or	r16,r4,r16
  80cbfc:	4091c83a 	sub	r8,r8,r2
  80cc00:	423f0344 	addi	r8,r8,-1011
  80cc04:	0009883a 	mov	r4,zero
  80cc08:	003f9306 	br	80ca58 <__muldf3+0xbc>
  80cc0c:	00c1ffc4 	movi	r3,2047
  80cc10:	0027883a 	mov	r19,zero
  80cc14:	0025883a 	mov	r18,zero
  80cc18:	003fbc06 	br	80cb0c <__muldf3+0x170>
  80cc1c:	9028d43a 	srli	r20,r18,16
  80cc20:	8f3fffcc 	andi	fp,r17,65535
  80cc24:	957fffcc 	andi	r21,r18,65535
  80cc28:	a80b883a 	mov	r5,r21
  80cc2c:	e009883a 	mov	r4,fp
  80cc30:	d9800315 	stw	r6,12(sp)
  80cc34:	da000215 	stw	r8,8(sp)
  80cc38:	d9c00115 	stw	r7,4(sp)
  80cc3c:	8822d43a 	srli	r17,r17,16
  80cc40:	0800f080 	call	800f08 <__mulsi3>
  80cc44:	e00b883a 	mov	r5,fp
  80cc48:	a009883a 	mov	r4,r20
  80cc4c:	102d883a 	mov	r22,r2
  80cc50:	0800f080 	call	800f08 <__mulsi3>
  80cc54:	880b883a 	mov	r5,r17
  80cc58:	a009883a 	mov	r4,r20
  80cc5c:	102f883a 	mov	r23,r2
  80cc60:	0800f080 	call	800f08 <__mulsi3>
  80cc64:	a80b883a 	mov	r5,r21
  80cc68:	8809883a 	mov	r4,r17
  80cc6c:	d8800015 	stw	r2,0(sp)
  80cc70:	0800f080 	call	800f08 <__mulsi3>
  80cc74:	b006d43a 	srli	r3,r22,16
  80cc78:	15e5883a 	add	r18,r2,r23
  80cc7c:	d9c00117 	ldw	r7,4(sp)
  80cc80:	1c87883a 	add	r3,r3,r18
  80cc84:	da000217 	ldw	r8,8(sp)
  80cc88:	d9800317 	ldw	r6,12(sp)
  80cc8c:	1dc0042e 	bgeu	r3,r23,80cca0 <__muldf3+0x304>
  80cc90:	d9000017 	ldw	r4,0(sp)
  80cc94:	00800074 	movhi	r2,1
  80cc98:	2085883a 	add	r2,r4,r2
  80cc9c:	d8800015 	stw	r2,0(sp)
  80cca0:	1804943a 	slli	r2,r3,16
  80cca4:	85ffffcc 	andi	r23,r16,65535
  80cca8:	b5bfffcc 	andi	r22,r22,65535
  80ccac:	1585883a 	add	r2,r2,r22
  80ccb0:	a80b883a 	mov	r5,r21
  80ccb4:	b809883a 	mov	r4,r23
  80ccb8:	1824d43a 	srli	r18,r3,16
  80ccbc:	d9800515 	stw	r6,20(sp)
  80ccc0:	da000415 	stw	r8,16(sp)
  80ccc4:	d9c00315 	stw	r7,12(sp)
  80ccc8:	8020d43a 	srli	r16,r16,16
  80cccc:	d8800115 	stw	r2,4(sp)
  80ccd0:	0800f080 	call	800f08 <__mulsi3>
  80ccd4:	a009883a 	mov	r4,r20
  80ccd8:	b80b883a 	mov	r5,r23
  80ccdc:	d8800215 	stw	r2,8(sp)
  80cce0:	0800f080 	call	800f08 <__mulsi3>
  80cce4:	a009883a 	mov	r4,r20
  80cce8:	800b883a 	mov	r5,r16
  80ccec:	102d883a 	mov	r22,r2
  80ccf0:	0800f080 	call	800f08 <__mulsi3>
  80ccf4:	a80b883a 	mov	r5,r21
  80ccf8:	8009883a 	mov	r4,r16
  80ccfc:	1029883a 	mov	r20,r2
  80cd00:	0800f080 	call	800f08 <__mulsi3>
  80cd04:	da800217 	ldw	r10,8(sp)
  80cd08:	1585883a 	add	r2,r2,r22
  80cd0c:	d9c00317 	ldw	r7,12(sp)
  80cd10:	5006d43a 	srli	r3,r10,16
  80cd14:	da000417 	ldw	r8,16(sp)
  80cd18:	d9800517 	ldw	r6,20(sp)
  80cd1c:	1887883a 	add	r3,r3,r2
  80cd20:	1d80022e 	bgeu	r3,r22,80cd2c <__muldf3+0x390>
  80cd24:	00800074 	movhi	r2,1
  80cd28:	a0a9883a 	add	r20,r20,r2
  80cd2c:	1804d43a 	srli	r2,r3,16
  80cd30:	1806943a 	slli	r3,r3,16
  80cd34:	982cd43a 	srli	r22,r19,16
  80cd38:	9d7fffcc 	andi	r21,r19,65535
  80cd3c:	e009883a 	mov	r4,fp
  80cd40:	54ffffcc 	andi	r19,r10,65535
  80cd44:	a80b883a 	mov	r5,r21
  80cd48:	1ce7883a 	add	r19,r3,r19
  80cd4c:	d9800515 	stw	r6,20(sp)
  80cd50:	da000415 	stw	r8,16(sp)
  80cd54:	d9c00315 	stw	r7,12(sp)
  80cd58:	1529883a 	add	r20,r2,r20
  80cd5c:	0800f080 	call	800f08 <__mulsi3>
  80cd60:	e00b883a 	mov	r5,fp
  80cd64:	b009883a 	mov	r4,r22
  80cd68:	d8800215 	stw	r2,8(sp)
  80cd6c:	0800f080 	call	800f08 <__mulsi3>
  80cd70:	8809883a 	mov	r4,r17
  80cd74:	b00b883a 	mov	r5,r22
  80cd78:	1039883a 	mov	fp,r2
  80cd7c:	0800f080 	call	800f08 <__mulsi3>
  80cd80:	8809883a 	mov	r4,r17
  80cd84:	a80b883a 	mov	r5,r21
  80cd88:	1023883a 	mov	r17,r2
  80cd8c:	0800f080 	call	800f08 <__mulsi3>
  80cd90:	d8c00217 	ldw	r3,8(sp)
  80cd94:	1705883a 	add	r2,r2,fp
  80cd98:	d9c00317 	ldw	r7,12(sp)
  80cd9c:	1808d43a 	srli	r4,r3,16
  80cda0:	da000417 	ldw	r8,16(sp)
  80cda4:	d9800517 	ldw	r6,20(sp)
  80cda8:	2089883a 	add	r4,r4,r2
  80cdac:	94e5883a 	add	r18,r18,r19
  80cdb0:	2700022e 	bgeu	r4,fp,80cdbc <__muldf3+0x420>
  80cdb4:	00800074 	movhi	r2,1
  80cdb8:	88a3883a 	add	r17,r17,r2
  80cdbc:	2004d43a 	srli	r2,r4,16
  80cdc0:	2038943a 	slli	fp,r4,16
  80cdc4:	18ffffcc 	andi	r3,r3,65535
  80cdc8:	b809883a 	mov	r4,r23
  80cdcc:	a80b883a 	mov	r5,r21
  80cdd0:	d9800415 	stw	r6,16(sp)
  80cdd4:	da000315 	stw	r8,12(sp)
  80cdd8:	d9c00215 	stw	r7,8(sp)
  80cddc:	e0f9883a 	add	fp,fp,r3
  80cde0:	1463883a 	add	r17,r2,r17
  80cde4:	0800f080 	call	800f08 <__mulsi3>
  80cde8:	b80b883a 	mov	r5,r23
  80cdec:	b009883a 	mov	r4,r22
  80cdf0:	102f883a 	mov	r23,r2
  80cdf4:	0800f080 	call	800f08 <__mulsi3>
  80cdf8:	b00b883a 	mov	r5,r22
  80cdfc:	8009883a 	mov	r4,r16
  80ce00:	102d883a 	mov	r22,r2
  80ce04:	0800f080 	call	800f08 <__mulsi3>
  80ce08:	a80b883a 	mov	r5,r21
  80ce0c:	8009883a 	mov	r4,r16
  80ce10:	1021883a 	mov	r16,r2
  80ce14:	0800f080 	call	800f08 <__mulsi3>
  80ce18:	b80ad43a 	srli	r5,r23,16
  80ce1c:	1585883a 	add	r2,r2,r22
  80ce20:	d9c00217 	ldw	r7,8(sp)
  80ce24:	288b883a 	add	r5,r5,r2
  80ce28:	da000317 	ldw	r8,12(sp)
  80ce2c:	d9800417 	ldw	r6,16(sp)
  80ce30:	2d80022e 	bgeu	r5,r22,80ce3c <__muldf3+0x4a0>
  80ce34:	00800074 	movhi	r2,1
  80ce38:	80a1883a 	add	r16,r16,r2
  80ce3c:	2806943a 	slli	r3,r5,16
  80ce40:	d8800017 	ldw	r2,0(sp)
  80ce44:	bdffffcc 	andi	r23,r23,65535
  80ce48:	1dc7883a 	add	r3,r3,r23
  80ce4c:	90ab883a 	add	r21,r18,r2
  80ce50:	acd5803a 	cmpltu	r10,r21,r19
  80ce54:	1d07883a 	add	r3,r3,r20
  80ce58:	af2b883a 	add	r21,r21,fp
  80ce5c:	1a97883a 	add	r11,r3,r10
  80ce60:	af09803a 	cmpltu	r4,r21,fp
  80ce64:	2826d43a 	srli	r19,r5,16
  80ce68:	5c53883a 	add	r9,r11,r17
  80ce6c:	4905883a 	add	r2,r9,r4
  80ce70:	1d29803a 	cmpltu	r20,r3,r20
  80ce74:	5a95803a 	cmpltu	r10,r11,r10
  80ce78:	1109803a 	cmpltu	r4,r2,r4
  80ce7c:	a2a8b03a 	or	r20,r20,r10
  80ce80:	4c63803a 	cmpltu	r17,r9,r17
  80ce84:	a4e7883a 	add	r19,r20,r19
  80ce88:	8908b03a 	or	r4,r17,r4
  80ce8c:	a824927a 	slli	r18,r21,9
  80ce90:	d8c00117 	ldw	r3,4(sp)
  80ce94:	9927883a 	add	r19,r19,r4
  80ce98:	9c27883a 	add	r19,r19,r16
  80ce9c:	9826927a 	slli	r19,r19,9
  80cea0:	a82ad5fa 	srli	r21,r21,23
  80cea4:	100ad5fa 	srli	r5,r2,23
  80cea8:	90e4b03a 	or	r18,r18,r3
  80ceac:	1004927a 	slli	r2,r2,9
  80ceb0:	9024c03a 	cmpne	r18,r18,zero
  80ceb4:	9564b03a 	or	r18,r18,r21
  80ceb8:	98c0402c 	andhi	r3,r19,256
  80cebc:	90a4b03a 	or	r18,r18,r2
  80cec0:	9966b03a 	or	r19,r19,r5
  80cec4:	18007f26 	beq	r3,zero,80d0c4 <__muldf3+0x728>
  80cec8:	9006d07a 	srli	r3,r18,1
  80cecc:	980497fa 	slli	r2,r19,31
  80ced0:	9480004c 	andi	r18,r18,1
  80ced4:	9826d07a 	srli	r19,r19,1
  80ced8:	1c86b03a 	or	r3,r3,r18
  80cedc:	18a4b03a 	or	r18,r3,r2
  80cee0:	3900ffc4 	addi	r4,r7,1023
  80cee4:	0100320e 	bge	zero,r4,80cfb0 <__muldf3+0x614>
  80cee8:	908001cc 	andi	r2,r18,7
  80ceec:	10000726 	beq	r2,zero,80cf0c <__muldf3+0x570>
  80cef0:	908003cc 	andi	r2,r18,15
  80cef4:	10800120 	cmpeqi	r2,r2,4
  80cef8:	1000041e 	bne	r2,zero,80cf0c <__muldf3+0x570>
  80cefc:	90800104 	addi	r2,r18,4
  80cf00:	14a5803a 	cmpltu	r18,r2,r18
  80cf04:	9ca7883a 	add	r19,r19,r18
  80cf08:	1025883a 	mov	r18,r2
  80cf0c:	9880402c 	andhi	r2,r19,256
  80cf10:	10000426 	beq	r2,zero,80cf24 <__muldf3+0x588>
  80cf14:	00bfc034 	movhi	r2,65280
  80cf18:	10bfffc4 	addi	r2,r2,-1
  80cf1c:	98a6703a 	and	r19,r19,r2
  80cf20:	39010004 	addi	r4,r7,1024
  80cf24:	2081ffc8 	cmpgei	r2,r4,2047
  80cf28:	103f381e 	bne	r2,zero,80cc0c <__muldf3+0x270>
  80cf2c:	9804977a 	slli	r2,r19,29
  80cf30:	9024d0fa 	srli	r18,r18,3
  80cf34:	9826927a 	slli	r19,r19,9
  80cf38:	20c1ffcc 	andi	r3,r4,2047
  80cf3c:	14a4b03a 	or	r18,r2,r18
  80cf40:	9826d33a 	srli	r19,r19,12
  80cf44:	003ef106 	br	80cb0c <__muldf3+0x170>
  80cf48:	a00d883a 	mov	r6,r20
  80cf4c:	003ee606 	br	80cae8 <__muldf3+0x14c>
  80cf50:	ad4000d4 	ori	r21,r21,3
  80cf54:	e023883a 	mov	r17,fp
  80cf58:	010000c4 	movi	r4,3
  80cf5c:	003ebe06 	br	80ca58 <__muldf3+0xbc>
  80cf60:	ad400054 	ori	r21,r21,1
  80cf64:	0021883a 	mov	r16,zero
  80cf68:	01000044 	movi	r4,1
  80cf6c:	003eba06 	br	80ca58 <__muldf3+0xbc>
  80cf70:	2025883a 	mov	r18,r4
  80cf74:	05400304 	movi	r21,12
  80cf78:	0201ffc4 	movi	r8,2047
  80cf7c:	058000c4 	movi	r22,3
  80cf80:	003ea406 	br	80ca14 <__muldf3+0x78>
  80cf84:	0027883a 	mov	r19,zero
  80cf88:	05400104 	movi	r21,4
  80cf8c:	0011883a 	mov	r8,zero
  80cf90:	05800044 	movi	r22,1
  80cf94:	003e9f06 	br	80ca14 <__muldf3+0x78>
  80cf98:	04c00434 	movhi	r19,16
  80cf9c:	000d883a 	mov	r6,zero
  80cfa0:	9cffffc4 	addi	r19,r19,-1
  80cfa4:	04bfffc4 	movi	r18,-1
  80cfa8:	00c1ffc4 	movi	r3,2047
  80cfac:	003ed706 	br	80cb0c <__muldf3+0x170>
  80cfb0:	00800044 	movi	r2,1
  80cfb4:	1105c83a 	sub	r2,r2,r4
  80cfb8:	10c00e48 	cmpgei	r3,r2,57
  80cfbc:	183ed01e 	bne	r3,zero,80cb00 <__muldf3+0x164>
  80cfc0:	10c00808 	cmpgei	r3,r2,32
  80cfc4:	1800411e 	bne	r3,zero,80d0cc <__muldf3+0x730>
  80cfc8:	39c10784 	addi	r7,r7,1054
  80cfcc:	99c6983a 	sll	r3,r19,r7
  80cfd0:	9088d83a 	srl	r4,r18,r2
  80cfd4:	91ce983a 	sll	r7,r18,r7
  80cfd8:	98a6d83a 	srl	r19,r19,r2
  80cfdc:	1904b03a 	or	r2,r3,r4
  80cfe0:	3824c03a 	cmpne	r18,r7,zero
  80cfe4:	1484b03a 	or	r2,r2,r18
  80cfe8:	10c001cc 	andi	r3,r2,7
  80cfec:	18000726 	beq	r3,zero,80d00c <__muldf3+0x670>
  80cff0:	10c003cc 	andi	r3,r2,15
  80cff4:	18c00120 	cmpeqi	r3,r3,4
  80cff8:	1800041e 	bne	r3,zero,80d00c <__muldf3+0x670>
  80cffc:	10c00104 	addi	r3,r2,4
  80d000:	1885803a 	cmpltu	r2,r3,r2
  80d004:	98a7883a 	add	r19,r19,r2
  80d008:	1805883a 	mov	r2,r3
  80d00c:	98c0202c 	andhi	r3,r19,128
  80d010:	18004326 	beq	r3,zero,80d120 <__muldf3+0x784>
  80d014:	00c00044 	movi	r3,1
  80d018:	0027883a 	mov	r19,zero
  80d01c:	0025883a 	mov	r18,zero
  80d020:	003eba06 	br	80cb0c <__muldf3+0x170>
  80d024:	9880022c 	andhi	r2,r19,8
  80d028:	10000926 	beq	r2,zero,80d050 <__muldf3+0x6b4>
  80d02c:	8080022c 	andhi	r2,r16,8
  80d030:	1000071e 	bne	r2,zero,80d050 <__muldf3+0x6b4>
  80d034:	00800434 	movhi	r2,16
  80d038:	84c00234 	orhi	r19,r16,8
  80d03c:	10bfffc4 	addi	r2,r2,-1
  80d040:	98a6703a 	and	r19,r19,r2
  80d044:	b80d883a 	mov	r6,r23
  80d048:	8825883a 	mov	r18,r17
  80d04c:	003fd606 	br	80cfa8 <__muldf3+0x60c>
  80d050:	00800434 	movhi	r2,16
  80d054:	9cc00234 	orhi	r19,r19,8
  80d058:	10bfffc4 	addi	r2,r2,-1
  80d05c:	98a6703a 	and	r19,r19,r2
  80d060:	a00d883a 	mov	r6,r20
  80d064:	003fd006 	br	80cfa8 <__muldf3+0x60c>
  80d068:	e009883a 	mov	r4,fp
  80d06c:	0800eb40 	call	800eb4 <__clzsi2>
  80d070:	11400544 	addi	r5,r2,21
  80d074:	29000748 	cmpgei	r4,r5,29
  80d078:	1007883a 	mov	r3,r2
  80d07c:	da000017 	ldw	r8,0(sp)
  80d080:	10800804 	addi	r2,r2,32
  80d084:	203ed626 	beq	r4,zero,80cbe0 <__muldf3+0x244>
  80d088:	1c3ffe04 	addi	r16,r3,-8
  80d08c:	e420983a 	sll	r16,fp,r16
  80d090:	0023883a 	mov	r17,zero
  80d094:	003ed906 	br	80cbfc <__muldf3+0x260>
  80d098:	0800eb40 	call	800eb4 <__clzsi2>
  80d09c:	11000544 	addi	r4,r2,21
  80d0a0:	21400748 	cmpgei	r5,r4,29
  80d0a4:	1007883a 	mov	r3,r2
  80d0a8:	d9c00017 	ldw	r7,0(sp)
  80d0ac:	10800804 	addi	r2,r2,32
  80d0b0:	283eb026 	beq	r5,zero,80cb74 <__muldf3+0x1d8>
  80d0b4:	1cfffe04 	addi	r19,r3,-8
  80d0b8:	8ce6983a 	sll	r19,r17,r19
  80d0bc:	0025883a 	mov	r18,zero
  80d0c0:	003eb306 	br	80cb90 <__muldf3+0x1f4>
  80d0c4:	400f883a 	mov	r7,r8
  80d0c8:	003f8506 	br	80cee0 <__muldf3+0x544>
  80d0cc:	00fff844 	movi	r3,-31
  80d0d0:	1907c83a 	sub	r3,r3,r4
  80d0d4:	10800820 	cmpeqi	r2,r2,32
  80d0d8:	98c6d83a 	srl	r3,r19,r3
  80d0dc:	1000031e 	bne	r2,zero,80d0ec <__muldf3+0x750>
  80d0e0:	39c10f84 	addi	r7,r7,1086
  80d0e4:	99e6983a 	sll	r19,r19,r7
  80d0e8:	94e4b03a 	or	r18,r18,r19
  80d0ec:	9024c03a 	cmpne	r18,r18,zero
  80d0f0:	90c4b03a 	or	r2,r18,r3
  80d0f4:	148001cc 	andi	r18,r2,7
  80d0f8:	9000051e 	bne	r18,zero,80d110 <__muldf3+0x774>
  80d0fc:	0027883a 	mov	r19,zero
  80d100:	1004d0fa 	srli	r2,r2,3
  80d104:	0007883a 	mov	r3,zero
  80d108:	14a4b03a 	or	r18,r2,r18
  80d10c:	003e7f06 	br	80cb0c <__muldf3+0x170>
  80d110:	10c003cc 	andi	r3,r2,15
  80d114:	18c00118 	cmpnei	r3,r3,4
  80d118:	0027883a 	mov	r19,zero
  80d11c:	183fb71e 	bne	r3,zero,80cffc <__muldf3+0x660>
  80d120:	9806927a 	slli	r3,r19,9
  80d124:	9824977a 	slli	r18,r19,29
  80d128:	1826d33a 	srli	r19,r3,12
  80d12c:	003ff406 	br	80d100 <__muldf3+0x764>
  80d130:	00800434 	movhi	r2,16
  80d134:	9cc00234 	orhi	r19,r19,8
  80d138:	10bfffc4 	addi	r2,r2,-1
  80d13c:	98a6703a 	and	r19,r19,r2
  80d140:	003f9906 	br	80cfa8 <__muldf3+0x60c>

0080d144 <__subdf3>:
  80d144:	00c00434 	movhi	r3,16
  80d148:	3812d53a 	srli	r9,r7,20
  80d14c:	18ffffc4 	addi	r3,r3,-1
  80d150:	defffb04 	addi	sp,sp,-20
  80d154:	28d0703a 	and	r8,r5,r3
  80d158:	38c6703a 	and	r3,r7,r3
  80d15c:	2804d7fa 	srli	r2,r5,31
  80d160:	401090fa 	slli	r8,r8,3
  80d164:	280ad53a 	srli	r5,r5,20
  80d168:	180690fa 	slli	r3,r3,3
  80d16c:	dcc00315 	stw	r19,12(sp)
  80d170:	dc400115 	stw	r17,4(sp)
  80d174:	2026d77a 	srli	r19,r4,29
  80d178:	3022d77a 	srli	r17,r6,29
  80d17c:	4b41ffcc 	andi	r13,r9,2047
  80d180:	dc800215 	stw	r18,8(sp)
  80d184:	dc000015 	stw	r16,0(sp)
  80d188:	dfc00415 	stw	ra,16(sp)
  80d18c:	6a41ffe0 	cmpeqi	r9,r13,2047
  80d190:	1025883a 	mov	r18,r2
  80d194:	201690fa 	slli	r11,r4,3
  80d198:	380ed7fa 	srli	r7,r7,31
  80d19c:	301490fa 	slli	r10,r6,3
  80d1a0:	2c01ffcc 	andi	r16,r5,2047
  80d1a4:	10803fcc 	andi	r2,r2,255
  80d1a8:	9a10b03a 	or	r8,r19,r8
  80d1ac:	88c6b03a 	or	r3,r17,r3
  80d1b0:	48006e1e 	bne	r9,zero,80d36c <__subdf3+0x228>
  80d1b4:	3a40005c 	xori	r9,r7,1
  80d1b8:	834bc83a 	sub	r5,r16,r13
  80d1bc:	12405726 	beq	r2,r9,80d31c <__subdf3+0x1d8>
  80d1c0:	01406f0e 	bge	zero,r5,80d380 <__subdf3+0x23c>
  80d1c4:	68007a26 	beq	r13,zero,80d3b0 <__subdf3+0x26c>
  80d1c8:	8081ffd8 	cmpnei	r2,r16,2047
  80d1cc:	10019f26 	beq	r2,zero,80d84c <__subdf3+0x708>
  80d1d0:	18c02034 	orhi	r3,r3,128
  80d1d4:	28800e48 	cmpgei	r2,r5,57
  80d1d8:	1000f91e 	bne	r2,zero,80d5c0 <__subdf3+0x47c>
  80d1dc:	28800808 	cmpgei	r2,r5,32
  80d1e0:	1001451e 	bne	r2,zero,80d6f8 <__subdf3+0x5b4>
  80d1e4:	00800804 	movi	r2,32
  80d1e8:	1145c83a 	sub	r2,r2,r5
  80d1ec:	18a2983a 	sll	r17,r3,r2
  80d1f0:	5148d83a 	srl	r4,r10,r5
  80d1f4:	5084983a 	sll	r2,r10,r2
  80d1f8:	1946d83a 	srl	r3,r3,r5
  80d1fc:	8922b03a 	or	r17,r17,r4
  80d200:	1004c03a 	cmpne	r2,r2,zero
  80d204:	88a2b03a 	or	r17,r17,r2
  80d208:	40d1c83a 	sub	r8,r8,r3
  80d20c:	5c63c83a 	sub	r17,r11,r17
  80d210:	5c49803a 	cmpltu	r4,r11,r17
  80d214:	4109c83a 	sub	r4,r8,r4
  80d218:	2080202c 	andhi	r2,r4,128
  80d21c:	1000a526 	beq	r2,zero,80d4b4 <__subdf3+0x370>
  80d220:	04c02034 	movhi	r19,128
  80d224:	9cffffc4 	addi	r19,r19,-1
  80d228:	24e6703a 	and	r19,r4,r19
  80d22c:	9800db26 	beq	r19,zero,80d59c <__subdf3+0x458>
  80d230:	9809883a 	mov	r4,r19
  80d234:	0800eb40 	call	800eb4 <__clzsi2>
  80d238:	117ffe04 	addi	r5,r2,-8
  80d23c:	01000804 	movi	r4,32
  80d240:	2149c83a 	sub	r4,r4,r5
  80d244:	8906d83a 	srl	r3,r17,r4
  80d248:	9948983a 	sll	r4,r19,r5
  80d24c:	8962983a 	sll	r17,r17,r5
  80d250:	1908b03a 	or	r4,r3,r4
  80d254:	2c00cc16 	blt	r5,r16,80d588 <__subdf3+0x444>
  80d258:	2c0bc83a 	sub	r5,r5,r16
  80d25c:	28c00044 	addi	r3,r5,1
  80d260:	18800808 	cmpgei	r2,r3,32
  80d264:	1001171e 	bne	r2,zero,80d6c4 <__subdf3+0x580>
  80d268:	00800804 	movi	r2,32
  80d26c:	10c5c83a 	sub	r2,r2,r3
  80d270:	88cad83a 	srl	r5,r17,r3
  80d274:	88a2983a 	sll	r17,r17,r2
  80d278:	2084983a 	sll	r2,r4,r2
  80d27c:	20c8d83a 	srl	r4,r4,r3
  80d280:	8822c03a 	cmpne	r17,r17,zero
  80d284:	1144b03a 	or	r2,r2,r5
  80d288:	1462b03a 	or	r17,r2,r17
  80d28c:	0021883a 	mov	r16,zero
  80d290:	888001cc 	andi	r2,r17,7
  80d294:	10000726 	beq	r2,zero,80d2b4 <__subdf3+0x170>
  80d298:	888003cc 	andi	r2,r17,15
  80d29c:	10800120 	cmpeqi	r2,r2,4
  80d2a0:	1000041e 	bne	r2,zero,80d2b4 <__subdf3+0x170>
  80d2a4:	88c00104 	addi	r3,r17,4
  80d2a8:	1c63803a 	cmpltu	r17,r3,r17
  80d2ac:	2449883a 	add	r4,r4,r17
  80d2b0:	1823883a 	mov	r17,r3
  80d2b4:	2080202c 	andhi	r2,r4,128
  80d2b8:	10008026 	beq	r2,zero,80d4bc <__subdf3+0x378>
  80d2bc:	81400044 	addi	r5,r16,1
  80d2c0:	2881ffe0 	cmpeqi	r2,r5,2047
  80d2c4:	2941ffcc 	andi	r5,r5,2047
  80d2c8:	1000921e 	bne	r2,zero,80d514 <__subdf3+0x3d0>
  80d2cc:	00bfe034 	movhi	r2,65408
  80d2d0:	10bfffc4 	addi	r2,r2,-1
  80d2d4:	2088703a 	and	r4,r4,r2
  80d2d8:	2006927a 	slli	r3,r4,9
  80d2dc:	8822d0fa 	srli	r17,r17,3
  80d2e0:	2004977a 	slli	r2,r4,29
  80d2e4:	1806d33a 	srli	r3,r3,12
  80d2e8:	1444b03a 	or	r2,r2,r17
  80d2ec:	280a953a 	slli	r5,r5,20
  80d2f0:	94803fcc 	andi	r18,r18,255
  80d2f4:	902497fa 	slli	r18,r18,31
  80d2f8:	28c6b03a 	or	r3,r5,r3
  80d2fc:	1c86b03a 	or	r3,r3,r18
  80d300:	dfc00417 	ldw	ra,16(sp)
  80d304:	dcc00317 	ldw	r19,12(sp)
  80d308:	dc800217 	ldw	r18,8(sp)
  80d30c:	dc400117 	ldw	r17,4(sp)
  80d310:	dc000017 	ldw	r16,0(sp)
  80d314:	dec00504 	addi	sp,sp,20
  80d318:	f800283a 	ret
  80d31c:	01402e0e 	bge	zero,r5,80d3d8 <__subdf3+0x294>
  80d320:	68005526 	beq	r13,zero,80d478 <__subdf3+0x334>
  80d324:	8081ffd8 	cmpnei	r2,r16,2047
  80d328:	10013b26 	beq	r2,zero,80d818 <__subdf3+0x6d4>
  80d32c:	18c02034 	orhi	r3,r3,128
  80d330:	28800e48 	cmpgei	r2,r5,57
  80d334:	10006d1e 	bne	r2,zero,80d4ec <__subdf3+0x3a8>
  80d338:	28800808 	cmpgei	r2,r5,32
  80d33c:	10010826 	beq	r2,zero,80d760 <__subdf3+0x61c>
  80d340:	2c7ff804 	addi	r17,r5,-32
  80d344:	29000820 	cmpeqi	r4,r5,32
  80d348:	1c44d83a 	srl	r2,r3,r17
  80d34c:	2000041e 	bne	r4,zero,80d360 <__subdf3+0x21c>
  80d350:	01001004 	movi	r4,64
  80d354:	214bc83a 	sub	r5,r4,r5
  80d358:	1946983a 	sll	r3,r3,r5
  80d35c:	50d4b03a 	or	r10,r10,r3
  80d360:	5022c03a 	cmpne	r17,r10,zero
  80d364:	88a2b03a 	or	r17,r17,r2
  80d368:	00006206 	br	80d4f4 <__subdf3+0x3b0>
  80d36c:	1a98b03a 	or	r12,r3,r10
  80d370:	817e0044 	addi	r5,r16,-2047
  80d374:	6000161e 	bne	r12,zero,80d3d0 <__subdf3+0x28c>
  80d378:	3a40005c 	xori	r9,r7,1
  80d37c:	12401626 	beq	r2,r9,80d3d8 <__subdf3+0x294>
  80d380:	28002e26 	beq	r5,zero,80d43c <__subdf3+0x2f8>
  80d384:	6c0bc83a 	sub	r5,r13,r16
  80d388:	4825883a 	mov	r18,r9
  80d38c:	80009e1e 	bne	r16,zero,80d608 <__subdf3+0x4c4>
  80d390:	42c4b03a 	or	r2,r8,r11
  80d394:	10010926 	beq	r2,zero,80d7bc <__subdf3+0x678>
  80d398:	28bfffc4 	addi	r2,r5,-1
  80d39c:	10016826 	beq	r2,zero,80d940 <__subdf3+0x7fc>
  80d3a0:	2941ffd8 	cmpnei	r5,r5,2047
  80d3a4:	28015f26 	beq	r5,zero,80d924 <__subdf3+0x7e0>
  80d3a8:	100b883a 	mov	r5,r2
  80d3ac:	00009906 	br	80d614 <__subdf3+0x4d0>
  80d3b0:	1a84b03a 	or	r2,r3,r10
  80d3b4:	1000b126 	beq	r2,zero,80d67c <__subdf3+0x538>
  80d3b8:	28bfffc4 	addi	r2,r5,-1
  80d3bc:	10011d26 	beq	r2,zero,80d834 <__subdf3+0x6f0>
  80d3c0:	2941ffd8 	cmpnei	r5,r5,2047
  80d3c4:	28011426 	beq	r5,zero,80d818 <__subdf3+0x6d4>
  80d3c8:	100b883a 	mov	r5,r2
  80d3cc:	003f8106 	br	80d1d4 <__subdf3+0x90>
  80d3d0:	3a403fcc 	andi	r9,r7,255
  80d3d4:	11ffea1e 	bne	r2,r7,80d380 <__subdf3+0x23c>
  80d3d8:	28007c26 	beq	r5,zero,80d5cc <__subdf3+0x488>
  80d3dc:	6c0bc83a 	sub	r5,r13,r16
  80d3e0:	8000d726 	beq	r16,zero,80d740 <__subdf3+0x5fc>
  80d3e4:	6881ffd8 	cmpnei	r2,r13,2047
  80d3e8:	10012626 	beq	r2,zero,80d884 <__subdf3+0x740>
  80d3ec:	42002034 	orhi	r8,r8,128
  80d3f0:	28800e48 	cmpgei	r2,r5,57
  80d3f4:	10012a1e 	bne	r2,zero,80d8a0 <__subdf3+0x75c>
  80d3f8:	28800808 	cmpgei	r2,r5,32
  80d3fc:	1001821e 	bne	r2,zero,80da08 <__subdf3+0x8c4>
  80d400:	00800804 	movi	r2,32
  80d404:	1145c83a 	sub	r2,r2,r5
  80d408:	40a2983a 	sll	r17,r8,r2
  80d40c:	5948d83a 	srl	r4,r11,r5
  80d410:	5884983a 	sll	r2,r11,r2
  80d414:	4150d83a 	srl	r8,r8,r5
  80d418:	8922b03a 	or	r17,r17,r4
  80d41c:	1004c03a 	cmpne	r2,r2,zero
  80d420:	88a2b03a 	or	r17,r17,r2
  80d424:	1a07883a 	add	r3,r3,r8
  80d428:	8aa3883a 	add	r17,r17,r10
  80d42c:	8a89803a 	cmpltu	r4,r17,r10
  80d430:	20c9883a 	add	r4,r4,r3
  80d434:	6821883a 	mov	r16,r13
  80d438:	00003106 	br	80d500 <__subdf3+0x3bc>
  80d43c:	80800044 	addi	r2,r16,1
  80d440:	1081ff8c 	andi	r2,r2,2046
  80d444:	1000821e 	bne	r2,zero,80d650 <__subdf3+0x50c>
  80d448:	42ceb03a 	or	r7,r8,r11
  80d44c:	1a84b03a 	or	r2,r3,r10
  80d450:	8000e11e 	bne	r16,zero,80d7d8 <__subdf3+0x694>
  80d454:	38012a26 	beq	r7,zero,80d900 <__subdf3+0x7bc>
  80d458:	1001461e 	bne	r2,zero,80d974 <__subdf3+0x830>
  80d45c:	4004977a 	slli	r2,r8,29
  80d460:	00c80034 	movhi	r3,8192
  80d464:	18ffffc4 	addi	r3,r3,-1
  80d468:	20c8703a 	and	r4,r4,r3
  80d46c:	4010d0fa 	srli	r8,r8,3
  80d470:	1104b03a 	or	r2,r2,r4
  80d474:	00001806 	br	80d4d8 <__subdf3+0x394>
  80d478:	1a84b03a 	or	r2,r3,r10
  80d47c:	1000fa26 	beq	r2,zero,80d868 <__subdf3+0x724>
  80d480:	28bfffc4 	addi	r2,r5,-1
  80d484:	10000426 	beq	r2,zero,80d498 <__subdf3+0x354>
  80d488:	2941ffd8 	cmpnei	r5,r5,2047
  80d48c:	28013226 	beq	r5,zero,80d958 <__subdf3+0x814>
  80d490:	100b883a 	mov	r5,r2
  80d494:	003fa606 	br	80d330 <__subdf3+0x1ec>
  80d498:	5aa3883a 	add	r17,r11,r10
  80d49c:	40c9883a 	add	r4,r8,r3
  80d4a0:	8ad7803a 	cmpltu	r11,r17,r11
  80d4a4:	22c9883a 	add	r4,r4,r11
  80d4a8:	2080202c 	andhi	r2,r4,128
  80d4ac:	10007a1e 	bne	r2,zero,80d698 <__subdf3+0x554>
  80d4b0:	04000044 	movi	r16,1
  80d4b4:	888001cc 	andi	r2,r17,7
  80d4b8:	103f771e 	bne	r2,zero,80d298 <__subdf3+0x154>
  80d4bc:	8822d0fa 	srli	r17,r17,3
  80d4c0:	2004977a 	slli	r2,r4,29
  80d4c4:	2010d0fa 	srli	r8,r4,3
  80d4c8:	800b883a 	mov	r5,r16
  80d4cc:	8884b03a 	or	r2,r17,r2
  80d4d0:	28c1ffe0 	cmpeqi	r3,r5,2047
  80d4d4:	1800241e 	bne	r3,zero,80d568 <__subdf3+0x424>
  80d4d8:	00c00434 	movhi	r3,16
  80d4dc:	18ffffc4 	addi	r3,r3,-1
  80d4e0:	40c6703a 	and	r3,r8,r3
  80d4e4:	2941ffcc 	andi	r5,r5,2047
  80d4e8:	003f8006 	br	80d2ec <__subdf3+0x1a8>
  80d4ec:	1aa2b03a 	or	r17,r3,r10
  80d4f0:	8822c03a 	cmpne	r17,r17,zero
  80d4f4:	8ae3883a 	add	r17,r17,r11
  80d4f8:	8ac9803a 	cmpltu	r4,r17,r11
  80d4fc:	2209883a 	add	r4,r4,r8
  80d500:	2080202c 	andhi	r2,r4,128
  80d504:	103feb26 	beq	r2,zero,80d4b4 <__subdf3+0x370>
  80d508:	84000044 	addi	r16,r16,1
  80d50c:	8081ffe0 	cmpeqi	r2,r16,2047
  80d510:	10006226 	beq	r2,zero,80d69c <__subdf3+0x558>
  80d514:	0141ffc4 	movi	r5,2047
  80d518:	0007883a 	mov	r3,zero
  80d51c:	0005883a 	mov	r2,zero
  80d520:	003f7206 	br	80d2ec <__subdf3+0x1a8>
  80d524:	400e977a 	slli	r7,r8,29
  80d528:	4010d0fa 	srli	r8,r8,3
  80d52c:	1000ef26 	beq	r2,zero,80d8ec <__subdf3+0x7a8>
  80d530:	01480034 	movhi	r5,8192
  80d534:	297fffc4 	addi	r5,r5,-1
  80d538:	2144703a 	and	r2,r4,r5
  80d53c:	4100022c 	andhi	r4,r8,8
  80d540:	11c4b03a 	or	r2,r2,r7
  80d544:	20000826 	beq	r4,zero,80d568 <__subdf3+0x424>
  80d548:	1808d0fa 	srli	r4,r3,3
  80d54c:	21c0022c 	andhi	r7,r4,8
  80d550:	3800051e 	bne	r7,zero,80d568 <__subdf3+0x424>
  80d554:	1804977a 	slli	r2,r3,29
  80d558:	314c703a 	and	r6,r6,r5
  80d55c:	4825883a 	mov	r18,r9
  80d560:	3084b03a 	or	r2,r6,r2
  80d564:	2011883a 	mov	r8,r4
  80d568:	1206b03a 	or	r3,r2,r8
  80d56c:	18013e26 	beq	r3,zero,80da68 <__subdf3+0x924>
  80d570:	01000434 	movhi	r4,16
  80d574:	40c00234 	orhi	r3,r8,8
  80d578:	213fffc4 	addi	r4,r4,-1
  80d57c:	1906703a 	and	r3,r3,r4
  80d580:	0141ffc4 	movi	r5,2047
  80d584:	003f5906 	br	80d2ec <__subdf3+0x1a8>
  80d588:	00ffe034 	movhi	r3,65408
  80d58c:	18ffffc4 	addi	r3,r3,-1
  80d590:	8161c83a 	sub	r16,r16,r5
  80d594:	20c8703a 	and	r4,r4,r3
  80d598:	003f3d06 	br	80d290 <__subdf3+0x14c>
  80d59c:	8809883a 	mov	r4,r17
  80d5a0:	0800eb40 	call	800eb4 <__clzsi2>
  80d5a4:	11400604 	addi	r5,r2,24
  80d5a8:	28c00808 	cmpgei	r3,r5,32
  80d5ac:	183f2326 	beq	r3,zero,80d23c <__subdf3+0xf8>
  80d5b0:	113ffe04 	addi	r4,r2,-8
  80d5b4:	8908983a 	sll	r4,r17,r4
  80d5b8:	0023883a 	mov	r17,zero
  80d5bc:	003f2506 	br	80d254 <__subdf3+0x110>
  80d5c0:	1aa2b03a 	or	r17,r3,r10
  80d5c4:	8822c03a 	cmpne	r17,r17,zero
  80d5c8:	003f1006 	br	80d20c <__subdf3+0xc8>
  80d5cc:	80800044 	addi	r2,r16,1
  80d5d0:	11c1ff8c 	andi	r7,r2,2046
  80d5d4:	38006d1e 	bne	r7,zero,80d78c <__subdf3+0x648>
  80d5d8:	42c4b03a 	or	r2,r8,r11
  80d5dc:	8000be1e 	bne	r16,zero,80d8d8 <__subdf3+0x794>
  80d5e0:	1000f726 	beq	r2,zero,80d9c0 <__subdf3+0x87c>
  80d5e4:	1a84b03a 	or	r2,r3,r10
  80d5e8:	1000fc1e 	bne	r2,zero,80d9dc <__subdf3+0x898>
  80d5ec:	4006977a 	slli	r3,r8,29
  80d5f0:	00880034 	movhi	r2,8192
  80d5f4:	10bfffc4 	addi	r2,r2,-1
  80d5f8:	2084703a 	and	r2,r4,r2
  80d5fc:	4010d0fa 	srli	r8,r8,3
  80d600:	10c4b03a 	or	r2,r2,r3
  80d604:	003fb406 	br	80d4d8 <__subdf3+0x394>
  80d608:	6881ffd8 	cmpnei	r2,r13,2047
  80d60c:	10009d26 	beq	r2,zero,80d884 <__subdf3+0x740>
  80d610:	42002034 	orhi	r8,r8,128
  80d614:	28800e48 	cmpgei	r2,r5,57
  80d618:	1000421e 	bne	r2,zero,80d724 <__subdf3+0x5e0>
  80d61c:	28800808 	cmpgei	r2,r5,32
  80d620:	1000a21e 	bne	r2,zero,80d8ac <__subdf3+0x768>
  80d624:	00800804 	movi	r2,32
  80d628:	1145c83a 	sub	r2,r2,r5
  80d62c:	40a2983a 	sll	r17,r8,r2
  80d630:	5948d83a 	srl	r4,r11,r5
  80d634:	5896983a 	sll	r11,r11,r2
  80d638:	4150d83a 	srl	r8,r8,r5
  80d63c:	8922b03a 	or	r17,r17,r4
  80d640:	5816c03a 	cmpne	r11,r11,zero
  80d644:	8ae2b03a 	or	r17,r17,r11
  80d648:	1a07c83a 	sub	r3,r3,r8
  80d64c:	00003706 	br	80d72c <__subdf3+0x5e8>
  80d650:	5aa3c83a 	sub	r17,r11,r10
  80d654:	40e7c83a 	sub	r19,r8,r3
  80d658:	5c49803a 	cmpltu	r4,r11,r17
  80d65c:	9927c83a 	sub	r19,r19,r4
  80d660:	9880202c 	andhi	r2,r19,128
  80d664:	1000661e 	bne	r2,zero,80d800 <__subdf3+0x6bc>
  80d668:	8cc4b03a 	or	r2,r17,r19
  80d66c:	103eef1e 	bne	r2,zero,80d22c <__subdf3+0xe8>
  80d670:	0011883a 	mov	r8,zero
  80d674:	0025883a 	mov	r18,zero
  80d678:	003f9706 	br	80d4d8 <__subdf3+0x394>
  80d67c:	4022977a 	slli	r17,r8,29
  80d680:	00880034 	movhi	r2,8192
  80d684:	10bfffc4 	addi	r2,r2,-1
  80d688:	2088703a 	and	r4,r4,r2
  80d68c:	4010d0fa 	srli	r8,r8,3
  80d690:	2444b03a 	or	r2,r4,r17
  80d694:	003f8e06 	br	80d4d0 <__subdf3+0x38c>
  80d698:	04000084 	movi	r16,2
  80d69c:	00bfe034 	movhi	r2,65408
  80d6a0:	10bfffc4 	addi	r2,r2,-1
  80d6a4:	8806d07a 	srli	r3,r17,1
  80d6a8:	2088703a 	and	r4,r4,r2
  80d6ac:	200497fa 	slli	r2,r4,31
  80d6b0:	8c40004c 	andi	r17,r17,1
  80d6b4:	1c62b03a 	or	r17,r3,r17
  80d6b8:	2008d07a 	srli	r4,r4,1
  80d6bc:	1462b03a 	or	r17,r2,r17
  80d6c0:	003ef306 	br	80d290 <__subdf3+0x14c>
  80d6c4:	297ff844 	addi	r5,r5,-31
  80d6c8:	18800820 	cmpeqi	r2,r3,32
  80d6cc:	214ad83a 	srl	r5,r4,r5
  80d6d0:	1000041e 	bne	r2,zero,80d6e4 <__subdf3+0x5a0>
  80d6d4:	00801004 	movi	r2,64
  80d6d8:	10c7c83a 	sub	r3,r2,r3
  80d6dc:	20c8983a 	sll	r4,r4,r3
  80d6e0:	8922b03a 	or	r17,r17,r4
  80d6e4:	8822c03a 	cmpne	r17,r17,zero
  80d6e8:	8962b03a 	or	r17,r17,r5
  80d6ec:	0009883a 	mov	r4,zero
  80d6f0:	0021883a 	mov	r16,zero
  80d6f4:	003f6f06 	br	80d4b4 <__subdf3+0x370>
  80d6f8:	2c7ff804 	addi	r17,r5,-32
  80d6fc:	29000820 	cmpeqi	r4,r5,32
  80d700:	1c44d83a 	srl	r2,r3,r17
  80d704:	2000041e 	bne	r4,zero,80d718 <__subdf3+0x5d4>
  80d708:	01001004 	movi	r4,64
  80d70c:	214bc83a 	sub	r5,r4,r5
  80d710:	1946983a 	sll	r3,r3,r5
  80d714:	50d4b03a 	or	r10,r10,r3
  80d718:	5022c03a 	cmpne	r17,r10,zero
  80d71c:	88a2b03a 	or	r17,r17,r2
  80d720:	003eba06 	br	80d20c <__subdf3+0xc8>
  80d724:	42d0b03a 	or	r8,r8,r11
  80d728:	4022c03a 	cmpne	r17,r8,zero
  80d72c:	5463c83a 	sub	r17,r10,r17
  80d730:	5449803a 	cmpltu	r4,r10,r17
  80d734:	1909c83a 	sub	r4,r3,r4
  80d738:	6821883a 	mov	r16,r13
  80d73c:	003eb606 	br	80d218 <__subdf3+0xd4>
  80d740:	42c4b03a 	or	r2,r8,r11
  80d744:	10009726 	beq	r2,zero,80d9a4 <__subdf3+0x860>
  80d748:	28bfffc4 	addi	r2,r5,-1
  80d74c:	1000b926 	beq	r2,zero,80da34 <__subdf3+0x8f0>
  80d750:	2941ffd8 	cmpnei	r5,r5,2047
  80d754:	28007326 	beq	r5,zero,80d924 <__subdf3+0x7e0>
  80d758:	100b883a 	mov	r5,r2
  80d75c:	003f2406 	br	80d3f0 <__subdf3+0x2ac>
  80d760:	00800804 	movi	r2,32
  80d764:	1145c83a 	sub	r2,r2,r5
  80d768:	18a2983a 	sll	r17,r3,r2
  80d76c:	5148d83a 	srl	r4,r10,r5
  80d770:	5084983a 	sll	r2,r10,r2
  80d774:	1946d83a 	srl	r3,r3,r5
  80d778:	8922b03a 	or	r17,r17,r4
  80d77c:	1004c03a 	cmpne	r2,r2,zero
  80d780:	88a2b03a 	or	r17,r17,r2
  80d784:	40d1883a 	add	r8,r8,r3
  80d788:	003f5a06 	br	80d4f4 <__subdf3+0x3b0>
  80d78c:	1101ffe0 	cmpeqi	r4,r2,2047
  80d790:	203f601e 	bne	r4,zero,80d514 <__subdf3+0x3d0>
  80d794:	5a95883a 	add	r10,r11,r10
  80d798:	52d7803a 	cmpltu	r11,r10,r11
  80d79c:	40c9883a 	add	r4,r8,r3
  80d7a0:	22c9883a 	add	r4,r4,r11
  80d7a4:	202297fa 	slli	r17,r4,31
  80d7a8:	5014d07a 	srli	r10,r10,1
  80d7ac:	2008d07a 	srli	r4,r4,1
  80d7b0:	1021883a 	mov	r16,r2
  80d7b4:	8aa2b03a 	or	r17,r17,r10
  80d7b8:	003f3e06 	br	80d4b4 <__subdf3+0x370>
  80d7bc:	1808977a 	slli	r4,r3,29
  80d7c0:	00880034 	movhi	r2,8192
  80d7c4:	10bfffc4 	addi	r2,r2,-1
  80d7c8:	308c703a 	and	r6,r6,r2
  80d7cc:	1810d0fa 	srli	r8,r3,3
  80d7d0:	3104b03a 	or	r2,r6,r4
  80d7d4:	003f3e06 	br	80d4d0 <__subdf3+0x38c>
  80d7d8:	383f521e 	bne	r7,zero,80d524 <__subdf3+0x3e0>
  80d7dc:	10009d26 	beq	r2,zero,80da54 <__subdf3+0x910>
  80d7e0:	1808977a 	slli	r4,r3,29
  80d7e4:	00880034 	movhi	r2,8192
  80d7e8:	10bfffc4 	addi	r2,r2,-1
  80d7ec:	3084703a 	and	r2,r6,r2
  80d7f0:	1810d0fa 	srli	r8,r3,3
  80d7f4:	1104b03a 	or	r2,r2,r4
  80d7f8:	4825883a 	mov	r18,r9
  80d7fc:	003f5a06 	br	80d568 <__subdf3+0x424>
  80d800:	52e3c83a 	sub	r17,r10,r11
  80d804:	1a09c83a 	sub	r4,r3,r8
  80d808:	5467803a 	cmpltu	r19,r10,r17
  80d80c:	24e7c83a 	sub	r19,r4,r19
  80d810:	4825883a 	mov	r18,r9
  80d814:	003e8506 	br	80d22c <__subdf3+0xe8>
  80d818:	4022977a 	slli	r17,r8,29
  80d81c:	00880034 	movhi	r2,8192
  80d820:	10bfffc4 	addi	r2,r2,-1
  80d824:	2088703a 	and	r4,r4,r2
  80d828:	4010d0fa 	srli	r8,r8,3
  80d82c:	2444b03a 	or	r2,r4,r17
  80d830:	003f4d06 	br	80d568 <__subdf3+0x424>
  80d834:	5aa3c83a 	sub	r17,r11,r10
  80d838:	40c9c83a 	sub	r4,r8,r3
  80d83c:	5c57803a 	cmpltu	r11,r11,r17
  80d840:	22c9c83a 	sub	r4,r4,r11
  80d844:	04000044 	movi	r16,1
  80d848:	003e7306 	br	80d218 <__subdf3+0xd4>
  80d84c:	4004977a 	slli	r2,r8,29
  80d850:	00c80034 	movhi	r3,8192
  80d854:	18ffffc4 	addi	r3,r3,-1
  80d858:	20c8703a 	and	r4,r4,r3
  80d85c:	4010d0fa 	srli	r8,r8,3
  80d860:	1104b03a 	or	r2,r2,r4
  80d864:	003f4006 	br	80d568 <__subdf3+0x424>
  80d868:	4004977a 	slli	r2,r8,29
  80d86c:	00c80034 	movhi	r3,8192
  80d870:	18ffffc4 	addi	r3,r3,-1
  80d874:	20c8703a 	and	r4,r4,r3
  80d878:	4010d0fa 	srli	r8,r8,3
  80d87c:	1104b03a 	or	r2,r2,r4
  80d880:	003f1306 	br	80d4d0 <__subdf3+0x38c>
  80d884:	1804977a 	slli	r2,r3,29
  80d888:	01080034 	movhi	r4,8192
  80d88c:	213fffc4 	addi	r4,r4,-1
  80d890:	310c703a 	and	r6,r6,r4
  80d894:	1810d0fa 	srli	r8,r3,3
  80d898:	1184b03a 	or	r2,r2,r6
  80d89c:	003f3206 	br	80d568 <__subdf3+0x424>
  80d8a0:	42d0b03a 	or	r8,r8,r11
  80d8a4:	4022c03a 	cmpne	r17,r8,zero
  80d8a8:	003edf06 	br	80d428 <__subdf3+0x2e4>
  80d8ac:	2c7ff804 	addi	r17,r5,-32
  80d8b0:	29000820 	cmpeqi	r4,r5,32
  80d8b4:	4444d83a 	srl	r2,r8,r17
  80d8b8:	2000041e 	bne	r4,zero,80d8cc <__subdf3+0x788>
  80d8bc:	01001004 	movi	r4,64
  80d8c0:	214bc83a 	sub	r5,r4,r5
  80d8c4:	4150983a 	sll	r8,r8,r5
  80d8c8:	5a16b03a 	or	r11,r11,r8
  80d8cc:	5822c03a 	cmpne	r17,r11,zero
  80d8d0:	88a2b03a 	or	r17,r17,r2
  80d8d4:	003f9506 	br	80d72c <__subdf3+0x5e8>
  80d8d8:	103fea26 	beq	r2,zero,80d884 <__subdf3+0x740>
  80d8dc:	1a94b03a 	or	r10,r3,r10
  80d8e0:	400e977a 	slli	r7,r8,29
  80d8e4:	4010d0fa 	srli	r8,r8,3
  80d8e8:	503f111e 	bne	r10,zero,80d530 <__subdf3+0x3ec>
  80d8ec:	00880034 	movhi	r2,8192
  80d8f0:	10bfffc4 	addi	r2,r2,-1
  80d8f4:	2084703a 	and	r2,r4,r2
  80d8f8:	11c4b03a 	or	r2,r2,r7
  80d8fc:	003f1a06 	br	80d568 <__subdf3+0x424>
  80d900:	103f5b26 	beq	r2,zero,80d670 <__subdf3+0x52c>
  80d904:	1804977a 	slli	r2,r3,29
  80d908:	01080034 	movhi	r4,8192
  80d90c:	213fffc4 	addi	r4,r4,-1
  80d910:	310c703a 	and	r6,r6,r4
  80d914:	1810d0fa 	srli	r8,r3,3
  80d918:	1184b03a 	or	r2,r2,r6
  80d91c:	4825883a 	mov	r18,r9
  80d920:	003eed06 	br	80d4d8 <__subdf3+0x394>
  80d924:	1808977a 	slli	r4,r3,29
  80d928:	00880034 	movhi	r2,8192
  80d92c:	10bfffc4 	addi	r2,r2,-1
  80d930:	3084703a 	and	r2,r6,r2
  80d934:	1810d0fa 	srli	r8,r3,3
  80d938:	1104b03a 	or	r2,r2,r4
  80d93c:	003f0a06 	br	80d568 <__subdf3+0x424>
  80d940:	52e3c83a 	sub	r17,r10,r11
  80d944:	1a09c83a 	sub	r4,r3,r8
  80d948:	5455803a 	cmpltu	r10,r10,r17
  80d94c:	2289c83a 	sub	r4,r4,r10
  80d950:	04000044 	movi	r16,1
  80d954:	003e3006 	br	80d218 <__subdf3+0xd4>
  80d958:	4006977a 	slli	r3,r8,29
  80d95c:	00880034 	movhi	r2,8192
  80d960:	10bfffc4 	addi	r2,r2,-1
  80d964:	2084703a 	and	r2,r4,r2
  80d968:	4010d0fa 	srli	r8,r8,3
  80d96c:	10c4b03a 	or	r2,r2,r3
  80d970:	003efd06 	br	80d568 <__subdf3+0x424>
  80d974:	5aa3c83a 	sub	r17,r11,r10
  80d978:	5c45803a 	cmpltu	r2,r11,r17
  80d97c:	40c9c83a 	sub	r4,r8,r3
  80d980:	2089c83a 	sub	r4,r4,r2
  80d984:	2080202c 	andhi	r2,r4,128
  80d988:	10002f26 	beq	r2,zero,80da48 <__subdf3+0x904>
  80d98c:	52e3c83a 	sub	r17,r10,r11
  80d990:	1a09c83a 	sub	r4,r3,r8
  80d994:	5455803a 	cmpltu	r10,r10,r17
  80d998:	2289c83a 	sub	r4,r4,r10
  80d99c:	4825883a 	mov	r18,r9
  80d9a0:	003e3b06 	br	80d290 <__subdf3+0x14c>
  80d9a4:	1808977a 	slli	r4,r3,29
  80d9a8:	00880034 	movhi	r2,8192
  80d9ac:	10bfffc4 	addi	r2,r2,-1
  80d9b0:	3084703a 	and	r2,r6,r2
  80d9b4:	1810d0fa 	srli	r8,r3,3
  80d9b8:	1104b03a 	or	r2,r2,r4
  80d9bc:	003ec406 	br	80d4d0 <__subdf3+0x38c>
  80d9c0:	1808977a 	slli	r4,r3,29
  80d9c4:	00880034 	movhi	r2,8192
  80d9c8:	10bfffc4 	addi	r2,r2,-1
  80d9cc:	3084703a 	and	r2,r6,r2
  80d9d0:	1810d0fa 	srli	r8,r3,3
  80d9d4:	1104b03a 	or	r2,r2,r4
  80d9d8:	003ebf06 	br	80d4d8 <__subdf3+0x394>
  80d9dc:	5aa3883a 	add	r17,r11,r10
  80d9e0:	40c9883a 	add	r4,r8,r3
  80d9e4:	8ad7803a 	cmpltu	r11,r17,r11
  80d9e8:	22c9883a 	add	r4,r4,r11
  80d9ec:	2080202c 	andhi	r2,r4,128
  80d9f0:	103eb026 	beq	r2,zero,80d4b4 <__subdf3+0x370>
  80d9f4:	00bfe034 	movhi	r2,65408
  80d9f8:	10bfffc4 	addi	r2,r2,-1
  80d9fc:	2088703a 	and	r4,r4,r2
  80da00:	04000044 	movi	r16,1
  80da04:	003eab06 	br	80d4b4 <__subdf3+0x370>
  80da08:	28bff804 	addi	r2,r5,-32
  80da0c:	29000820 	cmpeqi	r4,r5,32
  80da10:	4084d83a 	srl	r2,r8,r2
  80da14:	2000041e 	bne	r4,zero,80da28 <__subdf3+0x8e4>
  80da18:	01001004 	movi	r4,64
  80da1c:	214bc83a 	sub	r5,r4,r5
  80da20:	4150983a 	sll	r8,r8,r5
  80da24:	5a16b03a 	or	r11,r11,r8
  80da28:	5822c03a 	cmpne	r17,r11,zero
  80da2c:	88a2b03a 	or	r17,r17,r2
  80da30:	003e7d06 	br	80d428 <__subdf3+0x2e4>
  80da34:	5aa3883a 	add	r17,r11,r10
  80da38:	40c9883a 	add	r4,r8,r3
  80da3c:	8a95803a 	cmpltu	r10,r17,r10
  80da40:	2289883a 	add	r4,r4,r10
  80da44:	003e9806 	br	80d4a8 <__subdf3+0x364>
  80da48:	8904b03a 	or	r2,r17,r4
  80da4c:	103f0826 	beq	r2,zero,80d670 <__subdf3+0x52c>
  80da50:	003e9806 	br	80d4b4 <__subdf3+0x370>
  80da54:	02000434 	movhi	r8,16
  80da58:	423fffc4 	addi	r8,r8,-1
  80da5c:	0025883a 	mov	r18,zero
  80da60:	00bfffc4 	movi	r2,-1
  80da64:	003ec206 	br	80d570 <__subdf3+0x42c>
  80da68:	0005883a 	mov	r2,zero
  80da6c:	0141ffc4 	movi	r5,2047
  80da70:	0007883a 	mov	r3,zero
  80da74:	003e1d06 	br	80d2ec <__subdf3+0x1a8>

0080da78 <__unorddf2>:
  80da78:	2806d53a 	srli	r3,r5,20
  80da7c:	3810d53a 	srli	r8,r7,20
  80da80:	02400434 	movhi	r9,16
  80da84:	18c1ffcc 	andi	r3,r3,2047
  80da88:	4a7fffc4 	addi	r9,r9,-1
  80da8c:	18c1ffd8 	cmpnei	r3,r3,2047
  80da90:	2a4a703a 	and	r5,r5,r9
  80da94:	3a4e703a 	and	r7,r7,r9
  80da98:	4201ffcc 	andi	r8,r8,2047
  80da9c:	18000426 	beq	r3,zero,80dab0 <__unorddf2+0x38>
  80daa0:	4201ffd8 	cmpnei	r8,r8,2047
  80daa4:	40000626 	beq	r8,zero,80dac0 <__unorddf2+0x48>
  80daa8:	0005883a 	mov	r2,zero
  80daac:	f800283a 	ret
  80dab0:	214ab03a 	or	r5,r4,r5
  80dab4:	283ffa26 	beq	r5,zero,80daa0 <__unorddf2+0x28>
  80dab8:	00800044 	movi	r2,1
  80dabc:	f800283a 	ret
  80dac0:	398eb03a 	or	r7,r7,r6
  80dac4:	3804c03a 	cmpne	r2,r7,zero
  80dac8:	f800283a 	ret

0080dacc <__fixdfsi>:
  80dacc:	2806d53a 	srli	r3,r5,20
  80dad0:	01800434 	movhi	r6,16
  80dad4:	31bfffc4 	addi	r6,r6,-1
  80dad8:	18c1ffcc 	andi	r3,r3,2047
  80dadc:	19c0ffd0 	cmplti	r7,r3,1023
  80dae0:	2810d7fa 	srli	r8,r5,31
  80dae4:	298a703a 	and	r5,r5,r6
  80dae8:	3800061e 	bne	r7,zero,80db04 <__fixdfsi+0x38>
  80daec:	18810790 	cmplti	r2,r3,1054
  80daf0:	1000061e 	bne	r2,zero,80db0c <__fixdfsi+0x40>
  80daf4:	00a00034 	movhi	r2,32768
  80daf8:	10bfffc4 	addi	r2,r2,-1
  80dafc:	4085883a 	add	r2,r8,r2
  80db00:	f800283a 	ret
  80db04:	0005883a 	mov	r2,zero
  80db08:	f800283a 	ret
  80db0c:	01810cc4 	movi	r6,1075
  80db10:	30cdc83a 	sub	r6,r6,r3
  80db14:	30800808 	cmpgei	r2,r6,32
  80db18:	29400434 	orhi	r5,r5,16
  80db1c:	1000071e 	bne	r2,zero,80db3c <__fixdfsi+0x70>
  80db20:	18befb44 	addi	r2,r3,-1043
  80db24:	2884983a 	sll	r2,r5,r2
  80db28:	2188d83a 	srl	r4,r4,r6
  80db2c:	1104b03a 	or	r2,r2,r4
  80db30:	403ff526 	beq	r8,zero,80db08 <__fixdfsi+0x3c>
  80db34:	0085c83a 	sub	r2,zero,r2
  80db38:	f800283a 	ret
  80db3c:	008104c4 	movi	r2,1043
  80db40:	10c5c83a 	sub	r2,r2,r3
  80db44:	2884d83a 	srl	r2,r5,r2
  80db48:	003ff906 	br	80db30 <__fixdfsi+0x64>

0080db4c <__floatsidf>:
  80db4c:	defffd04 	addi	sp,sp,-12
  80db50:	dfc00215 	stw	ra,8(sp)
  80db54:	dc400115 	stw	r17,4(sp)
  80db58:	dc000015 	stw	r16,0(sp)
  80db5c:	20001326 	beq	r4,zero,80dbac <__floatsidf+0x60>
  80db60:	2022d7fa 	srli	r17,r4,31
  80db64:	2021883a 	mov	r16,r4
  80db68:	20002516 	blt	r4,zero,80dc00 <__floatsidf+0xb4>
  80db6c:	8009883a 	mov	r4,r16
  80db70:	0800eb40 	call	800eb4 <__clzsi2>
  80db74:	01410784 	movi	r5,1054
  80db78:	288bc83a 	sub	r5,r5,r2
  80db7c:	10c002c8 	cmpgei	r3,r2,11
  80db80:	2941ffcc 	andi	r5,r5,2047
  80db84:	1800171e 	bne	r3,zero,80dbe4 <__floatsidf+0x98>
  80db88:	00c002c4 	movi	r3,11
  80db8c:	1887c83a 	sub	r3,r3,r2
  80db90:	80c6d83a 	srl	r3,r16,r3
  80db94:	01000434 	movhi	r4,16
  80db98:	10800544 	addi	r2,r2,21
  80db9c:	213fffc4 	addi	r4,r4,-1
  80dba0:	8084983a 	sll	r2,r16,r2
  80dba4:	1906703a 	and	r3,r3,r4
  80dba8:	00000406 	br	80dbbc <__floatsidf+0x70>
  80dbac:	0023883a 	mov	r17,zero
  80dbb0:	000b883a 	mov	r5,zero
  80dbb4:	0007883a 	mov	r3,zero
  80dbb8:	0005883a 	mov	r2,zero
  80dbbc:	280a953a 	slli	r5,r5,20
  80dbc0:	8c403fcc 	andi	r17,r17,255
  80dbc4:	882297fa 	slli	r17,r17,31
  80dbc8:	28c6b03a 	or	r3,r5,r3
  80dbcc:	1c46b03a 	or	r3,r3,r17
  80dbd0:	dfc00217 	ldw	ra,8(sp)
  80dbd4:	dc400117 	ldw	r17,4(sp)
  80dbd8:	dc000017 	ldw	r16,0(sp)
  80dbdc:	dec00304 	addi	sp,sp,12
  80dbe0:	f800283a 	ret
  80dbe4:	10bffd44 	addi	r2,r2,-11
  80dbe8:	8086983a 	sll	r3,r16,r2
  80dbec:	00800434 	movhi	r2,16
  80dbf0:	10bfffc4 	addi	r2,r2,-1
  80dbf4:	1886703a 	and	r3,r3,r2
  80dbf8:	0005883a 	mov	r2,zero
  80dbfc:	003fef06 	br	80dbbc <__floatsidf+0x70>
  80dc00:	0121c83a 	sub	r16,zero,r4
  80dc04:	003fd906 	br	80db6c <__floatsidf+0x20>

0080dc08 <alt_get_errno>:
  80dc08:	defffe04 	addi	sp,sp,-8
  80dc0c:	dfc00115 	stw	ra,4(sp)
  80dc10:	df000015 	stw	fp,0(sp)
  80dc14:	d839883a 	mov	fp,sp
  80dc18:	d0a00917 	ldw	r2,-32732(gp)
  80dc1c:	10000326 	beq	r2,zero,80dc2c <alt_get_errno+0x24>
  80dc20:	d0a00917 	ldw	r2,-32732(gp)
  80dc24:	103ee83a 	callr	r2
  80dc28:	00000106 	br	80dc30 <alt_get_errno+0x28>
  80dc2c:	d0a70704 	addi	r2,gp,-25572
  80dc30:	e037883a 	mov	sp,fp
  80dc34:	dfc00117 	ldw	ra,4(sp)
  80dc38:	df000017 	ldw	fp,0(sp)
  80dc3c:	dec00204 	addi	sp,sp,8
  80dc40:	f800283a 	ret

0080dc44 <close>:
  80dc44:	defffb04 	addi	sp,sp,-20
  80dc48:	dfc00415 	stw	ra,16(sp)
  80dc4c:	df000315 	stw	fp,12(sp)
  80dc50:	df000304 	addi	fp,sp,12
  80dc54:	e13ffd15 	stw	r4,-12(fp)
  80dc58:	e0bffd17 	ldw	r2,-12(fp)
  80dc5c:	10000916 	blt	r2,zero,80dc84 <close+0x40>
  80dc60:	e0fffd17 	ldw	r3,-12(fp)
  80dc64:	1805883a 	mov	r2,r3
  80dc68:	1085883a 	add	r2,r2,r2
  80dc6c:	10c5883a 	add	r2,r2,r3
  80dc70:	100490ba 	slli	r2,r2,2
  80dc74:	00c02074 	movhi	r3,129
  80dc78:	18c56304 	addi	r3,r3,5516
  80dc7c:	10c5883a 	add	r2,r2,r3
  80dc80:	00000106 	br	80dc88 <close+0x44>
  80dc84:	0005883a 	mov	r2,zero
  80dc88:	e0bfff15 	stw	r2,-4(fp)
  80dc8c:	e0bfff17 	ldw	r2,-4(fp)
  80dc90:	10001926 	beq	r2,zero,80dcf8 <close+0xb4>
  80dc94:	e0bfff17 	ldw	r2,-4(fp)
  80dc98:	10800017 	ldw	r2,0(r2)
  80dc9c:	10800417 	ldw	r2,16(r2)
  80dca0:	10000626 	beq	r2,zero,80dcbc <close+0x78>
  80dca4:	e0bfff17 	ldw	r2,-4(fp)
  80dca8:	10800017 	ldw	r2,0(r2)
  80dcac:	10800417 	ldw	r2,16(r2)
  80dcb0:	e13fff17 	ldw	r4,-4(fp)
  80dcb4:	103ee83a 	callr	r2
  80dcb8:	00000106 	br	80dcc0 <close+0x7c>
  80dcbc:	0005883a 	mov	r2,zero
  80dcc0:	e0bffe15 	stw	r2,-8(fp)
  80dcc4:	e13ffd17 	ldw	r4,-12(fp)
  80dcc8:	080e5000 	call	80e500 <alt_release_fd>
  80dccc:	e0bffe17 	ldw	r2,-8(fp)
  80dcd0:	1000070e 	bge	r2,zero,80dcf0 <close+0xac>
  80dcd4:	080dc080 	call	80dc08 <alt_get_errno>
  80dcd8:	1007883a 	mov	r3,r2
  80dcdc:	e0bffe17 	ldw	r2,-8(fp)
  80dce0:	0085c83a 	sub	r2,zero,r2
  80dce4:	18800015 	stw	r2,0(r3)
  80dce8:	00bfffc4 	movi	r2,-1
  80dcec:	00000706 	br	80dd0c <close+0xc8>
  80dcf0:	0005883a 	mov	r2,zero
  80dcf4:	00000506 	br	80dd0c <close+0xc8>
  80dcf8:	080dc080 	call	80dc08 <alt_get_errno>
  80dcfc:	1007883a 	mov	r3,r2
  80dd00:	00801444 	movi	r2,81
  80dd04:	18800015 	stw	r2,0(r3)
  80dd08:	00bfffc4 	movi	r2,-1
  80dd0c:	e037883a 	mov	sp,fp
  80dd10:	dfc00117 	ldw	ra,4(sp)
  80dd14:	df000017 	ldw	fp,0(sp)
  80dd18:	dec00204 	addi	sp,sp,8
  80dd1c:	f800283a 	ret

0080dd20 <alt_dev_null_write>:
  80dd20:	defffc04 	addi	sp,sp,-16
  80dd24:	df000315 	stw	fp,12(sp)
  80dd28:	df000304 	addi	fp,sp,12
  80dd2c:	e13fff15 	stw	r4,-4(fp)
  80dd30:	e17ffe15 	stw	r5,-8(fp)
  80dd34:	e1bffd15 	stw	r6,-12(fp)
  80dd38:	e0bffd17 	ldw	r2,-12(fp)
  80dd3c:	e037883a 	mov	sp,fp
  80dd40:	df000017 	ldw	fp,0(sp)
  80dd44:	dec00104 	addi	sp,sp,4
  80dd48:	f800283a 	ret

0080dd4c <_exit>:
  80dd4c:	defffd04 	addi	sp,sp,-12
  80dd50:	df000215 	stw	fp,8(sp)
  80dd54:	df000204 	addi	fp,sp,8
  80dd58:	e13ffe15 	stw	r4,-8(fp)
  80dd5c:	0001883a 	nop
  80dd60:	e0bffe17 	ldw	r2,-8(fp)
  80dd64:	e0bfff15 	stw	r2,-4(fp)
  80dd68:	e0bfff17 	ldw	r2,-4(fp)
  80dd6c:	10000226 	beq	r2,zero,80dd78 <_exit+0x2c>
  80dd70:	002af070 	cmpltui	zero,zero,43969
  80dd74:	00000106 	br	80dd7c <_exit+0x30>
  80dd78:	002af0b0 	cmpltui	zero,zero,43970
  80dd7c:	0001883a 	nop
  80dd80:	003fff06 	br	80dd80 <_exit+0x34>

0080dd84 <alt_get_errno>:
  80dd84:	defffe04 	addi	sp,sp,-8
  80dd88:	dfc00115 	stw	ra,4(sp)
  80dd8c:	df000015 	stw	fp,0(sp)
  80dd90:	d839883a 	mov	fp,sp
  80dd94:	d0a00917 	ldw	r2,-32732(gp)
  80dd98:	10000326 	beq	r2,zero,80dda8 <alt_get_errno+0x24>
  80dd9c:	d0a00917 	ldw	r2,-32732(gp)
  80dda0:	103ee83a 	callr	r2
  80dda4:	00000106 	br	80ddac <alt_get_errno+0x28>
  80dda8:	d0a70704 	addi	r2,gp,-25572
  80ddac:	e037883a 	mov	sp,fp
  80ddb0:	dfc00117 	ldw	ra,4(sp)
  80ddb4:	df000017 	ldw	fp,0(sp)
  80ddb8:	dec00204 	addi	sp,sp,8
  80ddbc:	f800283a 	ret

0080ddc0 <fstat>:
  80ddc0:	defffb04 	addi	sp,sp,-20
  80ddc4:	dfc00415 	stw	ra,16(sp)
  80ddc8:	df000315 	stw	fp,12(sp)
  80ddcc:	df000304 	addi	fp,sp,12
  80ddd0:	e13ffe15 	stw	r4,-8(fp)
  80ddd4:	e17ffd15 	stw	r5,-12(fp)
  80ddd8:	e0bffe17 	ldw	r2,-8(fp)
  80dddc:	10000916 	blt	r2,zero,80de04 <fstat+0x44>
  80dde0:	e0fffe17 	ldw	r3,-8(fp)
  80dde4:	1805883a 	mov	r2,r3
  80dde8:	1085883a 	add	r2,r2,r2
  80ddec:	10c5883a 	add	r2,r2,r3
  80ddf0:	100490ba 	slli	r2,r2,2
  80ddf4:	00c02074 	movhi	r3,129
  80ddf8:	18c56304 	addi	r3,r3,5516
  80ddfc:	10c5883a 	add	r2,r2,r3
  80de00:	00000106 	br	80de08 <fstat+0x48>
  80de04:	0005883a 	mov	r2,zero
  80de08:	e0bfff15 	stw	r2,-4(fp)
  80de0c:	e0bfff17 	ldw	r2,-4(fp)
  80de10:	10001026 	beq	r2,zero,80de54 <fstat+0x94>
  80de14:	e0bfff17 	ldw	r2,-4(fp)
  80de18:	10800017 	ldw	r2,0(r2)
  80de1c:	10800817 	ldw	r2,32(r2)
  80de20:	10000726 	beq	r2,zero,80de40 <fstat+0x80>
  80de24:	e0bfff17 	ldw	r2,-4(fp)
  80de28:	10800017 	ldw	r2,0(r2)
  80de2c:	10800817 	ldw	r2,32(r2)
  80de30:	e17ffd17 	ldw	r5,-12(fp)
  80de34:	e13fff17 	ldw	r4,-4(fp)
  80de38:	103ee83a 	callr	r2
  80de3c:	00000a06 	br	80de68 <fstat+0xa8>
  80de40:	e0bffd17 	ldw	r2,-12(fp)
  80de44:	00c80004 	movi	r3,8192
  80de48:	10c00115 	stw	r3,4(r2)
  80de4c:	0005883a 	mov	r2,zero
  80de50:	00000506 	br	80de68 <fstat+0xa8>
  80de54:	080dd840 	call	80dd84 <alt_get_errno>
  80de58:	1007883a 	mov	r3,r2
  80de5c:	00801444 	movi	r2,81
  80de60:	18800015 	stw	r2,0(r3)
  80de64:	00bfffc4 	movi	r2,-1
  80de68:	e037883a 	mov	sp,fp
  80de6c:	dfc00117 	ldw	ra,4(sp)
  80de70:	df000017 	ldw	fp,0(sp)
  80de74:	dec00204 	addi	sp,sp,8
  80de78:	f800283a 	ret

0080de7c <getpid>:
  80de7c:	deffff04 	addi	sp,sp,-4
  80de80:	df000015 	stw	fp,0(sp)
  80de84:	d839883a 	mov	fp,sp
  80de88:	0005883a 	mov	r2,zero
  80de8c:	e037883a 	mov	sp,fp
  80de90:	df000017 	ldw	fp,0(sp)
  80de94:	dec00104 	addi	sp,sp,4
  80de98:	f800283a 	ret

0080de9c <alt_get_errno>:
  80de9c:	defffe04 	addi	sp,sp,-8
  80dea0:	dfc00115 	stw	ra,4(sp)
  80dea4:	df000015 	stw	fp,0(sp)
  80dea8:	d839883a 	mov	fp,sp
  80deac:	d0a00917 	ldw	r2,-32732(gp)
  80deb0:	10000326 	beq	r2,zero,80dec0 <alt_get_errno+0x24>
  80deb4:	d0a00917 	ldw	r2,-32732(gp)
  80deb8:	103ee83a 	callr	r2
  80debc:	00000106 	br	80dec4 <alt_get_errno+0x28>
  80dec0:	d0a70704 	addi	r2,gp,-25572
  80dec4:	e037883a 	mov	sp,fp
  80dec8:	dfc00117 	ldw	ra,4(sp)
  80decc:	df000017 	ldw	fp,0(sp)
  80ded0:	dec00204 	addi	sp,sp,8
  80ded4:	f800283a 	ret

0080ded8 <isatty>:
  80ded8:	deffea04 	addi	sp,sp,-88
  80dedc:	dfc01515 	stw	ra,84(sp)
  80dee0:	df001415 	stw	fp,80(sp)
  80dee4:	df001404 	addi	fp,sp,80
  80dee8:	e13fec15 	stw	r4,-80(fp)
  80deec:	e0bfec17 	ldw	r2,-80(fp)
  80def0:	10000916 	blt	r2,zero,80df18 <isatty+0x40>
  80def4:	e0ffec17 	ldw	r3,-80(fp)
  80def8:	1805883a 	mov	r2,r3
  80defc:	1085883a 	add	r2,r2,r2
  80df00:	10c5883a 	add	r2,r2,r3
  80df04:	100490ba 	slli	r2,r2,2
  80df08:	00c02074 	movhi	r3,129
  80df0c:	18c56304 	addi	r3,r3,5516
  80df10:	10c5883a 	add	r2,r2,r3
  80df14:	00000106 	br	80df1c <isatty+0x44>
  80df18:	0005883a 	mov	r2,zero
  80df1c:	e0bfff15 	stw	r2,-4(fp)
  80df20:	e0bfff17 	ldw	r2,-4(fp)
  80df24:	10000e26 	beq	r2,zero,80df60 <isatty+0x88>
  80df28:	e0bfff17 	ldw	r2,-4(fp)
  80df2c:	10800017 	ldw	r2,0(r2)
  80df30:	10800817 	ldw	r2,32(r2)
  80df34:	1000021e 	bne	r2,zero,80df40 <isatty+0x68>
  80df38:	00800044 	movi	r2,1
  80df3c:	00000d06 	br	80df74 <isatty+0x9c>
  80df40:	e0bfed04 	addi	r2,fp,-76
  80df44:	100b883a 	mov	r5,r2
  80df48:	e13fec17 	ldw	r4,-80(fp)
  80df4c:	080ddc00 	call	80ddc0 <fstat>
  80df50:	e0bfee17 	ldw	r2,-72(fp)
  80df54:	10880020 	cmpeqi	r2,r2,8192
  80df58:	10803fcc 	andi	r2,r2,255
  80df5c:	00000506 	br	80df74 <isatty+0x9c>
  80df60:	080de9c0 	call	80de9c <alt_get_errno>
  80df64:	1007883a 	mov	r3,r2
  80df68:	00801444 	movi	r2,81
  80df6c:	18800015 	stw	r2,0(r3)
  80df70:	0005883a 	mov	r2,zero
  80df74:	e037883a 	mov	sp,fp
  80df78:	dfc00117 	ldw	ra,4(sp)
  80df7c:	df000017 	ldw	fp,0(sp)
  80df80:	dec00204 	addi	sp,sp,8
  80df84:	f800283a 	ret

0080df88 <alt_get_errno>:
  80df88:	defffe04 	addi	sp,sp,-8
  80df8c:	dfc00115 	stw	ra,4(sp)
  80df90:	df000015 	stw	fp,0(sp)
  80df94:	d839883a 	mov	fp,sp
  80df98:	d0a00917 	ldw	r2,-32732(gp)
  80df9c:	10000326 	beq	r2,zero,80dfac <alt_get_errno+0x24>
  80dfa0:	d0a00917 	ldw	r2,-32732(gp)
  80dfa4:	103ee83a 	callr	r2
  80dfa8:	00000106 	br	80dfb0 <alt_get_errno+0x28>
  80dfac:	d0a70704 	addi	r2,gp,-25572
  80dfb0:	e037883a 	mov	sp,fp
  80dfb4:	dfc00117 	ldw	ra,4(sp)
  80dfb8:	df000017 	ldw	fp,0(sp)
  80dfbc:	dec00204 	addi	sp,sp,8
  80dfc0:	f800283a 	ret

0080dfc4 <kill>:
  80dfc4:	defffb04 	addi	sp,sp,-20
  80dfc8:	dfc00415 	stw	ra,16(sp)
  80dfcc:	df000315 	stw	fp,12(sp)
  80dfd0:	df000304 	addi	fp,sp,12
  80dfd4:	e13ffe15 	stw	r4,-8(fp)
  80dfd8:	e17ffd15 	stw	r5,-12(fp)
  80dfdc:	e03fff15 	stw	zero,-4(fp)
  80dfe0:	e0bffe17 	ldw	r2,-8(fp)
  80dfe4:	00802e16 	blt	zero,r2,80e0a0 <kill+0xdc>
  80dfe8:	e0bffd17 	ldw	r2,-12(fp)
  80dfec:	10800828 	cmpgeui	r2,r2,32
  80dff0:	1000281e 	bne	r2,zero,80e094 <kill+0xd0>
  80dff4:	e0bffd17 	ldw	r2,-12(fp)
  80dff8:	100690ba 	slli	r3,r2,2
  80dffc:	00802074 	movhi	r2,129
  80e000:	1885883a 	add	r2,r3,r2
  80e004:	10b80317 	ldw	r2,-8180(r2)
  80e008:	1000683a 	jmp	r2
  80e00c:	0080e0b4 	movhi	r2,898
  80e010:	0080e094 	movui	r2,898
  80e014:	0080e094 	movui	r2,898
  80e018:	0080e08c 	andi	r2,zero,898
  80e01c:	0080e08c 	andi	r2,zero,898
  80e020:	0080e08c 	andi	r2,zero,898
  80e024:	0080e08c 	andi	r2,zero,898
  80e028:	0080e094 	movui	r2,898
  80e02c:	0080e08c 	andi	r2,zero,898
  80e030:	0080e08c 	andi	r2,zero,898
  80e034:	0080e08c 	andi	r2,zero,898
  80e038:	0080e08c 	andi	r2,zero,898
  80e03c:	0080e08c 	andi	r2,zero,898
  80e040:	0080e08c 	andi	r2,zero,898
  80e044:	0080e08c 	andi	r2,zero,898
  80e048:	0080e08c 	andi	r2,zero,898
  80e04c:	0080e0b4 	movhi	r2,898
  80e050:	0080e094 	movui	r2,898
  80e054:	0080e094 	movui	r2,898
  80e058:	0080e094 	movui	r2,898
  80e05c:	0080e0b4 	movhi	r2,898
  80e060:	0080e094 	movui	r2,898
  80e064:	0080e094 	movui	r2,898
  80e068:	0080e08c 	andi	r2,zero,898
  80e06c:	0080e08c 	andi	r2,zero,898
  80e070:	0080e08c 	andi	r2,zero,898
  80e074:	0080e08c 	andi	r2,zero,898
  80e078:	0080e08c 	andi	r2,zero,898
  80e07c:	0080e094 	movui	r2,898
  80e080:	0080e094 	movui	r2,898
  80e084:	0080e08c 	andi	r2,zero,898
  80e088:	0080e08c 	andi	r2,zero,898
  80e08c:	0009883a 	mov	r4,zero
  80e090:	080dd4c0 	call	80dd4c <_exit>
  80e094:	00800584 	movi	r2,22
  80e098:	e0bfff15 	stw	r2,-4(fp)
  80e09c:	00000606 	br	80e0b8 <kill+0xf4>
  80e0a0:	e0bffe17 	ldw	r2,-8(fp)
  80e0a4:	0080040e 	bge	zero,r2,80e0b8 <kill+0xf4>
  80e0a8:	008000c4 	movi	r2,3
  80e0ac:	e0bfff15 	stw	r2,-4(fp)
  80e0b0:	00000106 	br	80e0b8 <kill+0xf4>
  80e0b4:	0001883a 	nop
  80e0b8:	e0bfff17 	ldw	r2,-4(fp)
  80e0bc:	10000626 	beq	r2,zero,80e0d8 <kill+0x114>
  80e0c0:	080df880 	call	80df88 <alt_get_errno>
  80e0c4:	1007883a 	mov	r3,r2
  80e0c8:	e0bfff17 	ldw	r2,-4(fp)
  80e0cc:	18800015 	stw	r2,0(r3)
  80e0d0:	00bfffc4 	movi	r2,-1
  80e0d4:	00000106 	br	80e0dc <kill+0x118>
  80e0d8:	0005883a 	mov	r2,zero
  80e0dc:	e037883a 	mov	sp,fp
  80e0e0:	dfc00117 	ldw	ra,4(sp)
  80e0e4:	df000017 	ldw	fp,0(sp)
  80e0e8:	dec00204 	addi	sp,sp,8
  80e0ec:	f800283a 	ret

0080e0f0 <alt_load_section>:
  80e0f0:	defffc04 	addi	sp,sp,-16
  80e0f4:	df000315 	stw	fp,12(sp)
  80e0f8:	df000304 	addi	fp,sp,12
  80e0fc:	e13fff15 	stw	r4,-4(fp)
  80e100:	e17ffe15 	stw	r5,-8(fp)
  80e104:	e1bffd15 	stw	r6,-12(fp)
  80e108:	e0fffe17 	ldw	r3,-8(fp)
  80e10c:	e0bfff17 	ldw	r2,-4(fp)
  80e110:	18800c26 	beq	r3,r2,80e144 <alt_load_section+0x54>
  80e114:	00000806 	br	80e138 <alt_load_section+0x48>
  80e118:	e0ffff17 	ldw	r3,-4(fp)
  80e11c:	18800104 	addi	r2,r3,4
  80e120:	e0bfff15 	stw	r2,-4(fp)
  80e124:	e0bffe17 	ldw	r2,-8(fp)
  80e128:	11000104 	addi	r4,r2,4
  80e12c:	e13ffe15 	stw	r4,-8(fp)
  80e130:	18c00017 	ldw	r3,0(r3)
  80e134:	10c00015 	stw	r3,0(r2)
  80e138:	e0fffe17 	ldw	r3,-8(fp)
  80e13c:	e0bffd17 	ldw	r2,-12(fp)
  80e140:	18bff51e 	bne	r3,r2,80e118 <alt_load_section+0x28>
  80e144:	0001883a 	nop
  80e148:	e037883a 	mov	sp,fp
  80e14c:	df000017 	ldw	fp,0(sp)
  80e150:	dec00104 	addi	sp,sp,4
  80e154:	f800283a 	ret

0080e158 <alt_load>:
  80e158:	defffe04 	addi	sp,sp,-8
  80e15c:	dfc00115 	stw	ra,4(sp)
  80e160:	df000015 	stw	fp,0(sp)
  80e164:	d839883a 	mov	fp,sp
  80e168:	01802074 	movhi	r6,129
  80e16c:	3189e904 	addi	r6,r6,10148
  80e170:	01402074 	movhi	r5,129
  80e174:	2942f304 	addi	r5,r5,3020
  80e178:	01002074 	movhi	r4,129
  80e17c:	2109e904 	addi	r4,r4,10148
  80e180:	080e0f00 	call	80e0f0 <alt_load_section>
  80e184:	01802034 	movhi	r6,128
  80e188:	31808e04 	addi	r6,r6,568
  80e18c:	01402034 	movhi	r5,128
  80e190:	29400804 	addi	r5,r5,32
  80e194:	01002034 	movhi	r4,128
  80e198:	21000804 	addi	r4,r4,32
  80e19c:	080e0f00 	call	80e0f0 <alt_load_section>
  80e1a0:	01802074 	movhi	r6,129
  80e1a4:	3182f304 	addi	r6,r6,3020
  80e1a8:	01402074 	movhi	r5,129
  80e1ac:	29414a04 	addi	r5,r5,1320
  80e1b0:	01002074 	movhi	r4,129
  80e1b4:	21014a04 	addi	r4,r4,1320
  80e1b8:	080e0f00 	call	80e0f0 <alt_load_section>
  80e1bc:	080f6900 	call	80f690 <alt_dcache_flush_all>
  80e1c0:	080f8880 	call	80f888 <alt_icache_flush_all>
  80e1c4:	0001883a 	nop
  80e1c8:	e037883a 	mov	sp,fp
  80e1cc:	dfc00117 	ldw	ra,4(sp)
  80e1d0:	df000017 	ldw	fp,0(sp)
  80e1d4:	dec00204 	addi	sp,sp,8
  80e1d8:	f800283a 	ret

0080e1dc <alt_get_errno>:
  80e1dc:	defffe04 	addi	sp,sp,-8
  80e1e0:	dfc00115 	stw	ra,4(sp)
  80e1e4:	df000015 	stw	fp,0(sp)
  80e1e8:	d839883a 	mov	fp,sp
  80e1ec:	d0a00917 	ldw	r2,-32732(gp)
  80e1f0:	10000326 	beq	r2,zero,80e200 <alt_get_errno+0x24>
  80e1f4:	d0a00917 	ldw	r2,-32732(gp)
  80e1f8:	103ee83a 	callr	r2
  80e1fc:	00000106 	br	80e204 <alt_get_errno+0x28>
  80e200:	d0a70704 	addi	r2,gp,-25572
  80e204:	e037883a 	mov	sp,fp
  80e208:	dfc00117 	ldw	ra,4(sp)
  80e20c:	df000017 	ldw	fp,0(sp)
  80e210:	dec00204 	addi	sp,sp,8
  80e214:	f800283a 	ret

0080e218 <lseek>:
  80e218:	defff904 	addi	sp,sp,-28
  80e21c:	dfc00615 	stw	ra,24(sp)
  80e220:	df000515 	stw	fp,20(sp)
  80e224:	df000504 	addi	fp,sp,20
  80e228:	e13ffd15 	stw	r4,-12(fp)
  80e22c:	e17ffc15 	stw	r5,-16(fp)
  80e230:	e1bffb15 	stw	r6,-20(fp)
  80e234:	e03fff15 	stw	zero,-4(fp)
  80e238:	e0bffd17 	ldw	r2,-12(fp)
  80e23c:	10000916 	blt	r2,zero,80e264 <lseek+0x4c>
  80e240:	e0fffd17 	ldw	r3,-12(fp)
  80e244:	1805883a 	mov	r2,r3
  80e248:	1085883a 	add	r2,r2,r2
  80e24c:	10c5883a 	add	r2,r2,r3
  80e250:	100490ba 	slli	r2,r2,2
  80e254:	00c02074 	movhi	r3,129
  80e258:	18c56304 	addi	r3,r3,5516
  80e25c:	10c5883a 	add	r2,r2,r3
  80e260:	00000106 	br	80e268 <lseek+0x50>
  80e264:	0005883a 	mov	r2,zero
  80e268:	e0bffe15 	stw	r2,-8(fp)
  80e26c:	e0bffe17 	ldw	r2,-8(fp)
  80e270:	10001026 	beq	r2,zero,80e2b4 <lseek+0x9c>
  80e274:	e0bffe17 	ldw	r2,-8(fp)
  80e278:	10800017 	ldw	r2,0(r2)
  80e27c:	10800717 	ldw	r2,28(r2)
  80e280:	10000926 	beq	r2,zero,80e2a8 <lseek+0x90>
  80e284:	e0bffe17 	ldw	r2,-8(fp)
  80e288:	10800017 	ldw	r2,0(r2)
  80e28c:	10800717 	ldw	r2,28(r2)
  80e290:	e1bffb17 	ldw	r6,-20(fp)
  80e294:	e17ffc17 	ldw	r5,-16(fp)
  80e298:	e13ffe17 	ldw	r4,-8(fp)
  80e29c:	103ee83a 	callr	r2
  80e2a0:	e0bfff15 	stw	r2,-4(fp)
  80e2a4:	00000506 	br	80e2bc <lseek+0xa4>
  80e2a8:	00bfde84 	movi	r2,-134
  80e2ac:	e0bfff15 	stw	r2,-4(fp)
  80e2b0:	00000206 	br	80e2bc <lseek+0xa4>
  80e2b4:	00bfebc4 	movi	r2,-81
  80e2b8:	e0bfff15 	stw	r2,-4(fp)
  80e2bc:	e0bfff17 	ldw	r2,-4(fp)
  80e2c0:	1000070e 	bge	r2,zero,80e2e0 <lseek+0xc8>
  80e2c4:	080e1dc0 	call	80e1dc <alt_get_errno>
  80e2c8:	1007883a 	mov	r3,r2
  80e2cc:	e0bfff17 	ldw	r2,-4(fp)
  80e2d0:	0085c83a 	sub	r2,zero,r2
  80e2d4:	18800015 	stw	r2,0(r3)
  80e2d8:	00bfffc4 	movi	r2,-1
  80e2dc:	e0bfff15 	stw	r2,-4(fp)
  80e2e0:	e0bfff17 	ldw	r2,-4(fp)
  80e2e4:	e037883a 	mov	sp,fp
  80e2e8:	dfc00117 	ldw	ra,4(sp)
  80e2ec:	df000017 	ldw	fp,0(sp)
  80e2f0:	dec00204 	addi	sp,sp,8
  80e2f4:	f800283a 	ret

0080e2f8 <alt_main>:
  80e2f8:	defffd04 	addi	sp,sp,-12
  80e2fc:	dfc00215 	stw	ra,8(sp)
  80e300:	df000115 	stw	fp,4(sp)
  80e304:	df000104 	addi	fp,sp,4
  80e308:	0009883a 	mov	r4,zero
  80e30c:	080e9480 	call	80e948 <alt_irq_init>
  80e310:	0001883a 	nop
  80e314:	080e9840 	call	80e984 <alt_sys_init>
  80e318:	01802074 	movhi	r6,129
  80e31c:	3182eb04 	addi	r6,r6,2988
  80e320:	01402074 	movhi	r5,129
  80e324:	2942eb04 	addi	r5,r5,2988
  80e328:	01002074 	movhi	r4,129
  80e32c:	2102eb04 	addi	r4,r4,2988
  80e330:	080fc280 	call	80fc28 <alt_io_redirect>
  80e334:	080f7c00 	call	80f7c0 <_do_ctors>
  80e338:	01002074 	movhi	r4,129
  80e33c:	213e0904 	addi	r4,r4,-2012
  80e340:	08102b80 	call	8102b8 <atexit>
  80e344:	d0a70917 	ldw	r2,-25564(gp)
  80e348:	d0e70a17 	ldw	r3,-25560(gp)
  80e34c:	d1270b17 	ldw	r4,-25556(gp)
  80e350:	200d883a 	mov	r6,r4
  80e354:	180b883a 	mov	r5,r3
  80e358:	1009883a 	mov	r4,r2
  80e35c:	08003640 	call	800364 <main>
  80e360:	e0bfff15 	stw	r2,-4(fp)
  80e364:	01000044 	movi	r4,1
  80e368:	080dc440 	call	80dc44 <close>
  80e36c:	e13fff17 	ldw	r4,-4(fp)
  80e370:	08102cc0 	call	8102cc <exit>

0080e374 <__malloc_lock>:
  80e374:	defffe04 	addi	sp,sp,-8
  80e378:	df000115 	stw	fp,4(sp)
  80e37c:	df000104 	addi	fp,sp,4
  80e380:	e13fff15 	stw	r4,-4(fp)
  80e384:	0001883a 	nop
  80e388:	e037883a 	mov	sp,fp
  80e38c:	df000017 	ldw	fp,0(sp)
  80e390:	dec00104 	addi	sp,sp,4
  80e394:	f800283a 	ret

0080e398 <__malloc_unlock>:
  80e398:	defffe04 	addi	sp,sp,-8
  80e39c:	df000115 	stw	fp,4(sp)
  80e3a0:	df000104 	addi	fp,sp,4
  80e3a4:	e13fff15 	stw	r4,-4(fp)
  80e3a8:	0001883a 	nop
  80e3ac:	e037883a 	mov	sp,fp
  80e3b0:	df000017 	ldw	fp,0(sp)
  80e3b4:	dec00104 	addi	sp,sp,4
  80e3b8:	f800283a 	ret

0080e3bc <alt_get_errno>:
  80e3bc:	defffe04 	addi	sp,sp,-8
  80e3c0:	dfc00115 	stw	ra,4(sp)
  80e3c4:	df000015 	stw	fp,0(sp)
  80e3c8:	d839883a 	mov	fp,sp
  80e3cc:	d0a00917 	ldw	r2,-32732(gp)
  80e3d0:	10000326 	beq	r2,zero,80e3e0 <alt_get_errno+0x24>
  80e3d4:	d0a00917 	ldw	r2,-32732(gp)
  80e3d8:	103ee83a 	callr	r2
  80e3dc:	00000106 	br	80e3e4 <alt_get_errno+0x28>
  80e3e0:	d0a70704 	addi	r2,gp,-25572
  80e3e4:	e037883a 	mov	sp,fp
  80e3e8:	dfc00117 	ldw	ra,4(sp)
  80e3ec:	df000017 	ldw	fp,0(sp)
  80e3f0:	dec00204 	addi	sp,sp,8
  80e3f4:	f800283a 	ret

0080e3f8 <read>:
  80e3f8:	defff904 	addi	sp,sp,-28
  80e3fc:	dfc00615 	stw	ra,24(sp)
  80e400:	df000515 	stw	fp,20(sp)
  80e404:	df000504 	addi	fp,sp,20
  80e408:	e13ffd15 	stw	r4,-12(fp)
  80e40c:	e17ffc15 	stw	r5,-16(fp)
  80e410:	e1bffb15 	stw	r6,-20(fp)
  80e414:	e0bffd17 	ldw	r2,-12(fp)
  80e418:	10000916 	blt	r2,zero,80e440 <read+0x48>
  80e41c:	e0fffd17 	ldw	r3,-12(fp)
  80e420:	1805883a 	mov	r2,r3
  80e424:	1085883a 	add	r2,r2,r2
  80e428:	10c5883a 	add	r2,r2,r3
  80e42c:	100490ba 	slli	r2,r2,2
  80e430:	00c02074 	movhi	r3,129
  80e434:	18c56304 	addi	r3,r3,5516
  80e438:	10c5883a 	add	r2,r2,r3
  80e43c:	00000106 	br	80e444 <read+0x4c>
  80e440:	0005883a 	mov	r2,zero
  80e444:	e0bfff15 	stw	r2,-4(fp)
  80e448:	e0bfff17 	ldw	r2,-4(fp)
  80e44c:	10002226 	beq	r2,zero,80e4d8 <read+0xe0>
  80e450:	e0bfff17 	ldw	r2,-4(fp)
  80e454:	10800217 	ldw	r2,8(r2)
  80e458:	108000cc 	andi	r2,r2,3
  80e45c:	10800060 	cmpeqi	r2,r2,1
  80e460:	1000181e 	bne	r2,zero,80e4c4 <read+0xcc>
  80e464:	e0bfff17 	ldw	r2,-4(fp)
  80e468:	10800017 	ldw	r2,0(r2)
  80e46c:	10800517 	ldw	r2,20(r2)
  80e470:	10001426 	beq	r2,zero,80e4c4 <read+0xcc>
  80e474:	e0bfff17 	ldw	r2,-4(fp)
  80e478:	10800017 	ldw	r2,0(r2)
  80e47c:	10800517 	ldw	r2,20(r2)
  80e480:	e0fffb17 	ldw	r3,-20(fp)
  80e484:	180d883a 	mov	r6,r3
  80e488:	e17ffc17 	ldw	r5,-16(fp)
  80e48c:	e13fff17 	ldw	r4,-4(fp)
  80e490:	103ee83a 	callr	r2
  80e494:	e0bffe15 	stw	r2,-8(fp)
  80e498:	e0bffe17 	ldw	r2,-8(fp)
  80e49c:	1000070e 	bge	r2,zero,80e4bc <read+0xc4>
  80e4a0:	080e3bc0 	call	80e3bc <alt_get_errno>
  80e4a4:	1007883a 	mov	r3,r2
  80e4a8:	e0bffe17 	ldw	r2,-8(fp)
  80e4ac:	0085c83a 	sub	r2,zero,r2
  80e4b0:	18800015 	stw	r2,0(r3)
  80e4b4:	00bfffc4 	movi	r2,-1
  80e4b8:	00000c06 	br	80e4ec <read+0xf4>
  80e4bc:	e0bffe17 	ldw	r2,-8(fp)
  80e4c0:	00000a06 	br	80e4ec <read+0xf4>
  80e4c4:	080e3bc0 	call	80e3bc <alt_get_errno>
  80e4c8:	1007883a 	mov	r3,r2
  80e4cc:	00800344 	movi	r2,13
  80e4d0:	18800015 	stw	r2,0(r3)
  80e4d4:	00000406 	br	80e4e8 <read+0xf0>
  80e4d8:	080e3bc0 	call	80e3bc <alt_get_errno>
  80e4dc:	1007883a 	mov	r3,r2
  80e4e0:	00801444 	movi	r2,81
  80e4e4:	18800015 	stw	r2,0(r3)
  80e4e8:	00bfffc4 	movi	r2,-1
  80e4ec:	e037883a 	mov	sp,fp
  80e4f0:	dfc00117 	ldw	ra,4(sp)
  80e4f4:	df000017 	ldw	fp,0(sp)
  80e4f8:	dec00204 	addi	sp,sp,8
  80e4fc:	f800283a 	ret

0080e500 <alt_release_fd>:
  80e500:	defffe04 	addi	sp,sp,-8
  80e504:	df000115 	stw	fp,4(sp)
  80e508:	df000104 	addi	fp,sp,4
  80e50c:	e13fff15 	stw	r4,-4(fp)
  80e510:	e0bfff17 	ldw	r2,-4(fp)
  80e514:	108000d0 	cmplti	r2,r2,3
  80e518:	1000101e 	bne	r2,zero,80e55c <alt_release_fd+0x5c>
  80e51c:	e0ffff17 	ldw	r3,-4(fp)
  80e520:	1805883a 	mov	r2,r3
  80e524:	1085883a 	add	r2,r2,r2
  80e528:	10c5883a 	add	r2,r2,r3
  80e52c:	100490ba 	slli	r2,r2,2
  80e530:	00c02074 	movhi	r3,129
  80e534:	10c7883a 	add	r3,r2,r3
  80e538:	18056515 	stw	zero,5524(r3)
  80e53c:	e0ffff17 	ldw	r3,-4(fp)
  80e540:	1805883a 	mov	r2,r3
  80e544:	1085883a 	add	r2,r2,r2
  80e548:	10c5883a 	add	r2,r2,r3
  80e54c:	100490ba 	slli	r2,r2,2
  80e550:	00c02074 	movhi	r3,129
  80e554:	10c7883a 	add	r3,r2,r3
  80e558:	18056315 	stw	zero,5516(r3)
  80e55c:	0001883a 	nop
  80e560:	e037883a 	mov	sp,fp
  80e564:	df000017 	ldw	fp,0(sp)
  80e568:	dec00104 	addi	sp,sp,4
  80e56c:	f800283a 	ret

0080e570 <sbrk>:
  80e570:	defff904 	addi	sp,sp,-28
  80e574:	df000615 	stw	fp,24(sp)
  80e578:	df000604 	addi	fp,sp,24
  80e57c:	e13ffa15 	stw	r4,-24(fp)
  80e580:	0005303a 	rdctl	r2,status
  80e584:	e0bffd15 	stw	r2,-12(fp)
  80e588:	e0fffd17 	ldw	r3,-12(fp)
  80e58c:	00bfff84 	movi	r2,-2
  80e590:	1884703a 	and	r2,r3,r2
  80e594:	1001703a 	wrctl	status,r2
  80e598:	e0bffd17 	ldw	r2,-12(fp)
  80e59c:	e0bfff15 	stw	r2,-4(fp)
  80e5a0:	d0a00a17 	ldw	r2,-32728(gp)
  80e5a4:	10c000c4 	addi	r3,r2,3
  80e5a8:	00bfff04 	movi	r2,-4
  80e5ac:	1884703a 	and	r2,r3,r2
  80e5b0:	d0a00a15 	stw	r2,-32728(gp)
  80e5b4:	d0e00a17 	ldw	r3,-32728(gp)
  80e5b8:	e0bffa17 	ldw	r2,-24(fp)
  80e5bc:	1887883a 	add	r3,r3,r2
  80e5c0:	00804034 	movhi	r2,256
  80e5c4:	10800004 	addi	r2,r2,0
  80e5c8:	10c0072e 	bgeu	r2,r3,80e5e8 <sbrk+0x78>
  80e5cc:	e0bfff17 	ldw	r2,-4(fp)
  80e5d0:	e0bffc15 	stw	r2,-16(fp)
  80e5d4:	e0bffc17 	ldw	r2,-16(fp)
  80e5d8:	1001703a 	wrctl	status,r2
  80e5dc:	0001883a 	nop
  80e5e0:	00bfffc4 	movi	r2,-1
  80e5e4:	00000c06 	br	80e618 <sbrk+0xa8>
  80e5e8:	d0a00a17 	ldw	r2,-32728(gp)
  80e5ec:	e0bffe15 	stw	r2,-8(fp)
  80e5f0:	d0e00a17 	ldw	r3,-32728(gp)
  80e5f4:	e0bffa17 	ldw	r2,-24(fp)
  80e5f8:	1885883a 	add	r2,r3,r2
  80e5fc:	d0a00a15 	stw	r2,-32728(gp)
  80e600:	e0bfff17 	ldw	r2,-4(fp)
  80e604:	e0bffb15 	stw	r2,-20(fp)
  80e608:	e0bffb17 	ldw	r2,-20(fp)
  80e60c:	1001703a 	wrctl	status,r2
  80e610:	0001883a 	nop
  80e614:	e0bffe17 	ldw	r2,-8(fp)
  80e618:	e037883a 	mov	sp,fp
  80e61c:	df000017 	ldw	fp,0(sp)
  80e620:	dec00104 	addi	sp,sp,4
  80e624:	f800283a 	ret

0080e628 <alt_alarm_stop>:
  80e628:	defffa04 	addi	sp,sp,-24
  80e62c:	df000515 	stw	fp,20(sp)
  80e630:	df000504 	addi	fp,sp,20
  80e634:	e13ffb15 	stw	r4,-20(fp)
  80e638:	0005303a 	rdctl	r2,status
  80e63c:	e0bffc15 	stw	r2,-16(fp)
  80e640:	e0fffc17 	ldw	r3,-16(fp)
  80e644:	00bfff84 	movi	r2,-2
  80e648:	1884703a 	and	r2,r3,r2
  80e64c:	1001703a 	wrctl	status,r2
  80e650:	e0bffc17 	ldw	r2,-16(fp)
  80e654:	e0bfff15 	stw	r2,-4(fp)
  80e658:	e0bffb17 	ldw	r2,-20(fp)
  80e65c:	e0bffd15 	stw	r2,-12(fp)
  80e660:	e0bffd17 	ldw	r2,-12(fp)
  80e664:	10800017 	ldw	r2,0(r2)
  80e668:	e0fffd17 	ldw	r3,-12(fp)
  80e66c:	18c00117 	ldw	r3,4(r3)
  80e670:	10c00115 	stw	r3,4(r2)
  80e674:	e0bffd17 	ldw	r2,-12(fp)
  80e678:	10800117 	ldw	r2,4(r2)
  80e67c:	e0fffd17 	ldw	r3,-12(fp)
  80e680:	18c00017 	ldw	r3,0(r3)
  80e684:	10c00015 	stw	r3,0(r2)
  80e688:	e0bffd17 	ldw	r2,-12(fp)
  80e68c:	e0fffd17 	ldw	r3,-12(fp)
  80e690:	10c00115 	stw	r3,4(r2)
  80e694:	e0bffd17 	ldw	r2,-12(fp)
  80e698:	e0fffd17 	ldw	r3,-12(fp)
  80e69c:	10c00015 	stw	r3,0(r2)
  80e6a0:	0001883a 	nop
  80e6a4:	e0bfff17 	ldw	r2,-4(fp)
  80e6a8:	e0bffe15 	stw	r2,-8(fp)
  80e6ac:	e0bffe17 	ldw	r2,-8(fp)
  80e6b0:	1001703a 	wrctl	status,r2
  80e6b4:	0001883a 	nop
  80e6b8:	0001883a 	nop
  80e6bc:	e037883a 	mov	sp,fp
  80e6c0:	df000017 	ldw	fp,0(sp)
  80e6c4:	dec00104 	addi	sp,sp,4
  80e6c8:	f800283a 	ret

0080e6cc <alt_tick>:
  80e6cc:	defffb04 	addi	sp,sp,-20
  80e6d0:	dfc00415 	stw	ra,16(sp)
  80e6d4:	df000315 	stw	fp,12(sp)
  80e6d8:	df000304 	addi	fp,sp,12
  80e6dc:	d0a00b17 	ldw	r2,-32724(gp)
  80e6e0:	e0bfff15 	stw	r2,-4(fp)
  80e6e4:	d0a70d17 	ldw	r2,-25548(gp)
  80e6e8:	10800044 	addi	r2,r2,1
  80e6ec:	d0a70d15 	stw	r2,-25548(gp)
  80e6f0:	00002e06 	br	80e7ac <alt_tick+0xe0>
  80e6f4:	e0bfff17 	ldw	r2,-4(fp)
  80e6f8:	10800017 	ldw	r2,0(r2)
  80e6fc:	e0bffe15 	stw	r2,-8(fp)
  80e700:	e0bfff17 	ldw	r2,-4(fp)
  80e704:	10800403 	ldbu	r2,16(r2)
  80e708:	10803fcc 	andi	r2,r2,255
  80e70c:	10000426 	beq	r2,zero,80e720 <alt_tick+0x54>
  80e710:	d0a70d17 	ldw	r2,-25548(gp)
  80e714:	1000021e 	bne	r2,zero,80e720 <alt_tick+0x54>
  80e718:	e0bfff17 	ldw	r2,-4(fp)
  80e71c:	10000405 	stb	zero,16(r2)
  80e720:	e0bfff17 	ldw	r2,-4(fp)
  80e724:	10800217 	ldw	r2,8(r2)
  80e728:	d0e70d17 	ldw	r3,-25548(gp)
  80e72c:	18801d36 	bltu	r3,r2,80e7a4 <alt_tick+0xd8>
  80e730:	e0bfff17 	ldw	r2,-4(fp)
  80e734:	10800403 	ldbu	r2,16(r2)
  80e738:	10803fcc 	andi	r2,r2,255
  80e73c:	1000191e 	bne	r2,zero,80e7a4 <alt_tick+0xd8>
  80e740:	e0bfff17 	ldw	r2,-4(fp)
  80e744:	10800317 	ldw	r2,12(r2)
  80e748:	e0ffff17 	ldw	r3,-4(fp)
  80e74c:	18c00517 	ldw	r3,20(r3)
  80e750:	1809883a 	mov	r4,r3
  80e754:	103ee83a 	callr	r2
  80e758:	e0bffd15 	stw	r2,-12(fp)
  80e75c:	e0bffd17 	ldw	r2,-12(fp)
  80e760:	1000031e 	bne	r2,zero,80e770 <alt_tick+0xa4>
  80e764:	e13fff17 	ldw	r4,-4(fp)
  80e768:	080e6280 	call	80e628 <alt_alarm_stop>
  80e76c:	00000d06 	br	80e7a4 <alt_tick+0xd8>
  80e770:	e0bfff17 	ldw	r2,-4(fp)
  80e774:	10c00217 	ldw	r3,8(r2)
  80e778:	e0bffd17 	ldw	r2,-12(fp)
  80e77c:	1887883a 	add	r3,r3,r2
  80e780:	e0bfff17 	ldw	r2,-4(fp)
  80e784:	10c00215 	stw	r3,8(r2)
  80e788:	e0bfff17 	ldw	r2,-4(fp)
  80e78c:	10c00217 	ldw	r3,8(r2)
  80e790:	d0a70d17 	ldw	r2,-25548(gp)
  80e794:	1880032e 	bgeu	r3,r2,80e7a4 <alt_tick+0xd8>
  80e798:	e0bfff17 	ldw	r2,-4(fp)
  80e79c:	00c00044 	movi	r3,1
  80e7a0:	10c00405 	stb	r3,16(r2)
  80e7a4:	e0bffe17 	ldw	r2,-8(fp)
  80e7a8:	e0bfff15 	stw	r2,-4(fp)
  80e7ac:	e0ffff17 	ldw	r3,-4(fp)
  80e7b0:	d0a00b04 	addi	r2,gp,-32724
  80e7b4:	18bfcf1e 	bne	r3,r2,80e6f4 <alt_tick+0x28>
  80e7b8:	0001883a 	nop
  80e7bc:	0001883a 	nop
  80e7c0:	e037883a 	mov	sp,fp
  80e7c4:	dfc00117 	ldw	ra,4(sp)
  80e7c8:	df000017 	ldw	fp,0(sp)
  80e7cc:	dec00204 	addi	sp,sp,8
  80e7d0:	f800283a 	ret

0080e7d4 <alt_get_errno>:
  80e7d4:	defffe04 	addi	sp,sp,-8
  80e7d8:	dfc00115 	stw	ra,4(sp)
  80e7dc:	df000015 	stw	fp,0(sp)
  80e7e0:	d839883a 	mov	fp,sp
  80e7e4:	d0a00917 	ldw	r2,-32732(gp)
  80e7e8:	10000326 	beq	r2,zero,80e7f8 <alt_get_errno+0x24>
  80e7ec:	d0a00917 	ldw	r2,-32732(gp)
  80e7f0:	103ee83a 	callr	r2
  80e7f4:	00000106 	br	80e7fc <alt_get_errno+0x28>
  80e7f8:	d0a70704 	addi	r2,gp,-25572
  80e7fc:	e037883a 	mov	sp,fp
  80e800:	dfc00117 	ldw	ra,4(sp)
  80e804:	df000017 	ldw	fp,0(sp)
  80e808:	dec00204 	addi	sp,sp,8
  80e80c:	f800283a 	ret

0080e810 <write>:
  80e810:	defff904 	addi	sp,sp,-28
  80e814:	dfc00615 	stw	ra,24(sp)
  80e818:	df000515 	stw	fp,20(sp)
  80e81c:	df000504 	addi	fp,sp,20
  80e820:	e13ffd15 	stw	r4,-12(fp)
  80e824:	e17ffc15 	stw	r5,-16(fp)
  80e828:	e1bffb15 	stw	r6,-20(fp)
  80e82c:	e0bffd17 	ldw	r2,-12(fp)
  80e830:	10000916 	blt	r2,zero,80e858 <write+0x48>
  80e834:	e0fffd17 	ldw	r3,-12(fp)
  80e838:	1805883a 	mov	r2,r3
  80e83c:	1085883a 	add	r2,r2,r2
  80e840:	10c5883a 	add	r2,r2,r3
  80e844:	100490ba 	slli	r2,r2,2
  80e848:	00c02074 	movhi	r3,129
  80e84c:	18c56304 	addi	r3,r3,5516
  80e850:	10c5883a 	add	r2,r2,r3
  80e854:	00000106 	br	80e85c <write+0x4c>
  80e858:	0005883a 	mov	r2,zero
  80e85c:	e0bfff15 	stw	r2,-4(fp)
  80e860:	e0bfff17 	ldw	r2,-4(fp)
  80e864:	10002126 	beq	r2,zero,80e8ec <write+0xdc>
  80e868:	e0bfff17 	ldw	r2,-4(fp)
  80e86c:	10800217 	ldw	r2,8(r2)
  80e870:	108000cc 	andi	r2,r2,3
  80e874:	10001826 	beq	r2,zero,80e8d8 <write+0xc8>
  80e878:	e0bfff17 	ldw	r2,-4(fp)
  80e87c:	10800017 	ldw	r2,0(r2)
  80e880:	10800617 	ldw	r2,24(r2)
  80e884:	10001426 	beq	r2,zero,80e8d8 <write+0xc8>
  80e888:	e0bfff17 	ldw	r2,-4(fp)
  80e88c:	10800017 	ldw	r2,0(r2)
  80e890:	10800617 	ldw	r2,24(r2)
  80e894:	e0fffb17 	ldw	r3,-20(fp)
  80e898:	180d883a 	mov	r6,r3
  80e89c:	e17ffc17 	ldw	r5,-16(fp)
  80e8a0:	e13fff17 	ldw	r4,-4(fp)
  80e8a4:	103ee83a 	callr	r2
  80e8a8:	e0bffe15 	stw	r2,-8(fp)
  80e8ac:	e0bffe17 	ldw	r2,-8(fp)
  80e8b0:	1000070e 	bge	r2,zero,80e8d0 <write+0xc0>
  80e8b4:	080e7d40 	call	80e7d4 <alt_get_errno>
  80e8b8:	1007883a 	mov	r3,r2
  80e8bc:	e0bffe17 	ldw	r2,-8(fp)
  80e8c0:	0085c83a 	sub	r2,zero,r2
  80e8c4:	18800015 	stw	r2,0(r3)
  80e8c8:	00bfffc4 	movi	r2,-1
  80e8cc:	00000c06 	br	80e900 <write+0xf0>
  80e8d0:	e0bffe17 	ldw	r2,-8(fp)
  80e8d4:	00000a06 	br	80e900 <write+0xf0>
  80e8d8:	080e7d40 	call	80e7d4 <alt_get_errno>
  80e8dc:	1007883a 	mov	r3,r2
  80e8e0:	00800344 	movi	r2,13
  80e8e4:	18800015 	stw	r2,0(r3)
  80e8e8:	00000406 	br	80e8fc <write+0xec>
  80e8ec:	080e7d40 	call	80e7d4 <alt_get_errno>
  80e8f0:	1007883a 	mov	r3,r2
  80e8f4:	00801444 	movi	r2,81
  80e8f8:	18800015 	stw	r2,0(r3)
  80e8fc:	00bfffc4 	movi	r2,-1
  80e900:	e037883a 	mov	sp,fp
  80e904:	dfc00117 	ldw	ra,4(sp)
  80e908:	df000017 	ldw	fp,0(sp)
  80e90c:	dec00204 	addi	sp,sp,8
  80e910:	f800283a 	ret

0080e914 <alt_dev_reg>:
  80e914:	defffd04 	addi	sp,sp,-12
  80e918:	dfc00215 	stw	ra,8(sp)
  80e91c:	df000115 	stw	fp,4(sp)
  80e920:	df000104 	addi	fp,sp,4
  80e924:	e13fff15 	stw	r4,-4(fp)
  80e928:	d1600604 	addi	r5,gp,-32744
  80e92c:	e13fff17 	ldw	r4,-4(fp)
  80e930:	080f7180 	call	80f718 <alt_dev_llist_insert>
  80e934:	e037883a 	mov	sp,fp
  80e938:	dfc00117 	ldw	ra,4(sp)
  80e93c:	df000017 	ldw	fp,0(sp)
  80e940:	dec00204 	addi	sp,sp,8
  80e944:	f800283a 	ret

0080e948 <alt_irq_init>:
  80e948:	defffd04 	addi	sp,sp,-12
  80e94c:	dfc00215 	stw	ra,8(sp)
  80e950:	df000115 	stw	fp,4(sp)
  80e954:	df000104 	addi	fp,sp,4
  80e958:	e13fff15 	stw	r4,-4(fp)
  80e95c:	080ff1c0 	call	80ff1c <altera_nios2_gen2_irq_init>
  80e960:	00800044 	movi	r2,1
  80e964:	1001703a 	wrctl	status,r2
  80e968:	0001883a 	nop
  80e96c:	0001883a 	nop
  80e970:	e037883a 	mov	sp,fp
  80e974:	dfc00117 	ldw	ra,4(sp)
  80e978:	df000017 	ldw	fp,0(sp)
  80e97c:	dec00204 	addi	sp,sp,8
  80e980:	f800283a 	ret

0080e984 <alt_sys_init>:
  80e984:	defffe04 	addi	sp,sp,-8
  80e988:	dfc00115 	stw	ra,4(sp)
  80e98c:	df000015 	stw	fp,0(sp)
  80e990:	d839883a 	mov	fp,sp
  80e994:	01c0fa04 	movi	r7,1000
  80e998:	01800044 	movi	r6,1
  80e99c:	000b883a 	mov	r5,zero
  80e9a0:	01004034 	movhi	r4,256
  80e9a4:	21040004 	addi	r4,r4,4096
  80e9a8:	080f4d80 	call	80f4d8 <alt_avalon_timer_sc_init>
  80e9ac:	01800404 	movi	r6,16
  80e9b0:	000b883a 	mov	r5,zero
  80e9b4:	01002074 	movhi	r4,129
  80e9b8:	2105cd04 	addi	r4,r4,5940
  80e9bc:	080eb4c0 	call	80eb4c <altera_avalon_jtag_uart_init>
  80e9c0:	01002074 	movhi	r4,129
  80e9c4:	2105c304 	addi	r4,r4,5900
  80e9c8:	080e9140 	call	80e914 <alt_dev_reg>
  80e9cc:	0001883a 	nop
  80e9d0:	0001883a 	nop
  80e9d4:	e037883a 	mov	sp,fp
  80e9d8:	dfc00117 	ldw	ra,4(sp)
  80e9dc:	df000017 	ldw	fp,0(sp)
  80e9e0:	dec00204 	addi	sp,sp,8
  80e9e4:	f800283a 	ret

0080e9e8 <altera_avalon_jtag_uart_read_fd>:
  80e9e8:	defffa04 	addi	sp,sp,-24
  80e9ec:	dfc00515 	stw	ra,20(sp)
  80e9f0:	df000415 	stw	fp,16(sp)
  80e9f4:	df000404 	addi	fp,sp,16
  80e9f8:	e13ffe15 	stw	r4,-8(fp)
  80e9fc:	e17ffd15 	stw	r5,-12(fp)
  80ea00:	e1bffc15 	stw	r6,-16(fp)
  80ea04:	e0bffe17 	ldw	r2,-8(fp)
  80ea08:	10800017 	ldw	r2,0(r2)
  80ea0c:	e0bfff15 	stw	r2,-4(fp)
  80ea10:	e0bfff17 	ldw	r2,-4(fp)
  80ea14:	10c00a04 	addi	r3,r2,40
  80ea18:	e0bffe17 	ldw	r2,-8(fp)
  80ea1c:	10800217 	ldw	r2,8(r2)
  80ea20:	100f883a 	mov	r7,r2
  80ea24:	e1bffc17 	ldw	r6,-16(fp)
  80ea28:	e17ffd17 	ldw	r5,-12(fp)
  80ea2c:	1809883a 	mov	r4,r3
  80ea30:	080f0140 	call	80f014 <altera_avalon_jtag_uart_read>
  80ea34:	e037883a 	mov	sp,fp
  80ea38:	dfc00117 	ldw	ra,4(sp)
  80ea3c:	df000017 	ldw	fp,0(sp)
  80ea40:	dec00204 	addi	sp,sp,8
  80ea44:	f800283a 	ret

0080ea48 <altera_avalon_jtag_uart_write_fd>:
  80ea48:	defffa04 	addi	sp,sp,-24
  80ea4c:	dfc00515 	stw	ra,20(sp)
  80ea50:	df000415 	stw	fp,16(sp)
  80ea54:	df000404 	addi	fp,sp,16
  80ea58:	e13ffe15 	stw	r4,-8(fp)
  80ea5c:	e17ffd15 	stw	r5,-12(fp)
  80ea60:	e1bffc15 	stw	r6,-16(fp)
  80ea64:	e0bffe17 	ldw	r2,-8(fp)
  80ea68:	10800017 	ldw	r2,0(r2)
  80ea6c:	e0bfff15 	stw	r2,-4(fp)
  80ea70:	e0bfff17 	ldw	r2,-4(fp)
  80ea74:	10c00a04 	addi	r3,r2,40
  80ea78:	e0bffe17 	ldw	r2,-8(fp)
  80ea7c:	10800217 	ldw	r2,8(r2)
  80ea80:	100f883a 	mov	r7,r2
  80ea84:	e1bffc17 	ldw	r6,-16(fp)
  80ea88:	e17ffd17 	ldw	r5,-12(fp)
  80ea8c:	1809883a 	mov	r4,r3
  80ea90:	080f2340 	call	80f234 <altera_avalon_jtag_uart_write>
  80ea94:	e037883a 	mov	sp,fp
  80ea98:	dfc00117 	ldw	ra,4(sp)
  80ea9c:	df000017 	ldw	fp,0(sp)
  80eaa0:	dec00204 	addi	sp,sp,8
  80eaa4:	f800283a 	ret

0080eaa8 <altera_avalon_jtag_uart_close_fd>:
  80eaa8:	defffc04 	addi	sp,sp,-16
  80eaac:	dfc00315 	stw	ra,12(sp)
  80eab0:	df000215 	stw	fp,8(sp)
  80eab4:	df000204 	addi	fp,sp,8
  80eab8:	e13ffe15 	stw	r4,-8(fp)
  80eabc:	e0bffe17 	ldw	r2,-8(fp)
  80eac0:	10800017 	ldw	r2,0(r2)
  80eac4:	e0bfff15 	stw	r2,-4(fp)
  80eac8:	e0bfff17 	ldw	r2,-4(fp)
  80eacc:	10c00a04 	addi	r3,r2,40
  80ead0:	e0bffe17 	ldw	r2,-8(fp)
  80ead4:	10800217 	ldw	r2,8(r2)
  80ead8:	100b883a 	mov	r5,r2
  80eadc:	1809883a 	mov	r4,r3
  80eae0:	080eeb80 	call	80eeb8 <altera_avalon_jtag_uart_close>
  80eae4:	e037883a 	mov	sp,fp
  80eae8:	dfc00117 	ldw	ra,4(sp)
  80eaec:	df000017 	ldw	fp,0(sp)
  80eaf0:	dec00204 	addi	sp,sp,8
  80eaf4:	f800283a 	ret

0080eaf8 <altera_avalon_jtag_uart_ioctl_fd>:
  80eaf8:	defffa04 	addi	sp,sp,-24
  80eafc:	dfc00515 	stw	ra,20(sp)
  80eb00:	df000415 	stw	fp,16(sp)
  80eb04:	df000404 	addi	fp,sp,16
  80eb08:	e13ffe15 	stw	r4,-8(fp)
  80eb0c:	e17ffd15 	stw	r5,-12(fp)
  80eb10:	e1bffc15 	stw	r6,-16(fp)
  80eb14:	e0bffe17 	ldw	r2,-8(fp)
  80eb18:	10800017 	ldw	r2,0(r2)
  80eb1c:	e0bfff15 	stw	r2,-4(fp)
  80eb20:	e0bfff17 	ldw	r2,-4(fp)
  80eb24:	10800a04 	addi	r2,r2,40
  80eb28:	e1bffc17 	ldw	r6,-16(fp)
  80eb2c:	e17ffd17 	ldw	r5,-12(fp)
  80eb30:	1009883a 	mov	r4,r2
  80eb34:	080ef200 	call	80ef20 <altera_avalon_jtag_uart_ioctl>
  80eb38:	e037883a 	mov	sp,fp
  80eb3c:	dfc00117 	ldw	ra,4(sp)
  80eb40:	df000017 	ldw	fp,0(sp)
  80eb44:	dec00204 	addi	sp,sp,8
  80eb48:	f800283a 	ret

0080eb4c <altera_avalon_jtag_uart_init>:
  80eb4c:	defffa04 	addi	sp,sp,-24
  80eb50:	dfc00515 	stw	ra,20(sp)
  80eb54:	df000415 	stw	fp,16(sp)
  80eb58:	df000404 	addi	fp,sp,16
  80eb5c:	e13fff15 	stw	r4,-4(fp)
  80eb60:	e17ffe15 	stw	r5,-8(fp)
  80eb64:	e1bffd15 	stw	r6,-12(fp)
  80eb68:	e0bfff17 	ldw	r2,-4(fp)
  80eb6c:	00c00044 	movi	r3,1
  80eb70:	10c00815 	stw	r3,32(r2)
  80eb74:	e0bfff17 	ldw	r2,-4(fp)
  80eb78:	10800017 	ldw	r2,0(r2)
  80eb7c:	10800104 	addi	r2,r2,4
  80eb80:	1007883a 	mov	r3,r2
  80eb84:	e0bfff17 	ldw	r2,-4(fp)
  80eb88:	10800817 	ldw	r2,32(r2)
  80eb8c:	18800035 	stwio	r2,0(r3)
  80eb90:	e0bffe17 	ldw	r2,-8(fp)
  80eb94:	e0fffd17 	ldw	r3,-12(fp)
  80eb98:	d8000015 	stw	zero,0(sp)
  80eb9c:	e1ffff17 	ldw	r7,-4(fp)
  80eba0:	01802074 	movhi	r6,129
  80eba4:	31bb0304 	addi	r6,r6,-5108
  80eba8:	180b883a 	mov	r5,r3
  80ebac:	1009883a 	mov	r4,r2
  80ebb0:	080f8bc0 	call	80f8bc <alt_ic_isr_register>
  80ebb4:	e0bfff17 	ldw	r2,-4(fp)
  80ebb8:	10000915 	stw	zero,36(r2)
  80ebbc:	e0bfff17 	ldw	r2,-4(fp)
  80ebc0:	10800204 	addi	r2,r2,8
  80ebc4:	d0e70c17 	ldw	r3,-25552(gp)
  80ebc8:	e1ffff17 	ldw	r7,-4(fp)
  80ebcc:	01802074 	movhi	r6,129
  80ebd0:	31bb8604 	addi	r6,r6,-4584
  80ebd4:	180b883a 	mov	r5,r3
  80ebd8:	1009883a 	mov	r4,r2
  80ebdc:	080f55c0 	call	80f55c <alt_alarm_start>
  80ebe0:	1000040e 	bge	r2,zero,80ebf4 <altera_avalon_jtag_uart_init+0xa8>
  80ebe4:	e0ffff17 	ldw	r3,-4(fp)
  80ebe8:	00a00034 	movhi	r2,32768
  80ebec:	10bfffc4 	addi	r2,r2,-1
  80ebf0:	18800115 	stw	r2,4(r3)
  80ebf4:	0001883a 	nop
  80ebf8:	e037883a 	mov	sp,fp
  80ebfc:	dfc00117 	ldw	ra,4(sp)
  80ec00:	df000017 	ldw	fp,0(sp)
  80ec04:	dec00204 	addi	sp,sp,8
  80ec08:	f800283a 	ret

0080ec0c <altera_avalon_jtag_uart_irq>:
  80ec0c:	defff804 	addi	sp,sp,-32
  80ec10:	df000715 	stw	fp,28(sp)
  80ec14:	df000704 	addi	fp,sp,28
  80ec18:	e13ff915 	stw	r4,-28(fp)
  80ec1c:	e0bff917 	ldw	r2,-28(fp)
  80ec20:	e0bffd15 	stw	r2,-12(fp)
  80ec24:	e0bffd17 	ldw	r2,-12(fp)
  80ec28:	10800017 	ldw	r2,0(r2)
  80ec2c:	e0bffc15 	stw	r2,-16(fp)
  80ec30:	e0bffc17 	ldw	r2,-16(fp)
  80ec34:	10800104 	addi	r2,r2,4
  80ec38:	10800037 	ldwio	r2,0(r2)
  80ec3c:	e0bffb15 	stw	r2,-20(fp)
  80ec40:	e0bffb17 	ldw	r2,-20(fp)
  80ec44:	1080c00c 	andi	r2,r2,768
  80ec48:	10006d26 	beq	r2,zero,80ee00 <altera_avalon_jtag_uart_irq+0x1f4>
  80ec4c:	e0bffb17 	ldw	r2,-20(fp)
  80ec50:	1080400c 	andi	r2,r2,256
  80ec54:	10003526 	beq	r2,zero,80ed2c <altera_avalon_jtag_uart_irq+0x120>
  80ec58:	00800074 	movhi	r2,1
  80ec5c:	e0bfff15 	stw	r2,-4(fp)
  80ec60:	e0bffd17 	ldw	r2,-12(fp)
  80ec64:	10800a17 	ldw	r2,40(r2)
  80ec68:	10800044 	addi	r2,r2,1
  80ec6c:	1081ffcc 	andi	r2,r2,2047
  80ec70:	e0bffa15 	stw	r2,-24(fp)
  80ec74:	e0bffd17 	ldw	r2,-12(fp)
  80ec78:	10800b17 	ldw	r2,44(r2)
  80ec7c:	e0fffa17 	ldw	r3,-24(fp)
  80ec80:	18801526 	beq	r3,r2,80ecd8 <altera_avalon_jtag_uart_irq+0xcc>
  80ec84:	e0bffc17 	ldw	r2,-16(fp)
  80ec88:	10800037 	ldwio	r2,0(r2)
  80ec8c:	e0bfff15 	stw	r2,-4(fp)
  80ec90:	e0bfff17 	ldw	r2,-4(fp)
  80ec94:	10a0000c 	andi	r2,r2,32768
  80ec98:	10001126 	beq	r2,zero,80ece0 <altera_avalon_jtag_uart_irq+0xd4>
  80ec9c:	e0bffd17 	ldw	r2,-12(fp)
  80eca0:	10800a17 	ldw	r2,40(r2)
  80eca4:	e0ffff17 	ldw	r3,-4(fp)
  80eca8:	1809883a 	mov	r4,r3
  80ecac:	e0fffd17 	ldw	r3,-12(fp)
  80ecb0:	1885883a 	add	r2,r3,r2
  80ecb4:	11000e05 	stb	r4,56(r2)
  80ecb8:	e0bffd17 	ldw	r2,-12(fp)
  80ecbc:	10800a17 	ldw	r2,40(r2)
  80ecc0:	10800044 	addi	r2,r2,1
  80ecc4:	10c1ffcc 	andi	r3,r2,2047
  80ecc8:	e0bffd17 	ldw	r2,-12(fp)
  80eccc:	10c00a15 	stw	r3,40(r2)
  80ecd0:	0001883a 	nop
  80ecd4:	003fe206 	br	80ec60 <altera_avalon_jtag_uart_irq+0x54>
  80ecd8:	0001883a 	nop
  80ecdc:	00000106 	br	80ece4 <altera_avalon_jtag_uart_irq+0xd8>
  80ece0:	0001883a 	nop
  80ece4:	e0bfff17 	ldw	r2,-4(fp)
  80ece8:	10bfffec 	andhi	r2,r2,65535
  80ecec:	10000f26 	beq	r2,zero,80ed2c <altera_avalon_jtag_uart_irq+0x120>
  80ecf0:	e0bffd17 	ldw	r2,-12(fp)
  80ecf4:	10c00817 	ldw	r3,32(r2)
  80ecf8:	00bfff84 	movi	r2,-2
  80ecfc:	1886703a 	and	r3,r3,r2
  80ed00:	e0bffd17 	ldw	r2,-12(fp)
  80ed04:	10c00815 	stw	r3,32(r2)
  80ed08:	e0bffc17 	ldw	r2,-16(fp)
  80ed0c:	10800104 	addi	r2,r2,4
  80ed10:	1007883a 	mov	r3,r2
  80ed14:	e0bffd17 	ldw	r2,-12(fp)
  80ed18:	10800817 	ldw	r2,32(r2)
  80ed1c:	18800035 	stwio	r2,0(r3)
  80ed20:	e0bffc17 	ldw	r2,-16(fp)
  80ed24:	10800104 	addi	r2,r2,4
  80ed28:	10800037 	ldwio	r2,0(r2)
  80ed2c:	e0bffb17 	ldw	r2,-20(fp)
  80ed30:	1080800c 	andi	r2,r2,512
  80ed34:	103fbe26 	beq	r2,zero,80ec30 <altera_avalon_jtag_uart_irq+0x24>
  80ed38:	e0bffb17 	ldw	r2,-20(fp)
  80ed3c:	1004d43a 	srli	r2,r2,16
  80ed40:	e0bffe15 	stw	r2,-8(fp)
  80ed44:	00001406 	br	80ed98 <altera_avalon_jtag_uart_irq+0x18c>
  80ed48:	e0bffc17 	ldw	r2,-16(fp)
  80ed4c:	e0fffd17 	ldw	r3,-12(fp)
  80ed50:	18c00d17 	ldw	r3,52(r3)
  80ed54:	e13ffd17 	ldw	r4,-12(fp)
  80ed58:	20c7883a 	add	r3,r4,r3
  80ed5c:	18c20e03 	ldbu	r3,2104(r3)
  80ed60:	18c03fcc 	andi	r3,r3,255
  80ed64:	18c0201c 	xori	r3,r3,128
  80ed68:	18ffe004 	addi	r3,r3,-128
  80ed6c:	10c00035 	stwio	r3,0(r2)
  80ed70:	e0bffd17 	ldw	r2,-12(fp)
  80ed74:	10800d17 	ldw	r2,52(r2)
  80ed78:	10800044 	addi	r2,r2,1
  80ed7c:	10c1ffcc 	andi	r3,r2,2047
  80ed80:	e0bffd17 	ldw	r2,-12(fp)
  80ed84:	10c00d15 	stw	r3,52(r2)
  80ed88:	0001883a 	nop
  80ed8c:	e0bffe17 	ldw	r2,-8(fp)
  80ed90:	10bfffc4 	addi	r2,r2,-1
  80ed94:	e0bffe15 	stw	r2,-8(fp)
  80ed98:	e0bffe17 	ldw	r2,-8(fp)
  80ed9c:	10000526 	beq	r2,zero,80edb4 <altera_avalon_jtag_uart_irq+0x1a8>
  80eda0:	e0bffd17 	ldw	r2,-12(fp)
  80eda4:	10c00d17 	ldw	r3,52(r2)
  80eda8:	e0bffd17 	ldw	r2,-12(fp)
  80edac:	10800c17 	ldw	r2,48(r2)
  80edb0:	18bfe51e 	bne	r3,r2,80ed48 <altera_avalon_jtag_uart_irq+0x13c>
  80edb4:	e0bffe17 	ldw	r2,-8(fp)
  80edb8:	103f9d26 	beq	r2,zero,80ec30 <altera_avalon_jtag_uart_irq+0x24>
  80edbc:	e0bffd17 	ldw	r2,-12(fp)
  80edc0:	10c00817 	ldw	r3,32(r2)
  80edc4:	00bfff44 	movi	r2,-3
  80edc8:	1886703a 	and	r3,r3,r2
  80edcc:	e0bffd17 	ldw	r2,-12(fp)
  80edd0:	10c00815 	stw	r3,32(r2)
  80edd4:	e0bffd17 	ldw	r2,-12(fp)
  80edd8:	10800017 	ldw	r2,0(r2)
  80eddc:	10800104 	addi	r2,r2,4
  80ede0:	1007883a 	mov	r3,r2
  80ede4:	e0bffd17 	ldw	r2,-12(fp)
  80ede8:	10800817 	ldw	r2,32(r2)
  80edec:	18800035 	stwio	r2,0(r3)
  80edf0:	e0bffc17 	ldw	r2,-16(fp)
  80edf4:	10800104 	addi	r2,r2,4
  80edf8:	10800037 	ldwio	r2,0(r2)
  80edfc:	003f8c06 	br	80ec30 <altera_avalon_jtag_uart_irq+0x24>
  80ee00:	0001883a 	nop
  80ee04:	0001883a 	nop
  80ee08:	e037883a 	mov	sp,fp
  80ee0c:	df000017 	ldw	fp,0(sp)
  80ee10:	dec00104 	addi	sp,sp,4
  80ee14:	f800283a 	ret

0080ee18 <altera_avalon_jtag_uart_timeout>:
  80ee18:	defffc04 	addi	sp,sp,-16
  80ee1c:	df000315 	stw	fp,12(sp)
  80ee20:	df000304 	addi	fp,sp,12
  80ee24:	e13ffd15 	stw	r4,-12(fp)
  80ee28:	e0bffd17 	ldw	r2,-12(fp)
  80ee2c:	e0bfff15 	stw	r2,-4(fp)
  80ee30:	e0bfff17 	ldw	r2,-4(fp)
  80ee34:	10800017 	ldw	r2,0(r2)
  80ee38:	10800104 	addi	r2,r2,4
  80ee3c:	10800037 	ldwio	r2,0(r2)
  80ee40:	e0bffe15 	stw	r2,-8(fp)
  80ee44:	e0bffe17 	ldw	r2,-8(fp)
  80ee48:	1081000c 	andi	r2,r2,1024
  80ee4c:	10000b26 	beq	r2,zero,80ee7c <altera_avalon_jtag_uart_timeout+0x64>
  80ee50:	e0bfff17 	ldw	r2,-4(fp)
  80ee54:	10800017 	ldw	r2,0(r2)
  80ee58:	10800104 	addi	r2,r2,4
  80ee5c:	1007883a 	mov	r3,r2
  80ee60:	e0bfff17 	ldw	r2,-4(fp)
  80ee64:	10800817 	ldw	r2,32(r2)
  80ee68:	10810014 	ori	r2,r2,1024
  80ee6c:	18800035 	stwio	r2,0(r3)
  80ee70:	e0bfff17 	ldw	r2,-4(fp)
  80ee74:	10000915 	stw	zero,36(r2)
  80ee78:	00000a06 	br	80eea4 <altera_avalon_jtag_uart_timeout+0x8c>
  80ee7c:	e0bfff17 	ldw	r2,-4(fp)
  80ee80:	10c00917 	ldw	r3,36(r2)
  80ee84:	00a00034 	movhi	r2,32768
  80ee88:	10bfff04 	addi	r2,r2,-4
  80ee8c:	10c00536 	bltu	r2,r3,80eea4 <altera_avalon_jtag_uart_timeout+0x8c>
  80ee90:	e0bfff17 	ldw	r2,-4(fp)
  80ee94:	10800917 	ldw	r2,36(r2)
  80ee98:	10c00044 	addi	r3,r2,1
  80ee9c:	e0bfff17 	ldw	r2,-4(fp)
  80eea0:	10c00915 	stw	r3,36(r2)
  80eea4:	d0a70c17 	ldw	r2,-25552(gp)
  80eea8:	e037883a 	mov	sp,fp
  80eeac:	df000017 	ldw	fp,0(sp)
  80eeb0:	dec00104 	addi	sp,sp,4
  80eeb4:	f800283a 	ret

0080eeb8 <altera_avalon_jtag_uart_close>:
  80eeb8:	defffd04 	addi	sp,sp,-12
  80eebc:	df000215 	stw	fp,8(sp)
  80eec0:	df000204 	addi	fp,sp,8
  80eec4:	e13fff15 	stw	r4,-4(fp)
  80eec8:	e17ffe15 	stw	r5,-8(fp)
  80eecc:	00000506 	br	80eee4 <altera_avalon_jtag_uart_close+0x2c>
  80eed0:	e0bffe17 	ldw	r2,-8(fp)
  80eed4:	1090000c 	andi	r2,r2,16384
  80eed8:	10000226 	beq	r2,zero,80eee4 <altera_avalon_jtag_uart_close+0x2c>
  80eedc:	00bffd44 	movi	r2,-11
  80eee0:	00000b06 	br	80ef10 <altera_avalon_jtag_uart_close+0x58>
  80eee4:	e0bfff17 	ldw	r2,-4(fp)
  80eee8:	10c00d17 	ldw	r3,52(r2)
  80eeec:	e0bfff17 	ldw	r2,-4(fp)
  80eef0:	10800c17 	ldw	r2,48(r2)
  80eef4:	18800526 	beq	r3,r2,80ef0c <altera_avalon_jtag_uart_close+0x54>
  80eef8:	e0bfff17 	ldw	r2,-4(fp)
  80eefc:	10c00917 	ldw	r3,36(r2)
  80ef00:	e0bfff17 	ldw	r2,-4(fp)
  80ef04:	10800117 	ldw	r2,4(r2)
  80ef08:	18bff136 	bltu	r3,r2,80eed0 <altera_avalon_jtag_uart_close+0x18>
  80ef0c:	0005883a 	mov	r2,zero
  80ef10:	e037883a 	mov	sp,fp
  80ef14:	df000017 	ldw	fp,0(sp)
  80ef18:	dec00104 	addi	sp,sp,4
  80ef1c:	f800283a 	ret

0080ef20 <altera_avalon_jtag_uart_ioctl>:
  80ef20:	defffa04 	addi	sp,sp,-24
  80ef24:	df000515 	stw	fp,20(sp)
  80ef28:	df000504 	addi	fp,sp,20
  80ef2c:	e13ffd15 	stw	r4,-12(fp)
  80ef30:	e17ffc15 	stw	r5,-16(fp)
  80ef34:	e1bffb15 	stw	r6,-20(fp)
  80ef38:	00bff9c4 	movi	r2,-25
  80ef3c:	e0bfff15 	stw	r2,-4(fp)
  80ef40:	e0bffc17 	ldw	r2,-16(fp)
  80ef44:	109a8060 	cmpeqi	r2,r2,27137
  80ef48:	1000041e 	bne	r2,zero,80ef5c <altera_avalon_jtag_uart_ioctl+0x3c>
  80ef4c:	e0bffc17 	ldw	r2,-16(fp)
  80ef50:	109a80a0 	cmpeqi	r2,r2,27138
  80ef54:	1000181e 	bne	r2,zero,80efb8 <altera_avalon_jtag_uart_ioctl+0x98>
  80ef58:	00002906 	br	80f000 <altera_avalon_jtag_uart_ioctl+0xe0>
  80ef5c:	e0bffd17 	ldw	r2,-12(fp)
  80ef60:	10c00117 	ldw	r3,4(r2)
  80ef64:	00a00034 	movhi	r2,32768
  80ef68:	10bfffc4 	addi	r2,r2,-1
  80ef6c:	18802126 	beq	r3,r2,80eff4 <altera_avalon_jtag_uart_ioctl+0xd4>
  80ef70:	e0bffb17 	ldw	r2,-20(fp)
  80ef74:	10800017 	ldw	r2,0(r2)
  80ef78:	e0bffe15 	stw	r2,-8(fp)
  80ef7c:	e0bffe17 	ldw	r2,-8(fp)
  80ef80:	10800090 	cmplti	r2,r2,2
  80ef84:	1000061e 	bne	r2,zero,80efa0 <altera_avalon_jtag_uart_ioctl+0x80>
  80ef88:	e0fffe17 	ldw	r3,-8(fp)
  80ef8c:	00a00034 	movhi	r2,32768
  80ef90:	10bfffc4 	addi	r2,r2,-1
  80ef94:	18800226 	beq	r3,r2,80efa0 <altera_avalon_jtag_uart_ioctl+0x80>
  80ef98:	e0bffe17 	ldw	r2,-8(fp)
  80ef9c:	00000206 	br	80efa8 <altera_avalon_jtag_uart_ioctl+0x88>
  80efa0:	00a00034 	movhi	r2,32768
  80efa4:	10bfff84 	addi	r2,r2,-2
  80efa8:	e0fffd17 	ldw	r3,-12(fp)
  80efac:	18800115 	stw	r2,4(r3)
  80efb0:	e03fff15 	stw	zero,-4(fp)
  80efb4:	00000f06 	br	80eff4 <altera_avalon_jtag_uart_ioctl+0xd4>
  80efb8:	e0bffd17 	ldw	r2,-12(fp)
  80efbc:	10c00117 	ldw	r3,4(r2)
  80efc0:	00a00034 	movhi	r2,32768
  80efc4:	10bfffc4 	addi	r2,r2,-1
  80efc8:	18800c26 	beq	r3,r2,80effc <altera_avalon_jtag_uart_ioctl+0xdc>
  80efcc:	e0bffd17 	ldw	r2,-12(fp)
  80efd0:	10c00917 	ldw	r3,36(r2)
  80efd4:	e0bffd17 	ldw	r2,-12(fp)
  80efd8:	10800117 	ldw	r2,4(r2)
  80efdc:	1885803a 	cmpltu	r2,r3,r2
  80efe0:	10c03fcc 	andi	r3,r2,255
  80efe4:	e0bffb17 	ldw	r2,-20(fp)
  80efe8:	10c00015 	stw	r3,0(r2)
  80efec:	e03fff15 	stw	zero,-4(fp)
  80eff0:	00000206 	br	80effc <altera_avalon_jtag_uart_ioctl+0xdc>
  80eff4:	0001883a 	nop
  80eff8:	00000106 	br	80f000 <altera_avalon_jtag_uart_ioctl+0xe0>
  80effc:	0001883a 	nop
  80f000:	e0bfff17 	ldw	r2,-4(fp)
  80f004:	e037883a 	mov	sp,fp
  80f008:	df000017 	ldw	fp,0(sp)
  80f00c:	dec00104 	addi	sp,sp,4
  80f010:	f800283a 	ret

0080f014 <altera_avalon_jtag_uart_read>:
  80f014:	defff304 	addi	sp,sp,-52
  80f018:	dfc00c15 	stw	ra,48(sp)
  80f01c:	df000b15 	stw	fp,44(sp)
  80f020:	df000b04 	addi	fp,sp,44
  80f024:	e13ff815 	stw	r4,-32(fp)
  80f028:	e17ff715 	stw	r5,-36(fp)
  80f02c:	e1bff615 	stw	r6,-40(fp)
  80f030:	e1fff515 	stw	r7,-44(fp)
  80f034:	e0bff717 	ldw	r2,-36(fp)
  80f038:	e0bfff15 	stw	r2,-4(fp)
  80f03c:	00004706 	br	80f15c <altera_avalon_jtag_uart_read+0x148>
  80f040:	e0bff817 	ldw	r2,-32(fp)
  80f044:	10800a17 	ldw	r2,40(r2)
  80f048:	e0bffd15 	stw	r2,-12(fp)
  80f04c:	e0bff817 	ldw	r2,-32(fp)
  80f050:	10800b17 	ldw	r2,44(r2)
  80f054:	e0bffc15 	stw	r2,-16(fp)
  80f058:	e0fffd17 	ldw	r3,-12(fp)
  80f05c:	e0bffc17 	ldw	r2,-16(fp)
  80f060:	18800536 	bltu	r3,r2,80f078 <altera_avalon_jtag_uart_read+0x64>
  80f064:	e0fffd17 	ldw	r3,-12(fp)
  80f068:	e0bffc17 	ldw	r2,-16(fp)
  80f06c:	1885c83a 	sub	r2,r3,r2
  80f070:	e0bffe15 	stw	r2,-8(fp)
  80f074:	00000406 	br	80f088 <altera_avalon_jtag_uart_read+0x74>
  80f078:	00c20004 	movi	r3,2048
  80f07c:	e0bffc17 	ldw	r2,-16(fp)
  80f080:	1885c83a 	sub	r2,r3,r2
  80f084:	e0bffe15 	stw	r2,-8(fp)
  80f088:	e0bffe17 	ldw	r2,-8(fp)
  80f08c:	10001e26 	beq	r2,zero,80f108 <altera_avalon_jtag_uart_read+0xf4>
  80f090:	e0fff617 	ldw	r3,-40(fp)
  80f094:	e0bffe17 	ldw	r2,-8(fp)
  80f098:	1880022e 	bgeu	r3,r2,80f0a4 <altera_avalon_jtag_uart_read+0x90>
  80f09c:	e0bff617 	ldw	r2,-40(fp)
  80f0a0:	e0bffe15 	stw	r2,-8(fp)
  80f0a4:	e0bff817 	ldw	r2,-32(fp)
  80f0a8:	10c00e04 	addi	r3,r2,56
  80f0ac:	e0bffc17 	ldw	r2,-16(fp)
  80f0b0:	1885883a 	add	r2,r3,r2
  80f0b4:	e1bffe17 	ldw	r6,-8(fp)
  80f0b8:	100b883a 	mov	r5,r2
  80f0bc:	e13fff17 	ldw	r4,-4(fp)
  80f0c0:	08068740 	call	806874 <memcpy>
  80f0c4:	e0ffff17 	ldw	r3,-4(fp)
  80f0c8:	e0bffe17 	ldw	r2,-8(fp)
  80f0cc:	1885883a 	add	r2,r3,r2
  80f0d0:	e0bfff15 	stw	r2,-4(fp)
  80f0d4:	e0fff617 	ldw	r3,-40(fp)
  80f0d8:	e0bffe17 	ldw	r2,-8(fp)
  80f0dc:	1885c83a 	sub	r2,r3,r2
  80f0e0:	e0bff615 	stw	r2,-40(fp)
  80f0e4:	e0fffc17 	ldw	r3,-16(fp)
  80f0e8:	e0bffe17 	ldw	r2,-8(fp)
  80f0ec:	1885883a 	add	r2,r3,r2
  80f0f0:	10c1ffcc 	andi	r3,r2,2047
  80f0f4:	e0bff817 	ldw	r2,-32(fp)
  80f0f8:	10c00b15 	stw	r3,44(r2)
  80f0fc:	e0bff617 	ldw	r2,-40(fp)
  80f100:	00bfcf16 	blt	zero,r2,80f040 <altera_avalon_jtag_uart_read+0x2c>
  80f104:	00000106 	br	80f10c <altera_avalon_jtag_uart_read+0xf8>
  80f108:	0001883a 	nop
  80f10c:	e0ffff17 	ldw	r3,-4(fp)
  80f110:	e0bff717 	ldw	r2,-36(fp)
  80f114:	1880141e 	bne	r3,r2,80f168 <altera_avalon_jtag_uart_read+0x154>
  80f118:	e0bff517 	ldw	r2,-44(fp)
  80f11c:	1090000c 	andi	r2,r2,16384
  80f120:	1000131e 	bne	r2,zero,80f170 <altera_avalon_jtag_uart_read+0x15c>
  80f124:	0001883a 	nop
  80f128:	e0bff817 	ldw	r2,-32(fp)
  80f12c:	10800a17 	ldw	r2,40(r2)
  80f130:	e0fffd17 	ldw	r3,-12(fp)
  80f134:	1880051e 	bne	r3,r2,80f14c <altera_avalon_jtag_uart_read+0x138>
  80f138:	e0bff817 	ldw	r2,-32(fp)
  80f13c:	10c00917 	ldw	r3,36(r2)
  80f140:	e0bff817 	ldw	r2,-32(fp)
  80f144:	10800117 	ldw	r2,4(r2)
  80f148:	18bff736 	bltu	r3,r2,80f128 <altera_avalon_jtag_uart_read+0x114>
  80f14c:	e0bff817 	ldw	r2,-32(fp)
  80f150:	10800a17 	ldw	r2,40(r2)
  80f154:	e0fffd17 	ldw	r3,-12(fp)
  80f158:	18800726 	beq	r3,r2,80f178 <altera_avalon_jtag_uart_read+0x164>
  80f15c:	e0bff617 	ldw	r2,-40(fp)
  80f160:	00bfb716 	blt	zero,r2,80f040 <altera_avalon_jtag_uart_read+0x2c>
  80f164:	00000506 	br	80f17c <altera_avalon_jtag_uart_read+0x168>
  80f168:	0001883a 	nop
  80f16c:	00000306 	br	80f17c <altera_avalon_jtag_uart_read+0x168>
  80f170:	0001883a 	nop
  80f174:	00000106 	br	80f17c <altera_avalon_jtag_uart_read+0x168>
  80f178:	0001883a 	nop
  80f17c:	e0ffff17 	ldw	r3,-4(fp)
  80f180:	e0bff717 	ldw	r2,-36(fp)
  80f184:	18801926 	beq	r3,r2,80f1ec <altera_avalon_jtag_uart_read+0x1d8>
  80f188:	0005303a 	rdctl	r2,status
  80f18c:	e0bff915 	stw	r2,-28(fp)
  80f190:	e0fff917 	ldw	r3,-28(fp)
  80f194:	00bfff84 	movi	r2,-2
  80f198:	1884703a 	and	r2,r3,r2
  80f19c:	1001703a 	wrctl	status,r2
  80f1a0:	e0bff917 	ldw	r2,-28(fp)
  80f1a4:	e0bffb15 	stw	r2,-20(fp)
  80f1a8:	e0bff817 	ldw	r2,-32(fp)
  80f1ac:	10800817 	ldw	r2,32(r2)
  80f1b0:	10c00054 	ori	r3,r2,1
  80f1b4:	e0bff817 	ldw	r2,-32(fp)
  80f1b8:	10c00815 	stw	r3,32(r2)
  80f1bc:	e0bff817 	ldw	r2,-32(fp)
  80f1c0:	10800017 	ldw	r2,0(r2)
  80f1c4:	10800104 	addi	r2,r2,4
  80f1c8:	1007883a 	mov	r3,r2
  80f1cc:	e0bff817 	ldw	r2,-32(fp)
  80f1d0:	10800817 	ldw	r2,32(r2)
  80f1d4:	18800035 	stwio	r2,0(r3)
  80f1d8:	e0bffb17 	ldw	r2,-20(fp)
  80f1dc:	e0bffa15 	stw	r2,-24(fp)
  80f1e0:	e0bffa17 	ldw	r2,-24(fp)
  80f1e4:	1001703a 	wrctl	status,r2
  80f1e8:	0001883a 	nop
  80f1ec:	e0ffff17 	ldw	r3,-4(fp)
  80f1f0:	e0bff717 	ldw	r2,-36(fp)
  80f1f4:	18800426 	beq	r3,r2,80f208 <altera_avalon_jtag_uart_read+0x1f4>
  80f1f8:	e0ffff17 	ldw	r3,-4(fp)
  80f1fc:	e0bff717 	ldw	r2,-36(fp)
  80f200:	1885c83a 	sub	r2,r3,r2
  80f204:	00000606 	br	80f220 <altera_avalon_jtag_uart_read+0x20c>
  80f208:	e0bff517 	ldw	r2,-44(fp)
  80f20c:	1090000c 	andi	r2,r2,16384
  80f210:	10000226 	beq	r2,zero,80f21c <altera_avalon_jtag_uart_read+0x208>
  80f214:	00bffd44 	movi	r2,-11
  80f218:	00000106 	br	80f220 <altera_avalon_jtag_uart_read+0x20c>
  80f21c:	00bffec4 	movi	r2,-5
  80f220:	e037883a 	mov	sp,fp
  80f224:	dfc00117 	ldw	ra,4(sp)
  80f228:	df000017 	ldw	fp,0(sp)
  80f22c:	dec00204 	addi	sp,sp,8
  80f230:	f800283a 	ret

0080f234 <altera_avalon_jtag_uart_write>:
  80f234:	defff304 	addi	sp,sp,-52
  80f238:	dfc00c15 	stw	ra,48(sp)
  80f23c:	df000b15 	stw	fp,44(sp)
  80f240:	df000b04 	addi	fp,sp,44
  80f244:	e13ff815 	stw	r4,-32(fp)
  80f248:	e17ff715 	stw	r5,-36(fp)
  80f24c:	e1bff615 	stw	r6,-40(fp)
  80f250:	e1fff515 	stw	r7,-44(fp)
  80f254:	e03fff15 	stw	zero,-4(fp)
  80f258:	e0bff717 	ldw	r2,-36(fp)
  80f25c:	e0bffd15 	stw	r2,-12(fp)
  80f260:	00003706 	br	80f340 <altera_avalon_jtag_uart_write+0x10c>
  80f264:	e0bff817 	ldw	r2,-32(fp)
  80f268:	10800c17 	ldw	r2,48(r2)
  80f26c:	e0bffc15 	stw	r2,-16(fp)
  80f270:	e0bff817 	ldw	r2,-32(fp)
  80f274:	10800d17 	ldw	r2,52(r2)
  80f278:	e0bfff15 	stw	r2,-4(fp)
  80f27c:	e0fffc17 	ldw	r3,-16(fp)
  80f280:	e0bfff17 	ldw	r2,-4(fp)
  80f284:	1880062e 	bgeu	r3,r2,80f2a0 <altera_avalon_jtag_uart_write+0x6c>
  80f288:	e0ffff17 	ldw	r3,-4(fp)
  80f28c:	e0bffc17 	ldw	r2,-16(fp)
  80f290:	1885c83a 	sub	r2,r3,r2
  80f294:	10bfffc4 	addi	r2,r2,-1
  80f298:	e0bffe15 	stw	r2,-8(fp)
  80f29c:	00000b06 	br	80f2cc <altera_avalon_jtag_uart_write+0x98>
  80f2a0:	e0bfff17 	ldw	r2,-4(fp)
  80f2a4:	10000526 	beq	r2,zero,80f2bc <altera_avalon_jtag_uart_write+0x88>
  80f2a8:	00c20004 	movi	r3,2048
  80f2ac:	e0bffc17 	ldw	r2,-16(fp)
  80f2b0:	1885c83a 	sub	r2,r3,r2
  80f2b4:	e0bffe15 	stw	r2,-8(fp)
  80f2b8:	00000406 	br	80f2cc <altera_avalon_jtag_uart_write+0x98>
  80f2bc:	00c1ffc4 	movi	r3,2047
  80f2c0:	e0bffc17 	ldw	r2,-16(fp)
  80f2c4:	1885c83a 	sub	r2,r3,r2
  80f2c8:	e0bffe15 	stw	r2,-8(fp)
  80f2cc:	e0bffe17 	ldw	r2,-8(fp)
  80f2d0:	10001e26 	beq	r2,zero,80f34c <altera_avalon_jtag_uart_write+0x118>
  80f2d4:	e0fff617 	ldw	r3,-40(fp)
  80f2d8:	e0bffe17 	ldw	r2,-8(fp)
  80f2dc:	1880022e 	bgeu	r3,r2,80f2e8 <altera_avalon_jtag_uart_write+0xb4>
  80f2e0:	e0bff617 	ldw	r2,-40(fp)
  80f2e4:	e0bffe15 	stw	r2,-8(fp)
  80f2e8:	e0bff817 	ldw	r2,-32(fp)
  80f2ec:	10c20e04 	addi	r3,r2,2104
  80f2f0:	e0bffc17 	ldw	r2,-16(fp)
  80f2f4:	1885883a 	add	r2,r3,r2
  80f2f8:	e1bffe17 	ldw	r6,-8(fp)
  80f2fc:	e17ff717 	ldw	r5,-36(fp)
  80f300:	1009883a 	mov	r4,r2
  80f304:	08068740 	call	806874 <memcpy>
  80f308:	e0fff717 	ldw	r3,-36(fp)
  80f30c:	e0bffe17 	ldw	r2,-8(fp)
  80f310:	1885883a 	add	r2,r3,r2
  80f314:	e0bff715 	stw	r2,-36(fp)
  80f318:	e0fff617 	ldw	r3,-40(fp)
  80f31c:	e0bffe17 	ldw	r2,-8(fp)
  80f320:	1885c83a 	sub	r2,r3,r2
  80f324:	e0bff615 	stw	r2,-40(fp)
  80f328:	e0fffc17 	ldw	r3,-16(fp)
  80f32c:	e0bffe17 	ldw	r2,-8(fp)
  80f330:	1885883a 	add	r2,r3,r2
  80f334:	10c1ffcc 	andi	r3,r2,2047
  80f338:	e0bff817 	ldw	r2,-32(fp)
  80f33c:	10c00c15 	stw	r3,48(r2)
  80f340:	e0bff617 	ldw	r2,-40(fp)
  80f344:	00bfc716 	blt	zero,r2,80f264 <altera_avalon_jtag_uart_write+0x30>
  80f348:	00000106 	br	80f350 <altera_avalon_jtag_uart_write+0x11c>
  80f34c:	0001883a 	nop
  80f350:	0005303a 	rdctl	r2,status
  80f354:	e0bff915 	stw	r2,-28(fp)
  80f358:	e0fff917 	ldw	r3,-28(fp)
  80f35c:	00bfff84 	movi	r2,-2
  80f360:	1884703a 	and	r2,r3,r2
  80f364:	1001703a 	wrctl	status,r2
  80f368:	e0bff917 	ldw	r2,-28(fp)
  80f36c:	e0bffb15 	stw	r2,-20(fp)
  80f370:	e0bff817 	ldw	r2,-32(fp)
  80f374:	10800817 	ldw	r2,32(r2)
  80f378:	10c00094 	ori	r3,r2,2
  80f37c:	e0bff817 	ldw	r2,-32(fp)
  80f380:	10c00815 	stw	r3,32(r2)
  80f384:	e0bff817 	ldw	r2,-32(fp)
  80f388:	10800017 	ldw	r2,0(r2)
  80f38c:	10800104 	addi	r2,r2,4
  80f390:	1007883a 	mov	r3,r2
  80f394:	e0bff817 	ldw	r2,-32(fp)
  80f398:	10800817 	ldw	r2,32(r2)
  80f39c:	18800035 	stwio	r2,0(r3)
  80f3a0:	e0bffb17 	ldw	r2,-20(fp)
  80f3a4:	e0bffa15 	stw	r2,-24(fp)
  80f3a8:	e0bffa17 	ldw	r2,-24(fp)
  80f3ac:	1001703a 	wrctl	status,r2
  80f3b0:	0001883a 	nop
  80f3b4:	e0bff617 	ldw	r2,-40(fp)
  80f3b8:	0080100e 	bge	zero,r2,80f3fc <altera_avalon_jtag_uart_write+0x1c8>
  80f3bc:	e0bff517 	ldw	r2,-44(fp)
  80f3c0:	1090000c 	andi	r2,r2,16384
  80f3c4:	1000101e 	bne	r2,zero,80f408 <altera_avalon_jtag_uart_write+0x1d4>
  80f3c8:	0001883a 	nop
  80f3cc:	e0bff817 	ldw	r2,-32(fp)
  80f3d0:	10800d17 	ldw	r2,52(r2)
  80f3d4:	e0ffff17 	ldw	r3,-4(fp)
  80f3d8:	1880051e 	bne	r3,r2,80f3f0 <altera_avalon_jtag_uart_write+0x1bc>
  80f3dc:	e0bff817 	ldw	r2,-32(fp)
  80f3e0:	10c00917 	ldw	r3,36(r2)
  80f3e4:	e0bff817 	ldw	r2,-32(fp)
  80f3e8:	10800117 	ldw	r2,4(r2)
  80f3ec:	18bff736 	bltu	r3,r2,80f3cc <altera_avalon_jtag_uart_write+0x198>
  80f3f0:	e0bff817 	ldw	r2,-32(fp)
  80f3f4:	10800917 	ldw	r2,36(r2)
  80f3f8:	1000051e 	bne	r2,zero,80f410 <altera_avalon_jtag_uart_write+0x1dc>
  80f3fc:	e0bff617 	ldw	r2,-40(fp)
  80f400:	00bfcf16 	blt	zero,r2,80f340 <altera_avalon_jtag_uart_write+0x10c>
  80f404:	00000306 	br	80f414 <altera_avalon_jtag_uart_write+0x1e0>
  80f408:	0001883a 	nop
  80f40c:	00000106 	br	80f414 <altera_avalon_jtag_uart_write+0x1e0>
  80f410:	0001883a 	nop
  80f414:	e0fff717 	ldw	r3,-36(fp)
  80f418:	e0bffd17 	ldw	r2,-12(fp)
  80f41c:	18800426 	beq	r3,r2,80f430 <altera_avalon_jtag_uart_write+0x1fc>
  80f420:	e0fff717 	ldw	r3,-36(fp)
  80f424:	e0bffd17 	ldw	r2,-12(fp)
  80f428:	1885c83a 	sub	r2,r3,r2
  80f42c:	00000606 	br	80f448 <altera_avalon_jtag_uart_write+0x214>
  80f430:	e0bff517 	ldw	r2,-44(fp)
  80f434:	1090000c 	andi	r2,r2,16384
  80f438:	10000226 	beq	r2,zero,80f444 <altera_avalon_jtag_uart_write+0x210>
  80f43c:	00bffd44 	movi	r2,-11
  80f440:	00000106 	br	80f448 <altera_avalon_jtag_uart_write+0x214>
  80f444:	00bffec4 	movi	r2,-5
  80f448:	e037883a 	mov	sp,fp
  80f44c:	dfc00117 	ldw	ra,4(sp)
  80f450:	df000017 	ldw	fp,0(sp)
  80f454:	dec00204 	addi	sp,sp,8
  80f458:	f800283a 	ret

0080f45c <alt_avalon_timer_sc_irq>:
  80f45c:	defffa04 	addi	sp,sp,-24
  80f460:	dfc00515 	stw	ra,20(sp)
  80f464:	df000415 	stw	fp,16(sp)
  80f468:	df000404 	addi	fp,sp,16
  80f46c:	e13ffc15 	stw	r4,-16(fp)
  80f470:	0007883a 	mov	r3,zero
  80f474:	e0bffc17 	ldw	r2,-16(fp)
  80f478:	10c00035 	stwio	r3,0(r2)
  80f47c:	e0bffc17 	ldw	r2,-16(fp)
  80f480:	10800104 	addi	r2,r2,4
  80f484:	10800037 	ldwio	r2,0(r2)
  80f488:	0005303a 	rdctl	r2,status
  80f48c:	e0bffd15 	stw	r2,-12(fp)
  80f490:	e0fffd17 	ldw	r3,-12(fp)
  80f494:	00bfff84 	movi	r2,-2
  80f498:	1884703a 	and	r2,r3,r2
  80f49c:	1001703a 	wrctl	status,r2
  80f4a0:	e0bffd17 	ldw	r2,-12(fp)
  80f4a4:	e0bfff15 	stw	r2,-4(fp)
  80f4a8:	080e6cc0 	call	80e6cc <alt_tick>
  80f4ac:	e0bfff17 	ldw	r2,-4(fp)
  80f4b0:	e0bffe15 	stw	r2,-8(fp)
  80f4b4:	e0bffe17 	ldw	r2,-8(fp)
  80f4b8:	1001703a 	wrctl	status,r2
  80f4bc:	0001883a 	nop
  80f4c0:	0001883a 	nop
  80f4c4:	e037883a 	mov	sp,fp
  80f4c8:	dfc00117 	ldw	ra,4(sp)
  80f4cc:	df000017 	ldw	fp,0(sp)
  80f4d0:	dec00204 	addi	sp,sp,8
  80f4d4:	f800283a 	ret

0080f4d8 <alt_avalon_timer_sc_init>:
  80f4d8:	defff804 	addi	sp,sp,-32
  80f4dc:	dfc00715 	stw	ra,28(sp)
  80f4e0:	df000615 	stw	fp,24(sp)
  80f4e4:	df000604 	addi	fp,sp,24
  80f4e8:	e13ffe15 	stw	r4,-8(fp)
  80f4ec:	e17ffd15 	stw	r5,-12(fp)
  80f4f0:	e1bffc15 	stw	r6,-16(fp)
  80f4f4:	e1fffb15 	stw	r7,-20(fp)
  80f4f8:	e0bffb17 	ldw	r2,-20(fp)
  80f4fc:	e0bfff15 	stw	r2,-4(fp)
  80f500:	d0a70c17 	ldw	r2,-25552(gp)
  80f504:	1000031e 	bne	r2,zero,80f514 <alt_avalon_timer_sc_init+0x3c>
  80f508:	e0bfff17 	ldw	r2,-4(fp)
  80f50c:	d0a70c15 	stw	r2,-25552(gp)
  80f510:	00000106 	br	80f518 <alt_avalon_timer_sc_init+0x40>
  80f514:	0001883a 	nop
  80f518:	e0bffe17 	ldw	r2,-8(fp)
  80f51c:	10800104 	addi	r2,r2,4
  80f520:	00c001c4 	movi	r3,7
  80f524:	10c00035 	stwio	r3,0(r2)
  80f528:	d8000015 	stw	zero,0(sp)
  80f52c:	e1fffe17 	ldw	r7,-8(fp)
  80f530:	01802074 	movhi	r6,129
  80f534:	31bd1704 	addi	r6,r6,-2980
  80f538:	e17ffc17 	ldw	r5,-16(fp)
  80f53c:	e13ffd17 	ldw	r4,-12(fp)
  80f540:	080f8bc0 	call	80f8bc <alt_ic_isr_register>
  80f544:	0001883a 	nop
  80f548:	e037883a 	mov	sp,fp
  80f54c:	dfc00117 	ldw	ra,4(sp)
  80f550:	df000017 	ldw	fp,0(sp)
  80f554:	dec00204 	addi	sp,sp,8
  80f558:	f800283a 	ret

0080f55c <alt_alarm_start>:
  80f55c:	defff504 	addi	sp,sp,-44
  80f560:	df000a15 	stw	fp,40(sp)
  80f564:	df000a04 	addi	fp,sp,40
  80f568:	e13ff915 	stw	r4,-28(fp)
  80f56c:	e17ff815 	stw	r5,-32(fp)
  80f570:	e1bff715 	stw	r6,-36(fp)
  80f574:	e1fff615 	stw	r7,-40(fp)
  80f578:	e03fff15 	stw	zero,-4(fp)
  80f57c:	d0a70c17 	ldw	r2,-25552(gp)
  80f580:	10003e26 	beq	r2,zero,80f67c <alt_alarm_start+0x120>
  80f584:	e0bff917 	ldw	r2,-28(fp)
  80f588:	10003a26 	beq	r2,zero,80f674 <alt_alarm_start+0x118>
  80f58c:	e0bff917 	ldw	r2,-28(fp)
  80f590:	e0fff717 	ldw	r3,-36(fp)
  80f594:	10c00315 	stw	r3,12(r2)
  80f598:	e0bff917 	ldw	r2,-28(fp)
  80f59c:	e0fff617 	ldw	r3,-40(fp)
  80f5a0:	10c00515 	stw	r3,20(r2)
  80f5a4:	0005303a 	rdctl	r2,status
  80f5a8:	e0bffd15 	stw	r2,-12(fp)
  80f5ac:	e0fffd17 	ldw	r3,-12(fp)
  80f5b0:	00bfff84 	movi	r2,-2
  80f5b4:	1884703a 	and	r2,r3,r2
  80f5b8:	1001703a 	wrctl	status,r2
  80f5bc:	e0bffd17 	ldw	r2,-12(fp)
  80f5c0:	e0bffe15 	stw	r2,-8(fp)
  80f5c4:	d0a70d17 	ldw	r2,-25548(gp)
  80f5c8:	e0bfff15 	stw	r2,-4(fp)
  80f5cc:	e0fff817 	ldw	r3,-32(fp)
  80f5d0:	e0bfff17 	ldw	r2,-4(fp)
  80f5d4:	1885883a 	add	r2,r3,r2
  80f5d8:	10c00044 	addi	r3,r2,1
  80f5dc:	e0bff917 	ldw	r2,-28(fp)
  80f5e0:	10c00215 	stw	r3,8(r2)
  80f5e4:	e0bff917 	ldw	r2,-28(fp)
  80f5e8:	10c00217 	ldw	r3,8(r2)
  80f5ec:	e0bfff17 	ldw	r2,-4(fp)
  80f5f0:	1880042e 	bgeu	r3,r2,80f604 <alt_alarm_start+0xa8>
  80f5f4:	e0bff917 	ldw	r2,-28(fp)
  80f5f8:	00c00044 	movi	r3,1
  80f5fc:	10c00405 	stb	r3,16(r2)
  80f600:	00000206 	br	80f60c <alt_alarm_start+0xb0>
  80f604:	e0bff917 	ldw	r2,-28(fp)
  80f608:	10000405 	stb	zero,16(r2)
  80f60c:	e0bff917 	ldw	r2,-28(fp)
  80f610:	d0e00b04 	addi	r3,gp,-32724
  80f614:	e0fffb15 	stw	r3,-20(fp)
  80f618:	e0bffa15 	stw	r2,-24(fp)
  80f61c:	e0bffa17 	ldw	r2,-24(fp)
  80f620:	e0fffb17 	ldw	r3,-20(fp)
  80f624:	10c00115 	stw	r3,4(r2)
  80f628:	e0bffb17 	ldw	r2,-20(fp)
  80f62c:	10c00017 	ldw	r3,0(r2)
  80f630:	e0bffa17 	ldw	r2,-24(fp)
  80f634:	10c00015 	stw	r3,0(r2)
  80f638:	e0bffb17 	ldw	r2,-20(fp)
  80f63c:	10800017 	ldw	r2,0(r2)
  80f640:	e0fffa17 	ldw	r3,-24(fp)
  80f644:	10c00115 	stw	r3,4(r2)
  80f648:	e0bffb17 	ldw	r2,-20(fp)
  80f64c:	e0fffa17 	ldw	r3,-24(fp)
  80f650:	10c00015 	stw	r3,0(r2)
  80f654:	0001883a 	nop
  80f658:	e0bffe17 	ldw	r2,-8(fp)
  80f65c:	e0bffc15 	stw	r2,-16(fp)
  80f660:	e0bffc17 	ldw	r2,-16(fp)
  80f664:	1001703a 	wrctl	status,r2
  80f668:	0001883a 	nop
  80f66c:	0005883a 	mov	r2,zero
  80f670:	00000306 	br	80f680 <alt_alarm_start+0x124>
  80f674:	00bffa84 	movi	r2,-22
  80f678:	00000106 	br	80f680 <alt_alarm_start+0x124>
  80f67c:	00bfde84 	movi	r2,-134
  80f680:	e037883a 	mov	sp,fp
  80f684:	df000017 	ldw	fp,0(sp)
  80f688:	dec00104 	addi	sp,sp,4
  80f68c:	f800283a 	ret

0080f690 <alt_dcache_flush_all>:
  80f690:	defffe04 	addi	sp,sp,-8
  80f694:	df000115 	stw	fp,4(sp)
  80f698:	df000104 	addi	fp,sp,4
  80f69c:	e03fff15 	stw	zero,-4(fp)
  80f6a0:	00000506 	br	80f6b8 <alt_dcache_flush_all+0x28>
  80f6a4:	e0bfff17 	ldw	r2,-4(fp)
  80f6a8:	1000003b 	flushd	0(r2)
  80f6ac:	e0bfff17 	ldw	r2,-4(fp)
  80f6b0:	10800804 	addi	r2,r2,32
  80f6b4:	e0bfff15 	stw	r2,-4(fp)
  80f6b8:	e0bfff17 	ldw	r2,-4(fp)
  80f6bc:	10820030 	cmpltui	r2,r2,2048
  80f6c0:	103ff81e 	bne	r2,zero,80f6a4 <alt_dcache_flush_all+0x14>
  80f6c4:	0001883a 	nop
  80f6c8:	0001883a 	nop
  80f6cc:	e037883a 	mov	sp,fp
  80f6d0:	df000017 	ldw	fp,0(sp)
  80f6d4:	dec00104 	addi	sp,sp,4
  80f6d8:	f800283a 	ret

0080f6dc <alt_get_errno>:
  80f6dc:	defffe04 	addi	sp,sp,-8
  80f6e0:	dfc00115 	stw	ra,4(sp)
  80f6e4:	df000015 	stw	fp,0(sp)
  80f6e8:	d839883a 	mov	fp,sp
  80f6ec:	d0a00917 	ldw	r2,-32732(gp)
  80f6f0:	10000326 	beq	r2,zero,80f700 <alt_get_errno+0x24>
  80f6f4:	d0a00917 	ldw	r2,-32732(gp)
  80f6f8:	103ee83a 	callr	r2
  80f6fc:	00000106 	br	80f704 <alt_get_errno+0x28>
  80f700:	d0a70704 	addi	r2,gp,-25572
  80f704:	e037883a 	mov	sp,fp
  80f708:	dfc00117 	ldw	ra,4(sp)
  80f70c:	df000017 	ldw	fp,0(sp)
  80f710:	dec00204 	addi	sp,sp,8
  80f714:	f800283a 	ret

0080f718 <alt_dev_llist_insert>:
  80f718:	defffa04 	addi	sp,sp,-24
  80f71c:	dfc00515 	stw	ra,20(sp)
  80f720:	df000415 	stw	fp,16(sp)
  80f724:	df000404 	addi	fp,sp,16
  80f728:	e13ffd15 	stw	r4,-12(fp)
  80f72c:	e17ffc15 	stw	r5,-16(fp)
  80f730:	e0bffd17 	ldw	r2,-12(fp)
  80f734:	10000326 	beq	r2,zero,80f744 <alt_dev_llist_insert+0x2c>
  80f738:	e0bffd17 	ldw	r2,-12(fp)
  80f73c:	10800217 	ldw	r2,8(r2)
  80f740:	1000061e 	bne	r2,zero,80f75c <alt_dev_llist_insert+0x44>
  80f744:	080f6dc0 	call	80f6dc <alt_get_errno>
  80f748:	1007883a 	mov	r3,r2
  80f74c:	00800584 	movi	r2,22
  80f750:	18800015 	stw	r2,0(r3)
  80f754:	00bffa84 	movi	r2,-22
  80f758:	00001406 	br	80f7ac <alt_dev_llist_insert+0x94>
  80f75c:	e0bffd17 	ldw	r2,-12(fp)
  80f760:	e0fffc17 	ldw	r3,-16(fp)
  80f764:	e0ffff15 	stw	r3,-4(fp)
  80f768:	e0bffe15 	stw	r2,-8(fp)
  80f76c:	e0bffe17 	ldw	r2,-8(fp)
  80f770:	e0ffff17 	ldw	r3,-4(fp)
  80f774:	10c00115 	stw	r3,4(r2)
  80f778:	e0bfff17 	ldw	r2,-4(fp)
  80f77c:	10c00017 	ldw	r3,0(r2)
  80f780:	e0bffe17 	ldw	r2,-8(fp)
  80f784:	10c00015 	stw	r3,0(r2)
  80f788:	e0bfff17 	ldw	r2,-4(fp)
  80f78c:	10800017 	ldw	r2,0(r2)
  80f790:	e0fffe17 	ldw	r3,-8(fp)
  80f794:	10c00115 	stw	r3,4(r2)
  80f798:	e0bfff17 	ldw	r2,-4(fp)
  80f79c:	e0fffe17 	ldw	r3,-8(fp)
  80f7a0:	10c00015 	stw	r3,0(r2)
  80f7a4:	0001883a 	nop
  80f7a8:	0005883a 	mov	r2,zero
  80f7ac:	e037883a 	mov	sp,fp
  80f7b0:	dfc00117 	ldw	ra,4(sp)
  80f7b4:	df000017 	ldw	fp,0(sp)
  80f7b8:	dec00204 	addi	sp,sp,8
  80f7bc:	f800283a 	ret

0080f7c0 <_do_ctors>:
  80f7c0:	defffd04 	addi	sp,sp,-12
  80f7c4:	dfc00215 	stw	ra,8(sp)
  80f7c8:	df000115 	stw	fp,4(sp)
  80f7cc:	df000104 	addi	fp,sp,4
  80f7d0:	00802074 	movhi	r2,129
  80f7d4:	10814904 	addi	r2,r2,1316
  80f7d8:	e0bfff15 	stw	r2,-4(fp)
  80f7dc:	00000606 	br	80f7f8 <_do_ctors+0x38>
  80f7e0:	e0bfff17 	ldw	r2,-4(fp)
  80f7e4:	10800017 	ldw	r2,0(r2)
  80f7e8:	103ee83a 	callr	r2
  80f7ec:	e0bfff17 	ldw	r2,-4(fp)
  80f7f0:	10bfff04 	addi	r2,r2,-4
  80f7f4:	e0bfff15 	stw	r2,-4(fp)
  80f7f8:	e0ffff17 	ldw	r3,-4(fp)
  80f7fc:	00802074 	movhi	r2,129
  80f800:	10814a04 	addi	r2,r2,1320
  80f804:	18bff62e 	bgeu	r3,r2,80f7e0 <_do_ctors+0x20>
  80f808:	0001883a 	nop
  80f80c:	0001883a 	nop
  80f810:	e037883a 	mov	sp,fp
  80f814:	dfc00117 	ldw	ra,4(sp)
  80f818:	df000017 	ldw	fp,0(sp)
  80f81c:	dec00204 	addi	sp,sp,8
  80f820:	f800283a 	ret

0080f824 <_do_dtors>:
  80f824:	defffd04 	addi	sp,sp,-12
  80f828:	dfc00215 	stw	ra,8(sp)
  80f82c:	df000115 	stw	fp,4(sp)
  80f830:	df000104 	addi	fp,sp,4
  80f834:	00802074 	movhi	r2,129
  80f838:	10814904 	addi	r2,r2,1316
  80f83c:	e0bfff15 	stw	r2,-4(fp)
  80f840:	00000606 	br	80f85c <_do_dtors+0x38>
  80f844:	e0bfff17 	ldw	r2,-4(fp)
  80f848:	10800017 	ldw	r2,0(r2)
  80f84c:	103ee83a 	callr	r2
  80f850:	e0bfff17 	ldw	r2,-4(fp)
  80f854:	10bfff04 	addi	r2,r2,-4
  80f858:	e0bfff15 	stw	r2,-4(fp)
  80f85c:	e0ffff17 	ldw	r3,-4(fp)
  80f860:	00802074 	movhi	r2,129
  80f864:	10814a04 	addi	r2,r2,1320
  80f868:	18bff62e 	bgeu	r3,r2,80f844 <_do_dtors+0x20>
  80f86c:	0001883a 	nop
  80f870:	0001883a 	nop
  80f874:	e037883a 	mov	sp,fp
  80f878:	dfc00117 	ldw	ra,4(sp)
  80f87c:	df000017 	ldw	fp,0(sp)
  80f880:	dec00204 	addi	sp,sp,8
  80f884:	f800283a 	ret

0080f888 <alt_icache_flush_all>:
  80f888:	defffe04 	addi	sp,sp,-8
  80f88c:	dfc00115 	stw	ra,4(sp)
  80f890:	df000015 	stw	fp,0(sp)
  80f894:	d839883a 	mov	fp,sp
  80f898:	01420004 	movi	r5,2048
  80f89c:	0009883a 	mov	r4,zero
  80f8a0:	08101900 	call	810190 <alt_icache_flush>
  80f8a4:	0001883a 	nop
  80f8a8:	e037883a 	mov	sp,fp
  80f8ac:	dfc00117 	ldw	ra,4(sp)
  80f8b0:	df000017 	ldw	fp,0(sp)
  80f8b4:	dec00204 	addi	sp,sp,8
  80f8b8:	f800283a 	ret

0080f8bc <alt_ic_isr_register>:
  80f8bc:	defff904 	addi	sp,sp,-28
  80f8c0:	dfc00615 	stw	ra,24(sp)
  80f8c4:	df000515 	stw	fp,20(sp)
  80f8c8:	df000504 	addi	fp,sp,20
  80f8cc:	e13fff15 	stw	r4,-4(fp)
  80f8d0:	e17ffe15 	stw	r5,-8(fp)
  80f8d4:	e1bffd15 	stw	r6,-12(fp)
  80f8d8:	e1fffc15 	stw	r7,-16(fp)
  80f8dc:	e0800217 	ldw	r2,8(fp)
  80f8e0:	d8800015 	stw	r2,0(sp)
  80f8e4:	e1fffc17 	ldw	r7,-16(fp)
  80f8e8:	e1bffd17 	ldw	r6,-12(fp)
  80f8ec:	e17ffe17 	ldw	r5,-8(fp)
  80f8f0:	e13fff17 	ldw	r4,-4(fp)
  80f8f4:	080fa6c0 	call	80fa6c <alt_iic_isr_register>
  80f8f8:	e037883a 	mov	sp,fp
  80f8fc:	dfc00117 	ldw	ra,4(sp)
  80f900:	df000017 	ldw	fp,0(sp)
  80f904:	dec00204 	addi	sp,sp,8
  80f908:	f800283a 	ret

0080f90c <alt_ic_irq_enable>:
  80f90c:	defff904 	addi	sp,sp,-28
  80f910:	df000615 	stw	fp,24(sp)
  80f914:	df000604 	addi	fp,sp,24
  80f918:	e13ffb15 	stw	r4,-20(fp)
  80f91c:	e17ffa15 	stw	r5,-24(fp)
  80f920:	e0bffa17 	ldw	r2,-24(fp)
  80f924:	e0bfff15 	stw	r2,-4(fp)
  80f928:	0005303a 	rdctl	r2,status
  80f92c:	e0bffe15 	stw	r2,-8(fp)
  80f930:	e0fffe17 	ldw	r3,-8(fp)
  80f934:	00bfff84 	movi	r2,-2
  80f938:	1884703a 	and	r2,r3,r2
  80f93c:	1001703a 	wrctl	status,r2
  80f940:	e0bffe17 	ldw	r2,-8(fp)
  80f944:	e0bffd15 	stw	r2,-12(fp)
  80f948:	00c00044 	movi	r3,1
  80f94c:	e0bfff17 	ldw	r2,-4(fp)
  80f950:	1884983a 	sll	r2,r3,r2
  80f954:	1007883a 	mov	r3,r2
  80f958:	d0a70e17 	ldw	r2,-25544(gp)
  80f95c:	1884b03a 	or	r2,r3,r2
  80f960:	d0a70e15 	stw	r2,-25544(gp)
  80f964:	d0a70e17 	ldw	r2,-25544(gp)
  80f968:	100170fa 	wrctl	ienable,r2
  80f96c:	e0bffd17 	ldw	r2,-12(fp)
  80f970:	e0bffc15 	stw	r2,-16(fp)
  80f974:	e0bffc17 	ldw	r2,-16(fp)
  80f978:	1001703a 	wrctl	status,r2
  80f97c:	0001883a 	nop
  80f980:	0005883a 	mov	r2,zero
  80f984:	e037883a 	mov	sp,fp
  80f988:	df000017 	ldw	fp,0(sp)
  80f98c:	dec00104 	addi	sp,sp,4
  80f990:	f800283a 	ret

0080f994 <alt_ic_irq_disable>:
  80f994:	defff904 	addi	sp,sp,-28
  80f998:	df000615 	stw	fp,24(sp)
  80f99c:	df000604 	addi	fp,sp,24
  80f9a0:	e13ffb15 	stw	r4,-20(fp)
  80f9a4:	e17ffa15 	stw	r5,-24(fp)
  80f9a8:	e0bffa17 	ldw	r2,-24(fp)
  80f9ac:	e0bfff15 	stw	r2,-4(fp)
  80f9b0:	0005303a 	rdctl	r2,status
  80f9b4:	e0bffe15 	stw	r2,-8(fp)
  80f9b8:	e0fffe17 	ldw	r3,-8(fp)
  80f9bc:	00bfff84 	movi	r2,-2
  80f9c0:	1884703a 	and	r2,r3,r2
  80f9c4:	1001703a 	wrctl	status,r2
  80f9c8:	e0bffe17 	ldw	r2,-8(fp)
  80f9cc:	e0bffd15 	stw	r2,-12(fp)
  80f9d0:	00c00044 	movi	r3,1
  80f9d4:	e0bfff17 	ldw	r2,-4(fp)
  80f9d8:	1884983a 	sll	r2,r3,r2
  80f9dc:	0084303a 	nor	r2,zero,r2
  80f9e0:	1007883a 	mov	r3,r2
  80f9e4:	d0a70e17 	ldw	r2,-25544(gp)
  80f9e8:	1884703a 	and	r2,r3,r2
  80f9ec:	d0a70e15 	stw	r2,-25544(gp)
  80f9f0:	d0a70e17 	ldw	r2,-25544(gp)
  80f9f4:	100170fa 	wrctl	ienable,r2
  80f9f8:	e0bffd17 	ldw	r2,-12(fp)
  80f9fc:	e0bffc15 	stw	r2,-16(fp)
  80fa00:	e0bffc17 	ldw	r2,-16(fp)
  80fa04:	1001703a 	wrctl	status,r2
  80fa08:	0001883a 	nop
  80fa0c:	0005883a 	mov	r2,zero
  80fa10:	e037883a 	mov	sp,fp
  80fa14:	df000017 	ldw	fp,0(sp)
  80fa18:	dec00104 	addi	sp,sp,4
  80fa1c:	f800283a 	ret

0080fa20 <alt_ic_irq_enabled>:
  80fa20:	defffc04 	addi	sp,sp,-16
  80fa24:	df000315 	stw	fp,12(sp)
  80fa28:	df000304 	addi	fp,sp,12
  80fa2c:	e13ffe15 	stw	r4,-8(fp)
  80fa30:	e17ffd15 	stw	r5,-12(fp)
  80fa34:	000530fa 	rdctl	r2,ienable
  80fa38:	e0bfff15 	stw	r2,-4(fp)
  80fa3c:	00c00044 	movi	r3,1
  80fa40:	e0bffd17 	ldw	r2,-12(fp)
  80fa44:	1884983a 	sll	r2,r3,r2
  80fa48:	1007883a 	mov	r3,r2
  80fa4c:	e0bfff17 	ldw	r2,-4(fp)
  80fa50:	1884703a 	and	r2,r3,r2
  80fa54:	1004c03a 	cmpne	r2,r2,zero
  80fa58:	10803fcc 	andi	r2,r2,255
  80fa5c:	e037883a 	mov	sp,fp
  80fa60:	df000017 	ldw	fp,0(sp)
  80fa64:	dec00104 	addi	sp,sp,4
  80fa68:	f800283a 	ret

0080fa6c <alt_iic_isr_register>:
  80fa6c:	defff504 	addi	sp,sp,-44
  80fa70:	dfc00a15 	stw	ra,40(sp)
  80fa74:	df000915 	stw	fp,36(sp)
  80fa78:	df000904 	addi	fp,sp,36
  80fa7c:	e13ffa15 	stw	r4,-24(fp)
  80fa80:	e17ff915 	stw	r5,-28(fp)
  80fa84:	e1bff815 	stw	r6,-32(fp)
  80fa88:	e1fff715 	stw	r7,-36(fp)
  80fa8c:	00bffa84 	movi	r2,-22
  80fa90:	e0bfff15 	stw	r2,-4(fp)
  80fa94:	e0bff917 	ldw	r2,-28(fp)
  80fa98:	e0bffe15 	stw	r2,-8(fp)
  80fa9c:	e0bffe17 	ldw	r2,-8(fp)
  80faa0:	10800808 	cmpgei	r2,r2,32
  80faa4:	1000251e 	bne	r2,zero,80fb3c <alt_iic_isr_register+0xd0>
  80faa8:	0005303a 	rdctl	r2,status
  80faac:	e0bffc15 	stw	r2,-16(fp)
  80fab0:	e0fffc17 	ldw	r3,-16(fp)
  80fab4:	00bfff84 	movi	r2,-2
  80fab8:	1884703a 	and	r2,r3,r2
  80fabc:	1001703a 	wrctl	status,r2
  80fac0:	e0bffc17 	ldw	r2,-16(fp)
  80fac4:	e0bffd15 	stw	r2,-12(fp)
  80fac8:	e0bffe17 	ldw	r2,-8(fp)
  80facc:	100890fa 	slli	r4,r2,3
  80fad0:	e0fff817 	ldw	r3,-32(fp)
  80fad4:	00802074 	movhi	r2,129
  80fad8:	2085883a 	add	r2,r4,r2
  80fadc:	10d0f515 	stw	r3,17364(r2)
  80fae0:	e0bffe17 	ldw	r2,-8(fp)
  80fae4:	100890fa 	slli	r4,r2,3
  80fae8:	e0fff717 	ldw	r3,-36(fp)
  80faec:	00802074 	movhi	r2,129
  80faf0:	2085883a 	add	r2,r4,r2
  80faf4:	10d0f615 	stw	r3,17368(r2)
  80faf8:	e0bff817 	ldw	r2,-32(fp)
  80fafc:	10000526 	beq	r2,zero,80fb14 <alt_iic_isr_register+0xa8>
  80fb00:	e0bffe17 	ldw	r2,-8(fp)
  80fb04:	100b883a 	mov	r5,r2
  80fb08:	e13ffa17 	ldw	r4,-24(fp)
  80fb0c:	080f90c0 	call	80f90c <alt_ic_irq_enable>
  80fb10:	00000406 	br	80fb24 <alt_iic_isr_register+0xb8>
  80fb14:	e0bffe17 	ldw	r2,-8(fp)
  80fb18:	100b883a 	mov	r5,r2
  80fb1c:	e13ffa17 	ldw	r4,-24(fp)
  80fb20:	080f9940 	call	80f994 <alt_ic_irq_disable>
  80fb24:	e0bfff15 	stw	r2,-4(fp)
  80fb28:	e0bffd17 	ldw	r2,-12(fp)
  80fb2c:	e0bffb15 	stw	r2,-20(fp)
  80fb30:	e0bffb17 	ldw	r2,-20(fp)
  80fb34:	1001703a 	wrctl	status,r2
  80fb38:	0001883a 	nop
  80fb3c:	e0bfff17 	ldw	r2,-4(fp)
  80fb40:	e037883a 	mov	sp,fp
  80fb44:	dfc00117 	ldw	ra,4(sp)
  80fb48:	df000017 	ldw	fp,0(sp)
  80fb4c:	dec00204 	addi	sp,sp,8
  80fb50:	f800283a 	ret

0080fb54 <alt_open_fd>:
  80fb54:	defff904 	addi	sp,sp,-28
  80fb58:	dfc00615 	stw	ra,24(sp)
  80fb5c:	df000515 	stw	fp,20(sp)
  80fb60:	df000504 	addi	fp,sp,20
  80fb64:	e13ffe15 	stw	r4,-8(fp)
  80fb68:	e17ffd15 	stw	r5,-12(fp)
  80fb6c:	e1bffc15 	stw	r6,-16(fp)
  80fb70:	e1fffb15 	stw	r7,-20(fp)
  80fb74:	e1bffb17 	ldw	r6,-20(fp)
  80fb78:	e17ffc17 	ldw	r5,-16(fp)
  80fb7c:	e13ffd17 	ldw	r4,-12(fp)
  80fb80:	080fdbc0 	call	80fdbc <open>
  80fb84:	e0bfff15 	stw	r2,-4(fp)
  80fb88:	e0bfff17 	ldw	r2,-4(fp)
  80fb8c:	10002016 	blt	r2,zero,80fc10 <alt_open_fd+0xbc>
  80fb90:	e0ffff17 	ldw	r3,-4(fp)
  80fb94:	1805883a 	mov	r2,r3
  80fb98:	1085883a 	add	r2,r2,r2
  80fb9c:	10c5883a 	add	r2,r2,r3
  80fba0:	100490ba 	slli	r2,r2,2
  80fba4:	00c02074 	movhi	r3,129
  80fba8:	10c7883a 	add	r3,r2,r3
  80fbac:	18c56317 	ldw	r3,5516(r3)
  80fbb0:	e0bffe17 	ldw	r2,-8(fp)
  80fbb4:	10c00015 	stw	r3,0(r2)
  80fbb8:	e0ffff17 	ldw	r3,-4(fp)
  80fbbc:	1805883a 	mov	r2,r3
  80fbc0:	1085883a 	add	r2,r2,r2
  80fbc4:	10c5883a 	add	r2,r2,r3
  80fbc8:	100490ba 	slli	r2,r2,2
  80fbcc:	00c02074 	movhi	r3,129
  80fbd0:	10c7883a 	add	r3,r2,r3
  80fbd4:	18c56417 	ldw	r3,5520(r3)
  80fbd8:	e0bffe17 	ldw	r2,-8(fp)
  80fbdc:	10c00115 	stw	r3,4(r2)
  80fbe0:	e0ffff17 	ldw	r3,-4(fp)
  80fbe4:	1805883a 	mov	r2,r3
  80fbe8:	1085883a 	add	r2,r2,r2
  80fbec:	10c5883a 	add	r2,r2,r3
  80fbf0:	100490ba 	slli	r2,r2,2
  80fbf4:	00c02074 	movhi	r3,129
  80fbf8:	10c7883a 	add	r3,r2,r3
  80fbfc:	18c56517 	ldw	r3,5524(r3)
  80fc00:	e0bffe17 	ldw	r2,-8(fp)
  80fc04:	10c00215 	stw	r3,8(r2)
  80fc08:	e13fff17 	ldw	r4,-4(fp)
  80fc0c:	080e5000 	call	80e500 <alt_release_fd>
  80fc10:	0001883a 	nop
  80fc14:	e037883a 	mov	sp,fp
  80fc18:	dfc00117 	ldw	ra,4(sp)
  80fc1c:	df000017 	ldw	fp,0(sp)
  80fc20:	dec00204 	addi	sp,sp,8
  80fc24:	f800283a 	ret

0080fc28 <alt_io_redirect>:
  80fc28:	defffb04 	addi	sp,sp,-20
  80fc2c:	dfc00415 	stw	ra,16(sp)
  80fc30:	df000315 	stw	fp,12(sp)
  80fc34:	df000304 	addi	fp,sp,12
  80fc38:	e13fff15 	stw	r4,-4(fp)
  80fc3c:	e17ffe15 	stw	r5,-8(fp)
  80fc40:	e1bffd15 	stw	r6,-12(fp)
  80fc44:	01c07fc4 	movi	r7,511
  80fc48:	01800044 	movi	r6,1
  80fc4c:	e17fff17 	ldw	r5,-4(fp)
  80fc50:	01002074 	movhi	r4,129
  80fc54:	21056604 	addi	r4,r4,5528
  80fc58:	080fb540 	call	80fb54 <alt_open_fd>
  80fc5c:	01c07fc4 	movi	r7,511
  80fc60:	000d883a 	mov	r6,zero
  80fc64:	e17ffe17 	ldw	r5,-8(fp)
  80fc68:	01002074 	movhi	r4,129
  80fc6c:	21056304 	addi	r4,r4,5516
  80fc70:	080fb540 	call	80fb54 <alt_open_fd>
  80fc74:	01c07fc4 	movi	r7,511
  80fc78:	01800044 	movi	r6,1
  80fc7c:	e17ffd17 	ldw	r5,-12(fp)
  80fc80:	01002074 	movhi	r4,129
  80fc84:	21056904 	addi	r4,r4,5540
  80fc88:	080fb540 	call	80fb54 <alt_open_fd>
  80fc8c:	0001883a 	nop
  80fc90:	e037883a 	mov	sp,fp
  80fc94:	dfc00117 	ldw	ra,4(sp)
  80fc98:	df000017 	ldw	fp,0(sp)
  80fc9c:	dec00204 	addi	sp,sp,8
  80fca0:	f800283a 	ret

0080fca4 <alt_get_errno>:
  80fca4:	defffe04 	addi	sp,sp,-8
  80fca8:	dfc00115 	stw	ra,4(sp)
  80fcac:	df000015 	stw	fp,0(sp)
  80fcb0:	d839883a 	mov	fp,sp
  80fcb4:	d0a00917 	ldw	r2,-32732(gp)
  80fcb8:	10000326 	beq	r2,zero,80fcc8 <alt_get_errno+0x24>
  80fcbc:	d0a00917 	ldw	r2,-32732(gp)
  80fcc0:	103ee83a 	callr	r2
  80fcc4:	00000106 	br	80fccc <alt_get_errno+0x28>
  80fcc8:	d0a70704 	addi	r2,gp,-25572
  80fccc:	e037883a 	mov	sp,fp
  80fcd0:	dfc00117 	ldw	ra,4(sp)
  80fcd4:	df000017 	ldw	fp,0(sp)
  80fcd8:	dec00204 	addi	sp,sp,8
  80fcdc:	f800283a 	ret

0080fce0 <alt_file_locked>:
  80fce0:	defffd04 	addi	sp,sp,-12
  80fce4:	df000215 	stw	fp,8(sp)
  80fce8:	df000204 	addi	fp,sp,8
  80fcec:	e13ffe15 	stw	r4,-8(fp)
  80fcf0:	e0bffe17 	ldw	r2,-8(fp)
  80fcf4:	10800217 	ldw	r2,8(r2)
  80fcf8:	10d00034 	orhi	r3,r2,16384
  80fcfc:	e0bffe17 	ldw	r2,-8(fp)
  80fd00:	10c00215 	stw	r3,8(r2)
  80fd04:	e03fff15 	stw	zero,-4(fp)
  80fd08:	00002306 	br	80fd98 <alt_file_locked+0xb8>
  80fd0c:	e0ffff17 	ldw	r3,-4(fp)
  80fd10:	1805883a 	mov	r2,r3
  80fd14:	1085883a 	add	r2,r2,r2
  80fd18:	10c5883a 	add	r2,r2,r3
  80fd1c:	100490ba 	slli	r2,r2,2
  80fd20:	00c02074 	movhi	r3,129
  80fd24:	10c7883a 	add	r3,r2,r3
  80fd28:	18c56317 	ldw	r3,5516(r3)
  80fd2c:	e0bffe17 	ldw	r2,-8(fp)
  80fd30:	10800017 	ldw	r2,0(r2)
  80fd34:	1880151e 	bne	r3,r2,80fd8c <alt_file_locked+0xac>
  80fd38:	e0ffff17 	ldw	r3,-4(fp)
  80fd3c:	1805883a 	mov	r2,r3
  80fd40:	1085883a 	add	r2,r2,r2
  80fd44:	10c5883a 	add	r2,r2,r3
  80fd48:	100490ba 	slli	r2,r2,2
  80fd4c:	00c02074 	movhi	r3,129
  80fd50:	10c7883a 	add	r3,r2,r3
  80fd54:	18856517 	ldw	r2,5524(r3)
  80fd58:	10000c0e 	bge	r2,zero,80fd8c <alt_file_locked+0xac>
  80fd5c:	e0ffff17 	ldw	r3,-4(fp)
  80fd60:	1805883a 	mov	r2,r3
  80fd64:	1085883a 	add	r2,r2,r2
  80fd68:	10c5883a 	add	r2,r2,r3
  80fd6c:	100490ba 	slli	r2,r2,2
  80fd70:	00c02074 	movhi	r3,129
  80fd74:	18c56304 	addi	r3,r3,5516
  80fd78:	10c5883a 	add	r2,r2,r3
  80fd7c:	e0fffe17 	ldw	r3,-8(fp)
  80fd80:	18800226 	beq	r3,r2,80fd8c <alt_file_locked+0xac>
  80fd84:	00bffcc4 	movi	r2,-13
  80fd88:	00000806 	br	80fdac <alt_file_locked+0xcc>
  80fd8c:	e0bfff17 	ldw	r2,-4(fp)
  80fd90:	10800044 	addi	r2,r2,1
  80fd94:	e0bfff15 	stw	r2,-4(fp)
  80fd98:	d0a00817 	ldw	r2,-32736(gp)
  80fd9c:	1007883a 	mov	r3,r2
  80fda0:	e0bfff17 	ldw	r2,-4(fp)
  80fda4:	18bfd92e 	bgeu	r3,r2,80fd0c <alt_file_locked+0x2c>
  80fda8:	0005883a 	mov	r2,zero
  80fdac:	e037883a 	mov	sp,fp
  80fdb0:	df000017 	ldw	fp,0(sp)
  80fdb4:	dec00104 	addi	sp,sp,4
  80fdb8:	f800283a 	ret

0080fdbc <open>:
  80fdbc:	defff604 	addi	sp,sp,-40
  80fdc0:	dfc00915 	stw	ra,36(sp)
  80fdc4:	df000815 	stw	fp,32(sp)
  80fdc8:	df000804 	addi	fp,sp,32
  80fdcc:	e13ffa15 	stw	r4,-24(fp)
  80fdd0:	e17ff915 	stw	r5,-28(fp)
  80fdd4:	e1bff815 	stw	r6,-32(fp)
  80fdd8:	00bfffc4 	movi	r2,-1
  80fddc:	e0bffe15 	stw	r2,-8(fp)
  80fde0:	00bffb44 	movi	r2,-19
  80fde4:	e0bffd15 	stw	r2,-12(fp)
  80fde8:	e03ffc15 	stw	zero,-16(fp)
  80fdec:	d1600604 	addi	r5,gp,-32744
  80fdf0:	e13ffa17 	ldw	r4,-24(fp)
  80fdf4:	080ff400 	call	80ff40 <alt_find_dev>
  80fdf8:	e0bfff15 	stw	r2,-4(fp)
  80fdfc:	e0bfff17 	ldw	r2,-4(fp)
  80fe00:	1000051e 	bne	r2,zero,80fe18 <open+0x5c>
  80fe04:	e13ffa17 	ldw	r4,-24(fp)
  80fe08:	080ffd00 	call	80ffd0 <alt_find_file>
  80fe0c:	e0bfff15 	stw	r2,-4(fp)
  80fe10:	00800044 	movi	r2,1
  80fe14:	e0bffc15 	stw	r2,-16(fp)
  80fe18:	e0bfff17 	ldw	r2,-4(fp)
  80fe1c:	10002c26 	beq	r2,zero,80fed0 <open+0x114>
  80fe20:	e13fff17 	ldw	r4,-4(fp)
  80fe24:	08100d80 	call	8100d8 <alt_get_fd>
  80fe28:	e0bffe15 	stw	r2,-8(fp)
  80fe2c:	e0bffe17 	ldw	r2,-8(fp)
  80fe30:	1000030e 	bge	r2,zero,80fe40 <open+0x84>
  80fe34:	e0bffe17 	ldw	r2,-8(fp)
  80fe38:	e0bffd15 	stw	r2,-12(fp)
  80fe3c:	00002606 	br	80fed8 <open+0x11c>
  80fe40:	e0fffe17 	ldw	r3,-8(fp)
  80fe44:	1805883a 	mov	r2,r3
  80fe48:	1085883a 	add	r2,r2,r2
  80fe4c:	10c5883a 	add	r2,r2,r3
  80fe50:	100490ba 	slli	r2,r2,2
  80fe54:	00c02074 	movhi	r3,129
  80fe58:	18c56304 	addi	r3,r3,5516
  80fe5c:	10c5883a 	add	r2,r2,r3
  80fe60:	e0bffb15 	stw	r2,-20(fp)
  80fe64:	e0fff917 	ldw	r3,-28(fp)
  80fe68:	00900034 	movhi	r2,16384
  80fe6c:	10bfffc4 	addi	r2,r2,-1
  80fe70:	1886703a 	and	r3,r3,r2
  80fe74:	e0bffb17 	ldw	r2,-20(fp)
  80fe78:	10c00215 	stw	r3,8(r2)
  80fe7c:	e0bffc17 	ldw	r2,-16(fp)
  80fe80:	1000051e 	bne	r2,zero,80fe98 <open+0xdc>
  80fe84:	e13ffb17 	ldw	r4,-20(fp)
  80fe88:	080fce00 	call	80fce0 <alt_file_locked>
  80fe8c:	e0bffd15 	stw	r2,-12(fp)
  80fe90:	e0bffd17 	ldw	r2,-12(fp)
  80fe94:	10001016 	blt	r2,zero,80fed8 <open+0x11c>
  80fe98:	e0bfff17 	ldw	r2,-4(fp)
  80fe9c:	10800317 	ldw	r2,12(r2)
  80fea0:	10000826 	beq	r2,zero,80fec4 <open+0x108>
  80fea4:	e0bfff17 	ldw	r2,-4(fp)
  80fea8:	10800317 	ldw	r2,12(r2)
  80feac:	e1fff817 	ldw	r7,-32(fp)
  80feb0:	e1bff917 	ldw	r6,-28(fp)
  80feb4:	e17ffa17 	ldw	r5,-24(fp)
  80feb8:	e13ffb17 	ldw	r4,-20(fp)
  80febc:	103ee83a 	callr	r2
  80fec0:	00000106 	br	80fec8 <open+0x10c>
  80fec4:	0005883a 	mov	r2,zero
  80fec8:	e0bffd15 	stw	r2,-12(fp)
  80fecc:	00000206 	br	80fed8 <open+0x11c>
  80fed0:	00bffb44 	movi	r2,-19
  80fed4:	e0bffd15 	stw	r2,-12(fp)
  80fed8:	e0bffd17 	ldw	r2,-12(fp)
  80fedc:	1000090e 	bge	r2,zero,80ff04 <open+0x148>
  80fee0:	e13ffe17 	ldw	r4,-8(fp)
  80fee4:	080e5000 	call	80e500 <alt_release_fd>
  80fee8:	080fca40 	call	80fca4 <alt_get_errno>
  80feec:	1007883a 	mov	r3,r2
  80fef0:	e0bffd17 	ldw	r2,-12(fp)
  80fef4:	0085c83a 	sub	r2,zero,r2
  80fef8:	18800015 	stw	r2,0(r3)
  80fefc:	00bfffc4 	movi	r2,-1
  80ff00:	00000106 	br	80ff08 <open+0x14c>
  80ff04:	e0bffe17 	ldw	r2,-8(fp)
  80ff08:	e037883a 	mov	sp,fp
  80ff0c:	dfc00117 	ldw	ra,4(sp)
  80ff10:	df000017 	ldw	fp,0(sp)
  80ff14:	dec00204 	addi	sp,sp,8
  80ff18:	f800283a 	ret

0080ff1c <altera_nios2_gen2_irq_init>:
  80ff1c:	deffff04 	addi	sp,sp,-4
  80ff20:	df000015 	stw	fp,0(sp)
  80ff24:	d839883a 	mov	fp,sp
  80ff28:	000170fa 	wrctl	ienable,zero
  80ff2c:	0001883a 	nop
  80ff30:	e037883a 	mov	sp,fp
  80ff34:	df000017 	ldw	fp,0(sp)
  80ff38:	dec00104 	addi	sp,sp,4
  80ff3c:	f800283a 	ret

0080ff40 <alt_find_dev>:
  80ff40:	defffa04 	addi	sp,sp,-24
  80ff44:	dfc00515 	stw	ra,20(sp)
  80ff48:	df000415 	stw	fp,16(sp)
  80ff4c:	df000404 	addi	fp,sp,16
  80ff50:	e13ffd15 	stw	r4,-12(fp)
  80ff54:	e17ffc15 	stw	r5,-16(fp)
  80ff58:	e0bffc17 	ldw	r2,-16(fp)
  80ff5c:	10800017 	ldw	r2,0(r2)
  80ff60:	e0bfff15 	stw	r2,-4(fp)
  80ff64:	e13ffd17 	ldw	r4,-12(fp)
  80ff68:	08010740 	call	801074 <strlen>
  80ff6c:	10800044 	addi	r2,r2,1
  80ff70:	e0bffe15 	stw	r2,-8(fp)
  80ff74:	00000d06 	br	80ffac <alt_find_dev+0x6c>
  80ff78:	e0bfff17 	ldw	r2,-4(fp)
  80ff7c:	10800217 	ldw	r2,8(r2)
  80ff80:	e0fffe17 	ldw	r3,-8(fp)
  80ff84:	180d883a 	mov	r6,r3
  80ff88:	e17ffd17 	ldw	r5,-12(fp)
  80ff8c:	1009883a 	mov	r4,r2
  80ff90:	08103000 	call	810300 <memcmp>
  80ff94:	1000021e 	bne	r2,zero,80ffa0 <alt_find_dev+0x60>
  80ff98:	e0bfff17 	ldw	r2,-4(fp)
  80ff9c:	00000706 	br	80ffbc <alt_find_dev+0x7c>
  80ffa0:	e0bfff17 	ldw	r2,-4(fp)
  80ffa4:	10800017 	ldw	r2,0(r2)
  80ffa8:	e0bfff15 	stw	r2,-4(fp)
  80ffac:	e0ffff17 	ldw	r3,-4(fp)
  80ffb0:	e0bffc17 	ldw	r2,-16(fp)
  80ffb4:	18bff01e 	bne	r3,r2,80ff78 <alt_find_dev+0x38>
  80ffb8:	0005883a 	mov	r2,zero
  80ffbc:	e037883a 	mov	sp,fp
  80ffc0:	dfc00117 	ldw	ra,4(sp)
  80ffc4:	df000017 	ldw	fp,0(sp)
  80ffc8:	dec00204 	addi	sp,sp,8
  80ffcc:	f800283a 	ret

0080ffd0 <alt_find_file>:
  80ffd0:	defffb04 	addi	sp,sp,-20
  80ffd4:	dfc00415 	stw	ra,16(sp)
  80ffd8:	df000315 	stw	fp,12(sp)
  80ffdc:	df000304 	addi	fp,sp,12
  80ffe0:	e13ffd15 	stw	r4,-12(fp)
  80ffe4:	d0a00417 	ldw	r2,-32752(gp)
  80ffe8:	e0bfff15 	stw	r2,-4(fp)
  80ffec:	00003106 	br	8100b4 <alt_find_file+0xe4>
  80fff0:	e0bfff17 	ldw	r2,-4(fp)
  80fff4:	10800217 	ldw	r2,8(r2)
  80fff8:	1009883a 	mov	r4,r2
  80fffc:	08010740 	call	801074 <strlen>
  810000:	e0bffe15 	stw	r2,-8(fp)
  810004:	e0bfff17 	ldw	r2,-4(fp)
  810008:	10c00217 	ldw	r3,8(r2)
  81000c:	e0bffe17 	ldw	r2,-8(fp)
  810010:	10bfffc4 	addi	r2,r2,-1
  810014:	1885883a 	add	r2,r3,r2
  810018:	10800003 	ldbu	r2,0(r2)
  81001c:	10803fcc 	andi	r2,r2,255
  810020:	1080201c 	xori	r2,r2,128
  810024:	10bfe004 	addi	r2,r2,-128
  810028:	10800bd8 	cmpnei	r2,r2,47
  81002c:	1000031e 	bne	r2,zero,81003c <alt_find_file+0x6c>
  810030:	e0bffe17 	ldw	r2,-8(fp)
  810034:	10bfffc4 	addi	r2,r2,-1
  810038:	e0bffe15 	stw	r2,-8(fp)
  81003c:	e0bffe17 	ldw	r2,-8(fp)
  810040:	e0fffd17 	ldw	r3,-12(fp)
  810044:	1885883a 	add	r2,r3,r2
  810048:	10800003 	ldbu	r2,0(r2)
  81004c:	10803fcc 	andi	r2,r2,255
  810050:	1080201c 	xori	r2,r2,128
  810054:	10bfe004 	addi	r2,r2,-128
  810058:	10800be0 	cmpeqi	r2,r2,47
  81005c:	1000081e 	bne	r2,zero,810080 <alt_find_file+0xb0>
  810060:	e0bffe17 	ldw	r2,-8(fp)
  810064:	e0fffd17 	ldw	r3,-12(fp)
  810068:	1885883a 	add	r2,r3,r2
  81006c:	10800003 	ldbu	r2,0(r2)
  810070:	10803fcc 	andi	r2,r2,255
  810074:	1080201c 	xori	r2,r2,128
  810078:	10bfe004 	addi	r2,r2,-128
  81007c:	10000a1e 	bne	r2,zero,8100a8 <alt_find_file+0xd8>
  810080:	e0bfff17 	ldw	r2,-4(fp)
  810084:	10800217 	ldw	r2,8(r2)
  810088:	e0fffe17 	ldw	r3,-8(fp)
  81008c:	180d883a 	mov	r6,r3
  810090:	e17ffd17 	ldw	r5,-12(fp)
  810094:	1009883a 	mov	r4,r2
  810098:	08103000 	call	810300 <memcmp>
  81009c:	1000021e 	bne	r2,zero,8100a8 <alt_find_file+0xd8>
  8100a0:	e0bfff17 	ldw	r2,-4(fp)
  8100a4:	00000706 	br	8100c4 <alt_find_file+0xf4>
  8100a8:	e0bfff17 	ldw	r2,-4(fp)
  8100ac:	10800017 	ldw	r2,0(r2)
  8100b0:	e0bfff15 	stw	r2,-4(fp)
  8100b4:	e0ffff17 	ldw	r3,-4(fp)
  8100b8:	d0a00404 	addi	r2,gp,-32752
  8100bc:	18bfcc1e 	bne	r3,r2,80fff0 <alt_find_file+0x20>
  8100c0:	0005883a 	mov	r2,zero
  8100c4:	e037883a 	mov	sp,fp
  8100c8:	dfc00117 	ldw	ra,4(sp)
  8100cc:	df000017 	ldw	fp,0(sp)
  8100d0:	dec00204 	addi	sp,sp,8
  8100d4:	f800283a 	ret

008100d8 <alt_get_fd>:
  8100d8:	defffc04 	addi	sp,sp,-16
  8100dc:	df000315 	stw	fp,12(sp)
  8100e0:	df000304 	addi	fp,sp,12
  8100e4:	e13ffd15 	stw	r4,-12(fp)
  8100e8:	00bffa04 	movi	r2,-24
  8100ec:	e0bffe15 	stw	r2,-8(fp)
  8100f0:	e03fff15 	stw	zero,-4(fp)
  8100f4:	00001d06 	br	81016c <alt_get_fd+0x94>
  8100f8:	e0ffff17 	ldw	r3,-4(fp)
  8100fc:	1805883a 	mov	r2,r3
  810100:	1085883a 	add	r2,r2,r2
  810104:	10c5883a 	add	r2,r2,r3
  810108:	100490ba 	slli	r2,r2,2
  81010c:	00c02074 	movhi	r3,129
  810110:	10c7883a 	add	r3,r2,r3
  810114:	18856317 	ldw	r2,5516(r3)
  810118:	1000111e 	bne	r2,zero,810160 <alt_get_fd+0x88>
  81011c:	e0ffff17 	ldw	r3,-4(fp)
  810120:	1805883a 	mov	r2,r3
  810124:	1085883a 	add	r2,r2,r2
  810128:	10c5883a 	add	r2,r2,r3
  81012c:	100490ba 	slli	r2,r2,2
  810130:	e13ffd17 	ldw	r4,-12(fp)
  810134:	00c02074 	movhi	r3,129
  810138:	10c7883a 	add	r3,r2,r3
  81013c:	19056315 	stw	r4,5516(r3)
  810140:	d0e00817 	ldw	r3,-32736(gp)
  810144:	e0bfff17 	ldw	r2,-4(fp)
  810148:	1880020e 	bge	r3,r2,810154 <alt_get_fd+0x7c>
  81014c:	e0bfff17 	ldw	r2,-4(fp)
  810150:	d0a00815 	stw	r2,-32736(gp)
  810154:	e0bfff17 	ldw	r2,-4(fp)
  810158:	e0bffe15 	stw	r2,-8(fp)
  81015c:	00000706 	br	81017c <alt_get_fd+0xa4>
  810160:	e0bfff17 	ldw	r2,-4(fp)
  810164:	10800044 	addi	r2,r2,1
  810168:	e0bfff15 	stw	r2,-4(fp)
  81016c:	e0bfff17 	ldw	r2,-4(fp)
  810170:	10800810 	cmplti	r2,r2,32
  810174:	103fe01e 	bne	r2,zero,8100f8 <alt_get_fd+0x20>
  810178:	0001883a 	nop
  81017c:	e0bffe17 	ldw	r2,-8(fp)
  810180:	e037883a 	mov	sp,fp
  810184:	df000017 	ldw	fp,0(sp)
  810188:	dec00104 	addi	sp,sp,4
  81018c:	f800283a 	ret

00810190 <alt_icache_flush>:
  810190:	defffb04 	addi	sp,sp,-20
  810194:	df000415 	stw	fp,16(sp)
  810198:	df000404 	addi	fp,sp,16
  81019c:	e13ffd15 	stw	r4,-12(fp)
  8101a0:	e17ffc15 	stw	r5,-16(fp)
  8101a4:	e0bffc17 	ldw	r2,-16(fp)
  8101a8:	10820070 	cmpltui	r2,r2,2049
  8101ac:	1000021e 	bne	r2,zero,8101b8 <alt_icache_flush+0x28>
  8101b0:	00820004 	movi	r2,2048
  8101b4:	e0bffc15 	stw	r2,-16(fp)
  8101b8:	e0fffd17 	ldw	r3,-12(fp)
  8101bc:	e0bffc17 	ldw	r2,-16(fp)
  8101c0:	1885883a 	add	r2,r3,r2
  8101c4:	e0bffe15 	stw	r2,-8(fp)
  8101c8:	e0bffd17 	ldw	r2,-12(fp)
  8101cc:	e0bfff15 	stw	r2,-4(fp)
  8101d0:	00000506 	br	8101e8 <alt_icache_flush+0x58>
  8101d4:	e0bfff17 	ldw	r2,-4(fp)
  8101d8:	1000603a 	flushi	r2
  8101dc:	e0bfff17 	ldw	r2,-4(fp)
  8101e0:	10800804 	addi	r2,r2,32
  8101e4:	e0bfff15 	stw	r2,-4(fp)
  8101e8:	e0ffff17 	ldw	r3,-4(fp)
  8101ec:	e0bffe17 	ldw	r2,-8(fp)
  8101f0:	18bff836 	bltu	r3,r2,8101d4 <alt_icache_flush+0x44>
  8101f4:	e0bffd17 	ldw	r2,-12(fp)
  8101f8:	108007cc 	andi	r2,r2,31
  8101fc:	10000226 	beq	r2,zero,810208 <alt_icache_flush+0x78>
  810200:	e0bfff17 	ldw	r2,-4(fp)
  810204:	1000603a 	flushi	r2
  810208:	0000203a 	flushp
  81020c:	0001883a 	nop
  810210:	e037883a 	mov	sp,fp
  810214:	df000017 	ldw	fp,0(sp)
  810218:	dec00104 	addi	sp,sp,4
  81021c:	f800283a 	ret

00810220 <alt_exception_cause_generated_bad_addr>:
  810220:	defffe04 	addi	sp,sp,-8
  810224:	df000115 	stw	fp,4(sp)
  810228:	df000104 	addi	fp,sp,4
  81022c:	e13fff15 	stw	r4,-4(fp)
  810230:	e0bfff17 	ldw	r2,-4(fp)
  810234:	10bffe84 	addi	r2,r2,-6
  810238:	10c00428 	cmpgeui	r3,r2,16
  81023c:	1800191e 	bne	r3,zero,8102a4 <alt_exception_cause_generated_bad_addr+0x84>
  810240:	100690ba 	slli	r3,r2,2
  810244:	00802074 	movhi	r2,129
  810248:	1885883a 	add	r2,r3,r2
  81024c:	10809517 	ldw	r2,596(r2)
  810250:	1000683a 	jmp	r2
  810254:	00810294 	movui	r2,1034
  810258:	00810294 	movui	r2,1034
  81025c:	008102a4 	muli	r2,zero,1034
  810260:	008102a4 	muli	r2,zero,1034
  810264:	008102a4 	muli	r2,zero,1034
  810268:	00810294 	movui	r2,1034
  81026c:	0081029c 	xori	r2,zero,1034
  810270:	008102a4 	muli	r2,zero,1034
  810274:	00810294 	movui	r2,1034
  810278:	00810294 	movui	r2,1034
  81027c:	008102a4 	muli	r2,zero,1034
  810280:	00810294 	movui	r2,1034
  810284:	0081029c 	xori	r2,zero,1034
  810288:	008102a4 	muli	r2,zero,1034
  81028c:	008102a4 	muli	r2,zero,1034
  810290:	00810294 	movui	r2,1034
  810294:	00800044 	movi	r2,1
  810298:	00000306 	br	8102a8 <alt_exception_cause_generated_bad_addr+0x88>
  81029c:	0005883a 	mov	r2,zero
  8102a0:	00000106 	br	8102a8 <alt_exception_cause_generated_bad_addr+0x88>
  8102a4:	0005883a 	mov	r2,zero
  8102a8:	e037883a 	mov	sp,fp
  8102ac:	df000017 	ldw	fp,0(sp)
  8102b0:	dec00104 	addi	sp,sp,4
  8102b4:	f800283a 	ret

008102b8 <atexit>:
  8102b8:	200b883a 	mov	r5,r4
  8102bc:	000f883a 	mov	r7,zero
  8102c0:	000d883a 	mov	r6,zero
  8102c4:	0009883a 	mov	r4,zero
  8102c8:	08103781 	jmpi	810378 <__register_exitproc>

008102cc <exit>:
  8102cc:	defffe04 	addi	sp,sp,-8
  8102d0:	000b883a 	mov	r5,zero
  8102d4:	dc000015 	stw	r16,0(sp)
  8102d8:	dfc00115 	stw	ra,4(sp)
  8102dc:	2021883a 	mov	r16,r4
  8102e0:	08104080 	call	810408 <__call_exitprocs>
  8102e4:	00802074 	movhi	r2,129
  8102e8:	1109db17 	ldw	r4,10092(r2)
  8102ec:	20800f17 	ldw	r2,60(r4)
  8102f0:	10000126 	beq	r2,zero,8102f8 <exit+0x2c>
  8102f4:	103ee83a 	callr	r2
  8102f8:	8009883a 	mov	r4,r16
  8102fc:	080dd4c0 	call	80dd4c <_exit>

00810300 <memcmp>:
  810300:	30800130 	cmpltui	r2,r6,4
  810304:	10000b1e 	bne	r2,zero,810334 <memcmp+0x34>
  810308:	2144b03a 	or	r2,r4,r5
  81030c:	108000cc 	andi	r2,r2,3
  810310:	1000171e 	bne	r2,zero,810370 <memcmp+0x70>
  810314:	20c00017 	ldw	r3,0(r4)
  810318:	28800017 	ldw	r2,0(r5)
  81031c:	1880141e 	bne	r3,r2,810370 <memcmp+0x70>
  810320:	31bfff04 	addi	r6,r6,-4
  810324:	30800128 	cmpgeui	r2,r6,4
  810328:	21000104 	addi	r4,r4,4
  81032c:	29400104 	addi	r5,r5,4
  810330:	103ff81e 	bne	r2,zero,810314 <memcmp+0x14>
  810334:	30bfffc4 	addi	r2,r6,-1
  810338:	30000b26 	beq	r6,zero,810368 <memcmp+0x68>
  81033c:	11800044 	addi	r6,r2,1
  810340:	298d883a 	add	r6,r5,r6
  810344:	00000106 	br	81034c <memcmp+0x4c>
  810348:	29800726 	beq	r5,r6,810368 <memcmp+0x68>
  81034c:	20800003 	ldbu	r2,0(r4)
  810350:	28c00003 	ldbu	r3,0(r5)
  810354:	21000044 	addi	r4,r4,1
  810358:	29400044 	addi	r5,r5,1
  81035c:	10fffa26 	beq	r2,r3,810348 <memcmp+0x48>
  810360:	10c5c83a 	sub	r2,r2,r3
  810364:	f800283a 	ret
  810368:	0005883a 	mov	r2,zero
  81036c:	f800283a 	ret
  810370:	30bfffc4 	addi	r2,r6,-1
  810374:	003ff106 	br	81033c <memcmp+0x3c>

00810378 <__register_exitproc>:
  810378:	00802074 	movhi	r2,129
  81037c:	10c9db17 	ldw	r3,10092(r2)
  810380:	18805217 	ldw	r2,328(r3)
  810384:	10001726 	beq	r2,zero,8103e4 <__register_exitproc+0x6c>
  810388:	10c00117 	ldw	r3,4(r2)
  81038c:	1a000808 	cmpgei	r8,r3,32
  810390:	40001b1e 	bne	r8,zero,810400 <__register_exitproc+0x88>
  810394:	20000b26 	beq	r4,zero,8103c4 <__register_exitproc+0x4c>
  810398:	181090ba 	slli	r8,r3,2
  81039c:	02400044 	movi	r9,1
  8103a0:	48d2983a 	sll	r9,r9,r3
  8103a4:	1211883a 	add	r8,r2,r8
  8103a8:	41802215 	stw	r6,136(r8)
  8103ac:	11806217 	ldw	r6,392(r2)
  8103b0:	21000098 	cmpnei	r4,r4,2
  8103b4:	324cb03a 	or	r6,r6,r9
  8103b8:	11806215 	stw	r6,392(r2)
  8103bc:	41c04215 	stw	r7,264(r8)
  8103c0:	20000b26 	beq	r4,zero,8103f0 <__register_exitproc+0x78>
  8103c4:	19000084 	addi	r4,r3,2
  8103c8:	200890ba 	slli	r4,r4,2
  8103cc:	18c00044 	addi	r3,r3,1
  8103d0:	10c00115 	stw	r3,4(r2)
  8103d4:	1105883a 	add	r2,r2,r4
  8103d8:	11400015 	stw	r5,0(r2)
  8103dc:	0005883a 	mov	r2,zero
  8103e0:	f800283a 	ret
  8103e4:	18805304 	addi	r2,r3,332
  8103e8:	18805215 	stw	r2,328(r3)
  8103ec:	003fe606 	br	810388 <__register_exitproc+0x10>
  8103f0:	11006317 	ldw	r4,396(r2)
  8103f4:	2252b03a 	or	r9,r4,r9
  8103f8:	12406315 	stw	r9,396(r2)
  8103fc:	003ff106 	br	8103c4 <__register_exitproc+0x4c>
  810400:	00bfffc4 	movi	r2,-1
  810404:	f800283a 	ret

00810408 <__call_exitprocs>:
  810408:	defff704 	addi	sp,sp,-36
  81040c:	00802074 	movhi	r2,129
  810410:	dcc00315 	stw	r19,12(sp)
  810414:	14c9db17 	ldw	r19,10092(r2)
  810418:	dc800215 	stw	r18,8(sp)
  81041c:	dfc00815 	stw	ra,32(sp)
  810420:	9c805217 	ldw	r18,328(r19)
  810424:	ddc00715 	stw	r23,28(sp)
  810428:	dd800615 	stw	r22,24(sp)
  81042c:	dd400515 	stw	r21,20(sp)
  810430:	dd000415 	stw	r20,16(sp)
  810434:	dc400115 	stw	r17,4(sp)
  810438:	dc000015 	stw	r16,0(sp)
  81043c:	90001026 	beq	r18,zero,810480 <__call_exitprocs+0x78>
  810440:	202b883a 	mov	r21,r4
  810444:	282d883a 	mov	r22,r5
  810448:	05000044 	movi	r20,1
  81044c:	94000117 	ldw	r16,4(r18)
  810450:	847fffc4 	addi	r17,r16,-1
  810454:	88000a16 	blt	r17,zero,810480 <__call_exitprocs+0x78>
  810458:	84000044 	addi	r16,r16,1
  81045c:	802090ba 	slli	r16,r16,2
  810460:	9421883a 	add	r16,r18,r16
  810464:	b0001126 	beq	r22,zero,8104ac <__call_exitprocs+0xa4>
  810468:	80804017 	ldw	r2,256(r16)
  81046c:	15800f26 	beq	r2,r22,8104ac <__call_exitprocs+0xa4>
  810470:	8c7fffc4 	addi	r17,r17,-1
  810474:	88bfffd8 	cmpnei	r2,r17,-1
  810478:	843fff04 	addi	r16,r16,-4
  81047c:	103ff91e 	bne	r2,zero,810464 <__call_exitprocs+0x5c>
  810480:	dfc00817 	ldw	ra,32(sp)
  810484:	ddc00717 	ldw	r23,28(sp)
  810488:	dd800617 	ldw	r22,24(sp)
  81048c:	dd400517 	ldw	r21,20(sp)
  810490:	dd000417 	ldw	r20,16(sp)
  810494:	dcc00317 	ldw	r19,12(sp)
  810498:	dc800217 	ldw	r18,8(sp)
  81049c:	dc400117 	ldw	r17,4(sp)
  8104a0:	dc000017 	ldw	r16,0(sp)
  8104a4:	dec00904 	addi	sp,sp,36
  8104a8:	f800283a 	ret
  8104ac:	90800117 	ldw	r2,4(r18)
  8104b0:	81800017 	ldw	r6,0(r16)
  8104b4:	10bfffc4 	addi	r2,r2,-1
  8104b8:	14401726 	beq	r2,r17,810518 <__call_exitprocs+0x110>
  8104bc:	80000015 	stw	zero,0(r16)
  8104c0:	303feb26 	beq	r6,zero,810470 <__call_exitprocs+0x68>
  8104c4:	a446983a 	sll	r3,r20,r17
  8104c8:	90806217 	ldw	r2,392(r18)
  8104cc:	95c00117 	ldw	r23,4(r18)
  8104d0:	1884703a 	and	r2,r3,r2
  8104d4:	1000081e 	bne	r2,zero,8104f8 <__call_exitprocs+0xf0>
  8104d8:	303ee83a 	callr	r6
  8104dc:	90c00117 	ldw	r3,4(r18)
  8104e0:	98805217 	ldw	r2,328(r19)
  8104e4:	1dc0011e 	bne	r3,r23,8104ec <__call_exitprocs+0xe4>
  8104e8:	90bfe126 	beq	r18,r2,810470 <__call_exitprocs+0x68>
  8104ec:	103fe426 	beq	r2,zero,810480 <__call_exitprocs+0x78>
  8104f0:	1025883a 	mov	r18,r2
  8104f4:	003fd506 	br	81044c <__call_exitprocs+0x44>
  8104f8:	90806317 	ldw	r2,396(r18)
  8104fc:	81002017 	ldw	r4,128(r16)
  810500:	1886703a 	and	r3,r3,r2
  810504:	1800061e 	bne	r3,zero,810520 <__call_exitprocs+0x118>
  810508:	200b883a 	mov	r5,r4
  81050c:	a809883a 	mov	r4,r21
  810510:	303ee83a 	callr	r6
  810514:	003ff106 	br	8104dc <__call_exitprocs+0xd4>
  810518:	94400115 	stw	r17,4(r18)
  81051c:	003fe806 	br	8104c0 <__call_exitprocs+0xb8>
  810520:	303ee83a 	callr	r6
  810524:	003fed06 	br	8104dc <__call_exitprocs+0xd4>
