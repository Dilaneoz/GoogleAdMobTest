//
//  ViewController.swift
//  GoogleAdMobTest
//
//  Created by Atil Samancioglu on 17.08.2019.
//  Copyright © 2019 Atil Samancioglu. All rights reserved.
//

import UIKit
import GoogleMobileAds

// butona basınca reklam çıkıcak

// infoplist e id yi ve diğer kodları ekliyoruz

// appdelegate a GADMobileAds.sharedInstance().start(completionHandler: nil) google admob da yazan bu initialization kodunu ekliyoruz

// app tracking transparency i(kullanıcıdan izin isteme) kullanmak artık zorunlu

// bu proje videodakilerden farklı

class ViewController: UIViewController {
    
    var interstitial: GADInterstitial!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        interstitial = GADInterstitial(adUnitID: "ca-app-pub-3940256099942544/4411468910")
        let request = GADRequest() // önce bi request oluşturuyoruz
        interstitial.load(request) // sonra kütüphaneden gelen GADInterstitialAd i kullanarak yükleme işlemini yapıyor
        
    }

    @IBAction func nextClicked(_ sender: Any) {
      
        if interstitial.isReady {
          interstitial.present(fromRootViewController: self)
        }
        
    }
    
}

