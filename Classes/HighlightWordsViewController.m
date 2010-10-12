//
//  HighlightWordsViewController.m
//  HighlightWords
//
//  Created by Pablo Kang on 10/11/10.
//  Copyright 2010 Blazing Cloud. All rights reserved.
//

#import "HighlightWordsViewController.h"
#import "TextView.h"

@implementation HighlightWordsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	TextView *textView = [[TextView alloc] initWithFrame:CGRectMake(20, 20, 600, 600)];
	textView.backgroundColor = [UIColor yellowColor];
	[self.view addSubview:textView];
}

- (void)dealloc {
    [super dealloc];
}

@end
