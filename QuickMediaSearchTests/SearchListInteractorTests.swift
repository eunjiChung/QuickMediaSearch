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

//
//  MyStoreInteractorTests.swift
//  QuickMediaSearchTests
//
//  Created by tyler on 2020/02/05.
//  Copyright © 2020 Assin. All rights reserved.
//
//
//import XCTest
//import Cuckoo
//@testable import QuickMediaSearch
//
//class MyStoreInteractorTests: XCTestCase {
//
//    var subject: MyStoreInteractor!
//    var service: MockUserDefaultServiceType!
//    var presenter: MockMyStorePresentationLogic!
//
//    override func setUp() {
//        super.setUp()
//        self.service = MockUserDefaultServiceType()
//        self.service.withEnabledDefaultImplementation(MockUserDefaultServiceType())
//        self.presenter = MockMyStorePresentationLogic()
//        self.presenter.withEnabledDefaultImplementation(StubMyStorePresentationLogic())
//
//        self.subject = MyStoreInteractor(favoriteService: self.service, presenter: self.presenter)
//    }
//    override func tearDown() {
//        super.tearDown()
//    }
////    func test_SuccessFetched_displaySection() {
////        // Given
////        let aa = [Thumbnailable]()
////        self.service.fetchFavorites(result: Result.success(aa))
////        // When
////        self.subject.fetchFavorites()
////        // Then
////        verify(self.presenter).presentProgress(isShow: true)
////        verify(self.presenter).presentFetchedFavorites()
////        verify(self.presenter).presentProgress(isShow: false)
////    }
////
////    func test_failureFetched_displaySection() {
////        // Given
////        self.service.fetchFavorites(result: Result.failure(TestError.error))
////        // When
////        self.subject.fetchFavorites()
////        // Then
////        verify(self.presenter).presentProgress(isShow: true)
////        verify(self.presenter).presentAlert(any())
////        verify(self.presenter).presentProgress(isShow: false)
////    }
//}
//
//class StubMyStorePresentationLogic: MyStorePresentationLogic {
//    func presentProgress(isShow: Bool) {
//    }
//
//    func presentAlert(_ alert: UIAlertControllerBuilder) {
//    }
//
//    func presentFetchedFavorites() {
//
//    }
//}
//
//class StubUserDefaultServiceType : UserDefaultServiceType {
//    func isFavorite(_ thumbnail: Thumbnailable) -> Bool {
//        return true
//    }
//
//    func addFavorite(_ thumbnail: Thumbnailable) {
//    }
//
//    func removeFavorite(_ thumbnail: Thumbnailable) {
//    }
//
//    func fetchFavorites(result: @escaping (Result<[Thumbnailable], Error>) -> Void) {
//    }
//}
//
//import Cuckoo
//@testable import QuickMediaSearch
//
//extension MockUserDefaultServiceType {
//    @discardableResult
//    func stubFetchFavorites(_ result: Result<[Thumbnailable], Error>) {
//        stub(self, block: { mock in
//            when(mock.fetchFavorites(result: any()))
//                .then({ closure in
//                    closure(result)
//                })
//        })
//    }
//}
