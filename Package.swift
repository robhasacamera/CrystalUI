// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CrystalUI",
    platforms: [.iOS(.v15), .macOS(.v12)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "CrystalUI",
            targets: ["CrystalUI"]),
    ],
    dependencies: [
        .package(
            name: "CUIExpandableButton",
            url: "https://github.com/robhasacamera/CUIExpandableButton.git",
            from: "0.14.0"
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "CrystalUI",
            dependencies: ["CUIExpandableButton"]),
        .testTarget(
            name: "CrystalUITests",
            dependencies: ["CrystalUI"]),
    ]
)
