//
//  User.swift
//  Instagram
//
//  Created by junkai ji on 09/04/24.
//

import Foundation
import Firebase

struct User: Identifiable, Codable, Hashable {
    let id: String
    var username: String
    var profileImageURL: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUID = Auth.auth().currentUser?.uid else { return false }
        return currentUID == id
    }
}

extension User {
    
    static var MOCK_USERS: [User] = [
        User(id: UUID().uuidString, username: "john_doe", profileImageURL: nil, fullname: "John Doe", bio: "Software Engineer", email: "john.doe@example.com"),
        User(id: UUID().uuidString, username: "jane_smith", profileImageURL: nil, fullname: nil, bio: "Product Designer", email: "jane.smith@example.com"),
        User(id: UUID().uuidString, username: "alex_wilson", profileImageURL: nil, fullname: "Alex Wilson", bio: "Data Scientist", email: "alex.wilson@example.com"),
        User(id: UUID().uuidString, username: "emily_jones", profileImageURL: nil, fullname: "Emily Jones", bio: "Marketing Manager", email: "emily.jones@example.com")
    ]
}
