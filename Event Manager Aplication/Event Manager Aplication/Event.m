//
//  Event.m
//  Event Manager Aplication
//
//  Created by Admin on 10/24/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import "Event.h"

@implementation Event

-(instancetype) init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

+(instancetype) initWithTitle: (NSString *) title
                  andCategory: (EventCategory *) category
               andDescription: (NSString *) eventDescription
                      andDate: (NSDate *) date
              andListOfGuests: (NSString *) guests {
    Event *event = [[Event alloc] init];
    
    event.title = title;
    event.category = category;
    event.eventDescription = eventDescription;
    event.date = date;
    event.guests = guests;
    
    return event;
}
@end
