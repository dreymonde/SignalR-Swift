// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "SignalRSwift",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(name: "SignalRSwift", targets: ["SignalRSwift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire", .exact("4.8.2")),
        .package(url: "https://github.com/daltoniam/Starscream.git", .exact("3.0.6"))
    ],
    targets: [
        .target(name: "SignalRSwift", dependencies: ["Alamofire", "Starscream"], path: "SignalR-Swift")
    ]
)