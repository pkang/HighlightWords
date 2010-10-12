//
//  HighlightWordsViewController.m
//  HighlightWords
//
//  Created by Pablo Kang on 10/11/10.
//  Copyright 2010 Blazing Cloud. All rights reserved.
//

#import "HighlightWordsViewController.h"
#import "TextView.h"

static NSString * const paragraph = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. \
Nam mi nisi, vestibulum eu ullamcorper vel, ultrices eu enim. \
Aenean molestie, massa a venenatis tempus, lorem massa mattis lorem, \
sit amet hendrerit urna erat et augue. Pellentesque elementum, \
lectus a tincidunt blandit, justo mi aliquet erat, nec luctus justo dolor id ligula. \
Vestibulum auctor felis quis dolor dapibus sed tincidunt sem fermentum.";

@implementation HighlightWordsViewController


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	TextView *textView = [[TextView alloc] initWithFrame:CGRectMake(20, 20, 600, 600)];
	textView.backgroundColor = [UIColor yellowColor];
	[self.view addSubview:textView];
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
