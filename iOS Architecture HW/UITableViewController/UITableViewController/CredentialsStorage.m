//
//  EncryptedCredentials.m
//  UITableViewController
//
//  Created by Admin on 10/30/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import "CredentialsStorage.h"
#import <sysexits.h>
#import <getopt.h>
#import <stdarg.h>
#import "NSData+CommonCrypto.h"
#import "Credentials.h"

@interface CredentialsStorage()

//@property (nonatomic, strong) NSMutableArray *storage;

@end

@implementation CredentialsStorage

static NSMutableArray *storage;

+ (NSString *) getPasswordForAccountName: (NSString *) accountName
                             withCode: (NSString *) code{
    NSLog(@"[--- CredentialsStorage] ---");
    NSLog(@"ACCOUNT NAME: %@\nCODE: %@", accountName, code);
    for (Credentials *credentials in storage) {
        if ([credentials.userName isEqualToString:accountName]) {
            NSLog(@"ACCOUNT FOUND!");
            return [CredentialsStorage decryptPassword:credentials.password withCode:code];
        }
    }
    return @"Invalid Code!";
}

+(void)storePasswordForAccountName:(NSString *)accountName
                       andPassword:(NSString *)password
                          withCode:(NSString *)code{
    NSLog(@"[--- CredentialsStorage] ---");
    if(!storage){
        storage = [[NSMutableArray alloc] init];
    }
    
    NSLog(@"Check for account: %@", accountName);
    BOOL containsAccount = NO;
    for (Credentials *credentials in storage) {
        if ([credentials.userName isEqualToString:accountName]) {
            containsAccount = YES;
            NSLog(@"Account already in storage!\nUPDATING %@", accountName);
              NSData *c = [CredentialsStorage encryptPassword:password withCode:code];
            credentials.password = c;
            credentials.code = code;
            break;
        }
    }
    if (!containsAccount) {
        NSLog(@"Storing new account: %@", accountName);
        NSData *c = [CredentialsStorage encryptPassword:password withCode:code];
        //NSString *r = [NSString stringWithUTF8String:[c bytes]];
        NSLog(@"Pass: %@", c);
        //NSLog(@"%@", [[NSString alloc] initWithData:c encoding:NSUTF8StringEncoding]);
        Credentials *newCredential = [[Credentials alloc] initWithUserName:accountName andPassword:c andCode:code];
        [storage addObject:newCredential];
    }
}

+(NSString *)getRandomPassword{
    return @"12345678"; // :)
}
+(NSInteger) getAccountsCount{
    return storage.count;
}
+(NSString *) getAccountNameAtIndex:(int)index{
    
    return [[storage objectAtIndex:index] userName ];
}

//static CCAlgorithm ParseAlgorithm( const char * algoStr, CCOptions *pOpts )
//{
//    if ( strncmp(algoStr, "AES", 3) == 0 )
//        return ( kCCAlgorithmAES128 );
//    
//    if ( strncmp(algoStr, "DES", 3) == 0 )
//        return ( kCCAlgorithmDES );
//    
//    if ( strncmp(algoStr, "3DES", 4) == 0 )
//        return ( kCCAlgorithm3DES );
//    
//    if ( strncmp(algoStr, "CAST", 4) == 0 )
//        return ( kCCAlgorithmCAST );
//    
//    // stream cipher, no options
//    if ( strncmp(algoStr, "RC4", 3) == 0 )
//    {
//        *pOpts = 0;
//        return ( kCCAlgorithmRC4 );
//    }
//    
//    fprintf( stderr, "Unknown algorithm '%s'.\n", algoStr );
//    return ( kCCAlgorithmAES128 );
//}


+ (NSData*) encryptPassword:(NSString*)plainPassword withCode:(NSString*)code{
    CCAlgorithm algo = kCCAlgorithmAES128;
    CCOptions opts = kCCOptionPKCS7Padding;
    //algo = ParseAlgorithm( optarg, &opts );
    NSLog(@"Encrypting password: %@", plainPassword);
    CCCryptorStatus status;
    NSString * iv = nil;
    NSData *inputData = nil;
    inputData = [plainPassword dataUsingEncoding:NSUTF8StringEncoding];
    NSLog(@"Input data: %@", [NSString stringWithUTF8String:[inputData bytes]]);
    NSData * outputData = [inputData dataEncryptedUsingAlgorithm: algo
                                                    key: code
                                   initializationVector: iv
                                                options: opts
                                                  error: &status];
    
    if ( status != kCCSuccess )
    {
        NSError * err = [NSError errorWithCCCryptorStatus: status];
        NSLog( @"Cryptor: Encrypt failed: %s\n", [[err localizedDescription] UTF8String] );
    } else {
        NSLog(@"Cryptor: Encrypt success!");
    }
    
    return outputData;
}

+ (NSString*) decryptPassword:(NSData*)cipherPassword withCode:(NSString*)code{
    CCAlgorithm algo = kCCAlgorithmAES128;
    CCOptions opts = kCCOptionPKCS7Padding;
  //  algo = ParseAlgorithm( optarg, &opts );
        
    CCCryptorStatus status = kCCSuccess;
    NSString * iv = nil;

    NSData * outputData = nil;
    outputData = [cipherPassword decryptedDataUsingAlgorithm: algo
                                                         key: code
                                        initializationVector: iv
                                                     options: opts
                                                       error: &status];
    if ( status != kCCSuccess )
    {
        NSError * err = [NSError errorWithCCCryptorStatus: status];
        NSLog( @"Cryptor: Decrypt failed: %s\n", [[err localizedDescription] UTF8String] );
    } else {
        NSLog(@"Cryptor: Decrypt success!");
    }
    
    NSString* plainPassword = [[NSString alloc] initWithData:outputData encoding:NSUTF8StringEncoding];
   // NSString* plainPassword = [NSString stringWithUTF8String:[outputData bytes]];
    NSLog(@"Decrypted password: %@", plainPassword);
    return plainPassword;
}



@end
