//
//  MaterialLabel.swift
//  MyDreamList
//
//  Created by Parima Ayazi on 02/03/2018.
//  Copyright © 2018 Parima Ayazi. All rights reserved.
//

import UIKit

private var materialLabel = false
extension UILabel {
    
    @IBInspectable var MaterialLabel: Bool {
    
        get {
            
            return materialLabel
        } set {
            
            materialLabel = newValue
            if (MaterialLabel) {

                self.isHighlighted = true
                self.textColor = UIColor(red: 125/255, green: 125/255, blue: 125/255, alpha: 1.0)
                
            } else {
                
                self.isHighlighted = false
                
            }
        }
        
    }

}
