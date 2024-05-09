// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestLibrary",
    platforms: [
        .iOS("15.2"),
        .macOS("14.3"),
        .tvOS("15.0"),
        .watchOS("8.0"),
        .visionOS("1.0")
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TestLibrary",
            targets: ["TestLibrary"]),
    ],
    dependencies: [
        .package(url: "https://github.com/kudit/Device", "2.0.7"..<"3.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "TestLibrary",
            dependencies: [
                .product(name: "Device Library", package: "device"), // apparently needs to be lowercase
            ]
        )
    ]
)
