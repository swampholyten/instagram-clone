//
//  UserStatView.swift
//  Instagram
//
//  Created by junkai ji on 09/04/24.
//

import SwiftUI

struct UserStatView: View {
    
    let value: Int
    let title: String
    
    var body: some View {
        VStack {
            Text("\(value)")
            
            Text(title)
                .font(.footnote)
                .fontWeight(.semibold)
        }
        .frame(width: 72)
    }
}

#Preview {
    UserStatView(value: 12, title: "Posts")
}
