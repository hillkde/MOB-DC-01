//
//  FirstViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

//TODO one: Make this text view print the values of test_string and test_number, stored in NSUserDefaults

class FirstViewController: UIViewController {
    
    @IBOutlet weak var firstTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = NSUserDefaults.standardUserDefaults()
        
        var test_number = defaults.objectForKey("test_number") as Float
        NSUserDefaults.standardUserDefaults().setInteger(42, forKey: "test_number")
//        test_number.writeToFile(test_number!, atomically: true)
        println(test_number)
    
        var test_string = defaults.objectForKey("test_string") as NSString as String
        NSUserDefaults.standardUserDefaults().setObject("This is a string in user defaults!", forKey: "test_string")
//        test_string?.writeToFile(test_string!, atomically: true)
        println(test_string)
    
    }
}