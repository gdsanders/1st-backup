//
//  main.m
//  ImageFetch
//
//  Created by G.D. Sanders on 5/13/15.
//  Copyright (c) 2015 DigitalEquity, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        NSURL *url = [NSURL URLWithString:@"https://developer.apple.com/library/ios/referencelibrary/GettingStarted/RoadMapiOS/Art/protocol_2x.png"];
                     
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
                     NSError *error = nil;
                     NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:NULL
                                                                      error:&error];
        if (!data) {
            NSLog(@"fetch failed: %@", [error localizedDescription]);
            return 1;
        }
        
        NSLog(@"This file is %lu bytes", [data length]);
        
        BOOL written = [data writeToFile:@"/Users/gdsanders/Documents/projects/1st-backup/Objective C programs/ImageFetch/2x.png" options:0 error:&error];
        
        if (!written) {
            NSLog(@"write failed: %@", [error localizedDescription]);
            return 1;
        }
                     
        NSLog(@"Success!");
        
        NSData *readData = [NSData dataWithContentsOfFile:@"/Users/gdsanders/Documents/projects/1st-backup/Objective C programs/ImageFetch/delogo.jpg"];
        NSLog(@"The file read from the disk has %lu bytes", [readData length]);
    }
    return 0;
}
