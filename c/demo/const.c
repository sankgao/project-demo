#include <stdio.h>

/* #define 预处理器常量 */
#define LENGTH 10
#define WIDTH 5
#define NEWLINE '\n'

int main(void) {
    int area;

    area = LENGTH * WIDTH;
    printf("value of area: %d", area);
    printf("%c", NEWLINE);

    /* const 关键字常量*/
    const int x = 10;
    const int y = 5;
    const char my_char = '\n';
    int z;

    z = x * y;
    printf("value of z: %d", z);
    printf("%c", my_char);

    return 0;
}
