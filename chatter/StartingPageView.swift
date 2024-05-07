//
//  StartingPageView.swift
//  chatter
//
//  Created by moritz.zewinger on 07.05.24.
//

import SwiftUI

struct StartingPageView: View {
    @AppStorage("selectedLanguage") private var selectedLanguage: String = "Schweizerdeutsch"
    @State private var showLanguagePopup = false
    @State private var navigateToAccountSettings = false

    var body: some View {
        VStack {
            // Adjusted Top Section with two icons
            HStack {
                Button(action: {
                    showLanguagePopup = true
                }) {
                    Image(selectedLanguage == "Schweizerdeutsch" ? "SwissFlag" : "PlaceholderFlag")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .cornerRadius(5)
                }
                .padding(.leading, 16)

                Spacer()

                NavigationLink(destination: AccountView(), isActive: $navigateToAccountSettings) {
                    Button(action: {
                        navigateToAccountSettings = true
                    }) {
                        Image(systemName: "person.crop.circle")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                }
                .padding(.trailing, 16)
            }
            .padding(.top, 48)  // Adjust padding to move icons below Dynamic Island
            .navigationBarBackButtonHidden(true)

            Spacer()

            // Placeholder for content
            Text("Welcome to Chatter!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.pink)
                .padding()

            Text("Learning: \(selectedLanguage)")
                .font(.title2)
                .foregroundColor(.white)

            Spacer()

            // Bottom Navigation Bar
            VStack(spacing: 0) {
                Divider()
                    .background(Color.gray)
                    .padding(.horizontal, 16)

                HStack(spacing: 0) {
                    NavigationButtonView(icon: "house.fill") {
                        // Action for Starting Page
                    }

                    NavigationButtonView(icon: "exclamationmark.triangle.fill") {
                        // Action for Errors Page
                    }

                    NavigationButtonView(icon: "book.fill") {
                        // Action for Vocabulary Page
                    }

                    NavigationButtonView(icon: "waveform.circle.fill") {
                        // Action for Pronunciation Page
                    }
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
                .background(Color.midPurple)
                .frame(maxWidth: .infinity)
            }
        }
        .background(LinearGradient(gradient: Gradient(colors: [.darkPurple, .midPurple]), startPoint: .top, endPoint: .bottom))
        .edgesIgnoringSafeArea(.all)
        .sheet(isPresented: $showLanguagePopup) {
            LanguagePopupView(selectedLanguage: $selectedLanguage)
        }
    }
}

struct NavigationButtonView: View {
    let icon: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            VStack {
                Image(systemName: icon)
                    .resizable()
                    .frame(width: 25, height: 25)
            }
            .frame(maxWidth: .infinity)
        }
    }
}

struct StartingPageView_Previews: PreviewProvider {
    static var previews: some View {
        StartingPageView()
    }
}
