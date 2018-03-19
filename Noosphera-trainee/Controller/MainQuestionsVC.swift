//
//  MainQuestionsVC.swift
//  Noosphera-trainee
//
//  Created by Лев Купчинов on 19.03.2018.
//  Copyright © 2018 Лев Купчинов. All rights reserved.
//

import UIKit

class MainQuestionsVC: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func logoutAction(_ sender: UIButton) {
        UserDefaults.standard.removeObject(forKey: "hashValue")
            navigationController?.popToRootViewController(animated: true)
        guard let window = UIApplication.shared.keyWindow else {return}
        let sb = UIStoryboard(name: "Main", bundle: nil)
        var vc: UIViewController
        vc = sb.instantiateInitialViewController()!
        window.rootViewController = vc
        UIView.transition(with: window, duration: 0.5, options: .transitionCrossDissolve, animations: nil, completion: nil)
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
