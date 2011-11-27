//
//  AppDelegate.h
//  picr
//
//  Created by William Chen on 11/22/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow * window;
	
    ViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ViewController *viewController;


@end
