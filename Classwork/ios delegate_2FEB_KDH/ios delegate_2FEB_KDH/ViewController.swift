//
//  ViewController.swift
//  ios delegate_2FEB_KDH
//
//  Created by Kathryn Hill on 2/2/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
    var gaCampuses: [String] = []
    
//drag table view to yellow dot to connect, after list array


    @IBOutlet weak var stuffTextField: UITextField!
    @IBOutlet weak var campusesTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
//Add delegate for text field:
// 1: add UITextFieldDelegate protocol
//2. connect text field outlet
//3. Tie textfield.delegate = self
//4. Add the text field method
        
        if gaCampuses.isEmpty {
            println("Your table view is empty")
            campusesTable.hidden = true
        }
        
        stuffTextField.delegate = self
    }
//text field does not require anything because optional
    
//    remove key board
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        println("Return key pressed!")
        textField.resignFirstResponder()
        return true
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.gaCampuses.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell Identifier", forIndexPath: indexPath) as UITableViewCell
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.redColor()
            cell.textLabel?.textColor = UIColor.whiteColor()
        }

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
    
//}

}