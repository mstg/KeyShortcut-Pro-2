#!/bin/sh

#  prefs.sh
#  KeyShortcut-Pro
#
#  Created by Mustafa Gezen on 10.08.2015.
#  Copyright © 2015 Mustafa Gezen. All rights reserved.
find staging/ -name '*.DS_Store' -type f -delete
DEBNAME="$1"
dpkg-deb -Zgzip -b staging/ $DEBNAME
scp -P2222 $DEBNAME root@127.0.0.1:/var/mobile/Downloads/$DEBNAME
ssh -p2222 root@127.0.0.1 "killall Cydia; dpkg -i /var/mobile/Downloads/$DEBNAME; killall Preferences; sleep 0.1; sblaunch com.apple.Preferences"
