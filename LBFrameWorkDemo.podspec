
Pod::Spec.new do |s|
  s.name             = 'LBFrameWorkDemo'
  s.version          = '1.0.0'
  s.summary          = 'this is a demo ene '

  s.description      = <<-DESC
                                TODO: let me know how to use framework.
                       DESC

  s.homepage         = 'https://github.com/LeonLeeboy/LBFrameWorkDemo'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Leon' => '1103765636@qq.com' }
  s.source           = { :git => 'https://github.com/LeonLeeboy/LBFrameWorkDemo.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = “LBFrameWorkDemo-1.0.0/ios/**/Headers/*”

  s.ios.vendored_frameworks = “LBFrameWorkDemo-1.0.0/ios/LBFrameWorkDemo.framework”

  s.framework = “UIKit”

  

end
