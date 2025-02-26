// swift-tools-version:5.5
import PackageDescription
let package = Package(
  name: "AlamofireSwiftyJSON",
  platforms: [
        .iOS(.v13),
  ],
  products: [
      // Products define the executables and libraries a package produces, and make them visible to other packages.
      .library(
          name: "AlamofireSwiftyJSON",
          targets: ["AlamofireSwiftyJSON"]),
  ],
  dependencies: [
      .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "4.1.0")),
      .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", .upToNextMajor(from: "5.0.1"))
  ],
  targets: [
      // Targets are the basic building blocks of a package. A target can define a module or a test suite.
      // Targets can depend on other targets in this package, and on products in packages this package depends on.
      .target(
          name: "AlamofireSwiftyJSON",
          dependencies: ["Alamofire", "SwiftyJSON"],
          path: "./Source",
          exclude: ["Info.plist"]
      ),
  ]
)
