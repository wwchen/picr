//
//  ConnectionDelegate.h
//  picr-ipad
//
//  Created by William Chen on 11/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Connection;

@protocol ConnectionDelegate

- (void) connectionAttemptFailed:(Connection*)connection;
- (void) connectionTerminated:(Connection*)connection;
- (void) receivedNetworkPacket:(NSDictionary*)message viaConnection:(Connection*)connection;

@end
