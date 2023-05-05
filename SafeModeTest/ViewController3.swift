//
//  ViewController3.swift
//  SafeModeTest
//
//  Created by Sebastian Sciuba on 04/05/2023.
//

import Foundation
import UIKit

class ViewController3: UIViewController {
    
    var myNameLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ///UserDefaults.standard.set(true, forKey: "THEME_MODE")
        ///let themeMode = UserDefaults.standard.bool(forKey: "THEME_MODE")
        ///print(themeMode)
        
        start()
        
        configureMyNameLael()
        
     
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NotificationCenter.default.addObserver(self, selector: #selector(handleViewState), name: UserDefaults.didChangeNotification, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc func handleViewState() {
        start()
    }
    
    func start() {
        changeBacgorundColor()
        chnageName()
    }
    
    func changeBacgorundColor() {
        if UserDefaults.standard.bool(forKey: "THEME_MODE") {
            view.backgroundColor = .black
            myNameLabel.textColor = .white
        } else {
            view?.backgroundColor = .white
            myNameLabel.textColor = .black
        }
    }
    
    func chnageName() {
        let name = UserDefaults.standard.value(forKey: "YOUR_NAME") as? String
        print(name ?? "dupa")
        myNameLabel.text = name
    }
    
    private func configureMyNameLael() {
        view.addSubview(myNameLabel)
        myNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            myNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myNameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
}
