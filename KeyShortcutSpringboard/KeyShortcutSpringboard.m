//
//  KeyShortcutSpringboard.m
//  KeyShortcutSpringboard
//
//  Created by Mustafa Gezen on 07.08.2016.
//  Copyright © 2016 Mustafa Gezen. All rights reserved.
//

#import "KeyShortcutSpringboard.h"
#import "fakelogos.h"
#import <objc/runtime.h>
#include "common.h"
#import <UIKit/UIApplication.h>

@interface FBSSystemService
+(id)sharedService;
-(void)sendActions:(id)arg1 withResult:(/*^block*/id)arg2 ;
@end

@interface SBSRelaunchAction
+(id)actionWithReason:(id)arg1 options:(unsigned long long)arg2 targetURL:(id)arg3 ;
@end

@interface SpringBoard : NSObject
- (void)_relaunchSpringBoardNow;
@end

static void respring() {
    if(IS_IOS_OR_NEWER(iOS_9_2)) {
        // Respring (with fade!)
        FBSSystemService *service = [KSClass("FBSSystemService") sharedService];
        NSSet *actions = [NSSet setWithObject:[KSClass("SBSRelaunchAction") actionWithReason:@"RestartRenderServer" options:4 targetURL:nil]];
        [service sendActions:actions withResult:nil];
    } else {
        // Respring
        [(SpringBoard *)[UIApplication sharedApplication] _relaunchSpringBoardNow];
    }
}

ctor {
    CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)respring,CFSTR("org.thebigboss.keyshortcutpro.respring"), NULL, CFNotificationSuspensionBehaviorDeliverImmediately);
}
