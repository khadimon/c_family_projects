/*
Khadichabonu [Khadi] Valieva (w10118633)
Dr. Sengupta
CSC 408
22 September 2024
*/


/////////////////////////////////////// CLASSWORK 6  ///////////////////////////////////////

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

///////////////////////////// Problem 1: Linear Search /////////////////////////////
int linearSearch(char** arr, int size, char* target){
    for (int i=0; i<size; i++){
        if (strcmp(arr[i], target) == 0){
            return i;
        }
    }
    return -1; // if not found
}

void problem1(){
    char* names[] = {"Mel", "Jacob", "Kyle", "Ben"};
    char* searchName = "Jacob";

    int size = sizeof(names) / sizeof(names[0]);

    char** newNames = (char**)malloc(size * sizeof(char*));
    if (newNames == NULL){
        printf("\033[31mMemory allocation failed.\033[0m\n\n");
        return;
    }

    for (int i = 0; i < size; i++){
        newNames[i] = (char*)malloc((strlen(names[i]) + 1) * sizeof(char));
        if (newNames[i] == NULL){
            printf("\033[31mMemory allocation for %d failed\033[0m\n", i);
            return;
        }
        strcpy(newNames[i], names[i]);
    }

    char* newSearchName = (char*)malloc((strlen(searchName) + 1) * sizeof(char));
    if (newSearchName == NULL){
        printf("\033[31mMemory allocation failed.\033[0m\n");
        return;
    }
    strcpy(newSearchName, searchName);

    int result = linearSearch(newNames, size, newSearchName);

    if (result != -1) {
        printf("\033[32mFound %s at index %d\033[0m\n", newSearchName, result); 
    } else {
        printf("\033[31m%s not found.\033[0m\n", newSearchName);
    }

    for (int i = 0; i < size; i++){
        free(newNames[i]);
    }
    free(newNames);
    free(newSearchName);
}

///////////////////////////// Problem 2: Bubble Sort /////////////////////////////
void swap(void* a, void* b, size_t size){
    void* temp = malloc(size);
    if (temp != NULL){
        memcpy(temp, a, size);
        memcpy(a, b, size);
        memcpy(b, temp, size);
        free(temp);
    }
}

void bubbleSort(void* arr, size_t n, size_t size, int(*cmp)(const void*, const void*)){
    for(size_t i=0; i<n-1; i++){
        for(size_t j=0; j<n-i-1; j++){
            void* a = (char*)arr + j * size;
            void* b = (char*)arr + (j+1) * size;
            if (cmp(a, b) > 0){
                swap(a, b, size);
            }
        }
    }
}

int compareFloat(const void* a, const void* b){
    float fl1 = *(float*)a;
    float fl2 = *(float*)b;
    if (fl1 > fl2) return 1;
    if (fl1 < fl2) return -1;
    return 0;
}

int compareString(const void* a, const void* b){
    char* str1 = *(char**)a;
    char* str2 = *(char**)b;
    return strcmp(str1, str2);
}

void problem2(){
    // Float array
    float arrayFloat[] = {3.5, 56.22, 11.8, 18.9, 20.11};
    size_t floatSize = sizeof(arrayFloat) / sizeof(arrayFloat[0]);

    printf("\nOriginal float array: ");
    for(size_t i = 0; i < floatSize; i++){
        printf("%.2f ", arrayFloat[i]);
    }

    bubbleSort(arrayFloat, floatSize, sizeof(float), compareFloat);

    printf("\n\033[32mSorted float array: \033[0m");
    for(size_t i = 0; i < floatSize; i++){
        printf("%.2f ", arrayFloat[i]);
    }

    // String array
    char* names[] = { "Mel", "Jacob", "Kyle", "Ben" };
    size_t nameSize = sizeof(names) / sizeof(names[0]);

    printf("\nOriginal names array: ");
    for(size_t i = 0; i < nameSize; i++){
        printf("%s ", names[i]);
    }

    bubbleSort(names, nameSize, sizeof(char*), compareString);

    printf("\n\033[32mSorted names array: \033[0m");
    for(size_t i = 0; i < nameSize; i++){
        printf("%s ", names[i]);
    }
    printf("\n");
}

///////////////////////////// Problem 3: Stack /////////////////////////////
#define MAX 100

typedef struct {
    void* items[MAX];
    int top;
    size_t itemSize;
}Stack;

void initStack(Stack* stack, size_t itemSize){
    stack->top = -1;
    stack->itemSize = itemSize;
}

int push(Stack* stack, void* item){
    if (stack->top == MAX-1){
        printf("\033[31mStack overflow!\033[0m\n");
        return -1;
    }
    stack->top++;
    stack->items[stack->top] = malloc(stack->itemSize);
    if(stack->items[stack->top] == NULL){
        printf("\033[31mMemory allocaiton failed!\033[0m\n");
        return -1;
    }
    memcpy(stack->items[stack->top], item, stack->itemSize);
    return 0;
}

void* pop(Stack* stack){
    if (stack->top==-1){
        printf("\033[31mStack underflow!\n");
        return NULL;
    }

    void* poppedItem = stack->items[stack->top];
    stack->top--;
    return poppedItem;
}

int isEmpty(Stack* stack){
    return stack->top == -1;
}

void problem3(){
    char* names[] = {"AA", "BBB", "CCCC", "DD"};
    char letters[4] = {'a', 'b', 'c', 'd'};
    int nameSize = sizeof(names) / sizeof(names[0]);
    int letterSize = sizeof(letters) / sizeof(letters[0]);

    Stack nameStack;
    initStack(&nameStack, sizeof(char*));

    Stack letterStack;
    initStack(&letterStack, sizeof(char));

    for (int i=0; i<nameSize; i++){
        push(&nameStack, &names[i]);
    }

    for(int i=0; i<letterSize; i++){
        push(&letterStack, &letters[i]);
    }

    printf("\033[32mNames in reverse order: \033[0m");
    while(!isEmpty(&nameStack)){
        char* name = *(char**)pop(&nameStack);
        printf("%s ", name);
    }

    printf("\033[32m\nLetters in reverse order: \033[0m");
    while(!isEmpty(&letterStack)){
        char letter = *(char*)pop(&letterStack);
        printf("%c ", letter);
    }
    printf("\n");
   
}

int main(){
    int choice;
    do {
        printf("\n----------------------------------------------------------------------\n");
        printf("\nSelect the problem for Classwork 6 to run (1, 2, 3 or 4 to exit): \n");
        printf("1. LinearSearch\n");
        printf("2. BubbleSort\n");
        printf("3. Stack, in reverse order\n");
        printf("4. Exit\n");
        printf("\nEnter your choice: ");
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
                printf("\033[31mExiting...\033[0m\n");
                printf("\n----------------------------------------------------------------------\n");
                break;
            default:
                printf("\033[31mInvalid choice! Please try entering 1, 2, 3 or 4.\033[0m\n");
                break;
        }
    } while(choice != 4);
    
    return 0;
}
