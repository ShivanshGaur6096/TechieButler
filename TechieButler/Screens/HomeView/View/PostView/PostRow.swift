//
//  PostRow.swift
//  TechieButler
//
//  Created by Shivansh Gaur on 02/05/24.
//

import SwiftUI

struct PostRow: View {
    let post: Post
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("ID: \(post.id)")
                .font(.headline)
            Text(post.title)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding()
    }
}

#Preview {
    PostRow(post: Post(userId: Constants.MockPost.userId,
                       id: Constants.MockPost.id,
                       title: Constants.MockPost.title,
                       body: Constants.MockPost.body))
}
