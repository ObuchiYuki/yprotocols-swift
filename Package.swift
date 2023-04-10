// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "y-protocols-swift",
    platforms: [.macOS(.v10_15), .iOS(.v13)],
    products: [
        .library(name: "y-protocols-swift", targets: ["y-protocols-swift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ObuchiYuki/yswift.git", .upToNextMajor(from: "1.0.3")),
    ],
    targets: [
        .target(
            name: "y-protocols-swift",
            dependencies: [
                .product(name: "yswift", package: "yswift"),
            ]
        ),
        .testTarget(
            name: "y-protocols-swiftTests", dependencies: ["y-protocols-swift"]
        ),
    ]
)
