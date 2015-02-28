//
//  ViewController.swift
//  Core Data KDH
//
//  Created by Kathryn Hill on 2/25/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    var appDelegate = (UIApplication.sharedApplication().delegate as AppDelegate)

    override func viewDidLoad() {
        super.viewDidLoad()
        if let moc = self.appDelegate.managedObjectContext {
            var ena = NSEntityDescription.insertNewObjectForEntityForName("Animal", inManagedObjectContext: moc) as Animal
            
            ena.name = "Tedi"
            ena.hasFur = true
            ena.numberOfLegs = 4
            ena.noise = "Woof woof"
            appDelegate.saveContext()
        }
        
    }
    
    @IBAction func loadAnimalData(sender: AnyObject) {
        if let moc = self.appDelegate.managedObjectContext {
            let fetchAnimals = NSFetchRequest(entityName: "Animal")
            
//    Must add predicate before executing fetch request -- only fetch is within these conditions (i.e. due date, actual date)
            let animalPredicate = NSPredicate(format: "name contains &@", "edi")
            fetchAnimals.predicate = animalPredicate
            
            if let animals: [Animal] = moc.executeFetchRequest(fetchAnimals, error: nil) as? [Animal] {
                for animal in animals {
                    println(animal.name)
                    println(animal.noise)
                }
            }
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

