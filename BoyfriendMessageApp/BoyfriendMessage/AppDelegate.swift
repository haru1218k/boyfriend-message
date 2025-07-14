import UIKit
import UserNotifications

final class AppDelegate: NSObject, UIApplicationDelegate{
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
           let center = UNUserNotificationCenter.current()
           center.requestAuthorization(options: [.alert, .sound, .badge]) { _, error in // optionsには通知の種類を指定
               if let error {
                   print(error.localizedDescription)
               }
           }
           
           return true
       }
    
    
}
