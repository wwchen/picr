//
//  UITextView+Utils.m
//  picr-ipad
//
//  Created by William Chen on 11/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "UITextView+Utils.h"


@implementation UITextView (Utils)

- (void)scrollToBottom
{
	CGRect lastLine;
	lastLine.origin.x = 0;
	lastLine.origin.y = self.contentSize.height-1;
	lastLine.size.height = 1;
	lastLine.size.width = 1;
	
	[self scrollRectToVisible:lastLine animated:NO];
}

- (void)appendTextAfterLinebreak:(NSString *)text
{
	self.text = [[self.text stringByAppendingString:@"\n"] stringByAppendingString:text];
}

@end
