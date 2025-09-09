
a.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	50                   	push   %rax
    1001:	58                   	pop    %rax
    1002:	c3                   	ret

Disassembly of section .plt:

0000000000001010 <printf@plt-0x10>:
    1010:	ff 35 a2 2f 00 00    	push   0x2fa2(%rip)        # 3fb8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1016:	ff 25 a4 2f 00 00    	jmp    *0x2fa4(%rip)        # 3fc0 <_GLOBAL_OFFSET_TABLE_+0x10>
    101c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001020 <printf@plt>:
    1020:	ff 25 a2 2f 00 00    	jmp    *0x2fa2(%rip)        # 3fc8 <printf>
    1026:	68 00 00 00 00       	push   $0x0
    102b:	e9 e0 ff ff ff       	jmp    1010 <_init+0x10>

0000000000001030 <__libc_start_main@plt>:
    1030:	ff 25 9a 2f 00 00    	jmp    *0x2f9a(%rip)        # 3fd0 <__libc_start_main>
    1036:	68 01 00 00 00       	push   $0x1
    103b:	e9 d0 ff ff ff       	jmp    1010 <_init+0x10>

Disassembly of section .text:

0000000000001040 <_start>:
    1040:	48 31 ed             	xor    %rbp,%rbp
    1043:	48 89 e7             	mov    %rsp,%rdi
    1046:	48 8d 35 a3 2d 00 00 	lea    0x2da3(%rip),%rsi        # 3df0 <_DYNAMIC>
    104d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1051:	e8 00 00 00 00       	call   1056 <_start_c>

0000000000001056 <_start_c>:
    1056:	8b 37                	mov    (%rdi),%esi
    1058:	48 8d 57 08          	lea    0x8(%rdi),%rdx
    105c:	4c 8d 05 8c 01 00 00 	lea    0x18c(%rip),%r8        # 11ef <_fini>
    1063:	45 31 c9             	xor    %r9d,%r9d
    1066:	48 8d 0d 93 ff ff ff 	lea    -0x6d(%rip),%rcx        # 1000 <_init>
    106d:	48 8d 3d 11 01 00 00 	lea    0x111(%rip),%rdi        # 1185 <main>
    1074:	e9 b7 ff ff ff       	jmp    1030 <__libc_start_main@plt>
    1079:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001080 <deregister_tm_clones>:
    1080:	48 8d 3d 81 2f 00 00 	lea    0x2f81(%rip),%rdi        # 4008 <__TMC_END__>
    1087:	48 8d 05 7a 2f 00 00 	lea    0x2f7a(%rip),%rax        # 4008 <__TMC_END__>
    108e:	48 39 f8             	cmp    %rdi,%rax
    1091:	74 15                	je     10a8 <deregister_tm_clones+0x28>
    1093:	48 8b 05 56 2f 00 00 	mov    0x2f56(%rip),%rax        # 3ff0 <_ITM_deregisterTMCloneTable>
    109a:	48 85 c0             	test   %rax,%rax
    109d:	74 09                	je     10a8 <deregister_tm_clones+0x28>
    109f:	ff e0                	jmp    *%rax
    10a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10a8:	c3                   	ret
    10a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010b0 <register_tm_clones>:
    10b0:	48 8d 3d 51 2f 00 00 	lea    0x2f51(%rip),%rdi        # 4008 <__TMC_END__>
    10b7:	48 8d 35 4a 2f 00 00 	lea    0x2f4a(%rip),%rsi        # 4008 <__TMC_END__>
    10be:	48 29 fe             	sub    %rdi,%rsi
    10c1:	48 89 f0             	mov    %rsi,%rax
    10c4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10c8:	48 c1 f8 03          	sar    $0x3,%rax
    10cc:	48 01 c6             	add    %rax,%rsi
    10cf:	48 d1 fe             	sar    $1,%rsi
    10d2:	74 14                	je     10e8 <register_tm_clones+0x38>
    10d4:	48 8b 05 0d 2f 00 00 	mov    0x2f0d(%rip),%rax        # 3fe8 <_ITM_registerTMCloneTable>
    10db:	48 85 c0             	test   %rax,%rax
    10de:	74 08                	je     10e8 <register_tm_clones+0x38>
    10e0:	ff e0                	jmp    *%rax
    10e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10e8:	c3                   	ret
    10e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010f0 <__do_global_dtors_aux>:
    10f0:	80 3d 29 2f 00 00 00 	cmpb   $0x0,0x2f29(%rip)        # 4020 <completed.1>
    10f7:	75 47                	jne    1140 <__do_global_dtors_aux+0x50>
    10f9:	55                   	push   %rbp
    10fa:	48 83 3d d6 2e 00 00 	cmpq   $0x0,0x2ed6(%rip)        # 3fd8 <__cxa_finalize>
    1101:	00 
    1102:	48 89 e5             	mov    %rsp,%rbp
    1105:	74 0d                	je     1114 <__do_global_dtors_aux+0x24>
    1107:	48 8b 3d f2 2e 00 00 	mov    0x2ef2(%rip),%rdi        # 4000 <__dso_handle>
    110e:	ff 15 c4 2e 00 00    	call   *0x2ec4(%rip)        # 3fd8 <__cxa_finalize>
    1114:	e8 67 ff ff ff       	call   1080 <deregister_tm_clones>
    1119:	48 83 3d bf 2e 00 00 	cmpq   $0x0,0x2ebf(%rip)        # 3fe0 <__deregister_frame_info>
    1120:	00 
    1121:	74 0d                	je     1130 <__do_global_dtors_aux+0x40>
    1123:	48 8d 3d 56 0f 00 00 	lea    0xf56(%rip),%rdi        # 2080 <__EH_FRAME_BEGIN__>
    112a:	ff 15 b0 2e 00 00    	call   *0x2eb0(%rip)        # 3fe0 <__deregister_frame_info>
    1130:	c6 05 e9 2e 00 00 01 	movb   $0x1,0x2ee9(%rip)        # 4020 <completed.1>
    1137:	5d                   	pop    %rbp
    1138:	c3                   	ret
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1140:	c3                   	ret
    1141:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1148:	00 00 00 00 
    114c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001150 <frame_dummy>:
    1150:	48 83 3d a0 2e 00 00 	cmpq   $0x0,0x2ea0(%rip)        # 3ff8 <__register_frame_info>
    1157:	00 
    1158:	74 26                	je     1180 <frame_dummy+0x30>
    115a:	55                   	push   %rbp
    115b:	48 8d 35 de 2e 00 00 	lea    0x2ede(%rip),%rsi        # 4040 <object.0>
    1162:	48 8d 3d 17 0f 00 00 	lea    0xf17(%rip),%rdi        # 2080 <__EH_FRAME_BEGIN__>
    1169:	48 89 e5             	mov    %rsp,%rbp
    116c:	ff 15 86 2e 00 00    	call   *0x2e86(%rip)        # 3ff8 <__register_frame_info>
    1172:	5d                   	pop    %rbp
    1173:	e9 38 ff ff ff       	jmp    10b0 <register_tm_clones>
    1178:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    117f:	00 
    1180:	e9 2b ff ff ff       	jmp    10b0 <register_tm_clones>

0000000000001185 <main>:
    1185:	55                   	push   %rbp
    1186:	48 89 e5             	mov    %rsp,%rbp
    1189:	48 83 ec 10          	sub    $0x10,%rsp
    118d:	c6 45 fe f0          	movb   $0xf0,-0x2(%rbp)
    1191:	c6 45 ff 0f          	movb   $0xf,-0x1(%rbp)
    1195:	0f b6 45 fe          	movzbl -0x2(%rbp),%eax
    1199:	89 c6                	mov    %eax,%esi
    119b:	48 8d 05 5e 0e 00 00 	lea    0xe5e(%rip),%rax        # 2000 <_fini+0xe11>
    11a2:	48 89 c7             	mov    %rax,%rdi
    11a5:	b8 00 00 00 00       	mov    $0x0,%eax
    11aa:	e8 71 fe ff ff       	call   1020 <printf@plt>
    11af:	0f b6 45 fe          	movzbl -0x2(%rbp),%eax
    11b3:	f7 d0                	not    %eax
    11b5:	89 c6                	mov    %eax,%esi
    11b7:	48 8d 05 4b 0e 00 00 	lea    0xe4b(%rip),%rax        # 2009 <_fini+0xe1a>
    11be:	48 89 c7             	mov    %rax,%rdi
    11c1:	b8 00 00 00 00       	mov    $0x0,%eax
    11c6:	e8 55 fe ff ff       	call   1020 <printf@plt>
    11cb:	f6 55 fe             	notb   -0x2(%rbp)
    11ce:	0f b6 45 fe          	movzbl -0x2(%rbp),%eax
    11d2:	89 c6                	mov    %eax,%esi
    11d4:	48 8d 05 38 0e 00 00 	lea    0xe38(%rip),%rax        # 2013 <_fini+0xe24>
    11db:	48 89 c7             	mov    %rax,%rdi
    11de:	b8 00 00 00 00       	mov    $0x0,%eax
    11e3:	e8 38 fe ff ff       	call   1020 <printf@plt>
    11e8:	b8 00 00 00 00       	mov    $0x0,%eax
    11ed:	c9                   	leave
    11ee:	c3                   	ret

Disassembly of section .fini:

00000000000011ef <_fini>:
    11ef:	50                   	push   %rax
    11f0:	58                   	pop    %rax
    11f1:	c3                   	ret
