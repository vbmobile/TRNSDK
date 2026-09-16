// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "TRNSDK",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "TRNSDKiOS",
            targets: ["TRNSDKiOSWrapper"]
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
            name: "TRNSDKiOS",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/TRNSDKiOS/TRNSDKiOS/TRNSDKiOS-1.1.0.zip",
            checksum: "52bdf5b666cfd75dcedf94498c2434d3dd55e55a4fcfd18f74609fa95ddf2578"
        ),
        .target(
            name: "TRNSDKiOSWrapper",
            dependencies: [
                .target(name: "TRNSDKiOS"),
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
