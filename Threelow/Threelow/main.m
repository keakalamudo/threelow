//
//  main.m
//  Threelow
//
//  Created by Kelo Akalamudo on 10/21/15.
//  Copyright (c) 2015 Kelo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputCollector.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        GameController *currentGame = [[GameController alloc] init];
        InputCollector *collectorPrompt = [[InputCollector alloc]init];
        
        Dice *dice1 = [[Dice alloc] init];
        Dice *dice2 = [[Dice alloc] init];
        Dice *dice3 = [[Dice alloc] init];
        Dice *dice4 = [[Dice alloc] init];
        Dice *dice5 = [[Dice alloc] init];
     
        bool rollAgain = true;
        
        [currentGame addArrayToStorage:@[dice1, dice2, dice3, dice4, dice5]];

        
        while(rollAgain){
            
            NSString *initialInput = [collectorPrompt inputForPrompt:(@"\nWhat would you like to do?\nRoll, Reset or Quit")];
            
            if([initialInput isEqualToString:@"roll"]){
                [currentGame roll];
                
                NSString *request = [collectorPrompt inputForPrompt:(@"\nWould you like to Hold? y/n")];
                
                if([request isEqualToString:@"y"]){
                    NSString *index = [collectorPrompt inputForPrompt:(@"\nPlease enter the index for the Dice you want to hold")];
                    int arrayIndex = [ index intValue];
//                    currentGame.diceBank[arrayIndex].isHeld= YES;
                    Dice *dice = [currentGame.diceBank objectAtIndex:arrayIndex-1];
                    dice.isHeld = YES;
                    NSLog(@"[%d]", arrayIndex);
                    NSString *nextRequest = [collectorPrompt inputForPrompt:(@"\nKeep held or unhold y/n")];
                    if([nextRequest isEqualToString:@"y"]){
                        //rollAgain = true;
                        [currentGame roll];
                
                    }else{
                        dice.isHeld = NO;
                        
                    }
                    rollAgain = true;
                }
                
                
            }else if ([initialInput isEqualToString:@"reset"]){
                [currentGame reset];
                rollAgain = true;
            }else if ([initialInput isEqualToString:@"quit"]){
                rollAgain = false;
            }

            
        }

        
        
    
        
    }
    return 0;
}




//        NSArray *diceArray = @[dice1, dice2, dice3, dice4, dice5];
//        NSMutableArray *heldDice =[[NSMutableArray alloc] init];