//
//  SignUpSetPasswordViewController.swift
//  Noosphera-trainee
//
//  Created by Лев Купчинов on 20.03.2018.
//  Copyright © 2018 Лев Купчинов. All rights reserved.
//

import UIKit

class SignUpSetPasswordViewController: UIViewController {
    
    let authenticator = Authenticator()

    @IBOutlet private weak var phoneNumberLabel: UILabel!
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet private weak var checkPasswordTextField: UITextField!
    @IBOutlet private weak var codeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumberLabel.text = Settings.phoneNumber
        checkPasswordTextField.layer.borderWidth = 1.0
    }
    
    func checkPassword() -> Bool {
        guard passwordTextField.text!.count >= 6 else { passwordError(); return false}
        let borderColor = passwordTextField.text == checkPasswordTextField.text ? UIColor.black.cgColor : UIColor.red.cgColor
        checkPasswordTextField.layer.borderColor = borderColor
        return passwordTextField.text == checkPasswordTextField.text
    }
    
    @IBAction func signupAction(_ sender: Any) {
        let checkMark = checkPassword()
        if checkMark {
            authenticator.signupCompleteRegistation(phone: Settings.phoneNumber!, password: checkPasswordTextField.text!, code: codeTextField.text!) { result in
                result ? self.performSegue(withIdentifier: SegueIdentifiers.signin.rawValue, sender: nil) : self.loginError()
            }
        }
    }
}
