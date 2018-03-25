//
//  Settings.swift
//  Noosphera-trainee
//
//  Created by Лев Купчинов on 19.03.2018.
//  Copyright © 2018 Лев Купчинов. All rights reserved.
//

import Foundation

enum Settings {
    static var hash: String? {
        get { return UserDefaults.standard.value(forKey: "hashValue") as? String }
        set { UserDefaults.standard.set(newValue, forKey: "hashValue") }
    }
    static var userId: String? {
        get { return UserDefaults.standard.value(forKey: "userId") as? String }
        set { UserDefaults.standard.set(newValue, forKey: "userId") }
    }
    static var phoneNumber: String? {
        get { return UserDefaults.standard.value(forKey: "phoneNumber") as? String }
        set { UserDefaults.standard.set(newValue, forKey: "phoneNumber") }
    }
}
