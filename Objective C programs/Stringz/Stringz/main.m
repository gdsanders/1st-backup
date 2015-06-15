//
//  main.m
//  Stringz
//
//  Created by G.D. Sanders on 5/12/15.
//  Copyright (c) 2015 DigitalEquity, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableString *str = [[NSMutableString alloc] init];
        for (int i=0; i < 10; i++) {
            [str appendString:@"G.D. is the Kat Daddy!\n"];
        }
        [str writeToFile:@"/Users/gdsanders/Documents/projects/1st-backup/Objective C programs/Stringz/cool.txt"
              atomically:YES
                encoding:NSUTF8StringEncoding
                   error:NULL];
        
        NSLog(@"Done writing /cool.txt");
    }
    return 0;
}
