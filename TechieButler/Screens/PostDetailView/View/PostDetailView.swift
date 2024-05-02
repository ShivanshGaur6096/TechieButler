//
//  PostDetailView.swift
//  TechieButler
//
//  Created by Shivansh Gaur on 02/05/24.
//

import SwiftUI

struct PostDetailView: View {
    let post: Post
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text(post.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                
                Text(post.body)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .lineSpacing(8)
            }
            .padding()
        }
        .navigationBarTitle(Text("\(post.id.ordinalRepresentation) Post"), displayMode: .inline)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color.yellow.quinary)
    }
}

#Preview {
    PostDetailView(post: Post(userId: Constants.MockPost.userId,
                              id: Constants.MockPost.id,
                              title: Constants.MockPost.title,
                              body: Constants.MockPost.body))
}
