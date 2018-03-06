//
//  ViewController.swift
//  Calculator
//
//  Created by Tobias Ruano on 5/3/18.
//  Copyright © 2018 Tobias Ruano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentNumber = ""
    var displayNumber = ""
    var previousNumber = 0
    var performingMath = false
    var operation = 0
    
    @IBOutlet weak var screenLabel: UILabel!
    @IBOutlet weak var operationDisplay: UILabel!
    
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
                displayNumber = currentNumber + "+"
                
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
            screenLabel.text = ""
            currentNumber = ""
            previousNumber = 0
            operation = 0
            operationDisplay.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

