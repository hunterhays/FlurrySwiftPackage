// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "Flurry",
    platforms: [
        .iOS(.v10),
        .tvOS(.v10),
        .watchOS(.v3)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Flurry",
            targets: ["Flurry_iOS_SDK","CrashReporter"]
        ),
        .library(
            name: "FlurryMessaging",
            targets: ["Flurry_Messaging"]
        ),
        .library(
            name: "FlurryConfig",
            targets: ["Flurry_Config"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .binaryTarget(
            name: "Flurry_iOS_SDK",
            path: "artifacts/Flurry_iOS_SDK.xcframework"
        ),
        .binaryTarget(
            name: "Flurry_Messaging",
            path: "artifacts/Flurry_Messaging.xcframework"
        ),
        .binaryTarget(
            name: "Flurry_Config",
            path: "artifacts/Flurry_Config.xcframework"
        ),
        .binaryTarget(
            name: "CrashReporter",
            path: "artifacts/CrashReporter.xcframework"
        )
    ]
)
