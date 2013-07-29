//
//  main.m
//  MacName
//
//  Created by G.D. Sanders on 8/5/12.
//  Copyright (c) 2012 G.D. Sanders. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create a NSHost object for this Mac
        NSHost *thisMac = [NSHost currentHost];
        
        // Get the name of this Mac
        
        NSString *macName = [thisMac localizedName];
        
        // Print the name of this Mac
        
        NSLog(@"The name of this Mac is %@", macName);
        
        
    }
    return 0;
}

