//
//  SecondViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

//TODO two: Make this text view print the values of the string and slider value stored in the settings bundle of the app.

class SecondViewController: UIViewController {
    
    @IBOutlet weak var sliderTextView: UITextView!
    
    @IBAction func slider(sender: AnyObject) {
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var bundle = NSUserDefaults.standardUserDefaults()
        
        let defaults = NSUserDefaults.standardUserDefaults()
        var slider: AnyObject? = defaults.objectForKey("settings_slider")
        
        var valuePath = NSBundle.mainBundle().pathForResource("Root", ofType: "plist")
        
        var value = NSMutableArray(contentsOfFile: valuePath!)
        
        value![0].setValue("settings_slider", forKey: "Identifier")
        
        value?.writeToFile(valuePath!, atomically: true)

        println(value!)

        //        stringForKey("test)"
        //        println(bundle)
    }
}
