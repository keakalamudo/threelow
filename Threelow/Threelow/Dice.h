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
@property (nonatomic) bool isHeld;


//- (instancetype)initWithRandom:(NSString*)value;
-(int)getRandomNumberBetween:(int)from to:(int)to;

@end


//⚀ ⚁ ⚂ ⚃ ⚄ ⚅