//
//  EventCategory.m
//  Event Manager Aplication
//
//  Created by Admin on 10/24/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import "EventCategory.h"

@implementation EventCategory


-(instancetype) init : (NSString *) title {
    self = [super init];
    if (self) {
        self.title = title;
    }
    return self;
}

+(instancetype) initWithTitle: (NSString *) title {
    EventCategory *category = [[EventCategory alloc] init];
    category.title = title;
    return category;
}


@end