//
//  CompleteSignUpView.swift
//  Instagram
//
//  Created by junkai ji on 09/04/24.
//

import SwiftUI

struct CompleteSignUpView: View {
    
    @EnvironmentObject var viewModel: RegistrationViewModel

    var body: some View {
        VStack {
            
            Spacer()
            
            Text("Welcome to Instagram, \(viewModel.username)")
            .font(.title2)
            .fontWeight(.bold)
            .padding(.top)
            .multilineTextAlignment(.center)
            .padding(.bottom)
            
            
            Text("Click below to complete registration and start using Instagram")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)

            Button {
                Task { try await viewModel.createUser() }
            } label: {
                Text("Complete Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .foregroundStyle(.white)
            }
            .padding(.vertical)
            

            
            Spacer()
        }

    }
}

#Preview {
    CompleteSignUpView()
}
