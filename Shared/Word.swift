//
//  Word.swift
//  Panda
//
//  Created by Kevin Gutowski on 8/4/20.
//

import Foundation

struct Word: Identifiable {
    let kana: String
    let english: String
    
    let id = UUID()
}
