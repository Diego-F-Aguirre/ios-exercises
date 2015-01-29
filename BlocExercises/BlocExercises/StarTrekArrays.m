//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    
    NSArray *stringToArray = [characterString componentsSeparatedByString:@";"];
    
    
    return stringToArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    
    NSString *trekCharacters = [characterArray componentsJoinedByString:@";" ];
    
    return trekCharacters;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    
    NSMutableArray *mutableArray = [characterArray mutableCopy];
    NSSortDescriptor *sortDiscriptor = [[NSSortDescriptor alloc]initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [mutableArray sortUsingDescriptors:@[sortDiscriptor]];
    
    return mutableArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    
    NSMutableArray *mutableCharacterArray = [characterArray mutableCopy];
    NSPredicate *containingWorf = [NSPredicate predicateWithFormat: @"SELF CONTAINS[c] 'worf'"];
    [mutableCharacterArray filterUsingPredicate:containingWorf];
    
    
    return containingWorf;
}

@end
