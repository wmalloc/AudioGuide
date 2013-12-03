//
//  CLAServerAPISessionManager.h
//  Audio Guide
//
//  Created by Waqar Malik on 11/25/13.
//  Copyright (c) 2013 Claert Labs, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^CLAParseAPISessionSuccessBlock)(NSURLSessionDataTask *task, id responseObject);
typedef void (^CLAParseAPISessionFailureBlock)(NSURLSessionDataTask *task, NSError *error);

@interface CLAParseAPISession : AFHTTPSessionManager
+ (instancetype)manager;

- (void)getTracks:(CLAParseAPISessionSuccessBlock)success failure:(CLAParseAPISessionFailureBlock)failure;
- (void)putTracks:(NSArray *)tracks success:(CLAParseAPISessionSuccessBlock)success failure:(CLAParseAPISessionFailureBlock)failure;
@end
