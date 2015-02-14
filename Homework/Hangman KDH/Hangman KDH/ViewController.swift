//
//  ViewController.swift
//  Hangman KDH
//
//  Created by Kathryn Hill on 2/11/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

//Game Dashboard

class ViewController: UIViewController, Hangman {
    
    @IBOutlet weak var correctLabel: UILabel!
    
    @IBOutlet weak var correctText: UITextField!
    
    @IBOutlet weak var wrongGuessLabel: UILabel!

    @IBOutlet weak var remainingText: UITextField!
    
    
    var correctGuesses = ["s", "w", "i", "f", "t"]
    var incompleteWord = ""
    var wrongGuesses = ""
    var myWord = ""
    var wrongGuesses.count < 7
    
    if myWord.lowerCaseString.rangeOfString("s", "w", "i", "f", "t")! = nil {
    return ("Swift")
    }
    
    for letter in myWord {
    if contains(correctGuesses, String(letter).lowerCaseString){
    incompleteWord += String(letter)
    incompleteWord += ""
    
    } else {
    incompleteWord += "_"
    }
    
    println("Swift")
    
    }
    
    @IBAction func playGameButton(sender: AnyObject) {
        
        var guessVC =
        self.storyboard?.instantiateViewControllerWithIdentifier("guessVC") as SecondViewController
        guessVC.delegate = self
        self.presentViewController(guessVC, animated: true, completion: nil)
    }
    
        func addLetterToArray(letter: String) {
            self.correctGuesses.append(letter)
            return self.correctGuesses.count
        
        func wrongGuessesToArray(letter: String) {
            self.wrongGuesses.append(letter)
            return self.wrongGuesses.count
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var firstBox = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        firstBox.backgroundColor = UIColor.grayColor()
        self.view.addSubview(firstBox)
        
        var secondBox = UIView(frame: CGRect(x: 25, y: 0, width: 20, height: 20))
        secondBox.backgroundColor = UIColor.grayColor()
        self.view.addSubview(secondBox)
        
        var thirdBox = UIView(frame: CGRect(x: 50, y: 0, width: 20, height: 20))
        thirdBox.backgroundColor = UIColor.grayColor()
        self.view.addSubview(thirdBox)
        
        var fourthBox = UIView(frame: CGRect(x: 75, y: 0, width: 20, height: 20))
        fourthBox.backgroundColor = UIColor.grayColor()
        self.view.addSubview(fourthBox)
        
        var fifthBox = UIView(frame: CGRect(x: 100, y: 0, width: 20, height: 20))
        fifthBox.backgroundColor = UIColor.grayColor()
        self.view.addSubview(fifthBox)
        
        var sixthBox = UIView(frame: CGRect(x: 125, y: 0, width: 20, height: 20))
        sixthBox.backgroundColor = UIColor.grayColor()
        self.view.addSubview(sixthBox)
        
        var seventhBox = UIView(frame: CGRect(x: 150, y: 0, width: 20, height: 20))
        seventhBox.backgroundColor = UIColor.grayColor()
        self.view.addSubview(seventhBox)
        
        if wrongGuesses.count == 1 {
            self.firstBox.backgroundColor = UIColor.redColor()
        }
        
        if wrongGuesses.count == 2 {
            self.secondBox.backgroundColor = UIColor.redColor()
        }
        
        if wrongGuesses.count == 3 {
            self.thirdBox.backgroundColor = UIColor.redColor()
        }
        
        if wrongGuesses.count == 4 {
            self.fourthBox.backgroundColor = UIColor.redColor()
        }
        
        if wrongGuesses.count == 5 {
            self.fifthBox.backgroundColor = UIColor.redColor()
        }
        
        if wrongGuesses.count == 6 {
            self.fifthBox.backgroundColor = UIColor.redColor()
        }
        
        if wrongGuesses.count == 7 {
            self.fifthBox.backgroundColor = UIColor.redColor()
            println("Game Over")
        }

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

