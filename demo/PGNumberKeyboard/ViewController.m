//
//  ViewController.m
//  PGNumberKeyboard
//
//  Created by piggybear on 2017/6/30.
//  Copyright © 2017年 piggybear. All rights reserved.
//

#import "ViewController.h"
#import <PGNumberKeyboard/PGNumberKeyboard.h>
#import "UIColor+Random.h"

@interface ViewController ()<PGNumberKeyboardDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField1;
@property (weak, nonatomic) IBOutlet UITextField *textField2;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@property (nonatomic, weak) PGNumberKeyboard *keyboard;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    {
        PGNumberKeyboard *keyboard = [[PGNumberKeyboard alloc]initWithTextField:self.textField1];
        keyboard.delegate = self;
        self.textField1.inputView = keyboard;
    }
    
    {
        PGNumberKeyboard *keyboard = [[PGNumberKeyboard alloc]initWithTextField:self.textField2];
        keyboard.delegate = self;
        self.textField2.inputView = keyboard;
        self.keyboard = keyboard;
        [self setupColor];
    }
    
    PGNumberKeyboard *keyboard = [[PGNumberKeyboard alloc]initWithTextView:self.textView];
    keyboard.delegate = self;
    self.textView.inputView = keyboard;
}

#pragma mark - PGNumberKeyboardDelegate

- (void)editChanage:(id)sender {
    if ([sender isKindOfClass:[UITextField class]]) {
        UITextField *textField = sender;
        NSLog(@"text = %@\ttag = %ld", textField.text, textField.tag);
        return;
    }
    UITextView *textView = sender;
    NSLog(@"text = %@\ttag = %ld", textView.text, textView.tag);
    
}

#pragma mark - custom method

- (void)setupColor {
    self.keyboard.backgroundColor = [UIColor RandomColor]; //修改键盘背景颜色
    self.keyboard.oneButton.backgroundColor = [UIColor RandomColor];
    self.keyboard.twoButton.backgroundColor = [UIColor RandomColor];
    self.keyboard.threeButton.backgroundColor = [UIColor RandomColor];
    self.keyboard.fourButton.backgroundColor = [UIColor RandomColor];
    self.keyboard.fiveButton.backgroundColor = [UIColor RandomColor];
    self.keyboard.sixButton.backgroundColor = [UIColor RandomColor];
    self.keyboard.sevenButton.backgroundColor = [UIColor RandomColor];
    self.keyboard.eightButton.backgroundColor = [UIColor RandomColor];
    self.keyboard.nineButton.backgroundColor = [UIColor RandomColor];
    self.keyboard.zeroButton.backgroundColor = [UIColor RandomColor];
    self.keyboard.minusButton.backgroundColor = [UIColor RandomColor];
    self.keyboard.dotButton.backgroundColor = [UIColor RandomColor];
    self.keyboard.confirmButton.backgroundColor = [UIColor RandomColor];
    self.keyboard.deleteButton.backgroundColor = [UIColor RandomColor];
}

- (IBAction)buttonHandler:(id)sender {
    [self setupColor];
}


@end
