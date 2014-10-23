//
//  TODOStorage.m
//  TODO database
//
//  Created by Borislav Boyadzhiev on 10/23/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import "TODOStorage.h"

@implementation TODOStorage

- (id)init {
    self = [super init];
    if (self) {
        self.todos = [[NSMutableArray alloc] init];
    }
    return self;
}

+(TODOStorage *) createStorage {
    TODOStorage *storage = [[TODOStorage alloc] init];
    storage.todos = [[NSMutableArray alloc] init];
    return storage;
}

-(void) addTodo: (TODO *) todo {
    [self.todos addObject: todo];
    NSLog(@"\nTODO added: %@", todo);
}

-(void) finishTodo: (TODO *) todo {
    if([self.todos containsObject: todo]){
       [self.todos removeObject:todo];
        todo.finish;
        [self.todos addObject: todo];
        
    }else{
        NSLog(@"\nTODO not found: %@", todo);
    }
}

-(NSMutableArray *) getAllTodos {
    return self.todos;
}

-(NSMutableArray *) getActiveTodos {
    NSMutableArray *result = [[NSMutableArray alloc] init];
    for (TODO *t in self.todos) {
        
        if (!t.hasExpired && !t.isDone) {
             [result addObject: t];
        }
    }
    
//    for (int i = 0; i < self.todos.count; i++) {
//        TODO *t = self.todos[i];
//        
//        NSLog(@"TODO found: %@", t.content);
//        if (!t.hasExpired && !t.isDone) {
//            [result addObject: t];
//            
//        }
//    }
    
    return result;
}

@end
