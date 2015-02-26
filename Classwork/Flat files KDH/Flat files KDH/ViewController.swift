//
//  ViewController.swift
//  Flat files KDH
//
//  Created by Kathryn Hill on 2/25/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textView: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
// Access to temp directory and user file manager.  Need to have file to write to.  Encoding is the way its going to write data to file.  32 is a character set; greater than 8.  
//        3 steps: path + file, content and write to file (write each file separately)
        
        var tempPath = NSTemporaryDirectory() + "hello.txt"
        println(tempPath)
        var fileManager = NSFileManager()
        var stringToSave = self.textView.text
//        "hello world!"
        
        stringToSave.writeToFile(tempPath, atomically: true, encoding: NSUTF32StringEncoding, error: nil)
    }
    
//    stringToLoad == loading the file
    @IBAction func loadData(sender: AnyObject) {
        var txtPath = NSTemporaryDirectory() + "hello.txt"
        
        var stringToLoad: NSString? = NSString(contentsOfFile: txtPath, encoding: NSUTF32StringEncoding, error: nil)
        
//   unwrap the optional
//  ? = if content is not nil, so we set the content.  But could be nil
        
//  ! = println("Loading content without checking if nil: \(stringToLoad!)")
        
        if let loadedContent = stringToLoad {
            println("Content loaded! Content is: \(loadedContent)")
        } else {
            println("Could not load!")
        }
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }


}

