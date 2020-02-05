//
//  UserDefaultService.swift
//  QuickMediaSearch
//
//  Created by Tyler on 2020/02/03.
//  Copyright © 2020 Assin. All rights reserved.
//

import Foundation

protocol UserDefaultServiceType {
    func isFavorite(_ thumbnail: Thumbnailable) -> Bool
    func addFavorite(_ thumbnail: Thumbnailable)
    func removeFavorite(_ thumbnail: Thumbnailable)
}

class UserDefaultService: UserDefaultServiceType {
    private var favorites = [String: Bool]()

    func isFavorite(_ thumbnail: Thumbnailable) -> Bool {
        return favorites[thumbnail.thumbnail] == true
    }
    
    func addFavorite(_ thumbnail: Thumbnailable) {
        favorites.updateValue(true, forKey: thumbnail.thumbnail)
    }
    
    func removeFavorite(_ thumbnail: Thumbnailable) {
        
    }
}
