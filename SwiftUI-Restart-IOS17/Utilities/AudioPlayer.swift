//
//  AudioPlayer.swift
//  SwiftUI-Restart-IOS17
//
//  Created by Daniel Felipe on 16/02/24.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(_ sound: String, _ type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Cloud not play the sound file.")
        }
    }
}
