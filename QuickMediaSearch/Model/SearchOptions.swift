//
//  SearchOptions.swift
//  QuickMediaSearch
//
//  Created by tyler on 2020/02/04.
//  Copyright © 2020 Assin. All rights reserved.
//

import Foundation

enum SortType: String {
    case recency
    case accuracy
}

struct SearchOptions {
    let query: String
    let sort: String
    let page: Int
    let size: Int

    public init(query: String, sort: SortType, page: Int, size: Int) {
        self.query = query
        self.sort = sort.rawValue
        self.page = page
        self.size = size
    }
}
