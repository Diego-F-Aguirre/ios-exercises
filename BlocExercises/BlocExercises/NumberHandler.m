//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    
// My original code below
//  NSNumber *doubleNumber = [NSNumber numberWithDouble:[number doubleValue] * 2];
    

    return [NSNumber numberWithDouble:[number doubleValue] * 2];
    
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    
//    NSNumber *lowNumber = [NSNumber numberWithInteger:number];
//    NSNumber *highNumber = [NSNumber numberWithInteger:otherNumber];
//    NSMutableArray *numberListArray = [NSNumber lowNumber<=NSNumber highNumber, lowNumber];
//    
//    for (NSNumber *small=lowNumber; small<=highNumber; small++) {
//        numberListArray;
//    }
//    
//    []
    
    
    NSInteger lowNumber = 0;
    NSInteger highNumber = 0;
    NSMutableArray *numberArray = [@[] mutableCopy];
    
    if (otherNumber > number) {
        highNumber = otherNumber;
        lowNumber = number;
    } else {
        highNumber = number;
        lowNumber = otherNumber;
    }
    
    for (NSInteger i = lowNumber; i <= highNumber; i++) {
        [numberArray addObject:[NSNumber numberWithLong:i]];
    }
    
    return numberArray;
    
    

    
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    
//    NSMutableArray *sortedNumbers = NSArray arrayOfNumbers;
//    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:([0])];
    
//    NSMutableArray *sortedNumberes = [[arrayOfNumbers mutableCopy] sortUsingDescriptors:(arrayOfNumbers)];

    NSMutableArray *sortedNumbers = [arrayOfNumbers mutableCopy];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"intValue" ascending:YES];
    
    [sortedNumbers sortUsingDescriptors:@[sortDescriptor]];
    

    return [sortedNumbers[0] integerValue];
    
    //return [sortedNumberes mutableCopy];
}

@end
