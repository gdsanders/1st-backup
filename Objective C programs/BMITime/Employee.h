//
//  Employee.h
//  BMITime
//
//  Created by G.D. Sanders on 8/9/12.
//  Copyright (c) 2012 G.D. Sanders. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@class Asset;

@interface Employee : Person    
{
    int employeeID;
    NSMutableArray *assets;
}

@property int employeeID;
- (void)addAssetsObject: (Asset *)a;
- (unsigned int)valueOfAssets;

@end
