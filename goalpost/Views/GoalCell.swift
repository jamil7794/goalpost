//
//  GoalCell.swift
//  goalpost
//
//  Created by Jamil Jalal on 8/17/18.
//  Copyright © 2018 Jamil Jalal. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {
    
    @IBOutlet weak var goalDescriptionLbl: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgressLbl: UILabel!
    
    func configureCell(goal: Goal){
        
        self.goalDescriptionLbl.text = goal.goalDescription
        self.goalTypeLbl.text = goal.goalType // Raw value is the string
        self.goalProgressLbl.text = String(describing: goal.goalProgress)
    }
}
