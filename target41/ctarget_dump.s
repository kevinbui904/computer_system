
ctarget:     file format elf64-x86-64


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
  401233:	49 c7 c0 a0 31 40 00 	mov    $0x4031a0,%r8
  40123a:	48 c7 c1 30 31 40 00 	mov    $0x403130,%rcx
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
  4013cc:	e8 35 1d 00 00       	callq  403106 <gencookie>
  4013d1:	89 05 2d 61 00 00    	mov    %eax,0x612d(%rip)        # 407504 <cookie>
  4013d7:	89 c7                	mov    %eax,%edi
  4013d9:	e8 28 1d 00 00       	callq  403106 <gencookie>
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
  40141f:	c6 05 02 6d 00 00 63 	movb   $0x63,0x6d02(%rip)        # 408128 <target_prefix>
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
  401478:	e8 a9 19 00 00       	callq  402e26 <init_driver>
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
  4014b9:	be e1 20 40 00       	mov    $0x4020e1,%esi
  4014be:	bf 0b 00 00 00       	mov    $0xb,%edi
  4014c3:	e8 28 fc ff ff       	callq  4010f0 <signal@plt>
  4014c8:	be 93 20 40 00       	mov    $0x402093,%esi
  4014cd:	bf 07 00 00 00       	mov    $0x7,%edi
  4014d2:	e8 19 fc ff ff       	callq  4010f0 <signal@plt>
  4014d7:	be 2f 21 40 00       	mov    $0x40212f,%esi
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
  401513:	be 7d 21 40 00       	mov    $0x40217d,%esi
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
  401601:	be 00 00 00 00       	mov    $0x0,%esi
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
  401641:	e8 39 0c 00 00       	callq  40227f <stable_launch>
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
  401670:	e8 8c 06 00 00       	callq  401d01 <check_fail>
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
  401a94:	e8 9d 02 00 00       	callq  401d36 <Gets>
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
  401ac0:	e8 e1 04 00 00       	callq  401fa6 <validate>
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
  401b00:	e8 66 05 00 00       	callq  40206b <fail>
  401b05:	bf 00 00 00 00       	mov    $0x0,%edi
  401b0a:	e8 b1 f6 ff ff       	callq  4011c0 <exit@plt>
  401b0f:	be d0 42 40 00       	mov    $0x4042d0,%esi
  401b14:	bf 01 00 00 00       	mov    $0x1,%edi
  401b19:	b8 00 00 00 00       	mov    $0x0,%eax
  401b1e:	e8 5d f6 ff ff       	callq  401180 <__printf_chk@plt>
  401b23:	bf 02 00 00 00       	mov    $0x2,%edi
  401b28:	e8 79 04 00 00       	callq  401fa6 <validate>
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
  401c3b:	e8 66 03 00 00       	callq  401fa6 <validate>
  401c40:	bf 00 00 00 00       	mov    $0x0,%edi
  401c45:	e8 76 f5 ff ff       	callq  4011c0 <exit@plt>
  401c4a:	48 89 da             	mov    %rbx,%rdx
  401c4d:	be 48 43 40 00       	mov    $0x404348,%esi
  401c52:	bf 01 00 00 00       	mov    $0x1,%edi
  401c57:	b8 00 00 00 00       	mov    $0x0,%eax
  401c5c:	e8 1f f5 ff ff       	callq  401180 <__printf_chk@plt>
  401c61:	bf 03 00 00 00       	mov    $0x3,%edi
  401c66:	e8 00 04 00 00       	callq  40206b <fail>
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

0000000000401c96 <save_char>:
  401c96:	8b 05 88 64 00 00    	mov    0x6488(%rip),%eax        # 408124 <gets_cnt>
  401c9c:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401ca1:	7f 49                	jg     401cec <save_char+0x56>
  401ca3:	89 f9                	mov    %edi,%ecx
  401ca5:	c0 e9 04             	shr    $0x4,%cl
  401ca8:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401cab:	83 e1 0f             	and    $0xf,%ecx
  401cae:	0f b6 b1 90 46 40 00 	movzbl 0x404690(%rcx),%esi
  401cb5:	48 63 ca             	movslq %edx,%rcx
  401cb8:	40 88 b1 20 75 40 00 	mov    %sil,0x407520(%rcx)
  401cbf:	8d 4a 01             	lea    0x1(%rdx),%ecx
  401cc2:	83 e7 0f             	and    $0xf,%edi
  401cc5:	0f b6 b7 90 46 40 00 	movzbl 0x404690(%rdi),%esi
  401ccc:	48 63 c9             	movslq %ecx,%rcx
  401ccf:	40 88 b1 20 75 40 00 	mov    %sil,0x407520(%rcx)
  401cd6:	83 c2 02             	add    $0x2,%edx
  401cd9:	48 63 d2             	movslq %edx,%rdx
  401cdc:	c6 82 20 75 40 00 20 	movb   $0x20,0x407520(%rdx)
  401ce3:	83 c0 01             	add    $0x1,%eax
  401ce6:	89 05 38 64 00 00    	mov    %eax,0x6438(%rip)        # 408124 <gets_cnt>
  401cec:	f3 c3                	repz retq 

0000000000401cee <save_term>:
  401cee:	8b 05 30 64 00 00    	mov    0x6430(%rip),%eax        # 408124 <gets_cnt>
  401cf4:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401cf7:	48 98                	cltq   
  401cf9:	c6 80 20 75 40 00 00 	movb   $0x0,0x407520(%rax)
  401d00:	c3                   	retq   

0000000000401d01 <check_fail>:
  401d01:	48 83 ec 08          	sub    $0x8,%rsp
  401d05:	0f be 15 1c 64 00 00 	movsbl 0x641c(%rip),%edx        # 408128 <target_prefix>
  401d0c:	41 b8 20 75 40 00    	mov    $0x407520,%r8d
  401d12:	8b 0d e0 57 00 00    	mov    0x57e0(%rip),%ecx        # 4074f8 <check_level>
  401d18:	be 93 43 40 00       	mov    $0x404393,%esi
  401d1d:	bf 01 00 00 00       	mov    $0x1,%edi
  401d22:	b8 00 00 00 00       	mov    $0x0,%eax
  401d27:	e8 54 f4 ff ff       	callq  401180 <__printf_chk@plt>
  401d2c:	bf 01 00 00 00       	mov    $0x1,%edi
  401d31:	e8 8a f4 ff ff       	callq  4011c0 <exit@plt>

0000000000401d36 <Gets>:
  401d36:	41 54                	push   %r12
  401d38:	55                   	push   %rbp
  401d39:	53                   	push   %rbx
  401d3a:	49 89 fc             	mov    %rdi,%r12
  401d3d:	c7 05 dd 63 00 00 00 	movl   $0x0,0x63dd(%rip)        # 408124 <gets_cnt>
  401d44:	00 00 00 
  401d47:	48 89 fb             	mov    %rdi,%rbx
  401d4a:	eb 11                	jmp    401d5d <Gets+0x27>
  401d4c:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401d50:	88 03                	mov    %al,(%rbx)
  401d52:	0f b6 f8             	movzbl %al,%edi
  401d55:	e8 3c ff ff ff       	callq  401c96 <save_char>
  401d5a:	48 89 eb             	mov    %rbp,%rbx
  401d5d:	48 8b 3d 8c 57 00 00 	mov    0x578c(%rip),%rdi        # 4074f0 <infile>
  401d64:	e8 87 f4 ff ff       	callq  4011f0 <getc@plt>
  401d69:	83 f8 ff             	cmp    $0xffffffff,%eax
  401d6c:	74 05                	je     401d73 <Gets+0x3d>
  401d6e:	83 f8 0a             	cmp    $0xa,%eax
  401d71:	75 d9                	jne    401d4c <Gets+0x16>
  401d73:	c6 03 00             	movb   $0x0,(%rbx)
  401d76:	b8 00 00 00 00       	mov    $0x0,%eax
  401d7b:	e8 6e ff ff ff       	callq  401cee <save_term>
  401d80:	4c 89 e0             	mov    %r12,%rax
  401d83:	5b                   	pop    %rbx
  401d84:	5d                   	pop    %rbp
  401d85:	41 5c                	pop    %r12
  401d87:	c3                   	retq   

0000000000401d88 <notify_server>:
  401d88:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
  401d8d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401d91:	41 ff 72 f8          	pushq  -0x8(%r10)
  401d95:	55                   	push   %rbp
  401d96:	48 89 e5             	mov    %rsp,%rbp
  401d99:	41 54                	push   %r12
  401d9b:	41 52                	push   %r10
  401d9d:	53                   	push   %rbx
  401d9e:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  401da5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401dac:	00 00 
  401dae:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  401db2:	31 c0                	xor    %eax,%eax
  401db4:	83 3d 4d 57 00 00 00 	cmpl   $0x0,0x574d(%rip)        # 407508 <is_checker>
  401dbb:	0f 85 cf 00 00 00    	jne    401e90 <notify_server+0x108>
  401dc1:	89 fb                	mov    %edi,%ebx
  401dc3:	8b 05 5b 63 00 00    	mov    0x635b(%rip),%eax        # 408124 <gets_cnt>
  401dc9:	83 c0 64             	add    $0x64,%eax
  401dcc:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401dd1:	0f 8f db 00 00 00    	jg     401eb2 <notify_server+0x12a>
  401dd7:	0f be 05 4a 63 00 00 	movsbl 0x634a(%rip),%eax        # 408128 <target_prefix>
  401dde:	83 3d a3 56 00 00 00 	cmpl   $0x0,0x56a3(%rip)        # 407488 <notify>
  401de5:	0f 84 e5 00 00 00    	je     401ed0 <notify_server+0x148>
  401deb:	8b 15 0f 57 00 00    	mov    0x570f(%rip),%edx        # 407500 <authkey>
  401df1:	85 db                	test   %ebx,%ebx
  401df3:	0f 84 e1 00 00 00    	je     401eda <notify_server+0x152>
  401df9:	41 bc a9 43 40 00    	mov    $0x4043a9,%r12d
  401dff:	68 20 75 40 00       	pushq  $0x407520
  401e04:	56                   	push   %rsi
  401e05:	50                   	push   %rax
  401e06:	52                   	push   %rdx
  401e07:	4d 89 e1             	mov    %r12,%r9
  401e0a:	44 8b 05 37 53 00 00 	mov    0x5337(%rip),%r8d        # 407148 <target_id>
  401e11:	b9 b3 43 40 00       	mov    $0x4043b3,%ecx
  401e16:	ba 00 20 00 00       	mov    $0x2000,%edx
  401e1b:	be 01 00 00 00       	mov    $0x1,%esi
  401e20:	48 8d bd d0 bf ff ff 	lea    -0x4030(%rbp),%rdi
  401e27:	b8 00 00 00 00       	mov    $0x0,%eax
  401e2c:	e8 cf f3 ff ff       	callq  401200 <__sprintf_chk@plt>
  401e31:	48 83 c4 20          	add    $0x20,%rsp
  401e35:	83 3d 4c 56 00 00 00 	cmpl   $0x0,0x564c(%rip)        # 407488 <notify>
  401e3c:	0f 84 d7 00 00 00    	je     401f19 <notify_server+0x191>
  401e42:	85 db                	test   %ebx,%ebx
  401e44:	0f 84 c0 00 00 00    	je     401f0a <notify_server+0x182>
  401e4a:	4c 8d 8d d0 df ff ff 	lea    -0x2030(%rbp),%r9
  401e51:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401e57:	48 8d 8d d0 bf ff ff 	lea    -0x4030(%rbp),%rcx
  401e5e:	48 8b 15 eb 52 00 00 	mov    0x52eb(%rip),%rdx        # 407150 <lab>
  401e65:	48 8b 35 ec 52 00 00 	mov    0x52ec(%rip),%rsi        # 407158 <course>
  401e6c:	48 8b 3d cd 52 00 00 	mov    0x52cd(%rip),%rdi        # 407140 <user_id>
  401e73:	e8 ed 11 00 00       	callq  403065 <driver_post>
  401e78:	85 c0                	test   %eax,%eax
  401e7a:	78 69                	js     401ee5 <notify_server+0x15d>
  401e7c:	bf f8 44 40 00       	mov    $0x4044f8,%edi
  401e81:	e8 ea f1 ff ff       	callq  401070 <puts@plt>
  401e86:	bf db 43 40 00       	mov    $0x4043db,%edi
  401e8b:	e8 e0 f1 ff ff       	callq  401070 <puts@plt>
  401e90:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401e94:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401e9b:	00 00 
  401e9d:	0f 85 fe 00 00 00    	jne    401fa1 <notify_server+0x219>
  401ea3:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  401ea7:	5b                   	pop    %rbx
  401ea8:	41 5a                	pop    %r10
  401eaa:	41 5c                	pop    %r12
  401eac:	5d                   	pop    %rbp
  401ead:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
  401eb1:	c3                   	retq   
  401eb2:	be c8 44 40 00       	mov    $0x4044c8,%esi
  401eb7:	bf 01 00 00 00       	mov    $0x1,%edi
  401ebc:	b8 00 00 00 00       	mov    $0x0,%eax
  401ec1:	e8 ba f2 ff ff       	callq  401180 <__printf_chk@plt>
  401ec6:	bf 01 00 00 00       	mov    $0x1,%edi
  401ecb:	e8 f0 f2 ff ff       	callq  4011c0 <exit@plt>
  401ed0:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401ed5:	e9 17 ff ff ff       	jmpq   401df1 <notify_server+0x69>
  401eda:	41 bc ae 43 40 00    	mov    $0x4043ae,%r12d
  401ee0:	e9 1a ff ff ff       	jmpq   401dff <notify_server+0x77>
  401ee5:	48 8d 95 d0 df ff ff 	lea    -0x2030(%rbp),%rdx
  401eec:	be cf 43 40 00       	mov    $0x4043cf,%esi
  401ef1:	bf 01 00 00 00       	mov    $0x1,%edi
  401ef6:	b8 00 00 00 00       	mov    $0x0,%eax
  401efb:	e8 80 f2 ff ff       	callq  401180 <__printf_chk@plt>
  401f00:	bf 01 00 00 00       	mov    $0x1,%edi
  401f05:	e8 b6 f2 ff ff       	callq  4011c0 <exit@plt>
  401f0a:	bf e5 43 40 00       	mov    $0x4043e5,%edi
  401f0f:	e8 5c f1 ff ff       	callq  401070 <puts@plt>
  401f14:	e9 77 ff ff ff       	jmpq   401e90 <notify_server+0x108>
  401f19:	4c 89 e2             	mov    %r12,%rdx
  401f1c:	be 30 45 40 00       	mov    $0x404530,%esi
  401f21:	bf 01 00 00 00       	mov    $0x1,%edi
  401f26:	b8 00 00 00 00       	mov    $0x0,%eax
  401f2b:	e8 50 f2 ff ff       	callq  401180 <__printf_chk@plt>
  401f30:	48 8b 15 09 52 00 00 	mov    0x5209(%rip),%rdx        # 407140 <user_id>
  401f37:	be ec 43 40 00       	mov    $0x4043ec,%esi
  401f3c:	bf 01 00 00 00       	mov    $0x1,%edi
  401f41:	b8 00 00 00 00       	mov    $0x0,%eax
  401f46:	e8 35 f2 ff ff       	callq  401180 <__printf_chk@plt>
  401f4b:	48 8b 15 06 52 00 00 	mov    0x5206(%rip),%rdx        # 407158 <course>
  401f52:	be f9 43 40 00       	mov    $0x4043f9,%esi
  401f57:	bf 01 00 00 00       	mov    $0x1,%edi
  401f5c:	b8 00 00 00 00       	mov    $0x0,%eax
  401f61:	e8 1a f2 ff ff       	callq  401180 <__printf_chk@plt>
  401f66:	48 8b 15 e3 51 00 00 	mov    0x51e3(%rip),%rdx        # 407150 <lab>
  401f6d:	be 05 44 40 00       	mov    $0x404405,%esi
  401f72:	bf 01 00 00 00       	mov    $0x1,%edi
  401f77:	b8 00 00 00 00       	mov    $0x0,%eax
  401f7c:	e8 ff f1 ff ff       	callq  401180 <__printf_chk@plt>
  401f81:	48 8d 95 d0 bf ff ff 	lea    -0x4030(%rbp),%rdx
  401f88:	be 0e 44 40 00       	mov    $0x40440e,%esi
  401f8d:	bf 01 00 00 00       	mov    $0x1,%edi
  401f92:	b8 00 00 00 00       	mov    $0x0,%eax
  401f97:	e8 e4 f1 ff ff       	callq  401180 <__printf_chk@plt>
  401f9c:	e9 ef fe ff ff       	jmpq   401e90 <notify_server+0x108>
  401fa1:	e8 ea f0 ff ff       	callq  401090 <__stack_chk_fail@plt>

0000000000401fa6 <validate>:
  401fa6:	53                   	push   %rbx
  401fa7:	89 fb                	mov    %edi,%ebx
  401fa9:	83 3d 58 55 00 00 00 	cmpl   $0x0,0x5558(%rip)        # 407508 <is_checker>
  401fb0:	74 6b                	je     40201d <validate+0x77>
  401fb2:	39 3d 44 55 00 00    	cmp    %edi,0x5544(%rip)        # 4074fc <vlevel>
  401fb8:	75 2f                	jne    401fe9 <validate+0x43>
  401fba:	8b 15 38 55 00 00    	mov    0x5538(%rip),%edx        # 4074f8 <check_level>
  401fc0:	39 fa                	cmp    %edi,%edx
  401fc2:	75 39                	jne    401ffd <validate+0x57>
  401fc4:	0f be 15 5d 61 00 00 	movsbl 0x615d(%rip),%edx        # 408128 <target_prefix>
  401fcb:	41 b8 20 75 40 00    	mov    $0x407520,%r8d
  401fd1:	89 f9                	mov    %edi,%ecx
  401fd3:	be 38 44 40 00       	mov    $0x404438,%esi
  401fd8:	bf 01 00 00 00       	mov    $0x1,%edi
  401fdd:	b8 00 00 00 00       	mov    $0x0,%eax
  401fe2:	e8 99 f1 ff ff       	callq  401180 <__printf_chk@plt>
  401fe7:	5b                   	pop    %rbx
  401fe8:	c3                   	retq   
  401fe9:	bf 1a 44 40 00       	mov    $0x40441a,%edi
  401fee:	e8 7d f0 ff ff       	callq  401070 <puts@plt>
  401ff3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ff8:	e8 04 fd ff ff       	callq  401d01 <check_fail>
  401ffd:	89 f9                	mov    %edi,%ecx
  401fff:	be 58 45 40 00       	mov    $0x404558,%esi
  402004:	bf 01 00 00 00       	mov    $0x1,%edi
  402009:	b8 00 00 00 00       	mov    $0x0,%eax
  40200e:	e8 6d f1 ff ff       	callq  401180 <__printf_chk@plt>
  402013:	b8 00 00 00 00       	mov    $0x0,%eax
  402018:	e8 e4 fc ff ff       	callq  401d01 <check_fail>
  40201d:	39 3d d9 54 00 00    	cmp    %edi,0x54d9(%rip)        # 4074fc <vlevel>
  402023:	74 18                	je     40203d <validate+0x97>
  402025:	bf 1a 44 40 00       	mov    $0x40441a,%edi
  40202a:	e8 41 f0 ff ff       	callq  401070 <puts@plt>
  40202f:	89 de                	mov    %ebx,%esi
  402031:	bf 00 00 00 00       	mov    $0x0,%edi
  402036:	e8 4d fd ff ff       	callq  401d88 <notify_server>
  40203b:	eb aa                	jmp    401fe7 <validate+0x41>
  40203d:	0f be 0d e4 60 00 00 	movsbl 0x60e4(%rip),%ecx        # 408128 <target_prefix>
  402044:	89 fa                	mov    %edi,%edx
  402046:	be 80 45 40 00       	mov    $0x404580,%esi
  40204b:	bf 01 00 00 00       	mov    $0x1,%edi
  402050:	b8 00 00 00 00       	mov    $0x0,%eax
  402055:	e8 26 f1 ff ff       	callq  401180 <__printf_chk@plt>
  40205a:	89 de                	mov    %ebx,%esi
  40205c:	bf 01 00 00 00       	mov    $0x1,%edi
  402061:	e8 22 fd ff ff       	callq  401d88 <notify_server>
  402066:	e9 7c ff ff ff       	jmpq   401fe7 <validate+0x41>

000000000040206b <fail>:
  40206b:	48 83 ec 08          	sub    $0x8,%rsp
  40206f:	83 3d 92 54 00 00 00 	cmpl   $0x0,0x5492(%rip)        # 407508 <is_checker>
  402076:	75 11                	jne    402089 <fail+0x1e>
  402078:	89 fe                	mov    %edi,%esi
  40207a:	bf 00 00 00 00       	mov    $0x0,%edi
  40207f:	e8 04 fd ff ff       	callq  401d88 <notify_server>
  402084:	48 83 c4 08          	add    $0x8,%rsp
  402088:	c3                   	retq   
  402089:	b8 00 00 00 00       	mov    $0x0,%eax
  40208e:	e8 6e fc ff ff       	callq  401d01 <check_fail>

0000000000402093 <bushandler>:
  402093:	48 83 ec 08          	sub    $0x8,%rsp
  402097:	83 3d 6a 54 00 00 00 	cmpl   $0x0,0x546a(%rip)        # 407508 <is_checker>
  40209e:	74 14                	je     4020b4 <bushandler+0x21>
  4020a0:	bf 4d 44 40 00       	mov    $0x40444d,%edi
  4020a5:	e8 c6 ef ff ff       	callq  401070 <puts@plt>
  4020aa:	b8 00 00 00 00       	mov    $0x0,%eax
  4020af:	e8 4d fc ff ff       	callq  401d01 <check_fail>
  4020b4:	bf b8 45 40 00       	mov    $0x4045b8,%edi
  4020b9:	e8 b2 ef ff ff       	callq  401070 <puts@plt>
  4020be:	bf 57 44 40 00       	mov    $0x404457,%edi
  4020c3:	e8 a8 ef ff ff       	callq  401070 <puts@plt>
  4020c8:	be 00 00 00 00       	mov    $0x0,%esi
  4020cd:	bf 00 00 00 00       	mov    $0x0,%edi
  4020d2:	e8 b1 fc ff ff       	callq  401d88 <notify_server>
  4020d7:	bf 01 00 00 00       	mov    $0x1,%edi
  4020dc:	e8 df f0 ff ff       	callq  4011c0 <exit@plt>

00000000004020e1 <seghandler>:
  4020e1:	48 83 ec 08          	sub    $0x8,%rsp
  4020e5:	83 3d 1c 54 00 00 00 	cmpl   $0x0,0x541c(%rip)        # 407508 <is_checker>
  4020ec:	74 14                	je     402102 <seghandler+0x21>
  4020ee:	bf 6d 44 40 00       	mov    $0x40446d,%edi
  4020f3:	e8 78 ef ff ff       	callq  401070 <puts@plt>
  4020f8:	b8 00 00 00 00       	mov    $0x0,%eax
  4020fd:	e8 ff fb ff ff       	callq  401d01 <check_fail>
  402102:	bf d8 45 40 00       	mov    $0x4045d8,%edi
  402107:	e8 64 ef ff ff       	callq  401070 <puts@plt>
  40210c:	bf 57 44 40 00       	mov    $0x404457,%edi
  402111:	e8 5a ef ff ff       	callq  401070 <puts@plt>
  402116:	be 00 00 00 00       	mov    $0x0,%esi
  40211b:	bf 00 00 00 00       	mov    $0x0,%edi
  402120:	e8 63 fc ff ff       	callq  401d88 <notify_server>
  402125:	bf 01 00 00 00       	mov    $0x1,%edi
  40212a:	e8 91 f0 ff ff       	callq  4011c0 <exit@plt>

000000000040212f <illegalhandler>:
  40212f:	48 83 ec 08          	sub    $0x8,%rsp
  402133:	83 3d ce 53 00 00 00 	cmpl   $0x0,0x53ce(%rip)        # 407508 <is_checker>
  40213a:	74 14                	je     402150 <illegalhandler+0x21>
  40213c:	bf 80 44 40 00       	mov    $0x404480,%edi
  402141:	e8 2a ef ff ff       	callq  401070 <puts@plt>
  402146:	b8 00 00 00 00       	mov    $0x0,%eax
  40214b:	e8 b1 fb ff ff       	callq  401d01 <check_fail>
  402150:	bf 00 46 40 00       	mov    $0x404600,%edi
  402155:	e8 16 ef ff ff       	callq  401070 <puts@plt>
  40215a:	bf 57 44 40 00       	mov    $0x404457,%edi
  40215f:	e8 0c ef ff ff       	callq  401070 <puts@plt>
  402164:	be 00 00 00 00       	mov    $0x0,%esi
  402169:	bf 00 00 00 00       	mov    $0x0,%edi
  40216e:	e8 15 fc ff ff       	callq  401d88 <notify_server>
  402173:	bf 01 00 00 00       	mov    $0x1,%edi
  402178:	e8 43 f0 ff ff       	callq  4011c0 <exit@plt>

000000000040217d <sigalrmhandler>:
  40217d:	48 83 ec 08          	sub    $0x8,%rsp
  402181:	83 3d 80 53 00 00 00 	cmpl   $0x0,0x5380(%rip)        # 407508 <is_checker>
  402188:	74 14                	je     40219e <sigalrmhandler+0x21>
  40218a:	bf 94 44 40 00       	mov    $0x404494,%edi
  40218f:	e8 dc ee ff ff       	callq  401070 <puts@plt>
  402194:	b8 00 00 00 00       	mov    $0x0,%eax
  402199:	e8 63 fb ff ff       	callq  401d01 <check_fail>
  40219e:	ba 05 00 00 00       	mov    $0x5,%edx
  4021a3:	be 30 46 40 00       	mov    $0x404630,%esi
  4021a8:	bf 01 00 00 00       	mov    $0x1,%edi
  4021ad:	b8 00 00 00 00       	mov    $0x0,%eax
  4021b2:	e8 c9 ef ff ff       	callq  401180 <__printf_chk@plt>
  4021b7:	be 00 00 00 00       	mov    $0x0,%esi
  4021bc:	bf 00 00 00 00       	mov    $0x0,%edi
  4021c1:	e8 c2 fb ff ff       	callq  401d88 <notify_server>
  4021c6:	bf 01 00 00 00       	mov    $0x1,%edi
  4021cb:	e8 f0 ef ff ff       	callq  4011c0 <exit@plt>

00000000004021d0 <launch>:
  4021d0:	55                   	push   %rbp
  4021d1:	48 89 e5             	mov    %rsp,%rbp
  4021d4:	48 83 ec 10          	sub    $0x10,%rsp
  4021d8:	48 89 fa             	mov    %rdi,%rdx
  4021db:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4021e2:	00 00 
  4021e4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4021e8:	31 c0                	xor    %eax,%eax
  4021ea:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  4021ee:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  4021f2:	48 29 c4             	sub    %rax,%rsp
  4021f5:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  4021fa:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  4021fe:	be f4 00 00 00       	mov    $0xf4,%esi
  402203:	e8 a8 ee ff ff       	callq  4010b0 <memset@plt>
  402208:	48 8b 05 91 52 00 00 	mov    0x5291(%rip),%rax        # 4074a0 <stdin@@GLIBC_2.2.5>
  40220f:	48 39 05 da 52 00 00 	cmp    %rax,0x52da(%rip)        # 4074f0 <infile>
  402216:	74 38                	je     402250 <launch+0x80>
  402218:	c7 05 da 52 00 00 00 	movl   $0x0,0x52da(%rip)        # 4074fc <vlevel>
  40221f:	00 00 00 
  402222:	b8 00 00 00 00       	mov    $0x0,%eax
  402227:	e8 41 fa ff ff       	callq  401c6d <test>
  40222c:	83 3d d5 52 00 00 00 	cmpl   $0x0,0x52d5(%rip)        # 407508 <is_checker>
  402233:	75 31                	jne    402266 <launch+0x96>
  402235:	bf b4 44 40 00       	mov    $0x4044b4,%edi
  40223a:	e8 31 ee ff ff       	callq  401070 <puts@plt>
  40223f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402243:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  40224a:	00 00 
  40224c:	75 2c                	jne    40227a <launch+0xaa>
  40224e:	c9                   	leaveq 
  40224f:	c3                   	retq   
  402250:	be 9c 44 40 00       	mov    $0x40449c,%esi
  402255:	bf 01 00 00 00       	mov    $0x1,%edi
  40225a:	b8 00 00 00 00       	mov    $0x0,%eax
  40225f:	e8 1c ef ff ff       	callq  401180 <__printf_chk@plt>
  402264:	eb b2                	jmp    402218 <launch+0x48>
  402266:	bf a9 44 40 00       	mov    $0x4044a9,%edi
  40226b:	e8 00 ee ff ff       	callq  401070 <puts@plt>
  402270:	b8 00 00 00 00       	mov    $0x0,%eax
  402275:	e8 87 fa ff ff       	callq  401d01 <check_fail>
  40227a:	e8 11 ee ff ff       	callq  401090 <__stack_chk_fail@plt>

000000000040227f <stable_launch>:
  40227f:	53                   	push   %rbx
  402280:	48 89 3d 61 52 00 00 	mov    %rdi,0x5261(%rip)        # 4074e8 <global_offset>
  402287:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  40228d:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402293:	b9 32 00 00 00       	mov    $0x32,%ecx
  402298:	ba 07 00 00 00       	mov    $0x7,%edx
  40229d:	be 00 00 10 00       	mov    $0x100000,%esi
  4022a2:	bf 00 60 58 55       	mov    $0x55586000,%edi
  4022a7:	e8 f4 ed ff ff       	callq  4010a0 <mmap@plt>
  4022ac:	48 89 c3             	mov    %rax,%rbx
  4022af:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  4022b5:	75 43                	jne    4022fa <stable_launch+0x7b>
  4022b7:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  4022be:	48 89 15 6b 5e 00 00 	mov    %rdx,0x5e6b(%rip)        # 408130 <stack_top>
  4022c5:	48 89 e0             	mov    %rsp,%rax
  4022c8:	48 89 d4             	mov    %rdx,%rsp
  4022cb:	48 89 c2             	mov    %rax,%rdx
  4022ce:	48 89 15 0b 52 00 00 	mov    %rdx,0x520b(%rip)        # 4074e0 <global_save_stack>
  4022d5:	48 8b 3d 0c 52 00 00 	mov    0x520c(%rip),%rdi        # 4074e8 <global_offset>
  4022dc:	e8 ef fe ff ff       	callq  4021d0 <launch>
  4022e1:	48 8b 05 f8 51 00 00 	mov    0x51f8(%rip),%rax        # 4074e0 <global_save_stack>
  4022e8:	48 89 c4             	mov    %rax,%rsp
  4022eb:	be 00 00 10 00       	mov    $0x100000,%esi
  4022f0:	48 89 df             	mov    %rbx,%rdi
  4022f3:	e8 78 ee ff ff       	callq  401170 <munmap@plt>
  4022f8:	5b                   	pop    %rbx
  4022f9:	c3                   	retq   
  4022fa:	be 00 00 10 00       	mov    $0x100000,%esi
  4022ff:	48 89 c7             	mov    %rax,%rdi
  402302:	e8 69 ee ff ff       	callq  401170 <munmap@plt>
  402307:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  40230c:	ba 68 46 40 00       	mov    $0x404668,%edx
  402311:	be 01 00 00 00       	mov    $0x1,%esi
  402316:	48 8b 3d a3 51 00 00 	mov    0x51a3(%rip),%rdi        # 4074c0 <stderr@@GLIBC_2.2.5>
  40231d:	b8 00 00 00 00       	mov    $0x0,%eax
  402322:	e8 b9 ee ff ff       	callq  4011e0 <__fprintf_chk@plt>
  402327:	bf 01 00 00 00       	mov    $0x1,%edi
  40232c:	e8 8f ee ff ff       	callq  4011c0 <exit@plt>

0000000000402331 <rio_readinitb>:
  402331:	89 37                	mov    %esi,(%rdi)
  402333:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  40233a:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40233e:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402342:	c3                   	retq   

0000000000402343 <sigalrm_handler>:
  402343:	48 83 ec 08          	sub    $0x8,%rsp
  402347:	b9 00 00 00 00       	mov    $0x0,%ecx
  40234c:	ba a0 46 40 00       	mov    $0x4046a0,%edx
  402351:	be 01 00 00 00       	mov    $0x1,%esi
  402356:	48 8b 3d 63 51 00 00 	mov    0x5163(%rip),%rdi        # 4074c0 <stderr@@GLIBC_2.2.5>
  40235d:	b8 00 00 00 00       	mov    $0x0,%eax
  402362:	e8 79 ee ff ff       	callq  4011e0 <__fprintf_chk@plt>
  402367:	bf 01 00 00 00       	mov    $0x1,%edi
  40236c:	e8 4f ee ff ff       	callq  4011c0 <exit@plt>

0000000000402371 <rio_writen>:
  402371:	41 55                	push   %r13
  402373:	41 54                	push   %r12
  402375:	55                   	push   %rbp
  402376:	53                   	push   %rbx
  402377:	48 83 ec 08          	sub    $0x8,%rsp
  40237b:	41 89 fc             	mov    %edi,%r12d
  40237e:	48 89 f5             	mov    %rsi,%rbp
  402381:	49 89 d5             	mov    %rdx,%r13
  402384:	48 89 d3             	mov    %rdx,%rbx
  402387:	eb 06                	jmp    40238f <rio_writen+0x1e>
  402389:	48 29 c3             	sub    %rax,%rbx
  40238c:	48 01 c5             	add    %rax,%rbp
  40238f:	48 85 db             	test   %rbx,%rbx
  402392:	74 24                	je     4023b8 <rio_writen+0x47>
  402394:	48 89 da             	mov    %rbx,%rdx
  402397:	48 89 ee             	mov    %rbp,%rsi
  40239a:	44 89 e7             	mov    %r12d,%edi
  40239d:	e8 de ec ff ff       	callq  401080 <write@plt>
  4023a2:	48 85 c0             	test   %rax,%rax
  4023a5:	7f e2                	jg     402389 <rio_writen+0x18>
  4023a7:	e8 84 ec ff ff       	callq  401030 <__errno_location@plt>
  4023ac:	83 38 04             	cmpl   $0x4,(%rax)
  4023af:	75 15                	jne    4023c6 <rio_writen+0x55>
  4023b1:	b8 00 00 00 00       	mov    $0x0,%eax
  4023b6:	eb d1                	jmp    402389 <rio_writen+0x18>
  4023b8:	4c 89 e8             	mov    %r13,%rax
  4023bb:	48 83 c4 08          	add    $0x8,%rsp
  4023bf:	5b                   	pop    %rbx
  4023c0:	5d                   	pop    %rbp
  4023c1:	41 5c                	pop    %r12
  4023c3:	41 5d                	pop    %r13
  4023c5:	c3                   	retq   
  4023c6:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4023cd:	eb ec                	jmp    4023bb <rio_writen+0x4a>

00000000004023cf <rio_read>:
  4023cf:	41 55                	push   %r13
  4023d1:	41 54                	push   %r12
  4023d3:	55                   	push   %rbp
  4023d4:	53                   	push   %rbx
  4023d5:	48 83 ec 08          	sub    $0x8,%rsp
  4023d9:	48 89 fb             	mov    %rdi,%rbx
  4023dc:	49 89 f5             	mov    %rsi,%r13
  4023df:	49 89 d4             	mov    %rdx,%r12
  4023e2:	eb 0a                	jmp    4023ee <rio_read+0x1f>
  4023e4:	e8 47 ec ff ff       	callq  401030 <__errno_location@plt>
  4023e9:	83 38 04             	cmpl   $0x4,(%rax)
  4023ec:	75 5c                	jne    40244a <rio_read+0x7b>
  4023ee:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4023f1:	85 ed                	test   %ebp,%ebp
  4023f3:	7f 24                	jg     402419 <rio_read+0x4a>
  4023f5:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  4023f9:	8b 3b                	mov    (%rbx),%edi
  4023fb:	ba 00 20 00 00       	mov    $0x2000,%edx
  402400:	48 89 ee             	mov    %rbp,%rsi
  402403:	e8 d8 ec ff ff       	callq  4010e0 <read@plt>
  402408:	89 43 04             	mov    %eax,0x4(%rbx)
  40240b:	85 c0                	test   %eax,%eax
  40240d:	78 d5                	js     4023e4 <rio_read+0x15>
  40240f:	85 c0                	test   %eax,%eax
  402411:	74 40                	je     402453 <rio_read+0x84>
  402413:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402417:	eb d5                	jmp    4023ee <rio_read+0x1f>
  402419:	89 e8                	mov    %ebp,%eax
  40241b:	4c 39 e0             	cmp    %r12,%rax
  40241e:	72 03                	jb     402423 <rio_read+0x54>
  402420:	44 89 e5             	mov    %r12d,%ebp
  402423:	4c 63 e5             	movslq %ebp,%r12
  402426:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  40242a:	4c 89 e2             	mov    %r12,%rdx
  40242d:	4c 89 ef             	mov    %r13,%rdi
  402430:	e8 fb ec ff ff       	callq  401130 <memcpy@plt>
  402435:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402439:	29 6b 04             	sub    %ebp,0x4(%rbx)
  40243c:	4c 89 e0             	mov    %r12,%rax
  40243f:	48 83 c4 08          	add    $0x8,%rsp
  402443:	5b                   	pop    %rbx
  402444:	5d                   	pop    %rbp
  402445:	41 5c                	pop    %r12
  402447:	41 5d                	pop    %r13
  402449:	c3                   	retq   
  40244a:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402451:	eb ec                	jmp    40243f <rio_read+0x70>
  402453:	b8 00 00 00 00       	mov    $0x0,%eax
  402458:	eb e5                	jmp    40243f <rio_read+0x70>

000000000040245a <rio_readlineb>:
  40245a:	41 55                	push   %r13
  40245c:	41 54                	push   %r12
  40245e:	55                   	push   %rbp
  40245f:	53                   	push   %rbx
  402460:	48 83 ec 18          	sub    $0x18,%rsp
  402464:	49 89 fd             	mov    %rdi,%r13
  402467:	48 89 f5             	mov    %rsi,%rbp
  40246a:	49 89 d4             	mov    %rdx,%r12
  40246d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402474:	00 00 
  402476:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40247b:	31 c0                	xor    %eax,%eax
  40247d:	bb 01 00 00 00       	mov    $0x1,%ebx
  402482:	4c 39 e3             	cmp    %r12,%rbx
  402485:	73 47                	jae    4024ce <rio_readlineb+0x74>
  402487:	ba 01 00 00 00       	mov    $0x1,%edx
  40248c:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402491:	4c 89 ef             	mov    %r13,%rdi
  402494:	e8 36 ff ff ff       	callq  4023cf <rio_read>
  402499:	83 f8 01             	cmp    $0x1,%eax
  40249c:	75 1c                	jne    4024ba <rio_readlineb+0x60>
  40249e:	48 8d 45 01          	lea    0x1(%rbp),%rax
  4024a2:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  4024a7:	88 55 00             	mov    %dl,0x0(%rbp)
  4024aa:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  4024af:	74 1a                	je     4024cb <rio_readlineb+0x71>
  4024b1:	48 83 c3 01          	add    $0x1,%rbx
  4024b5:	48 89 c5             	mov    %rax,%rbp
  4024b8:	eb c8                	jmp    402482 <rio_readlineb+0x28>
  4024ba:	85 c0                	test   %eax,%eax
  4024bc:	75 32                	jne    4024f0 <rio_readlineb+0x96>
  4024be:	48 83 fb 01          	cmp    $0x1,%rbx
  4024c2:	75 0a                	jne    4024ce <rio_readlineb+0x74>
  4024c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4024c9:	eb 0a                	jmp    4024d5 <rio_readlineb+0x7b>
  4024cb:	48 89 c5             	mov    %rax,%rbp
  4024ce:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  4024d2:	48 89 d8             	mov    %rbx,%rax
  4024d5:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  4024da:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4024e1:	00 00 
  4024e3:	75 14                	jne    4024f9 <rio_readlineb+0x9f>
  4024e5:	48 83 c4 18          	add    $0x18,%rsp
  4024e9:	5b                   	pop    %rbx
  4024ea:	5d                   	pop    %rbp
  4024eb:	41 5c                	pop    %r12
  4024ed:	41 5d                	pop    %r13
  4024ef:	c3                   	retq   
  4024f0:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4024f7:	eb dc                	jmp    4024d5 <rio_readlineb+0x7b>
  4024f9:	e8 92 eb ff ff       	callq  401090 <__stack_chk_fail@plt>

00000000004024fe <urlencode>:
  4024fe:	41 54                	push   %r12
  402500:	55                   	push   %rbp
  402501:	53                   	push   %rbx
  402502:	48 83 ec 10          	sub    $0x10,%rsp
  402506:	48 89 fb             	mov    %rdi,%rbx
  402509:	48 89 f5             	mov    %rsi,%rbp
  40250c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402513:	00 00 
  402515:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40251a:	31 c0                	xor    %eax,%eax
  40251c:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402523:	f2 ae                	repnz scas %es:(%rdi),%al
  402525:	48 89 ce             	mov    %rcx,%rsi
  402528:	48 f7 d6             	not    %rsi
  40252b:	8d 46 ff             	lea    -0x1(%rsi),%eax
  40252e:	eb 0f                	jmp    40253f <urlencode+0x41>
  402530:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402534:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402538:	48 83 c3 01          	add    $0x1,%rbx
  40253c:	44 89 e0             	mov    %r12d,%eax
  40253f:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402543:	85 c0                	test   %eax,%eax
  402545:	0f 84 a6 00 00 00    	je     4025f1 <urlencode+0xf3>
  40254b:	44 0f b6 03          	movzbl (%rbx),%r8d
  40254f:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402553:	0f 94 c2             	sete   %dl
  402556:	41 80 f8 2d          	cmp    $0x2d,%r8b
  40255a:	0f 94 c0             	sete   %al
  40255d:	08 c2                	or     %al,%dl
  40255f:	75 cf                	jne    402530 <urlencode+0x32>
  402561:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402565:	74 c9                	je     402530 <urlencode+0x32>
  402567:	41 80 f8 5f          	cmp    $0x5f,%r8b
  40256b:	74 c3                	je     402530 <urlencode+0x32>
  40256d:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402571:	3c 09                	cmp    $0x9,%al
  402573:	76 bb                	jbe    402530 <urlencode+0x32>
  402575:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402579:	3c 19                	cmp    $0x19,%al
  40257b:	76 b3                	jbe    402530 <urlencode+0x32>
  40257d:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402581:	3c 19                	cmp    $0x19,%al
  402583:	76 ab                	jbe    402530 <urlencode+0x32>
  402585:	41 80 f8 20          	cmp    $0x20,%r8b
  402589:	74 54                	je     4025df <urlencode+0xe1>
  40258b:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  40258f:	3c 5f                	cmp    $0x5f,%al
  402591:	0f 96 c2             	setbe  %dl
  402594:	41 80 f8 09          	cmp    $0x9,%r8b
  402598:	0f 94 c0             	sete   %al
  40259b:	08 c2                	or     %al,%dl
  40259d:	74 4d                	je     4025ec <urlencode+0xee>
  40259f:	45 0f b6 c0          	movzbl %r8b,%r8d
  4025a3:	b9 35 47 40 00       	mov    $0x404735,%ecx
  4025a8:	ba 08 00 00 00       	mov    $0x8,%edx
  4025ad:	be 01 00 00 00       	mov    $0x1,%esi
  4025b2:	48 89 e7             	mov    %rsp,%rdi
  4025b5:	b8 00 00 00 00       	mov    $0x0,%eax
  4025ba:	e8 41 ec ff ff       	callq  401200 <__sprintf_chk@plt>
  4025bf:	0f b6 04 24          	movzbl (%rsp),%eax
  4025c3:	88 45 00             	mov    %al,0x0(%rbp)
  4025c6:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  4025cb:	88 45 01             	mov    %al,0x1(%rbp)
  4025ce:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  4025d3:	88 45 02             	mov    %al,0x2(%rbp)
  4025d6:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  4025da:	e9 59 ff ff ff       	jmpq   402538 <urlencode+0x3a>
  4025df:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  4025e3:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4025e7:	e9 4c ff ff ff       	jmpq   402538 <urlencode+0x3a>
  4025ec:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4025f1:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  4025f6:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  4025fd:	00 00 
  4025ff:	75 09                	jne    40260a <urlencode+0x10c>
  402601:	48 83 c4 10          	add    $0x10,%rsp
  402605:	5b                   	pop    %rbx
  402606:	5d                   	pop    %rbp
  402607:	41 5c                	pop    %r12
  402609:	c3                   	retq   
  40260a:	e8 81 ea ff ff       	callq  401090 <__stack_chk_fail@plt>

000000000040260f <submitr>:
  40260f:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
  402614:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  402618:	41 ff 72 f8          	pushq  -0x8(%r10)
  40261c:	55                   	push   %rbp
  40261d:	48 89 e5             	mov    %rsp,%rbp
  402620:	41 57                	push   %r15
  402622:	41 56                	push   %r14
  402624:	41 55                	push   %r13
  402626:	41 54                	push   %r12
  402628:	41 52                	push   %r10
  40262a:	53                   	push   %rbx
  40262b:	48 81 ec 60 a0 00 00 	sub    $0xa060,%rsp
  402632:	49 89 fe             	mov    %rdi,%r14
  402635:	89 b5 84 5f ff ff    	mov    %esi,-0xa07c(%rbp)
  40263b:	49 89 d7             	mov    %rdx,%r15
  40263e:	48 89 8d 88 5f ff ff 	mov    %rcx,-0xa078(%rbp)
  402645:	4c 89 85 78 5f ff ff 	mov    %r8,-0xa088(%rbp)
  40264c:	4d 89 cd             	mov    %r9,%r13
  40264f:	4d 8b 22             	mov    (%r10),%r12
  402652:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402659:	00 00 
  40265b:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40265f:	31 c0                	xor    %eax,%eax
  402661:	c7 85 9c 5f ff ff 00 	movl   $0x0,-0xa064(%rbp)
  402668:	00 00 00 
  40266b:	ba 00 00 00 00       	mov    $0x0,%edx
  402670:	be 01 00 00 00       	mov    $0x1,%esi
  402675:	bf 02 00 00 00       	mov    $0x2,%edi
  40267a:	e8 91 eb ff ff       	callq  401210 <socket@plt>
  40267f:	85 c0                	test   %eax,%eax
  402681:	0f 88 bf 02 00 00    	js     402946 <submitr+0x337>
  402687:	89 c3                	mov    %eax,%ebx
  402689:	4c 89 f7             	mov    %r14,%rdi
  40268c:	e8 6f ea ff ff       	callq  401100 <gethostbyname@plt>
  402691:	48 85 c0             	test   %rax,%rax
  402694:	0f 84 ff 02 00 00    	je     402999 <submitr+0x38a>
  40269a:	48 c7 85 a2 5f ff ff 	movq   $0x0,-0xa05e(%rbp)
  4026a1:	00 00 00 00 
  4026a5:	c7 85 aa 5f ff ff 00 	movl   $0x0,-0xa056(%rbp)
  4026ac:	00 00 00 
  4026af:	66 c7 85 ae 5f ff ff 	movw   $0x0,-0xa052(%rbp)
  4026b6:	00 00 
  4026b8:	66 c7 85 a0 5f ff ff 	movw   $0x2,-0xa060(%rbp)
  4026bf:	02 00 
  4026c1:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4026c5:	48 8b 40 18          	mov    0x18(%rax),%rax
  4026c9:	48 8b 30             	mov    (%rax),%rsi
  4026cc:	48 8d 85 a0 5f ff ff 	lea    -0xa060(%rbp),%rax
  4026d3:	48 8d 78 04          	lea    0x4(%rax),%rdi
  4026d7:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4026dc:	e8 2f ea ff ff       	callq  401110 <__memmove_chk@plt>
  4026e1:	0f b7 85 84 5f ff ff 	movzwl -0xa07c(%rbp),%eax
  4026e8:	66 c1 c0 08          	rol    $0x8,%ax
  4026ec:	66 89 85 a2 5f ff ff 	mov    %ax,-0xa05e(%rbp)
  4026f3:	ba 10 00 00 00       	mov    $0x10,%edx
  4026f8:	48 8d b5 a0 5f ff ff 	lea    -0xa060(%rbp),%rsi
  4026ff:	89 df                	mov    %ebx,%edi
  402701:	e8 ca ea ff ff       	callq  4011d0 <connect@plt>
  402706:	85 c0                	test   %eax,%eax
  402708:	0f 88 fd 02 00 00    	js     402a0b <submitr+0x3fc>
  40270e:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402715:	b8 00 00 00 00       	mov    $0x0,%eax
  40271a:	48 89 f1             	mov    %rsi,%rcx
  40271d:	4c 89 ef             	mov    %r13,%rdi
  402720:	f2 ae                	repnz scas %es:(%rdi),%al
  402722:	48 89 ca             	mov    %rcx,%rdx
  402725:	48 f7 d2             	not    %rdx
  402728:	48 89 f1             	mov    %rsi,%rcx
  40272b:	4c 89 ff             	mov    %r15,%rdi
  40272e:	f2 ae                	repnz scas %es:(%rdi),%al
  402730:	48 f7 d1             	not    %rcx
  402733:	49 89 c8             	mov    %rcx,%r8
  402736:	48 89 f1             	mov    %rsi,%rcx
  402739:	48 8b bd 88 5f ff ff 	mov    -0xa078(%rbp),%rdi
  402740:	f2 ae                	repnz scas %es:(%rdi),%al
  402742:	48 f7 d1             	not    %rcx
  402745:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  40274a:	48 89 f1             	mov    %rsi,%rcx
  40274d:	48 8b bd 78 5f ff ff 	mov    -0xa088(%rbp),%rdi
  402754:	f2 ae                	repnz scas %es:(%rdi),%al
  402756:	48 89 c8             	mov    %rcx,%rax
  402759:	48 f7 d0             	not    %rax
  40275c:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402761:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402766:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  40276d:	00 
  40276e:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402774:	0f 87 f4 02 00 00    	ja     402a6e <submitr+0x45f>
  40277a:	48 8d b5 c0 9f ff ff 	lea    -0x6040(%rbp),%rsi
  402781:	b9 00 04 00 00       	mov    $0x400,%ecx
  402786:	b8 00 00 00 00       	mov    $0x0,%eax
  40278b:	48 89 f7             	mov    %rsi,%rdi
  40278e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402791:	4c 89 ef             	mov    %r13,%rdi
  402794:	e8 65 fd ff ff       	callq  4024fe <urlencode>
  402799:	85 c0                	test   %eax,%eax
  40279b:	0f 88 46 03 00 00    	js     402ae7 <submitr+0x4d8>
  4027a1:	4c 8d ad c0 7f ff ff 	lea    -0x8040(%rbp),%r13
  4027a8:	41 56                	push   %r14
  4027aa:	48 8d 85 c0 9f ff ff 	lea    -0x6040(%rbp),%rax
  4027b1:	50                   	push   %rax
  4027b2:	4d 89 f9             	mov    %r15,%r9
  4027b5:	4c 8b 85 88 5f ff ff 	mov    -0xa078(%rbp),%r8
  4027bc:	b9 c8 46 40 00       	mov    $0x4046c8,%ecx
  4027c1:	ba 00 20 00 00       	mov    $0x2000,%edx
  4027c6:	be 01 00 00 00       	mov    $0x1,%esi
  4027cb:	4c 89 ef             	mov    %r13,%rdi
  4027ce:	b8 00 00 00 00       	mov    $0x0,%eax
  4027d3:	e8 28 ea ff ff       	callq  401200 <__sprintf_chk@plt>
  4027d8:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4027df:	b8 00 00 00 00       	mov    $0x0,%eax
  4027e4:	4c 89 ef             	mov    %r13,%rdi
  4027e7:	f2 ae                	repnz scas %es:(%rdi),%al
  4027e9:	48 89 ca             	mov    %rcx,%rdx
  4027ec:	48 f7 d2             	not    %rdx
  4027ef:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  4027f3:	4c 89 ee             	mov    %r13,%rsi
  4027f6:	89 df                	mov    %ebx,%edi
  4027f8:	e8 74 fb ff ff       	callq  402371 <rio_writen>
  4027fd:	48 83 c4 10          	add    $0x10,%rsp
  402801:	48 85 c0             	test   %rax,%rax
  402804:	0f 88 73 03 00 00    	js     402b7d <submitr+0x56e>
  40280a:	89 de                	mov    %ebx,%esi
  40280c:	48 8d bd b0 5f ff ff 	lea    -0xa050(%rbp),%rdi
  402813:	e8 19 fb ff ff       	callq  402331 <rio_readinitb>
  402818:	ba 00 20 00 00       	mov    $0x2000,%edx
  40281d:	48 8d b5 c0 7f ff ff 	lea    -0x8040(%rbp),%rsi
  402824:	48 8d bd b0 5f ff ff 	lea    -0xa050(%rbp),%rdi
  40282b:	e8 2a fc ff ff       	callq  40245a <rio_readlineb>
  402830:	48 85 c0             	test   %rax,%rax
  402833:	0f 8e bc 03 00 00    	jle    402bf5 <submitr+0x5e6>
  402839:	4c 8d 85 c0 df ff ff 	lea    -0x2040(%rbp),%r8
  402840:	48 8d 8d 9c 5f ff ff 	lea    -0xa064(%rbp),%rcx
  402847:	48 8d 95 c0 bf ff ff 	lea    -0x4040(%rbp),%rdx
  40284e:	be 3c 47 40 00       	mov    $0x40473c,%esi
  402853:	48 8d bd c0 7f ff ff 	lea    -0x8040(%rbp),%rdi
  40285a:	b8 00 00 00 00       	mov    $0x0,%eax
  40285f:	e8 fc e8 ff ff       	callq  401160 <__isoc99_sscanf@plt>
  402864:	48 8d b5 c0 7f ff ff 	lea    -0x8040(%rbp),%rsi
  40286b:	bf 53 47 40 00       	mov    $0x404753,%edi
  402870:	b9 03 00 00 00       	mov    $0x3,%ecx
  402875:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402877:	0f 97 c0             	seta   %al
  40287a:	1c 00                	sbb    $0x0,%al
  40287c:	84 c0                	test   %al,%al
  40287e:	0f 84 f9 03 00 00    	je     402c7d <submitr+0x66e>
  402884:	ba 00 20 00 00       	mov    $0x2000,%edx
  402889:	48 8d b5 c0 7f ff ff 	lea    -0x8040(%rbp),%rsi
  402890:	48 8d bd b0 5f ff ff 	lea    -0xa050(%rbp),%rdi
  402897:	e8 be fb ff ff       	callq  40245a <rio_readlineb>
  40289c:	48 85 c0             	test   %rax,%rax
  40289f:	7f c3                	jg     402864 <submitr+0x255>
  4028a1:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4028a8:	3a 20 43 
  4028ab:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4028b2:	20 75 6e 
  4028b5:	49 89 04 24          	mov    %rax,(%r12)
  4028b9:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  4028be:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4028c5:	74 6f 20 
  4028c8:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  4028cf:	68 65 61 
  4028d2:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  4028d7:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  4028dc:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  4028e3:	66 72 6f 
  4028e6:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
  4028ed:	20 72 65 
  4028f0:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  4028f5:	49 89 54 24 28       	mov    %rdx,0x28(%r12)
  4028fa:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  402901:	73 65 72 
  402904:	49 89 44 24 30       	mov    %rax,0x30(%r12)
  402909:	41 c7 44 24 38 76 65 	movl   $0x726576,0x38(%r12)
  402910:	72 00 
  402912:	89 df                	mov    %ebx,%edi
  402914:	e8 b7 e7 ff ff       	callq  4010d0 <close@plt>
  402919:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40291e:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
  402922:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402929:	00 00 
  40292b:	0f 85 c4 04 00 00    	jne    402df5 <submitr+0x7e6>
  402931:	48 8d 65 d0          	lea    -0x30(%rbp),%rsp
  402935:	5b                   	pop    %rbx
  402936:	41 5a                	pop    %r10
  402938:	41 5c                	pop    %r12
  40293a:	41 5d                	pop    %r13
  40293c:	41 5e                	pop    %r14
  40293e:	41 5f                	pop    %r15
  402940:	5d                   	pop    %rbp
  402941:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
  402945:	c3                   	retq   
  402946:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40294d:	3a 20 43 
  402950:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402957:	20 75 6e 
  40295a:	49 89 04 24          	mov    %rax,(%r12)
  40295e:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402963:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40296a:	74 6f 20 
  40296d:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402974:	65 20 73 
  402977:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  40297c:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402981:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  402988:	6b 65 
  40298a:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  402991:	00 
  402992:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402997:	eb 85                	jmp    40291e <submitr+0x30f>
  402999:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4029a0:	3a 20 44 
  4029a3:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4029aa:	20 75 6e 
  4029ad:	49 89 04 24          	mov    %rax,(%r12)
  4029b1:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  4029b6:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4029bd:	74 6f 20 
  4029c0:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  4029c7:	76 65 20 
  4029ca:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  4029cf:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  4029d4:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4029db:	72 20 61 
  4029de:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  4029e3:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
  4029ea:	72 65 
  4029ec:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
  4029f3:	73 
  4029f4:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
  4029fa:	89 df                	mov    %ebx,%edi
  4029fc:	e8 cf e6 ff ff       	callq  4010d0 <close@plt>
  402a01:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a06:	e9 13 ff ff ff       	jmpq   40291e <submitr+0x30f>
  402a0b:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402a12:	3a 20 55 
  402a15:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402a1c:	20 74 6f 
  402a1f:	49 89 04 24          	mov    %rax,(%r12)
  402a23:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402a28:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402a2f:	65 63 74 
  402a32:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402a39:	68 65 20 
  402a3c:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402a41:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402a46:	41 c7 44 24 20 73 65 	movl   $0x76726573,0x20(%r12)
  402a4d:	72 76 
  402a4f:	66 41 c7 44 24 24 65 	movw   $0x7265,0x24(%r12)
  402a56:	72 
  402a57:	41 c6 44 24 26 00    	movb   $0x0,0x26(%r12)
  402a5d:	89 df                	mov    %ebx,%edi
  402a5f:	e8 6c e6 ff ff       	callq  4010d0 <close@plt>
  402a64:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a69:	e9 b0 fe ff ff       	jmpq   40291e <submitr+0x30f>
  402a6e:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402a75:	3a 20 52 
  402a78:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402a7f:	20 73 74 
  402a82:	49 89 04 24          	mov    %rax,(%r12)
  402a86:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402a8b:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402a92:	74 6f 6f 
  402a95:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  402a9c:	65 2e 20 
  402a9f:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402aa4:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402aa9:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402ab0:	61 73 65 
  402ab3:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  402aba:	49 54 52 
  402abd:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  402ac2:	49 89 54 24 28       	mov    %rdx,0x28(%r12)
  402ac7:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402ace:	55 46 00 
  402ad1:	49 89 44 24 30       	mov    %rax,0x30(%r12)
  402ad6:	89 df                	mov    %ebx,%edi
  402ad8:	e8 f3 e5 ff ff       	callq  4010d0 <close@plt>
  402add:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ae2:	e9 37 fe ff ff       	jmpq   40291e <submitr+0x30f>
  402ae7:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402aee:	3a 20 52 
  402af1:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402af8:	20 73 74 
  402afb:	49 89 04 24          	mov    %rax,(%r12)
  402aff:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402b04:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402b0b:	63 6f 6e 
  402b0e:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  402b15:	20 61 6e 
  402b18:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402b1d:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402b22:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402b29:	67 61 6c 
  402b2c:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  402b33:	6e 70 72 
  402b36:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  402b3b:	49 89 54 24 28       	mov    %rdx,0x28(%r12)
  402b40:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402b47:	6c 65 20 
  402b4a:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  402b51:	63 74 65 
  402b54:	49 89 44 24 30       	mov    %rax,0x30(%r12)
  402b59:	49 89 54 24 38       	mov    %rdx,0x38(%r12)
  402b5e:	66 41 c7 44 24 40 72 	movw   $0x2e72,0x40(%r12)
  402b65:	2e 
  402b66:	41 c6 44 24 42 00    	movb   $0x0,0x42(%r12)
  402b6c:	89 df                	mov    %ebx,%edi
  402b6e:	e8 5d e5 ff ff       	callq  4010d0 <close@plt>
  402b73:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b78:	e9 a1 fd ff ff       	jmpq   40291e <submitr+0x30f>
  402b7d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402b84:	3a 20 43 
  402b87:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402b8e:	20 75 6e 
  402b91:	49 89 04 24          	mov    %rax,(%r12)
  402b95:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402b9a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402ba1:	74 6f 20 
  402ba4:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  402bab:	20 74 6f 
  402bae:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402bb3:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402bb8:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  402bbf:	72 65 73 
  402bc2:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
  402bc9:	65 72 76 
  402bcc:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  402bd1:	49 89 54 24 28       	mov    %rdx,0x28(%r12)
  402bd6:	66 41 c7 44 24 30 65 	movw   $0x7265,0x30(%r12)
  402bdd:	72 
  402bde:	41 c6 44 24 32 00    	movb   $0x0,0x32(%r12)
  402be4:	89 df                	mov    %ebx,%edi
  402be6:	e8 e5 e4 ff ff       	callq  4010d0 <close@plt>
  402beb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bf0:	e9 29 fd ff ff       	jmpq   40291e <submitr+0x30f>
  402bf5:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402bfc:	3a 20 43 
  402bff:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402c06:	20 75 6e 
  402c09:	49 89 04 24          	mov    %rax,(%r12)
  402c0d:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402c12:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402c19:	74 6f 20 
  402c1c:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  402c23:	66 69 72 
  402c26:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402c2b:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402c30:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402c37:	61 64 65 
  402c3a:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
  402c41:	6d 20 72 
  402c44:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  402c49:	49 89 54 24 28       	mov    %rdx,0x28(%r12)
  402c4e:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  402c55:	20 73 65 
  402c58:	49 89 44 24 30       	mov    %rax,0x30(%r12)
  402c5d:	41 c7 44 24 38 72 76 	movl   $0x72657672,0x38(%r12)
  402c64:	65 72 
  402c66:	41 c6 44 24 3c 00    	movb   $0x0,0x3c(%r12)
  402c6c:	89 df                	mov    %ebx,%edi
  402c6e:	e8 5d e4 ff ff       	callq  4010d0 <close@plt>
  402c73:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c78:	e9 a1 fc ff ff       	jmpq   40291e <submitr+0x30f>
  402c7d:	ba 00 20 00 00       	mov    $0x2000,%edx
  402c82:	48 8d b5 c0 7f ff ff 	lea    -0x8040(%rbp),%rsi
  402c89:	48 8d bd b0 5f ff ff 	lea    -0xa050(%rbp),%rdi
  402c90:	e8 c5 f7 ff ff       	callq  40245a <rio_readlineb>
  402c95:	48 85 c0             	test   %rax,%rax
  402c98:	0f 8e 91 00 00 00    	jle    402d2f <submitr+0x720>
  402c9e:	44 8b 85 9c 5f ff ff 	mov    -0xa064(%rbp),%r8d
  402ca5:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402cac:	0f 85 0d 01 00 00    	jne    402dbf <submitr+0x7b0>
  402cb2:	48 8d b5 c0 7f ff ff 	lea    -0x8040(%rbp),%rsi
  402cb9:	4c 89 e7             	mov    %r12,%rdi
  402cbc:	e8 9f e3 ff ff       	callq  401060 <strcpy@plt>
  402cc1:	89 df                	mov    %ebx,%edi
  402cc3:	e8 08 e4 ff ff       	callq  4010d0 <close@plt>
  402cc8:	bf 4d 47 40 00       	mov    $0x40474d,%edi
  402ccd:	b9 04 00 00 00       	mov    $0x4,%ecx
  402cd2:	4c 89 e6             	mov    %r12,%rsi
  402cd5:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402cd7:	0f 97 c0             	seta   %al
  402cda:	1c 00                	sbb    $0x0,%al
  402cdc:	0f be c0             	movsbl %al,%eax
  402cdf:	85 c0                	test   %eax,%eax
  402ce1:	0f 84 37 fc ff ff    	je     40291e <submitr+0x30f>
  402ce7:	bf 51 47 40 00       	mov    $0x404751,%edi
  402cec:	b9 05 00 00 00       	mov    $0x5,%ecx
  402cf1:	4c 89 e6             	mov    %r12,%rsi
  402cf4:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402cf6:	0f 97 c0             	seta   %al
  402cf9:	1c 00                	sbb    $0x0,%al
  402cfb:	0f be c0             	movsbl %al,%eax
  402cfe:	85 c0                	test   %eax,%eax
  402d00:	0f 84 18 fc ff ff    	je     40291e <submitr+0x30f>
  402d06:	bf 56 47 40 00       	mov    $0x404756,%edi
  402d0b:	b9 03 00 00 00       	mov    $0x3,%ecx
  402d10:	4c 89 e6             	mov    %r12,%rsi
  402d13:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402d15:	0f 97 c0             	seta   %al
  402d18:	1c 00                	sbb    $0x0,%al
  402d1a:	0f be c0             	movsbl %al,%eax
  402d1d:	85 c0                	test   %eax,%eax
  402d1f:	0f 84 f9 fb ff ff    	je     40291e <submitr+0x30f>
  402d25:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d2a:	e9 ef fb ff ff       	jmpq   40291e <submitr+0x30f>
  402d2f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402d36:	3a 20 43 
  402d39:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402d40:	20 75 6e 
  402d43:	49 89 04 24          	mov    %rax,(%r12)
  402d47:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402d4c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402d53:	74 6f 20 
  402d56:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  402d5d:	73 74 61 
  402d60:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402d65:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402d6a:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402d71:	65 73 73 
  402d74:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  402d7b:	72 6f 6d 
  402d7e:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  402d83:	49 89 54 24 28       	mov    %rdx,0x28(%r12)
  402d88:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402d8f:	6c 74 20 
  402d92:	49 89 44 24 30       	mov    %rax,0x30(%r12)
  402d97:	41 c7 44 24 38 73 65 	movl   $0x76726573,0x38(%r12)
  402d9e:	72 76 
  402da0:	66 41 c7 44 24 3c 65 	movw   $0x7265,0x3c(%r12)
  402da7:	72 
  402da8:	41 c6 44 24 3e 00    	movb   $0x0,0x3e(%r12)
  402dae:	89 df                	mov    %ebx,%edi
  402db0:	e8 1b e3 ff ff       	callq  4010d0 <close@plt>
  402db5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402dba:	e9 5f fb ff ff       	jmpq   40291e <submitr+0x30f>
  402dbf:	4c 8d 8d c0 df ff ff 	lea    -0x2040(%rbp),%r9
  402dc6:	b9 08 47 40 00       	mov    $0x404708,%ecx
  402dcb:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402dd2:	be 01 00 00 00       	mov    $0x1,%esi
  402dd7:	4c 89 e7             	mov    %r12,%rdi
  402dda:	b8 00 00 00 00       	mov    $0x0,%eax
  402ddf:	e8 1c e4 ff ff       	callq  401200 <__sprintf_chk@plt>
  402de4:	89 df                	mov    %ebx,%edi
  402de6:	e8 e5 e2 ff ff       	callq  4010d0 <close@plt>
  402deb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402df0:	e9 29 fb ff ff       	jmpq   40291e <submitr+0x30f>
  402df5:	e8 96 e2 ff ff       	callq  401090 <__stack_chk_fail@plt>

0000000000402dfa <init_timeout>:
  402dfa:	85 ff                	test   %edi,%edi
  402dfc:	74 26                	je     402e24 <init_timeout+0x2a>
  402dfe:	53                   	push   %rbx
  402dff:	89 fb                	mov    %edi,%ebx
  402e01:	85 ff                	test   %edi,%edi
  402e03:	78 18                	js     402e1d <init_timeout+0x23>
  402e05:	be 43 23 40 00       	mov    $0x402343,%esi
  402e0a:	bf 0e 00 00 00       	mov    $0xe,%edi
  402e0f:	e8 dc e2 ff ff       	callq  4010f0 <signal@plt>
  402e14:	89 df                	mov    %ebx,%edi
  402e16:	e8 a5 e2 ff ff       	callq  4010c0 <alarm@plt>
  402e1b:	5b                   	pop    %rbx
  402e1c:	c3                   	retq   
  402e1d:	bb 00 00 00 00       	mov    $0x0,%ebx
  402e22:	eb e1                	jmp    402e05 <init_timeout+0xb>
  402e24:	f3 c3                	repz retq 

0000000000402e26 <init_driver>:
  402e26:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
  402e2b:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  402e2f:	41 ff 72 f8          	pushq  -0x8(%r10)
  402e33:	55                   	push   %rbp
  402e34:	48 89 e5             	mov    %rsp,%rbp
  402e37:	41 54                	push   %r12
  402e39:	41 52                	push   %r10
  402e3b:	53                   	push   %rbx
  402e3c:	48 83 ec 28          	sub    $0x28,%rsp
  402e40:	49 89 fc             	mov    %rdi,%r12
  402e43:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402e4a:	00 00 
  402e4c:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  402e50:	31 c0                	xor    %eax,%eax
  402e52:	be 01 00 00 00       	mov    $0x1,%esi
  402e57:	bf 0d 00 00 00       	mov    $0xd,%edi
  402e5c:	e8 8f e2 ff ff       	callq  4010f0 <signal@plt>
  402e61:	be 01 00 00 00       	mov    $0x1,%esi
  402e66:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402e6b:	e8 80 e2 ff ff       	callq  4010f0 <signal@plt>
  402e70:	be 01 00 00 00       	mov    $0x1,%esi
  402e75:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402e7a:	e8 71 e2 ff ff       	callq  4010f0 <signal@plt>
  402e7f:	ba 00 00 00 00       	mov    $0x0,%edx
  402e84:	be 01 00 00 00       	mov    $0x1,%esi
  402e89:	bf 02 00 00 00       	mov    $0x2,%edi
  402e8e:	e8 7d e3 ff ff       	callq  401210 <socket@plt>
  402e93:	85 c0                	test   %eax,%eax
  402e95:	0f 88 a6 00 00 00    	js     402f41 <init_driver+0x11b>
  402e9b:	89 c3                	mov    %eax,%ebx
  402e9d:	bf 59 47 40 00       	mov    $0x404759,%edi
  402ea2:	e8 59 e2 ff ff       	callq  401100 <gethostbyname@plt>
  402ea7:	48 85 c0             	test   %rax,%rax
  402eaa:	0f 84 e4 00 00 00    	je     402f94 <init_driver+0x16e>
  402eb0:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
  402eb4:	48 c7 45 c2 00 00 00 	movq   $0x0,-0x3e(%rbp)
  402ebb:	00 
  402ebc:	c7 45 ca 00 00 00 00 	movl   $0x0,-0x36(%rbp)
  402ec3:	66 c7 45 ce 00 00    	movw   $0x0,-0x32(%rbp)
  402ec9:	66 c7 45 c0 02 00    	movw   $0x2,-0x40(%rbp)
  402ecf:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402ed3:	48 8b 40 18          	mov    0x18(%rax),%rax
  402ed7:	48 8b 30             	mov    (%rax),%rsi
  402eda:	48 8d 79 04          	lea    0x4(%rcx),%rdi
  402ede:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402ee3:	e8 28 e2 ff ff       	callq  401110 <__memmove_chk@plt>
  402ee8:	66 c7 45 c2 3c 9a    	movw   $0x9a3c,-0x3e(%rbp)
  402eee:	ba 10 00 00 00       	mov    $0x10,%edx
  402ef3:	48 8d 75 c0          	lea    -0x40(%rbp),%rsi
  402ef7:	89 df                	mov    %ebx,%edi
  402ef9:	e8 d2 e2 ff ff       	callq  4011d0 <connect@plt>
  402efe:	85 c0                	test   %eax,%eax
  402f00:	0f 88 00 01 00 00    	js     403006 <init_driver+0x1e0>
  402f06:	89 df                	mov    %ebx,%edi
  402f08:	e8 c3 e1 ff ff       	callq  4010d0 <close@plt>
  402f0d:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
  402f14:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
  402f1a:	b8 00 00 00 00       	mov    $0x0,%eax
  402f1f:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  402f23:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402f2a:	00 00 
  402f2c:	0f 85 2e 01 00 00    	jne    403060 <init_driver+0x23a>
  402f32:	48 83 c4 28          	add    $0x28,%rsp
  402f36:	5b                   	pop    %rbx
  402f37:	41 5a                	pop    %r10
  402f39:	41 5c                	pop    %r12
  402f3b:	5d                   	pop    %rbp
  402f3c:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
  402f40:	c3                   	retq   
  402f41:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402f48:	3a 20 43 
  402f4b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402f52:	20 75 6e 
  402f55:	49 89 04 24          	mov    %rax,(%r12)
  402f59:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402f5e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f65:	74 6f 20 
  402f68:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402f6f:	65 20 73 
  402f72:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402f77:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402f7c:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  402f83:	6b 65 
  402f85:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  402f8c:	00 
  402f8d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f92:	eb 8b                	jmp    402f1f <init_driver+0xf9>
  402f94:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402f9b:	3a 20 44 
  402f9e:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402fa5:	20 75 6e 
  402fa8:	49 89 04 24          	mov    %rax,(%r12)
  402fac:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402fb1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402fb8:	74 6f 20 
  402fbb:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402fc2:	76 65 20 
  402fc5:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402fca:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402fcf:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402fd6:	72 20 61 
  402fd9:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  402fde:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
  402fe5:	72 65 
  402fe7:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
  402fee:	73 
  402fef:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
  402ff5:	89 df                	mov    %ebx,%edi
  402ff7:	e8 d4 e0 ff ff       	callq  4010d0 <close@plt>
  402ffc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403001:	e9 19 ff ff ff       	jmpq   402f1f <init_driver+0xf9>
  403006:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  40300d:	3a 20 55 
  403010:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  403017:	20 74 6f 
  40301a:	49 89 04 24          	mov    %rax,(%r12)
  40301e:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  403023:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  40302a:	65 63 74 
  40302d:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  403034:	65 72 76 
  403037:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  40303c:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  403041:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
  403048:	72 
  403049:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
  40304f:	89 df                	mov    %ebx,%edi
  403051:	e8 7a e0 ff ff       	callq  4010d0 <close@plt>
  403056:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40305b:	e9 bf fe ff ff       	jmpq   402f1f <init_driver+0xf9>
  403060:	e8 2b e0 ff ff       	callq  401090 <__stack_chk_fail@plt>

0000000000403065 <driver_post>:
  403065:	53                   	push   %rbx
  403066:	4c 89 cb             	mov    %r9,%rbx
  403069:	45 85 c0             	test   %r8d,%r8d
  40306c:	75 18                	jne    403086 <driver_post+0x21>
  40306e:	48 85 ff             	test   %rdi,%rdi
  403071:	74 05                	je     403078 <driver_post+0x13>
  403073:	80 3f 00             	cmpb   $0x0,(%rdi)
  403076:	75 35                	jne    4030ad <driver_post+0x48>
  403078:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40307d:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403081:	44 89 c0             	mov    %r8d,%eax
  403084:	5b                   	pop    %rbx
  403085:	c3                   	retq   
  403086:	48 89 ca             	mov    %rcx,%rdx
  403089:	be 76 47 40 00       	mov    $0x404776,%esi
  40308e:	bf 01 00 00 00       	mov    $0x1,%edi
  403093:	b8 00 00 00 00       	mov    $0x0,%eax
  403098:	e8 e3 e0 ff ff       	callq  401180 <__printf_chk@plt>
  40309d:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4030a2:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4030a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4030ab:	eb d7                	jmp    403084 <driver_post+0x1f>
  4030ad:	48 83 ec 08          	sub    $0x8,%rsp
  4030b1:	41 51                	push   %r9
  4030b3:	49 89 c9             	mov    %rcx,%r9
  4030b6:	49 89 d0             	mov    %rdx,%r8
  4030b9:	48 89 f9             	mov    %rdi,%rcx
  4030bc:	48 89 f2             	mov    %rsi,%rdx
  4030bf:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  4030c4:	bf 59 47 40 00       	mov    $0x404759,%edi
  4030c9:	e8 41 f5 ff ff       	callq  40260f <submitr>
  4030ce:	48 83 c4 10          	add    $0x10,%rsp
  4030d2:	eb b0                	jmp    403084 <driver_post+0x1f>

00000000004030d4 <check>:
  4030d4:	89 f8                	mov    %edi,%eax
  4030d6:	c1 e8 1c             	shr    $0x1c,%eax
  4030d9:	85 c0                	test   %eax,%eax
  4030db:	74 1d                	je     4030fa <check+0x26>
  4030dd:	b9 00 00 00 00       	mov    $0x0,%ecx
  4030e2:	83 f9 1f             	cmp    $0x1f,%ecx
  4030e5:	7f 0d                	jg     4030f4 <check+0x20>
  4030e7:	89 f8                	mov    %edi,%eax
  4030e9:	d3 e8                	shr    %cl,%eax
  4030eb:	3c 0a                	cmp    $0xa,%al
  4030ed:	74 11                	je     403100 <check+0x2c>
  4030ef:	83 c1 08             	add    $0x8,%ecx
  4030f2:	eb ee                	jmp    4030e2 <check+0xe>
  4030f4:	b8 01 00 00 00       	mov    $0x1,%eax
  4030f9:	c3                   	retq   
  4030fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4030ff:	c3                   	retq   
  403100:	b8 00 00 00 00       	mov    $0x0,%eax
  403105:	c3                   	retq   

0000000000403106 <gencookie>:
  403106:	53                   	push   %rbx
  403107:	83 c7 01             	add    $0x1,%edi
  40310a:	e8 31 df ff ff       	callq  401040 <srandom@plt>
  40310f:	e8 3c e0 ff ff       	callq  401150 <random@plt>
  403114:	89 c3                	mov    %eax,%ebx
  403116:	89 c7                	mov    %eax,%edi
  403118:	e8 b7 ff ff ff       	callq  4030d4 <check>
  40311d:	85 c0                	test   %eax,%eax
  40311f:	74 ee                	je     40310f <gencookie+0x9>
  403121:	89 d8                	mov    %ebx,%eax
  403123:	5b                   	pop    %rbx
  403124:	c3                   	retq   
  403125:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40312c:	00 00 00 
  40312f:	90                   	nop

0000000000403130 <__libc_csu_init>:
  403130:	f3 0f 1e fa          	endbr64 
  403134:	41 57                	push   %r15
  403136:	4c 8d 3d d3 3c 00 00 	lea    0x3cd3(%rip),%r15        # 406e10 <__frame_dummy_init_array_entry>
  40313d:	41 56                	push   %r14
  40313f:	49 89 d6             	mov    %rdx,%r14
  403142:	41 55                	push   %r13
  403144:	49 89 f5             	mov    %rsi,%r13
  403147:	41 54                	push   %r12
  403149:	41 89 fc             	mov    %edi,%r12d
  40314c:	55                   	push   %rbp
  40314d:	48 8d 2d c4 3c 00 00 	lea    0x3cc4(%rip),%rbp        # 406e18 <__do_global_dtors_aux_fini_array_entry>
  403154:	53                   	push   %rbx
  403155:	4c 29 fd             	sub    %r15,%rbp
  403158:	48 83 ec 08          	sub    $0x8,%rsp
  40315c:	e8 9f de ff ff       	callq  401000 <_init>
  403161:	48 c1 fd 03          	sar    $0x3,%rbp
  403165:	74 1f                	je     403186 <__libc_csu_init+0x56>
  403167:	31 db                	xor    %ebx,%ebx
  403169:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  403170:	4c 89 f2             	mov    %r14,%rdx
  403173:	4c 89 ee             	mov    %r13,%rsi
  403176:	44 89 e7             	mov    %r12d,%edi
  403179:	41 ff 14 df          	callq  *(%r15,%rbx,8)
  40317d:	48 83 c3 01          	add    $0x1,%rbx
  403181:	48 39 dd             	cmp    %rbx,%rbp
  403184:	75 ea                	jne    403170 <__libc_csu_init+0x40>
  403186:	48 83 c4 08          	add    $0x8,%rsp
  40318a:	5b                   	pop    %rbx
  40318b:	5d                   	pop    %rbp
  40318c:	41 5c                	pop    %r12
  40318e:	41 5d                	pop    %r13
  403190:	41 5e                	pop    %r14
  403192:	41 5f                	pop    %r15
  403194:	c3                   	retq   
  403195:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40319c:	00 00 00 00 

00000000004031a0 <__libc_csu_fini>:
  4031a0:	f3 0f 1e fa          	endbr64 
  4031a4:	c3                   	retq   

Disassembly of section .fini:

00000000004031a8 <_fini>:
  4031a8:	f3 0f 1e fa          	endbr64 
  4031ac:	48 83 ec 08          	sub    $0x8,%rsp
  4031b0:	48 83 c4 08          	add    $0x8,%rsp
  4031b4:	c3                   	retq   
