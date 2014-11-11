//
//  EncryptedCredentials.h
//  UITableViewController
//
//  Created by Admin on 10/30/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CredentialsStorage : NSObject

+ (NSString *) getPasswordForAccountName: (NSString *) accountName
                                withCode: (NSString *) code;

+ (void) storePasswordForAccountName: (NSString *) accountName
                      andPassword: (NSString *) password
                         withCode: (NSString *) code;

+ (NSString *) getRandomPassword;

+ (NSInteger) getAccountsCount;
+(NSString *) getAccountNameAtIndex: (int) index;
@end
