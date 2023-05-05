//
//  AppDelegate.swift
//  SafeModeTest
//
//  Created by Sebastian Sciuba on 04/05/2023.
//

import UIKit

enum AplicationMode {
    case safeMode
    case defaultMode
}

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    private lazy var applicationMode: AplicationMode = {
        if UserDefaults.standard.bool(forKey: "safe_mode") {
            print("seba safe")
            return .safeMode
        } else {
            print("seba default")
            return .defaultMode
        }
    }()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
    
    // MARK: UISceneSession Lifecycle
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    //    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
    //        // Check some condition, for example the session role
    //        if connectingSceneSession.role == .windowApplication {
    //            let configuration = UISceneConfiguration(name: "Safe Mode Configuration", sessionRole: connectingSceneSession.role)
    //            configuration.delegateClass = SafeModeSceneDelegate.self
    //            return configuration
    //
    //        } else {
    //            // Return the default configuration for other session roles
    //            return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    //        }
    //    }
    
    //    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
    //        switch applicationMode {
    //        case .safeMode:
    //            print("Safe Mode")
    //            let configuration = UISceneConfiguration(name: "Safe Mode Configuration", sessionRole: connectingSceneSession.role)
    //            configuration.delegateClass = SafeModeSceneDelegate.self
    //            return configuration
    //
    //        case .defaultMode:
    //            print("Default")
    //            return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    //        }
    //    }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    
}

