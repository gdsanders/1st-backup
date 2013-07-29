//
//  ForeignStockHolding.m
//  Stocks
//
//  Created by G.D. Sanders on 8/11/12.
//  Copyright (c) 2012 G.D. Sanders. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding

@synthesize conversionRate;

- (float)costInDollars
{
    float costInDollars = [self costInDollars];
    return costInDollars * .90;
}

- (float)valueInDollars
{
    float valueInDollars = [self valueInDollars];
    return valueInDollars * .90;
}
@end
