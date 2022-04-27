
bomb-quiet:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 2f 00 00 	mov    0x2fe9(%rip),%rax        # 403ff8 <__gmon_start__>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	callq  *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	retq   

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 2f 00 00    	pushq  0x2fe2(%rip)        # 404008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 2f 00 00    	jmpq   *0x2fe4(%rip)        # 404010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <getenv@plt>:
  401030:	ff 25 e2 2f 00 00    	jmpq   *0x2fe2(%rip)        # 404018 <getenv@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	pushq  $0x0
  40103b:	e9 e0 ff ff ff       	jmpq   401020 <.plt>

0000000000401040 <puts@plt>:
  401040:	ff 25 da 2f 00 00    	jmpq   *0x2fda(%rip)        # 404020 <puts@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	pushq  $0x1
  40104b:	e9 d0 ff ff ff       	jmpq   401020 <.plt>

0000000000401050 <fgets@plt>:
  401050:	ff 25 d2 2f 00 00    	jmpq   *0x2fd2(%rip)        # 404028 <fgets@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	pushq  $0x2
  40105b:	e9 c0 ff ff ff       	jmpq   401020 <.plt>

0000000000401060 <signal@plt>:
  401060:	ff 25 ca 2f 00 00    	jmpq   *0x2fca(%rip)        # 404030 <signal@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	pushq  $0x3
  40106b:	e9 b0 ff ff ff       	jmpq   401020 <.plt>

0000000000401070 <strtol@plt>:
  401070:	ff 25 c2 2f 00 00    	jmpq   *0x2fc2(%rip)        # 404038 <strtol@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	pushq  $0x4
  40107b:	e9 a0 ff ff ff       	jmpq   401020 <.plt>

0000000000401080 <fflush@plt>:
  401080:	ff 25 ba 2f 00 00    	jmpq   *0x2fba(%rip)        # 404040 <fflush@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	pushq  $0x5
  40108b:	e9 90 ff ff ff       	jmpq   401020 <.plt>

0000000000401090 <__isoc99_sscanf@plt>:
  401090:	ff 25 b2 2f 00 00    	jmpq   *0x2fb2(%rip)        # 404048 <__isoc99_sscanf@GLIBC_2.7>
  401096:	68 06 00 00 00       	pushq  $0x6
  40109b:	e9 80 ff ff ff       	jmpq   401020 <.plt>

00000000004010a0 <__printf_chk@plt>:
  4010a0:	ff 25 aa 2f 00 00    	jmpq   *0x2faa(%rip)        # 404050 <__printf_chk@GLIBC_2.3.4>
  4010a6:	68 07 00 00 00       	pushq  $0x7
  4010ab:	e9 70 ff ff ff       	jmpq   401020 <.plt>

00000000004010b0 <fopen@plt>:
  4010b0:	ff 25 a2 2f 00 00    	jmpq   *0x2fa2(%rip)        # 404058 <fopen@GLIBC_2.2.5>
  4010b6:	68 08 00 00 00       	pushq  $0x8
  4010bb:	e9 60 ff ff ff       	jmpq   401020 <.plt>

00000000004010c0 <exit@plt>:
  4010c0:	ff 25 9a 2f 00 00    	jmpq   *0x2f9a(%rip)        # 404060 <exit@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	pushq  $0x9
  4010cb:	e9 50 ff ff ff       	jmpq   401020 <.plt>

00000000004010d0 <sleep@plt>:
  4010d0:	ff 25 92 2f 00 00    	jmpq   *0x2f92(%rip)        # 404068 <sleep@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	pushq  $0xa
  4010db:	e9 40 ff ff ff       	jmpq   401020 <.plt>

00000000004010e0 <__ctype_b_loc@plt>:
  4010e0:	ff 25 8a 2f 00 00    	jmpq   *0x2f8a(%rip)        # 404070 <__ctype_b_loc@GLIBC_2.3>
  4010e6:	68 0b 00 00 00       	pushq  $0xb
  4010eb:	e9 30 ff ff ff       	jmpq   401020 <.plt>

Disassembly of section .text:

00000000004010f0 <_start>:
  4010f0:	f3 0f 1e fa          	endbr64 
  4010f4:	31 ed                	xor    %ebp,%ebp
  4010f6:	49 89 d1             	mov    %rdx,%r9
  4010f9:	5e                   	pop    %rsi
  4010fa:	48 89 e2             	mov    %rsp,%rdx
  4010fd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401101:	50                   	push   %rax
  401102:	54                   	push   %rsp
  401103:	49 c7 c0 b0 1a 40 00 	mov    $0x401ab0,%r8
  40110a:	48 c7 c1 40 1a 40 00 	mov    $0x401a40,%rcx
  401111:	48 c7 c7 d7 11 40 00 	mov    $0x4011d7,%rdi
  401118:	ff 15 d2 2e 00 00    	callq  *0x2ed2(%rip)        # 403ff0 <__libc_start_main@GLIBC_2.2.5>
  40111e:	f4                   	hlt    
  40111f:	90                   	nop

0000000000401120 <_dl_relocate_static_pie>:
  401120:	f3 0f 1e fa          	endbr64 
  401124:	c3                   	retq   
  401125:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40112c:	00 00 00 
  40112f:	90                   	nop

0000000000401130 <deregister_tm_clones>:
  401130:	55                   	push   %rbp
  401131:	b8 00 47 40 00       	mov    $0x404700,%eax
  401136:	48 3d 00 47 40 00    	cmp    $0x404700,%rax
  40113c:	48 89 e5             	mov    %rsp,%rbp
  40113f:	74 17                	je     401158 <deregister_tm_clones+0x28>
  401141:	b8 00 00 00 00       	mov    $0x0,%eax
  401146:	48 85 c0             	test   %rax,%rax
  401149:	74 0d                	je     401158 <deregister_tm_clones+0x28>
  40114b:	5d                   	pop    %rbp
  40114c:	bf 00 47 40 00       	mov    $0x404700,%edi
  401151:	ff e0                	jmpq   *%rax
  401153:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401158:	5d                   	pop    %rbp
  401159:	c3                   	retq   
  40115a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401160 <register_tm_clones>:
  401160:	be 00 47 40 00       	mov    $0x404700,%esi
  401165:	55                   	push   %rbp
  401166:	48 81 ee 00 47 40 00 	sub    $0x404700,%rsi
  40116d:	48 89 e5             	mov    %rsp,%rbp
  401170:	48 c1 fe 03          	sar    $0x3,%rsi
  401174:	48 89 f0             	mov    %rsi,%rax
  401177:	48 c1 e8 3f          	shr    $0x3f,%rax
  40117b:	48 01 c6             	add    %rax,%rsi
  40117e:	48 d1 fe             	sar    %rsi
  401181:	74 15                	je     401198 <register_tm_clones+0x38>
  401183:	b8 00 00 00 00       	mov    $0x0,%eax
  401188:	48 85 c0             	test   %rax,%rax
  40118b:	74 0b                	je     401198 <register_tm_clones+0x38>
  40118d:	5d                   	pop    %rbp
  40118e:	bf 00 47 40 00       	mov    $0x404700,%edi
  401193:	ff e0                	jmpq   *%rax
  401195:	0f 1f 00             	nopl   (%rax)
  401198:	5d                   	pop    %rbp
  401199:	c3                   	retq   
  40119a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004011a0 <__do_global_dtors_aux>:
  4011a0:	80 3d 71 35 00 00 00 	cmpb   $0x0,0x3571(%rip)        # 404718 <completed.7658>
  4011a7:	75 17                	jne    4011c0 <__do_global_dtors_aux+0x20>
  4011a9:	55                   	push   %rbp
  4011aa:	48 89 e5             	mov    %rsp,%rbp
  4011ad:	e8 7e ff ff ff       	callq  401130 <deregister_tm_clones>
  4011b2:	c6 05 5f 35 00 00 01 	movb   $0x1,0x355f(%rip)        # 404718 <completed.7658>
  4011b9:	5d                   	pop    %rbp
  4011ba:	c3                   	retq   
  4011bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4011c0:	f3 c3                	repz retq 
  4011c2:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4011c9:	00 00 00 00 
  4011cd:	0f 1f 00             	nopl   (%rax)

00000000004011d0 <frame_dummy>:
  4011d0:	55                   	push   %rbp
  4011d1:	48 89 e5             	mov    %rsp,%rbp
  4011d4:	5d                   	pop    %rbp
  4011d5:	eb 89                	jmp    401160 <register_tm_clones>

00000000004011d7 <main>:
  4011d7:	53                   	push   %rbx
  4011d8:	83 ff 01             	cmp    $0x1,%edi
  4011db:	0f 84 e8 00 00 00    	je     4012c9 <main+0xf2>
  4011e1:	48 89 f3             	mov    %rsi,%rbx
  4011e4:	83 ff 02             	cmp    $0x2,%edi
  4011e7:	0f 85 0f 01 00 00    	jne    4012fc <main+0x125>
  4011ed:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  4011f1:	be 10 24 40 00       	mov    $0x402410,%esi
  4011f6:	e8 b5 fe ff ff       	callq  4010b0 <fopen@plt>
  4011fb:	48 89 05 1e 35 00 00 	mov    %rax,0x351e(%rip)        # 404720 <infile>
  401202:	48 85 c0             	test   %rax,%rax
  401205:	0f 84 d1 00 00 00    	je     4012dc <main+0x105>
  40120b:	e8 8a 05 00 00       	callq  40179a <initialize_bomb>
  401210:	bf 60 20 40 00       	mov    $0x402060,%edi
  401215:	e8 26 fe ff ff       	callq  401040 <puts@plt>
  40121a:	bf a0 20 40 00       	mov    $0x4020a0,%edi
  40121f:	e8 1c fe ff ff       	callq  401040 <puts@plt>
  401224:	e8 68 06 00 00       	callq  401891 <read_line>
  401229:	48 89 c7             	mov    %rax,%rdi
  40122c:	e8 ec 00 00 00       	callq  40131d <phase_1>
  401231:	e8 89 07 00 00       	callq  4019bf <phase_defused>
  401236:	bf d0 20 40 00       	mov    $0x4020d0,%edi
  40123b:	e8 00 fe ff ff       	callq  401040 <puts@plt>
  401240:	e8 4c 06 00 00       	callq  401891 <read_line>
  401245:	48 89 c7             	mov    %rax,%rdi
  401248:	e8 ee 00 00 00       	callq  40133b <phase_2>
  40124d:	e8 6d 07 00 00       	callq  4019bf <phase_defused>
  401252:	bf 3b 20 40 00       	mov    $0x40203b,%edi
  401257:	e8 e4 fd ff ff       	callq  401040 <puts@plt>
  40125c:	e8 30 06 00 00       	callq  401891 <read_line>
  401261:	48 89 c7             	mov    %rax,%rdi
  401264:	e8 16 01 00 00       	callq  40137f <phase_3>
  401269:	e8 51 07 00 00       	callq  4019bf <phase_defused>
  40126e:	bf 00 21 40 00       	mov    $0x402100,%edi
  401273:	e8 c8 fd ff ff       	callq  401040 <puts@plt>
  401278:	e8 14 06 00 00       	callq  401891 <read_line>
  40127d:	48 89 c7             	mov    %rax,%rdi
  401280:	e8 bb 01 00 00       	callq  401440 <phase_4>
  401285:	e8 35 07 00 00       	callq  4019bf <phase_defused>
  40128a:	bf 28 21 40 00       	mov    $0x402128,%edi
  40128f:	e8 ac fd ff ff       	callq  401040 <puts@plt>
  401294:	e8 f8 05 00 00       	callq  401891 <read_line>
  401299:	48 89 c7             	mov    %rax,%rdi
  40129c:	e8 f6 01 00 00       	callq  401497 <phase_5>
  4012a1:	e8 19 07 00 00       	callq  4019bf <phase_defused>
  4012a6:	bf 70 21 40 00       	mov    $0x402170,%edi
  4012ab:	e8 90 fd ff ff       	callq  401040 <puts@plt>
  4012b0:	e8 dc 05 00 00       	callq  401891 <read_line>
  4012b5:	48 89 c7             	mov    %rax,%rdi
  4012b8:	e8 4d 02 00 00       	callq  40150a <phase_6>
  4012bd:	e8 fd 06 00 00       	callq  4019bf <phase_defused>
  4012c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4012c7:	5b                   	pop    %rbx
  4012c8:	c3                   	retq   
  4012c9:	48 8b 05 40 34 00 00 	mov    0x3440(%rip),%rax        # 404710 <stdin@@GLIBC_2.2.5>
  4012d0:	48 89 05 49 34 00 00 	mov    %rax,0x3449(%rip)        # 404720 <infile>
  4012d7:	e9 2f ff ff ff       	jmpq   40120b <main+0x34>
  4012dc:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  4012e0:	48 8b 13             	mov    (%rbx),%rdx
  4012e3:	be 04 20 40 00       	mov    $0x402004,%esi
  4012e8:	bf 01 00 00 00       	mov    $0x1,%edi
  4012ed:	e8 ae fd ff ff       	callq  4010a0 <__printf_chk@plt>
  4012f2:	bf 08 00 00 00       	mov    $0x8,%edi
  4012f7:	e8 c4 fd ff ff       	callq  4010c0 <exit@plt>
  4012fc:	48 8b 16             	mov    (%rsi),%rdx
  4012ff:	be 21 20 40 00       	mov    $0x402021,%esi
  401304:	bf 01 00 00 00       	mov    $0x1,%edi
  401309:	b8 00 00 00 00       	mov    $0x0,%eax
  40130e:	e8 8d fd ff ff       	callq  4010a0 <__printf_chk@plt>
  401313:	bf 08 00 00 00       	mov    $0x8,%edi
  401318:	e8 a3 fd ff ff       	callq  4010c0 <exit@plt>

000000000040131d <phase_1>:
  40131d:	48 83 ec 08          	sub    $0x8,%rsp
  401321:	be a0 21 40 00       	mov    $0x4021a0,%esi
  401326:	e8 08 04 00 00       	callq  401733 <strings_not_equal>
  40132b:	85 c0                	test   %eax,%eax
  40132d:	75 05                	jne    401334 <phase_1+0x17>
  40132f:	48 83 c4 08          	add    $0x8,%rsp
  401333:	c3                   	retq   
  401334:	e8 f7 04 00 00       	callq  401830 <explode_bomb>
  401339:	eb f4                	jmp    40132f <phase_1+0x12>

000000000040133b <phase_2>:
  40133b:	55                   	push   %rbp
  40133c:	53                   	push   %rbx
  40133d:	48 83 ec 28          	sub    $0x28,%rsp
  401341:	48 89 e6             	mov    %rsp,%rsi
  401344:	e8 09 05 00 00       	callq  401852 <read_six_numbers>
  401349:	83 3c 24 01          	cmpl   $0x1,(%rsp)
  40134d:	75 09                	jne    401358 <phase_2+0x1d>
  40134f:	48 89 e3             	mov    %rsp,%rbx
  401352:	48 8d 6b 14          	lea    0x14(%rbx),%rbp
  401356:	eb 10                	jmp    401368 <phase_2+0x2d>
  401358:	e8 d3 04 00 00       	callq  401830 <explode_bomb>
  40135d:	eb f0                	jmp    40134f <phase_2+0x14>
  40135f:	48 83 c3 04          	add    $0x4,%rbx
  401363:	48 39 eb             	cmp    %rbp,%rbx
  401366:	74 10                	je     401378 <phase_2+0x3d>
  401368:	8b 03                	mov    (%rbx),%eax
  40136a:	01 c0                	add    %eax,%eax
  40136c:	39 43 04             	cmp    %eax,0x4(%rbx)
  40136f:	74 ee                	je     40135f <phase_2+0x24>
  401371:	e8 ba 04 00 00       	callq  401830 <explode_bomb>
  401376:	eb e7                	jmp    40135f <phase_2+0x24>
  401378:	48 83 c4 28          	add    $0x28,%rsp
  40137c:	5b                   	pop    %rbx
  40137d:	5d                   	pop    %rbp
  40137e:	c3                   	retq   

000000000040137f <phase_3>:
  40137f:	48 83 ec 18          	sub    $0x18,%rsp
  401383:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  401388:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  40138d:	be ae 23 40 00       	mov    $0x4023ae,%esi
  401392:	b8 00 00 00 00       	mov    $0x0,%eax
  401397:	e8 f4 fc ff ff       	callq  401090 <__isoc99_sscanf@plt>
  40139c:	83 f8 01             	cmp    $0x1,%eax
  40139f:	7e 12                	jle    4013b3 <phase_3+0x34>
  4013a1:	83 7c 24 0c 07       	cmpl   $0x7,0xc(%rsp)
  4013a6:	77 43                	ja     4013eb <phase_3+0x6c>
  4013a8:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4013ac:	ff 24 c5 20 22 40 00 	jmpq   *0x402220(,%rax,8)
  4013b3:	e8 78 04 00 00       	callq  401830 <explode_bomb>
  4013b8:	eb e7                	jmp    4013a1 <phase_3+0x22>
  4013ba:	b8 b9 03 00 00       	mov    $0x3b9,%eax
  4013bf:	eb 3b                	jmp    4013fc <phase_3+0x7d>
  4013c1:	b8 61 02 00 00       	mov    $0x261,%eax
  4013c6:	eb 34                	jmp    4013fc <phase_3+0x7d>
  4013c8:	b8 cf 01 00 00       	mov    $0x1cf,%eax
  4013cd:	eb 2d                	jmp    4013fc <phase_3+0x7d>
  4013cf:	b8 67 02 00 00       	mov    $0x267,%eax
  4013d4:	eb 26                	jmp    4013fc <phase_3+0x7d>
  4013d6:	b8 84 00 00 00       	mov    $0x84,%eax
  4013db:	eb 1f                	jmp    4013fc <phase_3+0x7d>
  4013dd:	b8 88 01 00 00       	mov    $0x188,%eax
  4013e2:	eb 18                	jmp    4013fc <phase_3+0x7d>
  4013e4:	b8 4e 00 00 00       	mov    $0x4e,%eax
  4013e9:	eb 11                	jmp    4013fc <phase_3+0x7d>
  4013eb:	e8 40 04 00 00       	callq  401830 <explode_bomb>
  4013f0:	b8 00 00 00 00       	mov    $0x0,%eax
  4013f5:	eb 05                	jmp    4013fc <phase_3+0x7d>
  4013f7:	b8 e7 03 00 00       	mov    $0x3e7,%eax
  4013fc:	39 44 24 08          	cmp    %eax,0x8(%rsp)
  401400:	74 05                	je     401407 <phase_3+0x88>
  401402:	e8 29 04 00 00       	callq  401830 <explode_bomb>
  401407:	48 83 c4 18          	add    $0x18,%rsp
  40140b:	c3                   	retq   

000000000040140c <func4>:
  40140c:	53                   	push   %rbx
  40140d:	89 d0                	mov    %edx,%eax
  40140f:	29 f0                	sub    %esi,%eax
  401411:	89 c3                	mov    %eax,%ebx
  401413:	c1 eb 1f             	shr    $0x1f,%ebx //ebx is 000000
  401416:	01 c3                	add    %eax,%ebx //ebx = 14
  401418:	d1 fb                	sar    %ebx 
  40141a:	01 f3                	add    %esi,%ebx
  40141c:	39 fb                	cmp    %edi,%ebx
  40141e:	7f 08                	jg     401428 <func4+0x1c>
  401420:	39 fb                	cmp    %edi,%ebx
  401422:	7c 10                	jl     401434 <func4+0x28>
  401424:	89 d8                	mov    %ebx,%eax
  401426:	5b                   	pop    %rbx
  401427:	c3                   	retq   
  401428:	8d 53 ff             	lea    -0x1(%rbx),%edx
  40142b:	e8 dc ff ff ff       	callq  40140c <func4>
  401430:	01 c3                	add    %eax,%ebx
  401432:	eb f0                	jmp    401424 <func4+0x18>
  401434:	8d 73 01             	lea    0x1(%rbx),%esi
  401437:	e8 d0 ff ff ff       	callq  40140c <func4>
  40143c:	01 c3                	add    %eax,%ebx
  40143e:	eb e4                	jmp    401424 <func4+0x18>

0000000000401440 <phase_4>:
  401440:	48 83 ec 18          	sub    $0x18,%rsp
  401444:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  401449:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  40144e:	be ae 23 40 00       	mov    $0x4023ae,%esi
  401453:	b8 00 00 00 00       	mov    $0x0,%eax
  401458:	e8 33 fc ff ff       	callq  401090 <__isoc99_sscanf@plt>
  40145d:	83 f8 02             	cmp    $0x2,%eax
  401460:	75 07                	jne    401469 <phase_4+0x29>
  401462:	83 7c 24 0c 0e       	cmpl   $0xe,0xc(%rsp)
  401467:	76 05                	jbe    40146e <phase_4+0x2e>
  401469:	e8 c2 03 00 00       	callq  401830 <explode_bomb>
  40146e:	ba 0e 00 00 00       	mov    $0xe,%edx
  401473:	be 00 00 00 00       	mov    $0x0,%esi
  401478:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
  40147c:	e8 8b ff ff ff       	callq  40140c <func4>
  401481:	83 f8 0f             	cmp    $0xf,%eax
  401484:	75 07                	jne    40148d <phase_4+0x4d>
  401486:	83 7c 24 08 0f       	cmpl   $0xf,0x8(%rsp)
  40148b:	74 05                	je     401492 <phase_4+0x52>
  40148d:	e8 9e 03 00 00       	callq  401830 <explode_bomb>
  401492:	48 83 c4 18          	add    $0x18,%rsp
  401496:	c3                   	retq   

0000000000401497 <phase_5>:
  401497:	48 83 ec 18          	sub    $0x18,%rsp
  40149b:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  4014a0:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  4014a5:	be ae 23 40 00       	mov    $0x4023ae,%esi
  4014aa:	b8 00 00 00 00       	mov    $0x0,%eax
  4014af:	e8 dc fb ff ff       	callq  401090 <__isoc99_sscanf@plt>
  4014b4:	83 f8 01             	cmp    $0x1,%eax
  4014b7:	7e 4a                	jle    401503 <phase_5+0x6c>
  4014b9:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4014bd:	83 e0 0f             	and    $0xf,%eax
  4014c0:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4014c4:	83 f8 0f             	cmp    $0xf,%eax
  4014c7:	74 30                	je     4014f9 <phase_5+0x62>
  4014c9:	b9 00 00 00 00       	mov    $0x0,%ecx
  4014ce:	ba 00 00 00 00       	mov    $0x0,%edx
  4014d3:	83 c2 01             	add    $0x1,%edx
  4014d6:	48 98                	cltq   
  4014d8:	8b 04 85 60 22 40 00 	mov    0x402260(,%rax,4),%eax
  4014df:	01 c1                	add    %eax,%ecx
  4014e1:	83 f8 0f             	cmp    $0xf,%eax
  4014e4:	75 ed                	jne    4014d3 <phase_5+0x3c>
  4014e6:	c7 44 24 0c 0f 00 00 	movl   $0xf,0xc(%rsp)
  4014ed:	00 
  4014ee:	83 fa 0f             	cmp    $0xf,%edx
  4014f1:	75 06                	jne    4014f9 <phase_5+0x62>
  4014f3:	39 4c 24 08          	cmp    %ecx,0x8(%rsp)
  4014f7:	74 05                	je     4014fe <phase_5+0x67>
  4014f9:	e8 32 03 00 00       	callq  401830 <explode_bomb>
  4014fe:	48 83 c4 18          	add    $0x18,%rsp
  401502:	c3                   	retq   
  401503:	e8 28 03 00 00       	callq  401830 <explode_bomb>
  401508:	eb af                	jmp    4014b9 <phase_5+0x22>

000000000040150a <phase_6>:
  40150a:	41 55                	push   %r13
  40150c:	41 54                	push   %r12
  40150e:	55                   	push   %rbp
  40150f:	53                   	push   %rbx
  401510:	48 83 ec 58          	sub    $0x58,%rsp
  401514:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  401519:	e8 34 03 00 00       	callq  401852 <read_six_numbers>
  40151e:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12 //start of first loop
  401523:	41 bd 00 00 00 00    	mov    $0x0,%r13d //for loop
  401529:	eb 26                	jmp    401551 <phase_6+0x47>
  40152b:	e8 00 03 00 00       	callq  401830 <explode_bomb>
  401530:	eb 2e                	jmp    401560 <phase_6+0x56>
  401532:	83 c3 01             	add    $0x1,%ebx
  401535:	83 fb 05             	cmp    $0x5,%ebx
  401538:	7f 13                	jg     40154d <phase_6+0x43>
  40153a:	48 63 c3             	movslq %ebx,%rax //rax have 1
  40153d:	8b 44 84 30          	mov    0x30(%rsp,%rax,4),%eax 
  401541:	39 45 00             	cmp    %eax,0x0(%rbp)
  401544:	75 ec                	jne    401532 <phase_6+0x28>
  401546:	e8 e5 02 00 00       	callq  401830 <explode_bomb>
  40154b:	eb e5                	jmp    401532 <phase_6+0x28>
  40154d:	49 83 c4 04          	add    $0x4,%r12
  401551:	4c 89 e5             	mov    %r12,%rbp //storing pointer to first arg
  401554:	41 8b 04 24          	mov    (%r12),%eax
  401558:	83 e8 01             	sub    $0x1,%eax
  40155b:	83 f8 05             	cmp    $0x5,%eax
  40155e:	77 cb                	ja     40152b <phase_6+0x21>
  401560:	41 83 c5 01          	add    $0x1,%r13d //increment r13d for loop
  401564:	41 83 fd 06          	cmp    $0x6,%r13d // run the loop 6 times
  401568:	74 33                	je     40159d <phase_6+0x93>
  40156a:	44 89 eb             	mov    %r13d,%ebx
  40156d:	eb cb                	jmp    40153a <phase_6+0x30>
  40156f:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  401573:	83 c0 01             	add    $0x1,%eax
  401576:	39 c8                	cmp    %ecx,%eax //ecx is input integer
  401578:	75 f5                	jne    40156f <phase_6+0x65>
  40157a:	48 89 14 f4          	mov    %rdx,(%rsp,%rsi,8)
  40157e:	48 83 c6 01          	add    $0x1,%rsi
  401582:	48 83 fe 06          	cmp    $0x6,%rsi
  401586:	74 1c                	je     4015a4 <phase_6+0x9a>
  401588:	8b 4c b4 30          	mov    0x30(%rsp,%rsi,4),%ecx
  40158c:	b8 01 00 00 00       	mov    $0x1,%eax
  401591:	ba 70 42 40 00       	mov    $0x404270,%edx
  401596:	83 f9 01             	cmp    $0x1,%ecx
  401599:	7f d4                	jg     40156f <phase_6+0x65>
  40159b:	eb dd                	jmp    40157a <phase_6+0x70>
  40159d:	be 00 00 00 00       	mov    $0x0,%esi
  4015a2:	eb e4                	jmp    401588 <phase_6+0x7e>
  4015a4:	48 8b 1c 24          	mov    (%rsp),%rbx
  4015a8:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4015ad:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4015b1:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
  4015b6:	48 89 50 08          	mov    %rdx,0x8(%rax)
  4015ba:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  4015bf:	48 89 42 08          	mov    %rax,0x8(%rdx)
  4015c3:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
  4015c8:	48 89 50 08          	mov    %rdx,0x8(%rax)
  4015cc:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  4015d1:	48 89 42 08          	mov    %rax,0x8(%rdx)
  4015d5:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  4015dc:	00 
  4015dd:	bd 05 00 00 00       	mov    $0x5,%ebp
  4015e2:	eb 09                	jmp    4015ed <phase_6+0xe3>
  4015e4:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  4015e8:	83 ed 01             	sub    $0x1,%ebp
  4015eb:	74 11                	je     4015fe <phase_6+0xf4>
  4015ed:	48 8b 43 08          	mov    0x8(%rbx),%rax
  4015f1:	8b 00                	mov    (%rax),%eax
  4015f3:	39 03                	cmp    %eax,(%rbx)
  4015f5:	7d ed                	jge    4015e4 <phase_6+0xda>
  4015f7:	e8 34 02 00 00       	callq  401830 <explode_bomb>
  4015fc:	eb e6                	jmp    4015e4 <phase_6+0xda>
  4015fe:	48 83 c4 58          	add    $0x58,%rsp
  401602:	5b                   	pop    %rbx
  401603:	5d                   	pop    %rbp
  401604:	41 5c                	pop    %r12
  401606:	41 5d                	pop    %r13
  401608:	c3                   	retq   

0000000000401609 <fun7>:
  401609:	48 85 ff             	test   %rdi,%rdi
  40160c:	74 34                	je     401642 <fun7+0x39>
  40160e:	48 83 ec 08          	sub    $0x8,%rsp
  401612:	8b 17                	mov    (%rdi),%edx
  401614:	39 f2                	cmp    %esi,%edx
  401616:	7f 0e                	jg     401626 <fun7+0x1d>
  401618:	b8 00 00 00 00       	mov    $0x0,%eax
  40161d:	39 f2                	cmp    %esi,%edx
  40161f:	75 12                	jne    401633 <fun7+0x2a>
  401621:	48 83 c4 08          	add    $0x8,%rsp
  401625:	c3                   	retq   
  401626:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  40162a:	e8 da ff ff ff       	callq  401609 <fun7>
  40162f:	01 c0                	add    %eax,%eax
  401631:	eb ee                	jmp    401621 <fun7+0x18>
  401633:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
  401637:	e8 cd ff ff ff       	callq  401609 <fun7>
  40163c:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
  401640:	eb df                	jmp    401621 <fun7+0x18>
  401642:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401647:	c3                   	retq   

0000000000401648 <secret_phase>:
  401648:	53                   	push   %rbx
  401649:	e8 43 02 00 00       	callq  401891 <read_line>
  40164e:	ba 0a 00 00 00       	mov    $0xa,%edx
  401653:	be 00 00 00 00       	mov    $0x0,%esi
  401658:	48 89 c7             	mov    %rax,%rdi
  40165b:	e8 10 fa ff ff       	callq  401070 <strtol@plt>
  401660:	48 89 c3             	mov    %rax,%rbx
  401663:	8d 40 ff             	lea    -0x1(%rax),%eax
  401666:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  40166b:	77 27                	ja     401694 <secret_phase+0x4c>
  40166d:	89 de                	mov    %ebx,%esi
  40166f:	bf 90 40 40 00       	mov    $0x404090,%edi
  401674:	e8 90 ff ff ff       	callq  401609 <fun7>
  401679:	83 f8 02             	cmp    $0x2,%eax
  40167c:	74 05                	je     401683 <secret_phase+0x3b>
  40167e:	e8 ad 01 00 00       	callq  401830 <explode_bomb>
  401683:	bf f0 21 40 00       	mov    $0x4021f0,%edi
  401688:	e8 b3 f9 ff ff       	callq  401040 <puts@plt>
  40168d:	e8 2d 03 00 00       	callq  4019bf <phase_defused>
  401692:	5b                   	pop    %rbx
  401693:	c3                   	retq   
  401694:	e8 97 01 00 00       	callq  401830 <explode_bomb>
  401699:	eb d2                	jmp    40166d <secret_phase+0x25>

000000000040169b <sig_handler>:
  40169b:	48 83 ec 08          	sub    $0x8,%rsp
  40169f:	bf a0 22 40 00       	mov    $0x4022a0,%edi
  4016a4:	e8 97 f9 ff ff       	callq  401040 <puts@plt>
  4016a9:	bf 02 00 00 00       	mov    $0x2,%edi
  4016ae:	e8 1d fa ff ff       	callq  4010d0 <sleep@plt>
  4016b3:	be 62 23 40 00       	mov    $0x402362,%esi
  4016b8:	bf 01 00 00 00       	mov    $0x1,%edi
  4016bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4016c2:	e8 d9 f9 ff ff       	callq  4010a0 <__printf_chk@plt>
  4016c7:	48 8b 3d 32 30 00 00 	mov    0x3032(%rip),%rdi        # 404700 <stdout@@GLIBC_2.2.5>
  4016ce:	e8 ad f9 ff ff       	callq  401080 <fflush@plt>
  4016d3:	bf 01 00 00 00       	mov    $0x1,%edi
  4016d8:	e8 f3 f9 ff ff       	callq  4010d0 <sleep@plt>
  4016dd:	bf 6a 23 40 00       	mov    $0x40236a,%edi
  4016e2:	e8 59 f9 ff ff       	callq  401040 <puts@plt>
  4016e7:	bf 10 00 00 00       	mov    $0x10,%edi
  4016ec:	e8 cf f9 ff ff       	callq  4010c0 <exit@plt>

00000000004016f1 <invalid_phase>:
  4016f1:	48 83 ec 08          	sub    $0x8,%rsp
  4016f5:	48 89 fa             	mov    %rdi,%rdx
  4016f8:	be 71 23 40 00       	mov    $0x402371,%esi
  4016fd:	bf 01 00 00 00       	mov    $0x1,%edi
  401702:	b8 00 00 00 00       	mov    $0x0,%eax
  401707:	e8 94 f9 ff ff       	callq  4010a0 <__printf_chk@plt>
  40170c:	bf 08 00 00 00       	mov    $0x8,%edi
  401711:	e8 aa f9 ff ff       	callq  4010c0 <exit@plt>

0000000000401716 <string_length>:
  401716:	80 3f 00             	cmpb   $0x0,(%rdi)
  401719:	74 12                	je     40172d <string_length+0x17>
  40171b:	48 89 fa             	mov    %rdi,%rdx
  40171e:	48 83 c2 01          	add    $0x1,%rdx
  401722:	89 d0                	mov    %edx,%eax
  401724:	29 f8                	sub    %edi,%eax
  401726:	80 3a 00             	cmpb   $0x0,(%rdx)
  401729:	75 f3                	jne    40171e <string_length+0x8>
  40172b:	f3 c3                	repz retq 
  40172d:	b8 00 00 00 00       	mov    $0x0,%eax
  401732:	c3                   	retq   

0000000000401733 <strings_not_equal>:
  401733:	41 54                	push   %r12
  401735:	55                   	push   %rbp
  401736:	53                   	push   %rbx
  401737:	48 89 fb             	mov    %rdi,%rbx
  40173a:	48 89 f5             	mov    %rsi,%rbp
  40173d:	e8 d4 ff ff ff       	callq  401716 <string_length>
  401742:	41 89 c4             	mov    %eax,%r12d
  401745:	48 89 ef             	mov    %rbp,%rdi
  401748:	e8 c9 ff ff ff       	callq  401716 <string_length>
  40174d:	ba 01 00 00 00       	mov    $0x1,%edx
  401752:	41 39 c4             	cmp    %eax,%r12d
  401755:	74 07                	je     40175e <strings_not_equal+0x2b>
  401757:	89 d0                	mov    %edx,%eax
  401759:	5b                   	pop    %rbx
  40175a:	5d                   	pop    %rbp
  40175b:	41 5c                	pop    %r12
  40175d:	c3                   	retq   
  40175e:	0f b6 03             	movzbl (%rbx),%eax
  401761:	84 c0                	test   %al,%al
  401763:	74 27                	je     40178c <strings_not_equal+0x59>
  401765:	3a 45 00             	cmp    0x0(%rbp),%al
  401768:	75 29                	jne    401793 <strings_not_equal+0x60>
  40176a:	48 83 c3 01          	add    $0x1,%rbx
  40176e:	48 83 c5 01          	add    $0x1,%rbp
  401772:	0f b6 03             	movzbl (%rbx),%eax
  401775:	84 c0                	test   %al,%al
  401777:	74 0c                	je     401785 <strings_not_equal+0x52>
  401779:	38 45 00             	cmp    %al,0x0(%rbp)
  40177c:	74 ec                	je     40176a <strings_not_equal+0x37>
  40177e:	ba 01 00 00 00       	mov    $0x1,%edx
  401783:	eb d2                	jmp    401757 <strings_not_equal+0x24>
  401785:	ba 00 00 00 00       	mov    $0x0,%edx
  40178a:	eb cb                	jmp    401757 <strings_not_equal+0x24>
  40178c:	ba 00 00 00 00       	mov    $0x0,%edx
  401791:	eb c4                	jmp    401757 <strings_not_equal+0x24>
  401793:	ba 01 00 00 00       	mov    $0x1,%edx
  401798:	eb bd                	jmp    401757 <strings_not_equal+0x24>

000000000040179a <initialize_bomb>:
  40179a:	48 83 ec 08          	sub    $0x8,%rsp
  40179e:	be 9b 16 40 00       	mov    $0x40169b,%esi
  4017a3:	bf 02 00 00 00       	mov    $0x2,%edi
  4017a8:	e8 b3 f8 ff ff       	callq  401060 <signal@plt>
  4017ad:	48 83 c4 08          	add    $0x8,%rsp
  4017b1:	c3                   	retq   

00000000004017b2 <initialize_bomb_solve>:
  4017b2:	f3 c3                	repz retq 

00000000004017b4 <blank_line>:
  4017b4:	55                   	push   %rbp
  4017b5:	53                   	push   %rbx
  4017b6:	48 83 ec 08          	sub    $0x8,%rsp
  4017ba:	48 89 fd             	mov    %rdi,%rbp
  4017bd:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
  4017c1:	84 db                	test   %bl,%bl
  4017c3:	74 1e                	je     4017e3 <blank_line+0x2f>
  4017c5:	e8 16 f9 ff ff       	callq  4010e0 <__ctype_b_loc@plt>
  4017ca:	48 83 c5 01          	add    $0x1,%rbp
  4017ce:	48 0f be db          	movsbq %bl,%rbx
  4017d2:	48 8b 00             	mov    (%rax),%rax
  4017d5:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
  4017da:	75 e1                	jne    4017bd <blank_line+0x9>
  4017dc:	b8 00 00 00 00       	mov    $0x0,%eax
  4017e1:	eb 05                	jmp    4017e8 <blank_line+0x34>
  4017e3:	b8 01 00 00 00       	mov    $0x1,%eax
  4017e8:	48 83 c4 08          	add    $0x8,%rsp
  4017ec:	5b                   	pop    %rbx
  4017ed:	5d                   	pop    %rbp
  4017ee:	c3                   	retq   

00000000004017ef <skip>:
  4017ef:	53                   	push   %rbx
  4017f0:	48 63 05 25 2f 00 00 	movslq 0x2f25(%rip),%rax        # 40471c <num_input_strings>
  4017f7:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
  4017fb:	48 c1 e7 04          	shl    $0x4,%rdi
  4017ff:	48 81 c7 40 47 40 00 	add    $0x404740,%rdi
  401806:	48 8b 15 13 2f 00 00 	mov    0x2f13(%rip),%rdx        # 404720 <infile>
  40180d:	be 50 00 00 00       	mov    $0x50,%esi
  401812:	e8 39 f8 ff ff       	callq  401050 <fgets@plt>
  401817:	48 89 c3             	mov    %rax,%rbx
  40181a:	48 85 c0             	test   %rax,%rax
  40181d:	74 0c                	je     40182b <skip+0x3c>
  40181f:	48 89 c7             	mov    %rax,%rdi
  401822:	e8 8d ff ff ff       	callq  4017b4 <blank_line>
  401827:	85 c0                	test   %eax,%eax
  401829:	75 c5                	jne    4017f0 <skip+0x1>
  40182b:	48 89 d8             	mov    %rbx,%rax
  40182e:	5b                   	pop    %rbx
  40182f:	c3                   	retq   

0000000000401830 <explode_bomb>:
  401830:	48 83 ec 08          	sub    $0x8,%rsp
  401834:	bf 82 23 40 00       	mov    $0x402382,%edi
  401839:	e8 02 f8 ff ff       	callq  401040 <puts@plt>
  40183e:	bf 8b 23 40 00       	mov    $0x40238b,%edi
  401843:	e8 f8 f7 ff ff       	callq  401040 <puts@plt>
  401848:	bf 08 00 00 00       	mov    $0x8,%edi
  40184d:	e8 6e f8 ff ff       	callq  4010c0 <exit@plt>

0000000000401852 <read_six_numbers>:
  401852:	48 83 ec 08          	sub    $0x8,%rsp //reserve space for 2 integers on stack
  401856:	48 89 f2             	mov    %rsi,%rdx //initialize var1, set = to param2
  401859:	48 8d 4e 04          	lea    0x4(%rsi),%rcx //store the address 4 + whatever is at rsi into param4
  40185d:	48 8d 46 14          	lea    0x14(%rsi),%rax //store address of rsi + 14 to rax (return reg)
  401861:	50                   	push   %rax //push rax onto stack
  401862:	48 8d 46 10          	lea    0x10(%rsi),%rax // add 10 + rsi onto rax
  401866:	50                   	push   %rax //push rax
  401867:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9 
  40186b:	4c 8d 46 08          	lea    0x8(%rsi),%r8
  40186f:	be a2 23 40 00       	mov    $0x4023a2,%esi
  401874:	b8 00 00 00 00       	mov    $0x0,%eax
  401879:	e8 12 f8 ff ff       	callq  401090 <__isoc99_sscanf@plt>
  40187e:	48 83 c4 10          	add    $0x10,%rsp
  401882:	83 f8 05             	cmp    $0x5,%eax
  401885:	7e 05                	jle    40188c <read_six_numbers+0x3a>
  401887:	48 83 c4 08          	add    $0x8,%rsp
  40188b:	c3                   	retq   
  40188c:	e8 9f ff ff ff       	callq  401830 <explode_bomb>

0000000000401891 <read_line>:
  401891:	48 83 ec 08          	sub    $0x8,%rsp
  401895:	b8 00 00 00 00       	mov    $0x0,%eax
  40189a:	e8 50 ff ff ff       	callq  4017ef <skip>
  40189f:	48 85 c0             	test   %rax,%rax
  4018a2:	74 63                	je     401907 <read_line+0x76>
  4018a4:	8b 35 72 2e 00 00    	mov    0x2e72(%rip),%esi        # 40471c <num_input_strings>
  4018aa:	48 63 c6             	movslq %esi,%rax
  4018ad:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  4018b1:	48 c1 e2 04          	shl    $0x4,%rdx
  4018b5:	48 81 c2 40 47 40 00 	add    $0x404740,%rdx
  4018bc:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4018c3:	b8 00 00 00 00       	mov    $0x0,%eax
  4018c8:	48 89 d7             	mov    %rdx,%rdi
  4018cb:	f2 ae                	repnz scas %es:(%rdi),%al
  4018cd:	48 f7 d1             	not    %rcx
  4018d0:	48 83 e9 01          	sub    $0x1,%rcx
  4018d4:	83 f9 4e             	cmp    $0x4e,%ecx
  4018d7:	0f 8f 9c 00 00 00    	jg     401979 <read_line+0xe8>
  4018dd:	83 e9 01             	sub    $0x1,%ecx
  4018e0:	48 63 c9             	movslq %ecx,%rcx
  4018e3:	48 63 c6             	movslq %esi,%rax
  4018e6:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4018ea:	48 c1 e0 04          	shl    $0x4,%rax
  4018ee:	c6 84 01 40 47 40 00 	movb   $0x0,0x404740(%rcx,%rax,1)
  4018f5:	00 
  4018f6:	8d 46 01             	lea    0x1(%rsi),%eax
  4018f9:	89 05 1d 2e 00 00    	mov    %eax,0x2e1d(%rip)        # 40471c <num_input_strings>
  4018ff:	48 89 d0             	mov    %rdx,%rax
  401902:	48 83 c4 08          	add    $0x8,%rsp
  401906:	c3                   	retq   
  401907:	48 8b 05 02 2e 00 00 	mov    0x2e02(%rip),%rax        # 404710 <stdin@@GLIBC_2.2.5>
  40190e:	48 39 05 0b 2e 00 00 	cmp    %rax,0x2e0b(%rip)        # 404720 <infile>
  401915:	74 19                	je     401930 <read_line+0x9f>
  401917:	bf d2 23 40 00       	mov    $0x4023d2,%edi
  40191c:	e8 0f f7 ff ff       	callq  401030 <getenv@plt>
  401921:	48 85 c0             	test   %rax,%rax
  401924:	74 1e                	je     401944 <read_line+0xb3>
  401926:	bf 00 00 00 00       	mov    $0x0,%edi
  40192b:	e8 90 f7 ff ff       	callq  4010c0 <exit@plt>
  401930:	bf b4 23 40 00       	mov    $0x4023b4,%edi
  401935:	e8 06 f7 ff ff       	callq  401040 <puts@plt>
  40193a:	bf 08 00 00 00       	mov    $0x8,%edi
  40193f:	e8 7c f7 ff ff       	callq  4010c0 <exit@plt>
  401944:	48 8b 05 c5 2d 00 00 	mov    0x2dc5(%rip),%rax        # 404710 <stdin@@GLIBC_2.2.5>
  40194b:	48 89 05 ce 2d 00 00 	mov    %rax,0x2dce(%rip)        # 404720 <infile>
  401952:	b8 00 00 00 00       	mov    $0x0,%eax
  401957:	e8 93 fe ff ff       	callq  4017ef <skip>
  40195c:	48 85 c0             	test   %rax,%rax
  40195f:	0f 85 3f ff ff ff    	jne    4018a4 <read_line+0x13>
  401965:	bf b4 23 40 00       	mov    $0x4023b4,%edi
  40196a:	e8 d1 f6 ff ff       	callq  401040 <puts@plt>
  40196f:	bf 00 00 00 00       	mov    $0x0,%edi
  401974:	e8 47 f7 ff ff       	callq  4010c0 <exit@plt>
  401979:	bf dd 23 40 00       	mov    $0x4023dd,%edi
  40197e:	e8 bd f6 ff ff       	callq  401040 <puts@plt>
  401983:	8b 05 93 2d 00 00    	mov    0x2d93(%rip),%eax        # 40471c <num_input_strings>
  401989:	8d 50 01             	lea    0x1(%rax),%edx
  40198c:	89 15 8a 2d 00 00    	mov    %edx,0x2d8a(%rip)        # 40471c <num_input_strings>
  401992:	48 98                	cltq   
  401994:	48 6b c0 50          	imul   $0x50,%rax,%rax
  401998:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
  40199f:	75 6e 63 
  4019a2:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
  4019a9:	2a 2a 00 
  4019ac:	48 89 b0 40 47 40 00 	mov    %rsi,0x404740(%rax)
  4019b3:	48 89 b8 48 47 40 00 	mov    %rdi,0x404748(%rax)
  4019ba:	e8 71 fe ff ff       	callq  401830 <explode_bomb>

00000000004019bf <phase_defused>:
  4019bf:	83 3d 56 2d 00 00 06 	cmpl   $0x6,0x2d56(%rip)        # 40471c <num_input_strings>
  4019c6:	74 02                	je     4019ca <phase_defused+0xb>
  4019c8:	f3 c3                	repz retq 
  4019ca:	48 83 ec 68          	sub    $0x68,%rsp
  4019ce:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  4019d3:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  4019d8:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  4019dd:	be f8 23 40 00       	mov    $0x4023f8,%esi
  4019e2:	bf 30 48 40 00       	mov    $0x404830,%edi
  4019e7:	b8 00 00 00 00       	mov    $0x0,%eax
  4019ec:	e8 9f f6 ff ff       	callq  401090 <__isoc99_sscanf@plt>
  4019f1:	83 f8 03             	cmp    $0x3,%eax
  4019f4:	74 0f                	je     401a05 <phase_defused+0x46>
  4019f6:	bf 38 23 40 00       	mov    $0x402338,%edi
  4019fb:	e8 40 f6 ff ff       	callq  401040 <puts@plt>
  401a00:	48 83 c4 68          	add    $0x68,%rsp
  401a04:	c3                   	retq   
  401a05:	be 01 24 40 00       	mov    $0x402401,%esi
  401a0a:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  401a0f:	e8 1f fd ff ff       	callq  401733 <strings_not_equal>
  401a14:	85 c0                	test   %eax,%eax
  401a16:	75 de                	jne    4019f6 <phase_defused+0x37>
  401a18:	bf d8 22 40 00       	mov    $0x4022d8,%edi
  401a1d:	e8 1e f6 ff ff       	callq  401040 <puts@plt>
  401a22:	bf 00 23 40 00       	mov    $0x402300,%edi
  401a27:	e8 14 f6 ff ff       	callq  401040 <puts@plt>
  401a2c:	b8 00 00 00 00       	mov    $0x0,%eax
  401a31:	e8 12 fc ff ff       	callq  401648 <secret_phase>
  401a36:	eb be                	jmp    4019f6 <phase_defused+0x37>
  401a38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401a3f:	00 

0000000000401a40 <__libc_csu_init>:
  401a40:	f3 0f 1e fa          	endbr64 
  401a44:	41 57                	push   %r15
  401a46:	4c 8d 3d c3 23 00 00 	lea    0x23c3(%rip),%r15        # 403e10 <__frame_dummy_init_array_entry>
  401a4d:	41 56                	push   %r14
  401a4f:	49 89 d6             	mov    %rdx,%r14
  401a52:	41 55                	push   %r13
  401a54:	49 89 f5             	mov    %rsi,%r13
  401a57:	41 54                	push   %r12
  401a59:	41 89 fc             	mov    %edi,%r12d
  401a5c:	55                   	push   %rbp
  401a5d:	48 8d 2d b4 23 00 00 	lea    0x23b4(%rip),%rbp        # 403e18 <__do_global_dtors_aux_fini_array_entry>
  401a64:	53                   	push   %rbx
  401a65:	4c 29 fd             	sub    %r15,%rbp
  401a68:	48 83 ec 08          	sub    $0x8,%rsp
  401a6c:	e8 8f f5 ff ff       	callq  401000 <_init>
  401a71:	48 c1 fd 03          	sar    $0x3,%rbp
  401a75:	74 1f                	je     401a96 <__libc_csu_init+0x56>
  401a77:	31 db                	xor    %ebx,%ebx
  401a79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401a80:	4c 89 f2             	mov    %r14,%rdx
  401a83:	4c 89 ee             	mov    %r13,%rsi
  401a86:	44 89 e7             	mov    %r12d,%edi
  401a89:	41 ff 14 df          	callq  *(%r15,%rbx,8)
  401a8d:	48 83 c3 01          	add    $0x1,%rbx
  401a91:	48 39 dd             	cmp    %rbx,%rbp
  401a94:	75 ea                	jne    401a80 <__libc_csu_init+0x40>
  401a96:	48 83 c4 08          	add    $0x8,%rsp
  401a9a:	5b                   	pop    %rbx
  401a9b:	5d                   	pop    %rbp
  401a9c:	41 5c                	pop    %r12
  401a9e:	41 5d                	pop    %r13
  401aa0:	41 5e                	pop    %r14
  401aa2:	41 5f                	pop    %r15
  401aa4:	c3                   	retq   
  401aa5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401aac:	00 00 00 00 

0000000000401ab0 <__libc_csu_fini>:
  401ab0:	f3 0f 1e fa          	endbr64 
  401ab4:	c3                   	retq   

Disassembly of section .fini:

0000000000401ab8 <_fini>:
  401ab8:	f3 0f 1e fa          	endbr64 
  401abc:	48 83 ec 08          	sub    $0x8,%rsp
  401ac0:	48 83 c4 08          	add    $0x8,%rsp
  401ac4:	c3                   	retq   
