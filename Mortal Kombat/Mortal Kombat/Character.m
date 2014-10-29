//
//  Character.m
//  Mortal Kombat
//
//  Created by Admin on 10/29/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import "Character.h"

@implementation Character

-(instancetype)initWithName:(NSString *)name
                    andLife:(float)life
                  andEnergy:(float)energy{
    self = [super init];
    if (self) {
        self.name = name;
        self.life = life;
        self.energy = energy;
    }
    return self;
}

//-(void)setLife:(float)value{
//    float difference = self.life - value;
//    if (difference <= 0 ) {
//        self.life = 0;
//        NSLog(@"Fighter %@ died!", self.name);
//    } else {
//        self.life = value;
//    }
//}

@end
