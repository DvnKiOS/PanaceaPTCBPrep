//
//  HomeScreenViewController.swift
//  MediMatch
//
//  Created by Devin King on 2/24/23.
//

import UIKit
import SCLAlertView
import UserNotifications

class HomeScreenViewController: UIViewController, UNUserNotificationCenterDelegate {
    
    let homeScreenTitle = "Home"
    var welcomeMessage: String = ""
    let randomIndex = Int.random(in: 0..<3)
    
    
    @IBOutlet weak var medicationMatchButton: UIButton!
    
    @IBOutlet weak var seenSayButton: UIButton!
    
    
    @IBOutlet weak var ptcbPrepButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessages()
        add3DEffect(to: medicationMatchButton)
        add3DEffect(to: seenSayButton)
        add3DEffect(to: ptcbPrepButton)
        
        // Set the title
        title = homeScreenTitle
        
        
        // Modify the largeTitleTextAttributes property
        let attrs = [
            NSAttributedString.Key.font: UIFont(name: "Marker Felt", size: 50)!
        ]
        navigationController?.navigationBar.largeTitleTextAttributes = attrs
        
        
    }
    func add3DEffect(to button: UIButton) {
        
        
        // Add a shadow to the button
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 0, height: 3)
        button.layer.shadowOpacity = 0.3
        button.layer.shadowRadius = 3
        button.layer.masksToBounds = false
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        updateAppearance()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        updateAppearance()
        
    }
    
    
    func welcomeMessages() {
        
        
        
        switch randomIndex {
            case 0:
                welcomeMessage = "Welcome back to Paneca! Today is a great day to learn something new and ace your PTCB exam!"
            case 1:
                welcomeMessage = "Hey there, welcome back to Paneca! Are you ready to level up your pharmacy tech knowledge?"
            case 2:
                welcomeMessage = "Welcome to Paneca, where we make PTCB prep easy and fun! Let's get started with some practice questions!"
            case 3:
                welcomeMessage = "Glad to have you back on Paneca! It's time to crush that PTCB exam!."
            default:
                welcomeMessage = "Welcome to Paneca! Get ready to ace your PTCB exam with our top-notch study resources and support."
        }

        
        
        let isDarkMode = traitCollection.userInterfaceStyle == .dark
        let apperance = SCLAlertView.SCLAppearance (
            kCircleHeight: 65,
            kCircleIconHeight: 60,
            
            kTextFont: UIFont(name: "Thonburi", size: 15)!,
            showCloseButton: false
            
            
        )
        let welcomeMessageDuration = SCLAlertView.SCLTimeoutConfiguration(timeoutValue: 2.5) {
            print("Hello world!")
        }
        let welcomeMessageAlert = SCLAlertView(appearance: apperance)
        if isDarkMode == true {
            
            
            
            welcomeMessageAlert.showCustom("Welcome To Panacea: PTCB Prep", subTitle: welcomeMessage, color: .systemIndigo, icon: UIImage(named: "pill")!, timeout: welcomeMessageDuration, animationStyle: .bottomToTop)
        } else {
            print("we arent using dark mode right now")
            
            welcomeMessageAlert.showCustom("Welcome To Panacea: PTCB Prep", subTitle: welcomeMessage, color: .systemBlue, icon: UIImage(named: "pill")!, timeout: welcomeMessageDuration, animationStyle: .bottomToTop)
        }
    }
    
    
    
    
    // Handle notification taps
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        let alert = SCLAlertView()
        alert.showSuccess("Study Time", subTitle: "Let's Do Some PTCB Exam Questions!")
        completionHandler()
    }
}

