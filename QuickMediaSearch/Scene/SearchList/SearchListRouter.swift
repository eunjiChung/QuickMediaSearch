//
//  SearchListRouter.swift
//  QuickMediaSearch
//
//  Created by Tyler on 2020/02/03.
//  Copyright © 2020 Assin. All rights reserved.
//

import Foundation

protocol SearchListRoutingLogic {
  func routeToDetail()
}

class SearchListRouter: SearchListRoutingLogic {
    private let service: AppServices
    private weak var viewContoroller: SearchListViewController?
    
    init(service: AppServices, viewContoroller: SearchListViewController) {
        self.service = service
        self.viewContoroller = viewContoroller
    }
    
    func routeToDetail() {
        let vc = DetailViewController(service: self.service)
        self.viewContoroller?.present(vc, animated: true)
    }
}
