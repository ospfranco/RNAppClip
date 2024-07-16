import Foundation
import React
import ReactNativeHost

@objc
class BridgeManager: NSObject {
  @objc
  static let shared = BridgeManager()

  @objc
  var host: ReactNativeHost?

  @objc
  public func loadReactNative(launchOptions: [AnyHashable: Any]?) {
    host = ReactNativeHost(self)
  }
}

extension BridgeManager: RNXHostConfig {
  func sourceURL(for bridge: RCTBridge) -> URL? {
    #if DEBUG
      return RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index.clip")
    #else
      return Bundle.main.url(forResource: "main", withExtension: "jsbundle")
    #endif
  }
}
