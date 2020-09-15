// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "GTMAppAuth",
    platforms: [
        .macOS(.v10_11),
        .iOS(.v9),
        .tvOS(.v9),
        .watchOS(.v2)
    ],
    products: [
        .library(
            name: "GTMAppAuth",
            targets: ["GTMAppAuth"]
        ),
    ],
    dependencies: [
            .package(url: "https://github.com/google/gtm-session-fetcher.git", from: "1.4.0")
    ],
    targets: [
        .target(
            name: "GTMAppAuth",
            dependencies: [
                "GTMSessionFetcher"
            ],
            path: "Sources/GTMAppAuth",
            sources: [
                ".",
                "../ObjC",
                "../ObjC/GTMOAuth2KeychainCompatibility",
                "../ObjC/iOS",
                "../ObjC/macOS"
            ],
            publicHeadersPath: "SwiftPackage",
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("../ObjC"),
                .headerSearchPath("./ObjC/GTMOAuth2KeychainCompatibility")
            ]
        )
    ]
)
