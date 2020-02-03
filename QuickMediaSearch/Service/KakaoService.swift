//
//  KakaoService.swift
//  QuickMediaSearch
//
//  Created by Tyler on 2020/02/03.
//  Copyright © 2020 Assin. All rights reserved.
//

import Foundation



protocol KakaoServiceType {
    func fetchImage()
    func fetchVClip()
    /*
     1. 둘중하나의 API 요청이 실패하면 실패로 간주한다.
     2. 두 작업 모두 성공해야만 리스트를 반환한다.
     */
    
}
