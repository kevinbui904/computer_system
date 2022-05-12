This file contains materials for one instance of the attacklab.

Files:

    ctarget

Linux binary with code-injection vulnerability.  To be used for phases
1-3 of the assignment.

    rtarget

Linux binary with return-oriented programming vulnerability.  To be
used for phases 4-5 of the assignment.

     cookie.txt

Text file containing 4-byte signature required for this lab instance.

     farm.c

Source code for gadget farm present in this instance of rtarget.  You
can compile (use flag -Og) and disassemble it to look for gadgets.

     hex2raw

Utility program to generate byte sequences.  See documentation in lab
handout.



NOTE for future readers: for these exploits, think about hwo the stacks are being constructed (callq and pushq BOTH changes the thing stored at RSP, but callq specifically puts in a return address). For buffer overflow, how would you know how far away the buffer is from the return address (HINT: stacks grows from a high memory address to a lower one...so look for a subtraction). For random overwriting...think about what's at the bottom of the current return address (e.g. at a higher address from the current return), chances are you could overwrite those too ;D