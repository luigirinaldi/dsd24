#include <stdlib.h>
#include <sys/alt_stdio.h>
#include <sys/alt_alarm.h>
#include <sys/times.h>
#include <alt_types.h>
#include <system.h>
#include <stdio.h>
#include <unistd.h>
#include <math.h>

#define DividePow2(val, pow) (*(int*)&val != 0 ? ((*(int*)&val & 0x807fffff) | ((((*(int*)&val >> 23) & 0xff) - pow) << 23) ) : 0)

// Test case 1
// #define step 5
// #define N 52
// #define NUM_CASES 100

// Test case 2
#define step 1/8.0
#define N 2041
#define NUM_CASES 10


// Test case 3
// #define step 1/1024.0
// #define N 261121
// #define NUM_CASES 1


// Test case 4
// #define N 2323
// #define RANDSEED 334
// #define MAXVAL 255
// #define NUM_CASES 10


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


// constant coefficient division
const float coeff1 = 0.5, coeff2 = 1 / 128.0f, coeff3 = 128.0f;
// taylor series terms 
const float c_term1 = 1/2.0, c_term2 = 1 / 24.0f, c_term3 = 1/40320.0;

float theFunction(float x[0], int M) {
  float sum = 0;
  int i = 0;
  for (; i < M; i++) 
  {
    const float diff =  x[i] - 128.0f;

    // const __uint32_t float_int = *(int*)&diff;
    // const __uint32_t new_exp = ((*(int*)&diff >> 23) & 0xff) - 7;
    const __uint32_t new_float = DividePow2(diff, 7);
    const float cos_term = *(float*)&new_float;
  //   float actual_cos = diff * coeff2;

  // if (actual_cos != cos_term) {

  //     printf("original n: %x %f\n", float_int, diff );
  //     printf("custom div: %x %f exp: %u %u \n", new_float, cos_term, new_exp, (float_int >> 23) & 0xff);
  //     printf("real div:   %x %f exp: %u \n", *(int*)&actual_cos, actual_cos,  ((*(int*)&actual_cos) >> 23) & 0xff);
  // }
    // const float cos_term = diff * coeff2;
    const float cos_2 = cos_term * cos_term;
    const float cos_4 = cos_2 * cos_2;
    // const float cos_6 = cos_4 * cos_2;

     __uint32_t term1_int =  DividePow2(cos_2, 1);
     term1_int |= 0x80000000;
    const float term1 =  *(float*)&term1_int;

    const float cosine = 1 + term1  + cos_4 * c_term2;
    
    sum += (coeff1 * x[i] + (x[i] * x[i]) * cosine);
  }

  return sum;
}

int main(int argc, char* argv[])
{
  const int numIterations = NUM_CASES;
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

  for (int i = 0; i < numIterations; i++) {
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

