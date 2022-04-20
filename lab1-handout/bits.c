/*
 * CS 208 Lab 1: Data Lab
 *
 * Thien K. M. Bui <buik@carleton.edu>
 *
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.
 *
 * Last updated 04-12-2022
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>   
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting if the shift amount
     is less than 0 or greater than 31.


EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implement floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants. You can use any arithmetic,
logical, or comparison operations on int or unsigned data.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operations (integer, logical,
     or comparison) that you are allowed to use for your implementation
     of the function.  The max operator count is checked by dlc.
     Note that assignment ('=') is not counted; you may use as many of
     these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce 
 *      the correct answers.
 */

#endif
/* Copyright (C) 1991-2018 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
/* wchar_t uses Unicode 10.0.0.  Version 10.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2017, fifth edition, plus
   the following additions from Amendment 1 to the fifth edition:
   - 56 emoji characters
   - 285 hentaigana
   - 3 additional Zanabazar Square characters */
/* We do not support C11 <threads.h>.  */
/*
 * sign - return 1 if positive, 0 if zero, and -1 if negative
 *  Examples: sign(130) = 1
 *            sign(-23) = -1
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 10
 *  Rating: 6
 */
int sign(int x)
{

  /*
  1000 --> 0001
  0100 --> 0001
  0000 --> 0000
  */
  int not_not = !!x;

  /*
  1000 --> 1111
  0100 --> 0000
  0000 --> 0000
  */
  int shifted_right = x >> 31;
  return shifted_right | (not_not);
}
/*
 * getByte - Extract byte n from int x
 *   Bytes numbered from 0 (least significant) to 3 (most significant)
 *   Examples: getByte(0x12345678,1) = 0x56
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 5
 */
int getByte(int x, int n)
{
  /*
  0001 = 1
  0010 = 2
  0100 = 4
  1000 = 8
  shifting is the same as multiplying by 2


  to keep the first 8 bits (n = 3), we need to shift x to the right 24 times
  3 * 2 * 2 * 2,
  8 = << 2
  so n << 3 gives us the amount of bits that needs to be shifted
  */
  int shift_amount = n << 3;
  int mask = 0xFF;

  /*
  with n = 1
  0010 --> 0001
  0001 & 0011 --> 0001

  */
  return (x >> shift_amount) & mask;
}
/*
 * bitXor - x^y using only ~ and &
 *   Example: bitXor(4, 5) = 1
 *   Legal ops: ~ &
 *   Max ops: 14
 *   Rating: 5
 *   Advice: xor breaks down into x_or_y and not x_and_y.
 *           For x_or_y, try devising an expression for not-or (1s where x
 *           and y both have 0s) and then inverting that
 */
int bitXor(int x, int y)
{
  /*
  Change it to AND from OR with deMorgan law
  xor :=  (X OR Y) AND NOT(X AND Y)
          <=> NOT(NOT X AND NOT Y) AND NOT(X AND Y)

  */
  return ~(~x & ~y) & ~(y & x);
}
/*
 * bitAnd - x&y using only ~ and |
 *   Example: bitAnd(6, 5) = 4
 *   Legal ops: ~ |
 *   Max ops: 8
 *   Rating: 5
 *   Advice: try divising an expression for not-and first
 *           (1s where x or y or both have 0s) and then invert that
 */
int bitAnd(int x, int y)
{
  /*
  Use de Morgan law
  X AND Y = NOT(NOT X OR NOT Y)
  */
  return ~(~x | ~y);
}
/*
 * conditional - same as if (x) { return y; } else { return z; } or
 *   the C expression x ? y : z
 *   Example: conditional(2,4,5) = 4
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 5
 *   Advice: turn x into two masks, one of which will be 0 and one of which will be
 *           all 1s depending on whether x is true or not. Apply these masks to
 *           y and z and return the combined result.
 */
int conditional(int x, int y, int z)
{
  int condition_is_false = ((!x) << 31) >> 31;
  int cond_true = ~condition_is_false;

  return (cond_true & y) | (condition_is_false & z);
}
/*
 * logicalNeg - implement the ! operator, using all of
 *              the legal operators except !
 *   Examples: logicalNeg(3) = 0, logicalNeg(0) = 1
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 5
 *   Advice: use x and -x to detect when x is 0
 */
int logicalNeg(int x)
{
  /*abuse overflow
  if x is positive, then shifting right preserves the 0
  if x is negative, then shifting right preserves the 1, regardless
  Regardless, we always get a mask of all 1s if we shift both positive AND negative x by 31
  if x is 0, then regardless of what we shift, 0 and -0 and shifted 0s is still 0
  */

  int negative_x = ~x + 1;
  int overflow = negative_x >> 31 | x >> 31;
  
  return overflow + 1;
}
/*
 * isLessOrEqual - if x <= y  then return 1, else return 0
 *   Example: isLessOrEqual(4,5) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 5
 *   Advice: start with finding x - y, if it's negative, then x < y.
 *           Handle additional cases: negative overflow, positive overflow, zero,
 *           and combine the results
 */
int isLessOrEqual(int x, int y)
{
  return 2;
}
/*
 * absVal - absolute value of x
 *   Example: absVal(-1) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 10
 *   Rating: 2
 *   Advice: Devise an expression that will work out to
 *           ~x + 1 when x is negative, and x otherwise.
 *           (^ may prove useful.)
 */
int absVal(int x)
{
  /*
  use a mask
  */
  int is_negative = x >> 31;
  int negative_x = ~x + 1;

  return (is_negative & negative_x) | (~is_negative & x);
}
/*
 * isPower2 - returns 1 if x is a power of 2, and 0 otherwise
 *   Examples: isPower2(5) = 0, isPower2(8) = 1, isPower2(0) = 0
 *   Note that no negative number is a power of 2.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 1
 *   Advice: A power of 2 will have a single 1 bit that is not in the most
 *           significant place. When x is a power of 2, x - 1 and x will not
 *           have 1s in any of the same places.
 */
int isPower2(int x)
{
  int x_minus_one = x + (~1 + 1);

  //if x is a power of 2, then is_p_two is 0000
  int is_p_two = ~(x ^ x_minus_one);
  
  int is_negative = x >> 31;


  return ;
}
