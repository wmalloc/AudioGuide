//
//  CLATrack.h
//  Audio Guide
//
//  Created by Waqar Malik on 11/27/13.
//  Copyright (c) 2013 Claret Labs, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CLATrack : NSObject
@property (readonly, strong) NSString *identifier;
@property (copy) NSString *title;
@property (copy) NSString *summary;
@property (strong) NSURL *audioURL;
@property (strong) CLLocation *location;
@end
