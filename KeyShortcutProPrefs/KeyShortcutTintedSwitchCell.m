//
//  KeyShortcutTintedSwitchCell.m
//  KeyShortcut-Pro
//
//  Created by Mustafa Gezen on 11.08.2015.
//  Copyright © 2015 Mustafa Gezen. All rights reserved.
//

#import <Preferences/PSSwitchTableCell.h>

@interface KeyShortcutTintedSwitchCell : PSSwitchTableCell {
	UIColor *_goodColor;
}
@end

@implementation KeyShortcutTintedSwitchCell

-(id)initWithStyle:(UITableViewCellStyle)arg1 reuseIdentifier:(id)arg2 specifier:(id)arg3 {
	self = [super initWithStyle:arg1 reuseIdentifier:arg2 specifier:arg3];
	if (self) {
		_goodColor = [UIColor colorWithRed:228.0/255.0 green:188.0/255.0 blue:41.0/255.0 alpha:1.0];
		[((UISwitch *)[self control]) setTintColor:_goodColor];
		[((UISwitch *)[self control]) setOnTintColor:_goodColor];
	}
	return self;
}

-(void)layoutSubviews {
	[super layoutSubviews];
	self.textLabel.textColor = _goodColor;
}

@end
