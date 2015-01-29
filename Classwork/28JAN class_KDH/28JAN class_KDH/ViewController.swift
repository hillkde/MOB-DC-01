//
//  ViewController.swift
//  28JAN class_KDH
//
//  Created by Kathryn Hill on 1/28/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var toDoLabel: UILabel!
    
    var toDoList = ["buy computer", "buy lean book", "watch movie", "homework", "clean house"]
    
//secondArray.append(20)
    override func viewDidLoad() {
        
        toDoList.append("hangout")
        
        for i in toDoList {
            println("buy computer")
        }
        
        for i in toDoList {
            println("buy lean book")
        }
        
        for i in toDoList {
            println("watch movie")
        }
        
        for i in toDoList {
            println("homework")
        }
        
        for i in toDoList {
            println("clean house")
        }
        
        for i in toDoList {
            println("hangout")
        }
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func callButton(sender: AnyObject) {
    }
    
    
}

