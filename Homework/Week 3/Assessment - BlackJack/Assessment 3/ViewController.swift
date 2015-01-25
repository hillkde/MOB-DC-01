//
//  ViewController.swift
//  Assessment 3
//
//  Created by Tedi Konda on 1/22/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var redBox: UIView!
    @IBOutlet weak var GreenSquare: UIView!
    @IBOutlet weak var blackJackLabel: UILabel!
    
    
    // BlackJack game: Create a a game of Blackjack
    // ************* Baseline requirements:
    // ** Set up Player class and CardGame class in their respective provided files. Follow the protocol rules for the CardGame class.
    // When card game first starts, a new player is generated and handed out 2 cards (between 1 and 11). Hint: generate 2 random numbers and add them together
    // A value for the CPU is also generated between 12 and 21 (random Int)
    // When the green view is double tapped (tap gesture recognizer), generate a new card (between 1 and 11) for the player, and add it to their score
    // If the total adds up to over 21, change the label text to "Game over, you lose!" and remove the ability for the player to keep tapping for cards
    // If the player wishes to not get dealt any more cards, the player can swipe right to end game (swipe gesture recognizer)
    // When the player ends the game, present the CPU score and present winner determined from compre comparison
    
    // Bonus: Create a button to play a new game.
    // Bonus 2: Player can start with a pool of money (selected through a text field) and make bets for each game (through a text field again). If player reaches <= 0, don't allow them to play any more games.
    // Bonus 3: When handing out cards, display the actual value to the user. If the card is an Ace, let the user select either 1 or 11.
    
    var game = CardGame()
//    tells to pull from card game class
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
//   instance
        self.game.startGame()
        statusLabel.text = "You're first cards are \(self.game.firstCard) and \(self.game.secondCard)."
        
        if self.game.playerSum > 21 {
            statusLabel.text = "Game over, you lose!"
        }
    }
    
    @IBAction func RightGester(sender: UISwipeGestureRecognizer) {
        if self.game.playerSum > self.game.dealerHand && self.game.playerSum < 22 {
            statusLabel.text = "You win! Dealer's total is \(self.game.dealerHand)."
        } else {
            "You lose! Dealer's total is \(self.game.dealerHand)"
        }
    }
   
    @IBAction func tapGesture(sender: UITapGestureRecognizer) {
        
        if self.game.playerSum < 22 {
            self.game.deal()
            
        if self.game.playerSum < 22 {
            self.statusLabel.text = "New card is \(self.game.currentCard) and total is \(self.game.playerSum) and dealer total is \(self.game.dealerHand)."
                
        }else {
            self.statusLabel.text = "You went over 21, you lose!"
            }
            
        }

    }
        
}