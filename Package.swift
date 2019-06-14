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
    .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "5.0.0")),
    .package(url: "https://github.com/devxoul/RxExpect.git", .upToNextMajor(from: "2.0.0")),
  ],
  targets: [
    .target(name: "RxViewController", dependencies: ["RxSwift", "RxCocoa"]),
    .testTarget(name: "RxViewControllerTests", dependencies: ["RxViewController", "RxExpect"]),
  ]
)
