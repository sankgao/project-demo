#include <stdio.h>

/* 国际象棋棋盘 */

int main(void) {
    int i, j;

    for (i = 0; i < 8; i++) {
        for (j = 0; j < 8; j++) {
            if ((i + j) % 2 == 0) {
                printf("%c%c", 0xa8, 0x80);
            } else {
                printf(" ");
            }
        }

        printf("\n");
    }

    return 0;
}
