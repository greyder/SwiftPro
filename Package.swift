// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftPro",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SwiftPro",
            targets: ["SwiftPro"]),
        .library(
            name: "BlurView",
            targets: ["BlurView"]),
        .library(
            name: "LinkView",
            targets: ["LinkView"]),
        .library(
            name: "WebView",
            targets: ["WebView"]),
        .library(
            name: "TextArea",
            targets: ["TextArea"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SwiftPro",
            dependencies: []),
        .target(
            name: "BlurView",
            dependencies: []),
        .target(
            name: "LinkView",
            dependencies: []),
        .target(
            name: "WebView",
            dependencies: []),
        .target(
            name: "TextArea",
            dependencies: []),
        .testTarget(
            name: "StringTests",
            dependencies: ["SwiftPro"]),
    ]
)
