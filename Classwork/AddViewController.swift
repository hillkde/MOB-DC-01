//
//  AddViewController.swift
//  Table View demo_KDH_28JAN
//
//  Created by Kathryn Hill on 1/28/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

protocol Campus {
    func addCampusToArray(campusName: String)
}

class AddViewController: UIViewController {

    
    @IBOutlet weak var addTextBox: UITextField!
    
    var delegate: Campus?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
//  optional because not required based on how you get here, refers to protocol
    }
    
    @IBAction func addAndGoBack(sender: AnyObject) {
        self.delegate?.addCampusToArray(self.addTextBox.text)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
