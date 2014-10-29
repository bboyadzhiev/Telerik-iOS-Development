//
//  Character.h
//  Mortal Kombat
//
//  Created by Admin on 10/29/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Character : NSObject

@property (nonatomic, strong) NSString *name;
@property float energy;
@property float life;

-(instancetype) initWithName: (NSString *) name
                     andLife: (float) life
                   andEnergy: (float) energy;

//-(void)setLife:(float)value;
@end
