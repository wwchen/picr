//
//  ChatRoomViewController.h
//  picr-ipad
//
//  Created by William Chen on 11/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Room.h"
#import "RoomDelegate.h"


@interface ChatRoomViewController : UIViewController <RoomDelegate, UITextFieldDelegate> {
    Room* chatRoom;
    IBOutlet UITextView* chat;
    IBOutlet UITextField* input;
}

@property(nonatomic,retain) Room* chatRoom;

// Exit back to the welcome screen
- (IBAction)exit;

// View is active, start everything up
- (void)activate;

@end
