//
//  URLRequests.swift
//  QuickMediaSearch
//
//  Created by tyler on 2020/02/09.
//  Copyright © 2020 Assin. All rights reserved.
//
import UIKit

enum RequestsError: Error {

    case failDecoding
    case failSerialization
    
    /// Represents the error reason during networking request phase.
    ///
    /// - emptyRequest: The request is empty. Code 1001.
    /// - invalidURL: The URL of request is invalid. Code 1002.
    /// - taskCancelled: The downloading task is cancelled by user. Code 1003.
    public enum RequestErrorReason: Error {
        
        /// The request is empty. Code 1001.
        case emptyRequest
        case malformURL(url: URL?)
        
        /// The URL of request is invalid. Code 1002.
        /// - request: The request is tend to be sent but its URL is invalid.
        case invalidURL(request: URLRequest)
    }
    
    /// Represents the error reason during networking response phase.
    ///
    /// - invalidURLResponse: The response is not a valid URL response. Code 2001.
    /// - invalidHTTPStatusCode: The response contains an invalid HTTP status code. Code 2002.
    /// - URLSessionError: An error happens in the system URL session. Code 2003.
    /// - dataModifyingFailed: Data modifying fails on returning a valid data. Code 2004.
    /// - noURLResponse: The task is done but no URL response found. Code 2005.
    public enum ResponseErrorReason: Error {
        
        /// The response is not a valid URL response. Code 2001.
        /// - response: The received invalid URL response.
        ///             The response is expected to be an HTTP response, but it is not.
        case invalidURLResponse(response: URLResponse?)
        
        /// The response contains an invalid HTTP status code. Code 2002.
        /// - Note:
        ///   By default, status code 200..<400 is recognized as valid. You can override
        ///   this behavior by conforming to the `ImageDownloaderDelegate`.
        /// - response: The received response.
        case invalidHTTPStatusCode(response: HTTPURLResponse)
        
        /// An error happens in the system URL session. Code 2003.
        /// - error: The underlying URLSession error object.
        case URLSessionError(error: Error)
        
        case noURLResponse
    }
}

// https://github.com/ReactiveX/RxSwift/blob/master/RxCocoa/Foundation/URLSession%2BRx.swift
class Requests: NetworkRequestProtocol {
    func request(with: URLRequest, result: @escaping (Result<Data, Error>) -> Void) {
        let task = URLSession.shared.dataTask(with: with) { data, response, error in
            guard let response = response, let data = data else {
                result(Result.failure(RequestsError.ResponseErrorReason.noURLResponse))
                return
            }
            guard let httpResponse = response as? HTTPURLResponse else {
                result(Result.failure(RequestsError.ResponseErrorReason.invalidURLResponse(response: response)))
                return
            }
            if 200 ..< 300 ~= httpResponse.statusCode {
                result(Result.success(data))
            } else {
                result(Result.failure(RequestsError.ResponseErrorReason.invalidHTTPStatusCode(response: httpResponse)))
            }
        }
        task.resume()
    }
}
