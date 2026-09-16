# TRNSDK

Amadeus MobileID SDK for iOS, distributed as a binary XCFramework through Swift Package Manager.

## Requirements

- iOS 15 or later
- Xcode 26 or later

## Installation

Add the package to your project:

```swift
.package(url: "https://github.com/vbmobile/TRNSDK", exact: "1.1.0")
```

and link the `TRNSDKiOS` product (the package is `TRNSDK`, the product and module keep the `TRNSDKiOS` name) to your app target. The package declares its runtime dependencies (`AMANetworkClient`, `AMAImageProcessor`, `AMAUtils`, `AMADocModel`, `Lottie`); document reader providers such as `AMAMRZOCRReadRegula`, `AMARFIDReadRegula`, `AMADocScanMrz` and `AMADocRFIDReadiOS` are separate packages and are added by the host app as needed.

## Documentation

Integration guides and release notes are published in the MobileID documentation.

## Support

mobile.apps@vision-box.com
