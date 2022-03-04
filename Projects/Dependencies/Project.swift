import ProjectDescription

let project = Project(
  name: "Dependencies",
  organizationName: nil,
  options: [
    .textSettings(usesTabs: false, indentWidth: 2, tabWidth: 2, wrapsLines: true)
  ],
  packages: [],
  settings: nil,
  targets: [
    .init(
      name: "ExternalStaticLibrary",
      platform: .iOS,
      product: .staticLibrary,
      bundleId: "com.foo.bar.externalAppStaticLibrary",
      deploymentTarget: .iOS(targetVersion: "13.0", devices: .iphone),
      infoPlist: .default,
      sources: [
        "Sources/ExternalStaticLibrary/Sources/*.swift"
      ],
      resources: [
        "Sources/ExternalStaticLibrary/Resources/**"
      ],
      dependencies: []
    ),
    .init(
      name: "ExternalStaticFramework",
      platform: .iOS,
      product: .staticFramework,
      bundleId: "com.foo.bar.externalAppStaticFramework",
      deploymentTarget: .iOS(targetVersion: "13.0", devices: .iphone),
      infoPlist: .default,
      sources: [
        "Sources/ExternalStaticFramework/Sources/*.swift"
      ],
      resources: [
        "Sources/ExternalStaticFramework/Resources/**"
      ],
      dependencies: []
    )
  ]
)
