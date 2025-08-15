/*
Khadichabonu [Khadi] Valieva (w10118633)
Dr. Sengupta
CSC 408
23 September 2024
*/
/////////////////////////////////////// HOMEWORK ///////////////////////////////////////

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>

/////////////////////////////////////// Problem 1  ///////////////////////////////////////
void printBinary(int n) {
    for (int i = sizeof(int) * CHAR_BIT - 1; i >= 0; i--) {
        printf("%d", (n >> i) & 1);
    }
    printf("\n");
}

void problem1() {
    int x = 1000;
    int negativeX = -1000;

    printf("\033[32mBit pattern of %d: \033[0m", x);
    printBinary(x);
    printf("\033[32mBit pattern of %d: \033[0m", negativeX);
    printBinary(negativeX);

    float f = *((float*)&x);
    printf("\033[32mThe float representation of int %d is: %f\033[0m\n", x, f);
    printf("\033[32mExplanation: The integer %d is reinterpreted as a float, resulting in a different bit pattern and value.\033[0m\n", x);
}

/////////////////////////////////////// Problem 2 ///////////////////////////////////////
void checkEO(int num) {
    if (num & 1) {
        printf("\033[32m%d is odd.\033[0m\n", num);
    } else {
        printf("\033[32m%d is even.\033[0m\n", num);
    }
}

void problem2() {
    int evenNum = 18;
    int oddNum = 23;

    checkEO(evenNum);
    checkEO(oddNum);
}

/////////////////////////////////////// Problem 3 ///////////////////////////////////////
void decToBi(int n) {
    if (n > 1) {
        decToBi(n >> 1);
    }
    printf("%d", n & 1);
}

int countOnes(int n) {
    if (n == 0) {
        return 0;
    }
    return (n & 1) + countOnes(n >> 1);
}

void problem3() {
    int num;
    printf("Enter a decimal number: ");
    scanf("%d", &num);
    printf("\033[32mBinary representation of %d: \033[0m", num);
    decToBi(num);
    printf("\n\033[32mNumber of ones in binary representation: %d\033[0m\n", countOnes(num));
}

/////////////////////////////////////// Problem 4 ///////////////////////////////////////
struct GeoObject {
    enum {CIR = 0, REC, TRG} gCode;
    union {
        struct {double x, y, r; } c;
        struct {double x, y, w, h; } r;
        struct {double x, y, b, h; } t;
    };
};

void drawCir(struct GeoObject obj) {
    printf("\033[32mDrawing a circle at (%.2f, %.2f) with radius %.2f\033[0m\n", obj.c.x, obj.c.y, obj.c.r);
}

void drawRec(struct GeoObject obj) {
    printf("\033[32mDrawing a rectangle at (%.2f, %.2f) with width %.2f and height %.2f\033[0m\n", obj.r.x, obj.r.y, obj.r.w, obj.r.h);
}

void drawTrg(struct GeoObject obj) {
    printf("\033[32mDrawing a triangle at (%.2f, %.2f) with base %.2f and height %.2f\033[0m\n", obj.t.x, obj.t.y, obj.t.b, obj.t.h);
}

void drawShape(struct GeoObject obj) {
    void (*drawFunc[])(struct GeoObject) = {drawCir, drawRec, drawTrg};
    drawFunc[obj.gCode](obj);
}

void problem4() {
    struct GeoObject circle = {CIR, .c = {0.0, 0.0, 5.0}};
    struct GeoObject rectangle = {REC, .r = {0.0, 0.0, 10.0, 5.0}};
    struct GeoObject triangle = {TRG, .t = {0.0, 0.0, 6.0, 4.0}};

    drawShape(circle);
    drawShape(rectangle);
    drawShape(triangle);
}

/////////////////////////////////////// Problem 5 ///////////////////////////////////////
void showEndianess(int num) {
    unsigned char *bytePtr = (unsigned char*)&num;
    printf("\033[32mLittle-endian format: \033[0m");
    for (int i = 0; i < sizeof(int); i++) {
        printf("%02x ", bytePtr[i]);
    }
    printf("\n");

    printf("\033[32mBig-endian format: \033[0m");
    for (int i = sizeof(int) - 1; i >= 0; i--) {
        printf("%02x ", bytePtr[i]);
    }
    printf("\n");

    int misinterpretedValue = 0;
    for (int i = 0; i < sizeof(int); i++) {
        misinterpretedValue = (misinterpretedValue << 8) | bytePtr[i];
    }
    printf("\033[32mMisinterpreted value: %d\033[0m\n", misinterpretedValue);
}

void problem5() {
    int num = 12345;
    printf("\033[32mOriginal value: %d\033[0m\n", num);
    showEndianess(num);
}

/////////////////////////////////////// Main ///////////////////////////////////////
int main() {
    int choice;
    do {
        printf("\n////////////////////////////////////////////////////////////////////////////////////\n");
        printf("\nSelect an option:\n");
        printf("1. Print bit patterns of 1000 and -1000\n");
        printf("2. Check even or odd for a number\n");
        printf("3. Convert decimal to binary and count ones\n");
        printf("4. Draw geometric shapes\n");
        printf("5. Show big-endian and little-endian representations\n");
        printf("6. Exit\n");
        printf("Enter your choice: ");
        scanf("%d", &choice);
        
        switch(choice) {
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
                problem4();
                break;
            case 5:
                problem5();
                break;
            case 6:
                printf("\033[31mExiting...\033[0m\n\n");
                break;
            default:
                printf("\033[31mInvalid choice! Please try again.\033[0m\n");
                break;
        }
    } while(choice != 6);

    return 0;
}
