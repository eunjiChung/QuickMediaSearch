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
    func stubFetchImage(_ result: Result<KakaoImageResponse, Error>) {
        stub(self, block: { mock in
            when(mock.fetchImage(urlRequest: any(), result: any()))
                .then { request, closure in
                    closure(result)
            }
        })
    }
    func stubFetchVclip(_ result: Result<KakaoVclipResponse, Error>) {
        stub(self, block: { mock in
            when(mock.fetchVClip(urlRequest: any(), result: any()))
                .then { request, closure in
                    closure(result)
            }
        })

    }
}


extension MockKakaoUsecaseType {
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
