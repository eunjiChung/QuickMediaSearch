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
    func stubFetchMedium(_ result: Result<[Thumbnailable], Error>) {
        stub(self, block: { mock in
            when(mock.fetchMedium(result: any()))
                .then({ closure in
                    closure(result)
                })
        })

    }
}
