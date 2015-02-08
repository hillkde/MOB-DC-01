//
//  Class Project ViewController.swift
//  Prog Views_Springs and Structs_KDH_4FEB
//
//  Created by Kathryn Hill on 2/4/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

////‣ Programmatically create elements needed for login (username,password,login button,and label for the
//title at the top.
//‣ When login button is pressed, print a message with println.
//‣ Bonus1: Create a view that will be the container of the above elements
//‣ Bonus2: Make the container the size of its super view
//‣ Bonus3: When user taps ‘login’, add another UIView with a success message and a dismiss button,
//which removes the login container

class Class_Project_ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    var infoBox = UIView(frame: CGRect(x: 50, y: 50, width: 200, height: 200))
    infoBox.backgroundColor = UIColor.purpleColor()
    self.view.addSubview(infoBox)
    
    var userText = UITextField(frame: CGRect(x: 50, y: 50, width: infoBox.frame.width, height: 15))
    userText.text = ""
    userText.backgroundColor = UIColor.whiteColor()
    userText.textAlignment = .Center
    infoBox.addSubview(userText)
    
    var passWord = UITextField(frame: CGRect(x: 50, y: 50, width: infoBox.frame.width, height: 15))
    passWord.text = ""
    passWord.backgroundColor = UIColor.whiteColor()
    passWord.textAlignment = .Center
    passWord.secureTextEntry = true
    infoBox.addSubview(passWord)
    
    var logButton = UIButton(frame: CGRect(x: 50, y: 50, width: 50, height: 50))
    logButton.setTitle("Enter", forState = .Normal)
    logButton.backgroundColor = UIColor.grayColor()
    logButton.textColor = UIColor.blackColor()
    logButton.autoresizingMask = UIViewAutoResizing.FlexibleWidth
    
    
    
    
//    
//    var actionBtn = UIButton(frame: CGRect(x: 0, y: 300, width: self.view.frame.width, height: 30))
//    actionBtn.setTitle("Click me!", forState: .Normal)
//    actionBtn.backgroundColor = UIColor.greenColor()
//    actionBtn.autoresizingMask = UIViewAutoresizing.FlexibleWidth
//    actionBtn.addTarget(self, action: "pressedCodedBtn:", forControlEvents: .TouchUpInside)
//    self.view.addSubview(actionBtn)
//    
//    var meImg = UIImage(named: "me.jpg")
//    var meImgView = UIImageView(image: meImg)
//    meImgView.frame = CGRect(x: 50, y: 350, width: meImg!.size.width/3, height: meImg!.size.height/3)
//    meImgView.autoresizingMask = UIViewAutoResizing.FlexibleTopMargin | UIViewAutoResizing.FlexibleRightMargin
//    self.view.addSubview(meImgView)
//    }
//    
//    func pressedCodedBtn(sender: UIButton) {
//        println("Hello World")
//        sender.removeFromSuperview()
//    }
    
    
    }





}
