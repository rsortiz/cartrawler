source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '10.0'
inhibit_all_warnings!

def main_pods
    pod 'MBProgressHUD', '1.1.0'
    pod 'SDWebImage', '4.4.2'
    pod 'Mantle', '2.1.0'
    pod 'PureLayout', '3.0'
    pod 'ISO8601DateFormatter', '0.8'
    pod 'AFNetworking', '3.2.1'
end

def test_pods
    pod 'OCMock', '~> 3.4.2'
end

target :CarTrawler do
    main_pods

    target :CarTrawlerTests do
        inherit! :search_paths
        test_pods
    end
end
