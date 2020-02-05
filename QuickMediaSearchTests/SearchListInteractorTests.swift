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
    
    func test_successFetched_displaySection() {
        self.service.stubFetchMedium(Result.success(QuickFixture.Sample.image.documents))
        self.subject.fetchSearchList(query: "")
        // MARK: 순서를 보장하는 방법을 연구가 필요함.
        verify(self.presenter, times(1)).presentProgress(isShow: true)
        verify(self.presenter, times(1)).presentFetchedSearchList()
        verify(self.presenter, times(1)).presentProgress(isShow: false)
    }
    
    func test_failureFetched_displaySection() {
        self.service.stubFetchMedium(Result.failure(TestError.error))
        self.subject.fetchSearchList(query: "")
        // MARK: 순서를 보장하는 방법을 연구가 필요함.
        verify(self.presenter, times(1)).presentProgress(isShow: true)
        verify(self.presenter, times(1)).presentAlert(any())
        verify(self.presenter, times(1)).presentProgress(isShow: false)
    }
    
}

class StubSearchListPresentationLogic: SearchListPresentationLogic {
    func presentAlert(_ alert: UIAlertControllerBuilder) {
    }
    
    func presentProgress(isShow: Bool) {
    }
    
    func presentFetchedSearchList() {
    }
    
    func presentDetailViewController() {
    }
}
