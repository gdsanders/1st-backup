//
//  Logger.h
//  Callbacks
//
//  Created by G.D. Sanders on 5/19/15.
//  Copyright (c) 2015 DigitalEquity, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject {
    NSMutableData *incomingData;
}
- (void)sayOuch:(NSTimer *)t;

@end
