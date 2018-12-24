//
//  ViewController.swift
//  goalpost
//
//  Created by Jamil Jalal on 8/16/18.
//  Copyright © 2018 Jamil Jalal. All rights reserved.
//

import UIKit
import CoreData

class GoalsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isHidden = false
        // Do any additional setup after loading the view, typically from a nib.

        
    }
    @IBAction func addBtnWasPressed(_ sender: Any) {
        print("Button was pressed")
    }
    
    
    
}

extension GoalsVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else {return UITableViewCell()}
        cell.configureCell(descripion: "Eat Salad twice a week", type: .shortTerm, goalProgressingAmout: 2)
        return cell
    }
    
    
}

