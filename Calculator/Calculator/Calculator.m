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
- (float) add: (float) number{
    self.accumulator = [self.accumulator decimalNumberByAdding:[[NSDecimalNumber alloc] initWithFloat:number] ];
    return [self.accumulator floatValue];
}

- (float) subtract: (float) number{
    self.accumulator = [self.accumulator decimalNumberBySubtracting:[[NSDecimalNumber alloc] initWithFloat:number] ];
    return [self.accumulator floatValue];
}

- (float) multiply: (float) number{
    self.accumulator = [self.accumulator decimalNumberByMultiplyingBy:[[NSDecimalNumber alloc] initWithFloat:number] ];
    return [self.accumulator floatValue];
}

- (float) divide: (float) number{
    self.accumulator = [self.accumulator decimalNumberByDividingBy:[[NSDecimalNumber alloc] initWithFloat:number] ];
    return [self.accumulator floatValue];
}


- (float)raiseToPower: (float) number{
    self.accumulator = [self.accumulator decimalNumberByRaisingToPower:(unsigned long) number];
    return [self.accumulator floatValue];
}

@end
