
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
