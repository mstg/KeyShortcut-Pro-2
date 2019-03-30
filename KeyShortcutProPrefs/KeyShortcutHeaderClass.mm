//
//  KeyShortcutHeaderClass.m
//  KeyShortcut-Pro
//
//  Created by Mustafa Gezen on 10.08.2015.
//  Copyright © 2015 Mustafa Gezen. All rights reserved.
//

#import <Preferences/Preferences.h>

@interface KeyShortcutHeaderClass : PSTableCell  {
	UIView *headerView;
	UILabel *ksHeader;
	UILabel *ksHeaderSub;
}
@end

@implementation KeyShortcutHeaderClass
- (instancetype)initWithSpecifier:(PSSpecifier *)specifier {
	self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"headerCell" specifier:specifier];
	if (self) {
		UIColor *goodColor = [UIColor colorWithRed:228.0/255.0 green:188.0/255.0 blue:41.0/255.0 alpha:1.0];
		
		headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 0)];
		[headerView setAutoresizingMask:(UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight)];
		[headerView setContentMode:UIViewContentModeScaleAspectFit];

		ksHeader = [[UILabel alloc] initWithFrame:CGRectMake(0, headerView.frame.size.height/2, headerView.frame.size.width, 100)];
		ksHeader.textAlignment = NSTextAlignmentCenter;
		ksHeader.font = [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:32.f];
		ksHeader.text = @"KeyShortcut Pro";
		ksHeader.textColor = goodColor;
		[headerView addSubview:ksHeader];
		
		ksHeaderSub = [[UILabel alloc] initWithFrame:CGRectMake(0, headerView.frame.size.height/2+60, headerView.frame.size.width, 50)];
		ksHeaderSub.textAlignment = NSTextAlignmentCenter;
		ksHeaderSub.font = [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:12.f];
		ksHeaderSub.text = @"Smart shortcuts for a better typing experience";
		ksHeaderSub.textColor = [UIColor grayColor];
		[headerView addSubview:ksHeaderSub];
		
		[self addSubview:headerView];
		
		UILabel *ksHeaderEaster = [[UILabel alloc] initWithFrame:CGRectMake(0, -300, headerView.frame.size.width, 100)];
		ksHeaderEaster.textAlignment = NSTextAlignmentCenter;
		ksHeaderEaster.font = [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:15.f];
		ksHeaderEaster.text = @"What are you doing here?";
		[self addSubview:ksHeaderEaster];
	}
	return self;
}

-(CGFloat)preferredHeightForWidth:(CGFloat)width {
	return 100;
}
@end