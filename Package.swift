// swift-tools-version:5.7.1
import PackageDescription

let package = Package(
    name: "ExampleWidget",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .library(name: "ExampleWidget", type: .dynamic, targets: ["ExampleWidget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/jiwe-app/jiwe-interface.git", branch: "main"),
    ],
    targets: [
        .target(name: "ExampleWidget", dependencies: [
            .product(name: "JiweInterface", package: "jiwe-interface")
        ]),
    ]
)

