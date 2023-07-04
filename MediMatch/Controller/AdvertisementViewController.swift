//
//  AdvertisementViewController.swift
//  MediMatch
//
//  Created by Devin King on 4/20/23.
//

import Foundation


import UIKit
import GoogleMobileAds



class AdvertisementViewController: UIViewController {
    
    
    
    
    
    private var interstitial: GAMInterstitialAd?
    
    
    
    struct Constant {
        static let googleAdID = "/6499/example/interstitial"
    }
  
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        navigationItem.hidesBackButton = true
        
        
        let request = GAMRequest()
        GAMInterstitialAd.load(withAdManagerAdUnitID: "ca-app-pub-7800528862862775/9901537957", request: request, completionHandler: { [weak self] ad, error in
            guard let self = self else { return }
            if let error = error {
                print("Failed to load interstitial ad with error: \(error.localizedDescription)")
                return
            }
            self.interstitial = ad
            self.didTapButton()
        })
    }

    private func didTapButton() {
        if let interstitial = interstitial {
            interstitial.present(fromRootViewController: self)
        } else {
            print("Ad wasn't ready")
        }
    }
    


    
    /// Tells the delegate that the ad failed to present full screen content.
      func ad(_ ad: GADFullScreenPresentingAd, didFailToPresentFullScreenContentWithError error: Error) {
        print("Ad did fail to present full screen content.")
      }

      /// Tells the delegate that the ad will present full screen content.
      func adWillPresentFullScreenContent(_ ad: GADFullScreenPresentingAd) {
        print("Ad will present full screen content.")
      }

      /// Tells the delegate that the ad dismissed full screen content.
      func adDidDismissFullScreenContent(_ ad: GADFullScreenPresentingAd) {
        print("Ad did dismiss full screen content.")
      }
    
   
}
