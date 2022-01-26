// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "firebase-ios-sdk-binaries",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "FirebaseAnalytics",
            targets: ["FirebaseAnalyticsTarget"]
        ),
        .library(
            name: "FirebaseAuth",
            targets: ["FirebaseAuthTarget"]
        ),
        .library(
            name: "FirebaseFirestore",
            targets: ["FirebaseFirestoreTarget"]
        ),
        .library(
            name: "GoogleSignIn",
            targets: ["GoogleSignInTarget"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Firebase",
            publicHeadersPath: "./"
        ),
        .target(
            name: "FirebaseAnalyticsTarget",
            dependencies: [
                "Firebase",
                "FirebaseAnalytics",
                "FirebaseCore",
                "FirebaseCoreDiagnostics",
                "FirebaseInstallations",
                "GoogleAppMeasurement",
                "GoogleAppMeasurementIdentitySupport",
                "GoogleDataTransport",
                "GoogleUtilities",
                "PromisesObjC",
                "nanopb"
            ],
            path: "Sources/FirebaseAnalytics"
        ),
        .target(
            name: "FirebaseAuthTarget",
            dependencies: [
                "Firebase",
                "FirebaseAnalyticsTarget",
                "FirebaseAuth",
                "GTMSessionFetcher"
            ],
            path: "Sources/FirebaseAuth"
        ),
        .target(
            name: "FirebaseFirestoreTarget",
            dependencies: [
                "Firebase",
                "FirebaseAnalyticsTarget",
                "BoringSSL-GRPC",
                "FirebaseFirestore",
                "abseil",
                "gRPC-C++",
                "gRPC-Core",
                "leveldb-library"
            ],
            path: "Sources/FirebaseFirestore",
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "GoogleSignInTarget",
            dependencies: [
                "Firebase",
                "FirebaseAnalyticsTarget",
                "AppAuth",
                "GTMAppAuth",
                "GTMSessionFetcher",
                "GoogleSignIn"
            ],
            path: "Sources/GoogleSignIn",
            resources: [
                .process("Resources")
            ]
        ),
        // Binaries
        .binaryTarget(
            name: "abseil",
            path: "Sources/abseil.xcframework"
        ),
        .binaryTarget(
            name: "AppAuth",
            path: "Sources/AppAuth.xcframework"
        ),
        .binaryTarget(
            name: "BoringSSL-GRPC",
            path: "Sources/BoringSSL-GRPC.xcframework"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            path: "Sources/FirebaseAnalytics.xcframework"
        ),
        .binaryTarget(
            name: "FirebaseAuth",
            path: "Sources/FirebaseAuth.xcframework"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            path: "Sources/FirebaseCore.xcframework"
        ),
        .binaryTarget(
            name: "FirebaseCoreDiagnostics",
            path: "Sources/FirebaseCoreDiagnostics.xcframework"
        ),
        .binaryTarget(
            name: "FirebaseFirestore",
            path: "Sources/FirebaseFirestore.xcframework"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            path: "Sources/FirebaseInstallations.xcframework"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            path: "Sources/GoogleAppMeasurement.xcframework"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            path: "Sources/GoogleAppMeasurementIdentitySupport.xcframework"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            path: "Sources/GoogleDataTransport.xcframework"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            path: "Sources/GoogleSignIn.xcframework"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            path: "Sources/GoogleUtilities.xcframework"
        ),
        .binaryTarget(
            name: "gRPC-C++",
            path: "Sources/gRPC-C++.xcframework"
        ),
        .binaryTarget(
            name: "gRPC-Core",
            path: "Sources/gRPC-Core.xcframework"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            path: "Sources/GTMAppAuth.xcframework"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            path: "Sources/GTMSessionFetcher.xcframework"
        ),
        .binaryTarget(
            name: "leveldb-library",
            path: "Sources/leveldb-library.xcframework"
        ),
        .binaryTarget(
            name: "nanopb",
            path: "Sources/nanopb.xcframework"
        ),
        .binaryTarget(
            name: "PromisesObjC",
            path: "Sources/PromisesObjC.xcframework"
        ),
    ]
)
