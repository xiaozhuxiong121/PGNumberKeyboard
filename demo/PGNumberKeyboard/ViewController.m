//
//  ViewController.m
//  PGNumberKeyboard
//
//  Created by piggybear on 2017/6/30.
//  Copyright © 2017年 piggybear. All rights reserved.
//

#import "ViewController.h"
#import "PGNumberKeyboardManager.h"
#import "UIColor+Random.h"

@interface ViewController ()<PGNumberKeyboardManagerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField1;
@property (weak, nonatomic) IBOutlet UITextField *textField2;
@property (nonatomic, strong) PGNumberKeyboardManager *manager;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    {
        PGNumberKeyboardManager *manager = [[PGNumberKeyboardManager alloc]init];
        manager.delegate = self;
        manager.textField = self.textField1;
    }
    
    {
        self.manager = [[PGNumberKeyboardManager alloc]init];
        self.manager.delegate = self;
        self.manager.textField = self.textField2;
        [self setupColor];
    }
}

#pragma mark - PGNumberKeyboardManagerDelegate

- (void)editChanage:(UITextField *)textField {
    NSLog(@"text = %@\ttag = %ld", textField.text, textField.tag);
}

#pragma mark - custom method

- (void)setupColor {
    self.manager.numberKeyboard.backgroundColor = [UIColor RandomColor]; //修改键盘背景颜色
    self.manager.numberKeyboard.oneButton.backgroundColor = [UIColor RandomColor];
    self.manager.numberKeyboard.twoButton.backgroundColor = [UIColor RandomColor];
    self.manager.numberKeyboard.threeButton.backgroundColor = [UIColor RandomColor];
    self.manager.numberKeyboard.fourButton.backgroundColor = [UIColor RandomColor];
    self.manager.numberKeyboard.fiveButton.backgroundColor = [UIColor RandomColor];
    self.manager.numberKeyboard.sixButton.backgroundColor = [UIColor RandomColor];
    self.manager.numberKeyboard.sevenButton.backgroundColor = [UIColor RandomColor];
    self.manager.numberKeyboard.eightButton.backgroundColor = [UIColor RandomColor];
    self.manager.numberKeyboard.nineButton.backgroundColor = [UIColor RandomColor];
    self.manager.numberKeyboard.zeroButton.backgroundColor = [UIColor RandomColor];
    self.manager.numberKeyboard.minusButton.backgroundColor = [UIColor RandomColor];
    self.manager.numberKeyboard.dotButton.backgroundColor = [UIColor RandomColor];
    self.manager.numberKeyboard.confirmButton.backgroundColor = [UIColor RandomColor];
    self.manager.numberKeyboard.deleteButton.backgroundColor = [UIColor RandomColor];
}

- (IBAction)buttonHandler:(id)sender {
    [self setupColor];
}



@end
