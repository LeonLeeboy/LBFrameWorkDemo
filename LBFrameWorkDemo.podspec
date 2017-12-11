#
# Be sure to run `pod lib lint LBFrameWorkDemo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LBFrameWorkDemo'
  s.version          = '1.0.0'
  s.summary          = 'this is a demo ene '

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                                TODO: let me know how to use framework.
                       DESC

  s.homepage         = 'https://github.com/LeonLeeboy/LBFrameWorkDemo'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Leon' => '1103765636@qq.com' }
  s.source           = { :git => 'https://github.com/LeonLeeboy/LBFrameWorkDemo.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'LBFrameWorkDemo/Classes/**/*'

    s.frameworks = 'UIKit'

end
