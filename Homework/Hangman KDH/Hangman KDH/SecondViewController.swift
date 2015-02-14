//
//  SecondViewController.swift
//  Hangman KDH
//
//  Created by Kathryn Hill on 2/11/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

protocol Hangman {
//    how I get the Letter and Wrong guesses to add to different arrays in VC?
    
    func addLetterToArray(letter: String) {
    self.correctGuesses.append(letter)
    return self.correctGuesses.count
    }
    
    func wrongGuessesToArray(letter: String) {
    self.wrongGuesses.append(letter)
    return self.wrongGuesses.count
    }
}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var guessTextBox: UITextField!
    
    var delegate: Hangman?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func guessAndGoBack(sender: UIButton) {
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

}
