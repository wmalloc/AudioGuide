//
//  CLAServerAPISessionManager.m
//  Audio Guide
//
//  Created by Waqar Malik on 11/25/13.
//  Copyright (c) 2013 Claret Labs, Inc. All rights reserved.
//

#import "CLAServerAPISessionManager.h"

NSString * const CLAServerAPISessionBaseURL = @"https://api.parse.com";

@implementation CLAServerAPISessionManager

+ (instancetype)manager
{
    static CLAServerAPISessionManager *gServerAPISessionManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        gServerAPISessionManager = [[CLAServerAPISessionManager alloc] initWithBaseURL:[NSURL URLWithString:CLAServerAPISessionBaseURL]];
    });
    return gServerAPISessionManager;
}

- (id)initWithBaseURL:(NSURL *)url
{
    self = [super initWithBaseURL:url];
    if(nil != self)
    {
        [self.requestSerializer setValue:[CLAApplicationKeys parseApplicationIdentifier] forHTTPHeaderField:@"X-Parse-Application-Id"];
        [self.requestSerializer setValue:[CLAApplicationKeys parseRestAPIkey] forHTTPHeaderField:@"X-Parse-REST-API-Key"];
    }

    return self;
}

@end
