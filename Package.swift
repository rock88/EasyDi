// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "EasyDi",
    products: [
        .library(name: "EasyDi", targets: ["EasyDi"])
    ],
    targets: [
        .target(
            name: "EasyDi"
        ),
        .testTarget(
            name: "EasyDiTests",
            dependencies: ["EasyDi"]
        )
    ]
)
