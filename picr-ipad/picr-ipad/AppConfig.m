//
//  AppConfig.m
//  picr-ipad
//
//  Created by William Chen on 11/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "AppConfig.h"

static AppConfig* instance;

@implementation AppConfig

@synthesize name;

// Initialization
- (id) init {
    self.name = @"unknown";
    return self;
}


// Cleanup
- (void)dealloc {
    self.name = nil;
    [super dealloc];
}


// Automatically initialize if called for the first time
+ (AppConfig*) getInstance {
    @synchronized([AppConfig class]) {
        if ( instance == nil ) {
            instance = [[AppConfig alloc] init];
        }
    }
    
    return instance;
}

@end
