//
//  main.m
//  TimeAfterTime
//
//  Created by G.D. Sanders on 7/27/12.
//  Copyright (c) 2012 G.D. Sanders. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"The date is %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.", seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@", later);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSUInteger day = [cal ordinalityOfUnit:NSDayCalendarUnit
                                        inUnit:NSMonthCalendarUnit
                                        forDate:now];
        NSLog(@"This is the day %lu of the month", day);
        
        NSUInteger hour = [cal ordinalityOfUnit:NSHourCalendarUnit
                                         inUnit:NSYearCalendarUnit
                                        forDate:now];
        
        NSLog(@"This is the hour %lu of the year", hour);
        
    }
    return 0;
}

