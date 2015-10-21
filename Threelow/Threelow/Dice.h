//
//  Dice.h
//  
//
//  Created by Kelo Akalamudo on 10/21/15.
//
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject


@property (nonatomic) int currentValue;


//- (instancetype)initWithRandom:(NSString*)value;
-(int)getRandomNumberBetween:(int)from to:(int)to;

@end


//⚀ ⚁ ⚂ ⚃ ⚄ ⚅