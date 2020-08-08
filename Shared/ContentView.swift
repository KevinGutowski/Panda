//
//  ContentView.swift
//  Shared
//
//  Created by Kevin Gutowski on 8/4/20.
//

import SwiftUI
import AVFoundation

let words = [
    Word(kana: "あいさつ", english: "Greetings"),
    Word(kana: "ありがと ございます", english: "Thank you (polite)"),
    Word(kana: "ありがとう", english: "Thank you"),
    Word(kana: "いいえ", english: "No"),
    Word(kana: "いただきます", english: "Thank you for the meal (before eating)"),
    Word(kana: "いってきます", english: "I'll go and come back"),
    Word(kana: "いってらっしゃい", english: "Please go and come back"),
    Word(kana: "おかえりなさい", english: "Welcome home"),
    Word(kana: "おはよう", english: "Good morning"),
    Word(kana: "おはよお ございます", english: "Good morning (polite)"),
    Word(kana: "おやすみなさい", english: "Good night"),
    Word(kana: "ごちそうさまでした", english: "Thank you for the meal (after eating)"),
    Word(kana: "こんにちは", english: "Good afternoon"),
    Word(kana: "こんぼんは", english: "Good evening"),
    Word(kana: "さようなら", english: "Good-bye"),
    Word(kana: "すみません", english: "Excuse me"),
    Word(kana: "ただいま", english: "I'm home"),
    Word(kana: "はじめまして", english: "How do you do?"),
    Word(kana: "よろしく おねがいします", english: "Nice to meet you")
]

var soundEffect: AVAudioPlayer?

struct ContentView: View {
        let columns = [
            GridItem(.adaptive(minimum: 140))
        ]
    
        var body: some View {
// Want to display a whole bunch of buttons and have them play out their sounds
//            ScrollView {
//                LazyVGrid(columns: columns, spacing: 20) {
//                    ForEach(words) { word in
//                        let buttonText = word.kana
//                        Button(buttonText) {
//                            var player = Player(word: word.kana)
//                            player.play()
//                        }
//                    }
//                }.padding()
//            }
            
            // Lets pick out one word to use and test
            let kana = words[2].kana
            
// This works but lets try and move this to the struct
//            Button(kana) {
//                if let dataAsset = NSDataAsset(name: kana) {
//                    do {
//                        soundEffect = try AVAudioPlayer(data: dataAsset.data)
//                        soundEffect?.play()
//                    } catch {
//                        print("didnt work")
//                    }
//                }
//
//            }
            
            Button(kana) {
                var player = Player(word: kana)
                player.play()
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
