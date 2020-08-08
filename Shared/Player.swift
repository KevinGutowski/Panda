//
//  Player.swift
//  Panda
//
//  Created by Kevin Gutowski on 8/4/20.
//

import Foundation
import UIKit
import AVFoundation

struct Player {
    let word: String
    var audioData: NSDataAsset?
    var avplayer: AVAudioPlayer?
    
    init(word: String) {
        self.word = word
        self.audioData = NSDataAsset(name: word)
    }
    
    mutating func play() {
        print("attempting to play")
        if let songData = self.audioData {
            print("audioData is there")
            avplayer = try? AVAudioPlayer(data: songData.data, fileTypeHint: "mp3")
            avplayer?.prepareToPlay()
            avplayer?.play()
        } else {
            print("attempting to utter something")
            let utterance = AVSpeechUtterance(string: self.word)
            utterance.voice = AVSpeechSynthesisVoice(language: "ja-JP")
            
            let synth = AVSpeechSynthesizer()
            synth.speak(utterance)
        }
    }
}
