#
# Be sure to run `pod lib lint UITestsSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UITestsSDK'
  s.version          = '0.1.0'
  s.summary          = 'A shared UI Tests framework.'
  s.description      = <<-DESC
A shared UI Tests framework used to do automation tests.
                       DESC

  s.homepage         = 'https://github.com/prasadpamidi/UITestsSDK'
  s.license          = { :type => 'TBD', :text => 'TBD' }
  s.author           = { 'Prasad Pamidi' => 'prasadpamidi@gmail.com' }
  s.source           = { :git => 'https://github.com/prasadpamidi/UITestsSDK.git', :tag => 'v' + s.version.to_s }

  s.ios.deployment_target = '12.0'
  s.swift_version = '5.0'

  s.source_files = 'UITestsSDK/Classes/**/*'

  s.dependency 'CocoapodSubspecSample'

  ## Pod install is only going through, if all subspecs in the `Podfile` matches the subspec deps in the dependent podspec
  #s.dependency  'CocoapodSubspecSample/FeatureTwo'

  s.xcconfig = {
    "SWIFT_OBJC_INTERFACE_HEADER_NAME" => "",
    "SWIFT_PRECOMPILE_BRIDGING_HEADER" => "NO"
  }
end
