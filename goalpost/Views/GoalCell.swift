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
    
    func configureCell(descripion: String, type: GoalType, goalProgressingAmout: Int){
        
        self.goalDescriptionLbl.text = descripion
        self.goalTypeLbl.text = type.rawValue // Raw value is the string
        self.goalProgressLbl.text = String(describing: goalProgressingAmout)
    }
}