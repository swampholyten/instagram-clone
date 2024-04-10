//
//  ProfileHeaderView.swift
//  Instagram
//
//  Created by junkai ji on 09/04/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    let user: User
    
    @State private var showEditProfile = false
    
    var body: some View {
        
        VStack {
            
            VStack(spacing: 10) {
                
                HStack {
                    CircularProfileImageView(user: user, size: .large)
                    
                    Spacer()
                    
                    HStack(spacing: 8) {
                        
                        UserStatView(value: 3, title: "Posts")
                        
                        UserStatView(value: 3, title: "Followers")
                        
                        UserStatView(value: 3, title: "Followings")
                    }
                }
                .padding(.horizontal)
                
                HStack {
                    VStack(alignment: .leading, spacing: 4) {
                        if let fullname = user.fullname {
                            Text(fullname)
                                .font(.footnote)
                                .fontWeight(.semibold)
                        }
                        
                        if let bio = user.bio {
                            Text(bio)
                                .font(.footnote)
                        }
                    }
                    
                    Spacer()
                }
                .padding(.horizontal)
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 8)
            
            //                action button
            
            Button {
                if user.isCurrentUser {
                    showEditProfile.toggle()
                } else {
                    print("Follow user..")
                }
            } label: {
                Text(user.isCurrentUser ? "Edit Profile" : "Follow")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundStyle(user.isCurrentUser ? .black : .white)
                    .background(user.isCurrentUser ? .white : Color(.systemBlue))
                    .clipShape(Capsule())
                    .overlay(
                        Capsule().stroke(
                            (user.isCurrentUser ? .gray : .clear),
                            lineWidth: 1
                        )
                    )
            }
            
            Divider()
        }
        .fullScreenCover(isPresented: $showEditProfile) {
            EditProfileView(user: user)
        }
    }
}

#Preview {
    ProfileHeaderView(user: User.MOCK_USERS[0])
}
