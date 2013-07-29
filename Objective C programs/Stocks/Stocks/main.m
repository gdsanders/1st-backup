//
//  main.m
//  Stocks
//
//  Created by G.D. Sanders on 8/7/12.
//  Copyright (c) 2012 G.D. Sanders. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"
#import "ForeignStockHolding.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
       // Create three instances of StockHolding
        
        StockHolding *stock1 = [[StockHolding alloc]init];
        StockHolding *stock2 = [[StockHolding alloc]init];
        StockHolding *stock3 = [[StockHolding alloc]init];
        ForeignStockHolding *stock4 = [[ForeignStockHolding alloc]init];
        ForeignStockHolding *stock5 = [[ForeignStockHolding alloc]init];
        
        
        [stock1 setNumberOfShares:40];
        [stock1 setCurrentSharePrice:4.5];
        [stock1 setPurchaseSharePrice:2.3];
        
        [stock2 setNumberOfShares:90];
        [stock2 setCurrentSharePrice:10.56];
        [stock2 setPurchaseSharePrice:12.19];
        
        [stock3 setNumberOfShares:210];
        [stock3 setCurrentSharePrice:49.51];
        [stock3 setPurchaseSharePrice:45.10];
        
        [stock4 setNumberOfShares:100];
        [stock4 setCurrentSharePrice:87.45];
        [stock4 setPurchaseSharePrice:34.82];
        
        [stock5 setNumberOfShares:22];
        [stock5 setCurrentSharePrice:33.00];
        [stock5 setPurchaseSharePrice:25.87];
        
        NSMutableArray * stocks = [[NSMutableArray alloc] init];
        
        [stocks addObject:stock1];
        [stocks addObject:stock2];
        [stocks addObject:stock3];
        
        for(StockHolding *n in stocks)
        {
            
            NSLog(@"Stock :Number of shares = %i Purchase price = %.2f Current price = %.2f",[n numberOfShares]
                  ,[n purchaseSharePrice],[n currentSharePrice]);
            
            NSLog(@"The cost in dollars is %.2f",[n costInDollars]);
            NSLog(@"The value in dollars is %.2f",[n valueInDollars]);
            
        }
        
        
        
        
        
    }
    return 0;
}