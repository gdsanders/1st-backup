//
//  StockHolding.m
//  Stocks
//
//  Created by G.D. Sanders on 8/7/12.
//  Copyright (c) 2012 G.D. Sanders. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize purchaseSharePrice, currentSharePrice, numberOfShares;

- (float)costInDollars
{
    return [self numberOfShares] * [self purchaseSharePrice];
}

- (float)valueInDollars
{
    return [self currentSharePrice] * [self numberOfShares];
}

@end
