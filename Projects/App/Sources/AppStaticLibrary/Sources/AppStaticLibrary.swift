import Foundation

public class AppStaticLibrary {
  public init() {}

  public func doSomething() {
    print("Doing something from \(String(describing: type(of: self)))")
  }
}
