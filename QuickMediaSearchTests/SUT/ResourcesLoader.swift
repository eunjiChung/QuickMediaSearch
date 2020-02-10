//
//  JsonSerializer.swift
//  TylerQuickMediaTests
//
//  Created by tskim on 2018. 10. 27..
//  Copyright © 2018년 tskim. All rights reserved.
//
import Foundation
@testable import QuickMediaSearch

class ResourcesLoader {
    static func loadJson<T: Decodable>(_ resource: String) -> T {
        let testBundle = Bundle(for: self)
        if let path = testBundle.path(forResource: resource, ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                return try JSONDecoder().decode(T.self, from: data)
            } catch {
            }
        }
        fatalError("can't decode \(T.self)")
    }
    static func readData(_ resource: String) -> Data {
        let testBundle = Bundle(for: self)
        if let path = testBundle.path(forResource: resource, ofType: "json") {
            do {
                return try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            } catch {
            }
        }
        fatalError("can't read data")
    }
}
