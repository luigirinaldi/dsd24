// #include <stdlib.h>
// #include <sys/alt_stdio.h>
#include <sys/alt_alarm.h>
#include <sys/times.h>
// #include <alt_types.h>
#include <system.h>
#include <stdio.h>
// #include <unistd.h>
#include <math.h>

#pragma GCC target("custom-fmuls=0")
#pragma GCC target("custom-fadds=1")
#pragma GCC target("custom-fsubs=2")




#define DividePow2(val, pow) (*(int*)&val != 0 ? ((*(int*)&val & 0x807fffff) | ((((*(int*)&val >> 23) & 0xff) - pow) << 23) ) : 0)

// #define FP_MUL(A,B) __builtin_custom_fnff(ALT_CI_FP_MULT_N,(A),(B))
// #define ALT_CI_FP_MULT_N 0x0

// #define FP_ADD(A,B) __builtin_custom_fnff(ALT_CI_FP_ADD_N,(A),(B))
// #define ALT_CI_FP_ADD_N 0x1

// Test case 1
// #define step 5
// #define N 52
// #define NUM_CASES 1000

// Test case 2
// #define step 1/8.0
// #define N 2041
// #define NUM_CASES 100


// Test case 3
#define step 1/1024.0
#define N 261121
#define NUM_CASES 1


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
#define c_term1 -1/2.0f
#define c_term2 1 / 24.0f
#define c_term3 - 1 / 720.0f
#define c_term4 1 / 40320.0f
#define c_term5 - 1 / 3628800.0f

float theFunction(float x[0], int M) {
  float sum = 0;
  int i = 0;
  for (; i < M; i++) 
  {
    // const float cos_term = FP_MUL(FP_ADD(x[i], -128.0f), coeff2);
    // const float cos_2 = FP_MUL(cos_term, cos_term);
    // const float cos_4 = FP_MUL(cos_2, cos_2);
    // const float cos_6 = FP_MUL(cos_4, cos_2);
    // // const float cos_8 = FP_MUL(cos_4, cos_4);
    // // const float cos_10 = FP_MUL(cos_8, cos_2);
    // // const float cos_12 = FP_MUL(cos_6, cos_6);

    // const float cosine = 
    // //cosf(cos_term);
    // // FP_ADD(
    //   FP_ADD(
    //     // FP_ADD(FP_MUL(cos_6, c_term3),
    //     1
    //     // )
    //     ,FP_ADD(FP_MUL(cos_4, c_term2), FP_MUL(cos_2, c_term1)))
    //     // , FP_ADD(FP_MUL(cos_8, c_term4), FP_MUL(cos_10, c_term5)))
    //     ;

     float cos_term = (x[i] - 128.0f) * coeff2;
     float cos_2 = cos_term * cos_term;
     float cos_4 = cos_2 * cos_2;
     float cos_6 = cos_4 * cos_2;
    // const float cos_8 = cos_4 * cos_4;


    const float cosine = 1 + cos_2 * c_term1 + cos_4 * c_term2 + cos_6 * c_term3;
    sum += x[i] * coeff1 + x[i] * x[i] * cosine;



    // sum = FP_ADD(sum, FP_ADD(FP_MUL(coeff1,x[i]), FP_MUL(FP_MUL(x[i],x[i]),cosine)));



    // sum += (coeff1 * x[i] + x[i] * x[i] * cosf((x[i] - 128.0f) * coeff2));
  }

  return sum;
}

int main(int argc, char* argv[])
{
  const int numIterations = NUM_CASES;
  printf("Task 3!\n");
  // printf("Ticks per second: %ld\n", alt_ticks_per_second());
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

