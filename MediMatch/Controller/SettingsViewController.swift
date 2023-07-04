//
//  SetttingsViewController.swift
//  MediMatch
//
//  Created by Devin King on 2/24/23.
//

import UIKit
import SCLAlertView

class SettingsViewController: UIViewController  {
    
    @IBOutlet weak var soundsAndMusicSwitch: UISwitch!
    @IBOutlet weak var enableHapticsSwitch: UISwitch!
    
    @IBOutlet weak var settingsOptionsView: UIView!
    
    @IBOutlet weak var timeToStudyLabel: UILabel!
    
    @IBOutlet weak var enabledNotificationsSwitch: UISwitch!
    
    @IBOutlet weak var settingsChoicesView: UIView!
    
    @IBOutlet weak var darkThemeSwitch: UISwitch!
    
    // MARK: - Properties
    
        var isSoundEffectsEnabled = true
    
    // MARK: - Lifecycle methods
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let hapticsEnabled = UserDefaults.standard.object(forKey: "areHapticsEnabled") as? Bool {
            enableHapticsSwitch.isOn = hapticsEnabled
        }
        if let notificationsEnabled = UserDefaults.standard.object(forKey: "areNotificationsEnabled") as? Bool {
            enabledNotificationsSwitch.isOn = notificationsEnabled
        }
        
        // Load saved study time from UserDefaults
        if let studyTime = UserDefaults.standard.string(forKey: "studyTime") {
            timeToStudyLabel.text = "Study Time is At: \(studyTime)😃"
        } else {
            timeToStudyLabel.text = "No Study Reminder Set 😔"
        }
        
        updateSettingsViewApperance()
        updateAppearance()
    }

    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Settings"
        
        // Retrieve the saved switch state from UserDefaults
        // Load saved switch states from UserDefaults
            soundsAndMusicSwitch.isOn = UserDefaults.standard.bool(forKey: "areSoundsEnabled")
            enableHapticsSwitch.isOn = UserDefaults.standard.bool(forKey: "areHapticsEnabled")
            enabledNotificationsSwitch.isOn = UserDefaults.standard.bool(forKey: "areNotificationsEnabled")
            
        
             
            
    }

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        updateAppearance()
        updateSettingsViewApperance()
    }
    func updateSettingsViewApperance() {
        let isDarkMode = traitCollection.userInterfaceStyle == .dark
        
        
        settingsChoicesView.backgroundColor = isDarkMode ? UIColor.systemIndigo : UIColor.systemBlue
        
        settingsChoicesView.layer.cornerRadius = 10
        settingsChoicesView.layer.shadowColor = UIColor.black.cgColor
        settingsChoicesView.layer.shadowOffset = CGSize(width: 0, height: 3)
        settingsChoicesView.layer.shadowOpacity = 0.5
        
        
        
       
        
        
        
        
        
        
        
        
    }
  


   

    @IBAction func notificationsSwitchEnabled(_ sender: UISwitch) {
        UserDefaults.standard.set(sender.isOn, forKey: "areNotificationsEnabled")
        let appearance = SCLAlertView.SCLAppearance(
            kTitleFont: UIFont(name: "HelveticaNeue", size: 20)!,
            kTextFont: UIFont(name: "HelveticaNeue", size: 14)!,
            kButtonFont: UIFont(name: "HelveticaNeue-Bold", size: 12)!,
            showCloseButton: false
        )
        
        if sender.isOn {
            let alert = SCLAlertView(appearance: appearance)
            
            
            let datePicker = UIDatePicker(frame: CGRect(x: -55, y: 0, width: 100, height: 120))
            datePicker.datePickerMode = .time
            datePicker.preferredDatePickerStyle = .automatic
            
            alert.customSubview = datePicker

        



           
            
            
            alert.addButton("Set Time") { [self] in
                do {
                    let selectedTime = datePicker.date
                   
                    
                    // Check if a valid time has been entered
                    guard selectedTime != Date.distantPast else {
                        throw NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey: "Please select a valid time."])
                    }
                    
                    // Set up the notification content
                    let content = UNMutableNotificationContent()
                    content.title = "Study Reminder."
                    content.body = "It's time to study for the PTCB!"
                    content.sound = UNNotificationSound.default
                    
                    // Set up the notification trigger based on the selected time
                    let calendar = Calendar.current
                    let dateComponents = calendar.dateComponents([.hour, .minute], from: selectedTime)
                    var triggerDate = DateComponents()
                    triggerDate.hour = dateComponents.hour
                    triggerDate.minute = dateComponents.minute
                    let trigger = UNCalendarNotificationTrigger(dateMatching: triggerDate, repeats: true)
                    
                    // Set up the notification request
                    let request = UNNotificationRequest(identifier: "StudyReminder", content: content, trigger: trigger)
                    
                    // Schedule the notification
                     UNUserNotificationCenter.current().add(request)
                    
                    let dateFormatter = DateFormatter()
                    dateFormatter.timeZone = TimeZone.current // set the time zone to the user's current time zone
                    dateFormatter.timeStyle = .short
                    let formattedSelectedTime = dateFormatter.string(from: selectedTime)
                    UserDefaults.standard.set(formattedSelectedTime, forKey: "studyTime")
                    
                    let notificationSetAlert = SCLAlertView()
                    notificationSetAlert.showCustom("Notification Set!", subTitle: "Stay on track with your studies! You'll receive a daily reminder at \(formattedSelectedTime).", color: .black, icon: UIImage(named:"bell")!)
                    timeToStudyLabel.text = "Study Time is At: \(formattedSelectedTime)"
                    print(formattedSelectedTime)
                } catch {
                    let errorAlert = SCLAlertView()
                    errorAlert.showError("Error", subTitle: error.localizedDescription)
                }
            }
            alert.addButton("Cancel") {
              
                sender.isOn = false
                UserDefaults.standard.set(sender.isOn, forKey: "areNotificationsEnabled")
               
                UNUserNotificationCenter.current().removePendingNotificationRequests(withIdentifiers: ["StudyReminder"])
                UserDefaults.standard.removeObject(forKey: "studyTime")
               
            }
            
            
            
            
            alert.showCustom("Study Reminder", subTitle: "Please select a time to for a study reminder", color: .black, icon: UIImage(named: "bell")!)
            
        } else if sender.isOn  == false {
            // Remove the existing notification if the switch is turned off
            
            UserDefaults.standard.set(sender.isOn, forKey: "areNotificationsEnabled")
            UNUserNotificationCenter.current().removePendingNotificationRequests(withIdentifiers: ["StudyReminder"])
            UserDefaults.standard.removeObject(forKey: "studyTime")
            
            let appearance = SCLAlertView.SCLAppearance(
                showCloseButton : false
            )
            let disabledAlert = SCLAlertView(appearance: appearance)
            disabledAlert.addButton("Done") {
                self.timeToStudyLabel.text = "No Study Reminder Set"
            }
            
            disabledAlert.showCustom("Notifications Disabled", subTitle: "No Pended Notifications", color: .black, icon: UIImage(named: "bell")!)
            
            
            
           
            
        }
    }


    
    
    
    @IBAction func soundEffectsSwitchDisabled(_ sender: UISwitch) {
        UserDefaults.standard.set(sender.isOn, forKey: "areSoundsEnabled")
        
        
        if sender.isOn {
            let enabledSoundsEffectsAlert = SCLAlertView()
            enabledSoundsEffectsAlert.showCustom("Sounds Effects Enabled", subTitle: "Stay informed audibly! You'll receive audio feedback.", color: .black, icon: UIImage(named: "sound")!)
            
            
        } else {
            let disabledSoundEffectsAlert = SCLAlertView()
            disabledSoundEffectsAlert.showCustom("Sounds Effects Disabled", subTitle: "Audio feedback disabled", color: .black, icon: UIImage(named: "sound")!)
        }
    }

    @IBAction func hapticsSwitchDisabled(_ sender: UISwitch) {
        
        UserDefaults.standard.set(sender.isOn, forKey: "areHapticsEnabled")
        
        if enableHapticsSwitch.isOn {
            let hapticAlert = SCLAlertView()
            hapticAlert.showCustom("Haptics", subTitle: "Get notified with a touch! Haptic feedback is now enabled.", color: .black, icon: UIImage(named:"haptic-2")!)
            
        } else {
            let hapticAlert = SCLAlertView()
            hapticAlert.showCustom("Haptics Disabled", subTitle: "Disabled haptic feedback", color: .black, icon: UIImage(named:"haptic-2")!)
        }
        
    }
    
    
    
    
    @IBAction func darkModeEnabledSwitch(_ sender: UISwitch) {
        
        
        let apperance = SCLAlertView.SCLAppearance(

            showCloseButton: true
            
            )
        
        let darkThemeSwitchAlert = SCLAlertView(appearance: apperance)
        
        
        if sender.isOn {
            darkThemeSwitchAlert.showCustom("Test Enabled Switch", subTitle: "This switch has been enabled", color: .systemIndigo, icon: UIImage(named: "dark-mode")!)
        } else {
            darkThemeSwitchAlert.showCustom("Darkmode switch disabled ", subTitle: "This switch has been disabled", color: .systemBlue, icon: UIImage(named: "dark-mode")!)
            
        }
        
//        darkModeEnabledAlert.addButton("Done") {
//            self.dismiss(animated: true)
//        }
        
        
    }
    
    
    
}

    
    
    
    
    
    
    // MARK: - Private methods
    
    extension UIViewController {
        func updateAppearance() {
            let isDarkMode = traitCollection.userInterfaceStyle == .dark
            
            view.backgroundColor = isDarkMode ? UIColor.systemIndigo : UIColor.systemBlue
            view.tintColor = isDarkMode ? UIColor.white : UIColor.black
            
            if let tabBar = self.tabBarController?.tabBar {
                if #available(iOS 15, *) {
                    let tabBarAppearance = UITabBarAppearance()
                    tabBarAppearance.backgroundColor = isDarkMode ? UIColor.black : UIColor.black
                    tabBarAppearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: isDarkMode ? UIColor.systemIndigo : UIColor.systemBlue]
                    tabBarAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: isDarkMode ? UIColor.darkGray : UIColor.darkGray]
                    tabBarAppearance.stackedLayoutAppearance.normal.iconColor = isDarkMode ? UIColor.darkGray : UIColor.lightGray
                    tabBarAppearance.stackedLayoutAppearance.selected.iconColor = isDarkMode ? UIColor.systemIndigo : UIColor.systemBlue
                    tabBar.standardAppearance = tabBarAppearance
                    tabBar.scrollEdgeAppearance = tabBarAppearance
                } else {
                    tabBar.barTintColor = UIColor.lightGray
                    tabBar.backgroundColor = isDarkMode ? UIColor.systemIndigo : UIColor.systemBlue
                    tabBar.selectedImageTintColor = isDarkMode ? UIColor.systemIndigo : UIColor.systemBlue
                    tabBar.unselectedItemTintColor = UIColor.white
                }
            }
            
            if #available(iOS 13.0, *) {
                overrideUserInterfaceStyle = .unspecified
            }
        }
    }

    
    
    
    extension UIViewController {
        static func setupAppearance() {
            let isDarkMode = UserDefaults.standard.bool(forKey: "isDarkMode")
            UIView.appearance(whenContainedInInstancesOf: [UIViewController.self]).backgroundColor = isDarkMode ? UIColor.black : UIColor.systemIndigo
            UIView.appearance(whenContainedInInstancesOf: [UIViewController.self]).tintColor = isDarkMode ? UIColor.white : UIColor.systemBlue
            if #available(iOS 13.0, *) {
                UIView.appearance(whenContainedInInstancesOf: [UIViewController.self]).overrideUserInterfaceStyle = isDarkMode ? .dark : .light
            }
        }
    }

