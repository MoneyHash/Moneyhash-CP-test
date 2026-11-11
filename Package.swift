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
            url: "https://github.com/MoneyHash/Moneyhash-core-CP-test2.git",
            "0.0.1-dev.1"..<"1.0.0"
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
            url: "https://github.com/MoneyHash/Moneyhash-CP-test/releases/download/0.0.2-dev.2/MoneyHash.xcframework.zip",
            checksum: "3a4f7ccf73c75ba43ace5732246bbb629607e07534f45e211d9a62a7ae6bdcf6"
        )
    ]
)
