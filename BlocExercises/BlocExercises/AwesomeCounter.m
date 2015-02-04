//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    
    
    NSInteger lowNumber = 0;
    NSInteger highNumber = 0;
    NSInteger counter = 0;
    NSMutableString *numberList = [@"" mutableCopy];
    
    if (otherNumber > number) {
        highNumber = otherNumber;
        lowNumber = number;
    } else {
        highNumber = number;
        lowNumber = otherNumber;
    }
    
    for (counter = lowNumber; counter <= highNumber; counter++) {
        //-7 -6 -5 .... highnumber
        [numberList appendString:[NSString stringWithFormat:@"%ld", (long)counter]];
    }
    
    return numberList;
   
    
    
}

@end
