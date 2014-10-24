//
//  Event.h
//  Event Manager Aplication
//
//  Created by Admin on 10/24/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EventCategory.h"

@interface Event : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) EventCategory *category;
@property (nonatomic, strong) NSString *eventDescription;
@property (nonatomic, strong) NSDate *date;
@property (nonatomic, strong) NSString *guests;


-(instancetype) init;

+(instancetype) initWithTitle: (NSString *) title
                  andCategory: (EventCategory *) category
               andDescription: (NSString *) eventDescription
                      andDate: (NSDate *) date
              andListOfGuests: (NSString *) guests;

@end
