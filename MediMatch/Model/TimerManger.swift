//
//  TimerManger.swift
//  MediMatch
//
//  Created by Devin King on 3/1/23.
//

import Foundation

import UIKit

class TimerManager {
    var timer: Timer?
    var timeRemaining = 0
    var totalTime = 0
    var progressView: CircularProgressBarView?
    var onFinish: (() -> Void)?
    

    func startTimer(totalTime: Int, progressView: CircularProgressBarView, onFinish: (() -> Void)?) {
        // Set up timer
        self.totalTime = totalTime
        self.timeRemaining = totalTime
        self.progressView = progressView
        self.onFinish = onFinish
        self.progressView?.progressLayer.strokeEnd = 0

      
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.duration = TimeInterval(totalTime)
        animation.fromValue = 0
        animation.toValue = 1
        animation.fillMode = .forwards
        animation.isRemovedOnCompletion = false
        self.progressView?.progressLayer.add(animation, forKey: "strokeEndAnimation")

        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }

    func stopTimer() {
        self.timer?.invalidate()
        self.timer = nil
        self.progressView?.progressLayer.removeAllAnimations()
    }

    @objc func updateTimer() {
        self.timeRemaining -= 1
    
        progressView?.countdownLabel.text = "\(timeRemaining)"

        if self.timeRemaining <= 0 {
            self.stopTimer()
            self.onFinish?()
        }
    }
}
