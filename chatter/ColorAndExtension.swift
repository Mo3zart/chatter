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
    static let grayMatching = Color(hex: "#3E3E3E") // Adjust to the desired gray tone
}

extension Color {
    init(hex: String) {
        var hexValue = hex
        if hexValue.hasPrefix("#") {
            hexValue = String(hexValue.dropFirst())
        }

        let scanner = Scanner(string: hexValue)
        var rgb: UInt64 = 0

        scanner.currentIndex = hexValue.startIndex
        scanner.scanHexInt64(&rgb)

        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >> 8) & 0xFF) / 255.0
        let b = Double(rgb & 0xFF) / 255.0

        self.init(red: r, green: g, blue: b)
    }
}
