//
//  DetailViewController.swift
//  QuickMediaSearch
//
//  Created by Tyler on 2020/02/03.
//  Copyright © 2020 Assin. All rights reserved.
//

import UIKit
/*
 1. Favorite 에 추가할 수 있어야 한다.
 2. Favorite 에서 삭제할 수 있어야 한다.
 3. 사진은 원본 사이즈로 보야줘야 한다.
 */

// 어떤 메시지로 전달되어야 하는지? 감을 모르겠어요.
class DetailViewController: UIViewController {
    
    private let service: AppServices
    
    init(service: AppServices) {
        self.service = service
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
