//
//  MockURLSessionDataTask.swift
//  TechieButlerTests
//
//  Created by Shivansh Gaur on 02/05/24.
//

import Foundation

class MockURLSessionDataTask: URLSessionDataTask {
    var responseMock: URLResponse?
    var errorMock: Error?
    private let completionHandler: (Data?, URLResponse?, Error?) -> Void
    private let data: Data?
    
    init(completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void, data: Data?, response: URLResponse?, error: Error?) {
        self.completionHandler = completionHandler
        self.data = data
        self.responseMock = response
        self.errorMock = error
    }
    
    override func resume() {
        completionHandler(data, responseMock, errorMock)
    }
}

