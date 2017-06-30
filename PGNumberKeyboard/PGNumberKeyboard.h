//
//  PGNumberKeyboard.h
//  edetection
//
//  Created by piggybear on 2017/6/29.
//  Copyright © 2017年 piggybear. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PGNumberKeyboardDelegate <NSObject>
@required
- (void)numberKeyBoard:(NSInteger) number;
- (void)cancelKeyBoard;
- (void)finishKeyBoard;
- (void)periodKeyBoard;
- (void)minusKeyBoard;
@end


@interface PGNumberKeyboard : UIView
@property (nonatomic, strong) id<PGNumberKeyboardDelegate> delegate;

@property (nonatomic, weak) UIButton *deleteButton;
@property (nonatomic, weak) UIButton *confirmButton;
@property (nonatomic, weak) UIButton *dotButton;
@property (nonatomic, weak) UIButton *minusButton;
@property (nonatomic, weak) UIButton *zeroButton;
@property (nonatomic, weak) UIButton *oneButton;
@property (nonatomic, weak) UIButton *twoButton;
@property (nonatomic, weak) UIButton *threeButton;
@property (nonatomic, weak) UIButton *fourButton;
@property (nonatomic, weak) UIButton *fiveButton;
@property (nonatomic, weak) UIButton *sixButton;
@property (nonatomic, weak) UIButton *sevenButton;
@property (nonatomic, weak) UIButton *eightButton;
@property (nonatomic, weak) UIButton *nineButton;

@end
