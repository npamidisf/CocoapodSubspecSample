#
# Be sure to run `pod lib lint CocoapodSubspecSample.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CocoapodSubspecSample'
  s.version          = '0.1.0'
  s.summary          = 'A short description of CocoapodSubspecSample.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/npamidi@salesforce.com/CocoapodSubspecSample'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'prasadpamidi@gmail.com' => 'prasadpamidi@gmail.com' }
  s.source           = { :git => 'https://github.com/prasadpamidi/CocoapodSubspecSample.git', :tag => s.version.to_s }
  s.ios.deployment_target = '12.0'
  s.swift_version = '5.0'

  s.default_subspecs = :none

  s.source_files = [
    'CocoapodSubspecSample/Core/Classes/**/*'
  ]

  s.resource_bundles = {
    'CocoapodSubspecSampleCoreBundle' => [
      'CocoapodSubspecSample/Core/Assets/*.png'
    ]
  }

  # subspec for the optional feature one
  s.subspec 'FeatureOne' do |subspec|
    subspec.source_files = 'CocoapodSubspecSample/FeatureOne/Classes/**/*'  
    subspec.resource_bundles = {
      'CocoapodSubspecSampleFeatureOneBundle' => ['CocoapodSubspecSample/FeatureOne/Assets/*.png']
    }
  end

   # subspec for the optional feature two
  s.subspec 'FeatureTwo' do |subspec|
    subspec.dependency 'CocoapodSubspecSample/FeatureOne'

    subspec.source_files = 'CocoapodSubspecSample/FeatureTwo/Classes/**/*'  
    subspec.resource_bundles = {
      'CocoapodSubspecSampleFeatureTwoBundle' => ['CocoapodSubspecSample/FeatureTwo/Assets/*.png']
    }
  end
end
