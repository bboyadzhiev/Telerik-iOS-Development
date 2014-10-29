//
//  Physical.m
//  Mortal Kombat
//
//  Created by Admin on 10/29/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Physical.h"
#import "Fighter.h"

@implementation Physical

@synthesize damageInflicted;
@synthesize energyRetrieved;
@synthesize keyCombination;

-(instancetype)initWithType: (enum physicalTypes) type
                  andDamage: (float) damage
          andEnergyRetrieved:(float)energy{
    self = [super init];
    if(self){
        self.type = type;
        self.damageInflicted = damage;
        self.energyRetrieved = energy;
    }
    return self;
}

-(BOOL)actWithFighter:(Fighter *)initiator overFighter:(Fighter *)victim{
    victim.life -= self.damageInflicted;
    initiator.energy += self.energyRetrieved;
    
    return YES;
}

@end
