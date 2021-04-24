// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftWidgets",
    products: [
        .library(
            name: "SwiftWidgets",
            targets: ["SwiftWidgets"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
              name: "SwiftWidgets",
              path: "Sources"
            )
    ]
)
