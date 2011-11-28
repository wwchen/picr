//
//  AppDelegate.h
//  picr-ipad
//
//  Created by William Chen on 11/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Room.h"

@class ViewController, ChatRoomViewController, WelcomeViewController;

@interface AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ViewController *viewController;
    ChatRoomViewController *chatRoomViewController;
    WelcomeViewController *welcomeViewController;
}

@property(nonatomic, retain) IBOutlet UIWindow *window;
@property(nonatomic, retain) IBOutlet ViewController *viewController;
@property(nonatomic, retain) IBOutlet ChatRoomViewController *chatRoomViewController;
@property(nonatomic, retain) IBOutlet WelcomeViewController *welcomeViewController;


// Main instance of the app delegate
+ (AppDelegate*)getInstance;

// Show chat room
- (void)showChatRoom:(Room*)room;

// Go back to the room selection
- (void)showRoomSelection;

@end
