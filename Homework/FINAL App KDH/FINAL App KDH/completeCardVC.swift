//
//  ViewController4.swift
//  FINAL App KDH
//
//  Created by Kathryn Hill on 3/14/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

class completeCardVC: UIViewController {
    
    var firstNameBox:String!
    var middleName:String!
    var lastNameBox:String!
    var titleBox:String!
    var emailBox:String!
    var mobileBox:String!
    var otherNumberBox:String!
    var companyBox:String!
    var addressBox:String!
    
    @IBOutlet weak var cardSideOne: UIView!

    @IBOutlet weak var firstNameLabel: UILabel!
    
    @IBOutlet weak var middleNameLabel: UILabel!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var mobileLabel: UILabel!
    
    @IBOutlet weak var otherNumberLabel: UILabel!
    
    @IBOutlet weak var imageInput: UIImageView!
    
    @IBOutlet weak var companyLabel: UILabel!
    
    @IBOutlet weak var addressLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNameLabel.text = firstNameBox
        middleNameLabel.text = middleName
        lastNameLabel.text = lastNameBox
        titleLabel.text = titleBox
        emailLabel.text = emailBox
        mobileLabel.text = mobileBox
        otherNumberLabel.text = otherNumberBox
        companyLabel.text = companyBox
        addressLabel.text = addressBox

        self.tabBarController?.tabBar.hidden = false
        
//        func addInfo(text: String) {
//             var userInput = ""
//        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}



//    if middleNameInput? = nil {
//        middleNameInput.leaveEmpty
//    }
