import PlaygroundSupport
import UIKit
import Foundation

// ----------------------------------------
// The below works when App scheme is built, which results in these modules being build and available in the Build/Products/ directory
// Individually building them seems to be hit and miss... Although the static libary seems to never work when built individually.
import AppStaticFramework
AppStaticFramework().doSomething()

import AppStaticLibrary
AppStaticLibrary().doSomething()

// ----------------------------------------

// ----------------------------------------
// The below DO NOT work at all. They are part of an xcode project without an app
//
//import ExternalStaticLibrary
//ExternalStaticLibrary().doSomethingExternally()
//
//import ExternalStaticFramework
//ExternalStaticFramework().doSomethingExternally()
//
// ----------------------------------------
