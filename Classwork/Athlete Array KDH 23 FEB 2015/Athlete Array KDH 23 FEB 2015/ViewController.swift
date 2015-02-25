//
//  ViewController.swift
//  Athlete Array KDH 23 FEB 2015
//
//  Created by Kathryn Hill on 2/23/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//   ibaction here

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject("light", forKey: "theme")
        
        var athleteArray = defaults.objectForKey("athletes") as NSArray as Array
        println(athleteArray)
        
        var coachesPath = NSBundle.mainBundle().pathForResource("coaches", ofType: "plist")
        
        var coaches = NSArray(contentsOfFile: coachesPath!)
        
        for coach in coaches! {
            let coachName = coach["Name"]! as String
            println("\(coachName)")
            let coachTitle = coach["Title"]! as Int
            println("\(coachTitle)")
        }
        
        //    coaches![0] = ("Gruden", forKey: "Title")
        
        coaches?.writeToFile(coachesPath!, atomically: true)
        
        println(coaches![0])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
}

//Extend your app to add a plist for coaches with at least 2 coaches. Coaches
//should have name, years of experience, coach title.
//‣ Print the name of each coach and their title.
//‣ Bonus: Allow user to add coaches through user interface.
//‣ Bonus 2: Display all players and coaches in their own respective table view.

