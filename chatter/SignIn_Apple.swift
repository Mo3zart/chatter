//
//  SignIn_Apple.swift
//  chatter
//
//  Created by moritz.zewinger on 07.05.24.
//

import SwiftUI
import AuthenticationServices

struct SignInWithAppleButton: View {
    var body: some View {
        Button(action: {
            // Handle Apple sign-in here
        }) {
            HStack {
                Image(systemName: "applelogo")
                    .foregroundColor(.black)
                Text("Apple")
                    .foregroundColor(.black)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.white)
            .cornerRadius(10)
        }
    }
}
