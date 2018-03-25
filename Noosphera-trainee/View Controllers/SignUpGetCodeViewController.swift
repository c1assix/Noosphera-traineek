//
//  SignUpGetCodeViewController.swift
//  Noosphera-trainee
//
//  Created by Лев Купчинов on 20.03.2018.
//  Copyright © 2018 Лев Купчинов. All rights reserved.
//

import UIKit

class SignUpGetCodeViewController: UIViewController {

    @IBOutlet weak var phoneTextField: UITextField!
    
    @IBAction func sendCodeAction(_ sender: Any) {

        Settings.phoneNumber = phoneTextField.text ?? "" //"\(phoneTextField.text!)" //TODO: - force cast should be avoided
        let authenticator = Authenticator()
            authenticator.signupGetSMS(phone: phoneTextField.text!) {result in
                switch result {
                case .success(result: _):
                    self.performSegue(withIdentifier: "SetPasswordSegue", sender: nil) //TODO: - segue identifiers
                case .error(error: let error):
                    print(error.localizedDescription)
                    self.loginError()
                }
            }
    }
}
