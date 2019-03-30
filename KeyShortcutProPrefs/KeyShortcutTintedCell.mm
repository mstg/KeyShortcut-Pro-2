//
//  KeyShortcutTintedEditText.m
//  KeyShortcut-Pro
//
//  Created by Mustafa Gezen on 10.08.2015.
//  Copyright © 2015 Mustafa Gezen. All rights reserved.
//

#import <Preferences/Preferences.h>

@interface KeyShortcutTintedCell : PSTableCell
@end

@implementation KeyShortcutTintedCell
- (void)layoutSubviews {
	[super layoutSubviews];
	UIColor *goodColor = [UIColor colorWithRed:228.0/255.0 green:188.0/255.0 blue:41.0/255.0 alpha:1.0];
	self.textLabel.textColor = goodColor;
	self.detailTextLabel.textColor = goodColor;
}
@end