//
//  KeyShortcut_Pro.h
//  KeyShortcut-Pro
//
//  Created by Mustafa Gezen on 30.07.2015.
//  Copyright © 2015 Mustafa Gezen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define kStateAllCaps 8
#define kStateNormal 36
#define kStateNormal8 32
#define kStateAllLow 16
#define kStateAllLow8 2

@protocol UITextInputTraits_Private <NSObject,UITextInputTraits>
@property (assign,nonatomic) CFCharacterSetRef textTrimmingSet;
@property (assign,nonatomic) unsigned long long insertionPointWidth;
@property (assign,nonatomic) int textLoupeVisibility;
@property (assign,nonatomic) int textSelectionBehavior;
@property (assign,nonatomic) id textSuggestionDelegate;
@property (assign,nonatomic) BOOL isSingleLineDocument;
@property (assign,nonatomic) BOOL contentsIsSingleValue;
@property (assign,nonatomic) BOOL acceptsEmoji;
@property (assign,nonatomic) BOOL forceEnableDictation;
@property (assign,nonatomic) int emptyContentReturnKeyType;
@property (assign,nonatomic) BOOL returnKeyGoesToNextResponder;
@property (assign,nonatomic) BOOL acceptsFloatingKeyboard;
@property (assign,nonatomic) BOOL acceptsSplitKeyboard;
@property (assign,nonatomic) BOOL displaySecureTextUsingPlainText;
@property (assign,nonatomic) BOOL learnsCorrections;
@property (assign,nonatomic) int shortcutConversionType;
@property (assign,nonatomic) BOOL suppressReturnKeyStyling;
@property (assign,nonatomic) BOOL useInterfaceLanguageForLocalization;
@property (assign,nonatomic) BOOL deferBecomingResponder;
@property (assign,nonatomic) BOOL enablesReturnKeyOnNonWhiteSpaceContent;
@property (assign,nonatomic) BOOL disablePrediction;
@optional
-(int)textSelectionBehavior;
-(BOOL)displaySecureTextUsingPlainText;
-(CFCharacterSetRef)textTrimmingSet;
-(BOOL)acceptsSplitKeyboard;
-(int)shortcutConversionType;
-(BOOL)acceptsFloatingKeyboard;
-(BOOL)disablePrediction;
-(BOOL)learnsCorrections;
-(void)setLearnsCorrections:(BOOL)arg1;
-(void)setTextTrimmingSet:(CFCharacterSetRef)arg1;
-(unsigned long long)insertionPointWidth;
-(void)setInsertionPointWidth:(unsigned long long)arg1;
-(int)textLoupeVisibility;
-(void)setTextLoupeVisibility:(int)arg1;
-(void)setTextSelectionBehavior:(int)arg1;
-(id)textSuggestionDelegate;
-(void)setTextSuggestionDelegate:(id)arg1;
-(BOOL)isSingleLineDocument;
-(void)setIsSingleLineDocument:(BOOL)arg1;
-(BOOL)contentsIsSingleValue;
-(void)setContentsIsSingleValue:(BOOL)arg1;
-(BOOL)acceptsEmoji;
-(void)setAcceptsEmoji:(BOOL)arg1;
-(BOOL)forceEnableDictation;
-(void)setForceEnableDictation:(BOOL)arg1;
-(int)emptyContentReturnKeyType;
-(void)setEmptyContentReturnKeyType:(int)arg1;
-(BOOL)returnKeyGoesToNextResponder;
-(void)setReturnKeyGoesToNextResponder:(BOOL)arg1;
-(void)setAcceptsFloatingKeyboard:(BOOL)arg1;
-(void)setAcceptsSplitKeyboard:(BOOL)arg1;
-(void)setDisplaySecureTextUsingPlainText:(BOOL)arg1;
-(void)setShortcutConversionType:(int)arg1;
-(BOOL)suppressReturnKeyStyling;
-(void)setSuppressReturnKeyStyling:(BOOL)arg1;
-(BOOL)useInterfaceLanguageForLocalization;
-(void)setUseInterfaceLanguageForLocalization:(BOOL)arg1;
-(BOOL)deferBecomingResponder;
-(void)setDeferBecomingResponder:(BOOL)arg1;
-(BOOL)enablesReturnKeyOnNonWhiteSpaceContent;
-(void)setEnablesReturnKeyOnNonWhiteSpaceContent:(BOOL)arg1;
-(void)setDisablePrediction:(BOOL)arg1;

@required
-(void)takeTraitsFrom:(id)arg1;

@end


@protocol UITextInputPrivate <UITextInput,UITextInputTokenizer,UITextInputTraits_Private>
@property (nonatomic,readonly) UITextInteractionAssistant * interactionAssistant;
@property (assign,nonatomic) long long selectionGranularity;
@optional
-(void)replaceRangeWithTextWithoutClosingTyping:(id)arg1 replacementText:(id)arg2;
-(void)insertDictationResult:(id)arg1 withCorrectionIdentifier:(id)arg2;
-(id)rangeWithTextAlternatives:(id*)arg1 atPosition:(id)arg2;
-(id)metadataDictionariesForDictationResults;
-(id)textColorForCaretSelection;
-(long long)selectionGranularity;
-(void)setSelectionGranularity:(long long)arg1;
-(id)automaticallySelectedOverlay;
-(void)setBottomBufferHeight:(double)arg1;
-(BOOL)requiresKeyEvents;
-(void)handleKeyWebEvent:(id)arg1;
-(void)streamingDictationDidBegin;
-(void)streamingDictationDidEnd;
-(void)acceptedAutoFillWord:(id)arg1;
-(BOOL)isAutoFillMode;
-(double)_delayUntilRepeatInsertText:(id)arg1;
-(BOOL)_shouldRepeatInsertText:(id)arg1;
-(id)fontForCaretSelection;
-(void)_insertAttributedTextWithoutClosingTyping:(id)arg1;

@required
-(UITextInteractionAssistant *)interactionAssistant;
-(id)textInputTraits;
-(void)selectAll;
-(NSRange*)selectionRange;
-(BOOL)hasSelection;
-(BOOL)hasContent;

@end

@protocol UIKeyboardInput <NSObject>
@optional
-(BOOL)keyboardInput:(id)arg1 shouldInsertText:(id)arg2 isMarkedText:(BOOL)arg3;
-(BOOL)keyboardInput:(id)arg1 shouldReplaceTextInRange:(NSRange)arg2 replacementText:(id)arg3;
-(BOOL)keyboardInputShouldDelete:(id)arg1;
-(BOOL)keyboardInputChanged:(id)arg1;
-(void)keyboardInputChangedSelection:(id)arg1;
@end

@interface UIKBTree : NSObject <NSCopying>
- (BOOL)forceMultitap;
-(id)representedString;
- (BOOL)isShiftKeyPlaneChooser;
- (BOOL)isShiftKeyplane;
- (int)state;
@end

@interface UIKeyboardLayoutStar : UIView
@property (nonatomic,retain) UIKBTree * activeKey;
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event;
- (id)keyHitTest:(CGPoint)arg1;
- (void)setShift:(BOOL)arg1;
@end

@interface UIKeyboardImpl : UIView
+ (UIKeyboardImpl*)activeInstance;
- (BOOL)isLongPress;
- (void)handleDelete;
- (void)insertText:(id)text;
- (void)clearAnimations;
- (void)clearTransientState;
- (void)setCaretBlinks:(BOOL)arg1;
- (void)deleteFromInput;
- (void)dismissKeyboard;
@property (readonly, assign, nonatomic) UIResponder <UITextInputPrivate> *privateInputDelegate;
@property (readonly, assign, nonatomic) UIResponder <UITextInput> *inputDelegate;
@end

@interface UIKBShape : NSObject
@end

@interface UIKBKey : UIKBShape
@property(copy) NSString * representedString;
@end

@interface UIResponder (loljk)
-(void)_setSelectedTextRange:(id)arg1 withAffinityDownstream:(BOOL)arg2;
- (NSRange)_nsrangeForTextRange:(UITextRange*)arg1;
@end

@interface KeyShortcutPro : NSObject
+ (KeyShortcutPro*)sharedInstance;
- (void)reloadSettings;
@end

id delegate;
UIKeyboardImpl *impl;
NSMutableDictionary *prefs;
NSString *copiedtext;
NSString *selectedString;
NSString *key;
NSString *selectAllKey;
NSString *copyKey;
NSString *cutKey;
NSString *pasteKey;
NSString *undoKey;
NSString *redoKey;
NSString *selectLastKey;
NSString *beginningKey;
NSString *endKey;
NSString *firstHigherKey;
NSString *lastUpperKey;
NSString *lastLowerKey;
NSString *deleteLastKey;
NSString *dismissKey;
NSString *remoteKey;
NSString *remoteURL;
NSString *oneKey;
NSString *twoKey;
NSString *threeKey;
NSString *fourKey;
NSString *fiveKey;
NSString *sixKey;
NSString *sevenKey;
NSString *eightKey;
NSString *nineKey;
NSString *zeroKey;
NSString *atKey;
NSString *spaceKey;
NSArray *keys;
NSString *normalString;