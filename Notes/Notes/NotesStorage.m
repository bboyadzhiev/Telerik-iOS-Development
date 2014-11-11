//
//  NotesStorage.m
//  Notes
//
//  Created by Admin on 11/2/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import "NotesStorage.h"
#import "NoteList.h"

@implementation NotesStorage

static NSMutableArray *storage;

+(void) addNoteListWithTitle:(NSString *)title
                 andCategory:(NSString *)category{
    if(!storage){
        storage = [[NSMutableArray alloc] init];
    }
    
    for (NoteList *list in storage) {
        if ([list.noteListTitle isEqualToString:title] &&
            [list.noteListCategory isEqualToString:category] ) {
            NSLog(@"List already defined");
            return;
        }
    }
    
    NoteList *noteList = [[NoteList alloc] initWithTitle:title andCategory:category];
    [storage addObject:noteList];
}

+(void) removeNoteList:(NoteList *)noteList{
    [storage removeObject:noteList];
}

+(NoteList *) getNoteListAtIndex:(int)index{
    return [storage objectAtIndex:index];
}

+(NSInteger) getNoteListsCount{
    return storage.count;
}

@end
