//
//  WelcomeViewController.h
//  picr-ipad
//
//  Created by William Chen on 11/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface WelcomeViewController : UIViewController <UITextFieldDelegate> {
    IBOutlet UITextField* input;
}

// App delegate will call this whenever this view becomes active
- (void)activate;

@end
