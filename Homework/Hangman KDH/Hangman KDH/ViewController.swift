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
    
    var correctGuesses = ["s", "w", "i", "f", "t"]
    var incompleteWord = ""
    
    for letter in myWord {
    if contains(correctGuesses, String(letter).lowerCaseString){
    incompleteWord += String(letter)
    incompleteWord += ""
    
    } else {
    incompleteWord += "_"
    }
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var greyBox = UIView(frame: CGRect(x: 20, y: 20, width: 20
    }
    
    @IBAction func playGameButton(sender: AnyObject) {
        
        var guessVC =
        self.storyboard?.instantiateViewControllerWithIdentifier("guessVC") as SecondViewController
        guessVC.delegate = self
        self.presentViewController(guessVC, animated: true, completion: nil)
    }
    
    func currentWord(letter: String) {
        self.correctGuesses.append(letter)
        return self.correctGuesses.count
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
        
        
    }


}

