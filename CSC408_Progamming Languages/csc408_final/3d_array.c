// khadi valieva
// csc408
// final exam
// problem 4
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char*** create_3d_array(int x, int y, int z);
void input_3d_array(char*** arr, int x, int y, int z);
void output_3d_array(char*** arr, int x, int y, int z);
char*** copy_3d_array(char*** source, int x, int y, int z);
void free_3d_array(char*** arr, int x, int y);

int main() {
    int x = 4, y = 3, z = 4;
    char*** array = create_3d_array(x, y, z);
    printf("Enter values for original array:\n");
    input_3d_array(array, x, y, z);
    char*** copy = copy_3d_array(array, x, y, z);
    printf("\nOriginal array:\n");
    output_3d_array(array, x, y, z);
    printf("\nCopied array:\n");
    output_3d_array(copy, x, y, z);
    free_3d_array(array, x, y);
    free_3d_array(copy, x, y);
    return 0;
}

char*** create_3d_array(int x, int y, int z) {
    char*** arr = (char***)malloc(x * sizeof(char**));
    if (arr == NULL) {
        printf("Memory allocation failed!\n");
        exit(1);
    }
    
    for (int i = 0; i < x; i++) {
        arr[i] = (char**)malloc(y * sizeof(char*));
        if (arr[i] == NULL) {
            printf("Memory allocation failed!\n");
            exit(1);
        }
        
        for (int j = 0; j < y; j++) {
            arr[i][j] = (char*)malloc(z * sizeof(char));
            if (arr[i][j] == NULL) {
                printf("Memory allocation failed!\n");
                exit(1);
            }
        }
    }
    
    return arr;
}

void input_3d_array(char*** arr, int x, int y, int z) {
    for (int i = 0; i < x; i++) {
        for (int j = 0; j < y; j++) {
            for (int k = 0; k < z; k++) {
                printf("Enter value for [%d][%d][%d]: ", i, j, k);
                scanf(" %c", &arr[i][j][k]);
            }
        }
    }
}

void output_3d_array(char*** arr, int x, int y, int z) {
    for (int i = 0; i < x; i++) {
        printf("Layer %d:\n", i);
        for (int j = 0; j < y; j++) {
            for (int k = 0; k < z; k++) {
                printf("%c ", arr[i][j][k]);
            }
            printf("\n");
        }
        printf("\n");
    }
}

char*** copy_3d_array(char*** source, int x, int y, int z) {
    char*** dest = create_3d_array(x, y, z);
    
    for (int i = 0; i < x; i++) {
        for (int j = 0; j < y; j++) {
            memcpy(dest[i][j], source[i][j], z * sizeof(char));
        }
    }
    
    return dest;
}

void free_3d_array(char*** arr, int x, int y) {
    for (int i = 0; i < x; i++) {
        for (int j = 0; j < y; j++) {
            free(arr[i][j]);
        }
        free(arr[i]);
    }
    free(arr);
} 