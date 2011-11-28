//
//  Room.h
//  picr-ipad
//
//  Created by William Chen on 11/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RoomDelegate.h"


@interface Room : NSObject {
    id<RoomDelegate> delegate;
}

@property(nonatomic,retain) id<RoomDelegate> delegate;

- (BOOL)start;
- (void)stop;
- (void)broadcastChatMessage:(NSString*)message fromUser:(NSString*)name;

@end
