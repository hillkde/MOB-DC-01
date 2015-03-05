// Playground - noun: a place where people can play

import UIKit
import XCPlayground

//let asynchrnous code run
//added playground to run in the background

XCPSetExecutionShouldContinueIndefinitely()

let url = NSURL(string: "http://google.com")

//pass func to run in background while func are happening
//nil because there are no errors
//closures are what passed below -- pass func into a method (running in background)
let task = NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: { (data, response, error) -> Void in
    println(data)
    println(response)
    println(error)
    })

task.resume()



