//
//  SeeNSayViewController.swift
//  MediMatch
//
//  Created by Devin King on 2/23/23.
//

import UIKit
import SCLAlertView
import Speech
import AVFoundation



class PanaceaSaysViewController: UIViewController {
    
    var answered = false
    
    var isRecording = false
    
  
    
    @IBOutlet weak var medicationNameLabel: UILabel!
    @IBOutlet weak var voiceWaveFormButton: UIButton!
    
    @IBOutlet weak var userPanaceaSaysScoreLabel: UILabel!
    var userPanaceaSaysScore = 0
    var userAmountOfPanaceaSaysQuestionsAttempted = 0
    
    
    @IBOutlet weak var userProgressBarView: CircularProgressBarView!
    var timerManger = TimerManager()
    var speechBasedMedicationInformation = SpeechBasedMedicationQuestionsManager()
    var synthesizer = AVSpeechSynthesizer()
    
    let speechRecognizer = SFSpeechRecognizer(locale: Locale(identifier: "en-US"))!
    var recognitionRequest: SFSpeechAudioBufferRecognitionRequest?
    var recognitionTask: SFSpeechRecognitionTask?
    let audioEngine = AVAudioEngine()
    var audioPlayer: AVAudioPlayer?
    
    @IBOutlet weak var quitButton: UIBarButtonItem!
    
    @IBOutlet weak var medicationNameButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        userProgressBarView.createCircularPath()
                navigationItem.hidesBackButton = true
        showGameLogic()
        addShadow(to: voiceWaveFormButton)
        addBorder(to: voiceWaveFormButton)
      
        medicationNameLabel.text = speechBasedMedicationInformation.getCurrentSpeechBasedQuestion()
        updateAppearance()
        
        quitButton.image = UIImage(named: "remove-3")?.withRenderingMode(.alwaysOriginal)
        
    
        
        
    }
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        updateAppearance()
        //styleButtonBackgroundView()
        
    }
    
    
    
    
    @IBAction func voiceWaveFormButtonTapped(_ sender: UIButton) {
        userAmountOfPanaceaSaysQuestionsAttempted += 1
        print("Voice Wave Button was tapped")
        isRecording = true
        voiceWaveFormButton.layer.borderColor = UIColor.green.cgColor
       
        medicationNameButton.isEnabled = false
        
        if audioEngine.isRunning {
            audioEngine.stop()
            
            recognitionRequest?.endAudio()
            voiceWaveFormButton.isEnabled = true
        
            voiceWaveFormButton.layer.borderColor = UIColor.black.cgColor
            medicationNameButton.isEnabled = true
        } else if voiceWaveFormButton.isEnabled {
            startRecording()
        }
    }
    
    
    
    @IBAction func playMedicationNameButton(_ sender: UIButton) {
        if !isRecording {
            speak(medicationNameLabel.text!)
        }
    }
    
    
    
    @IBAction func continuteButtonPRessed(_ sender: UIButton) {
        updateUI()
        speechBasedMedicationInformation.getnextSpeechBasedMedicationQuestion()
        checkForWin()
    }
    
    
    func startRecording() {
        if recognitionTask != nil {
            recognitionTask?.cancel()
            recognitionTask = nil
        }
        
        let audioSession = AVAudioSession.sharedInstance()
        do {
            // stop any other audio playing in the background
            try audioSession.setCategory(AVAudioSession.Category.playAndRecord)
            try audioSession.setActive(true, options: .notifyOthersOnDeactivation)
            
            // set the audio session category for recording
            try audioSession.setCategory(.record, mode: .measurement, options: .duckOthers)
        } catch {
            print("Error setting up audio session: \(error.localizedDescription)")
        }
        
        recognitionRequest = SFSpeechAudioBufferRecognitionRequest()
        guard let recognitionRequest = recognitionRequest else { fatalError("Unable to create recognition request") }
        
        let inputNode = audioEngine.inputNode
        
        recognitionRequest.shouldReportPartialResults = false
        
        recognitionTask = speechRecognizer.recognitionTask(with: recognitionRequest, resultHandler: { [self] result, error in
            var isFinal = false
            if let result = result {
                let userAnswer = result.bestTranscription.formattedString
                let medicationName = medicationNameLabel.text!
                compareUserAnswer(userAnswer, with: medicationName)
                
                isFinal = result.isFinal
            }
            
            if error != nil || isFinal {
                audioEngine.stop()
                inputNode.removeTap(onBus: 0)
                recognitionRequest.endAudio()
                recognitionTask = nil
                
                voiceWaveFormButton.isEnabled = true
         
                voiceWaveFormButton.layer.borderColor = UIColor.black.cgColor
                isRecording = false
                
            }
        })
        
        let recordingFormat = inputNode.outputFormat(forBus: 0)
        inputNode.installTap(onBus: 0, bufferSize: 1024, format: recordingFormat) { (buffer, _) in
            recognitionRequest.append(buffer)
        }
        
        audioEngine.prepare()
        do {
            try audioEngine.start()
            voiceWaveFormButton.isEnabled = true
        } catch {
            print("error")
        }
    }
    
    
    @IBAction func quitButtonTapped(_ sender: UIBarButtonItem) {
        timerManger.timer?.invalidate()
        dismissToRootViewController(animated: true)
        disableAVSession()
        
    }
    
    func showGameLogic() {
        let gameLogicAppearance = SCLAlertView.SCLAppearance (
            kCircleHeight: 70,
            kCircleIconHeight: 65,
            showCloseButton: false
    
        )
        let isDarkMode = traitCollection.userInterfaceStyle == .dark
        
        let panaceaSaysWelcomeMessage = SCLAlertView(appearance: gameLogicAppearance)
        
        panaceaSaysWelcomeMessage.addButton("Lets Go!") {
            self.timerManger.startTimer(totalTime: 91, progressView: self.userProgressBarView) { [self] in
                self.checkForWin()
               
            }
        }
        if isDarkMode == true {
            panaceaSaysWelcomeMessage.showCustom("Welcome To PanaceaSays!", subTitle:"Give it a try! Tap the waveform button and speak the medication name aloud. If you need some help, tap the play button for a hint.", color: .systemIndigo, icon: UIImage(named: "chat")!)
        } else {
            panaceaSaysWelcomeMessage.showCustom("Welcome To PanaceaSays!", subTitle: "Tap the waveform button and do your best to say the mnedication name. Tap the play button for a hint", color: .systemBlue, icon: UIImage(named: "chat")!)
        }
    }
    func addBorder(to button: UIButton) {
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 27
        button.layer.borderWidth = 3
    }
    func updateUI(){
        DispatchQueue.main.async { [self] in
            self.medicationNameLabel.text = self.speechBasedMedicationInformation.getCurrentSpeechBasedQuestion()
         
            voiceWaveFormButton.isEnabled = true
           
        }
        
        
        
        
    }
    func dismissToRootViewController(animated: Bool) {
        self.navigationController?.popViewController(animated: true)
    }
    func addShadow(to button: UIButton) {
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.5
        button.layer.shadowRadius = 3
        button.layer.shadowOffset = CGSize(width: 0, height: 2)
        
        
        
        
    }
    
    func compareUserAnswer(_ userAnswer: String?, with correctAnswer: String) {
        guard let userAnswer = userAnswer else {
            print("User did not speak anything")
            return
        }
        
        if userAnswer.lowercased() == correctAnswer.lowercased() {
            // Correct answer logic
            
            voiceWaveFormButton.isEnabled = false
            
            buttonBorderAnimation()
            
            
            let appearance = SCLAlertView.SCLAppearance(
                showCloseButton: false
            )
            
            let alert = SCLAlertView(appearance: appearance)
            
            let timeOutConfiguration = SCLAlertView.SCLTimeoutConfiguration(timeoutValue: 2.5) {
                
                self.speechBasedMedicationInformation.getnextSpeechBasedMedicationQuestion()
                self.updateUI()
            }
            GameLogicMethods.shared.playCorrectAnswerTune()
            audioEngine.stop()
            voiceWaveFormButton.isEnabled = false
            userPanaceaSaysScore += 1
            
            userPanaceaSaysScoreLabel.text = "\(userPanaceaSaysScore)"
            
            
            
            
            
            alert.showCustom("Correct!", subTitle: "Congratulations on pronouncing \(userAnswer) correctly on to the next one!", color: .systemGreen, icon: UIImage(named: "check")!, timeout: timeOutConfiguration, animationStyle: .bottomToTop)
            
            
            
        } else {
            // Wrong answer logic
            
            let timeOutConfig = SCLAlertView.SCLTimeoutConfiguration(timeoutValue: 2.5) {
                
                self.speechBasedMedicationInformation.getnextSpeechBasedMedicationQuestion()
                self.updateUI()
                
            }
            
            let wrongAnswerAppearance = SCLAlertView.SCLAppearance (
                showCloseButton: false
                
            )
            
            let wrongAnswerAlert = SCLAlertView(appearance: wrongAnswerAppearance)
            wrongAnswerAlert.showCustom("Wrong answer alert", subTitle: "Wrong answer but its OK!", color: .systemRed , icon: UIImage(named: "remove-3")!, timeout: timeOutConfig)
            voiceWaveFormButton.isEnabled = false
            GameLogicMethods.shared.playWrongAnswerTune()
            
            //            updateUI()
        }
    }
    
    func  checkForWin() {
        if timerManger.timeRemaining == 0 || userAmountOfPanaceaSaysQuestionsAttempted == 30  {
            timerManger.stopTimer()
            
            let minutes = timerManger.timeRemaining / 60
            let seconds = timerManger.timeRemaining % 60
            let formattedTimeRemaining = String(format: "%02d:%02d", minutes, seconds)
            print(formattedTimeRemaining)
            
            
            
            let gameOverScreenTitle = "PanaceaSays Complete!"
            
            
            let numerator = userPanaceaSaysScore
            let denominator = userAmountOfPanaceaSaysQuestionsAttempted
            
            let percentage = Double(numerator) / Double(denominator) * 100
            print(numerator)
            print(denominator)
            print(percentage)
            
            
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
                
                endScreen.mostRecentScore = userPanaceaSaysScore
                endScreen.finalScoreTitle = gameOverScreenTitle
                
                endScreen.amountOfQuestionsCorrect = numerator
                
                endScreen.userAmountOfQuestionsTried = denominator
                endScreen.amountOfTimeRemaining = formattedTimeRemaining
                
                
                endScreen.userFinalScore = "\(formattedPercentage)"
                endScreen.finaltScreenImage = endScreenImage
                endScreen.finalScreenMessage = userFinalMessage
                
                
                
                
                //                endScreen.mostRecentScore = ptcbExamData.userPTCBPracticeExamScore
                //                endScreen.finalScoreTitle = gameOverScreenTitle
                //                endScreen.amountOfQuestionsCorrect = numerator
                //                endScreen.userAmountOfQuestionsTried = denominator
                //                endScreen.userFinalScore = "\(formattedPercentage)"
                
                
                
                
                
                navigationController?.pushViewController(endScreen, animated: true)
            }
        }
    }
    func buttonBorderAnimation() {
        let animation = CABasicAnimation(keyPath: "borderColor")
        animation.fromValue = UIColor.green.cgColor
        animation.toValue = UIColor.black.cgColor
        animation.duration = 0.2
        animation.repeatCount = 5
        animation.autoreverses = true
      
        
    }
    
    func speak(_ text: String) {
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playAndRecord, mode: .default, options: .defaultToSpeaker)
            try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
        } catch {
            print("audioSession properties weren't set because of an error.")
        }
        
        let utterance = AVSpeechUtterance(string: text)
        
        
        let voice = AVSpeechSynthesisVoice(language: "en-US")
        
        utterance.voice = voice
        utterance.rate = 0.5
        utterance.pitchMultiplier = 1.2
        
        
        
        synthesizer.speak(utterance)
        
        
        
        
    }
    func disableAVSession() {
        do {
            try AVAudioSession.sharedInstance().setActive(false, options: .notifyOthersOnDeactivation)
        } catch {
            print("audioSession properties weren't disable.")
        }
    }
    
    
    
    
}



