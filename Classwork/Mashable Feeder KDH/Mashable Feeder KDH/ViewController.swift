//
//  ViewController.swift
//  Mashable Feeder KDH
//
//  Created by Kathryn Hill on 3/4/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

//connection ipaction

import UIKit

class ViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate  {
    
    var json: NSDictionary?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = NSURL(string: "http://mashable.com/stories.json") {
            let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: { (data, response, error) -> Void in
                if let jsonDict = NSJSONSerialization.JSONObjectWithData(data, options: nil, error: nil) {
                    self.json = jsonDict as? NSDictionary
                }
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    self.tableView.reloadData()
                })
            })
            
            task.resume()
        }
    }
}

override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
}

override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    if let jsonData = self.json {
        if let newData = jsonData["new"] as? NSDictionary {
                // need to get number of articles that are located under children
                return newData.count

        }
    }
    
    return 0
}

override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    var cell = tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell!
    if cell == nil  {
        cell = UITableViewCell(style: .Subtitle, reuseIdentifier: "cell")
    }
    
    if let jsonDict = self.json {
        if let newData = jsonDict["new"] as? NSDictionary {
            if let array = newData[indexPath.row] as? NSArray {
                    if let title = child["title"] as? NSDictionary {
                            cell.textLabel?.text = title
                        }
                if let ups = childData["ups"] as? NSInteger {
                    cell.detailTextLabel?.text = "Number of ups: \(ups)"
                }
                
                    }
                }
            }
        }
    
    return cell

override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    var url = NSURL(string: "http://tedi.io")
    performSegueWithIdentifier("web", sender: NSURLRequest(URL: url!))
}

override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if let request = sender as? NSURLRequest {
        var destinationViewController = segue.destinationViewController as WebViewController
        destinationViewController.request = request
    }
}

