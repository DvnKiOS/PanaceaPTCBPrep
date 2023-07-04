//
//  GameOverViewController.swift
//  MediMatch
//
//  Created by Devin King on 2/19/23.
//

import UIKit

protocol GameOverViewDelegate {
    func didSaveRecentScore(_ score: UserHighScoreModel)
}

class GameOverViewController: UIViewController {
    
    var mostRecentScore: Int = 0
    var finalScoreTitle: String = "Hey"
    var userFinalScore = "100%"
    var userAmountOfQuestionsTried: Int = 0
    var amountOfQuestionsCorrect: Int = 0
    var amountOfTimeRemaining: String = "00:00"
    var finaltScreenImage: UIImage?
    var finalScreenMessage = "Amazing Job!"
    
    var delegate: GameOverViewDelegate?
    
    @IBOutlet weak var gamePlayedLabel: UILabel!
    
    @IBOutlet weak var userCorrectVSWrongAnswerLabel: UILabel!
    
    @IBOutlet weak var userTrophyImageView: UIImageView!
    
    @IBOutlet weak var userPercentageCorrectLabel: UILabel!
    
    @IBOutlet weak var explanationOfResultsLabel: UILabel!
    
    @IBOutlet weak var returnHomeButton: UIButton!
    
    @IBOutlet weak var timeRemainingLabel: UILabel!
    
    @IBOutlet weak var userFinalScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        returnHomeButton.setTitle("Return Home", for: .normal)
        gamePlayedLabel.text = " \(finalScoreTitle) "
        userPercentageCorrectLabel.text = "Final Score: \(userFinalScore)"
        userCorrectVSWrongAnswerLabel.text = " You Got \(amountOfQuestionsCorrect) Correct Out of \(userAmountOfQuestionsTried) Questions!"
        userTrophyImageView.image = finaltScreenImage
        timeRemainingLabel.text = "You had \(amountOfTimeRemaining) remaining!"
        explanationOfResultsLabel.text = finalScreenMessage
        let newestScore = UserHighScoreModel(quizCategory: finalScoreTitle, quizScore: userFinalScore, timeRemainingString: amountOfTimeRemaining)
        print(newestScore)
        delegate?.didSaveRecentScore(newestScore)
        
        navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view.
       
    }
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        updateAppearance()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        updateAppearance()
        
    }
    

    
    @IBAction func returnToHomeButtonTapped(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
   
}
