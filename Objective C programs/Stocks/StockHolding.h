//
//  StockHolding.h
//  Stocks
//
//  Created by G.D. Sanders on 8/7/12.
//  Copyright (c) 2012 G.D. Sanders. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject

//The class has three instances

{
    float purchaseSharePrice;
    float currentSharePrice;
    int numberOfShares;
}

//Accessor methods for instances declared above

@property float purchaseSharePrice;
@property float currentSharePrice;
@property int numberOfShares;

//Two instance methods for calculating Stocks

- (float)costInDollars;
- (float)valueInDollars;

@end
