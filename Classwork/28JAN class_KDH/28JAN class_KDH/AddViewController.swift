//
//  AddViewController.swift
//  28JAN class_KDH
//
//  Created by Kathryn Hill on 1/31/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

protocol List {
    func addItemToArray(itemName: String)
}

class AddViewController: UIViewController {

    @IBOutlet weak var addTextBox: UITextField!
    
    var delegate: List?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addAndGoBack(sender: AnyObject) {
        self.delegate?.addItemToArray(self.addTextBox.text)
        
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
