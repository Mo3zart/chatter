//
//  SettingsView.swift
//  chatter
//
//  Created by moritz.zewinger on 07.05.24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                // Full background gradient
                LinearGradient(gradient: Gradient(colors: [.darkPurple, .midPurple]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)

                List {
                    // General Section
                    Section(header: Text("General").foregroundColor(.pink)) {
                        NavigationLink(destination: SoundsAndHapticsView()) {
                            Text("Sounds & Haptik")
                                .foregroundColor(.white)
                        }
                        .listRowBackground(Color.grayMatching)

                        NavigationLink(destination: LanguageSettingsView()) {
                            Text("Language")
                                .foregroundColor(.white)
                        }
                        .listRowBackground(Color.grayMatching)

                        NavigationLink(destination: NotificationsView()) {
                            Text("Notifications")
                                .foregroundColor(.white)
                        }
                        .listRowBackground(Color.grayMatching)

                        NavigationLink(destination: ProfileView()) {
                            Text("Profile")
                                .foregroundColor(.white)
                        }
                        .listRowBackground(Color.grayMatching)
                    }

                    // Support Section
                    Section(header: Text("Support").foregroundColor(.pink)) {
                        NavigationLink(destination: HelpCenterView()) {
                            Text("Help Center")
                                .foregroundColor(.white)
                        }
                        .listRowBackground(Color.grayMatching)

                        NavigationLink(destination: FeedbackView()) {
                            Text("Feedback")
                                .foregroundColor(.white)
                        }
                        .listRowBackground(Color.grayMatching)
                    }

                    // Account Section
                    Section(header: Text("Account").foregroundColor(.pink)) {
                        Button(action: {
                            // Handle account deletion here
                            print("Delete Account")
                        }) {
                            Text("Delete Account")
                                .foregroundColor(.red)
                        }
                        .listRowBackground(Color.grayMatching)

                        Button(action: {
                            // Handle sign out here
                            print("Sign out")
                        }) {
                            Text("Sign out")
                                .foregroundColor(.red)
                        }
                        .listRowBackground(Color.grayMatching)
                    }
                }
                .scrollContentBackground(.hidden)
                .background(
                    LinearGradient(gradient: Gradient(colors: [.darkPurple, .midPurple]), startPoint: .top, endPoint: .bottom)
                        .edgesIgnoringSafeArea(.all)
                )
                .listStyle(InsetGroupedListStyle())
                .navigationBarTitle("Settings", displayMode: .inline)
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SettingsView()
        }
    }
}
