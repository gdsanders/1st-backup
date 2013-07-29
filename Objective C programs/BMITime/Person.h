//
//  Person.h
//  BMITime
//
//  Created by G.D. Sanders on 8/6/12.
//  Copyright (c) 2012 G.D. Sanders. All rights reserved.
//

#import <Foundation/Foundation.h>

//The class Person inherits all the instance variables
//and methods  defined by the class NSObject

@interface Person : NSObject
{
    //It has two instance variables
    float heightInMeters;
    int weightInKilos;
}

//You will be able to set those instance variables using these methods
@property float heightInMeters;
@property int weightInKilos;

//This method calculates the Body Mass Index
- (float)bodyMassIndex;
    
@end
