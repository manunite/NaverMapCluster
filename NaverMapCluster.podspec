#
# Be sure to run `pod lib lint NaverMapCluster.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NaverMapCluster'
  s.version          = '0.1.2'
  s.summary          = 'iOS 네이버 지도에서 클러스터링 기능을 사용할수있는 라이브러리.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
네이버지도 API에서 클러스터링을 사용할수 있습니다. / You can use clustering on the iOS Naver map.
                       DESC

  s.homepage         = 'https://github.com/manunite/NaverMapCluster'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'heogj123' => 'heogj123@gmail.co.kr' }
  s.source           = { :git => 'https://github.com/manunite/NaverMapCluster.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.vendored_frameworks = "NaverMapClusterFramework.xcframework"

  s.platform = :ios
  s.swift_version = "5.0"
  s.ios.deployment_target  = '12.0'

  s.dependency   'NMapsMap'
  s.dependency   'RxSwift'
  s.dependency   'RxCocoa'
  s.dependency   'RxRelay'
  s.dependency   'RxBlocking'
end
