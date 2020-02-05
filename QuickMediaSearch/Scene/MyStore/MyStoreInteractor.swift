//
//  SearchListInteractor.swift
//  QuickMediaSearch
//
//  Created by Tyler on 2020/02/03.
//  Copyright © 2020 Assin. All rights reserved.
//

import Foundation

protocol MyStoreBusinessLogic {
    func fetchFavorites()
}


class MyStoreInteractor: MyStoreBusinessLogic {
    
    private let presenter: MyStorePresentationLogic
    private let favoriteService: UserDefaultServiceType
    
    init(favoriteService: UserDefaultServiceType, presenter: MyStorePresentationLogic) {
        self.favoriteService = favoriteService
        self.presenter = presenter
    }
    
    func fetchFavorites() {
    }
}
