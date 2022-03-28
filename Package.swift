// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "RxViewController",
  platforms: [
    .macOS(.v10_11), .iOS(.v8), .tvOS(.v9)
  ],
  products: [
    .library(name: "RxViewController", targets: ["RxViewController"]),
  ],
  dependencies: [
    .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMinor(from: "6.5.0")),
  
  ],
  targets: [
    .target(name: "RxViewController", dependencies: ["RxSwift", "RxCocoa"])
  ]
)
