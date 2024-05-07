//
//  LanguageSettingsView.swift
//  chatter
//
//  Created by moritz.zewinger on 07.05.24.
//

import SwiftUI

struct LanguageSettingsView: View {
    @State private var knownLanguage = "German"
    @State private var learningLanguage = "Swiss German"

    var knownLanguages = ["German", "English", "French", "Italian"]
    var learningLanguages = ["Swiss German", "French", "Italian"]

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.darkPurple, .midPurple]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)

            Form {
                Section(header: Text("Known Language").foregroundColor(.pink)) {
                    Picker("Known Language", selection: $knownLanguage) {
                        ForEach(knownLanguages, id: \.self) { language in
                            Text(language)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    .foregroundColor(.white)
                }
                .listRowBackground(Color.grayMatching)

//                Section(header: Text("Learning Language").foregroundColor(.pink)) {
//                    Picker("Learning Language", selection: $learningLanguage) {
//                        ForEach(learningLanguages, id: \.self) { language in
//                            Text(language)
//                        }
//                    }
//                    .pickerStyle(MenuPickerStyle())
//                    .foregroundColor(.white)
//                }
//                .listRowBackground(Color.grayMatching)
            }
            .scrollContentBackground(.hidden)
            .background(Color.grayMatching)
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Language Settings", displayMode: .inline)
        }
    }
}

struct LanguageSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            LanguageSettingsView()
        }
    }
}

