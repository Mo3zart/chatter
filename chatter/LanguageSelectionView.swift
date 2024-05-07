//
//  LanguageSelectionView.swift
//  chatter
//
//  Created by moritz.zewinger on 07.05.24.
//

import SwiftUI

struct LanguageSelectionView: View {
    @State private var selectedLanguage = ""
    @State private var navigateToStartingPage = false

    var languages = ["Schweizerdeutsch"]

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.darkPurple, .midPurple]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)

            VStack(spacing: 32) {
                Text("Select a Language")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.pink)

                ForEach(languages, id: \.self) { language in
                    Button(action: {
                        selectedLanguage = language
                        UserDefaults.standard.set(language, forKey: "selectedLanguage")
                        navigateToStartingPage = true
                    }) {
                        Text(language)
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.brightPurple)
                            .cornerRadius(10)
                    }
                    .padding(.horizontal, 32)
                }

                Spacer()
            }

            NavigationLink(destination: StartingPageView(), isActive: $navigateToStartingPage) {
                EmptyView()
            }
        }
    }
}

struct LanguageSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageSelectionView()
    }
}
