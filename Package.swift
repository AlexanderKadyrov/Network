// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Network",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "Network",
            targets: ["Network"]
        ),
    ],
    dependencies: [
        .package(url: "git@github.com:AlexanderKadyrov/DI.git", exact: "1.0.1")
    ],
    targets: [
        .target(
            name: "Network",
            dependencies: ["DI"]
        )
    ]
)
