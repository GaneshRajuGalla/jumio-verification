// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

// swift-tools-version:6.0
// swift-tools-version:6.0
import PackageDescription

let package = Package(
  name: "jumio-verification",
  platforms: [.iOS(.v11)],

  products: [
    .library(
      name: "jumio-verification",
      targets: ["jumio-verification"]
    ),
  ],

  targets: [
    // Downloaded from your GitHub Release assets
    .binaryTarget(
      name: "Jumio",
      url: "https://github.com/GaneshRajuGalla/jumio-verification/releases/download/v1.0.0/Jumio.xcframework.zip",
      checksum: "949dfb4e0c87289456fa68d69f66fd10ed8e66285171296ae1c53bed67829605"
    ),
    .binaryTarget(
      name: "JumioDefaultUI",
      url: "https://github.com/GaneshRajuGalla/jumio-verification/releases/download/v1.0.0/JumioDefaultUI.xcframework.zip",
      checksum: "5b95f18967ce21df2c9368145fc8aaf9bec3ff995e9e5fa725be911636d33b2f"
    ),

    // Your library target depends on those binaries
    .target(
      name: "jumio-verification",
      dependencies: ["Jumio", "JumioDefaultUI"],
      path: "Sources/jumio-verification"
    ),
  ]
)
