//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work
    
    
    @IBOutlet weak var makeText: UITextField!
    
    @IBOutlet weak var makeLabel: UILabel!
    
    @IBAction func addButton(sender: AnyObject) {
        let makeText:Int = 0
        let makeLabel = makeText + makeText
        for number in 0...makeText {
        }
        }
    
}






