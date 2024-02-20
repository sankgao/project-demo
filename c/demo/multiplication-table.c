#include <stdio.h>

/* 九九乘法表 */

int main(void) {
    int i, j, sum = 0;

    for (i = 1; i < 10; i++) {
        for (j = 1; j <= i; j++) {
            sum = i * j;
            printf("%d*%d=%-3d", i, j, sum);
        }

        printf("\n");
    }

    return 0;
}
