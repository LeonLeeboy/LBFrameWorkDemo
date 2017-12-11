Pod::Spec.new do |s|
  s.name = "LBFrameWorkDemo"
  s.version = "1.0.0"
  s.summary = "this is a demo ene"
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"Leon"=>"1103765636@qq.com"}
  s.homepage = "https://github.com/LeonLeeboy/LBFrameWorkDemo"
  s.description = "TODO: let me know how to use framework."
  s.frameworks = "UIKit"
  s.source = { :path => '.' }

  s.ios.deployment_target    = '8.0'
  s.ios.vendored_framework   = 'ios/LBFrameWorkDemo.framework'
end
