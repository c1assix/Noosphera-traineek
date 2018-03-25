//
//  Authenticator.swift
//  Noosphera-trainee
//
//  Created by Лев Купчинов on 19.03.2018.
//  Copyright © 2018 Лев Купчинов. All rights reserved.
//

import Foundation
import Alamofire

struct Authenticator {
    
    private let parser = AuthenticationParser()
    
    func loginRequest(phone: String, password: String, completionHandler: @escaping (RequestResult<Bool>) -> Void) {
        let parameters = ["phone": phone, "password": password]
        request(URLContainer.login, method: .post, parameters: parameters).responseJSON { (response) in
            switch response.result {
            case .failure(let error):
                print(error)
                completionHandler(RequestResult.success(result: false))
            case .success(let value):
                self.parser.parseLogin(from: value)
                completionHandler(RequestResult.success(result: true))
            }
        }        
    }
    
    func signupGetSMS(phone: String, completionHandler: @escaping (RequestResult<Bool>) -> Void) {
        let parameters = ["phone": phone]
        request(URLContainer.getCode, method: .post, parameters: parameters).responseJSON { (response) in
            switch response.result {
            case .failure(let error):
                print(error)
                completionHandler(RequestResult.success(result: false))
            case .success(let value):
                self.parser.parseCode(from: value)
                completionHandler(RequestResult.success(result: true))
            }
        }
    }
    
    func signupCompleteRegistation(phone: String, password: String,
                                   code: String, completionHandler: @escaping (Bool) -> Void) {
        let parameters = ["phone": phone, "password": password, "code": code]
        request(URLContainer.register, method: .post, parameters: parameters).responseJSON { _ in
            let requestResult = self.parser.parseRegister(from: (Any).self)
            print("requestResult = \(requestResult)")
            completionHandler(requestResult)
        }
    }

    func MainQuestionsList(tableView: UITableView) {
        request(URLContainer.questions, method: .get).responseJSON { (response) in
            let result = response.result
            if let dict = result.value as? Array<Any>{
                questionsArray = dict as! [AnyObject]
                tableView.reloadData()
            }
        }
    }
}
