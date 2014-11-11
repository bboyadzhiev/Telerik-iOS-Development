//
//  NoteList.h
//  Notes
//
//  Created by Admin on 11/2/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Note.h"

@interface NoteList : NSObject

@property (nonatomic, strong) NSString *noteListTitle;
@property (nonatomic, strong) NSString *noteListCategory;
@property (nonatomic, strong) NSMutableArray *notes;

-(instancetype) initWithTitle: (NSString *) listTitle
                  andCategory: (NSString *) listCategory;

-(void) addNote: (Note *) note;
-(void) removeNote: (Note *) note;
@end
