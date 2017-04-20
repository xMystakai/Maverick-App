//
//  LoginScreen.swift
//  Maverick App
//
//  Created by Kai Comer on 4/20/17.
//  Copyright © 2017 Kai Comer. All rights reserved.
//

import Foundation
import UIKit

class LoginScreen : UIViewController {
    
    
    @IBAction func loginBtn(_ sender: UIButton) {
        changeViews(identifier: "Home")
    }
    
    func changeViews (identifier: String) -> Void {
        let viewController = self.view.window?.rootViewController
        viewController?.dismiss(animated: true, completion: {
            viewController?.performSegue(withIdentifier: identifier, sender: nil)
        })
        
    }

}
