// swift-tools-version:5.2
//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import PackageDescription

let package = Package(
    name: "soto",
    platforms: [.iOS(.v12), .tvOS(.v12), .watchOS(.v5)],
    products: [
        .library(name: "SotoS3", targets: ["SotoS3"]),
        .library(name: "SotoSESV2", targets: ["SotoSESV2"]),
        .library(name: "SotoCognitoIdentityProvider", targets: ["SotoCognitoIdentityProvider"]),
    ],
    dependencies: [
        .package(url: "https://github.com/soto-project/soto-core.git", .exact("5.8.0"))
    ],
    targets: [
        .target(name: "SotoS3", dependencies: [.product(name: "SotoCore", package: "soto-core"), .byName(name: "CSotoZlib")], path: "./Sources/Soto/", sources: ["Services/S3", "Extensions/S3"]),
        .target(name: "SotoSESV2", dependencies: [.product(name: "SotoCore", package: "soto-core")], path: "./Sources/Soto/Services/SESV2"),
        .target(name: "SotoCognitoIdentityProvider", dependencies: [.product(name: "SotoCore", package: "soto-core")], path: "./Sources/Soto/Services/CognitoIdentityProvider"),
        .target(name: "CSotoZlib", linkerSettings: [.linkedLibrary("z")])
    ]
)
