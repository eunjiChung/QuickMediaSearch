//
//  SearchListInteractor.swift
//  QuickMediaSearch
//
//  Created by Tyler on 2020/02/03.
//  Copyright © 2020 Assin. All rights reserved.
//

import Foundation

protocol SearchListBusinessLogic {
    func fetchSearchList()
}

class SearchListInteractor: SearchListBusinessLogic {
    
    private let presenter: SearchListPresentationLogic
    private let worker: SearchListWorker
    init(service: KakaoServiceType, presenter: SearchListPresentationLogic) {
        self.presenter = presenter
        self.worker = SearchListWorker(service: service)
    }
    
    func fetchSearchList() {
    }
}
