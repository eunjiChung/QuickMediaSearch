//
//  UserDefaultService.swift
//  QuickMediaSearch
//
//  Created by Tyler on 2020/02/03.
//  Copyright © 2020 Assin. All rights reserved.
//

import Foundation

protocol UserDefaultServiceType {
    func isFavorite()
    func addFavorite()
    func removeFavorite()
}

class UserDefaultService: UserDefaultServiceType {
    /*
     TODO: Level[2] 아래 동작 검증필요
     */
    func isFavorite() {
    }
    
    func addFavorite() {
    }
    
    func removeFavorite() {
    }
}
