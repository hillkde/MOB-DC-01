//
//  ViewController.swift
//  NEW Midterm Calculator
//
//  Created by Kathryn Hill on 2/21/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var calculatorDisplay: UILabel!
    
    var userInput:String = ""
    var positiveValue:Bool = true
    var result = 0.0
    var userIsTypingANumber:Bool = false
    var errorCheckVariable:Bool = false
    var symbolForCalculation = ""
    var currentValue = 0.0
    var previousValue = 0.0
    var number:String = ""
    var operation = ""
    
    var displayValue:Double {
        get {
            return NSNumberFormatter().numberFromString(calculatorDisplay.text!)!.doubleValue
        } set {
            calculatorDisplay.text = "\(newValue)"
        }
    }

    func handleNegativeNumber(number: String) {
        if number == "-" {
            if userInput.hasPrefix(number) {
                userInput = userInput.substringFromIndex(userInput.startIndex.successor())
            } else {
                userInput = number + userInput
            }
            calculatorDisplay.text = userInput
        }
    }
    
    @IBAction func equalsButton(sender: AnyObject) {
        if self.operation == "adding" {
            self.calculatorDisplay.text = "\(self.currentValue + self.previousValue)"
            self.currentValue = self.currentValue + self.previousValue
            self.previousValue = 0
        } else if self.operation == "subtracting" {
            self.calculatorDisplay.text = "\(self.currentValue - self.previousValue)"
            self.currentValue = self.currentValue - self.previousValue
            self.previousValue = 0
        } else if self.operation == "multiplying" {
            self.calculatorDisplay.text = "\(self.currentValue * self.previousValue)"
            self.currentValue = self.currentValue * self.previousValue
            self.previousValue = 0
        } else if self.operation == "dividing" {
            self.calculatorDisplay.text = "\(self.currentValue / self.previousValue)"
            self.currentValue = self.currentValue / self.previousValue
            self.previousValue = 0
        }
        
        currentValue = displayValue
        handleInput(number)
        symbolForCalculation = sender.currentTitle!!
    }

    @IBAction func addButton(sender: AnyObject) {
            self.operation = "adding"
            var result = (currentValue + previousValue)
            calculatorDisplay.text! = "\(result)"
        }

    @IBAction func subButton(sender: AnyObject) {
            self.operation = "subtracting"
            var result = (currentValue - previousValue)
            calculatorDisplay.text! = "\(result)"
        }
    
    @IBAction func multiplyButton(sender: AnyObject) {
            self.operation = "multiplying"
            var result = (currentValue * previousValue)
            calculatorDisplay.text! = "\(result)"
        }
    
    @IBAction func divisionButton(sender: AnyObject) {
            self.operation = "dividing"
            var result = (currentValue/previousValue)
            calculatorDisplay.text! = "\(result)"
        }
    
    @IBAction func percentageButton(sender: AnyObject) {
            var result = (currentValue/100)
            calculatorDisplay.text = "\(result)"
        }
    
    @IBAction func posNegButton(sender: AnyObject) {
        var calcValue = NSString(string: self.calculatorDisplay.text!).doubleValue
        calculatorDisplay.text = "\(calcValue * -1)"
        self.currentValue = (calcValue * -1)
    }

    @IBAction func clearButton(sender: AnyObject) {
        previousValue = 0
        currentValue = 0
        if userIsTypingANumber == true {
            userIsTypingANumber = false
            calculatorDisplay.text = "0"
        } else {
            userIsTypingANumber = false
            calculatorDisplay.text = "0"
        }
    }
    
    func handleInput(number: String) {
        errorCheckVariable = false
        self.previousValue = self.currentValue
        self.currentValue = NSString(string: number).doubleValue
        self.calculatorDisplay.text = number
    }
    
//Number Buttons
    @IBAction func zeroButton(sender: AnyObject) {
        handleInput("0")
        self.userIsTypingANumber = true
    }
    
    @IBAction func oneButton(sender: AnyObject) {
        handleInput("1")
        self.userIsTypingANumber = true
    }
    
    @IBAction func twoButton(sender: AnyObject) {
        handleInput("2")
        self.userIsTypingANumber = true
    }
    
    @IBAction func threeButton(sender: AnyObject) {
        handleInput("3")
        self.userIsTypingANumber = true
    }
    
    @IBAction func fourButton(sender: AnyObject) {
        handleInput("4")
        self.userIsTypingANumber = true
    }
    
    @IBAction func fiveButton(sender: AnyObject) {
        handleInput("5")
        self.userIsTypingANumber = true
    }
    
    @IBAction func sixButton(sender: AnyObject) {
        handleInput("6")
        self.userIsTypingANumber = true
    }
    
    @IBAction func sevenButton(sender: AnyObject) {
        handleInput("7")
        self.userIsTypingANumber = true
    }
    
    @IBAction func eightButton(sender: AnyObject) {
        handleInput("8")
        self.userIsTypingANumber = true
    }
    
    @IBAction func nineButton(sender: AnyObject) {
        handleInput("9")
        self.userIsTypingANumber = true
    }
    
    @IBAction func decimalButton(sender: AnyObject) {
        handleInput(".")
        self.userIsTypingANumber = true
    }
    
    func textFieldShouldBeginEditing(textLabel: UITextField) -> Bool {
        return false
    }

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.textLabel.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

