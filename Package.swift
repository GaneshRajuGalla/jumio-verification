// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "jumio-verification",
  
  // 1) Specify the platforms you support (adjust the iOS version as needed)
  platforms: [
    .iOS(.v12)
  ],
  
  // 2) Define the one library product that other packages or apps can depend on
  products: [
    .library(
      name: "jumio-verification",
      targets: ["jumio-verification"]
    )
  ],
  
  // 3) No remote Swift‑PM dependencies in this package
  dependencies: [
    // e.g. .package(url: "https://github.com/apple/swift-collections.git", from: "1.0.0"),
  ],
  
  // 4) Declare your binary targets and your source target
  targets: [
    // 4a) Point to the on‑disk XCFramework bundles under your "Frameworks" folder
    .binaryTarget(
      name: "Jumio",
      path: "Frameworks/Jumio.xcframework"
    ),
    .binaryTarget(
      name: "JumioDefaultUI",
      path: "Frameworks/JumioDefaultUI.xcframework"
    ),
    
    // 4b) Your main package target that depends on those frameworks
    .target(
      name: "jumio-verification",
      dependencies: [
        "Jumio",
        "JumioDefaultUI"
      ],
      path: "Sources/jumio-verification"
    )
  ]
)
