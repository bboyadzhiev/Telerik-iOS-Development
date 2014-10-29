//
//  Fighter.m
//  Mortal Kombat
//
//  Created by Admin on 10/29/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import "Fighter.h"
#import "Physical.h"

@class Physical;

@interface Fighter ()

@property (nonatomic, strong) Physical *fatality;
@property (nonatomic, strong) Physical *kick;
@property (nonatomic, strong) Physical *punch;

@property (nonatomic, strong) NSMutableArray *comboMoves;
@property (nonatomic, strong) NSMutableArray *skills;

@end

@implementation Fighter

-(instancetype)initWithName:(NSString *)name andLife:(float)life andEnergy:(float)energy{
    self = [super initWithName:name andLife:life andEnergy:energy];
    if(self){
        self.kick = [[Physical alloc] initWithType: Kick andDamage: 12.5 andEnergyRetrieved:10];
        self.punch =[[Physical alloc] initWithType: Punch andDamage: 6 andEnergyRetrieved: 6];
        self.comboMoves = [[NSMutableArray alloc] init];
        self.skills = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void) addSkill:(Skill *)skill{
    [self.skills addObject:skill];
}

-(void) addComboWithDamage: (float) damage
         andKeyKombination: (NSString *) keyCombination{
    Physical *combo = [[Physical alloc] initWithType:Combo andDamage:damage andEnergyRetrieved: 25];
    combo.keyCombination = keyCombination;
    [self.comboMoves addObject: combo];
}

-(void)performPhysical:(Physical *)action onOpponent:(Fighter *)opponent{
    [action actWithFighter:self overFighter:opponent];
}

-(void) performCombo:(Physical *)action onOpponent:(Fighter *)opponent{
    [action actWithFighter:self overFighter:opponent];
}

//-(BOOL)performSkill:(Skill *)skill onOpponent:(Fighter *)opponent{
//    return [skill actWithFighter:self overFighter:opponent];
//}

-(BOOL) performSkill: (int) skillId
         onOpponent : (Fighter *) opponent{
    return [[self.skills objectAtIndex:skillId] actWithFighter:self overFighter:opponent];
}

-(void)kickOpponent:(Fighter *)opponent{
    [self performPhysical:self.kick onOpponent:opponent];
}

-(void)punchOpponent:(Fighter *)opponent{
    [self performPhysical:self.punch onOpponent:opponent];
}

-(NSString *)description{
    NSMutableString *res = [[NSMutableString alloc] init];
    [res appendString:@"\nFighter: |"];
    [res appendString:self.name];
    [res appendString: @"|"];
    [res appendString:@"\nSkills:  |"];
    for (Skill *skill in self.skills) {
        [res appendString: skillTypeValues(skill.type)];
        [res appendString: @"|"];
    }
    [res appendString:@"\nStats:   |"];
    [res appendString:[NSString stringWithFormat:@"L:%f|", self.life]];
    [res appendString:[NSString stringWithFormat:@"E:%f|", self.energy]];
    return res;
}

@end