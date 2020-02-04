//
//  MockKakaoServiceType_.swift
//  QuickMediaSearchTests
//
//  Created by tyler on 2020/02/04.
//  Copyright © 2020 Assin. All rights reserved.
//

import Cuckoo
@testable import QuickMediaSearch

extension MockKakaoServiceType {
    @discardableResult
    func stubKakaoImage(_ result: Result<KakaoImageResponse, Error>) {
        stub(self, block: { mock in
            when(mock.fetchImage(result: any()))
                .then({ closure in
                    closure(result)
                })
        })
        
    }
}
