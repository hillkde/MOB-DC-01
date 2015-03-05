//
//  ViewController.swift
//  Feedr
//
//  Created by Tedi Konda on 3/2/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import UIKit

class ViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate {
    var tempData = ["Ena's tail is apparantly OK", "MOB Class is awesome", "Pigs sighted flying"]

    // Step 5: make data available here and then write self.json = jsonDict as? NSDictionary
    var json: NSDictionary?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // step 1: URL -- making connection to reddit; NSURL is optional because need to validate it's a proper URL
        // step 2: create task
        // step 3: NSdata
        
        if let url = NSURL(string: "http://www.reddit.com/.json") {
            let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: { (data, response, error) -> Void in
                //   Step 4: convert to dict that it can read, in case json in invalid pass as optional (most APIs are not json)
                if let jsonDict:AnyObject = NSJSONSerialization.JSONObjectWithData(data, options: nil, error: nil) {
                    self.json = jsonDict as? NSDictionary
                }
                //  when info comes back, we refresh/reload the data
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    self.tableView.reloadData()
                })
            })
            
            task.resume()
        }
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Step 6: need to count for articles in website (under "children")
        //  kind is in own level - list of articles -- kind and data are on same level because same indenttation
        //        NSDict because dictionary is type of data
        if let jsonData = self.json {
            if let data = jsonData["data"] as? NSDictionary {
                if let children = data["children"] as? NSArray {
                    // need to get number of articles that are located under children
                    return children.count
                }
            }
        }
        
        return 0
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell!
        if cell == nil  {
            cell = UITableViewCell(style: .Default, reuseIdentifier: "cell")
        }
        
        //   Step 7: take values from children and put into tableview; child is specific article as a dictionary, located within array
        if let jsonDict = self.json {
            if let data = jsonDict["data"] as? NSDictionary {
                if let children = data["children"] as? NSArray {
                    if let child = children[indexPath.row] as? NSDictionary {
                        if let childData = child["data"] as? NSDictionary {
                            if let title = childData["title"] as? NSString {
                                cell.textLabel?.text = title
                            }
                        }
                    }
                }
            }
        }
        
        return cell
    }
    
    //on click
    //(switch vc with segue)
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if let jsonDict = self.json {
            if let data = jsonDict["data"] as? NSDictionary {
                if let children = data["children"] as? NSArray {
                    if let child = children[indexPath.row] as? NSDictionary {
                        if let childData = child["data"] as? NSDictionary {
                            if let permalink = childData["permalink"] as? NSString {
                                var url = NSURL(string: "http://reddit.com" + permalink)
                                performSegueWithIdentifier("web", sender: NSURLRequest(URL: url!))
                            }
                        }
                    }
                }
            }
        }
    }
    
    //executes before moving to next VC
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let request = sender as? NSURLRequest {
            var destinationViewController = segue.destinationViewController as WebViewController
            destinationViewController.request = request
        }
    }
}

