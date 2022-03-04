import Foundation

public class ExternalStaticLibrary {
  public init() {}

  public func doSomethingExternally(){
    print("Doing something externally from \(String(describing: type(of: self)))")
  }
}
