# PGNumberKeyboard
一款非常简单漂亮灵活的自定义数字键盘

![](http://upload-images.jianshu.io/upload_images/1340308-51b3385a24317812.gif?imageMogr2/auto-orient/strip)

# Installation with CocoaPods
```
pod 'PGNumberKeyboard'
```

# Usage

```
[PGNumberKeyboardManager new].textField = yourTextField;
```
# Advanced Usage

```
PGNumberKeyboardManager *manager = [[PGNumberKeyboardManager alloc]init];
manager.delegate = self;
manager.textField = yourTextField;

#pragma mark - PGNumberKeyboardManagerDelegate

- (void)editChanage:(UITextField *)textField {
    NSLog(@"text = %@\ttag = %ld", textField.text, textField.tag);
}

```
# Overview
[http://www.jianshu.com/p/d6455564675e
](http://www.jianshu.com/p/d6455564675e)

