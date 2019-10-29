import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    var pressCount = 0
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
  ) -> Bool {

    
    let STREAM_COUNT = "cools.flutter.channel.event/increased"
    let METHOD_PRESSED = "cools.flutter.channel.method/pressed"
    
    let flutterViewController = self.window.rootViewController as! FlutterViewController
    let flutterStreamChannel = FlutterEventChannel(name: STREAM_COUNT, binaryMessenger: flutterViewController.binaryMessenger)
    let streamHandler = StreamHandler()
    flutterStreamChannel.setStreamHandler(streamHandler)
    
    let flutterMethodChannel = FlutterMethodChannel(name: METHOD_PRESSED, binaryMessenger: flutterViewController.binaryMessenger)
    flutterMethodChannel.setMethodCallHandler(
        { (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
            self.pressCount += 1
            result(self.pressCount)
        }
    )
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}

class StreamHandler: NSObject, FlutterStreamHandler{
    var count = 0
    var isRunning = false
    func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        DispatchQueue.global(qos: .background).async {
            self.isRunning = true
            while(self.isRunning){
                self.count += 1
                usleep(1000 * 500)
                events(self.count)
            }
        }
        return nil
    }
    
    func onCancel(withArguments arguments: Any?) -> FlutterError? {
        isRunning = false
        return nil
    }
}

