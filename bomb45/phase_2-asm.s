Dump of assembler code for function phase_2:
   0x00000000004013fb <+0>:	push   %rbp
   0x00000000004013fc <+1>:	push   %rbx
   0x00000000004013fd <+2>:	sub    $0x28,%rsp
   0x0000000000401401 <+6>:	mov    %rsp,%rsi
   0x0000000000401404 <+9>:	callq  0x401a3d <read_six_numbers>
   0x0000000000401409 <+14>:	cmpl   $0x1,(%rsp)
   0x000000000040140d <+18>:	jne    0x401418 <phase_2+29>
   0x000000000040140f <+20>:	mov    %rsp,%rbx
   0x0000000000401412 <+23>:	lea    0x14(%rbx),%rbp
   0x0000000000401416 <+27>:	jmp    0x401428 <phase_2+45>
   0x0000000000401418 <+29>:	callq  0x401a07 <explode_bomb>
   0x000000000040141d <+34>:	jmp    0x40140f <phase_2+20>
   0x000000000040141f <+36>:	add    $0x4,%rbx
   0x0000000000401423 <+40>:	cmp    %rbp,%rbx
   0x0000000000401426 <+43>:	je     0x401438 <phase_2+61>
   0x0000000000401428 <+45>:	mov    (%rbx),%eax
   0x000000000040142a <+47>:	add    %eax,%eax
   0x000000000040142c <+49>:	cmp    %eax,0x4(%rbx)
   0x000000000040142f <+52>:	je     0x40141f <phase_2+36>
   0x0000000000401431 <+54>:	callq  0x401a07 <explode_bomb>
   0x0000000000401436 <+59>:	jmp    0x40141f <phase_2+36>
   0x0000000000401438 <+61>:	add    $0x28,%rsp
   0x000000000040143c <+65>:	pop    %rbx
   0x000000000040143d <+66>:	pop    %rbp
   0x000000000040143e <+67>:	retq   
End of assembler dump.
