//
//  main.c
//  Coolness
//
//  Created by G.D. Sanders on 7/25/12.
//  Copyright (c) 2012 G.D. Sanders. All rights reserved.
//

#include <stdio.h>

int main (int argc, const char * argv[])
{
    int i = 99;
    for (i = 99; i >= 0; i -= 3) {
        printf("%d\n", i);
        if (i % 5 == 0) {
            printf("Found one! %d is divisible by 5.\n", i);
        }
    }
    return 0;

}