//
//  RandomizlyModel.swift
//  Randomizly
//
//  Created by Joo Young Han on 4/8/18.
//  Copyright © 2018 Joo Young Han. All rights reserved.
//

import Foundation

enum GuessAnswer {
    case correct
    case tooLow
    case tooHigh
}

class RandomizlyModel {
    private var number = 0
    private(set) var tries = 0
    
    init() {
        self.newNumber()
    }
    
    func newNumber() {
        self.tries = 0
        self.number = Int(arc4random_uniform(100) + 1 )
    }
    
    func guess(_ guess: Int) -> GuessAnswer {
        self.tries += 1
        if number == guess {
            return .correct
        } else if number > guess{
            return .tooLow
        } else {
            return .tooHigh
        }
    }
}
