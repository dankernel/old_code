/*
 * =====================================================================================
 *
 *       Filename:  main.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  2014년 07월 13일 16시 57분 29초
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         author:   (), 
 *   organization:  
 *
 * =====================================================================================
 */
#include <stdlib.h>
#include <stdio.h>

/* 
 * tmp func
 */
void print_bin(unsigned int num)
{/*{{{*/
  int i = 31;
  while (0 <= i)
    printf("%d", (num>>i--) & 1);
  printf("\n\n");
}/*}}}*/

int invert(int num, int bitp, int bitn)
{
  int tmp_bit = 0;

  //get bit ..//
  tmp_bit = ~num & (((1<<bitn) - 1) << bitp-bitn);
  tmp_bit = ~tmp_bit & ((1<<bitn) - 1);
  tmp_bit <<= bitp - bitn;
  print_bin(tmp_bit);

  //set 0 ..//
  num = num & ~(((1<<bitn) - 1) << bitp-bitn);
  print_bin(num);

  //or..//
  num |= tmp_bit;

  print_bin(num);
  return num;
}

int main(int argc, char* argv[]) {

  print_bin(31);
  invert(31, 3, 2);

  return 0;
}
