//
//  SideMenu.swift
//  Maverick App
//
//  Created by Kai Comer on 4/20/17.
//  Copyright © 2017 Kai Comer. All rights reserved.
//

import Foundation
import UIKit

class SideMenu: UIView{
    
    @IBOutlet weak var menuBtn : UIButton!
    
    @IBAction func menu (_ sender: UIButton){
        if self.frame.origin.x < 0{
            UIView.animate(withDuration: 0.5, animations: {
                self.frame.origin.x = 0
            })
        }else{
            UIView.animate(withDuration: 0.5, animations: {
                self.frame.origin.x = -self.frame.width
            })
        } 
    }

    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        if self.menuBtn.frame.contains(point){
            return true
        }else{
            return super.point(inside: point, with: event)
        }
    }
    
    @IBAction func home (_ sender: UIButton){
        let identifier = "Home"
        changeViews(identifier: identifier)
    }
    
    @IBAction func calendar (_ sender: UIButton){
        let identifier = "Calendar"
        //changeViews(identifier: identifier)
    }
    
    @IBAction func myDepartments (_ sender: UIButton){
        let identifier = "MyDepartments"
        changeViews(identifier: identifier)
    }
    
    @IBAction func feedBack (_ sender: UIButton){
        let identifier = "FeedBack"
        changeViews(identifier: identifier)
    }
    
    @IBAction func sendFeedback (_ sender: UIButton){
        let identifier = "SendFeedBack"
        changeViews(identifier: identifier)
    }
    
    @IBAction func chat (_ sender: UIButton){
        let identifier = "Chat"
        //changeViews(identifier: identifier)
    }
    
    @IBAction func contactUs (_ sender: UIButton){
        let identifier = "ContactUs"
        //changeViews(identifier: identifier)
    }
    
    @IBAction func settings (_ sender: UIButton){
        let identifier = "Settings"
        changeViews(identifier: identifier)
    }
    
    
    
    func changeViews (identifier: String) -> Void {
        
        if let viewControllers = self.window?.rootViewController?.childViewControllers {
            print(viewControllers.count)
            for viewController in viewControllers {
                if viewController is LoginScreen {
                    print("Found login")
                }
                if viewController is ViewController{
                    print("Found viewController")
                }
            }
        }

        
        if self.window?.rootViewController is ViewController{
            print("ViewController active")
        }
        
        UIView.animate(withDuration: 0.5, animations: {
            self.frame.origin.x = -self.frame.width
        })
        
        let viewController = self.window?.rootViewController
        viewController?.dismiss(animated: true, completion: {
            
        })
        viewController?.performSegue(withIdentifier: identifier, sender: nil)
    }
    
    
    
   

}
