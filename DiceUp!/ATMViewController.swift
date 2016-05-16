//
//  ATMViewController.swift
//  DiceUp!
//
//  Created by Semih Gokceoglu on 2016-05-13.
//  Copyright © 2016 Semih Gokceoglu. All rights reserved.
//

import UIKit

class ATMViewController: UIViewController {
    //Global variables
    var pickerDataSource = ["Create Account", "Deposit", "WithDraw"];
    var userAccount: String!
    var balance: Int = 0
    // ui components
    @IBOutlet weak var textBox: UITextField!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var infoText: UILabel!
    @IBOutlet weak var buttonView: UIButton!
    @IBOutlet weak var header: UILabel!
    
    // initializated picker value
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // picker options count
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count
    }
    
    // save create withdraw button click
    @IBAction func onButtonClick(sender: AnyObject) {
        switch (self.infoText.text)! {
        case "Please put username":
            userAccount = textBox.text
            textView.text = "Congrats! \n You have created an account! \n Your balance: \(balance)"
            break;
        case "Save some money":
            let savedMoney: Int! = Int(textBox.text!)
            if (savedMoney != nil) {
                print(savedMoney)
                balance += savedMoney
                textView.text = "Congrats! \n You saved money! \n Your balance: \(balance)"
            } else {
                textView.text = "Oops! \n Please check your entry! \n Your balance: \(balance)"
            }
            break;
            
        case "Withdraw money!":
            let subMoney: Int! = Int(textBox.text!)
            if (subMoney != nil) {
                print(subMoney)
                var tmp: Int = balance
                tmp -= subMoney
                if (tmp < 0) {
                    
                } else {
                    textView.text = "Congrats! \n You withdraw money! \n Your balance: \(balance)"
                }
                
            } else {
                textView.text = "Oops! \n Please check your entry! \n Your balance: \(balance)"
            }
            break;
            
        default:
            textView.text = "Unexpected error has occured!"
        }
    }
    
    // current selected picker...
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return pickerDataSource[row]
    }
    // fire when select picker
    func pickerView(pickerView: UIPickerView!, didSelectRow row: Int, inComponent component: Int)
    {
        // selected value in Uipickerview in Swift
        let value = pickerDataSource[row]
        self.header.text = value;
        switch value {
        case "Create Account":
            self.infoText.text = "Please put username"
            self.buttonView.setTitle("Create", forState: .Normal)
        case "Deposit":
            self.infoText.text = "Save some money"
            self.buttonView.setTitle("Save", forState: .Normal)
        case "WithDraw":
            self.infoText.text = "Withdraw money!"
            self.buttonView.setTitle("Withdraw", forState: .Normal)
        default:
            self.infoText.text = "Something went wrong"
        }
        
    }
    // initialization funct.
    override func viewDidLoad() {
        super.viewDidLoad()
        header.numberOfLines = 0;
        infoText.numberOfLines = 0;
        self.textView.text = ""
        self.infoText.text = "Please put username"
        self.header.text = "Create Account"
        self.buttonView.setTitle("Create", forState: .Normal)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
