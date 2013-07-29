//
//  main.m
//  SecondsAlive
//
//  Created by G.D. Sanders on 8/3/12.
//  Copyright (c) 2012 G.D. Sanders. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:2005];
        [comps setMonth:10];
        [comps setDay:19];
        [comps setHour:23];
        [comps setMinute:45];
        [comps setSecond:00];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth = [g dateFromComponents:comps]; //My birthday
        NSDate *now = [NSDate date]; //Todays Date
        
        double secondsBetween = [now timeIntervalSinceDate:dateOfBirth];
        NSLog(@"I've been alive %f seconds", secondsBetween);

        
    }
    return 0;
}

