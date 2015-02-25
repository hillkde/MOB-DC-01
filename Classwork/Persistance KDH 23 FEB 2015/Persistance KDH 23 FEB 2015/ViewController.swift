//
//  ViewController.swift
//  Persistance KDH 23 FEB 2015
//
//  Created by Kathryn Hill on 2/23/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var hello: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = NSUserDefaults.standardUserDefaults()
// Pull the value for the theme key stored in NSUserDefaults
        
        let theme = defaults.objectForKey("theme") as String
        
        if theme == "dark" {
            self.view.backgroundColor = UIColor.blackColor()
            self.hello.textColor = UIColor.whiteColor()
        } else {
            self.view.backgroundColor = UIColor.whiteColor()
            self.hello.textColor = UIColor.blackColor()
        }
        
        var booksPath = NSBundle.mainBundle().pathForResource("Books", ofType: "plist")
        
        var books = NSMutableArray(contentsOfFile: booksPath!)
        
        books![0].setValue("Ena's World 2", forKey: "Title")
        
        books?.writeToFile(booksPath!, atomically: true)
        
        println(books!)
        
//        println(books!) or println(books![0])

    }

//NSArray is the root data
//first read the data and then set the data
//    write to the data = NSMutableArray or Dictionary
//    read = NSArray or NSDictionary
//    atomically - backs up in folder in case it crashes
//    mainbundle -- because accessible in book.plist
//    to write to file -- give path and thing to put in path
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

