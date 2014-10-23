//
//  main.m
//  Calculator
//
//  Created by Borislav Boyadzhiev on 10/23/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        double param = 123.234;
        NSDecimalNumber *doubleDecimal = [[NSDecimalNumber alloc] initWithDouble:param];
        Calculator *c = [[Calculator alloc] initself];
        NSLog(@"%@", c.accumulator);
        NSLog(@"%@", doubleDecimal);
        NSDecimalNumber *r  = [c add: doubleDecimal];
        NSLog(@"%@", r);
    }
    return 0;
}
