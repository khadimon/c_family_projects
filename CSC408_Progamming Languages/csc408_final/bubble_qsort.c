#include <stdio.h>
#include <string.h>
#include <stdlib.h>

// Comparison function for qsort
int compare(const void* a, const void* b) {
    return strcmp(*(const char**)a, *(const char**)b);
}

// Bubble sort
void bubbleSort(char *arr[], int n) {
    int i, j;
    char *temp;
    
    for (i = 0; i < n-1; i++) {
        for (j = 0; j < n-i-1; j++) {
            if (strcmp(arr[j], arr[j+1]) > 0) {
                temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }
        }
    }
}

int main() {
    char *names[5] = {"ABC", "QAC", "AQC", "JQB", "AJC"};
    int n = 5;
    
    char *names_bubble[5];
    for(int i = 0; i < 5; i++) {
        names_bubble[i] = strdup(names[i]);
    }
    printf("Sorting using Bubble Sort:\n");
    printf("Before sorting: ");
    for(int i = 0; i < n; i++) {
        printf("%s ", names_bubble[i]);
    }
    bubbleSort(names_bubble, n);
    printf("\nAfter bubble sort: ");
    for(int i = 0; i < n; i++) {
        printf("%s ", names_bubble[i]);
    }
    
    // Using qsort
    printf("\n\nSorting using Qsort:\n");
    printf("Before sorting: ");
    for(int i = 0; i < n; i++) {
        printf("%s ", names[i]);
    }
    qsort(names, n, sizeof(char*), compare);
    
    printf("\nAfter qsort: ");
    for(int i = 0; i < n; i++) {
        printf("%s ", names[i]);
    }
    
    for(int i = 0; i < 5; i++) {
        free(names_bubble[i]);
    }
    return 0;
}