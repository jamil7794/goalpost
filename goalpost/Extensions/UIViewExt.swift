//
//  UIViewExt.swift
//  goalpost
//
//  Created by Jamil Jalal on 12/25/18.
//  Copyright © 2018 Jamil Jalal. All rights reserved.
//

import UIKit

extension UIView {
    func bindToKeyboard(){
        NotificationCenter.default.addObserver(self, selector: #selector(keyBoardWillChange(_:)), name: NSNotification.Name.UIKeyboardWillChangeFrame, object: nil)
    }
    
    @objc func keyBoardWillChange(_ notification: NSNotification){
        let duration = notification.userInfo![UIKeyboardAnimationDurationUserInfoKey] as! Double
        // Time to slide up the keyboard
        let curve = notification.userInfo![UIKeyboardAnimationCurveUserInfoKey] as! UInt
        //time to be fast or slow during the end when the keyboard is all the way up or tall the wa down
        let startingFrame = (notification.userInfo![UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        // frame when the keyboard is not present i.e. all the way in the bottom where it is hidden
        let endingFrame = (notification.userInfo![UIKeyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        let deltaY = endingFrame.origin.y - startingFrame.origin.y
        
        UIView.animateKeyframes(withDuration: duration, delay: 0.0, options: UIViewKeyframeAnimationOptions(rawValue: curve), animations: {
            self.frame.origin.y += deltaY
        }, completion: nil)
    }
}
