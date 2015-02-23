//
//  ViewController.swift
//  NEW Midterm Calculator
//
//  Created by Kathryn Hill on 2/21/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
 
    var userInput:String = ""
    var displayContent:String = ""
    var positiveValue:Bool = true
    var pressOnce:Bool = false
    var pressTwice:Bool = false
    var userIsTypingANumber:Bool = false
    var errorCheckVariable: Bool = false
    var symbolForCalculation = ""
    var currentValue = 0.0
    var previousValue = 0.0
    var number:String = ""
    var displayValue:Double {
        get {
            return NSNumberFormatter().numberFromString(calculatorDisplay.text!)!.doubleValue
        } set {
            calculatorDisplay.text = "\(newValue)"
        }
    }
    
    @IBOutlet weak var calculatorDisplay: UILabel!
    
    func orderOfValue(number: String) {
        var value = 0, currentValue = 0, previousValue = 1, result = 0, next = 0
        for index in 0...value {
            let tempVar = currentValue
            currentValue = next
            next = tempVar + currentValue
            result = tempVar
        }
        calculatorDisplay.text! = ("\(result)")
    }

    func handleNegativeNumber(number:String) {
        if number == "-" {
            if userInput.hasPrefix(number) {
                userInput = userInput.substringFromIndex(userInput.startIndex.successor())
            } else {
                userInput = number + userInput
            }
        calculatorDisplay.text = (userInput)
        }
    }
    
    @IBAction func equalsButton(sender: AnyObject) {
        if errorCheckVariable == true {
            } else {
        if symbolForCalculation == "=" {
            } else {
            currentValue = displayValue
            handleInput(number)
            symbolForCalculation = sender.currentTitle!!
            }
        }
    }

    @IBAction func addButton(sender: AnyObject) {
            var result = (currentValue + previousValue)
            calculatorDisplay.text! = "\(result)"
    }

    @IBAction func subButton(sender: AnyObject) {
            var result = currentValue - previousValue
            calculatorDisplay.text! = "\(result)"
    }
    
    @IBAction func multiplyButton(sender: AnyObject) {
            var result = currentValue * previousValue
            calculatorDisplay.text! = "\(result)"
        }
    
    @IBAction func divisionButton(sender: AnyObject) {
            var result = currentValue / previousValue
            calculatorDisplay.text! = "\(result)"
        }
    
    @IBAction func percentageButton(sender: AnyObject) {
            var result = currentValue/100
            calculatorDisplay.text = "\(result)"
        }
    
    @IBAction func posNegButton(sender: AnyObject) {
        if positiveValue == false {
            calculatorDisplay.text = "\(positiveValue) * -1)"
        } else {
            positiveValue == true
        }
        calculatorDisplay.text! = "\(positiveValue)"
    }

    @IBAction func clearButton(sender: AnyObject) {
        if userIsTypingANumber == true {
            userIsTypingANumber = false
            calculatorDisplay.text = "0"
        } else {
            userIsTypingANumber = false
            calculatorDisplay.text = "0"
            previousValue = 0
            currentValue = 0
        }
    }
    

    func handleInput(number: String) -> Int {
        return number.toInt()!
        //        userIsTypingANumber = false
        let symbol = self.symbolForCalculation
        self.userIsTypingANumber = true
    }
//
//    func calculateEquation() {
//        userIsTypingANumber = false
//        var result = 0.0
//        let symbol = self.symbolForCalculation
    
    func appendDigit(sender: UIButton) {
        errorCheckVariable = false
        let digit = sender.currentTitle!
        if userIsTypingANumber {
            calculatorDisplay.text = calculatorDisplay.text! + digit
        } else {
            calculatorDisplay.text = digit
            userIsTypingANumber = true
        }
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

