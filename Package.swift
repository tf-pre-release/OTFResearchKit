// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "OTFResearchKit",
    platforms: [.iOS(.v13), .macOS(.v10_15)],
    products: [
        .library(
            name: "OTFResearchKit",
            targets: ["OTFResearchKit"])
    ],
    targets: [
        .target(
            name: "OTFResearchKit",
            path: "OTFResearchKit")
    ]
)
