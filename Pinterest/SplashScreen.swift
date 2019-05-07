//
//  SplashScreen.swift
//  Pinterest
//
//  Created by Alumno on 28/03/19.
//  Copyright © 2019 MarianoRL. All rights reserved.
//


import UIKit
import SwiftyGif

class SplashScreen: UIViewController {
    
    let logoAnimationView = LogoAnimationView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(logoAnimationView)
        logoAnimationView.pinEdgesToSuperView()
        logoAnimationView.logoGifImageView.delegate = self as? SwiftyGifDelegate
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        logoAnimationView.logoGifImageView.startAnimatingGif()
    }
    
}

extension SplashScreen: SwiftyGifDelegate {
    func gifDidStop(sender: UIImageView) {
        print("ya")
        let login = LoginViewController()
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        appDelegate?.setRootViewController(login)
    }
}
