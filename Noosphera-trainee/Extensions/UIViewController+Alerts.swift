//
//  Alerts.swift
//  Noosphera-trainee
//
//  Created by Лев Купчинов on 18.03.2018.
//  Copyright © 2018 Лев Купчинов. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    private func navigateToSettings() {
        guard let url = URL(string: "App-Prefs:root=WIFI"), UIApplication.shared.canOpenURL(url) else {return}
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }
    }

    func noInternetConnectionAlert() {
        let alert = UIAlertController(title: "NoInternetConnectionTitle".localized,
                                      message: "NoInternetConnectionMessage".localized,
                                      preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: { [weak self] (_) in self?.navigateToSettings()})
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
    
    func loginError() {
        let alert = UIAlertController(title: "ErrorLoginTitle".localized,
                                      message: "ErrorLoginMessage".localized,
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    func passwordError() {
        let alert = UIAlertController(title: "CheckPasswordErrorTitle".localized,
                                      message: "CheckPasswordErrorMessage".localized,
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    func signupError() {
        let alert = UIAlertController(title: "SignupCodeErrorTitle".localized,
                                      message: "SignupCodeErrorMessage".localized,
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }

    // TODO: - change to universal alert
}
