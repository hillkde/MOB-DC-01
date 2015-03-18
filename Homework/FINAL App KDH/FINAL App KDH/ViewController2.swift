//
//  ViewController2.swift
//  FINAL App KDH
//
//  Created by Kathryn Hill on 3/14/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    var firstNameLabel:String!
    var middleNameLabel:String!
    var lastNameLabel:String!
    var titleLabel:String!
    var emailLabel:String!
    var mobileLabel:String!
    var otherNumberLabel:String!
    var companyLabel:String!

    @IBAction func backButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func submitButton(sender: AnyObject) {
        performSegueWithIdentifier("completeCardVC", sender: self)
    }

    @IBOutlet weak var firstNameBox: UITextField!
    
    @IBOutlet weak var middleName: UITextField!
    
    @IBOutlet weak var lastNameBox: UITextField!
    
    @IBOutlet weak var emailBox: UITextField!
    
    @IBOutlet weak var mobileBox: UITextField!
    
    @IBOutlet weak var titleBox: UITextField!
    
    @IBOutlet weak var otherPhoneBox: UITextField!
    
    @IBOutlet weak var companyBox: UITextField!
    
    @IBOutlet weak var languageBox: UITextField!
    
    @IBOutlet weak var sidesAmountBox: UITextField!
    
    @IBOutlet weak var sidesTypeBox: UITextField!
    
    @IBOutlet weak var imageAddBox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//    func addInfo(text: String) {
//            var userInput = ""
//        }
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "submitButton" {
            var svc = segue.destinationViewController as ViewController4
            svc.firstNameLabel.text = firstNameBox.text
//            svc.middleName = middleNameLabel.text
//            svc.lastNameBox = lastNameLabel.text
//            svc.titleBox = titleLabel.text
//            svc.emailBox = emailLabel.text
//            svc.mobileBox = mobileLabel.text
//            svc.otherNumberBox = otherNumberLabel.text
//            svc.companyBox = companyLabel.text
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            }
}
