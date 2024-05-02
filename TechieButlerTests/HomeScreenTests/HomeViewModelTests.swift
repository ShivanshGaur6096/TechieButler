//
//  HomeViewModelTests.swift
//  TechieButlerTests
//
//  Created by Shivansh Gaur on 02/05/24.
//

import XCTest
@testable import TechieButler

class HomeViewModelTests: XCTestCase {
    
    var viewModel: HomeViewModel!
    var expectation: XCTestExpectation!
    
    override func setUp() {
        super.setUp()
        let mockSession = MockURLSession()
        viewModel = HomeViewModel(session: mockSession)
        expectation = expectation(description: "Data loaded")
    }
    
    override func tearDown() {
        viewModel = nil
        expectation = nil
        super.tearDown()
    }
    
    func testLoadNextPageSuccess() {
        // Given
        let mockData = "[{\"userId\": 1,\"id\": 1,\"title\": \"Test Title\",\"body\": \"Test Body\"}]".data(using: .utf8)!
        let mockResponse = HTTPURLResponse(url: URL(string: "https://jsonplaceholder.typicode.com/posts")!, statusCode: 200, httpVersion: nil, headerFields: nil)!
        let mockSession = MockURLSession()
        viewModel = HomeViewModel(session: mockSession)
        
        // When
        viewModel.loadNextPage()
        
        // Then
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            XCTAssertEqual(self.viewModel.posts.count, 0)
            self.expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5)
    }
    
    func testLoadNextPageFailure() {
        // Given
        let mockSession = MockURLSession()
        viewModel = HomeViewModel(session: mockSession)
        
        // When
        viewModel.loadNextPage()
        
        // Then
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            XCTAssertEqual(self.viewModel.posts.count, 0)
            XCTAssertFalse(self.viewModel.isLoading)
            self.expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5)
    }
}
