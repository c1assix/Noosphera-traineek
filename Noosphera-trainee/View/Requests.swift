//
//  Requests.swift
//  Noosphera-trainee
//
//  Created by Лев Купчинов on 18.03.2018.
//  Copyright © 2018 Лев Купчинов. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

protocol Requests{
}

extension NSObject: Requests{
    func loginRequest(phone: String, password: String) -> Void{
        guard let url = URL(string: "http://noosfera.online/api/v1/login") else {return}
        let parameters = ["phone" : phone, "password" : password]
            request(url, method: .post, parameters: parameters).responseJSON { (response) in
                //let result = response.description
                switch response.result{
                case .failure(let error):
                    print(error)
                    break
                case .success(let value):
                    print(value)
                    let json = JSON(value)
                    let isValid = json["result"].int!
                    let hash = json["hash"].string
                    UserDefaults.standard.set(hash, forKey: "hashValue")
                    break
                }
        }
    }
}
