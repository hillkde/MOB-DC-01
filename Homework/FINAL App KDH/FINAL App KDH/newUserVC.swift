//
//  ViewController2.swift
//  FINAL App KDH
//
//  Created by Kathryn Hill on 3/14/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

class newUserVC: UIViewController {
    
    var firstNameLabel:String!
    var middleNameLabel:String!
    var lastNameLabel:String!
    var titleLabel:String!
    var emailLabel:String!
    var mobileLabel:String!
    var otherNumberLabel:String!
    var companyLabel:String!
    var addressLabel:String!
    
//    NSLocalizedString("comment here")
//    (NSString localizedStringWithFormat: NSLocalizedString(comment here)
//    NSFormatter - present info as objects to users as readable text; uses current local as default; to present numeric output
//    NSNumberFormatter
//    NSDateFormatter
//    let formatter = NSDateFormatter()
//    formatter.dateStyle = .MediumStyle
//    formatter.timeStyle = .NoStyle
    
//    let date = mountain.latestClimb.date
//    label.text = formatter.stringFromDate(date)
    
//    NSBundle
//    let welcomeURL = NSBundle.mainBundle().URLForResource("Welcome", withExtension:"m4a")
//    let player = AVAudioPlayer(contentsOfURL:welcomeURL, error:&error)
    
    

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
    
    @IBOutlet weak var addressBox: UITextField!
    
    @IBOutlet weak var firstQubeQuestion: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarController?.tabBar.hidden = true

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "submitButton" {
            var svc = segue.destinationViewController as completeCardVC
            svc.firstNameLabel.text = firstNameBox.text
            svc.middleNameLabel.text = middleName.text
            svc.lastNameLabel.text = lastNameBox.text
            svc.titleLabel.text = titleBox.text
            svc.emailLabel.text = emailBox.text
            svc.mobileLabel.text = mobileBox.text
            svc.otherNumberLabel.text = otherPhoneBox.text
            svc.companyLabel.text = companyBox.text
            svc.addressLabel.text = addressBox.text
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            }
}
