/*
 //
 // Author: Khadichabonu Valieva (w10118633)
 // Date: Mon 08 Apr 2024
 //
 // Compile and run:
 // gcc Parallel_Perfect.c -o sp1 -fopenmp -lm && ./sp1

 //
*/
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "timer.h"
#include <omp.h>

void Find_Perfect(int local_start, int local_end);
int is_prime(int n);

int main(){
    int max_p = 32;
    double start, finish, elapsed;
    int num_threads;

    GET_TIME(start);
    #pragma omp parallel num_threads(num_threads)
    {
        int rank = omp_get_thread_num();
        int n = omp_get_num_threads();
        int local_start = rank * (max_p/n) + 1;
        int local_end = (rank + 1) * (max_p/n);

        Find_Perfect(local_start, local_end);
    }
    GET_TIME(finish);

    elapsed = finish - start;
    printf("The code took %.02f seconds\n", elapsed);

    return 0;
}

int is_prime(int n) {
    int i;
    if (n < 2) return 0;
    for (i = 2; i <= n / 2; i++)
        if (n % i == 0) return 0;
    return 1;
}

void Find_Perfect(int local_start, int local_end) {
    int i;
    double Euc;
    for (i = local_start; i < local_end; i++) {
        Euc = pow(2, i) - 1;
        if (is_prime(Euc) == 1) {
            Euc = Euc * pow(2, i - 1);
            printf("%.00f\n", Euc);
        }
    }
}

