//
//  EventsTableViewController.swift
//  Delegation
//
//  Created by Thomas Degry on 28/01/15.
//  Copyright (c) 2015 Thomas Degry. All rights reserved.
//

import UIKit

class EventsTableViewController: UITableViewController, EventProtocol {
    // event array
//    below [Event] is a struct
    
    var arrEvents:[Event] = []

    @IBAction func addButton(sender: AnyObject) {
        
        let addEventViewController = self.storyboard?.instantiateViewControllerWithIdentifier("addEventViewController") as AddEventViewController
        
        addEventViewController.delegate = self
        
        let navigationController = UINavigationController(rootViewController: addEventViewController)

        self.presentViewController(navigationController, animated:true, completion: nil)
    }
    
    func func addEvent(newEvent: Event) {
        println("")
        self.arrEvents.append(newEvent)
    }
    
// rootVC -- first VC presented
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrEvents.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("eventCell", forIndexPath: indexPath) as UITableViewCell
    
    // Configure the cell...
    let currentEvent = self.arrEvents[indexPath.row]
        cell.textLabel.text = currentEvent.name
        cell.detailTextLabel?.text = currentEvent.location
        
    return cell
    }

}
