//
//  Alerts.swift
//  Noosphera-trainee
//
//  Created by Лев Купчинов on 18.03.2018.
//  Copyright © 2018 Лев Купчинов. All rights reserved.
//

import Foundation
import UIKit

protocol Alerts{
}

extension UIViewController: Alerts{
    
    func noInternetConnectionAlert(){
        let alert = UIAlertController(title: NSLocalizedString("NoInternetConnectionTitle", comment: ""), message: NSLocalizedString("NoInternetConnectionMessage", comment: ""), preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
            if let url = URL(string:"App-Prefs:root=WIFI") {
                if UIApplication.shared.canOpenURL(url) {
                    if #available(iOS 10.0, *) {
                        UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    } else {
                        UIApplication.shared.openURL(url)
                    }
                }
            }
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    func loginError(){
        let alert = UIAlertController(title: NSLocalizedString("ErrorLoginTitle", comment: ""), message: NSLocalizedString("ErrorLoginMessage", comment: ""), preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
}
