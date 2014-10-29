//
//  SkillAction.h
//  Mortal Kombat
//
//  Created by Admin on 10/29/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import "FightingAction.h"
#import "Fighter.h"

@class Fighter;
@protocol SkillAction <FightingAction>

@property float energyRequired;

-(BOOL) actWithFighter : (Fighter *) initiator
           overFighter : (Fighter *) victim;

@end