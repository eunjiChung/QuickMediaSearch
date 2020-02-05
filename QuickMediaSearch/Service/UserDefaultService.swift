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
    
    func fetchFavorites(result: @escaping (Result<[Thumbnailable], Error>) -> Void)
}

class UserDefaultService: UserDefaultServiceType {
    private var favorites = [String: Thumbnailable]()

    func isFavorite(_ thumbnail: Thumbnailable) -> Bool {
        return favorites[thumbnail.thumbnail] != nil
    }
    
    func addFavorite(_ thumbnail: Thumbnailable) {
        favorites.updateValue(thumbnail, forKey: thumbnail.thumbnail)
    }
    
    func removeFavorite(_ thumbnail: Thumbnailable) {
        
    }
    
    func fetchFavorites(result: @escaping (Result<[Thumbnailable], Error>) -> Void) {
        
        
    }
}
