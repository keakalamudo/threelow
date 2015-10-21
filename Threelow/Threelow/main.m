//
//  main.m
//  Threelow
//
//  Created by Kelo Akalamudo on 10/21/15.
//  Copyright (c) 2015 Kelo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        Dice *dice1 = [[Dice alloc] init];
        Dice *dice2 = [[Dice alloc] init];
        Dice *dice3 = [[Dice alloc] init];
        Dice *dice4 = [[Dice alloc] init];
        Dice *dice5 = [[Dice alloc] init];
        
        [dice1 getRandomNumberBetween:1 to:6];
        [dice2 getRandomNumberBetween:1 to:6];
        [dice3 getRandomNumberBetween:1 to:6];
        [dice4 getRandomNumberBetween:1 to:6];
        [dice5 getRandomNumberBetween:1 to:6];
        
        NSLog(@"Dice 1 roled %d", dice1.currentValue);
        NSLog(@"Dice 2 roled %d", dice2.currentValue);
        NSLog(@"Dice 3 roled %d", dice3.currentValue);
        NSLog(@"Dice 4 roled %d", dice4.currentValue);
        NSLog(@"Dice 5 roled %d", dice5.currentValue);

        
        
    
        
    }
    return 0;
}
