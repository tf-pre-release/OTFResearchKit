// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "ResearchKit",
    platforms: [.iOS(.v13), .macOS(.v10_15)],
    products: [
        .library(
            name: "ResearchKit",
            targets: ["ResearchKit"])
    ],
    targets: [
        .target(
            name: "ResearchKit",
            path: "ResearchKit")
    ]
)
