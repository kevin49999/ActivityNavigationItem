// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ActivityNavigationItem",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "ActivityNavigationItem",
            targets: ["ActivityNavigationItem"]),
    ],
    targets: [
        .target(
            name: "ActivityNavigationItem",
            path: "Source",
            exclude: ["Supporting Files"]
        ),
        .testTarget(
            name: "ActivityNavigationItemTests",
            dependencies: ["ActivityNavigationItem"],
            path: "Tests",
            exclude: ["Info.plist"]
        ),
    ]
)
