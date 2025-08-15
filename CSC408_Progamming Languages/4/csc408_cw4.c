/*       
<< CLASSWORK 4 >>
Khadichabonu Valieva (w10118633)
Dr. Sengupta
CSC 408
9 September 2024
*/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct book {
    char bookTitle[50];
    char bookAuthor[50];
};

void readBook(struct book* b) {
    printf("Enter the book title: ");
    fgets(b->bookTitle, 50, stdin);
    // Remove newline character from fgets
    b->bookTitle[strcspn(b->bookTitle, "\n")] = 0;
    
    printf("Enter the book author: ");
    fgets(b->bookAuthor, 50, stdin);
    // Remove newline character from fgets
    b->bookAuthor[strcspn(b->bookAuthor, "\n")] = 0;
}

void printBook(struct book* b) {
    printf("Book Title: %s\n", b->bookTitle);
    printf("Book Author: %s\n", b->bookAuthor);
}

int main() {
    // Allocate memory in the heap for the book structure
    struct book* myBook = (struct book*)malloc(sizeof(struct book));
    
    // Allocate an unrealistic size to FORCE FAILURE
    //struct book* myBook = NULL;

    if (myBook == NULL) {
        printf("Memory allocation failed.\n");
        return 1;
    }
    
    readBook(myBook);
    printBook(myBook);
    
    // Free the allocated memory
    free(myBook);
    
    return 0;
}
