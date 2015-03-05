//
//  ThirdViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

//TODO three: Save the text in this text box to a flat file when 'next' is pressed.

class ThirdViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        var tempPath = NSTemporaryDirectory() + "hello.txt"
        println(tempPath)
        var fileManager = NSFileManager()
        var stringToSave = self.textField.text
        stringToSave.writeToFile(tempPath, atomically: true, encoding: NSUTF32StringEncoding, error: nil)
    }
    
    @IBAction func nextButton(sender: AnyObject) {
        
        let pressNextButton = NSTemporaryDirectory() + "hello.txt"
        
        var txtPath = NSTemporaryDirectory() + "hello.txt"
        
        var stringToLoad: NSString? = NSString(contentsOfFile: txtPath, encoding: NSUTF32StringEncoding, error: nil)
        
        if let loadedContent = stringToLoad {
            println("Content loaded! Content is: \(loadedContent)")
        } else {
            println("Could not load!")
        }
        
    }
    
}

