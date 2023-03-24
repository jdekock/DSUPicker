// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DSUPicker",
    platforms: [
        .macOS("13.0")
    ],
    dependencies: [
        .package(
            url: "https://github.com/AndrewBarba/swift-compute-runtime",
            from: "1.0.0"
        )
    ],
    targets: [
        .executableTarget(
            name: "DSUPicker",
            dependencies: [
                .product(name: "Compute", package: "swift-compute-runtime")
            ]),
        .testTarget(
            name: "DSUPickerTests",
            dependencies: ["DSUPicker"]),
    ]
)
