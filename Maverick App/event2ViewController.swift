//
//  event2ViewController.swift
//  Maverick App
//
//  Created by allen welch on 4/21/17.
//  Copyright © 2017 Kai Comer. All rights reserved.
//

import UIKit

class event2ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

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
        let cell = tableView.dequeueReusableCell(withIdentifier: "commentsID", for: indexPath) as! Comments
        cell.emailsLBL.text = "cat@cat.cat"
        cell.actualComment.text = "i am commenting about this topic cause it is a topic"
        return cell
    }

    @IBAction func dismissButton() {
        dismiss(animated: true, completion: nil)
    }

}
class Comments : UITableViewCell{
    @IBOutlet weak var emailsLBL: UILabel!
    @IBOutlet weak var actualComment: UITextView!
    
}
