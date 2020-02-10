//
//  MyStoreInteractorTests.swift
//  QuickMediaSearchTests
//
//  Created by tyler on 2020/02/05.
//  Copyright © 2020 Assin. All rights reserved.
//

import XCTest
import Cuckoo
@testable import QuickMediaSearch

class MyStoreInteractorTests: XCTestCase {

    var subject: MyStoreInteractor!
    var service: UserDefaultServiceType!
    var presenter: MockMyStorePresentationLogic!

    override func setUp() {
        super.setUp()
        self.service = UserDefaultService()
        self.presenter = MockMyStorePresentationLogic()
        self.presenter.withEnabledDefaultImplementation(StubMyStorePresentationLogic())
        self.subject = MyStoreInteractor(favoriteService: self.service, presenter: self.presenter)
    }
    override func tearDown() {
        super.tearDown()
    }
    func test_SuccessFetched_displaySection() {
        // Given
        
        // When
        self.subject.fetchFavorites()
        // Then
        verify(self.presenter).presentProgress(isShow: true)
        verify(self.presenter).presentFetchedFavorites()
        verify(self.presenter).presentProgress(isShow: false)
    }

    func test_failureFetched_displaySection() {
        // Given
        // When
        self.subject.fetchFavorites()
        // Then
        verify(self.presenter).presentProgress(isShow: true)
        verify(self.presenter).presentAlert(any())
        verify(self.presenter).presentProgress(isShow: false)
    }
}

class StubMyStorePresentationLogic: MyStorePresentationLogic {
    func presentProgress(isShow: Bool) {
    }
    
    func presentAlert(_ alert: UIAlertControllerBuilder) {
    }
    
    func presentFetchedFavorites() {
        
    }
}
