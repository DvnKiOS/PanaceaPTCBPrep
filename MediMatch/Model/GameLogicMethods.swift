//
//  GameLogicMethods.swift
//  MediMatch
//
//  Created by Devin King on 3/11/23.
//
import UIKit
import AVFoundation

class GameLogicMethods {
    
    static let shared = GameLogicMethods()
    var audioPlayer: AVAudioPlayer?
    
    private init() {}
    
    func playCorrectAnswerTune() {
        audioPlayer = nil
        if UserDefaults.standard.bool(forKey: "areSoundsEnabled") {
            let url = Bundle.main.url(forResource: "correctAnswerTune", withExtension: "mp3")
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url!)
                audioPlayer?.play()
            } catch {
                print(error.localizedDescription)
            }
        }
        
        if UserDefaults.standard.bool(forKey: "areHapticsEnabled") {
            UIImpactFeedbackGenerator(style: .heavy).impactOccurred()
        }
    }

    func playWrongAnswerTune() {
        audioPlayer = nil
        if UserDefaults.standard.bool(forKey: "areSoundsEnabled") {
            let url = Bundle.main.url(forResource: "wrongAnswerTune", withExtension: "mp3")
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url!)
                audioPlayer?.play()
            } catch {
                print(error.localizedDescription)
            }
        }
        
        if UserDefaults.standard.bool(forKey: "areHapticsEnabled") {
            UIImpactFeedbackGenerator(style: .heavy).impactOccurred()
        }
    }

    func generateImpactHapticFeedback() {
        if #available(iOS 10.0, *) {
            let impactFeedbackgenerator = UIImpactFeedbackGenerator(style: .medium)
            impactFeedbackgenerator.prepare()
            impactFeedbackgenerator.impactOccurred()
        }
    }
}
