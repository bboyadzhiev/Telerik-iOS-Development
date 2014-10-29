//
//  main.m
//  Mortal Kombat
//
//  Created by Admin on 10/29/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fighter.h"
#import "Skill.h"
#import "Physical.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Mortal Kombat Objective");
        
        Skill *fireBall = [[Skill alloc] initWithType:Fire andDamage:20 andEnergyRequired:12];
        Skill *dangerSpit = [[Skill alloc] initWithType:Poison andDamage:18 andEnergyRequired:10];
        Skill *hook = [[Skill alloc] initWithType:Rope andDamage:2 andEnergyRequired:12];
        Skill *freezeBall = [[Skill alloc] initWithType:Ice andDamage:5 andEnergyRequired:12];
        Skill *cloak = [[Skill alloc] initWithType:Cloak andDamage:0 andEnergyRequired:15];
        
        Fighter *scorpion = [[Fighter alloc] initWithName:@"Scorpion" andLife:100 andEnergy:100];
        [scorpion addSkill: fireBall];
        [scorpion addSkill: hook];
        
        
        
        Fighter *reptile = [[Fighter alloc] initWithName:@"Reptile" andLife:100 andEnergy:100];
        [reptile addSkill: dangerSpit];
        [reptile addSkill: cloak];
        
        NSLog(scorpion.description);
        NSLog(reptile.description);
        
        NSLog(@"\n------------ FIGHT! ------------");
        [scorpion performSkill:0 onOpponent:reptile];
        [scorpion performSkill:1 onOpponent:reptile];
       
        NSLog(scorpion.description);
        NSLog(reptile.description);
        
        NSLog(@"\n------------ ");
        [reptile punchOpponent:scorpion];
        
        NSLog(scorpion.description);
        NSLog(reptile.description);
        

    }
    return 0;
}
