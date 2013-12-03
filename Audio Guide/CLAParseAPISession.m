//
//  CLAServerAPISessionManager.m
//  Audio Guide
//
//  Created by Waqar Malik on 11/25/13.
//  Copyright (c) 2013 Claret Labs, Inc. All rights reserved.
//

#import "CLAParseAPISession.h"

@implementation CLAParseAPISession

+ (instancetype)manager
{
    static CLAParseAPISession *gServerAPISessionManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSString *const CLAServerAPISessionBaseURL = @"https://api.parse.com";
        gServerAPISessionManager = [[CLAParseAPISession alloc] initWithBaseURL:[NSURL URLWithString:CLAServerAPISessionBaseURL]];
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

- (void)getTracks:(CLAParseAPISessionSuccessBlock)success failure:(CLAParseAPISessionFailureBlock)failure
{
    SOCPattern *pattern = [SOCPattern patternWithString:CLAServerAPIURLsObject];
    NSString *string = [pattern stringFromObject:@{@"className" : @"Track"}];
    [super GET:string parameters:nil success:success failure:failure];
}

- (void)putTracks:(NSArray *)tracks success:(CLAParseAPISessionSuccessBlock)success failure:(CLAParseAPISessionFailureBlock)failure
{

}
@end
