//
//  ContentView.swift
//  Shared
//
//  Created by Kevin Gutowski on 8/4/20.
//

import SwiftUI
import AVFoundation

struct Player {
    let word: String
    var url: URL?
    
    init(word: String) {
        self.word = word
        
        if let path = Bundle.main.path(forResource: "\(word).mp3", ofType: nil) {
            self.url = URL(fileURLWithPath: path)
        } else {
            self.url = nil
        }
    }
    
    func play() {
        do {
            var avplayer: AVAudioPlayer?
            if let fileURL = self.url {
                avplayer = try AVAudioPlayer(contentsOf: fileURL)
                avplayer?.play()
            }
        } catch {
            print("Couldn't play or load file")
        }
    }
}

let hello = Player(word: "ありがとう")

struct ContentView: View {
        var body: some View {
            Button("Play") {
                print(hello.word)
                print(hello.url ?? "no url")
                hello.play()
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


