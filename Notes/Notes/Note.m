//
//  Note.m
//  Notes
//
//  Created by Admin on 11/2/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import "Note.h"

@implementation Note

-(instancetype) initWithData: (NSString *) title
          andDetails: (NSString *) details
             andDate: (NSDate *) date{
    self = [super init];
    if (self) {
        self.noteTitle = title;
        self.noteDetails = details;
        self.date = date;
    }
    
    return self;

}


-(void)setDate:(NSDate *)date{
    if ([date timeIntervalSinceNow] <= 0 ) {
        return;
    }
    else {
        self.date = date;
    }
}

@end
