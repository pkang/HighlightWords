//
//  HighlightWordsAppDelegate.h
//  HighlightWords
//
//  Created by Pablo Kang on 10/11/10.
//  Copyright 2010 Blazing Cloud. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HighlightWordsViewController;

@interface HighlightWordsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    HighlightWordsViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet HighlightWordsViewController *viewController;

@end

