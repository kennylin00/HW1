#include <stdio.h>

extern int fibonacci(int x);

int main(int argc, char **argv)
{
  int number=0;
  int result=0;

  printf("Pleas input a number:");
  scanf("%d",&number);
  result = fibonacci(number);   
  printf("The fibonacci sequence at %d is: %d\n", number, result);
  return 0;
}


