//
//  ChatRoomViewController.m
//  picr-ipad
//
//  Created by William Chen on 11/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ChatRoomViewController.h"
#import "AppDelegate.h"
#import "UITextView+Utils.h"
#import "AppConfig.h"

@implementation ChatRoomViewController

@synthesize chatRoom;

// After view shows up, start the room
- (void)activate {
    if ( chatRoom != nil ) {
        chatRoom.delegate = self;
        [chatRoom start];
    }
    
    [input becomeFirstResponder];
}


// Cleanup
- (void)dealloc {
    self.chatRoom = nil;
    [super dealloc];
}


// We are being asked to display a chat message
- (void)displayChatMessage:(NSString*)message fromUser:(NSString*)userName {
    [chat appendTextAfterLinebreak:[NSString stringWithFormat:@"%@: %@", userName, message]];
    [chat scrollToBottom];
}


// Room closed from outside
- (void)roomTerminated:(id)room reason:(NSString*)reason {
    // Explain what happened
    UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Room terminated" message:reason delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [alert show];
    [alert release];
    [self exit];
}


// User decided to exit room
- (IBAction)exit {
    // Close the room
    [chatRoom stop];
    
    // Remove keyboard
    [input resignFirstResponder];
    
    // Erase chat
    chat.text = @"";
    
    // Switch back to welcome view
    [[AppDelegate getInstance] showRoomSelection];
}


#pragma mark -
#pragma mark UITextFieldDelegate Method Implementations

// This is called whenever "Return" is touched on iPhone's keyboard
- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
	if (theTextField == input) {
		// processs input
        [chatRoom broadcastChatMessage:input.text fromUser:[AppConfig getInstance].name];
        
		// clear input
		[input setText:@""];
	}
	return YES;
}

@end
