//
//  UserDefaultServiceTests.swift
//  QuickMediaSearchTests
//
//  Created by tyler on 2020/02/05.
//  Copyright © 2020 Assin. All rights reserved.
//

import XCTest
@testable import QuickMediaSearch

class UserDefaultServiceTests: XCTestCase {
    
    var subject: UserDefaultServiceType!
    
    override func setUp() {
        super.setUp()
        subject = UserDefaultService()
    }
    override func tearDown() {
        super.tearDown()
    }
    
    // failing test
    // 요구사항이? 뭔지?
    func test_ThumnailAddFavorite_ShouldBeStore() {
        // Given
        let thumbnail = QuickFixture.Sample.image.documents[0]
        // When
        subject.addFavorite(thumbnail)
        // Then
        XCTAssertEqual(subject.isFavorite(thumbnail), true)
    }
}
