// swift-tools-version:5.7

import PackageDescription

let package = Package(
  name: "TCACoordinators",
  platforms: [
    .iOS(.v16), .watchOS(.v7), .macOS(.v13), .tvOS(.v13),
  ],
  products: [
    .library(
      name: "TCACoordinators",
      targets: ["TCACoordinators"]),
  ],
  dependencies: [
    .package(url: "https://github.com/symbiose-technologies/FlowStacks", branch: "symbiose"),
    .package(url: "https://github.com/pointfreeco/swift-composable-architecture", from: "0.45.0"),
  ],
  targets: [
    .target(
      name: "TCACoordinators",
      dependencies: [
        .product(name: "FlowStacks", package: "FlowStacks"),
        .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
      ]),
    .testTarget(
      name: "TCACoordinatorsTests",
      dependencies: ["TCACoordinators"]),
  ])
