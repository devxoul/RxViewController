// swift-tools-version:4.2

import PackageDescription

let package = Package(
  name: "RxViewController",
  products: [
    .library(name: "RxViewController", targets: ["RxViewController"]),
  ],
  dependencies: [
    .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "4.0.0")),
    .package(url: "https://github.com/devxoul/RxExpect.git", .upToNextMajor(from: "1.0.0")),
  ],
  targets: [
    .target(name: "RxViewController", dependencies: ["RxSwift", "RxCocoa"]),
    .testTarget(name: "RxViewControllerTests", dependencies: ["RxViewController", "RxExpect"]),
  ]
)
