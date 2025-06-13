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
        .target(name: "AXSwiftExample",
            dependencies: ["AXSwift"],
            path: "AXSwiftExample"),
        .target(name: "AXSwiftObserverExample",
            dependencies: ["AXSwift"],
            path: "AXSwiftObserverExample"),
    ]
)
