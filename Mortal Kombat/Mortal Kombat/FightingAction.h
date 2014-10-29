//
//  FightingAction.h
//  Mortal Kombat
//
//  Created by Admin on 10/29/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

@protocol FightingAction <NSObject>

@property (nonatomic, strong) NSString *keyCombination;
@property float damageInflicted;

-(void) setKeyCombination:(NSString *)keyCombination;

@end