//
//  ContentView.swift
//  chatter
//
//  Created by moritz.zewinger on 07.05.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            //StartScreenView()
            //LanguageSelectionView()
            StartingPageView()
            //LoginPageView()
            //AccountView()
            //SettingsView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

