//
//  KakaoUsercase.swift
//  QuickMediaSearch
//
//  Created by tyler on 2020/02/09.
//  Copyright © 2020 Assin. All rights reserved.
//

import Foundation

/*
1. 둘중하나의 API 요청이 실패하면 실패로 간주한다.
2. 두 작업 모두 성공해야만 리스트를 반환한다.
*/

protocol KakaoUsecaseType {
    func fetchMedium(result: @escaping (Result<[Thumbnailable], Error>) -> Void)
}

class KakaoUsecase: KakaoUsecaseType {
    var service:KakaoServiceType
    init(service: KakaoServiceType) {
        self.service = service
    }
    
    func fetchMedium(result: @escaping (Result<[Thumbnailable], Error>) -> Void) {
        // help
        var count = 0
        var resultList:[Thumbnailable] = [Thumbnailable]()
        
        service.fetchImage(urlRequest: URLRequest.init(url: URL.init(string: "https://dapi.kakao.com/v2/search/image?query=iPhone")!)){ (httpRes) in
            self.handleResponse(httpRes: httpRes, count: &count, list: &resultList, completion: { completion in
                result(completion)
            })
        }
        
        service.fetchVClip(urlRequest: URLRequest.init(url: URL.init(string: "https://dapi.kakao.com/v2/search/vclip?query=iPhone")!)){ (httpRes) in
            self.handleResponse(httpRes: httpRes, count: &count, list: &resultList, completion: { completion in
                result(completion)
            })
        }
    }
    
    private func handleResponse<T:Decodable>(httpRes:Result<T,Error>,count:inout Int,list:inout [Thumbnailable],completion:@escaping (Result<[Thumbnailable], Error>) -> Void){
        switch httpRes {
        case .success(let res):
            if let res = res as? KakaoImageResponse {
                list.append(contentsOf: res.documents)
            } else if let res = res as? KakaoVclipResponse {
                list.append(contentsOf: res.documents)
            }
            count += 1
            if count == 2 {
                completion(Result.success(list))
            }
        case .failure(let error):
            completion(Result.failure(error))
        }
    }
}
