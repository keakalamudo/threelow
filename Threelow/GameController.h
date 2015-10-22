//
//  GameController.h
//  
//
//  Created by Kelo Akalamudo on 10/21/15.
//
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject

@property (nonatomic) NSArray *diceBank;
-(void)addArrayToStorage:(NSArray *)moreDice;

-(void)roll;
-(void)reset;

-(NSString *)holdDie:(NSString *)dieNumber;


@end
