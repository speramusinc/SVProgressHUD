// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "SVProgressHUD",
    platforms: [
        .iOS(.v9),
        .tvOS(.v9),
    ],
    products: [
        .library(
            name: "SVProgressHUD",
            targets: ["SVProgressHUD"]
        ),
    ],
    targets: [
        .target(
            name: "SVProgressHUD",
            path: "SVProgressHUD",
            exclude: [
                "SVProgressHUD-Prefix.pch",
            ],
            resources: [
                .copy("SVProgressHUD.bundle"),
            ],
            publicHeadersPath: ".",
            cSettings: [
                .define("SV_APP_EXTENSIONS"),
            ]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
