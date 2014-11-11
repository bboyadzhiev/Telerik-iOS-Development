//
//  Credentials.m
//  UITableViewController
//
//  Created by Admin on 10/30/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import "Credentials.h"
#import "NSData+CommonCrypto.h"

@interface Credentials ()

@end

@implementation Credentials

-(instancetype) initWithUserName: (NSString *) userName
                     andPassword: (NSData *) password
                         andCode: (NSString *) code{
    self = [super init];
    if (self) {
        self.userName = userName;
        self.password = password;
        self.code = code;
    }
    
    return self;
}

@end
