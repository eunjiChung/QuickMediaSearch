//
//  SearchListViewController.swift
//  QuickMediaSearch
//
//  Created by Tyler on 2020/02/03.
//  Copyright © 2020 Assin. All rights reserved.
//

import UIKit
/*
 요구사항:
 1. 이미지, 비디오를 검색할 수 있어야 한다.
 2. 검색된 리스트를 가져와야 한다.
 3. 네트워크 통신에서는 ProgressBar 가 보여줘야 한다.
 4. Error 가 발생하면 Alert 를 띄워야 한다.
 5. 한 아이템을 클릭하면 Detail 로 이동해야 한다.
 */

protocol SearchListDisplayLogic: class {
    func displayProgress(isShow: Bool)
    func displayFetchedList()
    func displayDetailViewController()
}

class SearchListViewController: UIViewController, SearchListDisplayLogic {
    private var interactor: SearchListInteractor?
    private var router: SearchListRouter?

    init(service: AppServices) {
        super.init(nibName: nil, bundle: nil)
        let presenter = SearchListPresentation(view: self)
        self.interactor = SearchListInteractor(useCase: service.kakaoUseCase, presenter: presenter)
        self.router = SearchListRouter(service: service, viewContoroller: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func displayProgress(isShow: Bool) {
    }
    
    func displayFetchedList() {
    }
    func displayDetailViewController() {
    }
}
