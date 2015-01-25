//
//  CardGame.swift
//  Assessment 3
//
//  Created by Tedi Konda on 1/23/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import Foundation

protocol BlackJack {
    // Require a deal method
    // Require a first hand method
    
    func deal()
    func startGame()
//    var player: String { get set }
//    var cards: Int { get set }
//    func play(cardgame: BlackJack) -> Bool
}

class CardGame: BlackJack {
    
    var firstCard = 0
    var secondCard = 0
    var playerSum = 0
    var currentCard = 0
    var dealerHand = 0
    
    func startGame() {
        self.firstCard = Int(arc4random_uniform(11))
        self.secondCard = Int(arc4random_uniform(11))
        self.playerSum = self.firstCard + self.secondCard
        self.dealerHand = Int(arc4random_uniform(12) + 9)
    }
    
    func deal(){
        self.currentCard = Int(arc4random_uniform(11))
        self.playerSum = self.currentCard + self.playerSum
    }
    
}

