//
//  KakaoService.swift
//  QuickMediaSearch
//
//  Created by Tyler on 2020/02/03.
//  Copyright © 2020 Assin. All rights reserved.
//

import Foundation

protocol KakaoServiceType {
    func fetchImage(urlRequest: URLRequest, result: @escaping (Result<KakaoImageResponse, Error>) -> Void)
    func fetchVClip(urlRequest: URLRequest, result: @escaping (Result<KakaoVclipResponse, Error>) -> Void)
}

// Requests <Data> -> KakaoService <T: Decode> -> KakaoUsecaes [Thumbanil]
class KakaoService: KakaoServiceType {
    private let request: Requests

    init(request: Requests) {
        self.request = request
    }

    func fetchImage(urlRequest: URLRequest, result: @escaping (Result<KakaoImageResponse, Error>) -> Void) {
        self.fetchDecode(urlRequest: urlRequest, result: result)
    }
    func fetchVClip(urlRequest: URLRequest, result: @escaping (Result<KakaoVclipResponse, Error>) -> Void) {
        self.fetchDecode(urlRequest: urlRequest, result: result)
    }

    private func fetchDecode<T>(urlRequest: URLRequest, result: @escaping (Result<T, Error>) -> Void) where T: Decodable {
        self.request.request(with: urlRequest) { httpRes in
            switch httpRes {
            case .success(let data):
                do {
                    let res = try JSONDecoder().decode(T.self, from: data)
                    result(Result.success(res))
                } catch {
                    result(Result.failure(error))
                }
            case .failure(let error):
                result(Result.failure(error))
            }
        }
    }
}
