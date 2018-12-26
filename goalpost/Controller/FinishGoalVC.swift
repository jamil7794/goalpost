//
//  FinishGoalVC.swift
//  goalpost
//
//  Created by Jamil Jalal on 12/26/18.
//  Copyright © 2018 Jamil Jalal. All rights reserved.
//

import UIKit
import CoreData

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
        
        if pointsTxtField.text != "" {
            self.save { (complete) in
                if complete {
                    dismiss(animated: true, completion: nil)
                }
            }

        }
  
    }
    
    
    @IBAction func backButtonWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    func save(completion: (_ finised: Bool) -> ()){
        // I made it
        guard let managedContext = appDelegate?.persistentContainer.viewContext else {return}
        let goal = Goal(context: managedContext)
        goal.goalType = goalType.rawValue
        goal.goalCompletionValue = Int32(pointsTxtField.text!)!
        goal.goalProgress = Int32(0)
        
        do{
            try managedContext.save()
            print("Successfully saved data")
            completion(true)
        }catch{
            debugPrint("Could not Save: \(error.localizedDescription)")
            completion(false)
        }
        
        
        
    }
    
}
