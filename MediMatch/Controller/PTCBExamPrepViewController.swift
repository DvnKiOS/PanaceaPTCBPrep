//
//  PTCBExamPrepViewController.swift
//  MediMatch
//
//  Created by Devin King on 2/23/23.
//

import UIKit
import SCLAlertView

import AVFoundation

class PTCBExamPrepViewController: UIViewController {
    
    @IBOutlet weak var aChoiceButton: UIButton!
    @IBOutlet weak var bChoiceButton: UIButton!
    @IBOutlet weak var cChoiceButton: UIButton!
    @IBOutlet weak var dChoiceButton: UIButton!
    
    var audioPlayer: AVAudioPlayer?
    
    let soundName: String = "CorrectSoundEffect"
    
    //let gameLogic = GameLogicMethods()
    
    
    @IBOutlet weak var userProgressBarView: CircularProgressBarView!
    
    let timerManager = TimerManager()
    
    
    @IBOutlet weak var userPTCBPracticeExamScore: UILabel!
    
    
    var supportsHaptics: Bool = true
    
    
    var ptcbExamData = PtcbExamPracticeManager()
  
    
    @IBOutlet weak var questionCategoryLabel: UILabel!
    @IBOutlet weak var currentQuestionLabel: UILabel!
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var quitButton: UIBarButtonItem!
    
    
    
    var currentHapticIntensity: Float =  0.3
    var amountOfTimeForQuestion = 30
    var userPTCBScore = 0
    var userPTCBQuestionsAttempted = 0
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        userProgressBarView.createCircularPath()
        navigationItem.hidesBackButton = true
        addShadow(to: aChoiceButton)
        addShadow(to: bChoiceButton)
        addShadow(to: cChoiceButton)
        addShadow(to: dChoiceButton)
        showGameLogic()
        
        
        addBorder(to: aChoiceButton)
        addBorder(to: bChoiceButton)
        addBorder(to: cChoiceButton)
        addBorder(to: dChoiceButton)
        updateUI()

        updateAppearance()
        userProgressBarView.setupCountdownLabel()
      
    
      
        
       

       
        
        quitButton.image = UIImage(named:"remove-3")?.withRenderingMode(.alwaysOriginal)
        
        // Do any additional setup after loading the view.

       
    }
    


    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        updateAppearance()
        //styleButtonBackgroundView()
       
    }
    func updateTimeRemaininglabel() {
        let remainingTime = amountOfTimeForQuestion
        print(remainingTime)
    }
  
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Stop and release the audio player
        audioPlayer?.stop()
        audioPlayer = nil
    }

    
    
    
    @IBAction func userTappedAnAnswer(_ sender: UIButton) {
        userPTCBQuestionsAttempted += 1
        
        
        let usersAnswer = sender.currentTitle!

        let userPickedTheRightAnswer = ptcbExamData.checkAnswer(userChoice: usersAnswer)

        if userPickedTheRightAnswer {
            sender.layer.borderColor = UIColor.green.cgColor
            sender.bounce(duration: 1, values: [-12.0, 12.0, -12.0, 12.0, -6.0, 6.0, -3.0, 3.0, 0.0])
            
            
            userPTCBScore += 1
           
            
            
            userPTCBPracticeExamScore.text = "\(userPTCBScore)"
       
          
            GameLogicMethods.shared.playCorrectAnswerTune()
            
            let appearance = SCLAlertView.SCLAppearance(
                kTitleFont: UIFont(name: "HelveticaNeue", size: 24)!,
                kTextFont: UIFont(name: "HelveticaNeue", size: 16)!,
                kButtonFont: UIFont(name: "HelveticaNeue-Bold", size: 16)!,
                showCloseButton: true
            )
            let correctAlert = SCLAlertView(appearance: appearance)
            let correctAnswerString = ptcbExamData.getCorrectAnswer()
         
            checkForWin()
            let isDarkMode = traitCollection.userInterfaceStyle == .dark
            
            
            
            if isDarkMode == false { correctAlert.showCustom("Thats The One!",
                                                             subTitle: "Correct! \n The Right Choice Was Indeed: \n \(correctAnswerString)",
                                                             color: .systemBlue,
                                                             icon: UIImage(named: "check")!)
            } else {
                correctAlert.showCustom("That is the One!",
                                        subTitle: "Correct! \n The right choice was indeed \(correctAnswerString)" ,
                                        color: .systemIndigo,
                                        icon: UIImage(named: "check")!)
            }
            
            
            
            for button in [aChoiceButton, bChoiceButton,cChoiceButton, dChoiceButton] {
                button?.isUserInteractionEnabled = false
            }
      
            
            ptcbExamData.nextQuestion()
            updateUI()
        } else {
            
            sender.layer.borderColor = UIColor.red.cgColor
            let wrongAnswerAlert = SCLAlertView()
            let correctAnswerString = ptcbExamData.getCorrectAnswer()
            currentHapticIntensity = 0.0
            checkForWin()
            wrongAnswerAlert.showCustom("Wrong one", subTitle: "You picked the wrong answer, No worries the correct answer is: \(correctAnswerString)", color: .red, icon: UIImage(named: "remove")!)
                                        for button in [aChoiceButton, bChoiceButton, cChoiceButton, dChoiceButton] {
                button?.isUserInteractionEnabled = false
            }
            ptcbExamData.nextQuestion()
            updateUI()
            GameLogicMethods.shared.playWrongAnswerTune()
        }
    }
     
  

    
    
    func addShadow(to button: UIButton) {
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.5
        button.layer.shadowRadius = 3
        button.layer.shadowOffset = CGSize(width: 0, height: 2)
        
        
        
        
    }
    func addBorder(to button: UIButton) {
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 27
        button.layer.borderWidth = 3
        
        let maxSize = CGSize(width: button.frame.width - 20, height: button.frame.height - 20)
        let text = button.titleLabel?.text ?? ""
        let font = button.titleLabel?.font ?? UIFont.systemFont(ofSize: 17)
        let fontAttributes = [NSAttributedString.Key.font: font]
        let textSize = (text as NSString).boundingRect(with: maxSize, options: .usesLineFragmentOrigin, attributes: fontAttributes, context: nil).size
        
        if textSize.width > maxSize.width || textSize.height > maxSize.height {
            let adjustedFontSize = min(font.pointSize, min(maxSize.width / textSize.width, maxSize.height / textSize.height) * font.pointSize)
            button.titleLabel?.font = font.withSize(adjustedFontSize)
        } else {
            button.titleLabel?.font = font
        }
    }
    func showGameLogic() {
        
        let alertAppearance = SCLAlertView.SCLAppearance(
            
            kCircleHeight: 70,
            kCircleIconHeight: 60,
            showCloseButton: false
            )
        let alert = SCLAlertView(appearance: alertAppearance)
        alert.addButton("Let's Go!") {
            self.timerManager.startTimer(totalTime: 91, progressView: self.userProgressBarView) {
                self.checkForWin()
            }
        }
        let isDarkMode = traitCollection.userInterfaceStyle == .dark
        if isDarkMode == true {
                            alert.showCustom("Welcome To PTCB Prep!",
                             subTitle: "Get ready for a PTCB prep round! Answer as many questions as you can in just 90 seconds. Are you up for the challenge? Let's see how well you know your pharmacy knowledge!", color: .systemIndigo,
                                             icon: UIImage(named: "medicine")!, animationStyle: .bottomToTop)
                            
        } else {
            alert.showCustom("PTCB Prep!",
                             subTitle: "Get ready for a PTCB prep round! Answer as many questions as you can in just 90 seconds. Are you up for the challenge? Let's see how well you know your pharmacy knowledge!", color: .systemBlue,
                             icon: UIImage(named: "medicine")!, animationStyle: .bottomToTop)
        }
      
    }
    
    @IBAction func quitButton(_ sender: UIBarButtonItem) {
        dismissToRootViewController(animated: true)
        timerManager.timer?.invalidate()
    }
    
    
    
    
    
    
    
    
    
    @objc func updateUI() {
        
        currentQuestionLabel.text = ptcbExamData.getCurrentQuestionText()
        
        
        let availableAnswers = ptcbExamData.getPTCBExamAnswers()
        
        
        //change this value based on the button pressed?
        DispatchQueue.main.async { [self] in
            aChoiceButton.setTitle(availableAnswers[0], for: .normal)
            bChoiceButton.setTitle(availableAnswers[1], for: .normal)
            cChoiceButton.setTitle(availableAnswers[2], for: .normal)
            dChoiceButton.setTitle(availableAnswers[3], for: .normal)
            
            let currentQuestionCategory = ptcbExamData.getCurrentQuestionCategory()
            
            DispatchQueue.main.async { [self] in
                self.questionCategoryLabel.text = "Question Category: \(currentQuestionCategory)"
                aChoiceButton.tintColor = .black
                bChoiceButton.tintColor = .black
                cChoiceButton.tintColor = .black
                dChoiceButton.tintColor = .black
                
                
                
                
                aChoiceButton.layer.borderColor = UIColor.black.cgColor
                bChoiceButton.layer.borderColor = UIColor.black.cgColor
                cChoiceButton.layer.borderColor = UIColor.black.cgColor
                dChoiceButton.layer.borderColor = UIColor.black.cgColor
                
                
                
                
                enableButtonInteraction(for: [aChoiceButton,bChoiceButton,cChoiceButton,dChoiceButton])
            }
            
            
            
        }
        
        func stopButtonInteraction(for buttons :[UIButton]) {
            for button in buttons {
                button.isUserInteractionEnabled = false
            }
        }
        
        func enableButtonInteraction(for buttons: [UIButton]) {
            for button in buttons {
                
                button.isUserInteractionEnabled = true
            }
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    func dismissToRootViewController(animated: Bool) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func checkForWin() {
        if timerManager.timeRemaining == 0 || userPTCBQuestionsAttempted == 30 {
            timerManager.stopTimer()

            let advertisementViewController = storyboard?.instantiateViewController(withIdentifier: "AdvertisementViewController") as! AdvertisementViewController
            navigationController?.pushViewController(advertisementViewController, animated: true)

            DispatchQueue.main.asyncAfter(deadline: .now() + 8) { [self] in
                // Delay presentation of game over screen by 2 seconds
                let minutes = timerManager.timeRemaining / 60
                let seconds = timerManager.timeRemaining % 60
                let formattedTimeRemaining = String(format: "%02d:%02d", minutes, seconds)

                print(formattedTimeRemaining)

                let gameOverScreenTitle = "PTCB Prep Complete!"
                let numerator = userPTCBScore
                let denominator = userPTCBQuestionsAttempted

                let percentage = Double(numerator) / Double(denominator) * 100
                let formattedPercentage = String(format: "%.0f%%", percentage)
                print(formattedPercentage)

                var endScreenImage: UIImage?
                var userFinalMessage = ""
                if percentage >= 80 {
                    endScreenImage = UIImage(named: "trophy-5")
                    userFinalMessage = "Amazing Work!"
                } else if percentage >= 70 && percentage <= 79 {
                    endScreenImage = UIImage(named: "trophy-4")
                    userFinalMessage = "Great Job!"
                } else {
                    userFinalMessage = "Nice Work."
                    endScreenImage = UIImage(named: "trophy-6")
                }

                if let endScreen = storyboard?.instantiateViewController(withIdentifier: "GameOverScreen") as? GameOverViewController {
                    endScreen.mostRecentScore = numerator
                    print(ptcbExamData.userPTCBPracticeExamScore)

                    endScreen.finalScoreTitle = gameOverScreenTitle

                    endScreen.amountOfQuestionsCorrect = numerator

                    endScreen.userAmountOfQuestionsTried = denominator

                    endScreen.userFinalScore = "\(formattedPercentage)"
                    endScreen.amountOfTimeRemaining = formattedTimeRemaining
                    endScreen.finaltScreenImage = endScreenImage
                    endScreen.finalScreenMessage = userFinalMessage

                    navigationController?.pushViewController(endScreen, animated: true)
                }
            }
        }
    }

}
               
               
          
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



extension UIView{
    
    func bounce(duration: TimeInterval = 0.5, values: [CGFloat]) {
        let animation = CAKeyframeAnimation(keyPath: "transform.translation.y")
        
        // Swift 4.2 and above
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        
    
        
        
        animation.duration = duration // You can set fix duration
        animation.values = values  // You can set fix values here also
        self.layer.add(animation, forKey: "bounce")
    
    
}
}
