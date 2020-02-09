//
//  NetworkRequestProtocol.swift
//  QuickMediaSearch
//
//  Created by tyler on 2020/02/09.
//  Copyright © 2020 Assin. All rights reserved.
//

import Foundation

protocol NetworkRequestProtocol {
    func request(with: URLRequest, result: @escaping (Result<Data, Error>) -> Void)
}
