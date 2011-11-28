//
//  RoomDelegate.h
//  picr-ipad
//
//  Created by William Chen on 11/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Room;

@protocol RoomDelegate

- (void) displayChatMessage:(NSString*)message fromUser:(NSString*)userName;
- (void) roomTerminated:(id)room reason:(NSString*)string;

@end
