//
//  NotificationsView.swift
//  chatter
//
//  Created by moritz.zewinger on 07.05.24.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.darkPurple, .midPurple]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)

            Text("Notifications Settings")
                .font(.largeTitle)
                .foregroundColor(.pink)
        }
    }
}
