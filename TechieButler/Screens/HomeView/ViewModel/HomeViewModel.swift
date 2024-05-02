//
//  HomeViewModel.swift
//  TechieButler
//
//  Created by Shivansh Gaur on 02/05/24.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var posts: [Post] = []
    @Published var isLoading = false
    
    private var currentPage = 1
    private let session: URLSession
    
    init(session: URLSession = URLSession.shared) {
        self.session = session
    }
    
    func loadNextPage() {
        guard !isLoading else { return }
        isLoading = true
        
        let urlString = "\(Constants.baseUrl)\(Constants.APIEndpoint.posts)?_page=\(currentPage)"
        guard let url = URL(string: urlString) else { return }
        
        session.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                print("\(Constants.ApiError.failedWithError) \(error?.localizedDescription ?? "Unknown error")")
                DispatchQueue.main.async {
                    self.isLoading = false
                }
                return
            }
            
            do {
                let newPosts = try JSONDecoder().decode([Post].self, from: data)
                DispatchQueue.main.async {
                    self.posts.append(contentsOf: newPosts)
                    self.currentPage += 1
                    self.isLoading = false
                }
            } catch {
                print("\(Constants.ApiError.decodingError) \(error)")
                DispatchQueue.main.async {
                    self.isLoading = false
                }
            }
        }.resume()
    }
}

