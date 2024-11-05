// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "EasyDi",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "EasyDi", targets: ["EasyDi"])
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-dependencies.git", from: "1.2.0")
    ],
    targets: [
        .target(
            name: "EasyDi",
            dependencies: [
                .product(name: "Dependencies", package: "swift-dependencies")
            ]
        ),
        .testTarget(
            name: "EasyDiTests",
            dependencies: [
                "EasyDi"
            ]
        )
    ]
)
