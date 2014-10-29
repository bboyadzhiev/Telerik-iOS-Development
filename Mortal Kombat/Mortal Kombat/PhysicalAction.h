
//
//  PhysicalAction.h
//  Mortal Kombat
//
//  Created by Admin on 10/29/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import "FightingAction.h"
#import "Fighter.h"

@class Fighter;

@protocol PhysicalAction <FightingAction>

@property float energyRetrieved;
    

@property (nonatomic, strong) NSString *keyCombination;
@property float damageInflicted;

-(BOOL) actWithFighter : (Fighter *) initiator
           overFighter : (Fighter *) victim;

@end
