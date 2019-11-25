// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "HDF5Kit",
    products: [
        .library(
            name: "HDF5Kit",
            targets: ["HDF5Kit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/lubiluk/CHDF5.git", from: "1.1.0")
    ],
    targets: [
        .target(
            name: "HDF5Kit",
            dependencies: ["CHDF5"],
            path: "Source"),
        .testTarget(
            name: "HDF5KitTests",
            dependencies: ["HDF5Kit"]),
    ]
)
