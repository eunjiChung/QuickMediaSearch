//
//  KakaoVclip.swift
//  QuickMediaSearch
//
//  Created by Tyler on 2020/02/03.
//  Copyright © 2020 Assin. All rights reserved.
//

import Foundation


struct KakaoVclipResponse: Decodable {
    let meta: MetaData
    let documents: [KakaoVclip]
}

struct KakaoVclip: Thumbnailable, Decodable {
    let type = ThumbnailType.vclip
    let thumbnail: String
    let datetime: String
    let url: String
    let title: String
    let play_time: Int
    let author: String
}

extension KakaoVclip {
    var width: Int {
        return 640
    }
    
    var height: Int {
        return 480
    }
}
