//
//  TODO.h
//  TODO database
//
//  Created by Borislav Boyadzhiev on 10/23/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TODO : NSObject

@property (nonatomic, strong) NSString *content;
@property (nonatomic, strong) NSDate *expirationDate;
@property (nonatomic) bool isDone;

+ (TODO *) createTodoWithContent: (NSString *) content
           andExpirationDate : (NSDate *) date;

- (BOOL) hasExpired;
- (void) finish;
- (NSString *) description;

@end
