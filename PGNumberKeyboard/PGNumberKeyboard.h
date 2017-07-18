//
//  PGNumberKeyboard.h
//  edetection
//
//  Created by piggybear on 2017/6/29.
//  Copyright © 2017年 piggybear. All rights reserved.
//  GitHub Address: https://github.com/xiaozhuxiong121/PGNumberKeyboard

#import <UIKit/UIKit.h>

@protocol PGNumberKeyboardDelegate <NSObject>
@optional
- (void)editChanage:(id)sender;
@end


@interface PGNumberKeyboard : UIView
@property (nonatomic, weak) id<PGNumberKeyboardDelegate> delegate;

/**
 此属性默认为true
 如果不需要规范小数或负数的正确性，可以将此属性设置为false
 如果此属性设置为false，则可以输入任何类型的数字，比如：23-45.4545 这种不规范的数字，如果设置为ture则不会输入这种不规范的数字
 */
@property (nonatomic, assign) BOOL verify;
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

- (instancetype)initWithTextField:(UITextField *)textField;
- (instancetype)initWithTextView:(UITextView *)textView;

/**
 切换系统输入法
 */
- (void)reloadInputViews;
@end
