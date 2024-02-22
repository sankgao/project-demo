#include <stdio.h>

int main(void) {
    int a = 21;
    int b = 10;
    int c;

    /* 算术运算符 */
    printf("a 的值是 %d，b 的值是 %d\n", a, b);
    c = a + b;
    printf("c = a + b，c 的值是 %d\n", c);

    c = a - b;
    printf("c = a - b，c 的值是 %d\n", c);

    c = a * b;
    printf("c = a * b，c 的值是 %d\n", c);

    c = a / b;
    printf("c = a / b，c 的值是 %d\n", c);

    c = a % b;
    printf("c = a %% b，c 的值是 %d\n", c);

    c = a++;  /* 赋值后再加 1，c 为 21，a 为 22 */
    printf("c = a++，c 的值是 %d，a 的值是 %d\n", c, a);

    c = a--;  /* 赋值后再减 1，c 为 22，a 为 21 */
    printf("c = a--，c 的值是 %d，a 的值是 %d\n", c, a);

    c = ++b;  /* 加 1 后再赋值，c 为 11，b 为 11 */
    printf("c = ++b，c 的值是 %d，b 的值是 %d\n", c, b);

    c = --b;  /* 减 1 后再赋值，c 为 10，b 为 10 */
    printf("c = --b，c 的值是 %d，b 的值是 %d\n", c, b);

    /* 关系运算符 */
    if (a == b) {
        printf("a == b，a 等于 b\n");
    } else {
        printf("a == b，a 不等于 b\n");
    }

    if (a < b) {
        printf("a < b，a 小于 b\n");
    } else {
        printf("a < b，a 大于 b\n");
    }

    if (b <= a) {
        printf("b <= a，b 小于或等于 a\n");
    }

    if (a >= b) {
        printf("a >= b，a 大于或等于 b\n");
    }

    /* 逻辑运算符 */
    if (a && b) {
        printf("a && b，条件为真，a 和 b 都非 0\n");
    } else {
        printf("a && b，条件为假，a 和 b 有一个为 0 或都为 0\n");
    }

    if (a || b) {
        printf("a || b，条件为真，a 和 b 有一个非 0 或都非 0\n");
    } else {
        printf("a || b，条件为假，a 和 b 都为 0\n");
    }

    if (!(a)) {
        printf("!(a)，条件为真，a 为 0 但值取反，所以值为真\n");
    } else {
        printf("!(a)，条件为假，a 为非 0 但值取反，所以值为假\n");
    }

    /* 位运算符 */
    unsigned int x = 60;  /* 60 = 0011 1100 */
    unsigned int y = 13;  /* 13 = 0000 1101 */
    c = 0;           

    printf("x 的值是 %d，y 的值是 %d\n", x, y);
    c = x & y;  /* 12 = 0000 1100 */
    printf("c = a & b，c 的值是 %d\n", c );

    c = x | y;  /* 61 = 0011 1101 */
    printf("c = a | b，c 的值是 %d\n", c );

    c = x ^ y;  /* 49 = 0011 0001 */
    printf("c = a ^ b，c 的值是 %d\n", c );

    c = ~x;  /*-61 = 1100 0011 */
    printf("c = ~a，c 的值是 %d\n", c );

    c = x << 2;  /* 240 = 1111 0000 */
    printf("c = a << 2，c 的值是 %d\n", c );

    c = x >> 2;  /* 15 = 0000 1111 */
    printf("c = a >> 2，c 的值是 %d\n", c );

    /* 赋值运算符 */
    a = 21;

    printf("a 的值是 %d\n", a);
    c = a;
    printf("c = a，= 运算符实例，c 的值是 %d\n", c);

    c += a;
    printf("c += a，+= 运算符实例，c 的值是 %d\n", c);

    c -= a;
    printf("c -= a，-= 运算符实例，c 的值是 %d\n", c);

    c *= a;
    printf("c *= a，*= 运算符实例，c 的值是 %d\n", c);

    c /= a;
    printf("c /= a，/= 运算符实例，c 的值是 %d\n", c);

    c = 200;
    printf("c 的值是 %d\n", c);
    c %= a;
    printf("c %%= a，%%= 运算符实例，c 的值是 %d\n", c);

    c <<= 2;
    printf("c <<= 2，<<= 运算符实例，c 的值是 %d\n", c);

    c >>= 2;
    printf("c >>= 2，>>= 运算符实例，c 的值是 %d\n", c);

    c &= 2;
    printf("c &= 2，&= 运算符实例，c 的值是 %d\n", c);

    c ^= 2;
    printf("c ^= 2，^= 运算符实例，c 的值是 %d\n", c);

    c |= 2;
    printf("c |= 2，|= 运算符实例，c 的值是 %d\n", c);

    /* 杂项运算符 */
}
