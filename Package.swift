// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "TRNSDK",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "TRNSDK",
            targets: ["TRNSDKWrapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/airbnb/lottie-spm", exact: "4.4.1"),
        .package(url: "https://github.com/vbmobile/AMANetworkClient", .upToNextMinor(from: "7.0.4")),
        .package(url: "https://github.com/vbmobile/AMAImageProcessor", .upToNextMinor(from: "2.0.6")),
        .package(url: "https://github.com/vbmobile/AMAUtils", .upToNextMinor(from: "3.0.8")),
        .package(url: "https://github.com/vbmobile/AMADocModel", .upToNextMinor(from: "3.1.0")),
    ],
    targets: [
        .binaryTarget(
            name: "TRNSDK",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/TRNSDK/TRNSDK/TRNSDK-1.0.0.zip",
            checksum: "ec457ee23f80f70b7e76cb48ff9ce7f2d8c27c3befdb6b8efd286ebf3772fcd5"
        ),
        .target(
            name: "TRNSDKWrapper",
            dependencies: [
                .target(name: "TRNSDK"),
                .product(name: "Lottie", package: "lottie-spm"),
                .product(name: "AMANetworkClient", package: "AMANetworkClient"),
                .product(name: "AMAImageProcessor", package: "AMAImageProcessor"),
                .product(name: "AMAUtils", package: "AMAUtils"),
                .product(name: "AMADocModel", package: "AMADocModel")
            ],
            path: "Sources",
            sources: ["dummy.swift"]
        )
    ],
    swiftLanguageVersions: [.v5]
)
