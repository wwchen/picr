//
//  Room.m
//  picr-ipad
//
//  Created by William Chen on 11/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "RoomDelegate.h"
#import "Room.h"


@implementation Room

@synthesize delegate;

// Cleanup
- (void)dealloc {
    self.delegate = nil;
    [super dealloc];
}


// "Abstract" methods
- (BOOL)start {
    // Crude way to emulate "abstract" class
    [self doesNotRecognizeSelector:_cmd];
    return NO;
}

- (void)stop {
    // Crude way to emulate "abstract" class
    [self doesNotRecognizeSelector:_cmd];
}

- (void)broadcastChatMessage:(NSString*)message fromUser:(NSString*)name {
    // Crude way to emulate "abstract" class
    [self doesNotRecognizeSelector:_cmd];
}

@end
