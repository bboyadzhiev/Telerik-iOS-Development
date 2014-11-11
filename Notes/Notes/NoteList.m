//
//  NoteList.m
//  Notes
//
//  Created by Admin on 11/2/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import "NoteList.h"

@implementation NoteList

-(instancetype) initWithTitle: (NSString *) listTitle
                  andCategory: (NSString *) listCategory{
    self = [super init];
    if (self) {
        self.noteListTitle = listTitle;
        self.noteListCategory = listCategory;
        self.notes = [[NSMutableArray alloc] init];
    }
    
    return self;
}

-(void)addNote:(Note *)note{
    if (!self.notes) {
        self.notes = [[NSMutableArray alloc] init];
    }
    [self.notes addObject:note];
}

-(void)removeNote:(Note *)note{
    if (self.notes) {
        if ([self.notes containsObject:note]) {
            [self.notes removeObject:note];
        }
    }
}

@end
