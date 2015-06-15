//
//  Asset.m
//  Asset
//
//  Created by G.D. Sanders on 5/19/15.
//  Copyright (c) 2015 DigitalEquity, Inc. All rights reserved.
//

#import "Asset.h"

@implementation Asset

@synthesize label, resaleValue;

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: $%d >",
            [self label], [self resaleValue]];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
