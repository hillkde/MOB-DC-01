//
//  ViewController.swift
//  View Demos
//
//  Created by Kathryn Hill on 1/21/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mySquare: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        mySquare.backgroundColor = UIColor.redColor()
        
    }
    
    @IBAction func swipeSquareRight(sender: UISwipeGestureRecognizer) {
        
        UIView.animateWithDuration(1.5, animations: {
            self.mySquare.backgroundColor = UIColor.redColor()
            self.mySquare.alpha = 0.5
        })

    }
    
    
//    alpha = transparency
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

