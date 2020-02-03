//
//  KakaoVclip.swift
//  QuickMediaSearch
//
//  Created by Tyler on 2020/02/03.
//  Copyright © 2020 Assin. All rights reserved.
//

import Foundation


struct KakaoVclipResponse {
    let meta: MetaData
    let documents: [KakaoVclip]
}

struct KakaoVclip {
    let thumbnail: String
    let datetime: String
    let url: String
    let title: String
    let play_time: Int
    let author: String
}
