//
//  TODO.m
//  TODO database
//
//  Created by Borislav Boyadzhiev on 10/23/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import "TODO.h"

@implementation TODO

+ (TODO *) createTodoWithContent: (NSString *) content
           andExpirationDate : (NSDate *) date {
    TODO *t = [[TODO alloc] init];
    
    t.isDone = NO;
    t.expirationDate = date;
    t.content = content;
    
    return t;
}

- (BOOL) hasExpired
{
    return [self.expirationDate timeIntervalSinceNow] < 0.f;
}

- (void) finish {
    self.isDone = YES;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"TITLE: %@, EXPIRES: %@, isDone %s", self.content, self.expirationDate, self.isDone ? "Yes":"No"];
}

@end
