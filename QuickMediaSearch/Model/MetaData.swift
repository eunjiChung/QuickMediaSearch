//
//  MetaData.swift
//  QuickMediaSearch
//
//  Created by tyler on 2020/02/04.
//  Copyright © 2020 Assin. All rights reserved.
//

import Foundation

struct MetaData: Decodable {
    let total_count: Int
    let pageable_count: Int
    let is_end: Bool
}
