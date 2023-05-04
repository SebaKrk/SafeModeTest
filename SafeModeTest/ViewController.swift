//
//  ViewController.swift
//  SafeModeTest
//
//  Created by Sebastian Sciuba on 04/05/2023.
//

import UIKit

class ViewController: UIViewController {
    
    let notificationCenter = NotificationCenter.default
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Dodajemy obserwatora zmian w UserDefaults
        notificationCenter.addObserver(self, selector: #selector(handleSafeModeChange), name: UserDefaults.didChangeNotification, object: nil)
        
        // Wywołujemy funkcję, która ustawia kolor tła zgodnie z wartością safe_mode
        setSafeModeBackgroundColor()
    }
    
    // Funkcja wywoływana za każdym razem, gdy wartość klucza safe_mode ulegnie zmianie
    @objc func handleSafeModeChange() {
        setSafeModeBackgroundColor()
    }
    
    // Funkcja ustawiająca kolor tła zgodnie z wartością safe_mode
    func setSafeModeBackgroundColor() {
        if UserDefaults.standard.bool(forKey: "safe_mode") {
            view.backgroundColor = .red
        } else {
            view.backgroundColor = .white
        }
    }
    
    deinit {
        // Usuwamy obserwatora zmian w UserDefaults
        notificationCenter.removeObserver(self)
    }
}
