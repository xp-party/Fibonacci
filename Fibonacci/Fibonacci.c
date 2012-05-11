//
//  Fibonacci.c
//  Fibonacci
//
//  Created by Виталий on 11.05.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include "Fibonacci.h"

static int* cache = 0;

int fib(int index) {
    if (cache == 0) {
        cache = calloc(MAX_FIB_COUNT, sizeof(int));
    }

    if (index == 0) {
        return 0;
    }
    if (index <= 2) {
        return 1;
    }


    if (cache[index] != 0) {
        return cache[index];
    }

    int firstFib = cache[index - 1];

    if (firstFib == 0) {
        firstFib = fib(index - 1);
    }

    int secondFib = cache[index - 2];

    if (secondFib == 0) {
        secondFib = fib(index - 2);
    }

    cache[index] = firstFib + secondFib;

    return cache[index];
}
