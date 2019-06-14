Pod::Spec.new do |s|
  s.name             = "RxViewController"
  s.version          = "1.0.0"
  s.summary          = "RxSwift wrapper for UIViewController and NSViewController"
  s.homepage         = "https://github.com/devxoul/RxViewController"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Suyeol Jeon" => "devxoul@gmail.com" }
  s.source           = { :git => "https://github.com/devxoul/RxViewController.git",
                         :tag => s.version.to_s }
  s.source_files = "Sources/**/*.swift"
  s.frameworks   = "Foundation"
  s.dependency "RxSwift", "~> 5.0"
  s.dependency "RxCocoa", "~> 5.0"

  s.swift_version = "5.0"
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.11"
  s.tvos.deployment_target = "9.0"
end
