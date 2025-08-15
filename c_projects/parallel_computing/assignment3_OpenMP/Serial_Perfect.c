/*
 //
 // Author: Khadichabonu Valieva (w10118633)
 // Date: Mon 08 Apr 2024
 //
 // Compile and run:
 // gcc Serial_Perfect.c -o sp1 -lm && ./sp1
 //
*/

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "timer.h"

void Find_Perfect(int max);
int is_prime(int n);

int main(){
    int max_p = 32;
    double start, finish, elapsed;

    GET_TIME(start);
    Find_Perfect(max_p);
    GET_TIME(finish);

    elapsed = finish - start;
    printf("The code to be timed took %.02f seconds\n", elapsed);

    return 0;
}

int is_prime(int n){
    int i;
    if(n < 2) return 0;
    for(i = 2; i <= n/2; i++) if (n % i == 0) return 0;
    return 1;
}

void Find_Perfect(int max){
    int i;
    double Euc;

    for(i = 1; i < max; i++){
        Euc = pow(2, i) - 1;
    
        if (is_prime(Euc) == 1){
            Euc = Euc * pow(2,i-1);
            printf("%.00f\n", Euc);
        }
    }
}
