//
//  EventManager.m
//  Event Manager Aplication
//
//  Created by Admin on 10/24/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import "EventManager.h"

@implementation EventManager
//(NSSortDescriptor *) dateDescriptor;



-(instancetype) init {
    self = [super init];
    if (self) {
        self.categories = [[NSMutableArray alloc] init];
        self.events = [[NSMutableArray alloc] init];
        
        self.dateDescriptor = [NSSortDescriptor
                                            sortDescriptorWithKey:@"date"
                                            ascending:YES
                                            selector:@selector(compare:)];
        self.titleDescriptor = [NSSortDescriptor
                                             sortDescriptorWithKey:@"title"
                                             ascending:YES
                                             selector:@selector(compare:)];    }
    return self;
}

-(void) addCategory: (EventCategory *) category {
    [self.categories addObject:category];
    
}

-(void) addEventWithTitle: (NSString *) title
              andCategory: (EventCategory *) category
           andDescription: (NSString *) eventDescription
                  andDate: (NSDate *) date
          andListOfGuests: (NSString *) guests {
    
    Event *event = [Event initWithTitle:title
                            andCategory:category
                         andDescription:eventDescription
                                andDate:date
                        andListOfGuests:guests];
    [self.events addObject: event];
    
}

-(NSMutableArray *) getAllEvents: (BOOL) sortByDate {
    NSMutableArray *arr = [[NSMutableArray alloc] init];
    if (sortByDate) {
       arr = [[self.events sortedArrayUsingDescriptors:[NSArray arrayWithObjects:self.dateDescriptor,nil]]mutableCopy];
    } else{
       arr = [[self.events sortedArrayUsingDescriptors:[NSArray arrayWithObjects:self.titleDescriptor,nil]]mutableCopy];
    }
    return arr;
}

-(NSMutableArray *) getAllEventsByCategory: (EventCategory *) category
                                sortByDate: (BOOL) sortByDate {
    NSMutableArray *arr = [[NSMutableArray alloc] init];
    for (Event *event in self.events) {
        if (event.category == category) {
            [arr addObject:event];
        }
    }
    
    if (sortByDate) {
        arr = [[arr sortedArrayUsingDescriptors:[NSArray arrayWithObjects:self.dateDescriptor,nil]]mutableCopy];
    } else{
        arr = [[arr sortedArrayUsingDescriptors:[NSArray arrayWithObjects:self.titleDescriptor,nil]]mutableCopy];
    }
    return arr;
}

@end
