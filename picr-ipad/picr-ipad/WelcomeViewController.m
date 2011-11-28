//
//  WelcomeViewController.m
//  picr-ipad
//
//  Created by William Chen on 11/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "WelcomeViewController.h"
#import "AppConfig.h"
#import "AppDelegate.h"


@implementation WelcomeViewController

// App delegate will call this whenever this view becomes active
- (void)activate {
    // Display keyboard
    [input becomeFirstResponder];
}


// This is called whenever "Return" is touched on iPhone's keyboard
- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if ( theTextField.text == nil || [theTextField.text length] < 1 ) {
        return NO;
    }
    
    // Save user's name
    [AppConfig getInstance].name = theTextField.text;
    
    // Dismiss keyboard
    [theTextField resignFirstResponder];
    
    // Move on to the next screen
    [[AppDelegate getInstance] showRoomSelection];
    
	return YES;
}

@end
