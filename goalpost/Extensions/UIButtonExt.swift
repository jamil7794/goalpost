//
//  UIButtonExt.swift
//  goalpost
//
//  Created by Jamil Jalal on 12/25/18.
//  Copyright © 2018 Jamil Jalal. All rights reserved.
//

import UIKit

extension UIButton {
    func setSelectedColor(){
        self.backgroundColor = #colorLiteral(red: 0.4274509804, green: 0.737254902, blue: 0.3882352941, alpha: 1)
    }
    
    func setDeselectedColor(){
        self.backgroundColor = #colorLiteral(red: 0.6980392157, green: 0.8666666667, blue: 0.6862745098, alpha: 1)
    }
}
