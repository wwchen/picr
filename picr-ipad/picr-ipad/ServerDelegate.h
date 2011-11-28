//
//  ServerDelegate.h
//  picr-ipad
//
//  Created by William Chen on 11/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Server, Connection;

@protocol ServerDelegate

// Server has been terminated because of an error
- (void) serverFailed:(Server*)server reason:(NSString*)reason;

// Server has accepted a new connection and it needs to be processed
- (void) handleNewConnection:(Connection*)connection;

@end
