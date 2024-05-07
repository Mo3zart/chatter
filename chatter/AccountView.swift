//
//  AccountSettingsView.swift
//  chatter
//
//  Created by moritz.zewinger on 07.05.24.
//

import SwiftUI

struct AccountView: View {
    @State private var navigateToSettings = false

    var body: some View {
        NavigationStack {
            ZStack {
                // Full background gradient
                LinearGradient(gradient: Gradient(colors: [.darkPurple, .midPurple]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    // Top-right settings icon
                    HStack {
                        Spacer()
                        Button(action: {
                            navigateToSettings = true
                        }) {
                            Image(systemName: "gearshape.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.pink)
                        }
                        .padding(.trailing, 16)
                        .padding(.top, 16)
                    }

                    Spacer()
                    Text("Account Settings")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.pink)
                        .padding(.top, 50)
                    Spacer()
                }

                // Navigate to the settings page
                .navigationDestination(isPresented: $navigateToSettings) {
                    SettingsView()
                }
            }
        }
        .navigationBarBackButtonHidden(false)
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AccountView()
        }
    }
}
