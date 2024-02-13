#include <stdlib.h>
#include <sys/alt_stdio.h>
#include <sys/alt_alarm.h>
#include <sys/times.h>
#include <alt_types.h>
#include <system.h>
#include <stdio.h>
#include <unistd.h>
#include <math.h>

// Test case 1
// #define step 5
// #define N 52

// Test case 2
// #define step 1/8.0
// #define N 2041

// Test case 3
#define step 1/1024.0
#define N 261121

// Test case 4
// #define N 2323
// #define RANDSEED 334
// #define MAXVAL 255

#ifdef RANDSEED

void generateVector(float x[N])
{
  int i;
  srand(RANDSEED);
  for (i = 0; i < N; i++)
  {
    x[i] = ((float) rand() / (float) RAND_MAX) * MAXVAL;
  }
}

#else

// Generates the vector x and stores it in the memory
void generateVector(float x[N])
{
  int i;
  x[0] = 0;
  for (i = 1; i < N; i++) x[i] = x[i-1] + step;
}

#endif

float sumVector(float x[0], int M)
{
  float sum = 0;
  int i = 0;
  for (; i < M; i++) 
  {
    sum += (x[i] + x[i] * x[i]);
  }

  return sum;
}

float theFunction(float x[0], int M) {
  float sum = 0;
  int i = 0;
  for (; i < M; i++) 
  {
    sum += (0.5 * x[i] + x[i] * x[i] * cos((x[i] - 128) / 128));
  }

  return sum;
}

int main(int argc, char* argv[])
{
  const int numIterations = 1;
  printf("Task 3!\n");
  printf("Ticks per second: %ld\n", alt_ticks_per_second());
  printf("Running %d tests\n", numIterations);

  // Define input vector
  float x[N];


  // Returned result
  volatile float y;

  generateVector(x);


  volatile clock_t exec_t1, exec_t2;

  // const int numIterations = 1 << TEST_REPEAT;

  exec_t1 = times(NULL);

  int y1 = 0;
  // The code that you want to time goes here
  // for (int i = 0; i < (1 << TEST_REPEAT); i++) y = sumVector(x, N);
  for (int i = 0; i < numIterations; i++) {
    // if ((y = sumVector(x, N)) > 0) y1++;
    y = theFunction(x, N);
  }

  // till here
  exec_t2 = times(NULL);

  volatile int elapsedTicks = (int)(exec_t2 - exec_t1);
  printf("ElpasedTicks: %d\n", elapsedTicks);
  printf("RESULT: %f, %x\n", y, *(int*)(&y));
  printf("Num Iterations: %d\n", y1);
  // printf("Total ticks %d for %d iters\n", elapsedTicks , numIterations);
  // printf("Time Taken: %f\n",(float) elapsedTicks/numIterations);


  return 0;
}

