//
//  DividerView.swift
//  chatter
//
//  Created by moritz.zewinger on 07.05.24.
//

import SwiftUI

struct DividerView: View {
    var text: String

    var body: some View {
        VStack {
            ExpandedDivider()
            Text(text)
                .foregroundColor(.white)
                .padding(.vertical, 8)
            ExpandedDivider()
        }
    }
}

struct ExpandedDivider: View {
    var body: some View {
        Divider()
            .frame(height: 1)
            .background(Color.white)
            .padding(.horizontal, 80) // Add horizontal padding
    }
}

struct DividerView_Previews: PreviewProvider {
    static var previews: some View {
        DividerView(text: "or")
            .background(Color.darkPurple)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

