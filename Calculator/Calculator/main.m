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
        NSLog(@"Calculator");
        float param = 123.234;
        Calculator *c = [[Calculator alloc] initself];
        NSLog(@"%@", c.accumulator);
        NSLog(@"Adding %f", param);
        float r  = [c add: param];
        NSLog(@"Result: %f", r);
        param = 11;
        NSLog(@"Subtracting %f", param);
        r  = [c subtract: param];
        NSLog(@"Result: %f", r);
    }
    return 0;
}
