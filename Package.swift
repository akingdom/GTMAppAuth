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
//        .package(url: "https://github.com/google/gtm-session-fetcher.git", from: "1.4.0")  //
//        .package(url: "https://github.com/openid/AppAuth-iOS.git", from: "1.4.0")
    ],
    targets: [
        .target(
            name: "GTMAppAuth",
            dependencies: [
//                "GTMSessionFetcher",
//                "AppAuth"
            ],
            path: "Source",
            exclude:[
                "gtm-session-fetcher",
                "gtm-session-fetcher/update_version.py",
                "gtm-session-fetcher/.git",
                "gtm-session-fetcher/.gitignore",
                "gtm-session-fetcher/.swiftpm",
                "gtm-session-fetcher/.travis.sh",
                "gtm-session-fetcher/.travis.yml",
                "gtm-session-fetcher/CONTRIBUTING.md",
                "gtm-session-fetcher/GTMSessionFetcher.podspec",
                "gtm-session-fetcher/LICENSE",
                "gtm-session-fetcher/Package.swift",
                "gtm-session-fetcher/README.md",
                "gtm-session-fetcher/RELEASING.md",
                "gtm-session-fetcher/Source/GTMSessionFetcherCore.xcodeproj",
                "gtm-session-fetcher/Source/SwiftPackage",
                "gtm-session-fetcher/Source/TestApps",
                "gtm-session-fetcher/Source/UnitTests",
                "AppAuth-iOS/.git",
                "AppAuth-iOS/.github",
                "AppAuth-iOS/.gitignore",
                "AppAuth-iOS/.swiftpm",
                "AppAuth-iOS/.travis.yml",
                "AppAuth-iOS/appauth_lockup.svg",
                "AppAuth-iOS/AppAuth.podspec",
                "AppAuth-iOS/AppAuth.xcodeproj",
                "AppAuth-iOS/AUTHORS",
                "AppAuth-iOS/CHANGELOG.md",
                "AppAuth-iOS/CONTRIBUTING.md",
                "AppAuth-iOS/CONTRIBUTORS",
                "AppAuth-iOS/Doxyfile",
                "AppAuth-iOS/Examples",
                "AppAuth-iOS/Package.swift",
                "AppAuth-iOS/UnitTests"
//                "AppAuth-iOS/Source/",
//                "AppAuth-iOS/Source/",
//                "AppAuth-iOS/Source/",
                
            ],
            sources: [
                ".",
                "GTMOAuth2KeychainCompatibility",
                "iOS",
                "macOS",
                "AppAuth-iOS/Source",
                "AppAuth-iOS/Source/AppAuthCore",
                "AppAuth-iOS/Source/AppAuthCore/OIDAuthState.h",
                "gtm-session-fetcher/Source/GTMSessionFetcher.h",
                "gtm-session-fetcher/Source/GTMSessionFetcher.m",
                "gtm-session-fetcher/Source/GTMSessionFetcherLogging.h",
                "gtm-session-fetcher/Source/GTMSessionFetcherLogging.m",
                "gtm-session-fetcher/Source/GTMSessionFetcherService.h",
                "gtm-session-fetcher/Source/GTMSessionFetcherService.m",
                "gtm-session-fetcher/Source/GTMSessionUploadFetcher.h",
                "gtm-session-fetcher/Source/GTMSessionUploadFetcher.m"
            ],
            publicHeadersPath: "SwiftPackage",
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("GTMOAuth2KeychainCompatibility")
            ]
        ),
    ]
)
