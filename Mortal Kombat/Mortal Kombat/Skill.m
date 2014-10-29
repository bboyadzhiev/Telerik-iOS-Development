//
//  ElementalSkill.m
//  Mortal Kombat
//
//  Created by Admin on 10/29/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Skill.h"
#import "Fighter.h"

@implementation Skill

@synthesize damageInflicted;
@synthesize energyRequired;
@synthesize keyCombination;

-(instancetype)initWithType:(enum skillTypes) type
                  andDamage:(float)damage
          andEnergyRequired: (float) energy{
    self = [super init];
    self.type = type;
    self.damageInflicted = damage;
    self.energyRequired = energy;
    return self;
}

-(BOOL)actWithFighter:(Fighter *)initiator overFighter:(Fighter *)victim{
    if(initiator.energy < self.energyRequired){
        return NO;
    }
    
    initiator.energy -= self.energyRequired;
    victim.life -= self.damageInflicted;
    
    return YES;
}

@end