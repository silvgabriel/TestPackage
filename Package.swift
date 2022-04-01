// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestPackage",
    platforms: [.iOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TestPackage",
            targets: ["TestPackage"]),
    ],
    dependencies: [
        .package(name: "Alamofire",
                 url: "git@github.com:Alamofire/Alamofire.git",
                 branch: "master")
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [.binaryTarget(name: "TestPackage", path: "Source")]
)
