//
//  HighlightWordsAppDelegate.m
//  HighlightWords
//
//  Created by Pablo Kang on 10/11/10.
//  Copyright 2010 Blazing Cloud. All rights reserved.
//

#import "HighlightWordsAppDelegate.h"
#import "HighlightWordsViewController.h"

@implementation HighlightWordsAppDelegate

@synthesize window;
@synthesize viewController;

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch. 
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];

	return YES;
}

- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
