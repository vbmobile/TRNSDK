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
        .package(url: "https://github.com/vbmobile/AMADocModel", .upToNextMinor(from: "4.1.1")),
    ],
    targets: [
        .binaryTarget(
            name: "TRNSDK",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/TRNSDK/TRNSDK/TRNSDK-1.1.1.zip",
            checksum: "e9d504b98804de0d6f44ee3bd67c5f6108a9dc48e292338a370a7e40df3e6340"
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
