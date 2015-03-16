//
//  ViewController3.swift
//  FINAL App KDH
//
//  Created by Kathryn Hill on 3/14/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    @IBAction func backButton(sender: AnyObject) {
    dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBOutlet weak var cardView: UIView!
    
    @IBOutlet weak var directoryBarItem: UITabBarItem!
    
    @IBOutlet weak var addBarItem: UITabBarItem!
    
    @IBOutlet weak var editBarItem: UITabBarItem!
    
    @IBOutlet weak var searchBarItem: UITabBarItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
