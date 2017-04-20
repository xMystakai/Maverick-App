//
//  StartScreen.swift
//  Maverick App
//
//  Created by Kai Comer on 4/20/17.
//  Copyright © 2017 Kai Comer. All rights reserved.
//

import Foundation
import UIKit

class StartScreen : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let when = DispatchTime.now() + 2
        DispatchQueue.main.asyncAfter(deadline: when) { 
            self.performSegue(withIdentifier: "LoginScreen", sender: nil)
        }
        
    }
    
}
