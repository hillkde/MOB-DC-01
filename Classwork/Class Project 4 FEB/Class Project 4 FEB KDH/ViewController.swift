//
//  ViewController.swift
//  Class Project 4 FEB KDH
//
//  Created by Kathryn Hill on 2/7/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

//‣ Bonus3: When user taps ‘login’, add another UIView with a success message and a dismiss button,
//which removes the login container

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    var infoBox = UIView(frame: CGRect(x: 50, y: 50, width: self.view.frame.width, height: self.view.frame.height))
    infoBox.backgroundColor = UIColor.purpleColor()
    self.view.addSubview(infoBox)
    
    var userText = UITextField(frame: CGRect(x: 50, y: 50, width: infoBox.frame.width, height: 15))
    userText.text = ""
    userText.backgroundColor = UIColor.whiteColor()
    userText.textAlignment = .Center
    infoBox.addSubview(userText)
    
    var passText = UITextField(frame: CGRect(x: 50, y: 50, width: infoBox.frame.width, height: 15))
    passText.text = ""
    passText.textColor = UIColor.blackColor()
    passText.backgroundColor = UIColor.whiteColor()
    passText.textAlignment = .Center
    passText.secureTextEntry = true
    infoBox.addSubview(passText)
    
    var titleLabel = UILabel(frame: CGRect(x: 50, y: 75, width: 200, height: 25))
    titleLabel.text = "The DeVere Group"
    titleLabel.backgroundColor = UIColor.whiteColor()
    titleLabel.textColor = UIColor.blackColor()
    titleLabel.textAlignment = .Center
    self.view.addSubview(titleLabel)
    
    var loginButton = UIButton(frame: CGRect(x: 50, y: 50, width: infoBox.frame.width, height: 50))
    loginButton.setTitle("Click me!", forState: .Normal)
    loginButton.layer.cornerRadius = 15
    loginButton.backgroundColor = UIColor.whiteColor()
    loginButton.addTarget(self, action: "pressedCodedBtn:", forControlEvents: .TouchUpInside)
    loginButton.autoresizingMask = UIViewAutoresizing.FlexibleBottomMargin
    self.view.addSubview(loginButton)
    }
    
    var secondView = UIView(frame: CGRect(x: 50, y: 50, width: 200, height: 200))
    secondView.backgroundColor = UIColor.blueColor()
    self.view.addSubview(secondView)
    
    var dismissBtn = UIButton(frame: CGRect(x: 50, y: 50, width: 50, height: 50))
    dismissBtn.setTitle("Dismiss", forState: .Normal)
    dismissBtn.backgroundColor = UIColor.blackColor()
    dismissBtn.textColor = UIColor.whiteColor()
    dismissBtn.addTarget(self, action: "pressedDismissBtn", forControlEvents: .TouchUpInside)
    secondView.addSubview(dismissBtn)

    func pressedCodedBtn(sender: UIButton) {
        println("Hello!")
        sender.removeFromSuperview()
    }
    
    func pressedDismissBtn(sender: UIButton) {
        println("Success!")
        sender.removeFromSuperview()
    }

}
