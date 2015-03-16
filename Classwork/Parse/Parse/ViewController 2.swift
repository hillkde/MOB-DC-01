//
//  ViewController 2.swift
//  Parse
//
//  Created by Kathryn Hill on 3/11/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

class ViewController_2: UIViewController {

    
    @IBOutlet weak var feedbackLabel: UILabel!
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var currentUser = PFUser.currentUser()
        if currentUser {
            println("You are logged in!")
            println(currentUser)
        } else {
            println("Not logged in!")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func login(sender: AnyObject) {
        PFUser.logInWithUsernameInBackground(self.username.text, password: self.password.text) { (user: PFUser!, error: NSError!) -> Voin in
            
            if user != nil {
                self.feedback.text = "Successfully logged in!"
            } else {
                self.feedback.text = "Error logging in!"
            }
        }
    }

    @IBAction func register(sender: AnyObject) {
        var user = PFUser()
        user.username = self.username.text
        user.password = self.password.text
        user.email = self.username.text
    }
    
    user.signUpInBackgroundWithBlock { (succeeded: Bool!, error: NSError!) -> Void in
    if error == nil {
    self.feedback.text = "Successfully signed up!"
    self.username.text = ""
    self.password.text = ""
    } else {
    let userError = error.userInfo!["error"] as? NSString
    self.feedback.text = userError
        }
    }
}
