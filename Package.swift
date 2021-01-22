// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "AWSSDKSwift",
    platforms: [.iOS(.v12), .tvOS(.v12), .watchOS(.v5)],
    products: [
        .library(name: "S3", targets: ["S3"]),
        .library(name: "SESV2", targets: ["SESV2"]),
    ],
    dependencies: [
        .package(url: "https://github.com/soto-project/soto-core.git", .upToNextMinor(from: "4.7.0")) 
    ],
    targets: [
        .target(name: "S3", dependencies: ["AWSSDKSwiftCore", "S3Middleware"], path: "./Sources/AWSSDKSwift/Services/S3"),
        .target(name: "SESV2", dependencies: ["AWSSDKSwiftCore"], path: "./Sources/AWSSDKSwift/Services/SESV2"),
        .target(name: "S3Middleware", dependencies: ["AWSSDKSwiftCore"], path: "./Sources/AWSSDKSwift/Middlewares/S3"),
    ]
)
