//
//  Language.swift
//  chatter
//
//  Created by moritz.zewinger on 07.05.24.
//

import Foundation

struct Language: Identifiable {
    let id: String
    let name: String
    let flag: String
}

let swissGerman = Language(id: "1", name: "Schweizerdeutsch", flag: "SwissFlag")
let italian = Language(id: "2", name: "Italian", flag: "ItalianFlag")

let availableLanguages = [swissGerman, italian]
