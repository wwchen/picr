//
//  AppDelegate.m
//  picr-ipad
//
//  Created by William Chen on 11/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "ChatRoomViewController.h"
#import "WelcomeViewController.h"

static AppDelegate* _instance;

@implementation AppDelegate

@synthesize window;
@synthesize viewController;
@synthesize chatRoomViewController;
@synthesize welcomeViewController;

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    // Allow other classes to use us
    _instance = self;
    
    // Override point for customization after app launch
    [window addSubview:chatRoomViewController.view];
    [window addSubview:viewController.view];
    [window addSubview:welcomeViewController.view];
    [window makeKeyAndVisible];
    
    // Greet user
    [window bringSubviewToFront:welcomeViewController.view];
    [welcomeViewController activate];
}


- (void)dealloc {
    [viewController release];
    [chatRoomViewController release];
    [welcomeViewController release];
    [window release];
    [super dealloc];
}


+ (AppDelegate*)getInstance {
    return _instance;
}


// Show chat room
- (void)showChatRoom:(Room*)room {
    chatRoomViewController.chatRoom = room;
    [chatRoomViewController activate];
    
    [window bringSubviewToFront:chatRoomViewController.view];
}


// Show screen with room selection
- (void)showRoomSelection {
    [viewController activate];
    
    [window bringSubviewToFront:viewController.view];
}


@end
