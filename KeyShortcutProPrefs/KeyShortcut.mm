/* Created by Mustafa Gezen on 06.05.2014 */
#import <Preferences/Preferences.h>
#import <objc/runtime.h>
#include "common.h"

@interface FBSSystemService
+(id)sharedService;
-(void)sendActions:(id)arg1 withResult:(/*^block*/id)arg2 ;
@end

@interface SBSRelaunchAction
+(id)actionWithReason:(id)arg1 options:(unsigned long long)arg2 targetURL:(id)arg3 ;
@end

@interface KeyShortcutListController: PSListController<UIAlertViewDelegate> {
	UIView *_selfView;
	UINavigationController *_nav;
}
@end

@interface SpringBoard : NSObject
- (void)_relaunchSpringBoardNow;
@end

@implementation KeyShortcutListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [self loadSpecifiersFromPlistName:@"KeyShortcut" target:self];
	}
	return _specifiers;
}

- (void)respring {
	UIAlertView *confirmR =[[UIAlertView alloc ] initWithTitle:@"Respring" message:@"Are you sure you want to respring?" delegate:self cancelButtonTitle:@"No" otherButtonTitles: nil];
	[confirmR addButtonWithTitle:@"Yes"];
	[confirmR show];
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
	if(buttonIndex == 1) {
        CFNotificationCenterPostNotification(CFNotificationCenterGetDarwinNotifyCenter(), CFSTR("org.thebigboss.keyshortcutpro.respring"), NULL, NULL, true);
	}
}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	UIColor *goodColor = [UIColor colorWithRed:228.0/255.0 green:188.0/255.0 blue:41.0/255.0 alpha:1.0];
	self.view.tintColor = goodColor;
	self.navigationController.navigationBar.tintColor = goodColor;
	self.navigationController.navigationController.navigationBar.tintColor = goodColor;
	_selfView = self.view;
	_nav = self.navigationController;
}

- (void)viewDidDisappear:(BOOL)animated {
    KSDebugLog(@"disappear");
	[super viewDidDisappear:animated];
	_selfView.tintColor = nil;
	_nav.navigationBar.tintColor = nil;
	_nav.navigationController.navigationBar.tintColor = nil;
}
@end

// vim:ft=objc
