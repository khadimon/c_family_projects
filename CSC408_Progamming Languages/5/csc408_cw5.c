/*
Khadichabonu Valieva (w10118633)
CSC 408
Dr. Sengupta
16 September 2024
*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>


struct fraction {
    int num;
    int deno;
};

void swapG(void* a, void* b, size_t size) {
    char temp[size];
    memcpy(temp, a, size);
    memcpy(a, b, size);
    memcpy(b, temp, size);
};

void readFraction(struct fraction* frac){
    printf("Enter numerator: ");
    scanf("%d", &frac->num);
    printf("Enter denominator: ");
    scanf("%d", &frac->deno);
};

void printFraction(struct fraction frac){
    printf("Fraction: %d/%d\n", frac.num, frac.deno);
};

void problem1(){
    struct fraction frac1, frac2;

    printf("Fraction 1 \n");
    readFraction(&frac1);

    printf("Fraction 2 \n");
    readFraction(&frac2);

    printf("Before swap: \n");
    printFraction(frac1);
    printFraction(frac2);

    swapG(&frac1, &frac2, sizeof(struct fraction));

    printf("After swap: \n");
    printFraction(frac1);
    printFraction(frac2);
}


void problem2() {
    int x1 = 1000;
    short y1 = 200;

    printf("Before swap: x1 = %d, y1 = %d\n", x1, y1); 
    swapG(&x1, &y1, sizeof(short));

    printf("After swap: x1 = %d, y1 = %d\n", x1, y1);
}

void problem3(){
    char* s1 = strdup("John");
    char* s2 = strdup("Jessica");
    printf("Before swap: s1 = %s, s2 = %s\n", s1, s2);
    swapG(&s1, &s2, sizeof(char*));
    printf("After swap: s1 = %s1, s2 = %s\n", s1, s2);
    free(s1);
    free(s2);

}
int main(){
    int choice;

    do{
        printf("\nSelect the problem for Classwork 5 to run (1, 2, or 3): \n");
        printf("1. Swap two fraction objects.\n");
        printf("2. Swap int nad short to observe endianness.\n");
        printf("3. Swap two C-strings.\n");
        printf("4. Exit.\n");
        printf("Enter you choice: ");
        scanf("%d", &choice);
        
        switch(choice){
            case 1:
                problem1();
                break;
            case 2:
                problem2();
                break;
            case 3: 
                problem3();
                break;
            case 4:
                printf("Exiting...\n");
                break;
            default:
                printf("Invalid choice! Please try entering 1, 2, or 3.\n");
                break;
                }
        }while(choice!=4);
    
    return 0;
}