//
//  NotesStorage.h
//  Notes
//
//  Created by Admin on 11/2/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NoteList.h"

@interface NotesStorage : NSObject

+(void) addNoteListWithTitle: (NSString *) title
                 andCategory: (NSString *) category;

+ (void) removeNoteList: (NoteList *) noteList;

+ (NoteList *) getNoteListAtIndex: (int) index;

+(NSInteger) getNoteListsCount;

@end
