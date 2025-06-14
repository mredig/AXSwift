// swift-tools-version:5.10

import PackageDescription

let package = Package(
    name: "AXSwift",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "AXSwift",
            targets: ["AXSwift"]),
    ],
    targets: [
        .target(
            name: "AXSwift",
            path: "Sources"),
        .executableTarget(
            name: "AXSwiftExample",
            dependencies: ["AXSwift"],
            path: "AXSwiftExample"),
        .executableTarget(
            name: "AXSwiftObserverExample",
            dependencies: ["AXSwift"],
            path: "AXSwiftObserverExample"),
    ]
)
