//
//  Asset.m
//  BMITime
//
//  Created by G.D. Sanders on 8/11/12.
//  Copyright (c) 2012 G.D. Sanders. All rights reserved.
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
