platform :ios, '12.0'

workspace 'Example/CocoapodSubspecSample'
project 'Example/CocoapodSubspecSample.xcodeproj'

def dev_pods
  pod 'CocoapodSubspecSample', :path => 'CocoapodSubspecSample.podspec'
  pod 'CocoapodSubspecSample/FeatureTwo', :path => 'CocoapodSubspecSample.podspec'
end

def eauitestsdk_remote_pod
  pod 'EAUITestsSDK', :git => 'https://git.soma.salesforce.com/WaveMobile/EAUITestsSDK.git', :branch => 'master'
end

def unit_test_pods
  pod 'OCMock', '3.4'
end

def ui_test_pods
  pod 'UITestsSDK', :path => 'UITestsSDK.podspec'
end

target 'CocoapodSubspecSample_Example' do
  use_frameworks!
  dev_pods
 
  target 'CocoapodSubspecSample_Tests' do
    inherit! :search_paths

    # Pods for testing
    unit_test_pods
  end

  target 'CocoapodSubspecSample_UITests' do
    inherit! :search_paths

    # Pods for testing
    ui_test_pods
  end
end