//
//  RootViewController.swift
//  SafeModeTest
//
//  Created by Sebastian Sciuba on 04/05/2023.
//

import Foundation
import UIKit
import SwiftUI


class RootViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newApliaction()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NotificationCenter.default.addObserver(self, selector: #selector(handleViewState), name: UserDefaults.didChangeNotification, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        NotificationCenter.default.removeObserver(self)
    }
    
    
    @objc func handleViewState() {
        newApliaction()
    }
    
    private func newApliaction() {
        if UserDefaults.standard.bool(forKey: "NEW_APP") {
            let desVC = ViewController()
            desVC.modalPresentationStyle = .fullScreen
            present(desVC, animated: true)
        } else {
            let desVC = RootViewController()
            desVC.modalPresentationStyle = .fullScreen
            present(desVC, animated: true)
        }
    }
}


/// https://www.logisticinfotech.com/blog/setting-bundle-ios-application/
/// https://github.com/logisticinfotech/iOSSettingBundle
