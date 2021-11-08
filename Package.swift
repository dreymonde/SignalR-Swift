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
        .package(url: "https://github.com/Alamofire/Alamofire", from: "5.4.4"),
        .package(url: "https://github.com/daltoniam/Starscream.git", from: "4.0.4")
    ],
    targets: [
        .target(
            name: "SignalRSwift",
            dependencies: ["Alamofire", "Starscream"],
            path: "SignalR-Swift",
            exclude: ["Info.plist"]
        )
    ]
)