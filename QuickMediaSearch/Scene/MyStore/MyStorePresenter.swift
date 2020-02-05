//
//  SearchListPresenter.swift
//  QuickMediaSearch
//
//  Created by Tyler on 2020/02/03.
//  Copyright © 2020 Assin. All rights reserved.
//

import Foundation

protocol MyStorePresentationLogic {
    func presentProgress(isShow: Bool)
    func presentAlert(_ alert: UIAlertControllerBuilder)
    func presentFetchedSearchList()
}
class MyStorePresenter: MyStorePresentationLogic {
    func presentProgress(isShow: Bool) {
    }
    
    func presentAlert(_ alert: UIAlertControllerBuilder) {
    }
    
    func presentFetchedSearchList() {
    }
}
