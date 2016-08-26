#
#  Be sure to run `pod spec lint ZHIconFontKit.podspec' to ensure this is a
#  pod trunk push ZHIconFontKit.podspec
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "ZHIconFontKit"
  s.version      = "0.1.1"
  s.summary      = "Using icon font in Swift"
  s.homepage     = "https://github.com/lacklock/ZHIconFontKit"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "卓同学" => "lacklock@gmail.com" }
  s.social_media_url   = "http://weibo.com/1926303682"
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/lacklock/ZHIconFontKit.git", :tag => "#{s.version}" }
  s.source_files = "IconFontKit/*.swift"
  #s.exclude_files = "Classes/Exclude"

end
