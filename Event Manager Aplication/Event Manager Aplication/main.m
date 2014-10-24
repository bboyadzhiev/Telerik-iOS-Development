//
//  main.m
//  Event Manager Aplication
//
//  Created by Admin on 10/24/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EventCategory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Events Manager");
        EventCategory * category = [[EventCategory alloc] init: @"cat1"];
        
        NSLog(@"%@", category.title);
        
    }
    return 0;
}
