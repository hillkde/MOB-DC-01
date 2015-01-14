//
//  ViewController.swift
//  IB Coding Demo_Lesson 6_KDH
//
//  Created by Kathryn Hill on 1/12/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
   
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBAction func changeLabel(sender: AnyObject){
        nameLabel.text = nameTextField.text
        
    }
    
    @IBAction func changeLabelonDrag(sender: UISlider) {
        let slideValue = Int(sender.value)
        nameLabel.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        println("Testing loaded view")
    }



}

