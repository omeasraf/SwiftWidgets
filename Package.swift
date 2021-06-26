// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftWidgets",
    platforms: [.iOS(.v13), .macOS(.v11), .watchOS(.v6)],
    products: [
        .library(
            name: "SwiftWidgets",
            targets: ["SwiftWidgets"]),
    ],
    dependencies: [.package(url: "https://github.com/onevcat/Kingfisher.git", from: "6.3.0")],
    targets: [
        .target(
            name: "SwiftWidgets",
            dependencies: [
                "Kingfisher"
            ],
            path: "Sources"
        ),
        
    ]
)
