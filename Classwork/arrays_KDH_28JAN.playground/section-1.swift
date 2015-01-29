// Playground - noun: a place where people can play

import UIKit

//like integers or strings - they are a type, so must define var

var myArray = [1, 4 10, 15, 20]
//10 is #2 in this array

var secondArray: [Int] = []
//when creating empty array, must be explicit about type of array as start i.e. [Int]
//2 types of array

var stringArray: [String] = []

myArray[2]

myArray.first
myArray.last

//append adds to specific array when initial array is left blank, such as var secondArray
//below is method (func) so don't use var
//automatically adds element to the last item
secondArray.append(20)
secondArray

//insert number into array at the second position, remember arrays start at 0
myArray.insert(100, atIndex: 2)

//counting how many numbers in array
myArray.count

//inserting element at next to last element in array, relative to last, bunks/takes the place of the original eklement
myArray.insert(50, atIndex: myArray.count - 1)

//gives true/false
myArray.isEmpty
stringArray.isEmpty

myArray.removeAtIndex(2)

//replace something
myArray[1] = 40
//remove the second element in array

myArray.removeAtIndex(2)

//i is temp variable, could be anything.  results in listing all numbers in myArray
for i in myArray {
    println(i)
}

for i in myArray {
    if i == 100 {
        println("BINGO")
    }else {
        println("the value is \(i)")
    }
}



