import Foundation

public class ExternalStaticFramework {
  public init() {}

  public func doSomethingExternally() {
    print("Doing something externally from \(String(describing: type(of: self)))")
  }
}
