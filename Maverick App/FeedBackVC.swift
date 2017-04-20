//
//  FeedBackVC.swift
//  Maverick App
//
//  Created by Kai Comer on 4/20/17.
//  Copyright © 2017 Kai Comer. All rights reserved.
//

import UIKit
import Foundation


class FeedBackVC : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var data = [1,2,3,4,5,6,7]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FeedBackCell", for: indexPath) as! FeedBackTableCell
        cell.SubjectLabel.text = "\(data[indexPath.row])"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Code for when selecting cell
    }
    
    

}

class FeedBackTableCell : UITableViewCell {
    @IBOutlet weak var SubjectLabel: UILabel!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var CommentsTextField: UITextView!
    @IBOutlet weak var MainImage: UIImageView!
    
}
