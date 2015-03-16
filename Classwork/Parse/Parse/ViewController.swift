//
//  ViewController.swift
//  Parse
//
//  Created by Kathryn Hill on 3/11/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var whisper: UITextView!
    
    @IBOutlet weak var category: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func readWhispers(sender: AnyObject) {
        var whisperQuery = PFQuery(className: "Whisper")
        whisperQuery.whereKey("category", equalTo: self.category.text)
        whisperQuery.findObjectsInBackgroundWithBlock { (whisperObjects: [AnyObject]!, error: NSError!) -> Void In
            for whisper in whisperObjects {
                if let whisperTitle: AnyObject = whisper["whisper"] as? String {
                    println(whisperTitle)
                    
                    }
                }
            }
   
        }
//anyobject because we don't know how it will come back

    
    @IBAction func saveWhisper(sender: AnyObject) {
        var whisperP = PFObject(className: "Whisper")
        whisperP["whisper"] = self.whisper.text
        whisperP["user"] = "Ena"
        whisperP["category"] = self.category.text
        whisperP.saveInBackgroundWithBlock { (success: Bool, error: NSError!) -> Void in
            if(success) {
                println(whisperP.objectId)
                println("Whisper saved successfully!")
                self.whisper.text = ""
                self.category.text = ""
            } else {
                println(error.description)
            }
            
    }
}

