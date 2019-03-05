#
# Be sure to run `pod lib lint JGameSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'JGameSDK'
  s.version          = '1.1'
  s.summary          = '19youxi iOS SDK'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/wishWinds/JGameSDK'
  s.license          = { :type => 'MIT'}
  s.author           = { 'john' => 'john.hi.gm@gmail.com' }
  s.source           = { :http => 'http://xyz.fancyjohn.com:50001/jgamesdk/JGameSDK-1.1.zip'}

  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.vendored_frameworks = 'JGameSDK.framework'
  s.resources = 'JGameSDK.framework/Versions/A/Resources/JGameSDK.bundle'

  s.frameworks = 'UIKit', 'WebKit'
  s.dependency 'AFNetworking', '~> 3.0'
  s.dependency 'AlipaySDK-iOS'
  s.dependency 'Masonry'
  s.dependency 'SVProgressHUD'
end
