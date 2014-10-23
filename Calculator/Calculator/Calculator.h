//
//  Calculator.h
//  Calculator
//
//  Created by Borislav Boyadzhiev on 10/23/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property (nonatomic, strong) NSDecimalNumber *accumulator;

-(Calculator *) initself;
-(NSDecimalNumber *) add: (NSDecimalNumber *) number;
-(NSDecimalNumber *) subtract: (NSDecimalNumber *) number;
-(NSDecimalNumber *) multiply: (NSDecimalNumber *) number;
-(NSDecimalNumber *) divide: (NSDecimalNumber *) number;
-(NSDecimalNumber *) raiseToPower:(NSDecimalNumber *)number;

@end
