//
//  ViewController.swift
//  Tables views and scenes_KDH
//
//  Created by Kathryn Hill on 1/26/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//
//if items are temp on storyboard or going to go away, you do this programatically


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultsLabel: UILabel!
    
    @IBOutlet weak var swipeLabel: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        initiateRightSwipeOnRedBox()
        intitiateDoubleTapOnRedBox()
        
        // Runs when view loads.  Instantiate a gesture object.  Doing it here for best practice.
        
//        let swipeR = UISwipeGestureRecognizer {
//            (target: self, action: "swipedRight:")
////            action is function to look for
//            
//            swipeR.direction = UISwipeGestureRecognizerDirection.Right
//            
//            self.swipeLabel.addGestureRecognizer(swipeR)
        }
        
//       if you want to tie functions to all swipes
    
    
// Action is always past sentence (BP)
// BP: Instantiate a class --> say "let" because never going to change
    
    func intitiateDoubleTapOnRedBox() {
        let dTap = UITapGestureRecognizer(target: self, action: "doubleTapped:")
        
        dTap.numberOfTapsRequired = 2
        self.swipeLabel.addGestureRecognizer(dTap)
    }
    
//modal:
    func doubleTapped(sender: UITapGestureRecognizer) {
        var thirdVC = self.storyboard?.instantiateViewControllerWithIdentifier("thirdVC") as ThirdViewController
        
        self.presentViewController(thirdVC, animated: true, completion: nil)
        


// ? = because storyboard runs up to down, so at first try if not there it will crash without ?
// change scenes will always be animation
// if you wan addt'l logic to run after change viws, you put a func after completion.
//  as = ties to VC (Cocoa Touch file)
        
        
//        UIView.animateWithDuration(1.0, animations: {
//            })
//        self.swipeLabel.backgroundColor = UIColor.blueColor()
    
    }
    
// func is found in "action: "func name" "
// sender is found after "let" --> this is your class
// target is always self
    
    func initiateRightSwipeOnRedBox() {
        let swipeR.direction = UISwipeGestureRecognizerDirection.Right
        
        swipeR.direction = UISwipeGestureRecognizerDirection.Right
        
        self.swipeLabel.addGestureRecognizer(swipeR)
        
        }
        
//sender type should be the same as "let" instance which is a class
        func swipedRight(sender: UISwipeGestureRecognizer) {
            self.resultsLabel.text = "You swiped right!"
            self.performSegueWithIdentifier("showSecondVC", sender: self)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

