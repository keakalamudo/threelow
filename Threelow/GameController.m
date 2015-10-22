//
//  GameController.m
//  
//
//  Created by Kelo Akalamudo on 10/21/15.
//
//

#import "GameController.h"
#import "Dice.h"
#import "InputCollector.h"


@interface GameController()

@property (nonatomic) NSMutableArray *holdDice;

@end

@implementation GameController

-(void)roll{
//    int count = 0;
//    for (Dice *dice in self.diceBank){
//        
//        if (dice.isHeld!=YES) {
//        }
//        count++;
//
//    }
    int score = 0;
    for (int i = 0; i < self.diceBank.count; i++) {
        
        Dice *dice = [self.diceBank objectAtIndex:i];
        if (dice.isHeld != YES) {
            NSLog(@"\nDice %d roled %d", i+1,[dice getRandomNumberBetween:1 to:6]);
            score++;
        } else {
            NSLog(@" Dice %i is still held at [%i]", i+1,dice.currentValue);
        }
    }
    NSLog(@" Score: %i", score);
    
}

-(void)reset{
    for (int i = 0; i < self.diceBank.count; i++) {
        Dice *dice = [self.diceBank objectAtIndex:i];
        dice.isHeld = NO;
        dice.currentValue = 0;
    }

}

-(void)addArrayToStorage:(NSArray *)moreDice{
    self.diceBank = moreDice;
}

-(NSString *)holdDie:(NSString *)dieNumber{
    
    return 0;
}



@end
