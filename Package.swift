// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "surrealdb_local_wrapper_ios",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "surrealdb_local_wrapper_ios",
            targets: ["surrealdb_local_wrapper_ios"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "surrealdb_local_wrapper_ios", path: "Sources/surrealdb_local_wrapper_ios/surrealdb_local_wrapper.xcframework"),
        .target(
            name: "surrealdb_local_wrapper_ios",
            dependencies: ["surrealdb_local_wrapper_ios"],
            path: "Sources/surrealdb_local_wrapper_ios",
            sources: ["surrealdb_local_wrapper.swift"],
            publicHeadersPath: "include",
        ),
        .testTarget(
            name: "surrealdb_local_wrapper_iosTests",
            dependencies: ["surrealdb_local_wrapper_ios"]
        ),
    ],
    swiftLanguageModes: [.v6]
)
