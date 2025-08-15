#include <stdio.h>
#include <math.h>

struct point {
    int x;
    int y;
};

double distanceFromOrigin(struct point p) {
    return sqrt(p.x * p.x + p.y * p.y);
}

void bubbleSortPoints(struct point arr[], int n) {
    int i, j;
    struct point temp;
    
    for (i = 0; i < n-1; i++) {
        for (j = 0; j < n-i-1; j++) {
            if (distanceFromOrigin(arr[j]) > distanceFromOrigin(arr[j+1])) {
                temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }
        }
    }
}

int main() {
    struct point p[6] = {{1,2}, {4,4}, {5,6}, {3,3}, {1,4}, {5,3}};
    int n = 6;
    
    printf("Original array of points:\n");
    for(int i = 0; i < n; i++) {
        printf("Point(%d,%d) - Distance: %.2f\n", 
               p[i].x, p[i].y, distanceFromOrigin(p[i]));
    }
    bubbleSortPoints(p, n);
    printf("\nSorted array of points (by distance from origin):\n");
    for(int i = 0; i < n; i++) {
        printf("Point(%d,%d) - Distance: %.2f\n", 
               p[i].x, p[i].y, distanceFromOrigin(p[i]));
    }
    return 0;
}