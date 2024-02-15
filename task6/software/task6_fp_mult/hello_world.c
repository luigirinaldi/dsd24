#include <stdio.h>
#include "system.h"
#include <sys/times.h>

// #define ALT_CI_FP_MULT_0(A,B) __builtin_custom_fnff(ALT_CI_FP_MULT_0_N,(A),(B))
// #define ALT_CI_FP_MULT_0_N 0x0

int main()
{
  printf("Hello from Nios II!\n");

  volatile clock_t exec_t1, exec_t2;


  const float e= 14.6, f= 34.5;
  volatile float g, h;

  exec_t1 = times(NULL);
  for (int i = 0; i < 1000000; i++){
    g = e * f;
  }
  exec_t2 = times(NULL);

  printf("Float mul result: %f, %d ticks\n", g, exec_t2 - exec_t1);

  exec_t1 = times(NULL);
  for (int i = 0; i < 1000000; i++){
    h = ALT_CI_FP_MULT(e, f);
  }
  exec_t2 = times(NULL);
  printf("Float mul res custom: %f, %d ticks\n", h, exec_t2 - exec_t1);

  return 0;
}
