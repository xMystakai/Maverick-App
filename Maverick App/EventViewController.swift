//
//  EventViewController.swift
//  Maverick App
//
//  Created by allen welch on 4/21/17.
//  Copyright © 2017 Kai Comer. All rights reserved.
//

import UIKit

class EventViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "YES", for: indexPath) as! yesCell
        cell.theManyDescriptions.text = "i am the cat that eats all the innocent! NOM NOM NOM! YOU will BOW down TO me AND worship ME. MUAHAHhaHahAHahah"
        
        return cell
    }


}
class yesCell: UITableViewCell {
    @IBOutlet weak var subject: UILabel!
    @IBOutlet weak var department: UILabel!
    @IBOutlet weak var theManyDescriptions: UILabel!
    @IBOutlet weak var timeTIMEtime: UILabel!
    
}

