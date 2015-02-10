//
//  ViewController.swift
//  Autolayout 9 FEB KDH
//
//  Created by Kathryn Hill on 2/9/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var verticalSpacingBetweenPurpleGhostAndPacman: NSLayoutConstraint!
    

    @IBAction func increaseDistanceBetweenPacmanAndGhost(sender: AnyObject) {
        UIView.animateWithDuration(1, animations: {
            self.view.layoutIfNeeded()
        })
        
        self.verticalSpacingBetweenPurpleGhostAndPacman.constant = 80
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

