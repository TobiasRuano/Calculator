//
//  CustomGradientButton.swift
//  Calculator
//
//  Created by Tobias Ruano on 27/03/2019.
//  Copyright © 2019 Tobias Ruano. All rights reserved.
//

import UIKit

class CustomGradientButton: CustomButton {
    
    @IBInspectable var StartColor: UIColor = UIColor.clear {
        didSet{
            updateView()
        }
    }
    
    @IBInspectable var EndColor: UIColor = UIColor.clear{
        didSet {
            updateView()
        }
    }
    
    override class var layerClass: AnyClass {
        get {
            return CAGradientLayer.self
        }
    }
    
    override var isHighlighted: Bool {
        didSet {
            layer.shadowOpacity = isHighlighted ? 0 : 5
        }
    }
    
    func updateView() {
        let layer = self.layer as! CAGradientLayer
        layer.colors = [StartColor.cgColor, EndColor.cgColor]
        layer.cornerRadius = 10
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowRadius = 10
        layer.shadowOpacity = 5
        layer.shadowOffset = CGSize(width: 0, height: 0)
    }
    
}
