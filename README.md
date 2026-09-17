# TRNSDK

Amadeus MobileID SDK for iOS, distributed as a binary XCFramework through Swift Package Manager.

## Requirements

- iOS 15 or later
- Xcode 26.2 or later (the shipped module interface is emitted by a Swift 6.2 toolchain; an earlier Xcode cannot read it)

## Installation

Add the package to your project:

```swift
.package(url: "https://github.com/vbmobile/TRNSDK", exact: "1.0.0")
```

and link the `TRNSDK` product to your app target, then `import TRNSDK`. The package declares its runtime dependencies (`AMANetworkClient`, `AMAImageProcessor`, `AMAUtils`, `AMADocModel`, `Lottie`); document reader providers such as `AMAMRZOCRReadRegula`, `AMARFIDReadRegula`, `AMADocScanMrz` and `AMADocRFIDReadiOS` are separate packages and are added by the host app as needed.

## Documentation

Integration guides and release notes are published in the MobileID documentation.

## Support

mobile.apps@vision-box.com
