//
//  ElementalSkill.h
//  Mortal Kombat
//
//  Created by Admin on 10/29/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "SkillAction.h"

@interface Skill : NSObject<SkillAction>

enum skillTypes { Fire, Ice, Poison, Rope, Teleport, Cloak, Fly, Pierce, Cut };
#define skillTypeValues(enum) [@[@"Fire",@"Ice",@"Poison", @"Rope", @"Teleport", @"Cloak", @"Fly", @"Pierce", @"Cut"] objectAtIndex:enum]

@property enum skillTypes type;

-(instancetype)initWithType:(enum skillTypes) type
                  andDamage:(float)damage
          andEnergyRequired: (float) energy;

@end