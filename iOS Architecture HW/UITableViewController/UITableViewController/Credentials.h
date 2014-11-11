//
//  Credentials.h
//  UITableViewController
//
//  Created by Admin on 10/30/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Credentials : NSObject

@property (nonatomic, strong) NSString *userName;
@property (nonatomic, strong) NSData *password;
@property (nonatomic, strong) NSString *code;

-(instancetype) initWithUserName: (NSString *) userName
                     andPassword: (NSData *) password
                         andCode: (NSString *) code;

@end
