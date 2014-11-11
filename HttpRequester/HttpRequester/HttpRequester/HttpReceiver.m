//
//  HttpReciever.m
//  HttpRequester
//
//  Created by Admin on 11/4/14.
//  Copyright (c) 2014 Borislav Boyadzhiev. All rights reserved.
//

#import "HttpReceiver.h"

@implementation HttpReceiver

-(void)receivedData:(NSData *)data {
    self.data = data;
}

@end
