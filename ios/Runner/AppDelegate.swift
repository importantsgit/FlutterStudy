import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      // setting 부터 해결하고 코드 작성
      // flutter와 기본 연결
      let controller: FlutterViewController = window?.rootViewController as! FlutterViewController
      let channel = FlutterMethodChannel(name: "example.com/value",
                                         binaryMessenger: controller.binaryMessenger)
      channel.setMethodCallHandler { call, result in
          result(call.method == "getValue" ? "Success" : FlutterMethodNotImplemented)
      }
      
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
