// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "GTMAppAuth",
    platforms: [
        .macOS(.v10_11),
        .iOS(.v9),// originally .v7
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
            path: "Source",
            sources: [
                "."//,
                // "GTMOAuth2KeychainCompatibility",
                // "iOS",
                // "macOS"
            ],
            publicHeadersPath: "SwiftPackage",
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("GTMOAuth2KeychainCompatibility")
            ]
        )
    ]
)
