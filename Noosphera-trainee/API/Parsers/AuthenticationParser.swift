//
//  AuthenticationParser.swift
//  Noosphera-trainee
//
//  Created by Лев Купчинов on 19.03.2018.
//  Copyright © 2018 Лев Купчинов. All rights reserved.
//

import Foundation
import SwiftyJSON

struct AuthenticationParser{
    func parseLogin(from json: Any) {
        let json = JSON(json)
        let hash = json["hash"].string
        let userId = json["userId"].string
        Settings.userId = userId
        Settings.hash = hash
        print(userId)
    }
    
    func parseCode(from json: Any) {
        let json = JSON(json)
        print(json)
    }
    
    func parseRegister(from json: Any) -> Bool{
        let json = JSON(json)
        let hash = json["hash"].string
        let userId = json["userId"].string
        Settings.userId = userId
        Settings.hash = hash
        print(json)
        return true
    }

}
