// MARK: - Mocks generated from file: QuickMediaSearch/Scene/SearchList/SearchListPresenter.swift at 2020-02-05 12:55:01 +0000

//
//  SearchListPresenter.swift
//  QuickMediaSearch
//
//  Created by Tyler on 2020/02/03.
//  Copyright © 2020 Assin. All rights reserved.
//

import Cuckoo
@testable import QuickMediaSearch

import UIKit


 class MockSearchListPresentationLogic: SearchListPresentationLogic, Cuckoo.ProtocolMock {
    
     typealias MocksType = SearchListPresentationLogic
    
     typealias Stubbing = __StubbingProxy_SearchListPresentationLogic
     typealias Verification = __VerificationProxy_SearchListPresentationLogic

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SearchListPresentationLogic?

     func enableDefaultImplementation(_ stub: SearchListPresentationLogic) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func presentProgress(isShow: Bool)  {
        
    return cuckoo_manager.call("presentProgress(isShow: Bool)",
            parameters: (isShow),
            escapingParameters: (isShow),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.presentProgress(isShow: isShow))
        
    }
    
    
    
     func presentAlert(_ alert: UIAlertControllerBuilder)  {
        
    return cuckoo_manager.call("presentAlert(_: UIAlertControllerBuilder)",
            parameters: (alert),
            escapingParameters: (alert),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.presentAlert(alert))
        
    }
    
    
    
     func presentFetchedSearchList()  {
        
    return cuckoo_manager.call("presentFetchedSearchList()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.presentFetchedSearchList())
        
    }
    
    
    
     func presentDetailViewController()  {
        
    return cuckoo_manager.call("presentDetailViewController()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.presentDetailViewController())
        
    }
    

	 struct __StubbingProxy_SearchListPresentationLogic: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func presentProgress<M1: Cuckoo.Matchable>(isShow: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Bool)> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: isShow) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchListPresentationLogic.self, method: "presentProgress(isShow: Bool)", parameterMatchers: matchers))
	    }
	    
	    func presentAlert<M1: Cuckoo.Matchable>(_ alert: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(UIAlertControllerBuilder)> where M1.MatchedType == UIAlertControllerBuilder {
	        let matchers: [Cuckoo.ParameterMatcher<(UIAlertControllerBuilder)>] = [wrap(matchable: alert) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchListPresentationLogic.self, method: "presentAlert(_: UIAlertControllerBuilder)", parameterMatchers: matchers))
	    }
	    
	    func presentFetchedSearchList() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchListPresentationLogic.self, method: "presentFetchedSearchList()", parameterMatchers: matchers))
	    }
	    
	    func presentDetailViewController() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchListPresentationLogic.self, method: "presentDetailViewController()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SearchListPresentationLogic: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func presentProgress<M1: Cuckoo.Matchable>(isShow: M1) -> Cuckoo.__DoNotUse<(Bool), Void> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: isShow) { $0 }]
	        return cuckoo_manager.verify("presentProgress(isShow: Bool)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func presentAlert<M1: Cuckoo.Matchable>(_ alert: M1) -> Cuckoo.__DoNotUse<(UIAlertControllerBuilder), Void> where M1.MatchedType == UIAlertControllerBuilder {
	        let matchers: [Cuckoo.ParameterMatcher<(UIAlertControllerBuilder)>] = [wrap(matchable: alert) { $0 }]
	        return cuckoo_manager.verify("presentAlert(_: UIAlertControllerBuilder)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func presentFetchedSearchList() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("presentFetchedSearchList()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func presentDetailViewController() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("presentDetailViewController()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SearchListPresentationLogicStub: SearchListPresentationLogic {
    

    

    
     func presentProgress(isShow: Bool)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func presentAlert(_ alert: UIAlertControllerBuilder)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func presentFetchedSearchList()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func presentDetailViewController()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: QuickMediaSearch/Service/KakaoService.swift at 2020-02-05 12:55:01 +0000

//
//  KakaoService.swift
//  QuickMediaSearch
//
//  Created by Tyler on 2020/02/03.
//  Copyright © 2020 Assin. All rights reserved.
//

import Cuckoo
@testable import QuickMediaSearch

import Foundation


 class MockKakaoServiceType: KakaoServiceType, Cuckoo.ProtocolMock {
    
     typealias MocksType = KakaoServiceType
    
     typealias Stubbing = __StubbingProxy_KakaoServiceType
     typealias Verification = __VerificationProxy_KakaoServiceType

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: KakaoServiceType?

     func enableDefaultImplementation(_ stub: KakaoServiceType) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func fetchMedium(result: @escaping (Result<[Thumbnailable], Error>) -> Void)  {
        
    return cuckoo_manager.call("fetchMedium(result: @escaping (Result<[Thumbnailable], Error>) -> Void)",
            parameters: (result),
            escapingParameters: (result),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.fetchMedium(result: result))
        
    }
    

	 struct __StubbingProxy_KakaoServiceType: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func fetchMedium<M1: Cuckoo.Matchable>(result: M1) -> Cuckoo.ProtocolStubNoReturnFunction<((Result<[Thumbnailable], Error>) -> Void)> where M1.MatchedType == (Result<[Thumbnailable], Error>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((Result<[Thumbnailable], Error>) -> Void)>] = [wrap(matchable: result) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockKakaoServiceType.self, method: "fetchMedium(result: @escaping (Result<[Thumbnailable], Error>) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_KakaoServiceType: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func fetchMedium<M1: Cuckoo.Matchable>(result: M1) -> Cuckoo.__DoNotUse<((Result<[Thumbnailable], Error>) -> Void), Void> where M1.MatchedType == (Result<[Thumbnailable], Error>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((Result<[Thumbnailable], Error>) -> Void)>] = [wrap(matchable: result) { $0 }]
	        return cuckoo_manager.verify("fetchMedium(result: @escaping (Result<[Thumbnailable], Error>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class KakaoServiceTypeStub: KakaoServiceType {
    

    

    
     func fetchMedium(result: @escaping (Result<[Thumbnailable], Error>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

