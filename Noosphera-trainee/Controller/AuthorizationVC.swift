//
//  AuthorizationVC.swift
//  Noosphera-trainee
//
//  Created by Лев Купчинов on 16.03.2018.
//  Copyright © 2018 Лев Купчинов. All rights reserved.
//

import UIKit

class AuthorizationVC: UIViewController{
    

    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidAppear(_ animated: Bool) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        isLogged()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Actions
    
    @IBAction func loginAction(_ sender: UIButton) {
        try? self.loginRequest(phone: self.phoneTextField.text!, password: self.passwordTextField.text!)
            if UserDefaults.standard.string(forKey: "hashValue") != nil {
                self.performSegue(withIdentifier: "fromLoginSegue", sender: nil)
                self.clearTextFields()
            } else {
                self.loginError()
            }
    }
    
    func isLogged(){
        if let _ = UserDefaults.standard.string(forKey: "hashValue"){
            self.performSegue(withIdentifier: "fromLoginSegue", sender: nil)
        } else {
            if currentReachabilityStatus == .notReachable {
                noInternetConnectionAlert()
            }
        }
    }
    
    func clearTextFields(){
        phoneTextField.text = ""
        passwordTextField.text = ""
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
