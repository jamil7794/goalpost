//
//  FinishGoalVC.swift
//  goalpost
//
//  Created by Jamil Jalal on 12/26/18.
//  Copyright © 2018 Jamil Jalal. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var createGoalBtn: UIButton!
    @IBOutlet weak var pointsTxtField: UITextField!
    var goalDescription: String!
    var goalType: GoalType!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeyboard()
        pointsTxtField.delegate = self
   
    }
    
    func initData(description: String, type: GoalType){
        self.goalDescription = description
        self.goalType = type
    }
    
    @IBAction func createGoalBtnWasPressed(_ sender: Any) {
        
    }
    
}
