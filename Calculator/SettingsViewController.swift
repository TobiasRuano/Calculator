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
            startColor = UIColor(displayP3Red: 250/255, green: 217/255, blue: 97/255, alpha: 1.0)
            endColor = UIColor(displayP3Red: 247/255, green: 107/255, blue: 28/255, alpha: 1.0)
            changeColors(color1: startColor, color2: endColor)
        }else if sender.tag == 11 {
            startColor = UIColor(displayP3Red: 245/255, green: 81/255, blue: 95/255, alpha: 1.0)
            endColor = UIColor(displayP3Red: 159/255, green: 4/255, blue: 27/255, alpha: 1.0)
            changeColors(color1: startColor, color2: endColor)
        }else if sender.tag == 12 {
            startColor = UIColor(displayP3Red: 48/255, green: 35/255, blue: 174/255, alpha: 1.0)
            endColor = UIColor(displayP3Red: 200/255, green: 119/255, blue: 215/255, alpha: 1.0)
            changeColors(color1: startColor, color2: endColor)
        }else if sender.tag == 13 {
            startColor = UIColor(displayP3Red: 162/255, green: 226/255, blue: 48/255, alpha: 1.0)
            endColor = UIColor(displayP3Red: 47/255, green: 104/255, blue: 24/255, alpha: 1.0)
            changeColors(color1: startColor, color2: endColor)
        }else if sender.tag == 14 {
            //change
            startColor = UIColor(displayP3Red: 48/255, green: 35/255, blue: 174/255, alpha: 1.0)
            endColor = UIColor(displayP3Red: 81/255, green: 207/255, blue: 236/255, alpha: 1.0)
            changeColors(color1: startColor, color2: endColor)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
