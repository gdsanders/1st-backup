//
//  Person.m
//  BMITime
//
//  Created by G.D. Sanders on 8/6/12.
//  Copyright (c) 2012 G.D. Sanders. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize heightInMeters, weightInKilos;

- (float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}
@end
