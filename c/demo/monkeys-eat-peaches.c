#include <stdio.h>

/* 猴子吃桃问题：
    猴子第一天摘下若干个桃子，当即吃了一半，不过瘾，又多吃了一个；第二天，吃剩下的桃子的一半，
    还不过瘾，又多吃了一个；以后每天都吃前一天剩下的一半多一个，到第十天，只剩下一个桃子。
    求第一天猴子摘的桃子个数。
*/

/* 采用循环实现：
    采取逆向思维的方法，从后往前推断，可得到递推公式。
    令：X(10) = 1，根据题意容易得出
        X(9) = 2 * (X(10) + 1)
        X(8) = 2 * (X(9) + 1)
        …
        X(n) = 2 * (X(n + 1) + 1)
*/

#include <stdio.h>

int main(void) {
    int day, x1, x2 = 1;  // 第10天 1 个桃子
    
    for (day = 10; day >= 1; day--) {
        printf("第%d天的桃子数为：%d\n", day, x2);
        x1 = 2 * (x2 + 1);
        x2 = x1;
    }
}

/* 采用递归实现：
    根据题意，可得到递归式及递归结束条件。
    X(n) = 2 * (X(n + 1) + 1)  (x < 10)
    X(10) = 1                  (x = 1)
*/

#include <stdio.h> 

int func(int n) {  // 返回第 n 天时的桃子数 
    if (n == 10)
        return 1;
    else
        return 2 * (func(n + 1) + 1);
}

int main(void) {
    int i;
    
    for (i = 1; i <= 10; i++)
        printf("第%d天的桃子数：%d\n", i, func(i));

    return 0;
}
