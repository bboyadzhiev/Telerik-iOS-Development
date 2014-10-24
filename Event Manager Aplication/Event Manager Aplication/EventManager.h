//
//  EventManager.h
//  Event Manager Aplication
//
//  Created by Admin on 10/24/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Event.h"
#import "EventCategory.h"

@interface EventManager : NSObject

@property (nonatomic, strong) NSMutableArray *events;
@property (nonatomic, strong) NSMutableArray *categories;
@property (nonatomic, strong) NSSortDescriptor *dateDescriptor;
@property (nonatomic, strong) NSSortDescriptor *titleDescriptor;

-(instancetype) init;

-(void) addCategory: (EventCategory *) category;

-(void) addEventWithTitle: (NSString *) title
              andCategory: (EventCategory *) category
           andDescription: (NSString *) eventDescription
                  andDate: (NSDate *) date
          andListOfGuests: (NSString *) guests;

-(NSMutableArray *) getAllEvents: (BOOL) sortByDate;

-(NSMutableArray *) getAllEventsByCategory: (EventCategory *) category
                                sortByDate: (BOOL) sortByDate;

@end
