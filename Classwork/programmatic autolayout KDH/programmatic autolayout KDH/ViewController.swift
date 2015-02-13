
import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var head: UIView!
    
    var body = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        var leftArm = UIView()
        leftArm.backgroundColor = UIColor.blackColor()
        self.view.addSubview(leftArm)
        
        leftArm.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let leftArmHeight = NSLayoutConstraint(
            item: leftArm,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Height,
            multiplier: 1,
            constant: 30)
    
        let leftArmTop = NSLayoutConstraint(
            item: self.body,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0.0)
        
        let leftArmLeading = NSLayoutConstraint(
            item: leftArm,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Leading,
            multiplier: 1,
            constant: 20.0)
        
        let leftArmTrailing = NSLayoutConstraint(
            item: leftArm,
            attribute: NSLayoutAttribute.Trailing,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.body,
            attribute: NSLayoutAttribute.Left,
            multiplier: 1,
            constant: 0.0)
        
        self.view.addConstraints([leftArmHeight, leftArmTop, leftArmLeading, leftArmTrailing])
        
        var rightArm = UIView()
        rightArm.backgroundColor = UIColor.blackColor()
        self.view.addSubview(rightArm)
        
        rightArm.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let rightArmHeight = NSLayoutConstraint(
            item: rightArm,
            attribute: NSLayoutAttribute.Height,
//            Below: .equal = set right Arm equal to left Arm
            relatedBy: NSLayoutRelation.Equal,
            toItem: leftArm,
            attribute: NSLayoutAttribute.Height,
            multiplier: 1,
            constant: 30)
        
        let rightArmTop = NSLayoutConstraint(
            item: rightArm,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0.0)
        
        let rightArmLeading = NSLayoutConstraint(
            item: rightArm,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.body,
            attribute: NSLayoutAttribute.Trailing,
            multiplier: 1,
            constant: 0.0)
        
        let rightArmTrailing = NSLayoutConstraint(
            item: rightArm,
            attribute: NSLayoutAttribute.Trailing,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Right,
            multiplier: 1,
            constant: -20.0)
        
        self.view.addConstraints([rightArmHeight, rightArmTop, rightArmLeading, rightArmTrailing])
        
        var leftLeg = UIView()
        leftLeg.backgroundColor = UIColor.blackColor()
        self.view.addSubview(leftLeg)
        
        leftLeg.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let leftLegHeight = NSLayoutConstraint(
            item: leftLeg,
//            setting the height
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Height,
            multiplier: 1,
            constant: 120.0)
        
        let leftLegWidth = NSLayoutConstraint(
            item: leftLeg,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.body,
            attribute: NSLayoutAttribute.Width,
            multiplier: 1,
            constant: 0)

        let leftLegBottom = NSLayoutConstraint(
            item: leftLeg,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0.0)

        let leftLegTrailing = NSLayoutConstraint(
            item: leftLeg,
            attribute: NSLayoutAttribute.Trailing,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.body,
            attribute: NSLayoutAttribute.Left,
            multiplier: 1,
            constant: 0)
        
        self.view.addConstraints([leftLegHeight, leftLegWidth, leftLegBottom, leftLegTrailing])
     
        
        var rightLeg = UIView()
        rightLeg.backgroundColor = UIColor.blackColor()
        self.view.addSubview(rightLeg)
        
        leftLeg.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let rightLegHeight = NSLayoutConstraint(
            item: rightLeg,
            //            setting the height
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Height,
            multiplier: 1,
            constant: 120.0)
        
        let rightLegWidth = NSLayoutConstraint(
            item: rightLeg,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.body,
            attribute: NSLayoutAttribute.Width,
            multiplier: 1,
            constant: 0)
        
        let rightLegBottom = NSLayoutConstraint(
            item: rightLeg,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0.0)
        
        let rightLegLeading = NSLayoutConstraint(
            item: rightLeg,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.body,
            attribute: NSLayoutAttribute.Trailing,
            multiplier: 1,
            constant: 0)
        
        self.view.addConstraints([rightLegHeight, rightLegWidth, rightLegBottom, rightLegLeading])
        
        let bodyBottomPosition = NSLayoutConstraint(
            item: self.body,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: leftLeg,
            attribute: NSLayoutAttribute.Top,
            multiplier: 1,
            constant: 0)
        
        self.view.addConstraint(bodyBottomPosition)
    }
    
    
    func createBody() {
        
        body.backgroundColor = UIColor.greenColor()
        
// need to add subview before adding constraints
        self.view.addSubview(body)
        
//        Default to use autoconstraint
        body.setTranslatesAutoresizingMaskIntoConstraints(false)
        
//        Constraints for the body:
        let bodyWidth = NSLayoutConstraint(
            item: body,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Width,
            multiplier: 0.5,
            constant: 0.0)
        
        let bodyVerticalPosition = NSLayoutConstraint(
            item: body,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0.0)
        
        let bodyHorizontalPosition = NSLayoutConstraint(
            item: body,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Leading,
            multiplier: 1,
            constant: self.head.frame.width/4)
        
        let bodyHeight = NSLayoutConstraint(
            item: body,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Height,
            multiplier: 2,
            constant: 0)
        
        self.view.addConstraints([bodyWidth, bodyVerticalPosition, bodyHorizontalPosition, bodyHeight])
    }


}


//func makeleftArm

//var leftArm = NSLayoutConstraint(
//    item: leftArm,
//    attribute: NSLayoutAttribute.Height,
//    relatedBy: NSLayoutRelation.Equal,
//    toItem: nil,
//    attribute: NSLayoutAttribute.Height,
//    multiplier: 1,
//    constant: 30)

