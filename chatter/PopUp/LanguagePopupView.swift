//
//  LanguagePopupView.swift
//  chatter
//
//  Created by moritz.zewinger on 07.05.24.
//

import SwiftUI

struct LanguagePopupView: View {
    @Binding var selectedLanguage: String
    @State private var navigateToLanguageSelection = false

    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                Text("Choose a Language")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.pink)

                // Current Language Button
                Button(action: {
                    dismissPopup()
                }) {
                    VStack {
                        Image(selectedLanguage == "Schweizerdeutsch" ? "SwissFlag" : "PlaceholderFlag")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .cornerRadius(10)
                        Text(selectedLanguage)
                            .foregroundColor(.black)
                            .font(.title2)
                            .padding(.top, 8)
                    }
                }

                // Add New Language Button
                Button(action: {
                    navigateToLanguageSelection = true
                }) {
                    VStack {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.green)
                        Text("Add New Language")
                            .font(.title2)
                            .foregroundColor(.black)
                    }
                }
                .navigationDestination(isPresented: $navigateToLanguageSelection) {
                    LanguageSelectionView()
                }

                Spacer()
            }
            .padding()
            .background(Color.white)
            .cornerRadius(20)
            .shadow(radius: 10)
            .padding()
        }
    }

    private func dismissPopup() {
        // Dismiss the popup and return to the starting page
    }
}

struct LanguagePopupView_Previews: PreviewProvider {
    static var previews: some View {
        LanguagePopupView(selectedLanguage: .constant("Schweizerdeutsch"))
    }
}
