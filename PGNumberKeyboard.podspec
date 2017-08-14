Pod::Spec.new do |s|
  s.name         = "PGNumberKeyboard"
  s.version      = "1.0.4"
  s.summary      = "一款非常简单漂亮灵活的自定义数字键盘."
  s.homepage     = "https://github.com/xiaozhuxiong121/PGNumberKeyboard"
  s.license      = "MIT"
  s.author       = { "piggybear" => "piggybear_net@163.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/xiaozhuxiong121/PGNumberKeyboard.git", :tag => s.version }
  s.source_files = "PGNumberKeyboard", "PGNumberKeyboard/**/*.{h,m}"
  s.resource     = 'PGNumberKeyboard/keyboardDelete.png'
  s.frameworks   = "UIKit"
  s.requires_arc = true
end


 
