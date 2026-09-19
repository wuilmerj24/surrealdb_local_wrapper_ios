// swift-tools-version: 6.3

import PackageDescription

let package = Package(
    name: "surrealdb_local_wrapper_ios",

    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "surrealdb_local_wrapper_ios",
            targets: ["surrealdb_local_wrapper_ios"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "surrealdb_local_wrapper_ios",
            url: "https://github.com/wuilmerj24/surrealdb_local_wrapper_ios/releases/download/1.0.1/surrealdb_local_wrapper.xcframework.zip",
            checksum: "61b99672e2c11d94707b33fa6e3e621dcbdccd10e98bf9570b2e0e79075e10b9"
        )
    ]
)