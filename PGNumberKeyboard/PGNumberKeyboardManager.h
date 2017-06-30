//
//  PGNumberKeyboardManager.h
//  InitKeyBoard_dome
//
//  Created by piggybear on 2017/6/29.
//  Copyright © 2017年 lf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PGNumberKeyboard.h"

@protocol PGNumberKeyboardManagerDelegate <NSObject>
@optional
- (void)editChanage:(UITextField *)textField;
@end

@interface PGNumberKeyboardManager : NSObject
@property (nonatomic, strong) id<PGNumberKeyboardManagerDelegate> delegate;
@property (nonatomic, strong) UITextField *textField;
@property (nonatomic, strong) PGNumberKeyboard *numberKeyboard;
- (void)reloadInputViews;
@end
