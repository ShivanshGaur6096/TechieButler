//
//  ContentView.swift
//  TechieButler
//
//  Created by Shivansh Gaur on 02/05/24.
//

import SwiftUI

struct HomeScreen: View {
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.posts) { post in
                    NavigationLink(destination: PostDetailView(post: post)) {
                        PostRow(post: post)
                            .onAppear {
                                if post.id == self.viewModel.posts.last?.id {
                                    self.viewModel.loadNextPage()
                                }
                            }
                    }
                }
                if viewModel.isLoading {
                    ProgressView()
                        .frame(maxWidth: .infinity, alignment: .center)
                }
            }
            .navigationBarTitle(Constants.ScreenName.homeScreen)
        }
        .onAppear {
            viewModel.loadNextPage()
        }
    }
}

#Preview {
    HomeScreen()
}
