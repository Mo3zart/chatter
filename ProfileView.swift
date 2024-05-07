//
//  ProfileView.swift
//  chatter
//
//  Created by moritz.zewinger on 07.05.24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.darkPurple, .midPurple]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)

            Text("Profile Settings")
                .font(.largeTitle)
                .foregroundColor(.pink)
        }
    }
}
