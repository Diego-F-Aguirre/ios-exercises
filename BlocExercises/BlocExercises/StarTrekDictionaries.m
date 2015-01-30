//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    
    id favoriteDrink = characterDictionary[@"favorite drink"];
    if (favoriteDrink != nil && [favoriteDrink isKindOfClass:[NSString class]]) {
        NSLog(@"%@", favoriteDrink);
    }
    
    return favoriteDrink;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    
    NSMutableArray *favoriteDrinkArray = [[charactersArray valueForKey:@"favorite drink"]mutableCopy];
   
    return favoriteDrinkArray;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    
    NSMutableDictionary *mutableCharDictionary = [characterDictionary mutableCopy];
    [mutableCharDictionary setValue:@"Slow is smooth, smooth is fast" forKey:@"quote"];
    
    return mutableCharDictionary;
}

@end
