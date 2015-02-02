//
//  AddEventViewController.swift
//  Delegation
//
//  Created by Thomas Degry on 28/01/15.
//  Copyright (c) 2015 Thomas Degry. All rights reserved.
//

import UIKit

protocol EventProtocol {
    func addMethod(newEvent: Event)
}

class AddEventViewController: UIViewController {

    @IBOutlet var nameLabel: UITextField!
    @IBOutlet var locationLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // add Cancel button on the left and save button on the right
        let cancelButton = UIBarButtonItem(title: "Cancel", style: UIBarButtonItemStyle.Plain, target: self, action: "dismiss")
        let saveButton = UIBarButtonItem(title: "Save", style: UIBarButtonItemStyle.Plain, target: self, action: "save")
        
        var title = "Add Event"
        var leftBarButtonItem: cancelButton?
        var rightBarButtonItem: saveButton?
        
        // set navigation items
    }
    
    func save() {
        
    }
}
