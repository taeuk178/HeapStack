//
//  AppDelegate.swift
//  HeapStack
//
//  Created by tw on 2021/12/26.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        firstTest()
        return true
    }
    
    func firstTest() {
        let reference = ReferenceType()
        let value = ValueType(id: "123", isActive: false)
        
        secondTest()
    }
    
    
    func secondTest() {
        let reference = ReferenceType()
        let value = ValueType(id: "456", isActive: true)
        print("BreakPoint")
    }
    

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

class ReferenceType {
    
}

struct ValueType {
    let id: String
    let isActive: Bool
    
    init(id: String, isActive: Bool) {
        self.id = id
        self.isActive = isActive
    }
}
