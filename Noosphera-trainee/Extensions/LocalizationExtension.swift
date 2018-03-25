//
//  LocalizationExtension.swift
//  Noosphera-trainee
//
//  Created by Лев Купчинов on 21.03.2018.
//  Copyright © 2018 Лев Купчинов. All rights reserved.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
