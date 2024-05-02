//
//  PostsModel.swift
//  TechieButler
//
//  Created by Shivansh Gaur on 02/05/24.
//

import Foundation

struct Post: Identifiable, Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
