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
    
    var correctGuesses = [String]()
    var incompleteWord = ""
    var wrongGuesses = ""
    var myWord = "Swift"
    var lowerCaseString = ""
    var maxGuesses = 7
    var guessesUsed = 0
    var boxes = [UIView]()

    @IBOutlet weak var correctLabel: UILabel!
    @IBOutlet weak var correctText: UITextField!
    @IBOutlet weak var wrongGuessLabel: UILabel!
    @IBOutlet weak var remainingText: UITextField!

    
    @IBAction func playGameButton(sender: AnyObject) {
        var guessVC =
        self.storyboard?.instantiateViewControllerWithIdentifier("guessVC") as SecondViewController
        guessVC.delegate = self
        self.presentViewController(guessVC, animated: true, completion: nil)
    }
    
    func addLetterToArray(letter: String) {
        if self.myWord.lowercaseString.rangeOfString(letter) != nil {
            self.correctGuesses.append(letter)
        } else {
            // Here we have set to box to red
            var boxSetToRed = self.boxes[self.guessesUsed]
            boxSetToRed.backgroundColor = UIColor.redColor()
            
            //  self.guessesUsed++
            self.guessesUsed = self.guessesUsed + 1
            self.remainingText.text = "\(self.maxGuesses - self.guessesUsed)"
        }
        
        self.correctText.text = self.displayWord()
        checkIfUserIsStillAlive()
    }
    
    func displayWord() -> String {
        var localIncomplete = ""
        for letter in self.myWord {
            if contains(self.correctGuesses, String(letter).lowercaseString) {
                localIncomplete += String (letter)
                localIncomplete += " "
            } else {
                localIncomplete += "_ "
            }
        }
        
        return localIncomplete
    }
    
    func checkIfUserIsStillAlive() {
        if(self.guessesUsed == self.maxGuesses) {
            println("Game Over!  You're out of guesses.")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.remainingText.text = "\(self.maxGuesses)"
        
        constructBoxes()
    }
    
    func constructBoxes() {
                var firstBox = UIView(frame: CGRect(x: 0, y: 25, width: 20, height: 20))
                firstBox.backgroundColor = UIColor.grayColor()
                self.view.addSubview(firstBox)
        
                var secondBox = UIView(frame: CGRect(x: 25, y: 25, width: 20, height: 20))
                secondBox.backgroundColor = UIColor.grayColor()
                self.view.addSubview(secondBox)
        
                var thirdBox = UIView(frame: CGRect(x: 50, y: 25, width: 20, height: 20))
                thirdBox.backgroundColor = UIColor.grayColor()
                self.view.addSubview(thirdBox)
        
                var fourthBox = UIView(frame: CGRect(x: 75, y: 25, width: 20, height: 20))
                fourthBox.backgroundColor = UIColor.grayColor()
                self.view.addSubview(fourthBox)
        
                var fifthBox = UIView(frame: CGRect(x: 100, y: 25, width: 20, height: 20))
                fifthBox.backgroundColor = UIColor.grayColor()
                self.view.addSubview(fifthBox)
        
                var sixthBox = UIView(frame: CGRect(x: 125, y: 25, width: 20, height: 20))
                sixthBox.backgroundColor = UIColor.grayColor()
                self.view.addSubview(sixthBox)
        
                var seventhBox = UIView(frame: CGRect(x: 150, y: 25, width: 20, height: 20))
                seventhBox.backgroundColor = UIColor.grayColor()
                self.view.addSubview(seventhBox)
        
        self.boxes.append(firstBox)
        self.boxes.append(secondBox)
        self.boxes.append(thirdBox)
        self.boxes.append(fourthBox)
        self.boxes.append(fifthBox)
        self.boxes.append(sixthBox)
        self.boxes.append(seventhBox)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

