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
            url: "https://github.com/wuilmerj24/surrealdb_local_wrapper_ios/releases/download/1.0.2/surrealdb_local_wrapper.xcframework.zip",
            checksum: "0a01eb0049bf752f4cb6ebbea325a820d07375d924434bc909148c79bfc7cc5b"
        )
    ]
)