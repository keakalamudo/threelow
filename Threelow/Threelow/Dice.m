//
//  Dice.m
//  
//
//  Created by Kelo Akalamudo on 10/21/15.
//
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.currentValue = [self getRandomNumberBetween:1 to:6];
        self.isHeld = NO;
    }
    return self;
}

-(int)getRandomNumberBetween:(int)from to:(int)to {
    int random = (int)from + arc4random() % (to-from+1);
    self.currentValue = random;
    return random;
}





@end
