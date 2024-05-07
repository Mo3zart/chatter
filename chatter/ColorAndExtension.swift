//
//  ColorAndExtension.swift
//  chatter
//
//  Created by moritz.zewinger on 07.05.24.
//

import SwiftUI

extension Color {
    static let darkPurple = Color(hex: "#1A1A40")
    static let midPurple = Color(hex: "#270082")
    static let brightPurple = Color(hex: "#7A0BC0")
    static let pink = Color(hex: "#FA58B6")

    init(hex: String) {
        let scanner = Scanner(string: hex)
        if hex.hasPrefix("#") {
            scanner.currentIndex = hex.index(after: hex.startIndex)
        }
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)

        let r = Double((rgbValue >> 16) & 0xff) / 255
        let g = Double((rgbValue >> 8) & 0xff) / 255
        let b = Double(rgbValue & 0xff) / 255

        self.init(red: r, green: g, blue: b)
    }
}


