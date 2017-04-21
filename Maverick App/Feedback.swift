//
//  Feedback.swift
//  Maverick App
//
//  Created by Kai Comer on 4/21/17.
//  Copyright © 2017 Kai Comer. All rights reserved.
//

import UIKit
import Foundation


class Feedback{
    
    enum FeedbackType {
        case compliment
        case complaint
        case suggestion
        case anonymous
    }
    
    var type : FeedbackType
    var subject : String
    var name : String
    var info : String
    var image : UIImage?
    
    init(type: FeedbackType, subject: String, name: String, info: String, image: UIImage) {
        self.type = type
        self.subject = subject
        self.name = name
        self.info = info
        self.image = image
    }
    
}
