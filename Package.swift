// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "ErrNo",
    products: [
        .library(
            name: "ErrNo",
            targets: ["ErrNo"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "ErrNo",
            dependencies: []),
    ]
)

