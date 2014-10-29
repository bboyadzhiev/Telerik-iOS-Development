//
//  Fighter.h
//  Mortal Kombat
//
//  Created by Admin on 10/29/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"
#import "Physical.h"
#import "Skill.h"

@class Physical;
@class Skill;

@interface Fighter : Character

-(void) addSkill: (Skill *) skill;

-(void) addComboWithDamage: (float) damage
         andKeyKombination: (NSString *) keyCombination;

-(void) performCombo: (Physical *) action
            onOpponent : (Fighter *) opponent;


//-(BOOL) performSkill: (Skill *) skill
//         onOpponent : (Fighter *) opponent;
-(BOOL) performSkill: (int) skillId
         onOpponent : (Fighter *) opponent;

-(void) kickOpponent :(Fighter *)opponent;

-(void) punchOpponent :(Fighter *)opponent;

-(NSString *)description;

@end
