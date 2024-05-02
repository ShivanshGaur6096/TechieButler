//
//  Constants.swift
//  TechieButler
//
//  Created by Shivansh Gaur on 02/05/24.
//

import Foundation

public struct Constants {
    
    // MARK: - View Constants
    struct ScreenName {
        static let homeScreen = "Posts"
    }
    
    // MARK: - API Constants
    static let baseUrl = "https://jsonplaceholder.typicode.com/"
    
    struct APIEndpoint {
        static let posts = "posts"
    }
    
    struct ApiError {
        static let failedWithError = "Failed to fetch data:"
        static let decodingError = "Error decoding JSON:"
    }
    
    // MARK: Mock Data
    
    struct MockPost {
        static let userId = 10
        static let id = 95
        static let title = "id minus libero illum nam ad officiis"
        static let body = "earum voluptatem facere provident blanditiis velit laboriosam\npariatur accusamus odio saepe\ncumque dolor qui a dicta ab doloribus consequatur omnis\ncorporis cupiditate eaque assumenda ad nesciunt"
    }
    
}
