//
//  KakaoServiceTests.swift
//  QuickMediaSearchTests
//
//  Created by tyler on 2020/02/09.
//  Copyright © 2020 Assin. All rights reserved.
//
import XCTest
@testable import QuickMediaSearch

/*
1. 둘중하나의 API 요청이 실패하면 실패로 간주한다.
2. 두 작업 모두 성공해야만 리스트를 반환한다.
*/
class KakaoServiceTests: XCTestCase {
    var subject: KakaoServiceType!
    
    override func setUp() {
        subject = KakaoService()
    }
    
    func test_두작업모두성공해야만_리스트를반환한다() {
        // Given
        // When
        // Then
        let expectation = XCTestExpectation()
        subject.fetchMedium { result in
            switch result {
            case .success(let data):
                XCTAssertTrue(true)
            case .failure(let error):
                XCTFail("error 가 호출되면 안되다.")
            }
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 0.1)
    }
    func test_둘중하나의API요청이실패하면_실패로_간주한다() {
        let expectation = XCTestExpectation()
        
        // Given
        // When
        // Then
        subject.fetchMedium { result in
            switch result {
            case .success(let data):
                XCTFail("error 가 호출되면 안되다.")
            case .failure(let error):
                XCTAssertTrue(true)
            }
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 0.1)
    }
}


//extension Array where Element: Thumbnailable {
//    static func == (lhs: Self, rhs: Self) -> Bool {
//        lhs.elementsEqual(rhs)
//    }
//}
//extension Thumbnailable: Equatable {
//    func equals(lhs: Self, rhs: Self) -> Bool {
//        return true
//    }
//}
