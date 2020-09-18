// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "CombinedDate",
  products: [
    .library(
      name: "CombinedDate",
      targets: ["CombinedDate"]),
  ],
  dependencies: [
  ],
  targets: [
    .target(
      name: "CombinedDate",
      dependencies: []),
    .testTarget(
      name: "CombinedDateTests",
      dependencies: ["CombinedDate"]),
  ]
)
