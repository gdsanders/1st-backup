//
//  main.m
//  Groceries
//
//  Created by G.D. Sanders on 8/5/12.
//  Copyright (c) 2012 G.D. Sanders. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *groceries = [NSMutableArray array];
        [groceries addObject:@"lettuce" ];
        [groceries addObject:@"tomatoes"];
        [groceries addObject:@"tri-tip roast"];
        [groceries addObject:@"garlic"];
        [groceries addObject:@"red wine"];
        
        for (NSMutableArray *food in groceries) {
            NSLog(@" Here is the grocery list: %@", food);
        }
    }
    return 0;
}

