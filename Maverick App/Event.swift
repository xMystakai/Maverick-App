//
//  Event.swift
//  Maverick App
//
//  Created by Kai Comer on 4/21/17.
//  Copyright © 2017 Kai Comer. All rights reserved.
//
import UIKit
import Foundation

class Event {
    
    var date : Date
    var subject : String
    var info : String
    var image : UIImage?
    
    
    init(date: Date, subject: String, info: String, image: UIImage) {
        self.date = date
        self.subject = subject
        self.info = info
        self.image = image
    }
    
}
