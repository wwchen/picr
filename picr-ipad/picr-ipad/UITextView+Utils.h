//
//  UITextView+Utils.h
//  picr-ipad
//
//  Created by William Chen on 11/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UITextView.h>


@interface UITextView (Utils)

- (void)scrollToBottom;
- (void)appendTextAfterLinebreak:(NSString *)text;

@end
