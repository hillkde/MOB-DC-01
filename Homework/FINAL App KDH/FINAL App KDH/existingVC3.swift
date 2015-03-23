//
//  existingVC3.swift
//  FINAL App KDH
//
//  Created by Kathryn Hill on 3/21/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

class existingVC3: UIViewController {

    @IBOutlet weak var tdgview: UIImageView!
    
    @IBOutlet weak var nameLabel3: UILabel!
    @IBOutlet weak var middleName3: UILabel!
    @IBOutlet weak var lastName3: UILabel!
    @IBOutlet weak var title3: UILabel!
    @IBOutlet weak var email3: UILabel!
    @IBOutlet weak var phone3: UILabel!
    
    func populateValues() {
        nameLabel3.text = "كاثرين"
        middleName3.text = ""
        lastName3.text = "تل"
        title3.text = "مالك, مؤسس"
        email3.text = "hillkde@gmail.com"
        phone3.text = "(۵۱۷)۸۸۱-۹۵۲۰"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarController?.tabBar.hidden = false
        populateValues()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}
