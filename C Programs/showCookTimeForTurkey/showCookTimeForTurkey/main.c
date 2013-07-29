//
//  main.c
//  showCookTimeForTurkey
//
//  Created by G.D. Sanders on 7/19/12.
//  Copyright (c) 2012 DigitalEquity, Inc. All rights reserved.
//

#include <stdio.h>

void showCookTimeForTurkey (int pounds)
{
    int necessaryMinutes = 15 + 15 * pounds;
    printf("Cook for %d minutes.\n", necessaryMinutes);
}
           
int main(int argc, const char * argv[])
{

    int totalWeight = 10;
    int gibletWeight = 1;
    int turkeyWeight = totalWeight - gibletWeight;
    showCookTimeForTurkey(turkeyWeight);
    return 0;
}

