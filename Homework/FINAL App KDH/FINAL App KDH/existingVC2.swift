//
//  existingVC2.swift
//  FINAL App KDH
//
//  Created by Kathryn Hill on 3/21/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

class existingVC2: UIViewController {
    
    @IBOutlet weak var secondView2: UIView!
    
    @IBOutlet weak var addressLabel2: UILabel!
    
    @IBOutlet weak var businessIcon2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    self.tabBarController?.tabBar.hidden = false
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

}
