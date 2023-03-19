//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import CLTypingLabel

enum Segues: String, CaseIterable {
    case registerVC = "goToRegisterVC"
    case loginVC = "goToLoginVC"
    case toChatFromRegister = "registerToChatVC"
    case toChatFromLogin = "loginToChatVC"
}


class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    
  
    override func viewDidLoad() {
        super.viewDidLoad()

        //animateTitleLabel()
       
        titleLabel.text = "⚡️FlashChat"
    }
    
    func animateTitleLabel() {
        let titleStr = "⚡️FlashChat"
        titleLabel.text = ""
        var charIndex: Double = 0
        titleStr.forEach { char in
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { timer in
                self.titleLabel.text?.append(char)
            }
            charIndex += 1
        }
    }
    
}
