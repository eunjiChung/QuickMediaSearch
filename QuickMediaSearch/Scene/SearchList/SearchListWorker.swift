//
//  SearchListWorker.swift
//  QuickMediaSearch
//
//  Created by Tyler on 2020/02/03.
//  Copyright © 2020 Assin. All rights reserved.
//

import Foundation

class SearchListWorker {
    
    private let service: KakaoServiceType
    
    init(service: KakaoServiceType) {
        self.service = service
    }
    
    func fetchSearchList(query: String) -> [SearchListPresent] {
        return []
    }
}
