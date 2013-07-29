//
//  main.c
//  Triangle
//
//  Created by G.D. Sanders on 7/22/12.
//  Copyright (c) 2012 DigitalEquity, Inc. All rights reserved.
//

#include <stdio.h>

float remainingAngle (float a, float b)
{
    float thirdangle = 180 - (a + b);
    printf("180 - %f + %f is %f\n", a, b, thirdangle);
    return thirdangle;
}

int main(int argc, const char * argv[])
{

    float angleA = 30;
    float angleB = 60;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %.2f\n", angleC);
    
    return 0;
}

