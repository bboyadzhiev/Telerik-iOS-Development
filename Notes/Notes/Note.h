//
//  Note.h
//  Notes
//
//  Created by Admin on 11/2/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Note : NSObject

@property (nonatomic, strong) NSString *noteTitle;
@property (nonatomic, strong) NSString *noteDetails;
@property (nonatomic, strong) NSDate *date;

-(instancetype) initWithData: (NSString *) title
          andDetails: (NSString *) details
             andDate: (NSDate *) date;

-(void)setDate:(NSDate *)date;

@end
