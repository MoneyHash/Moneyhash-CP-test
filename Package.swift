// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MoneyHashiOS",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "MoneyHashiOS",
            targets: ["MoneyHashiOS"]
        )
    ],
    dependencies: [
        .package(
            name: "MoneyHashCore",
            url: "https://github.com/MoneyHash/Moneyhash-core-CP-test.git",
            "0.0.2-dev.1"..<"1.0.0"
        )
    ],
    targets: [
        .target(
            name: "MoneyHashiOS",
            dependencies: [
                .target(name: "MoneyHash"),
                .product(name: "MoneyHashCore", package: "MoneyHashCore")
            ]
        ),
        .binaryTarget(
            name: "MoneyHash",
            url: "https://github.com/MoneyHash/Moneyhash-CP-test/releases/download/0.0.2-dev.1/MoneyHash.xcframework.zip",
            checksum: "bcebe5454c9b28be7967372de64bfd856bf4d23574456f886ec9188f9df748b0"
        )
    ]
)
