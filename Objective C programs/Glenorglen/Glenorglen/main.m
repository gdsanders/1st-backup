//
//  main.m
//  Glenorglen
//
//  Created by G.D. Sanders on 8/5/12.
//  Copyright (c) 2012 G.D. Sanders. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // I need to define those as global variables to work with them outside of the for loops
        NSString *properNameGlen;
        NSString *regularWordsGlen;
        
        // I dedicate this work to the bad weather, which made me stay inside all day when it was supposed to be summer
        
        int main (int argc, const char * argv[]);
        {
            
            @autoreleasepool {
                
                // Read in a file as a huge string (ignoring the possibility of an error)
                NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                                 encoding:NSUTF8StringEncoding error:NULL];
                // Break it into an array of strings
                NSArray *names = [nameString componentsSeparatedByString:@"\n"];
                
                // Go through the array one string at a time
                for (NSString *n in names) {
                    
                    // Look for the string "Glen" in case-insensitive manner
                    NSRange r = [n rangeOfString:@"Glen"options:NSCaseInsensitiveSearch];
                    
                    // Was it found ?
                    if (r.location != NSNotFound) {
                        NSLog(@"%@", n);
                        properNameGlen = n; // will be compared later
                    }
                }
                
                // Looking for the found string "GLEN" in the file with regular words
                // repeating the steps from above for the other file
                NSString *wordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                                 encoding:NSUTF8StringEncoding error:NULL];
                
                NSArray *words = [wordString componentsSeparatedByString:@"\n"];
                
                for (NSString *w in words) {
                    NSRange r2 = [w rangeOfString:@"glen"options:NSCaseInsensitiveSearch];
                    
                    if (r2.location != NSNotFound) {
                        NSLog(@"%@", w);
                        regularWordsGlen = w;
                    }
                }
                
                // Comparing the two strings
                
                if ([properNameGlen caseInsensitiveCompare:regularWordsGlen] == NSOrderedSame) {
                    NSLog(@"The name Glen and the word glen are equal.");
                }
            }
            return 0;
        }
    }

    }