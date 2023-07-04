//
//  ViewController.swift
//  MediMatch
//
//  Created by Devin King on 2/18/23.
//

import UIKit
import SCLAlertView
import AVFoundation

class MedicationMatchViewController: UIViewController , AVSpeechSynthesizerDelegate{
    @IBOutlet weak var brandLabel: UILabel!
    
    @IBOutlet weak var genericLabel: UILabel!
    var medicationInformationManager = MedicationInformationManger()
    let medicationData = MedicationInformationManger().medications
    //let gameLogic = GameLogicMethods()
    var timerManger = TimerManager()
    // let circularProgressView = CircularProgressBarView(frame: CGRect(x: 0, y: 0, width: 75, height: 75))
    
    @IBOutlet weak var userProgressView: CircularProgressBarView!
    var selectedGenericButton: UIButton?
    var selectedBrandButton: UIButton?
    
    
    var userMedicationMatchScore: Int = 0
    var userAmountOfQuestionsAttempted: Int = 0
    
    
    
    
    var firstButtonTapped: UIButton?
    let synthesizer = AVSpeechSynthesizer()
    
    @IBOutlet weak var correctCheckMarkImageView:
    UIImageView!
    
    @IBOutlet weak var medicationMatchAmountOfQuestionsCorrectLabel: UILabel!
    
    
    
    
    
    @IBOutlet weak var firstGenericButton: UIButton!
    @IBOutlet weak var secondGenericButton: UIButton!
    @IBOutlet weak var thirdGenericButton: UIButton!
    @IBOutlet weak var fourthGenericButton: UIButton!
    
    @IBOutlet weak var buttonBackgroundView: UIView!
    
    
    @IBOutlet weak var firstBrandButton: UIButton!
    @IBOutlet weak var secondBrandButton: UIButton!
    @IBOutlet weak var thirdBrandButton: UIButton!
    @IBOutlet weak var fourthBrandButton: UIButton!
    
    
    @IBOutlet weak var quitButton: UIBarButtonItem!
    
    
    
    
    var amountOfTimeForQuiz: Int = 91 // by default we want to give the user about 90 seconds for this round, we might give them more time for the others, or find a way to give the users who have subscribed a way to change the amount of time they have.
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateAppearance()
        
        navigationItem.hidesBackButton = true
        setRandomButtons()
        DispatchQueue.main.async {
            self.styleButtonBackgroundView()
            self.showStartMedMatchAlert()
            
            self.changeImageViews()
            self.quitButton.image = UIImage(named:"remove-3")?.withRenderingMode(.alwaysOriginal)
            
        }
        updateButtonFont()
        
        userProgressView.createCircularPath()
        
        styleButtonBackgroundView()
        
    }
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        updateAppearance()
        styleButtonBackgroundView()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    @IBAction func returnHomeButton(_ sender: UIBarButtonItem) {
        timerManger.stopTimer()
        dismissToRootViewController(animated: true)
    }
    
    
    func setRandomButtons() {
        let models = medicationData.shuffled().prefix(4) // get 4 random models from the array
        
        guard models.count == 4 else {
            fatalError("Invalid number of models")
        }
        
        let genericButtons = [firstGenericButton, secondGenericButton, thirdGenericButton, fourthGenericButton].shuffled()
        let brandButtons = [firstBrandButton, secondBrandButton, thirdBrandButton, fourthBrandButton].shuffled()
        
        for (index, button) in genericButtons.enumerated() {
            button!.setTitle(models[index].genericName, for: .normal)
            button!.layer.borderWidth = 3
            button!.layer.borderColor = UIColor.black.cgColor
            button!.layer.cornerRadius = button!.frame.height / 2
        }
        
        for (index, button) in brandButtons.enumerated() {
            button!.setTitle(models[index].brandName, for: .normal)
            button!.layer.borderWidth = 3
            button!.layer.borderColor = UIColor.black.cgColor
            button!.layer.cornerRadius = button!.frame.height / 2
        }
    }
    
    
    
    func tappedFirst(button: UIButton) -> Bool {
        
        if selectedGenericButton == nil && selectedBrandButton == nil {
            return true
        } else if selectedGenericButton == nil && button == selectedBrandButton {
            return true
        } else if selectedBrandButton == nil && button == selectedGenericButton {
            return true
        } else {
            return false
        }
    }
    
    func isValidPair(genericButton: UIButton?, brandButton: UIButton?, models: [MedicationInformationModel]) -> Bool {
        guard let genericTitle = genericButton?.currentTitle,
              let brandTitle = brandButton?.currentTitle else {
            
            return false
        }
        
        for model in models {
            if (model.genericName == genericTitle && model.brandName == brandTitle) ||
                (model.genericName == brandTitle && model.brandName == genericTitle) {
                print("this is the users current score: \(medicationInformationManager.userMedicationMatchScore)")
                
                
                
                return true
            }
        }
        
        return false
    }
    
    @IBAction func genericButtonTapped(_ sender: UIButton) {
        userAmountOfQuestionsAttempted += 1
        guard selectedGenericButton == nil else {
            
            
            let appearance = SCLAlertView.SCLAppearance(
                showCircularIcon: true
                
            )
            let alertView = SCLAlertView(appearance: appearance)
            let alertViewIcon = UIImage(named: "IconImage") //Replace the IconImage text with the image name
            alertView.showInfo("No Worries", subTitle: "You have already selected a Generic Medication pick one of the Brand Name on the left hand side to make a comparison ", circleIconImage: alertViewIcon)
            
            
            print("You have already selected a generic button")
            
            return
        }
        
        
        sender.layer.borderWidth = 3 // add yellow border
        sender.layer.borderColor = UIColor.yellow.cgColor // add yellow border
        
        selectedGenericButton = sender
        print(sender.currentTitle!)
        
        
    }
    
    @IBAction func brandButtonTapped(_ sender: UIButton) {
        medicationMatchAmountOfQuestionsCorrectLabel.text = "\(userMedicationMatchScore)"
        print(userAmountOfQuestionsAttempted)
        sender.layer.borderWidth = 3
        
        guard let selectedGenericButton = selectedGenericButton else {
            let appearance = SCLAlertView.SCLAppearance(
                showCircularIcon: true
            )
            let alertView = SCLAlertView(appearance: appearance)
            let alertViewIcon = UIImage(named: "IconImage") //Replace the IconImage text with the image name
            alertView.showInfo("Brand Medication Tapped First", subTitle: "Tap a Generic Medication Name on the left first.", circleIconImage: alertViewIcon)
            return
        }
        
        guard let brandTitle = sender.currentTitle else {
            return
        }
        
        let genericTitle = selectedGenericButton.currentTitle!
        let pair = MedicationInformationModel(brandName: brandTitle, genericName: genericTitle)
        
        if let matchingModel = medicationData.first(where: { medicationInformationManager.areEqual($0, pair) }) {
            print("Valid pair: \(matchingModel.brandName) - \(matchingModel.genericName)")
            userMedicationMatchScore += 1
            GameLogicMethods.shared.playCorrectAnswerTune()
            medicationMatchAmountOfQuestionsCorrectLabel.text = "\(userMedicationMatchScore)"
            
            
            // change border color to green for both buttons
            selectedGenericButton.layer.borderColor = UIColor.green.cgColor
            sender.layer.borderColor = UIColor.green.cgColor
            
            // check if all buttons have been matched
            let buttons = [firstGenericButton, secondGenericButton, thirdGenericButton, fourthGenericButton, firstBrandButton, secondBrandButton, thirdBrandButton, fourthBrandButton]
            let allMatched = buttons.allSatisfy { $0?.layer.borderColor == UIColor.green.cgColor }
            
            if allMatched {
                // set new random buttons
                checkForWin()
                setRandomButtons()
                
                let alertApperance = SCLAlertView.SCLAppearance (
                    showCloseButton: true
                    
                    
                    )
                
                let alert = SCLAlertView(appearance: alertApperance)
                //continueButton.isEnabled = true
              
                
              
                
                alert.showCustom("Amazing Work!", subTitle: "You've found every matching pair.", color: .black, icon: UIImage(named: "check")!)
                
                
                
                
            }
        } else {
            self.selectedGenericButton?.layer.borderColor = UIColor.black.cgColor
            print("Invalid pair!")
            GameLogicMethods.shared.playWrongAnswerTune()
            
            
            checkForWin()
            
            DispatchQueue.main.async {
                self.invalidPairTapped()
                
                self.checkForLoss()
                
            }
            
            
        }
        
        self.selectedGenericButton = nil
        
    }
    func updateButtonFont() {
        let minFontSize: CGFloat = 12 // Set the minimum font size for your button
        let maxSize: CGFloat = 15 // Set the maximum font size for your button
        
        // Set button title label font
        [firstGenericButton, secondGenericButton, thirdGenericButton, fourthGenericButton, firstBrandButton, secondBrandButton, thirdBrandButton, fourthBrandButton, ].forEach { button in
            // Only update font if it hasn't been updated before
            if button.titleLabel?.font != UIFont(name: "Thonburi", size: 12.0) {
                updateButtonFont(button: button, minFontSize: minFontSize, maxSize: maxSize)
            }
            
            // Make button borders bold if they haven't been updated before
            if button.layer.borderWidth != 2.0 {
                button.layer.borderWidth = 2.0
                button.layer.borderColor = UIColor.black.cgColor
            }
            
            // Add shadow to buttons if they haven't been updated before
            if button.layer.shadowOpacity != 0.5 {
                button.layer.shadowColor = UIColor.black.cgColor
                button.layer.shadowOpacity = 0.5
                button.layer.shadowRadius = 2.0
                button.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
            }
        }
    }
    
    func updateButtonFont(button: UIButton, minFontSize: CGFloat, maxSize: CGFloat) {
        let text = button.titleLabel?.text ?? ""
        let font = button.titleLabel?.font ?? UIFont.systemFont(ofSize: minFontSize)
        let width = text.size(withAttributes: [.font: font]).width
        let availableWidth = button.bounds.width
        let fontScale = min(1, availableWidth / width)
        let fontSize = minFontSize + (maxSize - minFontSize) * fontScale
        button.titleLabel?.font = font.withSize(fontSize)
    }
    
    func invalidPairTapped() {
        
        let appearance = SCLAlertView.SCLAppearance(
            showCloseButton: false
            
        )
        
        
        let alertView = SCLAlertView(appearance: appearance)
    
        let alertTimer = SCLAlertView.SCLTimeoutConfiguration.init(timeoutValue: 1.5) {
            alertView.dismiss(animated: true )
        }
         
        alertView.showCustom("Medication Mismatch", subTitle: "Oops! It seems that the combination you entered is invalid. Don't worry, you can try again.", color: .red, icon: UIImage(named: "remove")!, timeout: alertTimer)

        
        
        
        
    }
    
    
    
    
    func showStartMedMatchAlert(){
        
        let apperance = SCLAlertView.SCLAppearance (
            kCircleHeight:70,
            kCircleIconHeight: 65,
            showCloseButton:  false
            
        )
        let medicationMatchWelcomeAlert = SCLAlertView(appearance: apperance)
        medicationMatchWelcomeAlert.addButton("Let's GO!") {
            self.timerManger.startTimer(totalTime: self.amountOfTimeForQuiz, progressView: self.userProgressView) {
                
                
                self.checkForWin()
            }
        }
        
        
        let isDarkMode = traitCollection.userInterfaceStyle == .dark
        if isDarkMode == true {
            
            medicationMatchWelcomeAlert.showCustom("Welcome To MediMatch!", subTitle: "Ready to play a medication matching game? Match generic medication names on the left with their brand name counterparts on the right.", color: .systemIndigo, icon: UIImage(named: "teamwork")!)
            
            
        } else {
            
            medicationMatchWelcomeAlert.showCustom("Welcome To MediMatch!", subTitle: "Can you match the generic medication names on the left with their brand name counterparts on the right? It's time to put your pharmaceutical knowledge to the test!", color: .systemBlue, icon: UIImage(named: "teamwork")!)
        }
        
        
    }
    
    
    func styleButtonBackgroundView() {
        
        let isDarkMode = traitCollection.userInterfaceStyle == .dark
        
        if isDarkMode == true {
            
            buttonBackgroundView.backgroundColor =  UIColor.systemIndigo
            buttonBackgroundView.layer.cornerRadius = 10
            buttonBackgroundView.layer.shadowColor = UIColor.black.cgColor
            buttonBackgroundView.layer.shadowOffset = CGSize(width: 0, height: 3)
            buttonBackgroundView.layer.shadowOpacity = 0.5
        } else {
            buttonBackgroundView.backgroundColor = UIColor.systemBlue
            buttonBackgroundView.layer.cornerRadius = 10
            buttonBackgroundView.layer.shadowColor = UIColor.black.cgColor
            buttonBackgroundView.layer.shadowOffset = CGSize(width: 0, height: 3)
            buttonBackgroundView.layer.shadowOpacity = 0.5
        }
        
        
        
        
        
    }
    
    func changeImageViews() {
        
        correctCheckMarkImageView.layer.shadowColor = UIColor.black.cgColor
        correctCheckMarkImageView.layer.shadowOffset = CGSizeMake(0, 1)
        correctCheckMarkImageView.layer.shadowOpacity = 0.5
        correctCheckMarkImageView.layer.shadowRadius = 2
        
        
        
        
        
        
        
    }
    
    
    
    func checkForLoss() {
        print("This line is working ")
    }
    
    func dismissToRootViewController(animated: Bool) {
        self.navigationController?.popViewController(animated: true)
    }
    func checkForWin() {
        if timerManger.timeRemaining == 0 || userAmountOfQuestionsAttempted == 30 {
            timerManger.stopTimer()

            let advertisementViewController = storyboard?.instantiateViewController(withIdentifier: "AdvertisementViewController") as! AdvertisementViewController
            navigationController?.pushViewController(advertisementViewController, animated: true)

            DispatchQueue.main.asyncAfter(deadline: .now() + 10) { [self] in
                // Delay presentation of game over screen by 2 seconds
                let minutes = timerManger.timeRemaining / 60
                let seconds = timerManger.timeRemaining % 60
                let formattedTimeRemaining = String(format: "%02d:%02d", minutes, seconds)

                print(formattedTimeRemaining)

                let gameOverScreenTitle = "PTCB Prep Complete!"
                let numerator = userMedicationMatchScore
                let denominator = userAmountOfQuestionsAttempted

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
    
    
    
    

