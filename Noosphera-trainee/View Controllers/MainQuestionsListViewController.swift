//
//  MainQuestionsListViewController.swift
//  Noosphera-trainee
//
//  Created by Лев Купчинов on 25.03.2018.
//  Copyright © 2018 Лев Купчинов. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire

var questionsArray = [AnyObject]()

class MainQuestionsListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var questionsTableView: UITableView!

    let authenticator = Authenticator()

    override func viewDidLoad() {
        super.viewDidLoad()
        authenticator.MainQuestionsList(tableView: questionsTableView)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionsArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? QuestionTableViewCell
        let title = questionsArray[indexPath.row]["question"]
        let city = questionsArray[indexPath.row]["city"]
        cell?.questionLabel.text = title as? String
        cell?.LocationLabel.text = city as? String
        return cell!
    }

}
