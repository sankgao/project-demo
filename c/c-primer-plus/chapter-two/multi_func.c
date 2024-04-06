#include <stdio.h>

void jolly(void);
void deny(void);

int main(void) {
    jolly();
    deny();

    return 0;
}

void jolly(void) {
    printf("he's a jolly good fellow!\n");
    printf("he's a jolly good fellow!\n");
    printf("he's a jolly good fellow!\n");
}

void deny(void) {
    printf("Which nobody can deny!");
}
