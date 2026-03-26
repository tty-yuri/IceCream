// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "IceCream",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v12),
        .tvOS(.v12),
        .watchOS(.v4)
    ],
    products: [
        .library(
            name: "IceCream",
            targets: ["IceCream"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/realm/realm-swift",
            from: "10.54.6"
        )
    ],
    targets: [
        .target(
            name: "IceCream",
            dependencies: ["RealmSwift"],
            path: "IceCream",
            sources: ["Classes"])
    ],
    swiftLanguageVersions: [.v5]
)
