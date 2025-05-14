// swift-tools-version:5.9
//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2024 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import PackageDescription

let swiftSettings: [SwiftSetting] = [
    .enableExperimentalFeature("StrictConcurrency=complete")
]

let package = Package(
    name: "soto",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6),
    ],
    products: [
        .library(name: "SotoCognitoIdentity", targets: ["SotoCognitoIdentity"]),
        .library(name: "SotoCognitoIdentityProvider", targets: ["SotoCognitoIdentityProvider"]),
        .library(name: "SotoS3", targets: ["SotoS3"]),
        .library(name: "SotoSESV2", targets: ["SotoSESV2"])
    ],
    dependencies: [
        .package(url: "https://github.com/soto-project/soto-core.git", exact: "7.6.0")
    ],
    targets: [
        .target(
            name: "_SotoCognitoIdentityGenerated",
            dependencies: [.product(name: "SotoCore", package: "soto-core")],
            path: "./Sources/Soto/Services/CognitoIdentity",
            swiftSettings: swiftSettings
        ),
        .target(
            name: "SotoCognitoIdentityProvider",
            dependencies: [.product(name: "SotoCore", package: "soto-core")],
            path: "./Sources/Soto/Services/CognitoIdentityProvider",
            swiftSettings: swiftSettings
        ),
        .target(
            name: "SotoSESV2",
            dependencies: [.product(name: "SotoCore", package: "soto-core")],
            path: "./Sources/Soto/Services/SESv2",
            swiftSettings: swiftSettings
        ),
        .target(
            name: "_SotoS3Generated",
            dependencies: [.product(name: "SotoCore", package: "soto-core")],
            path: "./Sources/Soto/Services/S3",
            swiftSettings: swiftSettings
        ),
        // Service extensions
        .target(
            name: "SotoCognitoIdentity",
            dependencies: [.product(name: "SotoCore", package: "soto-core"), "_SotoCognitoIdentityGenerated"],
            path: "./Sources/Soto/Extensions/CognitoIdentity",
            swiftSettings: swiftSettings
        ),
        .target(
            name: "SotoS3",
            dependencies: [.product(name: "SotoCore", package: "soto-core"), "_SotoS3Generated"],
            path: "./Sources/Soto/Extensions/S3",
            swiftSettings: swiftSettings
        ),
        .testTarget(
            name: "SotoTests",
            dependencies: [
                "SotoS3"
            ]
        ),
    ]
)
