"""
Khadi Valieva (w10118633)
Dr. Sengupta
CSC 408
27 September 2024
"""


/* Classwork 7 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
    void** items;
    int top;
    int capacity;
    size_t itemSize;
    void (*freeFunc)(void*);
} stack;

void freeString(void *str) {
    free(*(char**)str);
}

#define INITIAL_CAPACITY 10

// Stack constructor
void stackConstruct(stack* s, size_t itemSize, void (*freeFunc)(void*)) {
    s->items = malloc(sizeof(void*) * INITIAL_CAPACITY);
    s->top = -1;
    s->capacity = INITIAL_CAPACITY;
    s->itemSize = itemSize;
    s->freeFunc = freeFunc;
}

// Push function to add item to stack
void push(stack* s, void* item) {
    if (s->top + 1 >= s->capacity) {
        s->capacity *= 2;
        s->items = realloc(s->items, sizeof(void*) * s->capacity);
    }
    s->items[++s->top] = item;
}

// Print the stack in reverse order
void printStackReverse(stack* s) {
    for (int i = s->top; i >= 0; i--) {
        printf("%s\n", (char*)s->items[i]); 
    }
}

int main() {
    char* names[] = {"Yagnee", "Marquez", "Loi", "Khadi"};
    stack s;

    stackConstruct(&s, sizeof(char*), freeString);

    for (int i = 0; i < 4; i++) {
        char* copy = strdup(names[i]);  

        push(&s, copy);
    }

    // Print the stack in reverse order (LIFO)
    printStackReverse(&s);

    return 0;
}

