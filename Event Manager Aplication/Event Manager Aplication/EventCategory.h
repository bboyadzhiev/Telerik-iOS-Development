//
//  EventCategory.h
//  Event Manager Aplication
//
//  Created by Admin on 10/24/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EventCategory : NSObject

@property (nonatomic, strong) NSString *title;

-(instancetype) init : (NSString *) title;
+(instancetype) initWithTitle: (NSString *) title;

@end