// Playground - noun: a place where people can play

import UIKit

func hello() {
    println("Hello world")
    
}

hello()

//input var = parameter
// function = to simply code; reuse code, doesn't execute without parameters.  If don't have return ( -> Int), won't return, will just run code.

func sum(firstNum: Int, secondNum: Int) -> Int {
    let newSum = firstNum + secondNum
    return newSum
}

//below will not run, until call it above

sum(10, 10)
sum(20, 10)

var x = sum(10, 20)
var y = sum(x, 15)

// fibonucci sequence
// Int = return value; result
// fibPlace:  trick to tell what parameter should do; external to function
// place = internal to function

func fib(#place: Int) -> Int {
    var fibNum = place, current = 0, next = 1, result = 0
    for index in 0..<fibNum {
        
        let tempVar = current
        
        current = next
        next = tempVar + current
        result = tempVar
    }
    
    return result
}

fib(place: 9)
fib(place: 23)
fib(place: 30)

//optional: nonexistent, way to check if nothing gets returned; alternative to optional is error -- NEED TO GO OVER

//unwrapping: open the package that contains an optional; can only wrap if ....
// num can take on a value that's a string

// this is how you wrap the optionals: check by temporarily setting something.  set temp var with if statement and set optional

var num: Int? = 5
if let numValue = num {
    println(numValue + 4)
}

// to return anytning more than once put in parentheses
func save(name: String) -> (first: String, last: String) {
    var firstName = "Tedi"
    var lastName = "Konda"
    return (firstName, lastName)

var myName = save("Tedi")
myName.first
myName.last



