//
//  main.c
//  Chapter4Challenge
//
//  Created by G.D. Sanders on 7/15/12.
//  Copyright (c) 2012 DigitalEquity, Inc. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    // insert code here...
    int i = 20;
    int j = 25;
    
    int k = ( i > j ) ? 10 : 5;
    
    if ( 5 < j - k) { // the first expression
        printf("The first expression is true.");
        
    }  else if ( j > i ) { // the second expression
            printf("The second expression is true.");
    } else {
        printf("Neither expression is true.");
    }
        
    return 0;
}

