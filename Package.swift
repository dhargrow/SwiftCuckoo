// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftCuckoo",
    platforms: [.macOS(.v10_15), .iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftCuckoo",
            targets: ["SwiftCuckoo"]),
    ],
    dependencies: [
            // Adding the Swift Testing library as a dependency
            .package(url: "https://github.com/swiftlang/swift-testing.git", from: "0.9.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SwiftCuckoo"),
        .testTarget(
            name: "SwiftCuckooTests",
            dependencies: [
                "SwiftCuckoo",
                .product(name: "Testing", package: "swift-testing"),
            ]
        ),
    ]
)
