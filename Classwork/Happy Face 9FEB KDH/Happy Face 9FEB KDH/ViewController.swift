//
//  ViewController.swift
//  Happy Face 9FEB KDH
//
//  Created by Kathryn Hill on 2/9/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var pinkSmileyFace: UIView!
    
    
    @IBAction func swipeRight(sender: UISwipeGestureRecognizer) {
         self.pinkSmileyFace.backgroundColor = UIColor.blueColor()
    }
    
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}
