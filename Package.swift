// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swiftui-extensions",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "swiftui-extensions",
            targets: ["swiftui-extensions"]),
    ],
    targets: [
        .target(
            name: "swiftui-extensions"),
        .testTarget(
            name: "swiftui-extensionsTests",
            dependencies: ["swiftui-extensions"]
        ),
    ]
)
