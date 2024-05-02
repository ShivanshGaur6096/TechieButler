//
//  MockURLSession.swift
//  TechieButlerTests
//
//  Created by Shivansh Gaur on 02/05/24.
//

import Foundation

protocol URLSessionProtocol {
    func dataTask(with url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask
}

class MockURLSession: URLSession {
    var dataTaskCalled = false
    var mockDataTask: MockURLSessionDataTask?
    var data: Data?
    var response: URLResponse?
    var error: Error?
    
    override init() {}
    
    override func dataTask(with url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        dataTaskCalled = true
        mockDataTask = MockURLSessionDataTask(completionHandler: completionHandler, data: data, response: response, error: error)
        return mockDataTask!
    }
}
