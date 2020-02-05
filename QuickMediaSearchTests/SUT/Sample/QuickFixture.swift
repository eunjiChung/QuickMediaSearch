//
//  QuickFixture.swift
//  QuickMediaSearchTests
//
//  Created by tyler on 2020/02/05.
//  Copyright © 2020 Assin. All rights reserved.
//

import Foundation
@testable import QuickMediaSearch

struct QuickFixture {
    struct Sample {
        static let image: KakaoImageResponse = ResourcesLoader.loadJson("kakaoImageSample")
        static let vclip: KakaoVclipResponse = ResourcesLoader.loadJson("kakaoVclipSample")
    }
}
