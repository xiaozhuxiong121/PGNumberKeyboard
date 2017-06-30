//
//  PGNumberKeyboardManager.m
//  InitKeyBoard_dome
//
//  Created by piggybear on 2017/6/29.
//  Copyright © 2017年 lf. All rights reserved.
//

#import "PGNumberKeyboardManager.h"

@interface PGNumberKeyboardManager()<PGNumberKeyboardDelegate>

@end

@implementation PGNumberKeyboardManager

- (void)setup {
    if ([_delegate respondsToSelector:@selector(editChanage:)]) {
        [_delegate editChanage:self.textField];
    }
}

#pragma mark - PGNumberKeyboardDelegate

- (void)numberKeyBoard:(NSInteger)number {
    NSString *str = self.textField.text;
    if ([str isEqualToString:@"-0"] || [str isEqualToString:@"0"]) {
        return;
    }
    self.textField.text = [NSString stringWithFormat:@"%@%ld",str,(long)number];
    [self setup];
}

- (void)cancelKeyBoard {
    NSMutableString *muStr = [[NSMutableString alloc] initWithString:self.textField.text];
    if (muStr.length <= 0) {
        return;
    }
    [muStr deleteCharactersInRange:NSMakeRange([muStr length] - 1, 1)];
    self.textField.text = muStr;
    [self setup];
}

-(void)periodKeyBoard{
    if ([self.textField.text isEqualToString:@""] || [self.textField.text isEqualToString:@"-"]) {
        return;
    }
    //判断当前时候存在一个点
    if ([self.textField.text rangeOfString:@"."].location == NSNotFound) {
        //输入中没有点
        NSMutableString  *mutableString=[[NSMutableString alloc]initWithFormat:@"%@%@",self.textField.text,@"."];
        self.textField.text = mutableString;
    }
    [self setup];
}

-(void)minusKeyBoard{
    if (self.textField.text.length) {
        return;
    }
    self.textField.text = @"-";
    [self setup];
}

-(void)finishKeyBoard{
    [self.textField resignFirstResponder];
}

#pragma mark - Setter

- (void)setTextField:(UITextField *)textField {
    _textField = textField;
    self.numberKeyboard = [[PGNumberKeyboard alloc]init];
    self.numberKeyboard.delegate = self;
    textField.inputView = self.numberKeyboard;
    [textField reloadInputViews];
}

- (void)reloadInputViews {
    self.textField.inputView = nil;
    [self.textField reloadInputViews];
}

@end
