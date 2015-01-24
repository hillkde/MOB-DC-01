// Playground - noun: a place where people can play

import UIKit

// purpose of protocols: to enforce rules, so objects of different reqs to talk to each other (i.e. passing info between view controllers and using table views)
// patterns use delegation
// (Note: classes and inheritances are really important)
//protocols are bridges; allow black boxes (classes) to talk to one another; reqs

protocol Flight {
    var wings: Bool { get set }
    var beakSize: Int { get set }
//    method example
//    paramter = animal; type of return = Bool
    func canFly(animal: Animal) -> Bool
}

//protocol is a bridge

protocol Talk {
    func speak() -> String
    
}

class Penguin: Flight {
    var wings = true
    var beakSize = 6
    
    func canFly(animal: Animal) -> Bool {
        return true
    }
}

class Animal {
    var legs: Int
    var fur: Bool = true
//    class properties
    var hasClaws: Bool
    
//  temp variable that we use outside, accessed below - hasclaws
//    whatever is in below, always runs
//    to give value to run class - need to intialize value because we didn't give value for claws above
//    to require legs, we need to input value for legs below
//    when declare var, you reference it inside class through self
    
    init(hasClaws: Bool) {
        self.hasClaws = hasClaws
        self.legs = 4
        println("Hello there")
    }
    
    func speak() {
    println("Hello World")
    }
    
    func describeAnimal() {
        println("This animal has \(self.legs) legs")
    }
}

class Human: Animal, Talk {
    func speak() -> String {
       return "Hello World"
    }
}

class Dog: Animal {
//need to overrride something, this is what you follow:
//    fur is property wer are working with
//    if need to override property, need to do get and set methods
    
    
//    override var fur: Bool {
//        get {
////            return whatever the fur variable is set as
//            return true
////           (or return super.fur)
//        }
//        set {
////            -- override the inherited property to the new value set by the sub class
////           --  super what comes down from parent class and overrride with new value
//          super.fur = newValue
//        }
//    }

    
//  super.method also runs the method that the class inherited from
//    can use super on anything, even intializers
    override func speak() {
        super.speak()
        println("Woof woof")
    }
}

//struct different from classes:
//1) classes are reference types where structs are value types:  values can be passed around, strcuts used for passing info around. class can reference from anywhere (overall)
//2) don't inherit
//3) every time initialize, add properties to intializers

//var tedi = Animal(hasClaws: true, legs: 2)
var ena = Animal(hasClaws: true, legs: 4)
ena.speak()
ena.fur
ena.fur = true


var skippy = ena
ena.legs
skippy.legs = 5
ena.legs


//no default values allowed
struct Rectangle {
  var width: Int
  var height: Int

    func getArea() -> Int {
        return width * height
    }
}

//requires something to pass from animal class

func doesAnimalHaveClaws(animal: Animal) -> Bool {
    return animal.hasClaws
    return passingAnimal.hasClaws
}

let tedi = Animal(hasClaws: true, legs: 2)
doesAnimalHaveClaws(tedi)

doesAnimalHaveClaws(ena)


let myRectangle = Rectangle(width: 50, height: 100)

var myOtherRect = myRectangle
myOtherRect.width = 70
myRectangle.width

var ena = Dog
var skippy = ena

myRectangle.getArea()

//protocols create rules for properties and methods




