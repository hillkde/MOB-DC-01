//
//  ViewController.swift
//  Networking example KDH
//
//  Created by Kathryn Hill on 3/2/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "http://google.com")
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: { (data, response, error) -> Void in
//            pass our NS data return to a string
            var stringData = NSString(data: data, encoding: NSUTF8StringEncoding)
//            this is the part we want to pass into main thread
//            UI updates need to happen on the main thread.  By default NSURLSession connections happen as a side thread, so we have to access our main thread to update our views.
            
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                 self.textView.text = stringData
                })
                    })
        
        task.resume()
    }
}

/////if error == nil {
//print("Error trying to GET connection from Google \(error)")
//} else {
//    var result = NSString(data: data, encoding: NSASCIIStringEncoding)!
//    print("We retrieved the data \(result) correctly!")
//}

