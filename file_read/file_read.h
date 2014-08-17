/*
 * =====================================================================================
 *
 *       Filename:  main.c
 *
 *    Description:  file read header
 *
 *        Version:  1.0
 *        Created:  2014년 08월 18일 02시 46분 01초
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

#include "errno.h"
#include "print_msg.h"

struct file_info
{

};

int open_file(char *path)
{
  int ret = -1;

  if (!path)
    return -EARG_NULL;

  ret = open(path, O_RDWR, 0666);
  if (ret < 0)
    return -EFAIL_FUNC;

ret:
  return 0;
}

int main(int argc, char* argv[])
{
  int fd = -1;

  fd = open_file("./file");
  err_test(fd, "open");



  return 0;
}

