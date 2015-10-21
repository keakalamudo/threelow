//
//  InputCollector.m
//  
//
//  Created by Kelo Akalamudo on 10/21/15.
//
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString{
    NSLog(@"%@",promptString);
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]];
    NSLog(@"Input was: %@", inputString);
    return inputString;
}

@end
