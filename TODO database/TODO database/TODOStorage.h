//
//  TODOStorage.h
//  TODO database
//
//  Created by Borislav Boyadzhiev on 10/23/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TODO.h"

@interface TODOStorage : NSObject

@property (nonatomic, strong) NSMutableArray *todos;

+(TODOStorage *) createStorage;

-(void) addTodo: (TODO *) todo;
-(void) finishTodo: (TODO *) todo;
-(NSMutableArray *) getAllTodos;
-(NSMutableArray *) getActiveTodos;

@end
