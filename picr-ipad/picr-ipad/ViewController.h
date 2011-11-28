//
//  ViewController.h
//  picr-ipad
//
//  Created by William Chen on 11/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ServerBrowserDelegate.h"
#import "ServerBrowser.h"


@interface ViewController : UIViewController <UITableViewDataSource, ServerBrowserDelegate> {
    ServerBrowser* serverBrowser;
    IBOutlet UITableView* serverList;
}

- (IBAction)createNewChatRoom:(id)sender;
- (IBAction)joinChatRoom:(id)sender;

// View is active, start everything up
- (void)activate;

@end

