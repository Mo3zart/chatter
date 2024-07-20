//
//  SignIn_Google.swift
//  chatter
//
//  Created by moritz.zewinger on 07.05.24.
//

import SwiftUI

struct SignInWithGoogleButton: View {
    var body: some View {
        Button(action: {
            // Handle Google sign-in here
        }) {
            HStack {
                Image(systemName: "globe")
                    .foregroundColor(.black)
                Text("Google")
                    .foregroundColor(.black)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.white)
            .cornerRadius(10)
        }
    }
}

