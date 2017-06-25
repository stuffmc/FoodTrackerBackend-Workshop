import PackageDescription

let package = Package(
    name: "FoodTrackerServer",
    targets: [
      Target(name: "Application", dependencies: [ .Target(name: "Generated") ]),
      Target(name: "FoodTrackerServer", dependencies: [ .Target(name: "Application") ])
    ],
    dependencies: [
        .Package(url: "https://github.com/IBM-Swift/Kitura.git",             majorVersion: 1, minor: 7),
        .Package(url: "https://github.com/IBM-Swift/HeliumLogger.git",       majorVersion: 1, minor: 7),
        .Package(url: "https://github.com/IBM-Swift/CloudConfiguration.git", majorVersion: 2),
        .Package(url: "https://github.com/RuntimeTools/SwiftMetrics.git", majorVersion: 1),
        .Package(url: "https://github.com/Zewo/SQL.git", majorVersion: 0, minor: 14),
    ],
    exclude: ["src"]
)
