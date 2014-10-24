//
//  main.m
//  TODO database
//
//  Created by Borislav Boyadzhiev on 10/23/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TODOStorage.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"TODO Database");
        
        TODOStorage *storage = [[TODOStorage alloc] init];
        //TODOStorage *storage = [TODOStorage createStorage];
        
        TODO *t1 = [TODO  createTodoWithContent: @"First TODO"
                             andExpirationDate: [NSDate dateWithString: @"2015-03-24 10:45:32 +0600"]];

        
        TODO *t2 = [TODO  createTodoWithContent: @"Second TODO"
                             andExpirationDate: [NSDate dateWithString: @"2014-03-24 10:45:32 +0600"]];
        
        [storage addTodo:t1];
        [storage addTodo:t2];
        
        NSMutableArray *active = storage.getActiveTodos;
        NSLog(@"\n Fetching ACTIVE todos, total: %d", (int) active.count);
        
        for (TODO *todo in active) {
            NSLog(@"\n TODO: %@", todo);
        }
        
        
    }
    return 0;
}
