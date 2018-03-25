//
//  AuthorizationVC.swift
//  Noosphera-trainee
//
//  Created by Лев Купчинов on 16.03.2018.
//  Copyright © 2018 Лев Купчинов. All rights reserved.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet private weak var phoneTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if currentReachabilityStatus == .notReachable {
            noInternetConnectionAlert()
        }
    }
    
    // MARK: - Actions
    
    @IBAction func loginAction(_ sender: Any) {
        let authenticator = Authenticator()
        authenticator.loginRequest(phone: self.phoneTextField.text!, password: self.passwordTextField.text!) { result in
            switch result {
            case .success(result: let success):
                print(success)
                self.performSegue(withIdentifier: SegueIdentifiers.login.rawValue, sender: nil)
                self.clearTextFields()
            case .error(error: let error):
                print(error.localizedDescription)
                self.loginError()
            }
        }
    }
    
    func clearTextFields() {
        phoneTextField.text = ""
        passwordTextField.text = ""
    }
}
