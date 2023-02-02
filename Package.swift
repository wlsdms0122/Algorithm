// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Algorithm",
    products: [
        .executable(
            name: "Algorithm",
            targets: ["Algorithm"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/wlsdms0122/JSTester.git", exact: "1.1.0")
    ],
    targets: [
        .executableTarget(
            name: "Algorithm",
            dependencies: [
                "JSTester"
            ]
        ),
        .testTarget(
            name: "AlgorithmTests",
            dependencies: ["Algorithm"]
        )
    ]
)
