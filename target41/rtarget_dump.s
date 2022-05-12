
rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 5f 00 00 	mov    0x5fe9(%rip),%rax        # 406ff8 <__gmon_start__>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	callq  *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	retq   

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 5f 00 00    	pushq  0x5fe2(%rip)        # 407008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 5f 00 00    	jmpq   *0x5fe4(%rip)        # 407010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <__errno_location@plt>:
  401030:	ff 25 e2 5f 00 00    	jmpq   *0x5fe2(%rip)        # 407018 <__errno_location@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	pushq  $0x0
  40103b:	e9 e0 ff ff ff       	jmpq   401020 <.plt>

0000000000401040 <srandom@plt>:
  401040:	ff 25 da 5f 00 00    	jmpq   *0x5fda(%rip)        # 407020 <srandom@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	pushq  $0x1
  40104b:	e9 d0 ff ff ff       	jmpq   401020 <.plt>

0000000000401050 <strncmp@plt>:
  401050:	ff 25 d2 5f 00 00    	jmpq   *0x5fd2(%rip)        # 407028 <strncmp@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	pushq  $0x2
  40105b:	e9 c0 ff ff ff       	jmpq   401020 <.plt>

0000000000401060 <strcpy@plt>:
  401060:	ff 25 ca 5f 00 00    	jmpq   *0x5fca(%rip)        # 407030 <strcpy@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	pushq  $0x3
  40106b:	e9 b0 ff ff ff       	jmpq   401020 <.plt>

0000000000401070 <puts@plt>:
  401070:	ff 25 c2 5f 00 00    	jmpq   *0x5fc2(%rip)        # 407038 <puts@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	pushq  $0x4
  40107b:	e9 a0 ff ff ff       	jmpq   401020 <.plt>

0000000000401080 <write@plt>:
  401080:	ff 25 ba 5f 00 00    	jmpq   *0x5fba(%rip)        # 407040 <write@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	pushq  $0x5
  40108b:	e9 90 ff ff ff       	jmpq   401020 <.plt>

0000000000401090 <__stack_chk_fail@plt>:
  401090:	ff 25 b2 5f 00 00    	jmpq   *0x5fb2(%rip)        # 407048 <__stack_chk_fail@GLIBC_2.4>
  401096:	68 06 00 00 00       	pushq  $0x6
  40109b:	e9 80 ff ff ff       	jmpq   401020 <.plt>

00000000004010a0 <mmap@plt>:
  4010a0:	ff 25 aa 5f 00 00    	jmpq   *0x5faa(%rip)        # 407050 <mmap@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	pushq  $0x7
  4010ab:	e9 70 ff ff ff       	jmpq   401020 <.plt>

00000000004010b0 <memset@plt>:
  4010b0:	ff 25 a2 5f 00 00    	jmpq   *0x5fa2(%rip)        # 407058 <memset@GLIBC_2.2.5>
  4010b6:	68 08 00 00 00       	pushq  $0x8
  4010bb:	e9 60 ff ff ff       	jmpq   401020 <.plt>

00000000004010c0 <alarm@plt>:
  4010c0:	ff 25 9a 5f 00 00    	jmpq   *0x5f9a(%rip)        # 407060 <alarm@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	pushq  $0x9
  4010cb:	e9 50 ff ff ff       	jmpq   401020 <.plt>

00000000004010d0 <close@plt>:
  4010d0:	ff 25 92 5f 00 00    	jmpq   *0x5f92(%rip)        # 407068 <close@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	pushq  $0xa
  4010db:	e9 40 ff ff ff       	jmpq   401020 <.plt>

00000000004010e0 <read@plt>:
  4010e0:	ff 25 8a 5f 00 00    	jmpq   *0x5f8a(%rip)        # 407070 <read@GLIBC_2.2.5>
  4010e6:	68 0b 00 00 00       	pushq  $0xb
  4010eb:	e9 30 ff ff ff       	jmpq   401020 <.plt>

00000000004010f0 <signal@plt>:
  4010f0:	ff 25 82 5f 00 00    	jmpq   *0x5f82(%rip)        # 407078 <signal@GLIBC_2.2.5>
  4010f6:	68 0c 00 00 00       	pushq  $0xc
  4010fb:	e9 20 ff ff ff       	jmpq   401020 <.plt>

0000000000401100 <gethostbyname@plt>:
  401100:	ff 25 7a 5f 00 00    	jmpq   *0x5f7a(%rip)        # 407080 <gethostbyname@GLIBC_2.2.5>
  401106:	68 0d 00 00 00       	pushq  $0xd
  40110b:	e9 10 ff ff ff       	jmpq   401020 <.plt>

0000000000401110 <__memmove_chk@plt>:
  401110:	ff 25 72 5f 00 00    	jmpq   *0x5f72(%rip)        # 407088 <__memmove_chk@GLIBC_2.3.4>
  401116:	68 0e 00 00 00       	pushq  $0xe
  40111b:	e9 00 ff ff ff       	jmpq   401020 <.plt>

0000000000401120 <strtol@plt>:
  401120:	ff 25 6a 5f 00 00    	jmpq   *0x5f6a(%rip)        # 407090 <strtol@GLIBC_2.2.5>
  401126:	68 0f 00 00 00       	pushq  $0xf
  40112b:	e9 f0 fe ff ff       	jmpq   401020 <.plt>

0000000000401130 <memcpy@plt>:
  401130:	ff 25 62 5f 00 00    	jmpq   *0x5f62(%rip)        # 407098 <memcpy@GLIBC_2.14>
  401136:	68 10 00 00 00       	pushq  $0x10
  40113b:	e9 e0 fe ff ff       	jmpq   401020 <.plt>

0000000000401140 <time@plt>:
  401140:	ff 25 5a 5f 00 00    	jmpq   *0x5f5a(%rip)        # 4070a0 <time@GLIBC_2.2.5>
  401146:	68 11 00 00 00       	pushq  $0x11
  40114b:	e9 d0 fe ff ff       	jmpq   401020 <.plt>

0000000000401150 <random@plt>:
  401150:	ff 25 52 5f 00 00    	jmpq   *0x5f52(%rip)        # 4070a8 <random@GLIBC_2.2.5>
  401156:	68 12 00 00 00       	pushq  $0x12
  40115b:	e9 c0 fe ff ff       	jmpq   401020 <.plt>

0000000000401160 <__isoc99_sscanf@plt>:
  401160:	ff 25 4a 5f 00 00    	jmpq   *0x5f4a(%rip)        # 4070b0 <__isoc99_sscanf@GLIBC_2.7>
  401166:	68 13 00 00 00       	pushq  $0x13
  40116b:	e9 b0 fe ff ff       	jmpq   401020 <.plt>

0000000000401170 <munmap@plt>:
  401170:	ff 25 42 5f 00 00    	jmpq   *0x5f42(%rip)        # 4070b8 <munmap@GLIBC_2.2.5>
  401176:	68 14 00 00 00       	pushq  $0x14
  40117b:	e9 a0 fe ff ff       	jmpq   401020 <.plt>

0000000000401180 <__printf_chk@plt>:
  401180:	ff 25 3a 5f 00 00    	jmpq   *0x5f3a(%rip)        # 4070c0 <__printf_chk@GLIBC_2.3.4>
  401186:	68 15 00 00 00       	pushq  $0x15
  40118b:	e9 90 fe ff ff       	jmpq   401020 <.plt>

0000000000401190 <fopen@plt>:
  401190:	ff 25 32 5f 00 00    	jmpq   *0x5f32(%rip)        # 4070c8 <fopen@GLIBC_2.2.5>
  401196:	68 16 00 00 00       	pushq  $0x16
  40119b:	e9 80 fe ff ff       	jmpq   401020 <.plt>

00000000004011a0 <getopt@plt>:
  4011a0:	ff 25 2a 5f 00 00    	jmpq   *0x5f2a(%rip)        # 4070d0 <getopt@GLIBC_2.2.5>
  4011a6:	68 17 00 00 00       	pushq  $0x17
  4011ab:	e9 70 fe ff ff       	jmpq   401020 <.plt>

00000000004011b0 <strtoul@plt>:
  4011b0:	ff 25 22 5f 00 00    	jmpq   *0x5f22(%rip)        # 4070d8 <strtoul@GLIBC_2.2.5>
  4011b6:	68 18 00 00 00       	pushq  $0x18
  4011bb:	e9 60 fe ff ff       	jmpq   401020 <.plt>

00000000004011c0 <exit@plt>:
  4011c0:	ff 25 1a 5f 00 00    	jmpq   *0x5f1a(%rip)        # 4070e0 <exit@GLIBC_2.2.5>
  4011c6:	68 19 00 00 00       	pushq  $0x19
  4011cb:	e9 50 fe ff ff       	jmpq   401020 <.plt>

00000000004011d0 <connect@plt>:
  4011d0:	ff 25 12 5f 00 00    	jmpq   *0x5f12(%rip)        # 4070e8 <connect@GLIBC_2.2.5>
  4011d6:	68 1a 00 00 00       	pushq  $0x1a
  4011db:	e9 40 fe ff ff       	jmpq   401020 <.plt>

00000000004011e0 <__fprintf_chk@plt>:
  4011e0:	ff 25 0a 5f 00 00    	jmpq   *0x5f0a(%rip)        # 4070f0 <__fprintf_chk@GLIBC_2.3.4>
  4011e6:	68 1b 00 00 00       	pushq  $0x1b
  4011eb:	e9 30 fe ff ff       	jmpq   401020 <.plt>

00000000004011f0 <getc@plt>:
  4011f0:	ff 25 02 5f 00 00    	jmpq   *0x5f02(%rip)        # 4070f8 <getc@GLIBC_2.2.5>
  4011f6:	68 1c 00 00 00       	pushq  $0x1c
  4011fb:	e9 20 fe ff ff       	jmpq   401020 <.plt>

0000000000401200 <__sprintf_chk@plt>:
  401200:	ff 25 fa 5e 00 00    	jmpq   *0x5efa(%rip)        # 407100 <__sprintf_chk@GLIBC_2.3.4>
  401206:	68 1d 00 00 00       	pushq  $0x1d
  40120b:	e9 10 fe ff ff       	jmpq   401020 <.plt>

0000000000401210 <socket@plt>:
  401210:	ff 25 f2 5e 00 00    	jmpq   *0x5ef2(%rip)        # 407108 <socket@GLIBC_2.2.5>
  401216:	68 1e 00 00 00       	pushq  $0x1e
  40121b:	e9 00 fe ff ff       	jmpq   401020 <.plt>

Disassembly of section .text:

0000000000401220 <_start>:
  401220:	f3 0f 1e fa          	endbr64 
  401224:	31 ed                	xor    %ebp,%ebp
  401226:	49 89 d1             	mov    %rdx,%r9
  401229:	5e                   	pop    %rsi
  40122a:	48 89 e2             	mov    %rsp,%rdx
  40122d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401231:	50                   	push   %rax
  401232:	54                   	push   %rsp
  401233:	49 c7 c0 c0 32 40 00 	mov    $0x4032c0,%r8
  40123a:	48 c7 c1 50 32 40 00 	mov    $0x403250,%rcx
  401241:	48 c7 c7 ab 14 40 00 	mov    $0x4014ab,%rdi
  401248:	ff 15 a2 5d 00 00    	callq  *0x5da2(%rip)        # 406ff0 <__libc_start_main@GLIBC_2.2.5>
  40124e:	f4                   	hlt    
  40124f:	90                   	nop

0000000000401250 <_dl_relocate_static_pie>:
  401250:	f3 0f 1e fa          	endbr64 
  401254:	c3                   	retq   
  401255:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40125c:	00 00 00 
  40125f:	90                   	nop

0000000000401260 <deregister_tm_clones>:
  401260:	55                   	push   %rbp
  401261:	b8 90 74 40 00       	mov    $0x407490,%eax
  401266:	48 3d 90 74 40 00    	cmp    $0x407490,%rax
  40126c:	48 89 e5             	mov    %rsp,%rbp
  40126f:	74 17                	je     401288 <deregister_tm_clones+0x28>
  401271:	b8 00 00 00 00       	mov    $0x0,%eax
  401276:	48 85 c0             	test   %rax,%rax
  401279:	74 0d                	je     401288 <deregister_tm_clones+0x28>
  40127b:	5d                   	pop    %rbp
  40127c:	bf 90 74 40 00       	mov    $0x407490,%edi
  401281:	ff e0                	jmpq   *%rax
  401283:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401288:	5d                   	pop    %rbp
  401289:	c3                   	retq   
  40128a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401290 <register_tm_clones>:
  401290:	be 90 74 40 00       	mov    $0x407490,%esi
  401295:	55                   	push   %rbp
  401296:	48 81 ee 90 74 40 00 	sub    $0x407490,%rsi
  40129d:	48 89 e5             	mov    %rsp,%rbp
  4012a0:	48 c1 fe 03          	sar    $0x3,%rsi
  4012a4:	48 89 f0             	mov    %rsi,%rax
  4012a7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4012ab:	48 01 c6             	add    %rax,%rsi
  4012ae:	48 d1 fe             	sar    %rsi
  4012b1:	74 15                	je     4012c8 <register_tm_clones+0x38>
  4012b3:	b8 00 00 00 00       	mov    $0x0,%eax
  4012b8:	48 85 c0             	test   %rax,%rax
  4012bb:	74 0b                	je     4012c8 <register_tm_clones+0x38>
  4012bd:	5d                   	pop    %rbp
  4012be:	bf 90 74 40 00       	mov    $0x407490,%edi
  4012c3:	ff e0                	jmpq   *%rax
  4012c5:	0f 1f 00             	nopl   (%rax)
  4012c8:	5d                   	pop    %rbp
  4012c9:	c3                   	retq   
  4012ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004012d0 <__do_global_dtors_aux>:
  4012d0:	80 3d f1 61 00 00 00 	cmpb   $0x0,0x61f1(%rip)        # 4074c8 <completed.7658>
  4012d7:	75 17                	jne    4012f0 <__do_global_dtors_aux+0x20>
  4012d9:	55                   	push   %rbp
  4012da:	48 89 e5             	mov    %rsp,%rbp
  4012dd:	e8 7e ff ff ff       	callq  401260 <deregister_tm_clones>
  4012e2:	c6 05 df 61 00 00 01 	movb   $0x1,0x61df(%rip)        # 4074c8 <completed.7658>
  4012e9:	5d                   	pop    %rbp
  4012ea:	c3                   	retq   
  4012eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4012f0:	f3 c3                	repz retq 
  4012f2:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4012f9:	00 00 00 00 
  4012fd:	0f 1f 00             	nopl   (%rax)

0000000000401300 <frame_dummy>:
  401300:	55                   	push   %rbp
  401301:	48 89 e5             	mov    %rsp,%rbp
  401304:	5d                   	pop    %rbp
  401305:	eb 89                	jmp    401290 <register_tm_clones>

0000000000401307 <usage>:
  401307:	48 83 ec 08          	sub    $0x8,%rsp
  40130b:	48 89 fa             	mov    %rdi,%rdx
  40130e:	83 3d f3 61 00 00 00 	cmpl   $0x0,0x61f3(%rip)        # 407508 <is_checker>
  401315:	74 46                	je     40135d <usage+0x56>
  401317:	be 08 40 40 00       	mov    $0x404008,%esi
  40131c:	bf 01 00 00 00       	mov    $0x1,%edi
  401321:	b8 00 00 00 00       	mov    $0x0,%eax
  401326:	e8 55 fe ff ff       	callq  401180 <__printf_chk@plt>
  40132b:	bf 40 40 40 00       	mov    $0x404040,%edi
  401330:	e8 3b fd ff ff       	callq  401070 <puts@plt>
  401335:	bf 40 41 40 00       	mov    $0x404140,%edi
  40133a:	e8 31 fd ff ff       	callq  401070 <puts@plt>
  40133f:	bf 68 40 40 00       	mov    $0x404068,%edi
  401344:	e8 27 fd ff ff       	callq  401070 <puts@plt>
  401349:	bf 5a 41 40 00       	mov    $0x40415a,%edi
  40134e:	e8 1d fd ff ff       	callq  401070 <puts@plt>
  401353:	bf 00 00 00 00       	mov    $0x0,%edi
  401358:	e8 63 fe ff ff       	callq  4011c0 <exit@plt>
  40135d:	be 76 41 40 00       	mov    $0x404176,%esi
  401362:	bf 01 00 00 00       	mov    $0x1,%edi
  401367:	b8 00 00 00 00       	mov    $0x0,%eax
  40136c:	e8 0f fe ff ff       	callq  401180 <__printf_chk@plt>
  401371:	bf 90 40 40 00       	mov    $0x404090,%edi
  401376:	e8 f5 fc ff ff       	callq  401070 <puts@plt>
  40137b:	bf b8 40 40 00       	mov    $0x4040b8,%edi
  401380:	e8 eb fc ff ff       	callq  401070 <puts@plt>
  401385:	bf 94 41 40 00       	mov    $0x404194,%edi
  40138a:	e8 e1 fc ff ff       	callq  401070 <puts@plt>
  40138f:	eb c2                	jmp    401353 <usage+0x4c>

0000000000401391 <initialize_target>:
  401391:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
  401396:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40139a:	41 ff 72 f8          	pushq  -0x8(%r10)
  40139e:	55                   	push   %rbp
  40139f:	48 89 e5             	mov    %rsp,%rbp
  4013a2:	41 54                	push   %r12
  4013a4:	41 52                	push   %r10
  4013a6:	53                   	push   %rbx
  4013a7:	48 81 ec 18 20 00 00 	sub    $0x2018,%rsp
  4013ae:	41 89 f4             	mov    %esi,%r12d
  4013b1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4013b8:	00 00 
  4013ba:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  4013be:	31 c0                	xor    %eax,%eax
  4013c0:	89 3d 32 61 00 00    	mov    %edi,0x6132(%rip)        # 4074f8 <check_level>
  4013c6:	8b 3d 7c 5d 00 00    	mov    0x5d7c(%rip),%edi        # 407148 <target_id>
  4013cc:	e8 57 1e 00 00       	callq  403228 <gencookie>
  4013d1:	89 05 2d 61 00 00    	mov    %eax,0x612d(%rip)        # 407504 <cookie>
  4013d7:	89 c7                	mov    %eax,%edi
  4013d9:	e8 4a 1e 00 00       	callq  403228 <gencookie>
  4013de:	89 05 1c 61 00 00    	mov    %eax,0x611c(%rip)        # 407500 <authkey>
  4013e4:	8b 05 5e 5d 00 00    	mov    0x5d5e(%rip),%eax        # 407148 <target_id>
  4013ea:	8d 78 01             	lea    0x1(%rax),%edi
  4013ed:	e8 4e fc ff ff       	callq  401040 <srandom@plt>
  4013f2:	e8 59 fd ff ff       	callq  401150 <random@plt>
  4013f7:	89 c7                	mov    %eax,%edi
  4013f9:	e8 79 02 00 00       	callq  401677 <scramble>
  4013fe:	89 c3                	mov    %eax,%ebx
  401400:	45 85 e4             	test   %r12d,%r12d
  401403:	75 54                	jne    401459 <initialize_target+0xc8>
  401405:	b8 00 00 00 00       	mov    $0x0,%eax
  40140a:	01 d8                	add    %ebx,%eax
  40140c:	0f b7 c0             	movzwl %ax,%eax
  40140f:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  401416:	89 c0                	mov    %eax,%eax
  401418:	48 89 05 61 60 00 00 	mov    %rax,0x6061(%rip)        # 407480 <buf_offset>
  40141f:	c6 05 02 6d 00 00 72 	movb   $0x72,0x6d02(%rip)        # 408128 <target_prefix>
  401426:	83 3d 5b 60 00 00 00 	cmpl   $0x0,0x605b(%rip)        # 407488 <notify>
  40142d:	74 09                	je     401438 <initialize_target+0xa7>
  40142f:	83 3d d2 60 00 00 00 	cmpl   $0x0,0x60d2(%rip)        # 407508 <is_checker>
  401436:	74 39                	je     401471 <initialize_target+0xe0>
  401438:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40143c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401443:	00 00 
  401445:	75 5f                	jne    4014a6 <initialize_target+0x115>
  401447:	48 81 c4 18 20 00 00 	add    $0x2018,%rsp
  40144e:	5b                   	pop    %rbx
  40144f:	41 5a                	pop    %r10
  401451:	41 5c                	pop    %r12
  401453:	5d                   	pop    %rbp
  401454:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
  401458:	c3                   	retq   
  401459:	bf 00 00 00 00       	mov    $0x0,%edi
  40145e:	e8 dd fc ff ff       	callq  401140 <time@plt>
  401463:	89 c7                	mov    %eax,%edi
  401465:	e8 d6 fb ff ff       	callq  401040 <srandom@plt>
  40146a:	e8 e1 fc ff ff       	callq  401150 <random@plt>
  40146f:	eb 99                	jmp    40140a <initialize_target+0x79>
  401471:	48 8d bd d0 df ff ff 	lea    -0x2030(%rbp),%rdi
  401478:	e8 cb 1a 00 00       	callq  402f48 <init_driver>
  40147d:	85 c0                	test   %eax,%eax
  40147f:	79 b7                	jns    401438 <initialize_target+0xa7>
  401481:	48 8d 95 d0 df ff ff 	lea    -0x2030(%rbp),%rdx
  401488:	be e8 40 40 00       	mov    $0x4040e8,%esi
  40148d:	bf 01 00 00 00       	mov    $0x1,%edi
  401492:	b8 00 00 00 00       	mov    $0x0,%eax
  401497:	e8 e4 fc ff ff       	callq  401180 <__printf_chk@plt>
  40149c:	bf 08 00 00 00       	mov    $0x8,%edi
  4014a1:	e8 1a fd ff ff       	callq  4011c0 <exit@plt>
  4014a6:	e8 e5 fb ff ff       	callq  401090 <__stack_chk_fail@plt>

00000000004014ab <main>:
  4014ab:	41 56                	push   %r14
  4014ad:	41 55                	push   %r13
  4014af:	41 54                	push   %r12
  4014b1:	55                   	push   %rbp
  4014b2:	53                   	push   %rbx
  4014b3:	41 89 fc             	mov    %edi,%r12d
  4014b6:	48 89 f3             	mov    %rsi,%rbx
  4014b9:	be 03 22 40 00       	mov    $0x402203,%esi
  4014be:	bf 0b 00 00 00       	mov    $0xb,%edi
  4014c3:	e8 28 fc ff ff       	callq  4010f0 <signal@plt>
  4014c8:	be b5 21 40 00       	mov    $0x4021b5,%esi
  4014cd:	bf 07 00 00 00       	mov    $0x7,%edi
  4014d2:	e8 19 fc ff ff       	callq  4010f0 <signal@plt>
  4014d7:	be 51 22 40 00       	mov    $0x402251,%esi
  4014dc:	bf 04 00 00 00       	mov    $0x4,%edi
  4014e1:	e8 0a fc ff ff       	callq  4010f0 <signal@plt>
  4014e6:	83 3d 1b 60 00 00 00 	cmpl   $0x0,0x601b(%rip)        # 407508 <is_checker>
  4014ed:	75 24                	jne    401513 <main+0x68>
  4014ef:	bd ad 41 40 00       	mov    $0x4041ad,%ebp
  4014f4:	48 8b 05 a5 5f 00 00 	mov    0x5fa5(%rip),%rax        # 4074a0 <stdin@@GLIBC_2.2.5>
  4014fb:	48 89 05 ee 5f 00 00 	mov    %rax,0x5fee(%rip)        # 4074f0 <infile>
  401502:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401508:	41 be 00 00 00 00    	mov    $0x0,%r14d
  40150e:	e9 85 00 00 00       	jmpq   401598 <main+0xed>
  401513:	be 9f 22 40 00       	mov    $0x40229f,%esi
  401518:	bf 0e 00 00 00       	mov    $0xe,%edi
  40151d:	e8 ce fb ff ff       	callq  4010f0 <signal@plt>
  401522:	bf 05 00 00 00       	mov    $0x5,%edi
  401527:	e8 94 fb ff ff       	callq  4010c0 <alarm@plt>
  40152c:	bd b2 41 40 00       	mov    $0x4041b2,%ebp
  401531:	eb c1                	jmp    4014f4 <main+0x49>
  401533:	48 8b 3b             	mov    (%rbx),%rdi
  401536:	e8 cc fd ff ff       	callq  401307 <usage>
  40153b:	be 55 44 40 00       	mov    $0x404455,%esi
  401540:	48 8b 3d 61 5f 00 00 	mov    0x5f61(%rip),%rdi        # 4074a8 <optarg@@GLIBC_2.2.5>
  401547:	e8 44 fc ff ff       	callq  401190 <fopen@plt>
  40154c:	48 89 05 9d 5f 00 00 	mov    %rax,0x5f9d(%rip)        # 4074f0 <infile>
  401553:	48 85 c0             	test   %rax,%rax
  401556:	75 40                	jne    401598 <main+0xed>
  401558:	48 8b 0d 49 5f 00 00 	mov    0x5f49(%rip),%rcx        # 4074a8 <optarg@@GLIBC_2.2.5>
  40155f:	ba ba 41 40 00       	mov    $0x4041ba,%edx
  401564:	be 01 00 00 00       	mov    $0x1,%esi
  401569:	48 8b 3d 50 5f 00 00 	mov    0x5f50(%rip),%rdi        # 4074c0 <stderr@@GLIBC_2.2.5>
  401570:	e8 6b fc ff ff       	callq  4011e0 <__fprintf_chk@plt>
  401575:	b8 01 00 00 00       	mov    $0x1,%eax
  40157a:	e9 cc 00 00 00       	jmpq   40164b <main+0x1a0>
  40157f:	ba 10 00 00 00       	mov    $0x10,%edx
  401584:	be 00 00 00 00       	mov    $0x0,%esi
  401589:	48 8b 3d 18 5f 00 00 	mov    0x5f18(%rip),%rdi        # 4074a8 <optarg@@GLIBC_2.2.5>
  401590:	e8 1b fc ff ff       	callq  4011b0 <strtoul@plt>
  401595:	41 89 c6             	mov    %eax,%r14d
  401598:	48 89 ea             	mov    %rbp,%rdx
  40159b:	48 89 de             	mov    %rbx,%rsi
  40159e:	44 89 e7             	mov    %r12d,%edi
  4015a1:	e8 fa fb ff ff       	callq  4011a0 <getopt@plt>
  4015a6:	3c ff                	cmp    $0xff,%al
  4015a8:	74 57                	je     401601 <main+0x156>
  4015aa:	0f be d0             	movsbl %al,%edx
  4015ad:	83 e8 61             	sub    $0x61,%eax
  4015b0:	3c 10                	cmp    $0x10,%al
  4015b2:	77 31                	ja     4015e5 <main+0x13a>
  4015b4:	0f b6 c0             	movzbl %al,%eax
  4015b7:	ff 24 c5 f8 41 40 00 	jmpq   *0x4041f8(,%rax,8)
  4015be:	ba 0a 00 00 00       	mov    $0xa,%edx
  4015c3:	be 00 00 00 00       	mov    $0x0,%esi
  4015c8:	48 8b 3d d9 5e 00 00 	mov    0x5ed9(%rip),%rdi        # 4074a8 <optarg@@GLIBC_2.2.5>
  4015cf:	e8 4c fb ff ff       	callq  401120 <strtol@plt>
  4015d4:	41 89 c5             	mov    %eax,%r13d
  4015d7:	eb bf                	jmp    401598 <main+0xed>
  4015d9:	c7 05 a5 5e 00 00 00 	movl   $0x0,0x5ea5(%rip)        # 407488 <notify>
  4015e0:	00 00 00 
  4015e3:	eb b3                	jmp    401598 <main+0xed>
  4015e5:	be d7 41 40 00       	mov    $0x4041d7,%esi
  4015ea:	bf 01 00 00 00       	mov    $0x1,%edi
  4015ef:	b8 00 00 00 00       	mov    $0x0,%eax
  4015f4:	e8 87 fb ff ff       	callq  401180 <__printf_chk@plt>
  4015f9:	48 8b 3b             	mov    (%rbx),%rdi
  4015fc:	e8 06 fd ff ff       	callq  401307 <usage>
  401601:	be 01 00 00 00       	mov    $0x1,%esi
  401606:	44 89 ef             	mov    %r13d,%edi
  401609:	e8 83 fd ff ff       	callq  401391 <initialize_target>
  40160e:	83 3d f3 5e 00 00 00 	cmpl   $0x0,0x5ef3(%rip)        # 407508 <is_checker>
  401615:	74 09                	je     401620 <main+0x175>
  401617:	44 39 35 e2 5e 00 00 	cmp    %r14d,0x5ee2(%rip)        # 407500 <authkey>
  40161e:	75 34                	jne    401654 <main+0x1a9>
  401620:	8b 15 de 5e 00 00    	mov    0x5ede(%rip),%edx        # 407504 <cookie>
  401626:	be ea 41 40 00       	mov    $0x4041ea,%esi
  40162b:	bf 01 00 00 00       	mov    $0x1,%edi
  401630:	b8 00 00 00 00       	mov    $0x0,%eax
  401635:	e8 46 fb ff ff       	callq  401180 <__printf_chk@plt>
  40163a:	48 8b 3d 3f 5e 00 00 	mov    0x5e3f(%rip),%rdi        # 407480 <buf_offset>
  401641:	e8 ac 0c 00 00       	callq  4022f2 <launch>
  401646:	b8 00 00 00 00       	mov    $0x0,%eax
  40164b:	5b                   	pop    %rbx
  40164c:	5d                   	pop    %rbp
  40164d:	41 5c                	pop    %r12
  40164f:	41 5d                	pop    %r13
  401651:	41 5e                	pop    %r14
  401653:	c3                   	retq   
  401654:	44 89 f2             	mov    %r14d,%edx
  401657:	be 10 41 40 00       	mov    $0x404110,%esi
  40165c:	bf 01 00 00 00       	mov    $0x1,%edi
  401661:	b8 00 00 00 00       	mov    $0x0,%eax
  401666:	e8 15 fb ff ff       	callq  401180 <__printf_chk@plt>
  40166b:	b8 00 00 00 00       	mov    $0x0,%eax
  401670:	e8 ae 07 00 00       	callq  401e23 <check_fail>
  401675:	eb a9                	jmp    401620 <main+0x175>

0000000000401677 <scramble>:
  401677:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
  40167c:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401680:	41 ff 72 f8          	pushq  -0x8(%r10)
  401684:	55                   	push   %rbp
  401685:	48 89 e5             	mov    %rsp,%rbp
  401688:	41 52                	push   %r10
  40168a:	48 83 ec 38          	sub    $0x38,%rsp
  40168e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401695:	00 00 
  401697:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40169b:	31 c0                	xor    %eax,%eax
  40169d:	eb 11                	jmp    4016b0 <scramble+0x39>
  40169f:	69 d0 64 44 00 00    	imul   $0x4464,%eax,%edx
  4016a5:	01 fa                	add    %edi,%edx
  4016a7:	89 c1                	mov    %eax,%ecx
  4016a9:	89 54 8d c0          	mov    %edx,-0x40(%rbp,%rcx,4)
  4016ad:	83 c0 01             	add    $0x1,%eax
  4016b0:	83 f8 09             	cmp    $0x9,%eax
  4016b3:	76 ea                	jbe    40169f <scramble+0x28>
  4016b5:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  4016b8:	69 c0 31 c0 00 00    	imul   $0xc031,%eax,%eax
  4016be:	89 45 c4             	mov    %eax,-0x3c(%rbp)
  4016c1:	8b 45 e0             	mov    -0x20(%rbp),%eax
  4016c4:	69 c0 64 e5 00 00    	imul   $0xe564,%eax,%eax
  4016ca:	89 45 e0             	mov    %eax,-0x20(%rbp)
  4016cd:	8b 45 c0             	mov    -0x40(%rbp),%eax
  4016d0:	69 c0 ed bf 00 00    	imul   $0xbfed,%eax,%eax
  4016d6:	89 45 c0             	mov    %eax,-0x40(%rbp)
  4016d9:	8b 45 cc             	mov    -0x34(%rbp),%eax
  4016dc:	69 c0 d7 a6 00 00    	imul   $0xa6d7,%eax,%eax
  4016e2:	89 45 cc             	mov    %eax,-0x34(%rbp)
  4016e5:	8b 45 cc             	mov    -0x34(%rbp),%eax
  4016e8:	69 c0 c2 14 00 00    	imul   $0x14c2,%eax,%eax
  4016ee:	89 45 cc             	mov    %eax,-0x34(%rbp)
  4016f1:	8b 45 d0             	mov    -0x30(%rbp),%eax
  4016f4:	69 c0 25 a5 00 00    	imul   $0xa525,%eax,%eax
  4016fa:	89 45 d0             	mov    %eax,-0x30(%rbp)
  4016fd:	8b 45 c8             	mov    -0x38(%rbp),%eax
  401700:	69 c0 20 d4 00 00    	imul   $0xd420,%eax,%eax
  401706:	89 45 c8             	mov    %eax,-0x38(%rbp)
  401709:	8b 45 e0             	mov    -0x20(%rbp),%eax
  40170c:	69 c0 c4 3c 00 00    	imul   $0x3cc4,%eax,%eax
  401712:	89 45 e0             	mov    %eax,-0x20(%rbp)
  401715:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401718:	69 c0 5a 83 00 00    	imul   $0x835a,%eax,%eax
  40171e:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  401721:	8b 45 c8             	mov    -0x38(%rbp),%eax
  401724:	69 c0 0b 51 00 00    	imul   $0x510b,%eax,%eax
  40172a:	89 45 c8             	mov    %eax,-0x38(%rbp)
  40172d:	8b 45 cc             	mov    -0x34(%rbp),%eax
  401730:	69 c0 41 a5 00 00    	imul   $0xa541,%eax,%eax
  401736:	89 45 cc             	mov    %eax,-0x34(%rbp)
  401739:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  40173c:	69 c0 4f a5 00 00    	imul   $0xa54f,%eax,%eax
  401742:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  401745:	8b 45 d0             	mov    -0x30(%rbp),%eax
  401748:	69 c0 f1 00 00 00    	imul   $0xf1,%eax,%eax
  40174e:	89 45 d0             	mov    %eax,-0x30(%rbp)
  401751:	8b 45 d8             	mov    -0x28(%rbp),%eax
  401754:	69 c0 cd 86 00 00    	imul   $0x86cd,%eax,%eax
  40175a:	89 45 d8             	mov    %eax,-0x28(%rbp)
  40175d:	8b 45 dc             	mov    -0x24(%rbp),%eax
  401760:	69 c0 f1 8b 00 00    	imul   $0x8bf1,%eax,%eax
  401766:	89 45 dc             	mov    %eax,-0x24(%rbp)
  401769:	8b 45 d0             	mov    -0x30(%rbp),%eax
  40176c:	69 c0 94 77 00 00    	imul   $0x7794,%eax,%eax
  401772:	89 45 d0             	mov    %eax,-0x30(%rbp)
  401775:	8b 45 c0             	mov    -0x40(%rbp),%eax
  401778:	69 c0 3c 50 00 00    	imul   $0x503c,%eax,%eax
  40177e:	89 45 c0             	mov    %eax,-0x40(%rbp)
  401781:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  401784:	69 c0 a8 81 00 00    	imul   $0x81a8,%eax,%eax
  40178a:	89 45 c4             	mov    %eax,-0x3c(%rbp)
  40178d:	8b 45 c0             	mov    -0x40(%rbp),%eax
  401790:	69 c0 95 8a 00 00    	imul   $0x8a95,%eax,%eax
  401796:	89 45 c0             	mov    %eax,-0x40(%rbp)
  401799:	8b 45 dc             	mov    -0x24(%rbp),%eax
  40179c:	69 c0 49 c5 00 00    	imul   $0xc549,%eax,%eax
  4017a2:	89 45 dc             	mov    %eax,-0x24(%rbp)
  4017a5:	8b 45 d0             	mov    -0x30(%rbp),%eax
  4017a8:	69 c0 87 29 00 00    	imul   $0x2987,%eax,%eax
  4017ae:	89 45 d0             	mov    %eax,-0x30(%rbp)
  4017b1:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  4017b4:	69 c0 9f 2b 00 00    	imul   $0x2b9f,%eax,%eax
  4017ba:	89 45 c4             	mov    %eax,-0x3c(%rbp)
  4017bd:	8b 45 cc             	mov    -0x34(%rbp),%eax
  4017c0:	69 c0 11 1a 00 00    	imul   $0x1a11,%eax,%eax
  4017c6:	89 45 cc             	mov    %eax,-0x34(%rbp)
  4017c9:	8b 45 dc             	mov    -0x24(%rbp),%eax
  4017cc:	69 c0 50 b9 00 00    	imul   $0xb950,%eax,%eax
  4017d2:	89 45 dc             	mov    %eax,-0x24(%rbp)
  4017d5:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4017d8:	69 c0 4e e5 00 00    	imul   $0xe54e,%eax,%eax
  4017de:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  4017e1:	8b 45 cc             	mov    -0x34(%rbp),%eax
  4017e4:	69 c0 8c e2 00 00    	imul   $0xe28c,%eax,%eax
  4017ea:	89 45 cc             	mov    %eax,-0x34(%rbp)
  4017ed:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4017f0:	69 c0 a4 4b 00 00    	imul   $0x4ba4,%eax,%eax
  4017f6:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  4017f9:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  4017fc:	69 c0 1b 5a 00 00    	imul   $0x5a1b,%eax,%eax
  401802:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  401805:	8b 45 e0             	mov    -0x20(%rbp),%eax
  401808:	69 c0 d3 78 00 00    	imul   $0x78d3,%eax,%eax
  40180e:	89 45 e0             	mov    %eax,-0x20(%rbp)
  401811:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401814:	69 c0 c5 7f 00 00    	imul   $0x7fc5,%eax,%eax
  40181a:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  40181d:	8b 45 c0             	mov    -0x40(%rbp),%eax
  401820:	69 c0 fb 25 00 00    	imul   $0x25fb,%eax,%eax
  401826:	89 45 c0             	mov    %eax,-0x40(%rbp)
  401829:	8b 45 dc             	mov    -0x24(%rbp),%eax
  40182c:	69 c0 e7 50 00 00    	imul   $0x50e7,%eax,%eax
  401832:	89 45 dc             	mov    %eax,-0x24(%rbp)
  401835:	8b 45 c0             	mov    -0x40(%rbp),%eax
  401838:	69 c0 52 54 00 00    	imul   $0x5452,%eax,%eax
  40183e:	89 45 c0             	mov    %eax,-0x40(%rbp)
  401841:	8b 45 cc             	mov    -0x34(%rbp),%eax
  401844:	69 c0 60 86 00 00    	imul   $0x8660,%eax,%eax
  40184a:	89 45 cc             	mov    %eax,-0x34(%rbp)
  40184d:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  401850:	69 c0 10 fb 00 00    	imul   $0xfb10,%eax,%eax
  401856:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  401859:	8b 45 dc             	mov    -0x24(%rbp),%eax
  40185c:	69 c0 3e 7e 00 00    	imul   $0x7e3e,%eax,%eax
  401862:	89 45 dc             	mov    %eax,-0x24(%rbp)
  401865:	8b 45 cc             	mov    -0x34(%rbp),%eax
  401868:	69 c0 18 b6 00 00    	imul   $0xb618,%eax,%eax
  40186e:	89 45 cc             	mov    %eax,-0x34(%rbp)
  401871:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  401874:	69 c0 3e 22 00 00    	imul   $0x223e,%eax,%eax
  40187a:	89 45 c4             	mov    %eax,-0x3c(%rbp)
  40187d:	8b 45 c0             	mov    -0x40(%rbp),%eax
  401880:	69 c0 41 12 00 00    	imul   $0x1241,%eax,%eax
  401886:	89 45 c0             	mov    %eax,-0x40(%rbp)
  401889:	8b 45 cc             	mov    -0x34(%rbp),%eax
  40188c:	69 c0 94 6d 00 00    	imul   $0x6d94,%eax,%eax
  401892:	89 45 cc             	mov    %eax,-0x34(%rbp)
  401895:	8b 45 c0             	mov    -0x40(%rbp),%eax
  401898:	69 c0 e9 e5 00 00    	imul   $0xe5e9,%eax,%eax
  40189e:	89 45 c0             	mov    %eax,-0x40(%rbp)
  4018a1:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  4018a4:	69 c0 1f 82 00 00    	imul   $0x821f,%eax,%eax
  4018aa:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  4018ad:	8b 45 d0             	mov    -0x30(%rbp),%eax
  4018b0:	69 c0 fb d7 00 00    	imul   $0xd7fb,%eax,%eax
  4018b6:	89 45 d0             	mov    %eax,-0x30(%rbp)
  4018b9:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  4018bc:	69 c0 22 7e 00 00    	imul   $0x7e22,%eax,%eax
  4018c2:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  4018c5:	8b 45 d0             	mov    -0x30(%rbp),%eax
  4018c8:	69 c0 22 bd 00 00    	imul   $0xbd22,%eax,%eax
  4018ce:	89 45 d0             	mov    %eax,-0x30(%rbp)
  4018d1:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4018d4:	69 c0 94 55 00 00    	imul   $0x5594,%eax,%eax
  4018da:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  4018dd:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  4018e0:	69 c0 42 f5 00 00    	imul   $0xf542,%eax,%eax
  4018e6:	89 45 c4             	mov    %eax,-0x3c(%rbp)
  4018e9:	8b 45 e0             	mov    -0x20(%rbp),%eax
  4018ec:	69 c0 54 59 00 00    	imul   $0x5954,%eax,%eax
  4018f2:	89 45 e0             	mov    %eax,-0x20(%rbp)
  4018f5:	8b 45 d8             	mov    -0x28(%rbp),%eax
  4018f8:	69 c0 0b 79 00 00    	imul   $0x790b,%eax,%eax
  4018fe:	89 45 d8             	mov    %eax,-0x28(%rbp)
  401901:	8b 45 cc             	mov    -0x34(%rbp),%eax
  401904:	69 c0 7c 28 00 00    	imul   $0x287c,%eax,%eax
  40190a:	89 45 cc             	mov    %eax,-0x34(%rbp)
  40190d:	8b 45 d8             	mov    -0x28(%rbp),%eax
  401910:	69 c0 5e 2b 00 00    	imul   $0x2b5e,%eax,%eax
  401916:	89 45 d8             	mov    %eax,-0x28(%rbp)
  401919:	8b 45 e0             	mov    -0x20(%rbp),%eax
  40191c:	69 c0 b2 98 00 00    	imul   $0x98b2,%eax,%eax
  401922:	89 45 e0             	mov    %eax,-0x20(%rbp)
  401925:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  401928:	69 c0 98 50 00 00    	imul   $0x5098,%eax,%eax
  40192e:	89 45 c4             	mov    %eax,-0x3c(%rbp)
  401931:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401934:	69 c0 9f b1 00 00    	imul   $0xb19f,%eax,%eax
  40193a:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  40193d:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401940:	69 c0 7f 96 00 00    	imul   $0x967f,%eax,%eax
  401946:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  401949:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  40194c:	69 c0 68 5a 00 00    	imul   $0x5a68,%eax,%eax
  401952:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  401955:	8b 45 cc             	mov    -0x34(%rbp),%eax
  401958:	69 c0 54 6f 00 00    	imul   $0x6f54,%eax,%eax
  40195e:	89 45 cc             	mov    %eax,-0x34(%rbp)
  401961:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  401964:	69 c0 f6 ad 00 00    	imul   $0xadf6,%eax,%eax
  40196a:	89 45 c4             	mov    %eax,-0x3c(%rbp)
  40196d:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  401970:	69 c0 c1 b8 00 00    	imul   $0xb8c1,%eax,%eax
  401976:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  401979:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  40197c:	69 c0 1e 98 00 00    	imul   $0x981e,%eax,%eax
  401982:	89 45 c4             	mov    %eax,-0x3c(%rbp)
  401985:	8b 45 d0             	mov    -0x30(%rbp),%eax
  401988:	69 c0 01 2a 00 00    	imul   $0x2a01,%eax,%eax
  40198e:	89 45 d0             	mov    %eax,-0x30(%rbp)
  401991:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401994:	69 c0 00 59 00 00    	imul   $0x5900,%eax,%eax
  40199a:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  40199d:	8b 45 c0             	mov    -0x40(%rbp),%eax
  4019a0:	69 c0 2e 94 00 00    	imul   $0x942e,%eax,%eax
  4019a6:	89 45 c0             	mov    %eax,-0x40(%rbp)
  4019a9:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4019ac:	69 c0 d7 68 00 00    	imul   $0x68d7,%eax,%eax
  4019b2:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  4019b5:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  4019b8:	69 c0 09 92 00 00    	imul   $0x9209,%eax,%eax
  4019be:	89 45 c4             	mov    %eax,-0x3c(%rbp)
  4019c1:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  4019c4:	69 c0 55 81 00 00    	imul   $0x8155,%eax,%eax
  4019ca:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  4019cd:	8b 45 dc             	mov    -0x24(%rbp),%eax
  4019d0:	69 c0 0e 38 00 00    	imul   $0x380e,%eax,%eax
  4019d6:	89 45 dc             	mov    %eax,-0x24(%rbp)
  4019d9:	8b 45 c0             	mov    -0x40(%rbp),%eax
  4019dc:	69 c0 dd 9e 00 00    	imul   $0x9edd,%eax,%eax
  4019e2:	89 45 c0             	mov    %eax,-0x40(%rbp)
  4019e5:	8b 45 c8             	mov    -0x38(%rbp),%eax
  4019e8:	69 c0 f8 d4 00 00    	imul   $0xd4f8,%eax,%eax
  4019ee:	89 45 c8             	mov    %eax,-0x38(%rbp)
  4019f1:	8b 45 d0             	mov    -0x30(%rbp),%eax
  4019f4:	69 c0 7f eb 00 00    	imul   $0xeb7f,%eax,%eax
  4019fa:	89 45 d0             	mov    %eax,-0x30(%rbp)
  4019fd:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  401a00:	69 c0 af 6f 00 00    	imul   $0x6faf,%eax,%eax
  401a06:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  401a09:	8b 45 cc             	mov    -0x34(%rbp),%eax
  401a0c:	69 c0 e1 e7 00 00    	imul   $0xe7e1,%eax,%eax
  401a12:	89 45 cc             	mov    %eax,-0x34(%rbp)
  401a15:	8b 45 cc             	mov    -0x34(%rbp),%eax
  401a18:	69 c0 6f 22 00 00    	imul   $0x226f,%eax,%eax
  401a1e:	89 45 cc             	mov    %eax,-0x34(%rbp)
  401a21:	8b 45 c0             	mov    -0x40(%rbp),%eax
  401a24:	69 c0 53 26 00 00    	imul   $0x2653,%eax,%eax
  401a2a:	89 45 c0             	mov    %eax,-0x40(%rbp)
  401a2d:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  401a30:	69 c0 f0 c1 00 00    	imul   $0xc1f0,%eax,%eax
  401a36:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  401a39:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  401a3c:	69 c0 14 51 00 00    	imul   $0x5114,%eax,%eax
  401a42:	89 45 c4             	mov    %eax,-0x3c(%rbp)
  401a45:	8b 45 e0             	mov    -0x20(%rbp),%eax
  401a48:	69 c0 24 ac 00 00    	imul   $0xac24,%eax,%eax
  401a4e:	89 45 e0             	mov    %eax,-0x20(%rbp)
  401a51:	ba 00 00 00 00       	mov    $0x0,%edx
  401a56:	b8 00 00 00 00       	mov    $0x0,%eax
  401a5b:	eb 0b                	jmp    401a68 <scramble+0x3f1>
  401a5d:	89 d1                	mov    %edx,%ecx
  401a5f:	8b 4c 8d c0          	mov    -0x40(%rbp,%rcx,4),%ecx
  401a63:	01 c8                	add    %ecx,%eax
  401a65:	83 c2 01             	add    $0x1,%edx
  401a68:	83 fa 09             	cmp    $0x9,%edx
  401a6b:	76 f0                	jbe    401a5d <scramble+0x3e6>
  401a6d:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  401a71:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401a78:	00 00 
  401a7a:	75 0c                	jne    401a88 <scramble+0x411>
  401a7c:	48 83 c4 38          	add    $0x38,%rsp
  401a80:	41 5a                	pop    %r10
  401a82:	5d                   	pop    %rbp
  401a83:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
  401a87:	c3                   	retq   
  401a88:	e8 03 f6 ff ff       	callq  401090 <__stack_chk_fail@plt>

0000000000401a8d <getbuf>:
  401a8d:	48 83 ec 38          	sub    $0x38,%rsp
  401a91:	48 89 e7             	mov    %rsp,%rdi
  401a94:	e8 bf 03 00 00       	callq  401e58 <Gets>
  401a99:	b8 01 00 00 00       	mov    $0x1,%eax
  401a9e:	48 83 c4 38          	add    $0x38,%rsp
  401aa2:	c3                   	retq   

0000000000401aa3 <touch1>:
  401aa3:	48 83 ec 08          	sub    $0x8,%rsp
  401aa7:	c7 05 4b 5a 00 00 01 	movl   $0x1,0x5a4b(%rip)        # 4074fc <vlevel>
  401aae:	00 00 00 
  401ab1:	bf ae 42 40 00       	mov    $0x4042ae,%edi
  401ab6:	e8 b5 f5 ff ff       	callq  401070 <puts@plt>
  401abb:	bf 01 00 00 00       	mov    $0x1,%edi
  401ac0:	e8 03 06 00 00       	callq  4020c8 <validate>
  401ac5:	bf 00 00 00 00       	mov    $0x0,%edi
  401aca:	e8 f1 f6 ff ff       	callq  4011c0 <exit@plt>

0000000000401acf <touch2>:
  401acf:	48 83 ec 08          	sub    $0x8,%rsp
  401ad3:	89 fa                	mov    %edi,%edx
  401ad5:	c7 05 1d 5a 00 00 02 	movl   $0x2,0x5a1d(%rip)        # 4074fc <vlevel>
  401adc:	00 00 00 
  401adf:	39 3d 1f 5a 00 00    	cmp    %edi,0x5a1f(%rip)        # 407504 <cookie>
  401ae5:	74 28                	je     401b0f <touch2+0x40>
  401ae7:	be f8 42 40 00       	mov    $0x4042f8,%esi
  401aec:	bf 01 00 00 00       	mov    $0x1,%edi
  401af1:	b8 00 00 00 00       	mov    $0x0,%eax
  401af6:	e8 85 f6 ff ff       	callq  401180 <__printf_chk@plt>
  401afb:	bf 02 00 00 00       	mov    $0x2,%edi
  401b00:	e8 88 06 00 00       	callq  40218d <fail>
  401b05:	bf 00 00 00 00       	mov    $0x0,%edi
  401b0a:	e8 b1 f6 ff ff       	callq  4011c0 <exit@plt>
  401b0f:	be d0 42 40 00       	mov    $0x4042d0,%esi
  401b14:	bf 01 00 00 00       	mov    $0x1,%edi
  401b19:	b8 00 00 00 00       	mov    $0x0,%eax
  401b1e:	e8 5d f6 ff ff       	callq  401180 <__printf_chk@plt>
  401b23:	bf 02 00 00 00       	mov    $0x2,%edi
  401b28:	e8 9b 05 00 00       	callq  4020c8 <validate>
  401b2d:	eb d6                	jmp    401b05 <touch2+0x36>

0000000000401b2f <hexmatch>:
  401b2f:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
  401b34:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401b38:	41 ff 72 f8          	pushq  -0x8(%r10)
  401b3c:	55                   	push   %rbp
  401b3d:	48 89 e5             	mov    %rsp,%rbp
  401b40:	41 55                	push   %r13
  401b42:	41 54                	push   %r12
  401b44:	41 52                	push   %r10
  401b46:	53                   	push   %rbx
  401b47:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  401b4b:	41 89 fc             	mov    %edi,%r12d
  401b4e:	48 89 f3             	mov    %rsi,%rbx
  401b51:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401b58:	00 00 
  401b5a:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  401b5e:	31 c0                	xor    %eax,%eax
  401b60:	e8 eb f5 ff ff       	callq  401150 <random@plt>
  401b65:	48 89 c1             	mov    %rax,%rcx
  401b68:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401b6f:	0a d7 a3 
  401b72:	48 f7 ea             	imul   %rdx
  401b75:	48 01 ca             	add    %rcx,%rdx
  401b78:	48 c1 fa 06          	sar    $0x6,%rdx
  401b7c:	48 89 c8             	mov    %rcx,%rax
  401b7f:	48 c1 f8 3f          	sar    $0x3f,%rax
  401b83:	48 29 c2             	sub    %rax,%rdx
  401b86:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  401b8a:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401b8e:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  401b95:	00 
  401b96:	48 29 c1             	sub    %rax,%rcx
  401b99:	4c 8d ac 0d 60 ff ff 	lea    -0xa0(%rbp,%rcx,1),%r13
  401ba0:	ff 
  401ba1:	45 89 e0             	mov    %r12d,%r8d
  401ba4:	b9 cb 42 40 00       	mov    $0x4042cb,%ecx
  401ba9:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  401bb0:	be 01 00 00 00       	mov    $0x1,%esi
  401bb5:	4c 89 ef             	mov    %r13,%rdi
  401bb8:	b8 00 00 00 00       	mov    $0x0,%eax
  401bbd:	e8 3e f6 ff ff       	callq  401200 <__sprintf_chk@plt>
  401bc2:	ba 09 00 00 00       	mov    $0x9,%edx
  401bc7:	4c 89 ee             	mov    %r13,%rsi
  401bca:	48 89 df             	mov    %rbx,%rdi
  401bcd:	e8 7e f4 ff ff       	callq  401050 <strncmp@plt>
  401bd2:	85 c0                	test   %eax,%eax
  401bd4:	0f 94 c0             	sete   %al
  401bd7:	48 8b 5d d8          	mov    -0x28(%rbp),%rbx
  401bdb:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  401be2:	00 00 
  401be4:	75 14                	jne    401bfa <hexmatch+0xcb>
  401be6:	0f b6 c0             	movzbl %al,%eax
  401be9:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401bed:	5b                   	pop    %rbx
  401bee:	41 5a                	pop    %r10
  401bf0:	41 5c                	pop    %r12
  401bf2:	41 5d                	pop    %r13
  401bf4:	5d                   	pop    %rbp
  401bf5:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
  401bf9:	c3                   	retq   
  401bfa:	e8 91 f4 ff ff       	callq  401090 <__stack_chk_fail@plt>

0000000000401bff <touch3>:
  401bff:	53                   	push   %rbx
  401c00:	48 89 fb             	mov    %rdi,%rbx
  401c03:	c7 05 ef 58 00 00 03 	movl   $0x3,0x58ef(%rip)        # 4074fc <vlevel>
  401c0a:	00 00 00 
  401c0d:	48 89 fe             	mov    %rdi,%rsi
  401c10:	8b 3d ee 58 00 00    	mov    0x58ee(%rip),%edi        # 407504 <cookie>
  401c16:	e8 14 ff ff ff       	callq  401b2f <hexmatch>
  401c1b:	85 c0                	test   %eax,%eax
  401c1d:	74 2b                	je     401c4a <touch3+0x4b>
  401c1f:	48 89 da             	mov    %rbx,%rdx
  401c22:	be 20 43 40 00       	mov    $0x404320,%esi
  401c27:	bf 01 00 00 00       	mov    $0x1,%edi
  401c2c:	b8 00 00 00 00       	mov    $0x0,%eax
  401c31:	e8 4a f5 ff ff       	callq  401180 <__printf_chk@plt>
  401c36:	bf 03 00 00 00       	mov    $0x3,%edi
  401c3b:	e8 88 04 00 00       	callq  4020c8 <validate>
  401c40:	bf 00 00 00 00       	mov    $0x0,%edi
  401c45:	e8 76 f5 ff ff       	callq  4011c0 <exit@plt>
  401c4a:	48 89 da             	mov    %rbx,%rdx
  401c4d:	be 48 43 40 00       	mov    $0x404348,%esi
  401c52:	bf 01 00 00 00       	mov    $0x1,%edi
  401c57:	b8 00 00 00 00       	mov    $0x0,%eax
  401c5c:	e8 1f f5 ff ff       	callq  401180 <__printf_chk@plt>
  401c61:	bf 03 00 00 00       	mov    $0x3,%edi
  401c66:	e8 22 05 00 00       	callq  40218d <fail>
  401c6b:	eb d3                	jmp    401c40 <touch3+0x41>

0000000000401c6d <test>:
  401c6d:	48 83 ec 08          	sub    $0x8,%rsp
  401c71:	b8 00 00 00 00       	mov    $0x0,%eax
  401c76:	e8 12 fe ff ff       	callq  401a8d <getbuf>
  401c7b:	89 c2                	mov    %eax,%edx
  401c7d:	be 70 43 40 00       	mov    $0x404370,%esi
  401c82:	bf 01 00 00 00       	mov    $0x1,%edi
  401c87:	b8 00 00 00 00       	mov    $0x0,%eax
  401c8c:	e8 ef f4 ff ff       	callq  401180 <__printf_chk@plt>
  401c91:	48 83 c4 08          	add    $0x8,%rsp
  401c95:	c3                   	retq   

0000000000401c96 <start_farm>:
  401c96:	b8 01 00 00 00       	mov    $0x1,%eax
  401c9b:	c3                   	retq   

0000000000401c9c <addval_495>:
  401c9c:	8d 87 48 89 c7 c1    	lea    -0x3e3876b8(%rdi),%eax
  401ca2:	c3                   	retq   

0000000000401ca3 <addval_214>:
  401ca3:	8d 87 4b fa 4d 58    	lea    0x584dfa4b(%rdi),%eax
  401ca9:	c3                   	retq   

0000000000401caa <setval_418>:
  401caa:	c7 07 5f b0 58 92    	movl   $0x9258b05f,(%rdi)
  401cb0:	c3                   	retq   

0000000000401cb1 <addval_359>:
  401cb1:	8d 87 48 89 c7 c3    	lea    -0x3c3876b8(%rdi),%eax
  401cb7:	c3                   	retq   

0000000000401cb8 <getval_383>:
  401cb8:	b8 2e 58 90 c3       	mov    $0xc390582e,%eax
  401cbd:	c3                   	retq   

0000000000401cbe <setval_152>:
  401cbe:	c7 07 48 89 c7 c3    	movl   $0xc3c78948,(%rdi)
  401cc4:	c3                   	retq   

0000000000401cc5 <setval_362>:
  401cc5:	c7 07 58 91 c3 41    	movl   $0x41c39158,(%rdi)
  401ccb:	c3                   	retq   

0000000000401ccc <getval_266>:
  401ccc:	b8 48 81 c7 90       	mov    $0x90c78148,%eax
  401cd1:	c3                   	retq   

0000000000401cd2 <mid_farm>:
  401cd2:	b8 01 00 00 00       	mov    $0x1,%eax
  401cd7:	c3                   	retq   

0000000000401cd8 <add_xy>:
  401cd8:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  401cdc:	c3                   	retq   

0000000000401cdd <setval_425>:
  401cdd:	c7 07 89 d1 28 db    	movl   $0xdb28d189,(%rdi)
  401ce3:	c3                   	retq   

0000000000401ce4 <getval_360>:
  401ce4:	b8 89 ce 28 c9       	mov    $0xc928ce89,%eax
  401ce9:	c3                   	retq   

0000000000401cea <setval_479>:
  401cea:	c7 07 89 c2 00 c9    	movl   $0xc900c289,(%rdi)
  401cf0:	c3                   	retq   

0000000000401cf1 <addval_157>:
  401cf1:	8d 87 8d c2 20 d2    	lea    -0x2ddf3d73(%rdi),%eax
  401cf7:	c3                   	retq   

0000000000401cf8 <setval_439>:
  401cf8:	c7 07 89 d1 90 90    	movl   $0x9090d189,(%rdi)
  401cfe:	c3                   	retq   

0000000000401cff <getval_222>:
  401cff:	b8 21 89 d1 90       	mov    $0x90d18921,%eax
  401d04:	c3                   	retq   

0000000000401d05 <addval_173>:
  401d05:	8d 87 89 d1 94 c9    	lea    -0x366b2e77(%rdi),%eax
  401d0b:	c3                   	retq   

0000000000401d0c <addval_314>:
  401d0c:	8d 87 8d d1 20 d2    	lea    -0x2ddf2e73(%rdi),%eax
  401d12:	c3                   	retq   

0000000000401d13 <addval_156>:
  401d13:	8d 87 a9 d1 84 db    	lea    -0x247b2e57(%rdi),%eax
  401d19:	c3                   	retq   

0000000000401d1a <getval_451>:
  401d1a:	b8 49 89 e0 90       	mov    $0x90e08949,%eax
  401d1f:	c3                   	retq   

0000000000401d20 <addval_185>:
  401d20:	8d 87 89 ce 84 d2    	lea    -0x2d7b3177(%rdi),%eax
  401d26:	c3                   	retq   

0000000000401d27 <setval_493>:
  401d27:	c7 07 48 89 e0 92    	movl   $0x92e08948,(%rdi)
  401d2d:	c3                   	retq   

0000000000401d2e <addval_353>:
  401d2e:	8d 87 8b d1 20 c0    	lea    -0x3fdf2e75(%rdi),%eax
  401d34:	c3                   	retq   

0000000000401d35 <setval_257>:
  401d35:	c7 07 89 ce 38 d2    	movl   $0xd238ce89,(%rdi)
  401d3b:	c3                   	retq   

0000000000401d3c <addval_104>:
  401d3c:	8d 87 8b ce 38 db    	lea    -0x24c73175(%rdi),%eax
  401d42:	c3                   	retq   

0000000000401d43 <addval_424>:
  401d43:	8d 87 89 c2 84 d2    	lea    -0x2d7b3d77(%rdi),%eax
  401d49:	c3                   	retq   

0000000000401d4a <setval_394>:
  401d4a:	c7 07 07 48 8b e0    	movl   $0xe08b4807,(%rdi)
  401d50:	c3                   	retq   

0000000000401d51 <getval_123>:
  401d51:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
  401d56:	c3                   	retq   

0000000000401d57 <setval_494>:
  401d57:	c7 07 89 ce a4 c0    	movl   $0xc0a4ce89,(%rdi)
  401d5d:	c3                   	retq   

0000000000401d5e <setval_427>:
  401d5e:	c7 07 89 c2 18 c0    	movl   $0xc018c289,(%rdi)
  401d64:	c3                   	retq   

0000000000401d65 <getval_217>:
  401d65:	b8 81 c2 84 d2       	mov    $0xd284c281,%eax
  401d6a:	c3                   	retq   

0000000000401d6b <setval_440>:
  401d6b:	c7 07 89 d1 91 90    	movl   $0x9091d189,(%rdi)
  401d71:	c3                   	retq   

0000000000401d72 <addval_313>:
  401d72:	8d 87 89 c2 38 c0    	lea    -0x3fc73d77(%rdi),%eax
  401d78:	c3                   	retq   

0000000000401d79 <getval_236>:
  401d79:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
  401d7e:	c3                   	retq   

0000000000401d7f <getval_386>:
  401d7f:	b8 99 ce 38 c0       	mov    $0xc038ce99,%eax
  401d84:	c3                   	retq   

0000000000401d85 <getval_471>:
  401d85:	b8 89 c2 00 d2       	mov    $0xd200c289,%eax
  401d8a:	c3                   	retq   

0000000000401d8b <getval_343>:
  401d8b:	b8 48 89 e0 92       	mov    $0x92e08948,%eax
  401d90:	c3                   	retq   

0000000000401d91 <setval_355>:
  401d91:	c7 07 89 ce 28 c9    	movl   $0xc928ce89,(%rdi)
  401d97:	c3                   	retq   

0000000000401d98 <getval_109>:
  401d98:	b8 48 89 e0 91       	mov    $0x91e08948,%eax
  401d9d:	c3                   	retq   

0000000000401d9e <addval_458>:
  401d9e:	8d 87 8d ce 20 c9    	lea    -0x36df3173(%rdi),%eax
  401da4:	c3                   	retq   

0000000000401da5 <setval_192>:
  401da5:	c7 07 48 89 e0 91    	movl   $0x91e08948,(%rdi)
  401dab:	c3                   	retq   

0000000000401dac <getval_121>:
  401dac:	b8 89 c2 28 db       	mov    $0xdb28c289,%eax
  401db1:	c3                   	retq   

0000000000401db2 <end_farm>:
  401db2:	b8 01 00 00 00       	mov    $0x1,%eax
  401db7:	c3                   	retq   

0000000000401db8 <save_char>:
  401db8:	8b 05 66 63 00 00    	mov    0x6366(%rip),%eax        # 408124 <gets_cnt>
  401dbe:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401dc3:	7f 49                	jg     401e0e <save_char+0x56>
  401dc5:	89 f9                	mov    %edi,%ecx
  401dc7:	c0 e9 04             	shr    $0x4,%cl
  401dca:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401dcd:	83 e1 0f             	and    $0xf,%ecx
  401dd0:	0f b6 b1 90 46 40 00 	movzbl 0x404690(%rcx),%esi
  401dd7:	48 63 ca             	movslq %edx,%rcx
  401dda:	40 88 b1 20 75 40 00 	mov    %sil,0x407520(%rcx)
  401de1:	8d 4a 01             	lea    0x1(%rdx),%ecx
  401de4:	83 e7 0f             	and    $0xf,%edi
  401de7:	0f b6 b7 90 46 40 00 	movzbl 0x404690(%rdi),%esi
  401dee:	48 63 c9             	movslq %ecx,%rcx
  401df1:	40 88 b1 20 75 40 00 	mov    %sil,0x407520(%rcx)
  401df8:	83 c2 02             	add    $0x2,%edx
  401dfb:	48 63 d2             	movslq %edx,%rdx
  401dfe:	c6 82 20 75 40 00 20 	movb   $0x20,0x407520(%rdx)
  401e05:	83 c0 01             	add    $0x1,%eax
  401e08:	89 05 16 63 00 00    	mov    %eax,0x6316(%rip)        # 408124 <gets_cnt>
  401e0e:	f3 c3                	repz retq 

0000000000401e10 <save_term>:
  401e10:	8b 05 0e 63 00 00    	mov    0x630e(%rip),%eax        # 408124 <gets_cnt>
  401e16:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401e19:	48 98                	cltq   
  401e1b:	c6 80 20 75 40 00 00 	movb   $0x0,0x407520(%rax)
  401e22:	c3                   	retq   

0000000000401e23 <check_fail>:
  401e23:	48 83 ec 08          	sub    $0x8,%rsp
  401e27:	0f be 15 fa 62 00 00 	movsbl 0x62fa(%rip),%edx        # 408128 <target_prefix>
  401e2e:	41 b8 20 75 40 00    	mov    $0x407520,%r8d
  401e34:	8b 0d be 56 00 00    	mov    0x56be(%rip),%ecx        # 4074f8 <check_level>
  401e3a:	be 93 43 40 00       	mov    $0x404393,%esi
  401e3f:	bf 01 00 00 00       	mov    $0x1,%edi
  401e44:	b8 00 00 00 00       	mov    $0x0,%eax
  401e49:	e8 32 f3 ff ff       	callq  401180 <__printf_chk@plt>
  401e4e:	bf 01 00 00 00       	mov    $0x1,%edi
  401e53:	e8 68 f3 ff ff       	callq  4011c0 <exit@plt>

0000000000401e58 <Gets>:
  401e58:	41 54                	push   %r12
  401e5a:	55                   	push   %rbp
  401e5b:	53                   	push   %rbx
  401e5c:	49 89 fc             	mov    %rdi,%r12
  401e5f:	c7 05 bb 62 00 00 00 	movl   $0x0,0x62bb(%rip)        # 408124 <gets_cnt>
  401e66:	00 00 00 
  401e69:	48 89 fb             	mov    %rdi,%rbx
  401e6c:	eb 11                	jmp    401e7f <Gets+0x27>
  401e6e:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401e72:	88 03                	mov    %al,(%rbx)
  401e74:	0f b6 f8             	movzbl %al,%edi
  401e77:	e8 3c ff ff ff       	callq  401db8 <save_char>
  401e7c:	48 89 eb             	mov    %rbp,%rbx
  401e7f:	48 8b 3d 6a 56 00 00 	mov    0x566a(%rip),%rdi        # 4074f0 <infile>
  401e86:	e8 65 f3 ff ff       	callq  4011f0 <getc@plt>
  401e8b:	83 f8 ff             	cmp    $0xffffffff,%eax
  401e8e:	74 05                	je     401e95 <Gets+0x3d>
  401e90:	83 f8 0a             	cmp    $0xa,%eax
  401e93:	75 d9                	jne    401e6e <Gets+0x16>
  401e95:	c6 03 00             	movb   $0x0,(%rbx)
  401e98:	b8 00 00 00 00       	mov    $0x0,%eax
  401e9d:	e8 6e ff ff ff       	callq  401e10 <save_term>
  401ea2:	4c 89 e0             	mov    %r12,%rax
  401ea5:	5b                   	pop    %rbx
  401ea6:	5d                   	pop    %rbp
  401ea7:	41 5c                	pop    %r12
  401ea9:	c3                   	retq   

0000000000401eaa <notify_server>:
  401eaa:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
  401eaf:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401eb3:	41 ff 72 f8          	pushq  -0x8(%r10)
  401eb7:	55                   	push   %rbp
  401eb8:	48 89 e5             	mov    %rsp,%rbp
  401ebb:	41 54                	push   %r12
  401ebd:	41 52                	push   %r10
  401ebf:	53                   	push   %rbx
  401ec0:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  401ec7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401ece:	00 00 
  401ed0:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  401ed4:	31 c0                	xor    %eax,%eax
  401ed6:	83 3d 2b 56 00 00 00 	cmpl   $0x0,0x562b(%rip)        # 407508 <is_checker>
  401edd:	0f 85 cf 00 00 00    	jne    401fb2 <notify_server+0x108>
  401ee3:	89 fb                	mov    %edi,%ebx
  401ee5:	8b 05 39 62 00 00    	mov    0x6239(%rip),%eax        # 408124 <gets_cnt>
  401eeb:	83 c0 64             	add    $0x64,%eax
  401eee:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401ef3:	0f 8f db 00 00 00    	jg     401fd4 <notify_server+0x12a>
  401ef9:	0f be 05 28 62 00 00 	movsbl 0x6228(%rip),%eax        # 408128 <target_prefix>
  401f00:	83 3d 81 55 00 00 00 	cmpl   $0x0,0x5581(%rip)        # 407488 <notify>
  401f07:	0f 84 e5 00 00 00    	je     401ff2 <notify_server+0x148>
  401f0d:	8b 15 ed 55 00 00    	mov    0x55ed(%rip),%edx        # 407500 <authkey>
  401f13:	85 db                	test   %ebx,%ebx
  401f15:	0f 84 e1 00 00 00    	je     401ffc <notify_server+0x152>
  401f1b:	41 bc a9 43 40 00    	mov    $0x4043a9,%r12d
  401f21:	68 20 75 40 00       	pushq  $0x407520
  401f26:	56                   	push   %rsi
  401f27:	50                   	push   %rax
  401f28:	52                   	push   %rdx
  401f29:	4d 89 e1             	mov    %r12,%r9
  401f2c:	44 8b 05 15 52 00 00 	mov    0x5215(%rip),%r8d        # 407148 <target_id>
  401f33:	b9 b3 43 40 00       	mov    $0x4043b3,%ecx
  401f38:	ba 00 20 00 00       	mov    $0x2000,%edx
  401f3d:	be 01 00 00 00       	mov    $0x1,%esi
  401f42:	48 8d bd d0 bf ff ff 	lea    -0x4030(%rbp),%rdi
  401f49:	b8 00 00 00 00       	mov    $0x0,%eax
  401f4e:	e8 ad f2 ff ff       	callq  401200 <__sprintf_chk@plt>
  401f53:	48 83 c4 20          	add    $0x20,%rsp
  401f57:	83 3d 2a 55 00 00 00 	cmpl   $0x0,0x552a(%rip)        # 407488 <notify>
  401f5e:	0f 84 d7 00 00 00    	je     40203b <notify_server+0x191>
  401f64:	85 db                	test   %ebx,%ebx
  401f66:	0f 84 c0 00 00 00    	je     40202c <notify_server+0x182>
  401f6c:	4c 8d 8d d0 df ff ff 	lea    -0x2030(%rbp),%r9
  401f73:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401f79:	48 8d 8d d0 bf ff ff 	lea    -0x4030(%rbp),%rcx
  401f80:	48 8b 15 c9 51 00 00 	mov    0x51c9(%rip),%rdx        # 407150 <lab>
  401f87:	48 8b 35 ca 51 00 00 	mov    0x51ca(%rip),%rsi        # 407158 <course>
  401f8e:	48 8b 3d ab 51 00 00 	mov    0x51ab(%rip),%rdi        # 407140 <user_id>
  401f95:	e8 ed 11 00 00       	callq  403187 <driver_post>
  401f9a:	85 c0                	test   %eax,%eax
  401f9c:	78 69                	js     402007 <notify_server+0x15d>
  401f9e:	bf f8 44 40 00       	mov    $0x4044f8,%edi
  401fa3:	e8 c8 f0 ff ff       	callq  401070 <puts@plt>
  401fa8:	bf db 43 40 00       	mov    $0x4043db,%edi
  401fad:	e8 be f0 ff ff       	callq  401070 <puts@plt>
  401fb2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401fb6:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401fbd:	00 00 
  401fbf:	0f 85 fe 00 00 00    	jne    4020c3 <notify_server+0x219>
  401fc5:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  401fc9:	5b                   	pop    %rbx
  401fca:	41 5a                	pop    %r10
  401fcc:	41 5c                	pop    %r12
  401fce:	5d                   	pop    %rbp
  401fcf:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
  401fd3:	c3                   	retq   
  401fd4:	be c8 44 40 00       	mov    $0x4044c8,%esi
  401fd9:	bf 01 00 00 00       	mov    $0x1,%edi
  401fde:	b8 00 00 00 00       	mov    $0x0,%eax
  401fe3:	e8 98 f1 ff ff       	callq  401180 <__printf_chk@plt>
  401fe8:	bf 01 00 00 00       	mov    $0x1,%edi
  401fed:	e8 ce f1 ff ff       	callq  4011c0 <exit@plt>
  401ff2:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401ff7:	e9 17 ff ff ff       	jmpq   401f13 <notify_server+0x69>
  401ffc:	41 bc ae 43 40 00    	mov    $0x4043ae,%r12d
  402002:	e9 1a ff ff ff       	jmpq   401f21 <notify_server+0x77>
  402007:	48 8d 95 d0 df ff ff 	lea    -0x2030(%rbp),%rdx
  40200e:	be cf 43 40 00       	mov    $0x4043cf,%esi
  402013:	bf 01 00 00 00       	mov    $0x1,%edi
  402018:	b8 00 00 00 00       	mov    $0x0,%eax
  40201d:	e8 5e f1 ff ff       	callq  401180 <__printf_chk@plt>
  402022:	bf 01 00 00 00       	mov    $0x1,%edi
  402027:	e8 94 f1 ff ff       	callq  4011c0 <exit@plt>
  40202c:	bf e5 43 40 00       	mov    $0x4043e5,%edi
  402031:	e8 3a f0 ff ff       	callq  401070 <puts@plt>
  402036:	e9 77 ff ff ff       	jmpq   401fb2 <notify_server+0x108>
  40203b:	4c 89 e2             	mov    %r12,%rdx
  40203e:	be 30 45 40 00       	mov    $0x404530,%esi
  402043:	bf 01 00 00 00       	mov    $0x1,%edi
  402048:	b8 00 00 00 00       	mov    $0x0,%eax
  40204d:	e8 2e f1 ff ff       	callq  401180 <__printf_chk@plt>
  402052:	48 8b 15 e7 50 00 00 	mov    0x50e7(%rip),%rdx        # 407140 <user_id>
  402059:	be ec 43 40 00       	mov    $0x4043ec,%esi
  40205e:	bf 01 00 00 00       	mov    $0x1,%edi
  402063:	b8 00 00 00 00       	mov    $0x0,%eax
  402068:	e8 13 f1 ff ff       	callq  401180 <__printf_chk@plt>
  40206d:	48 8b 15 e4 50 00 00 	mov    0x50e4(%rip),%rdx        # 407158 <course>
  402074:	be f9 43 40 00       	mov    $0x4043f9,%esi
  402079:	bf 01 00 00 00       	mov    $0x1,%edi
  40207e:	b8 00 00 00 00       	mov    $0x0,%eax
  402083:	e8 f8 f0 ff ff       	callq  401180 <__printf_chk@plt>
  402088:	48 8b 15 c1 50 00 00 	mov    0x50c1(%rip),%rdx        # 407150 <lab>
  40208f:	be 05 44 40 00       	mov    $0x404405,%esi
  402094:	bf 01 00 00 00       	mov    $0x1,%edi
  402099:	b8 00 00 00 00       	mov    $0x0,%eax
  40209e:	e8 dd f0 ff ff       	callq  401180 <__printf_chk@plt>
  4020a3:	48 8d 95 d0 bf ff ff 	lea    -0x4030(%rbp),%rdx
  4020aa:	be 0e 44 40 00       	mov    $0x40440e,%esi
  4020af:	bf 01 00 00 00       	mov    $0x1,%edi
  4020b4:	b8 00 00 00 00       	mov    $0x0,%eax
  4020b9:	e8 c2 f0 ff ff       	callq  401180 <__printf_chk@plt>
  4020be:	e9 ef fe ff ff       	jmpq   401fb2 <notify_server+0x108>
  4020c3:	e8 c8 ef ff ff       	callq  401090 <__stack_chk_fail@plt>

00000000004020c8 <validate>:
  4020c8:	53                   	push   %rbx
  4020c9:	89 fb                	mov    %edi,%ebx
  4020cb:	83 3d 36 54 00 00 00 	cmpl   $0x0,0x5436(%rip)        # 407508 <is_checker>
  4020d2:	74 6b                	je     40213f <validate+0x77>
  4020d4:	39 3d 22 54 00 00    	cmp    %edi,0x5422(%rip)        # 4074fc <vlevel>
  4020da:	75 2f                	jne    40210b <validate+0x43>
  4020dc:	8b 15 16 54 00 00    	mov    0x5416(%rip),%edx        # 4074f8 <check_level>
  4020e2:	39 fa                	cmp    %edi,%edx
  4020e4:	75 39                	jne    40211f <validate+0x57>
  4020e6:	0f be 15 3b 60 00 00 	movsbl 0x603b(%rip),%edx        # 408128 <target_prefix>
  4020ed:	41 b8 20 75 40 00    	mov    $0x407520,%r8d
  4020f3:	89 f9                	mov    %edi,%ecx
  4020f5:	be 38 44 40 00       	mov    $0x404438,%esi
  4020fa:	bf 01 00 00 00       	mov    $0x1,%edi
  4020ff:	b8 00 00 00 00       	mov    $0x0,%eax
  402104:	e8 77 f0 ff ff       	callq  401180 <__printf_chk@plt>
  402109:	5b                   	pop    %rbx
  40210a:	c3                   	retq   
  40210b:	bf 1a 44 40 00       	mov    $0x40441a,%edi
  402110:	e8 5b ef ff ff       	callq  401070 <puts@plt>
  402115:	b8 00 00 00 00       	mov    $0x0,%eax
  40211a:	e8 04 fd ff ff       	callq  401e23 <check_fail>
  40211f:	89 f9                	mov    %edi,%ecx
  402121:	be 58 45 40 00       	mov    $0x404558,%esi
  402126:	bf 01 00 00 00       	mov    $0x1,%edi
  40212b:	b8 00 00 00 00       	mov    $0x0,%eax
  402130:	e8 4b f0 ff ff       	callq  401180 <__printf_chk@plt>
  402135:	b8 00 00 00 00       	mov    $0x0,%eax
  40213a:	e8 e4 fc ff ff       	callq  401e23 <check_fail>
  40213f:	39 3d b7 53 00 00    	cmp    %edi,0x53b7(%rip)        # 4074fc <vlevel>
  402145:	74 18                	je     40215f <validate+0x97>
  402147:	bf 1a 44 40 00       	mov    $0x40441a,%edi
  40214c:	e8 1f ef ff ff       	callq  401070 <puts@plt>
  402151:	89 de                	mov    %ebx,%esi
  402153:	bf 00 00 00 00       	mov    $0x0,%edi
  402158:	e8 4d fd ff ff       	callq  401eaa <notify_server>
  40215d:	eb aa                	jmp    402109 <validate+0x41>
  40215f:	0f be 0d c2 5f 00 00 	movsbl 0x5fc2(%rip),%ecx        # 408128 <target_prefix>
  402166:	89 fa                	mov    %edi,%edx
  402168:	be 80 45 40 00       	mov    $0x404580,%esi
  40216d:	bf 01 00 00 00       	mov    $0x1,%edi
  402172:	b8 00 00 00 00       	mov    $0x0,%eax
  402177:	e8 04 f0 ff ff       	callq  401180 <__printf_chk@plt>
  40217c:	89 de                	mov    %ebx,%esi
  40217e:	bf 01 00 00 00       	mov    $0x1,%edi
  402183:	e8 22 fd ff ff       	callq  401eaa <notify_server>
  402188:	e9 7c ff ff ff       	jmpq   402109 <validate+0x41>

000000000040218d <fail>:
  40218d:	48 83 ec 08          	sub    $0x8,%rsp
  402191:	83 3d 70 53 00 00 00 	cmpl   $0x0,0x5370(%rip)        # 407508 <is_checker>
  402198:	75 11                	jne    4021ab <fail+0x1e>
  40219a:	89 fe                	mov    %edi,%esi
  40219c:	bf 00 00 00 00       	mov    $0x0,%edi
  4021a1:	e8 04 fd ff ff       	callq  401eaa <notify_server>
  4021a6:	48 83 c4 08          	add    $0x8,%rsp
  4021aa:	c3                   	retq   
  4021ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4021b0:	e8 6e fc ff ff       	callq  401e23 <check_fail>

00000000004021b5 <bushandler>:
  4021b5:	48 83 ec 08          	sub    $0x8,%rsp
  4021b9:	83 3d 48 53 00 00 00 	cmpl   $0x0,0x5348(%rip)        # 407508 <is_checker>
  4021c0:	74 14                	je     4021d6 <bushandler+0x21>
  4021c2:	bf 4d 44 40 00       	mov    $0x40444d,%edi
  4021c7:	e8 a4 ee ff ff       	callq  401070 <puts@plt>
  4021cc:	b8 00 00 00 00       	mov    $0x0,%eax
  4021d1:	e8 4d fc ff ff       	callq  401e23 <check_fail>
  4021d6:	bf b8 45 40 00       	mov    $0x4045b8,%edi
  4021db:	e8 90 ee ff ff       	callq  401070 <puts@plt>
  4021e0:	bf 57 44 40 00       	mov    $0x404457,%edi
  4021e5:	e8 86 ee ff ff       	callq  401070 <puts@plt>
  4021ea:	be 00 00 00 00       	mov    $0x0,%esi
  4021ef:	bf 00 00 00 00       	mov    $0x0,%edi
  4021f4:	e8 b1 fc ff ff       	callq  401eaa <notify_server>
  4021f9:	bf 01 00 00 00       	mov    $0x1,%edi
  4021fe:	e8 bd ef ff ff       	callq  4011c0 <exit@plt>

0000000000402203 <seghandler>:
  402203:	48 83 ec 08          	sub    $0x8,%rsp
  402207:	83 3d fa 52 00 00 00 	cmpl   $0x0,0x52fa(%rip)        # 407508 <is_checker>
  40220e:	74 14                	je     402224 <seghandler+0x21>
  402210:	bf 6d 44 40 00       	mov    $0x40446d,%edi
  402215:	e8 56 ee ff ff       	callq  401070 <puts@plt>
  40221a:	b8 00 00 00 00       	mov    $0x0,%eax
  40221f:	e8 ff fb ff ff       	callq  401e23 <check_fail>
  402224:	bf d8 45 40 00       	mov    $0x4045d8,%edi
  402229:	e8 42 ee ff ff       	callq  401070 <puts@plt>
  40222e:	bf 57 44 40 00       	mov    $0x404457,%edi
  402233:	e8 38 ee ff ff       	callq  401070 <puts@plt>
  402238:	be 00 00 00 00       	mov    $0x0,%esi
  40223d:	bf 00 00 00 00       	mov    $0x0,%edi
  402242:	e8 63 fc ff ff       	callq  401eaa <notify_server>
  402247:	bf 01 00 00 00       	mov    $0x1,%edi
  40224c:	e8 6f ef ff ff       	callq  4011c0 <exit@plt>

0000000000402251 <illegalhandler>:
  402251:	48 83 ec 08          	sub    $0x8,%rsp
  402255:	83 3d ac 52 00 00 00 	cmpl   $0x0,0x52ac(%rip)        # 407508 <is_checker>
  40225c:	74 14                	je     402272 <illegalhandler+0x21>
  40225e:	bf 80 44 40 00       	mov    $0x404480,%edi
  402263:	e8 08 ee ff ff       	callq  401070 <puts@plt>
  402268:	b8 00 00 00 00       	mov    $0x0,%eax
  40226d:	e8 b1 fb ff ff       	callq  401e23 <check_fail>
  402272:	bf 00 46 40 00       	mov    $0x404600,%edi
  402277:	e8 f4 ed ff ff       	callq  401070 <puts@plt>
  40227c:	bf 57 44 40 00       	mov    $0x404457,%edi
  402281:	e8 ea ed ff ff       	callq  401070 <puts@plt>
  402286:	be 00 00 00 00       	mov    $0x0,%esi
  40228b:	bf 00 00 00 00       	mov    $0x0,%edi
  402290:	e8 15 fc ff ff       	callq  401eaa <notify_server>
  402295:	bf 01 00 00 00       	mov    $0x1,%edi
  40229a:	e8 21 ef ff ff       	callq  4011c0 <exit@plt>

000000000040229f <sigalrmhandler>:
  40229f:	48 83 ec 08          	sub    $0x8,%rsp
  4022a3:	83 3d 5e 52 00 00 00 	cmpl   $0x0,0x525e(%rip)        # 407508 <is_checker>
  4022aa:	74 14                	je     4022c0 <sigalrmhandler+0x21>
  4022ac:	bf 94 44 40 00       	mov    $0x404494,%edi
  4022b1:	e8 ba ed ff ff       	callq  401070 <puts@plt>
  4022b6:	b8 00 00 00 00       	mov    $0x0,%eax
  4022bb:	e8 63 fb ff ff       	callq  401e23 <check_fail>
  4022c0:	ba 05 00 00 00       	mov    $0x5,%edx
  4022c5:	be 30 46 40 00       	mov    $0x404630,%esi
  4022ca:	bf 01 00 00 00       	mov    $0x1,%edi
  4022cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4022d4:	e8 a7 ee ff ff       	callq  401180 <__printf_chk@plt>
  4022d9:	be 00 00 00 00       	mov    $0x0,%esi
  4022de:	bf 00 00 00 00       	mov    $0x0,%edi
  4022e3:	e8 c2 fb ff ff       	callq  401eaa <notify_server>
  4022e8:	bf 01 00 00 00       	mov    $0x1,%edi
  4022ed:	e8 ce ee ff ff       	callq  4011c0 <exit@plt>

00000000004022f2 <launch>:
  4022f2:	55                   	push   %rbp
  4022f3:	48 89 e5             	mov    %rsp,%rbp
  4022f6:	48 83 ec 10          	sub    $0x10,%rsp
  4022fa:	48 89 fa             	mov    %rdi,%rdx
  4022fd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402304:	00 00 
  402306:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40230a:	31 c0                	xor    %eax,%eax
  40230c:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  402310:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  402314:	48 29 c4             	sub    %rax,%rsp
  402317:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  40231c:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402320:	be f4 00 00 00       	mov    $0xf4,%esi
  402325:	e8 86 ed ff ff       	callq  4010b0 <memset@plt>
  40232a:	48 8b 05 6f 51 00 00 	mov    0x516f(%rip),%rax        # 4074a0 <stdin@@GLIBC_2.2.5>
  402331:	48 39 05 b8 51 00 00 	cmp    %rax,0x51b8(%rip)        # 4074f0 <infile>
  402338:	74 38                	je     402372 <launch+0x80>
  40233a:	c7 05 b8 51 00 00 00 	movl   $0x0,0x51b8(%rip)        # 4074fc <vlevel>
  402341:	00 00 00 
  402344:	b8 00 00 00 00       	mov    $0x0,%eax
  402349:	e8 1f f9 ff ff       	callq  401c6d <test>
  40234e:	83 3d b3 51 00 00 00 	cmpl   $0x0,0x51b3(%rip)        # 407508 <is_checker>
  402355:	75 31                	jne    402388 <launch+0x96>
  402357:	bf b4 44 40 00       	mov    $0x4044b4,%edi
  40235c:	e8 0f ed ff ff       	callq  401070 <puts@plt>
  402361:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402365:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  40236c:	00 00 
  40236e:	75 2c                	jne    40239c <launch+0xaa>
  402370:	c9                   	leaveq 
  402371:	c3                   	retq   
  402372:	be 9c 44 40 00       	mov    $0x40449c,%esi
  402377:	bf 01 00 00 00       	mov    $0x1,%edi
  40237c:	b8 00 00 00 00       	mov    $0x0,%eax
  402381:	e8 fa ed ff ff       	callq  401180 <__printf_chk@plt>
  402386:	eb b2                	jmp    40233a <launch+0x48>
  402388:	bf a9 44 40 00       	mov    $0x4044a9,%edi
  40238d:	e8 de ec ff ff       	callq  401070 <puts@plt>
  402392:	b8 00 00 00 00       	mov    $0x0,%eax
  402397:	e8 87 fa ff ff       	callq  401e23 <check_fail>
  40239c:	e8 ef ec ff ff       	callq  401090 <__stack_chk_fail@plt>

00000000004023a1 <stable_launch>:
  4023a1:	53                   	push   %rbx
  4023a2:	48 89 3d 3f 51 00 00 	mov    %rdi,0x513f(%rip)        # 4074e8 <global_offset>
  4023a9:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  4023af:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4023b5:	b9 32 00 00 00       	mov    $0x32,%ecx
  4023ba:	ba 07 00 00 00       	mov    $0x7,%edx
  4023bf:	be 00 00 10 00       	mov    $0x100000,%esi
  4023c4:	bf 00 60 58 55       	mov    $0x55586000,%edi
  4023c9:	e8 d2 ec ff ff       	callq  4010a0 <mmap@plt>
  4023ce:	48 89 c3             	mov    %rax,%rbx
  4023d1:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  4023d7:	75 43                	jne    40241c <stable_launch+0x7b>
  4023d9:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  4023e0:	48 89 15 49 5d 00 00 	mov    %rdx,0x5d49(%rip)        # 408130 <stack_top>
  4023e7:	48 89 e0             	mov    %rsp,%rax
  4023ea:	48 89 d4             	mov    %rdx,%rsp
  4023ed:	48 89 c2             	mov    %rax,%rdx
  4023f0:	48 89 15 e9 50 00 00 	mov    %rdx,0x50e9(%rip)        # 4074e0 <global_save_stack>
  4023f7:	48 8b 3d ea 50 00 00 	mov    0x50ea(%rip),%rdi        # 4074e8 <global_offset>
  4023fe:	e8 ef fe ff ff       	callq  4022f2 <launch>
  402403:	48 8b 05 d6 50 00 00 	mov    0x50d6(%rip),%rax        # 4074e0 <global_save_stack>
  40240a:	48 89 c4             	mov    %rax,%rsp
  40240d:	be 00 00 10 00       	mov    $0x100000,%esi
  402412:	48 89 df             	mov    %rbx,%rdi
  402415:	e8 56 ed ff ff       	callq  401170 <munmap@plt>
  40241a:	5b                   	pop    %rbx
  40241b:	c3                   	retq   
  40241c:	be 00 00 10 00       	mov    $0x100000,%esi
  402421:	48 89 c7             	mov    %rax,%rdi
  402424:	e8 47 ed ff ff       	callq  401170 <munmap@plt>
  402429:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  40242e:	ba 68 46 40 00       	mov    $0x404668,%edx
  402433:	be 01 00 00 00       	mov    $0x1,%esi
  402438:	48 8b 3d 81 50 00 00 	mov    0x5081(%rip),%rdi        # 4074c0 <stderr@@GLIBC_2.2.5>
  40243f:	b8 00 00 00 00       	mov    $0x0,%eax
  402444:	e8 97 ed ff ff       	callq  4011e0 <__fprintf_chk@plt>
  402449:	bf 01 00 00 00       	mov    $0x1,%edi
  40244e:	e8 6d ed ff ff       	callq  4011c0 <exit@plt>

0000000000402453 <rio_readinitb>:
  402453:	89 37                	mov    %esi,(%rdi)
  402455:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  40245c:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402460:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402464:	c3                   	retq   

0000000000402465 <sigalrm_handler>:
  402465:	48 83 ec 08          	sub    $0x8,%rsp
  402469:	b9 00 00 00 00       	mov    $0x0,%ecx
  40246e:	ba a0 46 40 00       	mov    $0x4046a0,%edx
  402473:	be 01 00 00 00       	mov    $0x1,%esi
  402478:	48 8b 3d 41 50 00 00 	mov    0x5041(%rip),%rdi        # 4074c0 <stderr@@GLIBC_2.2.5>
  40247f:	b8 00 00 00 00       	mov    $0x0,%eax
  402484:	e8 57 ed ff ff       	callq  4011e0 <__fprintf_chk@plt>
  402489:	bf 01 00 00 00       	mov    $0x1,%edi
  40248e:	e8 2d ed ff ff       	callq  4011c0 <exit@plt>

0000000000402493 <rio_writen>:
  402493:	41 55                	push   %r13
  402495:	41 54                	push   %r12
  402497:	55                   	push   %rbp
  402498:	53                   	push   %rbx
  402499:	48 83 ec 08          	sub    $0x8,%rsp
  40249d:	41 89 fc             	mov    %edi,%r12d
  4024a0:	48 89 f5             	mov    %rsi,%rbp
  4024a3:	49 89 d5             	mov    %rdx,%r13
  4024a6:	48 89 d3             	mov    %rdx,%rbx
  4024a9:	eb 06                	jmp    4024b1 <rio_writen+0x1e>
  4024ab:	48 29 c3             	sub    %rax,%rbx
  4024ae:	48 01 c5             	add    %rax,%rbp
  4024b1:	48 85 db             	test   %rbx,%rbx
  4024b4:	74 24                	je     4024da <rio_writen+0x47>
  4024b6:	48 89 da             	mov    %rbx,%rdx
  4024b9:	48 89 ee             	mov    %rbp,%rsi
  4024bc:	44 89 e7             	mov    %r12d,%edi
  4024bf:	e8 bc eb ff ff       	callq  401080 <write@plt>
  4024c4:	48 85 c0             	test   %rax,%rax
  4024c7:	7f e2                	jg     4024ab <rio_writen+0x18>
  4024c9:	e8 62 eb ff ff       	callq  401030 <__errno_location@plt>
  4024ce:	83 38 04             	cmpl   $0x4,(%rax)
  4024d1:	75 15                	jne    4024e8 <rio_writen+0x55>
  4024d3:	b8 00 00 00 00       	mov    $0x0,%eax
  4024d8:	eb d1                	jmp    4024ab <rio_writen+0x18>
  4024da:	4c 89 e8             	mov    %r13,%rax
  4024dd:	48 83 c4 08          	add    $0x8,%rsp
  4024e1:	5b                   	pop    %rbx
  4024e2:	5d                   	pop    %rbp
  4024e3:	41 5c                	pop    %r12
  4024e5:	41 5d                	pop    %r13
  4024e7:	c3                   	retq   
  4024e8:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4024ef:	eb ec                	jmp    4024dd <rio_writen+0x4a>

00000000004024f1 <rio_read>:
  4024f1:	41 55                	push   %r13
  4024f3:	41 54                	push   %r12
  4024f5:	55                   	push   %rbp
  4024f6:	53                   	push   %rbx
  4024f7:	48 83 ec 08          	sub    $0x8,%rsp
  4024fb:	48 89 fb             	mov    %rdi,%rbx
  4024fe:	49 89 f5             	mov    %rsi,%r13
  402501:	49 89 d4             	mov    %rdx,%r12
  402504:	eb 0a                	jmp    402510 <rio_read+0x1f>
  402506:	e8 25 eb ff ff       	callq  401030 <__errno_location@plt>
  40250b:	83 38 04             	cmpl   $0x4,(%rax)
  40250e:	75 5c                	jne    40256c <rio_read+0x7b>
  402510:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402513:	85 ed                	test   %ebp,%ebp
  402515:	7f 24                	jg     40253b <rio_read+0x4a>
  402517:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  40251b:	8b 3b                	mov    (%rbx),%edi
  40251d:	ba 00 20 00 00       	mov    $0x2000,%edx
  402522:	48 89 ee             	mov    %rbp,%rsi
  402525:	e8 b6 eb ff ff       	callq  4010e0 <read@plt>
  40252a:	89 43 04             	mov    %eax,0x4(%rbx)
  40252d:	85 c0                	test   %eax,%eax
  40252f:	78 d5                	js     402506 <rio_read+0x15>
  402531:	85 c0                	test   %eax,%eax
  402533:	74 40                	je     402575 <rio_read+0x84>
  402535:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402539:	eb d5                	jmp    402510 <rio_read+0x1f>
  40253b:	89 e8                	mov    %ebp,%eax
  40253d:	4c 39 e0             	cmp    %r12,%rax
  402540:	72 03                	jb     402545 <rio_read+0x54>
  402542:	44 89 e5             	mov    %r12d,%ebp
  402545:	4c 63 e5             	movslq %ebp,%r12
  402548:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  40254c:	4c 89 e2             	mov    %r12,%rdx
  40254f:	4c 89 ef             	mov    %r13,%rdi
  402552:	e8 d9 eb ff ff       	callq  401130 <memcpy@plt>
  402557:	4c 01 63 08          	add    %r12,0x8(%rbx)
  40255b:	29 6b 04             	sub    %ebp,0x4(%rbx)
  40255e:	4c 89 e0             	mov    %r12,%rax
  402561:	48 83 c4 08          	add    $0x8,%rsp
  402565:	5b                   	pop    %rbx
  402566:	5d                   	pop    %rbp
  402567:	41 5c                	pop    %r12
  402569:	41 5d                	pop    %r13
  40256b:	c3                   	retq   
  40256c:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402573:	eb ec                	jmp    402561 <rio_read+0x70>
  402575:	b8 00 00 00 00       	mov    $0x0,%eax
  40257a:	eb e5                	jmp    402561 <rio_read+0x70>

000000000040257c <rio_readlineb>:
  40257c:	41 55                	push   %r13
  40257e:	41 54                	push   %r12
  402580:	55                   	push   %rbp
  402581:	53                   	push   %rbx
  402582:	48 83 ec 18          	sub    $0x18,%rsp
  402586:	49 89 fd             	mov    %rdi,%r13
  402589:	48 89 f5             	mov    %rsi,%rbp
  40258c:	49 89 d4             	mov    %rdx,%r12
  40258f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402596:	00 00 
  402598:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40259d:	31 c0                	xor    %eax,%eax
  40259f:	bb 01 00 00 00       	mov    $0x1,%ebx
  4025a4:	4c 39 e3             	cmp    %r12,%rbx
  4025a7:	73 47                	jae    4025f0 <rio_readlineb+0x74>
  4025a9:	ba 01 00 00 00       	mov    $0x1,%edx
  4025ae:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  4025b3:	4c 89 ef             	mov    %r13,%rdi
  4025b6:	e8 36 ff ff ff       	callq  4024f1 <rio_read>
  4025bb:	83 f8 01             	cmp    $0x1,%eax
  4025be:	75 1c                	jne    4025dc <rio_readlineb+0x60>
  4025c0:	48 8d 45 01          	lea    0x1(%rbp),%rax
  4025c4:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  4025c9:	88 55 00             	mov    %dl,0x0(%rbp)
  4025cc:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  4025d1:	74 1a                	je     4025ed <rio_readlineb+0x71>
  4025d3:	48 83 c3 01          	add    $0x1,%rbx
  4025d7:	48 89 c5             	mov    %rax,%rbp
  4025da:	eb c8                	jmp    4025a4 <rio_readlineb+0x28>
  4025dc:	85 c0                	test   %eax,%eax
  4025de:	75 32                	jne    402612 <rio_readlineb+0x96>
  4025e0:	48 83 fb 01          	cmp    $0x1,%rbx
  4025e4:	75 0a                	jne    4025f0 <rio_readlineb+0x74>
  4025e6:	b8 00 00 00 00       	mov    $0x0,%eax
  4025eb:	eb 0a                	jmp    4025f7 <rio_readlineb+0x7b>
  4025ed:	48 89 c5             	mov    %rax,%rbp
  4025f0:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  4025f4:	48 89 d8             	mov    %rbx,%rax
  4025f7:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  4025fc:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402603:	00 00 
  402605:	75 14                	jne    40261b <rio_readlineb+0x9f>
  402607:	48 83 c4 18          	add    $0x18,%rsp
  40260b:	5b                   	pop    %rbx
  40260c:	5d                   	pop    %rbp
  40260d:	41 5c                	pop    %r12
  40260f:	41 5d                	pop    %r13
  402611:	c3                   	retq   
  402612:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402619:	eb dc                	jmp    4025f7 <rio_readlineb+0x7b>
  40261b:	e8 70 ea ff ff       	callq  401090 <__stack_chk_fail@plt>

0000000000402620 <urlencode>:
  402620:	41 54                	push   %r12
  402622:	55                   	push   %rbp
  402623:	53                   	push   %rbx
  402624:	48 83 ec 10          	sub    $0x10,%rsp
  402628:	48 89 fb             	mov    %rdi,%rbx
  40262b:	48 89 f5             	mov    %rsi,%rbp
  40262e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402635:	00 00 
  402637:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40263c:	31 c0                	xor    %eax,%eax
  40263e:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402645:	f2 ae                	repnz scas %es:(%rdi),%al
  402647:	48 89 ce             	mov    %rcx,%rsi
  40264a:	48 f7 d6             	not    %rsi
  40264d:	8d 46 ff             	lea    -0x1(%rsi),%eax
  402650:	eb 0f                	jmp    402661 <urlencode+0x41>
  402652:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402656:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40265a:	48 83 c3 01          	add    $0x1,%rbx
  40265e:	44 89 e0             	mov    %r12d,%eax
  402661:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402665:	85 c0                	test   %eax,%eax
  402667:	0f 84 a6 00 00 00    	je     402713 <urlencode+0xf3>
  40266d:	44 0f b6 03          	movzbl (%rbx),%r8d
  402671:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402675:	0f 94 c2             	sete   %dl
  402678:	41 80 f8 2d          	cmp    $0x2d,%r8b
  40267c:	0f 94 c0             	sete   %al
  40267f:	08 c2                	or     %al,%dl
  402681:	75 cf                	jne    402652 <urlencode+0x32>
  402683:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402687:	74 c9                	je     402652 <urlencode+0x32>
  402689:	41 80 f8 5f          	cmp    $0x5f,%r8b
  40268d:	74 c3                	je     402652 <urlencode+0x32>
  40268f:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402693:	3c 09                	cmp    $0x9,%al
  402695:	76 bb                	jbe    402652 <urlencode+0x32>
  402697:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  40269b:	3c 19                	cmp    $0x19,%al
  40269d:	76 b3                	jbe    402652 <urlencode+0x32>
  40269f:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  4026a3:	3c 19                	cmp    $0x19,%al
  4026a5:	76 ab                	jbe    402652 <urlencode+0x32>
  4026a7:	41 80 f8 20          	cmp    $0x20,%r8b
  4026ab:	74 54                	je     402701 <urlencode+0xe1>
  4026ad:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  4026b1:	3c 5f                	cmp    $0x5f,%al
  4026b3:	0f 96 c2             	setbe  %dl
  4026b6:	41 80 f8 09          	cmp    $0x9,%r8b
  4026ba:	0f 94 c0             	sete   %al
  4026bd:	08 c2                	or     %al,%dl
  4026bf:	74 4d                	je     40270e <urlencode+0xee>
  4026c1:	45 0f b6 c0          	movzbl %r8b,%r8d
  4026c5:	b9 35 47 40 00       	mov    $0x404735,%ecx
  4026ca:	ba 08 00 00 00       	mov    $0x8,%edx
  4026cf:	be 01 00 00 00       	mov    $0x1,%esi
  4026d4:	48 89 e7             	mov    %rsp,%rdi
  4026d7:	b8 00 00 00 00       	mov    $0x0,%eax
  4026dc:	e8 1f eb ff ff       	callq  401200 <__sprintf_chk@plt>
  4026e1:	0f b6 04 24          	movzbl (%rsp),%eax
  4026e5:	88 45 00             	mov    %al,0x0(%rbp)
  4026e8:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  4026ed:	88 45 01             	mov    %al,0x1(%rbp)
  4026f0:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  4026f5:	88 45 02             	mov    %al,0x2(%rbp)
  4026f8:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  4026fc:	e9 59 ff ff ff       	jmpq   40265a <urlencode+0x3a>
  402701:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402705:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402709:	e9 4c ff ff ff       	jmpq   40265a <urlencode+0x3a>
  40270e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402713:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402718:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  40271f:	00 00 
  402721:	75 09                	jne    40272c <urlencode+0x10c>
  402723:	48 83 c4 10          	add    $0x10,%rsp
  402727:	5b                   	pop    %rbx
  402728:	5d                   	pop    %rbp
  402729:	41 5c                	pop    %r12
  40272b:	c3                   	retq   
  40272c:	e8 5f e9 ff ff       	callq  401090 <__stack_chk_fail@plt>

0000000000402731 <submitr>:
  402731:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
  402736:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40273a:	41 ff 72 f8          	pushq  -0x8(%r10)
  40273e:	55                   	push   %rbp
  40273f:	48 89 e5             	mov    %rsp,%rbp
  402742:	41 57                	push   %r15
  402744:	41 56                	push   %r14
  402746:	41 55                	push   %r13
  402748:	41 54                	push   %r12
  40274a:	41 52                	push   %r10
  40274c:	53                   	push   %rbx
  40274d:	48 81 ec 60 a0 00 00 	sub    $0xa060,%rsp
  402754:	49 89 fe             	mov    %rdi,%r14
  402757:	89 b5 84 5f ff ff    	mov    %esi,-0xa07c(%rbp)
  40275d:	49 89 d7             	mov    %rdx,%r15
  402760:	48 89 8d 88 5f ff ff 	mov    %rcx,-0xa078(%rbp)
  402767:	4c 89 85 78 5f ff ff 	mov    %r8,-0xa088(%rbp)
  40276e:	4d 89 cd             	mov    %r9,%r13
  402771:	4d 8b 22             	mov    (%r10),%r12
  402774:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40277b:	00 00 
  40277d:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  402781:	31 c0                	xor    %eax,%eax
  402783:	c7 85 9c 5f ff ff 00 	movl   $0x0,-0xa064(%rbp)
  40278a:	00 00 00 
  40278d:	ba 00 00 00 00       	mov    $0x0,%edx
  402792:	be 01 00 00 00       	mov    $0x1,%esi
  402797:	bf 02 00 00 00       	mov    $0x2,%edi
  40279c:	e8 6f ea ff ff       	callq  401210 <socket@plt>
  4027a1:	85 c0                	test   %eax,%eax
  4027a3:	0f 88 bf 02 00 00    	js     402a68 <submitr+0x337>
  4027a9:	89 c3                	mov    %eax,%ebx
  4027ab:	4c 89 f7             	mov    %r14,%rdi
  4027ae:	e8 4d e9 ff ff       	callq  401100 <gethostbyname@plt>
  4027b3:	48 85 c0             	test   %rax,%rax
  4027b6:	0f 84 ff 02 00 00    	je     402abb <submitr+0x38a>
  4027bc:	48 c7 85 a2 5f ff ff 	movq   $0x0,-0xa05e(%rbp)
  4027c3:	00 00 00 00 
  4027c7:	c7 85 aa 5f ff ff 00 	movl   $0x0,-0xa056(%rbp)
  4027ce:	00 00 00 
  4027d1:	66 c7 85 ae 5f ff ff 	movw   $0x0,-0xa052(%rbp)
  4027d8:	00 00 
  4027da:	66 c7 85 a0 5f ff ff 	movw   $0x2,-0xa060(%rbp)
  4027e1:	02 00 
  4027e3:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4027e7:	48 8b 40 18          	mov    0x18(%rax),%rax
  4027eb:	48 8b 30             	mov    (%rax),%rsi
  4027ee:	48 8d 85 a0 5f ff ff 	lea    -0xa060(%rbp),%rax
  4027f5:	48 8d 78 04          	lea    0x4(%rax),%rdi
  4027f9:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4027fe:	e8 0d e9 ff ff       	callq  401110 <__memmove_chk@plt>
  402803:	0f b7 85 84 5f ff ff 	movzwl -0xa07c(%rbp),%eax
  40280a:	66 c1 c0 08          	rol    $0x8,%ax
  40280e:	66 89 85 a2 5f ff ff 	mov    %ax,-0xa05e(%rbp)
  402815:	ba 10 00 00 00       	mov    $0x10,%edx
  40281a:	48 8d b5 a0 5f ff ff 	lea    -0xa060(%rbp),%rsi
  402821:	89 df                	mov    %ebx,%edi
  402823:	e8 a8 e9 ff ff       	callq  4011d0 <connect@plt>
  402828:	85 c0                	test   %eax,%eax
  40282a:	0f 88 fd 02 00 00    	js     402b2d <submitr+0x3fc>
  402830:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402837:	b8 00 00 00 00       	mov    $0x0,%eax
  40283c:	48 89 f1             	mov    %rsi,%rcx
  40283f:	4c 89 ef             	mov    %r13,%rdi
  402842:	f2 ae                	repnz scas %es:(%rdi),%al
  402844:	48 89 ca             	mov    %rcx,%rdx
  402847:	48 f7 d2             	not    %rdx
  40284a:	48 89 f1             	mov    %rsi,%rcx
  40284d:	4c 89 ff             	mov    %r15,%rdi
  402850:	f2 ae                	repnz scas %es:(%rdi),%al
  402852:	48 f7 d1             	not    %rcx
  402855:	49 89 c8             	mov    %rcx,%r8
  402858:	48 89 f1             	mov    %rsi,%rcx
  40285b:	48 8b bd 88 5f ff ff 	mov    -0xa078(%rbp),%rdi
  402862:	f2 ae                	repnz scas %es:(%rdi),%al
  402864:	48 f7 d1             	not    %rcx
  402867:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  40286c:	48 89 f1             	mov    %rsi,%rcx
  40286f:	48 8b bd 78 5f ff ff 	mov    -0xa088(%rbp),%rdi
  402876:	f2 ae                	repnz scas %es:(%rdi),%al
  402878:	48 89 c8             	mov    %rcx,%rax
  40287b:	48 f7 d0             	not    %rax
  40287e:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402883:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402888:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  40288f:	00 
  402890:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402896:	0f 87 f4 02 00 00    	ja     402b90 <submitr+0x45f>
  40289c:	48 8d b5 c0 9f ff ff 	lea    -0x6040(%rbp),%rsi
  4028a3:	b9 00 04 00 00       	mov    $0x400,%ecx
  4028a8:	b8 00 00 00 00       	mov    $0x0,%eax
  4028ad:	48 89 f7             	mov    %rsi,%rdi
  4028b0:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4028b3:	4c 89 ef             	mov    %r13,%rdi
  4028b6:	e8 65 fd ff ff       	callq  402620 <urlencode>
  4028bb:	85 c0                	test   %eax,%eax
  4028bd:	0f 88 46 03 00 00    	js     402c09 <submitr+0x4d8>
  4028c3:	4c 8d ad c0 7f ff ff 	lea    -0x8040(%rbp),%r13
  4028ca:	41 56                	push   %r14
  4028cc:	48 8d 85 c0 9f ff ff 	lea    -0x6040(%rbp),%rax
  4028d3:	50                   	push   %rax
  4028d4:	4d 89 f9             	mov    %r15,%r9
  4028d7:	4c 8b 85 88 5f ff ff 	mov    -0xa078(%rbp),%r8
  4028de:	b9 c8 46 40 00       	mov    $0x4046c8,%ecx
  4028e3:	ba 00 20 00 00       	mov    $0x2000,%edx
  4028e8:	be 01 00 00 00       	mov    $0x1,%esi
  4028ed:	4c 89 ef             	mov    %r13,%rdi
  4028f0:	b8 00 00 00 00       	mov    $0x0,%eax
  4028f5:	e8 06 e9 ff ff       	callq  401200 <__sprintf_chk@plt>
  4028fa:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402901:	b8 00 00 00 00       	mov    $0x0,%eax
  402906:	4c 89 ef             	mov    %r13,%rdi
  402909:	f2 ae                	repnz scas %es:(%rdi),%al
  40290b:	48 89 ca             	mov    %rcx,%rdx
  40290e:	48 f7 d2             	not    %rdx
  402911:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  402915:	4c 89 ee             	mov    %r13,%rsi
  402918:	89 df                	mov    %ebx,%edi
  40291a:	e8 74 fb ff ff       	callq  402493 <rio_writen>
  40291f:	48 83 c4 10          	add    $0x10,%rsp
  402923:	48 85 c0             	test   %rax,%rax
  402926:	0f 88 73 03 00 00    	js     402c9f <submitr+0x56e>
  40292c:	89 de                	mov    %ebx,%esi
  40292e:	48 8d bd b0 5f ff ff 	lea    -0xa050(%rbp),%rdi
  402935:	e8 19 fb ff ff       	callq  402453 <rio_readinitb>
  40293a:	ba 00 20 00 00       	mov    $0x2000,%edx
  40293f:	48 8d b5 c0 7f ff ff 	lea    -0x8040(%rbp),%rsi
  402946:	48 8d bd b0 5f ff ff 	lea    -0xa050(%rbp),%rdi
  40294d:	e8 2a fc ff ff       	callq  40257c <rio_readlineb>
  402952:	48 85 c0             	test   %rax,%rax
  402955:	0f 8e bc 03 00 00    	jle    402d17 <submitr+0x5e6>
  40295b:	4c 8d 85 c0 df ff ff 	lea    -0x2040(%rbp),%r8
  402962:	48 8d 8d 9c 5f ff ff 	lea    -0xa064(%rbp),%rcx
  402969:	48 8d 95 c0 bf ff ff 	lea    -0x4040(%rbp),%rdx
  402970:	be 3c 47 40 00       	mov    $0x40473c,%esi
  402975:	48 8d bd c0 7f ff ff 	lea    -0x8040(%rbp),%rdi
  40297c:	b8 00 00 00 00       	mov    $0x0,%eax
  402981:	e8 da e7 ff ff       	callq  401160 <__isoc99_sscanf@plt>
  402986:	48 8d b5 c0 7f ff ff 	lea    -0x8040(%rbp),%rsi
  40298d:	bf 53 47 40 00       	mov    $0x404753,%edi
  402992:	b9 03 00 00 00       	mov    $0x3,%ecx
  402997:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402999:	0f 97 c0             	seta   %al
  40299c:	1c 00                	sbb    $0x0,%al
  40299e:	84 c0                	test   %al,%al
  4029a0:	0f 84 f9 03 00 00    	je     402d9f <submitr+0x66e>
  4029a6:	ba 00 20 00 00       	mov    $0x2000,%edx
  4029ab:	48 8d b5 c0 7f ff ff 	lea    -0x8040(%rbp),%rsi
  4029b2:	48 8d bd b0 5f ff ff 	lea    -0xa050(%rbp),%rdi
  4029b9:	e8 be fb ff ff       	callq  40257c <rio_readlineb>
  4029be:	48 85 c0             	test   %rax,%rax
  4029c1:	7f c3                	jg     402986 <submitr+0x255>
  4029c3:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4029ca:	3a 20 43 
  4029cd:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4029d4:	20 75 6e 
  4029d7:	49 89 04 24          	mov    %rax,(%r12)
  4029db:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  4029e0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4029e7:	74 6f 20 
  4029ea:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  4029f1:	68 65 61 
  4029f4:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  4029f9:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  4029fe:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402a05:	66 72 6f 
  402a08:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
  402a0f:	20 72 65 
  402a12:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  402a17:	49 89 54 24 28       	mov    %rdx,0x28(%r12)
  402a1c:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  402a23:	73 65 72 
  402a26:	49 89 44 24 30       	mov    %rax,0x30(%r12)
  402a2b:	41 c7 44 24 38 76 65 	movl   $0x726576,0x38(%r12)
  402a32:	72 00 
  402a34:	89 df                	mov    %ebx,%edi
  402a36:	e8 95 e6 ff ff       	callq  4010d0 <close@plt>
  402a3b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a40:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
  402a44:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402a4b:	00 00 
  402a4d:	0f 85 c4 04 00 00    	jne    402f17 <submitr+0x7e6>
  402a53:	48 8d 65 d0          	lea    -0x30(%rbp),%rsp
  402a57:	5b                   	pop    %rbx
  402a58:	41 5a                	pop    %r10
  402a5a:	41 5c                	pop    %r12
  402a5c:	41 5d                	pop    %r13
  402a5e:	41 5e                	pop    %r14
  402a60:	41 5f                	pop    %r15
  402a62:	5d                   	pop    %rbp
  402a63:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
  402a67:	c3                   	retq   
  402a68:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402a6f:	3a 20 43 
  402a72:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402a79:	20 75 6e 
  402a7c:	49 89 04 24          	mov    %rax,(%r12)
  402a80:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402a85:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a8c:	74 6f 20 
  402a8f:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402a96:	65 20 73 
  402a99:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402a9e:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402aa3:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  402aaa:	6b 65 
  402aac:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  402ab3:	00 
  402ab4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ab9:	eb 85                	jmp    402a40 <submitr+0x30f>
  402abb:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402ac2:	3a 20 44 
  402ac5:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402acc:	20 75 6e 
  402acf:	49 89 04 24          	mov    %rax,(%r12)
  402ad3:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402ad8:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402adf:	74 6f 20 
  402ae2:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402ae9:	76 65 20 
  402aec:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402af1:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402af6:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402afd:	72 20 61 
  402b00:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  402b05:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
  402b0c:	72 65 
  402b0e:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
  402b15:	73 
  402b16:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
  402b1c:	89 df                	mov    %ebx,%edi
  402b1e:	e8 ad e5 ff ff       	callq  4010d0 <close@plt>
  402b23:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b28:	e9 13 ff ff ff       	jmpq   402a40 <submitr+0x30f>
  402b2d:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402b34:	3a 20 55 
  402b37:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402b3e:	20 74 6f 
  402b41:	49 89 04 24          	mov    %rax,(%r12)
  402b45:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402b4a:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402b51:	65 63 74 
  402b54:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402b5b:	68 65 20 
  402b5e:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402b63:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402b68:	41 c7 44 24 20 73 65 	movl   $0x76726573,0x20(%r12)
  402b6f:	72 76 
  402b71:	66 41 c7 44 24 24 65 	movw   $0x7265,0x24(%r12)
  402b78:	72 
  402b79:	41 c6 44 24 26 00    	movb   $0x0,0x26(%r12)
  402b7f:	89 df                	mov    %ebx,%edi
  402b81:	e8 4a e5 ff ff       	callq  4010d0 <close@plt>
  402b86:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b8b:	e9 b0 fe ff ff       	jmpq   402a40 <submitr+0x30f>
  402b90:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402b97:	3a 20 52 
  402b9a:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402ba1:	20 73 74 
  402ba4:	49 89 04 24          	mov    %rax,(%r12)
  402ba8:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402bad:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402bb4:	74 6f 6f 
  402bb7:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  402bbe:	65 2e 20 
  402bc1:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402bc6:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402bcb:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402bd2:	61 73 65 
  402bd5:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  402bdc:	49 54 52 
  402bdf:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  402be4:	49 89 54 24 28       	mov    %rdx,0x28(%r12)
  402be9:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402bf0:	55 46 00 
  402bf3:	49 89 44 24 30       	mov    %rax,0x30(%r12)
  402bf8:	89 df                	mov    %ebx,%edi
  402bfa:	e8 d1 e4 ff ff       	callq  4010d0 <close@plt>
  402bff:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c04:	e9 37 fe ff ff       	jmpq   402a40 <submitr+0x30f>
  402c09:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402c10:	3a 20 52 
  402c13:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402c1a:	20 73 74 
  402c1d:	49 89 04 24          	mov    %rax,(%r12)
  402c21:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402c26:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402c2d:	63 6f 6e 
  402c30:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  402c37:	20 61 6e 
  402c3a:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402c3f:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402c44:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402c4b:	67 61 6c 
  402c4e:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  402c55:	6e 70 72 
  402c58:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  402c5d:	49 89 54 24 28       	mov    %rdx,0x28(%r12)
  402c62:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402c69:	6c 65 20 
  402c6c:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  402c73:	63 74 65 
  402c76:	49 89 44 24 30       	mov    %rax,0x30(%r12)
  402c7b:	49 89 54 24 38       	mov    %rdx,0x38(%r12)
  402c80:	66 41 c7 44 24 40 72 	movw   $0x2e72,0x40(%r12)
  402c87:	2e 
  402c88:	41 c6 44 24 42 00    	movb   $0x0,0x42(%r12)
  402c8e:	89 df                	mov    %ebx,%edi
  402c90:	e8 3b e4 ff ff       	callq  4010d0 <close@plt>
  402c95:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c9a:	e9 a1 fd ff ff       	jmpq   402a40 <submitr+0x30f>
  402c9f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402ca6:	3a 20 43 
  402ca9:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402cb0:	20 75 6e 
  402cb3:	49 89 04 24          	mov    %rax,(%r12)
  402cb7:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402cbc:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402cc3:	74 6f 20 
  402cc6:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  402ccd:	20 74 6f 
  402cd0:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402cd5:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402cda:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  402ce1:	72 65 73 
  402ce4:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
  402ceb:	65 72 76 
  402cee:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  402cf3:	49 89 54 24 28       	mov    %rdx,0x28(%r12)
  402cf8:	66 41 c7 44 24 30 65 	movw   $0x7265,0x30(%r12)
  402cff:	72 
  402d00:	41 c6 44 24 32 00    	movb   $0x0,0x32(%r12)
  402d06:	89 df                	mov    %ebx,%edi
  402d08:	e8 c3 e3 ff ff       	callq  4010d0 <close@plt>
  402d0d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d12:	e9 29 fd ff ff       	jmpq   402a40 <submitr+0x30f>
  402d17:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402d1e:	3a 20 43 
  402d21:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402d28:	20 75 6e 
  402d2b:	49 89 04 24          	mov    %rax,(%r12)
  402d2f:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402d34:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402d3b:	74 6f 20 
  402d3e:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  402d45:	66 69 72 
  402d48:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402d4d:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402d52:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402d59:	61 64 65 
  402d5c:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
  402d63:	6d 20 72 
  402d66:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  402d6b:	49 89 54 24 28       	mov    %rdx,0x28(%r12)
  402d70:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  402d77:	20 73 65 
  402d7a:	49 89 44 24 30       	mov    %rax,0x30(%r12)
  402d7f:	41 c7 44 24 38 72 76 	movl   $0x72657672,0x38(%r12)
  402d86:	65 72 
  402d88:	41 c6 44 24 3c 00    	movb   $0x0,0x3c(%r12)
  402d8e:	89 df                	mov    %ebx,%edi
  402d90:	e8 3b e3 ff ff       	callq  4010d0 <close@plt>
  402d95:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d9a:	e9 a1 fc ff ff       	jmpq   402a40 <submitr+0x30f>
  402d9f:	ba 00 20 00 00       	mov    $0x2000,%edx
  402da4:	48 8d b5 c0 7f ff ff 	lea    -0x8040(%rbp),%rsi
  402dab:	48 8d bd b0 5f ff ff 	lea    -0xa050(%rbp),%rdi
  402db2:	e8 c5 f7 ff ff       	callq  40257c <rio_readlineb>
  402db7:	48 85 c0             	test   %rax,%rax
  402dba:	0f 8e 91 00 00 00    	jle    402e51 <submitr+0x720>
  402dc0:	44 8b 85 9c 5f ff ff 	mov    -0xa064(%rbp),%r8d
  402dc7:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402dce:	0f 85 0d 01 00 00    	jne    402ee1 <submitr+0x7b0>
  402dd4:	48 8d b5 c0 7f ff ff 	lea    -0x8040(%rbp),%rsi
  402ddb:	4c 89 e7             	mov    %r12,%rdi
  402dde:	e8 7d e2 ff ff       	callq  401060 <strcpy@plt>
  402de3:	89 df                	mov    %ebx,%edi
  402de5:	e8 e6 e2 ff ff       	callq  4010d0 <close@plt>
  402dea:	bf 4d 47 40 00       	mov    $0x40474d,%edi
  402def:	b9 04 00 00 00       	mov    $0x4,%ecx
  402df4:	4c 89 e6             	mov    %r12,%rsi
  402df7:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402df9:	0f 97 c0             	seta   %al
  402dfc:	1c 00                	sbb    $0x0,%al
  402dfe:	0f be c0             	movsbl %al,%eax
  402e01:	85 c0                	test   %eax,%eax
  402e03:	0f 84 37 fc ff ff    	je     402a40 <submitr+0x30f>
  402e09:	bf 51 47 40 00       	mov    $0x404751,%edi
  402e0e:	b9 05 00 00 00       	mov    $0x5,%ecx
  402e13:	4c 89 e6             	mov    %r12,%rsi
  402e16:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402e18:	0f 97 c0             	seta   %al
  402e1b:	1c 00                	sbb    $0x0,%al
  402e1d:	0f be c0             	movsbl %al,%eax
  402e20:	85 c0                	test   %eax,%eax
  402e22:	0f 84 18 fc ff ff    	je     402a40 <submitr+0x30f>
  402e28:	bf 56 47 40 00       	mov    $0x404756,%edi
  402e2d:	b9 03 00 00 00       	mov    $0x3,%ecx
  402e32:	4c 89 e6             	mov    %r12,%rsi
  402e35:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402e37:	0f 97 c0             	seta   %al
  402e3a:	1c 00                	sbb    $0x0,%al
  402e3c:	0f be c0             	movsbl %al,%eax
  402e3f:	85 c0                	test   %eax,%eax
  402e41:	0f 84 f9 fb ff ff    	je     402a40 <submitr+0x30f>
  402e47:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e4c:	e9 ef fb ff ff       	jmpq   402a40 <submitr+0x30f>
  402e51:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402e58:	3a 20 43 
  402e5b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402e62:	20 75 6e 
  402e65:	49 89 04 24          	mov    %rax,(%r12)
  402e69:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402e6e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402e75:	74 6f 20 
  402e78:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  402e7f:	73 74 61 
  402e82:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402e87:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402e8c:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402e93:	65 73 73 
  402e96:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  402e9d:	72 6f 6d 
  402ea0:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  402ea5:	49 89 54 24 28       	mov    %rdx,0x28(%r12)
  402eaa:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402eb1:	6c 74 20 
  402eb4:	49 89 44 24 30       	mov    %rax,0x30(%r12)
  402eb9:	41 c7 44 24 38 73 65 	movl   $0x76726573,0x38(%r12)
  402ec0:	72 76 
  402ec2:	66 41 c7 44 24 3c 65 	movw   $0x7265,0x3c(%r12)
  402ec9:	72 
  402eca:	41 c6 44 24 3e 00    	movb   $0x0,0x3e(%r12)
  402ed0:	89 df                	mov    %ebx,%edi
  402ed2:	e8 f9 e1 ff ff       	callq  4010d0 <close@plt>
  402ed7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402edc:	e9 5f fb ff ff       	jmpq   402a40 <submitr+0x30f>
  402ee1:	4c 8d 8d c0 df ff ff 	lea    -0x2040(%rbp),%r9
  402ee8:	b9 08 47 40 00       	mov    $0x404708,%ecx
  402eed:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402ef4:	be 01 00 00 00       	mov    $0x1,%esi
  402ef9:	4c 89 e7             	mov    %r12,%rdi
  402efc:	b8 00 00 00 00       	mov    $0x0,%eax
  402f01:	e8 fa e2 ff ff       	callq  401200 <__sprintf_chk@plt>
  402f06:	89 df                	mov    %ebx,%edi
  402f08:	e8 c3 e1 ff ff       	callq  4010d0 <close@plt>
  402f0d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f12:	e9 29 fb ff ff       	jmpq   402a40 <submitr+0x30f>
  402f17:	e8 74 e1 ff ff       	callq  401090 <__stack_chk_fail@plt>

0000000000402f1c <init_timeout>:
  402f1c:	85 ff                	test   %edi,%edi
  402f1e:	74 26                	je     402f46 <init_timeout+0x2a>
  402f20:	53                   	push   %rbx
  402f21:	89 fb                	mov    %edi,%ebx
  402f23:	85 ff                	test   %edi,%edi
  402f25:	78 18                	js     402f3f <init_timeout+0x23>
  402f27:	be 65 24 40 00       	mov    $0x402465,%esi
  402f2c:	bf 0e 00 00 00       	mov    $0xe,%edi
  402f31:	e8 ba e1 ff ff       	callq  4010f0 <signal@plt>
  402f36:	89 df                	mov    %ebx,%edi
  402f38:	e8 83 e1 ff ff       	callq  4010c0 <alarm@plt>
  402f3d:	5b                   	pop    %rbx
  402f3e:	c3                   	retq   
  402f3f:	bb 00 00 00 00       	mov    $0x0,%ebx
  402f44:	eb e1                	jmp    402f27 <init_timeout+0xb>
  402f46:	f3 c3                	repz retq 

0000000000402f48 <init_driver>:
  402f48:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
  402f4d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  402f51:	41 ff 72 f8          	pushq  -0x8(%r10)
  402f55:	55                   	push   %rbp
  402f56:	48 89 e5             	mov    %rsp,%rbp
  402f59:	41 54                	push   %r12
  402f5b:	41 52                	push   %r10
  402f5d:	53                   	push   %rbx
  402f5e:	48 83 ec 28          	sub    $0x28,%rsp
  402f62:	49 89 fc             	mov    %rdi,%r12
  402f65:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402f6c:	00 00 
  402f6e:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  402f72:	31 c0                	xor    %eax,%eax
  402f74:	be 01 00 00 00       	mov    $0x1,%esi
  402f79:	bf 0d 00 00 00       	mov    $0xd,%edi
  402f7e:	e8 6d e1 ff ff       	callq  4010f0 <signal@plt>
  402f83:	be 01 00 00 00       	mov    $0x1,%esi
  402f88:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402f8d:	e8 5e e1 ff ff       	callq  4010f0 <signal@plt>
  402f92:	be 01 00 00 00       	mov    $0x1,%esi
  402f97:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402f9c:	e8 4f e1 ff ff       	callq  4010f0 <signal@plt>
  402fa1:	ba 00 00 00 00       	mov    $0x0,%edx
  402fa6:	be 01 00 00 00       	mov    $0x1,%esi
  402fab:	bf 02 00 00 00       	mov    $0x2,%edi
  402fb0:	e8 5b e2 ff ff       	callq  401210 <socket@plt>
  402fb5:	85 c0                	test   %eax,%eax
  402fb7:	0f 88 a6 00 00 00    	js     403063 <init_driver+0x11b>
  402fbd:	89 c3                	mov    %eax,%ebx
  402fbf:	bf 59 47 40 00       	mov    $0x404759,%edi
  402fc4:	e8 37 e1 ff ff       	callq  401100 <gethostbyname@plt>
  402fc9:	48 85 c0             	test   %rax,%rax
  402fcc:	0f 84 e4 00 00 00    	je     4030b6 <init_driver+0x16e>
  402fd2:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
  402fd6:	48 c7 45 c2 00 00 00 	movq   $0x0,-0x3e(%rbp)
  402fdd:	00 
  402fde:	c7 45 ca 00 00 00 00 	movl   $0x0,-0x36(%rbp)
  402fe5:	66 c7 45 ce 00 00    	movw   $0x0,-0x32(%rbp)
  402feb:	66 c7 45 c0 02 00    	movw   $0x2,-0x40(%rbp)
  402ff1:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402ff5:	48 8b 40 18          	mov    0x18(%rax),%rax
  402ff9:	48 8b 30             	mov    (%rax),%rsi
  402ffc:	48 8d 79 04          	lea    0x4(%rcx),%rdi
  403000:	b9 0c 00 00 00       	mov    $0xc,%ecx
  403005:	e8 06 e1 ff ff       	callq  401110 <__memmove_chk@plt>
  40300a:	66 c7 45 c2 3c 9a    	movw   $0x9a3c,-0x3e(%rbp)
  403010:	ba 10 00 00 00       	mov    $0x10,%edx
  403015:	48 8d 75 c0          	lea    -0x40(%rbp),%rsi
  403019:	89 df                	mov    %ebx,%edi
  40301b:	e8 b0 e1 ff ff       	callq  4011d0 <connect@plt>
  403020:	85 c0                	test   %eax,%eax
  403022:	0f 88 00 01 00 00    	js     403128 <init_driver+0x1e0>
  403028:	89 df                	mov    %ebx,%edi
  40302a:	e8 a1 e0 ff ff       	callq  4010d0 <close@plt>
  40302f:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
  403036:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
  40303c:	b8 00 00 00 00       	mov    $0x0,%eax
  403041:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  403045:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  40304c:	00 00 
  40304e:	0f 85 2e 01 00 00    	jne    403182 <init_driver+0x23a>
  403054:	48 83 c4 28          	add    $0x28,%rsp
  403058:	5b                   	pop    %rbx
  403059:	41 5a                	pop    %r10
  40305b:	41 5c                	pop    %r12
  40305d:	5d                   	pop    %rbp
  40305e:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
  403062:	c3                   	retq   
  403063:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40306a:	3a 20 43 
  40306d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403074:	20 75 6e 
  403077:	49 89 04 24          	mov    %rax,(%r12)
  40307b:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  403080:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403087:	74 6f 20 
  40308a:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  403091:	65 20 73 
  403094:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  403099:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  40309e:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  4030a5:	6b 65 
  4030a7:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  4030ae:	00 
  4030af:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4030b4:	eb 8b                	jmp    403041 <init_driver+0xf9>
  4030b6:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4030bd:	3a 20 44 
  4030c0:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4030c7:	20 75 6e 
  4030ca:	49 89 04 24          	mov    %rax,(%r12)
  4030ce:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  4030d3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4030da:	74 6f 20 
  4030dd:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  4030e4:	76 65 20 
  4030e7:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  4030ec:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  4030f1:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4030f8:	72 20 61 
  4030fb:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  403100:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
  403107:	72 65 
  403109:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
  403110:	73 
  403111:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
  403117:	89 df                	mov    %ebx,%edi
  403119:	e8 b2 df ff ff       	callq  4010d0 <close@plt>
  40311e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403123:	e9 19 ff ff ff       	jmpq   403041 <init_driver+0xf9>
  403128:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  40312f:	3a 20 55 
  403132:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  403139:	20 74 6f 
  40313c:	49 89 04 24          	mov    %rax,(%r12)
  403140:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  403145:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  40314c:	65 63 74 
  40314f:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  403156:	65 72 76 
  403159:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  40315e:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  403163:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
  40316a:	72 
  40316b:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
  403171:	89 df                	mov    %ebx,%edi
  403173:	e8 58 df ff ff       	callq  4010d0 <close@plt>
  403178:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40317d:	e9 bf fe ff ff       	jmpq   403041 <init_driver+0xf9>
  403182:	e8 09 df ff ff       	callq  401090 <__stack_chk_fail@plt>

0000000000403187 <driver_post>:
  403187:	53                   	push   %rbx
  403188:	4c 89 cb             	mov    %r9,%rbx
  40318b:	45 85 c0             	test   %r8d,%r8d
  40318e:	75 18                	jne    4031a8 <driver_post+0x21>
  403190:	48 85 ff             	test   %rdi,%rdi
  403193:	74 05                	je     40319a <driver_post+0x13>
  403195:	80 3f 00             	cmpb   $0x0,(%rdi)
  403198:	75 35                	jne    4031cf <driver_post+0x48>
  40319a:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40319f:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4031a3:	44 89 c0             	mov    %r8d,%eax
  4031a6:	5b                   	pop    %rbx
  4031a7:	c3                   	retq   
  4031a8:	48 89 ca             	mov    %rcx,%rdx
  4031ab:	be 76 47 40 00       	mov    $0x404776,%esi
  4031b0:	bf 01 00 00 00       	mov    $0x1,%edi
  4031b5:	b8 00 00 00 00       	mov    $0x0,%eax
  4031ba:	e8 c1 df ff ff       	callq  401180 <__printf_chk@plt>
  4031bf:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4031c4:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4031c8:	b8 00 00 00 00       	mov    $0x0,%eax
  4031cd:	eb d7                	jmp    4031a6 <driver_post+0x1f>
  4031cf:	48 83 ec 08          	sub    $0x8,%rsp
  4031d3:	41 51                	push   %r9
  4031d5:	49 89 c9             	mov    %rcx,%r9
  4031d8:	49 89 d0             	mov    %rdx,%r8
  4031db:	48 89 f9             	mov    %rdi,%rcx
  4031de:	48 89 f2             	mov    %rsi,%rdx
  4031e1:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  4031e6:	bf 59 47 40 00       	mov    $0x404759,%edi
  4031eb:	e8 41 f5 ff ff       	callq  402731 <submitr>
  4031f0:	48 83 c4 10          	add    $0x10,%rsp
  4031f4:	eb b0                	jmp    4031a6 <driver_post+0x1f>

00000000004031f6 <check>:
  4031f6:	89 f8                	mov    %edi,%eax
  4031f8:	c1 e8 1c             	shr    $0x1c,%eax
  4031fb:	85 c0                	test   %eax,%eax
  4031fd:	74 1d                	je     40321c <check+0x26>
  4031ff:	b9 00 00 00 00       	mov    $0x0,%ecx
  403204:	83 f9 1f             	cmp    $0x1f,%ecx
  403207:	7f 0d                	jg     403216 <check+0x20>
  403209:	89 f8                	mov    %edi,%eax
  40320b:	d3 e8                	shr    %cl,%eax
  40320d:	3c 0a                	cmp    $0xa,%al
  40320f:	74 11                	je     403222 <check+0x2c>
  403211:	83 c1 08             	add    $0x8,%ecx
  403214:	eb ee                	jmp    403204 <check+0xe>
  403216:	b8 01 00 00 00       	mov    $0x1,%eax
  40321b:	c3                   	retq   
  40321c:	b8 00 00 00 00       	mov    $0x0,%eax
  403221:	c3                   	retq   
  403222:	b8 00 00 00 00       	mov    $0x0,%eax
  403227:	c3                   	retq   

0000000000403228 <gencookie>:
  403228:	53                   	push   %rbx
  403229:	83 c7 01             	add    $0x1,%edi
  40322c:	e8 0f de ff ff       	callq  401040 <srandom@plt>
  403231:	e8 1a df ff ff       	callq  401150 <random@plt>
  403236:	89 c3                	mov    %eax,%ebx
  403238:	89 c7                	mov    %eax,%edi
  40323a:	e8 b7 ff ff ff       	callq  4031f6 <check>
  40323f:	85 c0                	test   %eax,%eax
  403241:	74 ee                	je     403231 <gencookie+0x9>
  403243:	89 d8                	mov    %ebx,%eax
  403245:	5b                   	pop    %rbx
  403246:	c3                   	retq   
  403247:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40324e:	00 00 

0000000000403250 <__libc_csu_init>:
  403250:	f3 0f 1e fa          	endbr64 
  403254:	41 57                	push   %r15
  403256:	4c 8d 3d b3 3b 00 00 	lea    0x3bb3(%rip),%r15        # 406e10 <__frame_dummy_init_array_entry>
  40325d:	41 56                	push   %r14
  40325f:	49 89 d6             	mov    %rdx,%r14
  403262:	41 55                	push   %r13
  403264:	49 89 f5             	mov    %rsi,%r13
  403267:	41 54                	push   %r12
  403269:	41 89 fc             	mov    %edi,%r12d
  40326c:	55                   	push   %rbp
  40326d:	48 8d 2d a4 3b 00 00 	lea    0x3ba4(%rip),%rbp        # 406e18 <__do_global_dtors_aux_fini_array_entry>
  403274:	53                   	push   %rbx
  403275:	4c 29 fd             	sub    %r15,%rbp
  403278:	48 83 ec 08          	sub    $0x8,%rsp
  40327c:	e8 7f dd ff ff       	callq  401000 <_init>
  403281:	48 c1 fd 03          	sar    $0x3,%rbp
  403285:	74 1f                	je     4032a6 <__libc_csu_init+0x56>
  403287:	31 db                	xor    %ebx,%ebx
  403289:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  403290:	4c 89 f2             	mov    %r14,%rdx
  403293:	4c 89 ee             	mov    %r13,%rsi
  403296:	44 89 e7             	mov    %r12d,%edi
  403299:	41 ff 14 df          	callq  *(%r15,%rbx,8)
  40329d:	48 83 c3 01          	add    $0x1,%rbx
  4032a1:	48 39 dd             	cmp    %rbx,%rbp
  4032a4:	75 ea                	jne    403290 <__libc_csu_init+0x40>
  4032a6:	48 83 c4 08          	add    $0x8,%rsp
  4032aa:	5b                   	pop    %rbx
  4032ab:	5d                   	pop    %rbp
  4032ac:	41 5c                	pop    %r12
  4032ae:	41 5d                	pop    %r13
  4032b0:	41 5e                	pop    %r14
  4032b2:	41 5f                	pop    %r15
  4032b4:	c3                   	retq   
  4032b5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4032bc:	00 00 00 00 

00000000004032c0 <__libc_csu_fini>:
  4032c0:	f3 0f 1e fa          	endbr64 
  4032c4:	c3                   	retq   

Disassembly of section .fini:

00000000004032c8 <_fini>:
  4032c8:	f3 0f 1e fa          	endbr64 
  4032cc:	48 83 ec 08          	sub    $0x8,%rsp
  4032d0:	48 83 c4 08          	add    $0x8,%rsp
  4032d4:	c3                   	retq   
