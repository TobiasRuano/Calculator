//
//  CustomButton.swift
//  Calculator
//
//  Created by Tobias Ruano on 21/03/2019.
//  Copyright © 2019 Tobias Ruano. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    func setupButton() {
        backgroundColor = UIColor.init(displayP3Red: 216/255, green: 216/255, blue: 216/255, alpha: 0.55)
        setTitleColor(.white, for: .normal)
    }
    
    override var isHighlighted: Bool {
        didSet {
            backgroundColor = isHighlighted ? UIColor.init(displayP3Red: 216/255, green: 216/255, blue: 216/255, alpha: 0) : UIColor.init(displayP3Red: 216/255, green: 216/255, blue: 216/255, alpha: 0.55)
        }
    }
}
