//
//  TableViewController.swift
//  Table View demo_KDH_28JAN
//
//  Created by Kathryn Hill on 1/28/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, Campus {
    var gaCampuses = ["Washington DC", "New York", "Los Angeles", "Hong Kong", "Atlanta"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addCampusButton(sender: AnyObject) {
        
        var addVC = self.storyboard?.instantiateViewControllerWithIdentifier("addVC") as AddViewController
        addVC.delegate = self
//        self = current state
        self.presentViewController(addVC, animated: true, completion: nil)
    }
    
    func addCampusToArray(campusName: String) {
        self.gaCampuses.append(campusName)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    // MARK: - Table view data source

//always use 1 for return
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.gaCampuses.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier") as? UITableViewCell ?? UITableViewCell(style: .Default, reuseIdentifier: "CellIdentifier")
        // Sets each cell to equal each item in the array
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.blueColor()
        }
//indexpath (method) = where the cell is right now
        
        cell.textLabel?.text = self.gaCampuses[indexPath.row]
        return cell
        
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            self.gaCampuses.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }

    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
//indexpath.row -- row we are swiping on
    
    // Override to support editing the table view.
//    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
//        if editingStyle == .Delete {
//            // Delete the row from the data source
//            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
//        } else if editingStyle == .Insert {
//            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
//        }    
//    }

    
    
    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
