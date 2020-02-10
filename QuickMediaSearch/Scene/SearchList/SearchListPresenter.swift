//
//  SearchListPresenter.swift
//  QuickMediaSearch
//
//  Created by Tyler on 2020/02/03.
//  Copyright © 2020 Assin. All rights reserved.
//

import UIKit

protocol SearchListPresentationLogic {
    func presentProgress(isShow: Bool)
    func presentAlert(_ alert: UIAlertControllerBuilder)
    func presentFetchedSearchList()
    func presentDetailViewController()
}
class SearchListPresentation: SearchListPresentationLogic {
    private weak var view: SearchListDisplayLogic?
    
    init(view: SearchListDisplayLogic) {
        self.view = view
    }
    func presentProgress(isShow: Bool) {
    }
    
    func presentAlert(_ builder: UIAlertControllerBuilder) {
    }
    
    func presentFetchedSearchList() {
    }
    
    func presentDetailViewController() {
        
    }
}
