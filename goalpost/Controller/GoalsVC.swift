//
//  ViewController.swift
//  goalpost
//
//  Created by Jamil Jalal on 8/16/18.
//  Copyright © 2018 Jamil Jalal. All rights reserved.
//

import UIKit

class GoalsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func addBtnWasPressed(_ sender: Any) {
        print("Button was pressed")
    }
    
    
}

