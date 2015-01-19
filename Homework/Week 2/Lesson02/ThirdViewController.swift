//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
/*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.

*/
    
    @IBOutlet weak var numberInput: UITextField!
    
    @IBOutlet weak var textLabel: UILabel!
    
    @IBAction func calcButton(sender: AnyObject) {
    var numberInput = 0
    if numberInput % 2 == 0 && numberInput != 0 {
        return textLabel.text = "This is even."
        }
        else {
        return textLabel.text = "This is not even."
        }
        }
    
}