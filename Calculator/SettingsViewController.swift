//
//  SettingsViewController.swift
//  Calculator
//
//  Created by Tobias Ruano on 6/3/18.
//  Copyright © 2018 Tobias Ruano. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    var startColor: UIColor = .black
    var endColor: UIColor = .white
    
    
    @IBAction func doneButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func backgroundColorSelection(_ sender: UIButton) {
        if sender.tag == 10 {
            startColor = UIColor(named: "OrangeStart")!
            endColor = UIColor(named: "OrangeFinish")!
            changeColors(color1: startColor, color2: endColor)
        }else if sender.tag == 11 {
            startColor = UIColor(named: "RedStart")!
            endColor = UIColor(named: "RedFinish")!
            changeColors(color1: startColor, color2: endColor)
        }else if sender.tag == 12 {
            startColor = UIColor(named: "VioletStart")!
            endColor = UIColor(named: "VioletFinish")!
            changeColors(color1: startColor, color2: endColor)
        }else if sender.tag == 13 {
            startColor = UIColor(named: "GreenStart")!
            endColor = UIColor(named: "GreenFinish")!
            changeColors(color1: startColor, color2: endColor)
        }else if sender.tag == 14 {
            startColor = UIColor(named: "BlueStart")!
            endColor = UIColor(named: "BlueFinish")!
            changeColors(color1: startColor, color2: endColor)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func changeColors(color1: UIColor, color2: UIColor) {
        UserDefaults.standard.setColor(color: color1, forKey: "StartColor")
        UserDefaults.standard.setColor(color: color2, forKey: "EndColor")
        
        createAlert(tittle: "Theme Changed!", message: "")
    }
    
    func createAlert(tittle: String, message: String){
        
        let alert = UIAlertController(title: tittle, message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated:  true, completion: nil)
    }
}
