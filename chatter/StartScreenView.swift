//
//  StartScreenView.swift
//  chatter
//
//  Created by moritz.zewinger on 07.05.24.
//

import SwiftUI

struct StartScreenView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.darkPurple, .midPurple]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)

            VStack {
                Spacer()
                Image("AppIcon")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .cornerRadius(20)
                Text("CHATTER")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.pink)
                Spacer()

                NavigationLink(destination: LoginPageView()) {
                    Text("Get Started")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.brightPurple)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 32)

                Spacer()
            }
        }
    }
}

struct StartScreenView_Previews: PreviewProvider {
    static var previews: some View {
        StartScreenView()
    }
}

