//
//  URLContainer.swift
//  Noosphera-trainee
//
//  Created by Лев Купчинов on 19.03.2018.
//  Copyright © 2018 Лев Купчинов. All rights reserved.
//

import Foundation

enum URLContainer {
    
    /* Auth */
    private static let baseURL = URL(string: "http://noosfera.online/api/v1")!
    static let login = URLContainer.baseURL.appendingPathComponent("login")
    static let getCode = URLContainer.baseURL.appendingPathComponent("getCode")
    static let register = URLContainer.baseURL.appendingPathComponent("register")
    static let questions = URLContainer.baseURL.appendingPathComponent("questions")
}
