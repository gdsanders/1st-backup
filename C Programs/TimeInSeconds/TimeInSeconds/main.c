//
//  main.c
//  TimeInSeconds
//
//  Created by G.D. Sanders on 7/27/12.
//  Copyright (c) 2012 G.D. Sanders. All rights reserved.
//

#include <stdio.h>
#include <time.h>


int main(int argc, const char * argv[])
{

    long secondsSince1970 = time(NULL);
    printf("It has been %ld seconds since 1970\n", secondsSince1970);
    
    struct tm now;
    localtime_r(&secondsSince1970, &now);
    printf("The time is %d:%d:%d\n", now.tm_hour, now.tm_min, now.tm_sec);
    return 0;
}

