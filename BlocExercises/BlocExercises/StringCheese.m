//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
   
    
    return [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    /* WORK HERE */
    
    
    return [cheeseName stringByReplacingOccurrencesOfString:@ " cheese" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, cheeseName.length)];
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    
    NSMutableString *cheeseCountString;
    
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        cheeseCountString = [@"1 cheese" mutableCopy];
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        // number + cheeses
        cheeseCountString = [[NSString stringWithFormat:@"%lu cheeses", (unsigned long)cheeseCount] mutableCopy];
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
    return cheeseCountString;
}

@end
