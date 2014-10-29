//
//  Physical.h
//  Mortal Kombat
//
//  Created by Admin on 10/29/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PhysicalAction.h"

@interface Physical : NSObject<PhysicalAction>

enum physicalTypes {Kick, Punch, Combo};

@property enum physicalTypes type;

-(instancetype)initWithType: (enum physicalTypes) type
                  andDamage: (float) damage
          andEnergyRetrieved:(float)energy;

@end
