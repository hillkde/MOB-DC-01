// Playground - noun: a place where people can play

import UIKit

/*
* This is a comment block
*/

// This is a comment

// Strings String are usually presented in double quotes.  Can have numbers in strings. Text within quotes.
"This is a string.  8 is number in a string."

// Integers are whole numbers.
5
8
1000000000

// Decimals are either doubles or floats
54.76

// Boolean
true
false

// Arrays: to be covered later

// Dictionaries: to be cover later

// Variable: inferred
var myVariable = "Hello World"
println(myVariable)

var mySecondVariable: String = "Hello world again"
mySecondVariable = "10"

var x = 10.0

var y = 4.0

x + y
x * y
// Not getting remained because inferred type of variables is an integer
x / y
x - y

x % y
10 % 10

y = 20.0
println(y)

x / y

let z = 200

//Constants
let myName = "Kay"
//myName = "Kathryn" will error out because constants are immutable (cannot change)

let amIHere:  String? = "hello"
println(amIHere)

/**************** Control Flow ****************/

// == equal to 
// <= less than or equal to
// >= larger than or equal to

var myAge = 22
if myAge == 21 {
    println("You can't get in!")
}else if myAge > 21 {
        println("You CAN party!")
}else if myAge == 21 {
    println("Free drinks")
}else if myAge > 21 && myAge < 25 {
    println("You can drink, but you can't rent a car")
}

// for intialization; condition; increment
for var i = 0; i < 5; ++i {
    println("Code is running \(i)")
}

//foreign loop; range in numbers
for index in 1...5 {
    println(index)
}

//while loop: only runs if condition is true.  incrementing in block of code
var k = 1
while k < 10 {
    println("counting")
    ++k
}

//while does k = 10?
println(k)






