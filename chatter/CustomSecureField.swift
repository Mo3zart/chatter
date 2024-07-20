//
//  CustomSecureField.swift
//  chatter
//
//  Created by moritz.zewinger on 07.05.24.
//

import SwiftUI

struct CustomSecureField: View {
    var placeholder: String
    @Binding var text: String
    @Binding var showPassword: Bool

    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(Color.white.opacity(0.5))
                    .padding(.leading, 8)
            }
            HStack {
                if showPassword {
                    TextField("", text: $text)
                } else {
                    SecureField("", text: $text)
                }
                Button(action: {
                    showPassword.toggle()
                }) {
                    Image(systemName: showPassword ? "eye.slash.fill" : "eye.fill")
                        .foregroundColor(.white.opacity(0.7))
                }
            }
            .padding()
            .background(Color.white.opacity(0.1))
            .cornerRadius(10)
            .foregroundColor(.white)
        }
    }
}
