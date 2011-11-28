//
//  ServerBrowser.h
//  picr-ipad
//
//  Created by William Chen on 11/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ServerBrowserDelegate;

@interface ServerBrowser : NSObject {
    NSNetServiceBrowser* netServiceBrowser;
    NSMutableArray* servers;
    id<ServerBrowserDelegate> delegate;
}

@property(nonatomic,readonly) NSArray* servers;
@property(nonatomic,retain) id<ServerBrowserDelegate> delegate;

// Start browsing for Bonjour services
- (BOOL)start;

// Stop everything
- (void)stop;

@end
