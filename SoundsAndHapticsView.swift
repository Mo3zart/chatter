//
//  SoundsAndHapticsView.swift
//  chatter
//
//  Created by moritz.zewinger on 07.05.24.
//

import SwiftUI

struct SoundsAndHapticsView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.darkPurple, .midPurple]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)

            Text("Sounds & Haptik")
                .font(.largeTitle)
                .foregroundColor(.pink)
        }
    }
}

struct SoundsAndHapticsView_Previews: PreviewProvider {
    static var previews: some View {
        SoundsAndHapticsView()
    }
}
