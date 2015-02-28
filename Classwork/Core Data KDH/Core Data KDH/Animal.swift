//
//  Animal.swift
//  Core Data KDH
//
//  Created by Kathryn Hill on 2/25/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import Foundation
import CoreData

//to use model as object -- bridge; referring to class; bridge to class from objc
@objc(Animal)

class Animal: NSManagedObject {
    @NSManaged var name: String
    @NSManaged var numberOfLegs: Int32
    @NSManaged var hasFur: Bool
    @NSManaged var noise: String
    
}