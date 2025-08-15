#include <stdio.h>
#include <math.h>

double calc_sum_serial(int n) {
    double sum = 0.0;
    int i;

    for (i = 0; i <= n; i++) {
        sum += pow(-1, i) / (2 * i + 1);
    }

    return 4 * sum;
}

int main() {
    int n;
    printf("Enter n: ");
    scanf("%d", &n);

    double serial_sum = calc_sum_serial(n);

    printf("Serial Sum: %f\n", serial_sum);

    return 0;
}

