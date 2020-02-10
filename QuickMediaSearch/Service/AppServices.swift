//
//  AppServices.swift
//  QuickMediaSearch
//
//  Created by tyler on 2020/02/04.
//  Copyright © 2020 Assin. All rights reserved.
//

import Foundation

struct AppServices {
    let kakaoService: KakaoServiceType
    let userDefaultService: UserDefaultServiceType
    
    var kakaoUseCase: KakaoUsecase {
        return KakaoUsecase(service: self.kakaoService)
    }
}
