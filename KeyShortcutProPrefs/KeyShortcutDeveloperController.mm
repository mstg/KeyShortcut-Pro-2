//
//  KeyShortcutDeveloperController.m
//  KeyShortcut-Pro
//
//  Created by Mustafa Gezen on 10.08.2015.
//  Copyright © 2015 Mustafa Gezen. All rights reserved.
//

#import <Preferences/Preferences.h>

@interface KeyShortcutDeveloperController: PSListController
@end

@implementation KeyShortcutDeveloperController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [self loadSpecifiersFromPlistName:@"KeyShortcutDeveloper" target:self];
	}
	return _specifiers;
}

- (void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];
	UIColor *goodColor = [UIColor colorWithRed:228.0/255.0 green:188.0/255.0 blue:41.0/255.0 alpha:1.0];
	self.view.tintColor = goodColor;
	self.navigationController.navigationBar.tintColor = goodColor;
	self.navigationController.navigationController.navigationBar.tintColor = goodColor;
}

- (void)openTwitter:(PSSpecifier *)specifier {
	NSString *screenName = [specifier.properties[@"handle"] substringFromIndex:1];
	if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"tweetbot:"]])
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tweetbot:///user_profile/%@", screenName]]];
	else if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"twitterrific:"]])
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"twitterrific:///profile?screen_name=%@", screenName]]];
	else if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"tweetings:"]])
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tweetings:///user?screen_name=%@", screenName]]];
	else if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"twitter:"]])
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"twitter://user?screen_name=%@", screenName]]];
	else
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"https://mobile.twitter.com/%@", screenName]]];
}

- (void)openReddit:(PSSpecifier *)specifier {
	NSString *screenName = specifier.properties[@"handle"];
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:[@"https://www.reddit.com" stringByAppendingString:screenName]]];
}

- (void)openGitHub:(PSSpecifier *)specifier {
	NSString *screenName = specifier.properties[@"handle"];
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:[@"https://github.com/" stringByAppendingString:screenName]]];
}
@end

// vim:ft=objc
