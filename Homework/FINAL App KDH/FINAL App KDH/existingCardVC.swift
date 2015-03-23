//
//  ViewController3.swift
//  FINAL App KDH
//
//  Created by Kathryn Hill on 3/14/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

class existingCardVC: UIViewController {

    @IBAction func backButton(sender: AnyObject) {
    dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBOutlet weak var cardView: UIView!
    
    @IBOutlet weak var tdgImage: UIImageView!
    @IBOutlet weak var kathrynLabel: UILabel!
    @IBOutlet weak var devereLabel: UILabel!
    @IBOutlet weak var hillLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var gmailLabel: UILabel!
    @IBOutlet weak var cellLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarController?.tabBar.hidden = false
        self.populateScrollView()
    }
    
    func populateScrollView() {
        var lastImage:UIImageView?
        var contentWidth = 0
        
        for var i = 0; i < 4; i++ {
            var image = UIImage(named: "cardView\(i)")
            var imageView = UIImageView(image: image)
            imageView.contentMode = UIViewContentMode.ScaleAspectFill
            imageView.setTranslatesAutoresizingMaskIntoConstraints(false)
            
            self.cardView.addSubview(imageView)
            
            let top = NSLayoutConstraint(item: imageView, attribute: .Top, relatedBy: .Equal, toItem: nil, attribute: .Top, multiplier: 1.0, constant: 0)
            let height = NSLayoutConstraint(item: imageView, attribute: .Height, relatedBy: .Equal, toItem: self.cardView, attribute: .Height, multiplier: 1.0, constant: 0)
            let width = NSLayoutConstraint(item: imageView, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .Width, multiplier: 1.0, constant: 300)
            
            var left:NSLayoutConstraint?
            if lastImage != nil {
                left = NSLayoutConstraint(item: imageView, attribute: .Left, relatedBy: .Equal, toItem: lastImage!, attribute: .Right, multiplier: 1.0, constant: 0)
            } else {
                left = NSLayoutConstraint(item: imageView, attribute: .Left, relatedBy: .Equal, toItem: nil, attribute: .Left, multiplier: 1.0, constant: 0)
            }
            
            lastImage = imageView
            
            contentWidth += Int(self.cardView.frame.width)
            
            self.cardView.addConstraints([top, height, width, left!])
        }
        
//        self.cardView.contentSize = CGSizeMake(1200, 0)
//        self.cardView.pagingEnabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
