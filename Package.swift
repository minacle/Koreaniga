// swift-tools-version:5.2
// Managed by ice

import PackageDescription

let package = Package(
    name: "Koreaniga",
    products: [
        .library(name: "Koreaniga", targets: ["Koreaniga"]),
    ],
    targets: [
        .target(name: "Koreaniga", dependencies: []),
        .testTarget(name: "KoreanigaTests", dependencies: ["Koreaniga"]),
    ]
)
