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
-(float) add: (float) number;
-(float) subtract: (float) number;
-(float) multiply: (float)number;
-(float) divide: (float) number;
-(float) raiseToPower: (float) number;

@end
