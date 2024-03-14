#include <stdio.h>
#include "input.h"

void input_int(int *a, int *b) {
    printf("Input two numbers: ");
    scanf("%d %d", a, b);
    printf("\n");
}
