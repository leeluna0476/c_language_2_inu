
a.out:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000100000460 <_main>:
100000460: d100c3ff    	sub	sp, sp, #0x30
100000464: a9027bfd    	stp	x29, x30, [sp, #0x20]
100000468: 910083fd    	add	x29, sp, #0x20
10000046c: 52800008    	mov	w8, #0x0                ; =0
100000470: b81f43a8    	stur	w8, [x29, #-0xc]
100000474: b81fc3bf    	stur	wzr, [x29, #-0x4]
100000478: 52801e08    	mov	w8, #0xf0               ; =240
10000047c: 381fb3a8    	sturb	w8, [x29, #-0x5]
100000480: 528001e8    	mov	w8, #0xf                ; =15
100000484: 381fa3a8    	sturb	w8, [x29, #-0x6]
100000488: 385fb3aa    	ldurb	w10, [x29, #-0x5]
10000048c: 910003e9    	mov	x9, sp
100000490: aa0a03e8    	mov	x8, x10
100000494: f9000128    	str	x8, [x9]
100000498: 90000000    	adrp	x0, 0x100000000 <_printf+0x100000000>
10000049c: 91142000    	add	x0, x0, #0x508
1000004a0: 94000017    	bl	0x1000004fc <_printf+0x1000004fc>
1000004a4: 385fb3a8    	ldurb	w8, [x29, #-0x5]
1000004a8: 2a2803ea    	mvn	w10, w8
1000004ac: 910003e9    	mov	x9, sp
1000004b0: aa0a03e8    	mov	x8, x10
1000004b4: f9000128    	str	x8, [x9]
1000004b8: 90000000    	adrp	x0, 0x100000000 <_printf+0x100000000>
1000004bc: 91144400    	add	x0, x0, #0x511
1000004c0: 9400000f    	bl	0x1000004fc <_printf+0x1000004fc>
1000004c4: 385fb3a8    	ldurb	w8, [x29, #-0x5]
1000004c8: 2a2803ea    	mvn	w10, w8
1000004cc: 381fb3aa    	sturb	w10, [x29, #-0x5]
1000004d0: 910003e9    	mov	x9, sp
1000004d4: aa0a03e8    	mov	x8, x10
1000004d8: 92401d08    	and	x8, x8, #0xff
1000004dc: f9000128    	str	x8, [x9]
1000004e0: 90000000    	adrp	x0, 0x100000000 <_printf+0x100000000>
1000004e4: 91146c00    	add	x0, x0, #0x51b
1000004e8: 94000005    	bl	0x1000004fc <_printf+0x1000004fc>
1000004ec: b85f43a0    	ldur	w0, [x29, #-0xc]
1000004f0: a9427bfd    	ldp	x29, x30, [sp, #0x20]
1000004f4: 9100c3ff    	add	sp, sp, #0x30
1000004f8: d65f03c0    	ret

Disassembly of section __TEXT,__stubs:

00000001000004fc <__stubs>:
1000004fc: 90000030    	adrp	x16, 0x100004000 <_printf+0x100004000>
100000500: f9400210    	ldr	x16, [x16]
100000504: d61f0200    	br	x16
