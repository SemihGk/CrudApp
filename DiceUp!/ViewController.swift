//
//  ViewController.swift
//  DiceUp!
//
//  Created by Semih Gokceoglu on 2016-05-13.
//  Copyright © 2016 Semih Gokceoglu. All rights reserved.
//

import UIKit
import Dollar

class ViewController: UIViewController {
    // Global variables: button, textArea label etc.
    var userNo: String = ""
    var firstNumber: Int!
    var secondNumber: Int!
    var thirdNumber: Int!
    var fourthNumber: Int!
    var result: Float!
    
    // view elements
    @IBOutlet weak var secondSlash: UILabel!
    @IBOutlet weak var introLabel: UILabel!
    @IBOutlet weak var switchButton: UISwitch!
    @IBOutlet weak var labelArea: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var firstTextBox: UITextField!
    @IBOutlet weak var gameArea: UILabel!
    @IBOutlet weak var fourthTextBox: UITextField!
    @IBOutlet weak var thirdTextBox: UITextField!
    @IBOutlet weak var secondTextBox: UITextField!
    
    //change options area text
    func changeText(text: String) {
        print(text)
        self.gameArea.text = text
    }
    
    @IBAction func onChangedSwitch(sender: AnyObject) {
        
        introLabel.text = introLabel.text == "Addition two fraction" ?  "Simple fraction" : "Addition two fraction"
        thirdTextBox.hidden = thirdTextBox.hidden == true ? false : true
        fourthTextBox.hidden = fourthTextBox.hidden == true ? false : true
        secondSlash.hidden = secondSlash.hidden == true ? false : true
    }
    
    // button press event
    @IBAction func onButtonPressed(sender: AnyObject) {
        firstNumber = Int(self.firstTextBox.text!)
        
        secondNumber = Int(self.secondTextBox.text!)
        
        thirdNumber = Int(self.thirdTextBox.text!)
        
        fourthNumber = Int(self.fourthTextBox.text!)
        
        if(firstNumber == nil || secondNumber == nil) {
            self.changeText("Invalid numbers are detected!");
        } else if (thirdTextBox.hidden == false &&
            (thirdNumber == nil || fourthNumber == nil)) {
            self.changeText("Please enter correct entries for second fraction")
        } else {
            // Enable result process
            if (thirdTextBox.hidden) {
                result = Float(firstNumber) / Float(secondNumber)
                self.changeText("Your sum result is \(result) for (\(firstNumber) / \(secondNumber))");
            } else {
                result = (Float(firstNumber) / Float(secondNumber)) + (Float(thirdNumber) / Float(fourthNumber))
                self.changeText("Your sum result \n is \(result) for (\(firstNumber) / \(secondNumber)) + (\(thirdNumber) / \(fourthNumber))");
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gameArea.numberOfLines = 0;
        thirdTextBox.hidden = true
        fourthTextBox.hidden = true
        secondSlash.hidden = true
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

