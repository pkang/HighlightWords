//
//  TextView.m
//  HighlightWords
//
//  Created by Pablo Kang on 10/12/10.
//  Copyright 2010 Blazing Cloud. All rights reserved.
//

#import <CoreText/CoreText.h>
#import <QuartzCore/QuartzCore.h>
#import "TextView.h"


@implementation TextView


- (void)drawRect:(CGRect)rect {
	// http://forums.macrumors.com/showthread.php?t=925312
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	CGContextTranslateCTM(context, 0.0f, rect.size.height); //seems to work better by translating, then scaling
	CGContextScaleCTM(context, 1.0f, -1.0f);
	
	
	CFMutableAttributedStringRef maString = CFAttributedStringCreateMutable(NULL, 0);
	CFAttributedStringBeginEditing(maString);	
	
	CFStringRef str = CFSTR("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.");
	CFAttributedStringReplaceString(maString, CFRangeMake(0, 0), str);
	
	CTFontRef font = CTFontCreateWithName(CFSTR("Helvetica"), 11, NULL);
	CFAttributedStringSetAttribute(maString, CFRangeMake(0, 12), kCTFontAttributeName, font);
	CFRelease(font);
	
	CGColorSpaceRef rgbColorSpace = CGColorSpaceCreateDeviceRGB();
	CGFloat components[] = { 1.0, 0.0, 0.0, 1.0 };
	CGColorRef red = CGColorCreate(rgbColorSpace, components);
	CGColorSpaceRelease(rgbColorSpace);
	CFAttributedStringSetAttribute(maString, CFRangeMake(12, 5), kCTForegroundColorAttributeName, red);
	CFRelease(rgbColorSpace);
	
	CFAttributedStringEndEditing(maString);	
	
	CTFramesetterRef frs = CTFramesetterCreateWithAttributedString(maString);
	CGMutablePathRef path = CGPathCreateMutable();
	
	CGPathAddRect(path, NULL, CGRectMake(5,5,300,200));
	
	CTFrameRef ctframe = CTFramesetterCreateFrame(frs, CFRangeMake(0, 0), path, NULL);	
	CGPathRelease(path);	
	CTFrameDraw(ctframe, context);
	CFRelease(frs);
	
	CFRelease(maString);
}

@end
