//
//  AppConfig.h
//  picr-ipad
//
//  Created by William Chen on 11/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface AppConfig : NSObject {
    NSString* name;
}

@property (retain) NSString* name;

// Singleton - one instance for the whole app
+ (AppConfig*)getInstance;

@end
