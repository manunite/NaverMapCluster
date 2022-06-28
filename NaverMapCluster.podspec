#
# Be sure to run `pod lib lint NaverMapCluster.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NaverMapCluster'
  s.version          = '0.1.0'
  s.summary          = 'A short description of NaverMapCluster.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/manunite/NaverMapCluster'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'heomm123@naver.com' => 'heogj123@gmail.co.kr' }
  s.source           = { :git => 'https://github.com/manunite/NaverMapCluster.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'
  s.vendored_frameworks = "NaverMapClusterFramework.xcframework"

  s.platform = :ios
  s.swift_version = "5.0"
  s.ios.deployment_target  = '15.5'

  s.dependency   'NMapsMap'
  s.dependency   'RxSwift'
  s.dependency   'RxCocoa'
  s.dependency   'RxRelay'
  s.dependency   'RxBlocking'
end
