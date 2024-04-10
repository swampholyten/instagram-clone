//
//  Post.swift
//  Instagram
//
//  Created by junkai ji on 09/04/24.
//

import Foundation
import Firebase

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerID: String
    let caption: String
    var likes: Int
    let imageURL: String
    let timestamp: Timestamp
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        Post(
            id: UUID().uuidString,
            ownerID: UUID().uuidString,
            caption: "Beautiful sunset!",
            likes: 100,
            imageURL: "image-2",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[0]
        ),
        Post(
            id: UUID().uuidString,
            ownerID: UUID().uuidString,
            caption: "Exploring new places 🌍",
            likes: 75,
            imageURL: "image-3",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[3]
        ),
        Post(
            id: UUID().uuidString,
            ownerID: UUID().uuidString,
            caption: "Coffee time ☕️",
            likes: 120,
            imageURL: "image-1",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[2]
        ),
        Post(
            id: UUID().uuidString,
            ownerID: UUID().uuidString,
            caption: "Coding all night long 💻",
            likes: 200,
            imageURL: "image-4",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[0]
        )
    ]
}
