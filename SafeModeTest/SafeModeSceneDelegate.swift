//
//  SafeModeSceneDelegate.swift
//  SafeModeTest
//
//  Created by Sebastian Sciuba on 04/05/2023.
//

import Foundation
import UIKit
import SwiftUI

final class SafeModeSceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    /// Properties
    var window: UIWindow?
    
    /// UIWindowSceneDelegate
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else {return}
        //window?.rootViewController = UIHostingController(rootView: SafeModelView())
        /// albo ladniej jest tak:
        window = createWindowAndInstallRootViewController(for: windowScene)
        window?.makeKeyAndVisible()
    }
    
    /// Do obslugi SwiftUI
    private func createWindowAndInstallRootViewController(for scene: UIWindowScene) -> UIWindow {
        let window = UIWindow(windowScene: scene)
        window.rootViewController = UIHostingController(rootView: SafeModelView())
        return window
    }
}
