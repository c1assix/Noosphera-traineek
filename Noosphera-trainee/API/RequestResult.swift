//
//  RequestResult.swift
//  Noosphera-trainee
//
//  Created by Лев Купчинов on 19.03.2018.
//  Copyright © 2018 Лев Купчинов. All rights reserved.
//

import Foundation

enum RequestResult<T> {
    case success(result: T)
    case error(error: Error)
}
