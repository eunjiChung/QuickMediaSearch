//
//  SearchListInteractor.swift
//  QuickMediaSearchTests
//
//  Created by tyler on 2020/02/04.
//  Copyright © 2020 Assin. All rights reserved.
//

import XCTest
import Cuckoo
@testable import QuickMediaSearch

class SearchListInteractorTests: XCTestCase {
    
    var subject: SearchListInteractor!
    var service: MockKakaoServiceType!
    var presenter: MockSearchListPresentationLogic!
    
    override func setUp() {
        super.setUp()
        self.service = MockKakaoServiceType()
        self.presenter = MockSearchListPresentationLogic()
        self.presenter.withEnabledDefaultImplementation(StubSearchListPresentationLogic())
        self.subject = SearchListInteractor(service: service, presenter: presenter)
    }
    override func tearDown() {
        super.tearDown()
    }
    
    func test_fetched_displaySection() {
        self.subject.fetchSearchList()
        verify(self.presenter).presentProgress(isShow: true)
        verify(self.presenter).presentFetchedSearchList()
        verify(self.presenter).presentProgress(isShow: false)
    }
}

class StubSearchListPresentationLogic: SearchListPresentationLogic {
    func presentProgress(isShow: Bool) {
    }
    
    func presentAlert(_ alert: UIAlertController) {
    }
    
    func presentFetchedSearchList() {
    }
    
    func presentDetailViewController() {
    }
}


