## KeyShortcut-Pro-2
##### Note: Legacy code from 2014-2015
---

## Structure
```
KeyShortcut-Pro +-----------> Main source code

KeyShortcutProPrefs +-------> PreferenceBundle source code

KeyShortcutSpringboard +----> SpringBoard listener to respring on newer iOS versions

sdks +----------------------> Included sdks for compatibility

ZKSwizzle +-----------------> Swizzling library from Alex Zielenski

staging +-------------------> Debian package structure
```
---

## Requirements
* Xcode
* dpkg-deb or dm.pl


## Build
```
Build release in Xcode or with xcodebuild cli tool
```

## Install
```
ks.sh - all components
prefs.sh - only prefs
expects ssh over usb running on port 2222

example usage:
./ks.sh "DEB_NAME (from xcode build)"

or

./prefs.sh "DEB_NAME"
```
---
<br />

<img src="http://i.imgur.com/RVudkqy.png" />

<h5>
  Keyshortcut Pro allows you to use smart shortcuts for a better typing
  experience on your iOS device
</h5>
<h5>
  KeyShortcut Pro allows you to use variety of shortcuts, everything from
  selecting all with a tiny longhold on shortcut key to profiles to insert text.
  Below can you see which type of shortcuts you can use.
</h5>

<ul>
  <li>Select all</li>
  <li>Copy</li>
  <li>Cut</li>
  <li>Paste</li>
  <li>Undo</li>
  <li>Redo</li>
  <li>Select last word</li>
  <li>Beginning of document</li>
  <li>End of document</li>
  <li>Capitalize last word</li>
  <li>Last word to upper</li>
  <li>Last word to lower</li>
  <li>Delete last word</li>
  <li>Dismiss keyboard</li>
</ul>

<h5>
  In additions to action shortcuts you can also customize profiles for keys
  below:
</h5>
<ul>
  <li>1</li>
  <li>2</li>
  <li>3</li>
  <li>4</li>
  <li>5</li>
  <li>6</li>
  <li>7</li>
  <li>8</li>
  <li>9</li>
  <li>0</li>
  <li>@</li>
  <li>Space</li>
</ul>

<img width="132" height="234" src="http://i.imgur.com/BWJEQYm.jpg" />
<img width="132" height="234" src="http://i.imgur.com/5V2QNUF.jpg" />

  <h5>In addition to shortcuts there is also many exciting features.</h5>
  <strong>Smart shift:</strong><br /> With smart shift, shift will cycle through
  all lower, normal and all upper case of selected text<br />
  <br />
  <strong>Remote clipboard:</strong><br /> With remote clipboard, you can run
  the ksremote server found on
  <a href="https://github.com/mstg/ks_remote" target="_new">mstg/ks_remote</a>
  and configure KeyShortcut settings on your device accordingly to paste text
  that is set on a remote device<br />
</p>
