//
//  ViewController.swift
//  Prog Views_Springs and Structs_KDH_4FEB
//
//  Created by Kathryn Hill on 2/4/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        UIview - class
//        every view must have parent (superview)
//        self = giving parent view (parent) and subview 
//        red box is subview of superview
//        x and y is relative to parent
//        variable inside func so don't need to include self with redBoxLabel
//        parent of label is redbox
//        UIControlState = state that the button is in
//    .Normal = click me starting from normal
//        to call an external action inside a function use "quotes:"
//        sender = any object or UIbutton --> whenever have action (i.e. swipe) use sender
//        use self when referring to class
//        **when create child and the parent is a class, use self**
//        frame is a property that contains structs
//        rotate = command Left arrow or comand Right arrow
        
        
        var redBox = UIView(frame: CGRect(x: 50, y: 50, width: 200, height: 200))
        redBox.backgroundColor = UIColor.redColor()
//        circle option:
        redBox.layer.cornerRadius = 50
        redBox.autoresizingMask = UIViewAutoresizing.FlexibleLeftMargin | UIViewAutoresizing.FlexibleBottomMargin
        self.view.addSubview(redBox)
        
        var redBoxLabel = UILabel(frame: CGRect(x: 50, y: 50, width: redBox.frame.width, height: 30))
        redBoxLabel.text = "Hello World"
        redBoxLabel.backgroundColor = UIColor.yellowColor()
        redBoxLabel.textColor = UIColor.whiteColor()
        redBoxLabel.textAlignment = .Center
        redBox.addSubview(redBoxLabel)

        var actionBtn = UIButton(frame: CGRect(x: 0, y: 300, width: self.view.frame.width, height: 30))
        actionBtn.setTitle("Click me!", forState: .Normal)
        actionBtn.backgroundColor = UIColor.greenColor()
        actionBtn.autoresizingMask = UIViewAutoresizing.FlexibleWidth
        actionBtn.addTarget(self, action: "pressedCodedBtn:", forControlEvents: .TouchUpInside)
        self.view.addSubview(actionBtn)
        
        var meImg = UIImage(named: "me.jpg")
        var meImgView = UIImageView(image: meImg)
        meImgView.frame = CGRect(x: 50, y: 350, width: meImg!.size.width/3, height: meImg!.size.height/3)
//        meImgView.autoresizingMask = UIViewAutoResizing.FlexibleTopMargin | UIViewAutoResizing.FlexibleRightMargin
        meImgView.autoresizingMask = UIViewAutoresizing.FlexibleTopMargin|UIViewAutoresizing.FlexibleRightMargin
        self.view.addSubview(meImgView)
        
        var greenBox = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 150))
        greenBox.backgroundColor = UIColor.greenColor()
        
        var yellowBox = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 150))
        yellowBox.backgroundColor = UIColor.yellowColor()
        
        var purpleBox = UIView(frame: CGRect(x: 0, y: 300, width: 200, height: 150))
        purpleBox.backgroundColor = UIColor.purpleColor()
        
        var boxScrollView = UIScrollView(frame: CGRect(x: 50, y: 350, width: 200, height: 300))
        boxScrollView.backgroundColor = UIColor.grayColor()
        boxScrollView.contentSize = CGSize(width: 200, height: 600)
        self.view.addSubview(boxScrollView)
        
        boxScrollView.addSubview(greenBox)
        boxScrollView.addSubview(yellowBox)
        boxScrollView.addSubview(purpleBox)
        
    }

    func pressedCodedBtn(sender: UIButton) {
        println("Hello World")
        sender.removeFromSuperview()
    }

}

