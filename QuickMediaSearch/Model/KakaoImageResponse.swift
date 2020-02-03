//
//  KakaoImage.swift
//  QuickMediaSearch
//
//  Created by Tyler on 2020/02/03.
//  Copyright © 2020 Assin. All rights reserved.
//

import Foundation

struct KakaoImageResponse {
    let meta: MetaData
    let documents: [KakaoImage]
}

struct KakaoImage {
    let thumbnail_url: String
    let datetime: String
    let image_url: String
    let collection: String
    let height: Int
    let width: Int
    let display_sitename: String
    let doc_url: String
}
