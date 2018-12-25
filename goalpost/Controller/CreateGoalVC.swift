//
//  CreateGoalVC.swift
//  goalpost
//
//  Created by Jamil Jalal on 12/24/18.
//  Copyright © 2018 Jamil Jalal. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {
    
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    var goalType: GoalType = .shortTerm
    // type of goaltype

    override func viewDidLoad() {
        super.viewDidLoad()
        nextBtn.bindToKeyboard()
        shortTermBtn.setSelectedColor()
        longTermBtn.setDeselectedColor()
    }
    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
        goalType = .shortTerm
        shortTermBtn.setSelectedColor()
        longTermBtn.setDeselectedColor()
    }
    
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
        goalType = .longTerm
        shortTermBtn.setDeselectedColor()
        longTermBtn.setSelectedColor()
    }
    
    @IBAction func nextButtonWasPressed(_ sender: Any) {
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
}
