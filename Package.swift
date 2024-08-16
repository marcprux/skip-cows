// swift-tools-version:5.6
import PackageDescription

let package = Package(
  name         : "cows",
  products     : [
    .library   (name: "cows", targets: [ "cows" ]),
    .executable(name: "vaca", targets: [ "vaca" ])
  ],
  dependencies: [
    .package(url: "https://source.skip.tools/skip.git", from: "1.0.4")
  ],
  targets      : [ 
    .target(name: "cows",
            plugins: [ .plugin(name: "skipstone", package: "skip") ]),
    .target(name: "vaca", dependencies: [ "cows" ])
  ]
)
