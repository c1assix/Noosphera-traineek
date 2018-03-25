//
//  MainQuestionsVC.swift
//  Noosphera-trainee
//
//  Created by Лев Купчинов on 19.03.2018.
//  Copyright © 2018 Лев Купчинов. All rights reserved.
//

import UIKit

class ProfileMenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func logoutAction(_ sender: UIButton) {
        Settings.hash = nil
        let storyBoard: UIStoryboard = UIStoryboard(name: "Authorization", bundle: nil)
        let loginViewController = storyBoard.instantiateViewController(withIdentifier: "loginNavigation")
        self.present(loginViewController, animated: true, completion: nil)
    }

}
