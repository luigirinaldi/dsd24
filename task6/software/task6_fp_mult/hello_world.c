#include <stdio.h>
#include "system.h"

#define ALT_CI_INT_MULT_0(A,B) __builtin_custom_inii(ALT_CI_INT_MULT_0_N,(A),(B))
#define ALT_CI_INT_MULT_0_N 0x0
#define ALT_CI_FP_MULT_0(A,B) __builtin_custom_fnff(ALT_CI_FP_MULT_0_N,(A),(B))
#define ALT_CI_FP_MULT_0_N 0x1

int main()
{
  printf("Hello from Nios II!\n");

  int a, b, c, d;
  a = 2;
  b = 4;
  c = a * b;
  printf("Multiplication result: %d\n", c);

  d = ALT_CI_INT_MULT_0(a, b);
  printf("Multiplication result from custom instr: %d\n", d);

  float e, f, g, h;
  e = 1.0;
  f = 1.0;
  g = e * f;
  printf("Float mul result: %f\n", g);

  h = ALT_CI_FP_MULT_0(e, f);
  printf("Float mul res custom: %f\n", *(int*)&h);

  return 0;
}
