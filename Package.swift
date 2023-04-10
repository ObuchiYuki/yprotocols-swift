// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "yswift-sync",
    products: [
        .library(name: "yswift-sync", targets: ["yswift-sync"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ObuchiYuki/yswift.git", branch: "1.0.0"),
    ],
    targets: [
        .target(
            name: "yswift-sync",
            dependencies: [
                .product(name: "yswift", package: "yswift"),
            ]
        ),
        .testTarget(
            name: "yswift-syncTests", dependencies: ["yswift-sync"]
        ),
    ]
)
