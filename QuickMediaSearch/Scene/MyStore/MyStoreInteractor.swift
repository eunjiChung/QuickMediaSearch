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
        self.presenter.presentProgress(isShow: true)
        self.favoriteService.fetchFavorites { (result) in
            switch result {
            case .success(let thumbnailable):
                self.presenter.presentFetchedFavorites()
            case .failure(let error):
                let alert = UIAlertControllerBuilder().setMessage("에러가 발생하였습니다.")
                self.presenter.presentAlert(alert)
            }
        }
    }
}
