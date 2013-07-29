//
//  main.m
//  DaylightSavings
//
//  Created by G.D. Sanders on 8/5/12.
//  Copyright (c) 2012 G.D. Sanders. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        NSTimeZone *now = [[NSTimeZone alloc] init];
        now = [NSTimeZone systemTimeZone];
        
        NSLog(@"The time zone here is %@", now);
        
        if ([now isDaylightSavingTime] == YES)
        {
            NSLog(@"It is daylight saving time.");
        }
        else
        {
            NSLog(@"Sorry, still winter...");
        }
        
    }
    return 0;
}

