//
//  RoundButton.swift
//  BMICalculator
//
//  Created by Zidane Putra Fadilah on 8/10/23.
//

import UIKit

@IBDesignable
open class RoundButton: UIButton {
 
    // define some functions
    func setup() {
        self.clipsToBounds = true
        self.layer.cornerRadius = 5.0
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
}
