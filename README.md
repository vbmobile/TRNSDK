# TRNSDK

Amadeus MobileID SDK for iOS, distributed as a binary XCFramework through Swift Package Manager.

## Requirements

- iOS 15 or later
- Xcode 27 or later (the shipped module interface is emitted by a Swift 6.4 toolchain; an earlier Xcode cannot read it)

## Installation

Add the package to your project:

```swift
.package(url: "https://github.com/vbmobile/TRNSDK", .upToNextMinor(from: "1.3.0"))
```

and link the `TRNSDK` product to your app target, then `import TRNSDK`. The package declares its runtime dependencies (`AMANetworkClient`, `AMAImageProcessor`, `AMAUtils`, `AMADocModel`, `Lottie`); document reader providers such as `AMAMRZOCRReadRegula`, `AMARFIDReadRegula`, `AMADocScanMrz` and `AMADocRFIDReadiOS`, and the Ultralight provider `AMAShareUltralight`, are separate packages and are added by the host app as needed.

## Documentation

Integration guides and release notes are published in the MobileID documentation.

## Support

mobile.apps@vision-box.com
