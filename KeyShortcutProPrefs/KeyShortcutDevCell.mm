//
//  KeyShortcutDevCell.m
//  KeyShortcut-Pro
//
//  Created by Mustafa Gezen on 10.08.2015.
//  Copyright © 2015 Mustafa Gezen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Preferences/PSTableCell.h>
#import <Preferences/PSSpecifier.h>
#import "dev.h"

@interface KeyShortcutDevCell : PSTableCell {
	UIImageView *_background;
	UILabel *devName;
	UILabel *devRealName;
	UILabel *jobSubtitle;
}
@end

@implementation KeyShortcutDevCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier specifier:(PSSpecifier *)specifier {
	if((self = [super initWithStyle:style reuseIdentifier:reuseIdentifier specifier:specifier])){
		NSDictionary *properties = specifier.properties;
		BOOL isBig = [properties[@"height"] intValue] == 100;
		UIImage *bkIm = [UIImage imageWithData:mustafaData];
		_background = [[UIImageView alloc] initWithImage:bkIm];
		_background.frame = isBig ? CGRectMake(10, 15, 70, 70) : CGRectMake(10, 10, 40, 40);
		_background.clipsToBounds = YES;
		_background.layer.cornerRadius = _background.frame.size.height / 2;
		_background.layer.borderWidth = 0;
		[self addSubview:_background];
		
		CGRect frame = [self frame];
		
		CGRect devNameFrame = isBig ? CGRectMake(frame.origin.x + 95, frame.origin.y + 10, frame.size.width, frame.size.height) : CGRectMake(frame.origin.x + 60, frame.origin.y - 5, frame.size.width, frame.size.height);
		devName = [[UILabel alloc] initWithFrame:devNameFrame];
		[devName setText:properties[@"nick"]];
		[devName setBackgroundColor:[UIColor clearColor]];
		[devName setTextColor:[UIColor blackColor]];
		if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
			[devName setFont:[UIFont fontWithName:@"Helvetica Light" size:30]];
		else if (isBig)
			[devName setFont:[UIFont fontWithName:@"Helvetica Light" size:23]];
		else
			[devName setFont:[UIFont fontWithName:@"Helvetica Light" size:18]];
		
		[self addSubview:devName];
		
		CGRect devRealNameFrame = isBig ? CGRectMake(frame.origin.x + 95, frame.origin.y + 32, frame.size.width, frame.size.height) : CGRectMake(frame.origin.x + 60, frame.origin.y + 12, frame.size.width, frame.size.height);
		devRealName = [[UILabel alloc] initWithFrame:devRealNameFrame];
		[devRealName setText:properties[@"name"]];
		[devRealName setTextColor:[UIColor grayColor]];
		[devRealName setBackgroundColor:[UIColor clearColor]];
		[devRealName setFont:[UIFont fontWithName:@"Helvetica Light" size: isBig ? 15 : 12]];
		
		[self addSubview:devRealName];
	}
	return self;
}

@end