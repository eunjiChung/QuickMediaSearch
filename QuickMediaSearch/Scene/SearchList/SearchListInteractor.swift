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

/*
1. 둘중하나의 API 요청이 실패하면 실패로 간주한다.
2. 두 작업 모두 성공해야만 리스트를 반환한다.
*/
class SearchListInteractor: SearchListBusinessLogic {
    
    private let presenter: SearchListPresentationLogic
    private let useCase: KakaoUsecaseType
    init(useCase: KakaoUsecaseType, presenter: SearchListPresentationLogic) {
        self.presenter = presenter
        self.useCase = useCase
    }
    
    func fetchSearchList(query: String) {
        self.presenter.presentProgress(isShow: true)
        self.useCase.fetchMedium { result in
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
