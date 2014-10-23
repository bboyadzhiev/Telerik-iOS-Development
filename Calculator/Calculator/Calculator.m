//
//  Calculator.m
//  Calculator
//
//  Created by Borislav Boyadzhiev on 10/23/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

-(Calculator *) initself{
    Calculator *c = [[Calculator alloc] init];
    c.accumulator = [[NSDecimalNumber alloc] initWithDouble:0];
    return c;
}
-(NSDecimalNumber *) add:(NSDecimalNumber *)number{
    self.accumulator = [self.accumulator decimalNumberByAdding:number];
    return self.accumulator;
}

-(NSDecimalNumber *) subtract:(NSDecimalNumber *)number{
    self.accumulator = [self.accumulator decimalNumberBySubtracting:number];
    return self.accumulator;
}

-(NSDecimalNumber *) multiply:(NSDecimalNumber *)number{
    self.accumulator = [self.accumulator decimalNumberByMultiplyingBy:number];
    return self.accumulator;
}

-(NSDecimalNumber *) divide:(NSDecimalNumber *)number{
    self.accumulator = [self.accumulator decimalNumberByDividingBy:number];
    return self.accumulator;
}


-(NSDecimalNumber *) raiseToPower:(NSDecimalNumber *)number{
    self.accumulator = [self.accumulator decimalNumberByRaisingToPower:[number longValue]];
    return self.accumulator;
}

@end
