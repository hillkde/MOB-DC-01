//
//  ViewController.swift
//  FINAL App KDH
//
//  Created by Kathryn Hill on 3/7/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    
    @IBOutlet weak var qubeView: UILabel!
    
    @IBOutlet weak var userIDTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func loginButton(sender: AnyObject) {
//        performSegueWithIdentifier("nextVC", sender: self)
        let autoresizingMask = UIViewAutoresizing.FlexibleBottomMargin
    }
    
    @IBAction func newUserButton(sender: AnyObject) {
         performSegueWithIdentifier("newUserVC", sender: self)
    }
    
    func pressedLoginBtn(sender: UIButton) {
    }
    
    func pressedNewUserBtn(sender: UIButton) {
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarController?.tabBar.hidden = true
        self.navigationController?.navigationBar.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

