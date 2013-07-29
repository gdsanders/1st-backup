//
//  main.c
//  Turkey
//
//  Created by G.D. Sanders on 7/14/12.
//  Copyright (c) 2012 DigitalEquity, Inc. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    // Declare the variable called 'weight' of type float
    float x = 20.9;
    float y = 41.6;
    
    
   
    double totalValue;
    
    //Calculate the cooking time and store it in a variable
    //In this case, '*' means 'multiplied by'
    totalValue = x + y;
    
    //Log that to the user
    printf("The total is %f", totalValue);
    
    //End this function and indicate success
    return 0;
}

