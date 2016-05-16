//
//  CalculatorViewController.swift
//  DiceUp!
//
//  Created by Semih Gokceoglu on 2016-05-13.
//  Copyright © 2016 Semih Gokceoglu. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    // Global variables
    var firstNumber: Int!
    var secondNumber: Int!
    var result: Double!
    
    @IBOutlet weak var sumButton: UIButton!
    @IBOutlet weak var subButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var firstTextBox: UITextField!
    @IBOutlet weak var secondTextBox: UITextField!
    
    @IBOutlet weak var resultText: UILabel!
    
    // checking textfield values control.
    @IBAction func onEditingChanged(sender: AnyObject) {
        firstNumber = Int(firstTextBox.text!)
        secondNumber = Int(secondTextBox.text!)
        self.resultText.text = "\(firstNumber) and \(secondNumber)"
        if (firstNumber != nil && secondNumber != nil) { // string and emptry control
            self.subButton.hidden = false
            self.sumButton.hidden = false
            self.multiplyButton.hidden = false
            self.divideButton.hidden = false
        }
    }
    
    // sum calculation
    @IBAction func onSumButtonClick(sender: AnyObject) {
        firstNumber = Int(firstTextBox.text!)
        secondNumber = Int(secondTextBox.text!)
        result = Double(firstNumber) + Double(secondNumber)
        self.resultText.text = "\(firstNumber) + \(secondNumber) = \(result)"
    }
    
    //sub calculation
    @IBAction func onSubButtonClick(sender: AnyObject) {
        firstNumber = Int(firstTextBox.text!)
        secondNumber = Int(secondTextBox.text!)
        result = Double(firstNumber) - Double(secondNumber)
        self.resultText.text = "\(firstNumber) - \(secondNumber) = \(result)"
    }
    
    //multiply calculation
    @IBAction func onMultiplyButtonClick(sender: AnyObject) {
        firstNumber = Int(firstTextBox.text!)
        secondNumber = Int(secondTextBox.text!)
        result = Double(firstNumber) * Double(secondNumber)
        self.resultText.text = "\(firstNumber) * \(secondNumber) = \(result)"
    }
    
    //devide calculation
    @IBAction func onDevideButtonClick(sender: AnyObject) {
        firstNumber = Int(firstTextBox.text!)
        secondNumber = Int(secondTextBox.text!)
        result = Double(firstNumber) / Double(secondNumber)
        self.resultText.text = "\(firstNumber) / \(secondNumber) = \(result)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultText.numberOfLines = 0;
        self.subButton.hidden = true
        self.sumButton.hidden = true
        self.multiplyButton.hidden = true
        self.divideButton.hidden = true
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
