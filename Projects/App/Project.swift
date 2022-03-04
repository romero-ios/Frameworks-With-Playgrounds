import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
  name: "App",
  organizationName: nil,
  options: [
    .textSettings(usesTabs: false, indentWidth: 2, tabWidth: 2, wrapsLines: true)
  ],
  packages: [],
  settings: nil,
  targets: [
    .init(
      name: "App",
      platform: .iOS,
      product: .app,
      bundleId: "com.foo.bar",
      deploymentTarget: .iOS(targetVersion: "13.0", devices: .iphone),
      infoPlist: .default,
      sources: [
        "Sources/App/Sources/**"
      ],
      resources: [
        "Sources/App/Sources/Resources/**"
      ],
      dependencies:[
        .target(name: "AppStaticFramework"),
        .target(name: "AppStaticLibrary"),
        .project(
          target: "ExternalStaticFramework",
          path: .relativeToRoot("Projects/Dependencies/")
        ),
        .project(
          target: "ExternalStaticLibrary",
          path: .relativeToRoot("Projects/Dependencies/")
        )
      ]
    ),
    .init(
      name: "AppStaticLibrary",
      platform: .iOS,
      product: .staticLibrary,
      bundleId: "com.foo.bar.appStaticLibrary",
      deploymentTarget: .iOS(targetVersion: "13.0", devices: .iphone),
      infoPlist: .default,
      sources: [
        "Sources/AppStaticLibrary/Sources/*.swift"
      ],
      resources: [
        "Sources/AppStaticLibrary/Resources/**"
      ],
      dependencies: []
    ),
    .init(
      name: "AppStaticFramework",
      platform: .iOS,
      product: .staticFramework,
      bundleId: "com.foo.bar.appStaticFramework",
      deploymentTarget: .iOS(targetVersion: "13.0", devices: .iphone),
      infoPlist: .default,
      sources: [
        "Sources/AppStaticFramework/Sources/*.swift"
      ],
      resources: [
        "Sources/AppStaticFramework/Resources/**"
      ],
      dependencies: []
    )
  ],
  schemes: [
    .init(
      name: "App",
      shared: true,
      hidden: false,
      buildAction: .buildAction(
        targets: [
          "App"
        ]
      ),
      runAction: .runAction(
        configuration: .debug
      )
    )
  ]
)
