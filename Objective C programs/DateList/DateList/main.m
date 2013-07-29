//
//  main.m
//  DateList
//
//  Created by G.D. Sanders on 8/5/12.
//  Copyright (c) 2012 G.D. Sanders. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Create three NSDate objects
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        //Create an array containing all three (nil terminates the list)
        NSMutableArray *dateList = [NSMutableArray array];
        
        //Add the dates to the array
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        
        //Put yesterday at the beginning of the list
        [dateList insertObject:yesterday atIndex:0];
        
        for (NSDate *d in dateList) {
            NSLog(@"Here is the date: %@", d);
        }
        
        //Remove yesterday
        [dateList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@",  [dateList objectAtIndex:0]);
        
        
    }
        return 0;
}
