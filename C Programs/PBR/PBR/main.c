//
//  main.c
//  PBR
//
//  Created by G.D. Sanders on 7/27/12.
//  Copyright (c) 2012 G.D. Sanders. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void cartesianToPolar(float x, float y, double *rPtr, double *thetaPtr)
{
    if (rPtr) {
    //Store the radius in the supplied address
    *rPtr = sqrt(x * y + y * y);
    
    }
    
    //Is thetaPtr NULL?
    if (!thetaPtr) {
        return;
    }
    
    //Calculate theta
    float theta;
    if (x == 0.0) {
        if (y == 0.0) {
            theta = 0.0; // technically considered undefined
        
        } else if (y > 0) {
            theta = M_PI_2;
        } else {
            theta = - M_PI_2;
        }
    } else {
        theta = atan(y/x);
    }
    //Store theta in the supplied address
    *thetaPtr = theta;
    
}

int main(int argc, const char * argv[])
{
    
    double pi = 3.14;
    double integerPart;
    double fractionPart;
    
    //Pass the address of integerPart as an argument
    fractionPart = modf(pi, &integerPart);
    
    //Find the value stored in the integerPart
    printf("integerPart = %.0f, fractionPart = %.2f\n", integerPart, fractionPart);
    
    double x = 3.0;
    double y = 4.0;
    double radius;
    double angle;
    
    cartesianToPolar(x, y, &angle, &radius);
    printf("(%.2f, %.2f) becomes (%.2f radians, %.2f)\n", x, y, radius, angle);

    return 0;
}

