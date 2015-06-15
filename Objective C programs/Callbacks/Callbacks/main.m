//
//  main.m
//  Callbacks
//
//  Created by G.D. Sanders on 5/19/15.
//  Copyright (c) 2015 DigitalEquity, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Logger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Logger *logger = [[Logger alloc]init];
        
        NSURL *url = [NSURL URLWithString:@"https://wordpress.org/plugins/about/readme.txt"];
        
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        
        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:request
                                                                              delegate:logger
                                                                      startImmediately:YES];
        
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                                                   target:logger
                                                                    selector:@selector(sayOuch:)
                                                                    userInfo:nil
                                                                    repeats:YES];
       
        [[NSRunLoop currentRunLoop] run];
        
    }
    return 0;
}
