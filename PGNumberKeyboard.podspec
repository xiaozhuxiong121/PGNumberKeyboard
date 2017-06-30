Pod::Spec.new do |s|
  s.name         = "PGNumberKeyboard"
  s.version      = "1.0.1"
  s.summary      = "将dataSource分离出去，减小TableViewController的体积。"
  s.homepage     = "https://github.com/xiaozhuxiong121/PGBaseDataSource"
  s.license      = "MIT"
  s.author       = { "piggybear" => "piggybear_net@163.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/xiaozhuxiong121/PGNumberKeyboard.git", :tag => s.version }
  s.source_files = "PGNumberKeyboard", "PGNumberKeyboard/**/*.{h,m}"
  s.frameworks   = "UIKit"
  s.requires_arc = true
end
 
