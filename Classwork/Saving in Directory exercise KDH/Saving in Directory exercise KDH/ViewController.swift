//
//  ViewController.swift
//  Saving in Directory exercise KDH
//
//  Created by Kathryn Hill on 2/25/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textFile: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func saveButton(sender: AnyObject) {
        let fileManager = NSFileManager()
        let path = fileManager.URLSForDirectory(NSSearchPathDirectory.DocumentationDirectory, inDomains: NSSearchPathDomainMask.UserDomainMask) as [NSURL]
        
        if path.count > 0 {
            let documentPath = path[0].relativePath! as String
            let mySavedPath = 
        }
        
    }
    
    @IBAction func loadButton(sender: AnyObject) {
        
        // allows us to go in and browse cache and docs directory
        
        //1) Find the documents path:
        let fileManager = NSFileManager()
        //gets list of docs in docs directory -- array of URLs -- allowing us to search in document directory
        
        //  URL vs. URLs = if more than 1 result, store in an array
        //  NSURL: stored in an array
        //  dunping into an array
        let path = fileManager.URLsForDirectory(NSSearchPathDirectory.DocumentDirectory, inDomains: NSSearchPathDomainMask.UserDomainMask) as [NSURL]
        
        // checks to see if there are any docs in directory:
        
        //2) If documents path exists, run the following code:
        if path.count > 0 {
            
            // gives path to docs folder itself + file name:
            
            //3) concatinate our file name after our documents path:
            let documentPath = path[0].absoluteString! as String
            let mySavedPath = documentPath + "savedFile.txt"
            
            //4) Access our file from the path we defined above
            var stringToLoad: NSString? = NSString(contentsOfFile: mySavedPath, encoding: NSUTF32StringEncoding, error: nil)
            
            //5) If the file exists, run the block below:
            if let loadedContent = stringToLoad {
                println("Content loaded! Content is: \(loadedContent)")
            } else {
                println("Could not load")
            }
        } else {
            println("Could not save")
        }
}
    
    //            var txtPath = NSTemporaryDirectory() + "hello.txt"
    //
    //            var stringToLoad: NSString? = NSString(contentsOfFile: txtPath, encoding: NSUTF32StringEncoding, erro: nil)

    //            var stringToSave = self.textFile.text
    //            stringToSave.writeToFile(stringToSave, atomically: true, encoding: NSUTF32StringEncoding, error: nil)
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}