//
//  CircularProgressBarView.swift
//  MediMatch
//
//  Created by Devin King on 3/1/23.
//

import Foundation
import UIKit

class CircularProgressBarView: UIView {
    
    public var circleLayer = CAShapeLayer()
    public var progressLayer = CAShapeLayer()
    public var startPoint = CGFloat(-Double.pi / 2)
    public var endPoint = CGFloat(3 * Double.pi / 2)
    
    public let countdownLabel = UILabel()
    private var countdownTimer: Timer?
     var remainingTime: TimeInterval = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCountdownLabel()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupCountdownLabel()
    }
    
     func setupCountdownLabel() {
        countdownLabel.textAlignment = .center
       
        countdownLabel.textColor = UIColor.black
         countdownLabel.font = UIFont.systemFont(ofSize: 15)
         countdownLabel.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
         countdownLabel.center = CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2.0)
         
        addSubview(countdownLabel)
         bringSubviewToFront(countdownLabel)
    }
    
    func createCircularPath() {
        let center = CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2.0)
        let radius: CGFloat = 19
        let startAngle = CGFloat(3 * Double.pi / 2)
        let endAngle = CGFloat(-Double.pi / 2)
        let clockwise = false
        
        let circularPath = UIBezierPath(arcCenter: center,
                                        radius: radius,
                                        startAngle: startAngle,
                                        endAngle: endAngle,
                                        clockwise: clockwise)
        circleLayer.path = circularPath.cgPath
        
        circleLayer.fillColor = UIColor.clear.cgColor
        circleLayer.lineCap = .round
        circleLayer.lineWidth = 5
        circleLayer.strokeEnd = 1.0
        circleLayer.strokeColor = UIColor.black.cgColor
        
        layer.addSublayer(circleLayer)
        
        progressLayer.path = circularPath.cgPath
        
        progressLayer.fillColor = UIColor.clear.cgColor
        progressLayer.lineCap = .round
        progressLayer.lineWidth = 5
        progressLayer.strokeEnd = 0.0
        progressLayer.strokeColor = UIColor.yellow.cgColor
        
        layer.addSublayer(progressLayer)
    }
    
    func progressAnimation(duration: TimeInterval) {
        remainingTime = duration
        countdownLabel.text = "\(Int(duration))"
        countdownTimer?.invalidate()
        countdownTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCountdownLabel), userInfo: nil, repeats: true)
        
        let circularProgressAnimation = CABasicAnimation(keyPath: "strokeEnd")
        circularProgressAnimation.duration = duration
        circularProgressAnimation.toValue = 1.0
        circularProgressAnimation.fillMode = .forwards
        circularProgressAnimation.isRemovedOnCompletion = false
        progressLayer.add(circularProgressAnimation, forKey: "progressAnim")
    }
    
    @objc private func updateCountdownLabel() {
        remainingTime -= 1
      
        countdownLabel.text = "\(remainingTime)"
        if remainingTime <= 0 {
            countdownTimer?.invalidate()
        }
    }

}
