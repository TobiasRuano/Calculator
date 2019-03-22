//
//  ViewController.swift
//  Calculator
//
//  Created by Tobias Ruano on 5/3/18.
//  Copyright © 2018 Tobias Ruano. All rights reserved.
//

//TODO: Solo se pueden mostrar 8 cifras

import UIKit

class ViewController: UIViewController {
    @IBOutlet var myGradientView: GradientView!
    var currentNumber = ""
    var previousNumber = 0
    var performingMath = false
    var operation = 0
    
    @IBOutlet weak var screenLabel: UILabel!
    @IBOutlet weak var operationDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screenLabel.text = "0"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        changeBackground()
    }
    
    @IBAction func numbers(_ sender: UIButton) {
        if performingMath == true {
            screenLabel.text = String(sender.tag)
            currentNumber = screenLabel.text!
            performingMath = false
        }else {
            currentNumber += String(sender.tag)
            screenLabel.text = currentNumber
        }
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        if screenLabel.text != "" && sender.tag != 10 && sender.tag != 16 && sender.tag != 17 {
            
            previousNumber = Int(screenLabel.text!)!
            
            if sender.tag == 11 {
                
            }else if sender.tag == 12 {
                
            }else if sender.tag == 13 {
                
            }else if sender.tag == 14 {
                
            }else if sender.tag == 15 {
                
            }
            operation = sender.tag
            performingMath = true
            
        }else if sender.tag == 10 {
            if operation == 11 {
                screenLabel.text = String(previousNumber + Int(currentNumber)!)
                operationDisplay.text = ("\(previousNumber)+\(currentNumber)")
            }else if operation == 12 {
                screenLabel.text = String(previousNumber - Int(currentNumber)!)
                operationDisplay.text = ("\(previousNumber)-\(currentNumber)")
            }else if operation == 13 {
                screenLabel.text = String(previousNumber * Int(currentNumber)!)
                operationDisplay.text = ("\(previousNumber)x\(currentNumber)")
            }else if operation == 14 {
                screenLabel.text = String(previousNumber / Int(currentNumber)!)
                operationDisplay.text = ("\(previousNumber)/\(currentNumber)")
            }else if operation == 15 {
                
            }
        }else if sender.tag == 17 {
            screenLabel.text = "0"
            currentNumber = ""
            previousNumber = 0
            operation = 0
            operationDisplay.text = ""
        }
    }
    
    @IBAction func settingsButton(_ sender: UIButton) {
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    func changeBackground() {
        if UserDefaults.standard.value(forKey: "StartColor") != nil {
            let startColor = UserDefaults.standard.colorForKey(key: "StartColor")
            let endColor = UserDefaults.standard.colorForKey(key: "EndColor")
            myGradientView.StartColor = startColor!
            myGradientView.EndColor = endColor!
        }
        else {
            myGradientView.StartColor = UIColor(displayP3Red: 48/255, green: 35/255, blue: 174/255, alpha: 1.0)
            myGradientView.EndColor = UIColor(displayP3Red: 200/255, green: 109/255, blue: 215/255, alpha: 1.0)
        }
    }
}

extension UserDefaults {
    func colorForKey(key: String) -> UIColor? {
        var color: UIColor?
        if let colorData = data(forKey: key) {
            color = NSKeyedUnarchiver.unarchiveObject(with: colorData) as? UIColor
        }
        return color
    }
    
    func setColor(color: UIColor?, forKey key: String) {
        var colorData: NSData?
        if let color = color {
            colorData = NSKeyedArchiver.archivedData(withRootObject: color) as NSData?
        }
        set(colorData, forKey: key)
    }
    
}

