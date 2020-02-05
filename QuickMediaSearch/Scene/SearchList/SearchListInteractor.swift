//
//  SearchListInteractor.swift
//  QuickMediaSearch
//
//  Created by Tyler on 2020/02/03.
//  Copyright © 2020 Assin. All rights reserved.
//

import Foundation

protocol SearchListBusinessLogic {
    func fetchSearchList(query: String)
}

class SearchListInteractor: SearchListBusinessLogic {
    
    private let presenter: SearchListPresentationLogic
    private let service: KakaoServiceType
    init(service: KakaoServiceType, presenter: SearchListPresentationLogic) {
        self.presenter = presenter
        self.service = service
    }
    
    func fetchSearchList(query: String) {
        self.presenter.presentProgress(isShow: true)
        self.service.fetchMedium { result in
            self.presenter.presentProgress(isShow: false)
            switch result {
            case .success(let thumbnails):
                self.presenter.presentFetchedSearchList()
            case .failure(let error):
                let alert = UIAlertControllerBuilder().setMessage("에러가 발생하였습니다.")
                self.presenter.presentAlert(alert)
            }
        }
    }
}
