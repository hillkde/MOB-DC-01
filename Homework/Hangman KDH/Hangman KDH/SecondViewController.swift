//
//  SecondViewController.swift
//  Hangman KDH
//
//  Created by Kathryn Hill on 2/11/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

protocol Hangman {

    func addLetterToArray(letter: String)
}

class SecondViewController: UIViewController {
    
    var maxGuesses = 7
    var guessesUsed = 0
    
    @IBOutlet weak var guessTextBox: UITextField!
    
    var delegate: Hangman?

    @IBAction func guessAndGoBack(sender: UIButton) {
        self.delegate?.addLetterToArray(self.guessTextBox.text)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
