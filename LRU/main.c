/*
 * =====================================================================================
 *
 *       Filename:  main.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  2014년 08월 18일 03시 08분 19초
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         author:  Jun-Hyung Park (), google@dankook.ac.kr
 *   organization:  Dankook Univ.
 *
 * =====================================================================================
 */
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <fcntl.h>

#include "dkh/code_analyze.h"

int main(int argc, char* argv[])
{
  /* get file line */
  /* int line = 0; */
  /* line = get_file_line("./test/file.list"); */
  /* printf("line : %d \n", line); */

  /* read file, Thus file is file list */
  /* read_file_code("./test/file2.list"); */

  read_code_file("./test/file2.list");

  return 0;
}
